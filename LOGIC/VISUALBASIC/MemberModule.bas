
Public Sub Proc_272_0_F5A7DC(arg_C) 'F5A7DC
  'Data Table: 41ED10
  Dim var_8C As Recordset15
  loc_F5A6B3: Set var_8C = arg_C 
  loc_F5A6DB: var_8C.Fields.Append "mLine", &HC8, 2
  loc_F5A707: var_8C.Fields.Append "Sno", &HC8, 3
  loc_F5A733: var_8C.Fields.Append "Desc", &HC8, &H4B
  loc_F5A75F: var_8C.Fields.Append "ChargeAmt", &HC8, &HC
  loc_F5A78B: var_8C.Fields.Append "Mark", &HC8, 1
  loc_F5A79B: var_8C.CursorType = 3
  loc_F5A7A8: var_8C.LockType = 3
  loc_F5A7C7: var_8C.Open var_A0, var_B0, -1
  loc_F5A7CE: Set var_8C = Nothing 
  loc_F5A7D5: Set var_88 = arg_C 
  loc_F5A7D9: Exit Sub
End Sub

Public Sub Proc_272_1_19C894C(arg_C, arg_10) '19C894C
  'Data Table: 41ED10
  Dim var_184 As String
  Dim var_188 As String
  Dim unk_41ED1B As Connection15
  Dim var_158 As Recordset15
  Dim var_198 As Variant
  Dim var_1AC As Fields15
  Dim var_1A8 As Variant
  Dim var_1C4 As Variant
  Dim var_1E4 As Variant
  Dim var_204 As String
  Dim var_208 As String
  Dim var_21C As String
  Dim var_224 As String
  Dim var_23C As String
  Dim var_88 As Recordset15
  Dim var_1B4 As Field20
  Dim var_24C As Variant
  Dim var_1D4 As Variant
  Dim var_25C As Variant
  Dim var_1F4 As Variant
  Dim var_26C As Variant
  Dim var_27C As Variant
  Dim var_29C As Variant
  Dim var_2BC As Variant
  Dim var_174 As Recordset15
  Dim var_B6 As Integer
  Dim var_2E0 As Fields15
  Dim var_2FC As Variant
  Dim var_2DC As Variant
  Dim var_2F8 As Variant
  Dim var_340 As Variant
  Dim var_178 As Recordset15
  Dim var_2E8 As Field20
  Dim var_8C As Recordset15
  Dim var_A6 As Integer
  Dim var_344 As Recordset15
  Dim var_2E2 As Integer
  Dim var_A8 As Integer
  Dim var_94 As Recordset15
  Dim var_104 As Double
  Dim var_300 As Fields15
  Dim var_380 As Field20
  Dim var_D4 As Double
  Dim var_CC As Double
  Dim var_DC As Double
  Dim var_E4 As Double
  Dim var_F0 As Double
  loc_19C5920: On Error Goto loc_19C8943
  loc_19C5947: unk_41ED1B.Execute "Select * from MemEnviro where LogSite_Code='" & MemVar_1F92078 & "'", var_1A8, -1
  loc_19C5952: Set var_158 = var_1AC
  loc_19C5976: If (var_158.RecordCount > 0) Then
  loc_19C59BB:   var_17C = CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_158.Fields.Item("Bill_Header")))), &HFE))
  loc_19C5A0F:   var_180 = CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_158.Fields.Item("Bill_Footer")))), &HFE))
  loc_19C5A63:   var_150 = CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_158.Fields.Item("BillMessage")))), &HFE))
  loc_19C5A84:   var_1AC = var_158.Fields
  loc_19C5A94:   var_1A8 = CVar(var_1AC.Item("BillPayDueDate")) 'Address
  loc_19C5AC7:   var_154 = CStr(Format(CVar(Proc_6_38_E68A98(var_1A8)), "dd/MMM/yyyy"))
  loc_19C5ADB: End If
  loc_19C5AEF: var_184 = "Select S.Name As MemName,S.ConPrefix,S.ConPerson,S.ConPersonMName,S.ConPersonLName,S.Add1,S.Add2,S.Add3,City.CityName,State.ShortName StateCode,State.Name State,S.GSTIN,S.PIN,S.Phone,S.Mobile,M.* From membill M Left Join SubGroup S On M.MemCode=S.SubCode Left Join City On S.CityCode=City.CityCode Left Join State on City.State=State.Code Where M.DocId='" & arg_C
  loc_19C5B1B: unk_41ED1B.Execute var_184 & "' And M.Site_Code='" & MemVar_1F92070 & "' And (M.LogSite_Code='" & MemVar_1F92078 & "' Or M.LogSite_Code='HO')", var_1A8, -1
  loc_19C5B26: Set var_88 = var_1AC
  loc_19C5B52: var_184 = "Select MF.Name As Facility,M1.* From membill1 M1 Left Join MemFacilityMast MF On M1.FacilityCode=MF.Code Where M1.DocId='" & arg_C
  loc_19C5B75: var_204 = var_184 & "' And M1.Type='Facility' And M1.Site_Code='" & MemVar_1F92070 & "' And (M1.LogSite_Code='" & MemVar_1F92078 & "' Or M1.LogSite_Code='HO') union "
  loc_19C5B7C: var_208 = var_204 & "Select MR.Description As Facility,M1.* From membill1 M1 Left Join MembershipRevMast MR On M1.FacilityCode=MR.Code Where M1.DocId='"
  loc_19C5B9F: var_21C = var_208 & arg_C & "' And M1.Type='Revenue' And M1.Site_Code='" & MemVar_1F92070 & "' And (M1.LogSite_Code='" & MemVar_1F92078
  loc_19C5BAD: var_224 = var_21C & "' Or M1.LogSite_Code='HO') union " & "Select Case When IsNull(D.Name,'')='' Then 'Banquet' Else D.Name End As Facility,M1.* From membill1 M1 Left Join Depart D On M1.OutletCode=D.Code Where M1.DocId='"
  loc_19C5BD7: var_23C = var_224 & arg_C & "' And M1.Type='Outlet' And M1.Site_Code='" & MemVar_1F92070 & "' And (M1.LogSite_Code='" & MemVar_1F92078 & "' Or M1.LogSite_Code='HO') Order by sno"
  loc_19C5BE0: unk_41ED1B.Execute var_23C, var_1A8, -1
  loc_19C5BEB: Set var_8C = var_1AC
  loc_19C5C3A: var_188 = "Select R.Name As SunName,MS.* From memSunTran MS Left Join RevMast R On MS.SunCode=R.Code Where MS.DocId='" & arg_C & "' And MS.Site_Code='"
  loc_19C5C5F: unk_41ED1B.Execute var_188 & MemVar_1F92070 & "' And (MS.LogSite_Code='" & MemVar_1F92078 & "' Or MS.LogSite_Code='HO') Order By Sno", var_1A8, -1
  loc_19C5C6A: Set var_94 = var_1AC
  loc_19C5C96: If (var_88.RecordCount > 0) Then
  loc_19C5CA6:   var_1E4 = "Select LTRIM(IsNull(M.ConPrefix,'')+' '+IsNull(M.Name,'')) As AddMemName,M.RelationShip From MemberFamily M Where M.SubCode='"
  loc_19C5CBD:   var_1AC = var_88.Fields
  loc_19C5CD5:   var_1C4 = "dd/MMM/yyyy" & var_1AC.Item("MemCode").Value 
  loc_19C5D04:   var_2BC = var_1C4 & "' And M.Site_Code='" & CVar(MemVar_1F92070) & "' And (M.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or M.LogSite_Code='HO') Order By M.Sno" 
  loc_19C5D12:   unk_41ED1B.Execute CStr(var_2BC), var_2DC, -1
  loc_19C5D1D:   Set var_174 = var_2E0
  loc_19C5D53:   If (var_174.RecordCount > 0) Then
  loc_19C5D59:     var_174.MoveFirst
  loc_19C5D5E:   End If
  loc_19C5D5E: End If
  loc_19C5D62: Set var_C4 = New 
  loc_19C5D6D: Set var_C4 = Proc_272_0_F5A7DC(var_C4, var_2E0, var_1AC, var_1AC)
  loc_19C5D70: ' Referenced from: 19C8907
  loc_19C5D7F: If Not(var_88.EOF) Then
  loc_19C5D95:   var_B0 = "** " & "MEMBER BILL" & " **"
  loc_19C5DAA:   var_1AC = var_88.Fields
  loc_19C5DC1:   Proc_6_39_E7C810(var_1C4, CVar(var_1AC.Item("VNo")), 0, var_1AC)
  loc_19C5DCB:   var_108 = CStr(var_1C4)
  loc_19C5E02:   var_10C = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")), 1)
  loc_19C5E33:   var_110 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemName")), 1)
  loc_19C5E64:   var_164 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPrefix")))
  loc_19C5E95:   var_168 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPerson")))
  loc_19C5EC6:   var_16C = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPersonMName")))
  loc_19C5EF7:   var_170 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPersonLName")))
  loc_19C5F7D:   var_300 = var_88.Fields.Item("Add3")
  loc_19C5FB6:   var_1F4 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1"))))) + ", ")
  loc_19C5FBD:   var_2DC = (CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")))) & "' And M.Site_Code='" & CVar(MemVar_1F92070) + Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2"))))))
  loc_19C5FC6:   var_2F8 = (var_2DC + ", ")
  loc_19C5FCD:   var_340 = (var_2F8 + Trim(CVar(Proc_6_38_E68A98(CVar(var_300)))))
  loc_19C5FDA:   var_11C = Replace(CStr(var_340), ",,", ",", 1, -1, 0)
  loc_19C6015:   var_1AC = var_88.Fields
  loc_19C603C:   var_1E4 = "-"
  loc_19C6041:   var_1F4 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_1AC.Item("CityName"))))) + ", ")
  loc_19C606D:   var_29C = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Pin")), CVar(Proc_6_38_E68A98(CVar(var_1AC.Item("CityName")))) & "' And M.Site_Code='" & CVar(MemVar_1F92070))) 'String
  loc_19C607B:   var_2DC = (var_1AC + Trim(var_29C))
  loc_19C6080:   var_120 = CStr(var_2DC)
  loc_19C60D4:   var_124 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("StateCode"))))))
  loc_19C611A:   var_128 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("State"))))))
  loc_19C6160:   var_130 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Pin"))))))
  loc_19C61A6:   var_12C = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("GSTIN"))))))
  loc_19C61F7:   var_2E0 = var_88.Fields
  loc_19C6238:   var_1F4 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Mobile"))))) + ", ")
  loc_19C623F:   var_2DC = (CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Mobile")))) & "' And M.Site_Code='" & CVar(MemVar_1F92070) + Trim(CVar(Proc_6_38_E68A98(CVar(var_2E0.Item("Phone"))))))
  loc_19C624C:   var_134 = Replace(CStr(var_2DC), ",,", ",", 1, -1, 0)
  loc_19C62BF:   unk_41ED1B.Execute CStr("Select memcode,frmonth,ToMonth from MemCatChngDetail where memcode='" & var_88.Fields.Item("MemCode").Value & "'"), "Select memcode,frmonth,ToMonth from MemCatChngDetail where memcode='" & var_88.Fields.Item("MemCode").Value & "' And M.Site_Code='" & CVar(MemVar_1F92070), -1
  loc_19C62CA:   Set var_178 = var_2E0
  loc_19C62F8:   If (var_178.RecordCount > 0) Then
  loc_19C63A1:     If (CDate(Format(CVar("01/" & Proc_6_38_E68A98(CVar(var_178.Fields.Item("FrMonth")))), "dd/MMM/YYYY")) > CDate(var_88.Fields.Item("VDate").Value)) Then
  loc_19C63D3:       var_1C4 = ("01/" + var_178.Fields.Item("FrMonth").Value)
  loc_19C6406:       var_144 = CStr(Format(CVar(Proc_6_38_E68A98(CVar("01/" & Proc_6_38_E68A98(CVar(var_178.Fields.Item("FrMonth")))), 1)), "dd/MMM/YYYY"))
  loc_19C6423:     Else
  loc_19C647C:       var_144 = CStr(Format(CVar("01/" & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), 1, 1)), "dd/MMM/YYYY"))
  loc_19C6494:     End If
  loc_19C653A:     If (CDate(Format(CVar("01/" & Proc_6_38_E68A98(CVar(var_178.Fields.Item("ToMonth")), 1, 1)), "dd/MMM/YYYY")) > CDate(var_88.Fields.Item("VDate").Value)) Then
  loc_19C656C:       var_1C4 = ("31/" + var_178.Fields.Item("ToMonth").Value)
  loc_19C6596:       var_27C = Format(CVar(Proc_6_38_E68A98(CVar("01/" & Proc_6_38_E68A98(CVar(var_178.Fields.Item("ToMonth")), 1, 1)), 1, 1)), "dd/MMM/YYYY")
  loc_19C659F:       var_148 = CStr(var_27C)
  loc_19C65BC:     Else
  loc_19C660E:       var_148 = CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VDate")), 1, 1)), "dd/MMM/YYYY"))
  loc_19C6622:     End If
  loc_19C6625:   Else
  loc_19C667E:     var_144 = CStr(Format(CVar("01/" & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), 1, 1)), "dd/MMM/YYYY"))
  loc_19C66E8:     var_148 = CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VDate")), 1, 1)), "dd/MMM/YYYY"))
  loc_19C66FC:   End If
  loc_19C6760:   var_14C = CStr(Format(DateAdd("m", CDbl(1), CDate(CDate(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VDate")), 1, 1)))), "dd/MMM/YYYY"))
  loc_19C67AB:   var_1E4 = "dd/MMM/YYYY"
  loc_19C67C8:   var_114 = CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Billdate")), 1, 1)), var_1E4))
  loc_19C6804:   var_118 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), 1, 1)
  loc_19C6810:   var_198 = "U_Name"
  loc_19C6835:   var_140 = Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_198)), 1)
  loc_19C6844:   var_B6 = (var_B6 + 1)
  loc_19C684D:   var_1B0 = var_8C.RecordCount
  loc_19C685B:   If (var_1B0 > 0) Then
  loc_19C6861:     var_8C.MoveFirst
  loc_19C6868:     var_A6 = 0
  loc_19C686B:     ' Referenced from: 19C6A5D
  loc_19C687A:     If Not(var_8C.EOF) Then
  loc_19C6883:       var_A6 = (var_A6 + 1)
  loc_19C6889:       Set var_344 = var_C4 
  loc_19C6898:       var_344.AddNew var_198, var_1E4
  loc_19C68C2:       var_344.Fields.Item("mLine").Value = vbNullString
  loc_19C68F6:       var_344.Fields.Item("Sno").Value = CVar(CStr(var_A6))
  loc_19C6941:       var_1C4 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Facility")), var_A6, var_A6), &H4B)) 'String
  loc_19C6964:       var_344.Fields.Item("Desc").Value = var_1C4
  loc_19C69A6:       Proc_6_39_E7C810(var_1C4, CVar(var_8C.Fields.Item("BaseAmt")))
  loc_19C69C6:       var_1F4 = Format(var_1C4, "0.00")
  loc_19C69DD:       var_27C = CVar(Proc_6_52_EAD4F4(CStr(var_1F4), &HC, 1)) 'String
  loc_19C69F0:       var_2E0 = var_344.Fields
  loc_19C69F8:       var_2E8 = var_2E0.Item("ChargeAmt")
  loc_19C6A00:       var_2E8.Value = var_27C
  loc_19C6A27:       var_198 = "Mark"
  loc_19C6A3B:       var_1B4 = var_344.Fields.Item(var_198)
  loc_19C6A43:       var_1B4.Value = "*"
  loc_19C6A51:       Set var_344 = Nothing 
  loc_19C6A58:       var_8C.MoveNext
  loc_19C6A5D:       GoTo loc_19C686B
  loc_19C6A60:     End If
  loc_19C6A60:   End If
  loc_19C6A76:   Set var_1AC = var_C4 
  loc_19C6A8C:   Set var_C4 = var_1AC
  loc_19C6AAD:   var_184 = MemVar_1F920B4 & "\MemFacilityBill.RPT"
  loc_19C6AB6:   Call 0.Method_arg_1C (var_184, var_198, var_1AC, CreateFieldDefFile(var_1AC, MemVar_1F920B4 & "\MemFacilityBill.ttx", &HFF))
  loc_19C6AC1:   MemVar_1F921E4 = var_1AC
  loc_19C6ACD:   var_A8 = 0
  loc_19C6AD0:   ' Referenced from: 19C6CF2
  loc_19C6AD6:   var_2E2 = var_174.EOF
  loc_19C6ADF:   If Not(var_2E2) Then
  loc_19C6AE8:     var_A8 = (var_A8 + 1)
  loc_19C6AFC:     Call 0.Method_arg_90 (var_1AC, var_1B0, var_A6, 1, var_A8)
  loc_19C6B04:     Call 0.Method_arg_24 (var_A8, var_2E2, 1)
  loc_19C6B10:     For var_348 = var_2E0 To CInt(var_1B0): var_B6 = var_348 'Integer
  loc_19C6B29:       Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6B31:       Call 0.Method_arg_20 (var_184)
  loc_19C6B39:       Call 0.Method_arg_30 (var_2E0)
  loc_19C6B4F:       var_358 = Ucase(CVar(var_184)) 'Variant
  loc_19C6B86:       If (var_358 = Ucase(CVar("AddMember" & CStr(var_A8)))) Then
  loc_19C6BD2:         Proc_6_17_EAA2B0(var_1F4)
  loc_19C6BEE:         Call 0.Method_arg_90 (var_2E0, CLng(var_A6), var_2E8)
  loc_19C6BF6:         Call 0.Method_arg_20 (CStr(var_1F4))
  loc_19C6BFE:         Call 0.Method_arg_38 (StrConv(CVar(Proc_6_38_E68A98(CVar(var_174.Fields.Item("AddMemName")))), 3, 0))
  loc_19C6C21:       Else
  loc_19C6C4A:         If (var_358 = Ucase(CVar("AddRelation" & CStr(var_A8)))) Then
  loc_19C6C85:           var_1C4 = CVar(Proc_6_38_E68A98(CVar(var_174.Fields.Item("RelationShip")))) 'String
  loc_19C6C96:           Proc_6_17_EAA2B0(var_1F4)
  loc_19C6C9E:           var_184 = CStr(var_1F4)
  loc_19C6CB2:           Call 0.Method_arg_90 (var_2E0, CLng(var_A6), var_2E8)
  loc_19C6CBA:           Call 0.Method_arg_20 (var_184)
  loc_19C6CC2:           Call 0.Method_arg_38 (StrConv(var_1C4, 3, 0))
  loc_19C6CE2:         End If
  loc_19C6CE2:       End If
  loc_19C6CE5:     Next var_348 'Integer
  loc_19C6CED:     var_174.MoveNext
  loc_19C6CF2:     GoTo loc_19C6AD0
  loc_19C6CF5:   End If
  loc_19C6CF7:   var_A8 = 0
  loc_19C6CFD:   var_94.MoveFirst
  loc_19C6D02:   ' Referenced from: 19C70DD
  loc_19C6D11:   If Not(var_94.EOF) Then
  loc_19C6D3E:     var_368 = var_94.Fields.Item("SunCode").Value 'Variant
  loc_19C6D5C:     If (var_368 = CVar(MemVar_1F92078 & "TOT")) Then
  loc_19C6D85:       Proc_6_39_E7C810(var_1C4, CVar(var_94.Fields.Item("SunAmt")))
  loc_19C6DAE:       var_138 = CStr(Format(var_1C4, "0.00"))
  loc_19C6DC2:     Else
  loc_19C6DD5:       If (var_368 = CVar(MemVar_1F92078 & "NET")) Then
  loc_19C6E05:         Proc_6_39_E7C810(var_1C4, CVar(var_94.Fields.Item("SunAmt")), CVar(var_104))
  loc_19C6E0D:         var_1D4 = (1 + var_1C4)
  loc_19C6E47:         Proc_6_39_E7C810(var_1C4, CVar(var_94.Fields.Item("SunAmt")), CSng("0.00"))
  loc_19C6E61:         If (var_1C4 > 0) Then
  loc_19C6E73:           var_1AC = var_94.Fields
  loc_19C6E7B:           var_1B4 = var_1AC.Item("SunAmt")
  loc_19C6E8A:           Proc_6_39_E7C810(var_1C4, CVar(var_1B4))
  loc_19C6EAA:           var_1F4 = Format(var_1C4, "0.00")
  loc_19C6EB3:           var_13C = CStr(var_1F4)
  loc_19C6EC4:         End If
  loc_19C6EC7:       Else
  loc_19C6ECD:         var_A8 = (var_A8 + 1)
  loc_19C6EE1:         Call 0.Method_arg_90 (var_1AC, var_1B0, var_A6, 1, var_A8)
  loc_19C6EE9:         Call 0.Method_arg_24 (1, 1)
  loc_19C6EF5:         For var_36C = var_A8 To CInt(var_1B0):     1 = var_36C 'Integer
  loc_19C6F0E:           Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C6F16:           Call 0.Method_arg_20 (var_184)
  loc_19C6F1E:           Call 0.Method_arg_30 (var_A8)
  loc_19C6F34:           var_37C = Ucase(CVar(var_184)) 'Variant
  loc_19C6F6B:           If (var_37C = Ucase(CVar("lblTaxName" & CStr(var_A8)))) Then
  loc_19C6FB7:             Proc_6_17_EAA2B0(var_1F4)
  loc_19C6FD3:             Call 0.Method_arg_90 (var_2E0, CLng(var_A6), var_2E8)
  loc_19C6FDB:             Call 0.Method_arg_20 (CStr(var_1F4))
  loc_19C6FE3:             Call 0.Method_arg_38 (StrConv(CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("SunName")))), 3, 0))
  loc_19C7006:           Else
  loc_19C701B:             var_1C4 = Ucase(CVar("TaxAmt" & CStr(var_A8)))
  loc_19C702F:             If (var_37C = var_1C4) Then
  loc_19C7058:               Proc_6_39_E7C810(var_1C4)
  loc_19C7083:               Proc_6_17_EAA2B0(var_27C, Format(var_1C4, "0.00"), 1)
  loc_19C709F:               Call 0.Method_arg_90 (var_2E0, CLng(var_A6), var_2E8)
  loc_19C70A7:               Call 0.Method_arg_20 (CStr(var_27C), 1)
  loc_19C70AF:               Call 0.Method_arg_38 (CVar(var_94.Fields.Item("SunAmt")))
  loc_19C70CD:             End If
  loc_19C70CD:           End If
  loc_19C70D0:         Next var_36C 'Integer
  loc_19C70D5:       End If
  loc_19C70D5:     End If
  loc_19C70D8:     var_94.MoveNext
  loc_19C70DD:     GoTo loc_19C6D02
  loc_19C70E0:   End If
  loc_19C7144:   var_26C = 0
  loc_19C716B:   var_27C = CVar("Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCode"))) & "' And V_Type In ('CNT') And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_19C7188:   unk_41ED1B.Execute CStr(var_27C & Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear"))))) & "')"), var_2DC, -1
  loc_19C7190:   var_2FC = var_2FC.Fields
  loc_19C7198:   var_26C = var_300.Item(var_300)
  loc_19C71A0:   var_380 = var_380.Value
  loc_19C7232:   var_1F4 = Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")))))
  loc_19C723D:   var_26C = 0
  loc_19C725D:   var_188 = "Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCode")), CSng(var_2F8))
  loc_19C7264:   var_27C = CVar(var_188 & "' And V_Type In ('CNT') And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_19C7281:   unk_41ED1B.Execute CStr(var_27C & var_1F4 & "')"), var_2DC, -1
  loc_19C7289:   var_2FC = var_2FC.Fields
  loc_19C7291:   var_26C = var_300.Item(var_300)
  loc_19C7299:   var_380 = var_380.Value
  loc_19C7332:   Proc_6_7_F25D88(var_1F4, CVar(var_2F8 & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), "01/")))
  loc_19C733D:   var_26C = 0
  loc_19C735D:   var_188 = "Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCode")), CSng(var_2F8))
  loc_19C7381:   unk_41ED1B.Execute CStr(CVar(var_188 & "' And V_date<") & var_1F4 & vbNullString), var_2DC, -1
  loc_19C7389:   var_2FC = var_2FC.Fields
  loc_19C7391:   var_26C = var_300.Item(var_300)
  loc_19C7399:   var_380 = var_380.Value
  loc_19C73A2:   var_D4 = CSng(var_2F8)
  loc_19C7434:   Proc_6_7_F25D88(var_1F4, CVar(var_2F8 & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), "01/")))
  loc_19C743F:   var_26C = 0
  loc_19C7466:   var_27C = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCode")), var_D4) & "' And V_date<") 'String
  loc_19C7483:   unk_41ED1B.Execute CStr(var_27C & var_1F4 & vbNullString), var_2DC, -1
  loc_19C748B:   var_2FC = var_2FC.Fields
  loc_19C7493:   var_26C = var_300.Item(var_300)
  loc_19C749B:   var_380 = var_380.Value
  loc_19C74A4:   var_CC = CSng(var_2F8)
  loc_19C753A:   var_26C = 0
  loc_19C755A:   var_188 = "Select isnull(Sum(AmtDr),0) From Ledger Where isnull(AmtDr,0)<>0 And V_Type Not In ('HPOST','MBILL','CNT','BREC') And SubCode='" & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCode")), var_CC)
  loc_19C7561:   var_27C = CVar(var_188 & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_19C757E:   unk_41ED1B.Execute CStr(var_27C & Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), var_2F8))) & "')"), var_2DC, -1
  loc_19C7586:   var_2FC = var_2FC.Fields
  loc_19C758E:   var_26C = var_300.Item(var_300)
  loc_19C7596:   var_380 = var_380.Value
  loc_19C759F:   var_DC = CSng(var_2F8)
  loc_19C75DE:   var_1AC = var_88.Fields
  loc_19C75E6:   var_1B4 = var_1AC.Item("MemCode")
  loc_19C7633:   var_26C = 0
  loc_19C764F:   var_184 = Proc_6_38_E68A98(CVar(var_1B4), var_DC)
  loc_19C7653:   var_188 = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST','MBILL','CNT','BREC') And SubCode='" & var_184
  loc_19C765A:   var_27C = CVar(var_188 & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4) In ('") 'String
  loc_19C7664:   var_24C = "')"
  loc_19C7677:   unk_41ED1B.Execute CStr(var_27C & Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), var_2F8))) & var_24C), var_2DC, -1
  loc_19C767F:   var_2FC = var_2FC.Fields
  loc_19C7687:   var_26C = var_300.Item(var_300)
  loc_19C768F:   var_380 = var_380.Value
  loc_19C7698:   var_E4 = CSng(var_2F8)
  loc_19C76E4:   var_1A8 = CVar((var_CC - var_D4)) 'Double
  loc_19C76EB:   var_1D4 = Format(CVar(var_1B4), "0.00")
  loc_19C76F4:   var_F0 = CSng(var_1D4)
  loc_19C7711:   Call 0.Method_arg_90 (var_1AC, var_1B0, var_A6, 1, var_F0)
  loc_19C7719:   Call 0.Method_arg_24 (1, 1, var_E4)
  loc_19C7725:   For var_384 = var_2F8 To CInt(var_1B0): var_2F8 = var_384 'Integer
  loc_19C773E:     Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7746:     Call 0.Method_arg_20 (var_184)
  loc_19C774E:     Call 0.Method_arg_30 (var_2F8)
  loc_19C7764:     var_394 = Ucase(CVar(var_184)) 'Variant
  loc_19C777A:     var_1A8 = "comp_name"
  loc_19C7794:     If (var_394 = Ucase(var_1A8)) Then
  loc_19C77A2:       Proc_6_17_EAA2B0(var_1A8)
  loc_19C77BE:       Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C77C6:       Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C77CE:       Call 0.Method_arg_38 (MemVar_1F92130)
  loc_19C77E3:     Else
  loc_19C77EB:       var_1A8 = "comp_add1"
  loc_19C7805:       If (var_394 = Ucase(var_1A8)) Then
  loc_19C7813:         Proc_6_17_EAA2B0(var_1A8)
  loc_19C782F:         Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7837:         Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C783F:         Call 0.Method_arg_38 (MemVar_1F92134)
  loc_19C7854:       Else
  loc_19C785C:         var_1A8 = "comp_pin"
  loc_19C7876:         If (var_394 = Ucase(var_1A8)) Then
  loc_19C7884:           Proc_6_17_EAA2B0(var_1A8)
  loc_19C78A0:           Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C78A8:           Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C78B0:           Call 0.Method_arg_38 (MemVar_1F9213C)
  loc_19C78C5:         Else
  loc_19C78E7:           If (var_394 = Ucase("comp_GSTIN")) Then
  loc_19C790B:             Call 0.Method_arg_90 (var_1AC, CLng(var_A6))
  loc_19C7913:             Call 0.Method_arg_20 (var_1B4)
  loc_19C791B:             Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_19C7931:           Else
  loc_19C7942:             var_1C4 = Ucase("Title")
  loc_19C7953:             If (var_394 = var_1C4) Then
  loc_19C7964:               Proc_6_17_EAA2B0(var_1C4)
  loc_19C7980:               Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7988:               Call 0.Method_arg_20 (CStr(var_1C4))
  loc_19C7990:               Call 0.Method_arg_38 ("Member Bill")
  loc_19C79A9:             Else
  loc_19C79B1:               var_1A8 = "BillNo"
  loc_19C79CB:               If (var_394 = Ucase(var_1A8)) Then
  loc_19C79D9:                 Proc_6_17_EAA2B0(var_1A8)
  loc_19C79F5:                 Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C79FD:                 Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7A05:                 Call 0.Method_arg_38 (var_108)
  loc_19C7A1A:               Else
  loc_19C7A22:                 var_1A8 = "CardNo"
  loc_19C7A3C:                 If (var_394 = Ucase(var_1A8)) Then
  loc_19C7A4A:                   Proc_6_17_EAA2B0(var_1A8)
  loc_19C7A66:                   Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7A6E:                   Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7A76:                   Call 0.Method_arg_38 (var_10C)
  loc_19C7A8B:                 Else
  loc_19C7A93:                   var_1A8 = "MemName"
  loc_19C7AAD:                   If (var_394 = Ucase(var_1A8)) Then
  loc_19C7ABB:                     Proc_6_17_EAA2B0(var_1A8)
  loc_19C7AD7:                     Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7ADF:                     Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7AE7:                     Call 0.Method_arg_38 (var_110)
  loc_19C7AFC:                   Else
  loc_19C7B04:                     var_1A8 = "ConPrefix"
  loc_19C7B1E:                     If (var_394 = Ucase(var_1A8)) Then
  loc_19C7B2C:                       Proc_6_17_EAA2B0(var_1A8)
  loc_19C7B48:                       Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7B50:                       Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7B58:                       Call 0.Method_arg_38 (var_164)
  loc_19C7B6D:                     Else
  loc_19C7B75:                       var_1A8 = "ConPerson"
  loc_19C7B8F:                       If (var_394 = Ucase(var_1A8)) Then
  loc_19C7B9D:                         Proc_6_17_EAA2B0(var_1A8)
  loc_19C7BB9:                         Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7BC1:                         Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7BC9:                         Call 0.Method_arg_38 (var_168)
  loc_19C7BDE:                       Else
  loc_19C7BE6:                         var_1A8 = "ConPersonMName"
  loc_19C7C00:                         If (var_394 = Ucase(var_1A8)) Then
  loc_19C7C0E:                           Proc_6_17_EAA2B0(var_1A8)
  loc_19C7C2A:                           Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7C32:                           Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7C3A:                           Call 0.Method_arg_38 (var_16C)
  loc_19C7C4F:                         Else
  loc_19C7C57:                           var_1A8 = "ConPersonLName"
  loc_19C7C71:                           If (var_394 = Ucase(var_1A8)) Then
  loc_19C7C7F:                             Proc_6_17_EAA2B0(var_1A8)
  loc_19C7C9B:                             Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7CA3:                             Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7CAB:                             Call 0.Method_arg_38 (var_170)
  loc_19C7CC0:                           Else
  loc_19C7CC8:                             var_1A8 = "MemAddress"
  loc_19C7CE2:                             If (var_394 = Ucase(var_1A8)) Then
  loc_19C7CF0:                               Proc_6_17_EAA2B0(var_1A8)
  loc_19C7D0C:                               Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7D14:                               Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7D1C:                               Call 0.Method_arg_38 (var_11C)
  loc_19C7D31:                             Else
  loc_19C7D39:                               var_1A8 = "MemCityName"
  loc_19C7D53:                               If (var_394 = Ucase(var_1A8)) Then
  loc_19C7D61:                                 Proc_6_17_EAA2B0(var_1A8)
  loc_19C7D7D:                                 Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7D85:                                 Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7D8D:                                 Call 0.Method_arg_38 (var_120)
  loc_19C7DA2:                               Else
  loc_19C7DAA:                                 var_1A8 = "MemStateCode"
  loc_19C7DC4:                                 If (var_394 = Ucase(var_1A8)) Then
  loc_19C7DD2:                                   Proc_6_17_EAA2B0(var_1A8)
  loc_19C7DEE:                                   Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7DF6:                                   Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7DFE:                                   Call 0.Method_arg_38 (var_124)
  loc_19C7E13:                                 Else
  loc_19C7E1B:                                   var_1A8 = "MemStateName"
  loc_19C7E35:                                   If (var_394 = Ucase(var_1A8)) Then
  loc_19C7E43:                                     Proc_6_17_EAA2B0(var_1A8)
  loc_19C7E5F:                                     Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7E67:                                     Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7E6F:                                     Call 0.Method_arg_38 (var_128)
  loc_19C7E84:                                   Else
  loc_19C7E8C:                                     var_1A8 = "MemPinCode"
  loc_19C7EA6:                                     If (var_394 = Ucase(var_1A8)) Then
  loc_19C7EB4:                                       Proc_6_17_EAA2B0(var_1A8)
  loc_19C7ED0:                                       Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7ED8:                                       Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7EE0:                                       Call 0.Method_arg_38 (var_130)
  loc_19C7EF5:                                     Else
  loc_19C7EFD:                                       var_1A8 = "MemGSTIN"
  loc_19C7F17:                                       If (var_394 = Ucase(var_1A8)) Then
  loc_19C7F25:                                         Proc_6_17_EAA2B0(var_1A8)
  loc_19C7F41:                                         Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7F49:                                         Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7F51:                                         Call 0.Method_arg_38 (var_12C)
  loc_19C7F66:                                       Else
  loc_19C7F6E:                                         var_1A8 = "MemContactNo"
  loc_19C7F88:                                         If (var_394 = Ucase(var_1A8)) Then
  loc_19C7F96:                                           Proc_6_17_EAA2B0(var_1A8)
  loc_19C7FB2:                                           Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C7FBA:                                           Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C7FC2:                                           Call 0.Method_arg_38 (var_134)
  loc_19C7FD7:                                         Else
  loc_19C7FDF:                                           var_1A8 = "DateFrom"
  loc_19C7FF9:                                           If (var_394 = Ucase(var_1A8)) Then
  loc_19C8007:                                             Proc_6_17_EAA2B0(var_1A8)
  loc_19C8023:                                             Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C802B:                                             Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C8033:                                             Call 0.Method_arg_38 (var_144)
  loc_19C8048:                                           Else
  loc_19C8050:                                             var_1A8 = "DateTo"
  loc_19C806A:                                             If (var_394 = Ucase(var_1A8)) Then
  loc_19C8078:                                               Proc_6_17_EAA2B0(var_1A8)
  loc_19C8094:                                               Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C809C:                                               Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C80A4:                                               Call 0.Method_arg_38 (var_148)
  loc_19C80B9:                                             Else
  loc_19C80C1:                                               var_1A8 = "BillDate"
  loc_19C80DB:                                               If (var_394 = Ucase(var_1A8)) Then
  loc_19C80E9:                                                 Proc_6_17_EAA2B0(var_1A8)
  loc_19C8105:                                                 Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C810D:                                                 Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C8115:                                                 Call 0.Method_arg_38 (var_114)
  loc_19C812A:                                               Else
  loc_19C8132:                                                 var_1A8 = "DueDate"
  loc_19C814C:                                                 If (var_394 = Ucase(var_1A8)) Then
  loc_19C815A:                                                   Proc_6_17_EAA2B0(var_1A8)
  loc_19C8176:                                                   Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C817E:                                                   Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C8186:                                                   Call 0.Method_arg_38 (var_14C)
  loc_19C819B:                                                 Else
  loc_19C81A3:                                                   var_1A8 = "BillPayDueDate"
  loc_19C81BD:                                                   If (var_394 = Ucase(var_1A8)) Then
  loc_19C81CB:                                                     Proc_6_17_EAA2B0(var_1A8)
  loc_19C81E7:                                                     Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C81EF:                                                     Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C81F7:                                                     Call 0.Method_arg_38 (var_154)
  loc_19C820C:                                                   Else
  loc_19C8214:                                                     var_1A8 = "BillHeader"
  loc_19C822E:                                                     If (var_394 = Ucase(var_1A8)) Then
  loc_19C823C:                                                       Proc_6_17_EAA2B0(var_1A8)
  loc_19C8258:                                                       Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C8260:                                                       Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C8268:                                                       Call 0.Method_arg_38 (var_17C)
  loc_19C827D:                                                     Else
  loc_19C8285:                                                       var_1A8 = "BillFooter"
  loc_19C829F:                                                       If (var_394 = Ucase(var_1A8)) Then
  loc_19C82AD:                                                         Proc_6_17_EAA2B0(var_1A8)
  loc_19C82C9:                                                         Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C82D1:                                                         Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C82D9:                                                         Call 0.Method_arg_38 (var_180)
  loc_19C82EE:                                                       Else
  loc_19C82F6:                                                         var_1A8 = "BillMessage"
  loc_19C8310:                                                         If (var_394 = Ucase(var_1A8)) Then
  loc_19C831E:                                                           Proc_6_17_EAA2B0(var_1A8)
  loc_19C833A:                                                           Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C8342:                                                           Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C834A:                                                           Call 0.Method_arg_38 (var_150)
  loc_19C835F:                                                         Else
  loc_19C8367:                                                           var_1A8 = "ForMonth"
  loc_19C8381:                                                           If (var_394 = Ucase(var_1A8)) Then
  loc_19C838F:                                                             Proc_6_17_EAA2B0(var_1A8)
  loc_19C83AB:                                                             Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C83B3:                                                             Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C83BB:                                                             Call 0.Method_arg_38 (var_118)
  loc_19C83D0:                                                           Else
  loc_19C83D8:                                                             var_1A8 = "User"
  loc_19C83F2:                                                             If (var_394 = Ucase(var_1A8)) Then
  loc_19C8400:                                                               Proc_6_17_EAA2B0(var_1A8)
  loc_19C841C:                                                               Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C8424:                                                               Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C842C:                                                               Call 0.Method_arg_38 (var_140)
  loc_19C8441:                                                             Else
  loc_19C8463:                                                               If (var_394 = Ucase("PreBalance")) Then
  loc_19C8491:                                                                 Proc_6_17_EAA2B0(var_1D4, Format(var_F0, "0.00"))
  loc_19C84AD:                                                                 Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C84B5:                                                                 Call 0.Method_arg_20 (CStr(var_1D4), 1)
  loc_19C84BD:                                                                 Call 0.Method_arg_38 (1)
  loc_19C84D8:                                                               Else
  loc_19C84FA:                                                                 If (var_394 = Ucase("OtherCredit")) Then
  loc_19C8528:                                                                   Proc_6_17_EAA2B0(var_1D4, Format(var_160, "0.00"))
  loc_19C8544:                                                                   Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C854C:                                                                   Call 0.Method_arg_20 (CStr(var_1D4), 1)
  loc_19C8554:                                                                   Call 0.Method_arg_38 (1)
  loc_19C856F:                                                                 Else
  loc_19C8591:                                                                   If (var_394 = Ucase("DrAmt")) Then
  loc_19C85BF:                                                                     Proc_6_17_EAA2B0(var_1D4, Format(var_DC, "0.00"))
  loc_19C85DB:                                                                     Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C85E3:                                                                     Call 0.Method_arg_20 (CStr(var_1D4), 1)
  loc_19C85EB:                                                                     Call 0.Method_arg_38 (1)
  loc_19C8606:                                                                   Else
  loc_19C8628:                                                                     If (var_394 = Ucase("CrAmt")) Then
  loc_19C8635:                                                                       var_1E4 = "0.00"
  loc_19C8656:                                                                       Proc_6_17_EAA2B0(var_1D4, Format(var_E4, var_1E4))
  loc_19C8672:                                                                       Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C867A:                                                                       Call 0.Method_arg_20 (CStr(var_1D4), 1)
  loc_19C8682:                                                                       Call 0.Method_arg_38 (1)
  loc_19C869D:                                                                     Else
  loc_19C86A5:                                                                       var_1A8 = "Total"
  loc_19C86BF:                                                                       If (var_394 = Ucase(var_1A8)) Then
  loc_19C86CD:                                                                         Proc_6_17_EAA2B0(var_1A8)
  loc_19C86E9:                                                                         Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C86F1:                                                                         Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C86F9:                                                                         Call 0.Method_arg_38 (var_138)
  loc_19C870E:                                                                       Else
  loc_19C8716:                                                                         var_1A8 = "NetTotal"
  loc_19C871F:                                                                         var_1C4 = Ucase(var_1A8)
  loc_19C8730:                                                                         If (var_394 = var_1C4) Then
  loc_19C873E:                                                                           Proc_6_17_EAA2B0(var_1A8)
  loc_19C875A:                                                                           Call 0.Method_arg_90 (var_1AC, CLng(var_A6), var_1B4)
  loc_19C8762:                                                                           Call 0.Method_arg_20 (CStr(var_1A8))
  loc_19C876A:                                                                           Call 0.Method_arg_38 (var_13C)
  loc_19C877C:                                                                         End If
  loc_19C877C:                                                                       End If
  loc_19C877C:                                                                     End If
  loc_19C877C:                                                                   End If
  loc_19C877C:                                                                 End If
  loc_19C877C:                                                               End If
  loc_19C877C:                                                             End If
  loc_19C877C:                                                           End If
  loc_19C877C:                                                         End If
  loc_19C877C:                                                       End If
  loc_19C877C:                                                     End If
  loc_19C877C:                                                   End If
  loc_19C877C:                                                 End If
  loc_19C877C:                                               End If
  loc_19C877C:                                             End If
  loc_19C877C:                                           End If
  loc_19C877C:                                         End If
  loc_19C877C:                                       End If
  loc_19C877C:                                     End If
  loc_19C877C:                                   End If
  loc_19C877C:                                 End If
  loc_19C877C:                               End If
  loc_19C877C:                             End If
  loc_19C877C:                           End If
  loc_19C877C:                         End If
  loc_19C877C:                       End If
  loc_19C877C:                     End If
  loc_19C877C:                   End If
  loc_19C877C:                 End If
  loc_19C877C:               End If
  loc_19C877C:             End If
  loc_19C877C:           End If
  loc_19C877C:         End If
  loc_19C877C:       End If
  loc_19C877C:     End If
  loc_19C877F:   Next var_384 'Integer
  loc_19C879D:   Call 0.Method_arg_64 (var_1AC, CVar(var_C4))
  loc_19C87A5:   Call 0.Method_arg_2C (var_1E4)
  loc_19C87B3:   Call 0.Method_arg_150 (var_24C)
  loc_19C87DE:   Proc_6_39_E7C810(var_1C4)
  loc_19C87F3:   var_24C = arg_10
  loc_19C8805:   var_25C = (Proc_6_38_E68A98(var_24C, (var_1C4 <= 0)) = "N")
  loc_19C881E:   If CBool(CVar(var_158.Fields.Item("NoOfCopy")) And var_25C) Then
  loc_19C8826:     Set var_1B4 = Nothing
  loc_19C8842:     Set var_1AC = MemVar_1F921E4 
  loc_19C884E:     Proc_6_99_1483714(var_1AC, 0, vbNullString)
  loc_19C8859:     MemVar_1F921E4 = var_1AC
  loc_19C886A:   Else
  loc_19C8882:     If (Proc_6_38_E68A98(arg_10, &HFF) = "R") Then
  loc_19C88A2:       Call 0.Method_Me8 (False, 1, var_24C)
  loc_19C88AA:     Else
  loc_19C88D0:       Proc_6_39_E7C810(var_1C4, CVar(var_158.Fields.Item("NoOfCopy")), var_25C)
  loc_19C88F0:       Call 0.Method_Me8 (False, var_1C4, var_24C, var_25C)
  loc_19C88FF:     End If
  loc_19C88FF:   End If
  loc_19C8902:   var_88.MoveNext
  loc_19C8907:   GoTo loc_19C5D70
  loc_19C890A: End If
  loc_19C890F: Set var_88 = Nothing
  loc_19C8917: Set var_8C = Nothing
  loc_19C891F: Set var_90 = Nothing
  loc_19C8927: Set var_94 = Nothing
  loc_19C892F: Set var_C4 = Nothing
  loc_19C8937: Set var_158 = Nothing
  loc_19C893F: Set var_174 = Nothing
  loc_19C8942: Exit Sub
  loc_19C8943: ' Referenced from: 19C5920
  loc_19C8943: Proc_6_60_E62BC4(var_26C, var_26C)
  loc_19C8948: Exit Sub
