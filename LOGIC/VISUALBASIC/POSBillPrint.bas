
Public Sub Proc_260_0_F04438(arg_C, arg_10) 'F04438
  'Data Table: 43FECC
  Dim unk_43FED1 As Connection15
  Dim var_90 As Recordset15
  Dim var_11C As Fields15
  Dim var_8C As Double
  loc_F04399: Proc_6_7_F25D88(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F043B8: unk_43FED1.Execute CStr(var_118 & var_B4 & " Order by Appdate Desc"), -1, var_11C
  loc_F043C3: Set var_90 = var_11C
  loc_F043F1: If (var_90.RecordCount > 0) Then
  loc_F0441F:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F0442F: Else
  loc_F04432:   var_8C = CDbl(0)
  loc_F04435: End If
  loc_F04435: Result var_8C End Sub 'Double
End Sub

Public Sub Proc_260_1_10A5350(arg_C, arg_10, arg_14) '10A5350
  'Data Table: 43FECC
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
  loc_10A50AB: var_88 = vbNullString
  loc_10A50C2: arg_C = CStr(Trim(arg_C))
  loc_10A50CE: var_8A = CInt(Len(arg_C))
  loc_10A50D4: var_C0 = arg_10
  loc_10A50DF: If (var_C0 = "A") Then
  loc_10A50FE:   var_AC = CVar(Int((CDbl((CInt(Int((CDbl(arg_14) / CDbl(2)))) - var_8A)) / CDbl(2)))) 'Double
  loc_10A5102:   var_9C = arg_C 'Variant
  loc_10A5158:   var_F0 = (Chr(&H12) + Chr(&HE))
  loc_10A516C:   var_110 = (0 + Chr(&H1B))
  loc_10A5175:   var_120 = (var_110 + "G")
  loc_10A5189:   var_140 = (var_120 + Space(CLng(IIf((var_9C > 0), var_9C, 0))))
  loc_10A5193:   var_150 = (var_140 + CVar(arg_C))
  loc_10A51A7:   var_170 = (var_150 + Chr(&H1B))
  loc_10A51B0:   var_190 = (var_170 + "H")
  loc_10A51B5:   var_88 = CStr(var_190)
  loc_10A51D6: Else
  loc_10A51DE:   If (var_C0 = "D") Then
  loc_10A51EC:     arg_14 = CInt(Int((CDbl(arg_14) / CDbl(2))))
  loc_10A51FD:     var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10A5201:     var_9C = "G" 'Variant
  loc_10A5257:     var_F0 = (Chr(&HE) + Chr(&HF))
  loc_10A526B:     var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10A5275:     var_120 = (var_110 + CVar(arg_C))
  loc_10A527A:     var_88 = CStr(var_120)
  loc_10A528F:   Else
  loc_10A5297:     If (var_C0 = "E") Then
  loc_10A52A8:       var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10A52AC:       var_9C = CVar(arg_C) 'Variant
  loc_10A5302:       var_F0 = (Chr(&H12) + Chr(&HF))
  loc_10A5316:       var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10A5320:       var_120 = (var_110 + CVar(arg_C))
  loc_10A5334:       var_140 = (var_120 + Chr(&H12))
  loc_10A5339:       var_88 = CStr(var_140)
  loc_10A534F:     End If
  loc_10A534F:   End If
  loc_10A534F: End If
  loc_10A534F: Exit Sub
End Sub

Public Sub Proc_260_2_136D614(arg_C, arg_10, arg_14) '136D614
  'Data Table: 43FECC
  Dim var_F0 As String
  Dim var_144 As Variant
  Dim var_174 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_274 As Variant
  Dim unk_43FED1 As Connection15
  Dim var_A8 As Recordset15
  Dim var_278 As Fields15
  Dim var_EC As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_DC As Variant
  Dim arg_10 As Integer
  loc_136CE05: var_90 = vbNullString
  loc_136CE0B: var_94 = vbNullString
  loc_136CE11: var_98 = vbNullString
  loc_136CE17: var_9C = vbNullString
  loc_136CE1D: var_A0 = vbNullString
  loc_136CE23: var_A4 = vbNullString
  loc_136CE2E: If (MemVar_1F923C0 = "Y") Then
  loc_136CE38:   var_F0 = vbNullString & "DATE "
  loc_136CE69:   var_8C = 1 & CStr(Format(MemVar_1F920EC, "dd/MM/yy"))
  loc_136CE7C: End If
  loc_136CE84: If (MemVar_1F923C4 = "Y") Then
  loc_136CE96:   var_DC = "dd/MM/yy"
  loc_136CEE8:   var_174 = (CVar(arg_14) - IIf((MemVar_1F923C0 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F920EC, var_DC)))), 0))
  loc_136CF0F:   var_1C4 = (" PAGE NO " + Trim(Str(arg_C)))
  loc_136CF17:   var_1E4 = (var_174 - Len(var_1C4))
  loc_136CF28:   var_214 = (CVar(var_8C) + Space(CLng(var_1E4)))
  loc_136CF31:   var_234 = (var_214 + " PAGE NO ")
  loc_136CF53:   var_274 = (var_234 + Trim(Str(arg_C)))
  loc_136CF58:   var_8C = CStr(var_274)
  loc_136CF85: End If
  loc_136CF95: var_AC = "Select R.NAME,R.HEADER1,R.HEADER2,R.HEADER3,R.HEADER4,R.COMPANYTITLE,R.OUTLETTITLE From DEPART R  Where R.CODE='" & Me(8) & "'"
  loc_136CFB1: unk_43FED1.Execute var_AC, var_DC, -1
  loc_136CFBC: Set var_A8 = var_278
  loc_136CFD3: If (MemVar_1F923C8 = "K") Then
  loc_136CFE8:   var_278 = var_A8.Fields
  loc_136D012:   If (var_278.Item("COMPANYTITLE").Value = "Y") Then
  loc_136D01F:     If (Len(MemVar_1F92130) <= &H23) Then
  loc_136D04B:       var_90 = 1 & Proc_260_1_10A5350(MemVar_1F92130, "D", CInt(Val(CStr(arg_14))), var_90, var_278)
  loc_136D05A:     Else
  loc_136D070:       var_EC = (CVar(var_90) + Chr(&H12))
  loc_136D084:       var_144 = (Format(MemVar_1F920EC, Chr(&H12)) + Chr(&HE))
  loc_136D098:       var_174 = (0 + Chr(&HF))
  loc_136D0A2:       var_194 = (var_174 + CVar(MemVar_1F92130))
  loc_136D0B6:       var_1C4 = (Str(arg_C) + Chr(&H12))
  loc_136D0BB:       var_90 = CStr(var_1C4)
  loc_136D0D3:     End If
  loc_136D0D3:   End If
  loc_136D10F:   If (var_A8.Fields.Item("OutletTitle").Value = "Y") Then
  loc_136D152:     If (Len(var_A8.Fields.Item("Name").Value) <= 35) Then
  loc_136D1AA:       var_94 = 1 & Proc_260_1_10A5350(CStr(var_A8.Fields.Item("Name").Value), "D", CInt(Val(CStr(arg_14))), var_94)
  loc_136D1C5:     Else
  loc_136D1DB:       var_EC = (CVar(var_94) + Chr(&H12))
  loc_136D1EF:       var_144 = (Len(var_A8.Fields.Item("Name").Value) + Chr(&HE))
  loc_136D203:       var_174 = (0 + Chr(&HF))
  loc_136D231:       var_1A4 = (var_174 + var_A8.Fields.Item("Name").Value)
  loc_136D245:       var_1D4 = (Chr(&H12) + Chr(&H12))
  loc_136D24A:       var_94 = CStr(Len(Chr(&H12)))
  loc_136D26B:     End If
  loc_136D26B:   End If
  loc_136D27F:   If (var_A8.RecordCount > 0) Then
  loc_136D2BB:     If (Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Header1")), 1) <> vbNullString) Then
  loc_136D313:       var_98 = var_98 & Proc_260_1_10A5350(CStr(var_A8.Fields.Item("Header1").Value), "D", CInt(Val(CStr(arg_14))))
  loc_136D32B:     End If
  loc_136D364:     If (Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Header2"))) <> vbNullString) Then
  loc_136D3BC:       var_9C = var_9C & Proc_260_1_10A5350(CStr(var_A8.Fields.Item("Header2").Value), "D", CInt(Val(CStr(arg_14))))
  loc_136D3D4:     End If
  loc_136D40D:     If (Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Header3"))) <> vbNullString) Then
  loc_136D465:       var_A0 = var_A0 & Proc_260_1_10A5350(CStr(var_A8.Fields.Item("Header3").Value), "D", CInt(Val(CStr(arg_14))))
  loc_136D47D:     End If
  loc_136D4B6:     If (Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Header4"))) <> vbNullString) Then
  loc_136D50E:       var_A4 = var_A4 & Proc_260_1_10A5350(CStr(var_A8.Fields.Item("Header4").Value), "D", CInt(Val(CStr(arg_14))))
  loc_136D526:     End If
  loc_136D526:   End If
  loc_136D526: End If
  loc_136D530: If (Len(var_8C) > 0) Then
  loc_136D538:   Print 1, var_8C
  loc_136D544:   arg_10 = (arg_10 + 1)
  loc_136D547: End If
  loc_136D551: If (Len(var_90) > 0) Then
  loc_136D559:   Print 1, var_90
  loc_136D565:   arg_10 = (arg_10 + 1)
  loc_136D568: End If
  loc_136D572: If (Len(var_94) > 0) Then
  loc_136D57A:   Print 1, var_94
  loc_136D586:   arg_10 = (arg_10 + 1)
  loc_136D589: End If
  loc_136D593: If (Len(var_98) > 0) Then
  loc_136D59B:   Print 1, var_98
  loc_136D5A7:   arg_10 = (arg_10 + 1)
  loc_136D5AA: End If
  loc_136D5B4: If (Len(var_9C) > 0) Then
  loc_136D5BC:   Print 1, var_9C
  loc_136D5C8:   arg_10 = (arg_10 + 1)
  loc_136D5CB: End If
  loc_136D5D5: If (Len(var_A0) > 0) Then
  loc_136D5DD:   Print 1, var_A0
  loc_136D5E9:   arg_10 = (arg_10 + 1)
  loc_136D5EC: End If
  loc_136D5F6: If (Len(var_A4) > 0) Then
  loc_136D5FE:   Print 1, var_A4
  loc_136D60A:   arg_10 = (arg_10 + 1)
  loc_136D60D: End If
  loc_136D613: Result arg_10 End Sub 'Integer
End Sub

Public Sub Proc_260_3_1370210(arg_C, arg_10, arg_14, arg_18) '1370210
  'Data Table: 43FECC
  Dim var_F0 As String
  Dim var_144 As Variant
  Dim var_174 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_274 As Variant
  Dim unk_43FED1 As Connection15
  Dim var_A8 As Recordset15
  Dim var_278 As Fields15
  Dim var_EC As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_DC As Variant
  Dim arg_10 As Integer
  loc_136FA01: var_90 = vbNullString
  loc_136FA07: var_94 = vbNullString
  loc_136FA0D: var_98 = vbNullString
  loc_136FA13: var_9C = vbNullString
  loc_136FA19: var_A0 = vbNullString
  loc_136FA1F: var_A4 = vbNullString
  loc_136FA2A: If (MemVar_1F923C0 = "Y") Then
  loc_136FA34:   var_F0 = vbNullString & "DATE "
  loc_136FA65:   var_8C = 1 & CStr(Format(MemVar_1F920EC, "dd/MM/yy"))
  loc_136FA78: End If
  loc_136FA80: If (MemVar_1F923C4 = "Y") Then
  loc_136FA92:   var_DC = "dd/MM/yy"
  loc_136FAE4:   var_174 = (CVar(arg_14) - IIf((MemVar_1F923C0 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F920EC, var_DC)))), 0))
  loc_136FB0B:   var_1C4 = (" PAGE NO " + Trim(Str(arg_C)))
  loc_136FB13:   var_1E4 = (var_174 - Len(var_1C4))
  loc_136FB24:   var_214 = (CVar(var_8C) + Space(CLng(var_1E4)))
  loc_136FB2D:   var_234 = (var_214 + " PAGE NO ")
  loc_136FB4F:   var_274 = (var_234 + Trim(Str(arg_C)))
  loc_136FB54:   var_8C = CStr(var_274)
  loc_136FB81: End If
  loc_136FB8F: var_AC = "Select R.NAME,R.HEADER1,R.HEADER2,R.HEADER3,R.HEADER4,R.COMPANYTITLE,R.OUTLETTITLE From DEPART R  Where R.CODE='" & arg_18 & "'"
  loc_136FBAB: unk_43FED1.Execute var_AC, var_DC, -1
  loc_136FBB6: Set var_A8 = var_278
  loc_136FBCD: If (MemVar_1F923C8 = "K") Then
  loc_136FBE2:   var_278 = var_A8.Fields
  loc_136FC0C:   If (var_278.Item("COMPANYTITLE").Value = "Y") Then
  loc_136FC19:     If (Len(MemVar_1F92130) <= &H23) Then
  loc_136FC45:       var_90 = 1 & Proc_260_1_10A5350(MemVar_1F92130, "D", CInt(Val(CStr(arg_14))), var_90, var_278)
  loc_136FC54:     Else
  loc_136FC6A:       var_EC = (CVar(var_90) + Chr(&H12))
  loc_136FC7E:       var_144 = (Format(MemVar_1F920EC, Chr(&H12)) + Chr(&HE))
  loc_136FC92:       var_174 = (0 + Chr(&HF))
  loc_136FC9C:       var_194 = (var_174 + CVar(MemVar_1F92130))
  loc_136FCB0:       var_1C4 = (Str(arg_C) + Chr(&H12))
  loc_136FCB5:       var_90 = CStr(var_1C4)
  loc_136FCCD:     End If
  loc_136FCCD:   End If
  loc_136FD09:   If (var_A8.Fields.Item("OutletTitle").Value = "Y") Then
  loc_136FD4C:     If (Len(var_A8.Fields.Item("Name").Value) <= 35) Then
  loc_136FDA4:       var_94 = 1 & Proc_260_1_10A5350(CStr(var_A8.Fields.Item("Name").Value), "D", CInt(Val(CStr(arg_14))), var_94)
  loc_136FDBF:     Else
  loc_136FDD5:       var_EC = (CVar(var_94) + Chr(&H12))
  loc_136FDE9:       var_144 = (Len(var_A8.Fields.Item("Name").Value) + Chr(&HE))
  loc_136FDFD:       var_174 = (0 + Chr(&HF))
  loc_136FE2B:       var_1A4 = (var_174 + var_A8.Fields.Item("Name").Value)
  loc_136FE3F:       var_1D4 = (Chr(&H12) + Chr(&H12))
  loc_136FE44:       var_94 = CStr(Len(Chr(&H12)))
  loc_136FE65:     End If
  loc_136FE65:   End If
  loc_136FE79:   If (var_A8.RecordCount > 0) Then
  loc_136FEB5:     If (Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Header1")), 1) <> vbNullString) Then
  loc_136FF0D:       var_98 = var_98 & Proc_260_1_10A5350(CStr(var_A8.Fields.Item("Header1").Value), "D", CInt(Val(CStr(arg_14))))
  loc_136FF25:     End If
  loc_136FF5E:     If (Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Header2"))) <> vbNullString) Then
  loc_136FFB6:       var_9C = var_9C & Proc_260_1_10A5350(CStr(var_A8.Fields.Item("Header2").Value), "D", CInt(Val(CStr(arg_14))))
  loc_136FFCE:     End If
  loc_1370007:     If (Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Header3"))) <> vbNullString) Then
  loc_137005F:       var_A0 = var_A0 & Proc_260_1_10A5350(CStr(var_A8.Fields.Item("Header3").Value), "D", CInt(Val(CStr(arg_14))))
  loc_1370077:     End If
  loc_13700B0:     If (Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Header4"))) <> vbNullString) Then
  loc_1370108:       var_A4 = var_A4 & Proc_260_1_10A5350(CStr(var_A8.Fields.Item("Header4").Value), "D", CInt(Val(CStr(arg_14))))
  loc_1370120:     End If
  loc_1370120:   End If
  loc_1370120: End If
  loc_137012A: If (Len(var_8C) > 0) Then
  loc_1370132:   Print 1, var_8C
  loc_137013E:   arg_10 = (arg_10 + 1)
  loc_1370141: End If
  loc_137014B: If (Len(var_90) > 0) Then
  loc_1370153:   Print 1, var_90
  loc_137015F:   arg_10 = (arg_10 + 1)
  loc_1370162: End If
  loc_137016C: If (Len(var_94) > 0) Then
  loc_1370174:   Print 1, var_94
  loc_1370180:   arg_10 = (arg_10 + 1)
  loc_1370183: End If
  loc_137018D: If (Len(var_98) > 0) Then
  loc_1370195:   Print 1, var_98
  loc_13701A1:   arg_10 = (arg_10 + 1)
  loc_13701A4: End If
  loc_13701AE: If (Len(var_9C) > 0) Then
  loc_13701B6:   Print 1, var_9C
  loc_13701C2:   arg_10 = (arg_10 + 1)
  loc_13701C5: End If
  loc_13701CF: If (Len(var_A0) > 0) Then
  loc_13701D7:   Print 1, var_A0
  loc_13701E3:   arg_10 = (arg_10 + 1)
  loc_13701E6: End If
  loc_13701F0: If (Len(var_A4) > 0) Then
  loc_13701F8:   Print 1, var_A4
  loc_1370204:   arg_10 = (arg_10 + 1)
  loc_1370207: End If
  loc_137020D: Result arg_10 End Sub 'Integer
End Sub

Public Sub Proc_260_4_1834634
  'Data Table: 43FECC
  Dim MemVar_6298CC As Recordset15
  Dim var_108 As String
  Dim var_10C As String
  Dim unk_43FED1 As Connection15
  Dim var_C0 As Recordset15
  Dim var_9E As Integer
  Dim var_A0 As Integer
  Dim var_EC As Recordset15
  Dim var_120 As Variant
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_12C As Fields15
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_184 As Variant
  Dim var_164 As String
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_220 As Variant
  Dim var_2B0 As Variant
  Dim var_1C8 As Variant
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_238 As Variant
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_288 As Variant
  Dim var_2C8 As Variant
  Dim var_2D8 As Variant
  Dim var_194 As Variant
  Dim var_128 As Variant
  Dim var_318 As Variant
  Dim var_BA As Integer
  Dim var_CC As Recordset15
  Dim var_258 As Variant
  Dim var_328 As Variant
  Dim var_348 As Variant
  Dim var_3A8 As Variant
  Dim var_3C8 As Variant
  Dim var_4DC As Variant
  Dim var_D8 As Double
  Dim var_D0 As Recordset15
  Dim var_F0 As Recordset15
  Dim var_C4 As Recordset15
  Dim var_C8 As Recordset15
  Dim var_338 As Variant
  loc_18322CC: On Error Goto loc_183462C
  loc_18322DA: MemVar_6298CC.Filter = "ModType='POS'"
  loc_18322F5: If (MemVar_6298CC.RecordCount > 0) Then
  loc_18322FB:   MemVar_1F923C0 = "N"
  loc_1832302:   MemVar_1F923C4 = "N"
  loc_1832309:   MemVar_1F923C8 = "K"
  loc_1832333:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_11C, -1
  loc_183233E:   Set var_EC = var_120
  loc_1832357:   var_108 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12)
  loc_183235E:   var_8C = var_108 & "'"
  loc_183236B:   var_108 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_183237B:   var_90 = var_108 & Me(12) & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) "
  loc_183239C:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno"
  loc_18323AD:   var_108 = "SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='"
  loc_18323BD:   var_98 = var_108 & Me(12) & "' ORDER BY I.Kitchen"
  loc_18323CF:   If (var_8C = vbNullString) Then
  loc_18323D2:     Exit Sub
  loc_18323D3:   End If
  loc_18323DB:   If (var_90 = vbNullString) Then
  loc_18323DE:     Exit Sub
  loc_18323DF:   End If
  loc_18323E7:   If (var_94 = vbNullString) Then
  loc_18323EA:     Exit Sub
  loc_18323EB:   End If
  loc_1832401:   unk_43FED1.Execute var_8C, var_11C, -1
  loc_183240C:   Set var_C0 = var_120
  loc_183242B:   unk_43FED1.Execute var_90, var_11C, -1
  loc_1832436:   Set var_CC = var_120
  loc_1832455:   unk_43FED1.Execute var_94, var_11C, -1
  loc_1832460:   Set var_D0 = var_120
  loc_183247F:   unk_43FED1.Execute var_98, var_11C, -1
  loc_183248A:   Set var_C4 = var_120
  loc_1832495:   Close 1
  loc_183249E:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_18324A2:   ' Referenced from: 1834520
  loc_18324B1:   If Not(var_C0.EOF) Then
  loc_18324E2:     var_DC = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_18324ED:     var_9E = 0
  loc_1832504:     var_120 = var_EC.Fields
  loc_183254D:     var_10C = Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), (Proc_6_38_E68A98(CVar(var_120.Item("RestType")), 1, var_9E, var_120) = "Restaurant"), var_120)
  loc_183256B:     If (var_120 Or (var_10C = "Hall")) Then
  loc_183257C:       var_9C = "** " & "BILL" & " **"
  loc_1832585:     Else
  loc_1832594:       var_120 = var_EC.Fields
  loc_18325AD:       var_9C = Proc_6_38_E68A98(CVar(var_120.Item("Name")), var_120)
  loc_18325B6:     End If
  loc_18325BC:     If (var_9E = 0) Then
  loc_18325ED:       var_DC = Replace(CStr(Space(&H32)), " ", "-", 1, -1, 0)
  loc_1832624:       var_E0 = Replace(CStr(Space(9)), " ", "-", 1, -1, 0)
  loc_183268B:       Proc_6_39_E7C810(var_194, CVar(var_C0.Fields.Item("VNo")))
  loc_18326C1:       var_2E0 = Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType"))) & "/" & MemVar_1F92168 & "/") & var_194), &H10)
  loc_1832757:       var_150 = (Chr(&HF) + "Bill No.  : ")
  loc_1832761:       var_1D8 = (CVar(var_EC.Fields.Item("RestType")) + CVar(var_2E0))
  loc_183276A:       var_1F8 = (var_1D8 + "Dt : ")
  loc_1832774:       var_248 = (var_1F8 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate"))), &HB)))
  loc_183277B:       var_268 = (var_248 + Space(1))
  loc_1832784:       var_288 = (var_268 + "Time : ")
  loc_183278E:       var_2D8 = (var_288 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 5)))
  loc_1832794:       Print 1, var_2D8
  loc_18327EF:       var_9E = (var_9E + 1)
  loc_183282B:       If (Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), var_9E) = "Outlet") Then
  loc_1832882:         var_150 = (Chr(&HF) + "Table No. : ")
  loc_183288C:         var_194 = (CVar(var_EC.Fields.Item("RestType")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_1832892:         Print 1, var_194
  loc_18328B7:         var_9E = (var_9E + 1)
  loc_18328BA:       End If
  loc_18328F3:       If (Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), var_9E) = "Room Service") Then
  loc_183294A:         var_150 = (Chr(&HF) + "Room No.  : ")
  loc_1832954:         var_194 = (CVar(var_EC.Fields.Item("RestType")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_183295A:         Print 1, var_194
  loc_183297F:         var_9E = (var_9E + 1)
  loc_1832982:       End If
  loc_18329BB:       If (Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), var_9E) = "Hall") Then
  loc_1832A12:         var_150 = (Chr(&HF) + "Hall  No. : ")
  loc_1832A1C:         var_194 = (CVar(var_EC.Fields.Item("RestType")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_1832A22:         Print 1, var_194
  loc_1832A47:         var_9E = (var_9E + 1)
  loc_1832A4A:       End If
  loc_1832ACA:       If CBool((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)) Then
  loc_1832B21:         var_150 = (Chr(&HF) + "KOT No.   : ")
  loc_1832B2B:         var_194 = (CVar(var_EC.Fields.Item("RestType")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("KOTNo")), var_9E), &H34)))
  loc_1832B31:         Print 1, (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)
  loc_1832B56:         var_9E = (var_9E + 1)
  loc_1832B59:       End If
  loc_1832B6F:       var_150 = (Chr(&HF) + CVar(var_DC))
  loc_1832B75:       Print 1, CVar(var_EC.Fields.Item("RestType"))
  loc_1832B88:       var_9E = (var_9E + 1)
  loc_1832BB1:       var_160 = (CVar(Proc_6_45_EAD428("SNo", 3, var_9E)) + Space(1))
  loc_1832BCB:       var_194 = (var_9E + CVar(Proc_6_45_EAD428("Particulars", &H12, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_1832BDF:       var_1B4 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Space(1))
  loc_1832BF9:       var_1D8 = (CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType"))) & "/" & MemVar_1F92168 & "/") & (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + CVar(Proc_6_52_EAD4F4("T, 2)) 'String)
  loc_1832C05:       var_1F8 = Space(1)
  loc_1832C0D:       var_220 = (var_1D8 + var_1F8)
  loc_1832C27:       var_248 = (CVar(var_C0.Fields.Item("VDate")) + CVar(Proc_6_52_EAD4F4("Rate", 7)))
  loc_1832C3B:       var_268 = (var_248 + Space(1))
  loc_1832C55:       var_2B0 = (var_268 + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1832C61:       var_2C8 = Space(1)
  loc_1832C69:       var_2D8 = (CVar(var_C0.Fields.Item("VTIME")) + var_2C8)
  loc_1832C83:       var_318 = (var_2D8 + CVar(Proc_6_52_EAD4F4("Amount", 9)))
  loc_1832C88:       var_B8 = CStr(var_318)
  loc_1832CDD:       var_150 = (Chr(&HF) + CVar(var_B8))
  loc_1832CE3:       Print 1, CVar(Proc_6_45_EAD428("SNo", 3, var_9E))
  loc_1832D06:       var_150 = (Chr(&HF) + CVar(var_DC))
  loc_1832D0C:       Print 1, CVar(Proc_6_45_EAD428("SNo", 3, var_9E))
  loc_1832D1F:       var_9E = (var_9E + 1)
  loc_1832D24:       var_BA = 1
  loc_1832D2A:       var_CC.MoveFirst
  loc_1832D2F:       ' Referenced from: 1833253
  loc_1832D3E:       If Not(var_CC.EOF) Then
  loc_1832D8E:         Proc_6_39_E7C810(var_1F8, CVar(var_CC.Fields.Item("TaxPer")), var_BA)
  loc_1832DD9:         Proc_6_39_E7C810(var_2C8, CVar(var_CC.Fields.Item("Rate")), 1)
  loc_1832E24:         Proc_6_39_E7C810(var_368, CVar(var_CC.Fields.Item("qty")), 1, 1)
  loc_1832E6F:         Proc_6_39_E7C810(var_400, CVar(var_CC.Fields.Item("Rate")), 1, 1)
  loc_1832EB0:         Proc_6_39_E7C810(var_458, CVar(var_CC.Fields.Item("Amt")))
  loc_1832EFB:         var_160 = (CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1)) + Space(1))
  loc_1832F14:         var_1A4 = (1 + CVar(Proc_6_45_EAD428(CStr(var_CC.Fields.Item("ItemName").Value), &H12, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_1832F28:         var_1C8 = (Space(1) + Space(2))
  loc_1832F41:         var_258 = (var_9E + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1F8, "0")), 1, CVar(Proc_6_52_EAD4F4("T, 2)) 'String)) 'String)
  loc_1832F55:         var_288 = (Space(1) + Space(1))
  loc_1832F6E:         var_328 = (CVar(Proc_6_52_EAD4F4("Qty", 6)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_2C8, "0.00")), 7)))
  loc_1832F82:         var_348 = (var_328 + Space(1))
  loc_1832F9B:         var_3A8 = (var_348 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_368, "0.00")), 6)))
  loc_1832FAF:         var_3C8 = (var_3A8 + Space(1))
  loc_1832FED:         var_4DC = (var_3C8 + IIf((var_400 = 0), CVar(Proc_6_45_EAD428("Free", 9, 1)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_458, "0.00")), 9))))
  loc_1833088:         var_150 = (Chr(&HF) + CVar(CStr(var_4DC)))
  loc_183308E:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1))
  loc_18330A5:         If (var_9E = (&H45 - var_B2)) Then
  loc_18330BE:           var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18330C4:           Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1))
  loc_18330D7:           var_9E = (var_9E + 1)
  loc_18330DF:           Print 1, "Contd."
  loc_18330EB:           var_9E = (var_9E + 1)
  loc_1833100:           Print 1, Chr(&HC)
  loc_183310F:           var_9E = (var_9E + 1)
  loc_1833118:           var_A0 = (var_A0 + 1)
  loc_183311D:           var_9E = 0
  loc_183314F:           var_10C = Proc_260_1_10A5350(var_9C, "B", &H32, Proc_260_2_136D614(1, Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1), &H32, Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1), 1))
  loc_1833154:           Print 1, var_10C
  loc_1833169:           var_9E = (var_9E + 1)
  loc_1833182:           var_150 = (Chr(&HF) + CVar(var_DC))
  loc_1833188:           Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1))
  loc_183319B:           var_9E = (var_9E + 1)
  loc_18331B4:           var_150 = (Chr(&HF) + CVar(var_B8))
  loc_18331BA:           Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1))
  loc_18331DD:           var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18331E3:           Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1))
  loc_18331F6:           var_9E = (var_9E + 1)
  loc_18331F9:         End If
  loc_1833226:         Proc_6_39_E7C810(CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1)), CVar(var_CC.Fields.Item("Amt")), CVar(var_D8), Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1), Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1))
  loc_183322E:         var_160 = (Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1) + CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1)))
  loc_1833233:         var_D8 = CSng(CVar(var_C0.Fields.Item("KOTNo")))
  loc_1833248:         var_BA = (var_BA + 1)
  loc_183324E:         var_CC.MoveNext
  loc_1833253:         GoTo loc_1832D2F
  loc_1833256:       End If
  loc_1833276:       var_160 = (Chr(&HF) + Space(&H29))
  loc_1833280:       var_184 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_1833286:       Print 1, var_CC.Fields.Item("ItemName").Value
  loc_183329D:       var_9E = (var_9E + 1)
  loc_18332A3:       var_D0.MoveFirst
  loc_18332A8:       ' Referenced from: 18337C5
  loc_18332B7:       If Not(var_D0.EOF) Then
  loc_18332E4:         var_4EC = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_1833302:         If (var_4EC = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_1833358:           var_164 = Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1), var_BA, var_D8)
  loc_183338E:           Proc_6_39_E7C810(var_1F8, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1))
  loc_18333DB:           var_160 = (Chr(&HF) + Space(&H1C))
  loc_18333E5:           var_1A4 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_164))
  loc_18333EC:           var_1C8 = (Space(1) + Space(1))
  loc_18333F6:           var_258 = (CVar(Proc_6_52_EAD4F4("T, 2)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1F8, "0.00")), 9, 1, 1)))
  loc_18333FD:           var_288 = (Space(1) + Chr(&H12))
  loc_1833403:           Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1833446:           var_9E = (var_9E + 1)
  loc_183344C:         Else
  loc_183345F:           If (var_4EC = CVar(MemVar_1F92078 & "NET")) Then
  loc_1833477:             var_150 = Space(&H29)
  loc_1833482:             var_160 = (Chr(&HF) + var_150)
  loc_183348C:             var_184 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_1833492:             Print 1, var_D0.Fields.Item("DispName").Value
  loc_18334A9:             var_9E = (var_9E + 1)
  loc_18334D2:             Proc_6_39_E7C810(var_150, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1), Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1))
  loc_18334EC:             If (var_150 > 0) Then
  loc_1833504:               var_150 = Space(&H1C)
  loc_1833542:               var_164 = Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1))
  loc_1833578:               Proc_6_39_E7C810(var_1F8, CVar(var_D0.Fields.Item("Amount")))
  loc_18335C5:               var_160 = (Chr(&HF) + var_150)
  loc_18335CF:               var_1A4 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_164))
  loc_18335D6:               var_1C8 = (Space(1) + Space(1))
  loc_18335E0:               var_258 = (CVar(Proc_6_52_EAD4F4("T, 2)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1F8, "0.00")), 9, 1)))
  loc_18335E7:               var_288 = (Space(1) + Chr(&H12))
  loc_18335ED:               Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1833630:               var_9E = (var_9E + 1)
  loc_1833633:             End If
  loc_1833636:           Else
  loc_183365C:             Proc_6_39_E7C810(var_150, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1))
  loc_1833676:             If (var_150 > 0) Then
  loc_18336EB:               var_12C = var_D0.Fields
  loc_1833702:               Proc_6_39_E7C810(var_1F8, CVar(var_12C.Item("Amount")))
  loc_183374F:               var_160 = (Chr(&HF) + Space(&H1C))
  loc_1833759:               var_1A4 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1)))
  loc_1833760:               var_1C8 = (Space(1) + Space(1))
  loc_183376A:               var_258 = (CVar(Proc_6_52_EAD4F4("T, 2)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1F8, "0.00")), 9, 1)))
  loc_1833771:               var_288 = (Space(1) + Chr(&H12))
  loc_1833777:               Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_18337BA:               var_9E = (var_9E + 1)
  loc_18337BD:             End If
  loc_18337BD:           End If
  loc_18337BD:         End If
  loc_18337C0:         var_D0.MoveNext
  loc_18337C5:         GoTo loc_18332A8
  loc_18337C8:       End If
  loc_18337DE:       var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18337E4:       Print 1, Space(&H1C)
  loc_18337F7:       var_9E = (var_9E + 1)
  loc_1833836:       If CBool(var_C0.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_183386E:         var_10C = Proc_6_38_E68A98(CVar(var_C0.Fields.Item("WaiterName")), Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1), Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1))
  loc_183388D:         var_150 = (Chr(&HF) + "Steward Name  : ")
  loc_1833897:         var_194 = (Space(&H1C) + CVar(Proc_6_45_EAD428(var_10C, &H14, 1)))
  loc_183389D:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1))
  loc_18338C2:         var_9E = (var_9E + 1)
  loc_18338C5:       End If
  loc_18338CD:       var_11C = Chr(&HF)
  loc_18338E1:       var_120 = var_C0.Fields
  loc_1833919:       var_150 = (var_11C + "User Name     : ")
  loc_1833920:       var_184 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_120.Item("U_Name")), Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1)), &HA)) 'String
  loc_1833923:       var_194 = (Space(&H1C) + var_184)
  loc_1833929:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1))
  loc_183394E:       var_9E = (var_9E + 1)
  loc_1833956:       Print 1, vbNullString
  loc_1833962:       var_9E = (var_9E + 1)
  loc_183398B:       unk_43FED1.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & Me(8) & "'", var_11C, -1
  loc_1833996:       Set var_F0 = var_120
  loc_18339BA:       If (var_F0.RecordCount > 0) Then
  loc_18339FD:         If CBool(Trim(CVar(var_F0.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_1833A08:           var_11C = Chr(&HF)
  loc_1833A1C:           var_120 = var_F0.Fields
  loc_1833A3E:           var_184 = (var_11C + Trim(CVar(var_120.Item("Slogan1"))))
  loc_1833A44:           Print 1, var_184
  loc_1833A5E:           var_9E = (var_9E + 1)
  loc_1833A61:         End If
  loc_1833A61:       End If
  loc_1833A87:       unk_43FED1.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & Me(8) & "'", var_11C, -1
  loc_1833A92:       Set var_F0 = var_120
  loc_1833AB6:       If (var_F0.RecordCount > 0) Then
  loc_1833AF9:         If CBool(Trim(CVar(var_F0.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_1833B20:           var_128 = var_F0.Fields.Item("Slogan2")
  loc_1833B3A:           var_184 = (Chr(&HF) + Trim(CVar(var_128)))
  loc_1833B40:           Print 1, var_184
  loc_1833B5A:           var_9E = (var_9E + 1)
  loc_1833B5D:         End If
  loc_1833B5D:       End If
  loc_1833B62:       Set var_F0 = Nothing
  loc_1833B6A:       Print 1, vbNullString
  loc_1833B76:       var_9E = (var_9E + 1)
  loc_1833B81:       var_11C = Chr(&HF)
  loc_1833B8E:       var_150 = (var_11C + "# ")
  loc_1833BA7:       Print 1, CVar(var_128) & CVar(MemVar_1F9221C) & " # "
  loc_1833BBE:       var_9E = (var_9E + 1)
  loc_1833BC4:       var_13C = 0
  loc_1833BF3:       unk_43FED1.Execute "SELECT TOKENPrint FROM Depart Where Code='" & Me(8) & "'", var_11C, -1
  loc_1833BFB:       var_120 = var_120.Fields
  loc_1833C03:       var_13C = var_128.Item(var_128)
  loc_1833C14:       var_164 = Proc_6_38_E68A98(CVar(var_12C), var_12C, Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1), Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1), Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1))
  loc_1833C33:       If (var_164 = "Yes") Then
  loc_1833C4A:         If (var_C4.RecordCount > 0) Then
  loc_1833C52:           Print 1, vbNullString
  loc_1833C93:           var_10C = Replace(CStr(Space(&H32)), " ", "=", 1, -1, 0)
  loc_1833C9F:           var_184 = (Chr(&HF) + CVar("SELECT TOKENPrint FROM Depart Where Code='" & Me(8) & "'"))
  loc_1833CA5:           Print 1, CVar(var_128) & CVar(MemVar_1F9221C) & " # "
  loc_1833CC2:           Print 1, vbNullString
  loc_1833CCE:           var_9E = (var_9E + 1)
  loc_1833CD1:           ' Referenced from: 18342FF
  loc_1833CE0:           If Not(var_C4.EOF) Then
  loc_1833CE5:             var_BA = 1
  loc_1833CFC:             var_108 = "Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,SUM(S.Amount) AS AMT,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_1833D42:             var_184 = CVar(var_108 & Me(12) & "' AND I.Kitchen='") & var_C4.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)" 
  loc_1833D50:             unk_43FED1.Execute CStr(var_184), CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1)), -1
  loc_1833D5B:             Set var_C8 = var_12C
  loc_1833D91:             If (var_C8.RecordCount > 0) Then
  loc_1833DD6:               var_1B8 = Proc_260_1_10A5350(CStr(var_C4.Fields.Item("Department").Value), "D", &H2D, var_12C, var_BA, Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1))
  loc_1833DE1:               Print 1, var_1B8
  loc_1833E18:               var_120 = var_C0.Fields
  loc_1833E5A:               Proc_6_39_E7C810(CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1)), CVar(var_C0.Fields.Item("VNo")), var_120)
  loc_1833E67:               var_108 = Proc_6_38_E68A98(CVar(var_120.Item("vType")), var_120, Proc_260_2_136D614(1, Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1), &H32, Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1), 1))
  loc_1833E82:               var_1B4 = CVar(var_108 & "/" & MemVar_1F92168 & "/") & CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1)) 
  loc_1833ECF:               var_2E8 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")), Proc_260_2_136D614(1, Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1), &H32, Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1), 1)), &HB)
  loc_1833F26:               var_150 = (Chr(&HF) + "Bill No.  : ")
  loc_1833F30:               var_1D8 = (CVar(var_108 & Me(12) & "' AND I.Kitchen='") + CVar(Proc_6_45_EAD428(CStr(var_1B4), &H10)))
  loc_1833F39:               var_1F8 = (CVar(var_C0.Fields.Item("Amount")) + "Dt : ")
  loc_1833F43:               var_248 = (var_1F8 + CVar(var_2E8))
  loc_1833F4A:               var_268 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_1F8, "0.00")), 9, 1)) + Space(1))
  loc_1833F53:               var_288 = (Chr(&H12) + "Time : ")
  loc_1833F5D:               var_2D8 = (CVar(Proc_6_52_EAD4F4("Qty", 6)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 5)))
  loc_1833F63:               Print 1, "0.00"
  loc_1833FBE:               var_9E = (var_9E + 1)
  loc_1834032:               var_238 = Space(1)
  loc_183409C:               var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428("SNo", 3)))
  loc_18340A3:               var_194 = (CVar(var_120.Item("vType")) + Space(1))
  loc_18340AD:               var_1B4 = (CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1)) + CVar(Proc_6_45_EAD428("Particulars", &HF)))
  loc_18340B4:               var_1D8 = (var_1B4 + Space(1))
  loc_18340BE:               var_220 = (CVar(var_C0.Fields.Item("Amount")) + CVar(Proc_6_52_EAD4F4("Tax, 5)) 'String)
  loc_18340C5:               var_248 = (CVar(var_C0.Fields.Item("VDate")) + var_238)
  loc_18340CF:               var_268 = (CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_52_EAD4F4("Tax, 5)) 'String, "0.00")), 9, 1)) + CVar(Proc_6_52_EAD4F4("Rate", 7)))
  loc_18340D6:               var_2B0 = (Chr(&H12) + Space(1))
  loc_18340E0:               var_2D8 = (CVar(var_C0.Fields.Item("VTIME")) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_18340E7:               var_318 = ("0.00" + Space(1))
  loc_18340F1:               var_338 = (CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_52_EAD4F4("Qty", 6)), "0.00")), 7)) + CVar(Proc_6_52_EAD4F4("Amount", 9)))
  loc_18340F7:               Print 1, Space(1)
  loc_183415F:               var_150 = (Chr(&HF) + CVar(var_DC))
  loc_1834165:               Print 1, CVar(Proc_6_45_EAD428("SNo", 3))
  loc_1834172:               ' Referenced from: 18342E9
  loc_1834181:               If Not(var_C8.EOF) Then
  loc_1834223:                 Proc_6_39_E7C810(var_238, CVar(var_C8.Fields.Item("qty")))
  loc_1834266:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(var_BA), 3)))
  loc_183426D:                 var_194 = (CVar(var_C8.Fields.Item("vType")) + Space(1))
  loc_1834277:                 var_1C8 = (CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1)) + CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("ItemName").Value), &H1E)))
  loc_183427E:                 var_1F8 = (Space(1) + Space(1))
  loc_1834288:                 var_288 = (CVar(Proc_6_52_EAD4F4("Tax, 5)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_238, "0.00")), &HD, 1)))
  loc_183428E:                 Print 1, Space(1)
  loc_18342D2:                 var_C8.MoveNext
  loc_18342DD:                 var_9E = (var_9E + 1)
  loc_18342E6:                 var_BA = (var_BA + 1)
  loc_18342E9:                 GoTo loc_1834172
  loc_18342EC:               End If
  loc_18342EC:             End If
  loc_18342EF:             var_C4.MoveNext
  loc_18342F9:             Print 1, vbNullString
  loc_18342FF:             GoTo loc_1833CD1
  loc_1834302:           End If
  loc_1834302:         End If
  loc_1834302:       End If
  loc_1834302:     End If
  loc_1834307:     Print 1, vbNullString
  loc_1834313:     var_9E = (var_9E + 1)
  loc_183431B:     Print 1, vbNullString
  loc_1834327:     var_9E = (var_9E + 1)
  loc_183432F:     Print 1, vbNullString
  loc_183433B:     var_9E = (var_9E + 1)
  loc_1834343:     Print 1, vbNullString
  loc_183434F:     var_9E = (var_9E + 1)
  loc_1834357:     Print 1, vbNullString
  loc_1834363:     var_9E = (var_9E + 1)
  loc_183436B:     Print 1, vbNullString
  loc_1834377:     var_9E = (var_9E + 1)
  loc_183437F:     Print 1, vbNullString
  loc_183438B:     var_9E = (var_9E + 1)
  loc_18343D3:     var_10C = Proc_6_38_E68A98("UPTT No: " & var_EC.Fields.Item("LstNo").Value, Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1), Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1), Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1), Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1), Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1))
  loc_18343E7:     var_164 = Proc_6_45_EAD428(var_10C, &H1E, Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1), Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1))
  loc_1834400:     var_194 = (Chr(&HF) + CVar(var_164))
  loc_1834407:     var_1B4 = (CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1)) + Chr(&H12))
  loc_183440D:     Print 1, CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("ItemName").Value), &H1E))
  loc_183443A:     var_9E = (var_9E + 1)
  loc_183445E:     Print 1, Proc_260_1_10A5350(var_9C, "D", &H2D, Proc_260_2_136D614(1, var_9E, &H32, var_9E, 1))
  loc_18344C4:     var_160 = (Chr(&H11) + Space(&HE))
  loc_18344CD:     var_184 = ("UPTT No: " & var_EC.Fields.Item("LstNo").Value + "PHONE NO.")
  loc_18344D7:     var_1A4 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, Proc_260_2_136D614(1, var_9E, &H32), var_BA), &H1E)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, Proc_260_2_136D614(1, Proc_260_2_136D614(1, var_9E, &H32), &H32), var_BA), &H1E)))
  loc_18344DD:     Print 1, Chr(&H12)
  loc_1834501:     var_9E = (var_9E + 1)
  loc_1834507:     var_C0.MoveNext
  loc_1834511:     Print 1, vbNullString
  loc_183451D:     var_9E = (var_9E + 1)
  loc_1834520:     GoTo loc_18324A2
  loc_1834523:   End If
  loc_1834525:   Close 1
  loc_183452E:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1834563:   var_150 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_6298CC.Fields.Item("Printer").Value 
  loc_1834569:   Print 1, var_150
  loc_183457F:   Close 1
  loc_1834589:   If (MemVar_1F923B8 = "Y") Then
  loc_18345A5:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_18345AF:   Else
  loc_18345C8:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_18345CF:   End If
  loc_18345D4:   Set var_C0 = Nothing
  loc_18345DC:   Set var_CC = Nothing
  loc_18345E4:   Set var_D0 = Nothing
  loc_18345EC:   Set var_EC = Nothing
  loc_18345F4:   Set var_C4 = Nothing
  loc_18345FC:   Set var_C8 = Nothing
  loc_1834602: Else
  loc_183461B:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_150, "UPTT No: " & var_EC.Fields.Item("LstNo").Value, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, Proc_260_2_136D614(1, var_9E, &H32), var_BA), &H1E)))
  loc_183462B: End If
  loc_183462B: Exit Sub
  loc_183462C: ' Referenced from: 18322CC
  loc_183462C: Proc_6_60_E62BC4(Proc_260_2_136D614(1, var_9E, &H32), Proc_260_2_136D614(1, var_9E, &H32))
  loc_1834631: Exit Sub
End Sub

Public Sub Proc_260_5_195DFB4
  'Data Table: 43FECC
  Dim MemVar_6298CC As Recordset15
  Dim var_F8 As String
  Dim var_FC As String
  Dim unk_43FED1 As Connection15
  Dim var_C0 As Recordset15
  Dim var_9E As Integer
  Dim var_EC As Recordset15
  Dim var_120 As Variant
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_12C As Fields15
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1E4 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_244 As Variant
  Dim var_F0 As Recordset15
  Dim var_180 As Variant
  Dim var_26C As Variant
  Dim var_27C As Variant
  Dim var_28C As Variant
  Dim var_234 As Variant
  Dim var_2AC As Variant
  Dim var_2CC As Variant
  Dim var_1D4 As Variant
  Dim var_25C As Variant
  Dim var_128 As Variant
  Dim var_BA As Integer
  Dim var_CC As Recordset15
  Dim var_3E0 As Variant
  Dim var_D8 As Double
  Dim var_D0 As Recordset15
  Dim var_C4 As Recordset15
  Dim var_C8 As Recordset15
  loc_195B354: On Error Goto loc_195DFAC
  loc_195B36D: If (MemVar_6298CC.RecordCount > 0) Then
  loc_195B373:   MemVar_1F923C0 = "N"
  loc_195B37A:   MemVar_1F923C4 = "N"
  loc_195B381:   MemVar_1F923C8 = "K"
  loc_195B3AB:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_11C, -1
  loc_195B3B6:   Set var_EC = var_120
  loc_195B3D6:   var_8C = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12) & "'"
  loc_195B3E3:   var_F8 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_195B3F3:   var_90 = var_F8 & Me(12) & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) "
  loc_195B414:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno "
  loc_195B425:   var_F8 = "SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='"
  loc_195B435:   var_98 = var_F8 & Me(12) & "' ORDER BY I.Kitchen"
  loc_195B447:   If (var_8C = vbNullString) Then
  loc_195B44A:     Exit Sub
  loc_195B44B:   End If
  loc_195B453:   If (var_90 = vbNullString) Then
  loc_195B456:     Exit Sub
  loc_195B457:   End If
  loc_195B45F:   If (var_94 = vbNullString) Then
  loc_195B462:     Exit Sub
  loc_195B463:   End If
  loc_195B479:   unk_43FED1.Execute var_8C, var_11C, -1
  loc_195B484:   Set var_C0 = var_120
  loc_195B4A3:   unk_43FED1.Execute var_90, var_11C, -1
  loc_195B4AE:   Set var_CC = var_120
  loc_195B4CD:   unk_43FED1.Execute var_94, var_11C, -1
  loc_195B4D8:   Set var_D0 = var_120
  loc_195B4F7:   unk_43FED1.Execute var_98, var_11C, -1
  loc_195B502:   Set var_C4 = var_120
  loc_195B50D:   Close 1
  loc_195B516:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_195B51A:   ' Referenced from: 195DE80
  loc_195B529:   If Not(var_C0.EOF) Then
  loc_195B55A:     var_DC = Replace(CStr(Space(&H27)), " ", "-", 1, -1, 0)
  loc_195B565:     var_9E = 0
  loc_195B57C:     var_120 = var_EC.Fields
  loc_195B5C5:     var_FC = Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), (Proc_6_38_E68A98(CVar(var_120.Item("RestType")), 1, var_9E, var_120) = "Restaurant"), var_120)
  loc_195B5E3:     If (var_120 Or (var_FC = "Hall")) Then
  loc_195B5F4:       var_9C = "** " & "BILL" & " **"
  loc_195B5FD:     Else
  loc_195B60C:       var_120 = var_EC.Fields
  loc_195B625:       var_9C = Proc_6_38_E68A98(CVar(var_120.Item("Name")), var_120)
  loc_195B62E:     End If
  loc_195B634:     If (var_9E = 0) Then
  loc_195B665:       var_DC = Replace(CStr(Space(&H2C)), " ", "-", 1, -1, 0)
  loc_195B69C:       var_E0 = Replace(CStr(Space(9)), " ", "-", 1, -1, 0)
  loc_195B6C1:       var_120 = var_EC.Fields
  loc_195B707:       var_170 = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_120.Item("LstNo"))), &H1E)))
  loc_195B70E:       var_190 = (var_170 + Chr(&H12))
  loc_195B714:       Print 1, var_190
  loc_195B73B:       var_9E = (var_9E + 1)
  loc_195B74E:       var_11C = Trim(MemVar_1F92130)
  loc_195B75A:       var_160 = (38 - Len(var_11C))
  loc_195B78D:       var_204 = (38 - Len(Trim(MemVar_1F92130)))
  loc_195B7AD:       var_190 = (Space(CLng((CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_120.Item("LstNo"))), &H1E)) / 2))) + CVar(MemVar_1F92130))
  loc_195B7B4:       var_244 = (var_190 + Space(CLng((var_204 / 2))))
  loc_195B7BA:       Print 1, var_244
  loc_195B7D5:       var_9E = (var_9E + 1)
  loc_195B7FE:       unk_43FED1.Execute "SELECT HEADER1 FROM Depart WHERE Code='" & Me(8) & "'", var_11C, -1
  loc_195B809:       Set var_F0 = var_120
  loc_195B82D:       If (var_F0.RecordCount > 0) Then
  loc_195B870:         If CBool(Trim(CVar(var_F0.Fields.Item("Header1"))) <> vbNullString) Then
  loc_195B87B:           var_11C = Chr(&HF)
  loc_195B894:           var_120 = var_F0.Fields
  loc_195B8B7:           var_180 = (38 - Len(Trim(CVar(var_120.Item("Header1")))))
  loc_195B930:           var_27C = (38 - Len(Trim(CVar(var_F0.Fields.Item("Header1")))))
  loc_195B95A:           var_1E4 = (var_11C + Space(CLng((Space(CLng((CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_120.Item("LstNo"))), &H1E)) / 2))) / 2))))
  loc_195B961:           var_234 = (Len(Trim(MemVar_1F92130)) + Trim(CVar(var_F0.Fields.Item("Header1"))))
  loc_195B968:           var_2AC = (Space(CLng((CVar(var_F0.Fields.Item("Header1")) / 2))) + Space(CLng((var_27C / 2))))
  loc_195B96F:           var_2CC = (var_2AC + Chr(&H12))
  loc_195B975:           Print 1, var_2CC
  loc_195B9A9:           var_9E = (var_9E + 1)
  loc_195B9AC:         End If
  loc_195B9AC:       End If
  loc_195B9B1:       Set var_F0 = Nothing
  loc_195B9DA:       unk_43FED1.Execute "SELECT HEADER2 FROM Depart WHERE Code='" & Me(8) & "'", var_11C, -1
  loc_195B9E5:       Set var_F0 = var_120
  loc_195BA09:       If (var_F0.RecordCount > 0) Then
  loc_195BA4C:         If CBool(Trim(CVar(var_F0.Fields.Item("Header2"))) <> vbNullString) Then
  loc_195BA70:           var_120 = var_F0.Fields
  loc_195BA93:           var_180 = (38 - Len(Trim(CVar(var_120.Item("Header2")))))
  loc_195BB0C:           var_27C = (38 - Len(Trim(CVar(var_F0.Fields.Item("Header2")))))
  loc_195BB36:           var_1E4 = (Chr(&HF) + Space(CLng((Space(CLng((CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_120.Item("LstNo"))), &H1E)) / 2))) / 2))))
  loc_195BB3D:           var_234 = (Len(Trim(MemVar_1F92130)) + Trim(CVar(var_F0.Fields.Item("Header2"))))
  loc_195BB44:           var_2AC = (Space(CLng((CVar(var_F0.Fields.Item("Header2")) / 2))) + Space(CLng((var_27C / 2))))
  loc_195BB4B:           var_2CC = (var_2AC + Chr(&H12))
  loc_195BB51:           Print 1, var_2CC
  loc_195BB85:           var_9E = (var_9E + 1)
  loc_195BB88:         End If
  loc_195BB88:       End If
  loc_195BB8D:       Set var_F0 = Nothing
  loc_195BBB9:       var_170 = (38 - Len(Trim(var_9C)))
  loc_195BBEC:       var_234 = (38 - Len(Trim(var_9C)))
  loc_195BC16:       var_1D4 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(var_120.Item("Header2")))) / 2))))
  loc_195BC20:       var_1E4 = (Space(CLng((Space(CLng((CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_120.Item("LstNo"))), &H1E)) / 2))) / 2))) + CVar(var_9C))
  loc_195BC27:       var_26C = (Len(Trim(MemVar_1F92130)) + Space(CLng((Space(CLng((Trim(var_9C) / 2))) / 2))))
  loc_195BC2E:       var_28C = (Len(Trim(CVar(var_F0.Fields.Item("Header2")))) + Chr(&H12))
  loc_195BC34:       Print 1, (Chr(&H12) / 2)
  loc_195BC57:       var_9E = (var_9E + 1)
  loc_195BC96:       var_E4 = Proc_6_45_EAD428("PHONE NO." & Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, var_9E, var_9E, var_120, var_9E), &H2A, var_120), &H2A, var_9E)
  loc_195BCCF:       var_170 = (38 - Len(Trim(var_E4)))
  loc_195BCD8:       var_180 = (Len(Trim(CVar(var_120.Item("Header2")))) / 2)
  loc_195BD02:       var_234 = (38 - Len(Trim(var_E4)))
  loc_195BD2C:       var_1D4 = (Chr(&HF) + Space(CLng(var_180)))
  loc_195BD36:       var_1E4 = (Space(CLng((Space(CLng((CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_120.Item("LstNo"))), &H1E)) / 2))) / 2))) + CVar(var_E4))
  loc_195BD3D:       var_26C = (Len(Trim(MemVar_1F92130)) + Space(CLng((Space(CLng((Trim(var_E4) / 2))) / 2))))
  loc_195BD44:       var_28C = (Len(Trim(CVar(var_F0.Fields.Item("Header2")))) + Chr(&H12))
  loc_195BD4A:       Print 1, (Chr(&H12) / 2)
  loc_195BD6D:       var_9E = (var_9E + 1)
  loc_195BD75:       Print 1, vbNullString
  loc_195BDD9:       Proc_6_39_E7C810(var_180, CVar(var_C0.Fields.Item("VNo")))
  loc_195BE0F:       var_2E0 = Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") & var_180), &H10)
  loc_195BE59:       var_26C = Chr(&H12)
  loc_195BE66:       var_150 = (Chr(&HF) + "Bill No.  : ")
  loc_195BE70:       var_204 = (Trim(var_E4) + CVar(var_2E0))
  loc_195BE79:       var_224 = (Trim(var_E4) + "Dt : ")
  loc_195BE83:       var_25C = (Len(Trim(var_E4)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")), var_9E), &HB)))
  loc_195BE8A:       var_27C = (Space(CLng((Space(CLng((Trim(var_E4) / 2))) / 2))) + var_26C)
  loc_195BE90:       Print 1, Chr(&H12)
  loc_195BEDB:       var_9E = (var_9E + 1)
  loc_195BF5E:       If CBool((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)) Then
  loc_195BFC2:         var_150 = (Chr(&HF) + "KOT No.   : ")
  loc_195BFCC:         var_180 = (Trim(var_E4) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("KOTNo")), var_9E), &H1A)))
  loc_195BFD3:         var_1D4 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Chr(&H12))
  loc_195BFD9:         Print 1, CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") & (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)
  loc_195C002:         var_9E = (var_9E + 1)
  loc_195C005:       End If
  loc_195C03E:       If (Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), var_9E) = "Outlet") Then
  loc_195C0EE:         var_150 = (Chr(&HF) + "Table No. : ")
  loc_195C0F8:         var_180 = (Trim(var_E4) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_195C0FF:         var_1D4 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Space(2))
  loc_195C108:         var_1E4 = (CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") & (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + "Time : ")
  loc_195C112:         var_234 = (CVar(var_2E0) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 5)))
  loc_195C119:         var_25C = (CVar(var_C0.Fields.Item("VDate")) + Chr(&H12))
  loc_195C11F:         Print 1, Space(CLng((Space(CLng((Trim(var_E4) / 2))) / 2)))
  loc_195C15E:         var_9E = (var_9E + 1)
  loc_195C161:       End If
  loc_195C19A:       If (Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), var_9E) = "Room Service") Then
  loc_195C24A:         var_150 = (Chr(&HF) + "Room No.  : ")
  loc_195C254:         var_180 = (Trim(var_E4) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_195C25B:         var_1D4 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Space(3))
  loc_195C264:         var_1E4 = (CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") & (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + "Time : ")
  loc_195C26E:         var_234 = (CVar(var_2E0) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 5)))
  loc_195C275:         var_25C = (CVar(var_C0.Fields.Item("VDate")) + Chr(&H12))
  loc_195C27B:         Print 1, Space(CLng((Space(CLng((Trim(var_E4) / 2))) / 2)))
  loc_195C2BA:         var_9E = (var_9E + 1)
  loc_195C2BD:       End If
  loc_195C2F6:       If (Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), var_9E) = "Hall") Then
  loc_195C3A6:         var_150 = (Chr(&HF) + "Hall  No. : ")
  loc_195C3B0:         var_180 = (Trim(var_E4) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_195C3B7:         var_1D4 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Space(3))
  loc_195C3C0:         var_1E4 = (CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") & (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + "Time : ")
  loc_195C3CA:         var_234 = (CVar(var_2E0) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 5)))
  loc_195C3D1:         var_25C = (CVar(var_C0.Fields.Item("VDate")) + Chr(&H12))
  loc_195C3D7:         Print 1, Space(CLng((Space(CLng((Trim(var_E4) / 2))) / 2)))
  loc_195C416:         var_9E = (var_9E + 1)
  loc_195C419:       End If
  loc_195C43C:       var_150 = (Chr(&HF) + CVar(var_DC))
  loc_195C443:       var_170 = (Trim(var_E4) + Chr(&H12))
  loc_195C449:       Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), 5))
  loc_195C460:       var_9E = (var_9E + 1)
  loc_195C489:       var_160 = (CVar(Proc_6_45_EAD428("Particulars", &H14, var_9E)) + Space(1))
  loc_195C4A3:       var_180 = (var_9E + CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))))
  loc_195C4AF:       var_190 = Space(1)
  loc_195C4B7:       var_1D4 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + var_190)
  loc_195C4D1:       var_204 = (CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") & (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_195C4E5:       var_234 = (CVar(var_C0.Fields.Item("VTIME")) + Space(1))
  loc_195C4FF:       var_25C = (CVar(var_C0.Fields.Item("VDate")) + CVar(Proc_6_52_EAD4F4("Amount", 9)))
  loc_195C552:       var_150 = (Chr(&HF) + CVar(CStr(Space(CLng((Space(CLng((Trim(var_E4) / 2))) / 2))))))
  loc_195C559:       var_170 = (CVar(Proc_6_45_EAD428("Particulars", &H14, var_9E)) + Chr(&H12))
  loc_195C55F:       Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_195C576:       var_9E = (var_9E + 1)
  loc_195C59C:       var_150 = (Chr(&HF) + CVar(var_DC))
  loc_195C5A3:       var_170 = (CVar(Proc_6_45_EAD428("Particulars", &H14, var_9E)) + Chr(&H12))
  loc_195C5A9:       Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_195C5C0:       var_9E = (var_9E + 1)
  loc_195C5C5:       var_BA = 1
  loc_195C5CB:       var_CC.MoveFirst
  loc_195C5D0:       ' Referenced from: 195C8EA
  loc_195C5DF:       If Not(var_CC.EOF) Then
  loc_195C62F:         Proc_6_39_E7C810(var_190, CVar(var_CC.Fields.Item("Rate")), var_BA)
  loc_195C64F:         var_1E4 = Format(var_190, "0.00")
  loc_195C67A:         Proc_6_39_E7C810(var_26C, CVar(var_CC.Fields.Item("qty")), 1, 1)
  loc_195C6C5:         Proc_6_39_E7C810(var_314, CVar(var_CC.Fields.Item("Rate")), 1, 1)
  loc_195C706:         Proc_6_39_E7C810(var_35C, CVar(var_CC.Fields.Item("Amt")))
  loc_195C750:         var_170 = (CVar(Proc_6_45_EAD428(CStr(var_CC.Fields.Item("ItemName").Value), &H14, 1)) + Space(1))
  loc_195C769:         var_224 = (1 + CVar(Proc_6_52_EAD4F4(CStr(var_1E4), 6, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))))))
  loc_195C77D:         var_244 = (Space(1) + Space(1))
  loc_195C796:         var_2AC = (var_9E + CVar(Proc_6_52_EAD4F4(CStr(Format(var_26C, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_195C7AA:         var_2CC = (var_2AC + Space(1))
  loc_195C7E0:         var_3D0 = IIf((var_314 = 0), CVar(Proc_6_45_EAD428("Free", 9, var_9E)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_35C, "0.00")), 9)))
  loc_195C7E8:         var_3E0 = (var_2CC + var_3D0)
  loc_195C872:         var_150 = (Chr(&HF) + CVar(CStr(var_3E0)))
  loc_195C879:         var_170 = (Space(1) + Chr(&H12))
  loc_195C87F:         Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_195C8BD:         Proc_6_39_E7C810(Space(1), CVar(var_CC.Fields.Item("Amt")))
  loc_195C8C5:         var_160 = (CVar(var_D8) + Space(1))
  loc_195C8CA:         var_D8 = CSng(Chr(&H12))
  loc_195C8DF:         var_BA = (var_BA + 1)
  loc_195C8E5:         var_CC.MoveNext
  loc_195C8EA:         GoTo loc_195C5D0
  loc_195C8ED:       End If
  loc_195C91A:       var_160 = (Chr(&HF) + Space(&H23))
  loc_195C924:       var_170 = (Chr(&H12) + CVar(var_E0))
  loc_195C92B:       var_190 = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_195C931:       Print 1, var_190
  loc_195C94C:       var_9E = (var_9E + 1)
  loc_195C952:       var_D0.MoveFirst
  loc_195C957:       ' Referenced from: 195CE83
  loc_195C966:       If Not(var_D0.EOF) Then
  loc_195C993:         var_3F0 = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_195C9B1:         If (var_3F0 = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_195CA01:           Proc_6_39_E7C810(var_1E4, CVar(var_D0.Fields.Item("Amount")), var_9E)
  loc_195CA4B:           var_170 = (1 + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, Space(&H16), 1)))
  loc_195CA5F:           var_190 = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Space(1))
  loc_195CA78:           var_244 = (var_BA + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E4, "0.00")), 9, var_190)))
  loc_195CACE:           var_150 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_195CAD5:           var_170 = (var_D0.Fields.Item("DispName").Value + Chr(&H12))
  loc_195CADB:           Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_195CAF2:           var_9E = (var_9E + 1)
  loc_195CAF8:         Else
  loc_195CB0B:           If (var_3F0 = CVar(MemVar_1F92078 & "NET")) Then
  loc_195CB3B:             var_160 = (Chr(&HF) + Space(&H23))
  loc_195CB45:             var_170 = (Chr(&H12) + CVar(var_E0))
  loc_195CB4C:             var_190 = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_195CB52:             Print 1, var_190
  loc_195CB6D:             var_9E = (var_9E + 1)
  loc_195CB92:             var_150 = var_D0.Fields.Item("DispName").Value
  loc_195CBBD:             Proc_6_39_E7C810(var_1E4, CVar(var_D0.Fields.Item("Amount")), var_9E)
  loc_195CC07:             var_170 = (1 + CVar(Proc_6_45_EAD428(CStr(var_150), &HC, Space(&H16), 1)))
  loc_195CC1B:             var_190 = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Space(1))
  loc_195CC34:             var_244 = (var_9E + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E4, "0.00")), 9, var_190)))
  loc_195CC8D:             Proc_6_39_E7C810(var_150, CVar(var_D0.Fields.Item("Amount")))
  loc_195CCA7:             If (var_150 > 0) Then
  loc_195CCCD:               var_150 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_195CCD4:               var_170 = (var_150 + Chr(&H12))
  loc_195CCDA:               Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_195CCF1:               var_9E = (var_9E + 1)
  loc_195CCF4:             End If
  loc_195CCF7:           Else
  loc_195CD19:             var_150 = var_D0.Fields.Item("DispName").Value
  loc_195CD2D:             var_12C = var_D0.Fields
  loc_195CD44:             Proc_6_39_E7C810(var_1E4, CVar(var_12C.Item("Amount")), var_9E)
  loc_195CD8E:             var_170 = (1 + CVar(Proc_6_45_EAD428(CStr(var_150), &HC, Space(&H16), 1)))
  loc_195CDA2:             var_190 = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Space(1))
  loc_195CDBB:             var_244 = (var_D8 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E4, "0.00")), 9, var_190)))
  loc_195CE14:             Proc_6_39_E7C810(var_150, CVar(var_D0.Fields.Item("Amount")))
  loc_195CE2E:             If (var_150 > 0) Then
  loc_195CE54:               var_150 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_195CE5B:               var_170 = (var_150 + Chr(&H12))
  loc_195CE61:               Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_195CE78:               var_9E = (var_9E + 1)
  loc_195CE7B:             End If
  loc_195CE7B:           End If
  loc_195CE7B:         End If
  loc_195CE7E:         var_D0.MoveNext
  loc_195CE83:         GoTo loc_195C957
  loc_195CE86:       End If
  loc_195CEA9:       var_150 = (Chr(&HF) + CVar(var_DC))
  loc_195CEB0:       var_170 = (var_150 + Chr(&H12))
  loc_195CEB6:       Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_195CECD:       var_9E = (var_9E + 1)
  loc_195CF0C:       If CBool(var_C0.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_195CF70:         var_150 = (Chr(&HF) + "Steward Name  : ")
  loc_195CF7A:         var_180 = (var_150 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("WaiterName")), var_9E), &H14)))
  loc_195CF81:         var_1D4 = (Space(1) + Chr(&H12))
  loc_195CF87:         Print 1, CVar(var_12C.Item("Amount"))
  loc_195CFB0:         var_9E = (var_9E + 1)
  loc_195CFB3:       End If
  loc_195CFBB:       var_11C = Chr(&HF)
  loc_195CFCF:       var_120 = var_C0.Fields
  loc_195D014:       var_150 = (var_11C + "User Name     : ")
  loc_195D01E:       var_180 = (var_150 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_120.Item("U_Name")), var_9E), &HA)))
  loc_195D025:       var_1D4 = (Space(1) + Chr(&H12))
  loc_195D02B:       Print 1, CVar(var_12C.Item("Amount"))
  loc_195D054:       var_9E = (var_9E + 1)
  loc_195D05C:       Print 1, vbNullString
  loc_195D068:       var_9E = (var_9E + 1)
  loc_195D091:       unk_43FED1.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & Me(8) & "'", var_11C, -1
  loc_195D09C:       Set var_F0 = var_120
  loc_195D0C0:       If (var_F0.RecordCount > 0) Then
  loc_195D103:         If CBool(Trim(CVar(var_F0.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_195D10E:           var_11C = Chr(&HF)
  loc_195D122:           var_120 = var_F0.Fields
  loc_195D151:           var_170 = (var_11C + Trim(CVar(var_120.Item("Slogan1"))))
  loc_195D158:           var_190 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_120.Item("U_Name")), var_9E), &HA)) + Chr(&H12))
  loc_195D15E:           Print 1, Chr(&H12)
  loc_195D17C:           var_9E = (var_9E + 1)
  loc_195D17F:         End If
  loc_195D17F:       End If
  loc_195D184:       Set var_F0 = Nothing
  loc_195D1AD:       unk_43FED1.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & Me(8) & "'", var_11C, -1
  loc_195D1B8:       Set var_F0 = var_120
  loc_195D1DC:       If (var_F0.RecordCount > 0) Then
  loc_195D21F:         If CBool(Trim(CVar(var_F0.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_195D246:           var_128 = var_F0.Fields.Item("Slogan2")
  loc_195D26D:           var_170 = (Chr(&HF) + Trim(CVar(var_128)))
  loc_195D274:           var_190 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_F0.Fields.Item("U_Name")), var_9E), &HA)) + Chr(&H12))
  loc_195D27A:           Print 1, Chr(&H12)
  loc_195D298:           var_9E = (var_9E + 1)
  loc_195D29B:         End If
  loc_195D29B:       End If
  loc_195D2A0:       Set var_F0 = Nothing
  loc_195D2AB:       var_11C = Chr(&HF)
  loc_195D2C6:       var_150 = (var_11C + CVar(MemVar_1F9221C))
  loc_195D2CD:       var_170 = (CVar(var_128) + Chr(&H12))
  loc_195D2D3:       Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_F0.Fields.Item("U_Name")), var_9E), &HA))
  loc_195D2EA:       var_9E = (var_9E + 1)
  loc_195D2F2:       Print 1, vbNullString
  loc_195D2FE:       var_9E = (var_9E + 1)
  loc_195D304:       var_13C = 0
  loc_195D333:       unk_43FED1.Execute "SELECT TOKENPrint FROM Depart Where Code='" & Me(8) & "'", var_11C, -1
  loc_195D33B:       var_120 = var_120.Fields
  loc_195D343:       var_13C = var_128.Item(var_128)
  loc_195D373:       If (Proc_6_38_E68A98(CVar(var_12C), var_12C, var_9E, var_9E, var_9E) = "Yes") Then
  loc_195D38A:         If (var_C4.RecordCount > 0) Then
  loc_195D38D:           ' Referenced from: 195DE75
  loc_195D39C:           If Not(var_C4.EOF) Then
  loc_195D3A1:             Close 1
  loc_195D3C8:             Open "C:\reptmp\TEXTFILE_" & CStr(var_C4.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_195D3DA:             Print 1, vbNullString
  loc_195D3E6:             var_9E = (var_9E + 1)
  loc_195D3EE:             Print 1, vbNullString
  loc_195D42F:             var_FC = Replace(CStr(Space(&H26)), " ", "=", 1, -1, 0)
  loc_195D43A:             var_180 = Chr(&H12)
  loc_195D448:             var_170 = (Chr(&HF) + CVar("C:\reptmp\TEXTFILE_" & CStr(var_C4.AbsolutePosition)))
  loc_195D44F:             var_190 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_120.Item("U_Name")), var_9E), &HA)) + var_180)
  loc_195D455:             Print 1, Chr(&H12)
  loc_195D473:             var_BA = 1
  loc_195D48A:             var_F8 = "Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,SUM(S.Amount) AS AMT,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_195D4D0:             var_170 = CVar(var_F8 & Me(12) & "' AND I.Kitchen='") & var_C4.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)" 
  loc_195D4DE:             unk_43FED1.Execute CStr(var_170), var_180, -1
  loc_195D4E9:             Set var_C8 = var_12C
  loc_195D51F:             If (var_C8.RecordCount > 0) Then
  loc_195D54B:               var_170 = (38 - Len(Trim(var_9C)))
  loc_195D57E:               var_234 = (38 - Len(Trim(var_9C)))
  loc_195D5A8:               var_1D4 = (Chr(&HF) + Space(CLng((var_170 / 2))))
  loc_195D5B2:               var_1E4 = (CVar(var_12C.Item("Amount")) + CVar(var_9C))
  loc_195D5B9:               var_26C = (var_1E4 + Space(CLng((CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E4, "0.00")), 9, Space(CLng((var_170 / 2))))) / 2))))
  loc_195D5C0:               var_28C = (var_26C + Chr(&H12))
  loc_195D5C6:               Print 1, Format(var_26C, "0.00")
  loc_195D5E9:               var_9E = (var_9E + 1)
  loc_195D62C:               var_170 = (38 - Len(var_C4.Fields.Item("Department").Value))
  loc_195D635:               var_180 = (var_170 / 2)
  loc_195D652:               var_12C = var_C4.Fields
  loc_195D6A1:               var_25C = (38 - Len(var_C4.Fields.Item("Department").Value))
  loc_195D6AA:               var_26C = (Space(CLng((CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(var_12C.Item("Department")), "0.00")), 9, Space(CLng((var_170 / 2))))) / 2))) / 2)
  loc_195D6CB:               var_1D4 = (Chr(&HF) + Space(CLng(var_180)))
  loc_195D6D2:               var_224 = (CVar(var_12C.Item("Amount")) + Trim(CVar(var_12C.Item("Department"))))
  loc_195D6D9:               var_28C = (Len(Trim(var_9C)) + Space(CLng(var_26C)))
  loc_195D6E0:               var_2AC = (Format(var_26C, "0.00") + Chr(&H12))
  loc_195D6E6:               Print 1, var_2AC
  loc_195D730:               var_120 = var_C0.Fields
  loc_195D772:               Proc_6_39_E7C810(var_180, CVar(var_C0.Fields.Item("VNo")), var_120, var_9E)
  loc_195D794:               var_190 = CVar(Proc_6_38_E68A98(CVar(var_120.Item("vType")), var_9E, var_C0.Fields, var_BA, var_9E) & "/" & MemVar_1F92168 & "/") 'String
  loc_195D7FF:               var_150 = (Chr(&HF) + "Bill No.  : ")
  loc_195D809:               var_204 = (var_C4.Fields.Item("Department").Value + CVar(Proc_6_45_EAD428(CStr(var_190 & var_180), &H10, var_120)))
  loc_195D812:               var_224 = (Trim(CVar(var_C0.Fields.Item("Department"))) + "Dt : ")
  loc_195D81C:               var_25C = (Len(Trim(var_9C)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")), var_9E), &HB)))
  loc_195D823:               var_27C = (Space(CLng((CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_45_EAD428(CStr(var_190 & var_180), &H10, var_120)), "0.00")), 9, Space(CLng((CVar(var_C0.Fields.Item("VNo")) / 2))))) / 2))) + Chr(&H12))
  loc_195D829:               Print 1, Space(CLng(Chr(&H12)))
  loc_195D8A7:               If (Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType"))) = "Outlet") Then
  loc_195D957:                 var_150 = (Chr(&HF) + "Table No. : ")
  loc_195D961:                 var_180 = (var_C4.Fields.Item("Department").Value + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_195D968:                 var_1D4 = (var_180 + Space(2))
  loc_195D971:                 var_1E4 = (Space(2) & var_180 + "Time : ")
  loc_195D97B:                 var_234 = (CVar(Proc_6_45_EAD428(CStr(Space(2) & var_180), &H10, var_C0.Fields)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 5)))
  loc_195D982:                 var_25C = (CVar(var_C0.Fields.Item("VDate")) + Chr(&H12))
  loc_195D988:                 Print 1, Space(CLng((CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_45_EAD428(CStr(Space(2) & var_180), &H10, var_C0.Fields)), "0.00")), 9, Space(CLng((CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), 5)) / 2))))) / 2)))
  loc_195D9C7:                 var_9E = (var_9E + 1)
  loc_195D9CA:               End If
  loc_195D9ED:               var_150 = (Chr(&HF) + CVar(var_DC))
  loc_195D9F4:               var_170 = (var_C4.Fields.Item("Department").Value + Chr(&H12))
  loc_195D9FA:               Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), 5))
  loc_195DA7C:               var_244 = Chr(&H12)
  loc_195DA8A:               var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428("SNo", 3)))
  loc_195DA91:               var_180 = (Chr(&H12) + Space(1))
  loc_195DA9B:               var_1D4 = (var_180 + CVar(Proc_6_45_EAD428("Particulars", &H1B)))
  loc_195DAA2:               var_204 = (CVar(Proc_6_45_EAD428("Particulars", &H1B)) & var_180 + Space(1))
  loc_195DAAC:               var_234 = (CVar(var_C0.Fields.Item("VTIME")) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_195DAB3:               var_25C = (CVar(var_C0.Fields.Item("VDate")) + var_244)
  loc_195DAB9:               Print 1, Space(CLng((CVar(Proc_6_52_EAD4F4(CStr(Format(Space(1), "0.00")), 9, Space(CLng((Space(1) / 2))))) / 2)))
  loc_195DB0E:               var_150 = (Chr(&HF) + CVar(var_DC))
  loc_195DB15:               var_170 = (CVar(Proc_6_45_EAD428("SNo", 3)) + Chr(&H12))
  loc_195DB1B:               Print 1, Space(1)
  loc_195DB2C:               ' Referenced from: 195DCBB
  loc_195DB3B:               If Not(var_C8.EOF) Then
  loc_195DB69:                 var_170 = Space(1)
  loc_195DBDD:                 Proc_6_39_E7C810(var_244, CVar(var_C8.Fields.Item("qty")))
  loc_195DC2D:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(var_BA), 3)))
  loc_195DC34:                 var_180 = (Chr(&H12) + var_170)
  loc_195DC3E:                 var_1E4 = (var_180 + CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("ItemName").Value), &H1B)))
  loc_195DC45:                 var_224 = (Space(1) + Space(1))
  loc_195DC4F:                 var_28C = (CVar(Proc_6_52_EAD4F4("Qty", 6)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_244, "0.00")), 6, 1)))
  loc_195DC56:                 var_2AC = (Format(Format(var_244, "0.00"), "0.00") + Chr(&H12))
  loc_195DC5C:                 Print 1, var_2AC
  loc_195DCA4:                 var_C8.MoveNext
  loc_195DCAF:                 var_9E = (var_9E + 1)
  loc_195DCB8:                 var_BA = (var_BA + 1)
  loc_195DCBB:                 GoTo loc_195DB2C
  loc_195DCBE:               End If
  loc_195DCBE:             End If
  loc_195DCC3:             Print 1, vbNullString
  loc_195DCCB:             Close 1
  loc_195DCF2:             Open "C:\reptmp\SBILL_" & CStr(var_C4.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_195DD46:             var_150 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_C4.AbsolutePosition) & ".TXT>") 'String
  loc_195DD4C:             var_160 = var_150 & MemVar_6298CC.Fields.Item("Printer").Value 
  loc_195DD52:             Print 1, var_160
  loc_195DD71:             Close 1
  loc_195DD7B:             If (MemVar_1F923B8 = "Y") Then
  loc_195DDAD:               var_B0 = CVar(Shell(CVar("C:\reptmp\SBILL_" & CStr(var_C4.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_195DDD4:               var_B0 = CVar(Shell("C:\reptmp\SCutter.PIF", 0)) 'Variant
  loc_195DDDE:             Else
  loc_195DE0D:               var_B0 = CVar(Shell(CVar("C:\reptmp\SBILL_" & CStr(var_C4.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_195DE4A:               If (MsgBox("PRESS OK TO CUT THE TOKEN", &H40, var_150, var_160, var_170) = 1) Then
  loc_195DE66:                 var_B0 = CVar(Shell("C:\reptmp\SCutter.BAT", 0)) 'Variant
  loc_195DE6D:               End If
  loc_195DE6D:             End If
  loc_195DE70:             var_C4.MoveNext
  loc_195DE75:             GoTo loc_195D38D
  loc_195DE78:           End If
  loc_195DE78:         End If
  loc_195DE78:       End If
  loc_195DE78:     End If
  loc_195DE7B:     var_C0.MoveNext
  loc_195DE80:     GoTo loc_195B51A
  loc_195DE83:   End If
  loc_195DE85:   Close 1
  loc_195DE8E:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_195DEC3:   var_150 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_6298CC.Fields.Item("Printer").Value 
  loc_195DEC9:   Print 1, var_150
  loc_195DEDF:   Close 1
  loc_195DEE9:   If (MemVar_1F923B8 = "Y") Then
  loc_195DF05:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_195DF0F:   Else
  loc_195DF28:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_195DF48:     var_B0 = CVar(Shell("C:\reptmp\SCutter.BAT", 0)) 'Variant
  loc_195DF4F:   End If
  loc_195DF54:   Set var_C0 = Nothing
  loc_195DF5C:   Set var_CC = Nothing
  loc_195DF64:   Set var_D0 = Nothing
  loc_195DF6C:   Set var_EC = Nothing
  loc_195DF74:   Set var_C4 = Nothing
  loc_195DF7C:   Set var_C8 = Nothing
  loc_195DF82: Else
  loc_195DF9B:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_150, var_160, var_170)
  loc_195DFAB: End If
  loc_195DFAB: Exit Sub
  loc_195DFAC: ' Referenced from: 195B354
  loc_195DFAC: Proc_6_60_E62BC4(var_BA, var_9E, 1)
  loc_195DFB1: Exit Sub
End Sub

Public Sub Proc_260_6_1623BFC
  'Data Table: 43FECC
  Dim MemVar_6298CC As Recordset15
  Dim var_F8 As String
  Dim var_FC As String
  Dim unk_43FED1 As Connection15
  Dim var_AE As Integer
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_E0 As Recordset15
  Dim var_110 As Fields15
  Dim var_10C As Variant
  Dim var_148 As Variant
  Dim var_1B8 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_1D8 As Variant
  Dim var_1E8 As Variant
  Dim var_2DC As Variant
  Dim var_158 As Variant
  Dim var_1C8 As Variant
  Dim var_1FC As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_294 As Variant
  Dim var_2B4 As Variant
  Dim var_304 As Variant
  Dim var_314 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_2EC As Variant
  Dim var_2A4 As Variant
  Dim var_38C As Variant
  Dim var_3AC As Variant
  Dim var_4C4 As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_16227E8: On Error Goto loc_1623BF4
  loc_16227F6: MemVar_6298CC.Filter = "ModType='POS'"
  loc_1622811: If (MemVar_6298CC.RecordCount > 0) Then
  loc_1622817:   MemVar_1F923C0 = "N"
  loc_162281E:   MemVar_1F923C4 = "N"
  loc_1622825:   MemVar_1F923C8 = "K"
  loc_162284F:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_10C, -1
  loc_162285A:   Set var_E0 = var_110
  loc_1622873:   var_F8 = "Select Sale1.* ,W.Name as WaiterName,depart.ShortName From (Sale1 left join waiter W on sale1.waiter=w.code) LEFT JOIN Depart ON Sale1.RestCode = Depart.Code Where Sale1.DocID='" & Me(12)
  loc_162287A:   var_8C = var_F8 & "'"
  loc_1622887:   var_F8 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='"
  loc_16228A7:   var_90 = var_F8 & Me(12) & "' and KOT.CONTRADOCID='" & Me(12) & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) "
  loc_16228CC:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno "
  loc_16228DE:   If (var_8C = vbNullString) Then
  loc_16228E1:     Exit Sub
  loc_16228E2:   End If
  loc_16228EA:   If (var_90 = vbNullString) Then
  loc_16228ED:     Exit Sub
  loc_16228EE:   End If
  loc_16228F6:   If (var_94 = vbNullString) Then
  loc_16228F9:     Exit Sub
  loc_16228FA:   End If
  loc_1622910:   unk_43FED1.Execute var_8C, var_10C, -1
  loc_162291B:   Set var_BC = var_110
  loc_162293A:   unk_43FED1.Execute var_90, var_10C, -1
  loc_1622945:   Set var_C0 = var_110
  loc_1622964:   unk_43FED1.Execute var_94, var_10C, -1
  loc_162296F:   Set var_C4 = var_110
  loc_162297A:   var_AE = 7
  loc_162297F:   Close 1
  loc_1622988:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_162298C:   ' Referenced from: 1623A7F
  loc_162299B:   If Not(var_BC.EOF) Then
  loc_16229A0:     var_9A = 0
  loc_16229B7:     var_110 = var_E0.Fields
  loc_1622A00:     var_FC = Proc_6_38_E68A98(CVar(var_E0.Fields.Item("RestType")), (Proc_6_38_E68A98(CVar(var_110.Item("RestType")), 1, var_9A, var_AE) = "Restaurant"), var_110)
  loc_1622A1E:     If (var_110 Or (var_FC = "Hall")) Then
  loc_1622A2F:       var_98 = "** " & "BILL" & " **"
  loc_1622A38:     Else
  loc_1622A4A:       var_110 = var_E0.Fields
  loc_1622A6E:       var_98 = var_110 & Proc_6_38_E68A98(CVar(var_110.Item("Name")), "** ") & " **"
  loc_1622A7E:     End If
  loc_1622A84:     If (var_9A = 0) Then
  loc_1622AB5:       var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_1622AEC:       var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_1622B53:       Proc_6_39_E7C810(var_1C8, CVar(var_BC.Fields.Item("VNo")))
  loc_1622B73:       var_168 = (Space(8) + Trim(CVar(var_BC.Fields.Item("vType"))))
  loc_1622B7C:       var_178 = (var_168 + "/")
  loc_1622B86:       var_198 = (var_178 + CVar(MemVar_1F92168))
  loc_1622B9D:       Print 1, var_198 & CVar("/" & Proc_6_45_EAD428(CStr(var_1C8), &H10))
  loc_1622BCC:       Print 1
  loc_1622D35:       Proc_6_39_E7C810(var_2EC, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_1622D59:       var_168 = (Space(6) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate"))), &H12)))
  loc_1622D60:       var_198 = (var_168 + Space(4))
  loc_1622D67:       var_1C8 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) 'String
  loc_1622D6A:       var_1D8 = (var_198 + var_1C8)
  loc_1622D71:       var_1FC = (CVar("/" & Proc_6_45_EAD428(CStr(var_1C8), &H10)) + Space(6))
  loc_1622D7B:       var_238 = (var_1FC + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_1622D82:       var_258 = (var_238 + Space(4))
  loc_1622D8C:       var_294 = (var_258 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_1622D93:       var_2B4 = (var_294 + Space(6))
  loc_1622D9D:       var_314 = (var_2B4 + CVar(Proc_6_45_EAD428(CStr(var_2EC), 7)))
  loc_1622DA3:       Print 1, var_314
  loc_1622E11:       Print 1, vbNullString
  loc_1622E1C:       Print 1, vbNullString
  loc_1622E24:       var_9A = 5
  loc_1622E27:     End If
  loc_1622E29:     var_B6 = 1
  loc_1622E40:     If (var_C0.RecordCount > 0) Then
  loc_1622E46:       var_C0.MoveFirst
  loc_1622E4B:       ' Referenced from: 162367D
  loc_1622E4B:     End If
  loc_1622E5A:     If Not(var_C0.EOF) Then
  loc_1622E63:       If (var_9A = 0) Then
  loc_1622E94:         var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_1622ECB:         var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_1622F32:         Proc_6_39_E7C810(var_1C8, CVar(var_BC.Fields.Item("VNo")), var_B6)
  loc_1622F52:         var_168 = (Space(8) + Trim(CVar(var_BC.Fields.Item("vType"))))
  loc_1622F5B:         var_178 = (var_168 + "/")
  loc_1622F65:         var_198 = (Space(4) + CVar(MemVar_1F92168))
  loc_1622F7C:         Print 1, var_198 & CVar("/" & Proc_6_45_EAD428(CStr(var_1C8), &H10))
  loc_1622FAB:         Print 1
  loc_1623114:         Proc_6_39_E7C810(var_2EC, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_1623138:         var_168 = (Space(6) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))
  loc_162313F:         var_198 = (var_168 + Space(4))
  loc_1623149:         var_1D8 = (var_198 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_1623150:         var_1FC = (CVar("/" & Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA))), &H10)) + Space(6))
  loc_162315A:         var_238 = (var_1FC + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_1623161:         var_258 = (var_238 + Space(4))
  loc_162316B:         var_294 = (var_258 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_1623172:         var_2B4 = (var_294 + Space(6))
  loc_1623179:         var_304 = CVar(Proc_6_45_EAD428(CStr(var_2EC), 7)) 'String
  loc_162317C:         var_314 = (var_2B4 + var_304)
  loc_1623182:         Print 1, var_314
  loc_16231F0:         Print 1, vbNullString
  loc_16231FB:         Print 1, vbNullString
  loc_1623203:         var_9A = 5
  loc_1623206:       End If
  loc_16232A5:       Proc_6_39_E7C810(var_258, CVar(var_C0.Fields.Item("qty")))
  loc_16232F0:       Proc_6_39_E7C810(var_304, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_162333B:       Proc_6_39_E7C810(var_3E4, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_162337C:       Proc_6_39_E7C810(var_440, CVar(var_C0.Fields.Item("Amt")))
  loc_16233C7:       var_158 = (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1)) + Space(4))
  loc_16233DD:       var_178 = CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item("KOTNo").Value), 5, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))) 'String
  loc_16233E0:       var_198 = (1 + var_178)
  loc_16233F4:       var_1C8 = (var_198 + Space(2))
  loc_1623409:       var_1E8 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("ICODE")), var_9A), 7, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))) 'String
  loc_162340C:       var_1FC = (1 + var_1E8)
  loc_1623425:       var_238 = (var_1FC + CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item("ItemName").Value), &H1E)))
  loc_162343E:       var_2A4 = (var_238 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_258, "0")), 4)))
  loc_1623452:       var_2DC = (Space(6) + Space(3))
  loc_162346B:       var_38C = (CVar(var_BC.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_304, "0.00")), 7)))
  loc_162347F:       var_3AC = (var_38C + Space(1))
  loc_16234BD:       var_4C4 = (var_3AC + IIf((var_3E4 = 0), CVar(Proc_6_45_EAD428("Free", &HB, 1)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_440, "0.00")), &HB))))
  loc_162354B:       Print 1, CStr(var_4C4)
  loc_1623557:       var_9A = (var_9A + 1)
  loc_1623564:       If (var_9A = (&H1A - var_AE)) Then
  loc_162357B:         If (var_C0.RecordCount = &HE) Then
  loc_1623583:           Print 1, vbNullString
  loc_162358F:           var_9A = (var_9A + 1)
  loc_1623595:         Else
  loc_162359B:           var_9C = (var_9C + 1)
  loc_16235A3:           Print 1, vbNullString
  loc_16235AF:           var_9A = (var_9A + 1)
  loc_16235C7:           var_148 = (Space(&H3E) + "Contd. Page ")
  loc_16235E2:           Print 1, CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1)) & CVar(CStr(1)) & "..."
  loc_16235FB:           var_9A = (var_9A + 1)
  loc_16235FE:           ' Referenced from:   162361B
  loc_1623604:           If (var_9A <> &H24) Then
  loc_162360C:             Print 1, vbNullString
  loc_1623618:             var_9A = (var_9A + 1)
  loc_162361B:             GoTo loc_16235FE
  loc_162361E:           End If
  loc_1623620:           var_9A = 0
  loc_1623623:         End If
  loc_1623650:         Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_9A, var_9A, var_9A)
  loc_1623658:         var_158 = (var_9A + CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1)))
  loc_162365D:         var_CC = CSng(CVar(CStr(1)))
  loc_1623672:         var_B6 = (var_B6 + 1)
  loc_1623678:         var_C0.MoveNext
  loc_162367D:         GoTo loc_1622E4B
  loc_1623680:       End If
  loc_1623680:     End If
  loc_162368A:     If (var_9A < (&H1A - var_AE)) Then
  loc_162368D:       ' Referenced from: 16236B1
  loc_162369A:       If (var_9A <> ((&H1A - var_AE) + 1)) Then
  loc_16236A2:         Print 1, vbNullString
  loc_16236AE:         var_9A = (var_9A + 1)
  loc_16236B1:         GoTo loc_162368D
  loc_16236B4:       End If
  loc_16236B4:     End If
  loc_16236B7:     var_C4.MoveFirst
  loc_16236BC:     ' Referenced from: 1623A74
  loc_16236CB:     If Not(var_C4.EOF) Then
  loc_16236F8:       var_4D4 = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_1623716:       If (var_4D4 = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_1623719:         GoTo loc_1623A6C
  loc_162371C:       End If
  loc_162372F:       If (var_4D4 = CVar(MemVar_1F92078 & "NET")) Then
  loc_1623737:         Print 1, vbNullString
  loc_1623763:         Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1)), CVar(var_C4.Fields.Item("Amount")), var_9A, var_B6, var_CC)
  loc_162377D:         If (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1)) > 0) Then
  loc_16237B3:           Proc_6_39_E7C810(CVar(CStr(1)), CVar(var_C4.Fields.Item("Amount")), 1)
  loc_16237F6:           var_1B8 = (Space(&H3C) + CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(CStr(1)), "0.00")), &H12, 1, 1)))
  loc_16237FC:           Print 1, Space(2)
  loc_162381D:         End If
  loc_1623820:       Else
  loc_1623833:         If (var_4D4 = CVar(MemVar_1F92078 & "SCH")) Then
  loc_1623869:           Proc_6_39_E7C810(CVar(CStr(1)), CVar(var_C4.Fields.Item("Amount")), var_9A)
  loc_16238AC:           var_1B8 = (Space(&H3C) + CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(CStr(1)), "0.00")), &H12, 1)))
  loc_16238B2:           Print 1, Space(2)
  loc_16238D6:         Else
  loc_16238E9:           If (var_4D4 = CVar(MemVar_1F92078 & "ST")) Then
  loc_1623918:             var_148 = CVar(var_C4.Fields.Item("Amount")) 'Address
  loc_162391F:             Proc_6_39_E7C810(CVar(CStr(1)), var_148, 1)
  loc_1623962:             var_1B8 = (Space(&H3C) + CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(CStr(1)), "0.00")), &H12, 1)))
  loc_1623968:             Print 1, Space(2)
  loc_162398C:           Else
  loc_16239B2:             Proc_6_39_E7C810(var_148, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_16239CC:             If (var_148 > 0) Then
  loc_1623A02:               Proc_6_39_E7C810(CVar(CStr(1)), CVar(var_C4.Fields.Item("Amount")))
  loc_1623A16:               var_168 = "0.00"
  loc_1623A45:               var_1B8 = (Space(&H3C) + CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(CStr(1)), var_168)), &H12, 1)))
  loc_1623A4B:               Print 1, Space(2)
  loc_1623A6C:             End If
  loc_1623A6C:           End If
  loc_1623A6C:         End If
  loc_1623A6C:         ' Referenced from: 1623719
  loc_1623A6C:       End If
  loc_1623A6F:       var_C4.MoveNext
  loc_1623A74:       GoTo loc_16236BC
  loc_1623A77:     End If
  loc_1623A7A:     var_BC.MoveNext
  loc_1623A7F:     GoTo loc_162298C
  loc_1623A82:   End If
  loc_1623A87:   Print 1, vbNullString
  loc_1623A92:   Print 1, vbNullString
  loc_1623A9D:   Print 1, vbNullString
  loc_1623AA8:   Print 1, vbNullString
  loc_1623AB3:   Print 1, vbNullString
  loc_1623ABE:   Print 1, vbNullString
  loc_1623AC9:   Print 1, vbNullString
  loc_1623AD4:   Print 1, vbNullString
  loc_1623ADF:   Print 1, vbNullString
  loc_1623AEA:   Print 1, vbNullString
  loc_1623AF5:   Print 1, vbNullString
  loc_1623AFD:   Close 1
  loc_1623B06:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1623B3B:   var_148 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_6298CC.Fields.Item("Printer").Value 
  loc_1623B41:   Print 1, var_148
  loc_1623B57:   Close 1
  loc_1623B61:   If (MemVar_1F923B8 = "Y") Then
  loc_1623B7D:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1623B87:   Else
  loc_1623BA0:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1623BA7:   End If
  loc_1623BAC:   Set var_BC = Nothing
  loc_1623BB4:   Set var_C0 = Nothing
  loc_1623BBC:   Set var_C4 = Nothing
  loc_1623BC4:   Set var_E0 = Nothing
  loc_1623BCA: Else
  loc_1623BE3:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_148, CVar(CStr(1)), var_168)
  loc_1623BF3: End If
  loc_1623BF3: Exit Sub
  loc_1623BF4: ' Referenced from: 16227E8
  loc_1623BF4: Proc_6_60_E62BC4(1, var_9A)
  loc_1623BF9: Exit Sub
End Sub

Public Sub Proc_260_7_16F4894
  'Data Table: 43FECC
  Dim MemVar_6298CC As Recordset15
  Dim var_F8 As String
  Dim var_FC As String
  Dim unk_43FED1 As Connection15
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_E0 As Recordset15
  Dim var_110 As Fields15
  Dim var_10C As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_180 As Variant
  Dim var_194 As String
  Dim var_230 As Variant
  Dim var_2C0 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_278 As Variant
  Dim var_298 As Variant
  Dim var_2E8 As Variant
  Dim var_268 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_318 As Variant
  Dim var_338 As Variant
  Dim var_398 As Variant
  Dim var_3B8 As Variant
  Dim var_4CC As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_16F2E94: On Error Goto loc_16F488C
  loc_16F2EA2: MemVar_6298CC.Filter = "ModType='POS'"
  loc_16F2EBD: If (MemVar_6298CC.RecordCount > 0) Then
  loc_16F2EC3:   MemVar_1F923C0 = "N"
  loc_16F2ECA:   MemVar_1F923C4 = "N"
  loc_16F2ED1:   MemVar_1F923C8 = "K"
  loc_16F2EFB:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_10C, -1
  loc_16F2F06:   Set var_E0 = var_110
  loc_16F2F26:   var_8C = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12) & "'"
  loc_16F2F33:   var_F8 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_16F2F43:   var_90 = var_F8 & Me(12) & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) "
  loc_16F2F64:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno "
  loc_16F2F76:   If (var_8C = vbNullString) Then
  loc_16F2F79:     Exit Sub
  loc_16F2F7A:   End If
  loc_16F2F82:   If (var_90 = vbNullString) Then
  loc_16F2F85:     Exit Sub
  loc_16F2F86:   End If
  loc_16F2F8E:   If (var_94 = vbNullString) Then
  loc_16F2F91:     Exit Sub
  loc_16F2F92:   End If
  loc_16F2FA8:   unk_43FED1.Execute var_8C, var_10C, -1
  loc_16F2FB3:   Set var_BC = var_110
  loc_16F2FD2:   unk_43FED1.Execute var_90, var_10C, -1
  loc_16F2FDD:   Set var_C0 = var_110
  loc_16F2FFC:   unk_43FED1.Execute var_94, var_10C, -1
  loc_16F3007:   Set var_C4 = var_110
  loc_16F3012:   Close 1
  loc_16F301B:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16F301F:   ' Referenced from: 16F4790
  loc_16F302E:   If Not(var_BC.EOF) Then
  loc_16F3033:     var_9A = 0
  loc_16F3038:     var_9C = 1
  loc_16F304A:     var_110 = var_E0.Fields
  loc_16F3093:     var_FC = Proc_6_38_E68A98(CVar(var_E0.Fields.Item("RestType")), (Proc_6_38_E68A98(CVar(var_110.Item("RestType")), var_9C, var_9A, var_110) = "Restaurant"), var_110)
  loc_16F30B1:     If (var_110 Or (var_FC = "Hall")) Then
  loc_16F30C2:       var_98 = "** " & "BILL" & " **"
  loc_16F30CB:     Else
  loc_16F30DD:       var_110 = var_E0.Fields
  loc_16F3101:       var_98 = var_110 & Proc_6_38_E68A98(CVar(var_110.Item("Name")), "** ") & " **"
  loc_16F3111:     End If
  loc_16F3117:     If (var_9A = 0) Then
  loc_16F318C:       var_170 = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98("UPTT No: " & var_E0.Fields.Item("LstNo").Value))))
  loc_16F3193:       var_190 = (var_170 + Chr(&H12))
  loc_16F3199:       Print 1, var_190
  loc_16F31C6:       var_9A = (var_9A + 1)
  loc_16F31EA:       Print 1, Proc_260_1_10A5350(var_98, "D", &H3C)
  loc_16F31FE:       Print 1, vbNullString
  loc_16F320A:       var_9A = (var_9A + 1)
  loc_16F323B:       var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_16F3272:       var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_16F32C9:       var_194 = Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, Proc_260_2_136D614(var_9C, Proc_260_2_136D614(var_9C, var_9A, &H3C), &H3C), Proc_260_2_136D614(var_9C, Proc_260_2_136D614(var_9C, var_9A, &H3C), &H3C)), &H1E)
  loc_16F32D2:       var_150 = (Chr(&H11) + Space(&H14))
  loc_16F32DB:       var_160 = ("UPTT No: " & var_E0.Fields.Item("LstNo").Value + "PHONE NO.")
  loc_16F32E2:       var_170 = CVar(var_194) 'String
  loc_16F32E5:       var_180 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98("UPTT No: " & var_E0.Fields.Item("LstNo").Value))) + var_170)
  loc_16F32EB:       Print 1, Chr(&H12)
  loc_16F330F:       var_9A = (var_9A + 1)
  loc_16F3317:       Print 1, vbNullString
  loc_16F3323:       var_9A = (var_9A + 1)
  loc_16F332B:       Print 1, vbNullString
  loc_16F3337:       var_9A = (var_9A + 1)
  loc_16F336F:       var_2EC = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("vType")), Proc_260_2_136D614(var_9C, var_9A, &H3C), Proc_260_2_136D614(var_9C, var_9A, &H3C))
  loc_16F3398:       Proc_6_39_E7C810(var_170, CVar(var_BC.Fields.Item("VNo")), Proc_260_2_136D614(var_9C, var_9A, &H3C))
  loc_16F3471:       var_140 = (Chr(&HF) + "Bill No.   : ")
  loc_16F347B:       var_1C8 = (Space(&H14) + CVar(Proc_6_45_EAD428(CStr(CVar(var_2EC & "/" & MemVar_1F92168 & "/") & var_170), &H10)))
  loc_16F3482:       var_1E8 = (var_1C8 + Space(1))
  loc_16F348B:       var_208 = (var_1E8 + "Dt : ")
  loc_16F3492:       var_248 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), Proc_260_2_136D614(var_9C, var_9A, &H3C)), &HF)) 'String
  loc_16F3495:       var_258 = (var_208 + var_248)
  loc_16F349C:       var_278 = (var_258 + Space(4))
  loc_16F34A5:       var_298 = (var_278 + "Time : ")
  loc_16F34AF:       var_2E8 = (var_298 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), 8)))
  loc_16F34B5:       Print 1, var_2E8
  loc_16F3514:       var_9A = (var_9A + 1)
  loc_16F3550:       If (Proc_6_38_E68A98(CVar(var_E0.Fields.Item("RestType")), Proc_260_2_136D614(var_9C, Proc_260_2_136D614(var_9C, var_9A, &H3C), &H3C)) = "Outlet") Then
  loc_16F35A7:         var_140 = (Chr(&HF) + "Table No.  : ")
  loc_16F35B1:         var_170 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 5)))
  loc_16F35B7:         Print 1, var_170
  loc_16F35DC:         var_9A = (var_9A + 1)
  loc_16F35DF:       End If
  loc_16F3618:       If (Proc_6_38_E68A98(CVar(var_E0.Fields.Item("RestType")), Proc_260_2_136D614(var_9C, Proc_260_2_136D614(var_9C, var_9A, &H3C), &H3C)) = "Room Service") Then
  loc_16F366F:         var_140 = (Chr(&HF) + "Room No.   : ")
  loc_16F3679:         var_170 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 5)))
  loc_16F367F:         Print 1, var_170
  loc_16F36A4:         var_9A = (var_9A + 1)
  loc_16F36A7:       End If
  loc_16F36E0:       If (Proc_6_38_E68A98(CVar(var_E0.Fields.Item("RestType")), Proc_260_2_136D614(var_9C, Proc_260_2_136D614(var_9C, var_9A, &H3C), &H3C)) = "Hall") Then
  loc_16F3737:         var_140 = (Chr(&HF) + "Hall  No.  : ")
  loc_16F3741:         var_170 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 5)))
  loc_16F3747:         Print 1, var_170
  loc_16F376C:         var_9A = (var_9A + 1)
  loc_16F376F:       End If
  loc_16F37EF:       If CBool((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0)) Then
  loc_16F383B:         var_194 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("KOTNo")), Proc_260_2_136D614(var_9C, Proc_260_2_136D614(var_9C, var_9A, &H3C), &H3C)), &H34)
  loc_16F3846:         var_140 = (Chr(&HF) + "KOT No.    : ")
  loc_16F3850:         var_170 = (Space(&H14) + CVar(var_194))
  loc_16F3856:         Print 1, (var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0)
  loc_16F387B:         var_9A = (var_9A + 1)
  loc_16F387E:       End If
  loc_16F3894:       var_140 = (Chr(&HF) + CVar(var_D0))
  loc_16F389A:       Print 1, Space(&H14)
  loc_16F38AD:       var_9A = (var_9A + 1)
  loc_16F38B0:     End If
  loc_16F38D6:     var_150 = (CVar(Proc_6_45_EAD428("SNo", 3, Proc_260_2_136D614(var_9C, Proc_260_2_136D614(var_9C, var_9A, &H3C), &H3C))) + Space(1))
  loc_16F38F0:     var_170 = (Proc_260_2_136D614(var_9C, var_9A, &H3C) + CVar(Proc_6_45_EAD428("ITEM NAME", &H14, CVar(var_BC.Fields.Item("KOTNo")))))
  loc_16F3904:     var_190 = ((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0) + Space(1))
  loc_16F391E:     var_1C8 = (CVar(var_2EC & "/" & MemVar_1F92168 & "/") & (var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0) + CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String)
  loc_16F392A:     var_1D8 = Space(1)
  loc_16F3932:     var_1E8 = (var_1C8 + var_1D8)
  loc_16F394C:     var_230 = (var_1E8 + CVar(Proc_6_52_EAD4F4("Rate", &HA)))
  loc_16F3960:     var_258 = (CVar(var_BC.Fields.Item("VDate")) + Space(1))
  loc_16F397A:     var_278 = (var_258 + CVar(Proc_6_52_EAD4F4("Qty", &HA)))
  loc_16F3986:     var_298 = Space(1)
  loc_16F398E:     var_2C0 = (var_278 + var_298)
  loc_16F39A8:     var_2E8 = (CVar(var_BC.Fields.Item("VTIME")) + CVar(Proc_6_52_EAD4F4("Amount", &HA)))
  loc_16F39AD:     var_B4 = CStr(var_2E8)
  loc_16F3A02:     var_140 = (Chr(&HF) + CVar(var_B4))
  loc_16F3A08:     Print 1, CVar(Proc_6_45_EAD428("SNo", 3, Proc_260_2_136D614(var_9C, Proc_260_2_136D614(var_9C, var_9A, &H3C), &H3C)))
  loc_16F3A2B:     var_140 = (Chr(&HF) + CVar(var_D0))
  loc_16F3A31:     Print 1, CVar(Proc_6_45_EAD428("SNo", 3, Proc_260_2_136D614(var_9C, Proc_260_2_136D614(var_9C, var_9A, &H3C), &H3C)))
  loc_16F3A44:     var_9A = (var_9A + 1)
  loc_16F3A49:     var_B6 = 1
  loc_16F3A4F:     var_C0.MoveFirst
  loc_16F3A54:     ' Referenced from: 16F3F78
  loc_16F3A63:     If Not(var_C0.EOF) Then
  loc_16F3AB3:       Proc_6_39_E7C810(var_1D8, CVar(var_C0.Fields.Item("TaxPer")), var_B6)
  loc_16F3AFE:       Proc_6_39_E7C810(var_298, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_16F3B49:       Proc_6_39_E7C810(var_358, CVar(var_C0.Fields.Item("qty")), 1, 1)
  loc_16F3B94:       Proc_6_39_E7C810(var_3F0, CVar(var_C0.Fields.Item("Rate")), 1, 1)
  loc_16F3BD5:       Proc_6_39_E7C810(var_448, CVar(var_C0.Fields.Item("Amt")))
  loc_16F3C20:       var_150 = (CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1)) + Space(1))
  loc_16F3C39:       var_180 = (1 + CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item("ItemName").Value), &H14, CVar(var_BC.Fields.Item("KOTNo")))))
  loc_16F3C4D:       var_1B8 = (Space(1) + Space(1))
  loc_16F3C66:       var_248 = (Proc_260_2_136D614(var_9C, var_9A, &H3C) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1D8, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String)) 'String)
  loc_16F3C7A:       var_268 = (Space(1) + Space(1))
  loc_16F3C93:       var_318 = (CVar(Proc_6_52_EAD4F4("Qty", &HA)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_298, "0.00")), &HA)))
  loc_16F3CA7:       var_338 = (var_318 + Space(1))
  loc_16F3CC0:       var_398 = (var_338 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_358, "0.00")), &HA)))
  loc_16F3CD4:       var_3B8 = (var_398 + Space(1))
  loc_16F3D12:       var_4CC = (var_3B8 + IIf((var_3F0 = 0), CVar(Proc_6_45_EAD428("Free", &HA, 1)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_448, "0.00")), &HA))))
  loc_16F3DAD:       var_140 = (Chr(&HF) + CVar(CStr(var_4CC)))
  loc_16F3DB3:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1))
  loc_16F3DCA:       If (Proc_260_2_136D614(var_9C, var_9A, &H3C) = (&H45 - var_AE)) Then
  loc_16F3DE3:         var_140 = (Chr(&HF) + CVar(var_D0))
  loc_16F3DE9:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1))
  loc_16F3DFC:         var_9A = (var_9A + 1)
  loc_16F3E04:         Print 1, "Contd."
  loc_16F3E10:         var_9A = (var_9A + 1)
  loc_16F3E25:         Print 1, Chr(&HC)
  loc_16F3E34:         var_9A = (var_9A + 1)
  loc_16F3E3D:         var_9C = (var_9C + 1)
  loc_16F3E42:         var_9A = 0
  loc_16F3E74:         var_FC = Proc_260_1_10A5350(var_98, "B", &H3C, Proc_260_2_136D614(var_9C, Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C), &H3C, Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C), var_9C))
  loc_16F3E79:         Print 1, var_FC
  loc_16F3E8E:         var_9A = (var_9A + 1)
  loc_16F3EA7:         var_140 = (Chr(&HF) + CVar(var_D0))
  loc_16F3EAD:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1))
  loc_16F3EC0:         var_9A = (var_9A + 1)
  loc_16F3ED9:         var_140 = (Chr(&HF) + CVar(var_B4))
  loc_16F3EDF:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1))
  loc_16F3F02:         var_140 = (Chr(&HF) + CVar(var_D0))
  loc_16F3F08:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1))
  loc_16F3F1B:         var_9A = (var_9A + 1)
  loc_16F3F1E:       End If
  loc_16F3F4B:       Proc_6_39_E7C810(CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C), Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C))
  loc_16F3F53:       var_150 = (Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C) + CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1)))
  loc_16F3F58:       var_CC = CSng(CVar(var_BC.Fields.Item("KOTNo")))
  loc_16F3F6D:       var_B6 = (var_B6 + 1)
  loc_16F3F73:       var_C0.MoveNext
  loc_16F3F78:       GoTo loc_16F3A54
  loc_16F3F7B:     End If
  loc_16F3F9B:     var_150 = (Chr(&HF) + Space(&H35))
  loc_16F3FA5:     var_160 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_D4))
  loc_16F3FAB:     Print 1, var_C0.Fields.Item("ItemName").Value
  loc_16F3FC2:     var_9A = (var_9A + 1)
  loc_16F3FC8:     var_C4.MoveFirst
  loc_16F3FCD:     ' Referenced from: 16F44EA
  loc_16F3FDC:     If Not(var_C4.EOF) Then
  loc_16F4009:       var_4DC = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_16F4027:       If (var_4DC = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_16F407D:         var_194 = Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C), var_B6, var_CC)
  loc_16F40B3:         Proc_6_39_E7C810(var_1D8, CVar(var_C4.Fields.Item("Amount")), Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C))
  loc_16F4100:         var_150 = (Chr(&HF) + Space(&H23))
  loc_16F410A:         var_180 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_194))
  loc_16F4111:         var_1B8 = (Space(1) + Space(4))
  loc_16F411B:         var_248 = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1D8, "0.00")), &HA, 1, 1)))
  loc_16F4122:         var_268 = (Space(1) + Chr(&H12))
  loc_16F4128:         Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_16F416B:         var_9A = (var_9A + 1)
  loc_16F4171:       Else
  loc_16F4184:         If (var_4DC = CVar(MemVar_1F92078 & "NET")) Then
  loc_16F419C:           var_140 = Space(&H35)
  loc_16F41A7:           var_150 = (Chr(&HF) + var_140)
  loc_16F41B1:           var_160 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_D4))
  loc_16F41B7:           Print 1, var_C4.Fields.Item("DispName").Value
  loc_16F41CE:           var_9A = (var_9A + 1)
  loc_16F41F7:           Proc_6_39_E7C810(var_140, CVar(var_C4.Fields.Item("Amount")), Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C), Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C))
  loc_16F4211:           If (var_140 > 0) Then
  loc_16F4229:             var_140 = Space(&H23)
  loc_16F4267:             var_194 = Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C))
  loc_16F429D:             Proc_6_39_E7C810(var_1D8, CVar(var_C4.Fields.Item("Amount")))
  loc_16F42EA:             var_150 = (Chr(&HF) + var_140)
  loc_16F42F4:             var_180 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_194))
  loc_16F42FB:             var_1B8 = (Space(1) + Space(4))
  loc_16F4305:             var_248 = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1D8, "0.00")), &HA, 1)))
  loc_16F430C:             var_268 = (Space(1) + Chr(&H12))
  loc_16F4312:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_16F4355:             var_9A = (var_9A + 1)
  loc_16F4358:           End If
  loc_16F435B:         Else
  loc_16F4381:           Proc_6_39_E7C810(var_140, CVar(var_C4.Fields.Item("Amount")), Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C))
  loc_16F439B:           If (var_140 > 0) Then
  loc_16F4427:             Proc_6_39_E7C810(var_1D8, CVar(var_C4.Fields.Item("Amount")))
  loc_16F4474:             var_150 = (Chr(&HF) + Space(&H23))
  loc_16F447E:             var_180 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1)))
  loc_16F4485:             var_1B8 = (Space(1) + Space(4))
  loc_16F448F:             var_248 = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1D8, "0.00")), &HA, 1)))
  loc_16F4496:             var_268 = (Space(1) + Chr(&H12))
  loc_16F449C:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_16F44DF:             var_9A = (var_9A + 1)
  loc_16F44E2:           End If
  loc_16F44E2:         End If
  loc_16F44E2:       End If
  loc_16F44E5:       var_C4.MoveNext
  loc_16F44EA:       GoTo loc_16F3FCD
  loc_16F44ED:     End If
  loc_16F4503:     var_140 = (Chr(&HF) + CVar(var_D0))
  loc_16F4509:     Print 1, Space(&H23)
  loc_16F451C:     var_9A = (var_9A + 1)
  loc_16F455B:     If CBool(var_BC.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_16F4593:       var_FC = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName")), Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C), Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C))
  loc_16F45B2:       var_140 = (Chr(&HF) + "Steward Name  : ")
  loc_16F45BC:       var_170 = (Space(&H23) + CVar(Proc_6_45_EAD428(var_FC, &H14, 1)))
  loc_16F45C2:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1))
  loc_16F45E7:       var_9A = (var_9A + 1)
  loc_16F45EA:     End If
  loc_16F4633:     var_194 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("U_Name")), Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C)), &HA)
  loc_16F463E:     var_140 = (Chr(&HF) + "User Name     : ")
  loc_16F4648:     var_170 = (Space(&H23) + CVar(var_194))
  loc_16F464E:     Print 1, CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1))
  loc_16F4673:     var_9A = (var_9A + 1)
  loc_16F467B:     Print 1, vbNullString
  loc_16F4687:     var_9A = (var_9A + 1)
  loc_16F469F:     var_140 = (Chr(&HF) + "HAVE A NICE DAY ")
  loc_16F46A5:     Print 1, Space(&H23)
  loc_16F46B8:     var_9A = (var_9A + 1)
  loc_16F46DB:     var_150 = (Chr(&HF) + Space(&H32))
  loc_16F46E4:     var_160 = (CVar(var_BC.Fields.Item("U_Name")) + "Guest Signature")
  loc_16F46EA:     Print 1, CVar(var_194)
  loc_16F4701:     var_9A = (var_9A + 1)
  loc_16F4709:     Print 1, vbNullString
  loc_16F4715:     var_9A = (var_9A + 1)
  loc_16F472D:     var_140 = (Chr(&HF) + "# ")
  loc_16F4737:     var_150 = Space(&H32) & CVar(MemVar_1F9221C) 
  loc_16F4740:     var_160 = var_150 & " # " 
  loc_16F4746:     Print 1, var_160
  loc_16F475D:     var_9A = (var_9A + 1)
  loc_16F4763:     var_BC.MoveNext
  loc_16F476D:     Print 1, vbNullString
  loc_16F4779:     var_9A = (var_9A + 1)
  loc_16F4781:     Print 1, vbNullString
  loc_16F478D:     var_9A = (var_9A + 1)
  loc_16F4790:     GoTo loc_16F301F
  loc_16F4793:   End If
  loc_16F4795:   Close 1
  loc_16F479E:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16F47D3:   var_140 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_6298CC.Fields.Item("Printer").Value 
  loc_16F47D9:   Print 1, var_140
  loc_16F47EF:   Close 1
  loc_16F47F9:   If (MemVar_1F923B8 = "Y") Then
  loc_16F4815:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16F481F:   Else
  loc_16F4838:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16F483F:   End If
  loc_16F4844:   Set var_BC = Nothing
  loc_16F484C:   Set var_C0 = Nothing
  loc_16F4854:   Set var_C4 = Nothing
  loc_16F485C:   Set var_E0 = Nothing
  loc_16F4862: Else
  loc_16F487B:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_140, var_150, var_160)
  loc_16F488B: End If
  loc_16F488B: Exit Sub
  loc_16F488C: ' Referenced from: 16F2E94
  loc_16F488C: Proc_6_60_E62BC4(Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C), Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C), Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C), Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C), Proc_260_2_136D614(var_9C, var_9A, &H3C, var_9A, var_9C))
  loc_16F4891: Exit Sub
End Sub

Public Sub Proc_260_8_16292C4
  'Data Table: 43FECC
  Dim MemVar_6298CC As Recordset15
  Dim var_10C As String
  Dim unk_43FED1 As Connection15
  Dim var_D0 As Recordset15
  Dim var_C0 As Recordset15
  Dim var_9E As Integer
  Dim var_A0 As Integer
  Dim var_F0 As Recordset15
  Dim var_124 As Fields15
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_210 As Variant
  Dim var_290 As Variant
  Dim var_14C As Variant
  Dim var_17C As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_228 As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_2D8 As Variant
  Dim var_2E8 As Variant
  Dim var_308 As Variant
  Dim var_368 As Variant
  Dim var_BA As Integer
  Dim var_CC As Recordset15
  Dim var_2C4 As String
  Dim var_340 As Variant
  Dim var_120 As Variant
  Dim var_D8 As Double
  loc_1627E64: On Error Goto loc_16292BD
  loc_1627E72: MemVar_6298CC.Filter = "ModType='POS'"
  loc_1627E8D: If (MemVar_6298CC.RecordCount > 0) Then
  loc_1627E93:   MemVar_1F923C0 = "N"
  loc_1627E9A:   MemVar_1F923C4 = "N"
  loc_1627EA1:   MemVar_1F923C8 = "K"
  loc_1627ECB:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_120, -1
  loc_1627ED6:   Set var_F0 = var_124
  loc_1627EEF:   var_10C = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12)
  loc_1627EF6:   var_8C = var_10C & "'"
  loc_1627F03:   var_10C = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_1627F13:   var_90 = var_10C & Me(12) & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) "
  loc_1627F34:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno"
  loc_1627F45:   var_10C = "SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='"
  loc_1627F55:   var_98 = var_10C & Me(12) & "' ORDER BY I.Kitchen"
  loc_1627F67:   If (var_8C = vbNullString) Then
  loc_1627F6A:     Exit Sub
  loc_1627F6B:   End If
  loc_1627F73:   If (var_90 = vbNullString) Then
  loc_1627F76:     Exit Sub
  loc_1627F77:   End If
  loc_1627F7F:   If (var_94 = vbNullString) Then
  loc_1627F82:     Exit Sub
  loc_1627F83:   End If
  loc_1627F99:   unk_43FED1.Execute var_8C, var_120, -1
  loc_1627FA4:   Set var_C0 = var_124
  loc_1627FC3:   unk_43FED1.Execute var_90, var_120, -1
  loc_1627FCE:   Set var_CC = var_124
  loc_1627FED:   unk_43FED1.Execute var_94, var_120, -1
  loc_1627FF8:   Set var_D0 = var_124
  loc_1628017:   unk_43FED1.Execute var_98, var_120, -1
  loc_1628022:   Set var_C4 = var_124
  loc_1628034:   var_D0.Filter = "Amount<>0"
  loc_1628049:   var_EA = CByte(var_D0.RecordCount) 'Byte
  loc_162804F:   Close 1
  loc_1628058:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_162805C:   ' Referenced from: 1629196
  loc_162806B:   If Not(var_C0.EOF) Then
  loc_162807E:     If (0 = 0) Then
  loc_1628086:       Print 1, vbNullString
  loc_1628092:       var_9E = (var_9E + 1)
  loc_162809A:       Print 1, vbNullString
  loc_16280A6:       var_9E = (var_9E + 1)
  loc_16280AE:       Print 1, vbNullString
  loc_16280BA:       var_9E = (var_9E + 1)
  loc_16280C2:       Print 1, vbNullString
  loc_16280CE:       var_9E = (var_9E + 1)
  loc_16280D6:       Print 1, vbNullString
  loc_16280E2:       var_9E = (var_9E + 1)
  loc_16280EA:       Print 1, vbNullString
  loc_16280F6:       var_9E = (var_9E + 1)
  loc_1628127:       var_DC = Replace(CStr(Space(&H37)), " ", "-", 1, -1, 0)
  loc_162815E:       var_E0 = Replace(CStr(Space(&HA)), " ", "-", 1, -1, 0)
  loc_16281A5:       var_15C = (Space(1) + Trim(CVar(var_F0.Fields.Item("Name"))))
  loc_16281AB:       Print 1, var_15C
  loc_16281C5:       var_9E = (var_9E + 1)
  loc_16281CD:       Print 1, vbNullString
  loc_16281D9:       var_9E = (var_9E + 1)
  loc_16281E1:       Print 1, vbNullString
  loc_16281ED:       var_9E = (var_9E + 1)
  loc_1628290:       var_1D8 = Space(2)
  loc_1628324:       var_290 = CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")))) 'String
  loc_1628377:       Proc_6_39_E7C810(var_340, CVar(var_C0.Fields.Item("VNo")))
  loc_1628397:       var_14C = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("WaiterName")), 0, 0, 0, 0, 0, 0), &HF, 0, 0)) 'String
  loc_162839A:       var_15C = (Space(1) + var_14C)
  loc_16283A1:       var_17C = (var_15C + Space(2))
  loc_16283AB:       var_1C8 = (var_17C + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), 0, 1), &HA)))
  loc_16283B2:       var_1E8 = (var_1C8 + var_1D8)
  loc_16283BC:       var_238 = (var_1E8 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME")), 0), 5)))
  loc_16283C3:       var_258 = (var_238 + Space(2))
  loc_16283CA:       var_2D8 = CVar(Proc_6_45_EAD428(CStr(Format(var_290, "dd/MM/yy")), &HB, 1)) 'String
  loc_16283CD:       var_2E8 = (var_258 + var_2D8)
  loc_16283D4:       var_308 = (var_2E8 + Space(2))
  loc_16283DE:       var_368 = (var_308 + CVar(Proc_6_45_EAD428(CStr(var_340), &HA)))
  loc_16283E4:       Print 1, var_368
  loc_1628457:       var_9E = (var_9E + 1)
  loc_162845F:       Print 1, vbNullString
  loc_162846B:       var_9E = (var_9E + 1)
  loc_1628473:       Print 1, vbNullString
  loc_162847F:       var_9E = (var_9E + 1)
  loc_1628487:       Print 1, vbNullString
  loc_1628493:       var_9E = (var_9E + 1)
  loc_162849B:       Print 1, vbNullString
  loc_16284A7:       var_9E = (var_9E + 1)
  loc_16284AA:     End If
  loc_16284AC:     var_BA = 1
  loc_16284B2:     var_CC.MoveFirst
  loc_16284B7:     ' Referenced from: 1628C78
  loc_16284C6:     If Not(var_CC.EOF) Then
  loc_1628516:       Proc_6_39_E7C810(var_14C, CVar(var_CC.Fields.Item("qty")), var_BA, 0, 0)
  loc_1628561:       Proc_6_39_E7C810(var_1D8, CVar(var_CC.Fields.Item("Rate")), 1, 1, 0)
  loc_16285AC:       Proc_6_39_E7C810(var_290, CVar(var_CC.Fields.Item("Rate")), 1, 1)
  loc_16285ED:       Proc_6_39_E7C810(var_2D8, CVar(var_CC.Fields.Item("Amt")), 0)
  loc_1628639:       var_2C4 = Proc_6_52_EAD4F4(CStr(Format(var_14C, "0.00")), 6, Proc_6_45_EAD428(CStr(var_CC.Fields.Item("ItemName").Value), &H12, 1))
  loc_1628650:       var_1B8 = (CVar(1 & var_2C4) + Space(7))
  loc_1628666:       var_228 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_1D8, "0.00")), 9, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), 0, 1), &HA)))) 'String
  loc_1628669:       var_238 = (1 + var_228)
  loc_162867D:       var_258 = (var_238 + Space(4))
  loc_1628693:       var_340 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_2D8, "0.00")), &HA)) 'String
  loc_16286BB:       var_368 = (var_258 + IIf((var_290 = 0), CVar(Proc_6_45_EAD428("Free", &HA, 0)), var_340))
  loc_1628723:       Print 1, CStr(var_368)
  loc_162872F:       var_9E = (var_9E + 1)
  loc_1628742:       If (0 = ((&H23 - CInt(var_EA)) - 2)) Then
  loc_162874A:         Print 1, var_DC
  loc_1628756:         var_9E = (var_9E + 1)
  loc_162875E:         Print 1, "Contd."
  loc_162876A:         var_9E = (var_9E + 1)
  loc_162877F:         Print 1, Chr(&HC)
  loc_162878E:         var_9E = (var_9E + 1)
  loc_1628797:         var_A0 = (var_A0 + 1)
  loc_16287A5:         If (0 = 0) Then
  loc_16287AD:           Print 1, vbNullString
  loc_16287B9:           var_9E = (var_9E + 1)
  loc_16287C1:           Print 1, vbNullString
  loc_16287CD:           var_9E = (var_9E + 1)
  loc_16287D5:           Print 1, vbNullString
  loc_16287E1:           var_9E = (var_9E + 1)
  loc_16287E9:           Print 1, vbNullString
  loc_16287F5:           var_9E = (var_9E + 1)
  loc_16287FD:           Print 1, vbNullString
  loc_1628809:           var_9E = (var_9E + 1)
  loc_1628811:           Print 1, vbNullString
  loc_162881D:           var_9E = (var_9E + 1)
  loc_162884E:           var_DC = Replace(CStr(Space(&H37)), " ", "-", 1, -1, 0)
  loc_1628885:           var_E0 = Replace(CStr(Space(&HA)), " ", "-", 1, -1, 0)
  loc_16288CC:           var_15C = (Space(1) + Trim(CVar(var_F0.Fields.Item("Name"))))
  loc_16288D2:           Print 1, "0.00"
  loc_16288EC:           var_9E = (var_9E + 1)
  loc_16288F4:           Print 1, vbNullString
  loc_1628900:           var_9E = (var_9E + 1)
  loc_1628908:           Print 1, vbNullString
  loc_1628914:           var_9E = (var_9E + 1)
  loc_1628943:           var_13C = CVar(var_C0.Fields.Item("WaiterName")) 'Address
  loc_1628A9E:           Proc_6_39_E7C810(var_340, CVar(var_C0.Fields.Item("VNo")))
  loc_1628AC1:           var_15C = (Space(1) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(var_13C, 0, 0, 0, 0, 0, 0), &HF, 0, 0)))
  loc_1628AC8:           var_17C = ("0.00" + Space(2))
  loc_1628ACF:           var_1B8 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo")), 0, 0), &HA)) 'String
  loc_1628AD2:           var_1C8 = (Space(7) + var_1B8)
  loc_1628AD9:           var_1E8 = (CVar(var_CC.Fields.Item("Rate")) + Space(2))
  loc_1628AE3:           var_238 = ("0.00" + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME")), 1), 5)))
  loc_1628AEA:           var_258 = (var_238 + Space(2))
  loc_1628AF1:           var_2D8 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")))), "dd/MM/yy")), &HB, 1)) 'String
  loc_1628AF4:           var_2E8 = (var_258 + var_2D8)
  loc_1628AFB:           var_308 = ("0.00" + Space(2))
  loc_1628B05:           var_368 = ((CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")))) = 0) + CVar(Proc_6_45_EAD428(CStr(var_340), &HA)))
  loc_1628B0B:           Print 1, var_368
  loc_1628B7E:           var_9E = (var_9E + 1)
  loc_1628B86:           Print 1, vbNullString
  loc_1628B92:           var_9E = (var_9E + 1)
  loc_1628B9A:           Print 1, vbNullString
  loc_1628BA6:           var_9E = (var_9E + 1)
  loc_1628BAE:           Print 1, vbNullString
  loc_1628BBA:           var_9E = (var_9E + 1)
  loc_1628BC2:           Print 1, vbNullString
  loc_1628BCE:           var_9E = (var_9E + 1)
  loc_1628BD1:         End If
  loc_1628BD4:       Else
  loc_1628BF1:         If (var_CC.RecordCount = var_CC.AbsolutePosition) Then
  loc_1628BF4:           ' Referenced from:   1628C1B
  loc_1628C04:           If (0 < ((&H23 - CInt(var_EA)) - 3)) Then
  loc_1628C0C:             Print 1, vbNullString
  loc_1628C18:             var_9E = (var_9E + 1)
  loc_1628C1B:             GoTo loc_1628BF4
  loc_1628C1E:           End If
  loc_1628C1E:         End If
  loc_1628C1E:       End If
  loc_1628C4B:       Proc_6_39_E7C810(var_13C, CVar(var_CC.Fields.Item("Amt")), CVar(var_D8), 0, 0, 0)
  loc_1628C53:       var_14C = (0 + var_13C)
  loc_1628C58:       var_D8 = CSng(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(var_13C, 0, 0, 0, 0, 0, 0), &HF, 0, 0)))
  loc_1628C6D:       var_BA = (var_BA + 1)
  loc_1628C73:       var_CC.MoveNext
  loc_1628C78:       GoTo loc_16284B7
  loc_1628C7B:     End If
  loc_1628C91:     var_13C = (Space(&H2D) + CVar(var_E0))
  loc_1628C97:     Print 1, var_13C
  loc_1628CAA:     var_9E = (var_9E + 1)
  loc_1628CB9:     var_D0.Filter = 0
  loc_1628CC1:     var_D0.MoveFirst
  loc_1628CC6:     ' Referenced from: 162913B
  loc_1628CD5:     If Not(var_D0.EOF) Then
  loc_1628D02:       var_3D0 = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_1628D20:       If (var_3D0 = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_1628D9F:         Proc_6_39_E7C810(var_1B8, CVar(var_D0.Fields.Item("Amount")), 0)
  loc_1628DE2:         var_15C = (Space(&H1A) + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HE, 0, var_BA, var_D8)))
  loc_1628DE9:         var_17C = ("0.00" + Space(4))
  loc_1628DF3:         var_210 = (Space(7) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1B8, "0.00")), &HA, 1, 1)))
  loc_1628DF9:         Print 1, CVar(var_C0.Fields.Item("VTIME"))
  loc_1628E34:         var_9E = (var_9E + 1)
  loc_1628E3A:       Else
  loc_1628E4D:         If (var_3D0 = CVar(MemVar_1F92078 & "NET")) Then
  loc_1628E66:           var_13C = (Space(&H2D) + CVar(var_E0))
  loc_1628E6C:           Print 1, var_D0.Fields.Item("DispName").Value
  loc_1628E7F:           var_9E = (var_9E + 1)
  loc_1628EA8:           Proc_6_39_E7C810(var_D0.Fields.Item("DispName").Value, CVar(var_D0.Fields.Item("Amount")), 0, 0)
  loc_1628EC2:           If (var_D0.Fields.Item("DispName").Value > 0) Then
  loc_1628EF4:             var_13C = var_D0.Fields.Item("DispName").Value
  loc_1628F41:             Proc_6_39_E7C810(var_1B8, CVar(var_D0.Fields.Item("Amount")))
  loc_1628F84:             var_15C = (Space(&H1A) + CVar(Proc_6_45_EAD428(CStr(var_13C), &HE, 0)))
  loc_1628F8B:             var_17C = ("0.00" + Space(4))
  loc_1628F95:             var_210 = (Space(7) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1B8, "0.00")), &HA, 1)))
  loc_1628F9B:             Print 1, CVar(var_C0.Fields.Item("VTIME"))
  loc_1628FD6:             var_9E = (var_9E + 1)
  loc_1628FD9:           End If
  loc_1628FDC:         Else
  loc_1629002:           Proc_6_39_E7C810(var_13C, CVar(var_D0.Fields.Item("Amount")), 0)
  loc_162901C:           If (var_13C > 0) Then
  loc_162909B:             Proc_6_39_E7C810(var_1B8, CVar(var_D0.Fields.Item("Amount")))
  loc_16290DB:             var_14C = CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HE, 1)) 'String
  loc_16290DE:             var_15C = (Space(&H1A) + var_14C)
  loc_16290E5:             var_17C = ("0.00" + Space(4))
  loc_16290EF:             var_210 = (Space(7) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1B8, "0.00")), &HA, 1)))
  loc_16290F5:             Print 1, CVar(var_C0.Fields.Item("VTIME"))
  loc_1629130:             var_9E = (var_9E + 1)
  loc_1629133:           End If
  loc_1629133:         End If
  loc_1629133:       End If
  loc_1629136:       var_D0.MoveNext
  loc_162913B:       GoTo loc_1628CC6
  loc_162913E:     End If
  loc_1629143:     Print 1, var_DC
  loc_162914F:     var_9E = (var_9E + 1)
  loc_1629157:     Print 1, vbNullString
  loc_1629163:     var_9E = (var_9E + 1)
  loc_1629169:     var_C0.MoveNext
  loc_1629173:     Print 1, vbNullString
  loc_162917F:     var_9E = (var_9E + 1)
  loc_1629187:     Print 1, vbNullString
  loc_1629193:     var_9E = (var_9E + 1)
  loc_1629196:     GoTo loc_162805C
  loc_1629199:   End If
  loc_16291AB:   Print 1, Chr(&HC)
  loc_16291B6:   Close 1
  loc_16291BF:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16291F4:   var_13C = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_6298CC.Fields.Item("Printer").Value 
  loc_16291FA:   Print 1, var_13C
  loc_1629210:   Close 1
  loc_162921A:   If (MemVar_1F923B8 = "Y") Then
  loc_1629236:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1629240:   Else
  loc_1629259:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1629260:   End If
  loc_1629265:   Set var_C0 = Nothing
  loc_162926D:   Set var_CC = Nothing
  loc_1629275:   Set var_D0 = Nothing
  loc_162927D:   Set var_F0 = Nothing
  loc_1629285:   Set var_C4 = Nothing
  loc_162928D:   Set var_C8 = Nothing
  loc_1629293: Else
  loc_16292AC:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_13C, var_14C, "0.00")
  loc_16292BC: End If
  loc_16292BC: Exit Sub
  loc_16292BD: ' Referenced from: 1627E64
  loc_16292BD: Proc_6_60_E62BC4(0, 0, 0, 0)
  loc_16292C2: Exit Sub
End Sub

Public Sub Proc_260_9_1A7FE38
  'Data Table: 43FECC
  Dim MemVar_6298CC As Recordset15
  Dim var_138 As String
  Dim var_13C As String
  Dim unk_43FED1 As Connection15
  Dim var_C0 As Recordset15
  Dim var_9E As Integer
  Dim var_A0 As Integer
  Dim var_FC As Recordset15
  Dim var_140 As Fields15
  Dim var_134 As Variant
  Dim var_14C As Fields15
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_1A0 As Variant
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_1E0 As Variant
  Dim var_200 As Variant
  Dim var_290 As Variant
  Dim var_2B0 As Variant
  Dim var_220 As Variant
  Dim var_280 As Variant
  Dim var_2A0 As Variant
  Dim var_BA As Integer
  Dim var_CC As Recordset15
  Dim var_2FC As Variant
  Dim var_31C As Variant
  Dim var_410 As Variant
  Dim var_D8 As Double
  Dim var_D0 As Recordset15
  Dim var_100 As Recordset15
  Dim var_EC As Recordset15
  Dim var_EE As Integer
  Dim var_F8 As Double
  loc_1A7C274: On Error Goto loc_1A7FE2F
  loc_1A7C28D: If (MemVar_6298CC.RecordCount > 0) Then
  loc_1A7C29B:   If CBool(var_114 <> "Yes") Then
  loc_1A7C2A1:     MemVar_1F923C0 = "N"
  loc_1A7C2A8:     MemVar_1F923C4 = "N"
  loc_1A7C2AF:     MemVar_1F923C8 = "K"
  loc_1A7C2D9:     unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_134, -1
  loc_1A7C2E4:     Set var_FC = var_140
  loc_1A7C2FD:     var_138 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12)
  loc_1A7C304:     var_8C = var_138 & "'"
  loc_1A7C311:     var_138 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_1A7C321:     var_90 = var_138 & Me(12) & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) "
  loc_1A7C342:     var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno "
  loc_1A7C353:     var_138 = "SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='"
  loc_1A7C363:     var_98 = var_138 & Me(12) & "' ORDER BY I.Kitchen"
  loc_1A7C375:     If (var_8C = vbNullString) Then
  loc_1A7C378:       Exit Sub
  loc_1A7C379:     End If
  loc_1A7C381:     If (var_90 = vbNullString) Then
  loc_1A7C384:       Exit Sub
  loc_1A7C385:     End If
  loc_1A7C38D:     If (var_94 = vbNullString) Then
  loc_1A7C390:       Exit Sub
  loc_1A7C391:     End If
  loc_1A7C3A7:     unk_43FED1.Execute var_8C, var_134, -1
  loc_1A7C3B2:     Set var_C0 = var_140
  loc_1A7C3D1:     unk_43FED1.Execute var_90, var_134, -1
  loc_1A7C3DC:     Set var_CC = var_140
  loc_1A7C3FB:     unk_43FED1.Execute var_94, var_134, -1
  loc_1A7C406:     Set var_D0 = var_140
  loc_1A7C425:     unk_43FED1.Execute var_98, var_134, -1
  loc_1A7C430:     Set var_C4 = var_140
  loc_1A7C43B:     Close 1
  loc_1A7C444:     Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1A7C448:     ' Referenced from: 1A7DE3B
  loc_1A7C457:     If Not(var_C0.EOF) Then
  loc_1A7C488:       var_DC = Replace(CStr(Space(&H27)), " ", "-", 1, -1, 0)
  loc_1A7C493:       var_9E = 0
  loc_1A7C498:       var_A0 = 1
  loc_1A7C4AA:       var_140 = var_FC.Fields
  loc_1A7C4F3:       var_13C = Proc_6_38_E68A98(CVar(var_FC.Fields.Item("RestType")), (Proc_6_38_E68A98(CVar(var_140.Item("RestType")), var_A0, var_9E, var_140) = "Restaurant"), var_140)
  loc_1A7C511:       If (var_140 Or (var_13C = "Hall")) Then
  loc_1A7C522:         var_9C = "** " & "BILL" & " **"
  loc_1A7C52B:       Else
  loc_1A7C53A:         var_140 = var_FC.Fields
  loc_1A7C553:         var_9C = Proc_6_38_E68A98(CVar(var_140.Item("Name")), var_140)
  loc_1A7C55C:       End If
  loc_1A7C562:       If (var_9E = 0) Then
  loc_1A7C593:         var_DC = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1A7C5CA:         var_E0 = Replace(CStr(Space(9)), " ", "-", 1, -1, 0)
  loc_1A7C635:         var_190 = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("LstNo"))), &H1E)))
  loc_1A7C63C:         var_1B0 = (var_190 + Chr(&H12))
  loc_1A7C642:         Print 1, var_1B0
  loc_1A7C669:         var_9E = (var_9E + 1)
  loc_1A7C67C:         var_9E = Proc_260_2_136D614(var_A0, var_9E, &H26)
  loc_1A7C6D7:         var_13C = Proc_6_38_E68A98(CVar(var_FC.Fields.Item("OutletTitle")), (Proc_6_38_E68A98(CVar(var_FC.Fields.Item("OutletTitle")), var_9E) = "Y"))
  loc_1A7C6F5:         If (var_9E Or (var_13C = vbNullString)) Then
  loc_1A7C727:           var_180 = (CVar(Proc_260_1_10A5350(var_9C, "D")) + Chr(&H12))
  loc_1A7C72D:           Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("LstNo"))), &H1E))
  loc_1A7C743:         End If
  loc_1A7C77F:         var_E4 = Proc_6_45_EAD428("PHONE NO." & Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, &H26), &H28), &H28)
  loc_1A7C7B8:         var_190 = (38 - Len(Trim(var_E4)))
  loc_1A7C7C1:         var_1A0 = (var_190 / 2)
  loc_1A7C7EB:         var_250 = (38 - Len(Trim(var_E4)))
  loc_1A7C815:         var_1E0 = (Chr(&HF) + Space(CLng(var_1A0)))
  loc_1A7C81F:         var_200 = (var_1E0 + CVar(var_E4))
  loc_1A7C826:         var_290 = (var_200 + Space(CLng((var_250 / 2))))
  loc_1A7C82D:         var_2B0 = (var_290 + Chr(&H12))
  loc_1A7C833:         Print 1, var_2B0
  loc_1A7C856:         var_9E = (var_9E + 1)
  loc_1A7C85E:         Print 1, vbNullString
  loc_1A7C8C2:         Proc_6_39_E7C810(var_1A0, CVar(var_C0.Fields.Item("VNo")))
  loc_1A7C8F8:         var_2C0 = Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") & var_1A0), &H10)
  loc_1A7C942:         var_290 = Chr(&H12)
  loc_1A7C94F:         var_170 = (Chr(&HF) + "Bill No.  : ")
  loc_1A7C959:         var_220 = (Trim(var_E4) + CVar(var_2C0))
  loc_1A7C962:         var_230 = (Trim(var_E4) + "Dt : ")
  loc_1A7C96C:         var_280 = (Len(Trim(var_E4)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate"))), &HB)))
  loc_1A7C973:         var_2A0 = (Space(CLng((CVar(var_C0.Fields.Item("VDate")) / 2))) + var_290)
  loc_1A7C979:         Print 1, Chr(&H12)
  loc_1A7C9C4:         var_9E = (var_9E + 1)
  loc_1A7CA00:         If (Proc_6_38_E68A98(CVar(var_FC.Fields.Item("RestType")), var_9E) = "Outlet") Then
  loc_1A7CAA3:           var_170 = (Chr(&HF) + "Table No. : ")
  loc_1A7CAAD:           var_1A0 = (Trim(var_E4) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), &HC)))
  loc_1A7CAB6:           var_1B0 = (var_1A0 + "Time : ")
  loc_1A7CAC0:           var_220 = (CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 9)))
  loc_1A7CAC7:           var_250 = (Trim(var_E4) + Chr(&H12))
  loc_1A7CACD:           Print 1, CVar(var_C0.Fields.Item("VDate"))
  loc_1A7CB08:           var_9E = (var_9E + 1)
  loc_1A7CB0B:         End If
  loc_1A7CB44:         If (Proc_6_38_E68A98(CVar(var_FC.Fields.Item("RestType")), var_9E) = "Room Service") Then
  loc_1A7CBE7:           var_170 = (Chr(&HF) + "Room No.  : ")
  loc_1A7CBF1:           var_1A0 = (Trim(var_E4) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), &HC)))
  loc_1A7CBFA:           var_1B0 = (var_1A0 + "Time : ")
  loc_1A7CC04:           var_220 = (CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 9)))
  loc_1A7CC0B:           var_250 = (Trim(var_E4) + Chr(&H12))
  loc_1A7CC11:           Print 1, CVar(var_C0.Fields.Item("VDate"))
  loc_1A7CC4C:           var_9E = (var_9E + 1)
  loc_1A7CC4F:         End If
  loc_1A7CC88:         If (Proc_6_38_E68A98(CVar(var_FC.Fields.Item("RestType")), var_9E) = "Hall") Then
  loc_1A7CD2B:           var_170 = (Chr(&HF) + "Hall  No. : ")
  loc_1A7CD35:           var_1A0 = (Trim(var_E4) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), &HC)))
  loc_1A7CD3E:           var_1B0 = (var_1A0 + "Time : ")
  loc_1A7CD48:           var_220 = (CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 9)))
  loc_1A7CD4F:           var_250 = (Trim(var_E4) + Chr(&H12))
  loc_1A7CD55:           Print 1, CVar(var_C0.Fields.Item("VDate"))
  loc_1A7CD90:           var_9E = (var_9E + 1)
  loc_1A7CD93:         End If
  loc_1A7CD9E:         If (var_2D8 = "Y") Then
  loc_1A7CE02:           var_170 = (Chr(&HF) + "Order No. : ")
  loc_1A7CE0C:           var_1A0 = (Trim(var_E4) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("KOTNo")), var_9E), &H1C)))
  loc_1A7CE13:           var_1E0 = (var_1A0 + Chr(&H12))
  loc_1A7CE19:           Print 1, CVar(var_C0.Fields.Item("VTIME"))
  loc_1A7CE42:           var_9E = (var_9E + 1)
  loc_1A7CE45:         End If
  loc_1A7CEA4:         If CBool((Trim(CVar(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("KotYN")), var_9E))) = "Y") And (var_2D8 <> "Y")) Then
  loc_1A7CF08:           var_170 = (Chr(&HF) + "KOT No.   : ")
  loc_1A7CF12:           var_1A0 = (CVar(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("KotYN")), var_9E)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("KOTNo"))), &H1C)))
  loc_1A7CF19:           var_1E0 = (var_1A0 + Chr(&H12))
  loc_1A7CF1F:           Print 1, CVar(var_C0.Fields.Item("VTIME"))
  loc_1A7CF48:           var_9E = (var_9E + 1)
  loc_1A7CF4B:         End If
  loc_1A7CF6E:         var_170 = (Chr(&HF) + CVar(var_DC))
  loc_1A7CF75:         var_190 = (CVar(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("KotYN")), var_9E)) + Chr(&H12))
  loc_1A7CF7B:         Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("KOTNo"))), &H1C))
  loc_1A7CF92:         var_9E = (var_9E + 1)
  loc_1A7CFBB:         var_180 = (CVar(Proc_6_45_EAD428("Particulars", &H10, var_9E)) + Space(1))
  loc_1A7CFD5:         var_1A0 = (var_9E + CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))))
  loc_1A7CFE1:         var_1B0 = Space(1)
  loc_1A7CFE9:         var_1E0 = (var_1A0 + var_1B0)
  loc_1A7D003:         var_220 = (CVar(var_C0.Fields.Item("VTIME")) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1A7D017:         var_250 = (Trim(var_E4) + Space(1))
  loc_1A7D031:         var_280 = (CVar(var_C0.Fields.Item("VDate")) + CVar(Proc_6_52_EAD4F4("Amount", 9)))
  loc_1A7D084:         var_170 = (Chr(&HF) + CVar(CStr(Space(CLng((CVar(var_C0.Fields.Item("VDate")) / 2))))))
  loc_1A7D08B:         var_190 = (CVar(Proc_6_45_EAD428("Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1A7D091:         Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1A7D0A8:         var_9E = (var_9E + 1)
  loc_1A7D0CE:         var_170 = (Chr(&HF) + CVar(var_DC))
  loc_1A7D0D5:         var_190 = (CVar(Proc_6_45_EAD428("Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1A7D0DB:         Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1A7D0F2:         var_9E = (var_9E + 1)
  loc_1A7D0F7:         var_BA = 1
  loc_1A7D0FD:         var_CC.MoveFirst
  loc_1A7D102:         ' Referenced from: 1A7D41C
  loc_1A7D111:         If Not(var_CC.EOF) Then
  loc_1A7D161:           Proc_6_39_E7C810(var_1B0, CVar(var_CC.Fields.Item("Rate")), var_BA)
  loc_1A7D181:           var_200 = Format(var_1B0, "0.00")
  loc_1A7D1AC:           Proc_6_39_E7C810(var_290, CVar(var_CC.Fields.Item("qty")), 1, 1)
  loc_1A7D1F7:           Proc_6_39_E7C810(var_344, CVar(var_CC.Fields.Item("Rate")), 1, 1)
  loc_1A7D238:           Proc_6_39_E7C810(var_38C, CVar(var_CC.Fields.Item("Amt")))
  loc_1A7D282:           var_190 = (CVar(Proc_6_45_EAD428(CStr(var_CC.Fields.Item("ItemName").Value), &H10, 1)) + Space(1))
  loc_1A7D29B:           var_230 = (1 + CVar(Proc_6_52_EAD4F4(CStr(var_200), 6, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))))))
  loc_1A7D2AF:           var_270 = (Space(1) + Space(1))
  loc_1A7D2C8:           var_2FC = (var_9E + CVar(Proc_6_52_EAD4F4(CStr(Format(var_290, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_1A7D2DC:           var_31C = (var_2FC + Space(1))
  loc_1A7D312:           var_400 = IIf((var_344 = 0), CVar(Proc_6_45_EAD428("Free", 9, var_9E)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_38C, "0.00")), 9)))
  loc_1A7D31A:           var_410 = (var_31C + var_400)
  loc_1A7D3A4:           var_170 = (Chr(&HF) + CVar(CStr(var_410)))
  loc_1A7D3AB:           var_190 = (Space(1) + Chr(&H12))
  loc_1A7D3B1:           Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1A7D3EF:           Proc_6_39_E7C810(Space(1), CVar(var_CC.Fields.Item("Amt")))
  loc_1A7D3F7:           var_180 = (CVar(var_D8) + Space(1))
  loc_1A7D3FC:           var_D8 = CSng(Chr(&H12))
  loc_1A7D411:           var_BA = (var_BA + 1)
  loc_1A7D417:           var_CC.MoveNext
  loc_1A7D41C:           GoTo loc_1A7D102
  loc_1A7D41F:         End If
  loc_1A7D44C:         var_180 = (Chr(&HF) + Space(&H1F))
  loc_1A7D456:         var_190 = (Chr(&H12) + CVar(var_E0))
  loc_1A7D45D:         var_1B0 = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_1A7D463:         Print 1, var_1B0
  loc_1A7D47E:         var_9E = (var_9E + 1)
  loc_1A7D484:         var_D0.MoveFirst
  loc_1A7D489:         ' Referenced from: 1A7D9B5
  loc_1A7D498:         If Not(var_D0.EOF) Then
  loc_1A7D4C5:           var_420 = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_1A7D4E3:           If (var_420 = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_1A7D533:             Proc_6_39_E7C810(var_200, CVar(var_D0.Fields.Item("Amount")), var_9E)
  loc_1A7D57D:             var_190 = (1 + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, Space(&H12), 1)))
  loc_1A7D591:             var_1B0 = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Space(1))
  loc_1A7D5AA:             var_270 = (var_BA + CVar(Proc_6_52_EAD4F4(CStr(Format(var_200, "0.00")), 9, var_1B0)))
  loc_1A7D600:             var_170 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_1A7D607:             var_190 = (var_D0.Fields.Item("DispName").Value + Chr(&H12))
  loc_1A7D60D:             Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1A7D624:             var_9E = (var_9E + 1)
  loc_1A7D62A:           Else
  loc_1A7D63D:             If (var_420 = CVar(MemVar_1F92078 & "NET")) Then
  loc_1A7D66D:               var_180 = (Chr(&HF) + Space(&H1F))
  loc_1A7D677:               var_190 = (Chr(&H12) + CVar(var_E0))
  loc_1A7D67E:               var_1B0 = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_1A7D684:               Print 1, var_1B0
  loc_1A7D69F:               var_9E = (var_9E + 1)
  loc_1A7D6C4:               var_170 = var_D0.Fields.Item("DispName").Value
  loc_1A7D6EF:               Proc_6_39_E7C810(var_200, CVar(var_D0.Fields.Item("Amount")), var_9E)
  loc_1A7D739:               var_190 = (1 + CVar(Proc_6_45_EAD428(CStr(var_170), &HC, Space(&H12), 1)))
  loc_1A7D74D:               var_1B0 = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Space(1))
  loc_1A7D766:               var_270 = (var_9E + CVar(Proc_6_52_EAD4F4(CStr(Format(var_200, "0.00")), 9, var_1B0)))
  loc_1A7D7BF:               Proc_6_39_E7C810(var_170, CVar(var_D0.Fields.Item("Amount")))
  loc_1A7D7D9:               If (var_170 > 0) Then
  loc_1A7D7FF:                 var_170 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_1A7D806:                 var_190 = (var_170 + Chr(&H12))
  loc_1A7D80C:                 Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1A7D823:                 var_9E = (var_9E + 1)
  loc_1A7D826:               End If
  loc_1A7D829:             Else
  loc_1A7D84B:               var_170 = var_D0.Fields.Item("DispName").Value
  loc_1A7D85F:               var_14C = var_D0.Fields
  loc_1A7D876:               Proc_6_39_E7C810(var_200, CVar(var_14C.Item("Amount")), var_9E)
  loc_1A7D8C0:               var_190 = (1 + CVar(Proc_6_45_EAD428(CStr(var_170), &HC, Space(&H12), 1)))
  loc_1A7D8D4:               var_1B0 = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Space(1))
  loc_1A7D8ED:               var_270 = (var_D8 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_200, "0.00")), 9, var_1B0)))
  loc_1A7D946:               Proc_6_39_E7C810(var_170, CVar(var_D0.Fields.Item("Amount")))
  loc_1A7D960:               If (var_170 > 0) Then
  loc_1A7D986:                 var_170 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_1A7D98D:                 var_190 = (var_170 + Chr(&H12))
  loc_1A7D993:                 Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1A7D9AA:                 var_9E = (var_9E + 1)
  loc_1A7D9AD:               End If
  loc_1A7D9AD:             End If
  loc_1A7D9AD:           End If
  loc_1A7D9B0:           var_D0.MoveNext
  loc_1A7D9B5:           GoTo loc_1A7D489
  loc_1A7D9B8:         End If
  loc_1A7D9DB:         var_170 = (Chr(&HF) + CVar(var_DC))
  loc_1A7D9E2:         var_190 = (var_170 + Chr(&H12))
  loc_1A7D9E8:         Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1A7D9FF:         var_9E = (var_9E + 1)
  loc_1A7DA3E:         If CBool(var_C0.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_1A7DAA2:           var_170 = (Chr(&HF) + "Steward Name  : ")
  loc_1A7DAAC:           var_1A0 = (var_170 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("WaiterName")), var_9E), &H14)))
  loc_1A7DAB3:           var_1E0 = (Space(1) + Chr(&H12))
  loc_1A7DAB9:           Print 1, CVar(var_14C.Item("Amount"))
  loc_1A7DAE2:           var_9E = (var_9E + 1)
  loc_1A7DAE5:         End If
  loc_1A7DAED:         var_134 = Chr(&HF)
  loc_1A7DB01:         var_140 = var_C0.Fields
  loc_1A7DB46:         var_170 = (var_134 + "User Name     : ")
  loc_1A7DB50:         var_1A0 = (var_170 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_140.Item("U_Name")), var_9E), &HA)))
  loc_1A7DB57:         var_1E0 = (Space(1) + Chr(&H12))
  loc_1A7DB5D:         Print 1, CVar(var_14C.Item("Amount"))
  loc_1A7DB86:         var_9E = (var_9E + 1)
  loc_1A7DB8E:         Print 1, vbNullString
  loc_1A7DB9A:         var_9E = (var_9E + 1)
  loc_1A7DBC3:         unk_43FED1.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & Me(8) & "'", var_134, -1
  loc_1A7DBCE:         Set var_100 = var_140
  loc_1A7DBF2:         If (var_100.RecordCount > 0) Then
  loc_1A7DC35:           If CBool(Trim(CVar(var_100.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_1A7DC40:             var_134 = Chr(&HF)
  loc_1A7DC54:             var_140 = var_100.Fields
  loc_1A7DC83:             var_190 = (var_134 + Trim(CVar(var_140.Item("Slogan1"))))
  loc_1A7DC8A:             var_1B0 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_140.Item("U_Name")), var_9E), &HA)) + Chr(&H12))
  loc_1A7DC90:             Print 1, Chr(&H12)
  loc_1A7DCAE:             var_9E = (var_9E + 1)
  loc_1A7DCB1:           End If
  loc_1A7DCB1:         End If
  loc_1A7DCB6:         Set var_100 = Nothing
  loc_1A7DCDF:         unk_43FED1.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & Me(8) & "'", var_134, -1
  loc_1A7DCEA:         Set var_100 = var_140
  loc_1A7DD0E:         If (var_100.RecordCount > 0) Then
  loc_1A7DD51:           If CBool(Trim(CVar(var_100.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_1A7DD9F:             var_190 = (Chr(&HF) + Trim(CVar(var_100.Fields.Item("Slogan2"))))
  loc_1A7DDA6:             var_1B0 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_100.Fields.Item("U_Name")), var_9E), &HA)) + Chr(&H12))
  loc_1A7DDAC:             Print 1, Chr(&H12)
  loc_1A7DDCA:             var_9E = (var_9E + 1)
  loc_1A7DDCD:           End If
  loc_1A7DDCD:         End If
  loc_1A7DDD2:         Set var_100 = Nothing
  loc_1A7DDF8:         var_170 = (Chr(&HF) + CVar(MemVar_1F9221C))
  loc_1A7DDFF:         var_190 = (CVar(var_100.Fields.Item("Slogan2")) + Chr(&H12))
  loc_1A7DE05:         Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_100.Fields.Item("U_Name")), var_9E), &HA))
  loc_1A7DE1C:         var_9E = (var_9E + 1)
  loc_1A7DE24:         Print 1, vbNullString
  loc_1A7DE30:         var_9E = (var_9E + 1)
  loc_1A7DE33:       End If
  loc_1A7DE36:       var_C0.MoveNext
  loc_1A7DE3B:       GoTo loc_1A7C448
  loc_1A7DE3E:     End If
  loc_1A7DE40:     Close 1
  loc_1A7DE49:     Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1A7DE61:     var_140 = MemVar_6298CC.Fields
  loc_1A7DE7E:     var_170 = "TYPE C:\reptmp\TEXTFILE.TXT>" & var_140.Item("Printer").Value 
  loc_1A7DE84:     Print 1, var_170
  loc_1A7DE9A:     Close 1
  loc_1A7DEA4:     If (MemVar_1F923B8 = "Y") Then
  loc_1A7DEC0:       var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1A7DECA:     Else
  loc_1A7DED4:       var_134 = "C:\reptmp\SBILL.BAT"
  loc_1A7DEE3:       var_B0 = CVar(Shell(var_134, 0)) 'Variant
  loc_1A7DEEA:     End If
  loc_1A7DEED:   Else
  loc_1A7DF13:     unk_43FED1.Execute "Select DocId,OutletDocId,OutletCode from POS_SBill Where DocId='" & Me(12) & "'", var_134, -1
  loc_1A7DF1E:     Set var_EC = var_140
  loc_1A7DF3D:     var_EE = CInt(var_EC.RecordCount)
  loc_1A7DF43:     var_F8 = CDbl(0)
  loc_1A7DF5A:     If (var_EC.RecordCount > 0) Then
  loc_1A7DF5F:       Close 1
  loc_1A7DF68:       Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1A7DF6F:       var_EC.MoveFirst
  loc_1A7DF74:       ' Referenced from:   1A7FD13
  loc_1A7DF83:       If Not(var_EC.EOF) Then
  loc_1A7DF89:         MemVar_1F923C0 = "N"
  loc_1A7DF90:         MemVar_1F923C4 = "N"
  loc_1A7DF97:         MemVar_1F923C8 = "K"
  loc_1A7DFBA:         var_140 = var_EC.Fields
  loc_1A7DFD3:         var_138 = Proc_6_38_E68A98(CVar(var_140.Item("OutletCode")), "Select * from Depart Where Code='", var_170, -1, var_14C, var_F8, var_EE)
  loc_1A7DFE7:         unk_43FED1.Execute var_140 & "Select DocId,OutletDocId,OutletCode from POS_SBill Where DocId='" & Me(12) & "'", var_9E, var_9E
  loc_1A7DFF2:         Set var_FC = var_14C
  loc_1A7E03B:         var_170 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & var_EC.Fields.Item("OutletDocid").Value 
  loc_1A7E049:         var_8C = CStr(var_170 & "'")
  loc_1A7E063:         var_170 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='") 'String
  loc_1A7E09E:         var_90 = CStr(var_170 & var_EC.Fields.Item("OutletDocid").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) ")
  loc_1A7E0E7:         var_180 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_EC.Fields.Item("OutletDocid").Value 
  loc_1A7E0F5:         var_94 = CStr(var_180 & "' order by sno ")
  loc_1A7E111:         var_170 = CVar("SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='") 'String
  loc_1A7E126:         var_140 = var_EC.Fields
  loc_1A7E136:         var_134 = var_140.Item("OutletDocid").Value
  loc_1A7E14C:         var_98 = CStr(var_170 & var_134 & "' ORDER BY I.Kitchen")
  loc_1A7E169:         If (var_8C = vbNullString) Then
  loc_1A7E16C:           Exit Sub
  loc_1A7E16D:         End If
  loc_1A7E175:         If (var_90 = vbNullString) Then
  loc_1A7E178:           Exit Sub
  loc_1A7E179:         End If
  loc_1A7E181:         If (var_94 = vbNullString) Then
  loc_1A7E184:           Exit Sub
  loc_1A7E185:         End If
  loc_1A7E19B:         unk_43FED1.Execute var_8C, var_134, -1
  loc_1A7E1A6:         Set var_C0 = var_140
  loc_1A7E1C5:         unk_43FED1.Execute var_90, var_134, -1
  loc_1A7E1D0:         Set var_CC = var_140
  loc_1A7E1EF:         unk_43FED1.Execute var_94, var_134, -1
  loc_1A7E1FA:         Set var_D0 = var_140
  loc_1A7E219:         unk_43FED1.Execute var_98, var_134, -1
  loc_1A7E224:         Set var_C4 = var_140
  loc_1A7E22D:         ' Referenced from:   1A7FD08
  loc_1A7E23C:         If Not(var_C0.EOF) Then
  loc_1A7E26D:           var_DC = Replace(CStr(Space(&H27)), " ", "-", 1, -1, 0)
  loc_1A7E278:           var_9E = 0
  loc_1A7E27D:           var_A0 = 1
  loc_1A7E28F:           var_140 = var_FC.Fields
  loc_1A7E2D8:           var_13C = Proc_6_38_E68A98(CVar(var_FC.Fields.Item("RestType")), (Proc_6_38_E68A98(CVar(var_140.Item("RestType")), var_A0, var_9E, var_140, var_140) = "Restaurant"), var_140, var_140)
  loc_1A7E2F6:           If (var_9E Or (var_13C = "Hall")) Then
  loc_1A7E307:             var_9C = "** " & "BILL" & " **"
  loc_1A7E310:           Else
  loc_1A7E31F:             var_140 = var_FC.Fields
  loc_1A7E338:             var_9C = Proc_6_38_E68A98(CVar(var_140.Item("Name")), var_140)
  loc_1A7E341:           End If
  loc_1A7E347:           If (var_9E = 0) Then
  loc_1A7E378:             var_DC = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1A7E3AF:             var_E0 = Replace(CStr(Space(9)), " ", "-", 1, -1, 0)
  loc_1A7E41A:             var_190 = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("LstNo"))), &H28)))
  loc_1A7E421:             var_1B0 = (CVar(var_FC.Fields.Item("LstNo")) & Chr(&HF) & "' ORDER BY I.Kitchen" + Chr(&H12))
  loc_1A7E427:             Print 1, Chr(&H12)
  loc_1A7E44E:             var_9E = (var_9E + 1)
  loc_1A7E470:             var_134 = CVar(var_EC.Fields.Item("OutletCode")) 'Address
  loc_1A7E48D:             var_9E = Proc_260_3_1370210(var_A0, var_9E, &H26)
  loc_1A7E4B8:             var_134 = CVar(var_FC.Fields.Item("OutletTitle")) 'Address
  loc_1A7E50F:             If (Proc_6_38_E68A98(var_134, var_9E) Or (Proc_6_38_E68A98(CVar(var_FC.Fields.Item("OutletTitle")), (Proc_6_38_E68A98(var_134, var_9E) = "Y")) = vbNullString)) Then
  loc_1A7E541:               var_180 = (CVar(Proc_260_1_10A5350(var_9C, "D")) + Chr(&H12))
  loc_1A7E547:               Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("LstNo"))), &H28))
  loc_1A7E55D:             End If
  loc_1A7E599:             var_E4 = Proc_6_45_EAD428("PHONE NO." & Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, &H26), &H28), &H28)
  loc_1A7E5D2:             var_190 = (38 - Len(Trim(var_E4)))
  loc_1A7E5DB:             var_1A0 = (Trim(var_E4) & Chr(&HF) & "' ORDER BY I.Kitchen" / 2)
  loc_1A7E605:             var_250 = (38 - Len(Trim(var_E4)))
  loc_1A7E62F:             var_1E0 = (Chr(&HF) + Space(CLng(var_1A0)))
  loc_1A7E639:             var_200 = (CVar(var_FC.Fields.Item("Amount")) + CVar(var_E4))
  loc_1A7E640:             var_290 = (var_200 + Space(CLng((CVar(Proc_6_52_EAD4F4(CStr(Format(var_200, "0.00")), 9, Space(CLng(var_1A0)))) / 2))))
  loc_1A7E647:             var_2B0 = (var_290 + Chr(&H12))
  loc_1A7E64D:             Print 1, Format(var_290, "0.00")
  loc_1A7E670:             var_9E = (var_9E + 1)
  loc_1A7E678:             Print 1, vbNullString
  loc_1A7E6DC:             Proc_6_39_E7C810(var_1A0, CVar(var_C0.Fields.Item("VNo")))
  loc_1A7E712:             var_2C0 = Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") & var_1A0), &H10)
  loc_1A7E75C:             var_290 = Chr(&H12)
  loc_1A7E769:             var_170 = (Chr(&HF) + "Bill No.  :   ")
  loc_1A7E773:             var_220 = (Trim(var_E4) + CVar(var_2C0))
  loc_1A7E77C:             var_230 = (Trim(var_E4) + "Dt :   ")
  loc_1A7E786:             var_280 = (Len(Trim(var_E4)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate"))), &HB)))
  loc_1A7E78D:             var_2A0 = (Space(CLng((CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(var_2C0), "0.00")), 9, Space(CLng(var_1A0)))) / 2))) + var_290)
  loc_1A7E793:             Print 1, Chr(&H12)
  loc_1A7E7DE:             var_9E = (var_9E + 1)
  loc_1A7E81A:             If (Proc_6_38_E68A98(CVar(var_FC.Fields.Item("RestType")), var_9E) = "Outlet") Then
  loc_1A7E8BD:               var_170 = (Chr(&HF) + "Table No. :   ")
  loc_1A7E8C7:               var_1A0 = (Trim(var_E4) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), &HC)))
  loc_1A7E8D0:               var_1B0 = (var_1A0 + "Time :   ")
  loc_1A7E8DA:               var_220 = (CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 9)))
  loc_1A7E8E1:               var_250 = (Trim(var_E4) + Chr(&H12))
  loc_1A7E8E7:               Print 1, CVar(var_C0.Fields.Item("VDate"))
  loc_1A7E922:               var_9E = (var_9E + 1)
  loc_1A7E925:             End If
  loc_1A7E95E:             If (Proc_6_38_E68A98(CVar(var_FC.Fields.Item("RestType")), var_9E) = "Room Service") Then
  loc_1A7EA01:               var_170 = (Chr(&HF) + "Room No.  :   ")
  loc_1A7EA0B:               var_1A0 = (Trim(var_E4) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), &HC)))
  loc_1A7EA14:               var_1B0 = (var_1A0 + "Time :   ")
  loc_1A7EA1E:               var_220 = (CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 9)))
  loc_1A7EA25:               var_250 = (Trim(var_E4) + Chr(&H12))
  loc_1A7EA2B:               Print 1, CVar(var_C0.Fields.Item("VDate"))
  loc_1A7EA66:               var_9E = (var_9E + 1)
  loc_1A7EA69:             End If
  loc_1A7EAA2:             If (Proc_6_38_E68A98(CVar(var_FC.Fields.Item("RestType")), var_9E) = "Hall") Then
  loc_1A7EB45:               var_170 = (Chr(&HF) + "Hall  No. :   ")
  loc_1A7EB4F:               var_1A0 = (Trim(var_E4) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), &HC)))
  loc_1A7EB58:               var_1B0 = (var_1A0 + "Time :   ")
  loc_1A7EB62:               var_220 = (CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 9)))
  loc_1A7EB69:               var_250 = (Trim(var_E4) + Chr(&H12))
  loc_1A7EB6F:               Print 1, CVar(var_C0.Fields.Item("VDate"))
  loc_1A7EBAA:               var_9E = (var_9E + 1)
  loc_1A7EBAD:             End If
  loc_1A7EBB8:             If (var_2D8 = "Y") Then
  loc_1A7EC1C:               var_170 = (Chr(&HF) + "Order No. :   ")
  loc_1A7EC26:               var_1A0 = (Trim(var_E4) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("KOTNo")), var_9E), &H1C)))
  loc_1A7EC2D:               var_1E0 = (var_1A0 + Chr(&H12))
  loc_1A7EC33:               Print 1, CVar(var_C0.Fields.Item("VTIME"))
  loc_1A7EC5C:               var_9E = (var_9E + 1)
  loc_1A7EC5F:             End If
  loc_1A7ECBE:             If CBool((Trim(CVar(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("KotYN")), var_9E))) = "Y") And (var_2D8 <> "Y")) Then
  loc_1A7ED22:               var_170 = (Chr(&HF) + "KOT No.   :   ")
  loc_1A7ED2C:               var_1A0 = (CVar(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("KotYN")), var_9E)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("KOTNo"))), &H1C)))
  loc_1A7ED33:               var_1E0 = (var_1A0 + Chr(&H12))
  loc_1A7ED39:               Print 1, CVar(var_C0.Fields.Item("VTIME"))
  loc_1A7ED62:               var_9E = (var_9E + 1)
  loc_1A7ED65:             End If
  loc_1A7ED88:             var_170 = (Chr(&HF) + CVar(var_DC))
  loc_1A7ED8F:             var_190 = (CVar(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("KotYN")), var_9E)) + Chr(&H12))
  loc_1A7ED95:             Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("KOTNo"))), &H1C))
  loc_1A7EDAC:             var_9E = (var_9E + 1)
  loc_1A7EDD5:             var_180 = (CVar(Proc_6_45_EAD428("Particulars", &H10, var_9E)) + Space(1))
  loc_1A7EDEF:             var_1A0 = (var_9E + CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))))
  loc_1A7EDFB:             var_1B0 = Space(1)
  loc_1A7EE03:             var_1E0 = (var_1A0 + var_1B0)
  loc_1A7EE1D:             var_220 = (CVar(var_C0.Fields.Item("VTIME")) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1A7EE31:             var_250 = (Trim(var_E4) + Space(1))
  loc_1A7EE4B:             var_280 = (CVar(var_C0.Fields.Item("VDate")) + CVar(Proc_6_52_EAD4F4("Amount", 9)))
  loc_1A7EE50:             var_B8 = CStr(Space(CLng((CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_52_EAD4F4("Qty", 6)), "0.00")), 9, Space(CLng(var_1A0)))) / 2))))
  loc_1A7EE9E:             var_170 = (Chr(&HF) + CVar(var_B8))
  loc_1A7EEA5:             var_190 = (CVar(Proc_6_45_EAD428("Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1A7EEAB:             Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1A7EEC2:             var_9E = (var_9E + 1)
  loc_1A7EEE8:             var_170 = (Chr(&HF) + CVar(var_DC))
  loc_1A7EEEF:             var_190 = (CVar(Proc_6_45_EAD428("Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1A7EEF5:             Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1A7EF0C:             var_9E = (var_9E + 1)
  loc_1A7EF11:             var_BA = 1
  loc_1A7EF17:             var_CC.MoveFirst
  loc_1A7EF1C:             ' Referenced from:   1A7F236
  loc_1A7EF2B:             If Not(var_CC.EOF) Then
  loc_1A7EF7B:               Proc_6_39_E7C810(var_1B0, CVar(var_CC.Fields.Item("Rate")), var_BA)
  loc_1A7EF9B:               var_200 = Format(var_1B0, "0.00")
  loc_1A7EFC6:               Proc_6_39_E7C810(var_290, CVar(var_CC.Fields.Item("qty")), 1, 1)
  loc_1A7F011:               Proc_6_39_E7C810(var_344, CVar(var_CC.Fields.Item("Rate")), 1, 1)
  loc_1A7F052:               Proc_6_39_E7C810(var_38C, CVar(var_CC.Fields.Item("Amt")))
  loc_1A7F09C:               var_190 = (CVar(Proc_6_45_EAD428(CStr(var_CC.Fields.Item("ItemName").Value), &H10, 1)) + Space(1))
  loc_1A7F0B5:               var_230 = (1 + CVar(Proc_6_52_EAD4F4(CStr(var_200), 6, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))))))
  loc_1A7F0C9:               var_270 = (Space(1) + Space(1))
  loc_1A7F0E2:               var_2FC = (var_9E + CVar(Proc_6_52_EAD4F4(CStr(Format(var_290, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_1A7F0F6:               var_31C = (var_2FC + Space(1))
  loc_1A7F12C:               var_400 = IIf((var_344 = 0), CVar(Proc_6_45_EAD428("Free", 9, var_9E)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_38C, "0.00")), 9)))
  loc_1A7F134:               var_410 = (var_31C + var_400)
  loc_1A7F1BE:               var_170 = (Chr(&HF) + CVar(CStr(var_410)))
  loc_1A7F1C5:               var_190 = (Space(1) + Chr(&H12))
  loc_1A7F1CB:               Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1A7F209:               Proc_6_39_E7C810(Space(1), CVar(var_CC.Fields.Item("Amt")))
  loc_1A7F211:               var_180 = (CVar(var_D8) + Space(1))
  loc_1A7F216:               var_D8 = CSng(Chr(&H12))
  loc_1A7F22B:               var_BA = (var_BA + 1)
  loc_1A7F231:               var_CC.MoveNext
  loc_1A7F236:               GoTo loc_1A7EF1C
  loc_1A7F239:             End If
  loc_1A7F266:             var_180 = (Chr(&HF) + Space(&H1F))
  loc_1A7F270:             var_190 = (Chr(&H12) + CVar(var_E0))
  loc_1A7F277:             var_1B0 = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_1A7F27D:             Print 1, var_1B0
  loc_1A7F298:             var_9E = (var_9E + 1)
  loc_1A7F29E:             var_D0.MoveFirst
  loc_1A7F2A3:             ' Referenced from:   1A7F818
  loc_1A7F2B2:             If Not(var_D0.EOF) Then
  loc_1A7F2DF:               var_430 = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_1A7F2FD:               If (var_430 = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_1A7F34D:                 Proc_6_39_E7C810(var_200, CVar(var_D0.Fields.Item("Amount")), var_9E)
  loc_1A7F397:                 var_190 = (1 + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HC, Space(&H12), 1)))
  loc_1A7F3AB:                 var_1B0 = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Space(1))
  loc_1A7F3C4:                 var_270 = (var_BA + CVar(Proc_6_52_EAD4F4(CStr(Format(var_200, "0.00")), 9, var_1B0)))
  loc_1A7F41A:                 var_170 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_1A7F421:                 var_190 = (var_D0.Fields.Item("DispName").Value + Chr(&H12))
  loc_1A7F427:                 Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1A7F43E:                 var_9E = (var_9E + 1)
  loc_1A7F444:               Else
  loc_1A7F457:                 If (var_430 = CVar(MemVar_1F92078 & "NET")) Then
  loc_1A7F487:                   var_180 = (Chr(&HF) + Space(&H1F))
  loc_1A7F491:                   var_190 = (Chr(&H12) + CVar(var_E0))
  loc_1A7F498:                   var_1B0 = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_1A7F49E:                   Print 1, var_1B0
  loc_1A7F4B9:                   var_9E = (var_9E + 1)
  loc_1A7F4DE:                   var_170 = var_D0.Fields.Item("DispName").Value
  loc_1A7F509:                   Proc_6_39_E7C810(var_200, CVar(var_D0.Fields.Item("Amount")), var_9E)
  loc_1A7F553:                   var_190 = (1 + CVar(Proc_6_45_EAD428(CStr(var_170), &HC, Space(&H12), 1)))
  loc_1A7F567:                   var_1B0 = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Space(1))
  loc_1A7F580:                   var_270 = (var_9E + CVar(Proc_6_52_EAD4F4(CStr(Format(var_200, "0.00")), 9, var_1B0)))
  loc_1A7F5D9:                   Proc_6_39_E7C810(var_170, CVar(var_D0.Fields.Item("Amount")))
  loc_1A7F5F3:                   If (var_170 > 0) Then
  loc_1A7F619:                     var_170 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_1A7F620:                     var_190 = (var_170 + Chr(&H12))
  loc_1A7F626:                     Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1A7F63D:                     var_9E = (var_9E + 1)
  loc_1A7F640:                   End If
  loc_1A7F66D:                   Proc_6_39_E7C810(var_170, CVar(var_D0.Fields.Item("Amount")), CVar(var_F8))
  loc_1A7F675:                   var_180 = (var_9E + var_170)
  loc_1A7F67A:                   var_F8 = CSng(Chr(&H12))
  loc_1A7F68C:                 Else
  loc_1A7F6AE:                   var_170 = var_D0.Fields.Item("DispName").Value
  loc_1A7F6D9:                   Proc_6_39_E7C810(var_200, CVar(var_D0.Fields.Item("Amount")), var_F8)
  loc_1A7F723:                   var_190 = (1 + CVar(Proc_6_45_EAD428(CStr(var_170), &HC, Space(&H12), 1)))
  loc_1A7F737:                   var_1B0 = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Space(1))
  loc_1A7F750:                   var_270 = (var_D8 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_200, "0.00")), 9, var_1B0)))
  loc_1A7F7A9:                   Proc_6_39_E7C810(var_170, CVar(var_D0.Fields.Item("Amount")))
  loc_1A7F7C3:                   If (var_170 > 0) Then
  loc_1A7F7E9:                     var_170 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_1A7F7F0:                     var_190 = (var_170 + Chr(&H12))
  loc_1A7F7F6:                     Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1A7F80D:                     var_9E = (var_9E + 1)
  loc_1A7F810:                   End If
  loc_1A7F810:                 End If
  loc_1A7F810:               End If
  loc_1A7F813:               var_D0.MoveNext
  loc_1A7F818:               GoTo loc_1A7F2A3
  loc_1A7F81B:             End If
  loc_1A7F83E:             var_170 = (Chr(&HF) + CVar(var_DC))
  loc_1A7F845:             var_190 = (var_170 + Chr(&H12))
  loc_1A7F84B:             Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1A7F862:             var_9E = (var_9E + 1)
  loc_1A7F8A1:             If CBool(var_C0.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_1A7F905:               var_170 = (Chr(&HF) + "Steward Name  :   ")
  loc_1A7F90F:               var_1A0 = (var_170 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("WaiterName")), var_9E), &H14)))
  loc_1A7F916:               var_1E0 = (Space(1) + Chr(&H12))
  loc_1A7F91C:               Print 1, CVar(var_D0.Fields.Item("Amount"))
  loc_1A7F945:               var_9E = (var_9E + 1)
  loc_1A7F948:             End If
  loc_1A7F9A9:             var_170 = (Chr(&HF) + "User Name     :   ")
  loc_1A7F9B3:             var_1A0 = (var_170 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("U_Name")), var_9E), &HA)))
  loc_1A7F9BA:             var_1E0 = (Space(1) + Chr(&H12))
  loc_1A7F9C0:             Print 1, CVar(var_D0.Fields.Item("Amount"))
  loc_1A7F9E9:             var_9E = (var_9E + 1)
  loc_1A7F9F1:             Print 1, vbNullString
  loc_1A7F9FD:             var_9E = (var_9E + 1)
  loc_1A7FA40:             If CBool(Trim(CVar(var_FC.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_1A7FA8E:               var_190 = (Chr(&HF) + Trim(CVar(var_FC.Fields.Item("Slogan1"))))
  loc_1A7FA95:               var_1B0 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("U_Name")), var_9E), &HA)) + Chr(&H12))
  loc_1A7FA9B:               Print 1, Chr(&H12)
  loc_1A7FAB9:               var_9E = (var_9E + 1)
  loc_1A7FABC:             End If
  loc_1A7FAFC:             If CBool(Trim(CVar(var_FC.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_1A7FB4A:               var_190 = (Chr(&HF) + Trim(CVar(var_FC.Fields.Item("Slogan2"))))
  loc_1A7FB51:               var_1B0 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("U_Name")), var_9E), &HA)) + Chr(&H12))
  loc_1A7FB57:               Print 1, Chr(&H12)
  loc_1A7FB75:               var_9E = (var_9E + 1)
  loc_1A7FB78:             End If
  loc_1A7FB9B:             var_170 = (Chr(&HF) + CVar(MemVar_1F9221C))
  loc_1A7FBA2:             var_190 = (CVar(var_FC.Fields.Item("Slogan2")) + Chr(&H12))
  loc_1A7FBA8:             Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("U_Name")), var_9E), &HA))
  loc_1A7FBBF:             var_9E = (var_9E + 1)
  loc_1A7FBC7:             Print 1, vbNullString
  loc_1A7FBD3:             var_9E = (var_9E + 1)
  loc_1A7FBDC:             var_EE = (var_EE - 1)
  loc_1A7FBE5:             If (var_EE = 0) Then
  loc_1A7FC0B:               var_170 = (Chr(&HF) + CVar(var_DC))
  loc_1A7FC12:               var_190 = (CVar(var_FC.Fields.Item("Slogan2")) + Chr(&H12))
  loc_1A7FC18:               Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("U_Name")), var_9E), &HA))
  loc_1A7FC2F:               var_9E = (var_9E + 1)
  loc_1A7FC7D:               var_180 = (CVar(Proc_6_52_EAD4F4("Net Amount Payable:", &H1E, 1, 1, var_9E, var_EE, var_9E)) + Space(1))
  loc_1A7FC96:               var_1E0 = (var_9E + CVar(Proc_6_52_EAD4F4(CStr(Format(var_F8, "0.00")), 9, Chr(&H12), var_9E, var_9E)))
  loc_1A7FCCB:               var_180 = Chr(&H12)
  loc_1A7FCD9:               var_170 = (Chr(&HF) + CVar(CStr(CVar(var_D0.Fields.Item("Amount")))))
  loc_1A7FCE0:               var_190 = (CVar(Proc_6_52_EAD4F4("Net Amount Payable:", &H1E, 1, 1, var_9E, var_EE, var_9E)) + var_180)
  loc_1A7FCE6:               Print 1, "0.00"
  loc_1A7FCFD:               var_9E = (var_9E + 1)
  loc_1A7FD00:             End If
  loc_1A7FD00:           End If
  loc_1A7FD03:           var_C0.MoveNext
  loc_1A7FD08:           GoTo loc_1A7E22D
  loc_1A7FD0B:         End If
  loc_1A7FD0E:         var_EC.MoveNext
  loc_1A7FD13:         GoTo loc_1A7DF74
  loc_1A7FD16:       End If
  loc_1A7FD18:       Close 1
  loc_1A7FD21:       Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1A7FD56:       var_170 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_6298CC.Fields.Item("Printer").Value 
  loc_1A7FD5C:       Print 1, var_170
  loc_1A7FD72:       Close 1
  loc_1A7FD7C:       If (MemVar_1F923B8 = "Y") Then
  loc_1A7FD98:         var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1A7FDA2:       Else
  loc_1A7FDBB:         var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1A7FDC2:       End If
  loc_1A7FDC2:     End If
  loc_1A7FDC2:   End If
  loc_1A7FDC7:   Set var_C0 = Nothing
  loc_1A7FDCF:   Set var_CC = Nothing
  loc_1A7FDD7:   Set var_D0 = Nothing
  loc_1A7FDDF:   Set var_FC = Nothing
  loc_1A7FDE7:   Set var_C4 = Nothing
  loc_1A7FDEF:   Set var_C8 = Nothing
  loc_1A7FDF7:   Set var_100 = Nothing
  loc_1A7FDFF:   Set var_EC = Nothing
  loc_1A7FE05: Else
  loc_1A7FE1E:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_170, var_180, "0.00")
  loc_1A7FE2E: End If
  loc_1A7FE2E: Exit Sub
  loc_1A7FE2F: ' Referenced from: 1A7C274
  loc_1A7FE2F: Proc_6_60_E62BC4(var_9E, var_9E, var_9E)
  loc_1A7FE34: Exit Sub
End Sub

Public Sub Proc_260_10_1E2DD28
  'Data Table: 43FECC
  Dim MemVar_6298CC As Recordset15
  Dim var_164 As Variant
  Dim var_178 As String
  Dim var_17C As String
  Dim unk_43FED1 As Connection15
  Dim var_190 As String
  Dim var_138 As Recordset15
  Dim var_180 As Variant
  Dim var_174 As Variant
  Dim var_1A4 As Variant
  Dim var_C4 As Recordset15
  Dim var_140 As Integer
  Dim var_1C8 As Variant
  Dim var_194 As Variant
  Dim var_CC As Recordset15
  Dim var_BA As Integer
  Dim var_1B4 As Variant
  Dim var_1DC As Variant
  Dim var_D0 As Recordset15
  Dim var_9E As Integer
  Dim var_104 As Recordset15
  Dim var_21C As Variant
  Dim var_22C As Variant
  Dim var_23C As Variant
  Dim var_1CC As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_284 As Fields15
  Dim var_2A8 As Variant
  Dim var_2CC As Variant
  Dim var_20C As Variant
  Dim var_30C As Variant
  Dim var_31C As Variant
  Dim var_32C As Variant
  Dim var_260 As Variant
  Dim var_1FC As Variant
  Dim var_2FC As Variant
  Dim var_2EC As Variant
  Dim var_A0 As Integer
  Dim var_344 As String
  Dim var_33C As Variant
  Dim var_380 As Variant
  Dim var_3C8 As Variant
  Dim var_3D8 As Variant
  Dim var_430 As Variant
  Dim var_45C As Variant
  Dim var_480 As Variant
  Dim var_434 As String
  Dim var_3A0 As Variant
  Dim var_544 As Variant
  Dim var_564 As Variant
  Dim var_D4 As Recordset15
  Dim var_390 As Variant
  Dim var_E0 As Double
  Dim var_D8 As Recordset15
  Dim var_240 As Variant
  Dim var_C8 As Recordset15
  Dim var_10C As Recordset15
  Dim var_118 As Double
  Dim var_130 As Double
  Dim var_110 As Recordset15
  Dim var_120 As Double
  Dim var_128 As Double
  Dim var_108 As Recordset15
  Dim var_13E As Integer
  Dim var_F4 As Recordset15
  Dim var_F6 As Integer
  Dim var_100 As Double
  loc_1E24698: On Error Goto loc_1E1DD1F
  loc_1E246B1: Loop Until (MemVar_6298CC.RecordCount > 0) 'do at: 1E1DCF5
  loc_1E246BF: If CBool(var_154 <> "Yes") Then
  loc_1E246C5:   MemVar_1F923C0 = "N"
  loc_1E246CC:   MemVar_1F923C4 = "N"
  loc_1E246D3:   MemVar_1F923C8 = "K"
  loc_1E246FD:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_174, -1
  loc_1E24708:   Set var_104 = var_180
  loc_1E2472E:   var_178 = "Select Min(Sale2.SNo1) as SNo1,max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (sale2 left join revmast on revmast.code=sale2.Taxcode) where  Sale2.DocID='" & Me(12)
  loc_1E2473E:   unk_43FED1.Execute var_178 & "' group by revmast.code,TaxPer Order by Min(Sale2.SNo1),TaxPer", var_174, -1
  loc_1E24749:   Set var_10C = var_180
  loc_1E2476D:   var_178 = "SELECT Distinct P.CustName FROM PackingOrder P INNER JOIN PackingOrderDetail PD ON P.Docid = PD.DocID WHERE (P.LogSite_Code = '" & MemVar_1F92078
  loc_1E2479D:   unk_43FED1.Execute var_178 & "') AND (P.RestCode = '" & Me(8) & "') and PD.ContraDocID='" & Me(12) & "'", var_174, -1
  loc_1E247A8:   Set var_138 = var_180
  loc_1E247D4:   If (var_138.RecordCount > 0) Then
  loc_1E247E6:     var_180 = var_138.Fields
  loc_1E247F6:     var_174 = CVar(var_180.Item("CustName")) 'Address
  loc_1E2480E:     var_13C = CStr(Trim(CVar(Proc_6_38_E68A98(var_174, var_180))))
  loc_1E2481D:   End If
  loc_1E24843:   unk_43FED1.Execute "Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge Where DocID='" & Me(12) & "' And PayType='Cash'", var_174, -1
  loc_1E2484E:   Set var_110 = var_180
  loc_1E24867:   var_178 = "Select Sale1.* ,S.CardNo,Case When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then IsNull(S.Name,'') Else '' End MemName,W.Name as WaiterName,Case When IsNull(Sale1.RoomType,'')='RO' Then RTrim(LTrim(IsNull(GP.ConPrefix,'')))+' '+RTrim(LTrim(IsNull(GP.Name,''))) When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then RTrim(LTrim(IsNull(S.Name,'')))+' - '+RTrim(LTrim(IsNull(S.CardNo,''))) Else IsNull(Sale1.Remark,'') End Remark1,S.NAME AS CompanyName,S.Add1 CompAdd1,S.Add2 CompAdd2,S.Add3 CompAdd3,CC.CityName CompCity,CS.ShortName CompStateCode,CS.Name CompState,S.GSTIN CompGSTIN From ((((((Sale1 left join waiter W on sale1.waiter=w.code) left join SubGroup S On Sale1.Party=S.SubCode) Left Join City CC On CC.CityCode=S.CityCode) Left Join State CS On CS.Code=CC.State) left join GuestFolio GF On Sale1.FolionoDocId=GF.DocId) left join GuestProf GP On GF.GuestProf=GP.Code) Where Sale1.DocID='" & Me(12)
  loc_1E2486E:   var_8C = "Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge Where DocID='" & Me(12) & "'"
  loc_1E2487B:   var_178 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,MAX(I.COMMODITYCODE) AS HSNCODE From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='"
  loc_1E2488B:   var_90 = var_178 & Me(12) & "' GROUP BY S.ITEM,S.RATE,S.Remarks ORDER BY MAX(I.NAME) "
  loc_1E248AC:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.Svalue,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno "
  loc_1E248BD:   var_178 = "SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department,D.Printer FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item And S.ItemRestCode=I.RestCode) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='"
  loc_1E248CD:   var_98 = var_178 & Me(12) & "' ORDER BY I.Kitchen"
  loc_1E248DF:   If (var_8C = vbNullString) Then
  loc_1E248E2:     Exit Sub
  loc_1E248E3:   End If
  loc_1E248EB:   If (var_90 = vbNullString) Then
  loc_1E248EE:     Exit Sub
  loc_1E248EF:   End If
  loc_1E248F7:   If (var_94 = vbNullString) Then
  loc_1E248FA:     Exit Sub
  loc_1E248FB:     ' Referenced from: 1E29F3C
  loc_1E248FB:   End If
  loc_1E24911:   unk_43FED1.Execute var_8C, var_174, -1
  loc_1E2491C:   Set var_C4 = var_180
  loc_1E2493B:   unk_43FED1.Execute var_90, var_174, -1
  loc_1E24946:   Set var_D4 = var_180
  loc_1E24965:   unk_43FED1.Execute var_94, var_174, -1
  loc_1E24970:   Set var_D8 = var_180
  loc_1E2498F:   unk_43FED1.Execute var_98, var_174, -1
  loc_1E2499A:   Set var_CC = var_180
  loc_1E249B9:   var_178 = "Select IM.CATTYPE,S.DISCPER,SUM(S.DISCAMT) AS DISCAMT From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode LEFT JOIN ITEMCATMAST IM ON IM.CODE=I.ITEMCATCODE Where S.DocID='" & Me(12)
  loc_1E249C9:   unk_43FED1.Execute var_178 & "' GROUP BY IM.CATTYPE,S.DISCPER HAVING SUM(S.DISCAMT)>0 ORDER BY IM.CATTYPE,S.DISCPER DESC", var_174, -1
  loc_1E249D4:   Set var_C8 = var_180
  loc_1E249E6:   Close 1
  loc_1E249EF:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1E249F3:   ' Referenced from: 1E29DF2
  loc_1E24A02:   If Not(var_C4.EOF) Then
  loc_1E24A33:     var_E4 = Replace(CStr(Space(&H27)), " ", "-", 1, -1, 0)
  loc_1E24A4B:     var_180 = var_C4.Fields
  loc_1E24A75:     If (Proc_6_38_E68A98(CVar(var_180.Item("Printed")), var_180, var_180, var_180, var_180) = "Y") Then
  loc_1E24A7A:       var_140 = &HFF
  loc_1E24A7D:     End If
  loc_1E24A8C:     var_180 = var_C4.Fields
  loc_1E24A94:     var_194 = var_180.Item("Printed")
  loc_1E24A9C:     var_174 = CVar(var_194) 'Address
  loc_1E24AB6:     If (Proc_6_38_E68A98(var_174, var_140, var_180) <> "Y") Then
  loc_1E24ABC:       var_1C8 = 0
  loc_1E24AEB:       unk_43FED1.Execute "SELECT TOKENPrint FROM Depart where Code='" & Me(8) & "'", var_174, -1
  loc_1E24AFB:       var_1C8 = var_194.Item(var_194)
  loc_1E24B2B:       If (Proc_6_38_E68A98(CVar(var_1CC), var_1CC, var_180.Fields.Fields) = "Yes") Then
  loc_1E24B42:         If (var_CC.RecordCount > 0) Then
  loc_1E24B45:           ' Referenced from: 1E2575E
  loc_1E24B54:           If Not(var_CC.EOF) Then
  loc_1E24B59:             var_BA = 1
  loc_1E24B70:             var_178 = "Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,Max(S.Unit) AS Unit,SUM(S.Amount) AS AMT,MAX(I.DispCode) AS DispCode,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='"
  loc_1E24BB6:             var_1DC = CVar(var_178 & Me(12) & "' AND I.Kitchen='") & var_CC.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)" 
  loc_1E24BC4:             unk_43FED1.Execute CStr(var_1DC), var_1FC, -1
  loc_1E24BCF:             Set var_D0 = var_1CC
  loc_1E24C05:             If (var_D0.RecordCount > 0) Then
  loc_1E24C1C:               If (var_CC.AbsolutePosition = 1) Then
  loc_1E24C41:                 var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E24C48:                 var_1DC = (CVar(var_178 & Me(12) & "' AND I.Kitchen='") + Chr(&H12))
  loc_1E24C4E:                 Print 1, var_1DC
  loc_1E24C65:                 var_9E = (var_9E + 1)
  loc_1E24C68:               End If
  loc_1E24CB2:               If CBool(Trim(CVar(Proc_6_38_E68A98(CVar(var_104.Fields.Item("SaleBillTokenHeader1")), var_9E, var_1CC))) <> vbNullString) Then
  loc_1E24D02:                 Print 1, Proc_260_1_10A5350(CStr(var_104.Fields.Item("SaleBillTokenHeader1").Value), "D", &H26)
  loc_1E24D23:                 var_9E = (var_9E + 1)
  loc_1E24D2B:                 Print 1, vbNullString
  loc_1E24D37:                 var_9E = (var_9E + 1)
  loc_1E24D3A:               End If
  loc_1E24D87:               Print 1, Proc_260_1_10A5350(CStr(var_CC.Fields.Item("Department").Value), "D", &H26, var_9E)
  loc_1E24DE7:               var_180 = var_C4.Fields
  loc_1E24E29:               Proc_6_39_E7C810(var_260, CVar(var_C4.Fields.Item("VNo")))
  loc_1E24E5F:               var_344 = Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(CVar(var_180.Item("vType")), var_9E, var_BA) & "/" & MemVar_1F92168 & "/") & var_260), &H14)
  loc_1E24EC6:               var_2FC = IIf((Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Printed")), var_180) = "Y"), CVar(Proc_6_52_EAD4F4("*DUPLICATE*", &HC)), vbNullString)
  loc_1E24EE3:               var_1A4 = (Chr(&HF) + "Bill No.: ")
  loc_1E24EEA:               var_20C = (CVar(Proc_6_38_E68A98(CVar(var_104.Fields.Item("SaleBillTokenHeader1")), var_9E, var_C4.Fields)) + IIf((MemVar_1F92164 <> vbNullString), CVar(MemVar_1F92164 & "/"), vbNullString))
  loc_1E24EF7:               var_31C = (CVar(var_344) + var_2FC)
  loc_1E24F01:               Print 1, var_20C & var_31C, Chr(&H12)
  loc_1E24F5A:               var_9E = (var_9E + 1)
  loc_1E2500A:               var_1A4 = (Chr(&HF) + "Date    : ")
  loc_1E25014:               var_1FC = (CVar(Proc_6_38_E68A98(CVar(var_104.Fields.Item("SaleBillTokenHeader1")), var_9E, var_C4.Fields)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VDate")), var_9E), &HF)))
  loc_1E2501B:               var_22C = (IIf((MemVar_1F92164 <> vbNullString), CVar(MemVar_1F92164 & "/"), vbNullString) + Space(2))
  loc_1E25024:               var_250 = (CVar(var_C4.Fields.Item("vType")) + "Time : ")
  loc_1E2502E:               var_280 = (CVar(var_C4.Fields.Item("VNo")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VTIME"))), 5)))
  loc_1E25035:               var_2CC = (CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("vType")), var_9E, var_BA) & "/" & MemVar_1F92168 & "/") & CVar(var_C4.Fields.Item("VTIME")) + Chr(&H12))
  loc_1E2503B:               Print 1, CVar(Proc_6_52_EAD4F4("*DUPLICATE*", &HC))
  loc_1E2507A:               var_9E = (var_9E + 1)
  loc_1E250BC:               If (Proc_6_38_E68A98(CVar(var_104.Fields.Item("PrintTokenNo")), var_9E) = "Yes") Then
  loc_1E25109:                 var_C0 = vbNullString & "Token No: " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("TokenNo"))), &HA)
  loc_1E2511D:               End If
  loc_1E2512C:               var_180 = var_C4.Fields
  loc_1E25185:               var_20C = CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CardNo")), (Trim(CVar(Proc_6_38_E68A98(CVar(var_180.Item("CardNo"))))) = "0"))) 'String
  loc_1E251BD:               If CBool(Not var_180 Or (Trim(var_20C) = vbNullString)) Then
  loc_1E2520A:                 var_C0 = var_C0 & "Card No: " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CardNo"))), &HA)
  loc_1E2521E:               End If
  loc_1E2526C:               var_250 = Space(1)
  loc_1E2529D:               var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EAD428("PARTICULARS")))
  loc_1E252A4:               var_1FC = (Trim(CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CardNo"))))) + Space(1))
  loc_1E252AE:               var_22C = (CVar(var_C4.Fields.Item("CardNo")) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1E252B5:               var_260 = (Trim(CVar(Proc_6_52_EAD4F4("Qty", 6))) + var_250)
  loc_1E252BF:               var_280 = (var_C4.Fields Or (Trim(CVar(Proc_6_52_EAD4F4("Qty", 6))) = vbNullString) + CVar(Proc_6_45_EAD428("Unit", 8)))
  loc_1E252C6:               var_2CC = (CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("vType")), var_9E, var_BA) & "/" & MemVar_1F92168 & "/") & var_C4.Fields Or (Trim(CVar(Proc_6_52_EAD4F4("Qty", 6))) = vbNullString) + Chr(&H12))
  loc_1E252CC:               Print 1, CVar(Proc_6_52_EAD4F4("*DUPLICATE*", &HC))
  loc_1E25304:               var_9E = (var_9E + 1)
  loc_1E2531D:               var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E25323:               Print 1, CVar(Proc_6_45_EAD428("PARTICULARS"))
  loc_1E25330:               ' Referenced from: 1E254D6
  loc_1E2533F:               If Not(var_D0.EOF) Then
  loc_1E253BE:                 Proc_6_39_E7C810(var_250, CVar(var_D0.Fields.Item("qty")))
  loc_1E2544D:                 var_1DC = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("ItemName").Value), &H16)))
  loc_1E25454:                 var_20C = (Space(1) + Space(1))
  loc_1E2545E:                 var_2A8 = (CVar(Proc_6_52_EAD4F4("Qty", 6)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_250, "0.000")), 6, 1)))
  loc_1E25465:                 var_2EC = (Chr(&H12) + Space(1))
  loc_1E2546C:                 var_30C = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_D0.Fields.Item("Unit")), 1), 8)) 'String
  loc_1E2546F:                 var_31C = (vbNullString + var_30C)
  loc_1E25475:                 Print 1, var_31C
  loc_1E254BF:                 var_D0.MoveNext
  loc_1E254CA:                 var_9E = (var_9E + 1)
  loc_1E254D3:                 var_BA = (var_BA + 1)
  loc_1E254D6:                 GoTo loc_1E25330
  loc_1E254D9:               End If
  loc_1E254D9:             End If
  loc_1E254DC:             var_CC.MoveNext
  loc_1E2551C:             var_17C = Replace(CStr(Space(&H27)), " ", "=", 1, -1, 0)
  loc_1E25535:             var_1DC = (Chr(&HF) + CVar("Qty"))
  loc_1E2553C:             var_20C = (Space(1) + Chr(&H12))
  loc_1E25542:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1E25564:             var_9E = (var_9E + 1)
  loc_1E2556F:             If (var_C0 <> vbNullString) Then
  loc_1E25595:               var_1A4 = (Chr(&HF) + CVar(var_C0))
  loc_1E2559C:               var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E255A2:               Print 1, Space(1)
  loc_1E255B9:               var_9E = (var_9E + 1)
  loc_1E255BC:             End If
  loc_1E255DE:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E255E5:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E255EB:             Print 1, Space(1)
  loc_1E25602:             var_9E = (var_9E + 1)
  loc_1E25627:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2562E:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E25634:             Print 1, Space(1)
  loc_1E2564B:             var_9E = (var_9E + 1)
  loc_1E25670:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E25677:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E2567D:             Print 1, Space(1)
  loc_1E25694:             var_9E = (var_9E + 1)
  loc_1E256B9:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E256C0:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E256C6:             Print 1, Space(1)
  loc_1E256DD:             var_9E = (var_9E + 1)
  loc_1E25702:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E25709:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E2570F:             Print 1, Space(1)
  loc_1E25726:             var_9E = (var_9E + 1)
  loc_1E25749:             var_1B4 = (Chr(&H1B) + Chr(&H6D))
  loc_1E2574F:             Print 1, Chr(&H12)
  loc_1E2575E:             GoTo loc_1E24B45
  loc_1E25761:           End If
  loc_1E25761:         End If
  loc_1E25761:       End If
  loc_1E25761:     End If
  loc_1E25763:     var_9E = 0
  loc_1E25768:     var_A0 = 1
  loc_1E25780:     If ((Me(4) = "Restaurant") Or (Me(4) = "Hall")) Then
  loc_1E25791:       var_9C = "** " & "BILL" & " **"
  loc_1E2579A:     Else
  loc_1E2579F:       var_9C = CStr(var_360)
  loc_1E257A2:     End If
  loc_1E257A8:     If (var_9E = 0) Then
  loc_1E257D9:       var_E4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1E25810:       var_E8 = Replace(CStr(Space(9)), " ", "-", 1, -1, 0)
  loc_1E25852:       If (Proc_6_38_E68A98(CVar(var_104.Fields.Item("CstNo")), var_A0, var_9E, var_9E, var_9E, var_9E) <> vbNullString) Then
  loc_1E258B7:         var_1DC = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104.Fields.Item("CstNo")), var_9E, var_9E), &H23, var_9E)))
  loc_1E258BE:         var_20C = (Space(1) + Chr(&H12))
  loc_1E258C4:         Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1E258EB:         var_9E = (var_9E + 1)
  loc_1E258EE:       End If
  loc_1E25927:       If (Proc_6_38_E68A98(CVar(var_104.Fields.Item("LstNo")), var_9E) <> vbNullString) Then
  loc_1E2598C:         var_1DC = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104.Fields.Item("LstNo")), var_9E), &H23)))
  loc_1E25993:         var_20C = (Space(1) + Chr(&H12))
  loc_1E25999:         Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1E259C0:         var_9E = (var_9E + 1)
  loc_1E259C3:       End If
  loc_1E259D3:       var_9E = Proc_260_2_136D614(var_A0, var_9E, &H26)
  loc_1E25A0F:       If (Proc_6_38_E68A98(CVar(var_104.Fields.Item("Phone")), var_9E) <> vbNullString) Then
  loc_1E25A62:         Print 1, Proc_260_1_10A5350(Proc_6_38_E68A98(CVar(var_104.Fields.Item("Phone")), var_9E), "D")
  loc_1E25A7B:       End If
  loc_1E25AB4:       If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CardNo")), &H26) <> vbNullString) Then
  loc_1E25B18:         var_1A4 = (Chr(&HF) + "Membership No.: ")
  loc_1E25B22:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CardNo"))), &H1E)))
  loc_1E25B29:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E25B2F:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E25B58:         var_9E = (var_9E + 1)
  loc_1E25B5B:       End If
  loc_1E25B94:       If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("MemName")), var_9E) <> vbNullString) Then
  loc_1E25BF8:         var_1A4 = (Chr(&HF) + "Member : ")
  loc_1E25C02:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("MemName"))), &H1E)))
  loc_1E25C09:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E25C0F:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E25C38:         var_9E = (var_9E + 1)
  loc_1E25C3B:       End If
  loc_1E25C74:       If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("PhoneNo")), var_9E) <> vbNullString) Then
  loc_1E25CD8:         var_1A4 = (Chr(&HF) + "Phone No: ")
  loc_1E25CE2:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("PhoneNo"))), &H1E)))
  loc_1E25CE9:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E25CEF:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E25D18:         var_9E = (var_9E + 1)
  loc_1E25D1B:       End If
  loc_1E25D54:       If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CustName")), var_9E) <> vbNullString) Then
  loc_1E25DB8:         var_1A4 = (Chr(&HF) + "Customer: ")
  loc_1E25DC2:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CustName"))), &H1E)))
  loc_1E25DC9:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E25DCF:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E25DF8:         var_9E = (var_9E + 1)
  loc_1E25DFB:       End If
  loc_1E25E34:       If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Addr1")), var_9E) <> vbNullString) Then
  loc_1E25E98:         var_1A4 = (Chr(&HF) + "Address1: ")
  loc_1E25EA2:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Addr1"))), &H1E)))
  loc_1E25EA9:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E25EAF:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E25ED8:         var_9E = (var_9E + 1)
  loc_1E25EDB:       End If
  loc_1E25F14:       If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Addr2")), var_9E) <> vbNullString) Then
  loc_1E25F78:         var_1A4 = (Chr(&HF) + "Address2: ")
  loc_1E25F82:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Addr2"))), &H1E)))
  loc_1E25F89:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E25F8F:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E25FB8:         var_9E = (var_9E + 1)
  loc_1E25FBB:       End If
  loc_1E25FF4:       If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompanyName")), var_9E) <> vbNullString) Then
  loc_1E2601A:         var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E26021:         var_1DC = (CVar(var_104.Fields.Item("LstNo")) + Chr(&H12))
  loc_1E26027:         Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Addr2"))), &H1E))
  loc_1E2603E:         var_9E = (var_9E + 1)
  loc_1E26041:       End If
  loc_1E2607A:       If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompanyName")), var_9E) <> vbNullString) Then
  loc_1E260DE:         var_1A4 = (Chr(&HF) + "Company : ")
  loc_1E260E8:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompanyName"))), &H1E)))
  loc_1E260EF:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E260F5:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E2611E:         var_9E = (var_9E + 1)
  loc_1E26121:       End If
  loc_1E2615A:       If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompAdd1")), var_9E) <> vbNullString) Then
  loc_1E261BE:         var_1A4 = (Chr(&HF) + "Address1: ")
  loc_1E261C8:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompAdd1"))), &H1E)))
  loc_1E261CF:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E261D5:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E261FE:         var_9E = (var_9E + 1)
  loc_1E26201:       End If
  loc_1E26215:       Do 'loop at: 1E35EFC
  loc_1E26218:       var_194 = var_C4.Fields.Item("CompAdd2")
  loc_1E2621D:       ' Referenced from: 1E369CD
  loc_1E2623A:       If (Proc_6_38_E68A98(CVar(var_194), var_9E) <> vbNullString) Then
  loc_1E2627D:         Do 'loop at: 1E36277
  loc_1E2629E:         var_1A4 = (Chr(&HF) + "Address2: ")
  loc_1E262A8:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompAdd2"))), &H1E)))
  loc_1E262AF:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E262B5:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E262DE:         var_9E = (var_9E + 1)
  loc_1E262E1:       End If
  loc_1E2631A:       If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompAdd3")), var_9E) <> vbNullString) Then
  loc_1E2637E:         var_1A4 = (Chr(&HF) + "Address3: ")
  loc_1E26388:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompAdd3"))), &H1E)))
  loc_1E2638F:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E26395:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E263BE:         var_9E = (var_9E + 1)
  loc_1E263C1:       End If
  loc_1E263FA:       If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompCity")), var_9E) <> vbNullString) Then
  loc_1E2645E:         var_1A4 = (Chr(&HF) + "City    : ")
  loc_1E26468:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompCity"))), &H1E)))
  loc_1E2646F:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E26475:         Print 1, CVar(var_D0.Fields.Item("qty"))
  loc_1E2649E:         var_9E = (var_9E + 1)
  loc_1E264A1:       End If
  loc_1E264DA:       If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompStateCode")), var_9E) <> vbNullString) Then
  loc_1E26570:         var_260 = Chr(&H12)
  loc_1E2657D:         var_1A4 = (Chr(&HF) + "State   : ")
  loc_1E26587:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompStateCode"))), 3)))
  loc_1E26591:         var_250 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompState"))), &H1B)))
  loc_1E26598:         var_270 = (var_250 + var_260)
  loc_1E2659E:         Print 1, Format(var_250, "0.000")
  loc_1E265D7:         var_9E = (var_9E + 1)
  loc_1E265DA:       End If
  loc_1E26613:       If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompGSTIN")), var_9E) <> vbNullString) Then
  loc_1E26677:         var_1A4 = (Chr(&HF) + "GSTIN   : ")
  loc_1E26681:         var_1FC = (CVar(var_104.Fields.Item("LstNo")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompGSTIN"))), &H1E)))
  loc_1E26688:         var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E2668E:         Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompState"))), &H1B))
  loc_1E266B7:         var_9E = (var_9E + 1)
  loc_1E266BA:       End If
  loc_1E266D4:       Do 'loop at: 1E36562
  loc_1E266DD:       var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E266E4:       var_1DC = (CVar(var_104.Fields.Item("LstNo")) + Chr(&H12))
  loc_1E266EA:       Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompGSTIN"))), &H1E))
  loc_1E26701:       var_9E = (var_9E + 1)
  loc_1E267B6:       Proc_6_39_E7C810(var_260, CVar(var_C4.Fields.Item("VNo")))
  loc_1E267EC:       var_570 = Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") & var_260), &H14)
  loc_1E2680E:       var_2EC = CVar(var_C4.Fields.Item("vType")) 'Address
  loc_1E26840:       Proc_6_39_E7C810(var_30C, CVar(var_C4.Fields.Item("VNo")))
  loc_1E26856:       Do 'loop at: 1E36809
  loc_1E2687D:       var_33C = CVar("Bill No.  : " & Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(var_2EC) & "/" & MemVar_1F92168 & "/") & var_30C), &H14)) 'String
  loc_1E26888:       var_20C = (" Invoice No. " + IIf((MemVar_1F92164 <> vbNullString), CVar(MemVar_1F92164 & "/"), vbNullString))
  loc_1E268A8:       var_390 = IIf((Proc_6_38_E68A98(CVar(var_104.Fields.Item("AutoResetToken")), var_9E) = "Yes"), Chr(&H12) & CVar(var_570), var_33C)
  loc_1E268CC:       var_3C8 = CVar(var_C4.Fields.Item("RoomNo")) 'Address
  loc_1E26985:       var_4E0 = IIf((Me(4) = "Outlet"), CVar("Table: " & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("RoomNo")))), IIf((Me(4) = "Room Service"), CVar("Room : " & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("RoomNo")))), vbNullString))
  loc_1E269DC:       var_3A0 = (Chr(&HF) + var_390)
  loc_1E269E6:       var_544 = (var_3A0 + CVar(Proc_6_45_EAD428(CStr(IIf((Trim(CVar(Proc_6_38_E68A98(var_3C8))) = "."), vbNullString, var_4E0)), &HB)))
  loc_1E269ED:       var_564 = (var_544 + Chr(&H12))
  loc_1E269F3:       Print 1, var_564
  loc_1E26A94:       var_9E = (var_9E + 1)
  loc_1E26B37:       var_1A4 = (Chr(&HF) + " Bill Date : ")
  loc_1E26B41:       var_1FC = (CVar(var_104.Fields.Item("AutoResetToken")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VDate")), var_9E), &HC)))
  loc_1E26B4A:       var_20C = (IIf((MemVar_1F92164 <> vbNullString), CVar(MemVar_1F92164 & "/"), vbNullString) + "Time : ")
  loc_1E26B54:       var_260 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VTIME"))), 9)))
  loc_1E26B5B:       var_280 = (var_260 + Chr(&H12))
  loc_1E26B61:       Print 1, CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") & var_260
  loc_1E26B9C:       var_9E = (var_9E + 1)
  loc_1E26BAA:       If (var_590 = "Y") Then
  loc_1E26C15:         var_20C = CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo")), (Trim(CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo")), var_9E))) = "0"))) 'String
  loc_1E26C4D:         If CBool(Not var_BA Or (Trim(var_20C) = vbNullString)) Then
  loc_1E26CB1:           var_1A4 = (Chr(&HF) + "Order No. : ")
  loc_1E26CBB:           var_1FC = (CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo")), var_9E)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo"))))))
  loc_1E26CC2:           var_22C = (CVar(var_C4.Fields.Item("KOTNo")) + Chr(&H12))
  loc_1E26CC8:           Print 1, Trim(Chr(&H12))
  loc_1E26CF1:           var_9E = (var_9E + 1)
  loc_1E26CF4:         End If
  loc_1E26CFC:         If (var_13C <> vbNullString) Then
  loc_1E26D31:           var_1A4 = (Chr(&HF) + "Party Name: ")
  loc_1E26D3B:           var_1DC = (CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo")), var_9E)) + CVar(Proc_6_45_EAD428(var_13C, &H1C)))
  loc_1E26D42:           var_20C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo"))))) + Chr(&H12))
  loc_1E26D48:           Print 1, Chr(&H12)
  loc_1E26D66:           var_9E = (var_9E + 1)
  loc_1E26D69:         End If
  loc_1E26D69:       End If
  loc_1E26DA8:       If (Proc_6_38_E68A98(CVar(var_104.Fields.Item("PrintTokenNo")), var_9E) = "Yes") Then
  loc_1E26DCE:         Do 'loop at: 1E36D5B
  loc_1E26DF5:         var_C0 = vbNullString & "Token No: " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("TokenNo")), var_9E), &HA)
  loc_1E26E09:       End If
  loc_1E26E71:       var_20C = CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CardNo")), (Trim(CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CardNo"))))) = "0"))) 'String
  loc_1E26EA9:       If CBool(Not &H1C Or (Trim(var_20C) = vbNullString)) Then
  loc_1E26EF6:         var_C0 = var_C0 & "Card No: " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CardNo"))), &HA)
  loc_1E26F0A:       End If
  loc_1E26F69:       If CBool((Trim(CVar(Proc_6_38_E68A98(CVar(var_104.Fields.Item("KotYN"))))) = "Y") And (var_590 <> "Y")) Then
  loc_1E26F94:         var_134 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo")))
  loc_1E26FE0:         var_22C = (28 - Len(Left(var_134, &H1C)))
  loc_1E27003:         var_1A4 = (Chr(&HF) + "KOT No.   : ")
  loc_1E2700A:         var_1DC = (CVar(Proc_6_38_E68A98(CVar(var_104.Fields.Item("KotYN")))) + Left(var_134, &H1C))
  loc_1E27011:         var_260 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo"))))) + Space(CLng(Trim(Len(Left(var_134, &H1C))))))
  loc_1E27018:         var_280 = (&H1C Or (Trim(Len(Left(var_134, &H1C))) = vbNullString) + Chr(&H12))
  loc_1E2701E:         Print 1, CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") & &H1C Or (Trim(Len(Left(var_134, &H1C))) = vbNullString)
  loc_1E2703F:         var_9E = (var_9E + 1)
  loc_1E27063:         var_134 = CStr(Mid(var_134, &H1D, CVar(Len(var_134))))
  loc_1E2706D:         ' Referenced from: 1E27103
  loc_1E27077:         If (Len(var_134) <> 0) Then
  loc_1E270AF:           var_1B4 = (Chr(&HF) + Left(var_134, &H28))
  loc_1E270B6:           var_1FC = (Left(var_134, &H1C) + Chr(&H12))
  loc_1E270BC:           Print 1, Left(var_134, &H1C)
  loc_1E270D5:           var_9E = (var_9E + 1)
  loc_1E270F9:           var_134 = CStr(Mid(var_134, &H29, CVar(Len(var_134))))
  loc_1E27103:           GoTo loc_1E2706D
  loc_1E27106:         End If
  loc_1E27106:       End If
  loc_1E2713F:       If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Roomtype")), var_9E) = "RO") Then
  loc_1E271A3:         var_1A4 = (Chr(&HF) + "GUEST     : ")
  loc_1E271AD:         var_1FC = (Mid(var_134, &H29, CVar(Len(var_134))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Remark1"))), &H1C)))
  loc_1E271B4:         var_22C = (Left(var_134, &H1C) + Chr(&H12))
  loc_1E271BA:         Print 1, Trim(Chr(&H12))
  loc_1E271E3:         var_9E = (var_9E + 1)
  loc_1E271E9:       Else
  loc_1E27222:         If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("MemName")), var_9E) <> vbNullString) Then
  loc_1E27225:           GoTo loc_1E27308
  loc_1E27228:         End If
  loc_1E27261:         If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Remark1"))) <> vbNullString) Then
  loc_1E272C5:           var_1A4 = (Chr(&HF) + "REMARK     :   ")
  loc_1E272CF:           var_1FC = (Mid(var_134, &H29, CVar(Len(var_134))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Remark1"))), &H1C)))
  loc_1E272D6:           var_22C = (Left(var_134, &H1C) + Chr(&H12))
  loc_1E272DC:           Print 1, Trim(Chr(&H12))
  loc_1E27305:           var_9E = (var_9E + 1)
  loc_1E27308:           ' Referenced from:   1E27225
  loc_1E27308:         End If
  loc_1E27308:       End If
  loc_1E2732B:       var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E27332:       var_1DC = (Mid(var_134, &H29, CVar(Len(var_134))) + Chr(&H12))
  loc_1E27338:       Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Remark1"))), &H1C))
  loc_1E2734F:       var_9E = (var_9E + 1)
  loc_1E27378:       var_1B4 = (CVar(Proc_6_45_EAD428(" Particulars", &H10, var_9E)) + Space(1))
  loc_1E27392:       var_1FC = (var_9E + CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))))
  loc_1E2739E:       var_20C = Space(1)
  loc_1E273A6:       var_22C = (Left(var_134, &H1C) + var_20C)
  loc_1E273C0:       var_260 = (Trim(var_20C) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1E273D4:       var_280 = (&H1C Or (Trim(var_20C) = vbNullString) + Space(1))
  loc_1E273EE:       var_2CC = (CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") & &H1C Or (Trim(var_20C) = vbNullString) + CVar(Proc_6_52_EAD4F4("Amount", 9)))
  loc_1E27441:       var_1A4 = (Chr(&HF) + CVar(CStr(Chr(&H12) & CVar(var_570))))
  loc_1E27448:       var_1DC = (CVar(Proc_6_45_EAD428(" Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1E2744E:       Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1E27465:       var_9E = (var_9E + 1)
  loc_1E2748B:       var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E27492:       var_1DC = (CVar(Proc_6_45_EAD428(" Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1E27498:       Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1E274AF:       var_9E = (var_9E + 1)
  loc_1E274B4:       var_BA = 1
  loc_1E274BA:       var_D4.MoveFirst
  loc_1E274BF:       ' Referenced from: 1E27834
  loc_1E274CE:       If Not(var_D4.EOF) Then
  loc_1E2755E:         If (Proc_6_38_E68A98(CVar(var_D4.Fields.Item("HSNCode")), var_9E) <> vbNullString) Then
  loc_1E27584:           var_1A4 = (Chr(&HF) + CVar(var_9E & Proc_6_45_EAD428(CStr(var_D4.Fields.Item("HSNCode").Value), &H1E, "HSN Code: ", var_BA)))
  loc_1E2758B:           var_1DC = (CVar(Proc_6_45_EAD428(" Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1E27591:           Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1E275A2:         End If
  loc_1E275EF:         Proc_6_39_E7C810(var_20C, CVar(var_D4.Fields.Item("Rate")))
  loc_1E2760F:         var_250 = Format(var_20C, "0.00")
  loc_1E2763A:         Proc_6_39_E7C810(var_2EC, CVar(var_D4.Fields.Item("qty")), 1)
  loc_1E27685:         Proc_6_39_E7C810(var_3C8, CVar(var_D4.Fields.Item("Amt")), 1)
  loc_1E27699:         var_3D8 = "0.00"
  loc_1E276CF:         var_1DC = (CVar(Proc_6_45_EAD428(CStr(var_D4.Fields.Item("ItemName").Value), &H10, 1, 1)) + Space(1))
  loc_1E276E8:         var_270 = (1 + CVar(Proc_6_52_EAD4F4(CStr(var_250), 6, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))))))
  loc_1E276FC:         var_2A8 = (Space(1) + Space(1))
  loc_1E27715:         var_32C = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_2EC, "0.000")), 6, CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_1E27729:         var_390 = (CVar(Proc_6_38_E68A98(var_2EC) & "/" & MemVar_1F92168 & "/") & Format(var_2EC, "0.000") + Space(1))
  loc_1E27742:         var_430 = (var_390 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_3C8, var_3D8)), 9)))
  loc_1E277BC:         var_1A4 = (Chr(&HF) + CVar(CStr(CVar(var_C4.Fields.Item("RoomNo")))))
  loc_1E277C3:         var_1DC = (Space(1) + Chr(&H12))
  loc_1E277C9:         Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1E27807:         Proc_6_39_E7C810(Space(1), CVar(var_D4.Fields.Item("Amt")))
  loc_1E2780F:         var_1B4 = (CVar(var_E0) + Space(1))
  loc_1E27814:         var_E0 = CSng(Chr(&H12))
  loc_1E27829:         var_BA = (var_BA + 1)
  loc_1E2782F:         var_D4.MoveNext
  loc_1E27834:         GoTo loc_1E274BF
  loc_1E27837:       End If
  loc_1E27864:       var_1B4 = (Chr(&HF) + Space(&H1F))
  loc_1E2786E:       var_1DC = (Chr(&H12) + CVar(var_E8))
  loc_1E27875:       var_20C = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_1E2787B:       Print 1, var_20C
  loc_1E27896:       var_9E = (var_9E + 1)
  loc_1E2789C:       var_D8.MoveFirst
  loc_1E278A1:       ' Referenced from: 1E28187
  loc_1E278B0:       If Not(var_D8.EOF) Then
  loc_1E278DD:         var_5A4 = var_D8.Fields.Item("SunCode").Value 'Variant
  loc_1E278FB:         If (var_5A4 = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_1E2794B:           Proc_6_39_E7C810(var_250, CVar(var_D8.Fields.Item("Amount")), var_9E)
  loc_1E27995:           var_1DC = (1 + CVar(Proc_6_45_EAD428(CStr(var_D8.Fields.Item("DispName").Value), &HC, Space(&H12), 1)))
  loc_1E279A9:           var_20C = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Space(1))
  loc_1E279C2:           var_2A8 = (var_BA + CVar(Proc_6_52_EAD4F4(CStr(Format(var_250, "0.00")), 9, var_20C)))
  loc_1E27A18:           var_1A4 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_1E27A1F:           var_1DC = (var_D8.Fields.Item("DispName").Value + Chr(&H12))
  loc_1E27A25:           Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1E27A3C:           var_9E = (var_9E + 1)
  loc_1E27A42:         Else
  loc_1E27A55:           If (var_5A4 = CVar(MemVar_1F92078 & "NET")) Then
  loc_1E27A85:             var_1B4 = (Chr(&HF) + Space(&H1F))
  loc_1E27A8F:             var_1DC = (Chr(&H12) + CVar(var_E8))
  loc_1E27A96:             var_20C = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_1E27A9C:             Print 1, var_20C
  loc_1E27AB7:             var_9E = (var_9E + 1)
  loc_1E27ADC:             var_1A4 = var_D8.Fields.Item("DispName").Value
  loc_1E27B07:             Proc_6_39_E7C810(var_250, CVar(var_D8.Fields.Item("Amount")), var_9E)
  loc_1E27B51:             var_1DC = (1 + CVar(Proc_6_45_EAD428(CStr(var_1A4), &HC, Space(&H12), 1)))
  loc_1E27B65:             var_20C = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Space(1))
  loc_1E27B7E:             var_2A8 = (var_9E + CVar(Proc_6_52_EAD4F4(CStr(Format(var_250, "0.00")), 9, var_20C)))
  loc_1E27BD7:             Proc_6_39_E7C810(var_1A4, CVar(var_D8.Fields.Item("Amount")))
  loc_1E27BF1:             If (var_1A4 > 0) Then
  loc_1E27C17:               var_1A4 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_1E27C1E:               var_1DC = (var_1A4 + Chr(&H12))
  loc_1E27C24:               Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1E27C3B:               var_9E = (var_9E + 1)
  loc_1E27C3E:             End If
  loc_1E27C41:           Else
  loc_1E27C54:             If (var_5A4 = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1E27C93:               If (var_104.Fields.Item("DisPrint").Value = "N") Then
  loc_1E27CB8:                 var_1A4 = var_D8.Fields.Item("DispName").Value
  loc_1E27CE3:                 Proc_6_39_E7C810(var_250, CVar(var_D8.Fields.Item("Amount")), var_9E)
  loc_1E27D2D:                 var_1DC = (1 + CVar(Proc_6_45_EAD428(CStr(var_1A4), 8, Space(&H12), 1)))
  loc_1E27D41:                 var_20C = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Space(5))
  loc_1E27D5A:                 var_2A8 = (var_E0 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_250, "0.00")), 9, var_20C)))
  loc_1E27DB3:                 Proc_6_39_E7C810(var_1A4, CVar(var_D8.Fields.Item("Amount")))
  loc_1E27DCD:                 If (var_1A4 > 0) Then
  loc_1E27DF3:                   var_1A4 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_1E27DFA:                   var_1DC = (var_1A4 + Chr(&H12))
  loc_1E27E00:                   Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1E27E17:                   var_9E = (var_9E + 1)
  loc_1E27E1A:                 End If
  loc_1E27E1D:               Else
  loc_1E27E3F:                 var_1A4 = var_D8.Fields.Item("DispName").Value
  loc_1E27E91:                 Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Amount", 9)), CVar(var_D8.Fields.Item("Amount")))
  loc_1E27EB1:                 var_2EC = Format(CVar(Proc_6_52_EAD4F4("Amount", 9)), "0.00")
  loc_1E27EDB:                 var_1DC = (1 + CVar(Proc_6_45_EAD428(CStr(var_1A4), 8, Space(&H12), 1)))
  loc_1E27EF1:                 var_20C = CVar(Proc_6_52_EAD4F4(CStr(var_D8.Fields.Item("SValue").Value), 3, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))))) 'String
  loc_1E27EF4:                 var_22C = (var_9E + var_20C)
  loc_1E27EFD:                 var_250 = (CVar(var_D8.Fields.Item("Amount")) + "%")
  loc_1E27F11:                 var_270 = (var_250 + Space(1))
  loc_1E27F2A:                 var_30C = (Format(var_250, "0.00") + CVar(Proc_6_52_EAD4F4(CStr(var_2EC), 9)))
  loc_1E27F91:                 Proc_6_39_E7C810(var_1A4, CVar(var_D8.Fields.Item("Amount")))
  loc_1E27FAB:                 If (var_1A4 > 0) Then
  loc_1E27FD1:                   var_1A4 = (Chr(&HF) + CVar(CStr(Format(var_2EC, "0.000"))))
  loc_1E27FD8:                   var_1DC = (var_1A4 + Chr(&H12))
  loc_1E27FDE:                   Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1E27FF5:                   var_9E = (var_9E + 1)
  loc_1E27FF8:                 End If
  loc_1E27FF8:               End If
  loc_1E27FFB:             Else
  loc_1E2801D:               var_1A4 = var_D8.Fields.Item("DispName").Value
  loc_1E28048:               Proc_6_39_E7C810(var_250, CVar(var_D8.Fields.Item("Amount")))
  loc_1E2805C:               var_260 = "0.00"
  loc_1E28092:               var_1DC = (1 + CVar(Proc_6_45_EAD428(CStr(var_1A4), &HC, Space(&H12), 1)))
  loc_1E280A6:               var_20C = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Space(1))
  loc_1E280BF:               var_2A8 = (var_9E + CVar(Proc_6_52_EAD4F4(CStr(Format(var_250, var_260)), 9, var_20C)))
  loc_1E28118:               Proc_6_39_E7C810(var_1A4, CVar(var_D8.Fields.Item("Amount")))
  loc_1E28132:               If (var_1A4 > 0) Then
  loc_1E28158:                 var_1A4 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_1E2815F:                 var_1DC = (var_1A4 + Chr(&H12))
  loc_1E28165:                 Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1E2817C:                 var_9E = (var_9E + 1)
  loc_1E2817F:               End If
  loc_1E2817F:             End If
  loc_1E2817F:           End If
  loc_1E2817F:         End If
  loc_1E28182:         var_D8.MoveNext
  loc_1E28187:         GoTo loc_1E278A1
  loc_1E2818A:       End If
  loc_1E281AD:       var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E281B4:       var_1DC = (var_1A4 + Chr(&H12))
  loc_1E281BA:       Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1E281D1:       var_9E = (var_9E + 1)
  loc_1E28210:       If (var_104.Fields.Item("DisPrint").Value = "N") Then
  loc_1E28213:         GoTo loc_1E283D1
  loc_1E28216:         ' Referenced from: 1E28384
  loc_1E28216:       End If
  loc_1E28225:       If Not(var_C8.EOF) Then
  loc_1E282A3:         Proc_6_39_E7C810(var_260, CVar(var_C8.Fields.Item("DiscPer")))
  loc_1E282E3:         Proc_6_47_EF59D0(var_2EC, CVar(var_C8.Fields.Item("DiscAmt")))
  loc_1E28305:         var_1A4 = (Chr(&HF) + "DISC. ON ")
  loc_1E2830C:         var_20C = CVar(Proc_6_45_EAD428(CStr(Ucase(CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("CatType")), var_9E)))), &HA)) 'String
  loc_1E2830F:         var_22C = (var_1A4 + var_20C)
  loc_1E28319:         var_280 = (CVar(var_D8.Fields.Item("Amount")) + CVar(Proc_6_52_EAD4F4(CStr(var_260), 6)))
  loc_1E28322:         var_2A8 = (CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(var_C8.Fields.Item("DiscPer")), var_260)), 9, var_20C)) + "%")
  loc_1E2832C:         var_30C = (CVar(Proc_6_52_EAD4F4("Amount", 9)) + CVar(Proc_6_52_EAD4F4(CStr(var_2EC), &HA)))
  loc_1E28332:         Print 1, Format(var_2EC, "0.000")
  loc_1E28379:         var_9E = (var_9E + 1)
  loc_1E2837F:         var_C8.MoveNext
  loc_1E28384:         GoTo loc_1E28216
  loc_1E28387:       End If
  loc_1E283AA:       var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E283B1:       var_1DC = (var_1A4 + Chr(&H12))
  loc_1E283B7:       Print 1, CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("CatType")), var_9E))
  loc_1E283CE:       var_9E = (var_9E + 1)
  loc_1E283D1:       ' Referenced from: 1E28213
  loc_1E283E5:       If (var_10C.RecordCount > 0) Then
  loc_1E283EB:         var_10C.MoveFirst
  loc_1E283F0:         ' Referenced from: 1E2862F
  loc_1E283FF:         If Not(var_10C.EOF) Then
  loc_1E2844B:           var_1FC = Trim(Left(Ucase(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E))), &HE))
  loc_1E28483:           Proc_6_39_E7C810(var_260, CVar(var_10C.Fields.Item("TaxPer")))
  loc_1E284AE:           Proc_6_39_E7C810(var_2EC, CVar(var_10C.Fields.Item("TaxableAmt")))
  loc_1E284F9:           Proc_6_39_E7C810(var_3D8, CVar(var_10C.Fields.Item("TaxAmt")), 1)
  loc_1E28529:           var_22C = (var_1FC + Space(1))
  loc_1E28535:           var_280 = (CVar(var_D8.Fields.Item("Amount")) + CVar(CStr(var_260)))
  loc_1E2853E:           var_2A8 = (CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(var_10C.Fields.Item("TaxPer")), var_260)), 9, Space(1))) + "% On (")
  loc_1E28545:           var_31C = (CVar(Proc_6_52_EAD4F4("Amount", 9)) + Format(var_2EC, "0.00"))
  loc_1E2854E:           var_32C = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_2EC, "0.000")), 6, CVar(Proc_6_52_EAD4F4("Amount", 9)))) + ")")
  loc_1E2855C:           var_390 = CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(var_2EC) & "/" & MemVar_1F92168 & "/") & Format(var_2EC, "0.00")), &H20, 1, 1)) 'String
  loc_1E2856F:           var_3A0 = (var_390 + Space(1))
  loc_1E28588:           var_45C = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_3D8, "0.00")), 7, CVar(var_D4.Fields.Item("Amt")))))
  loc_1E28600:           var_1A4 = (Chr(&HF) + CVar(CStr(CVar(var_C4.Fields.Item("RoomNo")))))
  loc_1E28607:           var_1DC = (CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)) + Chr(&H12))
  loc_1E2860D:           Print 1, Left(Ucase(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E))), &HE)
  loc_1E28624:           var_9E = (var_9E + 1)
  loc_1E2862A:           var_10C.MoveNext
  loc_1E2862F:           GoTo loc_1E283F0
  loc_1E28632:         End If
  loc_1E28655:         var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2865C:         var_1DC = (CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)) + Chr(&H12))
  loc_1E28662:         Print 1, Left(Ucase(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E))), &HE)
  loc_1E28679:         var_9E = (var_9E + 1)
  loc_1E2867C:       End If
  loc_1E286A2:       Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)), CVar(var_C4.Fields.Item("CashRecd")), var_9E)
  loc_1E286AB:       var_118 = CSng(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)))
  loc_1E286DE:       Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)), CVar(var_C4.Fields.Item("NetAmt")), var_118)
  loc_1E286E7:       var_130 = CSng(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)))
  loc_1E2871A:       Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)), CVar(var_110.Fields.Item("Amount")), var_130)
  loc_1E2873B:       var_1CC = var_110.Fields
  loc_1E28752:       Proc_6_39_E7C810(var_1FC, CVar(var_1CC.Item("TipAmt")), (CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)) <> 0))
  loc_1E2877C:       If CBool(var_9E Or (var_1FC <> 0)) Then
  loc_1E28786:         If (var_118 = CDbl(0)) Then
  loc_1E287AF:           Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)), CVar(var_110.Fields.Item("Amount")))
  loc_1E287B8:           var_118 = CSng(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)))
  loc_1E287C5:         End If
  loc_1E287E4:         var_174 = CVar(var_110.Fields.Item("TipAmt")) 'Address
  loc_1E287EB:         Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)), var_174, var_118)
  loc_1E287F4:         var_120 = CSng(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)))
  loc_1E2880C:         var_128 = ((var_118 - var_130) - var_120)
  loc_1E2880F:       End If
  loc_1E2881A:       Proc_6_39_E7C810(var_174, var_128, var_128)
  loc_1E2882D:       If CBool(var_174 <> 0) Then
  loc_1E28838:         var_174 = Chr(&HF)
  loc_1E288B7:         var_380 = "-"
  loc_1E288D1:         var_2EC = IIf((var_120 <> CDbl(0)), (Proc_6_38_E68A98(CVar(var_104.Fields.Item("AutoResetToken")), var_9E) = "Yes") & Format(var_120, "0.00"), vbNullString)
  loc_1E28910:         var_1A4 = (var_174 + "Refund=(")
  loc_1E2891B:         var_21C = "-"
  loc_1E28927:         var_260 = CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)) & Format(var_118, "0.00") & 0 & Format(var_130, "0.00") 
  loc_1E28941:         var_390 = (Format(var_128, "0.00") + Chr(&H12))
  loc_1E2894B:         Print 1, var_260 & var_2EC & ")=" & var_390
  loc_1E28986:         var_9E = (var_9E + 1)
  loc_1E28989:       End If
  loc_1E28994:       Proc_6_39_E7C810(var_174, var_128, var_9E, 1, 1, 1, 1)
  loc_1E289A7:       If CBool(var_174 <> 0) Then
  loc_1E289CD:         var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E289D4:         var_1DC = (CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)) + Chr(&H12))
  loc_1E289DA:         Print 1, Format(var_118, "0.00")
  loc_1E289F1:         var_9E = (var_9E + 1)
  loc_1E289F4:       End If
  loc_1E28A30:       If CBool(var_C4.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_1E28A94:         var_1A4 = (Chr(&HF) + "Steward Name  : ")
  loc_1E28A9E:         var_1FC = (CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("WaiterName")), var_9E, 1, 1, 1), &H14, 1)))
  loc_1E28AA5:         var_22C = (CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E, var_9E)) & Format(var_118, "0.00") + Chr(&H12))
  loc_1E28AAB:         Print 1, "0.00"
  loc_1E28AD4:         var_9E = (var_9E + 1)
  loc_1E28AD7:       End If
  loc_1E28B21:       If (Ucase(CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("U_Name")), var_9E, var_120))) = "HTW_SYSTEM") Then
  loc_1E28B51:         var_1B4 = (Chr(&HF) + Space(&H1E))
  loc_1E28B5A:         var_1DC = (Ucase(CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("U_Name")), var_9E, var_120))) + "[E.& O.E.]")
  loc_1E28B61:         var_20C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("WaiterName")), var_9E, 1, 1, 1), &H14, 1)) + Chr(&H12))
  loc_1E28B67:         Print 1, Chr(&H12)
  loc_1E28B82:         var_9E = (var_9E + 1)
  loc_1E28B88:       Else
  loc_1E28B90:         var_174 = Chr(&HF)
  loc_1E28BA4:         var_180 = var_C4.Fields
  loc_1E28BE9:         var_1A4 = (var_174 + "User Name     :   ")
  loc_1E28BF3:         var_1FC = (Space(&H1E) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_180.Item("U_Name")), var_9E), &HE)))
  loc_1E28BFC:         var_20C = (Chr(&H12) + "[E.& O.E.]")
  loc_1E28C03:         var_250 = (Chr(&H12) + Chr(&H12))
  loc_1E28C09:         Print 1, Format(var_130, "0.00")
  loc_1E28C34:         var_9E = (var_9E + 1)
  loc_1E28C37:       End If
  loc_1E28C3C:       Print 1, vbNullString
  loc_1E28C48:       var_9E = (var_9E + 1)
  loc_1E28C71:       unk_43FED1.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & Me(8) & "'", var_174, -1
  loc_1E28C7C:       Set var_108 = var_180
  loc_1E28CA0:       If (var_108.RecordCount > 0) Then
  loc_1E28CE3:         If CBool(Trim(CVar(var_108.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_1E28CEE:           var_174 = Chr(&HF)
  loc_1E28D02:           var_180 = var_108.Fields
  loc_1E28D31:           var_1DC = (var_174 + Trim(CVar(var_180.Item("Slogan1"))))
  loc_1E28D38:           var_20C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_180.Item("U_Name")), var_9E), &HE)) + Chr(&H12))
  loc_1E28D3E:           Print 1, Chr(&H12)
  loc_1E28D5C:           var_9E = (var_9E + 1)
  loc_1E28D5F:         End If
  loc_1E28D5F:       End If
  loc_1E28D64:       Set var_108 = Nothing
  loc_1E28D8D:       unk_43FED1.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & Me(8) & "'", var_174, -1
  loc_1E28D98:       Set var_108 = var_180
  loc_1E28DBC:       If (var_108.RecordCount > 0) Then
  loc_1E28DFF:         If CBool(Trim(CVar(var_108.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_1E28E42:           var_1FC = Chr(&H12)
  loc_1E28E4D:           var_1DC = (Chr(&HF) + Trim(CVar(var_108.Fields.Item("Slogan2"))))
  loc_1E28E54:           var_20C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_108.Fields.Item("U_Name")), var_9E), &HE)) + var_1FC)
  loc_1E28E5A:           Print 1, Chr(&H12)
  loc_1E28E78:           var_9E = (var_9E + 1)
  loc_1E28E7B:         End If
  loc_1E28E7B:       End If
  loc_1E28E83:       If (var_C0 <> vbNullString) Then
  loc_1E28EA9:         var_1A4 = (Chr(&HF) + CVar(var_C0))
  loc_1E28EB0:         var_1DC = (CVar(var_108.Fields.Item("Slogan2")) + Chr(&H12))
  loc_1E28EB6:         Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_108.Fields.Item("U_Name")), var_9E), &HE))
  loc_1E28ECD:         var_9E = (var_9E + 1)
  loc_1E28ED0:       End If
  loc_1E28ED5:       Set var_108 = Nothing
  loc_1E28EFB:       var_1A4 = (Chr(&HF) + CVar(MemVar_1F92218))
  loc_1E28F02:       var_1DC = (CVar(var_108.Fields.Item("Slogan2")) + Chr(&H12))
  loc_1E28F08:       Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_108.Fields.Item("U_Name")), var_9E), &HE))
  loc_1E28F1F:       var_9E = (var_9E + 1)
  loc_1E28F27:       Print 1, vbNullString
  loc_1E28F33:       var_9E = (var_9E + 1)
  loc_1E28F3B:       Print 1, vbNullString
  loc_1E28F47:       var_9E = (var_9E + 1)
  loc_1E28F4F:       Print 1, vbNullString
  loc_1E28F5B:       var_9E = (var_9E + 1)
  loc_1E28F63:       Print 1, vbNullString
  loc_1E28F6F:       var_9E = (var_9E + 1)
  loc_1E28F77:       Print 1, vbNullString
  loc_1E28F83:       var_9E = (var_9E + 1)
  loc_1E28FA6:       var_1B4 = (Chr(&H1B) + Chr(&H6D))
  loc_1E28FAC:       Print 1, Chr(&H12)
  loc_1E28FBB:     End If
  loc_1E28FD2:     var_194 = var_C4.Fields.Item("Printed")
  loc_1E28FDA:     var_174 = CVar(var_194) 'Address
  loc_1E28FF4:     If (Proc_6_38_E68A98(var_174, var_9E, var_9E, var_9E, var_9E, var_9E, var_9E) <> "Y") Then
  loc_1E28FFA:       var_1C8 = 0
  loc_1E29029:       unk_43FED1.Execute "SELECT TOKENPrintAfter FROM Depart where Code='" & Me(8) & "'", var_174, -1
  loc_1E29031:       var_180 = var_180.Fields
  loc_1E29039:       var_1C8 = var_194.Item(var_194)
  loc_1E29069:       If (Proc_6_38_E68A98(CVar(var_1CC), var_1CC, var_9E, var_9E) = "Yes") Then
  loc_1E29080:         If (var_CC.RecordCount > 0) Then
  loc_1E29086:           var_CC.MoveFirst
  loc_1E2908B:           ' Referenced from: 1E29DE7
  loc_1E2909A:           If Not(var_CC.EOF) Then
  loc_1E2909F:             Close 1
  loc_1E290C6:             Open "C:\reptmp\TOKEN_" & CStr(var_CC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1E290D5:             var_BA = 1
  loc_1E290EC:             var_178 = "Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,Max(S.Unit) AS Unit,SUM(S.Amount) AS AMT,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='"
  loc_1E29132:             var_1DC = CVar(var_178 & Me(12) & "' AND I.Kitchen='") & var_CC.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)" 
  loc_1E29140:             unk_43FED1.Execute CStr(var_1DC), var_1FC, -1
  loc_1E2914B:             Set var_D0 = var_1CC
  loc_1E29181:             If (var_D0.RecordCount > 0) Then
  loc_1E29193:               var_180 = var_104.Fields
  loc_1E291CE:               If CBool(Trim(CVar(Proc_6_38_E68A98(CVar(var_180.Item("SaleBillTokenHeader1")), var_1CC, var_BA, var_180))) <> vbNullString) Then
  loc_1E2921E:                 Print 1, Proc_260_1_10A5350(CStr(var_104.Fields.Item("SaleBillTokenHeader1").Value), "D", &H26)
  loc_1E2923F:                 var_9E = (var_9E + 1)
  loc_1E29247:                 Print 1, vbNullString
  loc_1E29253:                 var_9E = (var_9E + 1)
  loc_1E29256:               End If
  loc_1E292A3:               Print 1, Proc_260_1_10A5350(CStr(var_CC.Fields.Item("Department").Value), "D", &H26, var_9E)
  loc_1E29303:               var_180 = var_C4.Fields
  loc_1E29345:               Proc_6_39_E7C810(var_260, CVar(var_C4.Fields.Item("VNo")))
  loc_1E2937B:               var_344 = Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(CVar(var_180.Item("vType")), var_9E, var_9E) & "/" & MemVar_1F92168 & "/") & var_260), &H14)
  loc_1E2938D:               var_284 = var_C4.Fields
  loc_1E293E2:               var_2FC = IIf((Proc_6_38_E68A98(CVar(var_284.Item("Printed")), var_180) = "Y"), CVar(Proc_6_52_EAD4F4("*DUPLICATE*", &HC)), vbNullString)
  loc_1E293FF:               var_1A4 = (Chr(&HF) + "Bill No.: ")
  loc_1E29406:               var_20C = (CVar(Proc_6_38_E68A98(CVar(var_180.Item("SaleBillTokenHeader1")), var_C4.Fields, var_BA, var_180)) + IIf((MemVar_1F92164 <> vbNullString), CVar(MemVar_1F92164 & "/"), vbNullString))
  loc_1E29413:               var_31C = (CVar(var_344) + var_2FC)
  loc_1E2941D:               Print 1, Chr(&H12) & "0.00", Chr(&H12)
  loc_1E29476:               var_9E = (var_9E + 1)
  loc_1E29526:               var_1A4 = (Chr(&HF) + "Date    : ")
  loc_1E29530:               var_1FC = (CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("SaleBillTokenHeader1")), var_C4.Fields, var_BA, var_C4.Fields)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VDate")), var_9E), &HF)))
  loc_1E29537:               var_22C = (IIf((MemVar_1F92164 <> vbNullString), CVar(MemVar_1F92164 & "/"), vbNullString) + Space(2))
  loc_1E29540:               var_250 = (CVar(var_C4.Fields.Item("vType")) + "Time : ")
  loc_1E2954A:               var_280 = (CVar(var_C4.Fields.Item("VNo")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VTIME"))), 5)))
  loc_1E29551:               var_2CC = (CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("vType")), var_9E, var_9E) & "/" & MemVar_1F92168 & "/") & CVar(var_C4.Fields.Item("VTIME")) + Chr(&H12))
  loc_1E29557:               Print 1, CVar(Proc_6_52_EAD4F4("*DUPLICATE*", &HC))
  loc_1E29596:               var_9E = (var_9E + 1)
  loc_1E295D8:               If (Proc_6_38_E68A98(CVar(var_104.Fields.Item("PrintTokenNo")), var_9E) = "Yes") Then
  loc_1E29625:                 var_C0 = vbNullString & "Token No: " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("TokenNo"))), &HA)
  loc_1E29639:               End If
  loc_1E296A1:               var_20C = CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CardNo")), (Trim(CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CardNo"))))) = "0"))) 'String
  loc_1E296D9:               If CBool(Not var_9E Or (Trim(var_20C) = vbNullString)) Then
  loc_1E29726:                 var_C0 = var_C0 & "Card No: " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CardNo"))), &HA)
  loc_1E2973A:               End If
  loc_1E29742:               If (var_C0 <> vbNullString) Then
  loc_1E29768:                 var_1A4 = (Chr(&HF) + CVar(var_C0))
  loc_1E2976F:                 var_1DC = (CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CardNo")))) + Chr(&H12))
  loc_1E29775:                 Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VDate")), var_9E), &HF))
  loc_1E2978C:                 var_9E = (var_9E + 1)
  loc_1E2978F:               End If
  loc_1E29800:               var_2A8 = Chr(&H12)
  loc_1E2980E:               var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EAD428("SNo", 3)))
  loc_1E29815:               var_1FC = (Chr(&H12) + Space(1))
  loc_1E2981F:               var_22C = (CVar(var_C4.Fields.Item("CardNo")) + CVar(Proc_6_45_EAD428("PARTICULARS", &H1C)))
  loc_1E29826:               var_260 = (Trim(CVar(Proc_6_45_EAD428("PARTICULARS", &H1C))) + Space(1))
  loc_1E29830:               var_280 = (var_9E Or (Trim(CVar(Proc_6_45_EAD428("PARTICULARS", &H1C))) = vbNullString) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1E29837:               var_2CC = (CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("vType")), var_9E, var_9E) & "/" & MemVar_1F92168 & "/") & var_9E Or (Trim(CVar(Proc_6_45_EAD428("PARTICULARS", &H1C))) = vbNullString) + var_2A8)
  loc_1E2983D:               Print 1, CVar(Proc_6_52_EAD4F4("*DUPLICATE*", &HC))
  loc_1E29875:               var_9E = (var_9E + 1)
  loc_1E2988E:               var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E29894:               Print 1, CVar(Proc_6_45_EAD428("SNo", 3))
  loc_1E298A1:               ' Referenced from: 1E29A18
  loc_1E298B0:               If Not(var_D0.EOF) Then
  loc_1E29927:                 var_260 = Space(1)
  loc_1E2993B:                 var_1CC = var_D0.Fields
  loc_1E29943:                 var_240 = var_1CC.Item("qty")
  loc_1E29952:                 Proc_6_39_E7C810(var_2A8, CVar(var_240))
  loc_1E29995:                 var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(var_BA), 3)))
  loc_1E2999C:                 var_1FC = (Chr(&H12) + Space(1))
  loc_1E299A6:                 var_250 = (CVar(var_C4.Fields.Item("CardNo")) + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("ItemName").Value), &H1C)))
  loc_1E299AD:                 var_270 = (Space(1) + var_260)
  loc_1E299B7:                 var_30C = (CVar(Proc_6_52_EAD4F4("Qty", 6)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_2A8, "0.000")), 6, 1)))
  loc_1E299BD:                 Print 1, CVar(var_344)
  loc_1E29A01:                 var_D0.MoveNext
  loc_1E29A0C:                 var_9E = (var_9E + 1)
  loc_1E29A15:                 var_BA = (var_BA + 1)
  loc_1E29A18:                 GoTo loc_1E298A1
  loc_1E29A1B:               End If
  loc_1E29A1B:             End If
  loc_1E29A56:             var_17C = Replace(CStr(Space(&H27)), " ", "=", 1, -1, 0)
  loc_1E29A6F:             var_1DC = (Chr(&HF) + CVar("PARTICULARS"))
  loc_1E29A76:             var_20C = (Space(1) + Chr(&H12))
  loc_1E29A7C:             Print 1, var_D0.Fields.Item("ItemName").Value
  loc_1E29A9E:             var_9E = (var_9E + 1)
  loc_1E29AC3:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E29ACA:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E29AD0:             Print 1, Space(1)
  loc_1E29AE7:             var_9E = (var_9E + 1)
  loc_1E29B0C:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E29B13:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E29B19:             Print 1, Space(1)
  loc_1E29B30:             var_9E = (var_9E + 1)
  loc_1E29B55:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E29B5C:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E29B62:             Print 1, Space(1)
  loc_1E29B79:             var_9E = (var_9E + 1)
  loc_1E29B9E:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E29BA5:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E29BAB:             Print 1, Space(1)
  loc_1E29BC2:             var_9E = (var_9E + 1)
  loc_1E29BE7:             var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E29BEE:             var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E29BF4:             Print 1, Space(1)
  loc_1E29C0B:             var_9E = (var_9E + 1)
  loc_1E29C2E:             var_1B4 = (Chr(&H1B) + Chr(&H6D))
  loc_1E29C34:             Print 1, Chr(&H12)
  loc_1E29C45:             Close 1
  loc_1E29C80:             If (Proc_6_38_E68A98(CVar(var_CC.Fields.Item("Printer")), var_9E, var_9E, var_9E, var_9E, var_9E) <> vbNullString) Then
  loc_1E29CA8:               Open "C:\reptmp\TOKENPrint_" & CStr(var_CC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E29D06:               Print 1, CVar("TYPE C:\reptmp\TOKEN_" & CStr(var_CC.AbsolutePosition) & ".TXT>") & var_CC.Fields.Item("Printer").Value
  loc_1E29D26:             Else
  loc_1E29D4B:               Open "C:\reptmp\TOKENPrint_" & CStr(var_CC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E29D82:               Print 1, "TYPE C:\reptmp\TOKEN_" & CStr(var_CC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1E29D93:             End If
  loc_1E29D95:             Close 1
  loc_1E29D9F:             If (MemVar_1F923B8 <> "Y") Then
  loc_1E29DD1:               var_B0 = CVar(Shell(CVar("C:\reptmp\TOKENPrint_" & CStr(var_CC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1E29DDF:             End If
  loc_1E29DE2:             var_CC.MoveNext
  loc_1E29DE7:             GoTo loc_1E2908B
  loc_1E29DEA:           End If
  loc_1E29DEA:         End If
  loc_1E29DEA:       End If
  loc_1E29DEA:     End If
  loc_1E29DED:     var_C4.MoveNext
  loc_1E29DF2:     GoTo loc_1E249F3
  loc_1E29DF5:   End If
  loc_1E29DF7:   Close 1
  loc_1E29E00:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1E29E35:   var_1A4 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_6298CC.Fields.Item("Printer").Value 
  loc_1E29E3B:   Print 1, var_1A4
  loc_1E29E51:   Close 1
  loc_1E29E5B:   If (MemVar_1F923B8 = "Y") Then
  loc_1E29E77:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1E29E81:   Else
  loc_1E29E9A:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1E29EA7:     var_13E = (var_13E + 1)
  loc_1E29EC9:     var_174 = CVar(var_104.Fields.Item("NoOfBill")) 'Address
  loc_1E29ED0:     Proc_6_39_E7C810(var_1A4, var_174, var_13E, var_9E, var_BA)
  loc_1E29EEA:     If (var_1A4 > 1) Then
  loc_1E29EF3:       If (var_140 = 0) Then
  loc_1E29F1C:         unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_174, -1
  loc_1E29F2E:       End If
  loc_1E29F34:       If (var_140 = 0) Then
  loc_1E29F39:         var_140 = &HFF
  loc_1E29F3C:         GoTo loc_1E248FB
  loc_1E29F3F:       End If
  loc_1E29F6A:       Proc_6_39_E7C810(var_1A4, CVar(var_104.Fields.Item("NoOfBill")), var_13E, 2, var_140)
  loc_1E29F77:       var_1B4 = (var_1A4 - 1)
  loc_1E29F86:       For var_5A8 = var_9E To CInt(CVar("TYPE C:\reptmp\TOKEN_" & CStr(var_CC.AbsolutePosition) & ".TXT>") & var_CC.Fields.Item("Printer").Value):   var_180 = var_5A8 'Integer
  loc_1E29F96:         var_174 = "C:\reptmp\SBILL.BAT"
  loc_1E29FA5:         var_B0 = CVar(Shell(var_174, 0)) 'Variant
  loc_1E29FAF:       Next var_5A8 'Integer
  loc_1E29FB4:     End If
  loc_1E29FB4:   End If
  loc_1E29FB4:   GoTo loc_1E1DC9A
  loc_1E29FB7: End If
  loc_1E29FDD: unk_43FED1.Execute "Select DocId,OutletDocId,OutletCode from POS_SBill Where DocId='" & Me(12) & "'", var_174, -1
  loc_1E29FE8: Set var_F4 = var_104.Fields
  loc_1E2A007: var_F6 = CInt(var_F4.RecordCount)
  loc_1E2A00D: var_100 = CDbl(0)
  loc_1E2A024: Loop Until (var_F4.RecordCount > 0) 'do at: 1E1DC9A
  loc_1E2A029: Close 1
  loc_1E2A032: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1E2A039: var_F4.MoveFirst
  loc_1E2A03E: ' Referenced from: 1E2DB47
  loc_1E2A04D: Loop Until Not(var_F4.EOF) 'do at: 1E1DB4A
  loc_1E2A053: MemVar_1F923C0 = "N"
  loc_1E2A05A: MemVar_1F923C4 = "N"
  loc_1E2A061: MemVar_1F923C8 = "K"
  loc_1E2A09D: var_178 = Proc_6_38_E68A98(CVar(var_F4.Fields.Item("OutletCode")), "Select * from Depart Where Code='", var_1A4, -1)
  loc_1E2A0B1: unk_43FED1.Execute var_1CC & "Select DocId,OutletDocId,OutletCode from POS_SBill Where DocId='" & Me(12) & "'", var_100, var_F6
  loc_1E2A0BC: Set var_104 = var_1CC
  loc_1E2A0E3: var_1C8 = "select Min(Sale2.SNo1) as SNo1,max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (sale2 left join revmast on revmast.code=sale2.Taxcode) where  Sale2.DocID='"
  loc_1E2A129: unk_43FED1.Execute CStr(var_1C8 & var_F4.Fields.Item("OutletDocid").Value & "' group by revmast.code,TaxPer Order by Min(Sale2.SNo1),TaxPer"), Space(1), -1
  loc_1E2A134: Set var_10C = var_1CC
  loc_1E2A14E: var_1C8 = "Select Sale1.* ,S.CardNo,Case When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then IsNull(S.Name,'') Else '' End MemName,W.Name as WaiterName,Case When IsNull(Sale1.RoomType,'')='RO' Then RTrim(LTrim(IsNull(GP.ConPrefix,'')))+' '+RTrim(LTrim(IsNull(GP.Name,''))) When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then RTrim(LTrim(IsNull(S.Name,'')))+' - '+RTrim(LTrim(IsNull(S.CardNo,''))) Else IsNull(Sale1.Remark,'') End Remark1,S.NAME AS CompanyName,S.Add1 CompAdd1,S.Add2 CompAdd2,S.Add3 CompAdd3,CC.CityName CompCity,CS.ShortName CompStateCode,CS.Name CompState,S.GSTIN CompGSTIN From ((((((Sale1 left join waiter W on sale1.waiter=w.code) left join SubGroup S On Sale1.Party=S.SubCode) Left Join City CC On CC.CityCode=S.CityCode) Left Join State CS On CS.Code=CC.State) left join GuestFolio GF On Sale1.FolionoDocId=GF.DocId) left join GuestProf GP On GF.GuestProf=GP.Code) Where Sale1.DocID='"
  loc_1E2A18B: var_8C = CStr(var_1C8 & var_F4.Fields.Item("OutletDocid").Value & "'")
  loc_1E2A1A5: var_1A4 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='") 'String
  loc_1E2A1E0: var_90 = CStr(var_1A4 & var_F4.Fields.Item("OutletDocid").Value & "' GROUP BY S.ITEM,S.RATE,S.Remarks ORDER BY MAX(I.NAME) ")
  loc_1E2A229: var_1B4 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_F4.Fields.Item("OutletDocid").Value 
  loc_1E2A237: var_94 = CStr(var_1B4 & "' order by sno ")
  loc_1E2A253: var_1A4 = CVar("SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item And S.ItemRestCode=I.RestCode) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='") 'String
  loc_1E2A268: var_180 = var_F4.Fields
  loc_1E2A278: var_174 = var_180.Item("OutletDocid").Value
  loc_1E2A289: var_1DC = var_1A4 & var_174 & "' ORDER BY I.Kitchen" 
  loc_1E2A28E: var_98 = CStr(var_1DC)
  loc_1E2A2AB: If (var_8C = vbNullString) Then
  loc_1E2A2AE:   Exit Sub
  loc_1E2A2AF: End If
  loc_1E2A2B7: If (var_90 = vbNullString) Then
  loc_1E2A2BA:   Exit Sub
  loc_1E2A2BB: End If
  loc_1E2A2C3: If (var_94 = vbNullString) Then
  loc_1E2A2C6:   Exit Sub
  loc_1E2A2C7: End If
  loc_1E2A2DD: unk_43FED1.Execute var_8C, var_174, -1
  loc_1E2A2E8: Set var_C4 = var_180
  loc_1E2A307: unk_43FED1.Execute var_90, var_174, -1
  loc_1E2A312: Set var_D4 = var_180
  loc_1E2A331: unk_43FED1.Execute var_94, var_174, -1
  loc_1E2A33C: Set var_D8 = var_180
  loc_1E2A35B: unk_43FED1.Execute var_98, var_174, -1
  loc_1E2A366: Set var_CC = var_180
  loc_1E2A36F: ' Referenced from: 1E2D986
  loc_1E2A37E: Loop Until Not(var_C4.EOF) 'do at: 1E1D989
  loc_1E2A3AF: var_E4 = Replace(CStr(Space(&H27)), " ", "-", 1, -1, 0)
  loc_1E2A3C7: var_180 = var_C4.Fields
  loc_1E2A3F1: If (Proc_6_38_E68A98(CVar(var_180.Item("Printed")), var_180, var_180, var_180) <> "Y") Then
  loc_1E2A3F7:   var_23C = 0
  loc_1E2A424:   var_180 = var_104.Fields
  loc_1E2A453:   unk_43FED1.Execute CStr("SELECT TOKENPrint FROM Depart where Code='" & var_180.Item("Code").Value & "'"), var_1DC, -1
  loc_1E2A45B:   var_1CC = var_1CC.Fields
  loc_1E2A463:   var_23C = var_240.Item(var_240)
  loc_1E2A49B:   If (Proc_6_38_E68A98(CVar(var_284), var_284, var_180) = "Yes") Then
  loc_1E2A4B2:     If (var_CC.RecordCount > 0) Then
  loc_1E2A4B5:       ' Referenced from: 1E2AD22
  loc_1E2A4C4:       If Not(var_CC.EOF) Then
  loc_1E2A4C9:         var_BA = 1
  loc_1E2A4E0:         var_1A4 = CVar("Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,SUM(S.Amount) AS AMT,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='") 'String
  loc_1E2A54D:         var_22C = var_1A4 & var_C4.Fields.Item("DocID").Value & "' AND I.Kitchen='" & var_CC.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)" 
  loc_1E2A55B:         unk_43FED1.Execute CStr(var_22C), Space(1), -1
  loc_1E2A566:         Set var_D0 = var_284
  loc_1E2A5A0:         If (var_D0.RecordCount > 0) Then
  loc_1E2A5F0:           Print 1, Proc_260_1_10A5350(CStr(var_CC.Fields.Item("Department").Value), "D", &H26, var_284)
  loc_1E2A692:           Proc_6_39_E7C810(var_260, CVar(var_C4.Fields.Item("VNo")))
  loc_1E2A6C8:           var_190 = Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("vType")), var_BA) & "/" & MemVar_1F92168 & "/") & var_260), &H14)
  loc_1E2A6E0:           var_1A4 = (Chr(&HF) + "Bill No.: ")
  loc_1E2A6E7:           var_20C = (var_1A4 + IIf((MemVar_1F92164 <> vbNullString), CVar(MemVar_1F92164 & "/"), vbNullString))
  loc_1E2A6F4:           var_2EC = (CVar(var_190) + Chr(&H12))
  loc_1E2A6F8:           var_2FC = var_1A4 & var_C4.Fields.Item("DocID").Value & "' AND I.Kitchen='" & var_CC.Fields.Item("Kitchen").Value & Format(Chr(&H12), "0.000") 
  loc_1E2A6FE:           Print 1, var_2FC
  loc_1E2A743:           var_9E = (var_9E + 1)
  loc_1E2A7AE:           var_1CC = var_C4.Fields
  loc_1E2A7F3:           var_1A4 = (Chr(&HF) + "Date    : ")
  loc_1E2A7FD:           var_1FC = (var_1A4 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VDate")), var_9E), &HF)))
  loc_1E2A804:           var_22C = (IIf((MemVar_1F92164 <> vbNullString), CVar(MemVar_1F92164 & "/"), vbNullString) + Space(2))
  loc_1E2A80D:           var_250 = (CVar(var_C4.Fields.Item("vType")) + "Time : ")
  loc_1E2A817:           var_280 = (CVar(var_C4.Fields.Item("VNo")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_1CC.Item("VTIME")), var_1CC), 5)))
  loc_1E2A81E:           var_2CC = (CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("vType")), var_BA) & "/" & MemVar_1F92168 & "/") & CVar(var_1CC.Item("VTIME")) + Chr(&H12))
  loc_1E2A824:           Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_1CC.Item("VTIME")), var_1CC), 5))
  loc_1E2A863:           var_9E = (var_9E + 1)
  loc_1E2A8D7:           var_2A8 = Chr(&H12)
  loc_1E2A8E5:           var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EAD428("SNo", 3)))
  loc_1E2A8EC:           var_1FC = (CVar(var_C4.Fields.Item("VDate")) + Space(1))
  loc_1E2A8F6:           var_22C = (IIf((MemVar_1F92164 <> vbNullString), CVar(MemVar_1F92164 & "/"), vbNullString) + CVar(Proc_6_45_EAD428("PARTICULARS", &H1C)))
  loc_1E2A8FD:           var_260 = (CVar(var_C4.Fields.Item("vType")) + Space(1))
  loc_1E2A907:           var_280 = (CVar(var_1CC.Item("VTIME")) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1E2A90E:           var_2CC = (CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("vType")), var_BA) & "/" & MemVar_1F92168 & "/") & CVar(var_1CC.Item("VTIME")) + var_2A8)
  loc_1E2A914:           Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1E2A94C:           var_9E = (var_9E + 1)
  loc_1E2A965:           var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2A96B:           Print 1, CVar(Proc_6_45_EAD428("SNo", 3))
  loc_1E2A978:           ' Referenced from: 1E2AAEF
  loc_1E2A987:           If Not(var_D0.EOF) Then
  loc_1E2AA29:             Proc_6_39_E7C810(var_2A8, CVar(var_D0.Fields.Item("qty")))
  loc_1E2AA6C:             var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(var_BA), 3, var_9E)))
  loc_1E2AA73:             var_1FC = (CVar(var_C4.Fields.Item("VDate")) + Space(1))
  loc_1E2AA7D:             var_250 = (IIf((MemVar_1F92164 <> vbNullString), CVar(MemVar_1F92164 & "/"), vbNullString) + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("ItemName").Value), &H1C)))
  loc_1E2AA84:             var_270 = (Space(1) + Space(1))
  loc_1E2AA8E:             var_30C = (CVar(Proc_6_52_EAD4F4("Qty", 6)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_2A8, "0.00")), 6, 1)))
  loc_1E2AA94:             Print 1, CVar(var_344)
  loc_1E2AAD8:             var_D0.MoveNext
  loc_1E2AAE3:             var_9E = (var_9E + 1)
  loc_1E2AAEC:             var_BA = (var_BA + 1)
  loc_1E2AAEF:             GoTo loc_1E2A978
  loc_1E2AAF2:           End If
  loc_1E2AAF2:         End If
  loc_1E2AAF5:         var_CC.MoveNext
  loc_1E2AB35:         var_17C = Replace(CStr(Space(&H27)), " ", "=", 1, -1, 0)
  loc_1E2AB4E:         var_1DC = (Chr(&HF) + CVar("PARTICULARS"))
  loc_1E2AB55:         var_20C = (Space(1) + Chr(&H12))
  loc_1E2AB5B:         Print 1, var_D0.Fields.Item("ItemName").Value
  loc_1E2AB7D:         var_9E = (var_9E + 1)
  loc_1E2ABA2:         var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2ABA9:         var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E2ABAF:         Print 1, Space(1)
  loc_1E2ABC6:         var_9E = (var_9E + 1)
  loc_1E2ABEB:         var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2ABF2:         var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E2ABF8:         Print 1, Space(1)
  loc_1E2AC0F:         var_9E = (var_9E + 1)
  loc_1E2AC34:         var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2AC3B:         var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E2AC41:         Print 1, Space(1)
  loc_1E2AC58:         var_9E = (var_9E + 1)
  loc_1E2AC7D:         var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2AC84:         var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E2AC8A:         Print 1, Space(1)
  loc_1E2ACA1:         var_9E = (var_9E + 1)
  loc_1E2ACC6:         var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2ACCD:         var_1DC = (Space(&H27) + Chr(&H12))
  loc_1E2ACD3:         Print 1, Space(1)
  loc_1E2ACEA:         var_9E = (var_9E + 1)
  loc_1E2AD0D:         var_1B4 = (Chr(&H1B) + Chr(&H6D))
  loc_1E2AD13:         Print 1, Chr(&H12)
  loc_1E2AD22:         GoTo loc_1E2A4B5
  loc_1E2AD25:       End If
  loc_1E2AD25:     End If
  loc_1E2AD25:   End If
  loc_1E2AD25: End If
  loc_1E2AD27: var_9E = 0
  loc_1E2AD2C: var_A0 = 1
  loc_1E2AD44: If ((Me(4) = "Restaurant") Or (Me(4) = "Hall")) Then
  loc_1E2AD55:   var_9C = "** " & "BILL" & " **"
  loc_1E2AD5E: Else
  loc_1E2AD86:   var_9C = Proc_6_38_E68A98(CVar(var_104.Fields.Item("Name")), var_A0, var_9E, var_9E, var_9E, var_9E, var_9E)
  loc_1E2AD8F: End If
  loc_1E2AD95: Loop Until (var_9E = 0) 'do at: 1E1D97E
  loc_1E2ADC6: var_E4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1E2ADFD: var_E8 = Replace(CStr(Space(9)), " ", "-", 1, -1, 0)
  loc_1E2AE3F: If (Proc_6_38_E68A98(CVar(var_104.Fields.Item("CstNo")), var_9E, var_9E, var_BA) <> vbNullString) Then
  loc_1E2AEA4:   var_1DC = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104.Fields.Item("CstNo")), var_9E), &H1E)))
  loc_1E2AEAB:   var_20C = (Space(1) + Chr(&H12))
  loc_1E2AEB1:   Print 1, var_D0.Fields.Item("ItemName").Value
  loc_1E2AED8:   var_9E = (var_9E + 1)
  loc_1E2AEDB: End If
  loc_1E2AF14: If (Proc_6_38_E68A98(CVar(var_104.Fields.Item("LstNo")), var_9E) <> vbNullString) Then
  loc_1E2AF79:   var_1DC = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104.Fields.Item("LstNo")), 1), &H1E)))
  loc_1E2AF80:   var_20C = (Space(1) + Chr(&H12))
  loc_1E2AF86:   Print 1, var_D0.Fields.Item("ItemName").Value
  loc_1E2AFAD:   var_9E = (var_9E + 1)
  loc_1E2AFB0: End If
  loc_1E2AFCF: var_174 = CVar(var_F4.Fields.Item("OutletCode")) 'Address
  loc_1E2AFEC: var_9E = Proc_260_3_1370210(var_A0, var_9E, &H26)
  loc_1E2B017: var_174 = CVar(var_104.Fields.Item("OutletTitle")) 'Address
  loc_1E2B06E: If (Proc_6_38_E68A98(var_174, var_9E) Or (Proc_6_38_E68A98(CVar(var_104.Fields.Item("OutletTitle")), (Proc_6_38_E68A98(var_174, var_9E) = "Y")) = vbNullString)) Then
  loc_1E2B0A0:   var_1B4 = (CVar(Proc_260_1_10A5350(var_9C, "D")) + Chr(&H12))
  loc_1E2B0A6:   Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104.Fields.Item("LstNo")), 1), &H1E))
  loc_1E2B0BC: End If
  loc_1E2B0D4: If (Proc_6_38_E68A98(MemVar_1F92140, &H26) <> vbNullString) Then
  loc_1E2B0EB:   var_EC = var_9E & Proc_6_38_E68A98(MemVar_1F92140, "PHONE NO.")
  loc_1E2B11A:   var_1DC = (38 - Len(Trim(var_EC)))
  loc_1E2B14D:   var_280 = (38 - Len(Trim(var_EC)))
  loc_1E2B177:   var_22C = (Chr(&HF) + Space(CLng((Space(1) / 2))))
  loc_1E2B181:   var_250 = (CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("ItemName").Value), &H1C)) + CVar(var_EC))
  loc_1E2B188:   var_2EC = (Space(1) + Space(CLng((CVar(var_D0.Fields.Item("qty")) / 2))))
  loc_1E2B18F:   var_30C = (Format((CVar(var_D0.Fields.Item("qty")) / 2), "0.00") + Chr(&H12))
  loc_1E2B195:   Print 1, CVar(var_344)
  loc_1E2B1B8:   var_9E = (var_9E + 1)
  loc_1E2B1BB: End If
  loc_1E2B1DD: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2B1E4: var_1DC = (Trim(var_EC) + Chr(&H12))
  loc_1E2B1EA: Print 1, Space(1)
  loc_1E2B201: var_9E = (var_9E + 1)
  loc_1E2B23D: If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CardNo")), var_9E) <> vbNullString) Then
  loc_1E2B2A1:   var_1A4 = (Chr(&HF) + "Membership No.: ")
  loc_1E2B2AB:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CardNo"))), &H1E)))
  loc_1E2B2B2:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2B2B8:   Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2B2E1:   var_9E = (var_9E + 1)
  loc_1E2B2E4: End If
  loc_1E2B31D: If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("MemName")), var_9E) <> vbNullString) Then
  loc_1E2B381:   var_1A4 = (Chr(&HF) + "Member : ")
  loc_1E2B38B:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("MemName"))), &H1E)))
  loc_1E2B392:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2B398:   Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2B3C1:   var_9E = (var_9E + 1)
  loc_1E2B3C4: End If
  loc_1E2B3FD: If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("PhoneNo")), var_9E) <> vbNullString) Then
  loc_1E2B461:   var_1A4 = (Chr(&HF) + "Phone No: ")
  loc_1E2B46B:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("PhoneNo"))), &H1E)))
  loc_1E2B472:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2B478:   Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2B4A1:   var_9E = (var_9E + 1)
  loc_1E2B4A4: End If
  loc_1E2B4DD: If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CustName")), var_9E) <> vbNullString) Then
  loc_1E2B541:   var_1A4 = (Chr(&HF) + "Customer: ")
  loc_1E2B54B:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CustName"))), &H1E)))
  loc_1E2B552:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2B558:   Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2B581:   var_9E = (var_9E + 1)
  loc_1E2B584: End If
  loc_1E2B5BD: If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Addr1")), var_9E) <> vbNullString) Then
  loc_1E2B621:   var_1A4 = (Chr(&HF) + "Address1: ")
  loc_1E2B62B:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Addr1"))), &H1E)))
  loc_1E2B632:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2B638:   Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2B661:   var_9E = (var_9E + 1)
  loc_1E2B664: End If
  loc_1E2B69D: If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Addr2")), var_9E) <> vbNullString) Then
  loc_1E2B701:   var_1A4 = (Chr(&HF) + "Address2: ")
  loc_1E2B70B:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Addr2"))), &H1E)))
  loc_1E2B712:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2B718:   Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2B741:   var_9E = (var_9E + 1)
  loc_1E2B744: End If
  loc_1E2B77D: If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompanyName")), var_9E) <> vbNullString) Then
  loc_1E2B7A3:   var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2B7AA:   var_1DC = (Trim(var_EC) + Chr(&H12))
  loc_1E2B7B0:   Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Addr2"))), &H1E))
  loc_1E2B7C7:   var_9E = (var_9E + 1)
  loc_1E2B7CA: End If
  loc_1E2B803: If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompanyName")), var_9E) <> vbNullString) Then
  loc_1E2B867:   var_1A4 = (Chr(&HF) + "Company : ")
  loc_1E2B871:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompanyName"))), &H1E)))
  loc_1E2B878:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2B87E:   Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2B8A7:   var_9E = (var_9E + 1)
  loc_1E2B8AA: End If
  loc_1E2B8E3: If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompAdd1")), var_9E) <> vbNullString) Then
  loc_1E2B947:   var_1A4 = (Chr(&HF) + "Address1: ")
  loc_1E2B951:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompAdd1"))), &H1E)))
  loc_1E2B958:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2B95E:   Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2B987:   var_9E = (var_9E + 1)
  loc_1E2B98A: End If
  loc_1E2B9C3: If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompAdd2")), var_9E) <> vbNullString) Then
  loc_1E2BA27:   var_1A4 = (Chr(&HF) + "Address2: ")
  loc_1E2BA31:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompAdd2"))), &H1E)))
  loc_1E2BA38:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2BA3E:   Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2BA67:   var_9E = (var_9E + 1)
  loc_1E2BA6A: End If
  loc_1E2BAA3: If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompAdd3")), var_9E) <> vbNullString) Then
  loc_1E2BB07:   var_1A4 = (Chr(&HF) + "Address3: ")
  loc_1E2BB11:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompAdd3"))), &H1E)))
  loc_1E2BB18:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2BB1E:   Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2BB47:   var_9E = (var_9E + 1)
  loc_1E2BB4A: End If
  loc_1E2BB83: If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompCity")), var_9E) <> vbNullString) Then
  loc_1E2BBE7:   var_1A4 = (Chr(&HF) + "City    : ")
  loc_1E2BBF1:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompCity"))), &H1E)))
  loc_1E2BBF8:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2BBFE:   Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("ItemName").Value), &H1C))
  loc_1E2BC27:   var_9E = (var_9E + 1)
  loc_1E2BC2A: End If
  loc_1E2BC63: If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompStateCode")), var_9E) <> vbNullString) Then
  loc_1E2BCF9:   var_260 = Chr(&H12)
  loc_1E2BD06:   var_1A4 = (Chr(&HF) + "State   : ")
  loc_1E2BD10:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompStateCode"))), 3)))
  loc_1E2BD1A:   var_250 = ((Space(1) / 2) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompState"))), &H1B)))
  loc_1E2BD21:   var_270 = (Space(1) + var_260)
  loc_1E2BD27:   Print 1, Len(Trim(var_EC))
  loc_1E2BD60:   var_9E = (var_9E + 1)
  loc_1E2BD63: End If
  loc_1E2BD9C: If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompGSTIN")), var_9E) <> vbNullString) Then
  loc_1E2BE00:   var_1A4 = (Chr(&HF) + "GSTIN   : ")
  loc_1E2BE0A:   var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompGSTIN"))), &H1E)))
  loc_1E2BE11:   var_22C = ((Space(1) / 2) + Chr(&H12))
  loc_1E2BE17:   Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompState"))), &H1B))
  loc_1E2BE40:   var_9E = (var_9E + 1)
  loc_1E2BE43: End If
  loc_1E2BE59: var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2BE5F: Print 1, Trim(var_EC)
  loc_1E2BEF3: Proc_6_39_E7C810(var_260, CVar(var_C4.Fields.Item("VNo")))
  loc_1E2BF29: var_434 = Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") & var_260), &H14)
  loc_1E2BF5A: var_2EC = Trim(CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("RoomNo")))))
  loc_1E2C004: var_3C8 = IIf((Me(4) = "Outlet"), CVar("Table No.: " & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("RoomNo")))), IIf((Me(4) = "Room Service"), CVar("Room No. : " & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("RoomNo")))), vbNullString))
  loc_1E2C05D: var_1A4 = (Chr(&HF) + "Bill No.  : ")
  loc_1E2C064: var_20C = (Trim(var_EC) + IIf((MemVar_1F92164 <> vbNullString), CVar(MemVar_1F92164 & "/"), vbNullString))
  loc_1E2C07B: var_480 = (CVar(var_434 & Proc_6_45_EAD428(CStr(IIf((var_2EC = "."), vbNullString, var_3C8)), &HF)) + Chr(&H12))
  loc_1E2C085: Print 1, Chr(&H12) & CVar("Room : " & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("RoomNo"))))
  loc_1E2C0FE: var_9E = (var_9E + 1)
  loc_1E2C1A1: var_1A4 = (Chr(&HF) + "Bill Date : ")
  loc_1E2C1AB: var_1FC = (Trim(var_EC) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VDate")), var_9E), &HC)))
  loc_1E2C1B4: var_20C = (IIf((MemVar_1F92164 <> vbNullString), CVar(MemVar_1F92164 & "/"), vbNullString) + "Time : ")
  loc_1E2C1BE: var_260 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VTIME"))), 9)))
  loc_1E2C1C5: var_280 = (var_260 + Chr(&H12))
  loc_1E2C1CB: Print 1, CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") & var_260
  loc_1E2C206: var_9E = (var_9E + 1)
  loc_1E2C214: If (var_590 = "Y") Then
  loc_1E2C27F:   var_20C = CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo")), (Trim(CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo")), var_9E))) = "0"))) 'String
  loc_1E2C2B7:   If CBool(Not var_9E Or (Trim(var_20C) = vbNullString)) Then
  loc_1E2C31B:     var_1A4 = (Chr(&HF) + "Order No. : ")
  loc_1E2C325:     var_1FC = (CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo")), var_9E)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo"))))))
  loc_1E2C32C:     var_22C = (CVar(var_C4.Fields.Item("KOTNo")) + Chr(&H12))
  loc_1E2C332:     Print 1, Trim(Chr(&H12))
  loc_1E2C35B:     var_9E = (var_9E + 1)
  loc_1E2C35E:   End If
  loc_1E2C366:   If (var_13C <> vbNullString) Then
  loc_1E2C39B:     var_1A4 = (Chr(&HF) + "Party Name: ")
  loc_1E2C3A5:     var_1DC = (CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo")), var_9E)) + CVar(Proc_6_45_EAD428(var_13C, &H1C)))
  loc_1E2C3AC:     var_20C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo"))))) + Chr(&H12))
  loc_1E2C3B2:     Print 1, Chr(&H12)
  loc_1E2C3D0:     var_9E = (var_9E + 1)
  loc_1E2C3D3:   End If
  loc_1E2C3D3: End If
  loc_1E2C432: If CBool((Trim(CVar(Proc_6_38_E68A98(CVar(var_104.Fields.Item("KotYN")), var_9E))) = "Y") And (var_590 <> "Y")) Then
  loc_1E2C496:   var_1A4 = (Chr(&HF) + "KOT No.   : ")
  loc_1E2C4A0:   var_1FC = (CVar(Proc_6_38_E68A98(CVar(var_104.Fields.Item("KotYN")), var_9E)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo")), var_9E), &H1C)))
  loc_1E2C4A7:   var_22C = (Chr(&H12) + Chr(&H12))
  loc_1E2C4AD:   Print 1, Trim(Chr(&H12))
  loc_1E2C4D6:   var_9E = (var_9E + 1)
  loc_1E2C4D9: End If
  loc_1E2C4FC: var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2C503: var_1DC = (CVar(Proc_6_38_E68A98(CVar(var_104.Fields.Item("KotYN")), var_9E)) + Chr(&H12))
  loc_1E2C509: Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo")), var_9E), &H1C))
  loc_1E2C520: var_9E = (var_9E + 1)
  loc_1E2C549: var_1B4 = (CVar(Proc_6_45_EAD428("Particulars", &H10, var_9E)) + Space(1))
  loc_1E2C563: var_1FC = (var_9E + CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))))
  loc_1E2C56F: var_20C = Space(1)
  loc_1E2C577: var_22C = (Chr(&H12) + var_20C)
  loc_1E2C591: var_260 = (Trim(var_20C) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1E2C5A5: var_280 = (var_9E Or (Trim(var_20C) = vbNullString) + Space(1))
  loc_1E2C5BF: var_2CC = (CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("vType")), var_9E) & "/" & MemVar_1F92168 & "/") & var_9E Or (Trim(var_20C) = vbNullString) + CVar(Proc_6_52_EAD4F4("Amount", 9)))
  loc_1E2C612: var_1A4 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("RoomNo")))))))
  loc_1E2C619: var_1DC = (CVar(Proc_6_45_EAD428("Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1E2C61F: Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1E2C636: var_9E = (var_9E + 1)
  loc_1E2C65C: var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2C663: var_1DC = (CVar(Proc_6_45_EAD428("Particulars", &H10, var_9E)) + Chr(&H12))
  loc_1E2C669: Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1E2C680: var_9E = (var_9E + 1)
  loc_1E2C685: var_BA = 1
  loc_1E2C68B: var_D4.MoveFirst
  loc_1E2C690: ' Referenced from: 1E2C934
  loc_1E2C69F: Loop Until Not(var_D4.EOF) 'do at: 1E1C937
  loc_1E2C6EF: Proc_6_39_E7C810(var_20C, CVar(var_D4.Fields.Item("Rate")), var_BA)
  loc_1E2C70F: var_250 = Format(var_20C, "0.00")
  loc_1E2C73A: Proc_6_39_E7C810(var_2EC, CVar(var_D4.Fields.Item("qty")), 1, 1)
  loc_1E2C785: Proc_6_39_E7C810(var_3C8, CVar(var_D4.Fields.Item("Amt")), 1, 1)
  loc_1E2C799: var_3D8 = "0.00"
  loc_1E2C7CF: var_1DC = (CVar(Proc_6_45_EAD428(CStr(var_D4.Fields.Item("ItemName").Value), &H10, 1, 1)) + Space(1))
  loc_1E2C7E8: var_270 = (var_9E + CVar(Proc_6_52_EAD4F4(CStr(var_250), 6, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))))))
  loc_1E2C7FC: var_2A8 = (Space(1) + Space(1))
  loc_1E2C815: var_32C = (var_9E + CVar(Proc_6_52_EAD4F4(CStr(Format(var_2EC, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_1E2C829: var_390 = (CVar("Room No. : " & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("RoomNo")))) + Space(1))
  loc_1E2C842: var_430 = (IIf((Me(4) = "Room Service"), CVar("Room No. : " & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("RoomNo")))), vbNullString) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_3C8, var_3D8)), 9)))
  loc_1E2C8BC: var_1A4 = (Chr(&HF) + CVar(CStr(Chr(&H12))))
  loc_1E2C8C3: var_1DC = (Space(1) + Chr(&H12))
  loc_1E2C8C9: Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1E2C907: Proc_6_39_E7C810(Space(1), CVar(var_D4.Fields.Item("Amt")))
  loc_1E2C90F: var_1B4 = (CVar(var_E0) + Space(1))
  loc_1E2C914: var_E0 = CSng(Chr(&H12))
  loc_1E2C929: var_BA = (var_BA + 1)
  loc_1E2C92F: var_D4.MoveNext
  loc_1E2C934: GoTo loc_1E2C690
  loc_1E2C964: var_1B4 = (Chr(&HF) + Space(&H1F))
  loc_1E2C96E: var_1DC = (Chr(&H12) + CVar(var_E8))
  loc_1E2C975: var_20C = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_1E2C97B: Print 1, var_20C
  loc_1E2C996: var_9E = (var_9E + 1)
  loc_1E2C99C: var_D8.MoveFirst
  loc_1E2C9B0: Loop Until Not(var_D8.EOF) 'do at: 1E1CF19
  loc_1E2C9DD: var_5B8 = var_D8.Fields.Item("SunCode").Value 'Variant
  loc_1E2C9FB: Loop Until (var_5B8 = CVar(MemVar_1F92078 & "ROFF")) 'do at: 1E1CB42
  loc_1E2CA4B: Proc_6_39_E7C810(var_250, CVar(var_D8.Fields.Item("Amount")), var_9E)
  loc_1E2CA95: var_1DC = (1 + CVar(Proc_6_45_EAD428(CStr(var_D8.Fields.Item("DispName").Value), &HC, Space(&H12), 1)))
  loc_1E2CAA9: var_20C = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Space(1))
  loc_1E2CAC2: var_2A8 = (var_BA + CVar(Proc_6_52_EAD4F4(CStr(Format(var_250, "0.00")), 9, var_20C)))
  loc_1E2CB18: var_1A4 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_1E2CB1F: var_1DC = (var_D8.Fields.Item("DispName").Value + Chr(&H12))
  loc_1E2CB25: Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1E2CB3C: var_9E = (var_9E + 1)
  loc_1E2CB3F: GoTo loc_1E1CF0E
  loc_1E2CB55: Loop Until (var_5B8 = CVar(MemVar_1F92078 & "NET")) 'do at: 1E1CD8A
  loc_1E2CB85: var_1B4 = (Chr(&HF) + Space(&H1F))
  loc_1E2CB8F: var_1DC = (Chr(&H12) + CVar(var_E8))
  loc_1E2CB96: var_20C = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Chr(&H12))
  loc_1E2CB9C: Print 1, var_20C
  loc_1E2CBB7: var_9E = (var_9E + 1)
  loc_1E2CBDC: var_1A4 = var_D8.Fields.Item("DispName").Value
  loc_1E2CC07: Proc_6_39_E7C810(var_250, CVar(var_D8.Fields.Item("Amount")), var_9E)
  loc_1E2CC51: var_1DC = (1 + CVar(Proc_6_45_EAD428(CStr(var_1A4), &HC, Space(&H12), 1)))
  loc_1E2CC65: var_20C = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Space(1))
  loc_1E2CC7E: var_2A8 = (var_9E + CVar(Proc_6_52_EAD4F4(CStr(Format(var_250, "0.00")), 9, var_20C)))
  loc_1E2CCD7: Proc_6_39_E7C810(var_1A4, CVar(var_D8.Fields.Item("Amount")))
  loc_1E2CCF1: Loop Until (var_1A4 > 0) 'do at: 1E1CD3E
  loc_1E2CD17: var_1A4 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_1E2CD1E: var_1DC = (var_1A4 + Chr(&H12))
  loc_1E2CD24: Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1E2CD3B: var_9E = (var_9E + 1)
  loc_1E2CD6B: Proc_6_39_E7C810(var_1A4, CVar(var_D8.Fields.Item("Amount")), CVar(var_100))
  loc_1E2CD73: var_1B4 = (var_9E + var_1A4)
  loc_1E2CD78: var_100 = CSng(Chr(&H12))
  loc_1E2CD87: GoTo loc_1E1CF0E
  loc_1E2CDAC: var_1A4 = var_D8.Fields.Item("DispName").Value
  loc_1E2CDD7: Proc_6_39_E7C810(var_250, CVar(var_D8.Fields.Item("Amount")), var_100)
  loc_1E2CDEB: var_260 = "0.00"
  loc_1E2CE21: var_1DC = (1 + CVar(Proc_6_45_EAD428(CStr(var_1A4), &HC, Space(&H12), 1)))
  loc_1E2CE35: var_20C = (CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12))) + Space(1))
  loc_1E2CE4E: var_2A8 = (var_E0 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_250, var_260)), 9, var_20C)))
  loc_1E2CEA7: Proc_6_39_E7C810(var_1A4, CVar(var_D8.Fields.Item("Amount")))
  loc_1E2CEC1: Loop Until (var_1A4 > 0) 'do at: 1E1CF0E
  loc_1E2CEE7: var_1A4 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_52_EAD4F4("Amount", 9)))))
  loc_1E2CEEE: var_1DC = (var_1A4 + Chr(&H12))
  loc_1E2CEF4: Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1E2CF0B: var_9E = (var_9E + 1)
  loc_1E2CF11: var_D8.MoveNext
  loc_1E2CF16: GoTo loc_1E1C9A1
  loc_1E2CF3C: var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2CF43: var_1DC = (var_1A4 + Chr(&H12))
  loc_1E2CF49: Print 1, CVar(Proc_6_52_EAD4F4("Rate", 6, Chr(&H12)))
  loc_1E2CF60: var_9E = (var_9E + 1)
  loc_1E2CF77: Loop Until (var_10C.RecordCount > 0) 'do at: 1E1D20E
  loc_1E2CF7D: var_10C.MoveFirst
  loc_1E2CF91: Loop Until Not(var_10C.EOF) 'do at: 1E1D1C4
  loc_1E2D015: Proc_6_39_E7C810(var_260, CVar(var_10C.Fields.Item("TaxPer")))
  loc_1E2D040: Proc_6_39_E7C810(var_2EC, CVar(var_10C.Fields.Item("TaxableAmt")))
  loc_1E2D08B: Proc_6_39_E7C810(var_3D8, CVar(var_10C.Fields.Item("TaxAmt")), 1)
  loc_1E2D0BB: var_22C = (Trim(Left(Ucase(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E))), &HE)) + Space(1))
  loc_1E2D0C7: var_280 = (CVar(var_D8.Fields.Item("Amount")) + CVar(CStr(var_260)))
  loc_1E2D0D0: var_2A8 = (CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(var_10C.Fields.Item("TaxPer")), var_260)), 9, Space(1))) + "% On (")
  loc_1E2D0D7: var_31C = (CVar(Proc_6_52_EAD4F4("Amount", 9)) + Format(var_2EC, "0.00"))
  loc_1E2D0E0: var_32C = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_2EC, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Amount", 9)))) + ")")
  loc_1E2D101: var_3A0 = (CVar(Proc_6_45_EAD428(CStr(CVar("Room No. : " & Proc_6_38_E68A98(CVar(var_C4.Fields.Item("RoomNo"))))), &H20, 1, 1)) + Space(1))
  loc_1E2D11A: var_45C = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_3D8, "0.00")), 7, CVar(var_D4.Fields.Item("Amt")))))
  loc_1E2D18F: var_164 = CVar(CStr(CVar(var_434 & Proc_6_45_EAD428(CStr(IIf((var_2EC = "."), vbNullString, CVar(var_10C.Fields.Item("TaxAmt")))), &HF)))) 'String
  loc_1E2D192: var_1A4 = (Chr(&HF) + var_164)
  loc_1E2D199: var_1DC = (CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E)) + Chr(&H12))
  loc_1E2D19F: Print 1, Left(Ucase(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E))), &HE)
  loc_1E2D1B6: var_9E = (var_9E + 1)
  loc_1E2D1BC: var_10C.MoveNext
  loc_1E2D1C1: GoTo loc_1E1CF82
  loc_1E2D1E7: var_1A4 = (Chr(&HF) + CVar(var_E4))
  loc_1E2D1EE: var_1DC = (CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E)) + Chr(&H12))
  loc_1E2D1F4: Print 1, Left(Ucase(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E))), &HE)
  loc_1E2D20B: var_9E = (var_9E + 1)
  loc_1E2D24A: Loop Until CBool(var_C4.Fields.Item("WaiterName").Value <> vbNullString) 'do at: 1E1D2F1
  loc_1E2D2AE: var_1A4 = (Chr(&HF) + "Steward Name  : ")
  loc_1E2D2B8: var_1FC = (CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("WaiterName")), var_9E, var_9E), &H14)))
  loc_1E2D2BF: var_22C = (Trim(Left(Ucase(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("TaxName")), var_9E))), &HE)) + Chr(&H12))
  loc_1E2D2C5: Print 1, CVar(var_D8.Fields.Item("Amount"))
  loc_1E2D2EE: var_9E = (var_9E + 1)
  loc_1E2D33B: Loop Until (Ucase(CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("U_Name")), var_9E))) = "HTW_SYSTEM") 'do at: 1E1D3A2
  loc_1E2D36B: var_1B4 = (Chr(&HF) + Space(&H1E))
  loc_1E2D374: var_1DC = (Ucase(CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("U_Name")), var_9E))) + "[E.& O.E.]")
  loc_1E2D37B: var_20C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("WaiterName")), var_9E, var_9E), &H14)) + Chr(&H12))
  loc_1E2D381: Print 1, Chr(&H12)
  loc_1E2D39C: var_9E = (var_9E + 1)
  loc_1E2D39F: GoTo loc_1E1D451
  loc_1E2D403: var_1A4 = (Chr(&HF) + "User Name     : ")
  loc_1E2D40D: var_1FC = (Space(&H1E) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("U_Name")), var_9E), &HE)))
  loc_1E2D416: var_20C = (Chr(&H12) + "[E.& O.E.]")
  loc_1E2D41D: var_250 = (Chr(&H12) + Chr(&H12))
  loc_1E2D423: Print 1, CVar(var_10C.Fields.Item("TaxPer"))
  loc_1E2D44E: var_9E = (var_9E + 1)
  loc_1E2D456: Print 1, vbNullString
  loc_1E2D462: var_9E = (var_9E + 1)
  loc_1E2D4A5: Loop Until CBool(Trim(CVar(var_104.Fields.Item("Slogan1"))) <> vbNullString) 'do at: 1E1D521
  loc_1E2D4F3: var_1DC = (Chr(&HF) + Trim(CVar(var_104.Fields.Item("Slogan1"))))
  loc_1E2D4FA: var_20C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("U_Name")), var_9E), &HE)) + Chr(&H12))
  loc_1E2D500: Print 1, Chr(&H12)
  loc_1E2D51E: var_9E = (var_9E + 1)
  loc_1E2D561: Loop Until CBool(Trim(CVar(var_104.Fields.Item("Slogan2"))) <> vbNullString) 'do at: 1E1D5DD
  loc_1E2D588: var_194 = var_104.Fields.Item("Slogan2")
  loc_1E2D5AF: var_1DC = (Chr(&HF) + Trim(CVar(var_194)))
  loc_1E2D5B6: var_20C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("U_Name")), var_9E), &HE)) + Chr(&H12))
  loc_1E2D5BC: Print 1, Chr(&H12)
  loc_1E2D5DA: var_9E = (var_9E + 1)
  loc_1E2D600: var_1A4 = (Chr(&HF) + CVar(MemVar_1F92218))
  loc_1E2D607: var_1DC = (CVar(var_194) + Chr(&H12))
  loc_1E2D60D: Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("U_Name")), var_9E), &HE))
  loc_1E2D624: var_9E = (var_9E + 1)
  loc_1E2D62C: Print 1, vbNullString
  loc_1E2D638: var_9E = (var_9E + 1)
  loc_1E2D641: var_F6 = (var_F6 - 1)
  loc_1E2D64A: Loop Until (var_F6 = 0) 'do at: 1E1D97E
  loc_1E2D655: var_174 = Chr(&HF)
  loc_1E2D670: var_1A4 = (var_174 + CVar(var_E4))
  loc_1E2D677: var_1DC = (CVar(var_194) + Chr(&H12))
  loc_1E2D67D: Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("U_Name")), var_9E), &HE))
  loc_1E2D694: var_9E = (var_9E + 1)
  loc_1E2D69D: var_1C8 = 0
  loc_1E2D6CC: unk_43FED1.Execute "Select IsNull(PrintNetPayable,'') from Depart Where Code='" & Me(8) & "'", var_174, -1
  loc_1E2D6D4: var_180 = var_180.Fields
  loc_1E2D6DC: var_1C8 = var_194.Item(var_194)
  loc_1E2D6E4: var_1CC = var_1CC.Value
  loc_1E2D70B: Loop Until CBool(CVar(var_194) <> "No") 'do at: 1E1D7DC
  loc_1E2D759: var_1B4 = (CVar(Proc_6_52_EAD4F4("Net Amount Payable:", &H1E, 1, 1, var_1A4, var_9E)) + Space(1))
  loc_1E2D772: var_22C = (var_9E + CVar(Proc_6_52_EAD4F4(CStr(Format(var_100, "0.00")), 9, Chr(&H12), var_F6, var_9E)))
  loc_1E2D7B5: var_1A4 = (Chr(&HF) + CVar(CStr(Chr(&H12))))
  loc_1E2D7BC: var_1DC = (CVar(Proc_6_52_EAD4F4("Net Amount Payable:", &H1E, 1, 1, var_1A4, var_9E)) + Chr(&H12))
  loc_1E2D7C2: Print 1, "0.00"
  loc_1E2D7D9: var_9E = (var_9E + 1)
  loc_1E2D7FE: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2D805: var_1DC = (CVar(Proc_6_52_EAD4F4("Net Amount Payable:", &H1E, 1, 1, var_1A4, var_9E)) + Chr(&H12))
  loc_1E2D80B: Print 1, "0.00"
  loc_1E2D822: var_9E = (var_9E + 1)
  loc_1E2D847: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2D84E: var_1DC = (CVar(Proc_6_52_EAD4F4("Net Amount Payable:", &H1E, 1, 1, var_1A4, var_9E)) + Chr(&H12))
  loc_1E2D854: Print 1, "0.00"
  loc_1E2D86B: var_9E = (var_9E + 1)
  loc_1E2D890: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2D897: var_1DC = (CVar(Proc_6_52_EAD4F4("Net Amount Payable:", &H1E, 1, 1, var_1A4, var_9E)) + Chr(&H12))
  loc_1E2D89D: Print 1, "0.00"
  loc_1E2D8B4: var_9E = (var_9E + 1)
  loc_1E2D8D9: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2D8E0: var_1DC = (CVar(Proc_6_52_EAD4F4("Net Amount Payable:", &H1E, 1, 1, var_1A4, var_9E)) + Chr(&H12))
  loc_1E2D8E6: Print 1, "0.00"
  loc_1E2D8FD: var_9E = (var_9E + 1)
  loc_1E2D922: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2D929: var_1DC = (CVar(Proc_6_52_EAD4F4("Net Amount Payable:", &H1E, 1, 1, var_1A4, var_9E)) + Chr(&H12))
  loc_1E2D92F: Print 1, "0.00"
  loc_1E2D946: var_9E = (var_9E + 1)
  loc_1E2D969: var_1B4 = (Chr(&H1B) + Chr(&H6D))
  loc_1E2D96F: Print 1, Chr(&H12)
  loc_1E2D981: var_C4.MoveNext
  loc_1E2D986: GoTo loc_1E2A36F
  loc_1E2D98C: var_F4.MoveNext
  loc_1E2D9A2: Loop Until (var_F4.EOF = 0) 'do at: 1E1DB47
  loc_1E2D9C7: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2D9CE: var_1DC = (Chr(&H6D) + Chr(&H12))
  loc_1E2D9D4: Print 1, "0.00"
  loc_1E2D9EB: var_9E = (var_9E + 1)
  loc_1E2DA10: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2DA17: var_1DC = (Chr(&H6D) + Chr(&H12))
  loc_1E2DA1D: Print 1, "0.00"
  loc_1E2DA34: var_9E = (var_9E + 1)
  loc_1E2DA59: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2DA60: var_1DC = (Chr(&H6D) + Chr(&H12))
  loc_1E2DA66: Print 1, "0.00"
  loc_1E2DA7D: var_9E = (var_9E + 1)
  loc_1E2DAA2: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2DAA9: var_1DC = (Chr(&H6D) + Chr(&H12))
  loc_1E2DAAF: Print 1, "0.00"
  loc_1E2DAC6: var_9E = (var_9E + 1)
  loc_1E2DAEB: var_1A4 = (Chr(&HF) + vbNullString)
  loc_1E2DAF2: var_1DC = (Chr(&H6D) + Chr(&H12))
  loc_1E2DAF8: Print 1, "0.00"
  loc_1E2DB0F: var_9E = (var_9E + 1)
  loc_1E2DB32: var_1B4 = (Chr(&H1B) + Chr(&H6D))
  loc_1E2DB38: Print 1, Chr(&H12)
  loc_1E2DB47: GoTo loc_1E2A03E
  loc_1E2DB4C: Close 1
  loc_1E2DB55: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1E2DB8A: var_1A4 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_6298CC.Fields.Item("Printer").Value 
  loc_1E2DB90: Print 1, var_1A4
  loc_1E2DBA6: Close 1
  loc_1E2DBB0: Loop Until (MemVar_1F923B8 = "Y") 'do at: 1E1DBD6
  loc_1E2DBCC: var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1E2DBD3: GoTo loc_1E1DC9A
  loc_1E2DBEF: var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1E2DC0A: var_180 = var_104.Fields
  loc_1E2DC21: Proc_6_39_E7C810(var_1A4, CVar(var_180.Item("NoOfBill")), var_13E, 2, var_9E, var_9E, var_9E)
  loc_1E2DC34: For var_5BC = var_9E To CInt(var_1A4): var_9E = var_5BC 'Integer
  loc_1E2DC44:   var_174 = "C:\reptmp\SBILL.BAT"
  loc_1E2DC53:   var_B0 = CVar(Shell(var_174, 0)) 'Variant
  loc_1E2DC5D: Next var_5BC 'Integer
  loc_1E2DC88: unk_43FED1.Execute "Update Sale1 set Printed='Y' Where DocId In (Select OutletDocId from POS_SBill where Docid='" & Me(12) & "')", var_174, -1
  loc_1E2DC9F: Set var_C4 = Nothing
  loc_1E2DCA7: Set var_D4 = Nothing
  loc_1E2DCAF: Set var_D8 = Nothing
  loc_1E2DCB7: Set var_104 = Nothing
  loc_1E2DCBF: Set var_CC = Nothing
  loc_1E2DCC7: Set var_D0 = Nothing
  loc_1E2DCCF: Set var_108 = Nothing
  loc_1E2DCD7: Set var_F4 = Nothing
  loc_1E2DCDF: Set var_C8 = Nothing
  loc_1E2DCE7: Set var_110 = Nothing
  loc_1E2DCEF: Set var_10C = Nothing
  loc_1E2DCF2: GoTo loc_1E1DD1E
  loc_1E2DD0E: MsgBox("Printer & Bill Type Not Defined ", &H40, var_1A4, Chr(&H12), "0.00")
  loc_1E2DD1E: Exit Sub
  loc_1E2DD1F: Proc_6_60_E62BC4(var_180)
  loc_1E2DD24: Exit Sub
End Sub

Public Sub Proc_260_11_F5B5EC(arg_C) 'F5B5EC
  'Data Table: 43FECC
  Dim var_8C As Recordset15
  loc_F5B4C3: Set var_8C = arg_C 
  loc_F5B4EB: var_8C.Fields.Append "mLine", &HC8, 2
  loc_F5B517: var_8C.Fields.Append "SunName", &HC8, &H19
  loc_F5B543: var_8C.Fields.Append "SunPer", &HC8, 5
  loc_F5B56F: var_8C.Fields.Append "SunAmount", &HC8, &HC
  loc_F5B59B: var_8C.Fields.Append "Mark", &HC8, 1
  loc_F5B5AB: var_8C.CursorType = 3
  loc_F5B5B8: var_8C.LockType = 3
  loc_F5B5D7: var_8C.Open var_A0, var_B0, -1
  loc_F5B5DE: Set var_8C = Nothing 
  loc_F5B5E5: Set var_88 = arg_C 
  loc_F5B5E9: Exit Sub
End Sub

Public Sub Proc_260_12_10D3330(arg_C) '10D3330
  'Data Table: 43FECC
  Dim var_8C As Recordset15
  loc_10D3023: Set var_8C = arg_C 
  loc_10D304B: var_8C.Fields.Append "mLine", &HC8, 2
  loc_10D3077: var_8C.Fields.Append "Sno", &HC8, 3
  loc_10D30A3: var_8C.Fields.Append "DispCode", &HC8, 6
  loc_10D30CF: var_8C.Fields.Append "HSNCode", &HC8, &H1E
  loc_10D30FB: var_8C.Fields.Append "Item", &HC8, &H32
  loc_10D3127: var_8C.Fields.Append "Qty", &HC8, &HC
  loc_10D3153: var_8C.Fields.Append "Rate", &HC8, &HC
  loc_10D317F: var_8C.Fields.Append "TaxAmt", &HC8, &HC
  loc_10D31AB: var_8C.Fields.Append "Amount", &HC8, &HC
  loc_10D31D7: var_8C.Fields.Append "TaxPer", &HC8, 8
  loc_10D3203: var_8C.Fields.Append "NonTaxable", &HC8, &HA
  loc_10D322F: var_8C.Fields.Append "Taxable", &HC8, &HA
  loc_10D325B: var_8C.Fields.Append "Unit", &HC8, &H14
  loc_10D3287: var_8C.Fields.Append "ItemRate", &HC8, &HC
  loc_10D32B3: var_8C.Fields.Append "Remarks", &HC8, &HFF
  loc_10D32DF: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10D32EF: var_8C.CursorType = 3
  loc_10D32FC: var_8C.LockType = 3
  loc_10D331B: var_8C.Open var_A0, var_B0, -1
  loc_10D3322: Set var_8C = Nothing 
  loc_10D3329: Set var_88 = arg_C 
  loc_10D332D: Exit Sub
End Sub

Public Sub Proc_260_13_10D2FE4(arg_C) '10D2FE4
  'Data Table: 43FECC
  Dim var_8C As Recordset15
  loc_10D2CD7: Set var_8C = arg_C 
  loc_10D2CFF: var_8C.Fields.Append "mLine", &HC8, 2
  loc_10D2D2B: var_8C.Fields.Append "Sno", &HC8, 3
  loc_10D2D57: var_8C.Fields.Append "DispCode", &HC8, 6
  loc_10D2D83: var_8C.Fields.Append "HSNCode", &HC8, &H1E
  loc_10D2DAF: var_8C.Fields.Append "Item", &HC8, &H32
  loc_10D2DDB: var_8C.Fields.Append "Qty", &HC8, &HC
  loc_10D2E07: var_8C.Fields.Append "Rate", &HC8, &HC
  loc_10D2E33: var_8C.Fields.Append "TaxAmt", &HC8, &HC
  loc_10D2E5F: var_8C.Fields.Append "Amount", &HC8, &HC
  loc_10D2E8B: var_8C.Fields.Append "TaxPer", &HC8, 8
  loc_10D2EB7: var_8C.Fields.Append "NonTaxable", &HC8, &HA
  loc_10D2EE3: var_8C.Fields.Append "Taxable", &HC8, &HA
  loc_10D2F0F: var_8C.Fields.Append "Unit", &HC8, &H14
  loc_10D2F3B: var_8C.Fields.Append "ItemRate", &HC8, &HC
  loc_10D2F67: var_8C.Fields.Append "Remarks", &HC8, &HFF
  loc_10D2F93: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10D2FA3: var_8C.CursorType = 3
  loc_10D2FB0: var_8C.LockType = 3
  loc_10D2FCF: var_8C.Open var_A0, var_B0, -1
  loc_10D2FD6: Set var_8C = Nothing 
  loc_10D2FDD: Set var_88 = arg_C 
  loc_10D2FE1: Exit Sub
End Sub

Public Sub Proc_260_14_1EEA954
  'Data Table: 43FECC
  Dim var_1FC As Variant
  Dim MemVar_6298CC As Recordset15
  Dim var_224 As String
  Dim var_228 As String
  Dim unk_43FED1 As Connection15
  Dim var_DC As Recordset15
  Dim var_9E As Integer
  Dim var_134 As Recordset15
  Dim var_22C As Variant
  Dim var_220 As Variant
  Dim var_248 As Variant
  Dim var_238 As Variant
  Dim var_25C As Variant
  Dim var_C4 As Recordset15
  Dim var_234 As Variant
  Dim var_BA As Integer
  Dim var_D8 As Recordset15
  Dim var_284 As Recordset15
  Dim var_24C As Variant
  Dim var_294 As Variant
  Dim var_26C As Variant
  Dim var_E4 As Double
  Dim var_1A4 As Double
  Dim var_1AC As Double
  Dim var_D0 As Recordset15
  Dim var_27C As Variant
  Dim var_D4 As Recordset15
  Dim var_2A8 As Recordset15
  Dim var_2E8 As Recordset15
  Dim var_138 As Recordset15
  Dim var_1B4 As Recordset15
  Dim var_2A4 As Variant
  Dim var_2D4 As Variant
  Dim var_2E4 As Variant
  Dim var_308 As Variant
  Dim var_318 As Variant
  Dim var_328 As Variant
  Dim var_338 As String
  Dim var_34C As Variant
  Dim var_370 As Variant
  Dim var_380 As Variant
  Dim var_3D8 As Variant
  Dim var_156 As Integer
  Dim var_BC As Integer
  Dim var_13C As Recordset15
  Dim var_1B0 As Recordset15
  Dim var_F8 As Recordset15
  Dim var_FA As Integer
  Dim var_104 As Double
  Dim var_48C As Recordset15
  Dim var_490 As Recordset15
  Dim var_4A8 As Recordset15
  loc_1EDDE8C: On Error Goto loc_1EDA94B
  loc_1EDDE9A: MemVar_6298CC.Filter = "ModType='POS'"
  loc_1EDDEB5: Loop Until (MemVar_6298CC.RecordCount > 0) 'do at: 1EDA8C9
  loc_1EDDEC3: If CBool(var_210 <> "Yes") Then
  loc_1EDDEEC:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_220, -1
  loc_1EDDEF7:   Set var_134 = var_22C
  loc_1EDDF1D:   var_224 = "select max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (sale2 left join revmast on revmast.code=sale2.Taxcode) where  Sale2.DocID='" & Me(12)
  loc_1EDDF2D:   unk_43FED1.Execute var_224 & "' group by revmast.code,TaxPer Order by TaxPer", var_220, -1
  loc_1EDDF38:   Set var_1B0 = var_22C
  loc_1EDDF51:   var_224 = "Select Sale1.* ,S.CardNo,IsNull(S.Name,'') As MemName,W.Name as WaiterName,Case When IsNull(Sale1.RoomType,'')='RO' Then RTrim(LTrim(IsNull(GP.ConPrefix,'')))+' '+RTrim(LTrim(IsNull(GP.Name,''))) When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then RTrim(LTrim(IsNull(S.Name,'')))+' - '+RTrim(LTrim(IsNull(S.CardNo,''))) Else IsNull(Sale1.Remark,'') End Remark1,S.NAME AS CompanyName,S.Add1 CompAdd1,S.Add2 CompAdd2,S.Add3 CompAdd3,CC.CityName CompCity,CS.ShortName CompStateCode,CS.Name CompState,S.GSTIN CompGSTIN From ((((((Sale1 left join waiter W on sale1.waiter=w.code) left join SubGroup S On Sale1.Party=S.SubCode) Left Join City CC On CC.CityCode=S.CityCode) Left Join State CS On CS.Code=CC.State) left join GuestFolio GF On Sale1.FolionoDocId=GF.DocId) left join GuestProf GP On GF.GuestProf=GP.Code) Where Sale1.DocID='" & Me(12)
  loc_1EDDF58:   var_8C = var_224 & "'"
  loc_1EDDF65:   var_224 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,Sum(S.TAXAMT) AS TAXAMT,S.RATE,S.Remarks,MAX(S.ItemRate) AS ItemRate,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,MAX(I.COMMODITYCODE) AS HSNCODE,MAX(I.DISPCODE) As DISPCODE,Case When SUM(S.TAXAMT)=0 THEN SUM(S.AMOUNT) ELSE 0 END AS NONTAXABLE,Case When SUM(S.TAXAMT)<>0 THEN SUM(S.AMOUNT) ELSE 0 END AS TAXABLE,Max(S.Unit) As UNIT From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='"
  loc_1EDDF75:   var_90 = var_224 & Me(12) & "' GROUP BY S.ITEM,S.RATE,S.Remarks ORDER BY MAX(I.NAME) "
  loc_1EDDF96:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.Svalue,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno"
  loc_1EDDFA7:   var_224 = "SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department,D.Printer FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item And S.ItemRestCode=I.RestCode) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='"
  loc_1EDDFB7:   var_98 = var_224 & Me(12) & "' ORDER BY I.Kitchen"
  loc_1EDDFC9:   If (var_8C = vbNullString) Then
  loc_1EDDFCC:     Exit Sub
  loc_1EDDFCD:   End If
  loc_1EDDFD5:   If (var_90 = vbNullString) Then
  loc_1EDDFD8:     Exit Sub
  loc_1EDDFD9:   End If
  loc_1EDDFE1:   If (var_94 = vbNullString) Then
  loc_1EDDFE4:     Exit Sub
  loc_1EDDFE5:   End If
  loc_1EDDFFB:   unk_43FED1.Execute var_8C, var_220, -1
  loc_1EDE006:   Set var_C4 = var_22C
  loc_1EDE025:   unk_43FED1.Execute var_90, var_220, -1
  loc_1EDE030:   Set var_D8 = var_22C
  loc_1EDE04F:   unk_43FED1.Execute var_94, var_220, -1
  loc_1EDE05A:   Set var_DC = var_22C
  loc_1EDE079:   unk_43FED1.Execute var_98, var_220, -1
  loc_1EDE084:   Set var_D0 = var_22C
  loc_1EDE096:   var_DC.Filter = "Amount<>0"
  loc_1EDE0AB:   var_106 = CByte(var_DC.RecordCount) 'Byte
  loc_1EDE0B3:   Set var_C8 = New 
  loc_1EDE0BE:   Set var_C8 = Proc_260_12_10D3330(var_C8, var_22C, var_22C, var_22C)
  loc_1EDE0C5:   Set var_13C = New 
  loc_1EDE0D0:   Set var_13C = Proc_260_11_F5B5EC(var_13C, var_22C)
  loc_1EDE0D3:   ' Referenced from: 1EE41CB
  loc_1EDE0E2:   If Not(Me.Recordset15.EOF) Then
  loc_1EDE0E7:     var_9E = 0
  loc_1EDE0F0:     If (var_9E = 0) Then
  loc_1EDE11B:       var_144 = Proc_6_38_E68A98(CVar(var_134.Fields.Item("CstNo")), var_9E)
  loc_1EDE133:       var_22C = var_134.Fields
  loc_1EDE14C:       var_148 = Proc_6_38_E68A98(CVar(var_22C.Item("LstNo")), var_22C)
  loc_1EDE16A:       var_170 = "Phone: " & MemVar_1F92140 & " Fax :" & MemVar_1F92144
  loc_1EDE19C:       var_174 = Proc_6_38_E68A98(CVar(var_134.Fields.Item("Phone")))
  loc_1EDE1B4:       var_22C = var_134.Fields
  loc_1EDE1FD:       var_228 = Proc_6_38_E68A98(CVar(var_134.Fields.Item("COMPANYTITLE")), (Proc_6_38_E68A98(CVar(var_22C.Item("COMPANYTITLE"))) = "Y"))
  loc_1EDE21B:       If (var_22C Or (var_228 = vbNullString)) Then
  loc_1EDE221:         var_178 = "Y"
  loc_1EDE224:       End If
  loc_1EDE29A:       If ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("OutletTitle"))) = "Y") Or (Proc_6_38_E68A98(CVar(var_134.Fields.Item("OutletTitle"))) = vbNullString)) Then
  loc_1EDE2CC:         var_10C = CStr(Trim(CVar(var_134.Fields.Item("Name"))))
  loc_1EDE2D9:       End If
  loc_1EDE312:       If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintTokenNo"))) = "Yes") Then
  loc_1EDE33D:         var_154 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("TokenNo")))
  loc_1EDE346:       End If
  loc_1EDE37F:       If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Order_Booking"))) = "Y") Then
  loc_1EDE385:         var_14C = "Order No:"
  loc_1EDE3B0:         var_150 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo")))
  loc_1EDE3BC:       Else
  loc_1EDE3F5:         If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("KotYN"))) = "Y") Then
  loc_1EDE3FB:           var_14C = "KOT No:"
  loc_1EDE426:           var_150 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo")))
  loc_1EDE42F:         End If
  loc_1EDE42F:       End If
  loc_1EDE457:       var_114 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("WaiterName")))
  loc_1EDE499:       If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("RestType"))) = "Outlet") Then
  loc_1EDE49F:         var_118 = "Table No:"
  loc_1EDE4CA:         var_11C = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("RoomNo")))
  loc_1EDE4D6:       Else
  loc_1EDE50F:         If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("RestType"))) = "Room Service") Then
  loc_1EDE515:           var_118 = "Room No:"
  loc_1EDE540:           var_11C = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("RoomNo")))
  loc_1EDE549:         End If
  loc_1EDE549:       End If
  loc_1EDE571:       var_C0 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Printed")))
  loc_1EDE5A5:       var_128 = CStr(var_C4.Fields.Item("GuarAtt").Value)
  loc_1EDE5DA:       var_124 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VTIME")))
  loc_1EDE61D:       var_26C = "dd/MM/yy"
  loc_1EDE626:       var_25C = CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VDate")))) 'String
  loc_1EDE635:       var_120 = CStr(Format(var_25C, var_26C))
  loc_1EDE66F:       Proc_6_39_E7C810(var_25C, CVar(var_C4.Fields.Item("VNo")))
  loc_1EDE678:       var_12C = CStr(var_25C)
  loc_1EDE6CF:       var_25C = CVar(var_C4.Fields.Item("VNo")) 'Address
  loc_1EDE6D6:       Proc_6_39_E7C810(var_26C, var_25C)
  loc_1EDE6EA:       var_130 = Proc_96_43_F99184(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("vType")), 1), var_26C)
  loc_1EDE73D:       If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Roomtype"))) = "RO") Then
  loc_1EDE784:         var_16C = "GUEST  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Remark1"))), 150)
  loc_1EDE7BC:         Proc_6_39_E7C810(var_25C, CVar(var_C4.Fields.Item("FolioNo")))
  loc_1EDE7C6:         var_18C = CStr(var_25C)
  loc_1EDE7D8:       Else
  loc_1EDE80B:         var_248 = "MemberInfo"
  loc_1EDE827:         var_25C = CVar(var_134.Fields.Item(var_248)) 'Address
  loc_1EDE84E:         If (1 And (Proc_6_38_E68A98(var_25C, (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("MemName"))) <> vbNullString)) = "Y")) Then
  loc_1EDE895:           var_16C = "MEMBER :   " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Remark1"))), 150)
  loc_1EDE8AA:         Else
  loc_1EDE8E3:           If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Remark1"))) <> vbNullString) Then
  loc_1EDE92A:             var_16C = "REMARK :     " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Remark1"))), 150)
  loc_1EDE93C:           End If
  loc_1EDE93C:         End If
  loc_1EDE93C:       End If
  loc_1EDE964:       var_190 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("PhoneNo")))
  loc_1EDE995:       var_194 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CustName")))
  loc_1EDE9C6:       var_198 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Addr1")))
  loc_1EDE9F7:       var_19C = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Addr2")))
  loc_1EDEA28:       var_1D0 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompanyName")))
  loc_1EDEA59:       var_1D4 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompAdd1")))
  loc_1EDEA8A:       var_1D8 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompAdd2")))
  loc_1EDEABB:       var_1DC = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompAdd3")))
  loc_1EDEAEC:       var_1E0 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompCity")))
  loc_1EDEB1D:       var_1E4 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompStateCode")))
  loc_1EDEB4E:       var_1E8 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompState")))
  loc_1EDEB5A:       var_1FC = "CompGSTIN"
  loc_1EDEB7F:       var_1EC = Proc_6_38_E68A98(CVar(var_C4.Fields.Item(var_1FC)))
  loc_1EDEB88:     End If
  loc_1EDEB8A:     var_BA = 1
  loc_1EDEB90:     var_D8.MoveFirst
  loc_1EDEB95:     ' Referenced from: 1EDF2CA
  loc_1EDEBA4:     If Not(var_D8.EOF) Then
  loc_1EDEBAA:       Set var_284 = var_C8 
  loc_1EDEBB9:       var_284.AddNew var_1FC, var_248
  loc_1EDEBE3:       var_284.Fields.Item("mLine").Value = vbNullString
  loc_1EDEC17:       var_284.Fields.Item("Sno").Value = CVar(CStr(var_BA))
  loc_1EDEC69:       var_284.Fields.Item("DispCode").Value = CVar(var_D8.Fields.Item("DispCode"))
  loc_1EDECBD:       var_284.Fields.Item("HSNCode").Value = CVar(var_D8.Fields.Item("HSNCode"))
  loc_1EDED11:       var_284.Fields.Item("Item").Value = CVar(var_D8.Fields.Item("ItemName"))
  loc_1EDED48:       Proc_6_39_E7C810(var_25C, CVar(var_D8.Fields.Item("qty")))
  loc_1EDED90:       var_284.Fields.Item("Qty").Value = Format(var_25C, "0.000")
  loc_1EDEDCF:       Proc_6_39_E7C810(var_25C, CVar(var_D8.Fields.Item("Rate")), 1)
  loc_1EDEE17:       var_284.Fields.Item("Rate").Value = Format(var_25C, "0.00")
  loc_1EDEE56:       Proc_6_39_E7C810(var_25C, CVar(var_D8.Fields.Item("TaxAmt")), 1)
  loc_1EDEE9E:       var_284.Fields.Item("TaxAmt").Value = Format(var_25C, "0.00")
  loc_1EDEEDD:       Proc_6_39_E7C810(var_25C, CVar(var_D8.Fields.Item("Amt")), 1, 1)
  loc_1EDEEF1:       var_26C = "0.00"
  loc_1EDEF25:       var_284.Fields.Item("Amount").Value = Format(var_25C, var_26C)
  loc_1EDEF64:       Proc_6_39_E7C810(var_25C, CVar(var_D8.Fields.Item("TaxPer")), 1, 1)
  loc_1EDEF6F:       Proc_6_47_EF59D0(var_26C, var_25C, 1)
  loc_1EDEF97:       var_284.Fields.Item("TaxPer").Value = var_26C
  loc_1EDEFD4:       Proc_6_47_EF59D0(var_25C, CVar(var_D8.Fields.Item("nonTaxable")))
  loc_1EDEFFC:       var_284.Fields.Item("NonTaxable").Value = var_25C
  loc_1EDF037:       Proc_6_47_EF59D0(var_25C, CVar(var_D8.Fields.Item("Taxable")))
  loc_1EDF05F:       var_284.Fields.Item("Taxable").Value = var_25C
  loc_1EDF09C:       var_25C = CVar(Proc_6_38_E68A98(CVar(var_D8.Fields.Item("Unit")), 1)) 'String
  loc_1EDF0BF:       var_284.Fields.Item("Unit").Value = var_25C
  loc_1EDF0FA:       Proc_6_47_EF59D0(var_25C, CVar(var_D8.Fields.Item("ItemRate")))
  loc_1EDF122:       var_284.Fields.Item("ItemRate").Value = var_25C
  loc_1EDF15F:       var_25C = CVar(Proc_6_38_E68A98(CVar(var_D8.Fields.Item("Remarks")))) 'String
  loc_1EDF172:       var_238 = var_284.Fields
  loc_1EDF182:       var_238.Item("Remarks").Value = var_25C
  loc_1EDF197:       var_248 = "*"
  loc_1EDF1A0:       var_1FC = "Mark"
  loc_1EDF1BC:       var_284.Fields.Item(var_1FC).Value = var_248
  loc_1EDF1D3:       var_284.Update var_1FC, var_248
  loc_1EDF1DA:       Set var_284 = Nothing 
  loc_1EDF20B:       Proc_6_39_E7C810(var_25C, CVar(var_D8.Fields.Item("Amt")))
  loc_1EDF213:       var_26C = (CVar(var_E4) + var_25C)
  loc_1EDF218:       var_E4 = CSng(var_26C)
  loc_1EDF254:       Proc_6_39_E7C810(var_25C, CVar(var_D8.Fields.Item("nonTaxable")), CVar(var_1A4))
  loc_1EDF25C:       var_26C = (var_E4 + var_25C)
  loc_1EDF261:       var_1A4 = CSng(var_26C)
  loc_1EDF29D:       Proc_6_39_E7C810(var_25C, CVar(var_D8.Fields.Item("Taxable")), CVar(var_1AC))
  loc_1EDF2A5:       var_26C = (var_1A4 + var_25C)
  loc_1EDF2AA:       var_1AC = CSng(var_26C)
  loc_1EDF2BF:       var_BA = (var_BA + 1)
  loc_1EDF2C5:       var_D8.MoveNext
  loc_1EDF2CA:       GoTo loc_1EDEB95
  loc_1EDF2CD:     End If
  loc_1EDF2E4:     var_234 = var_C4.Fields.Item("Printed")
  loc_1EDF2EC:     var_220 = CVar(var_234) 'Address
  loc_1EDF306:     If (Proc_6_38_E68A98(var_220, var_BA) <> "Y") Then
  loc_1EDF30C:       var_248 = 0
  loc_1EDF33B:       unk_43FED1.Execute "SELECT TOKENPrintAfter FROM Depart where Code='" & Me(8) & "'", var_220, -1
  loc_1EDF343:       var_22C = var_22C.Fields
  loc_1EDF34B:       var_248 = var_234.Item(var_234)
  loc_1EDF37B:       If (Proc_6_38_E68A98(CVar(var_238), var_238) = "Yes") Then
  loc_1EDF392:         If (var_D0.RecordCount > 0) Then
  loc_1EDF398:           var_D0.MoveFirst
  loc_1EDF39D:           ' Referenced from: 1EE0E9C
  loc_1EDF3AC:           If Not(var_D0.EOF) Then
  loc_1EDF3B1:             var_BA = 1
  loc_1EDF3C8:             var_224 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,Sum(S.TAXAMT) AS TAXAMT,S.RATE,S.Remarks,MAX(S.ItemRate) AS ItemRate,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,MAX(I.COMMODITYCODE) AS HSNCODE,MAX(I.DISPCODE) As DISPCODE,Case When SUM(S.TAXAMT)=0 THEN SUM(S.AMOUNT) ELSE 0 END AS NONTAXABLE,Case When SUM(S.TAXAMT)<>0 THEN SUM(S.AMOUNT) ELSE 0 END AS TAXABLE,Max(S.Unit) As UNIT From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='"
  loc_1EDF3D8:             var_25C = CVar(var_224 & Me(12) & "' AND I.Kitchen='") 'String
  loc_1EDF409:             var_248 = "' GROUP BY S.ITEM,S.RATE,S.Remarks ORDER BY MAX(I.NAME) "
  loc_1EDF41C:             unk_43FED1.Execute CStr(var_25C & var_D0.Fields.Item("Kitchen").Value & var_248), var_2A4, -1
  loc_1EDF427:             Set var_D4 = var_238
  loc_1EDF44D:             Set var_CC = New 
  loc_1EDF458:             Set var_CC = Proc_260_13_10D2FE4(var_CC, var_238, var_BA)
  loc_1EDF461:             var_200 = Me.Recordset15.RecordCount
  loc_1EDF46F:             If (var_200 > 0) Then
  loc_1EDF475:               var_1FC = "Department"
  loc_1EDF49A:               var_110 = Proc_6_38_E68A98(CVar(var_D0.Fields.Item(var_1FC)), var_1AC)
  loc_1EDF4A3:               ' Referenced from: 1EDFAFD
  loc_1EDF4B2:               If Not(var_D4.EOF) Then
  loc_1EDF4B8:                 Set var_2A8 = var_CC 
  loc_1EDF4C7:                 var_2A8.AddNew var_1FC, var_248
  loc_1EDF4F1:                 var_2A8.Fields.Item("mLine").Value = vbNullString
  loc_1EDF525:                 var_2A8.Fields.Item("Sno").Value = CVar(CStr(var_BA))
  loc_1EDF577:                 var_2A8.Fields.Item("DispCode").Value = CVar(var_D4.Fields.Item("DispCode"))
  loc_1EDF5CB:                 var_2A8.Fields.Item("HSNCode").Value = CVar(var_D4.Fields.Item("HSNCode"))
  loc_1EDF61F:                 var_2A8.Fields.Item("Item").Value = CVar(var_D4.Fields.Item("ItemName"))
  loc_1EDF656:                 Proc_6_39_E7C810(var_25C, CVar(var_D4.Fields.Item("qty")))
  loc_1EDF69E:                 var_2A8.Fields.Item("Qty").Value = Format(var_25C, "0.000")
  loc_1EDF6DD:                 Proc_6_39_E7C810(var_25C, CVar(var_D4.Fields.Item("Rate")), 1)
  loc_1EDF725:                 var_2A8.Fields.Item("Rate").Value = Format(var_25C, "0.00")
  loc_1EDF764:                 Proc_6_39_E7C810(var_25C, CVar(var_D4.Fields.Item("TaxAmt")), 1)
  loc_1EDF7AC:                 var_2A8.Fields.Item("TaxAmt").Value = Format(var_25C, "0.00")
  loc_1EDF7EB:                 Proc_6_39_E7C810(var_25C, CVar(var_D4.Fields.Item("Amt")), 1, 1)
  loc_1EDF7FF:                 var_26C = "0.00"
  loc_1EDF817:                 var_294 = "Amount"
  loc_1EDF833:                 var_2A8.Fields.Item(var_294).Value = Format(var_25C, var_26C)
  loc_1EDF872:                 Proc_6_39_E7C810(var_25C, CVar(var_D4.Fields.Item("TaxPer")), 1, 1)
  loc_1EDF87D:                 Proc_6_47_EF59D0(var_26C, var_25C, 1)
  loc_1EDF8A5:                 var_2A8.Fields.Item("TaxPer").Value = var_26C
  loc_1EDF8E2:                 Proc_6_47_EF59D0(var_25C, CVar(var_D4.Fields.Item("nonTaxable")))
  loc_1EDF90A:                 var_2A8.Fields.Item("NonTaxable").Value = var_25C
  loc_1EDF945:                 Proc_6_47_EF59D0(var_25C, CVar(var_D4.Fields.Item("Taxable")))
  loc_1EDF96D:                 var_2A8.Fields.Item("Taxable").Value = var_25C
  loc_1EDF9AA:                 var_25C = CVar(Proc_6_38_E68A98(CVar(var_D4.Fields.Item("Unit")), 1)) 'String
  loc_1EDF9CD:                 var_2A8.Fields.Item("Unit").Value = var_25C
  loc_1EDFA08:                 Proc_6_47_EF59D0(var_25C, CVar(var_D4.Fields.Item("ItemRate")))
  loc_1EDFA30:                 var_2A8.Fields.Item("ItemRate").Value = var_25C
  loc_1EDFA90:                 var_2A8.Fields.Item("Remarks").Value = CVar(Proc_6_38_E68A98(CVar(var_D4.Fields.Item("Remarks"))))
  loc_1EDFAA5:                 var_248 = "*"
  loc_1EDFAAE:                 var_1FC = "Mark"
  loc_1EDFAC2:                 var_234 = var_2A8.Fields.Item(var_1FC)
  loc_1EDFACA:                 var_234.Value = var_248
  loc_1EDFAE1:                 var_2A8.Update var_1FC, var_248
  loc_1EDFAE8:                 Set var_2A8 = Nothing 
  loc_1EDFAEF:                 var_D4.MoveNext
  loc_1EDFAFA:                 var_BA = (var_BA + 1)
  loc_1EDFAFD:                 GoTo loc_1EDF4A3
  loc_1EDFB00:               End If
  loc_1EDFB00:             End If
  loc_1EDFB03:             var_15C = "BillTokenPrint"
  loc_1EDFB2A:             Set var_22C = var_CC 
  loc_1EDFB31:             CreateFieldDefFile(var_22C, MemVar_1F920B4 & "\" & var_15C & ".ttx", &HFF)
  loc_1EDFB5C:             var_224 = MemVar_1F920B4 & "\"
  loc_1EDFB73:             Call 0.Method_arg_1C (var_224 & var_15C & ".RPT", var_1FC, var_22C)
  loc_1EDFB7E:             MemVar_1F921E4 = var_22C
  loc_1EDFBA7:             Call 0.Method_arg_64 (var_22C, CVar(var_22C), var_248)
  loc_1EDFBAF:             Call 0.Method_arg_2C (var_294, var_BA)
  loc_1EDFBBD:             Call 0.Method_arg_150 (var_BA)
  loc_1EDFBD3:             Call 0.Method_arg_90 (var_22C, var_200)
  loc_1EDFBDB:             Call 0.Method_arg_24 (var_BA)
  loc_1EDFBE7:             For var_2B0 =  To CInt(var_200): 1 = var_2B0 'Integer
  loc_1EDFC00:               Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EDFC08:               Call 0.Method_arg_20 (var_234)
  loc_1EDFC10:               Call 0.Method_arg_30 (var_224)
  loc_1EDFC26:               var_2C0 = Ucase(CVar(var_224)) 'Variant
  loc_1EDFC3C:               var_220 = "comp_name"
  loc_1EDFC56:               If (var_2C0 = Ucase(var_220)) Then
  loc_1EDFC64:                 Proc_6_17_EAA2B0(var_220)
  loc_1EDFC80:                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EDFC88:                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EDFC90:                 Call 0.Method_arg_38 (MemVar_1F92130)
  loc_1EDFCA5:               Else
  loc_1EDFCAD:                 var_220 = "comp_add1"
  loc_1EDFCC7:                 If (var_2C0 = Ucase(var_220)) Then
  loc_1EDFCD5:                   Proc_6_17_EAA2B0(var_220)
  loc_1EDFCF1:                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EDFCF9:                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EDFD01:                   Call 0.Method_arg_38 (MemVar_1F92134)
  loc_1EDFD16:                 Else
  loc_1EDFD1E:                   var_220 = "comp_pin"
  loc_1EDFD38:                   If (var_2C0 = Ucase(var_220)) Then
  loc_1EDFD46:                     Proc_6_17_EAA2B0(var_220)
  loc_1EDFD62:                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EDFD6A:                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EDFD72:                     Call 0.Method_arg_38 (MemVar_1F9213C)
  loc_1EDFD87:                   Else
  loc_1EDFDA9:                     If (var_2C0 = Ucase("comp_GSTIN")) Then
  loc_1EDFDCD:                       Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EDFDD5:                       Call 0.Method_arg_20 (var_234)
  loc_1EDFDDD:                       Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_1EDFDF3:                     Else
  loc_1EDFDFB:                       var_220 = "Comp_Phone_Fax"
  loc_1EDFE15:                       If (var_2C0 = Ucase(var_220)) Then
  loc_1EDFE23:                         Proc_6_17_EAA2B0(var_220)
  loc_1EDFE3F:                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EDFE47:                         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EDFE4F:                         Call 0.Method_arg_38 (var_170)
  loc_1EDFE64:                       Else
  loc_1EDFE6C:                         var_220 = "Outl_Phone_Fax"
  loc_1EDFE86:                         If (var_2C0 = Ucase(var_220)) Then
  loc_1EDFE94:                           Proc_6_17_EAA2B0(var_220)
  loc_1EDFEB0:                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EDFEB8:                           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EDFEC0:                           Call 0.Method_arg_38 (var_174)
  loc_1EDFED5:                         Else
  loc_1EDFEDD:                           var_220 = "CompTitleYN"
  loc_1EDFEF7:                           If (var_2C0 = Ucase(var_220)) Then
  loc_1EDFF05:                             Proc_6_17_EAA2B0(var_220)
  loc_1EDFF21:                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EDFF29:                             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EDFF31:                             Call 0.Method_arg_38 (var_178)
  loc_1EDFF46:                           Else
  loc_1EDFF4E:                             var_220 = "Outlet_Title"
  loc_1EDFF68:                             If (var_2C0 = Ucase(var_220)) Then
  loc_1EDFF76:                               Proc_6_17_EAA2B0(var_220)
  loc_1EDFF92:                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EDFF9A:                               Call 0.Method_arg_20 (CStr(var_220))
  loc_1EDFFA2:                               Call 0.Method_arg_38 (var_10C)
  loc_1EDFFB7:                             Else
  loc_1EDFFBF:                               var_220 = "Department"
  loc_1EDFFD9:                               If (var_2C0 = Ucase(var_220)) Then
  loc_1EDFFE7:                                 Proc_6_17_EAA2B0(var_220)
  loc_1EE0003:                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE000B:                                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0013:                                 Call 0.Method_arg_38 (var_110)
  loc_1EE0028:                               Else
  loc_1EE0030:                                 var_220 = "Waiter_Name"
  loc_1EE004A:                                 If (var_2C0 = Ucase(var_220)) Then
  loc_1EE0058:                                   Proc_6_17_EAA2B0(var_220)
  loc_1EE0074:                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE007C:                                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0084:                                   Call 0.Method_arg_38 (var_114)
  loc_1EE0099:                                 Else
  loc_1EE00A1:                                   var_220 = "Covers"
  loc_1EE00BB:                                   If (var_2C0 = Ucase(var_220)) Then
  loc_1EE00C9:                                     Proc_6_17_EAA2B0(var_220)
  loc_1EE00E5:                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE00ED:                                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE00F5:                                     Call 0.Method_arg_38 (var_128)
  loc_1EE010A:                                   Else
  loc_1EE0112:                                     var_220 = "Cst_No"
  loc_1EE012C:                                     If (var_2C0 = Ucase(var_220)) Then
  loc_1EE013A:                                       Proc_6_17_EAA2B0(var_220)
  loc_1EE0156:                                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE015E:                                       Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0166:                                       Call 0.Method_arg_38 (var_144)
  loc_1EE017B:                                     Else
  loc_1EE0183:                                       var_220 = "Lst_No"
  loc_1EE019D:                                       If (var_2C0 = Ucase(var_220)) Then
  loc_1EE01AB:                                         Proc_6_17_EAA2B0(var_220)
  loc_1EE01C7:                                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE01CF:                                         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE01D7:                                         Call 0.Method_arg_38 (var_148)
  loc_1EE01EC:                                       Else
  loc_1EE01F4:                                         var_220 = "lblRoom_TableNo"
  loc_1EE020E:                                         If (var_2C0 = Ucase(var_220)) Then
  loc_1EE021C:                                           Proc_6_17_EAA2B0(var_220)
  loc_1EE0238:                                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE0240:                                           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0248:                                           Call 0.Method_arg_38 (var_118)
  loc_1EE025D:                                         Else
  loc_1EE0265:                                           var_220 = "Room_TableNo"
  loc_1EE027F:                                           If (var_2C0 = Ucase(var_220)) Then
  loc_1EE028D:                                             Proc_6_17_EAA2B0(var_220)
  loc_1EE02A9:                                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE02B1:                                             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE02B9:                                             Call 0.Method_arg_38 (var_11C)
  loc_1EE02CE:                                           Else
  loc_1EE02D6:                                             var_220 = "lblOrder_KOTNo"
  loc_1EE02F0:                                             If (var_2C0 = Ucase(var_220)) Then
  loc_1EE02FE:                                               Proc_6_17_EAA2B0(var_220)
  loc_1EE031A:                                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE0322:                                               Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE032A:                                               Call 0.Method_arg_38 (var_14C)
  loc_1EE033F:                                             Else
  loc_1EE0350:                                               var_25C = Ucase("Order_KOTNo")
  loc_1EE0361:                                               If (var_2C0 = var_25C) Then
  loc_1EE037F:                                                 Proc_6_17_EAA2B0(var_25C)
  loc_1EE039B:                                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE03A3:                                                 Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE03AB:                                                 Call 0.Method_arg_38 (Left(var_150, &HFA))
  loc_1EE03C4:                                               Else
  loc_1EE03CC:                                                 var_220 = "TokenNo"
  loc_1EE03E6:                                                 If (var_2C0 = Ucase(var_220)) Then
  loc_1EE03F4:                                                   Proc_6_17_EAA2B0(var_220)
  loc_1EE0410:                                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE0418:                                                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0420:                                                   Call 0.Method_arg_38 (var_154)
  loc_1EE0435:                                                 Else
  loc_1EE043D:                                                   var_220 = "Bill_No"
  loc_1EE0457:                                                   If (var_2C0 = Ucase(var_220)) Then
  loc_1EE0465:                                                     Proc_6_17_EAA2B0(var_220)
  loc_1EE0481:                                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE0489:                                                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0491:                                                     Call 0.Method_arg_38 (var_12C)
  loc_1EE04A6:                                                   Else
  loc_1EE04AE:                                                     var_220 = "BillVou"
  loc_1EE04C8:                                                     If (var_2C0 = Ucase(var_220)) Then
  loc_1EE04D6:                                                       Proc_6_17_EAA2B0(var_220)
  loc_1EE04F2:                                                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE04FA:                                                       Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0502:                                                       Call 0.Method_arg_38 (var_130)
  loc_1EE0517:                                                     Else
  loc_1EE051F:                                                       var_220 = "FolioNo"
  loc_1EE0539:                                                       If (var_2C0 = Ucase(var_220)) Then
  loc_1EE0547:                                                         Proc_6_17_EAA2B0(var_220)
  loc_1EE0563:                                                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE056B:                                                         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0573:                                                         Call 0.Method_arg_38 (var_18C)
  loc_1EE0588:                                                       Else
  loc_1EE0590:                                                         var_220 = "Remark"
  loc_1EE05AA:                                                         If (var_2C0 = Ucase(var_220)) Then
  loc_1EE05B8:                                                           Proc_6_17_EAA2B0(var_220)
  loc_1EE05D4:                                                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE05DC:                                                           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE05E4:                                                           Call 0.Method_arg_38 (var_16C)
  loc_1EE05F9:                                                         Else
  loc_1EE0601:                                                           var_220 = "CustPhone"
  loc_1EE061B:                                                           If (var_2C0 = Ucase(var_220)) Then
  loc_1EE0629:                                                             Proc_6_17_EAA2B0(var_220)
  loc_1EE0645:                                                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE064D:                                                             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0655:                                                             Call 0.Method_arg_38 (var_190)
  loc_1EE066A:                                                           Else
  loc_1EE0672:                                                             var_220 = "CustName"
  loc_1EE068C:                                                             If (var_2C0 = Ucase(var_220)) Then
  loc_1EE069A:                                                               Proc_6_17_EAA2B0(var_220)
  loc_1EE06B6:                                                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE06BE:                                                               Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE06C6:                                                               Call 0.Method_arg_38 (var_194)
  loc_1EE06DB:                                                             Else
  loc_1EE06E3:                                                               var_220 = "CustAddr1"
  loc_1EE06FD:                                                               If (var_2C0 = Ucase(var_220)) Then
  loc_1EE070B:                                                                 Proc_6_17_EAA2B0(var_220)
  loc_1EE0727:                                                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE072F:                                                                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0737:                                                                 Call 0.Method_arg_38 (var_198)
  loc_1EE074C:                                                               Else
  loc_1EE0754:                                                                 var_220 = "CustAddr2"
  loc_1EE076E:                                                                 If (var_2C0 = Ucase(var_220)) Then
  loc_1EE077C:                                                                   Proc_6_17_EAA2B0(var_220)
  loc_1EE0798:                                                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE07A0:                                                                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE07A8:                                                                   Call 0.Method_arg_38 (var_19C)
  loc_1EE07BD:                                                                 Else
  loc_1EE07C5:                                                                   var_220 = "Bill_Date"
  loc_1EE07DF:                                                                   If (var_2C0 = Ucase(var_220)) Then
  loc_1EE07ED:                                                                     Proc_6_17_EAA2B0(var_220)
  loc_1EE0809:                                                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE0811:                                                                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0819:                                                                     Call 0.Method_arg_38 (var_120)
  loc_1EE082E:                                                                   Else
  loc_1EE0836:                                                                     var_220 = "Bill_Time"
  loc_1EE0850:                                                                     If (var_2C0 = Ucase(var_220)) Then
  loc_1EE085E:                                                                       Proc_6_17_EAA2B0(var_220)
  loc_1EE087A:                                                                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE0882:                                                                       Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE088A:                                                                       Call 0.Method_arg_38 (var_124)
  loc_1EE089F:                                                                     Else
  loc_1EE08A7:                                                                       var_220 = "TotNonTaxable"
  loc_1EE08B0:                                                                       var_25C = Ucase(var_220)
  loc_1EE08C1:                                                                       If (var_2C0 = var_25C) Then
  loc_1EE08CF:                                                                         Proc_6_47_EF59D0(var_220)
  loc_1EE08DA:                                                                         Proc_6_17_EAA2B0(var_25C, var_220)
  loc_1EE08F6:                                                                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE08FE:                                                                         Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE0906:                                                                         Call 0.Method_arg_38 (var_1A4)
  loc_1EE091F:                                                                       Else
  loc_1EE0927:                                                                         var_220 = "TotTaxable"
  loc_1EE0930:                                                                         var_25C = Ucase(var_220)
  loc_1EE0941:                                                                         If (var_2C0 = var_25C) Then
  loc_1EE094F:                                                                           Proc_6_47_EF59D0(var_220)
  loc_1EE095A:                                                                           Proc_6_17_EAA2B0(var_25C, var_220)
  loc_1EE0976:                                                                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE097E:                                                                           Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE0986:                                                                           Call 0.Method_arg_38 (var_1AC)
  loc_1EE099F:                                                                         Else
  loc_1EE09A7:                                                                           var_220 = "User_Name"
  loc_1EE09C1:                                                                           If (var_2C0 = Ucase(var_220)) Then
  loc_1EE09CF:                                                                             Proc_6_17_EAA2B0(var_220)
  loc_1EE09EB:                                                                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE09F3:                                                                             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE09FB:                                                                             Call 0.Method_arg_38 (var_140)
  loc_1EE0A10:                                                                           Else
  loc_1EE0A18:                                                                             var_220 = "Header1"
  loc_1EE0A32:                                                                             If (var_2C0 = Ucase(var_220)) Then
  loc_1EE0A40:                                                                               Proc_6_17_EAA2B0(var_220)
  loc_1EE0A5C:                                                                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE0A64:                                                                               Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0A6C:                                                                               Call 0.Method_arg_38 (var_17C)
  loc_1EE0A81:                                                                             Else
  loc_1EE0A89:                                                                               var_220 = "Header2"
  loc_1EE0AA3:                                                                               If (var_2C0 = Ucase(var_220)) Then
  loc_1EE0AB1:                                                                                 Proc_6_17_EAA2B0(var_220)
  loc_1EE0ACD:                                                                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE0AD5:                                                                                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0ADD:                                                                                 Call 0.Method_arg_38 (var_180)
  loc_1EE0AF2:                                                                               Else
  loc_1EE0AFA:                                                                                 var_220 = "Header3"
  loc_1EE0B14:                                                                                 If (var_2C0 = Ucase(var_220)) Then
  loc_1EE0B22:                                                                                   Proc_6_17_EAA2B0(var_220)
  loc_1EE0B3E:                                                                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE0B46:                                                                                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0B4E:                                                                                   Call 0.Method_arg_38 (var_184)
  loc_1EE0B63:                                                                                 Else
  loc_1EE0B6B:                                                                                   var_220 = "Header4"
  loc_1EE0B85:                                                                                   If (var_2C0 = Ucase(var_220)) Then
  loc_1EE0B93:                                                                                     Proc_6_17_EAA2B0(var_220)
  loc_1EE0BAF:                                                                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE0BB7:                                                                                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0BBF:                                                                                     Call 0.Method_arg_38 (var_188)
  loc_1EE0BD4:                                                                                   Else
  loc_1EE0BDC:                                                                                     var_220 = "Slogan1"
  loc_1EE0BF6:                                                                                     If (var_2C0 = Ucase(var_220)) Then
  loc_1EE0C04:                                                                                       Proc_6_17_EAA2B0(var_220)
  loc_1EE0C20:                                                                                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE0C28:                                                                                       Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0C30:                                                                                       Call 0.Method_arg_38 (var_164)
  loc_1EE0C45:                                                                                     Else
  loc_1EE0C4D:                                                                                       var_220 = "Slogan2"
  loc_1EE0C67:                                                                                       If (var_2C0 = Ucase(var_220)) Then
  loc_1EE0C75:                                                                                         Proc_6_17_EAA2B0(var_220)
  loc_1EE0C91:                                                                                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE0C99:                                                                                         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0CA1:                                                                                         Call 0.Method_arg_38 (var_168)
  loc_1EE0CB6:                                                                                       Else
  loc_1EE0CBE:                                                                                         var_220 = "Printed"
  loc_1EE0CD8:                                                                                         If (var_2C0 = Ucase(var_220)) Then
  loc_1EE0CE6:                                                                                           Proc_6_17_EAA2B0(var_220)
  loc_1EE0D02:                                                                                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE0D0A:                                                                                           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE0D12:                                                                                           Call 0.Method_arg_38 (var_C0)
  loc_1EE0D24:                                                                                         End If
  loc_1EE0D24:                                                                                       End If
  loc_1EE0D24:                                                                                     End If
  loc_1EE0D24:                                                                                   End If
  loc_1EE0D24:                                                                                 End If
  loc_1EE0D24:                                                                               End If
  loc_1EE0D24:                                                                             End If
  loc_1EE0D24:                                                                           End If
  loc_1EE0D24:                                                                         End If
  loc_1EE0D24:                                                                       End If
  loc_1EE0D24:                                                                     End If
  loc_1EE0D24:                                                                   End If
  loc_1EE0D24:                                                                 End If
  loc_1EE0D24:                                                               End If
  loc_1EE0D24:                                                             End If
  loc_1EE0D24:                                                           End If
  loc_1EE0D24:                                                         End If
  loc_1EE0D24:                                                       End If
  loc_1EE0D24:                                                     End If
  loc_1EE0D24:                                                   End If
  loc_1EE0D24:                                                 End If
  loc_1EE0D24:                                               End If
  loc_1EE0D24:                                             End If
  loc_1EE0D24:                                           End If
  loc_1EE0D24:                                         End If
  loc_1EE0D24:                                       End If
  loc_1EE0D24:                                     End If
  loc_1EE0D24:                                   End If
  loc_1EE0D24:                                 End If
  loc_1EE0D24:                               End If
  loc_1EE0D24:                             End If
  loc_1EE0D24:                           End If
  loc_1EE0D24:                         End If
  loc_1EE0D24:                       End If
  loc_1EE0D24:                     End If
  loc_1EE0D24:                   End If
  loc_1EE0D24:                 End If
  loc_1EE0D24:               End If
  loc_1EE0D27:             Next var_2B0 'Integer
  loc_1EE0D54:             var_25C = CVar(Proc_6_38_E68A98(CVar(var_D0.Fields.Item("Printer")))) 'String
  loc_1EE0D76:             If CBool(Ucase(var_25C) <> "PRN") Then
  loc_1EE0DA5:               Proc_96_98_F0F978(Proc_6_38_E68A98(CVar(var_D0.Fields.Item("Printer"))))
  loc_1EE0DB3:             End If
  loc_1EE0DD2:             var_220 = CVar(var_134.Fields.Item("NoOfKot")) 'Address
  loc_1EE0DD9:             Proc_6_39_E7C810(var_25C)
  loc_1EE0DF3:             If (var_25C <= 0) Then
  loc_1EE0DFB:               Set var_234 = Nothing
  loc_1EE0E17:               Set var_22C = MemVar_1F921E4 
  loc_1EE0E23:               Proc_6_99_1483714(var_22C, 0, "Sale Bill Entry")
  loc_1EE0E2E:               MemVar_1F921E4 = var_22C
  loc_1EE0E3F:             Else
  loc_1EE0E65:               Proc_6_39_E7C810(var_25C, CVar(var_134.Fields.Item("NoOfKot")), &HFF)
  loc_1EE0E7A:               var_248 = False
  loc_1EE0E85:               Call 0.Method_Me8 (var_248, var_25C, var_294, var_2D4)
  loc_1EE0E94:             End If
  loc_1EE0E97:             var_D0.MoveNext
  loc_1EE0E9C:             GoTo loc_1EDF39D
  loc_1EE0E9F:           End If
  loc_1EE0E9F:         End If
  loc_1EE0E9F:       End If
  loc_1EE0E9F:     End If
  loc_1EE0E9F:     var_1FC = 0
  loc_1EE0EAB:     var_DC.Filter = var_1FC
  loc_1EE0EB3:     var_DC.MoveFirst
  loc_1EE0EB8:     ' Referenced from: 1EE10CF
  loc_1EE0EC7:     If Not(var_DC.EOF) Then
  loc_1EE0ECD:       Set var_2E8 = var_13C 
  loc_1EE0EDC:       var_2E8.AddNew var_1FC, var_248
  loc_1EE0F06:       var_2E8.Fields.Item("mLine").Value = vbNullString
  loc_1EE0F3A:       var_25C = CVar(Proc_6_38_E68A98(CVar(var_DC.Fields.Item("DispName")), var_2E4)) 'String
  loc_1EE0F5D:       var_2E8.Fields.Item("SunName").Value = var_25C
  loc_1EE0F98:       Proc_6_39_E7C810(var_25C, CVar(var_DC.Fields.Item("SValue")))
  loc_1EE0FE0:       var_2E8.Fields.Item("SunPer").Value = Format(var_25C, "0.00")
  loc_1EE101F:       Proc_6_39_E7C810(var_25C, CVar(var_DC.Fields.Item("Amount")), 1)
  loc_1EE1067:       var_2E8.Fields.Item("SunAmount").Value = Format(var_25C, "0.00")
  loc_1EE1080:       var_248 = "*"
  loc_1EE1089:       var_1FC = "Mark"
  loc_1EE10A5:       var_2E8.Fields.Item(var_1FC).Value = var_248
  loc_1EE10BC:       var_2E8.Update var_1FC, var_248
  loc_1EE10C3:       Set var_2E8 = Nothing 
  loc_1EE10CA:       var_DC.MoveNext
  loc_1EE10CF:       GoTo loc_1EE0EB8
  loc_1EE10D2:     End If
  loc_1EE10E1:     var_22C = var_C4.Fields
  loc_1EE10F1:     var_220 = CVar(var_22C.Item("U_Name")) 'Address
  loc_1EE10FA:     var_140 = Proc_6_38_E68A98(var_220, 1, 1)
  loc_1EE1129:     unk_43FED1.Execute "SELECT Header1,Header2,Header3,Header4,Slogan1,Slogan2 FROM Depart WHERE Code='" & Me(8) & "'", var_220, -1
  loc_1EE1134:     Set var_138 = var_22C
  loc_1EE114A:     var_200 = var_138.RecordCount
  loc_1EE1158:     If (var_200 > 0) Then
  loc_1EE118A:       var_17C = CStr(Trim(CVar(var_138.Fields.Item("Header1"))))
  loc_1EE11C6:       var_180 = CStr(Trim(CVar(var_138.Fields.Item("Header2"))))
  loc_1EE1202:       var_184 = CStr(Trim(CVar(var_138.Fields.Item("Header3"))))
  loc_1EE123E:       var_188 = CStr(Trim(CVar(var_138.Fields.Item("Header4"))))
  loc_1EE127A:       var_164 = CStr(Trim(CVar(var_138.Fields.Item("Slogan1"))))
  loc_1EE1296:       var_22C = var_138.Fields
  loc_1EE12A6:       var_220 = CVar(var_22C.Item("Slogan2")) 'Address
  loc_1EE12AD:       var_25C = Trim(var_220)
  loc_1EE12B6:       var_168 = CStr(var_25C)
  loc_1EE12C3:     End If
  loc_1EE12C8:     Set var_138 = Nothing
  loc_1EE12E1:     var_224 = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf,GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGE AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ST.Docid='" & Me(12)
  loc_1EE12F1:     unk_43FED1.Execute var_224 & "' And AmtCr>0", var_220, -1
  loc_1EE12FC:     Set var_1B4 = var_22C
  loc_1EE130C:     ' Referenced from: 1EE1A30
  loc_1EE131B:     If Not(var_1B4.EOF) Then
  loc_1EE132D:       var_22C = var_1B4.Fields
  loc_1EE1357:       If (Proc_6_38_E68A98(CVar(var_22C.Item("CompName")), var_22C, var_22C) <> vbNullString) Then
  loc_1EE1371:         var_234 = var_1B4.Fields.Item("AmtCr")
  loc_1EE1380:         Proc_6_39_E7C810(var_25C, CVar(var_234), 1)
  loc_1EE13B2:         var_2D4 = "-"
  loc_1EE13E6:         var_328 = CVar(var_1B8) & CVar(Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("CompName")), 1 & Format(var_25C, "0.00") & var_2D4, 1)) 
  loc_1EE142C:         var_1B8 = CStr(var_234 & CVar(Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("PayName")), var_328 & " (")) & "), ")
  loc_1EE1476:         var_220 = CVar(var_1B4.Fields.Item("AmtCr")) 'Address
  loc_1EE147D:         Proc_6_39_E7C810(var_25C, var_220)
  loc_1EE14AF:         var_2D4 = " - "
  loc_1EE14C7:         var_238 = var_1B4.Fields
  loc_1EE14CF:         var_24C = var_238.Item("Comments")
  loc_1EE14E7:         var_338 = "-"
  loc_1EE14FF:         var_34C = var_1B4.Fields
  loc_1EE1518:         var_380 = CVar(Proc_6_38_E68A98(CVar(var_34C.Item("CompName")), CVar(var_1BC) & CVar(Proc_6_38_E68A98(CVar(var_24C), 1 & Format(var_25C, "0.00") & var_2D4, 1)) & " (")) 'String
  loc_1EE1561:         var_1BC = CStr(var_220 & var_380 & " (" & CVar(Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("PayName")))) & "), ")
  loc_1EE1599:       Else
  loc_1EE15D2:         If (Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("PayType"))) = "Room") Then
  loc_1EE161C:           var_224 = Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("DocID")), "Select IsNull(max(RoomNo),'') from PayCharge where DocId='", var_25C, -1, var_238)
  loc_1EE163E:           unk_43FED1.Execute var_24C & Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("PayType"))) & "' And PayCode = '" & MemVar_1F92078 & "TOUT'", 0, var_34C
  loc_1EE164E:            = var_24C.Item()
  loc_1EE1656:            = var_34C.Value
  loc_1EE1663:           var_1C0 = Proc_6_38_E68A98(var_238.Fields)
  loc_1EE16A6:           var_220 = CVar(var_1B4.Fields.Item("AmtCr")) 'Address
  loc_1EE16AD:           Proc_6_39_E7C810(var_25C)
  loc_1EE1713:           var_328 = CVar(var_1B8) & CVar(Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("PayName")), 1 & Format(var_25C, "0.00") & " (", 1)) 
  loc_1EE1734:           var_1B8 = CStr(var_328 & " Room:   " & CVar(var_1C0) & " ), ")
  loc_1EE1778:           var_220 = CVar(var_1B4.Fields.Item("AmtCr")) 'Address
  loc_1EE177F:           Proc_6_39_E7C810(var_25C, var_220)
  loc_1EE17B1:           var_2D4 = " - "
  loc_1EE17E5:           var_328 = CVar(var_1BC) & CVar(Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("Comments")), 1 & Format(var_25C, "0.00") & " (", 1)) 
  loc_1EE1830:           var_3D8 = var_220 & CVar(Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("PayName")), var_328 & " (")) & " Room:   " & CVar(var_1C0) 
  loc_1EE183E:           var_1BC = CStr(var_3D8 & " ), ")
  loc_1EE1870:         Else
  loc_1EE188F:           var_220 = CVar(var_1B4.Fields.Item("AmtCr")) 'Address
  loc_1EE1896:           Proc_6_39_E7C810(var_25C)
  loc_1EE18FC:           var_328 = CVar(var_1B8) & CVar(Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("PayName")), 1 & Format(var_25C, "0.00") & " (", 1)) 
  loc_1EE190A:           var_1B8 = CStr(var_328 & "), ")
  loc_1EE1942:           var_234 = var_1B4.Fields.Item("AmtCr")
  loc_1EE194A:           var_220 = CVar(var_234) 'Address
  loc_1EE1951:           Proc_6_39_E7C810(var_25C, var_220)
  loc_1EE1983:           var_2D4 = " - "
  loc_1EE199B:           var_238 = var_1B4.Fields
  loc_1EE19A3:           var_24C = var_238.Item("Comments")
  loc_1EE19D3:           var_34C = var_1B4.Fields
  loc_1EE19EC:           var_380 = CVar(Proc_6_38_E68A98(CVar(var_34C.Item("PayName")), CVar(var_1BC) & CVar(Proc_6_38_E68A98(CVar(var_24C), 1 & Format(var_25C, "0.00") & " (", 1)) & " (")) 'String
  loc_1EE19FD:           var_1BC = CStr(var_220 & var_380 & "), ")
  loc_1EE1A28:         End If
  loc_1EE1A28:       End If
  loc_1EE1A2B:       var_1B4.MoveNext
  loc_1EE1A30:       GoTo loc_1EE130C
  loc_1EE1A33:     End If
  loc_1EE1A74:     var_308 = (Len(Trim(var_1B8)) - 1)
  loc_1EE1AB3:     var_1B8 = CStr(Left(Trim(var_1B8), CLng(IIf((Len(Trim(var_1B8)) > 0), CVar(var_24C), 0))))
  loc_1EE1ADC:     var_248 = var_1BC
  loc_1EE1AEC:     var_2D4 = var_1BC
  loc_1EE1AF4:     var_2A4 = Trim(var_2D4)
  loc_1EE1B05:     var_2E4 = 1
  loc_1EE1B0A:     var_308 = (Len(var_2A4) - var_2E4)
  loc_1EE1B1C:     var_294 = 0
  loc_1EE1B26:     var_318 = (Len(Trim(var_248)) > var_294) 'Variant
  loc_1EE1B49:     var_1BC = CStr(Left(Trim(var_1BC), CLng(IIf(var_318, CVar(var_24C), 0))))
  loc_1EE1B61:     var_156 = &HFF
  loc_1EE1B67:     var_15C = "POSBillWinPrint"
  loc_1EE1B6A:     var_1FC = "POS Sale Bill"
  loc_1EE1B81:     var_160 = CStr(Ucase(var_1FC))
  loc_1EE1B91:     If (var_156 = 0) Then
  loc_1EE1B94:       Exit Sub
  loc_1EE1B95:     End If
  loc_1EE1BB9:     Set var_22C = var_C8 
  loc_1EE1BC0:     CreateFieldDefFile(var_22C, MemVar_1F920B4 & "\" & var_15C & ".ttx")
  loc_1EE1BEB:     var_224 = MemVar_1F920B4 & "\"
  loc_1EE1C02:     Call 0.Method_arg_1C (var_224 & var_15C & ".RPT", var_1FC, var_22C)
  loc_1EE1C0D:     MemVar_1F921E4 = var_22C
  loc_1EE1C36:     Call 0.Method_arg_64 (var_22C, CVar(var_22C), var_248)
  loc_1EE1C3E:     Call 0.Method_arg_2C (var_294, &HFF)
  loc_1EE1C4C:     Call 0.Method_arg_150 (var_156)
  loc_1EE1C62:     Call 0.Method_arg_90 (var_22C, var_200)
  loc_1EE1C6A:     Call 0.Method_arg_24 (var_BA)
  loc_1EE1C76:     For var_420 =  To CInt(var_200): 1 = var_420 'Integer
  loc_1EE1C8F:       Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE1C97:       Call 0.Method_arg_20 (var_234)
  loc_1EE1C9F:       Call 0.Method_arg_30 (var_224)
  loc_1EE1CB5:       var_430 = Ucase(CVar(var_224)) 'Variant
  loc_1EE1CCB:       var_220 = "comp_name"
  loc_1EE1CE5:       If (var_430 = Ucase(var_220)) Then
  loc_1EE1CF3:         Proc_6_17_EAA2B0(var_220)
  loc_1EE1D0F:         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE1D17:         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE1D1F:         Call 0.Method_arg_38 (MemVar_1F92130)
  loc_1EE1D34:       Else
  loc_1EE1D3C:         var_220 = "comp_add1"
  loc_1EE1D56:         If (var_430 = Ucase(var_220)) Then
  loc_1EE1D64:           Proc_6_17_EAA2B0(var_220)
  loc_1EE1D80:           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE1D88:           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE1D90:           Call 0.Method_arg_38 (MemVar_1F92134)
  loc_1EE1DA5:         Else
  loc_1EE1DAD:           var_220 = "comp_pin"
  loc_1EE1DC7:           If (var_430 = Ucase(var_220)) Then
  loc_1EE1DD5:             Proc_6_17_EAA2B0(var_220)
  loc_1EE1DF1:             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE1DF9:             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE1E01:             Call 0.Method_arg_38 (MemVar_1F9213C)
  loc_1EE1E16:           Else
  loc_1EE1E38:             If (var_430 = Ucase("comp_GSTIN")) Then
  loc_1EE1E5C:               Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE1E64:               Call 0.Method_arg_20 (var_234)
  loc_1EE1E6C:               Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_1EE1E82:             Else
  loc_1EE1E8A:               var_220 = "Comp_Phone_Fax"
  loc_1EE1EA4:               If (var_430 = Ucase(var_220)) Then
  loc_1EE1EB2:                 Proc_6_17_EAA2B0(var_220)
  loc_1EE1ECE:                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE1ED6:                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE1EDE:                 Call 0.Method_arg_38 (var_170)
  loc_1EE1EF3:               Else
  loc_1EE1EFB:                 var_220 = "Outl_Phone_Fax"
  loc_1EE1F15:                 If (var_430 = Ucase(var_220)) Then
  loc_1EE1F23:                   Proc_6_17_EAA2B0(var_220)
  loc_1EE1F3F:                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE1F47:                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE1F4F:                   Call 0.Method_arg_38 (var_174)
  loc_1EE1F64:                 Else
  loc_1EE1F6C:                   var_220 = "CompTitleYN"
  loc_1EE1F86:                   If (var_430 = Ucase(var_220)) Then
  loc_1EE1F94:                     Proc_6_17_EAA2B0(var_220)
  loc_1EE1FB0:                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE1FB8:                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE1FC0:                     Call 0.Method_arg_38 (var_178)
  loc_1EE1FD5:                   Else
  loc_1EE1FDD:                     var_220 = "Outlet_Title"
  loc_1EE1FF7:                     If (var_430 = Ucase(var_220)) Then
  loc_1EE2005:                       Proc_6_17_EAA2B0(var_220)
  loc_1EE2021:                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2029:                       Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2031:                       Call 0.Method_arg_38 (var_10C)
  loc_1EE2046:                     Else
  loc_1EE204E:                       var_220 = "Waiter_Name"
  loc_1EE2068:                       If (var_430 = Ucase(var_220)) Then
  loc_1EE2076:                         Proc_6_17_EAA2B0(var_220)
  loc_1EE2092:                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE209A:                         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE20A2:                         Call 0.Method_arg_38 (var_114)
  loc_1EE20B7:                       Else
  loc_1EE20BF:                         var_220 = "Covers"
  loc_1EE20D9:                         If (var_430 = Ucase(var_220)) Then
  loc_1EE20E7:                           Proc_6_17_EAA2B0(var_220)
  loc_1EE2103:                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE210B:                           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2113:                           Call 0.Method_arg_38 (var_128)
  loc_1EE2128:                         Else
  loc_1EE2130:                           var_220 = "Cst_No"
  loc_1EE214A:                           If (var_430 = Ucase(var_220)) Then
  loc_1EE2158:                             Proc_6_17_EAA2B0(var_220)
  loc_1EE2174:                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE217C:                             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2184:                             Call 0.Method_arg_38 (var_144)
  loc_1EE2199:                           Else
  loc_1EE21A1:                             var_220 = "Lst_No"
  loc_1EE21BB:                             If (var_430 = Ucase(var_220)) Then
  loc_1EE21C9:                               Proc_6_17_EAA2B0(var_220)
  loc_1EE21E5:                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE21ED:                               Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE21F5:                               Call 0.Method_arg_38 (var_148)
  loc_1EE220A:                             Else
  loc_1EE2212:                               var_220 = "lblRoom_TableNo"
  loc_1EE222C:                               If (var_430 = Ucase(var_220)) Then
  loc_1EE223A:                                 Proc_6_17_EAA2B0(var_220)
  loc_1EE2256:                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE225E:                                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2266:                                 Call 0.Method_arg_38 (var_118)
  loc_1EE227B:                               Else
  loc_1EE2283:                                 var_220 = "Room_TableNo"
  loc_1EE229D:                                 If (var_430 = Ucase(var_220)) Then
  loc_1EE22AB:                                   Proc_6_17_EAA2B0(var_220)
  loc_1EE22C7:                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE22CF:                                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE22D7:                                   Call 0.Method_arg_38 (var_11C)
  loc_1EE22EC:                                 Else
  loc_1EE22F4:                                   var_220 = "lblOrder_KOTNo"
  loc_1EE230E:                                   If (var_430 = Ucase(var_220)) Then
  loc_1EE231C:                                     Proc_6_17_EAA2B0(var_220)
  loc_1EE2338:                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2340:                                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2348:                                     Call 0.Method_arg_38 (var_14C)
  loc_1EE235D:                                   Else
  loc_1EE236E:                                     var_25C = Ucase("Order_KOTNo")
  loc_1EE237F:                                     If (var_430 = var_25C) Then
  loc_1EE239D:                                       Proc_6_17_EAA2B0(var_25C)
  loc_1EE23B9:                                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE23C1:                                       Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE23C9:                                       Call 0.Method_arg_38 (Left(var_150, &HFA))
  loc_1EE23E2:                                     Else
  loc_1EE23EA:                                       var_220 = "TokenNo"
  loc_1EE2404:                                       If (var_430 = Ucase(var_220)) Then
  loc_1EE2412:                                         Proc_6_17_EAA2B0(var_220)
  loc_1EE242E:                                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2436:                                         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE243E:                                         Call 0.Method_arg_38 (var_154)
  loc_1EE2453:                                       Else
  loc_1EE245B:                                         var_220 = "Bill_No"
  loc_1EE2475:                                         If (var_430 = Ucase(var_220)) Then
  loc_1EE2483:                                           Proc_6_17_EAA2B0(var_220)
  loc_1EE249F:                                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE24A7:                                           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE24AF:                                           Call 0.Method_arg_38 (var_12C)
  loc_1EE24C4:                                         Else
  loc_1EE24CC:                                           var_220 = "BillVou"
  loc_1EE24E6:                                           If (var_430 = Ucase(var_220)) Then
  loc_1EE24F4:                                             Proc_6_17_EAA2B0(var_220)
  loc_1EE2510:                                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2518:                                             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2520:                                             Call 0.Method_arg_38 (var_130)
  loc_1EE2535:                                           Else
  loc_1EE253D:                                             var_220 = "FolioNo"
  loc_1EE2557:                                             If (var_430 = Ucase(var_220)) Then
  loc_1EE2565:                                               Proc_6_17_EAA2B0(var_220)
  loc_1EE2581:                                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2589:                                               Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2591:                                               Call 0.Method_arg_38 (var_18C)
  loc_1EE25A6:                                             Else
  loc_1EE25AE:                                               var_220 = "Remark"
  loc_1EE25C8:                                               If (var_430 = Ucase(var_220)) Then
  loc_1EE25D6:                                                 Proc_6_17_EAA2B0(var_220)
  loc_1EE25F2:                                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE25FA:                                                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2602:                                                 Call 0.Method_arg_38 (var_16C)
  loc_1EE2617:                                               Else
  loc_1EE261F:                                                 var_220 = "CustPhone"
  loc_1EE2639:                                                 If (var_430 = Ucase(var_220)) Then
  loc_1EE2647:                                                   Proc_6_17_EAA2B0(var_220)
  loc_1EE2663:                                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE266B:                                                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2673:                                                   Call 0.Method_arg_38 (var_190)
  loc_1EE2688:                                                 Else
  loc_1EE2690:                                                   var_220 = "CustName"
  loc_1EE26AA:                                                   If (var_430 = Ucase(var_220)) Then
  loc_1EE26B8:                                                     Proc_6_17_EAA2B0(var_220)
  loc_1EE26D4:                                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE26DC:                                                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE26E4:                                                     Call 0.Method_arg_38 (var_194)
  loc_1EE26F9:                                                   Else
  loc_1EE2701:                                                     var_220 = "CustAddr1"
  loc_1EE271B:                                                     If (var_430 = Ucase(var_220)) Then
  loc_1EE2729:                                                       Proc_6_17_EAA2B0(var_220)
  loc_1EE2745:                                                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE274D:                                                       Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2755:                                                       Call 0.Method_arg_38 (var_198)
  loc_1EE276A:                                                     Else
  loc_1EE2772:                                                       var_220 = "CustAddr2"
  loc_1EE278C:                                                       If (var_430 = Ucase(var_220)) Then
  loc_1EE279A:                                                         Proc_6_17_EAA2B0(var_220)
  loc_1EE27B6:                                                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE27BE:                                                         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE27C6:                                                         Call 0.Method_arg_38 (var_19C)
  loc_1EE27DB:                                                       Else
  loc_1EE27E3:                                                         var_220 = "Bill_Date"
  loc_1EE27FD:                                                         If (var_430 = Ucase(var_220)) Then
  loc_1EE280B:                                                           Proc_6_17_EAA2B0(var_220)
  loc_1EE2827:                                                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE282F:                                                           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2837:                                                           Call 0.Method_arg_38 (var_120)
  loc_1EE284C:                                                         Else
  loc_1EE2854:                                                           var_220 = "Bill_Time"
  loc_1EE286E:                                                           If (var_430 = Ucase(var_220)) Then
  loc_1EE287C:                                                             Proc_6_17_EAA2B0(var_220)
  loc_1EE2898:                                                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE28A0:                                                             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE28A8:                                                             Call 0.Method_arg_38 (var_124)
  loc_1EE28BD:                                                           Else
  loc_1EE28C5:                                                             var_220 = "TotNonTaxable"
  loc_1EE28CE:                                                             var_25C = Ucase(var_220)
  loc_1EE28DF:                                                             If (var_430 = var_25C) Then
  loc_1EE28ED:                                                               Proc_6_47_EF59D0(var_220)
  loc_1EE28F8:                                                               Proc_6_17_EAA2B0(var_25C, var_220)
  loc_1EE2914:                                                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE291C:                                                               Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE2924:                                                               Call 0.Method_arg_38 (var_1A4)
  loc_1EE293D:                                                             Else
  loc_1EE2945:                                                               var_220 = "TotTaxable"
  loc_1EE294E:                                                               var_25C = Ucase(var_220)
  loc_1EE295F:                                                               If (var_430 = var_25C) Then
  loc_1EE296D:                                                                 Proc_6_47_EF59D0(var_220)
  loc_1EE2978:                                                                 Proc_6_17_EAA2B0(var_25C, var_220)
  loc_1EE2994:                                                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE299C:                                                                 Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE29A4:                                                                 Call 0.Method_arg_38 (var_1AC)
  loc_1EE29BD:                                                               Else
  loc_1EE29C5:                                                                 var_220 = "User_Name"
  loc_1EE29DF:                                                                 If (var_430 = Ucase(var_220)) Then
  loc_1EE29ED:                                                                   Proc_6_17_EAA2B0(var_220)
  loc_1EE2A09:                                                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2A11:                                                                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2A19:                                                                   Call 0.Method_arg_38 (var_140)
  loc_1EE2A2E:                                                                 Else
  loc_1EE2A36:                                                                   var_220 = "Header1"
  loc_1EE2A50:                                                                   If (var_430 = Ucase(var_220)) Then
  loc_1EE2A5E:                                                                     Proc_6_17_EAA2B0(var_220)
  loc_1EE2A7A:                                                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2A82:                                                                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2A8A:                                                                     Call 0.Method_arg_38 (var_17C)
  loc_1EE2A9F:                                                                   Else
  loc_1EE2AA7:                                                                     var_220 = "Header2"
  loc_1EE2AC1:                                                                     If (var_430 = Ucase(var_220)) Then
  loc_1EE2ACF:                                                                       Proc_6_17_EAA2B0(var_220)
  loc_1EE2AEB:                                                                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2AF3:                                                                       Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2AFB:                                                                       Call 0.Method_arg_38 (var_180)
  loc_1EE2B10:                                                                     Else
  loc_1EE2B18:                                                                       var_220 = "Header3"
  loc_1EE2B32:                                                                       If (var_430 = Ucase(var_220)) Then
  loc_1EE2B40:                                                                         Proc_6_17_EAA2B0(var_220)
  loc_1EE2B5C:                                                                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2B64:                                                                         Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2B6C:                                                                         Call 0.Method_arg_38 (var_184)
  loc_1EE2B81:                                                                       Else
  loc_1EE2B89:                                                                         var_220 = "Header4"
  loc_1EE2BA3:                                                                         If (var_430 = Ucase(var_220)) Then
  loc_1EE2BB1:                                                                           Proc_6_17_EAA2B0(var_220)
  loc_1EE2BCD:                                                                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2BD5:                                                                           Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2BDD:                                                                           Call 0.Method_arg_38 (var_188)
  loc_1EE2BF2:                                                                         Else
  loc_1EE2BFA:                                                                           var_220 = "Slogan1"
  loc_1EE2C14:                                                                           If (var_430 = Ucase(var_220)) Then
  loc_1EE2C22:                                                                             Proc_6_17_EAA2B0(var_220)
  loc_1EE2C3E:                                                                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2C46:                                                                             Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2C4E:                                                                             Call 0.Method_arg_38 (var_164)
  loc_1EE2C63:                                                                           Else
  loc_1EE2C6B:                                                                             var_220 = "Slogan2"
  loc_1EE2C85:                                                                             If (var_430 = Ucase(var_220)) Then
  loc_1EE2C93:                                                                               Proc_6_17_EAA2B0(var_220)
  loc_1EE2CAF:                                                                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2CB7:                                                                               Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2CBF:                                                                               Call 0.Method_arg_38 (var_168)
  loc_1EE2CD4:                                                                             Else
  loc_1EE2CDC:                                                                               var_220 = "SettleMode"
  loc_1EE2CF6:                                                                               If (var_430 = Ucase(var_220)) Then
  loc_1EE2D04:                                                                                 Proc_6_17_EAA2B0(var_220)
  loc_1EE2D20:                                                                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2D28:                                                                                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2D30:                                                                                 Call 0.Method_arg_38 (var_1B8)
  loc_1EE2D45:                                                                               Else
  loc_1EE2D4D:                                                                                 var_220 = "SettleMode1"
  loc_1EE2D67:                                                                                 If (var_430 = Ucase(var_220)) Then
  loc_1EE2D75:                                                                                   Proc_6_17_EAA2B0(var_220)
  loc_1EE2D91:                                                                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2D99:                                                                                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2DA1:                                                                                   Call 0.Method_arg_38 (var_1BC)
  loc_1EE2DB6:                                                                                 Else
  loc_1EE2DBE:                                                                                   var_220 = "Printed"
  loc_1EE2DD8:                                                                                   If (var_430 = Ucase(var_220)) Then
  loc_1EE2DE6:                                                                                     Proc_6_17_EAA2B0(var_220)
  loc_1EE2E02:                                                                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2E0A:                                                                                     Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE2E12:                                                                                     Call 0.Method_arg_38 (var_C0)
  loc_1EE2E27:                                                                                   Else
  loc_1EE2E38:                                                                                     var_25C = Ucase("Company")
  loc_1EE2E49:                                                                                     If (var_430 = var_25C) Then
  loc_1EE2E62:                                                                                       Proc_6_17_EAA2B0(var_25C)
  loc_1EE2E7E:                                                                                       Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2E86:                                                                                       Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE2E8E:                                                                                       Call 0.Method_arg_38 (Trim(var_1D0))
  loc_1EE2EA7:                                                                                     Else
  loc_1EE2EB8:                                                                                       var_25C = Ucase("CompanyAdd1")
  loc_1EE2EC9:                                                                                       If (var_430 = var_25C) Then
  loc_1EE2EE2:                                                                                         Proc_6_17_EAA2B0(var_25C)
  loc_1EE2EFE:                                                                                         Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2F06:                                                                                         Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE2F0E:                                                                                         Call 0.Method_arg_38 (Trim(var_1D4))
  loc_1EE2F27:                                                                                       Else
  loc_1EE2F38:                                                                                         var_25C = Ucase("CompanyAdd2")
  loc_1EE2F49:                                                                                         If (var_430 = var_25C) Then
  loc_1EE2F62:                                                                                           Proc_6_17_EAA2B0(var_25C)
  loc_1EE2F7E:                                                                                           Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE2F86:                                                                                           Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE2F8E:                                                                                           Call 0.Method_arg_38 (Trim(var_1D8))
  loc_1EE2FA7:                                                                                         Else
  loc_1EE2FB8:                                                                                           var_25C = Ucase("CompanyAdd3")
  loc_1EE2FC9:                                                                                           If (var_430 = var_25C) Then
  loc_1EE2FE2:                                                                                             Proc_6_17_EAA2B0(var_25C)
  loc_1EE2FFE:                                                                                             Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE3006:                                                                                             Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE300E:                                                                                             Call 0.Method_arg_38 (Trim(var_1DC))
  loc_1EE3027:                                                                                           Else
  loc_1EE3038:                                                                                             var_25C = Ucase("CompanyCity")
  loc_1EE3049:                                                                                             If (var_430 = var_25C) Then
  loc_1EE3062:                                                                                               Proc_6_17_EAA2B0(var_25C)
  loc_1EE307E:                                                                                               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE3086:                                                                                               Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE308E:                                                                                               Call 0.Method_arg_38 (Trim(var_1E0))
  loc_1EE30A7:                                                                                             Else
  loc_1EE30B8:                                                                                               var_25C = Ucase("CompanyStateCode")
  loc_1EE30C9:                                                                                               If (var_430 = var_25C) Then
  loc_1EE30E2:                                                                                                 Proc_6_17_EAA2B0(var_25C)
  loc_1EE30FE:                                                                                                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE3106:                                                                                                 Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE310E:                                                                                                 Call 0.Method_arg_38 (Trim(var_1E4))
  loc_1EE3127:                                                                                               Else
  loc_1EE3138:                                                                                                 var_25C = Ucase("CompanyState")
  loc_1EE3149:                                                                                                 If (var_430 = var_25C) Then
  loc_1EE3162:                                                                                                   Proc_6_17_EAA2B0(var_25C)
  loc_1EE317E:                                                                                                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE3183:                                                                                                   Do 'loop at:                                                                                           1EF2E7D
  loc_1EE3186:                                                                                                   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE318E:                                                                                                   Call 0.Method_arg_38 (Trim(var_1E8))
  loc_1EE31A7:                                                                                                 Else
  loc_1EE31B8:                                                                                                   var_25C = Ucase("CompanyGSTIN")
  loc_1EE31C9:                                                                                                   If (var_430 = var_25C) Then
  loc_1EE31E2:                                                                                                     Proc_6_17_EAA2B0(var_25C)
  loc_1EE31EA:                                                                                                     var_224 = CStr(var_25C)
  loc_1EE31FE:                                                                                                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE3206:                                                                                                     Call 0.Method_arg_20 (var_224)
  loc_1EE320E:                                                                                                     Call 0.Method_arg_38 (Trim(var_1EC))
  loc_1EE3224:                                                                                                   End If
  loc_1EE3224:                                                                                                 End If
  loc_1EE3224:                                                                                               End If
  loc_1EE3224:                                                                                             End If
  loc_1EE3224:                                                                                           End If
  loc_1EE3224:                                                                                         End If
  loc_1EE3224:                                                                                       End If
  loc_1EE3224:                                                                                     End If
  loc_1EE3224:                                                                                   End If
  loc_1EE3224:                                                                                 End If
  loc_1EE3224:                                                                               End If
  loc_1EE3224:                                                                             End If
  loc_1EE3224:                                                                           End If
  loc_1EE3224:                                                                         End If
  loc_1EE3224:                                                                       End If
  loc_1EE3224:                                                                     End If
  loc_1EE3224:                                                                   End If
  loc_1EE3224:                                                                 End If
  loc_1EE3224:                                                               End If
  loc_1EE3224:                                                             End If
  loc_1EE3224:                                                           End If
  loc_1EE3224:                                                         End If
  loc_1EE3224:                                                       End If
  loc_1EE3224:                                                     End If
  loc_1EE3224:                                                   End If
  loc_1EE3224:                                                 End If
  loc_1EE3224:                                               End If
  loc_1EE3224:                                             End If
  loc_1EE3224:                                           End If
  loc_1EE3224:                                         End If
  loc_1EE3224:                                       End If
  loc_1EE3224:                                     End If
  loc_1EE3224:                                   End If
  loc_1EE3224:                                 End If
  loc_1EE3224:                               End If
  loc_1EE3224:                             End If
  loc_1EE3224:                           End If
  loc_1EE3224:                         End If
  loc_1EE3224:                       End If
  loc_1EE3224:                     End If
  loc_1EE3224:                   End If
  loc_1EE3224:                 End If
  loc_1EE3224:               End If
  loc_1EE3224:             End If
  loc_1EE3224:           End If
  loc_1EE3224:         End If
  loc_1EE3224:       End If
  loc_1EE3227:     Next var_420 'Integer
  loc_1EE3232:     var_200 = var_DC.RecordCount
  loc_1EE3240:     If (var_200 > 0) Then
  loc_1EE3246:       var_DC.MoveFirst
  loc_1EE324B:       ' Referenced from: 1EE39C6
  loc_1EE325A:       If Not(var_DC.EOF) Then
  loc_1EE3283:         var_25C = Trim(CVar(var_DC.Fields.Item("SunCode")))
  loc_1EE32B1:         If (Ucase(var_25C) = CVar(MemVar_1F92078 & "NET")) Then
  loc_1EE32F4:           var_22C = var_DC.Fields
  loc_1EE32FC:           var_234 = var_22C.Item("Amount")
  loc_1EE3304:           var_220 = CVar(var_234) 'Address
  loc_1EE330B:           Proc_6_39_E7C810(var_25C)
  loc_1EE3334:           var_1CC = CStr(Format(var_25C, "0.00"))
  loc_1EE3356:           Call 0.Method_arg_90 (var_22C, var_200, var_BA, 1)
  loc_1EE335E:           Call 0.Method_arg_24 (1, 1)
  loc_1EE336A:           For var_434 =  To CInt(var_200): var_220 = var_434 'Integer
  loc_1EE3383:             Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE338B:             Call 0.Method_arg_20 (var_234)
  loc_1EE3393:             Call 0.Method_arg_30 (var_224)
  loc_1EE33A9:             var_444 = Ucase(CVar(var_224)) 'Variant
  loc_1EE33BF:             var_220 = "lblNetAmount"
  loc_1EE33D9:             If (var_444 = Ucase(var_220)) Then
  loc_1EE33E7:               Proc_6_17_EAA2B0(var_220)
  loc_1EE3403:               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE340B:               Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE3413:               Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_DC.Fields.Item("DispName"))))
  loc_1EE3428:             Else
  loc_1EE3430:               var_220 = "NetAmount"
  loc_1EE344A:               If (var_444 = Ucase(var_220)) Then
  loc_1EE3458:                 Proc_6_17_EAA2B0(var_220)
  loc_1EE3460:                 var_224 = CStr(var_220)
  loc_1EE3474:                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE347C:                 Call 0.Method_arg_20 (var_224)
  loc_1EE3484:                 Call 0.Method_arg_38 (var_1CC)
  loc_1EE3496:               End If
  loc_1EE3496:             End If
  loc_1EE3499:           Next var_434 'Integer
  loc_1EE34A1:         Else
  loc_1EE34C7:           var_25C = Trim(CVar(var_DC.Fields.Item("SunCode")))
  loc_1EE34F5:           If (Ucase(var_25C) = CVar(MemVar_1F92078 & "TOT")) Then
  loc_1EE3538:             var_22C = var_DC.Fields
  loc_1EE3540:             var_234 = var_22C.Item("Amount")
  loc_1EE3548:             var_220 = CVar(var_234) 'Address
  loc_1EE354F:             Proc_6_39_E7C810(var_25C)
  loc_1EE3578:             var_1CC = CStr(Format(var_25C, "0.00"))
  loc_1EE359A:             Call 0.Method_arg_90 (var_22C, var_200, var_BA, 1)
  loc_1EE35A2:             Call 0.Method_arg_24 (1, 1)
  loc_1EE35AE:             For var_448 =  To CInt(var_200):   var_220 = var_448 'Integer
  loc_1EE35C7:               Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE35CF:               Call 0.Method_arg_20 (var_234)
  loc_1EE35D7:               Call 0.Method_arg_30 (var_224)
  loc_1EE35ED:               var_458 = Ucase(CVar(var_224)) 'Variant
  loc_1EE3603:               var_220 = "lblTotal"
  loc_1EE361D:               If (var_458 = Ucase(var_220)) Then
  loc_1EE362B:                 Proc_6_17_EAA2B0(var_220)
  loc_1EE3647:                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE364F:                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE3657:                 Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_DC.Fields.Item("DispName"))))
  loc_1EE366C:               Else
  loc_1EE3674:                 var_220 = "Total"
  loc_1EE367D:                 var_25C = Ucase(var_220)
  loc_1EE368E:                 If (var_458 = var_25C) Then
  loc_1EE369C:                   Proc_6_17_EAA2B0(var_220)
  loc_1EE36A4:                   var_224 = CStr(var_220)
  loc_1EE36B8:                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE36C0:                   Call 0.Method_arg_20 (var_224)
  loc_1EE36C8:                   Call 0.Method_arg_38 (var_1CC)
  loc_1EE36DA:                 End If
  loc_1EE36DA:               End If
  loc_1EE36DD:             Next var_448 'Integer
  loc_1EE36E5:           Else
  loc_1EE3735:             var_220 = CVar(var_DC.Fields.Item("SValue")) 'Address
  loc_1EE373C:             Proc_6_39_E7C810(var_25C)
  loc_1EE3765:             var_1C8 = CStr(Format(var_25C, "0.00"))
  loc_1EE3785:             var_22C = var_DC.Fields
  loc_1EE378D:             var_234 = var_22C.Item("Amount")
  loc_1EE3795:             var_220 = CVar(var_234) 'Address
  loc_1EE379C:             Proc_6_39_E7C810(var_25C, var_220, 1)
  loc_1EE37C5:             var_1CC = CStr(Format(var_25C, "0.00"))
  loc_1EE37DC:             var_BC = (var_BC + 1)
  loc_1EE37F0:             Call 0.Method_arg_90 (var_22C, var_200, var_BA, 1, var_BC)
  loc_1EE37F8:             Call 0.Method_arg_24 (1, 1)
  loc_1EE3804:             For var_45C = var_220 To CInt(var_200):     1 = var_45C 'Integer
  loc_1EE381D:               Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE3825:               Call 0.Method_arg_20 (var_224)
  loc_1EE382D:               Call 0.Method_arg_30 (var_220)
  loc_1EE3843:               var_46C = Ucase(CVar(var_224)) 'Variant
  loc_1EE3860:               var_220 = CVar("lblSunName" & CStr(var_BC)) 'String
  loc_1EE387A:               If (var_46C = Ucase(var_220)) Then
  loc_1EE3888:                 Proc_6_17_EAA2B0(var_220)
  loc_1EE38A4:                 Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE38AC:                 Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE38B4:                 Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_DC.Fields.Item("DispName"))))
  loc_1EE38C9:               Else
  loc_1EE38D8:                 var_220 = CVar("SunPer" & CStr(var_BC)) 'String
  loc_1EE38F2:                 If (var_46C = Ucase(var_220)) Then
  loc_1EE3900:                   Proc_6_17_EAA2B0(var_220)
  loc_1EE391C:                   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE3924:                   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE392C:                   Call 0.Method_arg_38 (var_1C8)
  loc_1EE3941:                 Else
  loc_1EE3950:                   var_220 = CVar("SunAmt" & CStr(var_BC)) 'String
  loc_1EE396A:                   If (var_46C = Ucase(var_220)) Then
  loc_1EE3978:                     Proc_6_17_EAA2B0(var_220)
  loc_1EE3980:                     var_224 = CStr(var_220)
  loc_1EE3994:                     Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE399C:                     Call 0.Method_arg_20 (var_224)
  loc_1EE39A4:                     Call 0.Method_arg_38 (var_1CC)
  loc_1EE39B6:                   End If
  loc_1EE39B6:                 End If
  loc_1EE39B6:               End If
  loc_1EE39B9:             Next var_45C 'Integer
  loc_1EE39BE:           End If
  loc_1EE39BE:         End If
  loc_1EE39C1:         var_DC.MoveNext
  loc_1EE39C6:         GoTo loc_1EE324B
  loc_1EE39C9:       End If
  loc_1EE39C9:     End If
  loc_1EE39CF:     var_200 = var_13C.RecordCount
  loc_1EE39DD:     If (var_200 > 0) Then
  loc_1EE39E3:       var_13C.MoveFirst
  loc_1EE39E8:       ' Referenced from: 1EE3C99
  loc_1EE39F7:       If Not(var_13C.EOF) Then
  loc_1EE3A0B:         Call 0.Method_arg_90 (var_22C, var_200)
  loc_1EE3A13:         Call 0.Method_arg_24 (var_BA)
  loc_1EE3A1F:         For var_470 =  To CInt(var_200): 1 = var_470 'Integer
  loc_1EE3A4B:           var_25C = Ucase(CVar(var_13C.Fields.Item("SunName")))
  loc_1EE3A66:           Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EE3A6E:           Call 0.Method_arg_20 (var_224)
  loc_1EE3A76:           Call 0.Method_arg_30 (var_25C)
  loc_1EE3AA2:           If ( = Ucase(CVar(var_224))) Then
  loc_1EE3ACB:             Proc_6_17_EAA2B0(var_25C)
  loc_1EE3AD3:             var_224 = CStr(var_25C)
  loc_1EE3AE7:             Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EE3AEF:             Call 0.Method_arg_20 (var_224)
  loc_1EE3AF7:             Call 0.Method_arg_38 (CVar(var_13C.Fields.Item("SunAmount")))
  loc_1EE3B1E:             var_22C = var_13C.Fields
  loc_1EE3B26:             var_234 = var_22C.Item("SunName")
  loc_1EE3B63:             If (Ucase(CVar(var_234)) = Ucase("Discount")) Then
  loc_1EE3B77:               Call 0.Method_arg_90 (var_22C, var_200)
  loc_1EE3B7F:               Call 0.Method_arg_24 (var_BC)
  loc_1EE3B8B:               For var_474 =  To CInt(var_200): 1 = var_474 'Integer
  loc_1EE3BA4:                 Call 0.Method_arg_90 (var_22C, CLng(var_BC))
  loc_1EE3BAC:                 Call 0.Method_arg_20 (var_234)
  loc_1EE3BB4:                 Call 0.Method_arg_30 (var_224)
  loc_1EE3BCF:                 var_26C = "DiscPer"
  loc_1EE3BD8:                 var_27C = Ucase(var_26C)
  loc_1EE3BF4:                 If (Ucase(CVar(var_224)) = var_27C) Then
  loc_1EE3C09:                   var_22C = var_13C.Fields
  loc_1EE3C11:                   var_234 = var_22C.Item("SunPer")
  loc_1EE3C22:                   var_224 = CStr(var_234.Value)
  loc_1EE3C32:                   Proc_6_17_EAA2B0(var_26C)
  loc_1EE3C4E:                   Call 0.Method_arg_90 (var_238, CLng(var_BC), var_24C)
  loc_1EE3C56:                   Call 0.Method_arg_20 (CStr(var_26C))
  loc_1EE3C5E:                   Call 0.Method_arg_38 (CVar(CStr(Val(var_224))))
  loc_1EE3C7E:                 End If
  loc_1EE3C81:               Next var_474 'Integer
  loc_1EE3C86:             End If
  loc_1EE3C86:             Exit For
  loc_1EE3C89:           End If
  loc_1EE3C8C:         Next var_470 'Integer
  loc_1EE3C91:         ' Referenced from: 1EE3C86
  loc_1EE3C94:         var_13C.MoveNext
  loc_1EE3C99:         GoTo loc_1EE39E8
  loc_1EE3C9C:       End If
  loc_1EE3C9C:     End If
  loc_1EE3CA2:     var_200 = var_1B0.RecordCount
  loc_1EE3CB0:     If (var_200 > 0) Then
  loc_1EE3CB5:       var_BC = 1
  loc_1EE3CBB:       var_1B0.MoveFirst
  loc_1EE3CC0:       ' Referenced from: 1EE404B
  loc_1EE3CCF:       If Not(var_1B0.EOF) Then
  loc_1EE3CDA:         Do 'loop at: 1EF1A6D
  loc_1EE3CDA:         Do 'loop at: 1EF2D7B
  loc_1EE3CE3:         Call 0.Method_arg_90 (var_22C, var_200, var_BA)
  loc_1EE3CEB:         Call 0.Method_arg_24 (1)
  loc_1EE3CF7:         For var_478 =  To CInt(var_200): var_BC = var_478 'Integer
  loc_1EE3D10:           Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE3D18:           Call 0.Method_arg_20 (var_234)
  loc_1EE3D20:           Call 0.Method_arg_30 (var_224)
  loc_1EE3D36:           var_488 = Ucase(CVar(var_224)) 'Variant
  loc_1EE3D6D:           If (var_488 = Ucase(CVar("STName" & CStr(var_BC)))) Then
  loc_1EE3D9E:             Proc_6_17_EAA2B0(var_26C)
  loc_1EE3DBA:             Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EE3DC2:             Call 0.Method_arg_20 (CStr(var_26C))
  loc_1EE3DCA:             Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_1B0.Fields.Item("TaxName")))))
  loc_1EE3DE7:           Else
  loc_1EE3DFC:             var_25C = Ucase(CVar("STPer" & CStr(var_BC)))
  loc_1EE3E10:             If (var_488 = var_25C) Then
  loc_1EE3E39:               Proc_6_39_E7C810(var_25C)
  loc_1EE3E50:               Proc_6_17_EAA2B0(var_27C, CVar(CStr(var_25C) & ") 'String)
  loc_1EE3E6C:               Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EE3E74:               Call 0.Method_arg_20 (CStr(var_27C))
  loc_1EE3E7C:               Call 0.Method_arg_38 (CVar(var_1B0.Fields.Item("TaxPer")))
  loc_1EE3EA1:             Else
  loc_1EE3EB6:               var_25C = Ucase(CVar("STAmt" & CStr(var_BC)))
  loc_1EE3ECA:               If (var_488 = var_25C) Then
  loc_1EE3EF3:                 Proc_6_39_E7C810(var_25C)
  loc_1EE3F1E:                 Proc_6_17_EAA2B0(var_2A4, Format(var_25C, "0.00"), 1)
  loc_1EE3F3A:                 Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EE3F42:                 Call 0.Method_arg_20 (CStr(var_2A4), 1)
  loc_1EE3F4A:                 Call 0.Method_arg_38 (CVar(var_1B0.Fields.Item("TaxAmt")))
  loc_1EE3F6B:               Else
  loc_1EE3F80:                 var_25C = Ucase(CVar("STAbleAmt" & CStr(var_BC)))
  loc_1EE3F94:                 If (var_488 = var_25C) Then
  loc_1EE3FBD:                   Proc_6_39_E7C810(var_25C)
  loc_1EE3FDD:                   var_27C = Format(var_25C, "0.00")
  loc_1EE3FE8:                   Proc_6_17_EAA2B0(var_2A4, var_27C, 1)
  loc_1EE4004:                   Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EE400C:                   Call 0.Method_arg_20 (CStr(var_2A4), 1)
  loc_1EE4014:                   Call 0.Method_arg_38 (CVar(var_1B0.Fields.Item("TaxableAmt")))
  loc_1EE4032:                 End If
  loc_1EE4032:               End If
  loc_1EE4032:             End If
  loc_1EE4032:           End If
  loc_1EE4035:         Next var_478 'Integer
  loc_1EE4040:         var_BC = (var_BC + 1)
  loc_1EE4046:         var_1B0.MoveNext
  loc_1EE404B:         GoTo loc_1EE3CC0
  loc_1EE404E:       End If
  loc_1EE404E:     End If
  loc_1EE4078:     var_25C = CVar(Proc_6_38_E68A98(CVar(MemVar_6298CC.Fields.Item("Printer")))) 'String
  loc_1EE409A:     If CBool(Ucase(var_25C) <> "PRN") Then
  loc_1EE40CB:       Proc_96_98_F0F978(Proc_6_38_E68A98(CVar(MemVar_6298CC.Fields.Item("Printer"))))
  loc_1EE40D9:     End If
  loc_1EE40FF:     Proc_6_39_E7C810(var_25C, CVar(var_134.Fields.Item("NoOfBill")))
  loc_1EE4119:     If (var_25C <= 0) Then
  loc_1EE4121:       Set var_234 = Nothing
  loc_1EE413D:       Set var_22C = MemVar_1F921E4 
  loc_1EE4149:       Proc_6_99_1483714(var_22C, 0, vbNullString)
  loc_1EE4154:       MemVar_1F921E4 = var_22C
  loc_1EE4165:     Else
  loc_1EE4174:       var_22C = var_134.Fields
  loc_1EE417C:       var_234 = var_22C.Item("NoOfBill")
  loc_1EE4184:       var_220 = CVar(var_234) 'Address
  loc_1EE418B:       Proc_6_39_E7C810(var_25C, var_220, &HFF)
  loc_1EE41AB:       Call 0.Method_Me8 (False, var_25C, var_294, var_2D4)
  loc_1EE41BA:     End If
  loc_1EE41BF:     MemVar_1F921E4 = Nothing
  loc_1EE41C6:     var_C4.MoveNext
  loc_1EE41CB:     GoTo loc_1EDE0D3
  loc_1EE41CE:   End If
  loc_1EE41CE:   GoTo loc_1EDA8C6
  loc_1EE41D1: End If
  loc_1EE41F7: unk_43FED1.Execute "Select DocId,OutletDocId,OutletCode from POS_SBill Where DocId='" & Me(12) & "'", var_220, -1
  loc_1EE4202: Set var_F8 = var_22C
  loc_1EE4221: var_FA = CInt(var_F8.RecordCount)
  loc_1EE422A: var_248 = 0
  loc_1EE4249: var_224 = "Select IsNull(Sum(NetAmt),0) As TotalAmt from Sale1 Where DocId In (Select OutletDocId  from POS_SBill Where DocId='" & Me(12)
  loc_1EE4259: unk_43FED1.Execute var_224 & "')", var_220, -1
  loc_1EE4261: var_22C = var_22C.Fields
  loc_1EE4269: var_248 = var_234.Item(var_234)
  loc_1EE4271: var_238 = var_238.Value
  loc_1EE427A: var_104 = CSng(var_25C)
  loc_1EE42A8: Loop Until (var_F8.RecordCount > 0) 'do at: 1EDA8C6
  loc_1EE42AE: var_F8.MoveFirst
  loc_1EE42B3: ' Referenced from: 1EEA8C3
  loc_1EE42C2: Loop Until Not(var_F8.EOF) 'do at: 1EDA8C6
  loc_1EE42E4: var_22C = var_F8.Fields
  loc_1EE42FD: var_224 = Proc_6_38_E68A98(CVar(var_22C.Item("OutletCode")), "Select * from Depart Where Code='", var_25C, -1, var_238, var_104)
  loc_1EE4311: unk_43FED1.Execute var_25C & var_224 & "'", var_FA, var_22C
  loc_1EE431C: Set var_134 = var_238
  loc_1EE4343: var_248 = "select max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (sale2 left join revmast on revmast.code=sale2.Taxcode) where  Sale2.DocID='"
  loc_1EE4389: unk_43FED1.Execute CStr(var_248 & var_F8.Fields.Item("OutletDocid").Value & "' group by revmast.code,TaxPer Order by TaxPer"), var_27C, -1
  loc_1EE4394: Set var_1B0 = var_238
  loc_1EE43AE: var_248 = "Select Sale1.* ,S.CardNo,IsNull(S.Name,'') As MemName,W.Name as WaiterName,Case When IsNull(Sale1.RoomType,'')='RO' Then RTrim(LTrim(IsNull(GP.ConPrefix,'')))+' '+RTrim(LTrim(IsNull(GP.Name,''))) When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then RTrim(LTrim(IsNull(S.Name,'')))+' - '+RTrim(LTrim(IsNull(S.CardNo,''))) Else IsNull(Sale1.Remark,'') End Remark1,S.NAME AS CompanyName,S.Add1 CompAdd1,S.Add2 CompAdd2,S.Add3 CompAdd3,CC.CityName CompCity,CS.ShortName CompStateCode,CS.Name CompState,S.GSTIN CompGSTIN From ((((((Sale1 left join waiter W on sale1.waiter=w.code) left join SubGroup S On Sale1.Party=S.SubCode) Left Join City CC On CC.CityCode=S.CityCode) Left Join State CS On CS.Code=CC.State) left join GuestFolio GF On Sale1.FolionoDocId=GF.DocId) left join GuestProf GP On GF.GuestProf=GP.Code) Where Sale1.DocID='"
  loc_1EE43EB: var_8C = CStr(var_248 & var_F8.Fields.Item("OutletDocid").Value & "'")
  loc_1EE4405: var_25C = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,Sum(S.TAXAMT) AS TAXAMT,S.RATE,S.Remarks,MAX(S.ItemRate) AS ItemRate,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,MAX(I.COMMODITYCODE) AS HSNCODE,MAX(I.DISPCODE) As DISPCODE,Case When SUM(S.TAXAMT)=0 THEN SUM(S.AMOUNT) ELSE 0 END AS NONTAXABLE,Case When SUM(S.TAXAMT)<>0 THEN SUM(S.AMOUNT) ELSE 0 END AS TAXABLE,Max(S.Unit) As UNIT From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='") 'String
  loc_1EE4440: var_90 = CStr(var_25C & var_F8.Fields.Item("OutletDocid").Value & "' GROUP BY S.ITEM,S.RATE,S.Remarks ORDER BY MAX(I.NAME) ")
  loc_1EE4489: var_26C = CVar("Select st.sno,st.SunCode,st.dispname,St.Svalue,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_F8.Fields.Item("OutletDocid").Value 
  loc_1EE4497: var_94 = CStr(var_26C & "' order by sno")
  loc_1EE44B3: var_25C = CVar("SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department,D.Printer FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item And S.ItemRestCode=I.RestCode) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='") 'String
  loc_1EE44C8: var_22C = var_F8.Fields
  loc_1EE44D8: var_220 = var_22C.Item("OutletDocid").Value
  loc_1EE44EE: var_98 = CStr(var_25C & var_220 & "' ORDER BY I.Kitchen")
  loc_1EE450B: If (var_8C = vbNullString) Then
  loc_1EE450E:   Exit Sub
  loc_1EE450F: End If
  loc_1EE4517: If (var_90 = vbNullString) Then
  loc_1EE451A:   Exit Sub
  loc_1EE451B: End If
  loc_1EE4523: If (var_94 = vbNullString) Then
  loc_1EE4526:   Exit Sub
  loc_1EE4527: End If
  loc_1EE453D: unk_43FED1.Execute var_8C, var_220, -1
  loc_1EE4548: Set var_C4 = var_22C
  loc_1EE4567: unk_43FED1.Execute var_90, var_220, -1
  loc_1EE4572: Set var_D8 = var_22C
  loc_1EE4591: unk_43FED1.Execute var_94, var_220, -1
  loc_1EE459C: Set var_DC = var_22C
  loc_1EE45BB: unk_43FED1.Execute var_98, var_220, -1
  loc_1EE45C6: Set var_D0 = var_22C
  loc_1EE45D8: var_DC.Filter = "Amount<>0"
  loc_1EE45ED: var_106 = CByte(var_DC.RecordCount) 'Byte
  loc_1EE45F5: Set var_C8 = New 
  loc_1EE4600: Set var_C8 = Proc_260_12_10D3330(var_C8, var_22C, var_22C, var_22C, var_22C)
  loc_1EE4607: Set var_13C = New 
  loc_1EE4612: Set var_13C = Proc_260_11_F5B5EC(var_13C, var_238, var_2E4)
  loc_1EE4615: ' Referenced from: 1EEA8B8
  loc_1EE4624: Loop Until Not(Me.Recordset15.EOF) 'do at: 1EDA8BB
  loc_1EE4629: var_9E = 0
  loc_1EE4632: If (var_9E = 0) Then
  loc_1EE465D:   var_144 = Proc_6_38_E68A98(CVar(var_134.Fields.Item("CstNo")), var_9E)
  loc_1EE467D:   var_234 = var_134.Fields.Item("LstNo")
  loc_1EE468E:   var_148 = Proc_6_38_E68A98(CVar(var_234), var_234)
  loc_1EE46AC:   var_170 = "Phone: " & MemVar_1F92140 & " Fax :" & MemVar_1F92144
  loc_1EE46DE:   var_174 = Proc_6_38_E68A98(CVar(var_134.Fields.Item("Phone")))
  loc_1EE473F:   var_228 = Proc_6_38_E68A98(CVar(var_134.Fields.Item("COMPANYTITLE")), (Proc_6_38_E68A98(CVar(var_134.Fields.Item("COMPANYTITLE"))) = "Y"))
  loc_1EE475D:   If (var_BC Or (var_228 = vbNullString)) Then
  loc_1EE4763:     var_178 = "Y"
  loc_1EE4766:   End If
  loc_1EE47DC:   If ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("OutletTitle"))) = "Y") Or (Proc_6_38_E68A98(CVar(var_134.Fields.Item("OutletTitle"))) = vbNullString)) Then
  loc_1EE480E:     var_10C = CStr(Trim(CVar(var_134.Fields.Item("Name"))))
  loc_1EE481B:   End If
  loc_1EE4854:   If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintTokenNo"))) = "Yes") Then
  loc_1EE487F:     var_154 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("TokenNo")))
  loc_1EE4888:   End If
  loc_1EE48C1:   If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Order_Booking"))) = "Y") Then
  loc_1EE48C7:     var_14C = "Order No:"
  loc_1EE48F2:     var_150 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo")))
  loc_1EE48FE:   Else
  loc_1EE4937:     If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("KotYN"))) = "Y") Then
  loc_1EE493D:       var_14C = "KOT No:"
  loc_1EE4968:       var_150 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("KOTNo")))
  loc_1EE4971:     End If
  loc_1EE4971:   End If
  loc_1EE4999:   var_114 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("WaiterName")))
  loc_1EE49DB:   If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("RestType"))) = "Outlet") Then
  loc_1EE49E1:     var_118 = "Table No:"
  loc_1EE4A0C:     var_11C = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("RoomNo")))
  loc_1EE4A18:   Else
  loc_1EE4A51:     If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("RestType"))) = "Room Service") Then
  loc_1EE4A57:       var_118 = "Room No:"
  loc_1EE4A82:       var_11C = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("RoomNo")))
  loc_1EE4A8B:     End If
  loc_1EE4A8B:   End If
  loc_1EE4AB3:   var_C0 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Printed")))
  loc_1EE4AE7:   var_128 = CStr(var_C4.Fields.Item("GuarAtt").Value)
  loc_1EE4B1C:   var_124 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VTIME")))
  loc_1EE4B5F:   var_26C = "dd/MM/yy"
  loc_1EE4B68:   var_25C = CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VDate")))) 'String
  loc_1EE4B77:   var_120 = CStr(Format(var_25C, var_26C))
  loc_1EE4BB1:   Proc_6_39_E7C810(var_25C, CVar(var_C4.Fields.Item("VNo")))
  loc_1EE4BBA:   var_12C = CStr(var_25C)
  loc_1EE4C11:   var_25C = CVar(var_C4.Fields.Item("VNo")) 'Address
  loc_1EE4C18:   Proc_6_39_E7C810(var_26C, var_25C)
  loc_1EE4C2C:   var_130 = Proc_96_43_F99184(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("vType")), 1), var_26C)
  loc_1EE4C7F:   If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Roomtype"))) = "RO") Then
  loc_1EE4CC6:     var_16C = "GUEST  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Remark1"))), 150)
  loc_1EE4CFE:     Proc_6_39_E7C810(var_25C, CVar(var_C4.Fields.Item("FolioNo")))
  loc_1EE4D08:     var_18C = CStr(var_25C)
  loc_1EE4D1A:   Else
  loc_1EE4D4D:     var_248 = "MemberInfo"
  loc_1EE4D69:     var_25C = CVar(var_134.Fields.Item(var_248)) 'Address
  loc_1EE4D90:     If (1 And (Proc_6_38_E68A98(var_25C, (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("MemName"))) <> vbNullString)) = "Y")) Then
  loc_1EE4DD7:       var_16C = "MEMBER :   " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Remark1"))), 150)
  loc_1EE4DEC:     Else
  loc_1EE4E25:       If (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Remark1"))) <> vbNullString) Then
  loc_1EE4E6C:         var_16C = "REMARK :     " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Remark1"))), 150)
  loc_1EE4E7E:       End If
  loc_1EE4E7E:     End If
  loc_1EE4E7E:   End If
  loc_1EE4EA6:   var_190 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("PhoneNo")))
  loc_1EE4ED7:   var_194 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CustName")))
  loc_1EE4F08:   var_198 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Addr1")))
  loc_1EE4F39:   var_19C = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Addr2")))
  loc_1EE4F7B:   If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("MemberInfo"))) <> "Y") Then
  loc_1EE4FA6:     var_1D0 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompanyName")))
  loc_1EE4FD7:     var_1D4 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompAdd1")))
  loc_1EE5008:     var_1D8 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompAdd2")))
  loc_1EE5039:     var_1DC = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompAdd3")))
  loc_1EE506A:     var_1E0 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompCity")))
  loc_1EE509B:     var_1E4 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompStateCode")))
  loc_1EE50CC:     var_1E8 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("CompState")))
  loc_1EE50D8:     var_1FC = "CompGSTIN"
  loc_1EE50FD:     var_1EC = Proc_6_38_E68A98(CVar(var_C4.Fields.Item(var_1FC)))
  loc_1EE5106:   End If
  loc_1EE5106: End If
  loc_1EE5108: var_BA = 1
  loc_1EE510E: var_D8.MoveFirst
  loc_1EE5113: ' Referenced from: 1EE5848
  loc_1EE5122: If Not(var_D8.EOF) Then
  loc_1EE5128:   Set var_48C = var_C8 
  loc_1EE5137:   var_48C.AddNew var_1FC, var_248
  loc_1EE5161:   var_48C.Fields.Item("mLine").Value = vbNullString
  loc_1EE5195:   var_48C.Fields.Item("Sno").Value = CVar(CStr(var_BA))
  loc_1EE51E7:   var_48C.Fields.Item("DispCode").Value = CVar(var_D8.Fields.Item("DispCode"))
  loc_1EE523B:   var_48C.Fields.Item("HSNCode").Value = CVar(var_D8.Fields.Item("HSNCode"))
  loc_1EE528F:   var_48C.Fields.Item("Item").Value = CVar(var_D8.Fields.Item("ItemName"))
  loc_1EE52C6:   Proc_6_39_E7C810(var_25C, CVar(var_D8.Fields.Item("qty")))
  loc_1EE530E:   var_48C.Fields.Item("Qty").Value = Format(var_25C, "0.000")
  loc_1EE534D:   Proc_6_39_E7C810(var_25C, CVar(var_D8.Fields.Item("Rate")), 1)
  loc_1EE5395:   var_48C.Fields.Item("Rate").Value = Format(var_25C, "0.00")
  loc_1EE53D4:   Proc_6_39_E7C810(var_25C, CVar(var_D8.Fields.Item("TaxAmt")), 1)
  loc_1EE541C:   var_48C.Fields.Item("TaxAmt").Value = Format(var_25C, "0.00")
  loc_1EE545B:   Proc_6_39_E7C810(var_25C, CVar(var_D8.Fields.Item("Amt")), 1, 1)
  loc_1EE546F:   var_26C = "0.00"
  loc_1EE547B:   var_27C = Format(var_25C, var_26C)
  loc_1EE54A3:   var_48C.Fields.Item("Amount").Value = var_27C
  loc_1EE54E2:   Proc_6_39_E7C810(var_25C, CVar(var_D8.Fields.Item("TaxPer")), 1, 1)
  loc_1EE54ED:   Proc_6_47_EF59D0(var_26C, var_25C, 1)
  loc_1EE5515:   var_48C.Fields.Item("TaxPer").Value = var_26C
  loc_1EE5552:   Proc_6_47_EF59D0(var_25C, CVar(var_D8.Fields.Item("nonTaxable")))
  loc_1EE557A:   var_48C.Fields.Item("NonTaxable").Value = var_25C
  loc_1EE55B5:   Proc_6_47_EF59D0(var_25C, CVar(var_D8.Fields.Item("Taxable")))
  loc_1EE55DD:   var_48C.Fields.Item("Taxable").Value = var_25C
  loc_1EE561A:   var_25C = CVar(Proc_6_38_E68A98(CVar(var_D8.Fields.Item("Unit")), 1)) 'String
  loc_1EE563D:   var_48C.Fields.Item("Unit").Value = var_25C
  loc_1EE5678:   Proc_6_47_EF59D0(var_25C, CVar(var_D8.Fields.Item("ItemRate")))
  loc_1EE56A0:   var_48C.Fields.Item("ItemRate").Value = var_25C
  loc_1EE56DD:   var_25C = CVar(Proc_6_38_E68A98(CVar(var_D8.Fields.Item("Remarks")))) 'String
  loc_1EE56F8:   var_24C = var_48C.Fields.Item("Remarks")
  loc_1EE5700:   var_24C.Value = var_25C
  loc_1EE5715:   var_248 = "*"
  loc_1EE571E:   var_1FC = "Mark"
  loc_1EE573A:   var_48C.Fields.Item(var_1FC).Value = var_248
  loc_1EE5751:   var_48C.Update var_1FC, var_248
  loc_1EE5758:   Set var_48C = Nothing 
  loc_1EE5789:   Proc_6_39_E7C810(var_25C, CVar(var_D8.Fields.Item("Amt")))
  loc_1EE5791:   var_26C = (CVar(var_E4) + var_25C)
  loc_1EE57D2:   Proc_6_39_E7C810(var_25C, CVar(var_D8.Fields.Item("nonTaxable")), CVar(var_1A4))
  loc_1EE57DA:   var_26C = (CSng(var_26C) + var_25C)
  loc_1EE57DF:   var_1A4 = CSng(var_26C)
  loc_1EE581B:   Proc_6_39_E7C810(var_25C, CVar(var_D8.Fields.Item("Taxable")), CVar(var_1AC))
  loc_1EE5823:   var_26C = (var_1A4 + var_25C)
  loc_1EE5828:   var_1AC = CSng(var_26C)
  loc_1EE583D:   var_BA = (var_BA + 1)
  loc_1EE5843:   var_D8.MoveNext
  loc_1EE5848:   GoTo loc_1EE5113
  loc_1EE584B: End If
  loc_1EE5884: Loop Until (Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Printed")), var_BA) <> "Y") 'do at: 1ED747D
  loc_1EE588A: var_2E4 = 0
  loc_1EE58E6: unk_43FED1.Execute CStr("SELECT TOKENPrintAfter FROM Depart where Code='" & var_134.Fields.Item("Code").Value & "'"), var_27C, -1
  loc_1EE58EE: var_238 = var_238.Fields
  loc_1EE58F6: var_2E4 = var_24C.Item(var_24C)
  loc_1EE592E: Loop Until (Proc_6_38_E68A98(CVar(var_34C), var_34C) = "Yes") 'do at: 1ED747D
  loc_1EE5945: Loop Until (var_D0.RecordCount > 0) 'do at: 1ED747D
  loc_1EE594B: var_D0.MoveFirst
  loc_1EE5950: ' Referenced from: 1EE747A
  loc_1EE595F: Loop Until Not(var_D0.EOF) 'do at: 1ED747D
  loc_1EE5964: var_BA = 1
  loc_1EE597B: var_25C = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,Sum(S.TAXAMT) AS TAXAMT,S.RATE,S.Remarks,MAX(S.ItemRate) AS ItemRate,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,MAX(I.COMMODITYCODE) AS HSNCODE,MAX(I.DISPCODE) As DISPCODE,Case When SUM(S.TAXAMT)=0 THEN SUM(S.AMOUNT) ELSE 0 END AS NONTAXABLE,Case When SUM(S.TAXAMT)<>0 THEN SUM(S.AMOUNT) ELSE 0 END AS TAXABLE,Max(S.Unit) As UNIT From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='") 'String
  loc_1EE59AC: var_248 = "' AND I.Kitchen='"
  loc_1EE59E3: var_2D4 = "' GROUP BY S.ITEM,S.RATE,S.Remarks ORDER BY MAX(I.NAME) "
  loc_1EE59F6: unk_43FED1.Execute CStr(var_25C & var_C4.Fields.Item("DocID").Value & var_248 & var_D0.Fields.Item("Kitchen").Value & var_2D4), var_318, -1
  loc_1EE5A01: Set var_D4 = var_34C
  loc_1EE5A2B: Set var_CC = New 
  loc_1EE5A36: Set var_CC = Proc_260_13_10D2FE4(var_CC, var_34C, var_BA)
  loc_1EE5A3F: var_200 = Me.Recordset15.RecordCount
  loc_1EE5A4D: Loop Until (var_200 > 0) 'do at: 1ED60DE
  loc_1EE5A53: var_1FC = "Department"
  loc_1EE5A78: var_110 = Proc_6_38_E68A98(CVar(var_D0.Fields.Item(var_1FC)), var_1AC)
  loc_1EE5A81: ' Referenced from: 1EE60DB
  loc_1EE5A90: Loop Until Not(var_D4.EOF) 'do at: 1ED60DE
  loc_1EE5A96: Set var_490 = var_CC 
  loc_1EE5AA5: var_490.AddNew var_1FC, var_248
  loc_1EE5ACF: var_490.Fields.Item("mLine").Value = vbNullString
  loc_1EE5B03: var_490.Fields.Item("Sno").Value = CVar(CStr(var_BA))
  loc_1EE5B55: var_490.Fields.Item("DispCode").Value = CVar(var_D4.Fields.Item("DispCode"))
  loc_1EE5BA9: var_490.Fields.Item("HSNCode").Value = CVar(var_D4.Fields.Item("HSNCode"))
  loc_1EE5BFD: var_490.Fields.Item("Item").Value = CVar(var_D4.Fields.Item("ItemName"))
  loc_1EE5C34: Proc_6_39_E7C810(var_25C, CVar(var_D4.Fields.Item("qty")))
  loc_1EE5C7C: var_490.Fields.Item("Qty").Value = Format(var_25C, "0.000")
  loc_1EE5CBB: Proc_6_39_E7C810(var_25C, CVar(var_D4.Fields.Item("Rate")), 1)
  loc_1EE5D03: var_490.Fields.Item("Rate").Value = Format(var_25C, "0.00")
  loc_1EE5D42: Proc_6_39_E7C810(var_25C, CVar(var_D4.Fields.Item("TaxAmt")), 1)
  loc_1EE5D8A: var_490.Fields.Item("TaxAmt").Value = Format(var_25C, "0.00")
  loc_1EE5DC9: Proc_6_39_E7C810(var_25C, CVar(var_D4.Fields.Item("Amt")), 1, 1)
  loc_1EE5DDD: var_26C = "0.00"
  loc_1EE5DF5: var_294 = "Amount"
  loc_1EE5E11: var_490.Fields.Item(var_294).Value = Format(var_25C, var_26C)
  loc_1EE5E50: Proc_6_39_E7C810(var_25C, CVar(var_D4.Fields.Item("TaxPer")), 1, 1)
  loc_1EE5E5B: Proc_6_47_EF59D0(var_26C, var_25C, 1)
  loc_1EE5E83: var_490.Fields.Item("TaxPer").Value = var_26C
  loc_1EE5EC0: Proc_6_47_EF59D0(var_25C, CVar(var_D4.Fields.Item("nonTaxable")))
  loc_1EE5EE8: var_490.Fields.Item("NonTaxable").Value = var_25C
  loc_1EE5F23: Proc_6_47_EF59D0(var_25C, CVar(var_D4.Fields.Item("Taxable")))
  loc_1EE5F4B: var_490.Fields.Item("Taxable").Value = var_25C
  loc_1EE5F88: var_25C = CVar(Proc_6_38_E68A98(CVar(var_D4.Fields.Item("Unit")), 1)) 'String
  loc_1EE5FAB: var_490.Fields.Item("Unit").Value = var_25C
  loc_1EE5FE6: Proc_6_47_EF59D0(var_25C, CVar(var_D4.Fields.Item("ItemRate")))
  loc_1EE600E: var_490.Fields.Item("ItemRate").Value = var_25C
  loc_1EE606E: var_490.Fields.Item("Remarks").Value = CVar(Proc_6_38_E68A98(CVar(var_D4.Fields.Item("Remarks"))))
  loc_1EE6083: var_248 = "*"
  loc_1EE608C: var_1FC = "Mark"
  loc_1EE60A0: var_234 = var_490.Fields.Item(var_1FC)
  loc_1EE60A8: var_234.Value = var_248
  loc_1EE60BF: var_490.Update var_1FC, var_248
  loc_1EE60C6: Set var_490 = Nothing 
  loc_1EE60CD: var_D4.MoveNext
  loc_1EE60D8: var_BA = (var_BA + 1)
  loc_1EE60DB: GoTo loc_1EE5A81
  loc_1EE60E1: var_15C = "BillTokenPrint"
  loc_1EE6108: Set var_22C = var_CC 
  loc_1EE610F: CreateFieldDefFile(var_22C, MemVar_1F920B4 & "\" & var_15C & ".ttx", &HFF)
  loc_1EE613A: var_224 = MemVar_1F920B4 & "\"
  loc_1EE6151: Call 0.Method_arg_1C (var_224 & var_15C & ".RPT", var_1FC, var_22C)
  loc_1EE615C: MemVar_1F921E4 = var_22C
  loc_1EE6185: Call 0.Method_arg_64 (var_22C, CVar(var_22C), var_248)
  loc_1EE618D: Call 0.Method_arg_2C (var_294, var_BA)
  loc_1EE619B: Call 0.Method_arg_150 (var_BA)
  loc_1EE61B1: Call 0.Method_arg_90 (var_22C, var_200)
  loc_1EE61B9: Call 0.Method_arg_24 (var_BA)
  loc_1EE61C5: For var_494 =  To CInt(var_200): 1 = var_494 'Integer
  loc_1EE61DE:   Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE61E6:   Call 0.Method_arg_20 (var_234)
  loc_1EE61EE:   Call 0.Method_arg_30 (var_224)
  loc_1EE6204:   var_4A4 = Ucase(CVar(var_224)) 'Variant
  loc_1EE621A:   var_220 = "comp_name"
  loc_1EE6234:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6283
  loc_1EE6242:   Proc_6_17_EAA2B0(var_220)
  loc_1EE625E:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6266:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE626E:   Call 0.Method_arg_38 (MemVar_1F92130)
  loc_1EE6280:   GoTo loc_1ED7302
  loc_1EE628B:   var_220 = "comp_add1"
  loc_1EE62A5:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED62F4
  loc_1EE62B3:   Proc_6_17_EAA2B0(var_220)
  loc_1EE62CF:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE62D7:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE62DF:   Call 0.Method_arg_38 (MemVar_1F92134)
  loc_1EE62F1:   GoTo loc_1ED7302
  loc_1EE62FC:   var_220 = "comp_pin"
  loc_1EE6316:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6365
  loc_1EE6324:   Proc_6_17_EAA2B0(var_220)
  loc_1EE6340:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6348:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6350:   Call 0.Method_arg_38 (MemVar_1F9213C)
  loc_1EE6362:   GoTo loc_1ED7302
  loc_1EE6387:   Loop Until (var_4A4 = Ucase("comp_GSTIN")) 'do at: 1ED63D1
  loc_1EE63AB:   Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE63B3:   Call 0.Method_arg_20 (var_234)
  loc_1EE63BB:   Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_1EE63CE:   GoTo loc_1ED7302
  loc_1EE63D9:   var_220 = "Comp_Phone_Fax"
  loc_1EE63F3:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6442
  loc_1EE6401:   Proc_6_17_EAA2B0(var_220)
  loc_1EE641D:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6425:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE642D:   Call 0.Method_arg_38 (var_170)
  loc_1EE643F:   GoTo loc_1ED7302
  loc_1EE644A:   var_220 = "Outl_Phone_Fax"
  loc_1EE6464:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED64B3
  loc_1EE6472:   Proc_6_17_EAA2B0(var_220)
  loc_1EE648E:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6496:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE649E:   Call 0.Method_arg_38 (var_174)
  loc_1EE64B0:   GoTo loc_1ED7302
  loc_1EE64BB:   var_220 = "CompTitleYN"
  loc_1EE64CE:   Do 'loop at: 1EF640F
  loc_1EE64CE:   
  loc_1EE64CE:
  loc_1EE64D5:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6524
  loc_1EE64E3:   Proc_6_17_EAA2B0(var_220)
  loc_1EE64FF:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6507:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE650F:   Call 0.Method_arg_38 (var_178)
  loc_1EE6521:   GoTo loc_1ED7302
  loc_1EE652C:   var_220 = "Outlet_Title"
  loc_1EE6546:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6595
  loc_1EE6554:   Proc_6_17_EAA2B0(var_220)
  loc_1EE6570:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6578:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6580:   Call 0.Method_arg_38 (var_10C)
  loc_1EE6592:   GoTo loc_1ED7302
  loc_1EE659D:   var_220 = "Department"
  loc_1EE65B7:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6606
  loc_1EE65C5:   Proc_6_17_EAA2B0(var_220)
  loc_1EE65E1:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE65E9:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE65F1:   Call 0.Method_arg_38 (var_110)
  loc_1EE6603:   GoTo loc_1ED7302
  loc_1EE660E:   var_220 = "Waiter_Name"
  loc_1EE6628:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6677
  loc_1EE6636:   Proc_6_17_EAA2B0(var_220)
  loc_1EE6652:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE665A:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6662:   Call 0.Method_arg_38 (var_114)
  loc_1EE6674:   GoTo loc_1ED7302
  loc_1EE667F:   var_220 = "Covers"
  loc_1EE6699:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED66E8
  loc_1EE66A7:   Proc_6_17_EAA2B0(var_220)
  loc_1EE66C3:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE66CB:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE66D3:   Call 0.Method_arg_38 (var_128)
  loc_1EE66E5:   GoTo loc_1ED7302
  loc_1EE66F0:   var_220 = "Cst_No"
  loc_1EE670A:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6759
  loc_1EE6718:   Proc_6_17_EAA2B0(var_220)
  loc_1EE6734:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE673C:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6744:   Call 0.Method_arg_38 (var_144)
  loc_1EE6756:   GoTo loc_1ED7302
  loc_1EE6761:   var_220 = "Lst_No"
  loc_1EE677B:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED67CA
  loc_1EE6789:   Proc_6_17_EAA2B0(var_220)
  loc_1EE67A5:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE67AD:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE67B5:   Call 0.Method_arg_38 (var_148)
  loc_1EE67C7:   GoTo loc_1ED7302
  loc_1EE67D2:   var_220 = "lblRoom_TableNo"
  loc_1EE67EC:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED683B
  loc_1EE67FA:   Proc_6_17_EAA2B0(var_220)
  loc_1EE6816:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE681E:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6826:   Call 0.Method_arg_38 (var_118)
  loc_1EE6838:   GoTo loc_1ED7302
  loc_1EE6843:   var_220 = "Room_TableNo"
  loc_1EE685D:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED68AC
  loc_1EE686B:   Proc_6_17_EAA2B0(var_220)
  loc_1EE6887:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE688F:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6897:   Call 0.Method_arg_38 (var_11C)
  loc_1EE68A9:   GoTo loc_1ED7302
  loc_1EE68B4:   var_220 = "lblOrder_KOTNo"
  loc_1EE68CE:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED691D
  loc_1EE68DC:   Proc_6_17_EAA2B0(var_220)
  loc_1EE68F8:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6900:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6908:   Call 0.Method_arg_38 (var_14C)
  loc_1EE691A:   GoTo loc_1ED7302
  loc_1EE692E:   var_25C = Ucase("Order_KOTNo")
  loc_1EE693F:   Loop Until (var_4A4 = var_25C) 'do at: 1ED69A2
  loc_1EE695D:   Proc_6_17_EAA2B0(var_25C)
  loc_1EE6979:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6981:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE6989:   Call 0.Method_arg_38 (Left(var_150, &HFA))
  loc_1EE699F:   GoTo loc_1ED7302
  loc_1EE69AA:   var_220 = "TokenNo"
  loc_1EE69C4:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6A13
  loc_1EE69D2:   Proc_6_17_EAA2B0(var_220)
  loc_1EE69EE:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE69F6:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE69FE:   Call 0.Method_arg_38 (var_154)
  loc_1EE6A10:   GoTo loc_1ED7302
  loc_1EE6A1B:   var_220 = "Bill_No"
  loc_1EE6A35:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6A84
  loc_1EE6A43:   Proc_6_17_EAA2B0(var_220)
  loc_1EE6A5F:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6A67:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6A6F:   Call 0.Method_arg_38 (var_12C)
  loc_1EE6A81:   GoTo loc_1ED7302
  loc_1EE6A8C:   var_220 = "BillVou"
  loc_1EE6AA6:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6AF5
  loc_1EE6AB4:   Proc_6_17_EAA2B0(var_220)
  loc_1EE6AD0:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6AD8:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6AE0:   Call 0.Method_arg_38 (var_130)
  loc_1EE6AF2:   GoTo loc_1ED7302
  loc_1EE6AFD:   var_220 = "FolioNo"
  loc_1EE6B17:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6B66
  loc_1EE6B25:   Proc_6_17_EAA2B0(var_220)
  loc_1EE6B41:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6B49:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6B51:   Call 0.Method_arg_38 (var_18C)
  loc_1EE6B63:   GoTo loc_1ED7302
  loc_1EE6B6E:   var_220 = "Remark"
  loc_1EE6B88:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6BD7
  loc_1EE6B96:   Proc_6_17_EAA2B0(var_220)
  loc_1EE6BB2:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6BBA:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6BC2:   Call 0.Method_arg_38 (var_16C)
  loc_1EE6BD4:   GoTo loc_1ED7302
  loc_1EE6BDF:   var_220 = "CustPhone"
  loc_1EE6BF9:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6C48
  loc_1EE6C07:   Proc_6_17_EAA2B0(var_220)
  loc_1EE6C23:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6C2B:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6C33:   Call 0.Method_arg_38 (var_190)
  loc_1EE6C45:   GoTo loc_1ED7302
  loc_1EE6C50:   var_220 = "CustName"
  loc_1EE6C6A:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6CB9
  loc_1EE6C78:   Proc_6_17_EAA2B0(var_220)
  loc_1EE6C94:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6C9C:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6CA4:   Call 0.Method_arg_38 (var_194)
  loc_1EE6CB6:   GoTo loc_1ED7302
  loc_1EE6CC1:   var_220 = "CustAddr1"
  loc_1EE6CDB:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6D2A
  loc_1EE6CE9:   Proc_6_17_EAA2B0(var_220)
  loc_1EE6D05:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6D0D:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6D15:   Call 0.Method_arg_38 (var_198)
  loc_1EE6D27:   GoTo loc_1ED7302
  loc_1EE6D32:   var_220 = "CustAddr2"
  loc_1EE6D4C:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6D9B
  loc_1EE6D5A:   Proc_6_17_EAA2B0(var_220)
  loc_1EE6D76:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6D7E:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6D86:   Call 0.Method_arg_38 (var_19C)
  loc_1EE6D98:   GoTo loc_1ED7302
  loc_1EE6DA3:   var_220 = "Bill_Date"
  loc_1EE6DBD:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6E0C
  loc_1EE6DCB:   Proc_6_17_EAA2B0(var_220)
  loc_1EE6DE7:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6DEF:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6DF7:   Call 0.Method_arg_38 (var_120)
  loc_1EE6E09:   GoTo loc_1ED7302
  loc_1EE6E14:   var_220 = "Bill_Time"
  loc_1EE6E2E:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6E7D
  loc_1EE6E3C:   Proc_6_17_EAA2B0(var_220)
  loc_1EE6E58:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6E60:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6E68:   Call 0.Method_arg_38 (var_124)
  loc_1EE6E7A:   GoTo loc_1ED7302
  loc_1EE6E85:   var_220 = "TotNonTaxable"
  loc_1EE6E8E:   var_25C = Ucase(var_220)
  loc_1EE6E9F:   Loop Until (var_4A4 = var_25C) 'do at: 1ED6EFD
  loc_1EE6EAD:   Proc_6_47_EF59D0(var_220)
  loc_1EE6EB8:   Proc_6_17_EAA2B0(var_25C, var_220)
  loc_1EE6ED4:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6EDC:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE6EE4:   Call 0.Method_arg_38 (var_1A4)
  loc_1EE6EFA:   GoTo loc_1ED7302
  loc_1EE6F05:   var_220 = "TotTaxable"
  loc_1EE6F0E:   var_25C = Ucase(var_220)
  loc_1EE6F1F:   Loop Until (var_4A4 = var_25C) 'do at: 1ED6F7D
  loc_1EE6F2D:   Proc_6_47_EF59D0(var_220)
  loc_1EE6F38:   Proc_6_17_EAA2B0(var_25C, var_220)
  loc_1EE6F54:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6F5C:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE6F64:   Call 0.Method_arg_38 (var_1AC)
  loc_1EE6F7A:   GoTo loc_1ED7302
  loc_1EE6F85:   var_220 = "User_Name"
  loc_1EE6F9F:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED6FEE
  loc_1EE6FAD:   Proc_6_17_EAA2B0(var_220)
  loc_1EE6FC9:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE6FD1:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE6FD9:   Call 0.Method_arg_38 (var_140)
  loc_1EE6FEB:   GoTo loc_1ED7302
  loc_1EE6FF6:   var_220 = "Header1"
  loc_1EE7010:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED705F
  loc_1EE701E:   Proc_6_17_EAA2B0(var_220)
  loc_1EE703A:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE7042:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE704A:   Call 0.Method_arg_38 (var_17C)
  loc_1EE705C:   GoTo loc_1ED7302
  loc_1EE7067:   var_220 = "Header2"
  loc_1EE7081:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED70D0
  loc_1EE708F:   Proc_6_17_EAA2B0(var_220)
  loc_1EE70AB:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE70B3:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE70BB:   Call 0.Method_arg_38 (var_180)
  loc_1EE70CD:   GoTo loc_1ED7302
  loc_1EE70D8:   var_220 = "Header3"
  loc_1EE70F2:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED7141
  loc_1EE7100:   Proc_6_17_EAA2B0(var_220)
  loc_1EE711C:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE7124:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE712C:   Call 0.Method_arg_38 (var_184)
  loc_1EE713E:   GoTo loc_1ED7302
  loc_1EE7149:   var_220 = "Header4"
  loc_1EE7163:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED71B2
  loc_1EE7171:   Proc_6_17_EAA2B0(var_220)
  loc_1EE718D:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE7195:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE719D:   Call 0.Method_arg_38 (var_188)
  loc_1EE71AF:   GoTo loc_1ED7302
  loc_1EE71BA:   var_220 = "Slogan1"
  loc_1EE71D4:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED7223
  loc_1EE71E2:   Proc_6_17_EAA2B0(var_220)
  loc_1EE71FE:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE7206:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE720E:   Call 0.Method_arg_38 (var_164)
  loc_1EE7220:   GoTo loc_1ED7302
  loc_1EE722B:   var_220 = "Slogan2"
  loc_1EE7245:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED7294
  loc_1EE7253:   Proc_6_17_EAA2B0(var_220)
  loc_1EE726F:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE7277:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE727F:   Call 0.Method_arg_38 (var_168)
  loc_1EE7291:   GoTo loc_1ED7302
  loc_1EE729C:   var_220 = "Printed"
  loc_1EE72B6:   Loop Until (var_4A4 = Ucase(var_220)) 'do at: 1ED7302
  loc_1EE72C4:   Proc_6_17_EAA2B0(var_220)
  loc_1EE72E0:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE72E8:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE72F0:   Call 0.Method_arg_38 (var_C0)
  loc_1EE7305: Next var_494 'Integer
  loc_1EE7332: var_25C = CVar(Proc_6_38_E68A98(CVar(var_D0.Fields.Item("Printer")))) 'String
  loc_1EE7354: Loop Until CBool(Ucase(var_25C) <> "PRN") 'do at: 1ED7391
  loc_1EE7383: Proc_96_98_F0F978(Proc_6_38_E68A98(CVar(var_D0.Fields.Item("Printer"))))
  loc_1EE73B0: var_220 = CVar(var_134.Fields.Item("NoOfKot")) 'Address
  loc_1EE73B7: Proc_6_39_E7C810(var_25C)
  loc_1EE73D1: Loop Until (var_25C <= 0) 'do at: 1ED741D
  loc_1EE73D9: Set var_234 = Nothing
  loc_1EE73F5: Set var_22C = MemVar_1F921E4 
  loc_1EE7401: Proc_6_99_1483714(var_22C, 0, "Sale Bill Entry")
  loc_1EE740C: MemVar_1F921E4 = var_22C
  loc_1EE741A: GoTo loc_1ED7472
  loc_1EE7443: Proc_6_39_E7C810(var_25C, CVar(var_134.Fields.Item("NoOfKot")), &HFF)
  loc_1EE7458: var_248 = False
  loc_1EE7463: Call 0.Method_Me8 (var_248, var_25C, var_294, var_2D4)
  loc_1EE7475: var_D0.MoveNext
  loc_1EE747A: GoTo loc_1EE5950
  loc_1EE747D: var_1FC = 0
  loc_1EE7489: var_DC.Filter = var_1FC
  loc_1EE7491: var_DC.MoveFirst
  loc_1EE74A5: Loop Until Not(var_DC.EOF) 'do at: 1ED76B0
  loc_1EE74AB: Set var_4A8 = var_13C 
  loc_1EE74BA: var_4A8.AddNew var_1FC, var_248
  loc_1EE74E4: var_4A8.Fields.Item("mLine").Value = vbNullString
  loc_1EE74E9: Do 'loop at: 1EF70DC
  loc_1EE74E9: 
  loc_1EE74E9:
  loc_1EE7518: var_25C = CVar(Proc_6_38_E68A98(CVar(var_DC.Fields.Item("DispName")), var_2E4)) 'String
  loc_1EE753B: var_4A8.Fields.Item("SunName").Value = var_25C
  loc_1EE7576: Proc_6_39_E7C810(var_25C, CVar(var_DC.Fields.Item("SValue")))
  loc_1EE75BE: var_4A8.Fields.Item("SunPer").Value = Format(var_25C, "0.00")
  loc_1EE75FD: Proc_6_39_E7C810(var_25C, CVar(var_DC.Fields.Item("Amount")), 1)
  loc_1EE761D: var_27C = Format(var_25C, "0.00")
  loc_1EE7635: var_238 = var_4A8.Fields
  loc_1EE7645: var_238.Item("SunAmount").Value = var_27C
  loc_1EE765E: var_248 = "*"
  loc_1EE7667: var_1FC = "Mark"
  loc_1EE7683: var_4A8.Fields.Item(var_1FC).Value = var_248
  loc_1EE769A: var_4A8.Update var_1FC, var_248
  loc_1EE76A1: Set var_4A8 = Nothing 
  loc_1EE76A8: var_DC.MoveNext
  loc_1EE76AD: GoTo loc_1ED7496
  loc_1EE76D8: var_140 = Proc_6_38_E68A98(CVar(var_C4.Fields.Item("U_Name")), 1, 1)
  loc_1EE772A: var_224 = CStr("SELECT Header1,Header2,Header3,Header4,Slogan1,Slogan2 FROM Depart WHERE Code='" & var_134.Fields.Item("Code").Value & "'")
  loc_1EE7734: unk_43FED1.Execute var_224, var_27C, -1
  loc_1EE773F: Set var_138 = var_238
  loc_1EE775F: var_200 = var_138.RecordCount
  loc_1EE776D: Loop Until (var_200 > 0) 'do at: 1ED78D8
  loc_1EE7796: Do 'loop at: 1EF7501
  loc_1EE779F: var_17C = CStr(Trim(CVar(var_138.Fields.Item("Header1"))))
  loc_1EE77DB: var_180 = CStr(Trim(CVar(var_138.Fields.Item("Header2"))))
  loc_1EE7817: var_184 = CStr(Trim(CVar(var_138.Fields.Item("Header3"))))
  loc_1EE7853: var_188 = CStr(Trim(CVar(var_138.Fields.Item("Header4"))))
  loc_1EE788F: var_164 = CStr(Trim(CVar(var_138.Fields.Item("Slogan1"))))
  loc_1EE78CB: var_168 = CStr(Trim(CVar(var_138.Fields.Item("Slogan2"))))
  loc_1EE78DD: Set var_138 = Nothing
  loc_1EE78F9: var_248 = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf,GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGE AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ST.Docid='"
  loc_1EE7928: var_25C = var_248 & var_F8.Fields.Item("OutletDocid").Value 
  loc_1EE793F: unk_43FED1.Execute CStr(var_25C & "' And AmtCr>0"), var_27C, -1
  loc_1EE794A: Set var_1B4 = var_238
  loc_1EE7973: Loop Until Not(var_1B4.EOF) 'do at: 1ED808B
  loc_1EE79AF: Loop Until (Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("CompName")), var_238, var_238) <> vbNullString) 'do at: 1ED7BF1
  loc_1EE79C9: var_234 = var_1B4.Fields.Item("AmtCr")
  loc_1EE79D8: Proc_6_39_E7C810(var_25C, CVar(var_234), 1)
  loc_1EE7A0A: var_2D4 = "-"
  loc_1EE7A3E: var_328 = CVar(vbNullString) & CVar(Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("CompName")), 1 & Format(var_25C, "0.00") & var_2D4, 1)) 
  loc_1EE7ACE: var_220 = CVar(var_1B4.Fields.Item("AmtCr")) 'Address
  loc_1EE7AD5: Proc_6_39_E7C810(var_25C, var_220)
  loc_1EE7B07: var_2D4 = " - "
  loc_1EE7B1F: var_238 = var_1B4.Fields
  loc_1EE7B27: var_24C = var_238.Item("Comments")
  loc_1EE7B3F: var_338 = "-"
  loc_1EE7B57: var_34C = var_1B4.Fields
  loc_1EE7B70: var_380 = CVar(Proc_6_38_E68A98(CVar(var_34C.Item("CompName")), CVar(vbNullString) & CVar(Proc_6_38_E68A98(CVar(var_24C), 1 & Format(var_25C, "0.00") & var_2D4, 1)) & " (")) 'String
  loc_1EE7BEE: GoTo loc_1ED8080
  loc_1EE7C2A: Loop Until (Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("PayType"))) = "Room") 'do at: 1ED7EC8
  loc_1EE7C74: var_224 = Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("DocID")), "Select IsNull(max(RoomNo),'') from PayCharge where DocId='", var_25C, -1, var_238)
  loc_1EE7C96: unk_43FED1.Execute var_24C & Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("PayType"))) & "' And PayCode = '" & MemVar_1F92078 & "TOUT'", 0, var_34C
  loc_1EE7CA6:  = var_24C.Item()
  loc_1EE7CAE:  = var_34C.Value
  loc_1EE7CBB: var_1C0 = Proc_6_38_E68A98(var_238.Fields)
  loc_1EE7CFE: var_220 = CVar(var_1B4.Fields.Item("AmtCr")) 'Address
  loc_1EE7D05: Proc_6_39_E7C810(var_25C)
  loc_1EE7D0D: var_294 = CVar(CStr(var_1B4.Fields.Item("AmtCr") & CVar(Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("PayName")), CVar(vbNullString) & CVar(Proc_6_38_E68A98(CVar(var_24C), 1 & Format(var_25C, "0.00") & var_2D4, 1)) & " (")) & "), ")) 'String
  loc_1EE7D7E: var_370 = var_294 & CVar(Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("PayName")), 1 & Format(var_25C, "0.00") & " (", 1)) & " Room: " & CVar(var_1C0) 
  loc_1EE7DD0: var_220 = CVar(var_1B4.Fields.Item("AmtCr")) 'Address
  loc_1EE7DD7: Proc_6_39_E7C810(var_25C, var_220)
  loc_1EE7E09: var_2D4 = " - "
  loc_1EE7E3D: var_328 = CVar(CStr(var_220 & var_370 & " ), " & " (" & CVar(Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("PayName")))) & "), ")) & CVar(Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("Comments")), 1 & Format(var_25C, "0.00") & " (", 1)) 
  loc_1EE7E96: var_1BC = CStr(var_220 & CVar(Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("PayName")), var_328 & " (")) & " Room: " & CVar(var_1C0) & " ), ")
  loc_1EE7EC5: GoTo loc_1ED8080
  loc_1EE7EE7: var_220 = CVar(var_1B4.Fields.Item("AmtCr")) 'Address
  loc_1EE7EEE: Proc_6_39_E7C810(var_25C)
  loc_1EE7F54: var_328 = CVar(CStr(CVar(var_1B4.Fields.Item("PayName")) & " ), ")) & CVar(Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("PayName")), 1 & Format(var_25C, "0.00") & " (", 1)) 
  loc_1EE7F62: var_1B8 = CStr(var_328 & "), ")
  loc_1EE7F9A: var_234 = var_1B4.Fields.Item("AmtCr")
  loc_1EE7FA2: var_220 = CVar(var_234) 'Address
  loc_1EE7FA9: Proc_6_39_E7C810(var_25C, var_220)
  loc_1EE7FDB: var_2D4 = " - "
  loc_1EE7FF3: var_238 = var_1B4.Fields
  loc_1EE7FFB: var_24C = var_238.Item("Comments")
  loc_1EE8044: var_380 = CVar(Proc_6_38_E68A98(CVar(var_1B4.Fields.Item("PayName")), CVar(var_1BC) & CVar(Proc_6_38_E68A98(CVar(var_24C), 1 & Format(var_25C, "0.00") & " (", 1)) & " (")) 'String
  loc_1EE8055: var_1BC = CStr(var_220 & var_380 & "), ")
  loc_1EE8083: var_1B4.MoveNext
  loc_1EE8088: GoTo loc_1ED7964
  loc_1EE80CC: var_308 = (Len(Trim(var_1B8)) - 1)
  loc_1EE8134: var_248 = var_1BC
  loc_1EE8144: var_2D4 = var_1BC
  loc_1EE814C: var_2A4 = Trim(var_2D4)
  loc_1EE815D: var_2E4 = 1
  loc_1EE8162: var_308 = (Len(var_2A4) - var_2E4)
  loc_1EE8174: var_294 = 0
  loc_1EE81B9: var_156 = &HFF
  loc_1EE81BF: var_15C = "POSBillWinPrint"
  loc_1EE81C2: var_1FC = "POS Sale Bill"
  loc_1EE81D9: var_160 = CStr(Ucase(var_1FC))
  loc_1EE81E9: Loop Until (var_156 = 0) 'do at: 1ED81ED
  loc_1EE81EC: Exit Sub
  loc_1EE8211: Set var_22C = var_C8 
  loc_1EE8218: CreateFieldDefFile(var_22C, MemVar_1F920B4 & "\" & var_15C & ".ttx")
  loc_1EE8243: var_224 = MemVar_1F920B4 & "\"
  loc_1EE825A: Call 0.Method_arg_1C (var_224 & var_15C & ".RPT", var_1FC, var_22C)
  loc_1EE8265: MemVar_1F921E4 = var_22C
  loc_1EE828E: Call 0.Method_arg_64 (var_22C, CVar(var_22C), var_248)
  loc_1EE8296: Call 0.Method_arg_2C (var_294, &HFF)
  loc_1EE82A4: Call 0.Method_arg_150 (var_156)
  loc_1EE82BA: Call 0.Method_arg_90 (var_22C, var_200)
  loc_1EE82C2: Call 0.Method_arg_24 (var_BA)
  loc_1EE82CE: For var_4AC =  To CInt(var_200): 1 = var_4AC 'Integer
  loc_1EE82E7:   Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE82EF:   Call 0.Method_arg_20 (var_234)
  loc_1EE82F7:   Call 0.Method_arg_30 (var_224)
  loc_1EE830D:   var_4BC = Ucase(CVar(var_224)) 'Variant
  loc_1EE8323:   var_220 = "comp_name"
  loc_1EE833D:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED838C
  loc_1EE834B:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8367:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE836F:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8377:   Call 0.Method_arg_38 (MemVar_1F92130)
  loc_1EE8389:   GoTo loc_1ED98FC
  loc_1EE8394:   var_220 = "comp_add1"
  loc_1EE83AE:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED83FD
  loc_1EE83BC:   Proc_6_17_EAA2B0(var_220)
  loc_1EE83D8:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE83E0:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE83E8:   Call 0.Method_arg_38 (MemVar_1F92134)
  loc_1EE83FA:   GoTo loc_1ED98FC
  loc_1EE8405:   var_220 = "comp_pin"
  loc_1EE841F:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED846E
  loc_1EE842D:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8449:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8451:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8459:   Call 0.Method_arg_38 (MemVar_1F9213C)
  loc_1EE846B:   GoTo loc_1ED98FC
  loc_1EE8490:   Loop Until (var_4BC = Ucase("comp_GSTIN")) 'do at: 1ED84DA
  loc_1EE84B4:   Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE84BC:   Call 0.Method_arg_20 (var_234)
  loc_1EE84C4:   Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_1EE84D7:   GoTo loc_1ED98FC
  loc_1EE84E2:   var_220 = "Comp_Phone_Fax"
  loc_1EE84FC:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED854B
  loc_1EE850A:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8526:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE852E:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8536:   Call 0.Method_arg_38 (var_170)
  loc_1EE8548:   GoTo loc_1ED98FC
  loc_1EE8553:   var_220 = "Outl_Phone_Fax"
  loc_1EE856D:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED85BC
  loc_1EE857B:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8597:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE859F:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE85A7:   Call 0.Method_arg_38 (var_174)
  loc_1EE85B9:   GoTo loc_1ED98FC
  loc_1EE85C4:   var_220 = "CompTitleYN"
  loc_1EE85DE:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED862D
  loc_1EE85EC:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8608:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8610:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8618:   Call 0.Method_arg_38 (var_178)
  loc_1EE862A:   GoTo loc_1ED98FC
  loc_1EE8635:   var_220 = "Outlet_Title"
  loc_1EE864F:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED869E
  loc_1EE865D:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8679:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8681:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8689:   Call 0.Method_arg_38 (var_10C)
  loc_1EE869B:   GoTo loc_1ED98FC
  loc_1EE86A6:   var_220 = "Waiter_Name"
  loc_1EE86C0:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED870F
  loc_1EE86CE:   Proc_6_17_EAA2B0(var_220)
  loc_1EE86EA:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE86F2:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE86FA:   Call 0.Method_arg_38 (var_114)
  loc_1EE870C:   GoTo loc_1ED98FC
  loc_1EE8717:   var_220 = "Covers"
  loc_1EE8731:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED8780
  loc_1EE873F:   Proc_6_17_EAA2B0(var_220)
  loc_1EE875B:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8763:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE876B:   Call 0.Method_arg_38 (var_128)
  loc_1EE877D:   GoTo loc_1ED98FC
  loc_1EE8788:   var_220 = "Cst_No"
  loc_1EE87A2:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED87F1
  loc_1EE87B0:   Proc_6_17_EAA2B0(var_220)
  loc_1EE87CC:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE87D4:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE87DC:   Call 0.Method_arg_38 (var_144)
  loc_1EE87EE:   GoTo loc_1ED98FC
  loc_1EE87F9:   var_220 = "Lst_No"
  loc_1EE8813:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED8862
  loc_1EE8821:   Proc_6_17_EAA2B0(var_220)
  loc_1EE883D:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8845:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE884D:   Call 0.Method_arg_38 (var_148)
  loc_1EE885F:   GoTo loc_1ED98FC
  loc_1EE886A:   var_220 = "lblRoom_TableNo"
  loc_1EE8884:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED88D3
  loc_1EE8892:   Proc_6_17_EAA2B0(var_220)
  loc_1EE88AE:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE88B6:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE88BE:   Call 0.Method_arg_38 (var_118)
  loc_1EE88D0:   GoTo loc_1ED98FC
  loc_1EE88DB:   var_220 = "Room_TableNo"
  loc_1EE88F5:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED8944
  loc_1EE8903:   Proc_6_17_EAA2B0(var_220)
  loc_1EE891F:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8927:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE892F:   Call 0.Method_arg_38 (var_11C)
  loc_1EE8941:   GoTo loc_1ED98FC
  loc_1EE894C:   var_220 = "lblOrder_KOTNo"
  loc_1EE8966:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED89B5
  loc_1EE8974:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8990:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8998:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE89A0:   Call 0.Method_arg_38 (var_14C)
  loc_1EE89B2:   GoTo loc_1ED98FC
  loc_1EE89C6:   var_25C = Ucase("Order_KOTNo")
  loc_1EE89D7:   Loop Until (var_4BC = var_25C) 'do at: 1ED8A3A
  loc_1EE89F5:   Proc_6_17_EAA2B0(var_25C)
  loc_1EE8A11:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8A19:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE8A21:   Call 0.Method_arg_38 (Left(var_150, &HFA))
  loc_1EE8A37:   GoTo loc_1ED98FC
  loc_1EE8A42:   var_220 = "TokenNo"
  loc_1EE8A5C:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED8AAB
  loc_1EE8A6A:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8A86:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8A8E:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8A96:   Call 0.Method_arg_38 (var_154)
  loc_1EE8AA8:   GoTo loc_1ED98FC
  loc_1EE8AB3:   var_220 = "Bill_No"
  loc_1EE8ACD:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED8B1C
  loc_1EE8ADB:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8AF7:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8AFF:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8B07:   Call 0.Method_arg_38 (var_12C)
  loc_1EE8B19:   GoTo loc_1ED98FC
  loc_1EE8B24:   var_220 = "BillVou"
  loc_1EE8B3E:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED8B8D
  loc_1EE8B4C:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8B68:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8B70:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8B78:   Call 0.Method_arg_38 (var_130)
  loc_1EE8B8A:   GoTo loc_1ED98FC
  loc_1EE8B95:   var_220 = "FolioNo"
  loc_1EE8BAF:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED8BFE
  loc_1EE8BBD:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8BD9:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8BE1:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8BE9:   Call 0.Method_arg_38 (var_18C)
  loc_1EE8BFB:   GoTo loc_1ED98FC
  loc_1EE8C06:   var_220 = "Remark"
  loc_1EE8C20:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED8C6F
  loc_1EE8C2E:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8C4A:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8C52:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8C5A:   Call 0.Method_arg_38 (var_16C)
  loc_1EE8C6C:   GoTo loc_1ED98FC
  loc_1EE8C77:   var_220 = "CustPhone"
  loc_1EE8C91:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED8CE0
  loc_1EE8C9F:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8CBB:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8CC3:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8CCB:   Call 0.Method_arg_38 (var_190)
  loc_1EE8CDD:   GoTo loc_1ED98FC
  loc_1EE8CE8:   var_220 = "CustName"
  loc_1EE8D02:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED8D51
  loc_1EE8D10:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8D2C:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8D34:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8D3C:   Call 0.Method_arg_38 (var_194)
  loc_1EE8D4E:   GoTo loc_1ED98FC
  loc_1EE8D59:   var_220 = "CustAddr1"
  loc_1EE8D73:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED8DC2
  loc_1EE8D81:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8D9D:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8DA5:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8DAD:   Call 0.Method_arg_38 (var_198)
  loc_1EE8DBF:   GoTo loc_1ED98FC
  loc_1EE8DCA:   var_220 = "CustAddr2"
  loc_1EE8DE4:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED8E33
  loc_1EE8DF2:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8E0E:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8E16:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8E1E:   Call 0.Method_arg_38 (var_19C)
  loc_1EE8E30:   GoTo loc_1ED98FC
  loc_1EE8E3B:   var_220 = "Bill_Date"
  loc_1EE8E55:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED8EA4
  loc_1EE8E63:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8E7F:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8E87:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8E8F:   Call 0.Method_arg_38 (var_120)
  loc_1EE8EA1:   GoTo loc_1ED98FC
  loc_1EE8EAC:   var_220 = "Bill_Time"
  loc_1EE8EC6:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED8F15
  loc_1EE8ED4:   Proc_6_17_EAA2B0(var_220)
  loc_1EE8EF0:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8EF8:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE8F00:   Call 0.Method_arg_38 (var_124)
  loc_1EE8F12:   GoTo loc_1ED98FC
  loc_1EE8F1D:   var_220 = "TotNonTaxable"
  loc_1EE8F26:   var_25C = Ucase(var_220)
  loc_1EE8F37:   Loop Until (var_4BC = var_25C) 'do at: 1ED8F95
  loc_1EE8F45:   Proc_6_47_EF59D0(var_220)
  loc_1EE8F50:   Proc_6_17_EAA2B0(var_25C, var_220)
  loc_1EE8F6C:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8F74:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE8F7C:   Call 0.Method_arg_38 (var_1A4)
  loc_1EE8F92:   GoTo loc_1ED98FC
  loc_1EE8F9D:   var_220 = "TotTaxable"
  loc_1EE8FA6:   var_25C = Ucase(var_220)
  loc_1EE8FB7:   Loop Until (var_4BC = var_25C) 'do at: 1ED9015
  loc_1EE8FC5:   Proc_6_47_EF59D0(var_220)
  loc_1EE8FD0:   Proc_6_17_EAA2B0(var_25C, var_220)
  loc_1EE8FEC:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE8FF4:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE8FFC:   Call 0.Method_arg_38 (var_1AC)
  loc_1EE9012:   GoTo loc_1ED98FC
  loc_1EE901D:   var_220 = "User_Name"
  loc_1EE9037:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED9086
  loc_1EE9045:   Proc_6_17_EAA2B0(var_220)
  loc_1EE9061:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9069:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9071:   Call 0.Method_arg_38 (var_140)
  loc_1EE9083:   GoTo loc_1ED98FC
  loc_1EE908E:   var_220 = "Header1"
  loc_1EE90A8:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED90F7
  loc_1EE90B6:   Proc_6_17_EAA2B0(var_220)
  loc_1EE90D2:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE90DA:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE90E2:   Call 0.Method_arg_38 (var_17C)
  loc_1EE90F4:   GoTo loc_1ED98FC
  loc_1EE90FF:   var_220 = "Header2"
  loc_1EE9119:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED9168
  loc_1EE9127:   Proc_6_17_EAA2B0(var_220)
  loc_1EE9143:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE914B:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9153:   Call 0.Method_arg_38 (var_180)
  loc_1EE9165:   GoTo loc_1ED98FC
  loc_1EE9170:   var_220 = "Header3"
  loc_1EE918A:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED91D9
  loc_1EE9198:   Proc_6_17_EAA2B0(var_220)
  loc_1EE91B4:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE91BC:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE91C4:   Call 0.Method_arg_38 (var_184)
  loc_1EE91D6:   GoTo loc_1ED98FC
  loc_1EE91E1:   var_220 = "Header4"
  loc_1EE91FB:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED924A
  loc_1EE9209:   Proc_6_17_EAA2B0(var_220)
  loc_1EE9225:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE922D:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9235:   Call 0.Method_arg_38 (var_188)
  loc_1EE9247:   GoTo loc_1ED98FC
  loc_1EE9252:   var_220 = "Slogan1"
  loc_1EE926C:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED92BB
  loc_1EE927A:   Proc_6_17_EAA2B0(var_220)
  loc_1EE9296:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE929E:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE92A6:   Call 0.Method_arg_38 (var_164)
  loc_1EE92B8:   GoTo loc_1ED98FC
  loc_1EE92C3:   var_220 = "Slogan2"
  loc_1EE92DD:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED932C
  loc_1EE92EB:   Proc_6_17_EAA2B0(var_220)
  loc_1EE9307:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE930F:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9317:   Call 0.Method_arg_38 (var_168)
  loc_1EE9329:   GoTo loc_1ED98FC
  loc_1EE9334:   var_220 = "SettleMode"
  loc_1EE934E:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED939D
  loc_1EE935C:   Proc_6_17_EAA2B0(var_220)
  loc_1EE9378:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9380:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9388:   Call 0.Method_arg_38 (CStr(Left(Trim(var_1B8), CLng(IIf((Len(Trim(var_1B8)) > 0), CVar(var_24C), 0)))))
  loc_1EE939A:   GoTo loc_1ED98FC
  loc_1EE93A5:   var_220 = "SettleMode1"
  loc_1EE93BF:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED940E
  loc_1EE93CD:   Proc_6_17_EAA2B0(var_220)
  loc_1EE93E9:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE93F1:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE93F9:   Call 0.Method_arg_38 (CStr(Left(Trim(var_1BC), CLng(IIf((Len(Trim(var_248)) > var_294), CVar(var_24C), 0)))))
  loc_1EE940B:   GoTo loc_1ED98FC
  loc_1EE9416:   var_220 = "Printed"
  loc_1EE9430:   Loop Until (var_4BC = Ucase(var_220)) 'do at: 1ED947F
  loc_1EE943E:   Proc_6_17_EAA2B0(var_220)
  loc_1EE945A:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9462:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE946A:   Call 0.Method_arg_38 (var_C0)
  loc_1EE947C:   GoTo loc_1ED98FC
  loc_1EE9490:   var_25C = Ucase("Company")
  loc_1EE94A1:   Loop Until (var_4BC = var_25C) 'do at: 1ED94FF
  loc_1EE94BA:   Proc_6_17_EAA2B0(var_25C)
  loc_1EE94D6:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE94DE:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE94E6:   Call 0.Method_arg_38 (Trim(var_1D0))
  loc_1EE94FC:   GoTo loc_1ED98FC
  loc_1EE9510:   var_25C = Ucase("CompanyAdd1")
  loc_1EE9521:   Loop Until (var_4BC = var_25C) 'do at: 1ED957F
  loc_1EE953A:   Proc_6_17_EAA2B0(var_25C)
  loc_1EE9556:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE955E:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE9566:   Call 0.Method_arg_38 (Trim(var_1D4))
  loc_1EE957C:   GoTo loc_1ED98FC
  loc_1EE9590:   var_25C = Ucase("CompanyAdd2")
  loc_1EE95A1:   Loop Until (var_4BC = var_25C) 'do at: 1ED95FF
  loc_1EE95BA:   Proc_6_17_EAA2B0(var_25C)
  loc_1EE95D6:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE95DE:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE95E6:   Call 0.Method_arg_38 (Trim(var_1D8))
  loc_1EE95FC:   GoTo loc_1ED98FC
  loc_1EE9610:   var_25C = Ucase("CompanyAdd3")
  loc_1EE9621:   Loop Until (var_4BC = var_25C) 'do at: 1ED967F
  loc_1EE963A:   Proc_6_17_EAA2B0(var_25C)
  loc_1EE9656:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE965E:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE9666:   Call 0.Method_arg_38 (Trim(var_1DC))
  loc_1EE967C:   GoTo loc_1ED98FC
  loc_1EE9690:   var_25C = Ucase("CompanyCity")
  loc_1EE96A1:   Loop Until (var_4BC = var_25C) 'do at: 1ED96FF
  loc_1EE96BA:   Proc_6_17_EAA2B0(var_25C)
  loc_1EE96D6:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE96DE:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE96E6:   Call 0.Method_arg_38 (Trim(var_1E0))
  loc_1EE96FC:   GoTo loc_1ED98FC
  loc_1EE9710:   var_25C = Ucase("CompanyStateCode")
  loc_1EE9721:   Loop Until (var_4BC = var_25C) 'do at: 1ED977F
  loc_1EE973A:   Proc_6_17_EAA2B0(var_25C)
  loc_1EE9756:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE975E:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE9766:   Call 0.Method_arg_38 (Trim(var_1E4))
  loc_1EE977C:   GoTo loc_1ED98FC
  loc_1EE9790:   var_25C = Ucase("CompanyState")
  loc_1EE97A1:   Loop Until (var_4BC = var_25C) 'do at: 1ED97FF
  loc_1EE97BA:   Proc_6_17_EAA2B0(var_25C)
  loc_1EE97D6:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE97DE:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE97E6:   Call 0.Method_arg_38 (Trim(var_1E8))
  loc_1EE97FC:   GoTo loc_1ED98FC
  loc_1EE9810:   var_25C = Ucase("CompanyGSTIN")
  loc_1EE9821:   Loop Until (var_4BC = var_25C) 'do at: 1ED987F
  loc_1EE983A:   Proc_6_17_EAA2B0(var_25C)
  loc_1EE9856:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE985E:   Call 0.Method_arg_20 (CStr(var_25C))
  loc_1EE9866:   Call 0.Method_arg_38 (Trim(var_1EC))
  loc_1EE987C:   GoTo loc_1ED98FC
  loc_1EE9887:   var_220 = "GrandTotal"
  loc_1EE9890:   var_25C = Ucase(var_220)
  loc_1EE98A1:   Loop Until (var_4BC = var_25C) 'do at: 1ED98FC
  loc_1EE98AF:   Proc_6_47_EF59D0(var_220)
  loc_1EE98BA:   Proc_6_17_EAA2B0(var_25C, var_220)
  loc_1EE98C2:   var_224 = CStr(var_25C)
  loc_1EE98D6:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE98DE:   Call 0.Method_arg_20 (var_224)
  loc_1EE98E6:   Call 0.Method_arg_38 (var_104)
  loc_1EE98FF: Next var_4AC 'Integer
  loc_1EE9906: var_BC = 0
  loc_1EE990F: var_200 = var_DC.RecordCount
  loc_1EE991D: Loop Until (var_200 > 0) 'do at: 1EDA0A6
  loc_1EE9923: var_DC.MoveFirst
  loc_1EE9937: Loop Until Not(var_DC.EOF) 'do at: 1EDA0A6
  loc_1EE9960: var_25C = Trim(CVar(var_DC.Fields.Item("SunCode")))
  loc_1EE998E: Loop Until (Ucase(var_25C) = CVar(MemVar_1F92078 & "NET")) 'do at: 1ED9B7E
  loc_1EE99D1: var_22C = var_DC.Fields
  loc_1EE99D9: var_234 = var_22C.Item("Amount")
  loc_1EE99E8: Proc_6_39_E7C810(var_25C, CVar(var_234))
  loc_1EE9A33: Call 0.Method_arg_90 (var_22C, var_200, var_BA, 1)
  loc_1EE9A3B: Call 0.Method_arg_24 (1, 1)
  loc_1EE9A47: For var_4C0 =  To CInt(var_200): var_BC = var_4C0 'Integer
  loc_1EE9A60:   Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE9A68:   Call 0.Method_arg_20 (var_234)
  loc_1EE9A70:   Call 0.Method_arg_30 (var_224)
  loc_1EE9A86:   var_4D0 = Ucase(CVar(var_224)) 'Variant
  loc_1EE9A9C:   var_220 = "lblNetAmount"
  loc_1EE9AB6:   Loop Until (var_4D0 = Ucase(var_220)) 'do at: 1ED9B05
  loc_1EE9AC4:   Proc_6_17_EAA2B0(var_220)
  loc_1EE9AE0:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9AE8:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9AF0:   Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_DC.Fields.Item("DispName"))))
  loc_1EE9B02:   GoTo loc_1ED9B73
  loc_1EE9B0D:   var_220 = "NetAmount"
  loc_1EE9B27:   Loop Until (var_4D0 = Ucase(var_220)) 'do at: 1ED9B73
  loc_1EE9B35:   Proc_6_17_EAA2B0(var_220)
  loc_1EE9B3D:   var_224 = CStr(var_220)
  loc_1EE9B51:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9B59:   Call 0.Method_arg_20 (var_224)
  loc_1EE9B61:   Call 0.Method_arg_38 (CStr(Format(Ucase(var_220), "0.00")))
  loc_1EE9B76: Next var_4C0 'Integer
  loc_1EE9B7B: GoTo loc_1EDA09B
  loc_1EE9BA4: var_25C = Trim(CVar(var_DC.Fields.Item("SunCode")))
  loc_1EE9BD2: Loop Until (Ucase(var_25C) = CVar(MemVar_1F92078 & "TOT")) 'do at: 1ED9DC2
  loc_1EE9C15: var_22C = var_DC.Fields
  loc_1EE9C1D: var_234 = var_22C.Item("Amount")
  loc_1EE9C25: var_220 = CVar(var_234) 'Address
  loc_1EE9C2C: Proc_6_39_E7C810(var_25C)
  loc_1EE9C77: Call 0.Method_arg_90 (var_22C, var_200, var_BA, 1)
  loc_1EE9C7F: Call 0.Method_arg_24 (1, 1)
  loc_1EE9C8B: For var_4D4 =  To CInt(var_200): var_220 = var_4D4 'Integer
  loc_1EE9CA4:   Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EE9CAC:   Call 0.Method_arg_20 (var_234)
  loc_1EE9CB4:   Call 0.Method_arg_30 (var_224)
  loc_1EE9CCA:   var_4E4 = Ucase(CVar(var_224)) 'Variant
  loc_1EE9CE0:   var_220 = "lblTotal"
  loc_1EE9CFA:   Loop Until (var_4E4 = Ucase(var_220)) 'do at: 1ED9D49
  loc_1EE9D08:   Proc_6_17_EAA2B0(var_220)
  loc_1EE9D24:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9D2C:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9D34:   Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_DC.Fields.Item("DispName"))))
  loc_1EE9D46:   GoTo loc_1ED9DB7
  loc_1EE9D51:   var_220 = "Total"
  loc_1EE9D5A:   var_25C = Ucase(var_220)
  loc_1EE9D6B:   Loop Until (var_4E4 = var_25C) 'do at: 1ED9DB7
  loc_1EE9D79:   Proc_6_17_EAA2B0(var_220)
  loc_1EE9D81:   var_224 = CStr(var_220)
  loc_1EE9D95:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9D9D:   Call 0.Method_arg_20 (var_224)
  loc_1EE9DA5:   Call 0.Method_arg_38 (CStr(Format(var_25C, "0.00")))
  loc_1EE9DBA: Next var_4D4 'Integer
  loc_1EE9DBF: GoTo loc_1EDA09B
  loc_1EE9E12: var_220 = CVar(var_DC.Fields.Item("SValue")) 'Address
  loc_1EE9E19: Proc_6_39_E7C810(var_25C)
  loc_1EE9E62: var_22C = var_DC.Fields
  loc_1EE9E6A: var_234 = var_22C.Item("Amount")
  loc_1EE9E72: var_220 = CVar(var_234) 'Address
  loc_1EE9E79: Proc_6_39_E7C810(var_25C, var_220, 1)
  loc_1EE9EB9: var_BC = (var_BC + 1)
  loc_1EE9ECD: Call 0.Method_arg_90 (var_22C, var_200, var_BA, 1, var_BC)
  loc_1EE9ED5: Call 0.Method_arg_24 (1, 1)
  loc_1EE9EE1: For var_4E8 = var_220 To CInt(var_200): 1 = var_4E8 'Integer
  loc_1EE9EFA:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9F02:   Call 0.Method_arg_20 (var_224)
  loc_1EE9F0A:   Call 0.Method_arg_30 (var_220)
  loc_1EE9F20:   var_4F8 = Ucase(CVar(var_224)) 'Variant
  loc_1EE9F3D:   var_220 = CVar("lblSunName" & CStr(var_BC)) 'String
  loc_1EE9F57:   Loop Until (var_4F8 = Ucase(var_220)) 'do at: 1ED9FA6
  loc_1EE9F65:   Proc_6_17_EAA2B0(var_220)
  loc_1EE9F81:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EE9F89:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EE9F91:   Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_DC.Fields.Item("DispName"))))
  loc_1EE9FA3:   GoTo loc_1EDA093
  loc_1EE9FB5:   var_220 = CVar("SunPer" & CStr(var_BC)) 'String
  loc_1EE9FCF:   Loop Until (var_4F8 = Ucase(var_220)) 'do at: 1EDA01E
  loc_1EE9FDD:   Proc_6_17_EAA2B0(var_220)
  loc_1EE9FF9:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEA001:   Call 0.Method_arg_20 (CStr(var_220))
  loc_1EEA009:   Call 0.Method_arg_38 (CStr(Format(Ucase(var_220), "0.00")))
  loc_1EEA01B:   GoTo loc_1EDA093
  loc_1EEA02D:   var_220 = CVar("SunAmt" & CStr(var_BC)) 'String
  loc_1EEA047:   Loop Until (var_4F8 = Ucase(var_220)) 'do at: 1EDA093
  loc_1EEA055:   Proc_6_17_EAA2B0(var_220)
  loc_1EEA05D:   var_224 = CStr(var_220)
  loc_1EEA071:   Call 0.Method_arg_90 (var_22C, CLng(var_BA), var_234)
  loc_1EEA079:   Call 0.Method_arg_20 (var_224)
  loc_1EEA081:   Call 0.Method_arg_38 (CStr(Format(Ucase(var_220), "0.00")))
  loc_1EEA096: Next var_4E8 'Integer
  loc_1EEA09E: var_DC.MoveNext
  loc_1EEA0A3: GoTo loc_1ED9928
  loc_1EEA0AC: var_200 = var_13C.RecordCount
  loc_1EEA0BA: Loop Until (var_200 > 0) 'do at: 1EDA379
  loc_1EEA0C0: var_13C.MoveFirst
  loc_1EEA0D4: Loop Until Not(var_13C.EOF) 'do at: 1EDA379
  loc_1EEA0E8: Call 0.Method_arg_90 (var_22C, var_200)
  loc_1EEA0F0: Call 0.Method_arg_24 (var_BA)
  loc_1EEA0FC: For var_4FC =  To CInt(var_200): 1 = var_4FC 'Integer
  loc_1EEA128:   var_25C = Ucase(CVar(var_13C.Fields.Item("SunName")))
  loc_1EEA143:   Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EEA14B:   Call 0.Method_arg_20 (var_224)
  loc_1EEA153:   Call 0.Method_arg_30 (var_25C)
  loc_1EEA17F:   Loop Until ( = Ucase(CVar(var_224))) 'do at: 1EDA366
  loc_1EEA1A8:   Proc_6_17_EAA2B0(var_25C)
  loc_1EEA1B0:   var_224 = CStr(var_25C)
  loc_1EEA1C4:   Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EEA1CC:   Call 0.Method_arg_20 (var_224)
  loc_1EEA1D4:   Call 0.Method_arg_38 (CVar(var_13C.Fields.Item("SunAmount")))
  loc_1EEA1FB:   var_22C = var_13C.Fields
  loc_1EEA203:   var_234 = var_22C.Item("SunName")
  loc_1EEA240:   Loop Until (Ucase(CVar(var_234)) = Ucase("Discount")) 'do at: 1EDA363
  loc_1EEA254:   Call 0.Method_arg_90 (var_22C, var_200)
  loc_1EEA25C:   Call 0.Method_arg_24 (var_BC)
  loc_1EEA268:   For var_500 =  To CInt(var_200): 1 = var_500 'Integer
  loc_1EEA281:     Call 0.Method_arg_90 (var_22C, CLng(var_BC))
  loc_1EEA289:     Call 0.Method_arg_20 (var_234)
  loc_1EEA291:     Call 0.Method_arg_30 (var_224)
  loc_1EEA2AC:     var_26C = "DiscPer"
  loc_1EEA2B5:     var_27C = Ucase(var_26C)
  loc_1EEA2D1:     Loop Until (Ucase(CVar(var_224)) = var_27C) 'do at: 1EDA35B
  loc_1EEA2E6:     var_22C = var_13C.Fields
  loc_1EEA2EE:     var_234 = var_22C.Item("SunPer")
  loc_1EEA2FF:     var_224 = CStr(var_234.Value)
  loc_1EEA30F:     Proc_6_17_EAA2B0(var_26C)
  loc_1EEA32B:     Call 0.Method_arg_90 (var_238, CLng(var_BC), var_24C)
  loc_1EEA333:     Call 0.Method_arg_20 (CStr(var_26C))
  loc_1EEA33B:     Call 0.Method_arg_38 (CVar(CStr(Val(var_224))))
  loc_1EEA35E:   Next var_500 'Integer
  loc_1EEA363:   GoTo loc_1EDA36E
  loc_1EEA369: Next var_4FC 'Integer
  loc_1EEA371: var_13C.MoveNext
  loc_1EEA376: GoTo loc_1EDA0C5
  loc_1EEA37F: var_200 = var_1B0.RecordCount
  loc_1EEA38D: Loop Until (var_200 > 0) 'do at: 1EDA72B
  loc_1EEA392: var_BC = 1
  loc_1EEA398: var_1B0.MoveFirst
  loc_1EEA3AC: Loop Until Not(var_1B0.EOF) 'do at: 1EDA72B
  loc_1EEA3C0: Call 0.Method_arg_90 (var_22C, var_200, var_BA)
  loc_1EEA3C8: Call 0.Method_arg_24 (1)
  loc_1EEA3D4: For var_504 =  To CInt(var_200): var_BC = var_504 'Integer
  loc_1EEA3ED:   Call 0.Method_arg_90 (var_22C, CLng(var_BA))
  loc_1EEA3F5:   Call 0.Method_arg_20 (var_234)
  loc_1EEA3FD:   Call 0.Method_arg_30 (var_224)
  loc_1EEA413:   var_514 = Ucase(CVar(var_224)) 'Variant
  loc_1EEA44A:   Loop Until (var_514 = Ucase(CVar("STName" & CStr(var_BC)))) 'do at: 1EDA4C4
  loc_1EEA47B:   Proc_6_17_EAA2B0(var_26C)
  loc_1EEA497:   Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EEA49F:   Call 0.Method_arg_20 (CStr(var_26C))
  loc_1EEA4A7:   Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_1B0.Fields.Item("TaxName")))))
  loc_1EEA4C1:   GoTo loc_1EDA70F
  loc_1EEA4D9:   var_25C = Ucase(CVar("STPer" & CStr(var_BC)))
  loc_1EEA4ED:   Loop Until (var_514 = var_25C) 'do at: 1EDA57E
  loc_1EEA516:   Proc_6_39_E7C810(var_25C)
  loc_1EEA52D:   Proc_6_17_EAA2B0(var_27C, CVar(CStr(var_25C) & ") 'String)
  loc_1EEA549:   Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EEA551:   Call 0.Method_arg_20 (CStr(var_27C))
  loc_1EEA559:   Call 0.Method_arg_38 (CVar(var_1B0.Fields.Item("TaxPer")))
  loc_1EEA57B:   GoTo loc_1EDA70F
  loc_1EEA593:   var_25C = Ucase(CVar("STAmt" & CStr(var_BC)))
  loc_1EEA5A7:   Loop Until (var_514 = var_25C) 'do at: 1EDA648
  loc_1EEA5D0:   Proc_6_39_E7C810(var_25C)
  loc_1EEA5FB:   Proc_6_17_EAA2B0(var_2A4, Format(var_25C, "0.00"), 1)
  loc_1EEA617:   Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EEA61F:   Call 0.Method_arg_20 (CStr(var_2A4), 1)
  loc_1EEA627:   Call 0.Method_arg_38 (CVar(var_1B0.Fields.Item("TaxAmt")))
  loc_1EEA645:   GoTo loc_1EDA70F
  loc_1EEA65D:   var_25C = Ucase(CVar("STAbleAmt" & CStr(var_BC)))
  loc_1EEA671:   Loop Until (var_514 = var_25C) 'do at: 1EDA70F
  loc_1EEA69A:   Proc_6_39_E7C810(var_25C)
  loc_1EEA6BA:   var_27C = Format(var_25C, "0.00")
  loc_1EEA6C5:   Proc_6_17_EAA2B0(var_2A4, var_27C, 1)
  loc_1EEA6E1:   Call 0.Method_arg_90 (var_238, CLng(var_BA), var_24C)
  loc_1EEA6E9:   Call 0.Method_arg_20 (CStr(var_2A4), 1)
  loc_1EEA6F1:   Call 0.Method_arg_38 (CVar(var_1B0.Fields.Item("TaxableAmt")))
  loc_1EEA712: Next var_504 'Integer
  loc_1EEA71D: var_BC = (var_BC + 1)
  loc_1EEA723: var_1B0.MoveNext
  loc_1EEA728: GoTo loc_1EDA39D
  loc_1EEA755: var_25C = CVar(Proc_6_38_E68A98(CVar(MemVar_6298CC.Fields.Item("Printer")))) 'String
  loc_1EEA75B: var_26C = Ucase(var_25C)
  loc_1EEA777: Loop Until CBool(var_26C <> "PRN") 'do at: 1EDA7B6
  loc_1EEA7A8: Proc_96_98_F0F978(Proc_6_38_E68A98(CVar(MemVar_6298CC.Fields.Item("Printer"))))
  loc_1EEA7DC: Proc_6_39_E7C810(var_25C, CVar(var_134.Fields.Item("NoOfBill")))
  loc_1EEA7F6: Loop Until (var_25C <= 0) 'do at: 1EDA842
  loc_1EEA7FE: Set var_234 = Nothing
  loc_1EEA81A: Set var_22C = MemVar_1F921E4 
  loc_1EEA826: Proc_6_99_1483714(var_22C, 0, vbNullString)
  loc_1EEA831: MemVar_1F921E4 = var_22C
  loc_1EEA83F: GoTo loc_1EDA897
  loc_1EEA859: var_234 = var_134.Fields.Item("NoOfBill")
  loc_1EEA868: Proc_6_39_E7C810(var_25C, CVar(var_234), &HFF)
  loc_1EEA888: Call 0.Method_Me8 (False, var_25C, var_294, var_2D4)
  loc_1EEA89C: Set var_C8 = Nothing
  loc_1EEA8A4: Set var_13C = Nothing
  loc_1EEA8AC: MemVar_1F921E4 = Nothing
  loc_1EEA8B3: var_C4.MoveNext
  loc_1EEA8B8: GoTo loc_1EE4615
  loc_1EEA8BE: var_F8.MoveNext
  loc_1EEA8C3: GoTo loc_1EE42B3
  loc_1EEA8C6: GoTo loc_1EDA8F2
  loc_1EEA8E2: MsgBox("Printer & Bill Type Not Defined ", &H40, var_25C, var_26C, var_27C)
  loc_1EEA8F7: Set var_C4 = Nothing
  loc_1EEA8FF: Set var_C8 = Nothing
  loc_1EEA907: Set var_13C = Nothing
  loc_1EEA90F: Set var_1B0 = Nothing
  loc_1EEA917: Set var_1B4 = Nothing
  loc_1EEA91F: Set var_D8 = Nothing
  loc_1EEA927: Set var_DC = Nothing
  loc_1EEA92F: Set var_134 = Nothing
  loc_1EEA937: Set var_D0 = Nothing
  loc_1EEA93F: Set var_D4 = Nothing
  loc_1EEA947: Set var_1B0 = Nothing
  loc_1EEA94A: Exit Sub
  loc_1EEA94B: Proc_6_60_E62BC4(var_2E4, var_234)
  loc_1EEA950: Exit Sub
End Sub

Public Sub Proc_260_15_181FB30
  'Data Table: 43FECC
  Dim MemVar_6298CC As Recordset15
  Dim var_108 As String
  Dim var_10C As String
  Dim unk_43FED1 As Connection15
  Dim var_C0 As Recordset15
  Dim var_138 As Variant
  Dim var_120 As Variant
  Dim var_128 As Variant
  Dim var_14C As Variant
  Dim var_150 As String
  Dim var_C4 As Recordset15
  Dim var_BA As Integer
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_C8 As Recordset15
  Dim var_13C As Fields15
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_240 As Variant
  Dim var_2D0 As Variant
  Dim var_1C8 As Variant
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_218 As Variant
  Dim var_258 As Variant
  Dim var_268 As Variant
  Dim var_288 As Variant
  Dim var_2A8 As Variant
  Dim var_2F8 As Variant
  Dim var_9E As Integer
  Dim var_190 As Variant
  Dim var_1E8 As Variant
  Dim var_278 As Variant
  Dim var_A0 As Integer
  Dim var_EC As Recordset15
  Dim var_11C As Variant
  Dim var_CC As Recordset15
  Dim var_328 As Variant
  Dim var_348 As Variant
  Dim var_3A8 As Variant
  Dim var_3C8 As Variant
  Dim var_4DC As Variant
  Dim var_D8 As Double
  Dim var_D0 As Recordset15
  Dim var_F0 As Recordset15
  loc_181D857: MemVar_6298CC.Filter = "ModType='POS'"
  loc_181D872: If (MemVar_6298CC.RecordCount > 0) Then
  loc_181D878:   MemVar_1F923C0 = "N"
  loc_181D87F:   MemVar_1F923C4 = "N"
  loc_181D886:   MemVar_1F923C8 = "K"
  loc_181D8B0:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_11C, -1
  loc_181D8BB:   Set var_EC = var_120
  loc_181D8D4:   var_108 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12)
  loc_181D8DB:   var_8C = var_108 & "'"
  loc_181D8E8:   var_108 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_181D8F8:   var_90 = var_108 & Me(12) & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) "
  loc_181D919:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno"
  loc_181D92A:   var_108 = "SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='"
  loc_181D93A:   var_98 = var_108 & Me(12) & "' ORDER BY I.Kitchen"
  loc_181D94C:   If (var_8C = vbNullString) Then
  loc_181D94F:     Exit Sub
  loc_181D950:   End If
  loc_181D958:   If (var_90 = vbNullString) Then
  loc_181D95B:     Exit Sub
  loc_181D95C:   End If
  loc_181D964:   If (var_94 = vbNullString) Then
  loc_181D967:     Exit Sub
  loc_181D968:   End If
  loc_181D97E:   unk_43FED1.Execute var_8C, var_11C, -1
  loc_181D989:   Set var_C0 = var_120
  loc_181D9A8:   unk_43FED1.Execute var_90, var_11C, -1
  loc_181D9B3:   Set var_CC = var_120
  loc_181D9D2:   unk_43FED1.Execute var_94, var_11C, -1
  loc_181D9DD:   Set var_D0 = var_120
  loc_181D9FC:   unk_43FED1.Execute var_98, var_11C, -1
  loc_181DA07:   Set var_C4 = var_120
  loc_181DA12:   Close 1
  loc_181DA1B:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_181DA1F:   ' Referenced from: 181FA1B
  loc_181DA2E:   If Not(var_C0.EOF) Then
  loc_181DA39:     var_11C = Space(&H41)
  loc_181DA5F:     var_DC = Replace(CStr(var_11C), " ", "-", 1, -1, 0)
  loc_181DA6B:     var_138 = 0
  loc_181DA9A:     unk_43FED1.Execute "SELECT TOKENPrint FROM Depart where Code='" & Me(8) & "'", var_11C, -1
  loc_181DAAA:     var_138 = var_128.Item(var_128)
  loc_181DADA:     If (Proc_6_38_E68A98(CVar(var_13C), var_13C, var_120.Fields, var_120.Fields) = "Yes") Then
  loc_181DAF1:       If (var_C4.RecordCount > 0) Then
  loc_181DAF4:         ' Referenced from: 181E0EA
  loc_181DB03:         If Not(var_C4.EOF) Then
  loc_181DB08:           var_BA = 1
  loc_181DB1F:           var_108 = "Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,SUM(S.Amount) AS AMT,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_181DB65:           var_170 = CVar(var_108 & Me(12) & "' AND I.Kitchen='") & var_C4.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)" 
  loc_181DB73:           unk_43FED1.Execute CStr(var_170), var_190, -1
  loc_181DB7E:           Set var_C8 = var_13C
  loc_181DBB4:           If (var_C8.RecordCount > 0) Then
  loc_181DC04:             Print 1, Proc_260_1_10A5350(CStr(var_C4.Fields.Item("Department").Value), "D", &H3C, var_13C)
  loc_181DC3B:             var_120 = var_C0.Fields
  loc_181DC7D:             Proc_6_39_E7C810(var_190, CVar(var_C0.Fields.Item("VNo")))
  loc_181DCB3:             var_300 = Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(CVar(var_120.Item("vType")), var_BA, var_120) & "/" & MemVar_1F92168 & "/") & var_190), &H10)
  loc_181DD56:             var_14C = (Chr(&HF) + "Bill No.   : ")
  loc_181DD60:             var_1D8 = (CVar(Proc_6_38_E68A98(CVar(var_120.Item("vType")), var_BA, var_120) & Me(12) & "' AND I.Kitchen='") + CVar(var_300))
  loc_181DD67:             var_1F8 = (var_1D8 + Space(1))
  loc_181DD70:             var_218 = (var_1F8 + "Dt : ")
  loc_181DD7A:             var_268 = (var_218 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")), var_120), &HF)))
  loc_181DD81:             var_288 = (var_268 + Space(4))
  loc_181DD8A:             var_2A8 = (var_288 + "Time : ")
  loc_181DD94:             var_2F8 = (var_2A8 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 8)))
  loc_181DD9A:             Print 1, var_2F8
  loc_181DDF9:             var_9E = (var_9E + 1)
  loc_181DE6E:             var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428("SNo", 3)))
  loc_181DE75:             var_190 = (CVar(var_120.Item("vType")) + Space(1))
  loc_181DE7F:             var_1B8 = (var_190 + CVar(Proc_6_45_EAD428("PARTICULARS", &H28)))
  loc_181DE86:             var_1D8 = (CVar(Proc_6_38_E68A98(CVar(var_120.Item("vType")), var_BA, var_120) & "/" & MemVar_1F92168 & "/") & var_190 + Space(1))
  loc_181DE90:             var_1F8 = (var_1D8 + CVar(Proc_6_52_EAD4F4("Qty", &H12)))
  loc_181DE96:             Print 1, var_1F8
  loc_181DEDA:             var_14C = (Chr(&HF) + CVar(var_DC))
  loc_181DEE0:             Print 1, CVar(Proc_6_45_EAD428("SNo", 3))
  loc_181DEED:             ' Referenced from: 181E064
  loc_181DEFC:             If Not(var_C8.EOF) Then
  loc_181DF9E:               Proc_6_39_E7C810(var_218, CVar(var_C8.Fields.Item("qty")))
  loc_181DFE1:               var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(var_BA), 3)))
  loc_181DFE8:               var_190 = (CVar(var_C8.Fields.Item("vType")) + Space(1))
  loc_181DFF2:               var_1C8 = (var_190 + CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("ItemName").Value), &H28)))
  loc_181DFF9:               var_1E8 = (Space(1) + Space(1))
  loc_181E003:               var_278 = (CVar(Proc_6_52_EAD4F4("Qty", &H12)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_218, "0.00")), &H12, 1)))
  loc_181E009:               Print 1, Space(4)
  loc_181E04D:               var_C8.MoveNext
  loc_181E058:               var_9E = (var_9E + 1)
  loc_181E061:               var_BA = (var_BA + 1)
  loc_181E064:               GoTo loc_181DEED
  loc_181E067:             End If
  loc_181E067:           End If
  loc_181E06A:           var_C4.MoveNext
  loc_181E074:           Print 1, vbNullString
  loc_181E0B5:           var_10C = Replace(CStr(Space(&H41)), " ", "=", 1, -1, 0)
  loc_181E0C1:           var_170 = (Chr(&HF) + CVar("PARTICULARS"))
  loc_181E0C7:           Print 1, Space(1)
  loc_181E0E4:           Print 1, vbNullString
  loc_181E0EA:           GoTo loc_181DAF4
  loc_181E0ED:         End If
  loc_181E0ED:       End If
  loc_181E0ED:     End If
  loc_181E0EF:     var_9E = 0
  loc_181E0F4:     var_A0 = 1
  loc_181E14F:     var_10C = Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), (Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), var_A0, var_9E, var_BA) = "Restaurant"), var_9E)
  loc_181E16D:     If (1 Or (var_10C = "Hall")) Then
  loc_181E17E:       var_9C = "** " & "BILL" & " **"
  loc_181E187:     Else
  loc_181E1BD:       var_9C = var_9E & Proc_6_38_E68A98(CVar(var_EC.Fields.Item("Name")), "** ") & " **"
  loc_181E1CD:     End If
  loc_181E1D3:     If (var_9E = 0) Then
  loc_181E248:       var_190 = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(vbNullString & var_EC.Fields.Item("LstNo").Value), &H1E)))
  loc_181E24F:       var_1B8 = (var_190 + Chr(&H12))
  loc_181E255:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("ItemName").Value), &H28))
  loc_181E282:       var_9E = (var_9E + 1)
  loc_181E2A6:       Print 1, Proc_260_1_10A5350(var_9C, "D", &H3C)
  loc_181E2BA:       Print 1, vbNullString
  loc_181E2C6:       var_9E = (var_9E + 1)
  loc_181E2F7:       var_DC = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_181E32E:       var_E0 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_181E385:       var_150 = Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C), Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C)), &H1E)
  loc_181E38E:       var_160 = (Chr(&H11) + Space(&H14))
  loc_181E397:       var_170 = (vbNullString & var_EC.Fields.Item("LstNo").Value + "PHONE NO.")
  loc_181E39E:       var_190 = CVar(var_150) 'String
  loc_181E3A1:       var_1A8 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(vbNullString & var_EC.Fields.Item("LstNo").Value), &H1E)) + var_190)
  loc_181E3A7:       Print 1, Chr(&H12)
  loc_181E3CB:       var_9E = (var_9E + 1)
  loc_181E3D3:       Print 1, vbNullString
  loc_181E3DF:       var_9E = (var_9E + 1)
  loc_181E3E7:       Print 1, vbNullString
  loc_181E3F3:       var_9E = (var_9E + 1)
  loc_181E42B:       var_2FC = Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType")), Proc_260_2_136D614(var_A0, var_9E, &H3C), Proc_260_2_136D614(var_A0, var_9E, &H3C))
  loc_181E454:       Proc_6_39_E7C810(var_190, CVar(var_C0.Fields.Item("VNo")), Proc_260_2_136D614(var_A0, var_9E, &H3C))
  loc_181E4D6:       var_308 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")), Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C)), &HF)
  loc_181E52D:       var_14C = (Chr(&HF) + "Bill No.   : ")
  loc_181E537:       var_1D8 = (Space(&H14) + CVar(Proc_6_45_EAD428(CStr(CVar(var_2FC & "/" & MemVar_1F92168 & "/") & var_190), &H10)))
  loc_181E53E:       var_1F8 = (Space(1) + Space(1))
  loc_181E547:       var_218 = (CVar(var_C8.Fields.Item("qty")) + "Dt : ")
  loc_181E551:       var_268 = (var_218 + CVar(var_308))
  loc_181E558:       var_288 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_218, "0.00")), &H12, 1)) + Space(4))
  loc_181E561:       var_2A8 = (var_288 + "Time : ")
  loc_181E56B:       var_2F8 = (var_2A8 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 8)))
  loc_181E571:       Print 1, var_2F8
  loc_181E5D0:       var_9E = (var_9E + 1)
  loc_181E60C:       If (Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C)) = "Outlet") Then
  loc_181E663:         var_14C = (Chr(&HF) + "Table No.  : ")
  loc_181E66D:         var_190 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_181E673:         Print 1, var_190
  loc_181E698:         var_9E = (var_9E + 1)
  loc_181E69B:       End If
  loc_181E6D4:       If (Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C)) = "Room Service") Then
  loc_181E72B:         var_14C = (Chr(&HF) + "Room No.   : ")
  loc_181E735:         var_190 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_181E73B:         Print 1, var_190
  loc_181E760:         var_9E = (var_9E + 1)
  loc_181E763:       End If
  loc_181E79C:       If (Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C)) = "Hall") Then
  loc_181E7F3:         var_14C = (Chr(&HF) + "Hall  No.  : ")
  loc_181E7FD:         var_190 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_181E803:         Print 1, var_190
  loc_181E828:         var_9E = (var_9E + 1)
  loc_181E82B:       End If
  loc_181E8AB:       If CBool((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)) Then
  loc_181E8F7:         var_150 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("KOTNo")), Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C)), &H34)
  loc_181E902:         var_14C = (Chr(&HF) + "KOT No.    : ")
  loc_181E90C:         var_190 = (Space(&H14) + CVar(var_150))
  loc_181E912:         Print 1, (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)
  loc_181E937:         var_9E = (var_9E + 1)
  loc_181E93A:       End If
  loc_181E950:       var_14C = (Chr(&HF) + CVar(var_DC))
  loc_181E956:       Print 1, Space(&H14)
  loc_181E969:       var_9E = (var_9E + 1)
  loc_181E96C:     End If
  loc_181E992:     var_160 = (CVar(Proc_6_45_EAD428("SNo", 3, Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C))) + Space(1))
  loc_181E9AC:     var_190 = (Proc_260_2_136D614(var_A0, var_9E, &H3C) + CVar(Proc_6_45_EAD428("ITEM NAME", &H14, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_181E9C0:     var_1B8 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Space(1))
  loc_181E9DA:     var_1D8 = (CVar(var_2FC & "/" & MemVar_1F92168 & "/") & (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String)
  loc_181E9E6:     var_1E8 = Space(1)
  loc_181E9EE:     var_1F8 = (Space(1) + var_1E8)
  loc_181EA08:     var_240 = (CVar(var_C8.Fields.Item("qty")) + CVar(Proc_6_52_EAD4F4("Rate", &HA)))
  loc_181EA1C:     var_268 = (CVar(var_C0.Fields.Item("VDate")) + Space(1))
  loc_181EA36:     var_288 = (CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_52_EAD4F4("Rate", &HA)), "0.00")), &H12, 1)) + CVar(Proc_6_52_EAD4F4("Qty", &HA)))
  loc_181EA42:     var_2A8 = Space(1)
  loc_181EA4A:     var_2D0 = (var_288 + var_2A8)
  loc_181EA64:     var_2F8 = (CVar(var_C0.Fields.Item("VTIME")) + CVar(Proc_6_52_EAD4F4("Amount", &HA)))
  loc_181EA69:     var_B8 = CStr(var_2F8)
  loc_181EABE:     var_14C = (Chr(&HF) + CVar(var_B8))
  loc_181EAC4:     Print 1, CVar(Proc_6_45_EAD428("SNo", 3, Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C)))
  loc_181EAE7:     var_14C = (Chr(&HF) + CVar(var_DC))
  loc_181EAED:     Print 1, CVar(Proc_6_45_EAD428("SNo", 3, Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C)))
  loc_181EB00:     var_9E = (var_9E + 1)
  loc_181EB05:     var_BA = 1
  loc_181EB0B:     var_CC.MoveFirst
  loc_181EB10:     ' Referenced from: 181F034
  loc_181EB1F:     If Not(var_CC.EOF) Then
  loc_181EB6F:       Proc_6_39_E7C810(var_1E8, CVar(var_CC.Fields.Item("TaxPer")), var_BA)
  loc_181EBBA:       Proc_6_39_E7C810(var_2A8, CVar(var_CC.Fields.Item("Rate")), 1)
  loc_181EC05:       Proc_6_39_E7C810(var_368, CVar(var_CC.Fields.Item("qty")), 1, 1)
  loc_181EC50:       Proc_6_39_E7C810(var_400, CVar(var_CC.Fields.Item("Rate")), 1, 1)
  loc_181EC91:       Proc_6_39_E7C810(var_458, CVar(var_CC.Fields.Item("Amt")))
  loc_181ECDC:       var_160 = (CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1)) + Space(1))
  loc_181ECF5:       var_1A8 = (1 + CVar(Proc_6_45_EAD428(CStr(var_CC.Fields.Item("ItemName").Value), &H14, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_181ED09:       var_1C8 = (Space(1) + Space(1))
  loc_181ED22:       var_258 = (Proc_260_2_136D614(var_A0, var_9E, &H3C) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E8, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String)) 'String)
  loc_181ED36:       var_278 = (Space(1) + Space(1))
  loc_181ED4F:       var_328 = (CVar(Proc_6_52_EAD4F4("Qty", &HA)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_2A8, "0.00")), &HA)))
  loc_181ED63:       var_348 = (var_328 + Space(1))
  loc_181ED7C:       var_3A8 = (var_348 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_368, "0.00")), &HA)))
  loc_181ED90:       var_3C8 = (var_3A8 + Space(1))
  loc_181EDCE:       var_4DC = (var_3C8 + IIf((var_400 = 0), CVar(Proc_6_45_EAD428("Free", &HA, 1)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_458, "0.00")), &HA))))
  loc_181EE69:       var_14C = (Chr(&HF) + CVar(CStr(var_4DC)))
  loc_181EE6F:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1))
  loc_181EE86:       If (Proc_260_2_136D614(var_A0, var_9E, &H3C) = (&H45 - var_B2)) Then
  loc_181EE9F:         var_14C = (Chr(&HF) + CVar(var_DC))
  loc_181EEA5:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1))
  loc_181EEB8:         var_9E = (var_9E + 1)
  loc_181EEC0:         Print 1, "Contd."
  loc_181EECC:         var_9E = (var_9E + 1)
  loc_181EEE1:         Print 1, Chr(&HC)
  loc_181EEF0:         var_9E = (var_9E + 1)
  loc_181EEF9:         var_A0 = (var_A0 + 1)
  loc_181EEFE:         var_9E = 0
  loc_181EF30:         var_10C = Proc_260_1_10A5350(var_9C, "B", &H3C, Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), &H3C, Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), var_A0))
  loc_181EF35:         Print 1, var_10C
  loc_181EF4A:         var_9E = (var_9E + 1)
  loc_181EF63:         var_14C = (Chr(&HF) + CVar(var_DC))
  loc_181EF69:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1))
  loc_181EF7C:         var_9E = (var_9E + 1)
  loc_181EF95:         var_14C = (Chr(&HF) + CVar(var_B8))
  loc_181EF9B:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1))
  loc_181EFBE:         var_14C = (Chr(&HF) + CVar(var_DC))
  loc_181EFC4:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1))
  loc_181EFD7:         var_9E = (var_9E + 1)
  loc_181EFDA:       End If
  loc_181F007:       Proc_6_39_E7C810(CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1)), CVar(var_CC.Fields.Item("Amt")), CVar(var_D8), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_181F00F:       var_160 = (Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0) + CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1)))
  loc_181F014:       var_D8 = CSng(CVar(var_C0.Fields.Item("KOTNo")))
  loc_181F029:       var_BA = (var_BA + 1)
  loc_181F02F:       var_CC.MoveNext
  loc_181F034:       GoTo loc_181EB10
  loc_181F037:     End If
  loc_181F057:     var_160 = (Chr(&HF) + Space(&H35))
  loc_181F061:     var_170 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_181F067:     Print 1, var_CC.Fields.Item("ItemName").Value
  loc_181F07E:     var_9E = (var_9E + 1)
  loc_181F084:     var_D0.MoveFirst
  loc_181F089:     ' Referenced from: 181F5A6
  loc_181F098:     If Not(var_D0.EOF) Then
  loc_181F0C5:       var_4EC = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_181F0E3:       If (var_4EC = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_181F139:         var_150 = Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HF, Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), var_BA, var_D8)
  loc_181F16F:         Proc_6_39_E7C810(var_1E8, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_181F1BC:         var_160 = (Chr(&HF) + Space(&H23))
  loc_181F1C6:         var_1A8 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_150))
  loc_181F1CD:         var_1C8 = (Space(1) + Space(4))
  loc_181F1D7:         var_258 = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E8, "0.00")), &HA, 1, 1)))
  loc_181F1DE:         var_278 = (Space(1) + Chr(&H12))
  loc_181F1E4:         Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_181F227:         var_9E = (var_9E + 1)
  loc_181F22D:       Else
  loc_181F240:         If (var_4EC = CVar(MemVar_1F92078 & "NET")) Then
  loc_181F258:           var_14C = Space(&H35)
  loc_181F263:           var_160 = (Chr(&HF) + var_14C)
  loc_181F26D:           var_170 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_181F273:           Print 1, var_D0.Fields.Item("DispName").Value
  loc_181F28A:           var_9E = (var_9E + 1)
  loc_181F2B3:           Proc_6_39_E7C810(var_14C, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_181F2CD:           If (var_14C > 0) Then
  loc_181F2E5:             var_14C = Space(&H23)
  loc_181F323:             var_150 = Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HF, Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_181F359:             Proc_6_39_E7C810(var_1E8, CVar(var_D0.Fields.Item("Amount")))
  loc_181F3A6:             var_160 = (Chr(&HF) + var_14C)
  loc_181F3B0:             var_1A8 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_150))
  loc_181F3B7:             var_1C8 = (Space(1) + Space(4))
  loc_181F3C1:             var_258 = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E8, "0.00")), &HA, 1)))
  loc_181F3C8:             var_278 = (Space(1) + Chr(&H12))
  loc_181F3CE:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_181F411:             var_9E = (var_9E + 1)
  loc_181F414:           End If
  loc_181F417:         Else
  loc_181F43D:           Proc_6_39_E7C810(var_14C, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_181F457:           If (var_14C > 0) Then
  loc_181F4E3:             Proc_6_39_E7C810(var_1E8, CVar(var_D0.Fields.Item("Amount")))
  loc_181F530:             var_160 = (Chr(&HF) + Space(&H23))
  loc_181F53A:             var_1A8 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1)))
  loc_181F541:             var_1C8 = (Space(1) + Space(4))
  loc_181F54B:             var_258 = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E8, "0.00")), &HA, 1)))
  loc_181F552:             var_278 = (Space(1) + Chr(&H12))
  loc_181F558:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_181F59B:             var_9E = (var_9E + 1)
  loc_181F59E:           End If
  loc_181F59E:         End If
  loc_181F59E:       End If
  loc_181F5A1:       var_D0.MoveNext
  loc_181F5A6:       GoTo loc_181F089
  loc_181F5A9:     End If
  loc_181F5BF:     var_14C = (Chr(&HF) + CVar(var_DC))
  loc_181F5C5:     Print 1, Space(&H23)
  loc_181F5D8:     var_9E = (var_9E + 1)
  loc_181F617:     If CBool(var_C0.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_181F64F:       var_10C = Proc_6_38_E68A98(CVar(var_C0.Fields.Item("WaiterName")), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_181F66E:       var_14C = (Chr(&HF) + "Steward Name  : ")
  loc_181F678:       var_190 = (Space(&H23) + CVar(Proc_6_45_EAD428(var_10C, &H14, 1)))
  loc_181F67E:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1))
  loc_181F6A3:       var_9E = (var_9E + 1)
  loc_181F6A6:     End If
  loc_181F6AE:     var_11C = Chr(&HF)
  loc_181F6C2:     var_120 = var_C0.Fields
  loc_181F6EF:     var_150 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_120.Item("U_Name")), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0)), &HA)
  loc_181F6FA:     var_14C = (var_11C + "User Name     : ")
  loc_181F704:     var_190 = (Space(&H23) + CVar(var_150))
  loc_181F70A:     Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1))
  loc_181F72F:     var_9E = (var_9E + 1)
  loc_181F737:     Print 1, vbNullString
  loc_181F743:     var_9E = (var_9E + 1)
  loc_181F76C:     unk_43FED1.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & Me(8) & "'", var_11C, -1
  loc_181F777:     Set var_F0 = var_120
  loc_181F79B:     If (var_F0.RecordCount > 0) Then
  loc_181F7DE:       If CBool(Trim(CVar(var_F0.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_181F7E9:         var_11C = Chr(&HF)
  loc_181F7FD:         var_120 = var_F0.Fields
  loc_181F81F:         var_170 = (var_11C + Trim(CVar(var_120.Item("Slogan1"))))
  loc_181F825:         Print 1, CVar(var_150)
  loc_181F83F:         var_9E = (var_9E + 1)
  loc_181F842:       End If
  loc_181F842:     End If
  loc_181F868:     unk_43FED1.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & Me(8) & "'", var_11C, -1
  loc_181F873:     Set var_F0 = var_120
  loc_181F897:     If (var_F0.RecordCount > 0) Then
  loc_181F8DA:       If CBool(Trim(CVar(var_F0.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_181F91B:         var_170 = (Chr(&HF) + Trim(CVar(var_F0.Fields.Item("Slogan2"))))
  loc_181F921:         Print 1, CVar(var_150)
  loc_181F93B:         var_9E = (var_9E + 1)
  loc_181F93E:       End If
  loc_181F93E:     End If
  loc_181F943:     Set var_F0 = Nothing
  loc_181F966:     var_160 = (Chr(&HF) + Space(&H32))
  loc_181F96F:     var_170 = (Trim(CVar(var_F0.Fields.Item("Slogan2"))) + "Guest Signature")
  loc_181F975:     Print 1, CVar(var_150)
  loc_181F98C:     var_9E = (var_9E + 1)
  loc_181F994:     Print 1, vbNullString
  loc_181F9A0:     var_9E = (var_9E + 1)
  loc_181F9B8:     var_14C = (Chr(&HF) + "# ")
  loc_181F9C2:     var_160 = Space(&H32) & CVar(MemVar_1F9221C) 
  loc_181F9CB:     var_170 = var_160 & " # " 
  loc_181F9D1:     Print 1, var_170
  loc_181F9E8:     var_9E = (var_9E + 1)
  loc_181F9EE:     var_C0.MoveNext
  loc_181F9F8:     Print 1, vbNullString
  loc_181FA04:     var_9E = (var_9E + 1)
  loc_181FA0C:     Print 1, vbNullString
  loc_181FA18:     var_9E = (var_9E + 1)
  loc_181FA1B:     GoTo loc_181DA1F
  loc_181FA1E:   End If
  loc_181FA20:   Close 1
  loc_181FA29:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_181FA5E:   var_14C = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_6298CC.Fields.Item("Printer").Value 
  loc_181FA64:   Print 1, var_14C
  loc_181FA7A:   Close 1
  loc_181FA84:   If (MemVar_1F923B8 = "Y") Then
  loc_181FAA0:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_181FAAA:   Else
  loc_181FAC3:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_181FACA:   End If
  loc_181FACF:   Set var_C0 = Nothing
  loc_181FAD7:   Set var_CC = Nothing
  loc_181FADF:   Set var_D0 = Nothing
  loc_181FAE7:   Set var_EC = Nothing
  loc_181FAEF:   Set var_C4 = Nothing
  loc_181FAF7:   Set var_C8 = Nothing
  loc_181FAFD: Else
  loc_181FB16:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_14C, var_160, var_170)
  loc_181FB26: End If
  loc_181FB26: Exit Sub
  loc_181FB27: Proc_6_60_E62BC4(Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_181FB2C: Exit Sub
End Sub

Public Sub Proc_260_16_18CF0C0
  'Data Table: 43FECC
  Dim MemVar_6298CC As Recordset15
  Dim var_10C As String
  Dim var_110 As String
  Dim unk_43FED1 As Connection15
  Dim var_C0 As Recordset15
  Dim var_13C As Variant
  Dim var_124 As Variant
  Dim var_12C As Variant
  Dim var_150 As Variant
  Dim var_154 As String
  Dim var_C4 As Recordset15
  Dim var_BA As Integer
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_C8 As Recordset15
  Dim var_140 As Fields15
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_244 As Variant
  Dim var_2D4 As Variant
  Dim var_1CC As Variant
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  Dim var_21C As Variant
  Dim var_25C As Variant
  Dim var_26C As Variant
  Dim var_28C As Variant
  Dim var_2AC As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_9E As Integer
  Dim var_194 As Variant
  Dim var_1EC As Variant
  Dim var_27C As Variant
  Dim var_A0 As Integer
  Dim var_EC As Recordset15
  Dim var_120 As Variant
  Dim var_CC As Recordset15
  Dim var_32C As Variant
  Dim var_34C As Variant
  Dim var_3AC As Variant
  Dim var_3CC As Variant
  Dim var_4E0 As Variant
  Dim var_D8 As Double
  Dim var_D0 As Recordset15
  Dim var_F0 As Recordset15
  Dim var_F4 As Recordset15
  loc_18CC8FC: On Error Goto loc_18CF0B7
  loc_18CC90A: MemVar_6298CC.Filter = "ModType='POS'"
  loc_18CC925: If (MemVar_6298CC.RecordCount > 0) Then
  loc_18CC92B:   MemVar_1F923C0 = "N"
  loc_18CC932:   MemVar_1F923C4 = "N"
  loc_18CC939:   MemVar_1F923C8 = "K"
  loc_18CC963:   unk_43FED1.Execute "Select * from Depart Where Code='" & Me(8) & "'", var_120, -1
  loc_18CC96E:   Set var_EC = var_124
  loc_18CC987:   var_10C = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12)
  loc_18CC98E:   var_8C = var_10C & "'"
  loc_18CC99B:   var_10C = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_18CC9AB:   var_90 = var_10C & Me(12) & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) "
  loc_18CC9CC:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT,ST.SValue From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno"
  loc_18CC9DD:   var_10C = "SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='"
  loc_18CC9ED:   var_98 = var_10C & Me(12) & "' ORDER BY I.Kitchen"
  loc_18CC9FF:   If (var_8C = vbNullString) Then
  loc_18CCA02:     Exit Sub
  loc_18CCA03:   End If
  loc_18CCA0B:   If (var_90 = vbNullString) Then
  loc_18CCA0E:     Exit Sub
  loc_18CCA0F:   End If
  loc_18CCA17:   If (var_94 = vbNullString) Then
  loc_18CCA1A:     Exit Sub
  loc_18CCA1B:   End If
  loc_18CCA31:   unk_43FED1.Execute var_8C, var_120, -1
  loc_18CCA3C:   Set var_C0 = var_124
  loc_18CCA5B:   unk_43FED1.Execute var_90, var_120, -1
  loc_18CCA66:   Set var_CC = var_124
  loc_18CCA85:   unk_43FED1.Execute var_94, var_120, -1
  loc_18CCA90:   Set var_D0 = var_124
  loc_18CCAAF:   unk_43FED1.Execute var_98, var_120, -1
  loc_18CCABA:   Set var_C4 = var_124
  loc_18CCAC5:   Close 1
  loc_18CCACE:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_18CCAD2:   ' Referenced from: 18CEFAB
  loc_18CCAE1:   If Not(var_C0.EOF) Then
  loc_18CCAEC:     var_120 = Space(&H41)
  loc_18CCB12:     var_DC = Replace(CStr(var_120), " ", "-", 1, -1, 0)
  loc_18CCB1E:     var_13C = 0
  loc_18CCB4D:     unk_43FED1.Execute "SELECT TOKENPrint FROM Depart where Code='" & Me(8) & "'", var_120, -1
  loc_18CCB5D:     var_13C = var_12C.Item(var_12C)
  loc_18CCB8D:     If (Proc_6_38_E68A98(CVar(var_140), var_140, var_124.Fields, var_124.Fields) = "Yes") Then
  loc_18CCBA4:       If (var_C4.RecordCount > 0) Then
  loc_18CCBA7:         ' Referenced from: 18CD19D
  loc_18CCBB6:         If Not(var_C4.EOF) Then
  loc_18CCBBB:           var_BA = 1
  loc_18CCBD2:           var_10C = "Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,SUM(S.Amount) AS AMT,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_18CCC18:           var_174 = CVar(var_10C & Me(12) & "' AND I.Kitchen='") & var_C4.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)" 
  loc_18CCC26:           unk_43FED1.Execute CStr(var_174), var_194, -1
  loc_18CCC31:           Set var_C8 = var_140
  loc_18CCC67:           If (var_C8.RecordCount > 0) Then
  loc_18CCCB7:             Print 1, Proc_260_1_10A5350(CStr(var_C4.Fields.Item("Department").Value), "D", &H3C, var_140)
  loc_18CCCEE:             var_124 = var_C0.Fields
  loc_18CCD30:             Proc_6_39_E7C810(var_194, CVar(var_C0.Fields.Item("VNo")))
  loc_18CCD66:             var_304 = Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(CVar(var_124.Item("vType")), var_BA, var_124) & "/" & MemVar_1F92168 & "/") & var_194), &H10)
  loc_18CCE09:             var_150 = (Chr(&HF) + "Bill No.   : ")
  loc_18CCE13:             var_1DC = (CVar(Proc_6_38_E68A98(CVar(var_124.Item("vType")), var_BA, var_124) & Me(12) & "' AND I.Kitchen='") + CVar(var_304))
  loc_18CCE1A:             var_1FC = (var_1DC + Space(1))
  loc_18CCE23:             var_21C = (var_1FC + "Dt : ")
  loc_18CCE2D:             var_26C = (var_21C + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")), var_124), &HF)))
  loc_18CCE34:             var_28C = (var_26C + Space(4))
  loc_18CCE3D:             var_2AC = (var_28C + "Time : ")
  loc_18CCE47:             var_2FC = (var_2AC + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 8)))
  loc_18CCE4D:             Print 1, var_2FC
  loc_18CCEAC:             var_9E = (var_9E + 1)
  loc_18CCF21:             var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428("SNo", 3)))
  loc_18CCF28:             var_194 = (CVar(var_124.Item("vType")) + Space(1))
  loc_18CCF32:             var_1BC = (var_194 + CVar(Proc_6_45_EAD428("PARTICULARS", &H28)))
  loc_18CCF39:             var_1DC = (CVar(Proc_6_38_E68A98(CVar(var_124.Item("vType")), var_BA, var_124) & "/" & MemVar_1F92168 & "/") & var_194 + Space(1))
  loc_18CCF43:             var_1FC = (var_1DC + CVar(Proc_6_52_EAD4F4("Qty", &H12)))
  loc_18CCF49:             Print 1, var_1FC
  loc_18CCF8D:             var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18CCF93:             Print 1, CVar(Proc_6_45_EAD428("SNo", 3))
  loc_18CCFA0:             ' Referenced from: 18CD117
  loc_18CCFAF:             If Not(var_C8.EOF) Then
  loc_18CD051:               Proc_6_39_E7C810(var_21C, CVar(var_C8.Fields.Item("qty")))
  loc_18CD094:               var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(var_BA), 3)))
  loc_18CD09B:               var_194 = (CVar(var_C8.Fields.Item("vType")) + Space(1))
  loc_18CD0A5:               var_1CC = (var_194 + CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("ItemName").Value), &H28)))
  loc_18CD0AC:               var_1EC = (Space(1) + Space(1))
  loc_18CD0B6:               var_27C = (CVar(Proc_6_52_EAD4F4("Qty", &H12)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_21C, "0.00")), &H12, 1)))
  loc_18CD0BC:               Print 1, Space(4)
  loc_18CD100:               var_C8.MoveNext
  loc_18CD10B:               var_9E = (var_9E + 1)
  loc_18CD114:               var_BA = (var_BA + 1)
  loc_18CD117:               GoTo loc_18CCFA0
  loc_18CD11A:             End If
  loc_18CD11A:           End If
  loc_18CD11D:           var_C4.MoveNext
  loc_18CD127:           Print 1, vbNullString
  loc_18CD168:           var_110 = Replace(CStr(Space(&H41)), " ", "=", 1, -1, 0)
  loc_18CD174:           var_174 = (Chr(&HF) + CVar("PARTICULARS"))
  loc_18CD17A:           Print 1, Space(1)
  loc_18CD197:           Print 1, vbNullString
  loc_18CD19D:           GoTo loc_18CCBA7
  loc_18CD1A0:         End If
  loc_18CD1A0:       End If
  loc_18CD1A0:     End If
  loc_18CD1A2:     var_9E = 0
  loc_18CD1A7:     var_A0 = 1
  loc_18CD202:     var_110 = Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), (Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), var_A0, var_9E, var_BA) = "Restaurant"), var_9E)
  loc_18CD220:     If (1 Or (var_110 = "Hall")) Then
  loc_18CD231:       var_9C = "** " & "BILL" & " **"
  loc_18CD23A:     Else
  loc_18CD270:       var_9C = var_9E & Proc_6_38_E68A98(CVar(var_EC.Fields.Item("Name")), "** ") & " **"
  loc_18CD280:     End If
  loc_18CD286:     If (var_9E = 0) Then
  loc_18CD2FB:       var_194 = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(vbNullString & var_EC.Fields.Item("LstNo").Value), &H1E)))
  loc_18CD302:       var_1BC = (var_194 + Chr(&H12))
  loc_18CD308:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("ItemName").Value), &H28))
  loc_18CD335:       var_9E = (var_9E + 1)
  loc_18CD359:       Print 1, Proc_260_1_10A5350(var_9C, "D", &H3C)
  loc_18CD36D:       Print 1, vbNullString
  loc_18CD379:       var_9E = (var_9E + 1)
  loc_18CD3AA:       var_DC = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_18CD3E1:       var_E0 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_18CD438:       var_154 = Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92140, Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C), Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C)), &H1E)
  loc_18CD441:       var_164 = (Chr(&H11) + Space(&H14))
  loc_18CD44A:       var_174 = (vbNullString & var_EC.Fields.Item("LstNo").Value + "PHONE NO.")
  loc_18CD451:       var_194 = CVar(var_154) 'String
  loc_18CD454:       var_1AC = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(vbNullString & var_EC.Fields.Item("LstNo").Value), &H1E)) + var_194)
  loc_18CD45A:       Print 1, Chr(&H12)
  loc_18CD47E:       var_9E = (var_9E + 1)
  loc_18CD486:       Print 1, vbNullString
  loc_18CD492:       var_9E = (var_9E + 1)
  loc_18CD49A:       Print 1, vbNullString
  loc_18CD4A6:       var_9E = (var_9E + 1)
  loc_18CD4DE:       var_300 = Proc_6_38_E68A98(CVar(var_C0.Fields.Item("vType")), Proc_260_2_136D614(var_A0, var_9E, &H3C), Proc_260_2_136D614(var_A0, var_9E, &H3C))
  loc_18CD507:       Proc_6_39_E7C810(var_194, CVar(var_C0.Fields.Item("VNo")), Proc_260_2_136D614(var_A0, var_9E, &H3C))
  loc_18CD589:       var_30C = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VDate")), Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C)), &HF)
  loc_18CD5E0:       var_150 = (Chr(&HF) + "Bill No.   : ")
  loc_18CD5EA:       var_1DC = (Space(&H14) + CVar(Proc_6_45_EAD428(CStr(CVar(var_300 & "/" & MemVar_1F92168 & "/") & var_194), &H10)))
  loc_18CD5F1:       var_1FC = (Space(1) + Space(1))
  loc_18CD5FA:       var_21C = (CVar(var_C8.Fields.Item("qty")) + "Dt : ")
  loc_18CD604:       var_26C = (var_21C + CVar(var_30C))
  loc_18CD60B:       var_28C = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_21C, "0.00")), &H12, 1)) + Space(4))
  loc_18CD614:       var_2AC = (var_28C + "Time : ")
  loc_18CD61E:       var_2FC = (var_2AC + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("VTIME"))), 8)))
  loc_18CD624:       Print 1, var_2FC
  loc_18CD683:       var_9E = (var_9E + 1)
  loc_18CD6BF:       If (Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C)) = "Outlet") Then
  loc_18CD716:         var_150 = (Chr(&HF) + "Table No.  : ")
  loc_18CD720:         var_194 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_18CD726:         Print 1, var_194
  loc_18CD74B:         var_9E = (var_9E + 1)
  loc_18CD74E:       End If
  loc_18CD787:       If (Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C)) = "Room Service") Then
  loc_18CD7DE:         var_150 = (Chr(&HF) + "Room No.   : ")
  loc_18CD7E8:         var_194 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_18CD7EE:         Print 1, var_194
  loc_18CD813:         var_9E = (var_9E + 1)
  loc_18CD816:       End If
  loc_18CD84F:       If (Proc_6_38_E68A98(CVar(var_EC.Fields.Item("RestType")), Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C)) = "Hall") Then
  loc_18CD8A6:         var_150 = (Chr(&HF) + "Hall  No.  : ")
  loc_18CD8B0:         var_194 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("RoomNo"))), 5)))
  loc_18CD8B6:         Print 1, var_194
  loc_18CD8DB:         var_9E = (var_9E + 1)
  loc_18CD8DE:       End If
  loc_18CD95E:       If CBool((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)) Then
  loc_18CD9AA:         var_154 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("KOTNo")), Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C)), &H34)
  loc_18CD9B5:         var_150 = (Chr(&HF) + "KOT No.    : ")
  loc_18CD9BF:         var_194 = (Space(&H14) + CVar(var_154))
  loc_18CD9C5:         Print 1, (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)
  loc_18CD9EA:         var_9E = (var_9E + 1)
  loc_18CD9ED:       End If
  loc_18CDA03:       var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18CDA09:       Print 1, Space(&H14)
  loc_18CDA1C:       var_9E = (var_9E + 1)
  loc_18CDA1F:     End If
  loc_18CDA45:     var_164 = (CVar(Proc_6_45_EAD428("SNo", 3, Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C))) + Space(1))
  loc_18CDA5F:     var_194 = (Proc_260_2_136D614(var_A0, var_9E, &H3C) + CVar(Proc_6_45_EAD428("ITEM NAME", &H14, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_18CDA73:     var_1BC = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Space(1))
  loc_18CDA8D:     var_1DC = (CVar(var_300 & "/" & MemVar_1F92168 & "/") & (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String)
  loc_18CDA99:     var_1EC = Space(1)
  loc_18CDAA1:     var_1FC = (Space(1) + var_1EC)
  loc_18CDABB:     var_244 = (CVar(var_C8.Fields.Item("qty")) + CVar(Proc_6_52_EAD4F4("Rate", &HA)))
  loc_18CDACF:     var_26C = (CVar(var_C0.Fields.Item("VDate")) + Space(1))
  loc_18CDAE9:     var_28C = (CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_52_EAD4F4("Rate", &HA)), "0.00")), &H12, 1)) + CVar(Proc_6_52_EAD4F4("Qty", &HA)))
  loc_18CDAF5:     var_2AC = Space(1)
  loc_18CDAFD:     var_2D4 = (var_28C + var_2AC)
  loc_18CDB17:     var_2FC = (CVar(var_C0.Fields.Item("VTIME")) + CVar(Proc_6_52_EAD4F4("Amount", &HA)))
  loc_18CDB1C:     var_B8 = CStr(var_2FC)
  loc_18CDB71:     var_150 = (Chr(&HF) + CVar(var_B8))
  loc_18CDB77:     Print 1, CVar(Proc_6_45_EAD428("SNo", 3, Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C)))
  loc_18CDB9A:     var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18CDBA0:     Print 1, CVar(Proc_6_45_EAD428("SNo", 3, Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C), &H3C)))
  loc_18CDBB3:     var_9E = (var_9E + 1)
  loc_18CDBB8:     var_BA = 1
  loc_18CDBBE:     var_CC.MoveFirst
  loc_18CDBC3:     ' Referenced from: 18CE0E7
  loc_18CDBD2:     If Not(var_CC.EOF) Then
  loc_18CDC22:       Proc_6_39_E7C810(var_1EC, CVar(var_CC.Fields.Item("TaxPer")), var_BA)
  loc_18CDC6D:       Proc_6_39_E7C810(var_2AC, CVar(var_CC.Fields.Item("Rate")), 1)
  loc_18CDCB8:       Proc_6_39_E7C810(var_36C, CVar(var_CC.Fields.Item("qty")), 1, 1)
  loc_18CDD03:       Proc_6_39_E7C810(var_404, CVar(var_CC.Fields.Item("Rate")), 1, 1)
  loc_18CDD44:       Proc_6_39_E7C810(var_45C, CVar(var_CC.Fields.Item("Amt")))
  loc_18CDD8F:       var_164 = (CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1)) + Space(1))
  loc_18CDDA8:       var_1AC = (1 + CVar(Proc_6_45_EAD428(CStr(var_CC.Fields.Item("ItemName").Value), &H14, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_18CDDBC:       var_1CC = (Space(1) + Space(1))
  loc_18CDDD5:       var_25C = (Proc_260_2_136D614(var_A0, var_9E, &H3C) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1EC, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String)) 'String)
  loc_18CDDE9:       var_27C = (Space(1) + Space(1))
  loc_18CDE02:       var_32C = (CVar(Proc_6_52_EAD4F4("Qty", &HA)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_2AC, "0.00")), &HA)))
  loc_18CDE16:       var_34C = (var_32C + Space(1))
  loc_18CDE2F:       var_3AC = (var_34C + CVar(Proc_6_52_EAD4F4(CStr(Format(var_36C, "0.00")), &HA)))
  loc_18CDE43:       var_3CC = (var_3AC + Space(1))
  loc_18CDE81:       var_4E0 = (var_3CC + IIf((var_404 = 0), CVar(Proc_6_45_EAD428("Free", 9, 1)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_45C, "0.00")), &HA))))
  loc_18CDF1C:       var_150 = (Chr(&HF) + CVar(CStr(var_4E0)))
  loc_18CDF22:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1))
  loc_18CDF39:       If (Proc_260_2_136D614(var_A0, var_9E, &H3C) = (&H45 - var_B2)) Then
  loc_18CDF52:         var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18CDF58:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1))
  loc_18CDF6B:         var_9E = (var_9E + 1)
  loc_18CDF73:         Print 1, "Contd."
  loc_18CDF7F:         var_9E = (var_9E + 1)
  loc_18CDF94:         Print 1, Chr(&HC)
  loc_18CDFA3:         var_9E = (var_9E + 1)
  loc_18CDFAC:         var_A0 = (var_A0 + 1)
  loc_18CDFB1:         var_9E = 0
  loc_18CDFE3:         var_110 = Proc_260_1_10A5350(var_9C, "B", &H3C, Proc_260_2_136D614(var_A0, Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), &H3C, Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), var_A0))
  loc_18CDFE8:         Print 1, var_110
  loc_18CDFFD:         var_9E = (var_9E + 1)
  loc_18CE016:         var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18CE01C:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1))
  loc_18CE02F:         var_9E = (var_9E + 1)
  loc_18CE048:         var_150 = (Chr(&HF) + CVar(var_B8))
  loc_18CE04E:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1))
  loc_18CE071:         var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18CE077:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1))
  loc_18CE08A:         var_9E = (var_9E + 1)
  loc_18CE08D:       End If
  loc_18CE0BA:       Proc_6_39_E7C810(CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1)), CVar(var_CC.Fields.Item("Amt")), CVar(var_D8), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_18CE0C2:       var_164 = (Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0) + CVar(Proc_6_45_EAD428(CStr(var_BA), 3, 1)))
  loc_18CE0C7:       var_D8 = CSng(CVar(var_C0.Fields.Item("KOTNo")))
  loc_18CE0DC:       var_BA = (var_BA + 1)
  loc_18CE0E2:       var_CC.MoveNext
  loc_18CE0E7:       GoTo loc_18CDBC3
  loc_18CE0EA:     End If
  loc_18CE10A:     var_164 = (Chr(&HF) + Space(&H35))
  loc_18CE114:     var_174 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_18CE11A:     Print 1, var_CC.Fields.Item("ItemName").Value
  loc_18CE131:     var_9E = (var_9E + 1)
  loc_18CE137:     var_D0.MoveFirst
  loc_18CE13C:     ' Referenced from: 18CE870
  loc_18CE14B:     If Not(var_D0.EOF) Then
  loc_18CE178:       var_4F0 = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_18CE196:       If (var_4F0 = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_18CE1EC:         var_154 = Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HF, Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), var_BA, var_D8)
  loc_18CE222:         Proc_6_39_E7C810(var_1EC, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_18CE26F:         var_164 = (Chr(&HF) + Space(&H23))
  loc_18CE279:         var_1AC = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_154))
  loc_18CE280:         var_1CC = (Space(1) + Space(4))
  loc_18CE28A:         var_25C = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1EC, "0.00")), &HA, 1, 1)))
  loc_18CE291:         var_27C = (Space(1) + Chr(&H12))
  loc_18CE297:         Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_18CE2DA:         var_9E = (var_9E + 1)
  loc_18CE2E0:       Else
  loc_18CE2F3:         If (var_4F0 = CVar(MemVar_1F92078 & "NET")) Then
  loc_18CE30B:           var_150 = Space(&H35)
  loc_18CE316:           var_164 = (Chr(&HF) + var_150)
  loc_18CE320:           var_174 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_18CE326:           Print 1, var_D0.Fields.Item("DispName").Value
  loc_18CE33D:           var_9E = (var_9E + 1)
  loc_18CE366:           Proc_6_39_E7C810(var_150, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_18CE380:           If (var_150 > 0) Then
  loc_18CE398:             var_150 = Space(&H23)
  loc_18CE3D6:             var_154 = Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HF, Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_18CE40C:             Proc_6_39_E7C810(var_1EC, CVar(var_D0.Fields.Item("Amount")))
  loc_18CE459:             var_164 = (Chr(&HF) + var_150)
  loc_18CE463:             var_1AC = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_154))
  loc_18CE46A:             var_1CC = (Space(1) + Space(4))
  loc_18CE474:             var_25C = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1EC, "0.00")), &HA, 1)))
  loc_18CE47B:             var_27C = (Space(1) + Chr(&H12))
  loc_18CE481:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_18CE4C4:             var_9E = (var_9E + 1)
  loc_18CE4C7:           End If
  loc_18CE4CA:         Else
  loc_18CE4DD:           If (var_4F0 = CVar(MemVar_1F92078 & "DIS")) Then
  loc_18CE506:             Proc_6_39_E7C810(var_150, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_18CE520:             If (var_150 > 0) Then
  loc_18CE538:               var_150 = Space(&H23)
  loc_18CE5F5:               Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Qty", &HA)), CVar(var_D0.Fields.Item("Amount")))
  loc_18CE642:               var_164 = (Chr(&HF) + var_150)
  loc_18CE64C:               var_1AC = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HA, 1)))
  loc_18CE653:               var_1CC = (Space(1) + Space(4))
  loc_18CE65A:               var_1EC = CVar(Proc_6_52_EAD4F4(CStr(var_D0.Fields.Item("SValue").Value), 3)) 'String
  loc_18CE65D:               var_1FC = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + var_1EC)
  loc_18CE666:               var_21C = ("0.00" + "%")
  loc_18CE66D:               var_25C = (Format(var_1EC, "0.00") + Space(1))
  loc_18CE677:               var_2EC = (Space(1) + CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_52_EAD4F4("Qty", &HA)), "0.00")), &HA, 1)))
  loc_18CE67E:               var_32C = (Format(Format(CVar(Proc_6_52_EAD4F4("Qty", &HA)), "0.00"), "0.00") + Chr(&H12))
  loc_18CE684:               Print 1, var_32C
  loc_18CE6DB:               var_9E = (var_9E + 1)
  loc_18CE6DE:             End If
  loc_18CE6E1:           Else
  loc_18CE707:             Proc_6_39_E7C810(var_150, CVar(var_D0.Fields.Item("Amount")), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_18CE721:             If (var_150 > 0) Then
  loc_18CE7AD:               Proc_6_39_E7C810(var_1EC, CVar(var_D0.Fields.Item("Amount")))
  loc_18CE7FA:               var_164 = (Chr(&HF) + Space(&H23))
  loc_18CE804:               var_1AC = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1)))
  loc_18CE80B:               var_1CC = (Space(1) + Space(4))
  loc_18CE815:               var_25C = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1EC, "0.00")), &HA, 1)))
  loc_18CE81C:               var_27C = (Space(1) + Chr(&H12))
  loc_18CE822:               Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_18CE865:               var_9E = (var_9E + 1)
  loc_18CE868:             End If
  loc_18CE868:           End If
  loc_18CE868:         End If
  loc_18CE868:       End If
  loc_18CE86B:       var_D0.MoveNext
  loc_18CE870:       GoTo loc_18CE13C
  loc_18CE873:     End If
  loc_18CE889:     var_150 = (Chr(&HF) + CVar(var_DC))
  loc_18CE88F:     Print 1, Space(&H23)
  loc_18CE8A2:     var_9E = (var_9E + 1)
  loc_18CE8E1:     If CBool(var_C0.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_18CE919:       var_110 = Proc_6_38_E68A98(CVar(var_C0.Fields.Item("WaiterName")), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_18CE938:       var_150 = (Chr(&HF) + "Steward Name  : ")
  loc_18CE942:       var_194 = (Space(&H23) + CVar(Proc_6_45_EAD428(var_110, &H14, 1)))
  loc_18CE948:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1))
  loc_18CE96D:       var_9E = (var_9E + 1)
  loc_18CE970:     End If
  loc_18CE978:     var_120 = Chr(&HF)
  loc_18CE98C:     var_124 = var_C0.Fields
  loc_18CE9B9:     var_154 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_124.Item("U_Name")), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0)), &HA)
  loc_18CE9C4:     var_150 = (var_120 + "User Name     : ")
  loc_18CE9CE:     var_194 = (Space(&H23) + CVar(var_154))
  loc_18CE9D4:     Print 1, CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1))
  loc_18CE9F9:     var_9E = (var_9E + 1)
  loc_18CEA01:     Print 1, vbNullString
  loc_18CEA0D:     var_9E = (var_9E + 1)
  loc_18CEA36:     unk_43FED1.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & Me(8) & "'", var_120, -1
  loc_18CEA41:     Set var_F0 = var_124
  loc_18CEA65:     If (var_F0.RecordCount > 0) Then
  loc_18CEAA8:       If CBool(Trim(CVar(var_F0.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_18CEAB3:         var_120 = Chr(&HF)
  loc_18CEAC7:         var_124 = var_F0.Fields
  loc_18CEAE9:         var_174 = (var_120 + Trim(CVar(var_124.Item("Slogan1"))))
  loc_18CEAEF:         Print 1, CVar(var_154)
  loc_18CEB09:         var_9E = (var_9E + 1)
  loc_18CEB0C:       End If
  loc_18CEB0C:     End If
  loc_18CEB32:     unk_43FED1.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & Me(8) & "'", var_120, -1
  loc_18CEB3D:     Set var_F0 = var_124
  loc_18CEB61:     If (var_F0.RecordCount > 0) Then
  loc_18CEBA4:       If CBool(Trim(CVar(var_F0.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_18CEBC3:         var_124 = var_F0.Fields
  loc_18CEBE5:         var_174 = (Chr(&HF) + Trim(CVar(var_124.Item("Slogan2"))))
  loc_18CEBEB:         Print 1, CVar(var_154)
  loc_18CEC05:         var_9E = (var_9E + 1)
  loc_18CEC08:       End If
  loc_18CEC08:     End If
  loc_18CEC0D:     Set var_F0 = Nothing
  loc_18CEC18:     var_120 = Chr(&HF)
  loc_18CEC30:     var_164 = (var_120 + Space(&H32))
  loc_18CEC39:     var_174 = (Trim(CVar(var_124.Item("Slogan2"))) + "Guest Signature")
  loc_18CEC3F:     Print 1, CVar(var_154)
  loc_18CEC56:     var_9E = (var_9E + 1)
  loc_18CEC7F:     unk_43FED1.Execute "Select * from PayCharge  where docid='" & Me(12) & "' and Sno=1", var_120, -1
  loc_18CEC8A:     Set var_F4 = var_124
  loc_18CEC9A:     ' Referenced from: 18CEE90
  loc_18CECA9:     If Not(var_F4.EOF) Then
  loc_18CECBE:       var_124 = var_F4.Fields
  loc_18CECCE:       var_120 = var_124.Item("PayType").Value
  loc_18CECE8:       If (var_120 = "Company") Then
  loc_18CED08:         var_110 = "Select Name from PayCharge left join Subgroup on Paycharge.CompCode=Subgroup.Subcode where docid='" & Me(12) & "'"
  loc_18CED11:         unk_43FED1.Execute var_110, var_120, -1
  loc_18CED1C:         Set var_F4 = var_124
  loc_18CED3B:         var_124 = var_F4.Fields
  loc_18CED54:         var_154 = Proc_6_38_E68A98(CVar(var_124.Item("Name")), var_124, var_124, Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), var_124)
  loc_18CED66:         Print 1, "Party Name : " & var_154
  loc_18CED81:         var_9E = (var_9E + 1)
  loc_18CED87:       Else
  loc_18CED99:         var_124 = var_F4.Fields
  loc_18CEDA9:         var_120 = var_124.Item("PayType").Value
  loc_18CEDC3:         If (var_120 = "Room") Then
  loc_18CEDFA:           unk_43FED1.Execute "Select rOOMNO from PayCharge where Paycode='" & MemVar_1F92078 & "TOUT' and docid='" & Me(12) & "'", var_120, -1
  loc_18CEE05:           Set var_F4 = var_124
  loc_18CEE28:           var_124 = var_F4.Fields
  loc_18CEE41:           var_154 = Proc_6_38_E68A98(CVar(var_124.Item("RoomNo")), var_124, Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), var_124)
  loc_18CEE53:           Print 1, "Room No :   " & var_154
  loc_18CEE6E:           var_9E = (var_9E + 1)
  loc_18CEE74:         Else
  loc_18CEE79:           Print 1, vbNullString
  loc_18CEE85:           var_9E = (var_9E + 1)
  loc_18CEE88:         End If
  loc_18CEE88:       End If
  loc_18CEE8B:       var_F4.MoveNext
  loc_18CEE90:       GoTo loc_18CEC9A
  loc_18CEE93:     End If
  loc_18CEEA8:     var_150 = (Chr(&HF) + "# ")
  loc_18CEEB2:     var_164 = Space(&H32) & CVar(MemVar_1F9221C) 
  loc_18CEEBB:     var_174 = var_164 & " # " 
  loc_18CEEC1:     Print 1, var_174
  loc_18CEED8:     var_9E = (var_9E + 1)
  loc_18CEEDE:     var_C0.MoveNext
  loc_18CEEE8:     Print 1, vbNullString
  loc_18CEEF4:     var_9E = (var_9E + 1)
  loc_18CEEFC:     Print 1, vbNullString
  loc_18CEF08:     var_9E = (var_9E + 1)
  loc_18CEF10:     Print 1, vbNullString
  loc_18CEF1C:     var_9E = (var_9E + 1)
  loc_18CEF24:     Print 1, vbNullString
  loc_18CEF30:     var_9E = (var_9E + 1)
  loc_18CEF38:     Print 1, vbNullString
  loc_18CEF44:     var_9E = (var_9E + 1)
  loc_18CEF4C:     Print 1, vbNullString
  loc_18CEF58:     var_9E = (var_9E + 1)
  loc_18CEF60:     Print 1, vbNullString
  loc_18CEF6C:     var_9E = (var_9E + 1)
  loc_18CEF74:     Print 1, vbNullString
  loc_18CEF80:     var_9E = (var_9E + 1)
  loc_18CEF88:     Print 1, vbNullString
  loc_18CEF94:     var_9E = (var_9E + 1)
  loc_18CEF9C:     Print 1, vbNullString
  loc_18CEFA8:     var_9E = (var_9E + 1)
  loc_18CEFAB:     GoTo loc_18CCAD2
  loc_18CEFAE:   End If
  loc_18CEFB0:   Close 1
  loc_18CEFB9:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_18CEFEE:   var_150 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_6298CC.Fields.Item("Printer").Value 
  loc_18CEFF4:   Print 1, var_150
  loc_18CF00A:   Close 1
  loc_18CF014:   If (MemVar_1F923B8 = "Y") Then
  loc_18CF030:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_18CF03A:   Else
  loc_18CF053:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_18CF05A:   End If
  loc_18CF05F:   Set var_C0 = Nothing
  loc_18CF067:   Set var_CC = Nothing
  loc_18CF06F:   Set var_D0 = Nothing
  loc_18CF077:   Set var_EC = Nothing
  loc_18CF07F:   Set var_C4 = Nothing
  loc_18CF087:   Set var_C8 = Nothing
  loc_18CF08D: Else
  loc_18CF0A6:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_150, var_164, var_174)
  loc_18CF0B6: End If
  loc_18CF0B6: Exit Sub
  loc_18CF0B7: ' Referenced from: 18CC8FC
  loc_18CF0B7: Proc_6_60_E62BC4(Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0), Proc_260_2_136D614(var_A0, var_9E, &H3C, var_9E, var_A0))
  loc_18CF0BC: Exit Sub
End Sub

Public Sub Proc_260_17_173BB58
  'Data Table: 43FECC
  Dim MemVar_6298CC As Recordset15
  Dim var_FC As String
  Dim unk_43FED1 As Connection15
  Dim var_E4 As Recordset15
  Dim var_114 As Fields15
  Dim var_AE As Integer
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_110 As Variant
  Dim var_138 As Variant
  Dim var_174 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_E0 As Recordset15
  Dim var_224 As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_2E0 As Variant
  Dim var_37C As Variant
  Dim var_244 As Variant
  Dim var_268 As Variant
  Dim var_278 As Variant
  Dim var_298 As Variant
  Dim var_2A8 As Variant
  Dim var_2C8 As Variant
  Dim var_2F4 As Variant
  Dim var_304 As Variant
  Dim var_324 As Variant
  Dim var_334 As Variant
  Dim var_354 As Variant
  Dim var_390 As Variant
  Dim var_3A0 As Variant
  Dim var_3C0 As Variant
  Dim var_3E0 As Variant
  Dim var_400 As Variant
  Dim var_45C As Variant
  Dim var_288 As Variant
  Dim var_2B8 As Variant
  Dim var_314 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_4C8 As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_1739F90: On Error Goto loc_173BB52
  loc_1739F9E: MemVar_6298CC.Filter = "ModType='POS'"
  loc_1739FB9: If (MemVar_6298CC.RecordCount > 0) Then
  loc_1739FBF:   MemVar_1F923C0 = "N"
  loc_1739FC6:   MemVar_1F923C4 = "N"
  loc_1739FCD:   MemVar_1F923C8 = "K"
  loc_1739FF7:   unk_43FED1.Execute "Select * from Depart where code='" & Me(8) & "'", var_110, -1
  loc_173A002:   Set var_E4 = var_114
  loc_173A022:   var_8C = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12) & "'"
  loc_173A03C:   If (var_E4.RecordCount > 0) Then
  loc_173A051:     var_114 = var_E4.Fields
  loc_173A061:     var_110 = var_114.Item("KotYN").Value
  loc_173A07B:     If (var_110 = "Y") Then
  loc_173A085:       var_FC = "Select kot.vdate as kdate,MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='"
  loc_173A0A5:       var_90 = var_FC & Me(12) & "' and KOT.CONTRADOCID='" & Me(12) & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) "
  loc_173A0B6:     Else
  loc_173A0BD:       var_FC = "Select kot.vdate as kdate,MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='"
  loc_173A0CD:       var_90 = var_FC & Me(12) & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) "
  loc_173A0D7:     End If
  loc_173A0D7:     GoTo loc_173A0DA
  loc_173A0DA:     ' Referenced from: 173A0D7
  loc_173A0DA:   End If
  loc_173A0F1:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno "
  loc_173A103:   If (var_8C = vbNullString) Then
  loc_173A106:     Exit Sub
  loc_173A107:   End If
  loc_173A10F:   If (var_90 = vbNullString) Then
  loc_173A112:     Exit Sub
  loc_173A113:   End If
  loc_173A11B:   If (var_94 = vbNullString) Then
  loc_173A11E:     Exit Sub
  loc_173A11F:   End If
  loc_173A135:   unk_43FED1.Execute var_8C, var_110, -1
  loc_173A140:   Set var_BC = var_114
  loc_173A15F:   unk_43FED1.Execute var_90, var_110, -1
  loc_173A16A:   Set var_C0 = var_114
  loc_173A189:   unk_43FED1.Execute var_94, var_110, -1
  loc_173A194:   Set var_C4 = var_114
  loc_173A19F:   var_AE = &HA
  loc_173A1A4:   Close 1
  loc_173A1AD:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_173A1D5:   unk_43FED1.Execute "Select * from enviro where LogSite_Code='" & MemVar_1F92078 & "'", var_110, -1
  loc_173A1E0:   Set var_E0 = var_114
  loc_173A1F0:   ' Referenced from: 173B9C3
  loc_173A1FF:   If Not(var_BC.EOF) Then
  loc_173A204:     var_9A = 0
  loc_173A212:     If (var_9A = 0) Then
  loc_173A253:       var_154 = CVar(Replace(CStr(Space(&H88)), " ", "-", 1, -1, 0)) 'String
  loc_173A256:       var_164 = (Chr(&HF) + var_154)
  loc_173A26A:       var_184 = (var_164 + Chr(&H12))
  loc_173A26F:       var_D0 = CStr(var_184)
  loc_173A2B2:       var_D4 = Replace(CStr(Space(&HC)), " ", "=", 1, -1, 0)
  loc_173A2CA:       var_114 = var_E4.Fields
  loc_173A30B:       Print 1, Proc_260_1_10A5350(Proc_6_38_E68A98(CVar(var_114.Item("Name")), 1, var_9A, var_114, var_AE), "A", &H4E, var_114)
  loc_173A36A:       var_138 = (Trim(MemVar_1F92134) + ", ")
  loc_173A371:       var_164 = (Space(&H88) + Trim(MemVar_1F92138))
  loc_173A37A:       var_174 = (var_164 + " ")
  loc_173A381:       var_1C8 = (Chr(&H12) + Trim(MemVar_1F9213C))
  loc_173A38A:       var_1E8 = (var_1C8 + " ")
  loc_173A394:       var_208 = (var_1E8 + CVar(MemVar_1F9215C))
  loc_173A3AD:       Print 1, Proc_260_1_10A5350(CStr(var_208), "B", &H4E)
  loc_173A40B:       Print 1, Proc_260_1_10A5350("Phone: " & MemVar_1F92140 & " Fax :" & MemVar_1F92144, "E", 137)
  loc_173A434:       If (var_E0.RecordCount > 0) Then
  loc_173A446:         var_114 = var_E0.Fields
  loc_173A481:         If (Trim(CVar(Proc_6_38_E68A98(CVar(var_114.Item("Bill_Header")), var_114))) = vbNullString) Then
  loc_173A489:           Print 1, vbNullString
  loc_173A492:         Else
  loc_173A4A1:           var_114 = var_E0.Fields
  loc_173A4E3:           Print 1, Proc_260_1_10A5350(Proc_6_38_E68A98(CVar(var_114.Item("Bill_Header")), var_114), "E")
  loc_173A4FC:         End If
  loc_173A4FF:       Else
  loc_173A504:         Print 1, vbNullString
  loc_173A50A:       End If
  loc_173A51C:       Print 1, Chr(&H12)
  loc_173A590:       Proc_6_39_E7C810(var_1C8, CVar(var_BC.Fields.Item("VNo")))
  loc_173A5C6:       var_20C = Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("vType")), 137) & "/" & MemVar_1F92168 & "/") & var_1C8), &H10)
  loc_173A5D1:       var_138 = (Chr(&HF) + "Bill No. ")
  loc_173A5D8:       var_164 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Bill_Header")), var_BC.Fields)) + Chr(&H12))
  loc_173A5E2:       var_234 = (var_164 + CVar(var_20C))
  loc_173A5E8:       Print 1, var_234
  loc_173A7C1:       Proc_6_39_E7C810(var_438, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_173A7E4:       var_138 = (Chr(&HF) + "Date : ")
  loc_173A7EB:       var_164 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Bill_Header")), var_BC.Fields)) + Chr(&H12))
  loc_173A7F5:       var_1C8 = (var_164 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate"))), &H12)))
  loc_173A7FC:       var_208 = (var_1C8 + Chr(&HF))
  loc_173A805:       var_224 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("vType")), 137) & "/" & MemVar_1F92168 & "/") & var_1C8 + "Time : ")
  loc_173A80C:       var_244 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")))) + Chr(&H12))
  loc_173A816:       var_278 = (var_244 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_173A81D:       var_298 = (var_278 + Chr(&HF))
  loc_173A826:       var_2A8 = (var_298 + "Steward :")
  loc_173A82D:       var_2C8 = (var_2A8 + Chr(&H12))
  loc_173A837:       var_304 = (var_2C8 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_173A83E:       var_324 = (var_304 + Chr(&HF))
  loc_173A847:       var_334 = (var_324 + "Table : ")
  loc_173A84E:       var_354 = (var_334 + Chr(&H12))
  loc_173A858:       var_3A0 = (var_354 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_173A85F:       var_3C0 = (var_3A0 + Chr(&HF))
  loc_173A868:       var_3E0 = (var_3C0 + "Covers: ")
  loc_173A86F:       var_400 = (var_3E0 + Chr(&H12))
  loc_173A879:       var_45C = (var_400 + CVar(Proc_6_45_EAD428(CStr(var_438), 7)))
  loc_173A87F:       Print 1, var_45C
  loc_173A90B:       Print 1, var_D0
  loc_173A9C2:       var_3B0 = Space(&HA)
  loc_173A9CF:       var_3F0 = Chr(&H12)
  loc_173A9DA:       var_154 = (Chr(&HF) + Space(3))
  loc_173A9E3:       var_164 = (Chr(&H12) + "S.No")
  loc_173A9EA:       var_184 = (var_164 + Space(3))
  loc_173A9F1:       var_1E8 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate"))), &H12)) + Space(4))
  loc_173A9FA:       var_208 = (Chr(&HF) + "KOT#")
  loc_173AA01:       var_234 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("vType")), 137) & "/" & MemVar_1F92168 & "/") & Space(4) + Space(4))
  loc_173AA08:       var_254 = (Chr(&H12) + Space(5))
  loc_173AA11:       var_268 = (CVar(var_BC.Fields.Item("VTIME")) + "CODE")
  loc_173AA18:       var_288 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(5))
  loc_173AA1F:       var_2A8 = (Chr(&HF) + Space(&H15))
  loc_173AA28:       var_2B8 = (var_2A8 + "ITEM NAME")
  loc_173AA2F:       var_2E0 = (Chr(&H12) + Space(&H15))
  loc_173AA36:       var_304 = (CVar(var_BC.Fields.Item("WaiterName")) + Space(8))
  loc_173AA3F:       var_314 = (var_304 + "QTY")
  loc_173AA46:       var_334 = (Chr(&HF) + Space(5))
  loc_173AA4D:       var_354 = (var_334 + Space(5))
  loc_173AA56:       var_37C = (var_354 + "RATE")
  loc_173AA5D:       var_3A0 = (CVar(var_BC.Fields.Item("RoomNo")) + Space(5))
  loc_173AA64:       var_3C0 = (var_3A0 + var_3B0)
  loc_173AA6D:       var_3E0 = (var_3C0 + "AMOUNT")
  loc_173AA74:       var_400 = (var_3E0 + var_3F0)
  loc_173AA7A:       Print 1, var_400
  loc_173AAD0:       Print 1, var_D0
  loc_173AAD8:       var_9A = &HA
  loc_173AADB:     End If
  loc_173AADD:     var_B6 = 1
  loc_173AAE3:     var_C0.MoveFirst
  loc_173AAE8:     ' Referenced from: 173B2D6
  loc_173AAF7:     If Not(var_C0.EOF) Then
  loc_173AB00:       If (var_9A = 0) Then
  loc_173AB31:         var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_173AB68:         var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_173ABCF:         Proc_6_39_E7C810(var_164, CVar(var_BC.Fields.Item("VNo")))
  loc_173AC05:         var_20C = Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("vType")), var_B6) & "/" & MemVar_1F92168 & "/") & var_164), &H10)
  loc_173AC11:         var_1E8 = (Space(8) + CVar(var_20C))
  loc_173AC17:         Print 1, Chr(&HF)
  loc_173AC48:         Print 1
  loc_173ADB1:         Proc_6_39_E7C810(var_304, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_173ADD5:         var_164 = (Space(6) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))
  loc_173ADDC:         var_184 = (var_164 + Space(4))
  loc_173ADE6:         var_208 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("vType")), var_B6) & "/" & MemVar_1F92168 & "/") & var_164 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_173ADED:         var_234 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("vType")), 137) & "/" & MemVar_1F92168 & "/") & CVar(var_BC.Fields.Item("VTIME")) + Space(6))
  loc_173ADF7:         var_268 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_173ADFE:         var_288 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_173AE08:         var_2B8 = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_173AE0F:         var_2E0 = (Chr(&H12) + Space(6))
  loc_173AE16:         var_314 = CVar(Proc_6_45_EAD428(CStr(var_304), 7)) 'String
  loc_173AE19:         var_324 = (CVar(var_BC.Fields.Item("WaiterName")) + var_314)
  loc_173AE1F:         Print 1, Space(5)
  loc_173AE8D:         Print 1, vbNullString
  loc_173AE98:         Print 1, vbNullString
  loc_173AEA0:         var_9A = 5
  loc_173AEA3:       End If
  loc_173AF1B:       var_244 = var_C0.Fields.Item("ItemName").Value
  loc_173AF46:       Proc_6_39_E7C810(Chr(&HF), CVar(var_C0.Fields.Item("qty")))
  loc_173AF91:       Proc_6_39_E7C810(var_314, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_173AFDC:       Proc_6_39_E7C810(var_3B0, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_173B01D:       Proc_6_39_E7C810(var_3F0, CVar(var_C0.Fields.Item("Amt")))
  loc_173B068:       var_154 = (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1)) + Space(4))
  loc_173B07D:       var_174 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("KOTNo")), var_9A), 5, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))) 'String
  loc_173B080:       var_184 = (1 + var_174)
  loc_173B094:       var_1E8 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("vType")), var_B6) & "/" & MemVar_1F92168 & "/") & CVar(var_C0.Fields.Item("KOTNo")) + Space(2))
  loc_173B0A9:       var_224 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("ICODE"))), 7, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))) 'String
  loc_173B0AC:       var_234 = (1 + var_224)
  loc_173B0C5:       var_268 = (Chr(&H12) + CVar(Proc_6_45_EAD428(CStr(var_244), &H1E)))
  loc_173B0DE:       var_2C8 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&HF), "0.00")), 6)))
  loc_173B0F2:       var_2F4 = (Space(6) + Space(1))
  loc_173B10B:       var_354 = (CVar(var_BC.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_314, "0.00")), 7)))
  loc_173B11F:       var_390 = (var_354 + Space(1))
  loc_173B15D:       var_4C8 = (Space(5) + IIf((var_3B0 = 0), CVar(Proc_6_45_EAD428("Free", &HB, 1)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_3F0, "0.00")), &HB))))
  loc_173B1EB:       Print 1, CStr(var_4C8)
  loc_173B1F7:       var_9A = (var_9A + 1)
  loc_173B204:       If (var_9A = (&H36 - var_AE)) Then
  loc_173B20D:         var_9C = (var_9C + 1)
  loc_173B225:         var_138 = (Space(&H32) + "Contd. Page ")
  loc_173B240:         Print 1, CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1)) & CVar(CStr(1)) & "..."
  loc_173B259:         var_9A = (var_9A + 1)
  loc_173B26E:         Print 1, Chr(&HC)
  loc_173B279:         var_9A = 0
  loc_173B27C:       End If
  loc_173B2A9:       Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_9A)
  loc_173B2B1:       var_154 = (var_9A + CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1)))
  loc_173B2B6:       var_CC = CSng(CVar(CStr(1)))
  loc_173B2CB:       var_B6 = (var_B6 + 1)
  loc_173B2D1:       var_C0.MoveNext
  loc_173B2D6:       GoTo loc_173AAE8
  loc_173B2D9:     End If
  loc_173B2E3:     If (var_9A < (&H36 - var_AE)) Then
  loc_173B2E6:       ' Referenced from: 173B30A
  loc_173B2F3:       If (var_9A <> ((&H36 - var_AE) + 1)) Then
  loc_173B2FB:         Print 1, vbNullString
  loc_173B307:         var_9A = (var_9A + 1)
  loc_173B30A:         GoTo loc_173B2E6
  loc_173B30D:       End If
  loc_173B30D:     End If
  loc_173B310:     var_C4.MoveFirst
  loc_173B31A:     Print 1, var_D0
  loc_173B320:     ' Referenced from: 173B9B8
  loc_173B32F:     If Not(var_C4.EOF) Then
  loc_173B35C:       var_4D8 = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_173B37A:       If (var_4D8 = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_173B41E:         Proc_6_39_E7C810(var_244, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_173B432:         var_254 = "0.00"
  loc_173B461:         var_154 = (Chr(&HF) + CVar(Proc_6_45_EAD428("Trade Tax No. : " & MemVar_1F92148, &H54, var_9A, var_B6)))
  loc_173B468:         var_174 = (CVar(CStr(1)) + Chr(&H12))
  loc_173B472:         var_1E8 = (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1)) & CVar(CStr(1)) & "..." + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, var_CC)))
  loc_173B479:         var_224 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_173B483:         var_288 = (var_224 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_244, var_254)), &HA, 1)))
  loc_173B489:         Print 1, Chr(&HF)
  loc_173B4CD:       Else
  loc_173B4E0:         If (var_4D8 = CVar(MemVar_1F92078 & "NET")) Then
  loc_173B4F9:           var_138 = (Space(&H43) + CVar(var_D4))
  loc_173B4FF:           Print 1, CVar(Proc_6_45_EAD428("Trade Tax No. : " & MemVar_1F92148, &H54, var_9A, var_B6))
  loc_173B520:           If (var_E0.RecordCount > 0) Then
  loc_173B56D:             If (Trim(CVar(Proc_6_38_E68A98(CVar(var_E0.Fields.Item("Bill_Footer")), 1))) = vbNullString) Then
  loc_173B61B:               Proc_6_39_E7C810(var_254, CVar(var_C4.Fields.Item("Amount")))
  loc_173B65E:               var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Space(1)), &H54)))
  loc_173B665:               var_184 = (Chr(&H12) + Chr(&H12))
  loc_173B66F:               var_208 = (var_C4.Fields.Item("DispName").Value + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF)))
  loc_173B676:               var_234 = (Space(4) + Space(4))
  loc_173B680:               var_298 = (CVar(var_C4.Fields.Item("Amount")) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_254, "0.00")), &HA, 1)))
  loc_173B686:               Print 1, "0.00"
  loc_173B6CC:             Else
  loc_173B6F8:               var_138 = CVar(var_E0.Fields.Item("Bill_Footer")) 'Address
  loc_173B794:               Proc_6_39_E7C810(var_254, CVar(var_C4.Fields.Item("Amount")))
  loc_173B7D7:               var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(var_138, 1), &H54)))
  loc_173B7DE:               var_184 = (Chr(&H12) + Chr(&H12))
  loc_173B7E5:               var_1E8 = CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF)) 'String
  loc_173B7E8:               var_208 = (var_C4.Fields.Item("DispName").Value + var_1E8)
  loc_173B7EF:               var_234 = (Space(4) + Space(4))
  loc_173B7F9:               var_298 = (CVar(var_C4.Fields.Item("Amount")) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_254, "0.00")), &HA, 1)))
  loc_173B7FF:               Print 1, "0.00"
  loc_173B846:             End If
  loc_173B849:           Else
  loc_173B84E:             Print 1, vbNullString
  loc_173B854:           End If
  loc_173B859:           Print 1, var_D0
  loc_173B862:         Else
  loc_173B888:           Proc_6_39_E7C810(var_138, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_173B8A2:           If (var_138 > 0) Then
  loc_173B921:             Proc_6_39_E7C810(var_1E8, CVar(var_C4.Fields.Item("Amount")))
  loc_173B961:             var_154 = CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF)) 'String
  loc_173B964:             var_164 = (Space(&H31) + var_154)
  loc_173B96B:             var_184 = (Chr(&H12) + Space(4))
  loc_173B975:             var_244 = (var_C4.Fields.Item("DispName").Value + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E8, "0.00")), &HA, 1)))
  loc_173B97B:             Print 1, CVar(var_C4.Fields.Item("Amount"))
  loc_173B9B0:           End If
  loc_173B9B0:         End If
  loc_173B9B0:       End If
  loc_173B9B3:       var_C4.MoveNext
  loc_173B9B8:       GoTo loc_173B320
  loc_173B9BB:     End If
  loc_173B9BE:     var_BC.MoveNext
  loc_173B9C3:     GoTo loc_173A1F0
  loc_173B9C6:   End If
  loc_173B9ED:   Print 1, Proc_260_1_10A5350("* THANKS FOR YOUR VISIT *", "A", &H4E)
  loc_173BA00:   Print 1
  loc_173BA08:   Print 1
  loc_173BA10:   Print 1
  loc_173BA2B:   var_138 = (Space(&H48) + "CASHIER")
  loc_173BA31:   Print 1, var_C4.Fields.Item("DispName").Value
  loc_173BA50:   Print 1, Chr(&HC)
  loc_173BA5B:   Close 1
  loc_173BA64:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_173BA99:   var_138 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_6298CC.Fields.Item("Printer").Value 
  loc_173BA9F:   Print 1, var_138
  loc_173BAB5:   Close 1
  loc_173BABF:   If (MemVar_1F923B8 = "Y") Then
  loc_173BADB:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_173BAE5:   Else
  loc_173BAFE:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_173BB05:   End If
  loc_173BB0A:   Set var_BC = Nothing
  loc_173BB12:   Set var_C0 = Nothing
  loc_173BB1A:   Set var_C4 = Nothing
  loc_173BB22:   Set var_E4 = Nothing
  loc_173BB28: Else
  loc_173BB41:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_138, var_154, Chr(&H12))
  loc_173BB51: End If
  loc_173BB51: Exit Sub
  loc_173BB52: ' Referenced from: 1739F90
  loc_173BB52: Proc_6_60_E62BC4(1, var_9A)
  loc_173BB57: Exit Sub
End Sub

Public Sub Proc_260_18_1734688
  'Data Table: 43FECC
  Dim MemVar_6298CC As Recordset15
  Dim var_FC As String
  Dim var_100 As String
  Dim unk_43FED1 As Connection15
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_E4 As Recordset15
  Dim var_114 As Fields15
  Dim var_110 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_1E4 As Variant
  Dim var_164 As Variant
  Dim var_1E8 As String
  Dim var_214 As Variant
  Dim var_284 As Variant
  Dim var_1B4 As Variant
  Dim var_22C As Variant
  Dim var_23C As Variant
  Dim var_25C As Variant
  Dim var_2AC As Variant
  Dim var_1D4 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_24C As Variant
  Dim var_2F8 As Variant
  Dim var_318 As Variant
  Dim var_39C As Variant
  Dim var_3BC As Variant
  Dim var_4D4 As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_1732B04: On Error Goto loc_1734680
  loc_1732B12: MemVar_6298CC.Filter = "ModType='POS'"
  loc_1732B2D: If (MemVar_6298CC.RecordCount > 0) Then
  loc_1732B33:   MemVar_1F923C0 = "N"
  loc_1732B3A:   MemVar_1F923C4 = "N"
  loc_1732B41:   MemVar_1F923C8 = "K"
  loc_1732B6B:   unk_43FED1.Execute "Select * from Depart where code='" & Me(8) & "'", var_110, -1
  loc_1732B76:   Set var_E4 = var_114
  loc_1732B96:   var_8C = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12) & "'"
  loc_1732BA3:   var_FC = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM " & " Where S.DocID='"
  loc_1732BB3:   var_90 = var_FC & Me(12) & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) "
  loc_1732BD4:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno "
  loc_1732BE6:   If (var_8C = vbNullString) Then
  loc_1732BE9:     Exit Sub
  loc_1732BEA:   End If
  loc_1732BF2:   If (var_90 = vbNullString) Then
  loc_1732BF5:     Exit Sub
  loc_1732BF6:   End If
  loc_1732BFE:   If (var_94 = vbNullString) Then
  loc_1732C01:     Exit Sub
  loc_1732C02:   End If
  loc_1732C18:   unk_43FED1.Execute var_8C, var_110, -1
  loc_1732C23:   Set var_BC = var_114
  loc_1732C42:   unk_43FED1.Execute var_90, var_110, -1
  loc_1732C4D:   Set var_C0 = var_114
  loc_1732C6C:   unk_43FED1.Execute var_94, var_110, -1
  loc_1732C77:   Set var_C4 = var_114
  loc_1732C82:   Close 1
  loc_1732C8B:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1732C8F:   ' Referenced from: 1734584
  loc_1732C9E:   If Not(var_BC.EOF) Then
  loc_1732CA3:     var_9A = 0
  loc_1732CBA:     var_114 = var_E4.Fields
  loc_1732D03:     var_100 = Proc_6_38_E68A98(CVar(var_E4.Fields.Item("RestType")), (Proc_6_38_E68A98(CVar(var_114.Item("RestType")), 1, var_9A, var_114) = "Restaurant"), var_114)
  loc_1732D21:     If (var_114 Or (var_100 = "Hall")) Then
  loc_1732D32:       var_98 = "** " & "BILL" & " **"
  loc_1732D3B:     Else
  loc_1732D4D:       var_114 = var_E4.Fields
  loc_1732D71:       var_98 = var_114 & Proc_6_38_E68A98(CVar(var_114.Item("Name")), "** ") & " **"
  loc_1732D81:     End If
  loc_1732D87:     If (var_9A = 0) Then
  loc_1732DB8:       var_D0 = Replace(CStr(Space(&H4B)), " ", "-", 1, -1, 0)
  loc_1732DEF:       var_D4 = Replace(CStr(Space(&HF)), " ", "-", 1, -1, 0)
  loc_1732E4C:       var_154 = (Chr(&H12) + Chr(&H1B))
  loc_1732E53:       var_174 = (var_154 + Chr(&H45))
  loc_1732E5D:       var_184 = (var_174 + CVar(var_98))
  loc_1732E64:       var_1A4 = (var_184 + Chr(&H1B))
  loc_1732E6B:       var_1C4 = (var_1A4 + Chr(&H46))
  loc_1732E72:       var_1E4 = (var_1C4 + Chr(&HF))
  loc_1732E78:       Print 1, var_1E4
  loc_1732ED2:       var_164 = CVar(var_BC.Fields.Item("vType")) 'Address
  loc_1732EFD:       var_174 = CVar(var_BC.Fields.Item("VNo")) 'Address
  loc_1732F04:       Proc_6_39_E7C810(var_184)
  loc_1732FB5:       var_284 = CVar(var_BC.Fields.Item("RoomNo")) 'Address
  loc_1732FDB:       var_154 = (Chr(&HF) + Space(8))
  loc_1732FE5:       var_1C4 = (var_154 + CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(var_164) & "/" & MemVar_1F92168 & "/") & var_184), &H10)))
  loc_1732FEC:       var_1E4 = (var_1C4 + Space(&HA))
  loc_1732FF6:       var_23C = (var_1E4 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate"))), &HC)))
  loc_1732FFD:       var_25C = (var_23C + Space(&H14))
  loc_1733007:       var_2AC = (var_25C + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(var_284), 5)))
  loc_173300D:       Print 1, var_2AC
  loc_17330A6:       If CBool(var_BC.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_17330CF:         Proc_6_39_E7C810(var_164, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_1733140:         var_144 = (CVar(vbNullString) + Space(&HC))
  loc_1733159:         var_184 = (Space(8) + CVar(Proc_6_45_EAD428(CStr(var_164), &HA)))
  loc_1733171:         var_1B4 = (var_184 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), &H14)))
  loc_173317D:         var_1C4 = Space(8)
  loc_1733185:         var_1D4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(var_164) & "/" & MemVar_1F92168 & "/") & var_184), &H10)) + var_1C4)
  loc_173319D:         var_22C = (Space(&HA) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), 8)))
  loc_17331A2:         var_E0 = CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate"))), &HC)))
  loc_17331DA:       End If
  loc_173325A:       If CBool((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0)) Then
  loc_173329E:         var_144 = (CVar(var_E0) + Space(8))
  loc_17332B6:         var_174 = (Space(8) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("KOTNo"))), &H12)))
  loc_17332BB:         var_E0 = CStr((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0))
  loc_17332D5:       End If
  loc_17332EB:       var_144 = (Chr(&HF) + CVar(var_E0))
  loc_17332F1:       Print 1, Space(8)
  loc_1733313:       var_144 = (Chr(&HF) + vbNullString)
  loc_1733319:       Print 1, Space(8)
  loc_173333B:       var_144 = (Chr(&HF) + vbNullString)
  loc_1733341:       Print 1, Space(8)
  loc_1733354:       var_9A = (var_9A + 5)
  loc_1733357:     End If
  loc_1733359:     var_B6 = 1
  loc_173335F:     var_C0.MoveFirst
  loc_1733364:     ' Referenced from: 1733EA9
  loc_1733373:     If Not(var_C0.EOF) Then
  loc_17333C3:       Proc_6_39_E7C810(var_1C4, CVar(var_C0.Fields.Item("TaxPer")), var_B6)
  loc_173340E:       Proc_6_39_E7C810(var_284, CVar(var_C0.Fields.Item("qty")), 1)
  loc_1733459:       Proc_6_39_E7C810(var_348, CVar(var_C0.Fields.Item("Rate")), 1, 1)
  loc_17334A4:       Proc_6_39_E7C810(var_3F4, CVar(var_C0.Fields.Item("Rate")), 1, 1)
  loc_17334E5:       Proc_6_39_E7C810(var_450, CVar(var_C0.Fields.Item("Amt")))
  loc_1733530:       var_154 = (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 3, 1)) + Space(1))
  loc_1733549:       var_184 = (1 + CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item("ItemName").Value), &H24, CVar(var_BC.Fields.Item("KOTNo")))))
  loc_173355D:       var_1A4 = (var_184 + Space(1))
  loc_1733573:       var_214 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_1C4, "0.00")), 5, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), &H14)))) 'String
  loc_1733576:       var_22C = (var_9A + var_214)
  loc_173358A:       var_24C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate"))), &HC)) + Space(1))
  loc_17335A3:       var_2F8 = (Space(&H14) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_284, "0.00")), 8)))
  loc_17335B7:       var_318 = (var_2F8 + Space(1))
  loc_17335D0:       var_39C = (var_318 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_348, "0.00")), 8)))
  loc_17335E4:       var_3BC = (var_39C + Space(1))
  loc_1733622:       var_4D4 = (var_3BC + IIf((var_3F4 = 0), CVar(Proc_6_45_EAD428("Free", 8, 1)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_450, "0.00")), 8))))
  loc_17336BD:       var_144 = (Chr(&H19) + CVar(CStr(var_4D4)))
  loc_17336C3:       Print 1, CVar(Proc_6_52_EAD4F4(CStr(var_B6), 3, 1))
  loc_17336D6:       var_9A = (var_9A + 1)
  loc_17336DF:       If (var_9A = &HF) Then
  loc_17336F8:         var_144 = (Chr(&HF) + CVar(var_D0))
  loc_17336FE:         Print 1, CVar(Proc_6_52_EAD4F4(CStr(var_B6), 3, 1))
  loc_1733711:         var_9A = (var_9A + 1)
  loc_1733729:         var_144 = (Chr(&HF) + "Contd.")
  loc_173372F:         Print 1, CVar(Proc_6_52_EAD4F4(CStr(var_B6), 3, 1))
  loc_1733742:         var_9A = (var_9A + 1)
  loc_1733745:         ' Referenced from: 173377F
  loc_173374B:         If (var_9A <= &H14) Then
  loc_1733763:           var_144 = (Chr(&HF) + vbNullString)
  loc_1733769:           Print 1, CVar(Proc_6_52_EAD4F4(CStr(var_B6), 3, 1))
  loc_173377C:           var_9A = (var_9A + 1)
  loc_173377F:           GoTo loc_1733745
  loc_1733782:         End If
  loc_1733788:         var_9C = (var_9C + 1)
  loc_17337A0:         var_144 = (Chr(&HF) + vbNullString)
  loc_17337A6:         Print 1, CVar(Proc_6_52_EAD4F4(CStr(var_B6), 3, 1))
  loc_17337B9:         var_9A = (var_9A + 1)
  loc_17337D1:         var_144 = (Chr(&HF) + vbNullString)
  loc_17337D7:         Print 1, CVar(Proc_6_52_EAD4F4(CStr(var_B6), 3, 1))
  loc_17337EA:         var_9A = (var_9A + 1)
  loc_1733802:         var_144 = (Chr(&HF) + vbNullString)
  loc_1733808:         Print 1, CVar(Proc_6_52_EAD4F4(CStr(var_B6), 3, 1))
  loc_173381B:         var_9A = (var_9A + 1)
  loc_1733874:         var_1E8 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("U_Name")), var_9A, var_9A, var_9A, 1), &HA, var_9A, var_9A)
  loc_173387D:         var_154 = (Chr(&HF) + Space(&HF))
  loc_1733887:         var_184 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_1E8))
  loc_173388D:         Print 1, var_184
  loc_17338B4:         var_9A = (var_9A + 1)
  loc_17338B7:         ' Referenced from: 17338F1
  loc_17338BD:         If (var_9A <= &H24) Then
  loc_17338D5:           var_144 = (Chr(&HF) + vbNullString)
  loc_17338DB:           Print 1, Space(&HF)
  loc_17338EE:           var_9A = (var_9A + 1)
  loc_17338F1:           GoTo loc_17338B7
  loc_17338F4:         End If
  loc_1733948:         var_154 = (Chr(&H12) + Chr(&H1B))
  loc_173394F:         var_174 = (CVar(var_BC.Fields.Item("KOTNo")) + Chr(&H45))
  loc_1733959:         var_184 = (CVar(var_1E8) + CVar(var_98))
  loc_1733960:         var_1A4 = (var_184 + Chr(&H1B))
  loc_1733967:         var_1C4 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), &H14)) + Chr(&H46))
  loc_173396E:         var_1E4 = (var_1C4 + Chr(&HF))
  loc_1733974:         Print 1, Format(var_1C4, "0.00")
  loc_17339CE:         var_164 = CVar(var_BC.Fields.Item("vType")) 'Address
  loc_1733A00:         Proc_6_39_E7C810(var_184, CVar(var_BC.Fields.Item("VNo")), var_9A)
  loc_1733AD7:         var_154 = (Chr(&HF) + Space(8))
  loc_1733ADE:         var_1B4 = CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(var_164, var_9A, var_9A) & "/" & MemVar_1F92168 & "/") & var_184), &H10)) 'String
  loc_1733AE1:         var_1C4 = (CVar(var_BC.Fields.Item("KOTNo")) + var_1B4)
  loc_1733AE8:         var_1E4 = (var_1C4 + Space(&HA))
  loc_1733AF2:         var_23C = (Format(var_1C4, "0.00") + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &HC)))
  loc_1733AF9:         var_25C = (Space(1) + Space(&H14))
  loc_1733B03:         var_2AC = (CVar(var_C0.Fields.Item("qty")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 5)))
  loc_1733B09:         Print 1, Format(CVar(var_BC.Fields.Item("RoomNo")), "0.00")
  loc_1733BA2:         If CBool(var_BC.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_1733BCB:           Proc_6_39_E7C810(var_164, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_1733C3C:           var_144 = (CVar(vbNullString) + Space(&HC))
  loc_1733C55:           var_184 = (Space(8) + CVar(Proc_6_45_EAD428(CStr(var_164), &HA)))
  loc_1733C6D:           var_1B4 = (var_184 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), &H14)))
  loc_1733C79:           var_1C4 = Space(8)
  loc_1733C81:           var_1D4 = (var_1B4 + var_1C4)
  loc_1733C99:           var_22C = (Space(&HA) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), 8)))
  loc_1733C9E:           var_E0 = CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &HC)))
  loc_1733CD6:         End If
  loc_1733D56:         If CBool((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0)) Then
  loc_1733D9A:           var_144 = (CVar(var_E0) + Space(8))
  loc_1733DB2:           var_174 = (Space(8) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("KOTNo"))), &H12)))
  loc_1733DB7:           var_E0 = CStr((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0))
  loc_1733DD1:         End If
  loc_1733DE7:         var_144 = (Chr(&HF) + CVar(var_E0))
  loc_1733DED:         Print 1, Space(8)
  loc_1733E0F:         var_144 = (Chr(&HF) + vbNullString)
  loc_1733E15:         Print 1, Space(8)
  loc_1733E37:         var_144 = (Chr(&HF) + vbNullString)
  loc_1733E3D:         Print 1, Space(8)
  loc_1733E4C:         var_9A = 5
  loc_1733E4F:       End If
  loc_1733E7C:       Proc_6_39_E7C810(Space(8), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC))
  loc_1733E84:       var_154 = (var_9A + Space(8))
  loc_1733E89:       var_CC = CSng(CVar(var_BC.Fields.Item("KOTNo")))
  loc_1733E9E:       var_B6 = (var_B6 + 1)
  loc_1733EA4:       var_C0.MoveNext
  loc_1733EA9:       GoTo loc_1733364
  loc_1733EAC:     End If
  loc_1733ECC:     var_154 = (Chr(&HF) + Space(&H3C))
  loc_1733ED6:     var_164 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_D4))
  loc_1733EDC:     Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("KOTNo"))), &H12))
  loc_1733EF3:     var_9A = (var_9A + 1)
  loc_1733EF9:     var_C4.MoveFirst
  loc_1733EFE:     ' Referenced from: 17343D3
  loc_1733F0D:     If Not(var_C4.EOF) Then
  loc_1733F3A:       var_4E4 = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_1733F58:       If (var_4E4 = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_1733FE4:         Proc_6_39_E7C810(var_1C4, CVar(var_C4.Fields.Item("Amount")), var_B6)
  loc_1734024:         var_154 = (Chr(&HF) + Space(&H2C))
  loc_173402E:         var_184 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, var_9A)))
  loc_1734035:         var_1A4 = (var_184 + Space(4))
  loc_173403F:         var_22C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), &H14)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1C4, "0.00")), &HA, 1)))
  loc_1734045:         Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &HC))
  loc_1734084:         var_9A = (var_9A + 1)
  loc_173408A:       Else
  loc_173409D:         If (var_4E4 = CVar(MemVar_1F92078 & "NET")) Then
  loc_17340B5:           var_144 = Space(&H3C)
  loc_17340C0:           var_154 = (Chr(&HF) + var_144)
  loc_17340CA:           var_164 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_D4))
  loc_17340D0:           Print 1, var_C4.Fields.Item("DispName").Value
  loc_17340E7:           var_9A = (var_9A + 1)
  loc_1734110:           Proc_6_39_E7C810(var_144, CVar(var_C4.Fields.Item("Amount")), var_9A, var_9A)
  loc_173412A:           If (var_144 > 0) Then
  loc_1734142:             var_144 = Space(&H2C)
  loc_17341B6:             Proc_6_39_E7C810(var_1C4, CVar(var_C4.Fields.Item("Amount")))
  loc_17341F6:             var_154 = (Chr(&HF) + var_144)
  loc_1734200:             var_184 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1)))
  loc_1734207:             var_1A4 = (var_184 + Space(4))
  loc_1734211:             var_22C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), &H14)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1C4, "0.00")), &HA, 1)))
  loc_1734217:             Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &HC))
  loc_1734256:             var_9A = (var_9A + 1)
  loc_1734259:           End If
  loc_173425C:         Else
  loc_1734282:           Proc_6_39_E7C810(var_144, CVar(var_C4.Fields.Item("Amount")), var_9A)
  loc_173429C:           If (var_144 > 0) Then
  loc_1734328:             Proc_6_39_E7C810(var_1C4, CVar(var_C4.Fields.Item("Amount")))
  loc_1734368:             var_154 = (Chr(&HF) + Space(&H2C))
  loc_1734372:             var_184 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1)))
  loc_1734379:             var_1A4 = (var_184 + Space(4))
  loc_1734383:             var_22C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), &H14)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1C4, "0.00")), &HA, 1)))
  loc_1734389:             Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &HC))
  loc_17343C8:             var_9A = (var_9A + 1)
  loc_17343CB:           End If
  loc_17343CB:         End If
  loc_17343CB:       End If
  loc_17343CE:       var_C4.MoveNext
  loc_17343D3:       GoTo loc_1733EFE
  loc_17343D6:       ' Referenced from: 1734410
  loc_17343D6:     End If
  loc_17343DC:     If (var_9A <= &H14) Then
  loc_17343F4:       var_144 = (Chr(&HF) + vbNullString)
  loc_17343FA:       Print 1, Space(&H2C)
  loc_173440D:       var_9A = (var_9A + 1)
  loc_1734410:       GoTo loc_17343D6
  loc_1734413:     End If
  loc_1734428:     var_144 = (Chr(&HF) + vbNullString)
  loc_173442E:     Print 1, Space(&H2C)
  loc_1734441:     var_9A = (var_9A + 1)
  loc_1734459:     var_144 = (Chr(&HF) + vbNullString)
  loc_173445F:     Print 1, Space(&H2C)
  loc_1734472:     var_9A = (var_9A + 1)
  loc_173448A:     var_144 = (Chr(&HF) + vbNullString)
  loc_1734490:     Print 1, Space(&H2C)
  loc_17344A3:     var_9A = (var_9A + 1)
  loc_17344DF:     var_164 = CVar(var_BC.Fields.Item("U_Name")) 'Address
  loc_1734505:     var_154 = (Chr(&HF) + Space(&HF))
  loc_173450F:     var_184 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(var_164, var_9A, var_9A, var_9A, var_9A), &HA, var_9A)))
  loc_1734515:     Print 1, var_184
  loc_173453C:     var_9A = (var_9A + 1)
  loc_173453F:     ' Referenced from: 1734579
  loc_1734545:     If (var_9A <= &H24) Then
  loc_173455D:       var_144 = (Chr(&HF) + vbNullString)
  loc_1734563:       Print 1, Space(&HF)
  loc_1734576:       var_9A = (var_9A + 1)
  loc_1734579:       GoTo loc_173453F
  loc_173457C:     End If
  loc_173457F:     var_BC.MoveNext
  loc_1734584:     GoTo loc_1732C8F
  loc_1734587:   End If
  loc_1734589:   Close 1
  loc_1734592:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_17345C7:   var_144 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_6298CC.Fields.Item("Printer").Value 
  loc_17345CD:   Print 1, var_144
  loc_17345E3:   Close 1
  loc_17345ED:   If (MemVar_1F923B8 = "Y") Then
  loc_1734609:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1734613:   Else
  loc_173462C:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1734633:   End If
  loc_1734638:   Set var_BC = Nothing
  loc_1734640:   Set var_C0 = Nothing
  loc_1734648:   Set var_C4 = Nothing
  loc_1734650:   Set var_E4 = Nothing
  loc_1734656: Else
  loc_173466F:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_144, CVar(var_BC.Fields.Item("KOTNo")), var_164)
  loc_173467F: End If
  loc_173467F: Exit Sub
  loc_1734680: ' Referenced from: 1732B04
  loc_1734680: Proc_6_60_E62BC4(var_9A, var_9A, 1)
  loc_1734685: Exit Sub
End Sub

Public Sub Proc_260_19_172D27C
  'Data Table: 43FECC
  Dim MemVar_6298CC As Recordset15
  Dim var_FC As String
  Dim unk_43FED1 As Connection15
  Dim var_E4 As Recordset15
  Dim var_114 As Fields15
  Dim var_AE As Integer
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_E0 As Recordset15
  Dim var_110 As Variant
  Dim var_138 As Variant
  Dim var_174 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  Dim var_224 As Variant
  Dim var_2D0 As Variant
  Dim var_37C As Variant
  Dim var_1B0 As Variant
  Dim var_204 As Variant
  Dim var_238 As Variant
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_288 As Variant
  Dim var_2A8 As Variant
  Dim var_2E4 As Variant
  Dim var_2F4 As Variant
  Dim var_314 As Variant
  Dim var_334 As Variant
  Dim var_354 As Variant
  Dim var_390 As Variant
  Dim var_3A0 As Variant
  Dim var_3C0 As Variant
  Dim var_3E0 As Variant
  Dim var_400 As Variant
  Dim var_45C As Variant
  Dim var_258 As Variant
  Dim var_298 As Variant
  Dim var_304 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_4C8 As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_172B710: On Error Goto loc_172D276
  loc_172B71E: MemVar_6298CC.Filter = "ModType='POS'"
  loc_172B739: If (MemVar_6298CC.RecordCount > 0) Then
  loc_172B73F:   MemVar_1F923C0 = "N"
  loc_172B746:   MemVar_1F923C4 = "N"
  loc_172B74D:   MemVar_1F923C8 = "K"
  loc_172B777:   unk_43FED1.Execute "Select * from Depart where code='" & Me(8) & "'", var_110, -1
  loc_172B782:   Set var_E4 = var_114
  loc_172B7A2:   var_8C = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me(12) & "'"
  loc_172B7BC:   If (var_E4.RecordCount > 0) Then
  loc_172B7D1:     var_114 = var_E4.Fields
  loc_172B7E1:     var_110 = var_114.Item("KotYN").Value
  loc_172B7FB:     If (var_110 = "Y") Then
  loc_172B805:       var_FC = "Select kot.vdate as kdate,MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='"
  loc_172B825:       var_90 = var_FC & Me(12) & "' and KOT.CONTRADOCID='" & Me(12) & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) "
  loc_172B836:     Else
  loc_172B83D:       var_FC = "Select kot.vdate as kdate,MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='"
  loc_172B84D:       var_90 = var_FC & Me(12) & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) "
  loc_172B857:     End If
  loc_172B857:     GoTo loc_172B85A
  loc_172B85A:     ' Referenced from: 172B857
  loc_172B85A:   End If
  loc_172B871:   var_94 = "Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='" & Me(12) & "' order by sno "
  loc_172B883:   If (var_8C = vbNullString) Then
  loc_172B886:     Exit Sub
  loc_172B887:   End If
  loc_172B88F:   If (var_90 = vbNullString) Then
  loc_172B892:     Exit Sub
  loc_172B893:   End If
  loc_172B89B:   If (var_94 = vbNullString) Then
  loc_172B89E:     Exit Sub
  loc_172B89F:   End If
  loc_172B8B5:   unk_43FED1.Execute var_8C, var_110, -1
  loc_172B8C0:   Set var_BC = var_114
  loc_172B8DF:   unk_43FED1.Execute var_90, var_110, -1
  loc_172B8EA:   Set var_C0 = var_114
  loc_172B909:   unk_43FED1.Execute var_94, var_110, -1
  loc_172B914:   Set var_C4 = var_114
  loc_172B91F:   var_AE = &HA
  loc_172B924:   Close 1
  loc_172B92D:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_172B955:   unk_43FED1.Execute "Select * from enviro where LogSite_Code='" & MemVar_1F92078 & "'", var_110, -1
  loc_172B960:   Set var_E0 = var_114
  loc_172B970:   ' Referenced from: 172D0CC
  loc_172B97F:   If Not(var_BC.EOF) Then
  loc_172B984:     var_9A = 0
  loc_172B992:     If (var_9A = 0) Then
  loc_172B9D3:       var_154 = CVar(Replace(CStr(Space(&H88)), " ", "-", 1, -1, 0)) 'String
  loc_172B9D6:       var_164 = (Chr(&HF) + var_154)
  loc_172B9EA:       var_184 = (var_164 + Chr(&H12))
  loc_172B9EF:       var_D0 = CStr(var_184)
  loc_172BA32:       var_D4 = Replace(CStr(Space(&HC)), " ", "=", 1, -1, 0)
  loc_172BA40:       Print 1, vbNullString
  loc_172BA4B:       Print 1, vbNullString
  loc_172BA56:       Print 1, vbNullString
  loc_172BA61:       Print 1, vbNullString
  loc_172BA6C:       Print 1, vbNullString
  loc_172BA77:       Print 1, vbNullString
  loc_172BA82:       Print 1, vbNullString
  loc_172BA8D:       Print 1, vbNullString
  loc_172BA98:       Print 1, vbNullString
  loc_172BAB2:       If (var_E0.RecordCount > 0) Then
  loc_172BAC4:         var_114 = var_E0.Fields
  loc_172BAFF:         If (Trim(CVar(Proc_6_38_E68A98(CVar(var_114.Item("Bill_Header")), 1, var_9A, var_114, var_AE))) = vbNullString) Then
  loc_172BB07:           Print 1, vbNullString
  loc_172BB10:         Else
  loc_172BB1F:           var_114 = var_E0.Fields
  loc_172BB61:           Print 1, Proc_260_1_10A5350(Proc_6_38_E68A98(CVar(var_114.Item("Bill_Header")), var_114, var_114), "E", 137)
  loc_172BB7A:         End If
  loc_172BB7D:       Else
  loc_172BB82:         Print 1, vbNullString
  loc_172BB88:       End If
  loc_172BB9A:       Print 1, Chr(&H12)
  loc_172BBCC:       var_114 = var_BC.Fields
  loc_172BC0E:       Proc_6_39_E7C810(var_1B0, CVar(var_BC.Fields.Item("VNo")))
  loc_172BC44:       var_1F4 = Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(CVar(var_114.Item("vType")), var_114) & "/" & MemVar_1F92168 & "/") & var_1B0), &H10)
  loc_172BC4F:       var_138 = (Chr(&HF) + "Bill No. ")
  loc_172BC56:       var_164 = (CVar(Proc_6_38_E68A98(CVar(var_114.Item("Bill_Header")), 1, var_9A, var_114, var_AE)) + Chr(&H12))
  loc_172BC60:       var_1F0 = (var_164 + CVar(var_1F4))
  loc_172BC66:       Print 1, var_1F0
  loc_172BE3F:       Proc_6_39_E7C810(var_438, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_172BE62:       var_138 = (Chr(&HF) + "Date : ")
  loc_172BE69:       var_164 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Bill_Header")), 1, var_9A, var_BC.Fields, var_AE)) + Chr(&H12))
  loc_172BE73:       var_1B0 = (var_164 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate"))), &H12)))
  loc_172BE7A:       var_1D0 = (var_1B0 + Chr(&HF))
  loc_172BE83:       var_1E0 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("vType")), var_BC.Fields) & "/" & MemVar_1F92168 & "/") & var_1B0 + "Time : ")
  loc_172BE8A:       var_204 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")))) + Chr(&H12))
  loc_172BE94:       var_248 = (var_204 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_172BE9B:       var_268 = (var_248 + Chr(&HF))
  loc_172BEA4:       var_288 = (var_268 + "Steward :")
  loc_172BEAB:       var_2A8 = (var_288 + Chr(&H12))
  loc_172BEB5:       var_2F4 = (var_2A8 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_172BEBC:       var_314 = (var_2F4 + Chr(&HF))
  loc_172BEC5:       var_334 = (var_314 + "Table : ")
  loc_172BECC:       var_354 = (var_334 + Chr(&H12))
  loc_172BED6:       var_3A0 = (var_354 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_172BEDD:       var_3C0 = (var_3A0 + Chr(&HF))
  loc_172BEE6:       var_3E0 = (var_3C0 + "Covers: ")
  loc_172BEED:       var_400 = (var_3E0 + Chr(&H12))
  loc_172BEF7:       var_45C = (var_400 + CVar(Proc_6_45_EAD428(CStr(var_438), 7)))
  loc_172BEFD:       Print 1, var_45C
  loc_172BF89:       Print 1, var_D0
  loc_172C040:       var_3B0 = Space(&HA)
  loc_172C04D:       var_3F0 = Chr(&H12)
  loc_172C058:       var_154 = (Chr(&HF) + Space(3))
  loc_172C061:       var_164 = (Chr(&H12) + "S.No")
  loc_172C068:       var_184 = (var_164 + Space(3))
  loc_172C06F:       var_1C0 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate"))), &H12)) + Space(4))
  loc_172C078:       var_1D0 = (Chr(&HF) + "KOT#")
  loc_172C07F:       var_1F0 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("vType")), var_BC.Fields) & "/" & MemVar_1F92168 & "/") & Space(4) + Space(4))
  loc_172C086:       var_224 = (Chr(&H12) + Space(5))
  loc_172C08F:       var_238 = (CVar(var_BC.Fields.Item("VTIME")) + "CODE")
  loc_172C096:       var_258 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(5))
  loc_172C09D:       var_288 = (Chr(&HF) + Space(&H15))
  loc_172C0A6:       var_298 = (var_288 + "ITEM NAME")
  loc_172C0AD:       var_2D0 = (Chr(&H12) + Space(&H15))
  loc_172C0B4:       var_2F4 = (CVar(var_BC.Fields.Item("WaiterName")) + Space(8))
  loc_172C0BD:       var_304 = (var_2F4 + "QTY")
  loc_172C0C4:       var_334 = (Chr(&HF) + Space(5))
  loc_172C0CB:       var_354 = (var_334 + Space(5))
  loc_172C0D4:       var_37C = (var_354 + "RATE")
  loc_172C0DB:       var_3A0 = (CVar(var_BC.Fields.Item("RoomNo")) + Space(5))
  loc_172C0E2:       var_3C0 = (var_3A0 + var_3B0)
  loc_172C0EB:       var_3E0 = (var_3C0 + "AMOUNT")
  loc_172C0F2:       var_400 = (var_3E0 + var_3F0)
  loc_172C0F8:       Print 1, var_400
  loc_172C14E:       Print 1, var_D0
  loc_172C156:       var_9A = &H10
  loc_172C159:     End If
  loc_172C15B:     var_B6 = 1
  loc_172C161:     var_C0.MoveFirst
  loc_172C166:     ' Referenced from: 172C957
  loc_172C175:     If Not(var_C0.EOF) Then
  loc_172C17E:       If (var_9A = 0) Then
  loc_172C1AF:         var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_172C1E6:         var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_172C24D:         Proc_6_39_E7C810(var_164, CVar(var_BC.Fields.Item("VNo")))
  loc_172C283:         var_1F4 = Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("vType")), var_B6) & "/" & MemVar_1F92168 & "/") & var_164), &H10)
  loc_172C28F:         var_1C0 = (Space(8) + CVar(var_1F4))
  loc_172C295:         Print 1, Chr(&HF)
  loc_172C2C9:         Print 1, vbNullString
  loc_172C432:         Proc_6_39_E7C810(var_2F4, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_172C456:         var_164 = (Space(6) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))
  loc_172C45D:         var_184 = (var_164 + Space(4))
  loc_172C467:         var_1D0 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("vType")), var_B6) & "/" & MemVar_1F92168 & "/") & var_164 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_172C46E:         var_1F0 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("vType")), var_BC.Fields) & "/" & MemVar_1F92168 & "/") & CVar(var_BC.Fields.Item("VTIME")) + Space(6))
  loc_172C478:         var_238 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_172C47F:         var_258 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_172C489:         var_298 = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_172C490:         var_2D0 = (Chr(&H12) + Space(6))
  loc_172C497:         var_304 = CVar(Proc_6_45_EAD428(CStr(var_2F4), 7)) 'String
  loc_172C49A:         var_314 = (CVar(var_BC.Fields.Item("WaiterName")) + var_304)
  loc_172C4A0:         Print 1, Space(5)
  loc_172C50E:         Print 1, vbNullString
  loc_172C519:         Print 1, vbNullString
  loc_172C521:         var_9A = 5
  loc_172C524:       End If
  loc_172C59C:       var_204 = var_C0.Fields.Item("ItemName").Value
  loc_172C5C7:       Proc_6_39_E7C810(Chr(&HF), CVar(var_C0.Fields.Item("qty")))
  loc_172C612:       Proc_6_39_E7C810(var_304, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_172C65D:       Proc_6_39_E7C810(var_3B0, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_172C69E:       Proc_6_39_E7C810(var_3F0, CVar(var_C0.Fields.Item("Amt")))
  loc_172C6E9:       var_154 = (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1)) + Space(4))
  loc_172C6FE:       var_174 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("KOTNo")), var_9A), 5, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))) 'String
  loc_172C701:       var_184 = (1 + var_174)
  loc_172C715:       var_1C0 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("vType")), var_B6) & "/" & MemVar_1F92168 & "/") & CVar(var_C0.Fields.Item("KOTNo")) + Space(2))
  loc_172C72A:       var_1E0 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("ICODE"))), 7, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))) 'String
  loc_172C72D:       var_1F0 = (1 + var_1E0)
  loc_172C746:       var_238 = (Chr(&H12) + CVar(Proc_6_45_EAD428(CStr(var_204), &H1E)))
  loc_172C75F:       var_2A8 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&HF), "0.00")), 6)))
  loc_172C773:       var_2E4 = (Space(6) + Space(1))
  loc_172C78C:       var_354 = (CVar(var_BC.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_304, "0.00")), 7)))
  loc_172C7A0:       var_390 = (var_354 + Space(1))
  loc_172C7DE:       var_4C8 = (Space(5) + IIf((var_3B0 = 0), CVar(Proc_6_45_EAD428("Free", &HB, 1)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_3F0, "0.00")), &HB))))
  loc_172C86C:       Print 1, CStr(var_4C8)
  loc_172C878:       var_9A = (var_9A + 1)
  loc_172C885:       If (var_9A = (&H3C - var_AE)) Then
  loc_172C88E:         var_9C = (var_9C + 1)
  loc_172C8A6:         var_138 = (Space(&H32) + "Contd. Page ")
  loc_172C8C1:         Print 1, CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1)) & CVar(CStr(1)) & "..."
  loc_172C8DA:         var_9A = (var_9A + 1)
  loc_172C8EF:         Print 1, Chr(&HC)
  loc_172C8FA:         var_9A = 0
  loc_172C8FD:       End If
  loc_172C92A:       Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_9A)
  loc_172C932:       var_154 = (var_9A + CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1)))
  loc_172C937:       var_CC = CSng(CVar(CStr(1)))
  loc_172C94C:       var_B6 = (var_B6 + 1)
  loc_172C952:       var_C0.MoveNext
  loc_172C957:       GoTo loc_172C166
  loc_172C95A:     End If
  loc_172C964:     If (var_9A < (&H3C - var_AE)) Then
  loc_172C967:       ' Referenced from: 172C98B
  loc_172C974:       If (var_9A <> ((&H3C - var_AE) + 1)) Then
  loc_172C97C:         Print 1, vbNullString
  loc_172C988:         var_9A = (var_9A + 1)
  loc_172C98B:         GoTo loc_172C967
  loc_172C98E:       End If
  loc_172C98E:     End If
  loc_172C991:     var_C4.MoveFirst
  loc_172C9C8:     Print 1, Proc_6_52_EAD4F4(CStr(Left(var_D0, &H37)), &H67, var_9A, var_B6)
  loc_172C9DA:     ' Referenced from: 172D0C1
  loc_172C9E9:     If Not(var_C4.EOF) Then
  loc_172CA16:       var_4D8 = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_172CA34:       If (var_4D8 = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_172CAD6:         Proc_6_39_E7C810(var_204, CVar(var_C4.Fields.Item("Amount")))
  loc_172CAEA:         var_224 = "0.00"
  loc_172CB19:         var_154 = (Chr(&HF) + CVar(Proc_6_45_EAD428(vbNullString, &H54, var_CC)))
  loc_172CB20:         var_174 = (CVar(CStr(1)) + Chr(&H12))
  loc_172CB2A:         var_1C0 = (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1)) & CVar(CStr(1)) & "..." + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1)))
  loc_172CB31:         var_1E0 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_172CB3B:         var_258 = (var_1E0 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_204, var_224)), &HA, 1)))
  loc_172CB41:         Print 1, Chr(&HF)
  loc_172CB85:       Else
  loc_172CB98:         If (var_4D8 = CVar(MemVar_1F92078 & "NET")) Then
  loc_172CBB1:           var_138 = (Space(&H43) + CVar(var_D4))
  loc_172CBB7:           Print 1, CVar(Proc_6_45_EAD428(vbNullString, &H54, var_CC))
  loc_172CBD8:           If (var_E0.RecordCount > 0) Then
  loc_172CC25:             If (Trim(CVar(Proc_6_38_E68A98(CVar(var_E0.Fields.Item("Bill_Footer")), 1))) = vbNullString) Then
  loc_172CCD3:               Proc_6_39_E7C810(var_224, CVar(var_C4.Fields.Item("Amount")))
  loc_172CD16:               var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Space(1)), &H54)))
  loc_172CD1D:               var_184 = (Chr(&H12) + Chr(&H12))
  loc_172CD27:               var_1D0 = (var_C4.Fields.Item("DispName").Value + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF)))
  loc_172CD2E:               var_1F0 = (Space(4) + Space(4))
  loc_172CD38:               var_268 = (CVar(var_C4.Fields.Item("Amount")) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_224, "0.00")), &HA, 1)))
  loc_172CD3E:               Print 1, "0.00"
  loc_172CD84:             Else
  loc_172CDB0:               var_138 = CVar(var_E0.Fields.Item("Bill_Footer")) 'Address
  loc_172CE21:               var_1E0 = Space(4)
  loc_172CE4C:               Proc_6_39_E7C810(var_224, CVar(var_C4.Fields.Item("Amount")))
  loc_172CE8F:               var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(var_138, 1), &H54)))
  loc_172CE96:               var_184 = (Chr(&H12) + Chr(&H12))
  loc_172CEA0:               var_1D0 = (var_C4.Fields.Item("DispName").Value + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF)))
  loc_172CEA7:               var_1F0 = (Space(4) + var_1E0)
  loc_172CEB1:               var_268 = (CVar(var_C4.Fields.Item("Amount")) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_224, "0.00")), &HA, 1)))
  loc_172CEB7:               Print 1, "0.00"
  loc_172CEFE:             End If
  loc_172CF01:           Else
  loc_172CF06:             Print 1, vbNullString
  loc_172CF0C:           End If
  loc_172CF3E:           Print 1, Proc_6_52_EAD4F4(CStr(Left(var_D0, &H37)), &H67, 1)
  loc_172CF53:         Else
  loc_172CF79:           Proc_6_39_E7C810(var_138, CVar(var_C4.Fields.Item("Amount")))
  loc_172CF93:           If (var_138 > 0) Then
  loc_172CFD2:             var_164 = var_C4.Fields.Item("DispName").Value
  loc_172D01F:             Proc_6_39_E7C810(var_1E0, CVar(var_C4.Fields.Item("Amount")))
  loc_172D05F:             var_154 = (Chr(&H12) + Space(&H31))
  loc_172D069:             var_184 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(Space(&H31), 1), &H54)) + CVar(Proc_6_45_EAD428(CStr(var_164), &HF)))
  loc_172D070:             var_1C0 = (var_C4.Fields.Item("DispName").Value + Space(4))
  loc_172D07A:             var_238 = (CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E0, "0.00")), &HA, 1)))
  loc_172D080:             Print 1, "0.00"
  loc_172D0B9:           End If
  loc_172D0B9:         End If
  loc_172D0B9:       End If
  loc_172D0BC:       var_C4.MoveNext
  loc_172D0C1:       GoTo loc_172C9DA
  loc_172D0C4:     End If
  loc_172D0C7:     var_BC.MoveNext
  loc_172D0CC:     GoTo loc_172B970
  loc_172D0CF:   End If
  loc_172D104:   var_154 = (Space(&HF) + CVar(Proc_260_1_10A5350("* THANKS FOR YOUR VISIT *", "A", &H4E)))
  loc_172D10A:   Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(Proc_260_1_10A5350("* THANKS FOR YOUR VISIT *", "A", &H4E)), 1), &H54))
  loc_172D124:   Print 1
  loc_172D12C:   Print 1
  loc_172D134:   Print 1
  loc_172D14F:   var_138 = (Space(&H48) + "CASHIER")
  loc_172D155:   Print 1, CVar(Proc_260_1_10A5350("* THANKS FOR YOUR VISIT *", "A", &H4E))
  loc_172D174:   Print 1, Chr(&HC)
  loc_172D17F:   Close 1
  loc_172D188:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_172D1BD:   var_138 = "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_6298CC.Fields.Item("Printer").Value 
  loc_172D1C3:   Print 1, var_138
  loc_172D1D9:   Close 1
  loc_172D1E3:   If (MemVar_1F923B8 = "Y") Then
  loc_172D1FF:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_172D209:   Else
  loc_172D222:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_172D229:   End If
  loc_172D22E:   Set var_BC = Nothing
  loc_172D236:   Set var_C0 = Nothing
  loc_172D23E:   Set var_C4 = Nothing
  loc_172D246:   Set var_E4 = Nothing
  loc_172D24C: Else
  loc_172D265:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_138, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(var_138, 1), &H54)), var_164)
  loc_172D275: End If
  loc_172D275: Exit Sub
  loc_172D276: ' Referenced from: 172B710
  loc_172D276: Proc_6_60_E62BC4(1, var_9A)
  loc_172D27B: Exit Sub
End Sub

Public Sub Proc_260_20_1596180(arg_C, arg_10, arg_14) '1596180
  'Data Table: 43FECC
  Dim var_D4 As Variant
  Dim unk_43FED1 As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim unk_44009F As Connection15
  Dim MemVar_6298CC As Recordset15
  Dim var_BC As Variant
  Dim var_144 As Variant
  loc_1594FDB: Me(8) = arg_C
  loc_1594FE3: Me(12) = arg_10
  loc_1594FF0: If (arg_14 = "Y") Then
  loc_1594FF5:   Me(16) = &HFF
  loc_1594FFD: Else
  loc_1594FFF:   Me(16) = 0
  loc_1595004: End If
  loc_159500A: var_D4 = 0
  loc_1595047: unk_43FED1.Execute "Select IsNull(Max(RestType),'') from Depart where SITE_CODE='" & MemVar_1F92078 & "' AND Code='" & Me(8) & "'", var_BC, -1
  loc_1595057: var_D4 = var_C4.Item(var_C4)
  loc_159505F: var_D8 = var_D8.Value
  loc_1595068: Me(4) = CStr(var_E8)
  loc_15950BD: unk_44009F.Execute "Select * from PrinterSetup where SITE_CODE='" & MemVar_1F92078 & "' AND RestCode='" & Me(8) & "'", var_BC, -1
  loc_15950C8: Me(0) = var_C0.Fields
  loc_15950F5: If (MemVar_6298CC.RecordCount > 0) Then
  loc_15950FD:   MemVar_6298CC.MoveFirst
  loc_1595102:   ' Referenced from: 159616F
  loc_1595102: End If
  loc_1595113: If Not(MemVar_6298CC.EOF) Then
  loc_1595154:   If (MemVar_6298CC.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL CLIF TOP") Then
  loc_159516B:     var_C0 = MemVar_6298CC.Fields
  loc_159517B:     var_BC = var_C0.Item("AutoPrint").Value
  loc_1595195:     If (var_BC = "Yes") Then
  loc_1595198:       Proc_260_8_16292C4(var_C0)
  loc_15951C3:       unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_15951D8:       arg_14 = "Y"
  loc_15951DC:       Exit Sub
  loc_15951E0:     Else
  loc_15951F3:       var_BC = "Print Bill ?"
  loc_159520F:       If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_1595212:         Proc_260_8_16292C4(var_C0)
  loc_159523D:         unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1595252:         arg_14 = "Y"
  loc_1595259:       Else
  loc_1595259:         Exit Sub
  loc_159525A:       End If
  loc_159525A:     End If
  loc_159525A:   End If
  loc_1595298:   If (MemVar_6298CC.Fields.Item("ModDescription").Value = "BILL DOS PLAIN PAPER RUNNING") Then
  loc_15952AF:     var_C0 = MemVar_6298CC.Fields
  loc_15952BF:     var_BC = var_C0.Item("AutoPrint").Value
  loc_15952D9:     If (var_BC = "Yes") Then
  loc_15952DC:       Proc_260_15_181FB30(var_C0)
  loc_1595307:       unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_159531C:       arg_14 = "Y"
  loc_1595323:     Else
  loc_1595336:       var_BC = "Print Bill ?"
  loc_1595352:       If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_1595355:         Proc_260_15_181FB30(var_C0)
  loc_1595380:         unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1595395:         arg_14 = "Y"
  loc_159539C:       Else
  loc_159539C:         Exit Sub
  loc_159539D:       End If
  loc_159539D:     End If
  loc_15953A0:   Else
  loc_15953DE:     If (MemVar_6298CC.Fields.Item("ModDescription").Value = "BILL DOS PLAIN PAPER RUNNING (WITH EJECT)") Then
  loc_15953F5:       var_C0 = MemVar_6298CC.Fields
  loc_1595405:       var_BC = var_C0.Item("AutoPrint").Value
  loc_159541F:       If (var_BC = "Yes") Then
  loc_1595422:         Proc_260_16_18CF0C0(var_C0)
  loc_159544D:         unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1595462:         arg_14 = "Y"
  loc_1595469:       Else
  loc_159547C:         var_BC = "Print Bill ?"
  loc_1595498:         If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_159549B:           Proc_260_16_18CF0C0(var_C0)
  loc_15954C6:           unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_15954DB:           arg_14 = "Y"
  loc_15954E2:         Else
  loc_15954E2:           Exit Sub
  loc_15954E3:         End If
  loc_15954E3:       End If
  loc_15954E6:     Else
  loc_159550E:       var_E8 = Trim(CVar(MemVar_6298CC.Fields.Item("ModDescription")))
  loc_1595528:       If (var_E8 = "BILL DOS PLAIN (3) PAPER RUNNING") Then
  loc_159553F:         var_C0 = MemVar_6298CC.Fields
  loc_159554F:         var_BC = var_C0.Item("AutoPrint").Value
  loc_1595569:         If (var_BC = "Yes") Then
  loc_159556C:           Proc_260_4_1834634(var_C0)
  loc_1595597:           unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_15955AC:           arg_14 = "Y"
  loc_15955B3:         Else
  loc_15955C6:           var_BC = "Print Bill ?"
  loc_15955E2:           If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_15955E5:             Proc_260_4_1834634(var_C0)
  loc_1595610:             unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1595625:             arg_14 = "Y"
  loc_159562C:           Else
  loc_159562C:             Exit Sub
  loc_159562D:           End If
  loc_159562D:         End If
  loc_1595630:       Else
  loc_1595658:         var_E8 = Trim(CVar(MemVar_6298CC.Fields.Item("ModDescription")))
  loc_1595672:         If (var_E8 = "BILL DOS PLAIN (3) PAPER RUNNING (THERMAL PRINT)") Then
  loc_1595689:           var_C0 = MemVar_6298CC.Fields
  loc_1595699:           var_BC = var_C0.Item("AutoPrint").Value
  loc_15956B3:           If (var_BC = "Yes") Then
  loc_15956B6:             Proc_260_5_195DFB4(var_C0)
  loc_15956E1:             unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_15956F6:             arg_14 = "Y"
  loc_15956FD:           Else
  loc_1595710:             var_BC = "Print Bill ?"
  loc_159572C:             If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_159572F:               Proc_260_5_195DFB4(var_C0)
  loc_159575A:               unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_159576F:               arg_14 = "Y"
  loc_1595776:             Else
  loc_1595776:               Exit Sub
  loc_1595777:             End If
  loc_1595777:           End If
  loc_159577A:         Else
  loc_15957B8:           If (MemVar_6298CC.Fields.Item("ModDescription").Value = "BILL DOS PRE PRINTED") Then
  loc_15957CF:             var_C0 = MemVar_6298CC.Fields
  loc_15957DF:             var_BC = var_C0.Item("AutoPrint").Value
  loc_15957F9:             If (var_BC = "Yes") Then
  loc_15957FC:               Proc_260_6_1623BFC(var_C0)
  loc_1595827:               unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_159583C:               arg_14 = "Y"
  loc_1595843:             Else
  loc_1595856:               var_BC = "Print Bill ?"
  loc_1595872:               If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_1595875:                 Proc_260_6_1623BFC(var_C0)
  loc_15958A0:                 unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_15958B5:                 arg_14 = "Y"
  loc_15958BC:               Else
  loc_15958BC:                 Exit Sub
  loc_15958BD:               End If
  loc_15958BD:             End If
  loc_15958C0:           Else
  loc_159591A:             var_110 = MemVar_6298CC.Fields.Item("ModDescription").Value
  loc_159592C:             var_144 = (MemVar_6298CC.Fields.Item("ModDescription").Value = "BILL DOS PRE PAPER RUNNING (HOTEL OMEGA)") Or (var_110 = "PREPRINTED FORMAT 1")
  loc_1595944:             If CBool(var_144) Then
  loc_159595B:               var_C0 = MemVar_6298CC.Fields
  loc_159596B:               var_BC = var_C0.Item("AutoPrint").Value
  loc_1595985:               If (var_BC = "Yes") Then
  loc_1595988:                 Proc_260_18_1734688(var_C0)
  loc_15959B3:                 unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_15959C8:                 arg_14 = "Y"
  loc_15959CF:               Else
  loc_15959E2:                 var_BC = "Print Bill ?"
  loc_15959FE:                 If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_1595A01:                   Proc_260_18_1734688(var_C0)
  loc_1595A2C:                   unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1595A41:                   arg_14 = "Y"
  loc_1595A48:                 Else
  loc_1595A48:                   Exit Sub
  loc_1595A49:                 End If
  loc_1595A49:               End If
  loc_1595A4C:             Else
  loc_1595AA6:               var_110 = MemVar_6298CC.Fields.Item("ModDescription").Value
  loc_1595AB8:               var_144 = (MemVar_6298CC.Fields.Item("ModDescription").Value = "RESTAURANT BILL DOS PREPRINTED (HOTEL YATRIK)") Or (var_110 = "PREPRINTED FORMAT 6")
  loc_1595AD0:               If CBool(var_144) Then
  loc_1595AE7:                 var_C0 = MemVar_6298CC.Fields
  loc_1595AF7:                 var_BC = var_C0.Item("AutoPrint").Value
  loc_1595B11:                 If (var_BC = "Yes") Then
  loc_1595B14:                   Proc_260_19_172D27C(var_C0)
  loc_1595B3F:                   unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1595B54:                   arg_14 = "Y"
  loc_1595B5B:                 Else
  loc_1595B6E:                   var_BC = "Print Bill ?"
  loc_1595B8A:                   If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_1595B8D:                     Proc_260_19_172D27C(var_C0)
  loc_1595BB8:                     unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1595BCD:                     arg_14 = "Y"
  loc_1595BD4:                   Else
  loc_1595BD4:                     Exit Sub
  loc_1595BD5:                   End If
  loc_1595BD5:                 End If
  loc_1595BD8:               Else
  loc_1595C00:                 var_E8 = Trim(CVar(MemVar_6298CC.Fields.Item("ModDescription")))
  loc_1595C1A:                 If (var_E8 = "BILL DOS PLAIN (3) PAPER RUNNING (WeP TX 40)") Then
  loc_1595C31:                   var_C0 = MemVar_6298CC.Fields
  loc_1595C41:                   var_BC = var_C0.Item("AutoPrint").Value
  loc_1595C5B:                   If (var_BC = "Yes") Then
  loc_1595C5E:                     Proc_260_9_1A7FE38(var_C0)
  loc_1595C89:                     unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1595C9E:                     arg_14 = "Y"
  loc_1595CA5:                   Else
  loc_1595CB8:                     var_BC = "Print Bill ?"
  loc_1595CD4:                     If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_1595CD7:                       Proc_260_9_1A7FE38(var_C0)
  loc_1595D02:                       unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1595D17:                       arg_14 = "Y"
  loc_1595D1E:                     Else
  loc_1595D1E:                       Exit Sub
  loc_1595D1F:                     End If
  loc_1595D1F:                   End If
  loc_1595D22:                 Else
  loc_1595D4A:                   var_E8 = Trim(CVar(MemVar_6298CC.Fields.Item("ModDescription")))
  loc_1595D64:                   If (var_E8 = "BILL DOS PLAIN (3) PAPER RUNNING (TVSRP3200)") Then
  loc_1595D7B:                     var_C0 = MemVar_6298CC.Fields
  loc_1595D8B:                     var_BC = var_C0.Item("AutoPrint").Value
  loc_1595DA5:                     If (var_BC = "Yes") Then
  loc_1595DA8:                       Proc_260_10_1E2DD28(var_C0)
  loc_1595DD3:                       unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1595DE8:                       arg_14 = "Y"
  loc_1595DEF:                     Else
  loc_1595E02:                       var_BC = "Print Bill ?"
  loc_1595E1E:                       If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_1595E21:                         Proc_260_10_1E2DD28(var_C0)
  loc_1595E4C:                         unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1595E61:                         arg_14 = "Y"
  loc_1595E68:                       Else
  loc_1595E68:                         Exit Sub
  loc_1595E69:                       End If
  loc_1595E69:                     End If
  loc_1595E6C:                   Else
  loc_1595EAA:                     If (MemVar_6298CC.Fields.Item("ModDescription").Value = "BILL WINDOWS PLAIN PAPER RUNNING") Then
  loc_1595EC1:                       var_C0 = MemVar_6298CC.Fields
  loc_1595ED1:                       var_BC = var_C0.Item("AutoPrint").Value
  loc_1595EEB:                       If (var_BC = "Yes") Then
  loc_1595EEE:                         Proc_260_14_1EEA954(var_C0)
  loc_1595F19:                         unk_43FED1.Execute "Update SplitSale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1595F51:                         unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1595F66:                         arg_14 = "Y"
  loc_1595F6D:                       Else
  loc_1595F80:                         var_BC = "Print Bill ?"
  loc_1595F9C:                         If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_1595F9F:                           Proc_260_14_1EEA954(var_C0, var_C0)
  loc_1595FCA:                           unk_43FED1.Execute "Update SplitSale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1596002:                           unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_1596017:                           arg_14 = "Y"
  loc_159601E:                         Else
  loc_159601E:                           Exit Sub
  loc_159601F:                         End If
  loc_159601F:                       End If
  loc_1596022:                     Else
  loc_1596060:                       If (MemVar_6298CC.Fields.Item("ModDescription").Value = "BILL DOS PLAIN PAPER") Then
  loc_1596077:                         var_C0 = MemVar_6298CC.Fields
  loc_1596087:                         var_BC = var_C0.Item("AutoPrint").Value
  loc_15960A1:                         If (var_BC = "Yes") Then
  loc_15960A4:                           Proc_260_17_173BB58(var_C0, var_C0)
  loc_15960CF:                           unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_15960E4:                           arg_14 = "Y"
  loc_15960EB:                         Else
  loc_15960FE:                           var_BC = "Print Bill ?"
  loc_159611A:                           If (MsgBox(var_BC, &H24, var_E8, var_110, var_130) = 6) Then
  loc_159611D:                             Proc_260_17_173BB58(var_C0)
  loc_1596148:                             unk_43FED1.Execute "Update sale1 set Printed='Y' where Docid='" & Me(12) & "'", var_BC, -1
  loc_159615D:                             arg_14 = "Y"
  loc_1596164:                           Else
  loc_1596164:                             Exit Sub
  loc_1596165:                           End If
  loc_1596165:                         End If
  loc_1596165:                       End If
  loc_1596165:                     End If
  loc_1596165:                   End If
  loc_1596165:                 End If
  loc_1596165:               End If
  loc_1596165:             End If
  loc_1596165:           End If
  loc_1596165:         End If
  loc_1596165:       End If
  loc_1596165:     End If
  loc_1596165:   End If
  loc_159616A:   MemVar_6298CC.MoveNext
  loc_159616F:   GoTo loc_1595102
  loc_1596172: End If
  loc_1596177: Me(0) = Nothing
  loc_159617D: Exit Sub
End Sub

Public Sub Proc_260_21_1E6A5E0(arg_C) '1E6A5E0
  'Data Table: 43FECC
  Dim var_178 As Variant
  Dim var_158 As Variant
  Dim var_188 As Variant
  Dim var_18C As String
  Dim unk_43FED1 As Connection15
  Dim var_B4 As Recordset15
  Dim var_1B0 As Variant
  Dim var_168 As Variant
  Dim var_1C8 As Variant
  Dim var_19C As Variant
  Dim var_1DC As String
  Dim var_1E0 As String
  Dim var_1E4 As String
  Dim unk_44009F As Connection15
  Dim var_114 As Recordset15
  Dim var_BC As Recordset15
  Dim var_EA As Integer
  Dim var_1E8 As Variant
  Dim var_1D8 As Variant
  Dim var_21C As Variant
  Dim var_1AC As Variant
  Dim var_EC As Integer
  Dim var_12E As Integer
  Dim var_148 As Recordset15
  Dim var_234 As Recordset15
  Dim var_1EC As Field20
  Dim var_1B8 As Variant
  Dim var_238 As Recordset15
  Dim var_D4 As Recordset15
  Dim var_134 As Recordset15
  Dim var_116 As Integer
  Dim var_248 As Variant
  Dim var_10E As Integer
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_278 As Variant
  Dim var_298 As Variant
  Dim var_B8 As Recordset15
  Dim var_110 As Integer
  Dim var_1FC As Variant
  Dim var_92 As Integer
  Dim var_94 As Integer
  Dim var_2A0 As Fields15
  Dim var_2C4 As Variant
  Dim var_348 As String
  Dim var_34C As String
  Dim var_2F4 As Variant
  Dim var_324 As Variant
  Dim var_334 As Variant
  Dim var_3A0 As Variant
  Dim var_390 As Variant
  Dim var_268 As Variant
  Dim var_314 As Variant
  Dim var_E0 As Recordset15
  Dim var_C8 As Recordset15
  Dim var_344 As Variant
  Dim var_380 As Variant
  Dim var_3E0 As Variant
  Dim var_42C As Variant
  loc_1E5FCC8: On Error Goto loc_1E5A5D8
  loc_1E5FCE8: Proc_6_17_EAA2B0(var_168, arg_C, "SELECT Top 1 * FROM KOT WHERE DocId=")
  loc_1E5FCFE: unk_43FED1.Execute CStr(var_1AC & var_168), -1, var_1B0
  loc_1E5FD09: Set var_B4 = var_1B0
  loc_1E5FD2F: If (var_B4.RecordCount = 1) Then
  loc_1E5FD5A:   var_138 = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RestCode")))
  loc_1E5FD8B:   var_13C = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")))
  loc_1E5FDA3:   var_1B0 = var_B4.Fields
  loc_1E5FDB3:   var_168 = CVar(var_1B0.Item("Roomtype")) 'Address
  loc_1E5FDC4:   var_1AC = "Table"
  loc_1E5FDF0:   var_140 = CStr(IIf((Proc_6_38_E68A98(var_168) = "RO"), "Room", var_1AC))
  loc_1E5FE0A: End If
  loc_1E5FE3C: unk_44009F.Execute "Select * from PrinterSetup where SITE_CODE='" & MemVar_1F92078 & "' AND RestCode='" & var_138 & "' And ModType='KOT'", var_168, -1
  loc_1E5FE47: Set var_148 = var_1B0
  loc_1E5FE78: Proc_6_17_EAA2B0(var_168, MemVar_1F92078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=", var_1AC)
  loc_1E5FE80: var_188 = -1 & var_168 
  loc_1E5FE8E: unk_43FED1.Execute CStr("Room"), var_1B0, var_1B0
  loc_1E5FE99: Set var_114 = var_1B0
  loc_1E5FEBF: If (var_114.RecordCount > 0) Then
  loc_1E5FEF9:   var_F4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_114.Fields.Item("KOTHeader1"))))))
  loc_1E5FF3F:   var_F8 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_114.Fields.Item("KOTHeader2"))))))
  loc_1E5FF85:   var_FC = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_114.Fields.Item("KOTHeader3"))))))
  loc_1E5FFCB:   var_100 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_114.Fields.Item("KOTHeader4"))))))
  loc_1E60011:   var_104 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_114.Fields.Item("KOTPrinting"))))))
  loc_1E6002F:   var_1B0 = var_114.Fields
  loc_1E6003F:   var_168 = CVar(var_1B0.Item("KOTPrintEdited")) 'Address
  loc_1E60057:   var_10C = CStr(Trim(CVar(Proc_6_38_E68A98(var_168))))
  loc_1E60066: End If
  loc_1E6006B: Set var_114 = Nothing
  loc_1E60092: unk_43FED1.Execute "Select Name,CKOTPrintYN,PrintType,CKOTPrintPath,NoOfKot From Depart Where Code='" & var_138 & "'", var_168, -1
  loc_1E6009D: Set var_BC = var_1B0
  loc_1E600C1: If (var_BC.RecordCount > 0) Then
  loc_1E600EC:   var_144 = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name")))
  loc_1E6011D:   var_188 = CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("CKOTPrintYN")))) 'String
  loc_1E60137:   var_E8 = CStr(Ucase(Trim(var_188)))
  loc_1E60170:   var_12C = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("PrintType")))
  loc_1E601A1:   var_124 = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("CKOTPrintPath")))
  loc_1E601D0:   Proc_6_39_E7C810(var_188, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1E601D9:   var_EA = CInt(var_188)
  loc_1E601E9:   var_158 = "NoOfKot"
  loc_1E6020C:   Proc_6_39_E7C810(var_188, CVar(var_BC.Fields.Item(var_158)))
  loc_1E60237:   Proc_6_39_E7C810(var_1FC, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1E60247:   var_178 = 0
  loc_1E60251:   var_20C = (var_188 <= var_178) 'Variant
  loc_1E60264:   var_EC = CInt(IIf(var_20C, 1, var_1FC))
  loc_1E6027F: End If
  loc_1E60287: If (var_E8 = "Y") Then
  loc_1E6029D:   var_12E = Proc_260_22_1BD1860(arg_C, 0, var_12C, var_124)
  loc_1E602A6:   If (var_12E = 0) Then
  loc_1E602A9:     Exit Sub
  loc_1E602AA:   End If
  loc_1E602AA: End If
  loc_1E602AE: Set var_134 = New 
  loc_1E602B9: Set var_134 = Proc_260_23_F5CF3C(var_134, var_12E, var_EC)
  loc_1E602D0: If (var_148.RecordCount > 0) Then
  loc_1E602D6:   var_148.MoveFirst
  loc_1E602DE:   var_EC = var_EA
  loc_1E602E1:   ' Referenced from: 1E604D9
  loc_1E602E1: End If
  loc_1E602F0: If Not(var_148.EOF) Then
  loc_1E602F6:   Set var_234 = var_134 
  loc_1E60305:   var_234.AddNew var_158, var_178
  loc_1E60355:   var_234.Fields.Item("PrintType").Value = CVar(Proc_6_38_E68A98(CVar(var_148.Fields.Item("ModDescription")), var_EC))
  loc_1E603B5:   var_234.Fields.Item("Printer").Value = CVar(Proc_6_38_E68A98(CVar(var_148.Fields.Item("Printer")), var_EA))
  loc_1E603EF:   var_234.Fields.Item("NoOfKot").Value = 1
  loc_1E60446:   var_234.Fields.Item("Split").Value = CVar(Proc_6_38_E68A98(CVar(var_148.Fields.Item("AutoPrint"))))
  loc_1E6045E:   var_158 = "RestCode"
  loc_1E6048A:   var_178 = "RestCode"
  loc_1E604A6:   var_234.Fields.Item(var_178).Value = CVar(Proc_6_38_E68A98(CVar(var_148.Fields.Item(var_158))))
  loc_1E604C6:   var_234.Update var_158, var_178
  loc_1E604CD:   Set var_234 = Nothing 
  loc_1E604D4:   var_148.MoveNext
  loc_1E604D9:   GoTo loc_1E602E1
  loc_1E604DC: End If
  loc_1E604DF: Set var_238 = var_134 
  loc_1E604EE: var_238.AddNew var_158, var_178
  loc_1E60518: var_238.Fields.Item("PrintType").Value = "Default"
  loc_1E60549: var_238.Fields.Item("Printer").Value = vbNullString
  loc_1E6057B: var_238.Fields.Item("NoOfKot").Value = CVar(var_EC)
  loc_1E60597: var_168 = "Yes"
  loc_1E605D4: var_238.Fields.Item("Split").Value = IIf((var_104 = "Seperate for All Kitchen"), var_168, "No")
  loc_1E605EE: var_178 = CVar(var_138) 'String
  loc_1E605F5: var_158 = "RestCode"
  loc_1E60601: var_1B0 = var_238.Fields
  loc_1E60611: var_1B0.Item(var_158).Value = var_178
  loc_1E60628: var_238.Update var_158, var_178
  loc_1E6062F: Set var_238 = Nothing 
  loc_1E60636: MemVar_1F923C0 = "N"
  loc_1E6063D: MemVar_1F923C4 = "N"
  loc_1E60644: MemVar_1F923C8 = "K"
  loc_1E6064F: var_18C = "Select DISTINCT k.Vtime,K.VNo,K.VDate,S.CardNo,S.Name As MemName,W.name as WaiterName,k.RoomNo as TableNo,K.NCKOT,K.NCTYPE, K.Remarks , K.ContraDocId, D.ShortName,K.GuarAtt,K.U_AE,K.TokenNo,K.U_Name " & "From (((KOT K Left Join Waiter W on K.Waiter=W.Code) left join SubGroup S On K.Party=S.SubCode) Left Join Depart D on D.Code=K.RestCode) "
  loc_1E60664: Proc_6_17_EAA2B0(var_168, arg_C)
  loc_1E6067A: var_88 = CStr(CVar(var_18C & "Where K.DocID=") & var_168 & vbNullString)
  loc_1E60692: var_188 = CVar("Select K.Sno,I.Name as ItemName,I.Unit,K.Qty, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E606A0: Proc_6_17_EAA2B0(var_168, arg_C)
  loc_1E606A8: var_1AC = var_188 & var_168 
  loc_1E606B1: var_1D8 = var_1AC & vbNullString 
  loc_1E606B6: var_8C = CStr(var_1D8)
  loc_1E606CC: If (var_88 = vbNullString) Then
  loc_1E606CF:   Exit Sub
  loc_1E606D0: End If
  loc_1E606D8: If (var_8C = vbNullString) Then
  loc_1E606DB:   Exit Sub
  loc_1E606DC: End If
  loc_1E60700: unk_43FED1.Execute "Select * From Depart Where Code='" & var_138 & "'", var_168, -1
  loc_1E6070B: Set var_C8 = var_1B0
  loc_1E60744: var_1E4 = "SELECT DISTINCT DOCID FROM KOT WHERE RESTCODE='" & var_138 & "' AND ROOMNO='" & var_13C & "' AND Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y' AND ISNULL(CONTRADOCID,'')=''"
  loc_1E6074D: unk_43FED1.Execute var_1E4, var_168, -1
  loc_1E60780: If (var_1B0.RecordCount > 1) Then
  loc_1E60786:   var_CC = "Running Order"
  loc_1E6078C: Else
  loc_1E6078F:   var_CC = "New Order"
  loc_1E60792: End If
  loc_1E607A8: unk_43FED1.Execute var_88, var_168, -1
  loc_1E607B3: Set var_B4 = var_1B0
  loc_1E607CB: var_1B0 = var_B4.Fields
  loc_1E607FB: var_1E8 = var_B4.Fields
  loc_1E6080B: var_188 = CVar(var_1E8.Item("ContraDocId")) 'Address
  loc_1E60832: If (var_1B0 And (Proc_6_38_E68A98(var_188, (Proc_6_38_E68A98(CVar(var_1B0.Item("NCKOT")), var_1B0, var_1B0) <> "Y")) <> vbNullString)) Then
  loc_1E6084E:   MsgBox("Sale Bill Already Generated !!", &H40, var_188, var_1AC, var_1D8)
  loc_1E6085E:   Exit Sub
  loc_1E6085F: End If
  loc_1E60873: If (var_134.RecordCount > 0) Then
  loc_1E60879:   var_134.MoveFirst
  loc_1E6087E:   ' Referenced from: 1E6A59C
  loc_1E6087E: End If
  loc_1E6088D: Loop Until Not(var_134.EOF) 'do at: 1E5A59F
  loc_1E608A4: If (var_B4.RecordCount > 0) Then
  loc_1E608AA:   var_B4.MoveFirst
  loc_1E608B2:   var_108 = vbNullString
  loc_1E608B5: End If
  loc_1E608EE: If (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("U_AE"))) = "E") Then
  loc_1E608F3:   var_116 = &HFF
  loc_1E608F6: End If
  loc_1E60905: If ((var_116 = &HFF) And (var_10C = "No Print")) Then
  loc_1E60908:   Exit Sub
  loc_1E60909: End If
  loc_1E6091F: If (((var_116 = &HFF) And (var_10C = "Void Items")) And (MemVar_1F920B8 <= 0)) Then
  loc_1E60931:   var_1B0 = var_134.Fields
  loc_1E60941:   var_168 = CVar(var_1B0.Item("Split")) 'Address
  loc_1E6095B:   If (Proc_6_38_E68A98(var_168, var_116) = "No") Then
  loc_1E60972:     var_18C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F92078
  loc_1E60982:     unk_43FED1.Execute var_18C & "MK'", var_168, -1
  loc_1E6098D:     Set var_BC = var_1B0
  loc_1E609A0:   Else
  loc_1E609B4:     var_188 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E609C2:     Proc_6_17_EAA2B0(var_168, arg_C, var_188, var_1FC)
  loc_1E609CA:     var_1AC = -1 & var_168 
  loc_1E609E1:     unk_43FED1.Execute CStr(var_1AC & " And K.VoidYN='Y' Order By Depart.Name"), var_1B0, var_1B0
  loc_1E609EC:     Set var_BC = var_1B0
  loc_1E60A02:   End If
  loc_1E60A05: Else
  loc_1E60A14:   var_1B0 = var_134.Fields
  loc_1E60A1C:   var_1B8 = var_1B0.Item("Split")
  loc_1E60A24:   var_168 = CVar(var_1B8) 'Address
  loc_1E60A3E:   If (Proc_6_38_E68A98(var_168) = "No") Then
  loc_1E60A55:     var_18C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F92078
  loc_1E60A65:     unk_43FED1.Execute var_18C & "MK'", var_168, -1
  loc_1E60A70:     Set var_BC = var_1B0
  loc_1E60A83:   Else
  loc_1E60A97:     var_188 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E60AA5:     Proc_6_17_EAA2B0(var_168, arg_C, var_188, var_1FC)
  loc_1E60AAD:     var_1AC = -1 & var_168 
  loc_1E60AB6:     var_1D8 = var_1AC & " Order By Depart.Name" 
  loc_1E60AC4:     unk_43FED1.Execute CStr(var_1D8), var_1B0, var_1B0
  loc_1E60ACF:     Set var_BC = var_1B0
  loc_1E60AE5:   End If
  loc_1E60AE5: End If
  loc_1E60B01: var_178 = "Select Count(Distinct Depart.Code) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code Where K.DocID="
  loc_1E60B11: Proc_6_17_EAA2B0(var_168, arg_C, var_178, var_1D8, -1, var_1B0)
  loc_1E60B30: unk_43FED1.Execute CStr(var_1B8 & var_168 & vbNullString), 0, var_1E8
  loc_1E60B38: var_1FC = var_1B0.Fields
  loc_1E60B40:  = var_1B8.Item(var_1B0)
  loc_1E60B48:  = var_1E8.Value
  loc_1E60B53: Proc_6_39_E7C810(var_20C)
  loc_1E60B5C: var_10E = CInt(var_20C)
  loc_1E60B7A: ' Referenced from: 1E6A591
  loc_1E60B89: Loop Until Not(var_BC.EOF) 'do at: 1E5A594
  loc_1E60B8F: var_11C = vbNullString
  loc_1E60BA8: If (((var_116 = &HFF) And (var_10C = "Void Items")) And (MemVar_1F920B8 <= 0)) Then
  loc_1E60BAE:   var_11C = "CANCELLED"
  loc_1E60BD0:   var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E60BEA:   If (Proc_6_38_E68A98(var_168, var_10E) = "Yes") Then
  loc_1E60BF4:     var_188 = CVar("Select K.Sno,I.DispCode,I.Name as ItemName,I.Unit,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E60C02:     Proc_6_17_EAA2B0(var_168, arg_C)
  loc_1E60C81:     var_278 = var_188 & var_168 & " AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value 
  loc_1E60C8F:     var_8C = CStr(var_278 & "' And K.VoidYN='Y'")
  loc_1E60CB9:   Else
  loc_1E60CC0:     var_188 = CVar("Select K.Sno,I.DispCode,I.Name as ItemName,I.Unit,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E60CCE:     Proc_6_17_EAA2B0(var_168, arg_C)
  loc_1E60CE4:     var_8C = CStr(var_188 & var_168 & " And K.VoidYN='Y'")
  loc_1E60CF2:   End If
  loc_1E60CF5: Else
  loc_1E60D14:   var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E60D2E:   If (Proc_6_38_E68A98(var_168) = "Yes") Then
  loc_1E60D38:     var_188 = CVar("Select K.Sno,I.DispCode,I.Name as ItemName,I.Unit,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E60D46:     Proc_6_17_EAA2B0(var_168, arg_C)
  loc_1E60D6D:     var_1B0 = var_BC.Fields
  loc_1E60DC5:     var_278 = var_188 & var_168 & " AND Depart.Code='" & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value 
  loc_1E60DD3:     var_8C = CStr(var_278 & "'")
  loc_1E60DFD:   Else
  loc_1E60E04:     var_188 = CVar("Select K.Sno,I.DispCode,I.Name as ItemName,I.Unit,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E60E12:     Proc_6_17_EAA2B0(var_168, arg_C)
  loc_1E60E28:     var_8C = CStr(var_188 & var_168 & vbNullString)
  loc_1E60E36:   End If
  loc_1E60E36: End If
  loc_1E60E4C: unk_43FED1.Execute var_8C, var_168, -1
  loc_1E60E57: Set var_B8 = var_1B0
  loc_1E60E66: var_1B4 = var_B8.RecordCount
  loc_1E60E74: Loop Until (var_1B4 > 0) 'do at: 1E5A589
  loc_1E60EB3: If (var_134.Fields.Item("PrintType").Value = "Default") Then
  loc_1E60EE5:   var_12C = CStr(Trim(CVar(var_BC.Fields.Item("PrintType"))))
  loc_1E60EF5: Else
  loc_1E60F20:   var_12C = CStr(var_134.Fields.Item("PrintType").Value)
  loc_1E60F2D: End If
  loc_1E60F33: var_110 = (var_110 + 1)
  loc_1E60FAE: var_20C = (var_134.Fields.Item("NoOfKot").Value > 0) Or (var_12C = "ADJUSTABLE WINDOWS KOT PRINT") And (var_134.Fields.Item("NoOfKot").Value = 0)
  loc_1E60FC8: Loop Until CBool(var_20C) 'do at: 1E5A3B3
  loc_1E60FCE: var_29C = var_12C
  loc_1E60FD9: If (var_29C = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1E60FE0:   Set var_D8 = New 
  loc_1E60FEB:   Set var_D8 = Proc_260_24_EF25D4(var_D8, var_110)
  loc_1E60FF1:   Me.Recordset15.MoveFirst
  loc_1E60FF6:   ' Referenced from: 1E621AA
  loc_1E61005:   If Not(var_B4.EOF) Then
  loc_1E6100A:     var_92 = 0
  loc_1E61021:     var_1B0 = var_B4.Fields
  loc_1E610A0:     var_268 = "* NC LOT *"
  loc_1E610ED:     var_314 = "* KOT *"
  loc_1E61132:     var_344 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_1B0.Item("ShortName")), 1, var_92))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT")), var_1B0) = "Y"), var_268, "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", var_314))
  loc_1E6113B:     var_90 = CStr(var_344)
  loc_1E6117F:     If (var_92 = 0) Then
  loc_1E61185:       var_1E0 = vbNullString
  loc_1E611A0:       Proc_260_25_F113B8(var_D8, vbNullString, vbNullString)
  loc_1E611DC:       var_C0 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1E611F5:       var_1E0 = vbNullString
  loc_1E61204:       var_188 = (Space(1) + CVar(var_144))
  loc_1E61219:       Proc_260_25_F113B8(var_D8, vbNullString, CStr(CVar(Proc_6_38_E68A98(CVar(var_1B0.Item("ShortName")), 1, var_92))))
  loc_1E61246:       Proc_260_25_F113B8(var_D8, vbNullString, var_90, vbNullString)
  loc_1E6125A:       var_1E0 = vbNullString
  loc_1E61275:       Proc_260_25_F113B8(var_D8, vbNullString, vbNullString, var_1E0)
  loc_1E612A9:       Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, &H12)), CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1E612DD:       var_1E0 = vbNullString
  loc_1E612E6:       Proc_260_25_F113B8(var_D8, var_1E0, " KOT No.   : " & Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), &HA, var_1E0))
  loc_1E613A2:       var_34C = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME")), " KOT Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1E613B6:       Proc_260_25_F113B8(var_D8, vbNullString, " KOT Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), vbNullString), &HC) & " " & var_34C)
  loc_1E61448:       Proc_260_25_F113B8(var_D8, vbNullString, " Remarks : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks")), vbNullString), &H1E))
  loc_1E614DF:       var_22C = CVar(var_B4.Fields.Item("GuarAtt")) 'Address
  loc_1E614E6:       Proc_6_39_E7C810(var_268, var_22C)
  loc_1E6151E:       Proc_6_39_E7C810(var_314, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E6154C:       var_2C4 = (Space(&HA) + "Covers: ")
  loc_1E61556:       var_334 = (CVar(var_B4.Fields.Item("NCKOT")) + CVar(Proc_6_45_EAD428(CStr(var_314), 7)))
  loc_1E61571:       var_390 = IIf((var_268 <> 0), (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, 3)) = "LAU"), vbNullString)
  loc_1E61579:       var_348 = vbNullString
  loc_1E61588:       var_1AC = (Space(1) + CVar(Proc_6_45_EAD428(var_140, &HA)))
  loc_1E61591:       var_1D8 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))) + ": ")
  loc_1E6159B:       var_21C = (3 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")), vbNullString), 5)))
  loc_1E615A2:       var_3A0 = (CVar(Proc_6_45_EAD428(var_140, &HA)) & Space(1) & " AND Depart.Code='" & var_B4.Fields.Item("Code").Value & "'" + var_390)
  loc_1E615B7:       Proc_260_25_F113B8(var_D8, vbNullString, CStr(var_3A0))
  loc_1E61608:       var_1DC = vbNullString
  loc_1E6161D:       Proc_260_25_F113B8(var_D8, vbNullString, var_C0)
  loc_1E61629:     End If
  loc_1E6164F:     var_1AC = (var_1DC + CVar(Proc_6_45_EAD428("ITEM NAME", &H19, Space(1))))
  loc_1E61663:     var_1FC = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))) + Space(1))
  loc_1E6167D:     var_21C = (var_348 + CVar(Proc_6_52_EAD4F4("Qty", 6, CVar(var_B4.Fields.Item("TableNo")))))
  loc_1E61682:     var_AC = CStr(CVar(Proc_6_45_EAD428("ITEM NAME", &H19, Space(1))) & Space(1) & " AND Depart.Code='" & var_B4.Fields.Item("Code").Value & "'")
  loc_1E616A0:     var_1DC = vbNullString
  loc_1E616B5:     Proc_260_25_F113B8(var_D8, vbNullString, var_AC)
  loc_1E616C4:     var_1DC = vbNullString
  loc_1E616D9:     Proc_260_25_F113B8(var_D8, vbNullString, var_C0)
  loc_1E616EB:     var_92 = (var_92 + 4)
  loc_1E616F1:     var_B8.MoveFirst
  loc_1E616F6:     ' Referenced from: 1E61B61
  loc_1E61705:     If Not(var_B8.EOF) Then
  loc_1E61763:       var_1DC = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")), var_108, (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split")), &H12, var_1DC) = "Yes"))
  loc_1E6177E:       If (CVar(var_B4.Fields.Item("TableNo")) And (var_1DC <> var_1DC)) Then
  loc_1E617A9:         var_108 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")))
  loc_1E617B5:         var_1E4 = vbNullString
  loc_1E617C2:         var_18C = "*" & var_108
  loc_1E617D9:         Proc_260_25_F113B8(var_D8, vbNullString)
  loc_1E617EF:         var_92 = (var_92 + 1)
  loc_1E617F2:       End If
  loc_1E6183F:       Proc_6_39_E7C810(var_22C, CVar(var_B8.Fields.Item("qty")), &H12)
  loc_1E61876:       var_2A0 = var_B8.Fields
  loc_1E618AE:       var_324 = (var_2A0.Item("Cancel").Value = "Y") 'Variant
  loc_1E618E2:       var_1D8 = (1 + CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1E618F6:       var_20C = (Space(1) + Space(1))
  loc_1E6190C:       var_298 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_22C, "0")), 3, CVar(Proc_6_52_EAD4F4("Qty", 6, CVar(var_B4.Fields.Item("TableNo")))))) 'String
  loc_1E6190F:       var_2C4 = (var_18C & "*" + var_298)
  loc_1E61928:       var_3A0 = (CVar(var_B4.Fields.Item("NCKOT")) + CVar(Proc_6_52_EAD4F4(CStr(IIf(var_324, "Void", vbNullString)), 5)))
  loc_1E61987:       Proc_260_25_F113B8(var_D8, vbNullString, CStr(var_3A0))
  loc_1E61999:       var_92 = (var_92 + 1)
  loc_1E619D5:       If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1E61A06:         var_348 = vbNullString
  loc_1E61A2D:         Proc_260_25_F113B8(var_D8, vbNullString, "(" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), vbNullString) & ")")
  loc_1E61A4D:         var_92 = (var_92 + 1)
  loc_1E61A50:       End If
  loc_1E61A5A:       If (&H12 = (&H45 - var_A6)) Then
  loc_1E61A75:         Proc_260_25_F113B8(var_D8, vbNullString, var_C0, vbNullString)
  loc_1E61A9F:         Proc_260_25_F113B8(var_D8, vbNullString, " Contd.", vbNullString)
  loc_1E61AB3:         var_94 = (var_94 + 1)
  loc_1E61AD3:         Proc_260_25_F113B8(var_D8, vbNullString, var_90, vbNullString, 0)
  loc_1E61AFC:         Proc_260_25_F113B8(var_D8, vbNullString, var_C0, vbNullString, &H12)
  loc_1E61B20:         Proc_260_25_F113B8(var_D8, vbNullString, var_AC, vbNullString)
  loc_1E61B44:         Proc_260_25_F113B8(var_D8, vbNullString, var_C0, vbNullString)
  loc_1E61B56:         var_92 = (var_92 + 4)
  loc_1E61B59:       End If
  loc_1E61B5C:       var_B8.MoveNext
  loc_1E61B61:       GoTo loc_1E616F6
  loc_1E61B64:     End If
  loc_1E61B6E:     If (&H12 < (&H45 - var_A6)) Then
  loc_1E61B71:       ' Referenced from: 1E61BB3
  loc_1E61B7B:       If (&H12 = (&H45 - var_A6)) Then
  loc_1E61B9C:         Proc_260_25_F113B8(var_D8, vbNullString, vbNullString, vbNullString, &H12)
  loc_1E61BB0:         var_92 = (var_92 + 1)
  loc_1E61BB3:         GoTo loc_1E61B71
  loc_1E61BB6:       End If
  loc_1E61BB6:     End If
  loc_1E61BCE:     Proc_260_25_F113B8(var_D8, vbNullString, var_C0, vbNullString, &H12)
  loc_1E61C1C:     var_348 = vbNullString
  loc_1E61C3C:     Proc_260_25_F113B8(var_D8, vbNullString, " Waiter Name  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), 1, &H12), &H14))
  loc_1E61C97:     Proc_260_25_F113B8(var_D8, vbNullString, CStr(" ***  " & Trim(var_CC) & "  ***"), vbNullString)
  loc_1E61CCD:     var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E61CE7:     If (Proc_6_38_E68A98(var_168, var_348) = "Yes") Then
  loc_1E61CFE:       var_188 = CVar("Select Count(Distinct Printed) From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E61D0C:       Proc_6_17_EAA2B0(var_168, arg_C, var_188, var_324)
  loc_1E61D14:       var_1AC = -1 & var_168 
  loc_1E61D38:       var_21C = " ***  " & Trim(var_CC) & "  ***" & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E61D4E:       var_1B0 = var_BC.Fields
  loc_1E61DAF:       var_314 = var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E61DBD:       unk_43FED1.Execute CStr(var_314), var_2A0, var_348
  loc_1E61DC8:       Set var_E0 = var_2A0
  loc_1E61DFF:     Else
  loc_1E61E1C:       Proc_6_17_EAA2B0(var_168, arg_C, "Select Count(Distinct Printed) from kot where docid=", var_21C)
  loc_1E61E24:       var_188 = -1 & var_168 
  loc_1E61E56:       unk_43FED1.Execute CStr(var_188 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')"), var_1B0, var_1E4
  loc_1E61E61:       Set var_E0 = var_1B0
  loc_1E61E7B:     End If
  loc_1E61EB7:     If (var_E0.Fields.Item(0).Value > 1) Then
  loc_1E61EBD:       var_1E4 = vbNullString
  loc_1E61ECA:       var_18C = " ***  " & "Changed KOT"
  loc_1E61EE1:       Proc_260_25_F113B8(var_D8, vbNullString)
  loc_1E61EF4:     Else
  loc_1E61F13:       var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E61F2D:       If (Proc_6_38_E68A98(var_168, var_18C & "  ***") = "Yes") Then
  loc_1E61F44:         var_188 = CVar("Select Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E61F52:         Proc_6_17_EAA2B0(var_168, arg_C, var_188, var_324)
  loc_1E61F5A:         var_1AC = -1 & var_168 
  loc_1E61F7E:         var_21C = var_188 & " AND SNO In (Select SNo From (" & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E61F94:         var_1B0 = var_BC.Fields
  loc_1E62003:         unk_43FED1.Execute CStr(var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_2A0, var_1E4
  loc_1E6200E:         Set var_E0 = var_2A0
  loc_1E62045:       Else
  loc_1E62052:         var_178 = "Select Printed from kot where docid="
  loc_1E62062:         Proc_6_17_EAA2B0(var_168, arg_C, var_178)
  loc_1E6206E:         var_19C = " AND SNO In (Select SNo From ("
  loc_1E6209C:         unk_43FED1.Execute CStr(var_21C & var_168 & var_19C & var_B8.Source & ")Q)"), -1, var_1B0
  loc_1E620A7:         Set var_E0 = var_1B0
  loc_1E620C1:       End If
  loc_1E620C4:       var_158 = 0
  loc_1E620FA:       If (Proc_6_38_E68A98(CVar(var_E0.Fields.Item(var_158))) = "Y") Then
  loc_1E62100:         var_1E4 = vbNullString
  loc_1E6210D:         var_18C = " ***  " & "DUPLICATE KOT"
  loc_1E62124:         Proc_260_25_F113B8(var_D8, vbNullString)
  loc_1E62137:       Else
  loc_1E6213A:         var_1E0 = vbNullString
  loc_1E62155:         Proc_260_25_F113B8(var_D8, vbNullString, vbNullString)
  loc_1E62163:       End If
  loc_1E62163:     End If
  loc_1E62168:     Set var_E0 = Nothing
  loc_1E62192:     Proc_260_25_F113B8(var_D8, vbNullString, "** " & MemVar_1F9221C & " **", vbNullString)
  loc_1E621A5:     var_B4.MoveNext
  loc_1E621AA:     GoTo loc_1E60FF6
  loc_1E621AD:   End If
  loc_1E621B0:   var_DC = "WinKOTPrint"
  loc_1E621D0:   var_1E4 = MemVar_1F920B4 & "\" & var_DC & ".ttx"
  loc_1E621D7:   Set var_1B0 = var_D8 
  loc_1E621DE:   CreateFieldDefFile(var_1B0, var_1E4, &HFF)
  loc_1E62209:   var_18C = MemVar_1F920B4 & "\"
  loc_1E62217:   var_1E0 = var_18C & var_DC & ".RPT"
  loc_1E62220:   Call 0.Method_arg_1C (var_1E0, var_158, var_1B0)
  loc_1E6222B:   MemVar_1F921E4 = var_1B0
  loc_1E62254:   Call 0.Method_arg_64 (var_1B0, CVar(var_1B0), var_178, var_19C)
  loc_1E6225C:   Call 0.Method_arg_2C (var_1E0, var_18C & "  ***")
  loc_1E622BC:   var_1DC = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType"))) = "Default"))
  loc_1E622DA:   If (var_1E4 And (var_1DC <> vbNullString)) Then
  loc_1E62327:     If CBool(Ucase(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1E62356:       Proc_96_98_F0F978(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))
  loc_1E62364:     End If
  loc_1E62367:   Else
  loc_1E623DD:     If ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType"))) <> "Default") And (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer"))) <> vbNullString)) Then
  loc_1E6242A:       If CBool(Ucase(CVar(Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1E62459:         Proc_96_98_F0F978(Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer"))))
  loc_1E62467:       End If
  loc_1E62467:     End If
  loc_1E62467:   End If
  loc_1E62497:   var_178 = False
  loc_1E624A2:   Call 0.Method_Me8 (var_178, CVar(var_134.Fields.Item("NoOfKot")), var_19C)
  loc_1E624AF:   var_12E = &HFF
  loc_1E624B7:   Set var_D8 = Nothing
  loc_1E624BA:   GoTo loc_1E5A3B3
  loc_1E624BD: End If
  loc_1E624C5: If (var_29C = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1E624CB:   var_B4.MoveFirst
  loc_1E624D0:   ' Referenced from: 1E63554
  loc_1E624DF:   If Not(var_B4.EOF) Then
  loc_1E624E5:     var_158 = "ShortName"
  loc_1E62501:     var_168 = CVar(var_B4.Fields.Item(var_158)) 'Address
  loc_1E62515:     var_1D8 = 3
  loc_1E62538:     var_1C8 = "NCKOT"
  loc_1E62544:     var_1E8 = var_B4.Fields
  loc_1E6254C:     var_1EC = var_1E8.Item(var_1C8)
  loc_1E62581:     var_248 = (Proc_6_38_E68A98(CVar(var_1EC), var_1C8) = "Y")
  loc_1E625EE:     var_19C = "LAU"
  loc_1E62602:     var_344 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(var_168, var_12E))), 1, var_1D8)) = var_19C), IIf(var_248, "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1E6260B:     var_90 = CStr(var_344)
  loc_1E6264C:     var_DC = "KOTPrint"
  loc_1E62673:     Set var_1B0 = var_B8 
  loc_1E6267A:     CreateFieldDefFile(var_1B0, MemVar_1F920B4 & "\" & var_DC & ".ttx")
  loc_1E62686:     Set var_B8 = var_1B0
  loc_1E626BC:     Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_DC & ".RPT", var_158, var_1B0)
  loc_1E626C7:     MemVar_1F921E4 = var_1B0
  loc_1E626F0:     Call 0.Method_arg_64 (var_1B0, CVar(var_B8), var_178)
  loc_1E626F8:     Call 0.Method_arg_2C (var_19C, &HFF)
  loc_1E62706:     Call 0.Method_arg_150 (var_248)
  loc_1E62728:     Proc_6_17_EAA2B0(var_168, arg_C, "Select Count(Distinct Printed) from kot where docid=")
  loc_1E62747:     unk_43FED1.Execute CStr(var_1D8 & var_168 & " AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')"), -1, var_1B0
  loc_1E62778:     var_1B0 = var_1B0.Fields
  loc_1E62788:     var_168 = var_1B0.Item(0).Value
  loc_1E627A2:     If (var_168 > 1) Then
  loc_1E627A8:       var_D0 = "Changed KOT"
  loc_1E627AE:     Else
  loc_1E627CB:       Proc_6_17_EAA2B0(var_168, arg_C, "Select Printed from kot where docid=")
  loc_1E627EA:       unk_43FED1.Execute CStr(var_1D8 & var_168 & vbNullString), -1, var_1B0
  loc_1E62818:       var_1B0 = var_1B0.Fields
  loc_1E62820:       var_1B8 = var_1B0.Item(0)
  loc_1E62831:       var_18C = Proc_6_38_E68A98(CVar(var_1B8))
  loc_1E62842:       If (var_18C = "Y") Then
  loc_1E62848:         var_D0 = "DUPLICATE KOT"
  loc_1E6284E:       Else
  loc_1E62851:         var_D0 = vbNullString
  loc_1E62854:       End If
  loc_1E62854:     End If
  loc_1E62859:     Set var_E0 = Nothing
  loc_1E6286D:     Call 0.Method_arg_90 (var_1B0, var_1B4)
  loc_1E62875:     Call 0.Method_arg_24 (var_AE)
  loc_1E62881:     For var_3A4 =  To CInt(var_1B4): 1 = var_3A4 'Integer
  loc_1E6289A:       Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E628A2:       Call 0.Method_arg_20 (var_1B8)
  loc_1E628AA:       Call 0.Method_arg_30 (var_18C)
  loc_1E628C0:       var_3B4 = Ucase(CVar(var_18C)) 'Variant
  loc_1E628F0:       If (var_3B4 = Ucase("comp_name")) Then
  loc_1E62914:         Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E6291C:         Call 0.Method_arg_20 (var_1B8)
  loc_1E62924:         Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_1E6293A:       Else
  loc_1E6295C:         If (var_3B4 = Ucase("comp_add1")) Then
  loc_1E62980:           Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E62988:           Call 0.Method_arg_20 (var_1B8)
  loc_1E62990:           Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_1E629A6:         Else
  loc_1E629C8:           If (var_3B4 = Ucase("comp_pin")) Then
  loc_1E629EC:             Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E629F4:             Call 0.Method_arg_20 (var_1B8)
  loc_1E629FC:             Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_1E62A12:           Else
  loc_1E62A34:             If (var_3B4 = Ucase("comp_GSTIN")) Then
  loc_1E62A58:               Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E62A60:               Call 0.Method_arg_20 (var_1B8)
  loc_1E62A68:               Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_1E62A7E:             Else
  loc_1E62AA0:               If (var_3B4 = Ucase("RestName")) Then
  loc_1E62AC4:                 Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E62ACC:                 Call 0.Method_arg_20 (var_1B8)
  loc_1E62AD4:                 Call 0.Method_arg_38 ("'" & var_144 & "'")
  loc_1E62AEA:               Else
  loc_1E62B0C:                 If Not (var_3B4 = Ucase("mTitle")) Then
  loc_1E62B31:                   If (var_3B4 = Ucase("Title")) Then
  loc_1E62B34:                   End If
  loc_1E62B55:                   Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E62B5D:                   Call 0.Method_arg_20 (var_1B8)
  loc_1E62B65:                   Call 0.Method_arg_38 ("'" & var_90 & "'")
  loc_1E62B7B:                 Else
  loc_1E62B7E:                   Do 'loop at:             1E72A48
  loc_1E62B83:                   var_168 = "Header1"
  loc_1E62B9D:                   If (var_3B4 = Ucase(var_168)) Then
  loc_1E62BAB:                     Proc_6_17_EAA2B0(var_168)
  loc_1E62BC7:                     Call 0.Method_arg_90 (var_1B0, CLng(var_AE), var_1B8)
  loc_1E62BCF:                     Call 0.Method_arg_20 (CStr(var_168))
  loc_1E62BD7:                     Call 0.Method_arg_38 (var_F4)
  loc_1E62BEC:                   Else
  loc_1E62BF4:                     var_168 = "Header2"
  loc_1E62C0E:                     If (var_3B4 = Ucase(var_168)) Then
  loc_1E62C1C:                       Proc_6_17_EAA2B0(var_168)
  loc_1E62C38:                       Call 0.Method_arg_90 (var_1B0, CLng(var_AE), var_1B8)
  loc_1E62C40:                       Call 0.Method_arg_20 (CStr(var_168))
  loc_1E62C48:                       Call 0.Method_arg_38 (var_F8)
  loc_1E62C5D:                     Else
  loc_1E62C65:                       var_168 = "Header3"
  loc_1E62C7F:                       If (var_3B4 = Ucase(var_168)) Then
  loc_1E62C8D:                         Proc_6_17_EAA2B0(var_168)
  loc_1E62CA9:                         Call 0.Method_arg_90 (var_1B0, CLng(var_AE), var_1B8)
  loc_1E62CB1:                         Call 0.Method_arg_20 (CStr(var_168))
  loc_1E62CB9:                         Call 0.Method_arg_38 (var_FC)
  loc_1E62CCE:                       Else
  loc_1E62CD6:                         var_168 = "Header4"
  loc_1E62CF0:                         If (var_3B4 = Ucase(var_168)) Then
  loc_1E62CFE:                           Proc_6_17_EAA2B0(var_168)
  loc_1E62D1A:                           Call 0.Method_arg_90 (var_1B0, CLng(var_AE), var_1B8)
  loc_1E62D22:                           Call 0.Method_arg_20 (CStr(var_168))
  loc_1E62D2A:                           Call 0.Method_arg_38 (var_100)
  loc_1E62D3F:                         Else
  loc_1E62D50:                           var_188 = Ucase("KotNo")
  loc_1E62D61:                           If (var_3B4 = var_188) Then
  loc_1E62D8F:                             Proc_6_39_E7C810(var_188, CVar(var_B4.Fields.Item("VNo")))
  loc_1E62D9B:                             var_19C = "'"
  loc_1E62DB8:                             Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E62DC0:                             Call 0.Method_arg_20 (var_1EC)
  loc_1E62DC8:                             Call 0.Method_arg_38 (CStr("'" & var_188 & var_19C))
  loc_1E62DE7:                           Else
  loc_1E62E09:                             If (var_3B4 = Ucase("KotDate")) Then
  loc_1E62E55:                               Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E62E5D:                               Call 0.Method_arg_20 (var_1EC)
  loc_1E62E65:                               Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))) & "'")
  loc_1E62E82:                             Else
  loc_1E62EA4:                               If (var_3B4 = Ucase("KotTime")) Then
  loc_1E62EAD:                                 var_158 = "VTIME"
  loc_1E62EB2:                                 ' Referenced from:                         1E72E13
  loc_1E62EF0:                                 Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E62EF8:                                 Call 0.Method_arg_20 (var_1EC)
  loc_1E62F00:                                 Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item(var_158))) & "'")
  loc_1E62F1D:                               Else
  loc_1E62F3F:                                 If (var_3B4 = Ucase("Remarks")) Then
  loc_1E62F8B:                                   Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E62F93:                                   Call 0.Method_arg_20 (var_1EC)
  loc_1E62F9B:                                   Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))) & "'")
  loc_1E62FB8:                                 Else
  loc_1E62FDA:                                   If (var_3B4 = Ucase("Card_No")) Then
  loc_1E63026:                                     Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E6302E:                                     Call 0.Method_arg_20 (var_1EC)
  loc_1E63036:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CardNo"))) & "'")
  loc_1E63053:                                   Else
  loc_1E63075:                                     If (var_3B4 = Ucase("Member_Name")) Then
  loc_1E6308A:                                       var_1B0 = var_B4.Fields
  loc_1E63092:                                       var_1B8 = var_1B0.Item("MemName")
  loc_1E630C1:                                       Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E630C9:                                       Call 0.Method_arg_20 (var_1EC)
  loc_1E630D1:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_1B8)) & "'")
  loc_1E630EE:                                     Else
  loc_1E63110:                                       If (var_3B4 = Ucase("TableTitle")) Then
  loc_1E6312E:                                         Do 'loop at:                                 1E73052
  loc_1E63134:                                         Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E6313C:                                         Call 0.Method_arg_20 (var_1B8)
  loc_1E63144:                                         Call 0.Method_arg_38 ("'" & var_140 & "'")
  loc_1E6315A:                                       Else
  loc_1E6317C:                                         If (var_3B4 = Ucase("TableNo")) Then
  loc_1E631C8:                                           Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E631D0:                                           Call 0.Method_arg_20 (var_1EC)
  loc_1E631D8:                                           Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))) & "'")
  loc_1E631F5:                                         Else
  loc_1E63217:                                           If (var_3B4 = Ucase("Steward")) Then
  loc_1E6322C:                                             var_1B0 = var_B4.Fields
  loc_1E63234:                                             var_1B8 = var_1B0.Item("WaiterName")
  loc_1E63263:                                             Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E6326B:                                             Call 0.Method_arg_20 (var_1EC)
  loc_1E63273:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_1B8)) & "'")
  loc_1E63290:                                           Else
  loc_1E632B2:                                             If (var_3B4 = Ucase("KotStatus")) Then
  loc_1E632D6:                                               Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E632DE:                                               Call 0.Method_arg_20 (var_1B8)
  loc_1E632E6:                                               Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1E632FC:                                             Else
  loc_1E6331E:                                               If (var_3B4 = Ucase("KotRemark")) Then
  loc_1E63342:                                                 Call 0.Method_arg_90 (var_1B0, CLng(var_AE))
  loc_1E6334A:                                                 Call 0.Method_arg_20 (var_1B8)
  loc_1E63352:                                                 Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_1E63368:                                               Else
  loc_1E63379:                                                 var_188 = Ucase("Covers")
  loc_1E6338A:                                                 If (var_3B4 = var_188) Then
  loc_1E6338D:                                                   Do 'loop at:                                           1E7332F
  loc_1E633B6:                                                   Proc_6_39_E7C810(var_188, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E633DE:                                                   Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E633E6:                                                   Call 0.Method_arg_20 (var_1EC)
  loc_1E633EE:                                                   Call 0.Method_arg_38 ("'" & CStr(var_188) & "'")
  loc_1E63411:                                                 Else
  loc_1E63433:                                                   If (var_3B4 = Ucase("NCType")) Then
  loc_1E6347F:                                                     Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E63487:                                                     Call 0.Method_arg_20 (var_1EC)
  loc_1E6348F:                                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCType"))) & "'")
  loc_1E634AC:                                                   Else
  loc_1E634CE:                                                     If (var_3B4 = Ucase("User_Name")) Then
  loc_1E6351A:                                                       Call 0.Method_arg_90 (var_1E8, CLng(var_AE))
  loc_1E63522:                                                       Call 0.Method_arg_20 (var_1EC)
  loc_1E6352A:                                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("U_Name"))) & "'")
  loc_1E63544:                                                     End If
  loc_1E63544:                                                   End If
  loc_1E63544:                                                 End If
  loc_1E63544:                                               End If
  loc_1E63544:                                             End If
  loc_1E63544:                                           End If
  loc_1E63544:                                         End If
  loc_1E63544:                                       End If
  loc_1E63544:                                     End If
  loc_1E63544:                                   End If
  loc_1E63544:                                 End If
  loc_1E63544:                               End If
  loc_1E63544:                             End If
  loc_1E63544:                           End If
  loc_1E63544:                         End If
  loc_1E63544:                       End If
  loc_1E63544:                     End If
  loc_1E63544:                   End If
  loc_1E63544:                 End If
  loc_1E63544:               End If
  loc_1E63544:             End If
  loc_1E63544:           End If
  loc_1E63544:         End If
  loc_1E63544:       End If
  loc_1E63547:     Next var_3A4 'Integer
  loc_1E6354F:     var_B4.MoveNext
  loc_1E63554:     GoTo loc_1E624D0
  loc_1E63557:   End If
  loc_1E635CD:   If ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType"))) = "Default") And (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString)) Then
  loc_1E6361A:     If CBool(Ucase(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1E63649:       Proc_96_98_F0F978(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))
  loc_1E63657:     End If
  loc_1E6365A:   Else
  loc_1E636D0:     If ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType"))) <> "Default") And (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer"))) <> vbNullString)) Then
  loc_1E636FB:       var_188 = CVar(Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer")))) 'String
  loc_1E6371D:       If CBool(Ucase(var_188) <> "PRN") Then
  loc_1E6374C:         Proc_96_98_F0F978(Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer"))))
  loc_1E6375A:       End If
  loc_1E6375A:     End If
  loc_1E6375A:   End If
  loc_1E63779:   var_168 = CVar(var_134.Fields.Item("NoOfKot")) 'Address
  loc_1E63780:   Proc_6_39_E7C810(var_188)
  loc_1E6379A:   If (var_188 = 0) Then
  loc_1E637A2:     Set var_1B8 = Nothing
  loc_1E637BE:     Set var_1B0 = MemVar_1F921E4 
  loc_1E637CA:     Proc_6_99_1483714(var_1B0, 0, "KOT ENTRY")
  loc_1E637D5:     MemVar_1F921E4 = var_1B0
  loc_1E637E6:   Else
  loc_1E6380C:     Proc_6_39_E7C810(var_188, CVar(var_134.Fields.Item("NoOfKot")), &HFF)
  loc_1E63826:     If (var_188 > 0) Then
  loc_1E6384F:       Proc_6_39_E7C810(var_188, CVar(var_134.Fields.Item("NoOfKot")))
  loc_1E6386F:       Call 0.Method_Me8 (False, var_188, var_19C, var_1C8)
  loc_1E6387E:     End If
  loc_1E6387E:   End If
  loc_1E63880:   var_12E = &HFF
  loc_1E63883:   GoTo loc_1E5A3B3
  loc_1E63886: End If
  loc_1E6388E: If (var_29C = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1E63893:   Close 1
  loc_1E638D1:   Open "C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1E638E5:   var_B4.MoveFirst
  loc_1E638EA:   ' Referenced from: 1E64CB8
  loc_1E638F9:   If Not(var_B4.EOF) Then
  loc_1E638FE:     var_92 = 0
  loc_1E6391D:     var_1B8 = var_B4.Fields.Item("ShortName")
  loc_1E639E1:     var_314 = "* KOT *"
  loc_1E63A26:     var_344 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_1B8), 1, var_92, var_12E))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT")), (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT")), var_248) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT")), var_1B8) = "Y"), "* NC KOT *", var_314))
  loc_1E63A2F:     var_90 = CStr(var_344)
  loc_1E63A73:     If (var_92 = 0) Then
  loc_1E63A78:       Print 1
  loc_1E63AAC:       var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1E63ABD:       If (var_F4 <> vbNullString) Then
  loc_1E63AE6:         var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1E63AEC:         Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_1B8), 1, var_92, var_12E)))
  loc_1E63AFE:       End If
  loc_1E63B06:       If (var_F8 <> vbNullString) Then
  loc_1E63B2F:         var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1E63B35:         Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_1B8), 1, var_92, var_12E)))
  loc_1E63B47:       End If
  loc_1E63B4F:       If (var_FC <> vbNullString) Then
  loc_1E63B72:         Do 'loop at: 1E73AD4
  loc_1E63B78:         var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H28)))
  loc_1E63B7E:         Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_1B8), 1, var_92, var_12E)))
  loc_1E63B90:       End If
  loc_1E63B98:       If (var_100 <> vbNullString) Then
  loc_1E63BC1:         var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_100, &H28)))
  loc_1E63BC7:         Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_1B8), 1, var_92, var_12E)))
  loc_1E63BD9:       End If
  loc_1E63C15:       If CBool(var_C8.Fields.Item("SaleBillTokenHeader1").Value <> vbNullString) Then
  loc_1E63C77:         var_1D8 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("SaleBillTokenHeader1").Value), &H2A)))
  loc_1E63C7E:         var_20C = (3 + Chr(&H12))
  loc_1E63C84:         Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("SaleBillTokenHeader1")), 1, var_92, var_12E))), 1, 3))
  loc_1E63CA7:       End If
  loc_1E63CA9:       Print 1
  loc_1E63CD0:       Print 1, Proc_260_1_10A5350(var_144, "D")
  loc_1E63D00:       Print 1, Proc_260_1_10A5350(var_90, "D", &H28)
  loc_1E63D16:       Print 1
  loc_1E63D1E:       Print 1
  loc_1E63D57:       Proc_6_39_E7C810(3, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1E63D79:       var_188 = (Chr(&HF) + "KOT No.   : ")
  loc_1E63D83:       var_20C = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EAD428(CStr(3), &HA)))
  loc_1E63D89:       Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VNo")), 1, &H12, var_12E))), 1, 3))
  loc_1E63E3B:       var_188 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1E63E45:       var_1FC = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), &H28), &HC)))
  loc_1E63E4E:       var_20C = (CVar(Proc_6_45_EAD428(CStr(3), &HA)) + " ")
  loc_1E63E58:       var_268 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), 1, &H12, var_12E))), 1, 3)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1E63E5E:       Print 1, "* NC LOT *"
  loc_1E63EF0:       var_188 = (Chr(&HF) + "Remarks : ")
  loc_1E63EFA:       var_1FC = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))), &H32)))
  loc_1E63F01:       var_21C = (CVar(Proc_6_45_EAD428(CStr(3), &HA)) + Chr(&H12))
  loc_1E63F07:       Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1E63FAC:       Proc_6_39_E7C810("* NC LOT *", CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E63FE4:       Proc_6_39_E7C810(var_314, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E64012:       var_2C4 = (Space(&HA) + "Covers: ")
  loc_1E6401C:       var_334 = (CVar(var_B4.Fields.Item("NCKOT")) + CVar(Proc_6_45_EAD428(CStr(var_314), 7)))
  loc_1E64037:       var_390 = IIf(("* NC LOT *" <> 0), (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")), 1, &H12, var_12E))), 1, 3)) = "LAU"), vbNullString)
  loc_1E64045:       var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_140, &HA)))
  loc_1E6404E:       var_1D8 = (CVar(var_B4.Fields.Item("Remarks")) + ": ")
  loc_1E64055:       var_20C = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))), 5)) 'String
  loc_1E64058:       var_21C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))), &H32)) + var_20C)
  loc_1E6405F:       var_3A0 = (CVar(var_B4.Fields.Item("VTIME")) + var_390)
  loc_1E64065:       Print 1, var_3A0
  loc_1E640C4:       var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E640CA:       Print 1, CVar(Proc_6_45_EAD428(var_140, &HA))
  loc_1E640D7:     End If
  loc_1E640FD:     var_1AC = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1E64117:     var_1FC = (CVar(var_B4.Fields.Item("Remarks")) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1E6411C:     var_AC = CStr(CVar(var_B4.Fields.Item("TableNo")))
  loc_1E64149:     var_188 = (Chr(&HF) + CVar(var_AC))
  loc_1E6414F:     Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1E64172:     var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E64178:     Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1E6418B:     var_92 = (var_92 + 4)
  loc_1E64191:     var_B8.MoveFirst
  loc_1E64196:     ' Referenced from: 1E64628
  loc_1E641A5:     If Not(var_B8.EOF) Then
  loc_1E641C7:       var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E641D0:       Do 'loop at: 1E73659
  loc_1E6421E:       If (var_168 And ((Proc_6_38_E68A98(var_168, &H12) = "Yes") <> Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")), var_108))) Then
  loc_1E64249:         var_108 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")))
  loc_1E64267:         var_188 = (Chr(&HF) + "*")
  loc_1E64271:         var_1AC = (CVar(var_B8.Fields.Item("Kitchen")) + CVar(var_108))
  loc_1E6427A:         var_1D8 = (CVar(var_B4.Fields.Item("Remarks")) + "*")
  loc_1E64280:         Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1E64297:         var_92 = (var_92 + 1)
  loc_1E6429A:       End If
  loc_1E642E7:       Proc_6_39_E7C810(var_20C, CVar(var_B8.Fields.Item("qty")))
  loc_1E6431E:       var_2A0 = var_B8.Fields
  loc_1E64338:       var_324 = vbNullString
  loc_1E6438A:       var_1D8 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1E643A3:       var_278 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_20C, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6)))))
  loc_1E643BC:       var_380 = ("* LOT *" + CVar(Proc_6_52_EAD4F4(CStr(IIf((var_2A0.Item("Cancel").Value = "Y"), "Void", var_324)), 6)))
  loc_1E64415:       var_188 = (Chr(&HF) + CVar(CStr(vbNullString)))
  loc_1E6441B:       Print 1, Space(3)
  loc_1E6442E:       var_92 = (var_92 + 1)
  loc_1E6446A:       If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1E644AD:         var_188 = (Chr(&HF) + "(")
  loc_1E644B7:         var_1FC = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))))
  loc_1E644C0:         var_20C = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1E644C6:         Print 1, var_20C
  loc_1E644E7:         var_92 = (var_92 + 1)
  loc_1E644EA:       End If
  loc_1E644F4:       If (&H12 = (&H45 - var_A6)) Then
  loc_1E6450D:         var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E64513:         Print 1, Space(3)
  loc_1E64525:         Print 1, "Contd."
  loc_1E6453D:         Print 1, Chr(&HC)
  loc_1E6454C:         var_94 = (var_94 + 1)
  loc_1E64551:         var_92 = 0
  loc_1E64583:         var_1DC = Proc_260_1_10A5350(var_90, "B", &H28, Proc_260_2_136D614(1, Proc_260_2_136D614(1, var_92, &H28, var_92), &H28, Proc_260_2_136D614(1, var_92, &H28, var_92)))
  loc_1E64588:         Print 1, var_1DC
  loc_1E64599:         var_92 = &H12
  loc_1E645B2:         var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E645B8:         Print 1, Space(3)
  loc_1E645DB:         var_188 = (Chr(&HF) + CVar(var_AC))
  loc_1E645E1:         Print 1, Space(3)
  loc_1E64604:         var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E6460A:         Print 1, Space(3)
  loc_1E6461D:         var_92 = (var_92 + 4)
  loc_1E64620:       End If
  loc_1E64623:       var_B8.MoveNext
  loc_1E64628:       GoTo loc_1E64196
  loc_1E6462B:     End If
  loc_1E64635:     If (var_92 < (&H45 - var_A6)) Then
  loc_1E64638:       ' Referenced from: 1E64659
  loc_1E64642:       If (var_92 = (&H45 - var_A6)) Then
  loc_1E6464A:         Print 1, vbNullString
  loc_1E64656:         var_92 = (var_92 + 1)
  loc_1E64659:         GoTo loc_1E64638
  loc_1E6465C:       End If
  loc_1E6465C:     End If
  loc_1E64672:     var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E64678:     Print 1, Space(3)
  loc_1E646D9:     var_188 = (Chr(&HF) + "Waiter Name  : ")
  loc_1E646E0:     var_1D8 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, 1)) 'String
  loc_1E646E3:     var_1FC = (Space(3) + var_1D8)
  loc_1E646E9:     Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_1E6472D:     var_188 = (Chr(&HF) + "***  ")
  loc_1E64743:     Print 1, Space(3) & Trim(var_CC) & "  ***"
  loc_1E64775:     var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E6478F:     If (Proc_6_38_E68A98(var_168, var_92) = "Yes") Then
  loc_1E647A6:       var_188 = CVar("Select Count(Distinct Printed) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E647B4:       Proc_6_17_EAA2B0(var_168, arg_C, var_188, var_324)
  loc_1E647BC:       var_1AC = -1 & var_168 
  loc_1E647E0:       var_21C = Trim(var_CC) & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E647F6:       var_1B0 = var_BC.Fields
  loc_1E64857:       var_314 = var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E64865:       unk_43FED1.Execute CStr(var_314), var_2A0, var_92
  loc_1E64870:       Set var_E0 = var_2A0
  loc_1E648A7:     Else
  loc_1E648C4:       Proc_6_17_EAA2B0(var_168, arg_C, "Select Count(Distinct Printed) from kot where docid=")
  loc_1E648F0:       var_20C = var_21C & var_168 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E648FE:       unk_43FED1.Execute CStr(var_20C), -1, var_1B0
  loc_1E64909:       Set var_E0 = var_1B0
  loc_1E64923:     End If
  loc_1E64945:     var_168 = var_E0.Fields.Item(0).Value
  loc_1E6494D:     var_178 = 1
  loc_1E6495F:     ' Referenced from: 1E748C0
  loc_1E6495F:     If (var_168 > var_178) Then
  loc_1E6499D:       Print 1, Proc_260_1_10A5350(Proc_6_45_EAD428("Changed KOT"), "D")
  loc_1E649B5:     Else
  loc_1E649D4:       var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E649EE:       If (Proc_6_38_E68A98(var_168, &H28) = "Yes") Then
  loc_1E64A05:         var_188 = CVar("Select Printed From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E64A13:         Proc_6_17_EAA2B0(var_168, arg_C, var_188, var_324)
  loc_1E64A1B:         var_1AC = -1 & var_168 
  loc_1E64A3F:         var_21C = var_21C & var_168 & " AND SNO In (Select SNo From (" & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E64A55:         var_1B0 = var_BC.Fields
  loc_1E64AC4:         unk_43FED1.Execute CStr(var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_2A0, &H14
  loc_1E64ACF:         Set var_E0 = var_2A0
  loc_1E64B06:       Else
  loc_1E64B23:         Proc_6_17_EAA2B0(var_168, arg_C, "Select Printed from kot where docid=")
  loc_1E64B5D:         unk_43FED1.Execute CStr(var_21C & var_168 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q)"), -1, var_1B0
  loc_1E64B68:         Set var_E0 = var_1B0
  loc_1E64B82:       End If
  loc_1E64BBB:       If (Proc_6_38_E68A98(CVar(var_E0.Fields.Item(0))) = "Y") Then
  loc_1E64BF4:         var_1E4 = Proc_260_1_10A5350(Proc_6_45_EAD428("DUPLICATE KOT"), "D")
  loc_1E64BF7:         ' Referenced from:   1E74B58
  loc_1E64BF9:         Print 1, var_1E4
  loc_1E64C11:       Else
  loc_1E64C26:         var_188 = (Chr(&HF) + vbNullString)
  loc_1E64C2C:         Print 1, var_21C & Chr(&HF)
  loc_1E64C39:       End If
  loc_1E64C39:     End If
  loc_1E64C3E:     Set var_E0 = Nothing
  loc_1E64C56:     var_188 = (Chr(&HF) + "** ")
  loc_1E64C60:     var_1AC = (var_21C & Chr(&HF) + CVar(MemVar_1F9221C))
  loc_1E64C69:     var_1D8 = (var_21C & Chr(&HF) & " AND SNO In (Select SNo From (" + " **")
  loc_1E64C6F:     Print 1, var_B8.Source
  loc_1E64C83:     var_B4.MoveNext
  loc_1E64C8A:     Print 1
  loc_1E64C92:     Print 1
  loc_1E64C9A:     Print 1
  loc_1E64CA2:     Print 1
  loc_1E64CAA:     Print 1
  loc_1E64CB2:     Print 1
  loc_1E64CB8:     GoTo loc_1E638EA
  loc_1E64CBB:   End If
  loc_1E64CBD:   Close 1
  loc_1E64CFB:   Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E64D64:   var_1DC = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType")), &H28) = "Default"))
  loc_1E64D82:   If (&H14 And (var_1DC <> vbNullString)) Then
  loc_1E64DE7:     var_1AC = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1E64DED:     Print 1, var_1AC
  loc_1E64E11:   Else
  loc_1E64E87:     If ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType"))) <> "Default") And (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer"))) <> vbNullString)) Then
  loc_1E64EEC:       var_1AC = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_134.Fields.Item("Printer").Value 
  loc_1E64EF2:       Print 1, var_1AC
  loc_1E64F16:     Else
  loc_1E64F57:       Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1E64F6C:     End If
  loc_1E64F6C:   End If
  loc_1E64F6E:   Close 1
  loc_1E64F78:   If (MemVar_1F923B8 = "Y") Then
  loc_1E64FBD:     var_158 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Double
  loc_1E64FC1:     var_A4 = var_158 'Variant
  loc_1E64FC5:     Do 'loop at: 1E74EE9
  loc_1E64FC5:     
  loc_1E64FC5:
  loc_1E64FD6:   Else
  loc_1E65010:     For var_3BC = 1 To CInt(var_134.Fields.Item("NoOfKot").Value):   var_EE = var_3BC 'Integer
  loc_1E65058:       var_158 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Double
  loc_1E6505C:       var_A4 = var_158 'Variant
  loc_1E65070:       var_12E = &HFF
  loc_1E65076:     Next var_3BC 'Integer
  loc_1E6507B:   End If
  loc_1E6507B:   GoTo loc_1E5A3B3
  loc_1E6507E: End If
  loc_1E65086: If (var_29C = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1E6508B:   Close 1
  loc_1E650C9:   Open "C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1E650DD:   var_B4.MoveFirst
  loc_1E650E2:   ' Referenced from: 1E66500
  loc_1E650F1:   If Not(var_B4.EOF) Then
  loc_1E651D9:     var_314 = "* KOT *"
  loc_1E6521E:     var_344 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", var_314))
  loc_1E65227:     var_90 = CStr(var_344)
  loc_1E6526B:     If (0 = 0) Then
  loc_1E65270:       Print 1
  loc_1E652A4:       var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1E652B5:       If (var_F4 <> vbNullString) Then
  loc_1E652DE:         var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1E652E4:         Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1E652F6:       End If
  loc_1E652FE:       If (var_F8 <> vbNullString) Then
  loc_1E65327:         var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1E6532D:         Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1E6533F:       End If
  loc_1E65347:       If (var_FC <> vbNullString) Then
  loc_1E65370:         var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H28)))
  loc_1E65376:         Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1E65388:       End If
  loc_1E6538B:       ' Referenced from: 1E75316
  loc_1E6538B:       Do 'loop at: 1E6B8E4
  loc_1E6538B:       Do 'loop at: 1E751B7
  loc_1E65390:       If (var_100 <> vbNullString) Then
  loc_1E653B9:         var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_100, &H28)))
  loc_1E653BF:         Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1E653D1:       End If
  loc_1E6540D:       If CBool(var_C8.Fields.Item("SaleBillTokenHeader1").Value <> vbNullString) Then
  loc_1E6546F:         var_1D8 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("SaleBillTokenHeader1").Value), &H2A)))
  loc_1E65476:         var_20C = (3 + Chr(&H12))
  loc_1E6547C:         Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3))
  loc_1E6549F:       End If
  loc_1E654A1:       Print 1
  loc_1E654DC:       Print 1, Proc_260_1_10A5350(Proc_6_45_EAD428(var_144, &H14), "D")
  loc_1E65524:       Print 1, Proc_260_1_10A5350(Proc_6_45_EAD428(var_90, &H14), "D", &H28)
  loc_1E6553E:       Print 1
  loc_1E65546:       Print 1
  loc_1E6557F:       Proc_6_39_E7C810(3, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1E655A1:       var_188 = (Chr(&HF) + "KOT No.   : ")
  loc_1E655AB:       var_20C = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EAD428(CStr(3), &HA)))
  loc_1E655B1:       Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3))
  loc_1E65663:       var_188 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1E6566D:       var_1FC = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), &H28), &HC)))
  loc_1E65676:       var_20C = (CVar(Proc_6_45_EAD428(CStr(3), &HA)) + " ")
  loc_1E65680:       var_268 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1E65686:       Print 1, "* NC LOT *"
  loc_1E65718:       var_188 = (Chr(&HF) + "Remarks : ")
  loc_1E65722:       var_1FC = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))), &H32)))
  loc_1E65729:       var_21C = (CVar(Proc_6_45_EAD428(CStr(3), &HA)) + Chr(&H12))
  loc_1E6572F:       Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1E657D4:       Proc_6_39_E7C810("* NC LOT *", CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E6580C:       Proc_6_39_E7C810(var_314, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E6583A:       var_2C4 = (Space(&HA) + "Covers: ")
  loc_1E65844:       var_334 = (CVar(var_B4.Fields.Item("NCKOT")) + CVar(Proc_6_45_EAD428(CStr(var_314), 7)))
  loc_1E6585F:       var_390 = IIf(("* NC LOT *" <> 0), (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), vbNullString)
  loc_1E6586D:       var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_140, &HA)))
  loc_1E65876:       var_1D8 = (CVar(var_B4.Fields.Item("Remarks")) + ": ")
  loc_1E6587D:       var_20C = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))), 5)) 'String
  loc_1E65880:       var_21C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))), &H32)) + var_20C)
  loc_1E65887:       var_3A0 = (CVar(var_B4.Fields.Item("VTIME")) + var_390)
  loc_1E6588D:       Print 1, var_3A0
  loc_1E658EC:       var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E658F2:       Print 1, CVar(Proc_6_45_EAD428(var_140, &HA))
  loc_1E658FF:     End If
  loc_1E65925:     var_1AC = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1E6593F:     var_1FC = (CVar(var_B4.Fields.Item("Remarks")) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1E65944:     var_AC = CStr(CVar(var_B4.Fields.Item("TableNo")))
  loc_1E65971:     var_188 = (Chr(&HF) + CVar(var_AC))
  loc_1E65977:     Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1E6599A:     var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E659A0:     Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1E659B3:     var_92 = (var_92 + 4)
  loc_1E659B9:     var_B8.MoveFirst
  loc_1E659BE:     ' Referenced from: 1E65E50
  loc_1E659CD:     If Not(var_B8.EOF) Then
  loc_1E65A46:       If (&H12 And ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split")), &H12) = "Yes") <> Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")), var_108))) Then
  loc_1E65A71:         var_108 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")))
  loc_1E65A8F:         var_188 = (Chr(&HF) + "*")
  loc_1E65A99:         var_1AC = (CVar(var_B8.Fields.Item("Kitchen")) + CVar(var_108))
  loc_1E65AA2:         var_1D8 = (CVar(var_B4.Fields.Item("Remarks")) + "*")
  loc_1E65AA8:         Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1E65ABF:         var_92 = (var_92 + 1)
  loc_1E65AC2:       End If
  loc_1E65B0F:       Proc_6_39_E7C810(var_20C, CVar(var_B8.Fields.Item("qty")))
  loc_1E65B46:       var_2A0 = var_B8.Fields
  loc_1E65B60:       var_324 = vbNullString
  loc_1E65BB2:       var_1D8 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1E65BCB:       var_278 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_20C, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6)))))
  loc_1E65BE4:       var_380 = ("* LOT *" + CVar(Proc_6_52_EAD4F4(CStr(IIf((var_2A0.Item("Cancel").Value = "Y"), "Void", var_324)), 6)))
  loc_1E65C3D:       var_188 = (Chr(&HF) + CVar(CStr(vbNullString)))
  loc_1E65C43:       Print 1, Space(3)
  loc_1E65C56:       var_92 = (var_92 + 1)
  loc_1E65C92:       If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1E65CD5:         var_188 = (Chr(&HF) + "(")
  loc_1E65CDF:         var_1FC = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))))
  loc_1E65CE8:         var_20C = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1E65CEE:         Print 1, var_20C
  loc_1E65D0F:         var_92 = (var_92 + 1)
  loc_1E65D12:       End If
  loc_1E65D1C:       If (&H12 = (&H45 - var_A6)) Then
  loc_1E65D35:         var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E65D3B:         Print 1, Space(3)
  loc_1E65D4D:         Print 1, "Contd."
  loc_1E65D65:         Print 1, Chr(&HC)
  loc_1E65D74:         var_94 = (var_94 + 1)
  loc_1E65D79:         var_92 = 0
  loc_1E65DAB:         var_1DC = Proc_260_1_10A5350(var_90, "B", &H28, Proc_260_2_136D614(1, Proc_260_2_136D614(1, var_92, &H28, var_92), &H28, Proc_260_2_136D614(1, var_92, &H28, var_92)))
  loc_1E65DB0:         Print 1, var_1DC
  loc_1E65DC1:         var_92 = &H12
  loc_1E65DDA:         var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E65DE0:         Print 1, Space(3)
  loc_1E65E03:         var_188 = (Chr(&HF) + CVar(var_AC))
  loc_1E65E09:         Print 1, Space(3)
  loc_1E65E2C:         var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E65E32:         Print 1, Space(3)
  loc_1E65E45:         var_92 = (var_92 + 4)
  loc_1E65E48:       End If
  loc_1E65E4B:       var_B8.MoveNext
  loc_1E65E50:       GoTo loc_1E659BE
  loc_1E65E53:     End If
  loc_1E65E5D:     If (var_92 < (&H45 - var_A6)) Then
  loc_1E65E60:       ' Referenced from: 1E65E81
  loc_1E65E6A:       If (var_92 = (&H45 - var_A6)) Then
  loc_1E65E72:         Print 1, vbNullString
  loc_1E65E7E:         var_92 = (var_92 + 1)
  loc_1E65E81:         GoTo loc_1E65E60
  loc_1E65E84:       End If
  loc_1E65E84:     End If
  loc_1E65E9A:     var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E65EA0:     Print 1, Space(3)
  loc_1E65F01:     var_188 = (Chr(&HF) + "Waiter Name  : ")
  loc_1E65F08:     var_1D8 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, 1)) 'String
  loc_1E65F0B:     var_1FC = (Space(3) + var_1D8)
  loc_1E65F11:     Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_1E65F55:     var_188 = (Chr(&HF) + "***  ")
  loc_1E65F6B:     Print 1, Space(3) & Trim(var_CC) & "  ***"
  loc_1E65F9D:     var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E65FB7:     If (Proc_6_38_E68A98(var_168, var_92) = "Yes") Then
  loc_1E65FCE:       var_188 = CVar("Select Count(Distinct Printed) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E65FDC:       Proc_6_17_EAA2B0(var_168, arg_C, var_188, var_324)
  loc_1E65FE4:       var_1AC = -1 & var_168 
  loc_1E66008:       var_21C = Trim(var_CC) & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E6601E:       var_1B0 = var_BC.Fields
  loc_1E6607F:       var_314 = var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E6608D:       unk_43FED1.Execute CStr(var_314), var_2A0, var_92
  loc_1E66098:       Set var_E0 = var_2A0
  loc_1E660CF:     Else
  loc_1E660EC:       Proc_6_17_EAA2B0(var_168, arg_C, "Select Count(Distinct Printed) from kot where docid=")
  loc_1E66118:       var_20C = var_21C & var_168 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E66126:       unk_43FED1.Execute CStr(var_20C), -1, var_1B0
  loc_1E66131:       Set var_E0 = var_1B0
  loc_1E6614B:     End If
  loc_1E66187:     If (var_E0.Fields.Item(0).Value > 1) Then
  loc_1E661C5:       Print 1, Proc_260_1_10A5350(Proc_6_45_EAD428("Changed KOT"), "D")
  loc_1E661DD:     Else
  loc_1E661FC:       var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E66216:       If (Proc_6_38_E68A98(var_168, &H28) = "Yes") Then
  loc_1E6622D:         var_188 = CVar("Select Printed From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E6623B:         Proc_6_17_EAA2B0(var_168, arg_C, var_188, var_324)
  loc_1E66243:         var_1AC = -1 & var_168 
  loc_1E66267:         var_21C = var_21C & var_168 & " AND SNO In (Select SNo From (" & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E6627D:         var_1B0 = var_BC.Fields
  loc_1E662EC:         unk_43FED1.Execute CStr(var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_2A0, &H14
  loc_1E662F7:         Set var_E0 = var_2A0
  loc_1E6632E:       Else
  loc_1E6634B:         Proc_6_17_EAA2B0(var_168, arg_C, "Select Printed from kot where docid=")
  loc_1E66385:         unk_43FED1.Execute CStr(var_21C & var_168 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q)"), -1, var_1B0
  loc_1E66390:         Set var_E0 = var_1B0
  loc_1E663AA:       End If
  loc_1E663E3:       If (Proc_6_38_E68A98(CVar(var_E0.Fields.Item(0))) = "Y") Then
  loc_1E66421:         Print 1, Proc_260_1_10A5350(Proc_6_45_EAD428("DUPLICATE KOT"), "D")
  loc_1E66439:       Else
  loc_1E6644E:         var_188 = (Chr(&HF) + vbNullString)
  loc_1E66454:         Print 1, var_21C & Chr(&HF)
  loc_1E66461:       End If
  loc_1E66461:     End If
  loc_1E66466:     Set var_E0 = Nothing
  loc_1E6647E:     var_188 = (Chr(&HF) + "** ")
  loc_1E66488:     var_1AC = (var_21C & Chr(&HF) + CVar(MemVar_1F9221C))
  loc_1E66491:     var_1D8 = (var_21C & Chr(&HF) & " AND SNO In (Select SNo From (" + " **")
  loc_1E66497:     Print 1, var_B8.Source
  loc_1E664AB:     var_B4.MoveNext
  loc_1E664B2:     Print 1
  loc_1E664BA:     Print 1
  loc_1E664C2:     Print 1
  loc_1E664CA:     Print 1
  loc_1E664D2:     Print 1
  loc_1E664DA:     Print 1
  loc_1E664E2:     Print 1
  loc_1E664EA:     Print 1
  loc_1E664F2:     Print 1
  loc_1E664FA:     Print 1
  loc_1E66500:     GoTo loc_1E650E2
  loc_1E66503:   End If
  loc_1E66505:   Close 1
  loc_1E66543:   Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E665AC:   var_1DC = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType")), &H28) = "Default"))
  loc_1E665CA:   If (&H14 And (var_1DC <> vbNullString)) Then
  loc_1E6662F:     var_1AC = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1E66635:     Print 1, var_1AC
  loc_1E66659:   Else
  loc_1E666CF:     If ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType"))) <> "Default") And (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer"))) <> vbNullString)) Then
  loc_1E66734:       var_1AC = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_134.Fields.Item("Printer").Value 
  loc_1E6673A:       Print 1, var_1AC
  loc_1E6675E:     Else
  loc_1E6679F:       Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1E667B4:     End If
  loc_1E667B4:   End If
  loc_1E667B6:   Close 1
  loc_1E667C0:   If (MemVar_1F923B8 = "Y") Then
  loc_1E66805:     var_158 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Double
  loc_1E66809:     var_A4 = var_158 'Variant
  loc_1E6681E:   Else
  loc_1E66858:     For var_3C0 = 1 To CInt(var_134.Fields.Item("NoOfKot").Value):   var_EE = var_3C0 'Integer
  loc_1E668A0:       var_158 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Double
  loc_1E668A4:       var_A4 = var_158 'Variant
  loc_1E668B8:       var_12E = &HFF
  loc_1E668BE:     Next var_3C0 'Integer
  loc_1E668C3:   End If
  loc_1E668C3:   GoTo loc_1E5A3B3
  loc_1E668C6: End If
  loc_1E668CE: Loop Until (var_29C = "3 INCH RUNNING PAPER (THERMAL PRINTER)") 'do at: 1E58719
  loc_1E668D3: Close 1
  loc_1E66911: Open "C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1E66925: var_B4.MoveFirst
  loc_1E6692A: ' Referenced from: 1E682B9
  loc_1E66939: Loop Until Not(var_B4.EOF) 'do at: 1E582BC
  loc_1E66A66: var_344 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1E66A6F: var_90 = CStr(var_344)
  loc_1E66ADB: var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1E66AEA: If (0 = 0) Then
  loc_1E66AEF:   Print 1
  loc_1E66AFD:   If (var_F4 <> vbNullString) Then
  loc_1E66B33:     var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H2A)))
  loc_1E66B3A:     var_1FC = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E66B40:     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E66B56:   End If
  loc_1E66B5E:   If (var_F8 <> vbNullString) Then
  loc_1E66B94:     var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H2A)))
  loc_1E66B9B:     var_1FC = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E66BA1:     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E66BB7:   End If
  loc_1E66BBF:   If (var_FC <> vbNullString) Then
  loc_1E66BF5:     var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H2A)))
  loc_1E66BFC:     var_1FC = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E66C02:     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E66C18:   End If
  loc_1E66C20:   If (var_100 <> vbNullString) Then
  loc_1E66C56:     var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_100, &H2A)))
  loc_1E66C5D:     var_1FC = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E66C63:     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E66C79:   End If
  loc_1E66CB5:   If CBool(var_C8.Fields.Item("SaleBillTokenHeader1").Value <> vbNullString) Then
  loc_1E66D17:     var_1D8 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("SaleBillTokenHeader1").Value), &H2A)))
  loc_1E66D1E:     var_20C = (Chr(&H12) + Chr(&H12))
  loc_1E66D24:     Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3))
  loc_1E66D47:   End If
  loc_1E66D6A:   If ((((var_F4 <> vbNullString) Or (var_F8 <> vbNullString)) Or (var_FC <> vbNullString)) Or (var_100 <> vbNullString)) Then
  loc_1E66D6F:     Print 1
  loc_1E66D75:   End If
  loc_1E66D9E:   var_1D8 = (40 - Len(Trim(var_144)))
  loc_1E66DE1:   var_2C4 = (40 - Len(Trim(var_144)))
  loc_1E66E0B:   var_21C = (Chr(&HF) + Space(CLng((Chr(&H12) / 2))))
  loc_1E66E12:   var_268 = (var_21C + Trim(var_144))
  loc_1E66E19:   var_324 = ("* NC LOT *" + Space(CLng((CVar(var_B4.Fields.Item("NCKOT")) / 2))))
  loc_1E66E20:   var_344 = (IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") + Chr(&H12))
  loc_1E66E26:   Print 1, var_344
  loc_1E66E6E:   var_1D8 = (40 - Len(Trim(var_90)))
  loc_1E66EA1:   var_298 = (40 - Len(Trim(var_90)))
  loc_1E66ECB:   var_21C = (Chr(&HF) + Space(CLng((Chr(&H12) / 2))))
  loc_1E66ED5:   var_22C = (var_21C + CVar(var_90))
  loc_1E66EDC:   var_314 = (Trim(var_144) + Space(CLng((Len(Trim(var_144)) / 2))))
  loc_1E66EE3:   var_334 = (Space(CLng((CVar(var_B4.Fields.Item("NCKOT")) / 2))) + Chr(&H12))
  loc_1E66EE9:   Print 1, Chr(&H12)
  loc_1E66F34:   var_1D8 = (39 - Len(Trim(var_11C)))
  loc_1E66F63:   var_268 = Len(Trim(var_11C))
  loc_1E66F67:   var_278 = (39 - var_268)
  loc_1E66F92:   var_21C = (Space(CLng((Chr(&H12) / 2))) + CVar(var_11C))
  loc_1E66F99:   var_2F4 = (var_21C + Space(CLng((Len(Trim(var_90)) / 2))))
  loc_1E66FC4:   var_334 = (Chr(&H12) + IIf((var_11C <> vbNullString), Space(CLng((Len(Trim(var_144)) / 2))), vbNullString))
  loc_1E66FCB:   var_380 = (Chr(&H12) + Chr(&H12))
  loc_1E66FD1:   Print 1, vbNullString
  loc_1E6702D:   If (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CardNo")), &H12) <> vbNullString) Then
  loc_1E67091:     var_188 = (Chr(&HF) + "Membership No.: ")
  loc_1E6709B:     var_1FC = (Trim(var_11C) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CardNo"))), &H1A)))
  loc_1E670A2:     var_21C = ((Chr(&H12) / 2) + Chr(&H12))
  loc_1E670A8:     Print 1, var_21C
  loc_1E670CB:   End If
  loc_1E67104:   If (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("MemName"))) <> vbNullString) Then
  loc_1E67168:     var_188 = (Chr(&HF) + "Member : ")
  loc_1E6716F:     var_1D8 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("MemName"))), &H21)) 'String
  loc_1E67172:     var_1FC = (Trim(var_11C) + var_1D8)
  loc_1E67179:     var_21C = ((Chr(&H12) / 2) + Chr(&H12))
  loc_1E6717F:     Print 1, var_21C
  loc_1E671A2:   End If
  loc_1E671D5:   Proc_6_39_E7C810(var_1D8, CVar(var_B4.Fields.Item("VNo")))
  loc_1E67240:   Proc_6_39_E7C810(var_268, CVar(var_B4.Fields.Item("TokenNo")))
  loc_1E67284:   var_2C4 = IIf((Proc_6_38_E68A98(CVar(var_C8.Fields.Item("AutoResetToken"))) = "Yes"), CVar(" TOKEN No. : " & Proc_6_45_EAD428(CStr(var_268), 5)), vbNullString)
  loc_1E6729E:   var_188 = (Chr(&HF) + "KOT No.   : ")
  loc_1E672A8:   var_20C = (Trim(var_11C) + CVar(Proc_6_45_EAD428(CStr(var_1D8), &HC)))
  loc_1E672AF:   var_2F4 = (Chr(&H12) + var_2C4)
  loc_1E672B6:   var_324 = (Space(CLng((Len(Trim(var_144)) / 2))) + Chr(&H12))
  loc_1E672BC:   Print 1, IIf((var_11C <> vbNullString), Space(CLng((Len(Trim(var_144)) / 2))), vbNullString)
  loc_1E6739F:   var_188 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1E673A9:   var_1FC = (Trim(var_11C) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))), &HC)))
  loc_1E673B2:   var_20C = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))), &HC))), &HC)) + " ")
  loc_1E673BC:   var_268 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 6)))
  loc_1E673C5:   var_278 = (var_268 + "KOT : ")
  loc_1E673D1:   var_2C4 = (CVar(" TOKEN No. : " & Proc_6_45_EAD428(CStr(var_268), 5)) + CVar(CStr(var_110)))
  loc_1E673DA:   var_2F4 = (var_2C4 + "/")
  loc_1E673E3:   var_314 = CVar(CStr(var_10E)) 'String
  loc_1E673E6:   var_324 = (Space(CLng((Len(Trim(var_144)) / 2))) + var_314)
  loc_1E673ED:   var_344 = (IIf((var_11C <> vbNullString), Space(CLng((Len(Trim(var_144)) / 2))), vbNullString) + Chr(&H12))
  loc_1E673F3:   Print 1, Chr(&H12)
  loc_1E6747E:   If CBool(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))))) <> vbNullString) Then
  loc_1E674E2:     var_188 = (Chr(&HF) + "Remarks : ")
  loc_1E674EC:     var_1FC = (CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks")))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))), &H20)))
  loc_1E674F3:     var_21C = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))), &H20))), &HC)) + Chr(&H12))
  loc_1E674F9:     Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1E6751C:   End If
  loc_1E6759E:   Proc_6_39_E7C810(var_268, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E675D6:   Proc_6_39_E7C810(var_314, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E67604:   var_2C4 = (Space(&HA) + "Covers: ")
  loc_1E6760E:   var_334 = (var_2C4 + CVar(Proc_6_45_EAD428(CStr(var_314), 7)))
  loc_1E67644:   var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_140, &HA)))
  loc_1E6764D:   var_1D8 = (CVar(var_B4.Fields.Item("Remarks")) + ": ")
  loc_1E67657:   var_21C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))), &H20)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))), 5)))
  loc_1E6765E:   var_3A0 = (CVar(var_B4.Fields.Item("VTIME")) + IIf((var_268 <> 0), Chr(&H12), vbNullString))
  loc_1E67665:   var_3E0 = (var_3A0 + Chr(&H12))
  loc_1E6766B:   Print 1, var_3E0
  loc_1E676DB:   var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E676E2:   var_1D8 = (CVar(Proc_6_45_EAD428(var_140, &HA)) + Chr(&H12))
  loc_1E676E8:   Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))), &H20))
  loc_1E676F9: End If
  loc_1E6771F: var_1AC = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Space(1))
  loc_1E67739: var_1FC = (Chr(&H12) + CVar(Proc_6_52_EAD4F4("Qty", 7)))
  loc_1E67745: var_20C = Space(1)
  loc_1E6774D: var_21C = (CVar(var_B4.Fields.Item("TableNo")) + var_20C)
  loc_1E67767: var_268 = (CVar(var_B4.Fields.Item("VTIME")) + CVar(Proc_6_52_EAD4F4("Rate", 7)))
  loc_1E677B0: var_188 = (Chr(&HF) + CVar(CStr(var_268)))
  loc_1E677B7: var_1D8 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Chr(&H12))
  loc_1E677BD: Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1E677F1: var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E677F8: var_1D8 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Chr(&H12))
  loc_1E677FE: Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1E67815: var_92 = (var_92 + 4)
  loc_1E6781B: var_B8.MoveFirst
  loc_1E67820: ' Referenced from: 1E67C20
  loc_1E6782F: If Not(var_B8.EOF) Then
  loc_1E678A8:   If (&H12 And ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split")), &H12) = "Yes") <> Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")), var_108))) Then
  loc_1E678D3:     var_108 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")))
  loc_1E678F1:     var_188 = (Chr(&HF) + "*")
  loc_1E678FB:     var_1AC = (CVar(var_B8.Fields.Item("Kitchen")) + CVar(var_108))
  loc_1E67904:     var_1D8 = (Chr(&H12) + "*")
  loc_1E6790A:     Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1E67921:     var_92 = (var_92 + 1)
  loc_1E67924:   End If
  loc_1E67971:   Proc_6_39_E7C810(var_20C, CVar(var_B8.Fields.Item("qty")))
  loc_1E679A5:   var_2A0 = var_B8.Fields
  loc_1E679BC:   Proc_6_39_E7C810(var_314, CVar(var_2A0.Item("Rate")), 1)
  loc_1E679D0:   var_324 = "0.00"
  loc_1E67A5F:   var_1D8 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H15, 1)) + Space(1))
  loc_1E67A78:   var_278 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_20C, "0.000")), 7, CVar(Proc_6_52_EAD4F4("Qty", 7)))))
  loc_1E67A8C:   var_2C4 = (CVar(" TOKEN No. : " & Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4(CStr(Format(var_20C, "0.000")), 7, CVar(Proc_6_52_EAD4F4("Qty", 7))))), 5)) + Space(1))
  loc_1E67AA5:   var_380 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_314, var_324)), 7, var_2C4)))
  loc_1E67ABE:   var_42C = (vbNullString + CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)))
  loc_1E67B38:   var_188 = (Chr(&HF) + CVar(CStr(var_42C)))
  loc_1E67B3F:   var_1D8 = (Space(1) + Chr(&H12))
  loc_1E67B45:   Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1E67B5C:   var_92 = (var_92 + 1)
  loc_1E67B98:   If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1E67BDB:     var_188 = (Chr(&HF) + "(")
  loc_1E67BE5:     var_1FC = (Space(1) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))))
  loc_1E67BEE:     var_20C = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1E67BF4:     Print 1, var_20C
  loc_1E67C15:     var_92 = (var_92 + 1)
  loc_1E67C18:   End If
  loc_1E67C1B:   var_B8.MoveNext
  loc_1E67C20:   GoTo loc_1E67820
  loc_1E67C23: End If
  loc_1E67C46: var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E67C4D: var_1D8 = (Space(1) + Chr(&H12))
  loc_1E67C53: Print 1, CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description"))))
  loc_1E67CC5: var_188 = (Chr(&HF) + "Waiter Name  : ")
  loc_1E67CCF: var_1FC = (Space(1) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1E67CD6: var_21C = (CVar(var_B8.Fields.Item("qty")) + Chr(&H12))
  loc_1E67CDC: Print 1, "0.000"
  loc_1E67D31: var_188 = (Chr(&HF) + "***  ")
  loc_1E67D44: var_20C = ("  ***" + Chr(&H12))
  loc_1E67D4E: Print 1, Space(1) & Trim(var_CC) & Chr(&H12)
  loc_1E67D84: var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E67D9E: Loop Until (Proc_6_38_E68A98(var_168) = "Yes") 'do at: 1E57EB6
  loc_1E67DB5: var_188 = CVar("Select Count(Distinct Printed) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E67DC3: Proc_6_17_EAA2B0(var_168, arg_C, var_188, var_324)
  loc_1E67DCB: var_1AC = -1 & var_168 
  loc_1E67DEF: var_21C = Trim(var_CC) & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E67E05: var_1B0 = var_BC.Fields
  loc_1E67E66: var_314 = var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E67E74: unk_43FED1.Execute CStr(var_314), var_2A0, &H12
  loc_1E67E7F: Set var_E0 = var_2A0
  loc_1E67EB3: GoTo loc_1E57F32
  loc_1E67ED3: Proc_6_17_EAA2B0(var_168, arg_C, "Select Count(Distinct Printed) from kot where docid=")
  loc_1E67F03: var_18C = CStr(var_21C & var_168 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')")
  loc_1E67F0D: unk_43FED1.Execute var_18C, -1, var_1B0
  loc_1E67F6E: Loop Until (var_1B0.Fields.Fields.Item(0).Value > 1) 'do at: 1E57FC4
  loc_1E67FAC: Print 1, Proc_260_1_10A5350(Proc_6_45_EAD428("Changed KOT"), "D")
  loc_1E67FC1: GoTo loc_1E5821D
  loc_1E67FE3: var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E67FFD: Loop Until (Proc_6_38_E68A98(var_168, &H28) = "Yes") 'do at: 1E58115
  loc_1E68014: var_188 = CVar("Select Printed From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E68022: Proc_6_17_EAA2B0(var_168, arg_C, var_188, var_324)
  loc_1E6802A: var_1AC = -1 & var_168 
  loc_1E6804E: var_21C = var_21C & var_168 & " AND SNO In (Select SNo From (" & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E68064: var_1B0 = var_BC.Fields
  loc_1E680D3: unk_43FED1.Execute CStr(var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_2A0, &H14
  loc_1E680DE: Set var_E0 = var_2A0
  loc_1E68112: GoTo loc_1E58191
  loc_1E68132: Proc_6_17_EAA2B0(var_168, arg_C, "Select Printed from kot where docid=")
  loc_1E6816C: unk_43FED1.Execute CStr(var_21C & var_168 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q)"), -1, var_1B0
  loc_1E681CA: Loop Until (Proc_6_38_E68A98(CVar(var_1B0.Fields.Fields.Fields.Item(0))) = "Y") 'do at: 1E5821D
  loc_1E68208: Print 1, Proc_260_1_10A5350(Proc_6_45_EAD428("DUPLICATE KOT"), "D")
  loc_1E68222: Set var_E0 = Nothing
  loc_1E68228: var_B4.MoveNext
  loc_1E6822F: Print 1
  loc_1E6824A: var_188 = (Chr(&HF) + "** ")
  loc_1E68254: var_1AC = (var_21C & Chr(&HF) + CVar(MemVar_1F9221C))
  loc_1E6825D: var_1D8 = (var_21C & Chr(&HF) & " AND SNO In (Select SNo From (" + " **")
  loc_1E68263: Print 1, var_B8.Source
  loc_1E68276: Print 1
  loc_1E6827E: Print 1
  loc_1E682A4: var_1AC = (Chr(&H1B) + Chr(&H6D))
  loc_1E682AA: Print 1, var_21C & Chr(&H1B) & " AND SNO In (Select SNo From ("
  loc_1E682B9: GoTo loc_1E6692A
  loc_1E682BE: Close 1
  loc_1E68318: var_1DC = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType")), &H28) = "Default"))
  loc_1E68336: Loop Until (&H14 And (var_1DC <> vbNullString)) 'do at: 1E58412
  loc_1E68375: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E683E8: var_1AC = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1E683EE: Print 1, var_1AC
  loc_1E6840F: GoTo loc_1E58607
  loc_1E68488: Loop Until ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType"))) <> "Default") And (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer"))) <> vbNullString)) 'do at: 1E58564
  loc_1E684C7: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E6853A: var_1AC = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_134.Fields.Item("Printer").Value 
  loc_1E68540: Print 1, var_1AC
  loc_1E68561: GoTo loc_1E58607
  loc_1E685A0: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E685F2: Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1E68609: Close 1
  loc_1E68613: Loop Until (MemVar_1F923B8 = "Y") 'do at: 1E58671
  loc_1E68658: var_158 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Double
  loc_1E6865C: var_A4 = var_158 'Variant
  loc_1E6866E: GoTo loc_1E58716
  loc_1E686AB: For var_430 = 1 To CInt(var_134.Fields.Item("NoOfKot").Value): var_EE = var_430 'Integer
  loc_1E686F3:   var_158 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Double
  loc_1E686F7:   var_A4 = var_158 'Variant
  loc_1E6870B:   var_12E = &HFF
  loc_1E68711: Next var_430 'Integer
  loc_1E68716: GoTo loc_1E5A3B3
  loc_1E68721: Loop Until (var_29C = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") 'do at: 1E5A3B3
  loc_1E68726: Close 1
  loc_1E68764: Open "C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1E68778: var_B4.MoveFirst
  loc_1E6878C: Loop Until Not(var_B4.EOF) 'do at: 1E59F59
  loc_1E688B9: var_344 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1E688C2: var_90 = CStr(var_344)
  loc_1E6892E: var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1E6893D: Loop Until (0 = 0) 'do at: 1E5947E
  loc_1E68942: Print 1
  loc_1E68950: Loop Until (var_F4 <> vbNullString) 'do at: 1E589A9
  loc_1E68986: var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H2A)))
  loc_1E6898D: var_1FC = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E68993: Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E689B1: Loop Until (var_F8 <> vbNullString) 'do at: 1E58A0A
  loc_1E689E7: var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H2A)))
  loc_1E689EE: var_1FC = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E689F4: Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E68A12: Loop Until (var_FC <> vbNullString) 'do at: 1E58A6B
  loc_1E68A48: var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H2A)))
  loc_1E68A4F: var_1FC = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E68A55: Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E68A73: Loop Until (var_100 <> vbNullString) 'do at: 1E58ACC
  loc_1E68AA9: var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_100, &H2A)))
  loc_1E68AB0: var_1FC = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E68AB6: Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E68AEF: Loop Until ((((var_F4 <> vbNullString) Or (var_F8 <> vbNullString)) Or (var_FC <> vbNullString)) Or (var_100 <> vbNullString)) 'do at: 1E58AFA
  loc_1E68AF4: Print 1
  loc_1E68B23: var_1D8 = (40 - Len(Trim(var_144)))
  loc_1E68B66: var_2C4 = (40 - Len(Trim(var_144)))
  loc_1E68B90: var_21C = (Chr(&HF) + Space(CLng((Chr(&H12) / 2))))
  loc_1E68B97: var_268 = (var_21C + Trim(var_144))
  loc_1E68B9E: var_324 = ("* NC LOT *" + Space(CLng((CVar(var_B4.Fields.Item("NCKOT")) / 2))))
  loc_1E68BA5: var_344 = (IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") + Chr(&H12))
  loc_1E68BAB: Print 1, var_344
  loc_1E68BF3: var_1D8 = (40 - Len(Trim(var_90)))
  loc_1E68C26: var_298 = (40 - Len(Trim(var_90)))
  loc_1E68C50: var_21C = (Chr(&HF) + Space(CLng((Chr(&H12) / 2))))
  loc_1E68C5A: var_22C = (var_21C + CVar(var_90))
  loc_1E68C61: var_314 = (Trim(var_144) + Space(CLng((Len(Trim(var_144)) / 2))))
  loc_1E68C68: var_334 = (Space(CLng((CVar(var_B4.Fields.Item("NCKOT")) / 2))) + Chr(&H12))
  loc_1E68C6E: Print 1, Chr(&H12)
  loc_1E68CB9: var_1D8 = (39 - Len(Trim(var_11C)))
  loc_1E68CE8: var_268 = Len(Trim(var_11C))
  loc_1E68CEC: var_278 = (39 - var_268)
  loc_1E68D17: var_21C = (Space(CLng((Chr(&H12) / 2))) + CVar(var_11C))
  loc_1E68D1E: var_2F4 = (var_21C + Space(CLng((Len(Trim(var_90)) / 2))))
  loc_1E68D49: var_334 = (Chr(&H12) + IIf((var_11C <> vbNullString), Space(CLng((Len(Trim(var_144)) / 2))), vbNullString))
  loc_1E68D50: var_380 = (Chr(&H12) + Chr(&H12))
  loc_1E68D56: Print 1, vbNullString
  loc_1E68DB2: Loop Until (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CardNo")), &H12) <> vbNullString) 'do at: 1E58E50
  loc_1E68E16: var_188 = (Chr(&HF) + "Membership No.: ")
  loc_1E68E20: var_1FC = (Trim(var_11C) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CardNo"))), &H1A)))
  loc_1E68E27: var_21C = ((Chr(&H12) / 2) + Chr(&H12))
  loc_1E68E2D: Print 1, var_21C
  loc_1E68E89: Loop Until (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("MemName"))) <> vbNullString) 'do at: 1E58F27
  loc_1E68EED: var_188 = (Chr(&HF) + "Member : ")
  loc_1E68EF4: var_1D8 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("MemName"))), &H21)) 'String
  loc_1E68EF7: var_1FC = (Trim(var_11C) + var_1D8)
  loc_1E68EFE: var_21C = ((Chr(&H12) / 2) + Chr(&H12))
  loc_1E68F04: Print 1, var_21C
  loc_1E68F5A: Proc_6_39_E7C810(var_1D8, CVar(var_B4.Fields.Item("VNo")))
  loc_1E68FC5: Proc_6_39_E7C810(var_268, CVar(var_B4.Fields.Item("TokenNo")))
  loc_1E69009: var_2C4 = IIf((Proc_6_38_E68A98(CVar(var_C8.Fields.Item("AutoResetToken"))) = "Yes"), CVar(" TOKEN No. : " & Proc_6_45_EAD428(CStr(var_268), 5)), vbNullString)
  loc_1E69023: var_188 = (Chr(&HF) + "KOT No.   : ")
  loc_1E6902D: var_20C = (Trim(var_11C) + CVar(Proc_6_45_EAD428(CStr(var_1D8), &HC)))
  loc_1E69034: var_2F4 = (Chr(&H12) + var_2C4)
  loc_1E6903B: var_324 = (Space(CLng((Len(Trim(var_144)) / 2))) + Chr(&H12))
  loc_1E69041: Print 1, IIf((var_11C <> vbNullString), Space(CLng((Len(Trim(var_144)) / 2))), vbNullString)
  loc_1E69124: var_188 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1E6912E: var_1FC = (Trim(var_11C) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))), &HC)))
  loc_1E69137: var_20C = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))), &HC))), &HC)) + " ")
  loc_1E69141: var_268 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 6)))
  loc_1E6914A: var_278 = (var_268 + "KOT : ")
  loc_1E69156: var_2C4 = (CVar(" TOKEN No. : " & Proc_6_45_EAD428(CStr(var_268), 5)) + CVar(CStr(var_110)))
  loc_1E6915F: var_2F4 = (var_2C4 + "/")
  loc_1E69168: var_314 = CVar(CStr(var_10E)) 'String
  loc_1E6916B: var_324 = (Space(CLng((Len(Trim(var_144)) / 2))) + var_314)
  loc_1E69172: var_344 = (IIf((var_11C <> vbNullString), Space(CLng((Len(Trim(var_144)) / 2))), vbNullString) + Chr(&H12))
  loc_1E69178: Print 1, Chr(&H12)
  loc_1E69203: Loop Until CBool(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))))) <> vbNullString) 'do at: 1E592A1
  loc_1E69267: var_188 = (Chr(&HF) + "Remarks : ")
  loc_1E69271: var_1FC = (CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks")))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))), &H20)))
  loc_1E69278: var_21C = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))), &H20))), &HC)) + Chr(&H12))
  loc_1E6927E: Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1E69323: Proc_6_39_E7C810(var_268, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E6935B: Proc_6_39_E7C810(var_314, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E69389: var_2C4 = (Space(&HA) + "Covers: ")
  loc_1E69393: var_334 = (var_2C4 + CVar(Proc_6_45_EAD428(CStr(var_314), 7)))
  loc_1E693C9: var_1AC = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_140, &HA)))
  loc_1E693D2: var_1D8 = (CVar(var_B4.Fields.Item("Remarks")) + ": ")
  loc_1E693D9: var_20C = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))), 5)) 'String
  loc_1E693DC: var_21C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))), &H20)) + var_20C)
  loc_1E693E3: var_3A0 = (CVar(var_B4.Fields.Item("VTIME")) + IIf((var_268 <> 0), Chr(&H12), vbNullString))
  loc_1E693EA: var_3E0 = (var_3A0 + Chr(&H12))
  loc_1E693F0: Print 1, "Void"
  loc_1E69460: var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E69467: var_1D8 = (CVar(Proc_6_45_EAD428(var_140, &HA)) + Chr(&H12))
  loc_1E6946D: Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))), &H20))
  loc_1E694A4: var_1AC = (CVar(Proc_6_45_EAD428("ITEM NAME", &H1D)) + Space(1))
  loc_1E694BE: var_1FC = (Chr(&H12) + CVar(Proc_6_52_EAD4F4("Qty", 7)))
  loc_1E694FD: var_188 = (Chr(&HF) + CVar(CStr(CVar(var_B4.Fields.Item("TableNo")))))
  loc_1E69504: var_1D8 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H1D)) + Chr(&H12))
  loc_1E6950A: Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1E6953E: var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E69545: var_1D8 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H1D)) + Chr(&H12))
  loc_1E6954B: Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1E69562: var_92 = (var_92 + 4)
  loc_1E69568: var_B8.MoveFirst
  loc_1E6957C: Loop Until Not(var_B8.EOF) 'do at: 1E598C0
  loc_1E695F5: Loop Until (&H12 And ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split")), &H12) = "Yes") <> Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")), var_108))) 'do at: 1E59671
  loc_1E6963E: var_188 = (Chr(&HF) + "*")
  loc_1E69648: var_1AC = (CVar(var_B8.Fields.Item("Kitchen")) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")))))
  loc_1E69651: var_1D8 = (Chr(&H12) + "*")
  loc_1E69657: Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1E6966E: var_92 = (var_92 + 1)
  loc_1E696BE: Proc_6_39_E7C810(var_20C, CVar(var_B8.Fields.Item("qty")))
  loc_1E696D5: var_2A0 = var_B8.Fields
  loc_1E69741: var_1D8 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H1D)) + Space(1))
  loc_1E6975A: var_22C = (CVar(Proc_6_52_EAD4F4("Qty", 7)) + CVar(Proc_6_52_EAD4F4(CStr(var_20C), 7)))
  loc_1E69770: var_324 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_2A0.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)) 'String
  loc_1E69773: var_334 = (CVar(var_B4.Fields.Item("GuarAtt")) + var_324)
  loc_1E697D5: var_188 = (Chr(&HF) + CVar(CStr(Chr(&H12))))
  loc_1E697DC: var_1D8 = (Space(1) + Chr(&H12))
  loc_1E697E2: Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1E697F9: var_92 = (var_92 + 1)
  loc_1E69835: Loop Until (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) 'do at: 1E598B5
  loc_1E69878: var_188 = (Chr(&HF) + "(")
  loc_1E69882: var_1FC = (Space(1) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))))
  loc_1E6988B: var_20C = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1E69891: Print 1, var_20C
  loc_1E698B2: var_92 = (var_92 + 1)
  loc_1E698B8: var_B8.MoveNext
  loc_1E698BD: GoTo loc_1E5956D
  loc_1E698E3: var_188 = (Chr(&HF) + CVar(var_C0))
  loc_1E698EA: var_1D8 = (Space(1) + Chr(&H12))
  loc_1E698F0: Print 1, CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description"))))
  loc_1E69962: var_188 = (Chr(&HF) + "Waiter Name  : ")
  loc_1E6996C: var_1FC = (Space(1) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1E69973: var_21C = (CVar(var_B8.Fields.Item("qty")) + Chr(&H12))
  loc_1E69979: Print 1, CVar(Proc_6_52_EAD4F4(CStr(Chr(&H12)), 7))
  loc_1E699CE: var_188 = (Chr(&HF) + "***  ")
  loc_1E699E1: var_20C = ("  ***" + Chr(&H12))
  loc_1E699EB: Print 1, Space(1) & Trim(var_CC) & Chr(&H12)
  loc_1E69A21: var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E69A3B: Loop Until (Proc_6_38_E68A98(var_168) = "Yes") 'do at: 1E59B53
  loc_1E69A52: var_188 = CVar("Select Count(Distinct Printed) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E69A60: Proc_6_17_EAA2B0(var_168, arg_C, var_188, var_324)
  loc_1E69A68: var_1AC = -1 & var_168 
  loc_1E69A8C: var_21C = Trim(var_CC) & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E69AA2: var_1B0 = var_BC.Fields
  loc_1E69B03: var_314 = var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E69B11: unk_43FED1.Execute CStr(var_314), var_2A0, &H12
  loc_1E69B1C: Set var_E0 = var_2A0
  loc_1E69B50: GoTo loc_1E59BCF
  loc_1E69B70: Proc_6_17_EAA2B0(var_168, arg_C, "Select Count(Distinct Printed) from kot where docid=")
  loc_1E69BA0: var_18C = CStr(var_21C & var_168 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')")
  loc_1E69BAA: unk_43FED1.Execute var_18C, -1, var_1B0
  loc_1E69C0B: Loop Until (var_1B0.Fields.Fields.Item(0).Value > 1) 'do at: 1E59C61
  loc_1E69C49: Print 1, Proc_260_1_10A5350(Proc_6_45_EAD428("Changed KOT"), "D")
  loc_1E69C5E: GoTo loc_1E59EBA
  loc_1E69C80: var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E69C9A: Loop Until (Proc_6_38_E68A98(var_168, &H28) = "Yes") 'do at: 1E59DB2
  loc_1E69CB1: var_188 = CVar("Select Printed From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1E69CBF: Proc_6_17_EAA2B0(var_168, arg_C, var_188, var_324)
  loc_1E69CC7: var_1AC = -1 & var_168 
  loc_1E69CEB: var_21C = var_21C & var_168 & " AND SNO In (Select SNo From (" & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E69D01: var_1B0 = var_BC.Fields
  loc_1E69D62: var_314 = var_21C & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'" 
  loc_1E69D70: unk_43FED1.Execute CStr(var_314), var_2A0, &H14
  loc_1E69D7B: Set var_E0 = var_2A0
  loc_1E69DAF: GoTo loc_1E59E2E
  loc_1E69DCF: Proc_6_17_EAA2B0(var_168, arg_C, "Select Printed from kot where docid=")
  loc_1E69E09: unk_43FED1.Execute CStr(var_21C & var_168 & " AND SNO In (Select SNo From (" & var_B8.Source & ")Q)"), -1, var_1B0
  loc_1E69E67: Loop Until (Proc_6_38_E68A98(CVar(var_1B0.Fields.Fields.Fields.Item(0))) = "Y") 'do at: 1E59EBA
  loc_1E69EA5: Print 1, Proc_260_1_10A5350(Proc_6_45_EAD428("DUPLICATE KOT"), "D")
  loc_1E69EBF: Set var_E0 = Nothing
  loc_1E69EC5: var_B4.MoveNext
  loc_1E69ECC: Print 1
  loc_1E69EE7: var_188 = (Chr(&HF) + "** ")
  loc_1E69EF1: var_1AC = (var_21C & Chr(&HF) + CVar(MemVar_1F9221C))
  loc_1E69EFA: var_1D8 = (var_21C & Chr(&HF) & " AND SNO In (Select SNo From (" + " **")
  loc_1E69F00: Print 1, var_B8.Source
  loc_1E69F13: Print 1
  loc_1E69F1B: Print 1
  loc_1E69F41: var_1AC = (Chr(&H1B) + Chr(&H6D))
  loc_1E69F47: Print 1, var_21C & Chr(&H1B) & " AND SNO In (Select SNo From ("
  loc_1E69F56: GoTo loc_1E5877D
  loc_1E69F5B: Close 1
  loc_1E69FB5: var_1DC = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType")), &H28) = "Default"))
  loc_1E69FD3: Loop Until (&H14 And (var_1DC <> vbNullString)) 'do at: 1E5A0AF
  loc_1E6A012: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E6A085: var_1AC = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1E6A08B: Print 1, var_1AC
  loc_1E6A0AC: GoTo loc_1E5A2A4
  loc_1E6A125: Loop Until ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType"))) <> "Default") And (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer"))) <> vbNullString)) 'do at: 1E5A201
  loc_1E6A164: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E6A1D7: var_1AC = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_134.Fields.Item("Printer").Value 
  loc_1E6A1DD: Print 1, var_1AC
  loc_1E6A1FE: GoTo loc_1E5A2A4
  loc_1E6A23D: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E6A28F: Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1E6A2A6: Close 1
  loc_1E6A2B0: Loop Until (MemVar_1F923B8 = "Y") 'do at: 1E5A30E
  loc_1E6A2F5: var_158 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Double
  loc_1E6A2F9: var_A4 = var_158 'Variant
  loc_1E6A30B: GoTo loc_1E5A3B3
  loc_1E6A348: For var_434 = 1 To CInt(var_134.Fields.Item("NoOfKot").Value): var_EE = var_434 'Integer
  loc_1E6A390:   var_158 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Double
  loc_1E6A394:   var_A4 = var_158 'Variant
  loc_1E6A3A8:   var_12E = &HFF
  loc_1E6A3AE: Next var_434 'Integer
  loc_1E6A3F3: Loop Until ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType"))) = "Default") And (var_12E = &HFF)) 'do at: 1E5A589
  loc_1E6A415: var_168 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E6A42F: Loop Until (Proc_6_38_E68A98(var_168) = "Yes") 'do at: 1E5A537
  loc_1E6A43F: var_178 = "UPDATE KOT SET PRINTED='Y' From (KOT K Left Join ItemMast I on K.Item=I.Code) LEFT JOIN Depart ON I.Kitchen=Depart.Code Where K.DocID="
  loc_1E6A44F: Proc_6_17_EAA2B0(var_168, arg_C, var_178)
  loc_1E6A46A: var_1D8 = var_B8.Source
  loc_1E6A491: var_1B0 = var_BC.Fields
  loc_1E6A4BB: var_278 = var_314 & var_168 & " AND SNO In (Select SNo From (" & var_1D8 & ")Q) AND Depart.Code='" & var_1B0.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1E6A500: unk_43FED1.Execute CStr(var_278 & var_BC.Fields.Item("Code").Value & "'"), -1, var_2A0
  loc_1E6A534: GoTo loc_1E5A589
  loc_1E6A554: Proc_6_17_EAA2B0(var_168, arg_C, "UPDATE KOT SET PRINTED='Y' WHERE DOCID=")
  loc_1E6A573: unk_43FED1.Execute CStr(var_1D8 & var_168 & vbNullString), -1, var_1B0
  loc_1E6A58C: var_BC.MoveNext
  loc_1E6A591: GoTo loc_1E60B7A
  loc_1E6A597: var_134.MoveNext
  loc_1E6A59C: GoTo loc_1E6087E
  loc_1E6A5A4: Set var_B4 = Nothing
  loc_1E6A5AC: Set var_B8 = Nothing
  loc_1E6A5B4: Set var_BC = Nothing
  loc_1E6A5BC: Set var_D4 = Nothing
  loc_1E6A5C4: Set var_C8 = Nothing
  loc_1E6A5CC: Set var_134 = Nothing
  loc_1E6A5D4: Set var_148 = Nothing
  loc_1E6A5D7: Exit Sub
  loc_1E6A5D8: Proc_6_60_E62BC4()
  loc_1E6A5DD: Exit Sub
End Sub

Public Sub Proc_260_22_1BD1860(arg_C, arg_10) '1BD1860
  'Data Table: 43FECC
  Dim var_134 As Variant
  Dim var_114 As Variant
  Dim var_144 As Variant
  Dim var_148 As String
  Dim unk_43FED1 As Connection15
  Dim var_B8 As Recordset15
  Dim var_16C As Fields15
  Dim var_124 As Variant
  Dim var_184 As Variant
  Dim var_158 As Variant
  Dim var_F4 As Recordset15
  Dim var_168 As Variant
  Dim var_194 As Variant
  Dim var_198 As String
  Dim var_19C As String
  Dim var_1A0 As String
  Dim var_1A4 As Fields15
  Dim var_C0 As Recordset15
  Dim var_BC As Recordset15
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_284 As Variant
  Dim var_308 As String
  Dim var_30C As String
  Dim var_1CC As Variant
  Dim var_1DC As Variant
  Dim var_1EC As Variant
  Dim var_174 As Field20
  Dim var_25C As Variant
  Dim var_350 As Variant
  Dim var_360 As Variant
  Dim var_E0 As Recordset15
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_304 As Variant
  Dim var_33C As Variant
  Dim var_2E4 As Variant
  Dim var_2D4 As Variant
  Dim var_2F4 As Variant
  Dim var_394 As Variant
  loc_1BCC270: On Error Goto loc_1BD1859
  loc_1BCC290: Proc_6_17_EAA2B0(var_124, arg_C, "SELECT Top 1 * FROM KOT WHERE DocId=")
  loc_1BCC2A6: unk_43FED1.Execute CStr(var_168 & var_124), -1, var_16C
  loc_1BCC2B1: Set var_B8 = var_16C
  loc_1BCC2D7: If (var_B8.RecordCount = 1) Then
  loc_1BCC302:   var_F8 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("RestCode")))
  loc_1BCC333:   var_FC = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("RoomNo")))
  loc_1BCC34B:   var_16C = var_B8.Fields
  loc_1BCC35B:   var_124 = CVar(var_16C.Item("Roomtype")) 'Address
  loc_1BCC36C:   var_168 = "Table"
  loc_1BCC398:   var_100 = CStr(IIf((Proc_6_38_E68A98(var_124) = "RO"), "Room", var_168))
  loc_1BCC3B2: End If
  loc_1BCC3CF: Proc_6_17_EAA2B0(var_124, MemVar_1F92078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1BCC3E5: unk_43FED1.Execute CStr(var_168 & var_124), -1, var_16C
  loc_1BCC3F0: Set var_F4 = var_16C
  loc_1BCC416: If (var_F4.RecordCount > 0) Then
  loc_1BCC450:   var_E4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_F4.Fields.Item("KOTHeader1"))))))
  loc_1BCC496:   var_E8 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_F4.Fields.Item("KOTHeader2"))))))
  loc_1BCC4DC:   var_EC = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_F4.Fields.Item("KOTHeader3"))))))
  loc_1BCC4FA:   var_16C = var_F4.Fields
  loc_1BCC50A:   var_124 = CVar(var_16C.Item("KOTHeader4")) 'Address
  loc_1BCC522:   var_F0 = CStr(Trim(CVar(Proc_6_38_E68A98(var_124))))
  loc_1BCC531: End If
  loc_1BCC536: Set var_F4 = Nothing
  loc_1BCC53C: MemVar_1F923C0 = "N"
  loc_1BCC543: MemVar_1F923C4 = "N"
  loc_1BCC54A: MemVar_1F923C8 = "K"
  loc_1BCC555: var_148 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,S.CardNo,S.Name As MemName,W.name as WaiterName,k.RoomNo as TableNo,K.NCKOT,K.NCTYPE,K.Remarks , K.ContraDocId, D.ShortName,K.GuarAtt,K.U_AE,K.TokenNo " & "From (((KOT K Left Join Waiter W on K.Waiter=W.Code) left join SubGroup S On K.Party=S.SubCode) Left Join Depart D on D.Code=K.RestCode) "
  loc_1BCC56A: Proc_6_17_EAA2B0(var_124, arg_C)
  loc_1BCC580: var_8C = CStr(CVar(var_148 & "Where K.DocID=") & var_124 & vbNullString)
  loc_1BCC598: var_144 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1BCC5A6: Proc_6_17_EAA2B0(var_124, arg_C)
  loc_1BCC5AE: var_168 = var_144 & var_124 
  loc_1BCC5B7: var_194 = var_168 & vbNullString 
  loc_1BCC5BC: var_90 = CStr(var_194)
  loc_1BCC5D2: If (var_8C = vbNullString) Then
  loc_1BCC5DA:   Result 0 End Sub 'Integer
  loc_1BCC5DB: End If
  loc_1BCC5E3: If (var_90 = vbNullString) Then
  loc_1BCC5EB:   Result 0 End Sub 'Integer
  loc_1BCC5EC: End If
  loc_1BCC615: var_1A0 = "SELECT DISTINCT DOCID FROM KOT WHERE RESTCODE='" & var_F8 & "' AND ROOMNO='" & var_FC & "' AND PENDING='Y' AND (DELFLAG IS NULL OR DELFLAG<>'Y') AND CONTRADOCID IS NULL"
  loc_1BCC61E: unk_43FED1.Execute var_1A0, var_124, -1
  loc_1BCC651: If (var_16C.RecordCount = 1) Then
  loc_1BCC657:   var_CC = "New Order"
  loc_1BCC65D: Else
  loc_1BCC660:   var_CC = "Running Order"
  loc_1BCC663: End If
  loc_1BCC679: unk_43FED1.Execute var_8C, var_124, -1
  loc_1BCC684: Set var_B8 = var_16C
  loc_1BCC69C: var_16C = var_B8.Fields
  loc_1BCC6DC: var_144 = CVar(var_B8.Fields.Item("ContraDocId")) 'Address
  loc_1BCC703: If (var_16C And (Proc_6_38_E68A98(var_144, (Proc_6_38_E68A98(CVar(var_16C.Item("NCKOT")), var_16C) <> "Y")) <> vbNullString)) Then
  loc_1BCC719:   var_124 = "Sale Bill Already Generated !!"
  loc_1BCC71F:   MsgBox(var_124, &H40, var_144, var_168, var_194)
  loc_1BCC734:   Result 0 End Sub 'Integer
  loc_1BCC735: End If
  loc_1BCC749: var_148 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & var_F8
  loc_1BCC759: unk_43FED1.Execute var_148 & "'", var_124, -1
  loc_1BCC764: Set var_C0 = var_16C
  loc_1BCC774: ' Referenced from: 1BD1838
  loc_1BCC783: If Not(var_C0.EOF) Then
  loc_1BCC78D:   var_144 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID=") 'String
  loc_1BCC79B:   Proc_6_17_EAA2B0(var_124, arg_C)
  loc_1BCC7D5:   unk_43FED1.Execute CStr(var_144 & var_124 & vbNullString), var_124, -1
  loc_1BCC7E0:   Set var_BC = var_16C
  loc_1BCC7EF:   var_170 = var_BC.RecordCount
  loc_1BCC7FD:   If (var_170 > 0) Then
  loc_1BCC80F:     var_16C = var_C0.Fields
  loc_1BCC82E:     var_1BC = Trim(CVar(var_16C.Item("PrintType"))) 'Variant
  loc_1BCC843:     If (var_1BC = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1BCC84A:       Set var_DC = New 
  loc_1BCC855:       Set var_DC = Proc_260_24_EF25D4(var_DC, var_16C)
  loc_1BCC85B:       Me.Recordset15.MoveFirst
  loc_1BCC860:       ' Referenced from: 1BCD565
  loc_1BCC86F:       If Not(var_B8.EOF) Then
  loc_1BCC874:         var_96 = 0
  loc_1BCC8EE:         var_1FC = CVar(var_B8.Fields.Item("NCKOT")) 'Address
  loc_1BCC99C:         var_304 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(var_1FC, var_96) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BCC9A5:         var_94 = CStr(var_304)
  loc_1BCC9E9:         If (var_96 = 0) Then
  loc_1BCC9EF:           var_19C = vbNullString
  loc_1BCCA0A:           Proc_260_25_F113B8(var_DC, vbNullString, vbNullString)
  loc_1BCCA46:           var_C4 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1BCCA5F:           var_19C = vbNullString
  loc_1BCCA6E:           var_144 = (Space(1) + CVar(var_104))
  loc_1BCCA83:           Proc_260_25_F113B8(var_DC, vbNullString, CStr(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1))))
  loc_1BCCAB0:           Proc_260_25_F113B8(var_DC, vbNullString, var_94, vbNullString)
  loc_1BCCAC4:           var_19C = vbNullString
  loc_1BCCADF:           Proc_260_25_F113B8(var_DC, vbNullString, vbNullString, var_19C)
  loc_1BCCB13:           Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1)), CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BCCB47:           var_19C = vbNullString
  loc_1BCCB50:           Proc_260_25_F113B8(var_DC, var_19C, " KOT No.   : " & Proc_6_45_EAD428(CStr(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1))), &HA, var_19C))
  loc_1BCCC0C:           var_30C = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME")), " KOT Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1BCCC20:           Proc_260_25_F113B8(var_DC, vbNullString, " KOT Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC) & " " & var_30C)
  loc_1BCCC92:           var_308 = vbNullString
  loc_1BCCCB2:           Proc_260_25_F113B8(var_DC, vbNullString, " Remarks : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Remarks")), vbNullString), &H1E))
  loc_1BCCCE8:           var_308 = Proc_6_45_EAD428(var_100, &HA)
  loc_1BCCD2D:           var_1A0 = vbNullString
  loc_1BCCD3C:           var_168 = (Space(1) + CVar(var_308))
  loc_1BCCD45:           var_194 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1))) + ": ")
  loc_1BCCD4F:           var_1EC = (3 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")), var_308), 5)))
  loc_1BCCD64:           Proc_260_25_F113B8(var_DC, vbNullString, CStr(var_1EC))
  loc_1BCCD91:           var_198 = vbNullString
  loc_1BCCDA6:           Proc_260_25_F113B8(var_DC, vbNullString, var_C4)
  loc_1BCCDB2:         End If
  loc_1BCCDD8:         var_168 = (var_198 + CVar(Proc_6_45_EAD428("ITEM NAME", &H19, Space(1))))
  loc_1BCCDEC:         var_1CC = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1))) + Space(1))
  loc_1BCCE06:         var_1EC = (var_1A0 + CVar(Proc_6_52_EAD4F4("Qty", 3, CVar(var_B8.Fields.Item("TableNo")))))
  loc_1BCCE0B:         var_B0 = CStr(var_1EC)
  loc_1BCCE29:         var_198 = vbNullString
  loc_1BCCE3E:         Proc_260_25_F113B8(var_DC, vbNullString, var_B0)
  loc_1BCCE4D:         var_198 = vbNullString
  loc_1BCCE62:         Proc_260_25_F113B8(var_DC, vbNullString, var_C4)
  loc_1BCCE74:         var_96 = (var_96 + 4)
  loc_1BCCE7A:         var_BC.MoveFirst
  loc_1BCCE7F:         ' Referenced from: 1BCD200
  loc_1BCCE8E:         If Not(var_BC.EOF) Then
  loc_1BCCEDE:           Proc_6_39_E7C810(var_1FC, CVar(var_BC.Fields.Item("qty")), &H12)
  loc_1BCCF09:           var_184 = "Cancel"
  loc_1BCCF43:           var_20C = "Y"
  loc_1BCCF81:           var_194 = (1 + CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1BCCF95:           var_1DC = (Space(1) + Space(1))
  loc_1BCCFAB:           var_25C = CVar(Proc_6_52_EAD4F4(CStr(Format(var_1FC, "0")), 3, CVar(Proc_6_52_EAD4F4("Qty", 3, CVar(var_B8.Fields.Item("TableNo")))))) 'String
  loc_1BCCFAE:           var_284 = (var_198 + var_25C)
  loc_1BCCFC4:           var_350 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_BC.Fields.Item(var_184).Value = var_20C), "Void", vbNullString)), 5, CVar(var_B8.Fields.Item("NCKOT")))) 'String
  loc_1BCCFC7:           var_360 = (var_198 + var_350)
  loc_1BCD026:           Proc_260_25_F113B8(var_DC, vbNullString, CStr(var_360))
  loc_1BCD038:           var_96 = (var_96 + 1)
  loc_1BCD074:           If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BCD0A5:             var_308 = vbNullString
  loc_1BCD0CC:             Proc_260_25_F113B8(var_DC, vbNullString, "(" & Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), vbNullString) & ")")
  loc_1BCD0EC:             var_96 = (var_96 + 1)
  loc_1BCD0EF:           End If
  loc_1BCD0F9:           If (&H12 = (&H45 - var_AA)) Then
  loc_1BCD114:             Proc_260_25_F113B8(var_DC, vbNullString, var_C4, vbNullString)
  loc_1BCD13E:             Proc_260_25_F113B8(var_DC, vbNullString, " Contd.", vbNullString)
  loc_1BCD152:             var_98 = (var_98 + 1)
  loc_1BCD172:             Proc_260_25_F113B8(var_DC, vbNullString, var_94, vbNullString, 0)
  loc_1BCD19B:             Proc_260_25_F113B8(var_DC, vbNullString, var_C4, vbNullString, &H12)
  loc_1BCD1BF:             Proc_260_25_F113B8(var_DC, vbNullString, var_B0, vbNullString)
  loc_1BCD1E3:             Proc_260_25_F113B8(var_DC, vbNullString, var_C4, vbNullString)
  loc_1BCD1F5:             var_96 = (var_96 + 4)
  loc_1BCD1F8:           End If
  loc_1BCD1FB:           var_BC.MoveNext
  loc_1BCD200:           GoTo loc_1BCCE7F
  loc_1BCD203:         End If
  loc_1BCD20D:         If (&H12 < (&H45 - var_AA)) Then
  loc_1BCD210:           ' Referenced from: 1BCD252
  loc_1BCD21A:           If (&H12 = (&H45 - var_AA)) Then
  loc_1BCD23B:             Proc_260_25_F113B8(var_DC, vbNullString, vbNullString, vbNullString, &H12)
  loc_1BCD24F:             var_96 = (var_96 + 1)
  loc_1BCD252:             GoTo loc_1BCD210
  loc_1BCD255:           End If
  loc_1BCD255:         End If
  loc_1BCD26D:         Proc_260_25_F113B8(var_DC, vbNullString, var_C4, vbNullString, &H12)
  loc_1BCD288:         var_16C = var_B8.Fields
  loc_1BCD2DB:         Proc_260_25_F113B8(var_DC, vbNullString, " Waiter Name  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C.Item("WaiterName")), 1, &H12), &H14))
  loc_1BCD302:         var_124 = Trim(var_CC)
  loc_1BCD336:         Proc_260_25_F113B8(var_DC, vbNullString, CStr(" ***  " & var_124 & "  ***"), vbNullString)
  loc_1BCD36A:         Proc_6_17_EAA2B0(var_124, arg_C, "Select Count(Distinct Printed) from kot where docid=", Space(1), -1)
  loc_1BCD389:         unk_43FED1.Execute CStr(var_16C & var_124 & " AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')"), vbNullString, vbNullString
  loc_1BCD3BA:         var_16C = var_16C.Fields
  loc_1BCD3CA:         var_124 = var_16C.Item(0).Value
  loc_1BCD3E4:         If (var_124 > 1) Then
  loc_1BCD3EA:           var_1A0 = vbNullString
  loc_1BCD40E:           Proc_260_25_F113B8(var_DC, vbNullString, " ***  " & "Changed KOT" & "  ***")
  loc_1BCD421:         Else
  loc_1BCD42E:           var_134 = "Select Printed from kot where docid="
  loc_1BCD43E:           Proc_6_17_EAA2B0(var_124, arg_C, var_134, Space(1))
  loc_1BCD446:           var_144 = -1 & var_124 
  loc_1BCD44A:           var_158 = vbNullString
  loc_1BCD45D:           unk_43FED1.Execute CStr(var_16C & var_124 & var_158), var_16C, var_1A0
  loc_1BCD47F:           var_114 = 0
  loc_1BCD4B5:           If (Proc_6_38_E68A98(CVar(var_16C.Fields.Fields.Fields.Item(var_114))) = "Y") Then
  loc_1BCD4BB:             var_1A0 = vbNullString
  loc_1BCD4DF:             Proc_260_25_F113B8(var_DC, vbNullString, " ***  " & "DUPLICATE KOT" & "  ***")
  loc_1BCD4F2:           Else
  loc_1BCD4F5:             var_19C = vbNullString
  loc_1BCD510:             Proc_260_25_F113B8(var_DC, vbNullString, vbNullString)
  loc_1BCD51E:           End If
  loc_1BCD51E:         End If
  loc_1BCD523:         Set var_E0 = Nothing
  loc_1BCD54D:         Proc_260_25_F113B8(var_DC, vbNullString, "** " & MemVar_1F9221C & " **", vbNullString)
  loc_1BCD560:         var_B8.MoveNext
  loc_1BCD565:         GoTo loc_1BCC860
  loc_1BCD568:       End If
  loc_1BCD56B:       var_D8 = "WinKOTPrint"
  loc_1BCD58B:       var_1A0 = MemVar_1F920B4 & "\" & var_D8 & ".ttx"
  loc_1BCD592:       Set var_16C = var_DC 
  loc_1BCD599:       CreateFieldDefFile(var_16C, var_1A0, &HFF)
  loc_1BCD5D2:       var_19C = MemVar_1F920B4 & "\" & var_D8 & ".RPT"
  loc_1BCD5DB:       Call 0.Method_arg_1C (var_19C, var_114, var_16C)
  loc_1BCD5E6:       MemVar_1F921E4 = var_16C
  loc_1BCD60F:       Call 0.Method_arg_64 (var_16C, CVar(var_16C), var_134, var_158)
  loc_1BCD617:       Call 0.Method_arg_2C (var_19C, var_1A0)
  loc_1BCD627:       If (arg_18 <> vbNullString) Then
  loc_1BCD648:         If CBool(Ucase(arg_18) <> "PRN") Then
  loc_1BCD64E:           Proc_96_98_F0F978(arg_18)
  loc_1BCD653:         End If
  loc_1BCD653:       End If
  loc_1BCD65F:       var_134 = 1
  loc_1BCD670:       Call 0.Method_Me8 (False, var_134, var_158)
  loc_1BCD67A:       Set var_DC = Nothing
  loc_1BCD680:     Else
  loc_1BCD68B:       If (var_1BC = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1BCD691:         var_B8.MoveFirst
  loc_1BCD696:         ' Referenced from:   1BCE516
  loc_1BCD6A5:         If Not(var_B8.EOF) Then
  loc_1BCD6AB:           var_114 = "ShortName"
  loc_1BCD6C7:           var_124 = CVar(var_B8.Fields.Item(var_114)) 'Address
  loc_1BCD6DB:           var_194 = 3
  loc_1BCD70A:           var_1A4 = var_B8.Fields
  loc_1BCD712:           var_1A8 = var_1A4.Item("NCKOT")
  loc_1BCD7B4:           var_158 = "LAU"
  loc_1BCD7C8:           var_304 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(var_124, "NCKOT"))), 1, var_194)) = var_158), IIf((Proc_6_38_E68A98(CVar(var_1A8), var_20C) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BCD7D1:           var_94 = CStr(var_304)
  loc_1BCD812:           var_D8 = "KOTPrint"
  loc_1BCD839:           Set var_16C = var_BC 
  loc_1BCD840:           CreateFieldDefFile(var_16C, MemVar_1F920B4 & "\" & var_D8 & ".ttx")
  loc_1BCD84C:           Set var_BC = var_16C
  loc_1BCD882:           Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_D8 & ".RPT", var_114, var_16C)
  loc_1BCD88D:           MemVar_1F921E4 = var_16C
  loc_1BCD8B6:           Call 0.Method_arg_64 (var_16C, CVar(var_BC), var_134)
  loc_1BCD8BE:           Call 0.Method_arg_2C (var_158, &HFF)
  loc_1BCD8CC:           Call 0.Method_arg_150 (var_16C)
  loc_1BCD8EE:           Proc_6_17_EAA2B0(var_124, arg_C, "Select Count(Distinct Printed) from kot where docid=")
  loc_1BCD90D:           unk_43FED1.Execute CStr(var_194 & var_124 & " AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')"), -1, var_16C
  loc_1BCD93E:           var_16C = var_16C.Fields
  loc_1BCD94E:           var_124 = var_16C.Item(0).Value
  loc_1BCD968:           If (var_124 > 1) Then
  loc_1BCD96E:             var_D0 = "Changed KOT"
  loc_1BCD974:           Else
  loc_1BCD991:             Proc_6_17_EAA2B0(var_124, arg_C, "Select Printed from kot where docid=")
  loc_1BCD9B0:             unk_43FED1.Execute CStr(var_194 & var_124 & vbNullString), -1, var_16C
  loc_1BCD9DE:             var_16C = var_16C.Fields
  loc_1BCD9E6:             var_174 = var_16C.Item(0)
  loc_1BCD9F7:             var_148 = Proc_6_38_E68A98(CVar(var_174))
  loc_1BCDA08:             If (var_148 = "Y") Then
  loc_1BCDA0E:               var_D0 = "DUPLICATE KOT"
  loc_1BCDA14:             Else
  loc_1BCDA17:               var_D0 = vbNullString
  loc_1BCDA1A:             End If
  loc_1BCDA1A:           End If
  loc_1BCDA1F:           Set var_E0 = Nothing
  loc_1BCDA33:           Call 0.Method_arg_90 (var_16C, var_170)
  loc_1BCDA3B:           Call 0.Method_arg_24 (var_B2)
  loc_1BCDA47:           For var_364 =  To CInt(var_170):   1 = var_364 'Integer
  loc_1BCDA60:             Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BCDA68:             Call 0.Method_arg_20 (var_174)
  loc_1BCDA70:             Call 0.Method_arg_30 (var_148)
  loc_1BCDA86:             var_374 = Ucase(CVar(var_148)) 'Variant
  loc_1BCDAB6:             If (var_374 = Ucase("comp_name")) Then
  loc_1BCDADA:               Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BCDAE2:               Call 0.Method_arg_20 (var_174)
  loc_1BCDAEA:               Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_1BCDB00:             Else
  loc_1BCDB22:               If (var_374 = Ucase("comp_add1")) Then
  loc_1BCDB46:                 Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BCDB4E:                 Call 0.Method_arg_20 (var_174)
  loc_1BCDB56:                 Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_1BCDB6C:               Else
  loc_1BCDB8E:                 If (var_374 = Ucase("comp_pin")) Then
  loc_1BCDBB2:                   Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BCDBBA:                   Call 0.Method_arg_20 (var_174)
  loc_1BCDBC2:                   Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_1BCDBD8:                 Else
  loc_1BCDBFA:                   If (var_374 = Ucase("comp_GSTIN")) Then
  loc_1BCDC1E:                     Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BCDC26:                     Call 0.Method_arg_20 (var_174)
  loc_1BCDC2E:                     Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_1BCDC44:                   Else
  loc_1BCDC66:                     If (var_374 = Ucase("RestName")) Then
  loc_1BCDC8A:                       Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BCDC92:                       Call 0.Method_arg_20 (var_174)
  loc_1BCDC9A:                       Call 0.Method_arg_38 ("'" & var_104 & "'")
  loc_1BCDCB0:                     Else
  loc_1BCDCD2:                       If (var_374 = Ucase("mTitle")) Then
  loc_1BCDCF6:                         Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BCDCFE:                         Call 0.Method_arg_20 (var_174)
  loc_1BCDD06:                         Call 0.Method_arg_38 ("'" & var_94 & "'")
  loc_1BCDD1C:                       Else
  loc_1BCDD24:                         var_124 = "Header1"
  loc_1BCDD3E:                         If (var_374 = Ucase(var_124)) Then
  loc_1BCDD4C:                           Proc_6_17_EAA2B0(var_124)
  loc_1BCDD68:                           Call 0.Method_arg_90 (var_16C, CLng(var_B2), var_174)
  loc_1BCDD70:                           Call 0.Method_arg_20 (CStr(var_124))
  loc_1BCDD78:                           Call 0.Method_arg_38 (var_E4)
  loc_1BCDD8D:                         Else
  loc_1BCDD95:                           var_124 = "Header2"
  loc_1BCDDAF:                           If (var_374 = Ucase(var_124)) Then
  loc_1BCDDBD:                             Proc_6_17_EAA2B0(var_124)
  loc_1BCDDD9:                             Call 0.Method_arg_90 (var_16C, CLng(var_B2), var_174)
  loc_1BCDDE1:                             Call 0.Method_arg_20 (CStr(var_124))
  loc_1BCDDE9:                             Call 0.Method_arg_38 (var_E8)
  loc_1BCDDFE:                           Else
  loc_1BCDE06:                             var_124 = "Header3"
  loc_1BCDE20:                             If (var_374 = Ucase(var_124)) Then
  loc_1BCDE2E:                               Proc_6_17_EAA2B0(var_124)
  loc_1BCDE4A:                               Call 0.Method_arg_90 (var_16C, CLng(var_B2), var_174)
  loc_1BCDE52:                               Call 0.Method_arg_20 (CStr(var_124))
  loc_1BCDE5A:                               Call 0.Method_arg_38 (var_EC)
  loc_1BCDE6F:                             Else
  loc_1BCDE77:                               var_124 = "Header4"
  loc_1BCDE91:                               If (var_374 = Ucase(var_124)) Then
  loc_1BCDE9F:                                 Proc_6_17_EAA2B0(var_124)
  loc_1BCDEBB:                                 Call 0.Method_arg_90 (var_16C, CLng(var_B2), var_174)
  loc_1BCDEC3:                                 Call 0.Method_arg_20 (CStr(var_124))
  loc_1BCDECB:                                 Call 0.Method_arg_38 (var_F0)
  loc_1BCDEE0:                               Else
  loc_1BCDEF1:                                 var_144 = Ucase("KotNo")
  loc_1BCDF02:                                 If (var_374 = var_144) Then
  loc_1BCDF30:                                   Proc_6_39_E7C810(var_144, CVar(var_B8.Fields.Item("VNo")))
  loc_1BCDF3C:                                   var_158 = "'"
  loc_1BCDF59:                                   Call 0.Method_arg_90 (var_1A4, CLng(var_B2))
  loc_1BCDF61:                                   Call 0.Method_arg_20 (var_1A8)
  loc_1BCDF69:                                   Call 0.Method_arg_38 (CStr("'" & var_144 & var_158))
  loc_1BCDF88:                                 Else
  loc_1BCDFAA:                                   If (var_374 = Ucase("KotDate")) Then
  loc_1BCDFF6:                                     Call 0.Method_arg_90 (var_1A4, CLng(var_B2))
  loc_1BCDFFE:                                     Call 0.Method_arg_20 (var_1A8)
  loc_1BCE006:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate"))) & "'")
  loc_1BCE023:                                   Else
  loc_1BCE045:                                     If (var_374 = Ucase("KotTime")) Then
  loc_1BCE091:                                       Call 0.Method_arg_90 (var_1A4, CLng(var_B2))
  loc_1BCE099:                                       Call 0.Method_arg_20 (var_1A8)
  loc_1BCE0A1:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))) & "'")
  loc_1BCE0BE:                                     Else
  loc_1BCE0E0:                                       If (var_374 = Ucase("Remarks")) Then
  loc_1BCE12C:                                         Call 0.Method_arg_90 (var_1A4, CLng(var_B2))
  loc_1BCE134:                                         Call 0.Method_arg_20 (var_1A8)
  loc_1BCE13C:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Remarks"))) & "'")
  loc_1BCE159:                                       Else
  loc_1BCE17B:                                         If (var_374 = Ucase("Card_No")) Then
  loc_1BCE1C7:                                           Call 0.Method_arg_90 (var_1A4, CLng(var_B2))
  loc_1BCE1CF:                                           Call 0.Method_arg_20 (var_1A8)
  loc_1BCE1D7:                                           Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("CardNo"))) & "'")
  loc_1BCE1F4:                                         Else
  loc_1BCE216:                                           If (var_374 = Ucase("Member_Name")) Then
  loc_1BCE22B:                                             var_16C = var_B8.Fields
  loc_1BCE233:                                             var_174 = var_16C.Item("MemName")
  loc_1BCE262:                                             Call 0.Method_arg_90 (var_1A4, CLng(var_B2))
  loc_1BCE26A:                                             Call 0.Method_arg_20 (var_1A8)
  loc_1BCE272:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_174)) & "'")
  loc_1BCE28F:                                           Else
  loc_1BCE2B1:                                             If (var_374 = Ucase("TableTitle")) Then
  loc_1BCE2D5:                                               Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BCE2DD:                                               Call 0.Method_arg_20 (var_174)
  loc_1BCE2E5:                                               Call 0.Method_arg_38 ("'" & var_100 & "'")
  loc_1BCE2FB:                                             Else
  loc_1BCE31D:                                               If (var_374 = Ucase("TableNo")) Then
  loc_1BCE369:                                                 Call 0.Method_arg_90 (var_1A4, CLng(var_B2))
  loc_1BCE371:                                                 Call 0.Method_arg_20 (var_1A8)
  loc_1BCE379:                                                 Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo"))) & "'")
  loc_1BCE396:                                               Else
  loc_1BCE3B8:                                                 If (var_374 = Ucase("Steward")) Then
  loc_1BCE3CD:                                                   var_16C = var_B8.Fields
  loc_1BCE3D5:                                                   var_174 = var_16C.Item("WaiterName")
  loc_1BCE404:                                                   Call 0.Method_arg_90 (var_1A4, CLng(var_B2))
  loc_1BCE40C:                                                   Call 0.Method_arg_20 (var_1A8)
  loc_1BCE414:                                                   Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_174)) & "'")
  loc_1BCE431:                                                 Else
  loc_1BCE453:                                                   If (var_374 = Ucase("KotStatus")) Then
  loc_1BCE477:                                                     Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BCE47F:                                                     Call 0.Method_arg_20 (var_174)
  loc_1BCE487:                                                     Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1BCE49D:                                                   Else
  loc_1BCE4BF:                                                     If (var_374 = Ucase("KotRemark")) Then
  loc_1BCE4E3:                                                       Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BCE4EB:                                                       Call 0.Method_arg_20 (var_174)
  loc_1BCE4F3:                                                       Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_1BCE506:                                                     End If
  loc_1BCE506:                                                   End If
  loc_1BCE506:                                                 End If
  loc_1BCE506:                                               End If
  loc_1BCE506:                                             End If
  loc_1BCE506:                                           End If
  loc_1BCE506:                                         End If
  loc_1BCE506:                                       End If
  loc_1BCE506:                                     End If
  loc_1BCE506:                                   End If
  loc_1BCE506:                                 End If
  loc_1BCE506:                               End If
  loc_1BCE506:                             End If
  loc_1BCE506:                           End If
  loc_1BCE506:                         End If
  loc_1BCE506:                       End If
  loc_1BCE506:                     End If
  loc_1BCE506:                   End If
  loc_1BCE506:                 End If
  loc_1BCE506:               End If
  loc_1BCE506:             End If
  loc_1BCE509:           Next var_364 'Integer
  loc_1BCE511:           var_B8.MoveNext
  loc_1BCE516:           GoTo loc_1BCD696
  loc_1BCE519:         End If
  loc_1BCE521:         If (arg_18 <> vbNullString) Then
  loc_1BCE542:           If CBool(Ucase(arg_18) <> "PRN") Then
  loc_1BCE548:             Proc_96_98_F0F978(arg_18)
  loc_1BCE54D:           End If
  loc_1BCE54D:         End If
  loc_1BCE56A:         Call 0.Method_Me8 (False, 1, var_158)
  loc_1BCE572:       Else
  loc_1BCE57D:         If (var_1BC = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1BCE582:           Close 1
  loc_1BCE59E:           Open "C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT" For Output As 1 Len = &HFF
  loc_1BCE5AE:           var_B8.MoveFirst
  loc_1BCE5B3:           ' Referenced from:     1BCF431
  loc_1BCE5C2:           If Not(var_B8.EOF) Then
  loc_1BCE5C7:             var_96 = 0
  loc_1BCE602:             var_194 = 3
  loc_1BCE625:             var_184 = "NCKOT"
  loc_1BCE6E5:             var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_194)) = "LAU") 'Variant
  loc_1BCE6EF:             var_304 = IIf(var_2F4, IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item(var_184)), var_184) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BCE6F8:             var_94 = CStr(var_304)
  loc_1BCE73C:             If (var_96 = 0) Then
  loc_1BCE741:               Print 1
  loc_1BCE775:               var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1BCE786:               If (var_E4 <> vbNullString) Then
  loc_1BCE7AF:                 var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_E4, &H28)))
  loc_1BCE7B5:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BCE7C7:               End If
  loc_1BCE7CF:               If (var_E8 <> vbNullString) Then
  loc_1BCE7F8:                 var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_E8, &H28)))
  loc_1BCE7FE:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BCE810:               End If
  loc_1BCE818:               If (var_EC <> vbNullString) Then
  loc_1BCE841:                 var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_EC, &H28)))
  loc_1BCE847:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BCE859:               End If
  loc_1BCE861:               If (var_F0 <> vbNullString) Then
  loc_1BCE88A:                 var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1BCE890:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BCE8A2:               End If
  loc_1BCE8A4:               Print 1
  loc_1BCE8CB:               Print 1, Proc_260_1_10A5350(var_104, "D")
  loc_1BCE8FB:               Print 1, Proc_260_1_10A5350(var_94, "D", &H28)
  loc_1BCE911:               Print 1
  loc_1BCE919:               Print 1
  loc_1BCE952:               Proc_6_39_E7C810(var_194, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BCE974:               var_144 = (Chr(&HF) + "KOT No.   :     ")
  loc_1BCE97E:               var_1DC = (CVar(Proc_6_45_EAD428(var_F0, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_194), &HA)))
  loc_1BCE984:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_194))
  loc_1BCEA36:               var_144 = (Chr(&HF) + "KOT Dt.   :     ")
  loc_1BCEA40:               var_1CC = (CVar(Proc_6_45_EAD428(var_F0, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), &H28), &HC)))
  loc_1BCEA49:               var_1DC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), &H28), &HC))), &HA)) + " ")
  loc_1BCEA53:               var_22C = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), &H28), &HC)))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BCEA59:               Print 1, "* NC LOT *"
  loc_1BCEAEB:               var_144 = (Chr(&HF) + "Remarks :     ")
  loc_1BCEAF5:               var_1CC = (CVar(Proc_6_45_EAD428(var_F0, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Remarks"))), &H32)))
  loc_1BCEAFC:               var_1EC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Remarks"))), &H32))), &HA)) + Chr(&H12))
  loc_1BCEB02:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BCEB8A:               var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_100, &HA)))
  loc_1BCEB93:               var_194 = (CVar(var_B8.Fields.Item("Remarks")) + ":     ")
  loc_1BCEB9A:               var_1DC = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo"))), 5)) 'String
  loc_1BCEB9D:               var_1EC = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Remarks"))), &H32)) + var_1DC)
  loc_1BCEBA3:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BCEBDE:               var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BCEBE4:               Print 1, CVar(Proc_6_45_EAD428(var_100, &HA))
  loc_1BCEBF1:             End If
  loc_1BCEC17:             var_168 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1BCEC31:             var_1CC = (CVar(var_B8.Fields.Item("Remarks")) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1BCEC36:             var_B0 = CStr(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BCEC63:             var_144 = (Chr(&HF) + CVar(var_B0))
  loc_1BCEC69:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1BCEC8C:             var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BCEC92:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1BCECA5:             var_96 = (var_96 + 4)
  loc_1BCECAB:             var_BC.MoveFirst
  loc_1BCECB0:             ' Referenced from:     1BCF050
  loc_1BCECBF:             If Not(var_BC.EOF) Then
  loc_1BCED0F:               Proc_6_39_E7C810(var_1DC, CVar(var_BC.Fields.Item("qty")))
  loc_1BCEDB2:               var_194 = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1BCEDCB:               var_24C = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1DC, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6)))))
  loc_1BCEDE1:               var_304 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1BCEDE4:               var_33C = (&H12 + var_304)
  loc_1BCEE3D:               var_144 = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1BCEE43:               Print 1, Space(3)
  loc_1BCEE56:               var_96 = (var_96 + 1)
  loc_1BCEE92:               If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BCEED5:                 var_144 = (Chr(&HF) + "(")
  loc_1BCEEDF:                 var_1CC = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")))))
  loc_1BCEEE8:                 var_1DC = (CVar(var_BC.Fields.Item("qty")) + ")")
  loc_1BCEEEE:                 Print 1, var_1DC
  loc_1BCEF0F:                 var_96 = (var_96 + 1)
  loc_1BCEF12:               End If
  loc_1BCEF1C:               If (&H12 = (&H45 - var_AA)) Then
  loc_1BCEF35:                 var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BCEF3B:                 Print 1, Space(3)
  loc_1BCEF4D:                 Print 1, "Contd."
  loc_1BCEF65:                 Print 1, Chr(&HC)
  loc_1BCEF74:                 var_98 = (var_98 + 1)
  loc_1BCEF79:                 var_96 = 0
  loc_1BCEFAB:                 var_198 = Proc_260_1_10A5350(var_94, "B", &H28, Proc_260_2_136D614(1, Proc_260_2_136D614(1, var_96, &H28, var_96), &H28, Proc_260_2_136D614(1, var_96, &H28, var_96)))
  loc_1BCEFB0:                 Print 1, var_198
  loc_1BCEFC1:                 var_96 = &H12
  loc_1BCEFDA:                 var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BCEFE0:                 Print 1, Space(3)
  loc_1BCF003:                 var_144 = (Chr(&HF) + CVar(var_B0))
  loc_1BCF009:                 Print 1, Space(3)
  loc_1BCF02C:                 var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BCF032:                 Print 1, Space(3)
  loc_1BCF045:                 var_96 = (var_96 + 4)
  loc_1BCF048:               End If
  loc_1BCF04B:               var_BC.MoveNext
  loc_1BCF050:               GoTo loc_1BCECB0
  loc_1BCF053:             End If
  loc_1BCF05D:             If (var_96 < (&H45 - var_AA)) Then
  loc_1BCF060:               ' Referenced from:     1BCF081
  loc_1BCF06A:               If (var_96 = (&H45 - var_AA)) Then
  loc_1BCF072:                 Print 1, vbNullString
  loc_1BCF07E:                 var_96 = (var_96 + 1)
  loc_1BCF081:                 GoTo loc_1BCF060
  loc_1BCF084:               End If
  loc_1BCF084:             End If
  loc_1BCF09A:             var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BCF0A0:             Print 1, Space(3)
  loc_1BCF0C9:             var_16C = var_B8.Fields
  loc_1BCF101:             var_144 = (Chr(&HF) + "Waiter Name  :     ")
  loc_1BCF108:             var_194 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C.Item("WaiterName")), var_96, var_96, var_96), &H14, 1)) 'String
  loc_1BCF10B:             var_1CC = (Space(3) + var_194)
  loc_1BCF111:             Print 1, CVar(var_BC.Fields.Item("qty"))
  loc_1BCF138:             var_124 = Chr(&HF)
  loc_1BCF155:             var_144 = (var_124 + "***  ")
  loc_1BCF15C:             var_194 = Space(3) & Trim(var_CC) 
  loc_1BCF16B:             Print 1, var_194 & "  ***"
  loc_1BCF19B:             Proc_6_17_EAA2B0(var_124, arg_C, "Select Count(Distinct Printed) from kot where docid=", var_194)
  loc_1BCF1A3:             var_144 = -1 & var_124 
  loc_1BCF1BA:             unk_43FED1.Execute CStr(Space(3) & " AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')"), var_16C, var_96
  loc_1BCF1EB:             var_16C = var_16C.Fields
  loc_1BCF1FB:             var_124 = var_16C.Item(0).Value
  loc_1BCF215:             If (var_124 > 1) Then
  loc_1BCF253:               Print 1, Proc_260_1_10A5350(Proc_6_45_EAD428("Changed KOT", &H14), "D")
  loc_1BCF26B:             Else
  loc_1BCF288:               Proc_6_17_EAA2B0(var_124, arg_C, "Select Max(Printed) from kot where docid=", var_194)
  loc_1BCF290:               var_144 = -1 & var_124 
  loc_1BCF2A7:               unk_43FED1.Execute CStr(Space(3) & vbNullString), var_16C, &H28
  loc_1BCF2FF:               If (Proc_6_38_E68A98(CVar(var_16C.Fields.Fields.Fields.Item(0))) = "Y") Then
  loc_1BCF33D:                 Print 1, Proc_260_1_10A5350(Proc_6_45_EAD428("DUPLICATE KOT", &H14), "D")
  loc_1BCF355:               Else
  loc_1BCF36A:                 var_144 = (Chr(&HF) + vbNullString)
  loc_1BCF370:                 Print 1, Space(3)
  loc_1BCF37D:               End If
  loc_1BCF37D:             End If
  loc_1BCF382:             Set var_E0 = Nothing
  loc_1BCF39A:             var_144 = (Chr(&HF) + "** ")
  loc_1BCF3A4:             var_168 = (Space(3) + CVar(MemVar_1F9221C))
  loc_1BCF3AD:             var_194 = (Space(3) & vbNullString + " **")
  loc_1BCF3B3:             Print 1, var_194
  loc_1BCF3C7:             var_B8.MoveNext
  loc_1BCF3CE:             Print 1
  loc_1BCF3D6:             Print 1
  loc_1BCF3DE:             Print 1
  loc_1BCF3E6:             Print 1
  loc_1BCF3EE:             Print 1
  loc_1BCF3F6:             Print 1
  loc_1BCF41C:             var_168 = (Chr(&H1B) + Chr(&H6D))
  loc_1BCF422:             Print 1, Space(3) & vbNullString
  loc_1BCF431:             GoTo loc_1BCE5B3
  loc_1BCF434:           End If
  loc_1BCF436:           Close 1
  loc_1BCF452:           Open "C:\reptmp\KOTPrint_C" & CStr(arg_10) & ".BAT" For Output As 1 Len = &HFF
  loc_1BCF467:           If (arg_18 <> vbNullString) Then
  loc_1BCF489:             Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT>" & arg_18
  loc_1BCF49D:           Else
  loc_1BCF4BC:             Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT>" & MemVar_1F923B4
  loc_1BCF4CD:           End If
  loc_1BCF4CF:           Close 1
  loc_1BCF4F5:           var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_C" & CStr(arg_10) & ".BAT"), 0)) 'Variant
  loc_1BCF506:         Else
  loc_1BCF511:           If (var_1BC = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1BCF516:             Close 1
  loc_1BCF532:             Open "C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT" For Output As 1 Len = &HFF
  loc_1BCF542:             var_B8.MoveFirst
  loc_1BCF547:             ' Referenced from:       1BD040D
  loc_1BCF556:             If Not(var_B8.EOF) Then
  loc_1BCF55B:               var_96 = 0
  loc_1BCF596:               var_194 = 3
  loc_1BCF679:               var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_194)) = "LAU") 'Variant
  loc_1BCF683:               var_304 = IIf(var_2F4, IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), &H28) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BCF68C:               var_94 = CStr(var_304)
  loc_1BCF6D0:               If (var_96 = 0) Then
  loc_1BCF6D5:                 Print 1
  loc_1BCF709:                 var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1BCF71A:                 If (var_E4 <> vbNullString) Then
  loc_1BCF743:                   var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_E4, &H28)))
  loc_1BCF749:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BCF75B:                 End If
  loc_1BCF763:                 If (var_E8 <> vbNullString) Then
  loc_1BCF78C:                   var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_E8, &H28)))
  loc_1BCF792:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BCF7A4:                 End If
  loc_1BCF7AC:                 If (var_EC <> vbNullString) Then
  loc_1BCF7D5:                   var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_EC, &H28)))
  loc_1BCF7DB:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BCF7ED:                 End If
  loc_1BCF7F5:                 If (var_F0 <> vbNullString) Then
  loc_1BCF81E:                   var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1BCF824:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BCF836:                 End If
  loc_1BCF838:                 Print 1
  loc_1BCF873:                 Print 1, Proc_260_1_10A5350(Proc_6_45_EAD428(var_104, &H14), "D")
  loc_1BCF8BB:                 Print 1, Proc_260_1_10A5350(Proc_6_45_EAD428(var_94, &H14), "D", &H28)
  loc_1BCF8D5:                 Print 1
  loc_1BCF8DD:                 Print 1
  loc_1BCF916:                 Proc_6_39_E7C810(var_194, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BCF938:                 var_144 = (Chr(&HF) + "KOT No.   :       ")
  loc_1BCF942:                 var_1DC = (CVar(Proc_6_45_EAD428(var_F0, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_194), &HA)))
  loc_1BCF948:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_194))
  loc_1BCF9FA:                 var_144 = (Chr(&HF) + "KOT Dt.   :       ")
  loc_1BCFA04:                 var_1CC = (CVar(Proc_6_45_EAD428(var_F0, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), &H28), &HC)))
  loc_1BCFA0D:                 var_1DC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), &H28), &HC))), &HA)) + " ")
  loc_1BCFA17:                 var_22C = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), &H28), &HC)))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BCFA1D:                 Print 1, "* NC LOT *"
  loc_1BCFAAF:                 var_144 = (Chr(&HF) + "Remarks :       ")
  loc_1BCFAB9:                 var_1CC = (CVar(Proc_6_45_EAD428(var_F0, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Remarks"))), &H32)))
  loc_1BCFAC0:                 var_1EC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Remarks"))), &H32))), &HA)) + Chr(&H12))
  loc_1BCFAC6:                 Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BCFB4E:                 var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_100, &HA)))
  loc_1BCFB57:                 var_194 = (CVar(var_B8.Fields.Item("Remarks")) + ":       ")
  loc_1BCFB5E:                 var_1DC = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo"))), 5)) 'String
  loc_1BCFB61:                 var_1EC = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Remarks"))), &H32)) + var_1DC)
  loc_1BCFB67:                 Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BCFBA2:                 var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BCFBA8:                 Print 1, CVar(Proc_6_45_EAD428(var_100, &HA))
  loc_1BCFBB5:               End If
  loc_1BCFBDB:               var_168 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1BCFBF5:               var_1CC = (CVar(var_B8.Fields.Item("Remarks")) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1BCFBFA:               var_B0 = CStr(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BCFC27:               var_144 = (Chr(&HF) + CVar(var_B0))
  loc_1BCFC2D:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1BCFC50:               var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BCFC56:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1BCFC69:               var_96 = (var_96 + 4)
  loc_1BCFC6F:               var_BC.MoveFirst
  loc_1BCFC74:               ' Referenced from:       1BD0014
  loc_1BCFC83:               If Not(var_BC.EOF) Then
  loc_1BCFCD3:                 Proc_6_39_E7C810(var_1DC, CVar(var_BC.Fields.Item("qty")))
  loc_1BCFD76:                 var_194 = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1BCFD8F:                 var_24C = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1DC, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6)))))
  loc_1BCFDA5:                 var_304 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1BCFDA8:                 var_33C = (&H12 + var_304)
  loc_1BCFE01:                 var_144 = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1BCFE07:                 Print 1, Space(3)
  loc_1BCFE1A:                 var_96 = (var_96 + 1)
  loc_1BCFE56:                 If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BCFE99:                   var_144 = (Chr(&HF) + "(")
  loc_1BCFEA3:                   var_1CC = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")))))
  loc_1BCFEAC:                   var_1DC = (CVar(var_BC.Fields.Item("qty")) + ")")
  loc_1BCFEB2:                   Print 1, var_1DC
  loc_1BCFED3:                   var_96 = (var_96 + 1)
  loc_1BCFED6:                 End If
  loc_1BCFEE0:                 If (&H12 = (&H45 - var_AA)) Then
  loc_1BCFEF9:                   var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BCFEFF:                   Print 1, Space(3)
  loc_1BCFF11:                   Print 1, "Contd."
  loc_1BCFF29:                   Print 1, Chr(&HC)
  loc_1BCFF38:                   var_98 = (var_98 + 1)
  loc_1BCFF3D:                   var_96 = 0
  loc_1BCFF6F:                   var_198 = Proc_260_1_10A5350(var_94, "B", &H28, Proc_260_2_136D614(1, Proc_260_2_136D614(1, var_96, &H28, var_96), &H28, Proc_260_2_136D614(1, var_96, &H28, var_96)))
  loc_1BCFF74:                   Print 1, var_198
  loc_1BCFF85:                   var_96 = &H12
  loc_1BCFF9E:                   var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BCFFA4:                   Print 1, Space(3)
  loc_1BCFFC7:                   var_144 = (Chr(&HF) + CVar(var_B0))
  loc_1BCFFCD:                   Print 1, Space(3)
  loc_1BCFFF0:                   var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BCFFF6:                   Print 1, Space(3)
  loc_1BD0009:                   var_96 = (var_96 + 4)
  loc_1BD000C:                 End If
  loc_1BD000F:                 var_BC.MoveNext
  loc_1BD0014:                 GoTo loc_1BCFC74
  loc_1BD0017:               End If
  loc_1BD0021:               If (var_96 < (&H45 - var_AA)) Then
  loc_1BD0024:                 ' Referenced from:       1BD0045
  loc_1BD002E:                 If (var_96 = (&H45 - var_AA)) Then
  loc_1BD0036:                   Print 1, vbNullString
  loc_1BD0042:                   var_96 = (var_96 + 1)
  loc_1BD0045:                   GoTo loc_1BD0024
  loc_1BD0048:                 End If
  loc_1BD0048:               End If
  loc_1BD005E:               var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD0064:               Print 1, Space(3)
  loc_1BD008D:               var_16C = var_B8.Fields
  loc_1BD00C5:               var_144 = (Chr(&HF) + "Waiter Name  :       ")
  loc_1BD00CC:               var_194 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C.Item("WaiterName")), var_96, var_96, var_96), &H14, 1)) 'String
  loc_1BD00CF:               var_1CC = (Space(3) + var_194)
  loc_1BD00D5:               Print 1, CVar(var_BC.Fields.Item("qty"))
  loc_1BD00FC:               var_124 = Chr(&HF)
  loc_1BD0119:               var_144 = (var_124 + "***  ")
  loc_1BD0120:               var_194 = Space(3) & Trim(var_CC) 
  loc_1BD012F:               Print 1, var_194 & "  ***"
  loc_1BD015F:               Proc_6_17_EAA2B0(var_124, arg_C, "Select Count(Distinct Printed) from kot where docid=", var_194)
  loc_1BD0167:               var_144 = -1 & var_124 
  loc_1BD017E:               unk_43FED1.Execute CStr(Space(3) & " AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')"), var_16C, var_96
  loc_1BD01AF:               var_16C = var_16C.Fields
  loc_1BD01BF:               var_124 = var_16C.Item(0).Value
  loc_1BD01D9:               If (var_124 > 1) Then
  loc_1BD0217:                 Print 1, Proc_260_1_10A5350(Proc_6_45_EAD428("Changed KOT", &H14), "D")
  loc_1BD022F:               Else
  loc_1BD024C:                 Proc_6_17_EAA2B0(var_124, arg_C, "Select Max(Printed) from kot where docid=", var_194)
  loc_1BD0254:                 var_144 = -1 & var_124 
  loc_1BD026B:                 unk_43FED1.Execute CStr(Space(3) & vbNullString), var_16C, &H28
  loc_1BD02C3:                 If (Proc_6_38_E68A98(CVar(var_16C.Fields.Fields.Fields.Item(0))) = "Y") Then
  loc_1BD0301:                   Print 1, Proc_260_1_10A5350(Proc_6_45_EAD428("DUPLICATE KOT", &H14), "D")
  loc_1BD0319:                 Else
  loc_1BD032E:                   var_144 = (Chr(&HF) + vbNullString)
  loc_1BD0334:                   Print 1, Space(3)
  loc_1BD0341:                 End If
  loc_1BD0341:               End If
  loc_1BD0346:               Set var_E0 = Nothing
  loc_1BD035E:               var_144 = (Chr(&HF) + "** ")
  loc_1BD0368:               var_168 = (Space(3) + CVar(MemVar_1F9221C))
  loc_1BD0371:               var_194 = (Space(3) & vbNullString + " **")
  loc_1BD0377:               Print 1, var_194
  loc_1BD038B:               var_B8.MoveNext
  loc_1BD0392:               Print 1
  loc_1BD039A:               Print 1
  loc_1BD03A2:               Print 1
  loc_1BD03AA:               Print 1
  loc_1BD03B2:               Print 1
  loc_1BD03BA:               Print 1
  loc_1BD03C2:               Print 1
  loc_1BD03CA:               Print 1
  loc_1BD03D2:               Print 1
  loc_1BD03F8:               var_168 = (Chr(&H1B) + Chr(&H6D))
  loc_1BD03FE:               Print 1, Space(3) & vbNullString
  loc_1BD040D:               GoTo loc_1BCF547
  loc_1BD0410:             End If
  loc_1BD0412:             Close 1
  loc_1BD042E:             Open "C:\reptmp\KOTPrint_C" & CStr(arg_10) & ".BAT" For Output As 1 Len = &HFF
  loc_1BD0443:             If (arg_18 <> vbNullString) Then
  loc_1BD0465:               Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT>" & arg_18
  loc_1BD0479:             Else
  loc_1BD0498:               Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT>" & MemVar_1F923B4
  loc_1BD04A9:             End If
  loc_1BD04AB:             Close 1
  loc_1BD04D1:             var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_C" & CStr(arg_10) & ".BAT"), 0)) 'Variant
  loc_1BD04E2:           Else
  loc_1BD04ED:             If Not (var_1BC = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1BD04FB:               If (var_1BC = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_1BD04FE:               End If
  loc_1BD0500:               Close 1
  loc_1BD051C:               Open "C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT" For Output As 1 Len = &HFF
  loc_1BD052C:               var_B8.MoveFirst
  loc_1BD0531:               ' Referenced from:         1BD16F6
  loc_1BD0540:               If Not(var_B8.EOF) Then
  loc_1BD0545:                 var_96 = 0
  loc_1BD0663:                 var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU") 'Variant
  loc_1BD066D:                 var_304 = IIf(var_2F4, IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), &H28) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BD0676:                 var_94 = CStr(var_304)
  loc_1BD06E2:                 var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1BD06F1:                 If (var_96 = 0) Then
  loc_1BD06F6:                   Print 1
  loc_1BD0704:                   If (var_E4 <> vbNullString) Then
  loc_1BD072D:                     var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_E4, &H28)))
  loc_1BD0733:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BD0745:                   End If
  loc_1BD074D:                   If (var_E8 <> vbNullString) Then
  loc_1BD0776:                     var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_E8, &H28)))
  loc_1BD077C:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BD078E:                   End If
  loc_1BD0796:                   If (var_EC <> vbNullString) Then
  loc_1BD07BF:                     var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_EC, &H28)))
  loc_1BD07C5:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BD07D7:                   End If
  loc_1BD07DF:                   If (var_F0 <> vbNullString) Then
  loc_1BD0808:                     var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1BD080E:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BD0820:                   End If
  loc_1BD0822:                   Print 1
  loc_1BD0851:                   var_194 = (42 - Len(Trim(var_104)))
  loc_1BD0894:                   var_284 = (42 - Len(Trim(var_104)))
  loc_1BD08BE:                   var_1EC = (Chr(&HF) + Space(CLng((3 / 2))))
  loc_1BD08C5:                   var_22C = ("0.00" + Trim(var_104))
  loc_1BD08CC:                   var_2E4 = ("* NC LOT *" + Space(CLng((CVar(var_B8.Fields.Item("NCKOT")) / 2))))
  loc_1BD08D3:                   var_304 = (IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") + Chr(&H12))
  loc_1BD08D9:                   Print 1, var_304
  loc_1BD0921:                   var_194 = (42 - Len(Trim(var_94)))
  loc_1BD0954:                   var_25C = (42 - Len(Trim(var_94)))
  loc_1BD097E:                   var_1EC = (Chr(&HF) + Space(CLng((3 / 2))))
  loc_1BD0988:                   var_1FC = ("0.00" + CVar(var_94))
  loc_1BD098F:                   var_2D4 = (Trim(var_104) + Space(CLng((Len(Trim(var_104)) / 2))))
  loc_1BD0996:                   var_2F4 = (Space(CLng((CVar(var_B8.Fields.Item("NCKOT")) / 2))) + Chr(&H12))
  loc_1BD099C:                   Print 1, Chr(&H12)
  loc_1BD09C0:                   Print 1
  loc_1BD09C8:                   Print 1
  loc_1BD0A07:                   If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("CardNo")), &H12) <> vbNullString) Then
  loc_1BD0A6B:                     var_144 = (Chr(&HF) + "Membership No.:         ")
  loc_1BD0A75:                     var_1CC = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("CardNo"))), &H1A)))
  loc_1BD0A7C:                     var_1EC = ((3 / 2) + Chr(&H12))
  loc_1BD0A82:                     Print 1, "0.00"
  loc_1BD0AA5:                   End If
  loc_1BD0ADE:                   If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("MemName"))) <> vbNullString) Then
  loc_1BD0B42:                     var_144 = (Chr(&HF) + "Member :         ")
  loc_1BD0B49:                     var_194 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("MemName"))), &H21)) 'String
  loc_1BD0B4C:                     var_1CC = (Trim(var_94) + var_194)
  loc_1BD0B53:                     var_1EC = ((3 / 2) + Chr(&H12))
  loc_1BD0B59:                     Print 1, "0.00"
  loc_1BD0B7C:                   End If
  loc_1BD0BAF:                   Proc_6_39_E7C810(var_194, CVar(var_B8.Fields.Item("VNo")))
  loc_1BD0BDE:                   var_144 = (Chr(&HF) + "KOT No.   :         ")
  loc_1BD0BE8:                   var_1DC = (Trim(var_94) + CVar(Proc_6_45_EAD428(CStr(var_194), &HA)))
  loc_1BD0BEF:                   var_1FC = (Chr(&H12) + Chr(&H12))
  loc_1BD0BF5:                   Print 1, Trim(var_104)
  loc_1BD0CB8:                   var_144 = (Chr(&HF) + "KOT Dt.   :         ")
  loc_1BD0CC2:                   var_1CC = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate"))), &HC)))
  loc_1BD0CCB:                   var_1DC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate"))), &HC))), &HA)) + " ")
  loc_1BD0CD5:                   var_22C = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BD0CDC:                   var_25C = (Trim(var_94) + Chr(&H12))
  loc_1BD0CE2:                   Print 1, Len(Trim(var_104))
  loc_1BD0D78:                   var_144 = (Chr(&HF) + "Remarks :         ")
  loc_1BD0D82:                   var_1CC = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Remarks"))), &H20)))
  loc_1BD0D89:                   var_1EC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Remarks"))), &H20))), &HA)) + Chr(&H12))
  loc_1BD0D8F:                   Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BD0E34:                   Proc_6_39_E7C810(Trim(var_94), CVar(var_B8.Fields.Item("GuarAtt")))
  loc_1BD0E6C:                   Proc_6_39_E7C810(Space(CLng((CVar(var_B8.Fields.Item("NCKOT")) / 2))), CVar(var_B8.Fields.Item("GuarAtt")))
  loc_1BD0E9A:                   var_284 = (Space(&HA) + "Covers:         ")
  loc_1BD0EA4:                   var_2F4 = ((Len(Trim(var_104)) / 2) + CVar(Proc_6_45_EAD428(CStr(Space(CLng((CVar(var_B8.Fields.Item("NCKOT")) / 2)))), 7)))
  loc_1BD0EDA:                   var_168 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_100, &HA)))
  loc_1BD0EE3:                   var_194 = (CVar(var_B8.Fields.Item("Remarks")) + ":         ")
  loc_1BD0EED:                   var_1EC = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Remarks"))), &H20)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo"))), 5)))
  loc_1BD0EF4:                   var_360 = (CVar(var_B8.Fields.Item("VTIME")) + IIf((Trim(var_94) <> 0), Chr(&H12), vbNullString))
  loc_1BD0EFB:                   var_394 = (var_360 + Chr(&H12))
  loc_1BD0F01:                   Print 1, var_394
  loc_1BD0F71:                   var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD0F78:                   var_194 = (CVar(Proc_6_45_EAD428(var_100, &HA)) + Chr(&H12))
  loc_1BD0F7E:                   Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Remarks"))), &H20))
  loc_1BD0F8F:                 End If
  loc_1BD0FB5:                 var_168 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Space(3))
  loc_1BD0FCF:                 var_1CC = (Chr(&H12) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1BD0FDB:                 var_1DC = Space(3)
  loc_1BD0FE3:                 var_1EC = (CVar(var_B8.Fields.Item("TableNo")) + var_1DC)
  loc_1BD0FFD:                 var_22C = (CVar(var_B8.Fields.Item("VTIME")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_1BD1046:                 var_144 = (Chr(&HF) + CVar(CStr(Trim(var_94))))
  loc_1BD104D:                 var_194 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_1BD1053:                 Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1BD1087:                 var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD108E:                 var_194 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_1BD1094:                 Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1BD10AB:                 var_96 = (var_96 + 4)
  loc_1BD10B1:                 var_BC.MoveFirst
  loc_1BD10B6:                 ' Referenced from:         1BD133E
  loc_1BD10C5:                 If Not(var_BC.EOF) Then
  loc_1BD1115:                   Proc_6_39_E7C810(var_1DC, CVar(var_BC.Fields.Item("qty")))
  loc_1BD1160:                   Proc_6_39_E7C810(Space(CLng((CVar(var_B8.Fields.Item("NCKOT")) / 2))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1BD116F:                   var_20C = "0.00"
  loc_1BD11AA:                   var_194 = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + Space(3))
  loc_1BD11C3:                   var_24C = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1DC, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6)))))
  loc_1BD11D7:                   var_284 = (Chr(&H12) + Space(3))
  loc_1BD11ED:                   var_304 = CVar(Proc_6_52_EAD4F4(CStr(Format(Space(CLng((CVar(var_B8.Fields.Item("NCKOT")) / 2))), var_20C)), 6, (Len(Trim(var_104)) / 2))) 'String
  loc_1BD11F0:                   var_33C = (&H12 + var_304)
  loc_1BD1256:                   var_144 = (Chr(&HF) + CVar(CStr(vbNullString)))
  loc_1BD125D:                   var_194 = (Space(3) + Chr(&H12))
  loc_1BD1263:                   Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1BD127A:                   var_96 = (var_96 + 1)
  loc_1BD12B6:                   If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BD12F9:                     var_144 = (Chr(&HF) + "(")
  loc_1BD1303:                     var_1CC = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")))))
  loc_1BD130C:                     var_1DC = (CVar(var_BC.Fields.Item("qty")) + ")")
  loc_1BD1312:                     Print 1, var_1DC
  loc_1BD1333:                     var_96 = (var_96 + 1)
  loc_1BD1336:                   End If
  loc_1BD1339:                   var_BC.MoveNext
  loc_1BD133E:                   GoTo loc_1BD10B6
  loc_1BD1341:                 End If
  loc_1BD1364:                 var_144 = (Chr(&HF) + CVar(var_C4))
  loc_1BD136B:                 var_194 = (Space(3) + Chr(&H12))
  loc_1BD1371:                 Print 1, CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description"))))
  loc_1BD139E:                 var_16C = var_B8.Fields
  loc_1BD13E3:                 var_144 = (Chr(&HF) + "Waiter Name  :         ")
  loc_1BD13ED:                 var_1CC = (Space(3) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C.Item("WaiterName")), &H12), &H14)))
  loc_1BD13F4:                 var_1EC = (CVar(var_BC.Fields.Item("qty")) + Chr(&H12))
  loc_1BD13FA:                 Print 1, "0.00"
  loc_1BD1425:                 var_124 = Chr(&HF)
  loc_1BD1442:                 var_1CC = Chr(&H12)
  loc_1BD144F:                 var_144 = (var_124 + "***  ")
  loc_1BD1456:                 var_194 = Space(3) & Trim(var_CC) 
  loc_1BD1462:                 var_1DC = ("  ***" + var_1CC)
  loc_1BD146C:                 Print 1, var_194 & Chr(&H12)
  loc_1BD14A0:                 Proc_6_17_EAA2B0(var_124, arg_C, "Select Count(Distinct Printed) from kot where docid=", var_194)
  loc_1BD14A8:                 var_144 = -1 & var_124 
  loc_1BD14BF:                 unk_43FED1.Execute CStr(Space(3) & " AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')"), var_16C, var_20C
  loc_1BD14F0:                 var_16C = var_16C.Fields
  loc_1BD1500:                 var_124 = var_16C.Item(0).Value
  loc_1BD151A:                 If (var_124 > 1) Then
  loc_1BD1558:                   Print 1, Proc_260_1_10A5350(Proc_6_45_EAD428("Changed KOT"), "D")
  loc_1BD1570:                 Else
  loc_1BD158D:                   Proc_6_17_EAA2B0(var_124, arg_C, "Select Max(Printed) from kot where docid=", var_194)
  loc_1BD1595:                   var_144 = -1 & var_124 
  loc_1BD15AC:                   unk_43FED1.Execute CStr(Space(3) & vbNullString), var_16C, &H28
  loc_1BD1604:                   If (Proc_6_38_E68A98(CVar(var_16C.Fields.Fields.Fields.Item(0))) = "Y") Then
  loc_1BD1642:                     Print 1, Proc_260_1_10A5350(Proc_6_45_EAD428("DUPLICATE KOT", &H14), "D")
  loc_1BD165A:                   Else
  loc_1BD165C:                     Print 1
  loc_1BD1662:                   End If
  loc_1BD1662:                 End If
  loc_1BD1667:                 Set var_E0 = Nothing
  loc_1BD167F:                 var_144 = (Chr(&HF) + "** ")
  loc_1BD1689:                 var_168 = (Space(3) + CVar(MemVar_1F9221C))
  loc_1BD1692:                 var_194 = (Space(3) & vbNullString + " **")
  loc_1BD1698:                 Print 1, var_194
  loc_1BD16AC:                 var_B8.MoveNext
  loc_1BD16B3:                 Print 1
  loc_1BD16BB:                 Print 1
  loc_1BD16E1:                 var_168 = (Chr(&H1B) + Chr(&H6D))
  loc_1BD16E7:                 Print 1, Space(3) & vbNullString
  loc_1BD16F6:                 GoTo loc_1BD0531
  loc_1BD16F9:               End If
  loc_1BD16FB:               Close 1
  loc_1BD1717:               Open "C:\reptmp\KOTPrint_C" & CStr(arg_10) & ".BAT" For Output As 1 Len = &HFF
  loc_1BD172C:               If (arg_18 <> vbNullString) Then
  loc_1BD174E:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT>" & arg_18
  loc_1BD1762:               Else
  loc_1BD1781:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_10) & ".TXT>" & MemVar_1F923B4
  loc_1BD1792:               End If
  loc_1BD1794:               Close 1
  loc_1BD17BA:               var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_C" & CStr(arg_10) & ".BAT"), 0)) 'Variant
  loc_1BD17C8:             End If
  loc_1BD17C8:           End If
  loc_1BD17C8:         End If
  loc_1BD17C8:       End If
  loc_1BD17C8:     End If
  loc_1BD17CB:   Else
  loc_1BD1815:     MsgBox("Please Check Printer Setting of Central KOT For " & var_C0.Fields.Item("Name").Value & ".", &H40, var_194, var_1CC, Chr(&H12))
  loc_1BD1830:   End If
  loc_1BD1833:   var_C0.MoveNext
  loc_1BD1838:   GoTo loc_1BCC774
  loc_1BD183B: End If
  loc_1BD1840: Set var_B8 = Nothing
  loc_1BD1848: Set var_BC = Nothing
  loc_1BD1850: Set var_C0 = Nothing
  loc_1BD1858: Result &HFF End Sub 'Integer
  loc_1BD1859: ' Referenced from: 1BCC270
  loc_1BD1859: Proc_6_60_E62BC4(&H28)
  loc_1BD185E: Result &H14 End Sub 'Integer
End Sub

Public Sub Proc_260_23_F5CF3C(arg_C) 'F5CF3C
  'Data Table: 43FECC
  Dim var_8C As Recordset15
  loc_F5CE13: Set var_8C = arg_C 
  loc_F5CE3B: var_8C.Fields.Append "PrintType", &HC8, &H4B
  loc_F5CE67: var_8C.Fields.Append "Printer", &HC8, &H4B
  loc_F5CE93: var_8C.Fields.Append "NoOfKot", 3, 0
  loc_F5CEBF: var_8C.Fields.Append "Split", &HC8, 3
  loc_F5CEEB: var_8C.Fields.Append "RestCode", &HC8, 6
  loc_F5CEFB: var_8C.CursorType = 3
  loc_F5CF08: var_8C.LockType = 3
  loc_F5CF27: var_8C.Open var_A0, var_B0, -1
  loc_F5CF2E: Set var_8C = Nothing 
  loc_F5CF35: Set var_88 = arg_C 
  loc_F5CF39: Exit Sub
End Sub

Public Sub Proc_260_24_EF25D4(arg_C) 'EF25D4
  'Data Table: 43FECC
  Dim var_8C As Recordset15
  loc_EF2503: Set var_8C = arg_C 
  loc_EF252B: var_8C.Fields.Append "mLine", &HC8, 1
  loc_EF2557: var_8C.Fields.Append "Detail", &HC8, &H32
  loc_EF2583: var_8C.Fields.Append "Mark", &HC8, 1
  loc_EF2593: var_8C.CursorType = 3
  loc_EF25A0: var_8C.LockType = 3
  loc_EF25BF: var_8C.Open var_A0, var_B0, -1
  loc_EF25C6: Set var_8C = Nothing 
  loc_EF25CD: Set var_88 = arg_C 
  loc_EF25D1: Exit Sub
End Sub

Public Sub Proc_260_25_F113B8(arg_C, arg_10, arg_14, arg_18) 'F113B8
  'Data Table: 43FECC
  Dim var_88 As Recordset15
  Dim var_98 As Variant
  Dim var_A8 As String
  loc_F112C7: Set var_88 = arg_C 
  loc_F112D6: var_88.AddNew var_98, var_A8
  loc_F1130E: var_88.Fields.Item("mLine").Value = Trim(arg_10)
  loc_F11350: var_88.Fields.Item("Detail").Value = Trim(arg_14)
  loc_F11362: var_98 = arg_18
  loc_F11376: var_A8 = "Mark"
  loc_F11392: var_88.Fields.Item(var_A8).Value = Trim(var_98)
  loc_F113AC: var_88.Update var_98, var_A8
  loc_F113B3: Set var_88 = Nothing 
  loc_F113B7: Exit Sub
End Sub
