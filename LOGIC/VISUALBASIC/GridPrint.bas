
Public Sub Proc_34_0_14D85A0
  'Data Table: 41B610
  Dim var_AE As Integer
  Dim var_E0 As Variant
  Dim var_D0 As Variant
  Dim var_10C As String
  Dim var_AC As Integer
  Dim var_AA As Integer
  Dim var_104 As Variant
  Dim var_13C As Variant
  Dim var_A6 As Integer
  Dim var_15C As Variant
  Dim var_A8 As Integer
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim Me As MSHFlexGrid
  loc_14D77FA: var_AE = &H6D
  loc_14D7801: Close 1
  loc_14D780C: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_14D782D: For var_E4 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_98 = var_E4 'Integer
  loc_14D7839:   var_D0 = CVar(CLng(var_98)) 'Long
  loc_14D7882:   var_10C = Replace(CStr(Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE)))))), " ", MemVar_1F923CC, 1, -1, 0)
  loc_14D7886:   var_9C = var_9C & var_10C
  loc_14D789C: Next var_E4 'Integer
  loc_14D78A5: var_AC = 1
  loc_14D78B0: If (var_AA = 0) Then
  loc_14D78BD:   If (arg_20 = "80") Then
  loc_14D78D2:     var_AA = Proc_6_129_12B6C1C(var_AC, var_AA)
  loc_14D78F8:     Print 1, Proc_6_128_10272A8(arg_14, "B", &H50)
  loc_14D790A:   Else
  loc_14D7914:     If (arg_20 = "132") Then
  loc_14D7951:       Print 1, Proc_6_128_10272A8(arg_14, "B", 140, Proc_6_129_12B6C1C(var_AC, Proc_6_129_12B6C1C(var_AC, Proc_6_129_12B6C1C(var_AC, var_AA, 150), 150), 150))
  loc_14D7963:     Else
  loc_14D796D:       If (arg_20 = "40") Then
  loc_14D797D:         MemVar_1F923C8 = "L"
  loc_14D79B9:         Print 1, Proc_6_128_10272A8(arg_14, "B", &H28, Proc_6_129_12B6C1C(var_AC, Proc_6_129_12B6C1C(var_AC, Proc_6_129_12B6C1C(var_AC, var_AA, &H28), &H28), &H28))
  loc_14D79CD:         MemVar_1F923C8 = MemVar_1F923C8
  loc_14D79D4:       Else
  loc_14D7A0E:         Print 1, Proc_6_128_10272A8(arg_14, "B", &H50, Proc_6_129_12B6C1C(var_AC, Proc_6_129_12B6C1C(var_AC, Proc_6_129_12B6C1C(var_AC, var_AA, &H50), &H50), &H50))
  loc_14D7A1D:       End If
  loc_14D7A1D:     End If
  loc_14D7A1D:   End If
  loc_14D7A23:   var_AA = 6
  loc_14D7A28:   On Error Resume Next
  loc_14D7A35:   If (arg_1C = "C") Then
  loc_14D7A47:     For var_120 = 0 To CInt(UBound(arg_18, 1)): var_96 = var_120 'Integer
  loc_14D7A5C:       If (arg_18(CLng(var_96)) <> vbNullString) Then
  loc_14D7A7C:         var_104 = (Chr(&HF) + CVar(arg_18(CLng(var_96))))
  loc_14D7A82:         Print 1, Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE)))))
  loc_14D7A97:         var_AA = (var_AA + 1)
  loc_14D7A9A:       End If
  loc_14D7A9F:     Next var_120 'Integer
  loc_14D7AA7:   Else
  loc_14D7AB8:     For var_124 = 0 To CInt(UBound(arg_18, 1)):   var_96 = var_124 'Integer
  loc_14D7ACD:       If (arg_18(CLng(var_96)) <> vbNullString) Then
  loc_14D7AED:         var_104 = (Chr(&H12) + CVar(arg_18(CLng(var_96))))
  loc_14D7AF3:         Print 1, Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE)))))
  loc_14D7B08:         var_AA = (var_AA + 1)
  loc_14D7B0B:       End If
  loc_14D7B10:     Next var_124 'Integer
  loc_14D7B15:   End If
  loc_14D7B17: End If
  loc_14D7B23: If (arg_1C = "C") Then
  loc_14D7B3E:   var_104 = (Chr(&HF) + CVar(var_9C))
  loc_14D7B44:   Print 1, Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE)))))
  loc_14D7B59:   var_AA = (var_AA + 1)
  loc_14D7B5F: Else
  loc_14D7B79:   var_104 = (Chr(&H12) + CVar(var_9C))
  loc_14D7B7F:   Print 1, Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE)))))
  loc_14D7B94:   var_AA = (var_AA + 1)
  loc_14D7B97: End If
  loc_14D7BB6: For var_128 = 0 To CInt((CLng(Me.FGrid1.FixedRows) - 1)): var_96 = var_128 'Integer
  loc_14D7BD9:   For var_12C = 1 To CInt((CLng(Me.var_E0.Cols) - 1)): var_98 = var_12C 'Integer
  loc_14D7BE5:     var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D7BFF:     If (CBool(Me.var_E0.MergeRow)) = &HFF) Then
  loc_14D7C08:       var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D7C11:       var_13C = CVar(CLng(var_98)) 'Long
  loc_14D7C43:       If (CLng((var_98 + 1)) < CLng(Me.var_E0.Cols)) Then
  loc_14D7C4F:         var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D7C5B:         var_13C = CVar(CLng((var_98 + 1))) 'Long
  loc_14D7C79:         If (var_13C <> CStr(Me.var_E0.TextMatrix))) Then
  loc_14D7CA4:           var_A6 = CInt((CVar(CLng(var_98)) + Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE)))))
  loc_14D7CDA:           Proc_34_2_E7F7A0(Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE))))), CInt(Me.var_E0.ColAlignmentFixed)), CStr(Me.var_E0.TextMatrix)), var_A6, CVar(var_110), Me.var_E0.ColAlignmentFixed), CVar(CLng(var_98)), var_A6)
  loc_14D7CE2:           var_15C = (CDbl(var_A6) + Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE))))))
  loc_14D7CE7:           var_110 = CStr(var_15C)
  loc_14D7CF7:           var_A6 = 0
  loc_14D7CFD:         Else
  loc_14D7D27:           var_A6 = CInt((CVar(CLng(var_98)) + Fix((CDbl(CLng(Me.FGrid1.ColWidth))) / CDbl(var_AE)))))
  loc_14D7D2D:         End If
  loc_14D7D32:       Else
  loc_14D7D5C:         var_A6 = CInt((CVar(CLng(var_98)) + Fix((CDbl(CLng(Me.FGrid1.ColWidth))) / CDbl(var_AE)))))
  loc_14D7D62:       End If
  loc_14D7D67:     Else
  loc_14D7D6F:       var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D7D78:       var_13C = CVar(CLng(var_98)) 'Long
  loc_14D7D8B:       var_A0 = CStr(Me.FGrid1.TextMatrix))
  loc_14D7D97:       var_D0 = CVar(CLng(var_98)) 'Long
  loc_14D7DB4:       var_A6 = CInt(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE))))
  loc_14D7DC0:       var_D0 = CVar(CLng(var_98)) 'Long
  loc_14D7DEA:       Proc_34_2_E7F7A0(Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE))))), CInt(Me.var_E0.ColAlignmentFixed)), var_A0, var_A6, CVar(var_110), Me.var_E0.ColAlignmentFixed), var_D0, var_A6)
  loc_14D7DF2:       var_15C = (var_D0 + Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE))))))
  loc_14D7DF7:       var_110 = CStr(var_15C)
  loc_14D7E07:       var_A8 = 0
  loc_14D7E0A:     End If
  loc_14D7E11:   Next var_12C 'Integer
  loc_14D7E3D:   If (CVar(CLng(var_96)) And (CBool(Me.var_E0.MergeRow)) = &HFF)) Then
  loc_14D7E45:     var_E0 = Me.var_E0.Cols
  loc_14D7E54:     var_D0 = CVar((CLng(var_E0) - 1)) 'Long
  loc_14D7E7E:     Proc_34_2_E7F7A0(var_15C, CInt(Me.var_E0.ColAlignmentFixed)), var_A0, var_A6)
  loc_14D7E86:     var_16C = (CVar(var_110) + var_15C)
  loc_14D7E8B:     var_110 = CStr(var_16C)
  loc_14D7E9D:     var_A6 = 0
  loc_14D7EA0:   End If
  loc_14D7EE1:   var_17C = (CVar(var_110) + Chr(&H1B))
  loc_14D7EE8:   var_19C = (var_17C + Chr(&H46))
  loc_14D7EF2:   var_15C = (Chr(&H1B) + Chr(&H45))
  loc_14D7EF8:   Print 1, var_15C, var_19C
  loc_14D7F17:   var_AA = (var_AA + 1)
  loc_14D7F22:   If (var_AA > &H41) Then
  loc_14D7F29:     var_AA = 0
  loc_14D7F34:     var_AC = (var_AC + 1)
  loc_14D7F4B:     Print 1, Chr(&HC)
  loc_14D7F54:   End If
  loc_14D7F5B:   var_110 = vbNullString
  loc_14D7F63: Next var_128 'Integer
  loc_14D7F6F: Print 1, var_9C
  loc_14D7F7D: var_AA = (var_AA + 1)
  loc_14D7F85: var_E0 = Me.FGrid1.FixedRows
  loc_14D7FAC: For var_1A0 = CInt(CLng(var_E0)) To CInt((CLng(Me.var_E0.Rows) - 1)): var_96 = var_1A0 'Integer
  loc_14D7FBA:   If (var_AA = 0) Then
  loc_14D7FD4:     Proc_34_1_12B5F24(var_E0, arg_10, arg_14, arg_18, arg_1C)
  loc_14D7FE6:     If (arg_1C = "C") Then
  loc_14D7FFD:       Print 1, Chr(&HF)
  loc_14D800E:       var_AA = (var_AA + 1)
  loc_14D8014:     Else
  loc_14D802A:       Print 1, Chr(&H12)
  loc_14D803B:       var_AA = (var_AA + 1)
  loc_14D803E:     End If
  loc_14D8040:   End If
  loc_14D8048:   var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D804D:   var_13C = 0
  loc_14D808D:   If (Left(CVar(CStr(Me.FGrid1.TextMatrix))), 2) = "GF") Then
  loc_14D8097:     Print 1, var_9C
  loc_14D80A5:     var_AA = (var_AA + 1)
  loc_14D80A8:   End If
  loc_14D80AE:   var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D80B3:   var_13C = 0
  loc_14D80D8:   If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_14D80F3:     var_104 = (CVar(var_110) + Chr(&H1B))
  loc_14D8107:     var_16C = (CVar(CStr(Me.FGrid1.TextMatrix))) + Chr(&H45))
  loc_14D810C:     var_110 = CStr(Chr(&H1B))
  loc_14D811A:   End If
  loc_14D8137:   For var_1B4 = 1 To CInt((CLng(Me.Cols) - 1)): var_98 = var_1B4 'Integer
  loc_14D8143:     var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D815D:     If (CBool(Me.FGrid1.MergeRow)) = &HFF) Then
  loc_14D8166:       var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D816F:       var_13C = CVar(CLng(var_98)) 'Long
  loc_14D8182:       var_A0 = CStr(Me.var_E0.TextMatrix))
  loc_14D8190:       If (var_A8 = 0) Then
  loc_14D8198:         var_A8 = var_98
  loc_14D819B:       End If
  loc_14D81A5:       If (var_A0 <> var_A4) Then
  loc_14D81B7:         If ((var_98 <> 1) And (var_A6 <> 0)) Then
  loc_14D81D7:           var_13C = CVar(var_110) 'String
  loc_14D81EA:           Proc_34_2_E7F7A0(CVar(CStr(Me.FGrid1.TextMatrix))), CInt(Me.FGrid1.ColAlignment)), var_A4, var_A6, var_13C, Me.FGrid1.ColAlignment), CVar(CLng(var_A8)), var_A8)
  loc_14D81F2:           var_15C = (var_13C + CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_14D81F7:           var_110 = CStr(Chr(&H45))
  loc_14D8207:           var_A8 = 0
  loc_14D820A:         End If
  loc_14D8212:         var_D0 = CVar(CLng(var_98)) 'Long
  loc_14D822F:         var_A6 = CInt(Fix((CDbl(CLng(Me.FGrid1.ColWidth))) / CDbl(var_AE))))
  loc_14D823A:         var_A4 = var_A0
  loc_14D8241:         var_A8 = 0
  loc_14D8247:       Else
  loc_14D8271:         var_A6 = CInt((CVar(CLng(var_98)) + Fix((CDbl(CLng(Me.FGrid1.ColWidth))) / CDbl(var_AE)))))
  loc_14D8277:       End If
  loc_14D827C:     Else
  loc_14D8284:       var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D828D:       var_13C = CVar(CLng(var_98)) 'Long
  loc_14D82AC:       var_D0 = CVar(CLng(var_98)) 'Long
  loc_14D82D5:       var_D0 = CVar(CLng(var_98)) 'Long
  loc_14D82FF:       Proc_34_2_E7F7A0(CVar(CStr(Me.FGrid1.TextMatrix))), CInt(Me.var_E0.ColAlignment)), CStr(Me.FGrid1.TextMatrix)), CInt(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE)))), CVar(var_110), Me.var_E0.ColAlignment), var_D0, CInt(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE)))))
  loc_14D8307:       var_15C = (var_D0 + CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_14D830C:       var_110 = CStr(Chr(&H45))
  loc_14D831C:       var_A8 = 0
  loc_14D831F:     End If
  loc_14D8326:   Next var_1B4 'Integer
  loc_14D8331:   var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D8336:   var_13C = 0
  loc_14D835B:   If (CStr(Me.Me.var_E0.TextMatrix).TextMatrix)) <> vbNullString) Then
  loc_14D8376:     var_104 = (CVar(var_110) + Chr(&H1B))
  loc_14D838A:     var_16C = (CVar(CStr(Me.FGrid1.TextMatrix))) + Chr(&H46))
  loc_14D838F:     var_110 = CStr(Chr(&H1B))
  loc_14D83A5:     var_AA = (var_AA + 1)
  loc_14D83A8:   End If
  loc_14D83AF:   Print 1, var_110
  loc_14D83BD:   var_AA = (var_AA + 1)
  loc_14D83C5:   var_110 = vbNullString
  loc_14D83CE:   var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D83D3:   var_13C = 0
  loc_14D8413:   If (Left(CVar(CStr(Me.FGrid1.TextMatrix))), 2) = "GF") Then
  loc_14D841D:     Print 1, var_9C
  loc_14D842B:     var_AA = (var_AA + 1)
  loc_14D842E:   End If
  loc_14D8434:   var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D8439:   var_13C = 0
  loc_14D8479:   If (Left(CVar(CStr(Me.FGrid1.TextMatrix))), 2) = "RF") Then
  loc_14D8483:     Print 1, var_9C
  loc_14D8491:     var_AA = (var_AA + 1)
  loc_14D8494:   End If
  loc_14D849C:   If (var_AA > &H41) Then
  loc_14D84A3:     var_AA = 0
  loc_14D84AE:     var_AC = (var_AC + 1)
  loc_14D84C5:     Print 1, Chr(&HC)
  loc_14D84CE:   End If
  loc_14D84D5: Next var_1A0 'Integer
  loc_14D84FC: var_15C = (Chr(&H12) + Chr(&HC))
  loc_14D8502: Print 1, Left(CVar(CStr(Me.FGrid1.TextMatrix))), 2)
  loc_14D8515: Close 1
  loc_14D8520: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_14D8532: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_14D853F: Close 1
  loc_14D854B: If (MemVar_1F923B8 = "Y") Then
  loc_14D8569:   var_C0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_14D8573: Else
  loc_14D8590:   var_C0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_14D8597: End If
  loc_14D859B: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_34_1_12B5F24
  'Data Table: 41B610
  Dim var_AC As Integer
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_108 As String
  Dim var_AA As Integer
  Dim arg_20 As Integer
  Dim var_100 As Variant
  Dim var_134 As Variant
  Dim var_A6 As Integer
  Dim var_154 As Variant
  Dim var_A8 As Integer
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  loc_12B590A: var_AC = &H6D
  loc_12B5928: For var_D0 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_98 = var_D0 'Integer
  loc_12B5932:   var_E0 = CVar(CLng(var_98)) 'Long
  loc_12B597B:   var_108 = Replace(CStr(Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC)))))), " ", MemVar_1F923CC, 1, -1, 0)
  loc_12B597F:   var_9C = var_9C & var_108
  loc_12B5993: Next var_D0 'Integer
  loc_12B599A: var_AA = 1
  loc_12B59A3: If (arg_20 = 0) Then
  loc_12B59AE:   If (arg_24 = "80") Then
  loc_12B59D2:     Print 1, Proc_6_128_10272A8(arg_14, "B")
  loc_12B59E7:     arg_20 = (arg_20 + 1)
  loc_12B59ED:   Else
  loc_12B59F5:     If (arg_24 = "132") Then
  loc_12B5A1A:       Print 1, Proc_6_128_10272A8(arg_14, "B", 140)
  loc_12B5A2F:       arg_20 = (arg_20 + 1)
  loc_12B5A35:     Else
  loc_12B5A56:       Print 1, Proc_6_128_10272A8(arg_14, "B", &H50, arg_20)
  loc_12B5A6B:       arg_20 = (arg_20 + 1)
  loc_12B5A6E:     End If
  loc_12B5A6E:   End If
  loc_12B5A76:   If (arg_1C = "C") Then
  loc_12B5A86:     For var_118 = 0 To CInt(UBound(arg_18, 1)): var_96 = var_118 'Integer
  loc_12B5A99:       If (arg_18(CLng(var_96)) <> vbNullString) Then
  loc_12B5AB7:         var_100 = (Chr(&HF) + CVar(arg_18(CLng(var_96))))
  loc_12B5ABD:         Print 1, Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC)))))
  loc_12B5AD0:         arg_20 = (arg_20 + 1)
  loc_12B5AD3:       End If
  loc_12B5AD6:     Next var_118 'Integer
  loc_12B5ADE:   Else
  loc_12B5AEB:     For var_11C = 0 To CInt(UBound(arg_18, 1)):   var_96 = var_11C 'Integer
  loc_12B5AFE:       If (arg_18(CLng(var_96)) <> vbNullString) Then
  loc_12B5B1C:         var_100 = (Chr(&H12) + CVar(arg_18(CLng(var_96))))
  loc_12B5B22:         Print 1, Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC)))))
  loc_12B5B35:         arg_20 = (arg_20 + 1)
  loc_12B5B38:       End If
  loc_12B5B3B:     Next var_11C 'Integer
  loc_12B5B40:   End If
  loc_12B5B40: End If
  loc_12B5B48: If (arg_1C = "C") Then
  loc_12B5B61:   var_100 = (Chr(&HF) + CVar(var_9C))
  loc_12B5B67:   Print 1, Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC)))))
  loc_12B5B7A:   arg_20 = (arg_20 + 1)
  loc_12B5B80: Else
  loc_12B5B96:   var_100 = (Chr(&H12) + CVar(var_9C))
  loc_12B5B9C:   Print 1, Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC)))))
  loc_12B5BAF:   arg_20 = (arg_20 + 1)
  loc_12B5BB2: End If
  loc_12B5BCD: For var_120 = 0 To CInt((CLng(Me.FGrid1.FixedRows) - 1)): var_96 = var_120 'Integer
  loc_12B5BEE:   For var_124 = 1 To CInt((CLng(Me.var_CC.Cols) - 1)): var_98 = var_124 'Integer
  loc_12B5BF8:     var_E0 = CVar(CLng(var_96)) 'Long
  loc_12B5C12:     If (CBool(Me.var_CC.MergeRow)) = &HFF) Then
  loc_12B5C19:       var_E0 = CVar(CLng(var_96)) 'Long
  loc_12B5C22:       var_134 = CVar(CLng(var_98)) 'Long
  loc_12B5C52:       If (CLng((var_98 + 1)) < CLng(Me.var_CC.Cols)) Then
  loc_12B5C5C:         var_E0 = CVar(CLng(var_96)) 'Long
  loc_12B5C68:         var_134 = CVar(CLng((var_98 + 1))) 'Long
  loc_12B5C86:         If (var_134 <> CStr(Me.var_CC.TextMatrix))) Then
  loc_12B5CAF:           var_A6 = CInt((CVar(CLng(var_98)) + Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC)))))
  loc_12B5CE3:           Proc_34_2_E7F7A0(Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC))))), CInt(Me.var_CC.ColAlignmentFixed)), CStr(Me.var_CC.TextMatrix)), var_A6, CVar(var_10C), Me.var_CC.ColAlignmentFixed), CVar(CLng(var_98)), var_A6)
  loc_12B5CEB:           var_154 = (CDbl(var_A6) + Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC))))))
  loc_12B5CF0:           var_10C = CStr(var_154)
  loc_12B5CFE:           var_A6 = 0
  loc_12B5D04:         Else
  loc_12B5D2A:           var_A6 = CInt((CVar(CLng(var_98)) + Fix((CDbl(CLng(Me.FGrid1.ColWidth))) / CDbl(var_AC)))))
  loc_12B5D30:         End If
  loc_12B5D33:       Else
  loc_12B5D59:         var_A6 = CInt((CVar(CLng(var_98)) + Fix((CDbl(CLng(Me.FGrid1.ColWidth))) / CDbl(var_AC)))))
  loc_12B5D5F:       End If
  loc_12B5D62:     Else
  loc_12B5D66:       var_E0 = CVar(CLng(var_96)) 'Long
  loc_12B5D6F:       var_134 = CVar(CLng(var_98)) 'Long
  loc_12B5D82:       var_A0 = CStr(Me.FGrid1.TextMatrix))
  loc_12B5D8C:       var_E0 = CVar(CLng(var_98)) 'Long
  loc_12B5DA9:       var_A6 = CInt(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC))))
  loc_12B5DB3:       var_E0 = CVar(CLng(var_98)) 'Long
  loc_12B5DDD:       Proc_34_2_E7F7A0(Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC))))), CInt(Me.var_CC.ColAlignmentFixed)), var_A0, var_A6, CVar(var_10C), Me.var_CC.ColAlignmentFixed), var_E0, var_A6)
  loc_12B5DE5:       var_154 = (var_E0 + Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC))))))
  loc_12B5DEA:       var_10C = CStr(var_154)
  loc_12B5DF8:       var_A8 = 0
  loc_12B5DFB:     End If
  loc_12B5DFE:   Next var_124 'Integer
  loc_12B5E28:   If (CVar(CLng(var_96)) And (CBool(Me.var_CC.MergeRow)) = &HFF)) Then
  loc_12B5E2E:     var_CC = Me.var_CC.Cols
  loc_12B5E3D:     var_E0 = CVar((CLng(var_CC) - 1)) 'Long
  loc_12B5E67:     Proc_34_2_E7F7A0(var_154, CInt(Me.var_CC.ColAlignmentFixed)), var_A0, var_A6)
  loc_12B5E6F:     var_164 = (CVar(var_10C) + var_154)
  loc_12B5E74:     var_10C = CStr(var_164)
  loc_12B5E84:     var_A6 = 0
  loc_12B5E87:   End If
  loc_12B5EC4:   var_174 = (CVar(var_10C) + Chr(&H1B))
  loc_12B5ECB:   var_194 = (var_174 + Chr(&H46))
  loc_12B5ED5:   var_154 = (Chr(&H1B) + Chr(&H45))
  loc_12B5EDB:   Print 1, var_154, var_194
  loc_12B5EF8:   arg_20 = (arg_20 + 1)
  loc_12B5EFE:   var_10C = vbNullString
  loc_12B5F04: Next var_120 'Integer
  loc_12B5F0E: Print 1, var_9C
  loc_12B5F1A: arg_20 = (arg_20 + 1)
  loc_12B5F1D: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_34_2_E7F7A0
  'Data Table: 41B610
  loc_E7F742: If (CLng(arg_10) = 1) Then
  loc_E7F753:   var_94 = CVar(Proc_6_45_EAD428(arg_14)) 'Variant
  loc_E7F75A: Else
  loc_E7F764:   If (CLng(arg_10) = 7) Then
  loc_E7F775:     var_94 = CVar(Proc_34_3_E6C310(arg_14, arg_18)) 'Variant
  loc_E7F77C:   Else
  loc_E7F786:     If (CLng(arg_10) = 4) Then
  loc_E7F797:       var_94 = CVar(Proc_6_46_F8A434(arg_14, arg_18)) 'Variant
  loc_E7F79B:     End If
  loc_E7F79B:   End If
  loc_E7F79B: End If
  loc_E7F79B: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_34_3_E6C310(arg_C, arg_10) 'E6C310
  'Data Table: 41B610
  Dim var_C8 As Variant
  loc_E6C2DD: arg_C = CStr(Mid(arg_C, 1, arg_10))
  loc_E6C2F0: var_B8 = Space((CLng(arg_10) - Len(arg_C)))
  loc_E6C2FE: var_C8 = (Mid(arg_C, 1, arg_10) + CVar(arg_C))
  loc_E6C303: var_88 = CStr(var_C8)
  loc_E6C30D: Exit Sub
loc_E6C30E: End Sub
End Sub