End Sub

Public Sub Proc_272_2_170434C(arg_C) '170434C
  'Data Table: 41ED10
  Dim var_FC As String
  Dim var_100 As String
  Dim unk_41ED1B As Connection15
  Dim var_F4 As Recordset15
  Dim var_110 As Variant
  Dim var_124 As Fields15
  Dim var_120 As Variant
  Dim var_13C As Variant
  Dim var_150 As String
  Dim var_154 As String
  Dim var_158 As String
  Dim var_15C As String
  Dim var_160 As String
  Dim var_174 As String
  Dim var_17C As String
  Dim var_194 As String
  Dim var_88 As Recordset15
  Dim var_14C As Variant
  Dim var_B0 As Integer
  Dim var_B6 As Integer
  Dim var_AE As Integer
  Dim var_1D8 As Variant
  Dim var_1E8 As Variant
  Dim var_1F8 As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Recordset15
  Dim var_234 As Variant
  Dim var_224 As Variant
  Dim var_274 As Variant
  Dim var_284 As Variant
  Dim var_2A4 As Variant
  Dim var_F0 As Double
  Dim var_264 As Variant
  Dim var_254 As Variant
  Dim var_2B4 As Variant
  Dim var_2D4 As Variant
  Dim var_2FC As Variant
  Dim var_2E8 As Recordset15
  Dim var_2EC As Fields15
  Dim var_300 As Field20
  Dim var_C8 As Double
  Dim var_C0 As Double
  Dim var_DC As Double
  Dim var_2E4 As Variant
  Dim var_D0 As Double
  Dim var_294 As Variant
  loc_1702854: On Error Goto loc_1704345
  loc_170287B: unk_41ED1B.Execute "Select * from MemEnviro where LogSite_Code='" & MemVar_1F92078 & "'", var_120, -1
  loc_1702886: Set var_F4 = var_124
  loc_17028AA: If (var_F4.RecordCount > 0) Then
  loc_17028BC:   var_124 = var_F4.Fields
  loc_17028CC:   var_120 = CVar(var_124.Item("BillMessage")) 'Address
  loc_17028E0:   var_13C = CVar(Proc_6_38_E68A98(var_120)) 'String
  loc_17028EF:   var_F8 = CStr(Left(var_13C, &HFE))
  loc_1702901: End If
  loc_170291C: var_100 = "Select S.Name As MemName,M.* From membill M Left Join SubGroup S On M.MemCode=S.SubCode Where M.DocId='" & arg_C & "' And M.Site_Code='"
  loc_1702941: unk_41ED1B.Execute var_100 & MemVar_1F92070 & "' And (M.LogSite_Code='" & MemVar_1F92078 & "' Or M.LogSite_Code='HO')", var_120, -1
  loc_170294C: Set var_88 = var_124
  loc_1702978: var_FC = "Select MF.Name As Facility,M1.* From membill1 M1 Left Join MemFacilityMast MF On M1.FacilityCode=MF.Code Where M1.DocId='" & arg_C
  loc_170299B: var_15C = var_FC & "' And M1.Type='Facility' And M1.Site_Code='" & MemVar_1F92070 & "' And (M1.LogSite_Code='" & MemVar_1F92078 & "' Or M1.LogSite_Code='HO') union "
  loc_17029A2: var_160 = var_15C & "Select MR.Description As Facility,M1.* From membill1 M1 Left Join MembershipRevMast MR On M1.FacilityCode=MR.Code Where M1.DocId='"
  loc_17029C5: var_174 = var_160 & arg_C & "' And M1.Type='Revenue' And M1.Site_Code='" & MemVar_1F92070 & "' And (M1.LogSite_Code='" & MemVar_1F92078
  loc_17029D3: var_17C = var_174 & "' Or M1.LogSite_Code='HO') union " & "Select D.Name As Facility,M1.* From membill1 M1 Left Join Depart D On M1.OutletCode=D.Code Where M1.DocId='"
  loc_17029FD: var_194 = var_17C & arg_C & "' And M1.Type='Outlet' And M1.Site_Code='" & MemVar_1F92070 & "' And (M1.LogSite_Code='" & MemVar_1F92078 & "' Or M1.LogSite_Code='HO') Order by sno"
  loc_1702A06: unk_41ED1B.Execute var_194, var_120, -1
  loc_1702A11: Set var_8C = var_124
  loc_1702A60: var_100 = "Select R.Name As SunName,MS.* From memSunTran MS Left Join RevMast R On MS.SunCode=R.Code Where MS.DocId='" & arg_C & "' And MS.Site_Code='"
  loc_1702A85: unk_41ED1B.Execute var_100 & MemVar_1F92070 & "' And (MS.LogSite_Code='" & MemVar_1F92078 & "' Or MS.LogSite_Code='HO') Order By Sno", var_120, -1
  loc_1702A90: Set var_94 = var_124
  loc_1702ABC: If (var_88.RecordCount > 0) Then
  loc_1702ABF: End If
  loc_1702AD3: var_124 = var_88.Fields
  loc_1702AEA: Proc_6_39_E7C810(var_13C, CVar(var_124.Item("VNo")), "MBILL", var_124)
  loc_1702AF2: var_14C = var_124 & var_13C 
  loc_1702AF6: var_1B4 = var_14C 'Variant
  loc_1702B06: Close 1
  loc_1702B25: Open CStr("C:\reptmp\" & var_1B4 & ".TXT") For Output As 1 Len = &HFF
  loc_1702B35: var_B0 = 1
  loc_1702B3A: var_B6 = &H14
  loc_1702B3D: ' Referenced from: 170427D
  loc_1702B4C: If Not(var_88.EOF) Then
  loc_1702B51:   var_AE = 0
  loc_1702B62:   var_A8 = "** " & "MEMBER BILL" & " **"
  loc_1702B6E:   If (var_AE = 0) Then
  loc_1702BA9:     Proc_6_39_E7C810(var_14C, CVar(var_88.Fields.Item("VNo")), "Bill No.  : ", var_AE)
  loc_1702BDA:     var_1F8 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(var_B6 & var_14C, var_B0), &H28)))
  loc_1702BE0:     Print 1, var_1F8
  loc_1702C07:     var_AE = (var_AE + 1)
  loc_1702C66:     var_1D8 = (Chr(&H12) + CVar(Proc_6_45_EAD428("M. S. No. : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")), var_AE), &H28)))
  loc_1702C6C:     Print 1, var_B6 & CVar(Proc_6_45_EAD428("M. S. No. : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")), var_AE), &H28))
  loc_1702C91:     var_AE = (var_AE + 1)
  loc_1702CF0:     var_1D8 = (Chr(&H12) + CVar(Proc_6_45_EAD428("Name      : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemName")), var_AE), &H32)))
  loc_1702CF6:     Print 1, var_B6 & CVar(Proc_6_45_EAD428("Name      : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemName")), var_AE), &H32))
  loc_1702D1B:     var_AE = (var_AE + 1)
  loc_1702D7A:     var_1D8 = (Chr(&H12) + CVar(Proc_6_45_EAD428("Bill Date : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("Billdate")), var_AE), &H28)))
  loc_1702D80:     Print 1, var_B6 & CVar(Proc_6_45_EAD428("Bill Date : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("Billdate")), var_AE), &H28))
  loc_1702DA5:     var_AE = (var_AE + 1)
  loc_1702E04:     var_1D8 = (Chr(&H12) + CVar(Proc_6_45_EAD428("For Month : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), var_AE), &H28)))
  loc_1702E0A:     Print 1, var_B6 & CVar(Proc_6_45_EAD428("For Month : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), var_AE), &H28))
  loc_1702E2F:     var_AE = (var_AE + 1)
  loc_1702E60:     var_AC = Replace(CStr(Space(&H46)), " ", "-", 1, -1, 0)
  loc_1702E8F:     var_14C = (Chr(&H12) + CVar(Proc_6_45_EAD428(var_F8, &H46, var_AE)))
  loc_1702E95:     Print 1, CVar(Proc_6_45_EAD428("For Month : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), var_AE), &H28))
  loc_1702EAD:     var_AE = (var_AE + 1)
  loc_1702EC6:     var_13C = (Chr(&H12) + CVar(var_AC))
  loc_1702ECC:     Print 1, CVar(Proc_6_45_EAD428(var_F8, &H46, var_AE))
  loc_1702EDF:     var_AE = (var_AE + 1)
  loc_1702EE2:   End If
  loc_1702EE5:   var_8C.MoveFirst
  loc_1702EEA:   ' Referenced from: 17033EF
  loc_1702EF9:   If Not(var_8C.EOF) Then
  loc_1702F4D:     Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("For Month : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), var_AE), &H28)), CVar(var_8C.Fields.Item("BaseAmt")))
  loc_1702F6D:     var_1E8 = Format(CVar(Proc_6_45_EAD428("For Month : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), var_AE), &H28)), "0.00")
  loc_1702F98:     var_154 = Proc_6_52_EAD4F4(CStr(var_1E8), &H14, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Facility")), var_AE, var_AE), &H32, 1))
  loc_1702FE3:     var_13C = (Chr(&H12) + CVar(1 & var_154))
  loc_1702FEA:     var_1D8 = (CVar(var_8C.Fields.Item("BaseAmt")) + Chr(&H12))
  loc_1702FF0:     Print 1, "0.00"
  loc_1703007:     var_AE = (var_AE + 1)
  loc_1703014:     If (var_AE = (&H30 - var_B6)) Then
  loc_170302D:       var_13C = (Chr(&H12) + CVar(var_AC))
  loc_1703033:       Print 1, CVar(var_8C.Fields.Item("BaseAmt"))
  loc_1703046:       var_AE = (var_AE + 1)
  loc_170304F:       var_B0 = (var_B0 + 1)
  loc_170306A:       var_14C = "Contd. to Page No. " & Trim(CVar(CStr(var_B0))) 
  loc_1703070:       Print 1, var_14C
  loc_1703085:       var_AE = (var_AE + 1)
  loc_1703088:       ' Referenced from: 17030A5
  loc_170308E:       If (var_AE <= &H3B) Then
  loc_1703096:         Print 1, vbNullString
  loc_17030A2:         var_AE = (var_AE + 1)
  loc_17030A5:         GoTo loc_1703088
  loc_17030A8:       End If
  loc_17030AA:       var_AE = 0
  loc_17030E5:       Proc_6_39_E7C810(var_14C, CVar(var_88.Fields.Item("VNo")), "Bill No.  : ", var_AE, var_AE, var_AE)
  loc_1703116:       var_1F8 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(var_B0 & var_14C, var_AE, var_AE), &H28)))
  loc_170311C:       Print 1, var_1F8
  loc_1703143:       var_AE = (var_AE + 1)
  loc_17031A2:       var_1D8 = (Chr(&H12) + CVar(Proc_6_45_EAD428("M. S. No. : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")), var_AE), &H28)))
  loc_17031A8:       Print 1, var_B0 & CVar(Proc_6_45_EAD428("M. S. No. : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")), var_AE), &H28))
  loc_17031CD:       var_AE = (var_AE + 1)
  loc_170322C:       var_1D8 = (Chr(&H12) + CVar(Proc_6_45_EAD428("Name      : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemName")), var_AE), &H32)))
  loc_1703232:       Print 1, var_B0 & CVar(Proc_6_45_EAD428("Name      : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemName")), var_AE), &H32))
  loc_1703257:       var_AE = (var_AE + 1)
  loc_17032B6:       var_1D8 = (Chr(&H12) + CVar(Proc_6_45_EAD428("Bill Date : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("Billdate")), var_AE), &H28)))
  loc_17032BC:       Print 1, var_B0 & CVar(Proc_6_45_EAD428("Bill Date : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("Billdate")), var_AE), &H28))
  loc_17032E1:       var_AE = (var_AE + 1)
  loc_1703340:       var_1D8 = (Chr(&H12) + CVar(Proc_6_45_EAD428("For Month : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28)))
  loc_1703346:       Print 1, var_B0 & CVar(Proc_6_45_EAD428("For Month : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28))
  loc_170336B:       var_AE = (var_AE + 1)
  loc_1703394:       var_14C = (Chr(&H12) + CVar(Proc_6_45_EAD428(var_F8, &H46, var_AE)))
  loc_170339A:       Print 1, CVar(Proc_6_45_EAD428("For Month : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28))
  loc_17033B2:       var_AE = (var_AE + 1)
  loc_17033CB:       var_13C = (Chr(&H12) + CVar(var_AC))
  loc_17033D1:       Print 1, CVar(Proc_6_45_EAD428(var_F8, &H46, var_AE))
  loc_17033E4:       var_AE = (var_AE + 1)
  loc_17033E7:     End If
  loc_17033EA:     var_8C.MoveNext
  loc_17033EF:     GoTo loc_1702EEA
  loc_17033F2:     ' Referenced from: 170340F
  loc_17033F2:   End If
  loc_17033F8:   If (var_AE < &H1C) Then
  loc_1703400:     Print 1, vbNullString
  loc_170340C:     var_AE = (var_AE + 1)
  loc_170340F:     GoTo loc_17033F2
  loc_1703412:   End If
  loc_1703428:   var_13C = (Chr(&H12) + CVar(var_AC))
  loc_170342E:   Print 1, CVar(Proc_6_45_EAD428(var_F8, &H46, var_AE))
  loc_1703441:   var_AE = (var_AE + 1)
  loc_1703447:   var_94.MoveFirst
  loc_170344C:   ' Referenced from: 170392C
  loc_170345B:   If Not(var_94.EOF) Then
  loc_1703488:     var_214 = var_94.Fields.Item("SunCode").Value 'Variant
  loc_17034A6:     If (var_214 = CVar(MemVar_1F92078 & "TOT")) Then
  loc_17034BE:       var_13C = Space(&H28)
  loc_170350C:       Proc_6_39_E7C810(var_244, CVar(var_94.Fields.Item("SunAmt")), var_AE)
  loc_1703559:       var_14C = (Chr(&H12) + var_13C)
  loc_1703563:       var_1E8 = (CVar(Proc_6_45_EAD428("For Month : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28)) + CVar(Proc_6_45_EAD428("Total", &HF, var_AE, var_AE)))
  loc_170356A:       var_224 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(var_B0 & CVar(Proc_6_45_EAD428("For Month : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28)), var_AE, var_AE), &H28)) + Space(4))
  loc_1703574:       var_284 = (var_224 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_244, "0.00")), &HB, 1, 1)))
  loc_170357B:       var_2A4 = (var_284 + Chr(&H12))
  loc_1703581:       Print 1, var_2A4
  loc_17035BC:       var_AE = (var_AE + 1)
  loc_17035C2:     Else
  loc_17035D5:       If (var_214 = CVar(MemVar_1F92078 & "NET")) Then
  loc_1703605:         Proc_6_39_E7C810(var_13C, CVar(var_94.Fields.Item("SunAmt")), CVar(var_F0), var_AE)
  loc_170360D:         var_14C = (var_AE + var_13C)
  loc_1703612:         var_F0 = CSng(CVar(Proc_6_45_EAD428("For Month : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28)))
  loc_1703647:         Proc_6_39_E7C810(var_13C, CVar(var_94.Fields.Item("SunAmt")), var_F0)
  loc_1703661:         If (var_13C > 0) Then
  loc_1703679:           var_13C = Space(&H28)
  loc_17036C7:           Proc_6_39_E7C810(var_244, CVar(var_94.Fields.Item("SunAmt")))
  loc_1703714:           var_14C = (Chr(&H12) + var_13C)
  loc_170371E:           var_1E8 = (CVar(Proc_6_45_EAD428("For Month : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28)) + CVar(Proc_6_45_EAD428("Total With Tax", &HF)))
  loc_1703725:           var_224 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(var_B0 & CVar(Proc_6_45_EAD428("For Month : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28)), var_AE, var_AE), &H28)) + Space(4))
  loc_170372C:           var_274 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_244, "0.00")), &HB, 1)) 'String
  loc_170372F:           var_284 = (var_224 + var_274)
  loc_1703736:           var_2A4 = (var_284 + Chr(&H12))
  loc_170373C:           Print 1, var_2A4
  loc_1703777:           var_AE = (var_AE + 1)
  loc_170377A:         End If
  loc_170377D:       Else
  loc_17037A3:         Proc_6_39_E7C810(var_13C, CVar(var_94.Fields.Item("SunAmt")), var_AE)
  loc_17037BD:         If (var_13C > 0) Then
  loc_17037F9:           var_1D8 = CVar(var_94.Fields.Item("SunName")) 'Address
  loc_170383A:           var_244 = Space(4)
  loc_1703865:           Proc_6_39_E7C810(var_274, CVar(var_94.Fields.Item("SunAmt")))
  loc_17038B2:           var_14C = (Chr(&H12) + Space(&H28))
  loc_17038BC:           var_234 = (CVar(Proc_6_45_EAD428("For Month : " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("ForMonth")), var_AE), &H28)) + CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(Proc_6_38_E68A98(var_1D8, 1)), 3, 0)), &HF)))
  loc_17038C3:           var_254 = (CVar(var_94.Fields.Item("SunAmt")) + var_244)
  loc_17038CD:           var_2B4 = ("0.00" + CVar(Proc_6_52_EAD4F4(CStr(Format(var_274, "0.00")), &HB, 1)))
  loc_17038D4:           var_2D4 = (var_2B4 + Chr(&H12))
  loc_17038DA:           Print 1, var_2D4
  loc_1703921:           var_AE = (var_AE + 1)
  loc_1703924:         End If
  loc_1703924:       End If
  loc_1703924:     End If
  loc_1703927:     var_94.MoveNext
  loc_170392C:     GoTo loc_170344C
  loc_170392F:   End If
  loc_170393E:   var_124 = var_88.Fields
  loc_170398F:   Proc_6_7_F25D88(var_1D8, CVar(var_124 & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), "01/")))
  loc_170399A:   var_2FC = 0
  loc_17039C1:   var_1E8 = CVar("Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_124.Item("MemCode")), var_AE, 1) & "' And V_date<") 'String
  loc_17039DE:   unk_41ED1B.Execute CStr(var_1E8 & var_1D8 & vbNullString), CVar(var_94.Fields.Item("SunAmt")), -1
  loc_17039E6:   var_2E8 = var_2E8.Fields
  loc_17039EE:   var_2FC = var_2EC.Item(var_2EC)
  loc_17039F6:   var_300 = var_300.Value
  loc_17039FF:   var_C8 = CSng(var_244)
  loc_1703A91:   Proc_6_7_F25D88(var_1D8, CVar(var_244 & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), "01/")))
  loc_1703A9C:   var_2FC = 0
  loc_1703AC3:   var_1E8 = CVar("Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCode")), var_C8) & "' And V_date<") 'String
  loc_1703AE0:   unk_41ED1B.Execute CStr(var_1E8 & var_1D8 & vbNullString), CVar(var_94.Fields.Item("SunAmt")), -1
  loc_1703AE8:   var_2E8 = var_2E8.Fields
  loc_1703AF0:   var_2FC = var_2EC.Item(var_2EC)
  loc_1703AF8:   var_300 = var_300.Value
  loc_1703B01:   var_C0 = CSng(var_244)
  loc_1703B4F:   var_120 = CVar((var_C0 - var_C8)) 'Double
  loc_1703B56:   var_14C = Format(CVar(var_88.Fields.Item("MemCode")), "0.00")
  loc_1703B5F:   var_DC = CSng(var_14C)
  loc_1703BC7:   var_2E4 = 0
  loc_1703BE7:   var_100 = "Select isnull(Sum(AmtCr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCode")), var_DC, 1, 1)
  loc_1703BEE:   var_150 = var_100 & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4)='"
  loc_1703BF8:   var_158 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), "01/") & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), var_C0)
  loc_1703C08:   unk_41ED1B.Execute var_158 & "'", var_14C, -1
  loc_1703C10:   var_2E8 = var_2E8.Fields
  loc_1703C18:   var_2E4 = var_2EC.Item(var_2EC)
  loc_1703C20:   var_300 = var_300.Value
  loc_1703C29:   var_C8 = CSng(var_1D8)
  loc_1703CB3:   var_2E4 = 0
  loc_1703CD3:   var_100 = "Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCode")), var_C8, var_1D8)
  loc_1703CDA:   var_150 = var_100 & "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4)='"
  loc_1703CE4:   var_158 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), "01/") & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), var_244)
  loc_1703CF4:   unk_41ED1B.Execute var_158 & "'", var_14C, -1
  loc_1703CFC:   var_2E8 = var_2E8.Fields
  loc_1703D04:   var_2E4 = var_2EC.Item(var_2EC)
  loc_1703D0C:   var_300 = var_300.Value
  loc_1703D15:   var_C0 = CSng(var_1D8)
  loc_1703D46:   var_D0 = var_C8
  loc_1703D50:   If (var_DC < CDbl(0)) Then
  loc_1703D5B:     var_D0 = (var_D0 + Abs(var_DC))
  loc_1703D61:     var_DC = CDbl(0)
  loc_1703D64:   End If
  loc_1703DEE:   var_14C = (Chr(&H12) + Space(&H28))
  loc_1703DF8:   var_1E8 = (var_14C + CVar(Proc_6_45_EAD428("O.P.Balance", &HF, var_DC, var_D0)))
  loc_1703DFF:   var_224 = (var_1E8 + Space(4))
  loc_1703E09:   var_264 = (var_1E8 & CVar(Proc_6_45_EAD428("O.P.Balance", &HF, var_DC, var_D0)) & vbNullString + CVar(Proc_6_52_EAD4F4(CStr(Format(var_DC, "0.00")), &HB, 1, 1)))
  loc_1703E10:   var_284 = (CVar(var_94.Fields.Item("SunAmt")) + Chr(&H12))
  loc_1703E16:   Print 1, "0.00"
  loc_1703E4A:   var_AE = (var_AE + 1)
  loc_1703EA6:   var_234 = CVar((var_F0 + var_DC)) 'Double
  loc_1703EDA:   var_14C = (Chr(&H12) + Space(&H28))
  loc_1703EE4:   var_1E8 = (var_14C + CVar(Proc_6_45_EAD428("Grand Total", &HF, var_AE, var_D0)))
  loc_1703EEB:   var_224 = (var_1E8 + Space(4))
  loc_1703EF5:   var_274 = (var_1E8 & CVar(Proc_6_45_EAD428("Grand Total", &HF, var_AE, var_D0)) & vbNullString + CVar(Proc_6_52_EAD4F4(CStr(Format("0.00", "0.00")), &HB, 1, 1)))
  loc_1703EFC:   var_294 = (Chr(&H12) + Chr(&H12))
  loc_1703F02:   Print 1, Format(Chr(&H12), "0.00")
  loc_1703F38:   var_AE = (var_AE + 1)
  loc_1703FC5:   var_14C = (Chr(&H12) + Space(&H28))
  loc_1703FCF:   var_1E8 = (var_14C + CVar(Proc_6_45_EAD428("Credit Balance", &HF, var_AE)))
  loc_1703FD6:   var_224 = (var_1E8 + Space(4))
  loc_1703FE0:   var_264 = (var_1E8 & CVar(Proc_6_45_EAD428("Credit Balance", &HF, var_AE)) & vbNullString + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D0, "0.00")), &HB, 1, 1)))
  loc_1703FE7:   var_284 = (CVar(Proc_6_52_EAD4F4(CStr(Format("0.00", "0.00")), &HB, 1, 1)) + Chr(&H12))
  loc_1703FED:   Print 1, Chr(&H12)
  loc_1704021:   var_AE = (var_AE + 1)
  loc_170404A:   var_110 = (CDbl(((var_F0 + var_DC) - var_D0)) > CDbl(0))
  loc_1704074:   var_2E4 = (CDbl(((var_F0 + var_DC) - var_D0)) = CDbl(0))
  loc_17040F6:   var_234 = CVar(Abs(((var_F0 + var_DC) - var_D0))) 'Double
  loc_170412A:   var_14C = (Chr(&H12) + Space(&H28))
  loc_1704134:   var_1E8 = (IIf(var_D0, " Dr", " Cr") + CVar(Proc_6_45_EAD428("Net Amount", &HF, var_AE)))
  loc_170413B:   var_224 = (IIf(var_2E4, vbNullString, IIf(var_D0, " Dr", " Cr")) + Space(4))
  loc_1704145:   var_274 = (IIf(var_2E4, vbNullString, IIf(var_D0, " Dr", " Cr")) & CVar(Proc_6_45_EAD428("Net Amount", &HF, var_AE)) & vbNullString + CVar(Proc_6_52_EAD4F4(CStr(Format("0.00", "0.00")), &HB, 1, 1)))
  loc_170414F:   var_284 = (Chr(&H12) + CVar(CStr(IIf(var_2E4, vbNullString, IIf(var_D0, " Dr", " Cr")))))
  loc_1704156:   var_2A4 = (Chr(&H12) + Chr(&H12))
  loc_170415C:   Print 1, CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&H12), "0.00")), &HB, 1))
  loc_1704194:   var_AE = (var_AE + 1)
  loc_1704197:   ' Referenced from: 17041B4
  loc_170419D:   If (var_AE < &H2E) Then
  loc_17041A5:     Print 1, vbNullString
  loc_17041B1:     var_AE = (var_AE + 1)
  loc_17041B4:     GoTo loc_1704197
  loc_17041B7:   End If
  loc_17041F7:   var_1D8 = Chr(&H12)
  loc_1704204:   var_13C = (Chr(&H12) + "User : ")
  loc_1704211:   var_1F8 = (CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_AE, var_AE)) + var_1D8)
  loc_170421B:   Print 1, Space(&H28) & Space(4)
  loc_170423E:   var_AE = (var_AE + 1)
  loc_1704246:   Print 1, vbNullString
  loc_1704252:   var_AE = (var_AE + 1)
  loc_1704255:   ' Referenced from: 1704272
  loc_170425B:   If (var_AE <= &H3B) Then
  loc_1704263:     Print 1, vbNullString
  loc_170426F:     var_AE = (var_AE + 1)
  loc_1704272:     GoTo loc_1704255
  loc_1704275:   End If
  loc_1704278:   var_88.MoveNext
  loc_170427D:   GoTo loc_1702B3D
  loc_1704280: End If
  loc_1704282: Close 1
  loc_170428B: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_17042AF: Print 1, "TYPE C:\reptmp\" & var_1B4 & ".TXT>" & "PRN"
  loc_17042C0: Close 1
  loc_17042CA: If (MemVar_1F923B8 = "Y") Then
  loc_17042E6:   var_A4 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_17042F0: Else
  loc_1704309:   var_A4 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1704317:   Proc_96_21_E57C50(CDbl(2), var_AE, var_AE, var_AE)
  loc_170431C: End If
  loc_1704321: Set var_88 = Nothing
  loc_1704329: Set var_8C = Nothing
  loc_1704331: Set var_90 = Nothing
  loc_1704339: Set var_94 = Nothing
  loc_1704341: Set var_F4 = Nothing
  loc_1704344: Exit Sub
  loc_1704345: ' Referenced from: 1702854
  loc_1704345: Proc_6_60_E62BC4(var_C0, var_1D8)
  loc_170434A: Exit Sub
End Sub

Public Sub Proc_272_3_FB6788(arg_C) 'FB6788
  'Data Table: 41ED10
  Dim var_8C As Recordset15
  loc_FB65DB: Set var_8C = arg_C 
  loc_FB6603: var_8C.Fields.Append "mLine", &HC8, 2
  loc_FB662F: var_8C.Fields.Append "Sno", &HC8, 3
  loc_FB665B: var_8C.Fields.Append "Desc", &HC8, &H4B
  loc_FB6687: var_8C.Fields.Append "ChargeAmt", 5, &H13
  loc_FB66B3: var_8C.Fields.Append "FrPeriod", 7, 0
  loc_FB66DF: var_8C.Fields.Append "ToPeriod", 7, 0
  loc_FB670B: var_8C.Fields.Append "Days", 3, &HB
  loc_FB6737: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FB6747: var_8C.CursorType = 3
  loc_FB6754: var_8C.LockType = 3
  loc_FB6773: var_8C.Open var_A0, var_B0, -1
  loc_FB677A: Set var_8C = Nothing 
  loc_FB6781: Set var_88 = arg_C 
  loc_FB6785: Exit Sub
End Sub

Public Sub Proc_272_4_1852BF0(arg_C, arg_10) '1852BF0
  'Data Table: 41ED10
  Dim var_16C As String
  Dim var_170 As String
  Dim unk_41ED1B As Connection15
  Dim var_14C As Recordset15
  Dim var_180 As Variant
  Dim var_194 As Fields15
  Dim var_190 As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_1EC As String
  Dim var_1F0 As String
  Dim var_204 As String
  Dim var_20C As String
  Dim var_224 As String
  Dim var_88 As Recordset15
  Dim var_19C As Field20
  Dim var_234 As Variant
  Dim var_1BC As Variant
  Dim var_244 As Variant
  Dim var_1DC As Variant
  Dim var_254 As String
  Dim var_264 As Variant
  Dim var_284 As Variant
  Dim var_2A4 As Variant
  Dim var_168 As Recordset15
  Dim var_B6 As Integer
  Dim var_2C8 As Fields15
  Dim var_2C4 As Variant
  Dim var_2E0 As Variant
  Dim var_328 As Variant
  Dim var_8C As Recordset15
  Dim var_A6 As Integer
  Dim var_32C As Recordset15
  Dim var_2D0 As Field20
  Dim var_2CA As Integer
  Dim var_A8 As Integer
  Dim var_94 As Recordset15
  Dim var_104 As Double
  loc_1850794: On Error Goto loc_1852BE9
  loc_18507BB: unk_41ED1B.Execute "Select * from MemEnviro where LogSite_Code='" & MemVar_1F92078 & "'", var_190, -1
  loc_18507C6: Set var_14C = var_194
  loc_18507EA: If (var_14C.RecordCount > 0) Then
  loc_185082F:   var_144 = CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_14C.Fields.Item("BillMessage")))), &HFE))
  loc_1850850:   var_194 = var_14C.Fields
  loc_1850860:   var_190 = CVar(var_194.Item("BillPayDueDate")) 'Address
  loc_1850893:   var_148 = CStr(Format(CVar(Proc_6_38_E68A98(var_190)), "dd/MMM/yyyy"))
  loc_18508A7: End If
  loc_18508BB: var_16C = "Select S.Name As MemName,S.ConPrefix,S.ConPerson,S.ConPersonMName,S.ConPersonLName,S.Add1,S.Add2,S.Add3,City.CityName,S.PIN,S.Phone,S.Mobile,M.* From membill M Left Join SubGroup S On M.MemCode=S.SubCode Left Join City On S.CityCode=City.CityCode Where M.DocId='" & arg_C
  loc_18508E7: unk_41ED1B.Execute var_16C & "' And M.Site_Code='" & MemVar_1F92070 & "' And (M.LogSite_Code='" & MemVar_1F92078 & "' Or M.LogSite_Code='HO')", var_190, -1
  loc_18508F2: Set var_88 = var_194
  loc_185091E: var_16C = "Select MF.Name As Facility,M1.* From membill1 M1 Left Join MemFacilityMast MF On M1.FacilityCode=MF.Code Where M1.DocId='" & arg_C
  loc_1850941: var_1EC = var_16C & "' And M1.Type='Facility' And M1.Site_Code='" & MemVar_1F92070 & "' And (M1.LogSite_Code='" & MemVar_1F92078 & "' Or M1.LogSite_Code='HO') union "
  loc_1850948: var_1F0 = var_1EC & "Select MR.Description As Facility,M1.* From membill1 M1 Left Join MembershipRevMast MR On M1.FacilityCode=MR.Code Where M1.DocId='"
  loc_185096B: var_204 = var_1F0 & arg_C & "' And M1.Type='Revenue' And M1.Site_Code='" & MemVar_1F92070 & "' And (M1.LogSite_Code='" & MemVar_1F92078
  loc_1850979: var_20C = var_204 & "' Or M1.LogSite_Code='HO') union " & "Select Case When IsNull(D.Name,'')='' Then 'Banquet' Else D.Name End As Facility,M1.* From membill1 M1 Left Join Depart D On M1.OutletCode=D.Code Where M1.DocId='"
  loc_18509A3: var_224 = var_20C & arg_C & "' And M1.Type='Outlet' And M1.Site_Code='" & MemVar_1F92070 & "' And (M1.LogSite_Code='" & MemVar_1F92078 & "' Or M1.LogSite_Code='HO') Order by sno"
  loc_18509AC: unk_41ED1B.Execute var_224, var_190, -1
  loc_18509B7: Set var_8C = var_194
  loc_1850A06: var_170 = "Select R.Name As SunName,MS.* From memSunTran MS Left Join RevMast R On MS.SunCode=R.Code Where MS.DocId='" & arg_C & "' And MS.Site_Code='"
  loc_1850A2B: unk_41ED1B.Execute var_170 & MemVar_1F92070 & "' And (MS.LogSite_Code='" & MemVar_1F92078 & "' Or MS.LogSite_Code='HO') Order By Sno", var_190, -1
  loc_1850A36: Set var_94 = var_194
  loc_1850A62: If (var_88.RecordCount > 0) Then
  loc_1850A72:   var_1CC = "Select LTRIM(IsNull(M.ConPrefix,'')+' '+IsNull(M.Name,'')) As AddMemName,M.RelationShip From MemberFamily M Where M.SubCode='"
  loc_1850A89:   var_194 = var_88.Fields
  loc_1850AA1:   var_1AC = "dd/MMM/yyyy" & var_194.Item("MemCode").Value 
  loc_1850AD0:   var_2A4 = var_1AC & "' And M.Site_Code='" & CVar(MemVar_1F92070) & "' And (M.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or M.LogSite_Code='HO') Order By M.Sno" 
  loc_1850ADE:   unk_41ED1B.Execute CStr(var_2A4), var_2C4, -1
  loc_1850AE9:   Set var_168 = var_2C8
  loc_1850B1F:   If (var_168.RecordCount > 0) Then
  loc_1850B25:     var_168.MoveFirst
  loc_1850B2A:   End If
  loc_1850B2A: End If
  loc_1850B2E: Set var_C4 = New 
  loc_1850B39: Set var_C4 = Proc_272_3_FB6788(var_C4, var_2C8, var_194, var_194)
  loc_1850B3C: ' Referenced from: 1852BAD
  loc_1850B4B: If Not(var_88.EOF) Then
  loc_1850B61:   var_B0 = "** " & "MEMBER BILL" & " **"
  loc_1850B76:   var_194 = var_88.Fields
  loc_1850B8D:   Proc_6_39_E7C810(var_1AC, CVar(var_194.Item("VNo")), 0, var_194)
  loc_1850B97:   var_108 = CStr(var_1AC)
  loc_1850BCE:   var_10C = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")), 1)
  loc_1850BFF:   var_110 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemName")), 1)
  loc_1850C30:   var_158 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPrefix")))
  loc_1850C61:   var_15C = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPerson")))
  loc_1850C92:   var_160 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPersonMName")))
  loc_1850CC3:   var_164 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPersonLName")))
  loc_1850D82:   var_1DC = (Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1"))))) + ", ")
  loc_1850D89:   var_2C4 = (CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")))) & "' And M.Site_Code='" & CVar(MemVar_1F92070) + Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2"))))))
  loc_1850D92:   var_2E0 = (var_2C4 + ", ")
  loc_1850D99:   var_328 = (var_2E0 + Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add3"))))))
  loc_1850DA6:   var_11C = Replace(CStr(var_328), ",,", ",", 1, -1, 0)
  loc_1850DE1:   var_194 = var_88.Fields
  loc_1850E08:   var_1CC = "-"
  loc_1850E0D:   var_1DC = (Trim(CVar(Proc_6_38_E68A98(CVar(var_194.Item("CityName"))))) + ", ")
  loc_1850E39:   var_284 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Pin")), CVar(Proc_6_38_E68A98(CVar(var_194.Item("CityName")))) & "' And M.Site_Code='" & CVar(MemVar_1F92070))) 'String
  loc_1850E47:   var_2C4 = (var_194 + Trim(var_284))
  loc_1850E4C:   var_120 = CStr(var_2C4)
  loc_1850EA0:   var_124 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Pin"))))))
  loc_1850F32:   var_1DC = (Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Mobile"))))) + ", ")
  loc_1850F39:   var_2C4 = (CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Mobile")))) & "' And M.Site_Code='" & CVar(MemVar_1F92070) + Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Phone"))))))
  loc_1850F46:   var_128 = Replace(CStr(var_2C4), ",,", ",", 1, -1, 0)
  loc_1850FBF:   var_138 = CStr(Format(CVar("01/" & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")))), "dd/MMM/YYYY"))
  loc_1851029:   var_13C = CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VDate")), 1)), "dd/MMM/YYYY"))
  loc_18510A1:   var_140 = CStr(Format(DateAdd("m", CDbl(1), CDate(CDate(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VDate")), 1)))), "dd/MMM/YYYY"))
  loc_18510EC:   var_1CC = "dd/MMM/YYYY"
  loc_1851109:   var_114 = CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Billdate")), 1, 1)), var_1CC))
  loc_1851145:   var_118 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MthYear")), 1, 1)
  loc_1851151:   var_180 = "U_Name"
  loc_1851176:   var_134 = Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_180)), 1)
  loc_1851185:   var_B6 = (var_B6 + 1)
  loc_185118E:   var_198 = var_8C.RecordCount
  loc_185119C:   If (var_198 > 0) Then
  loc_18511A2:     var_8C.MoveFirst
  loc_18511A9:     var_A6 = 0
  loc_18511AC:     ' Referenced from: 1851558
  loc_18511BB:     If Not(var_8C.EOF) Then
  loc_18511C4:       var_A6 = (var_A6 + 1)
  loc_18511CA:       Set var_32C = var_C4 
  loc_18511D9:       var_32C.AddNew var_180, var_1CC
  loc_1851203:       var_32C.Fields.Item("mLine").Value = vbNullString
  loc_1851237:       var_32C.Fields.Item("Sno").Value = CVar(CStr(var_A6))
  loc_1851282:       var_1AC = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Facility")), var_A6, var_A6), &H4B)) 'String
  loc_18512A5:       var_32C.Fields.Item("Desc").Value = var_1AC
  loc_18512E7:       Proc_6_39_E7C810(var_1AC, CVar(var_8C.Fields.Item("BaseAmt")))
  loc_1851341:       var_32C.Fields.Item("ChargeAmt").Value = CVar(Proc_6_52_EAD4F4(CStr(Format(var_1AC, "0.00")), &HC, 1))
  loc_18513C2:       var_32C.Fields.Item("FrPeriod").Value = Format(CVar(var_8C.Fields.Item("FrPeriod")), "dd/MMM/yyyy")
  loc_185143C:       var_32C.Fields.Item("ToPeriod").Value = Format(CVar(var_8C.Fields.Item("ToPeriod")), "dd/MMM/yyyy")
  loc_185147E:       var_2C8 = var_8C.Fields
  loc_1851486:       var_2D0 = var_2C8.Item("ToPeriod")
  loc_18514BD:       var_264 = "0"
  loc_18514C6:       var_234 = 1
  loc_18514CB:       var_1DC = (DateDiff("d", CVar(var_8C.Fields.Item("FrPeriod")), CVar(var_2D0), 1, 1) + var_234)
  loc_18514DE:       var_254 = "Days"
  loc_18514FA:       var_32C.Fields.Item(var_254).Value = Format(Format(CVar(var_2D0), "0.00"), var_264)
  loc_1851522:       var_180 = "Mark"
  loc_1851536:       var_19C = var_32C.Fields.Item(var_180)
  loc_185153E:       var_19C.Value = "*"
  loc_185154C:       Set var_32C = Nothing 
  loc_1851553:       var_8C.MoveNext
  loc_1851558:       GoTo loc_18511AC
  loc_185155B:     End If
  loc_185155B:   End If
  loc_1851571:   Set var_194 = var_C4 
  loc_185157D:   var_2CA = CreateFieldDefFile(var_194, MemVar_1F920B4 & "\MemRevenueBill.ttx", &HFF, 1, 1, 1)
  loc_1851587:   Set var_C4 = var_194
  loc_18515A8:   var_16C = MemVar_1F920B4 & "\MemRevenueBill.RPT"
  loc_18515B1:   Call 0.Method_arg_1C (var_16C, var_180, var_194, var_2CA, var_2CA, 1)
  loc_18515BC:   MemVar_1F921E4 = var_194
  loc_18515C8:   var_A8 = 0
  loc_18515CB:   ' Referenced from: 18517ED
  loc_18515DA:   If Not(var_168.EOF) Then
  loc_18515E3:     var_A8 = (var_A8 + 1)
  loc_18515F7:     Call 0.Method_arg_90 (var_194, var_198, var_A6, 1, var_A8, var_A8)
  loc_18515FF:     Call 0.Method_arg_24 (1, 1, 1)
  loc_185160B:     For var_330 = 1 To CInt(var_198): var_B6 = var_330 'Integer
  loc_1851624:       Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_185162C:       Call 0.Method_arg_20 (var_16C)
  loc_1851634:       Call 0.Method_arg_30 (1)
  loc_185164A:       var_340 = Ucase(CVar(var_16C)) 'Variant
  loc_1851681:       If (var_340 = Ucase(CVar("AddMember" & CStr(var_A8)))) Then
  loc_18516CD:         Proc_6_17_EAA2B0(Format(CVar(Proc_6_38_E68A98(CVar(var_168.Fields.Item("AddMemName")))), "0.00"))
  loc_18516E9:         Call 0.Method_arg_90 (var_2C8, CLng(var_A6), var_2D0)
  loc_18516F1:         Call 0.Method_arg_20 (CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_168.Fields.Item("AddMemName")))), "0.00")))
  loc_18516F9:         Call 0.Method_arg_38 (StrConv(CVar(Proc_6_38_E68A98(CVar(var_168.Fields.Item("AddMemName")))), 3, 0))
  loc_185171C:       Else
  loc_1851745:         If (var_340 = Ucase(CVar("AddRelation" & CStr(var_A8)))) Then
  loc_1851780:           var_1AC = CVar(Proc_6_38_E68A98(CVar(var_168.Fields.Item("RelationShip")))) 'String
  loc_1851791:           Proc_6_17_EAA2B0(Format(var_1AC, "0.00"))
  loc_1851799:           var_16C = CStr(Format(var_1AC, "0.00"))
  loc_18517AD:           Call 0.Method_arg_90 (var_2C8, CLng(var_A6), var_2D0)
  loc_18517B5:           Call 0.Method_arg_20 (var_16C)
  loc_18517BD:           Call 0.Method_arg_38 (StrConv(var_1AC, 3, 0))
  loc_18517DD:         End If
  loc_18517DD:       End If
  loc_18517E0:     Next var_330 'Integer
  loc_18517E8:     var_168.MoveNext
  loc_18517ED:     GoTo loc_18515CB
  loc_18517F0:   End If
  loc_18517F2:   var_A8 = 0
  loc_18517F8:   var_94.MoveFirst
  loc_18517FD:   ' Referenced from: 1851BD8
  loc_185180C:   If Not(var_94.EOF) Then
  loc_1851839:     var_350 = var_94.Fields.Item("SunCode").Value 'Variant
  loc_1851857:     If (var_350 = CVar(MemVar_1F92078 & "TOT")) Then
  loc_1851880:       Proc_6_39_E7C810(var_1AC, CVar(var_94.Fields.Item("SunAmt")))
  loc_18518A9:       var_12C = CStr(Format(var_1AC, "0.00"))
  loc_18518BD:     Else
  loc_18518D0:       If (var_350 = CVar(MemVar_1F92078 & "NET")) Then
  loc_1851900:         Proc_6_39_E7C810(var_1AC, CVar(var_94.Fields.Item("SunAmt")), CVar(var_104))
  loc_1851908:         var_1BC = (1 + var_1AC)
  loc_1851942:         Proc_6_39_E7C810(var_1AC, CVar(var_94.Fields.Item("SunAmt")), CSng("0.00"))
  loc_185195C:         If (var_1AC > 0) Then
  loc_185196E:           var_194 = var_94.Fields
  loc_1851976:           var_19C = var_194.Item("SunAmt")
  loc_1851985:           Proc_6_39_E7C810(var_1AC, CVar(var_19C))
  loc_18519A5:           var_1DC = Format(var_1AC, "0.00")
  loc_18519AE:           var_130 = CStr(var_1DC)
  loc_18519BF:         End If
  loc_18519C2:       Else
  loc_18519C8:         var_A8 = (var_A8 + 1)
  loc_18519DC:         Call 0.Method_arg_90 (var_194, var_198, var_A6, 1, var_A8)
  loc_18519E4:         Call 0.Method_arg_24 (1, 1)
  loc_18519F0:         For var_354 = var_A8 To CInt(var_198):     1 = var_354 'Integer
  loc_1851A09:           Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851A11:           Call 0.Method_arg_20 (var_16C)
  loc_1851A19:           Call 0.Method_arg_30 (var_A8)
  loc_1851A2F:           var_364 = Ucase(CVar(var_16C)) 'Variant
  loc_1851A66:           If (var_364 = Ucase(CVar("lblTaxName" & CStr(var_A8)))) Then
  loc_1851AB2:             Proc_6_17_EAA2B0(var_1DC)
  loc_1851ACE:             Call 0.Method_arg_90 (var_2C8, CLng(var_A6), var_2D0)
  loc_1851AD6:             Call 0.Method_arg_20 (CStr(var_1DC))
  loc_1851ADE:             Call 0.Method_arg_38 (StrConv(CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("SunName")))), 3, 0))
  loc_1851B01:           Else
  loc_1851B16:             var_1AC = Ucase(CVar("TaxAmt" & CStr(var_A8)))
  loc_1851B2A:             If (var_364 = var_1AC) Then
  loc_1851B3C:               var_194 = var_94.Fields
  loc_1851B44:               var_19C = var_194.Item("SunAmt")
  loc_1851B53:               Proc_6_39_E7C810(var_1AC)
  loc_1851B67:               var_1BC = "0.00"
  loc_1851B7E:               Proc_6_17_EAA2B0(var_264, Format(var_1AC, var_1BC), 1)
  loc_1851B86:               var_16C = CStr(var_264)
  loc_1851B9A:               Call 0.Method_arg_90 (var_2C8, CLng(var_A6), var_2D0)
  loc_1851BA2:               Call 0.Method_arg_20 (var_16C, 1)
  loc_1851BAA:               Call 0.Method_arg_38 (CVar(var_19C))
  loc_1851BC8:             End If
  loc_1851BC8:           End If
  loc_1851BCB:         Next var_354 'Integer
  loc_1851BD0:       End If
  loc_1851BD0:     End If
  loc_1851BD3:     var_94.MoveNext
  loc_1851BD8:     GoTo loc_18517FD
  loc_1851BDB:   End If
  loc_1851BEC:   Call 0.Method_arg_90 (var_194, var_198)
  loc_1851BF4:   Call 0.Method_arg_24 (var_A6)
  loc_1851C00:   For var_368 =  To CInt(var_198): 1 = var_368 'Integer
  loc_1851C19:     Call 0.Method_arg_90 (var_194, CLng(var_A6))
  loc_1851C21:     Call 0.Method_arg_20 (var_19C)
  loc_1851C29:     Call 0.Method_arg_30 (var_16C)
  loc_1851C3F:     var_378 = Ucase(CVar(var_16C)) 'Variant
  loc_1851C55:     var_190 = "comp_name"
  loc_1851C6F:     If (var_378 = Ucase(var_190)) Then
  loc_1851C7D:       Proc_6_17_EAA2B0(var_190)
  loc_1851C99:       Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851CA1:       Call 0.Method_arg_20 (CStr(var_190))
  loc_1851CA9:       Call 0.Method_arg_38 (MemVar_1F92130)
  loc_1851CBE:     Else
  loc_1851CC6:       var_190 = "comp_add1"
  loc_1851CE0:       If (var_378 = Ucase(var_190)) Then
  loc_1851CEE:         Proc_6_17_EAA2B0(var_190)
  loc_1851D0A:         Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851D12:         Call 0.Method_arg_20 (CStr(var_190))
  loc_1851D1A:         Call 0.Method_arg_38 (MemVar_1F92134)
  loc_1851D2F:       Else
  loc_1851D37:         var_190 = "comp_pin"
  loc_1851D51:         If (var_378 = Ucase(var_190)) Then
  loc_1851D5F:           Proc_6_17_EAA2B0(var_190)
  loc_1851D7B:           Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851D83:           Call 0.Method_arg_20 (CStr(var_190))
  loc_1851D8B:           Call 0.Method_arg_38 (MemVar_1F9213C)
  loc_1851DA0:         Else
  loc_1851DC2:           If (var_378 = Ucase("comp_GSTIN")) Then
  loc_1851DE6:             Call 0.Method_arg_90 (var_194, CLng(var_A6))
  loc_1851DEE:             Call 0.Method_arg_20 (var_19C)
  loc_1851DF6:             Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_1851E0C:           Else
  loc_1851E1D:             var_1AC = Ucase("Title")
  loc_1851E2E:             If (var_378 = var_1AC) Then
  loc_1851E3F:               Proc_6_17_EAA2B0(var_1AC)
  loc_1851E5B:               Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851E63:               Call 0.Method_arg_20 (CStr(var_1AC))
  loc_1851E6B:               Call 0.Method_arg_38 ("Member Bill")
  loc_1851E84:             Else
  loc_1851E8C:               var_190 = "BillNo"
  loc_1851EA6:               If (var_378 = Ucase(var_190)) Then
  loc_1851EB4:                 Proc_6_17_EAA2B0(var_190)
  loc_1851ED0:                 Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851ED8:                 Call 0.Method_arg_20 (CStr(var_190))
  loc_1851EE0:                 Call 0.Method_arg_38 (var_108)
  loc_1851EF5:               Else
  loc_1851EFD:                 var_190 = "CardNo"
  loc_1851F17:                 If (var_378 = Ucase(var_190)) Then
  loc_1851F25:                   Proc_6_17_EAA2B0(var_190)
  loc_1851F41:                   Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851F49:                   Call 0.Method_arg_20 (CStr(var_190))
  loc_1851F51:                   Call 0.Method_arg_38 (var_10C)
  loc_1851F66:                 Else
  loc_1851F6E:                   var_190 = "MemName"
  loc_1851F88:                   If (var_378 = Ucase(var_190)) Then
  loc_1851F96:                     Proc_6_17_EAA2B0(var_190)
  loc_1851FB2:                     Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1851FBA:                     Call 0.Method_arg_20 (CStr(var_190))
  loc_1851FC2:                     Call 0.Method_arg_38 (var_110)
  loc_1851FD7:                   Else
  loc_1851FDF:                     var_190 = "ConPrefix"
  loc_1851FF9:                     If (var_378 = Ucase(var_190)) Then
  loc_1852007:                       Proc_6_17_EAA2B0(var_190)
  loc_1852023:                       Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_185202B:                       Call 0.Method_arg_20 (CStr(var_190))
  loc_1852033:                       Call 0.Method_arg_38 (var_158)
  loc_1852048:                     Else
  loc_1852050:                       var_190 = "ConPerson"
  loc_185206A:                       If (var_378 = Ucase(var_190)) Then
  loc_1852078:                         Proc_6_17_EAA2B0(var_190)
  loc_1852094:                         Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_185209C:                         Call 0.Method_arg_20 (CStr(var_190))
  loc_18520A4:                         Call 0.Method_arg_38 (var_15C)
  loc_18520B9:                       Else
  loc_18520C1:                         var_190 = "ConPersonMName"
  loc_18520DB:                         If (var_378 = Ucase(var_190)) Then
  loc_18520E9:                           Proc_6_17_EAA2B0(var_190)
  loc_1852105:                           Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_185210D:                           Call 0.Method_arg_20 (CStr(var_190))
  loc_1852115:                           Call 0.Method_arg_38 (var_160)
  loc_185212A:                         Else
  loc_1852132:                           var_190 = "ConPersonLName"
  loc_185214C:                           If (var_378 = Ucase(var_190)) Then
  loc_185215A:                             Proc_6_17_EAA2B0(var_190)
  loc_1852176:                             Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_185217E:                             Call 0.Method_arg_20 (CStr(var_190))
  loc_1852186:                             Call 0.Method_arg_38 (var_164)
  loc_185219B:                           Else
  loc_18521A3:                             var_190 = "MemAddress"
  loc_18521BD:                             If (var_378 = Ucase(var_190)) Then
  loc_18521CB:                               Proc_6_17_EAA2B0(var_190)
  loc_18521E7:                               Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_18521EF:                               Call 0.Method_arg_20 (CStr(var_190))
  loc_18521F7:                               Call 0.Method_arg_38 (var_11C)
  loc_185220C:                             Else
  loc_1852214:                               var_190 = "MemCityName"
  loc_185222E:                               If (var_378 = Ucase(var_190)) Then
  loc_185223C:                                 Proc_6_17_EAA2B0(var_190)
  loc_1852258:                                 Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1852260:                                 Call 0.Method_arg_20 (CStr(var_190))
  loc_1852268:                                 Call 0.Method_arg_38 (var_120)
  loc_185227D:                               Else
  loc_1852285:                                 var_190 = "MemPinCode"
  loc_185229F:                                 If (var_378 = Ucase(var_190)) Then
  loc_18522AD:                                   Proc_6_17_EAA2B0(var_190)
  loc_18522C9:                                   Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_18522D1:                                   Call 0.Method_arg_20 (CStr(var_190))
  loc_18522D9:                                   Call 0.Method_arg_38 (var_124)
  loc_18522EE:                                 Else
  loc_18522F6:                                   var_190 = "MemContactNo"
  loc_1852310:                                   If (var_378 = Ucase(var_190)) Then
  loc_185231E:                                     Proc_6_17_EAA2B0(var_190)
  loc_185233A:                                     Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1852342:                                     Call 0.Method_arg_20 (CStr(var_190))
  loc_185234A:                                     Call 0.Method_arg_38 (var_128)
  loc_185235F:                                   Else
  loc_1852367:                                     var_190 = "DateFrom"
  loc_1852381:                                     If (var_378 = Ucase(var_190)) Then
  loc_185238F:                                       Proc_6_17_EAA2B0(var_190)
  loc_18523AB:                                       Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_18523B3:                                       Call 0.Method_arg_20 (CStr(var_190))
  loc_18523BB:                                       Call 0.Method_arg_38 (var_138)
  loc_18523D0:                                     Else
  loc_18523D8:                                       var_190 = "DateTo"
  loc_18523F2:                                       If (var_378 = Ucase(var_190)) Then
  loc_1852400:                                         Proc_6_17_EAA2B0(var_190)
  loc_185241C:                                         Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1852424:                                         Call 0.Method_arg_20 (CStr(var_190))
  loc_185242C:                                         Call 0.Method_arg_38 (var_13C)
  loc_1852441:                                       Else
  loc_1852449:                                         var_190 = "BillDate"
  loc_1852463:                                         If (var_378 = Ucase(var_190)) Then
  loc_1852471:                                           Proc_6_17_EAA2B0(var_190)
  loc_185248D:                                           Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1852495:                                           Call 0.Method_arg_20 (CStr(var_190))
  loc_185249D:                                           Call 0.Method_arg_38 (var_114)
  loc_18524B2:                                         Else
  loc_18524BA:                                           var_190 = "DueDate"
  loc_18524D4:                                           If (var_378 = Ucase(var_190)) Then
  loc_18524E2:                                             Proc_6_17_EAA2B0(var_190)
  loc_18524FE:                                             Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1852506:                                             Call 0.Method_arg_20 (CStr(var_190))
  loc_185250E:                                             Call 0.Method_arg_38 (var_140)
  loc_1852523:                                           Else
  loc_185252B:                                             var_190 = "BillPayDueDate"
  loc_1852545:                                             If (var_378 = Ucase(var_190)) Then
  loc_1852553:                                               Proc_6_17_EAA2B0(var_190)
  loc_185256F:                                               Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1852577:                                               Call 0.Method_arg_20 (CStr(var_190))
  loc_185257F:                                               Call 0.Method_arg_38 (var_148)
  loc_1852594:                                             Else
  loc_185259C:                                               var_190 = "BillMessage"
  loc_18525B6:                                               If (var_378 = Ucase(var_190)) Then
  loc_18525C4:                                                 Proc_6_17_EAA2B0(var_190)
  loc_18525E0:                                                 Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_18525E8:                                                 Call 0.Method_arg_20 (CStr(var_190))
  loc_18525F0:                                                 Call 0.Method_arg_38 (var_144)
  loc_1852605:                                               Else
  loc_185260D:                                                 var_190 = "ForMonth"
  loc_1852627:                                                 If (var_378 = Ucase(var_190)) Then
  loc_1852635:                                                   Proc_6_17_EAA2B0(var_190)
  loc_1852651:                                                   Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1852659:                                                   Call 0.Method_arg_20 (CStr(var_190))
  loc_1852661:                                                   Call 0.Method_arg_38 (var_118)
  loc_1852676:                                                 Else
  loc_185267E:                                                   var_190 = "User"
  loc_1852698:                                                   If (var_378 = Ucase(var_190)) Then
  loc_18526A6:                                                     Proc_6_17_EAA2B0(var_190)
  loc_18526C2:                                                     Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_18526CA:                                                     Call 0.Method_arg_20 (CStr(var_190))
  loc_18526D2:                                                     Call 0.Method_arg_38 (var_134)
  loc_18526E7:                                                   Else
  loc_1852709:                                                     If (var_378 = Ucase("PreBalance")) Then
  loc_1852737:                                                       Proc_6_17_EAA2B0(var_1BC, Format(var_F0, "0.00"))
  loc_1852753:                                                       Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_185275B:                                                       Call 0.Method_arg_20 (CStr(var_1BC), 1)
  loc_1852763:                                                       Call 0.Method_arg_38 (1)
  loc_185277E:                                                     Else
  loc_18527A0:                                                       If (var_378 = Ucase("OtherCredit")) Then
  loc_18527CE:                                                         Proc_6_17_EAA2B0(var_1BC, Format(var_154, "0.00"))
  loc_18527EA:                                                         Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_18527F2:                                                         Call 0.Method_arg_20 (CStr(var_1BC), 1)
  loc_18527FA:                                                         Call 0.Method_arg_38 (1)
  loc_1852815:                                                       Else
  loc_1852837:                                                         If (var_378 = Ucase("DrAmt")) Then
  loc_1852865:                                                           Proc_6_17_EAA2B0(var_1BC, Format(var_DC, "0.00"))
  loc_1852881:                                                           Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1852889:                                                           Call 0.Method_arg_20 (CStr(var_1BC), 1)
  loc_1852891:                                                           Call 0.Method_arg_38 (1)
  loc_18528AC:                                                         Else
  loc_18528CE:                                                           If (var_378 = Ucase("CrAmt")) Then
  loc_18528DB:                                                             var_1CC = "0.00"
  loc_18528FC:                                                             Proc_6_17_EAA2B0(var_1BC, Format(var_E4, var_1CC))
  loc_1852918:                                                             Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1852920:                                                             Call 0.Method_arg_20 (CStr(var_1BC), 1)
  loc_1852928:                                                             Call 0.Method_arg_38 (1)
  loc_1852943:                                                           Else
  loc_185294B:                                                             var_190 = "Total"
  loc_1852965:                                                             If (var_378 = Ucase(var_190)) Then
  loc_1852973:                                                               Proc_6_17_EAA2B0(var_190)
  loc_185298F:                                                               Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1852997:                                                               Call 0.Method_arg_20 (CStr(var_190))
  loc_185299F:                                                               Call 0.Method_arg_38 (var_12C)
  loc_18529B4:                                                             Else
  loc_18529BC:                                                               var_190 = "NetTotal"
  loc_18529C5:                                                               var_1AC = Ucase(var_190)
  loc_18529D6:                                                               If (var_378 = var_1AC) Then
  loc_18529E4:                                                                 Proc_6_17_EAA2B0(var_190)
  loc_1852A00:                                                                 Call 0.Method_arg_90 (var_194, CLng(var_A6), var_19C)
  loc_1852A08:                                                                 Call 0.Method_arg_20 (CStr(var_190))
  loc_1852A10:                                                                 Call 0.Method_arg_38 (var_130)
  loc_1852A22:                                                               End If
  loc_1852A22:                                                             End If
  loc_1852A22:                                                           End If
  loc_1852A22:                                                         End If
  loc_1852A22:                                                       End If
  loc_1852A22:                                                     End If
  loc_1852A22:                                                   End If
  loc_1852A22:                                                 End If
  loc_1852A22:                                               End If
  loc_1852A22:                                             End If
  loc_1852A22:                                           End If
  loc_1852A22:                                         End If
  loc_1852A22:                                       End If
  loc_1852A22:                                     End If
  loc_1852A22:                                   End If
  loc_1852A22:                                 End If
  loc_1852A22:                               End If
  loc_1852A22:                             End If
  loc_1852A22:                           End If
  loc_1852A22:                         End If
  loc_1852A22:                       End If
  loc_1852A22:                     End If
  loc_1852A22:                   End If
  loc_1852A22:                 End If
  loc_1852A22:               End If
  loc_1852A22:             End If
  loc_1852A22:           End If
  loc_1852A22:         End If
  loc_1852A22:       End If
  loc_1852A22:     End If
  loc_1852A25:   Next var_368 'Integer
  loc_1852A43:   Call 0.Method_arg_64 (var_194, CVar(var_C4))
  loc_1852A4B:   Call 0.Method_arg_2C (var_1CC)
  loc_1852A59:   Call 0.Method_arg_150 (var_234)
  loc_1852A84:   Proc_6_39_E7C810(var_1AC)
  loc_1852A99:   var_234 = arg_10
  loc_1852AAB:   var_244 = (Proc_6_38_E68A98(var_234, (var_1AC <= 0)) = "N")
  loc_1852AC4:   If CBool(CVar(var_14C.Fields.Item("NoOfCopy")) And var_244) Then
  loc_1852ACC:     Set var_19C = Nothing
  loc_1852AE8:     Set var_194 = MemVar_1F921E4 
  loc_1852AF4:     Proc_6_99_1483714(var_194, 0, vbNullString)
  loc_1852AFF:     MemVar_1F921E4 = var_194
  loc_1852B10:   Else
  loc_1852B28:     If (Proc_6_38_E68A98(arg_10, &HFF) = "R") Then
  loc_1852B48:       Call 0.Method_Me8 (False, 1, var_234)
  loc_1852B50:     Else
  loc_1852B76:       Proc_6_39_E7C810(var_1AC, CVar(var_14C.Fields.Item("NoOfCopy")), var_244)
  loc_1852B96:       Call 0.Method_Me8 (False, var_1AC, var_234, var_244)
  loc_1852BA5:     End If
  loc_1852BA5:   End If
  loc_1852BA8:   var_88.MoveNext
  loc_1852BAD:   GoTo loc_1850B3C
  loc_1852BB0: End If
  loc_1852BB5: Set var_88 = Nothing
  loc_1852BBD: Set var_8C = Nothing
  loc_1852BC5: Set var_90 = Nothing
  loc_1852BCD: Set var_94 = Nothing
  loc_1852BD5: Set var_C4 = Nothing
  loc_1852BDD: Set var_14C = Nothing
  loc_1852BE5: Set var_168 = Nothing
  loc_1852BE8: Exit Sub
  loc_1852BE9: ' Referenced from: 1850794
  loc_1852BE9: Proc_6_60_E62BC4(var_254, var_254)
  loc_1852BEE: Exit Sub
End Sub
