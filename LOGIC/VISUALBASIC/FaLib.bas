
Public Sub Proc_183_0_1279094
  'Data Table: 429190
  Dim var_98 As String
  Dim var_9C As String
  Dim var_A0 As String
  Dim var_D0 As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_108 As Variant
  Dim var_10C As Variant
  Dim var_120 As Variant
  Dim var_104 As Variant
  Dim var_130 As Variant
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_90 As Integer
  Dim var_1CC As Fields15
  Dim var_1D0 As Field20
  Dim var_1B0 As Variant
  loc_1278B60: var_D0 = CVar("SELECT COUNT(*) FROM SUBGROUPCURRBAL WHERE LogSite_Code='" & MemVar_1F92078 & "' AND SubCode='" & arg_10 & "' AND V_Date=") 'String
  loc_1278B6E: Proc_183_7_EB0C44(var_C0, arg_20, var_D0, var_104, -1)
  loc_1278B81: Me.Connection15.Execute CStr(var_108 & var_C0), var_10C, 0
  loc_1278B89: var_120 = var_108.Fields
  loc_1278B91:  = var_10C.Item(var_130)
  loc_1278B99:  = var_120.Value
  loc_1278BCA: If (var_130 <= 0) Then
  loc_1278BD0:   var_B0 = arg_20
  loc_1278BD8:   Proc_183_7_EB0C44(var_C0)
  loc_1278C06:   var_D0 = CVar("INSERT INTO SUBGROUPCURRBAL (LogSite_Code,SubCode,V_Date,GroupCode,Curr_Bal) VALUES ('" & MemVar_1F92078 & "','" & arg_10 & "',") 'String
  loc_1278C15:   var_104 = var_D0 & var_C0 & ",'" 
  loc_1278C1F:   var_130 = var_104 & CVar(arg_1C) 
  loc_1278C33:   var_160 = CVar((arg_18 - arg_14)) 'Double
  loc_1278C37:   var_170 = var_130 & "'," & var_160 
  loc_1278C40:   var_190 = var_170 & ")" 
  loc_1278C4B:   Me.Connection15.Execute CStr(var_190), var_1B0, -1
  loc_1278C76: Else
  loc_1278C81:   Proc_183_7_EB0C44(var_C0, arg_20)
  loc_1278C9F:   var_98 = CStr((arg_18 - arg_14))
  loc_1278CA3:   var_9C = "Update SubGroupCURRBAL Set Curr_Bal=Curr_Bal+" & "INSERT INTO SUBGROUPCURRBAL (LogSite_Code,SubCode,V_Date,GroupCode,Curr_Bal) VALUES ('" & MemVar_1F92078
  loc_1278CAA:   var_A0 = "INSERT INTO SUBGROUPCURRBAL (LogSite_Code,SubCode,V_Date,GroupCode,Curr_Bal) VALUES ('" & MemVar_1F92078 & "','" & " Where LogSite_Code='"
  loc_1278CD7:   Me.Connection15.Execute CStr(CVar(var_A0 & MemVar_1F92078 & "' AND SubCode='" & arg_10 & "' AND V_Date=") & var_C0), var_104, -1
  loc_1278CFB: End If
  loc_1278D1C: Me.Connection15.Execute "SELECT MAINGRCODE FROM ACGROUP Where GroupCode='" & arg_1C & "' AND AliasYN='N'", var_C0, -1
  loc_1278D27: Set var_88 = var_108
  loc_1278D4B: If (var_88.RecordCount > 0) Then
  loc_1278D5D:   var_108 = var_88.Fields
  loc_1278D6D:   var_C0 = CVar(var_108.Item("MainGrCode")) 'Address
  loc_1278D76:   var_94 = Proc_183_2_E5A304(var_C0, var_108, var_108)
  loc_1278D94:   For var_1C4 = 1 To CInt((CDbl(Len(var_94)) / CDbl(3))): var_8E = var_1C4 'Integer
  loc_1278DBB:     Me.Connection15.Execute "SELECT * FROM ACGROUP Where MAINGRCODE='" & var_94 & "' AND AliasYN='N'", var_C0, -1
  loc_1278DC6:     Set var_88 = var_108
  loc_1278DD6:     ' Referenced from: 127907E
  loc_1278DE5:     If Not(var_88.EOF) Then
  loc_1278E37:       var_C0 = var_88.Fields.Item("GroupCode").Value
  loc_1278E48:       var_104 = CVar("SELECT COUNT(*) FROM ACGROUPCURRBAL WHERE LogSite_Code='" & MemVar_1F92078 & "' AND GROUPCode='") & var_C0 & "' AND V_Date=" 
  loc_1278E57:       Proc_183_7_EB0C44(var_130, arg_20, var_104, var_170, -1, var_120, var_1CC)
  loc_1278E6A:       Me.Connection15.Execute CStr(0 & var_130), var_1D0, var_190
  loc_1278E72:       var_108 = var_120.Fields
  loc_1278E7A:       var_90 = var_1CC.Item(1)
  loc_1278E82:        = var_1D0.Value
  loc_1278EB9:       If (var_190 <= 0) Then
  loc_1278EBF:         var_B0 = arg_20
  loc_1278EC7:         Proc_183_7_EB0C44(var_C0)
  loc_1278EEE:         var_130 = var_88.Fields.Item("GroupCode").Value
  loc_1278F14:         var_E0 = CVar("INSERT INTO ACGROUPCURRBAL (LogSite_Code,V_Date,GroupCode,Curr_Bal) VALUES ('" & MemVar_1F92078 & "',") & var_C0 
  loc_1278F2D:         var_170 = var_E0 & ",'" & var_130 & "'," 
  loc_1278F38:         var_160 = CVar((arg_18 - arg_14)) 'Double
  loc_1278F50:         Me.Connection15.Execute CStr(var_170 & 0 & ")"), var_1E0, -1
  loc_1278F7F:       Else
  loc_1278FB1:         Proc_183_7_EB0C44(var_130, arg_20)
  loc_1278FCF:         var_98 = CStr((arg_18 - arg_14))
  loc_1278FD3:         var_9C = "Update ACGroupCURRBAL Set Curr_Bal=Curr_Bal+" & "INSERT INTO ACGROUPCURRBAL (LogSite_Code,V_Date,GroupCode,Curr_Bal) VALUES ('" & MemVar_1F92078
  loc_1278FEE:         var_E0 = CVar(CStr(var_170 & 0 & ")") & " Where LogSite_Code='" & MemVar_1F92078 & "' AND GROUPCode='") & var_88.Fields.Item("GroupCode").Value 
  loc_1279009:         Me.Connection15.Execute CStr(var_E0 & "' AND V_Date=" & var_130), var_170, -1
  loc_1279035:       End If
  loc_127903F:       var_C0 = CVar((Len(var_94) - 3)) 'Long
  loc_1279070:       If (Len(CStr(Mid(var_94, 1, var_88.Fields.Item("GroupCode").Value))) = 0) Then
  loc_1279073:         GoTo loc_1279081
  loc_1279076:       End If
  loc_1279079:       var_88.MoveNext
  loc_127907E:       GoTo loc_1278DD6
  loc_1279081:       ' Referenced from: 1279073
  loc_1279081:     End If
  loc_1279084:   Next var_1C4 'Integer
  loc_1279089: End If
  loc_127908E: Set var_88 = Nothing
  loc_1279091: Exit Sub
  loc_1279092: If  Then Exit Sub
  loc_1279092: End If
End Sub

Public Sub Proc_183_1_F5B310
  'Data Table: 429190
  Dim var_98 As CommandButton
  Dim var_CC As Variant
  loc_F5B1F4: On Error Resume Next
  loc_F5B213: For var_94 = 0 To CLng((Form.Count - 1)): var_88 = var_94 'Long
  loc_F5B23A:   CheckTypeVar
  loc_F5B25D:   CheckTypeVar
  loc_F5B281:   CheckTypeVar
  loc_F5B298:   If (var_88 Or )) Then
  loc_F5B2A0:     var_CC = CVar(arg_10) 'String
  loc_F5B2B1:     var_98 = Me.Me.Me.Form.Controls.Controls.Controls.Controls
  loc_F5B2C3:     ).BackColor = var_88
  loc_F5B2D2:     var_CC = CVar(arg_14) 'String
  loc_F5B2E3:     var_98 = Form.Controls
  loc_F5B2F5:     ).ForeColor = var_88
  loc_F5B2FF:   End If
  loc_F5B306: Next var_94 'Long
  loc_F5B30D: Exit Sub
End Sub

Public Sub Proc_183_2_E5A304(arg_C) 'E5A304
  'Data Table: 429190
  loc_E5A2F4: var_88 = CStr(IIf(IsNull(arg_C), vbNullString, arg_C))
  loc_E5A300: Exit Sub
End Sub

Public Sub Proc_183_3_E7D1C8
  'Data Table: 429190
  loc_E7D1B4: var_94 = IIf(IsNull(arg_10) Or (arg_10 = vbNullString), 0, arg_10) 'Variant
  loc_E7D1C1: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_183_4_EABBA8
  'Data Table: 429190
  loc_EABB90: var_94 = Format(IIf(IsNull(arg_10) Or (arg_10 = vbNullString), 0, arg_10), "0.00") 'Variant
  loc_EABBA1: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_183_5_EF3390
  'Data Table: 429190
  loc_EF3309: If CBool(IsNull(arg_10) Or (arg_10 = vbNullString) Or (arg_10 = 0)) Then
  loc_EF3311:   var_94 = vbNullString 'Variant
  loc_EF3318: Else
  loc_EF3378:   var_94 = Format(IIf(IsNull(arg_10) Or (arg_10 = vbNullString), 0, arg_10), "0.00") 'Variant
  loc_EF3389: End If
  loc_EF3389: Result = arg_10: Exit Sub
  loc_EF338D: ThisVCallI2
End Sub

Public Sub Proc_183_6_EA3004(arg_C) 'EA3004
  'Data Table: 429190
  loc_EA3001: End Sub
End Sub

Public Sub Proc_183_7_EB0C44
  'Data Table: 429190
  Dim var_104 As String
  loc_EB0BE1: If CBool(IsNull(arg_10) Or (arg_10 = vbNullString)) Then
  loc_EB0BE9:   var_94 = "Null" 'Variant
  loc_EB0BF0: Else
  loc_EB0BF0:   var_104 = "'"
  loc_EB0C2E:   var_94 = 1 & Format(CDate(CDate(arg_10)), "dd/MMM/yyyy") & "'" 'Variant
  loc_EB0C3D: End If
  loc_EB0C3D: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_183_8_EB0AA4
  'Data Table: 429190
  Dim var_104 As String
  loc_EB0A41: If CBool(IsNull(arg_10) Or (arg_10 = vbNullString)) Then
  loc_EB0A49:   var_94 = "Null" 'Variant
  loc_EB0A50: Else
  loc_EB0A50:   var_104 = "'"
  loc_EB0A8E:   var_94 = 1 & Format(CDate(CDate(arg_10)), "dd/MMM/yyyy hh:nn:ss") & "'" 'Variant
  loc_EB0A9D: End If
  loc_EB0A9D: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_183_9_EAA760
  'Data Table: 429190
  Dim var_DC As String
  loc_EAA6E6: var_94 = arg_10 'Variant
  loc_EAA70A: If CBool(IsNull(var_94) Or (var_94 = Null)) Then
  loc_EAA712:   var_94 = "Null" 'Variant
  loc_EAA716:   Result = arg_10: Exit Sub
  loc_EAA71A: End If
  loc_EAA73E: var_DC = Replace(CStr(var_94), "'", "''", 1, -1, 0)
  loc_EAA74C: var_94 = CVar("'" & var_DC & "'") 'Variant
  loc_EAA759: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_183_10_14991A4(arg_C, arg_10, arg_14, arg_18) '14991A4
  'Data Table: 429190
  Dim var_D0 As Long
  Dim var_100 As String
  Dim var_E0 As Variant
  Dim var_120 As String
  Dim var_130 As Variant
  Dim var_A8 As String
  Dim var_110 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_26C As Variant
  Dim var_28C As Variant
  Dim var_2AC As Variant
  Dim var_2CC As Variant
  Dim var_2EC As Variant
  Dim var_30C As Variant
  Dim var_190 As String
  loc_149856C: On Error Goto loc_1499168
  loc_1498575: If (arg_10 = 1) Then
  loc_149857E:   Call 0.Method_arg_7C (var_CC)
  loc_1498586:   var_D0 = var_CC
  loc_1498592:   If (var_D0 = &H10C) Then
  loc_14985B6:     MsgBox("Please Set 132 Column Paper in Your Printer on 12 cpi & Put it On", &H40, "Paper Setting", var_130, var_150)
  loc_14985C9:   Else
  loc_14985D2:     If (var_D0 = &H107) Then
  loc_14985F6:       MsgBox("Please Set 80 Column Paper in Your Printer on 12 cpi & Put it On", &H40, "Paper Setting", var_130, var_150)
  loc_1498609:     Else
  loc_1498612:       If (var_D0 = 9) Then
  loc_1498636:         MsgBox("Please Set A4 Paper in Your Printer on 12 cpi & Put it On", &H40, "Paper Setting", var_130, var_150)
  loc_1498649:       Else
  loc_149864F:         Call 0.Method_arg_7C (var_CC)
  loc_1498681:         var_130 = ("Paper Size No. is " + Str(CVar(var_CC)))
  loc_1498685:         MsgBox(var_130, &H40, "Paper Setting", var_160, var_180)
  loc_1498699:       End If
  loc_1498699:     End If
  loc_1498699:   End If
  loc_149869D:   var_BE = CByte(0) 'Byte
  loc_14986AD:   Call 0.Method_Proc_183_10_14991A48 ("C:\REPTMP", var_182)
  loc_14986B8:   If (var_182 = 0) Then
  loc_14986C7:     Call 0.Method_arg_74 ("C:\REPTMP", var_188)
  loc_14986CF:     ' Referenced from: 1498876
  loc_14986CF:   End If
  loc_14986D1:   If &HFF Then
  loc_14986DD:     If (CInt(var_BE) >= &H64) Then
  loc_14986EB:       For var_18C = CByte(1) To CByte(&H64): var_BE = var_18C 'Byte
  loc_1498714:         var_130 = ("C:\REPTMP\REP" + Trim(Str(var_BE)))
  loc_1498749:         var_A8 = var_190
  loc_1498754:         var_110 = (Trim(CStr(var_130)) + ".TXT")
  loc_1498762:         Call 0.Method_Proc_183_10_14991A44 (CStr(Trim(Str(var_BE))), var_182, var_A8)
  loc_1498778:         If var_182 Then
  loc_149879A:           var_A8 = var_190
  loc_14987A5:           var_110 = (Trim(var_A8) + ".TXT")
  loc_14987B3:           Call 0.Method_arg_5C (CStr(Trim(Str(var_BE))), 0)
  loc_14987C6:         End If
  loc_14987C9:       Next var_18C 'Byte
  loc_14987D3:       var_BE = CByte(1) 'Byte
  loc_14987D7:     End If
  loc_14987FA:     var_130 = ("C:\REPTMP\REP" + Trim(Str(var_BE)))
  loc_149882F:     var_A8 = var_190
  loc_149883A:     var_110 = (Trim(CStr(var_130)) + ".TXT")
  loc_1498848:     Call 0.Method_Proc_183_10_14991A44 (CStr(Trim(Str(var_BE))), var_182)
  loc_149885E:     If var_182 Then
  loc_149886C:       var_BE = CByte((CInt(var_BE) + 1)) 'Byte
  loc_1498873:     Else
  loc_1498876:     Else
  loc_1498876:       GoTo loc_14986CF
  loc_1498879:     End If
  loc_1498879:   End If
  loc_1498896:   var_A8 = var_190
  loc_14988A1:   var_110 = (Trim(var_A8) + ".TXT")
  loc_14988AF:   Call 0.Method_arg_DC (var_188, CStr(Trim(Str(var_BE))))
  loc_14988B7:   Call 0.Method_arg_3C (var_A8)
  loc_14988D3:   If (arg_18 = &HFF) Then
  loc_14988E1:     Call 0.Method_arg_DC (var_188)
  loc_14988E9:     Call 0.Method_arg_24 (&HA)
  loc_14988F4:   Else
  loc_14988FF:     Call 0.Method_arg_DC (var_188)
  loc_1498907:     Call 0.Method_arg_24 (8)
  loc_149890F:   End If
  loc_1498917:   Call 0.Method_arg_DC (var_188)
  loc_149891F:   Call 0.Method_arg_64 (&H3C)
  loc_1498932:   Call 0.Method_arg_DC (var_188)
  loc_149893A:   Call 0.Method_arg_2C (1)
  loc_1498950:   Call 0.Method_arg_90 (var_188, var_CC)
  loc_1498958:   Call 0.Method_arg_24 (var_C6)
  loc_1498964:   For var_198 =  To CInt(var_CC): 1 = var_198 'Integer
  loc_149897A:     Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_1498982:     Call 0.Method_arg_20 (var_19C)
  loc_149898A:     Call 0.Method_arg_30 (var_190)
  loc_14989A0:     var_1AC = Ucase(CVar(var_190)) 'Variant
  loc_14989D0:     If (var_1AC = Ucase("comp_name")) Then
  loc_14989ED:       var_110 = (Chr(&H1B) + "W1")
  loc_14989F9:       var_130 = Chr(&H1B)
  loc_1498A01:       var_150 = (Ucase("comp_name") + var_130)
  loc_1498A0A:       var_160 = ("Paper Setting" + "W1")
  loc_1498A1E:       var_1BC = (var_160 + Chr(&H1B))
  loc_1498A27:       var_1CC = (var_1BC + "E")
  loc_1498A3B:       var_1EC = (var_1CC + Chr(&H1B))
  loc_1498A44:       var_1FC = (var_1EC + "G")
  loc_1498A4E:       var_20C = (var_1FC + CVar(MemVar_1F92130))
  loc_1498A62:       var_22C = (var_20C + Chr(&H1B))
  loc_1498A6B:       var_24C = (var_22C + "H")
  loc_1498A7F:       var_26C = (var_24C + Chr(&H1B))
  loc_1498A88:       var_28C = (var_26C + "F")
  loc_1498A9C:       var_2AC = (var_28C + Chr(&H1B))
  loc_1498AA5:       var_2CC = (var_2AC + "W0")
  loc_1498AB9:       var_2EC = (var_2CC + Chr(&H1B))
  loc_1498AC2:       var_30C = (var_2EC + "W0")
  loc_1498AE4:       Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_1498AEC:       Call 0.Method_arg_20 (var_19C)
  loc_1498AF4:       Call 0.Method_arg_38 (CStr("'" & var_30C & "'"))
  loc_1498B3D:     Else
  loc_1498B5F:       If (var_1AC = Ucase("comp_add1")) Then
  loc_1498B80:         Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_1498B88:         Call 0.Method_arg_20 (var_19C)
  loc_1498B90:         Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_1498BA6:       Else
  loc_1498BC8:         If (var_1AC = Ucase("comp_pin")) Then
  loc_1498BE9:           Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_1498BF1:           Call 0.Method_arg_20 (var_19C)
  loc_1498BF9:           Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_1498C0F:         Else
  loc_1498C31:           If (var_1AC = Ucase("comp_GSTIN")) Then
  loc_1498C3B:             var_190 = "'" & MemVar_1F92154
  loc_1498C52:             Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_1498C5A:             Call 0.Method_arg_20 (var_19C)
  loc_1498C62:             Call 0.Method_arg_38 (var_190 & "'")
  loc_1498C75:           End If
  loc_1498C75:         End If
  loc_1498C75:       End If
  loc_1498C75:     End If
  loc_1498C78:   Next var_198 'Integer
  loc_1498C85:   Call 0.Method_arg_D8 (False)
  loc_1498CA7:   var_A8 = var_190
  loc_1498CC1:   var_110 = (Trim(var_A8) + ".TXT")
  loc_1498CCF:   Call 0.Method_arg_7C (CStr(Ucase("comp_GSTIN")), 8, 0)
  loc_1498CDA:   Set var_C4 = var_188
  loc_1498D05:   Call 0.Method_arg_38 (CStr(Chr(&HC)), 0)
  loc_1498D13:   Call 0.Method_Proc_183_10_14991A4C (var_188)
  loc_1498D30:   Call 0.Method_arg_7C ("C:\REPTMP\REPPRINT.BAT", 2, &HFF)
  loc_1498D3B:   Set var_C4 = var_188
  loc_1498D4A:   var_190 = "TYPE &H23>" & Me(12)
  loc_1498D50:   Call 0.Method_arg_38 (var_190, 0)
  loc_1498D5B:   Call 0.Method_Proc_183_10_14991A4C (var_188)
  loc_1498D6A:   If (Me(16) = "Y") Then
  loc_1498D79:     Call 0.Method_Proc_183_10_14991A44 ("C:\REPTMP\REPPRINT.PIF")
  loc_1498D84:     If (var_182 = 0) Then
  loc_1498DA0:       MsgBox("C:\REPTMP\REPPRINT.PIF File Not Exist", 0, Ucase("comp_GSTIN"), var_130, "Paper Setting")
  loc_1498DB0:       Exit Sub
  loc_1498DB1:     End If
  loc_1498DCE:     var_A8 = var_190
  loc_1498DDE:     var_110 = ("C:\REPTMP\REPPRINT.PIF " + Trim(var_A8))
  loc_1498DE7:     var_130 = (Ucase("comp_GSTIN") + ".TXT")
  loc_1498DF4:     var_B8 = CVar(Shell(var_130, 0)) 'Variant
  loc_1498E07:   Else
  loc_1498E13:     Call 0.Method_Proc_183_10_14991A44 ("C:\REPTMP\REPPRINT.BAT", var_182)
  loc_1498E1E:     If (var_182 = 0) Then
  loc_1498E3A:       MsgBox("C:\REPTMP\REPPRINT.BAT File Not Exist", 0, Ucase("comp_GSTIN"), var_130, "Paper Setting")
  loc_1498E4A:       Exit Sub
  loc_1498E4B:     End If
  loc_1498E68:     var_A8 = var_190
  loc_1498E70:     var_100 = "C:\REPTMP\REPPRINT.BAT "
  loc_1498E78:     var_110 = (var_100 + Trim(var_A8))
  loc_1498E7C:     var_120 = ".TXT"
  loc_1498E81:     var_130 = (Ucase("comp_GSTIN") + var_120)
  loc_1498E8E:     var_B8 = CVar(Shell(var_130, 0)) 'Variant
  loc_1498E9E:   End If
  loc_1498EA1: Else
  loc_1498EA8:   var_190 = "* " & arg_14
  loc_1498EB3:   Proc_183_13_F040E4(var_190 & " * ")
  loc_1498ECD:   Call 0.Method_arg_90 (var_188, var_CC, var_C6)
  loc_1498ED5:   Call 0.Method_arg_24 (1)
  loc_1498EE1:   For var_350 =  To CInt(var_CC):   var_182 = var_350 'Integer
  loc_1498EF7:     Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_1498EFF:     Call 0.Method_arg_20 (var_19C)
  loc_1498F07:     Call 0.Method_arg_30 (var_190)
  loc_1498F1D:     var_360 = Ucase(CVar(var_190)) 'Variant
  loc_1498F4D:     If (var_360 = Ucase("comp_name")) Then
  loc_1498F6E:       Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_1498F76:       Call 0.Method_arg_20 (var_19C)
  loc_1498F7E:       Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_1498F94:     Else
  loc_1498FB6:       If (var_360 = Ucase("comp_add1")) Then
  loc_1498FD7:         Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_1498FDF:         Call 0.Method_arg_20 (var_19C)
  loc_1498FE7:         Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_1498FFD:       Else
  loc_149901F:         If (var_360 = Ucase("comp_pin")) Then
  loc_1499040:           Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_1499048:           Call 0.Method_arg_20 (var_19C)
  loc_1499050:           Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_1499066:         Else
  loc_1499077:           var_110 = Ucase("comp_GSTIN")
  loc_1499088:           If (var_360 = var_110) Then
  loc_14990A9:             Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_14990B1:             Call 0.Method_arg_20 (var_19C)
  loc_14990B9:             Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_14990CC:           End If
  loc_14990CC:         End If
  loc_14990CC:       End If
  loc_14990CC:     End If
  loc_14990CF:   Next var_350 'Integer
  loc_14990DA:   If (arg_10 = 0) Then
  loc_14990E4:     var_190 = "* " & arg_14
  loc_14990F4:     Call 0.Method_arg_54 (var_190 & " *")
  loc_1499109:     FaRepView.RepTitle = arg_14
  loc_1499111:     var_E0 = CVar(arg_C) 'Address
  loc_1499121:     FaRepView.Rep_Set = var_E0
  loc_149912C:   Else
  loc_1499143:     Call 0.Method_Me8 (var_E0, var_100, var_120)
  loc_1499148:   End If
  loc_1499148: End If
  loc_149914D: Set var_88 = Nothing
  loc_1499155: IStAdFunc
  loc_149915B: var_B8 = Nothing 'Address
  loc_1499164: Set var_BC = Nothing
  loc_1499167: Exit Sub
  loc_1499168: ' Referenced from: 149856C
  loc_1499170: Set var_188 = Err()
  loc_1499176: Call 0.Method_arg_2C (var_190, Nothing)
  loc_149918F: MsgBox(CVar(var_190), &H10, var_110, var_130, "Paper Setting")
  loc_14991A2: Exit Sub
End Sub

Public Sub Proc_183_11_113C750
  'Data Table: 429190
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim arg_18 As Integer
  loc_113C3EB: If (|�B.rows < 1) Then
  loc_113C3EE:   Exit Sub
  loc_113C3EF: End If
  loc_113C403: If (Me.RecordCount <= 0) Then
  loc_113C40F:   Me.TEXT = vbNullString
  loc_113C413:   Exit Sub
  loc_113C414: End If
  loc_113C429: If ((CLng(arg_18) = &H1B) Or (CLng(arg_18) = &HD)) Then
  loc_113C42C:   Exit Sub
  loc_113C42D: End If
  loc_113C437: If (CLng(arg_18) = 8) Then
  loc_113C451:   If (Len(Me.SelText) > 1) Then
  loc_113C465:     var_E0 = (Len(Me.SelText) - 1)
  loc_113C46D:     Me.SelLength = var_E0
  loc_113C47D:     var_8C = CStr(Me.SelText)
  loc_113C486:   Else
  loc_113C48F:     Me.TEXT = vbNullString
  loc_113C496:     Call |�B.SetFocus
  loc_113C4A4:     Me.Visible = False
  loc_113C4A8:     Exit Sub
  loc_113C4A9:   End If
  loc_113C4AC: Else
  loc_113C4C3:   var_E0 = (Me.SelText + Chr(CLng(arg_18)))
  loc_113C4C8:   var_8C = CStr(var_E0)
  loc_113C4D4: End If
  loc_113C4F1: var_8C = Replace(var_8C, "'", "''", 1, -1, 0)
  loc_113C4F7: Me.Recordset15.MoveFirst
  loc_113C534: If (Me.Recordset15.Fields.Item(CVar(arg_1C)).Type = 3) Then
  loc_113C577:   Me.Recordset15.Find "[" & arg_1C & "] >=" & CStr(Val(var_8C)) & vbNullString, 0, 1
  loc_113C58C: Else
  loc_113C5BC:   Me.Recordset15.Find "[" & arg_1C & "] like '" & var_8C & "*'", 0, 1
  loc_113C5CC: End If
  loc_113C5CE: arg_18 = 0
  loc_113C5FA: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_113C607:   |�B.CellBackColor = CVar(arg_24)
  loc_113C621:   |�B.Row = CVar(Me.Recordset15.AbsolutePosition)
  loc_113C62F:   |�B.CellBackColor = CVar(arg_20)
  loc_113C662:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(arg_1C)).Value
  loc_113C67C:   Me.SelLength = CVar(Len(var_8C))
  loc_113C690:   var_E0 = (|�B.CellLeft + |�B.left)
  loc_113C698:   Me.left = var_E0
  loc_113C6B5:   var_E0 = (|�B.CellTop + |�B.top)
  loc_113C6BD:   Me.top = var_E0
  loc_113C6DC:   If (Me.Visible = False) Then
  loc_113C6E6:     Me.Visible = True
  loc_113C6EA:     var_9C = 0
  loc_113C6F3:     Call Me.ZOrder
  loc_113C6FC:     Call Me.SetFocus
  loc_113C70E:     Me.BackColor = |�B.CellBackColor
  loc_113C721:     Me.ForeColor = |�B.CellForeColor
  loc_113C734:     Me.width = |�B.CellWidth
  loc_113C747:     Me.height = |�B.CellHeight
  loc_113C74E:   End If
  loc_113C74E: End If
  loc_113C74E: Exit Sub
End Sub

Public Sub Proc_183_12_E7A3E4(arg_C) 'E7A3E4
  'Data Table: 429190
  Dim var_86 As Integer
  Dim arg_58EC As Variant
  loc_E7A37E: var_86 = 0
  loc_E7A3D8: If ((((((((CLng(arg_C) = &H21) Or (CLng(arg_C) = &H22)) Or (CLng(arg_C) = &H24)) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H26)) Or (CLng(arg_C) = &H28)) Or (CLng(arg_C) = &H25)) Or (CLng(arg_C) = &H27)) Then
  loc_E7A3DD:   var_86 = &HFF
  loc_E7A3E0: End If
  loc_E7A3E0: End Sub
  loc_E7A3E1: arg_58EC = var_86 
End Sub

Public Sub Proc_183_13_F040E4(arg_C) 'F040E4
  'Data Table: 429190
  Dim var_BC As Variant
  Dim var_8C As CommandButton
  loc_F04032: var_BC = (Me.Global.Forms.Count - 1)
  loc_F0403E: For var_C0 = CByte(0) To CByte(var_BC): var_86 = var_C0 'Byte
  loc_F04054:   var_8C = Me.Global.Forms
  loc_F04066:   VarLateMemLdRfVar
  loc_F0409A:   If (Ucase()) = Ucase(arg_C)) Then
  loc_F040CB:     Me.Me.var_8C.Forms.Unload )
  loc_F040DA:   End If
  loc_F040DD: Next var_C0 'Byte
  loc_F040E3: Exit Sub
End Sub

Public Sub Proc_183_14_EAD5C0(arg_C, arg_10) 'EAD5C0
  'Data Table: 429190
  Dim var_F8 As Variant
  Dim var_118 As Variant
  loc_EAD561: arg_C = CStr(Mid(arg_C, 1, arg_10))
  loc_EAD598: var_F8 = (CVar(arg_10) - Len(RTrim(arg_C)))
  loc_EAD5A9: var_118 = (RTrim(arg_C) + Space(CLng(var_F8)))
  loc_EAD5AE: var_88 = CStr(var_118)
  loc_EAD5BC: Exit Sub
End Sub

Public Sub Proc_183_15_EAC900(arg_C, arg_10) 'EAC900
  'Data Table: 429190
  Dim var_F8 As Variant
  Dim var_118 As Variant
  loc_EAC8A1: arg_C = CStr(Mid(arg_C, 1, arg_10))
  loc_EAC8D8: var_F8 = (CVar(arg_10) - Len(Trim(arg_C)))
  loc_EAC8E9: var_118 = (Trim(arg_C) + Space(CLng(var_F8)))
  loc_EAC8EE: var_88 = CStr(var_118)
  loc_EAC8FC: Exit Sub
End Sub

Public Sub Proc_183_16_EAECDC(arg_C, arg_10) 'EAECDC
  'Data Table: 429190
  Dim var_D8 As Variant
  Dim var_118 As Variant
  loc_EAEC7D: arg_C = CStr(Mid(arg_C, 1, arg_10))
  loc_EAECA1: var_D8 = (CVar(arg_10) - Len(Trim(arg_C)))
  loc_EAECC5: var_118 = (Space(CLng(var_D8)) + Trim(arg_C))
  loc_EAECCA: var_88 = CStr(var_118)
  loc_EAECD8: Exit Sub
End Sub

Public Sub Proc_183_17_F6A958(arg_C, arg_10) 'F6A958
  'Data Table: 429190
  Dim var_D4 As String
  Dim var_8E As Integer
  loc_F6A830: On Error Goto loc_F6A91B
  loc_F6A841: If Not(IsMissing(arg_10)) Then
  loc_F6A862:   If CBool(Trim(arg_10) <> vbNullString) Then
  loc_F6A86C:     var_D4 = "Provider=Microsoft.Jet.OLEDB.4.0;Jet OLEDB:Database Password=" & arg_10
  loc_F6A884:     Call 0.Method_arg_24 (CVar(var_D4 & ";Data Source=" & arg_C))
  loc_F6A896:   Else
  loc_F6A8A7:     Call 0.Method_arg_24 (CVar("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & arg_C))
  loc_F6A8AF:   End If
  loc_F6A8B2: Else
  loc_F6A8C3:   Call 0.Method_arg_24 (CVar("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & arg_C))
  loc_F6A8CB: End If
  loc_F6A8D6: Call 0.Method_arg_38 (Me(4))
  loc_F6A8E7: Set var_DC = var_88
  loc_F6A8F3: Call 0.Method_arg_1E0 (var_DC)
  loc_F6A8FE: Set var_88 = var_DC
  loc_F6A904: var_8E = var_DE
  loc_F6A90F: Set var_8C = Nothing
  loc_F6A917: Set var_88 = Nothing
  loc_F6A91A: Exit Sub
  loc_F6A91B: ' Referenced from: F6A830
  loc_F6A923: Set var_DC = Err()
  loc_F6A929: Call 0.Method_arg_2C (var_D4, var_8E)
  loc_F6A942: MsgBox(CVar(var_D4), &H40, var_D0, var_F0, var_110)
  loc_F6A955: Exit Sub
End Sub

Public Sub Proc_183_18_FD52F4
  'Data Table: 429190
  Dim var_88 As Recordset
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_90 As TableDef
  Dim var_94 As Field
  loc_FD5158: Me.Database.OpenRecordset "select * from " & arg_10, var_A8, var_B8, var_C8
  loc_FD5160: Set var_88 = var_CC
  loc_FD518A: For var_D2 = 0 To (var_88.Fields.Count - 1): var_8A = var_D2 'Integer
  loc_FD51CC:   var_B8 = arg_14
  loc_FD51EE:   If (Ucase(CVar(var_88.Fields.Item(CVar(var_8A)).Name)) = Ucase(var_B8)) Then
  loc_FD51F1:     GoTo loc_FD52EA
  loc_FD51F4:   End If
  loc_FD51F7: Next var_D2 'Integer
  loc_FD5201: Set var_88 = Nothing
  loc_FD5214: var_CC = Me.Database.TableDefs
  loc_FD5224: Set var_90 = var_CC.Item(CVar(arg_10))
  loc_FD523F: var_90.CreateField CVar(arg_14), var_B8, var_C8
  loc_FD5247: Set var_94 = var_CC
  loc_FD5254: var_94.Type = CInt(arg_18)
  loc_FD5267: If (arg_18 = 10) Then
  loc_FD5271:   var_94.Size = CLng(arg_1C)
  loc_FD5284:   If Not(IsMissing(arg_24)) Then
  loc_FD528D:     var_94.AllowZeroLength = arg_24
  loc_FD5292:   End If
  loc_FD5292: End If
  loc_FD529B: If Not(IsMissing(arg_28)) Then
  loc_FD52A8:   var_94.DefaultValue = arg_28
  loc_FD52AD: End If
  loc_FD52BB: If Not(IsMissing(arg_20)) Then
  loc_FD52C4:   var_94.Required = arg_20
  loc_FD52C9: End If
  loc_FD52DE: var_90.Fields.Append var_94
  loc_FD52EA: ' Referenced from: FD51F1
  loc_FD52EF: Set var_88 = Nothing
  loc_FD52F2: Exit Sub
End Sub

Public Sub Proc_183_19_E8DAFC
  'Data Table: 429190
  Dim var_B8 As Long
  Dim var_86 As Integer
  loc_E8DA9F: var_B8 = Len(Trim(Me.TEXT))
  loc_E8DAB2: If (var_B8 = 0) Then
  loc_E8DAD5:   MsgBox(CVar(arg_10 & " is a required field."), &H10, "Validation Error", var_B8, var_D8)
  loc_E8DAE8:   Call Me.SetFocus
  loc_E8DAF0:   var_86 = 0
  loc_E8DAF6: Else
  loc_E8DAF8:   var_86 = &HFF
  loc_E8DAFB: End If
  loc_E8DAFB: End Sub
End Sub

Public Sub Proc_183_20_FB3974(arg_C) 'FB3974
  'Data Table: 429190
  Dim var_8E As Integer
  Dim var_90 As Integer
  Dim var_204 As Variant
  loc_FB382D: var_88 = Replace(arg_C, " ", vbNullString, 1, -1, 0)
  loc_FB3835: var_8E = CInt(Len(var_88))
  loc_FB383A: var_90 = 1
  loc_FB383D: ' Referenced from: FB3953
  loc_FB3843: If (var_8E > 0) Then
  loc_FB3863:   var_8C = CStr(Mid(var_88, CLng(var_90), 1))
  loc_FB391F:   var_204 = (CVar(var_8C) >= Chr(&H41)) And (CVar(var_8C) <= Chr(&H5A)) Or (CVar(var_8C) >= Chr(&H61)) And (CVar(var_8C) <= Chr(&H7A)) Or (CVar(var_8C) >= Chr(&H30)) And (CVar(var_8C) <= Chr(&H39))
  loc_FB3934:   If CBool(var_204) Then
  loc_FB393E:     var_94 = var_94 & var_8C
  loc_FB3941:   End If
  loc_FB3947:   var_90 = (var_90 + 1)
  loc_FB3950:   var_8E = (var_8E - 1)
  loc_FB3953:   GoTo loc_FB383D
  loc_FB3956: End If
  loc_FB396A: var_88 = CStr(Ucase(var_94))
  loc_FB3970: Exit Sub
  loc_FB3971: var_8E = var_90
End Sub

Public Sub Proc_183_21_FA163C(arg_C, arg_10, arg_14, arg_18) 'FA163C
  'Data Table: 429190
  Dim var_F4 As Variant
  Dim var_94 As String
  Dim var_104 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim arg_10 As Integer
  loc_FA14E6: If (arg_10 = &H2E) Then
  loc_FA14EC:   var_F4 = Me.SelStart
  loc_FA14FF:   var_94 = "-"
  loc_FA1524:   var_104 = (var_F4 + 1)
  loc_FA154E:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFE7C
  loc_FA155E:   var_1B4 = (Len((InStr(1, CVar(arg_C), var_94, 0) <> 0) And (Mid(arg_C, CLng(var_104), 1) = ".")) - 1)
  loc_FA1568:   var_1D4 = (var_1B4 - CVar(arg_18))
  loc_FA158C:   If CBool(var_F4 And (var_1D4 >= CVar(arg_14))) Then
  loc_FA1591:     arg_10 = 0
  loc_FA1597:   Else
  loc_FA159A:     var_F4 = Me.SelStart
  loc_FA15AD:     var_94 = "-"
  loc_FA15D2:     var_104 = (var_F4 + 1)
  loc_FA15FC:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFE7C
  loc_FA160D:     var_1B4 = (Len((InStr(1, CVar(arg_C), var_94, 0) = 0) And (Mid(arg_C, CLng(var_104), 1) = ".")) - CVar(arg_18))
  loc_FA1631:     If CBool(var_F4 And (var_1B4 >= CVar(arg_14))) Then
  loc_FA1636:       arg_10 = 0
  loc_FA1639:     End If
  loc_FA1639:   End If
  loc_FA1639: End If
  loc_FA1639: Exit Sub
  loc_FA163A: arg_5878 = arg_10
End Sub

Public Sub Proc_183_22_129AEBC(arg_C, arg_10, arg_14, arg_18) '129AEBC
  'Data Table: 429190
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim arg_10 As Integer
  Dim var_D8 As Variant
  Dim var_128 As Variant
  Dim Me As CommandButton
  Dim var_178 As Variant
  Dim var_1A8 As Variant
  Dim var_218 As Variant
  Dim var_258 As Variant
  Dim var_278 As Variant
  loc_129A8F4: On Error Resume Next
  loc_129A8FF: If (arg_18 = 0) Then
  loc_129A904:   var_98 = "0123456789-"
  loc_129A916:   var_88 = CStr(var_98 & Me.Tag)
  loc_129A923: Else
  loc_129A925:   var_98 = "0123456789.-"
  loc_129A937:   var_88 = CStr(var_98 & Me.Tag)
  loc_129A941: End If
  loc_129A949: If (arg_10 > &H1A) Then
  loc_129A980:   If (InStr(1, CVar(var_88), Chr(CLng(arg_10)), 0) = 0) Then
  loc_129A987:     arg_10 = 0
  loc_129A98A:   End If
  loc_129A998:   var_98 = "-"
  loc_129A9C7:   If CBool((InStr(1, CVar(arg_C), CVar(var_88), 0) <> 0) And (arg_10 = &H2D)) Then
  loc_129A9CE:     arg_10 = 0
  loc_129A9D1:   End If
  loc_129A9F8:   If CBool(InStr(1, CVar(arg_C), ".", 0) <> 0) Then
  loc_129AA03:     If (arg_10 = &H2E) Then
  loc_129AA0A:       arg_10 = 0
  loc_129AA0D:     End If
  loc_129AA1B:     var_98 = "-"
  loc_129AA34:     If CBool(InStr(1, CVar(arg_C), ".", 0) <> 0) Then
  loc_129AA58:       var_B8 = (InStr(1, CVar(arg_C), ".", 0) - 1)
  loc_129AA9C:       If CBool((InStr(1, CVar(var_88), Chr(CLng(arg_10)), 0) > CVar(arg_14)) And (Me.SelStart < InStr(1, CVar(arg_C), ".", 0))) Then
  loc_129AAA3:         arg_10 = 0
  loc_129AAA9:       Else
  loc_129AAAE:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF58
  loc_129AAD9:         var_128 = (InStr(1, CVar(arg_C), ".", 0) + CVar(arg_18))
  loc_129AB1A:         If CBool((Len(arg_10) >= InStr(1, CVar(arg_C), ".", 0)) And (Me.SelStart >= InStr(1, CVar(arg_C), ".", 0))) Then
  loc_129AB21:           arg_10 = 0
  loc_129AB24:         End If
  loc_129AB24:       End If
  loc_129AB29:     Else
  loc_129AB87:       If CBool((InStr(1, CVar(arg_C), ".", 0) > CVar(arg_14)) And (Me.SelStart < InStr(1, CVar(arg_C), ".", 0))) Then
  loc_129AB8E:         arg_10 = 0
  loc_129AB94:       Else
  loc_129AB99:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF58
  loc_129ABC4:         var_128 = (InStr(1, CVar(arg_C), ".", 0) + CVar(arg_18))
  loc_129AC05:         If CBool((Len(arg_10) >= Me.SelStart) And (Me.SelStart >= InStr(1, CVar(arg_C), ".", 0))) Then
  loc_129AC0C:           arg_10 = 0
  loc_129AC0F:         End If
  loc_129AC0F:       End If
  loc_129AC11:     End If
  loc_129AC16:   Else
  loc_129AC20:     If (arg_10 = &H2E) Then
  loc_129AC25:       Exit Sub
  loc_129AC26:     End If
  loc_129AC34:     var_98 = "-"
  loc_129AC4D:     If CBool(InStr(1, CVar(arg_C), ".", 0) <> 0) Then
  loc_129AC55:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF58
  loc_129AC65:       var_D8 = (Len(arg_10) - 1)
  loc_129AC75:       If (InStr(1, CVar(arg_C), ".", 0) >= CVar(arg_14)) Then
  loc_129AC7C:         arg_10 = 0
  loc_129AC7F:       End If
  loc_129AC82:     Else
  loc_129AC89:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF58
  loc_129ACB6:       If CBool((Len(arg_10) >= CVar(arg_14)) And (arg_10 <> &H2D)) Then
  loc_129ACBD:         arg_10 = 0
  loc_129ACC0:       End If
  loc_129ACC0:     End If
  loc_129ACC2:   End If
  loc_129ACC7: Else
  loc_129ACD6:   var_178 = Me.SelStart
  loc_129ACF3:   var_98 = "-"
  loc_129AD47:   var_1A8 = (var_178 + 1)
  loc_129AD6A:   var_218 = (arg_10 = 8) And (InStr(1, CVar(arg_C), CVar(arg_14), 0) <> 0) And (Mid(arg_C, CLng(Me.SelStart), 1) = ".") And (Mid(arg_C, CLng(var_1A8), 1) <> vbNullString)
  loc_129AD71:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDD8
  loc_129AD81:   var_258 = (Len(var_218) - 1)
  loc_129AD8B:   var_278 = (var_258 - CVar(arg_18))
  loc_129ADB7:   If CBool(var_178 And (var_278 >= CVar(arg_14))) Then
  loc_129ADBE:     arg_10 = 0
  loc_129ADC4:   Else
  loc_129ADD3:     var_178 = Me.SelStart
  loc_129ADF0:     var_98 = "-"
  loc_129AE44:     var_1A8 = (var_178 + 1)
  loc_129AE67:     var_218 = (arg_10 = 8) And (InStr(1, CVar(arg_C), CVar(arg_14), 0) = 0) And (Mid(arg_C, CLng(Me.SelStart), 1) = ".") And (Mid(arg_C, CLng(var_1A8), 1) <> vbNullString)
  loc_129AE6E:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDD8
  loc_129AE7F:     var_258 = (Len(var_218) - CVar(arg_18))
  loc_129AEAB:     If CBool(var_178 And (var_258 >= CVar(arg_14))) Then
  loc_129AEB2:       arg_10 = 0
  loc_129AEB5:     End If
  loc_129AEB5:   End If
  loc_129AEB5: End If
  loc_129AEB9: Exit Sub
End Sub

Public Sub Proc_183_23_11A24A0
  'Data Table: 429190
  Dim var_C4 As Variant
  Dim var_94 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  loc_11A2087: If (Proc_183_39_E65720(arg_1C) = &HFF) Then
  loc_11A208A:   Exit Sub
  loc_11A208B: End If
  loc_11A2095: If (CLng(arg_1C) = &HD) Then
  loc_11A20C1:   If CBool().TEXT <> vbNullString) Then
  loc_11A20CC:     var_C4 = |�B.SelectedItem.TEXT
  loc_11A20E7:     ).TEXT = arg_18
  loc_11A20F4:   End If
  loc_11A20FC:   Me.Visible = False
  loc_11A2100:   Exit Sub
  loc_11A2101: End If
  loc_11A2133: If (((((arg_1C = &H10) Or (CLng(arg_1C) = &H26)) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_11A2148:   If (Me.Visible = False) Then
  loc_11A214B:     Exit Sub
  loc_11A214C:   End If
  loc_11A214F: Else
  loc_11A2161:   If (Me.Visible = False) Then
  loc_11A216E:     Me.left = CVar(arg_24)
  loc_11A217C:     Me.top = CVar(arg_28)
  loc_11A218A:     Me.width = CVar(arg_2C)
  loc_11A21A2:     If (IsMissing(arg_30) Or (arg_30 = 0)) Then
  loc_11A21C0:       Me.height = (|�B.ListItems.Count * 270)
  loc_11A21CE:     Else
  loc_11A21D8:       Me.height = CVar(arg_30)
  loc_11A21DC:     End If
  loc_11A21E5:     |�B.left = 0
  loc_11A21F2:     |�B.top = 0
  loc_11A2200:     |�B.width = CVar(arg_2C)
  loc_11A2218:     If (IsMissing(arg_30) Or (arg_30 = 0)) Then
  loc_11A2236:       |�B.height = (|�B.ListItems.Count * 270)
  loc_11A2244:     Else
  loc_11A224E:       |�B.height = CVar(arg_30)
  loc_11A2252:     End If
  loc_11A2255:     var_E4 = CVar(arg_2C) 'Integer
  loc_11A226A:     |�B.ColumnHeaders.width = 1
  loc_11A227B:     |�B.Tag = CVar(arg_18)
  loc_11A2286:     Me.Visible = True
  loc_11A228A:     var_94 = 0
  loc_11A2293:     Call Me.ZOrder
  loc_11A2299:   End If
  loc_11A2299: End If
  loc_11A22AA: If (Me.Visible = True) Then
  loc_11A22D8:   If ((((CLng(arg_1C) = &H26) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_11A22E5:     |�B.Tag = CVar(arg_18)
  loc_11A231E:     If CBool((CLng(arg_1C) = &H26) And (|�B.SelectedItem.index > 1)) Then
  loc_11A2321:       var_E4 = True
  loc_11A2338:       var_D4 = (|�B.SelectedItem.index - 1)
  loc_11A2348:       |�B.ListItems.Selected = (|�B.SelectedItem.index > 1)
  loc_11A235D:       var_C4 = |�B.SelectedItem.TEXT
  loc_11A2378:       ).TEXT = arg_18
  loc_11A2388:     Else
  loc_11A23C9:       If CBool((CLng(arg_1C) = &H28) And (|�B.SelectedItem.index < |�B.ListItems.Count)) Then
  loc_11A23CC:         var_E4 = True
  loc_11A23E3:         var_D4 = (|�B.SelectedItem.index + 1)
  loc_11A23F3:         |�B.ListItems.Selected = |�B.SelectedItem.index
  loc_11A240A:         var_C4 = |�B.SelectedItem.TEXT
  loc_11A2425:         ).TEXT = arg_18
  loc_11A2435:       Else
  loc_11A246A:         If CBool((CLng(arg_1C) = &H28) And (|�B.ListItems.Count = 1)) Then
  loc_11A2475:           var_C4 = |�B.SelectedItem.TEXT
  loc_11A2490:           ).TEXT = arg_18
  loc_11A249D:         End If
  loc_11A249D:       End If
  loc_11A249D:     End If
  loc_11A249D:   End If
  loc_11A249D: End If
  loc_11A249D: Exit Sub
End Sub

Public Sub Proc_183_24_1044608
  'Data Table: 429190
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim var_CC As Variant
  Dim var_DC As Variant
  loc_10443AC: On Error Goto loc_10445A3
  loc_10443CC: If (Me.TopCtrl1.TopText2 = "Browse") Then
  loc_10443CF:   Exit Sub
  loc_10443D0: End If
  loc_10443D9: |�B.CellBackColor = "16777215"
  loc_10443E6: var_88 = CInt(|�B.Row)
  loc_10443F5: var_8A = CInt(|�B.Col)
  loc_1044408: var_BC = (|�B.CellHeight - 10)
  loc_1044421: ).height = arg_18
  loc_1044439: var_BC = (|�B.CellWidth - 10)
  loc_1044452: ).width = arg_18
  loc_104446D: var_CC = (|�B.CellLeft + |�B.left)
  loc_1044486: ).left = arg_18
  loc_10444A5: var_CC = (|�B.CellTop + |�B.top)
  loc_10444BE: ).top = arg_18
  loc_10444DE: var_9C = |�B.TextMatrix
  loc_10444FB: ).TEXT = arg_18
  loc_1044506: var_DC = True
  loc_104451E: ).Visible = arg_18
  loc_1044525: var_DC = 0
  loc_1044541: Call ).ZOrder
  loc_104455B: var_9C = |�B.TextMatrix
  loc_1044578: ).Tag = arg_18
  loc_1044599: Call ).SetFocus
  loc_10445A2: Exit Sub
  loc_10445A3: ' Referenced from: 10443AC
  loc_10445AB: Set var_110 = Err()
  loc_10445B1: Call 0.Method_arg_1C (var_114, arg_18, var_9C, var_8A, var_88, arg_18, var_DC, var_DC)
  loc_10445C2: If (var_114 <> 0) Then
  loc_10445CD:   Set var_110 = Err()
  loc_10445D3:   Call 0.Method_arg_2C (var_118, var_9C, var_8A, var_88)
  loc_10445F4:   MsgBox(CVar(var_118), &H40, "Validation", var_CC, var_FC)
  loc_1044607: End If
  loc_1044607: Exit Sub
End Sub

Public Sub Proc_183_25_11BD654
  'Data Table: 429190
  Dim var_A8 As Variant
  Dim var_CA As Integer
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_12C As Variant
  loc_11BD223: If ((((CLng(arg_18) = &H27) Or (CLng(arg_18) = &H25)) Or (CLng(arg_18) = &H26)) Or (CLng(arg_18) = &H28)) Then
  loc_11BD22C:   If (arg_1C = &HFF) Then
  loc_11BD22F:     var_A8 = False
  loc_11BD248:     ).Visible = arg_14
  loc_11BD252:     var_CA = arg_18
  loc_11BD25F:     If (var_CA = CInt(&H26)) Then
  loc_11BD275:       If (Me.Row > 1) Then
  loc_11BD285:         var_DC = (Me.Row - 1)
  loc_11BD28D:         Me.Row = var_DC
  loc_11BD297:         Call Me.SetFocus
  loc_11BD2A0:       Else
  loc_11BD2A3:         Call Me.SetFocus
  loc_11BD2A9:       End If
  loc_11BD2AC:     Else
  loc_11BD2B6:       If (var_CA = CInt(&H28)) Then
  loc_11BD2CE:         var_DC = (Me.rows - 1)
  loc_11BD2DB:         If (Me.Row < var_DC) Then
  loc_11BD2EB:           var_DC = (Me.Row + 1)
  loc_11BD2F3:           Me.Row = var_DC
  loc_11BD301:           Call Me.SetFocus
  loc_11BD30A:         Else
  loc_11BD30D:           Call Me.SetFocus
  loc_11BD313:         End If
  loc_11BD316:       Else
  loc_11BD320:         If (var_CA = CInt(&H25)) Then
  loc_11BD336:           If (Me.Col > 1) Then
  loc_11BD346:             var_DC = (Me.Col - 1)
  loc_11BD34E:             Me.Col = var_DC
  loc_11BD358:             Call Me.SetFocus
  loc_11BD361:           Else
  loc_11BD364:             Call Me.SetFocus
  loc_11BD36A:           End If
  loc_11BD36D:         Else
  loc_11BD377:           If (var_CA = CInt(&H27)) Then
  loc_11BD390:             If (Me.Col < CVar(arg_20)) Then
  loc_11BD3A0:               var_DC = (Me.Col + 1)
  loc_11BD3A8:               Me.Col = var_DC
  loc_11BD3B6:               Call Me.SetFocus
  loc_11BD3BF:             Else
  loc_11BD3C2:               Call Me.SetFocus
  loc_11BD3C8:             End If
  loc_11BD3C8:           End If
  loc_11BD3C8:         End If
  loc_11BD3C8:       End If
  loc_11BD3C8:     End If
  loc_11BD3C8:   End If
  loc_11BD3CB: Else
  loc_11BD3D5:   If (CLng(arg_18) = &HD) Then
  loc_11BD3EF:     If (IsMissing(arg_28) Or (CInt(arg_28) = 0)) Then
  loc_11BD429:       var_FC = (Me.Col + IIf(IsMissing(arg_24), 0, arg_24))
  loc_11BD445:       If (var_FC < CVar(arg_20)) Then
  loc_11BD465:         var_DC = (Me.Col + 1)
  loc_11BD488:         var_12C = (IIf(IsMissing(arg_24), 0, arg_24) + IIf(IsMissing(arg_24), 0, arg_24))
  loc_11BD490:         Me.Col = var_12C
  loc_11BD4A6:         Call Me.SetFocus
  loc_11BD4AF:       Else
  loc_11BD4D2:         If (IsMissing(arg_2C) Or (Not(IsMissing(arg_2C)) And (arg_2C = 0))) Then
  loc_11BD4EA:           var_DC = (Me.rows - 1)
  loc_11BD4F7:           If (Me.Row = IIf(IsMissing(arg_24), 0, arg_24)) Then
  loc_11BD4FD:             var_C8 = Me.rows
  loc_11BD506:             Call Me.AddItem
  loc_11BD50F:           End If
  loc_11BD512:         Else
  loc_11BD527:           var_DC = (Me.rows - 1)
  loc_11BD534:           If (Me.Row = IIf(IsMissing(arg_24), 0, arg_24)) Then
  loc_11BD53A:             Call Me.AddItem
  loc_11BD540:           End If
  loc_11BD540:         End If
  loc_11BD54D:         var_DC = (Me.Row + 1)
  loc_11BD555:         Me.Row = IIf(IsMissing(arg_24), 0, arg_24)
  loc_11BD574:         var_DC = (Me.Cols - 1)
  loc_11BD57D:         For var_144 = CByte(1) To CByte(IIf(IsMissing(arg_24), 0, arg_24)):     var_86 = var_144 'Byte
  loc_11BD5A0:           If CBool(Me.ColWidth <> 0) Then
  loc_11BD5A3:             GoTo loc_11BD5AF
  loc_11BD5A6:           End If
  loc_11BD5A9:         Next var_144 'Byte
  loc_11BD5AF:         ' Referenced from:     11BD5A3
  loc_11BD5BB:         Me.Col = CVar(var_86)
  loc_11BD5C2:         Call Me.SetFocus
  loc_11BD5C8:       End If
  loc_11BD5CB:     Else
  loc_11BD5E8:       If (Me.ColWidth = 0) Then
  loc_11BD5FF:         var_DC = (Me.Cols - 1)
  loc_11BD608:         For var_148 = arg_28 To CByte(IIf(IsMissing(arg_24), 0, arg_24)):     var_86 = var_148 'Byte
  loc_11BD62B:           If CBool(Me.ColWidth <> 0) Then
  loc_11BD62E:             GoTo loc_11BD63A
  loc_11BD631:           End If
  loc_11BD634:         Next var_148 'Byte
  loc_11BD63A:         ' Referenced from:     11BD62E
  loc_11BD63A:       End If
  loc_11BD646:       Me.Col = CVar(arg_28)
  loc_11BD64D:       Call Me.SetFocus
  loc_11BD653:     End If
  loc_11BD653:   End If
  loc_11BD653: End If
  loc_11BD653: Exit Sub
End Sub

Public Sub Proc_183_26_1158124(arg_C, arg_10) '1158124
  'Data Table: 429190
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_EC As String
  Dim var_8A As Integer
  Dim var_8C As Integer
  Dim var_CC As Variant
  Dim var_DC As Variant
  loc_1157D8D: If (Me.TopCtrl1.TopText2 = "Browse") Then
  loc_1157D90:   Exit Sub
  loc_1157D91: End If
  loc_1157D9B: If (CLng(arg_20) = &HD) Then
  loc_1157DAA:   Proc_183_24_1044608(arg_C, arg_10)
  loc_1157DB2: Else
  loc_1157DBC:   If (CLng(arg_20) = &H2E) Then
  loc_1157DC2:     var_9C = |�B.Row
  loc_1157DCB:     var_BC = |�B.Col
  loc_1157DD1:     var_EC = vbNullString
  loc_1157DDA:     LateMemCallSt
  loc_1157DEA:   Else
  loc_1157E2F:     If ((((((((arg_20 >= &H61) And (arg_20 <= &H7A)) Or ((arg_20 >= &H30) And (arg_20 <= &H39))) Or ((arg_20 >= &H41) And (arg_20 <= &H5A))) Or (arg_20 = &H2B)) Or (arg_20 = &H2D)) Or (arg_20 = &H2E)) Or (arg_20 = 8)) Then
  loc_1157E3B:       |�B.CellBackColor = "16777215"
  loc_1157E48:       var_8A = CInt(|�B.Row)
  loc_1157E57:       var_8C = CInt(|�B.Col)
  loc_1157E6A:       var_BC = (|�B.CellHeight - 10)
  loc_1157E83:       ).height = arg_18
  loc_1157E9B:       var_BC = (|�B.CellWidth - 10)
  loc_1157EB4:       ).width = arg_18
  loc_1157ECF:       var_CC = (|�B.CellLeft + |�B.left)
  loc_1157EE8:       ).left = arg_18
  loc_1157F07:       var_CC = (|�B.CellTop + |�B.top)
  loc_1157F20:       ).top = arg_18
  loc_1157F2F:       var_DC = vbNullString
  loc_1157F49:       ).TEXT = arg_18
  loc_1157F50:       var_DC = True
  loc_1157F68:       ).Visible = arg_18
  loc_1157F6F:       var_DC = 0
  loc_1157F8B:       Call ).ZOrder
  loc_1157F97:       var_9C = |�B.Col
  loc_1157FB1:       ).Tag = arg_18
  loc_1157FD2:       Call ).SetFocus
  loc_1157FE1:       If (arg_1C = &HFF) Then
  loc_1158006:         If (((((arg_20 >= &H30) And (arg_20 <= &H39)) Or (arg_20 = &H2B)) Or (arg_20 = &H2D)) Or (arg_20 = &H2E)) Then
  loc_1158010:           var_9C = Chr(CLng(arg_20))
  loc_115802D:           ).TEXT = arg_18
  loc_1158038:         End If
  loc_115803B:       Else
  loc_1158045:         If (CLng(arg_20) = 8) Then
  loc_1158048:           var_DC = vbNullString
  loc_1158062:           ).TEXT = arg_18
  loc_115806C:         Else
  loc_1158073:           var_9C = Chr(CLng(arg_20))
  loc_1158090:           ).TEXT = arg_18
  loc_115809B:         End If
  loc_115809B:       End If
  loc_115809B:       var_DC = 1
  loc_11580B5:       ).SelStart = arg_18
  loc_11580BC:     End If
  loc_11580BC:   End If
  loc_11580BC: End If
  loc_11580BC: Exit Sub
  loc_11580C5: Set var_110 = Err()
  loc_11580CB: Call 0.Method_arg_1C (var_114, var_DC, var_9C, var_DC, var_9C, arg_18, var_9C, arg_18)
  loc_11580DC: If (var_114 <> 0) Then
  loc_11580E7:   Set var_110 = Err()
  loc_11580ED:   Call 0.Method_arg_2C (var_118, var_DC, var_DC, var_DC)
  loc_115810E:   MsgBox(CVar(var_118), &H40, "Validation", var_CC, var_10C)
  loc_1158121: End If
  loc_1158121: Exit Sub
End Sub

Public Sub Proc_183_27_E22608
  'Data Table: 429190
  Dim var_94 As Long
  loc_E225E4: var_94 = -2147483643
  loc_E225F0: Me.BackColor = var_94
  loc_E22600: Me.ForeColor = &HC00000
  loc_E22604: Exit Sub
End Sub

Public Sub Proc_183_28_E20B20
  'Data Table: 429190
  loc_E20B08: Me.BackColor = &HE0E0E0
  loc_E20B18: Me.ForeColor = &HC00000
  loc_E20B1C: Exit Sub
End Sub

Public Sub Proc_183_29_E52C04(arg_C) 'E52C04
  'Data Table: 429190
  Dim arg_C As Integer
  loc_E52BD3: If (arg_C = 144) Then
  loc_E52BD6:   Exit Sub
  loc_E52BD7: End If
  loc_E52BE4: If ((arg_C = &HD) Or (arg_C = &H28)) Then
  loc_E52BF5:   Proc_303_0_FB9B68("	")
  loc_E52BFF:   arg_C = 0
  loc_E52C02: End If
  loc_E52C02: Exit Sub
End Sub

Public Sub Proc_183_30_E53180(arg_C, arg_10) 'E53180
  'Data Table: 429190
  Dim arg_C As Integer
  Dim arg_10 As Integer
  loc_E5314F: If (arg_C = 144) Then
  loc_E53152:   Exit Sub
  loc_E53153: End If
  loc_E53159: If (arg_C = &H26) Then
  loc_E53164:   var_88 = "+{Tab}"
  loc_E5316A:   Proc_303_0_FB9B68(var_88)
  loc_E53174:   arg_C = 0
  loc_E53179:   arg_10 = 0
  loc_E5317C: End If
  loc_E5317C: Exit Sub
End Sub

Public Sub Proc_183_31_100809C
  'Data Table: 429190
  Dim var_98 As Variant
  Dim var_CA As Integer
  Dim Me As Recordset15
  loc_1007E8B: If (Proc_183_39_E65720(arg_1C) = &HFF) Then
  loc_1007E8E:   Exit Sub
  loc_1007E8F: End If
  loc_1007E99: If (CLng(arg_1C) = &HD) Then
  loc_1007EA4:   Me.Visible = False
  loc_1007EA8:   Exit Sub
  loc_1007EA9: End If
  loc_1007EDB: If (((((arg_1C = &H10) Or (CLng(arg_1C) = &H26)) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_1007EF0:   If (Me.Visible = False) Then
  loc_1007EF3:     Exit Sub
  loc_1007EF4:   End If
  loc_1007EF7: Else
  loc_1007F09:   If (Me.Visible = False) Then
  loc_1007F13:     Me.Visible = True
  loc_1007F17:     var_98 = 0
  loc_1007F20:     Call Me.ZOrder
  loc_1007F26:   End If
  loc_1007F26: End If
  loc_1007F37: If (Me.Visible = True) Then
  loc_1007F65:   If ((((CLng(arg_1C) = &H26) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_1007F6B:     var_CA = arg_1C
  loc_1007F78:     If (var_CA = CInt(&H26)) Then
  loc_1007F8F:       If (Me.Recordset15.RecordCount > 0) Then
  loc_1007FA3:         If (Me.Recordset15.BOF = 0) Then
  loc_1007FA9:           Me.Recordset15.MovePrevious
  loc_1007FB1:         Else
  loc_1007FB4:           Me.MoveFirst
  loc_1007FB9:         End If
  loc_1007FB9:       End If
  loc_1007FBC:     Else
  loc_1007FC6:       If (var_CA = CInt(&H28)) Then
  loc_1007FDD:         If (Me.Recordset15.RecordCount > 0) Then
  loc_1007FF1:           If (Me.Recordset15.EOF = 0) Then
  loc_1007FF7:             Me.Recordset15.MoveNext
  loc_1007FFF:           Else
  loc_1008002:             Me.MoveLast
  loc_1008007:           End If
  loc_1008007:         End If
  loc_100800A:       Else
  loc_1008014:         If (var_CA = CInt(&H21)) Then
  loc_100801E:           For var_D6 = 1 To &HA:     var_86 = var_D6 'Integer
  loc_1008038:             If (Me.Recordset15.AbsolutePosition > 1) Then
  loc_100803E:               Me.Recordset15.MovePrevious
  loc_1008043:             End If
  loc_1008046:           Next var_D6 'Integer
  loc_100804E:         Else
  loc_1008058:           If (var_CA = CInt(&H22)) Then
  loc_1008062:             For var_DA = 1 To &HA:       var_86 = var_DA 'Integer
  loc_1008085:               If (Me.Recordset15.AbsolutePosition < Me.Recordset15.RecordCount) Then
  loc_100808B:                 Me.Recordset15.MoveNext
  loc_1008090:               End If
  loc_1008093:             Next var_DA 'Integer
  loc_1008098:           End If
  loc_1008098:         End If
  loc_1008098:       End If
  loc_1008098:     End If
  loc_1008098:   End If
  loc_1008098:   Exit Sub
  loc_1008099: End If
  loc_1008099: Exit Sub
End Sub

Public Sub Proc_183_32_FE7F70
  'Data Table: 429190
  Dim Me As CommandButton
  Dim var_C0 As Variant
  loc_FE7DB8: If (Me.Recordset15.RecordCount <= 0) Then
  loc_FE7DBB:   Exit Sub
  loc_FE7DBC: End If
  loc_FE7E0B: If ((((((((arg_18 = &HD) Or (CLng(arg_18) = &H27)) Or (CLng(arg_18) = &H25)) Or (arg_18 = &H10)) Or (CLng(arg_18) = &H26)) Or (CLng(arg_18) = &H28)) Or (CLng(arg_18) = &H21)) Or (CLng(arg_18) = &H22)) Then
  loc_FE7E0E:   Exit Sub
  loc_FE7E0F: End If
  loc_FE7E23: var_C0 = ).SelStart
  loc_FE7E4A: VarLateMemLdRfVar
  loc_FE7E6E: var_88 = CStr(Mid(var_C0, 1, CByte(var_C0)))
  loc_FE7E7D: Me..cmdTransferCharge.MoveFirst
  loc_FE7EBA: If (Me.Recordset15.Fields.Item(CVar(arg_1C)).Type = 3) Then
  loc_FE7EFD:   Me.Recordset15.Find vbNullString & arg_1C & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_FE7F12: Else
  loc_FE7F42:   Me.Recordset15.Find vbNullString & arg_1C & " >='" & var_88 & "'", 0, 1
  loc_FE7F52: End If
  loc_FE7F63: If (Me.Recordset15.EOF = &HFF) Then
  loc_FE7F69:   Me.Recordset15.MoveFirst
  loc_FE7F6E: End If
  loc_FE7F6E: Exit Sub
End Sub

Public Sub Proc_183_33_12A1B28
  'Data Table: 429190
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_114 As Variant
  loc_12A1540: If (Me.Recordset15.RecordCount <= 0) Then
  loc_12A1543:   var_B0 = vbNullString
  loc_12A155D:   ).TEXT = arg_14
  loc_12A1564:   Exit Sub
  loc_12A1565: End If
  loc_12A159E: If ((((((arg_1C = &HD) Or (arg_1C = &H10)) Or (CLng(arg_1C) = &H26)) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_12A15A1:   Exit Sub
  loc_12A15A2: End If
  loc_12A15BE: var_86 = CByte().SelStart) 'Byte
  loc_12A15E4: var_8C = CStr().TEXT)
  loc_12A15F1: Me.Recordset15.MoveFirst
  loc_12A162E: If (Me.Recordset15.Fields.Item(CVar(arg_20)).Type = 3) Then
  loc_12A1671:   Me.Recordset15.Find vbNullString & arg_20 & " >=" & CStr(Val(var_8C)) & vbNullString, 0, 1
  loc_12A1697:   If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_12A16AF:     var_D0 = Left(var_8C, CLng((CInt(var_86) - 1)))
  loc_12A16CC:     var_E0 = Right(var_8C, (Len(var_8C) - CLng(var_86)))
  loc_12A16D4:     var_114 = (var_D0 + ).TEXT)
  loc_12A16D9:     var_8C = CStr(var_114)
  loc_12A16E8:     Me.Recordset15.MoveFirst
  loc_12A172D:     Me.Recordset15.Find vbNullString & arg_20 & " >=" & CStr(Val(var_8C)) & vbNullString, 0, 1
  loc_12A1742:     var_B0 = CVar(var_8C) 'String
  loc_12A175A:     ).TEXT = arg_14
  loc_12A1764:   Else
  loc_12A17DB:     If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_20)).Value, 1, CVar(Len(var_8C)))) <> Ucase(var_8C)) Then
  loc_12A17F3:       var_D0 = Left(var_8C, CLng((CInt(var_86) - 1)))
  loc_12A1810:       var_E0 = Right(var_8C, (Len(var_8C) - CLng(var_86)))
  loc_12A1818:       var_114 = (Me.Recordset15.Fields.Item(CVar(arg_20)).Value + CVar(Len(var_8C)))
  loc_12A181D:       var_8C = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_20)).Value, 1, CVar(Len(var_8C))))
  loc_12A182C:       Me.Recordset15.MoveFirst
  loc_12A1871:       Me.Recordset15.Find vbNullString & arg_20 & " >=" & CStr(Val(var_8C)) & vbNullString, 0, 1
  loc_12A1886:       var_B0 = CVar(var_8C) 'String
  loc_12A189E:       ).TEXT = arg_14
  loc_12A18A5:     End If
  loc_12A18A5:   End If
  loc_12A18A8: Else
  loc_12A18D8:   Me.Recordset15.Find vbNullString & arg_20 & " >='" & var_8C & "'", 0, 1
  loc_12A18FC:   If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_12A1914:     var_D0 = Left(var_8C, CLng((CInt(var_86) - 1)))
  loc_12A1931:     var_E0 = Right(var_8C, (Len(var_8C) - CLng(var_86)))
  loc_12A1939:     var_114 = (Me.Recordset15.Fields.Item(CVar(arg_20)).Value + CVar(Len(var_8C)))
  loc_12A193E:     var_8C = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_20)).Value, 1, CVar(Len(var_8C))))
  loc_12A194D:     Me.Recordset15.MoveFirst
  loc_12A1982:     Me.Recordset15.Find vbNullString & arg_20 & " >='" & var_8C & "'", 0, 1
  loc_12A1995:     var_B0 = CVar(var_8C) 'String
  loc_12A19AD:     ).TEXT = arg_14
  loc_12A19B7:   Else
  loc_12A1A2E:     If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_20)).Value, 1, CVar(Len(var_8C)))) <> Ucase(var_8C)) Then
  loc_12A1A46:       var_D0 = Left(var_8C, CLng((CInt(var_86) - 1)))
  loc_12A1A63:       var_E0 = Right(var_8C, (Len(var_8C) - CLng(var_86)))
  loc_12A1A6B:       var_114 = (Me.Recordset15.Fields.Item(CVar(arg_20)).Value + CVar(Len(var_8C)))
  loc_12A1A70:       var_8C = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_20)).Value, 1, CVar(Len(var_8C))))
  loc_12A1A7F:       Me.Recordset15.MoveFirst
  loc_12A1AB4:       Me.Recordset15.Find vbNullString & arg_20 & " >='" & var_8C & "'", 0, 1
  loc_12A1AC7:       var_B0 = CVar(var_8C) 'String
  loc_12A1ADF:       ).TEXT = arg_14
  loc_12A1AE6:     End If
  loc_12A1AE6:   End If
  loc_12A1AE6: End If
  loc_12A1B00: var_114 = Len().TEXT)
  loc_12A1B19: ).SelStart = arg_14
  loc_12A1B26: Exit Sub
End Sub

Public Sub Proc_183_34_1305540
  'Data Table: 429190
  Dim var_A0 As Variant
  Dim arg_24 As Integer
  Dim var_D0 As Variant
  Dim var_C0 As String
  Dim var_E8 As Fields15
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim arg_1C As Integer
  Dim var_10E As Integer
  Dim var_10C As Variant
  Dim var_124 As Variant
  Dim Me As Recordset15
  loc_1304E20: On Error Goto loc_13054DA
  loc_1304E37: If (Me.Recordset15.RecordCount > 0) Then
  loc_1304E45:   If (Proc_183_39_E65720(arg_1C) = &HFF) Then
  loc_1304E48:     Exit Sub
  loc_1304E49:   End If
  loc_1304E56:   If IsMissing(arg_24) Then
  loc_1304E5B:     arg_24 = 1
  loc_1304E5E:   End If
  loc_1304E68:   If (CLng(arg_1C) = &HD) Then
  loc_1304E94:     If CBool().TEXT <> vbNullString) Then
  loc_1304EBA:       If ((Me.Recordset15.BOF = 0) And (Me.Recordset15.EOF = 0)) Then
  loc_1304EC3:         If (arg_20 = &HFF) Then
  loc_1304EE9:           var_B0 = Me.Recordset15.Fields.Item(CVar(arg_24)).Value
  loc_1304F06:           ).TEXT = arg_14
  loc_1304F1B:         Else
  loc_1304F3E:           var_B0 = Me.Recordset15.Fields.Item(CVar(arg_24)).Value
  loc_1304F5B:           ).TEXT = arg_14
  loc_1304F8F:           var_B0 = Me.Recordset15.Fields.Item(0).Value
  loc_1304FAC:           ).Tag = arg_14
  loc_1304FBE:         End If
  loc_1304FBE:       End If
  loc_1304FBE:     End If
  loc_1304FC6:     Me.Visible = False
  loc_1304FCA:     Exit Sub
  loc_1304FCB:   End If
  loc_1304FFD:   If (((((arg_1C = &H10) Or (CLng(arg_1C) = &H26)) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_1305012:     If (Me.Visible = False) Then
  loc_1305015:       Exit Sub
  loc_1305016:     End If
  loc_1305019:   Else
  loc_130504F:     If (((((CLng(arg_1C) = 8) Or (CLng(arg_1C) = &H25)) Or (CLng(arg_1C) = &H27)) Or (CLng(arg_1C) = &H24)) Or (CLng(arg_1C) = &H23)) Then
  loc_130506C:       var_E0 = Len().TEXT)
  loc_1305085:       ).SelStart = arg_14
  loc_13050A4:       If (Me.Visible = False) Then
  loc_13050AE:         Me.Visible = True
  loc_13050B2:         var_A0 = 0
  loc_13050BB:         Call Me.ZOrder
  loc_13050C1:       End If
  loc_13050CB:       If (CLng(arg_1C) <> 8) Then
  loc_13050D0:         arg_1C = 0
  loc_13050D3:       End If
  loc_13050D6:     Else
  loc_13050E0:       If (CLng(arg_1C) = &H2E) Then
  loc_13050E3:         var_C0 = vbNullString
  loc_13050FD:         ).TEXT = arg_14
  loc_1305107:       Else
  loc_1305119:         If (Me.Visible = False) Then
  loc_1305136:           var_E0 = Len().TEXT)
  loc_130514F:           ).SelStart = arg_14
  loc_1305163:           Me.Visible = True
  loc_1305167:           var_A0 = 0
  loc_1305170:           Call Me.ZOrder
  loc_1305176:         End If
  loc_1305176:       End If
  loc_1305176:     End If
  loc_1305176:   End If
  loc_1305187:   If (Me.Visible = True) Then
  loc_130519E:     If (Me.Recordset15.RecordCount = 0) Then
  loc_13051A1:       Exit Sub
  loc_13051A2:     End If
  loc_13051CD:     If ((((CLng(arg_1C) = &H26) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_13051D3:       var_10E = arg_1C
  loc_13051E0:       If (var_10E = CInt(&H26)) Then
  loc_13051F7:         If (Me.Recordset15.AbsolutePosition > 1) Then
  loc_13051FD:           Me.Recordset15.MovePrevious
  loc_1305205:         Else
  loc_1305207:           arg_1C = 0
  loc_130520A:         End If
  loc_130520D:       Else
  loc_1305217:         If (var_10E = CInt(&H28)) Then
  loc_1305237:           If (Me.Recordset15.AbsolutePosition < Me.Recordset15.RecordCount) Then
  loc_130524B:             If (Me.Recordset15.EOF = 0) Then
  loc_1305251:               Me.Recordset15.MoveNext
  loc_1305256:             End If
  loc_1305256:           End If
  loc_1305259:         Else
  loc_1305263:           If (var_10E = CInt(&H21)) Then
  loc_1305288:             var_124 = (Int((Me.height / Me.RowHeight)) - 2)
  loc_1305294:             For var_128 = 1 To CInt(var_124):     var_86 = var_128 'Integer
  loc_13052AE:               If (Me.Recordset15.AbsolutePosition > 1) Then
  loc_13052B4:                 Me.Recordset15.MovePrevious
  loc_13052B9:               End If
  loc_13052BC:             Next var_128 'Integer
  loc_13052C4:           Else
  loc_13052CE:             If (var_10E = CInt(&H22)) Then
  loc_13052E6:               var_E0 = (Me.height / Me.RowHeight)
  loc_13052EA:               var_10C = Int(var_E0)
  loc_13052F3:               var_124 = (var_10C - 2)
  loc_13052FF:               For var_12C = 1 To CInt(var_124):       var_86 = var_12C 'Integer
  loc_130530B:                 var_90 = Me.Recordset15.AbsolutePosition
  loc_1305334:                 If ((var_90 < Me.Recordset15.RecordCount) And (Me.Recordset15.EOF = 0)) Then
  loc_130533A:                   Me.Recordset15.MoveNext
  loc_130533F:                 End If
  loc_1305342:               Next var_12C 'Integer
  loc_1305347:             End If
  loc_1305347:           End If
  loc_1305347:         End If
  loc_1305347:       End If
  loc_130536A:       If ((Me.BOF = 0) And (Me.Recordset15.EOF = 0)) Then
  loc_1305373:         If (arg_20 = &HFF) Then
  loc_1305399:           var_B0 = Me.Recordset15.Fields.Item(CVar(arg_24)).Value
  loc_13053B6:           ).TEXT = arg_14
  loc_13053CB:         Else
  loc_13053EE:           var_B0 = Me.Recordset15.Fields.Item(CVar(arg_24)).Value
  loc_130540B:           ).TEXT = arg_14
  loc_130543F:           var_B0 = Me.Recordset15.Fields.Item(0).Value
  loc_130545C:           ).Tag = arg_14
  loc_130546E:         End If
  loc_1305482:         var_D0 = Len())
  loc_130549B:         ).SelStart = arg_14
  loc_13054A6:       End If
  loc_13054A6:     End If
  loc_13054A6:     Exit Sub
  loc_13054A7:   End If
  loc_13054AA: Else
  loc_13054AD:   var_B0 = Me.Visible
  loc_13054BC:   If (var_B0 = False) Then
  loc_13054C6:     Me.Visible = True
  loc_13054CA:     var_A0 = 0
  loc_13054D3:     Call Me.ZOrder
  loc_13054D9:   End If
  loc_13054D9: End If
  loc_13054D9: Exit Sub
  loc_13054DA: ' Referenced from: 1304E20
  loc_13054E2: Set var_E8 = Err()
  loc_13054E8: Call 0.Method_arg_1C (var_90, var_A0, var_D0, arg_14)
  loc_13054F9: If (var_90 <> 0) Then
  loc_1305504:   Set var_E8 = Err()
  loc_130550A:   Call 0.Method_arg_2C (var_130, var_B0)
  loc_130552B:   MsgBox(CVar(var_130), &H40, "Validation", var_E0, var_10C)
  loc_130553E: End If
  loc_130553E: Exit Sub
End Sub

Public Sub Proc_183_35_F29A04
  'Data Table: 429190
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_AC As Variant
  Dim var_11C As Integer
  Dim Me As ListItem
  loc_F29931: If ((((((arg_18 = &HD) Or (arg_18 = &H10)) Or (CLng(arg_18) = &H26)) Or (CLng(arg_18) = &H28)) Or (CLng(arg_18) = &H21)) Or (CLng(arg_18) = &H22)) Then
  loc_F29934:   Exit Sub
  loc_F29935: End If
  loc_F29949: var_BC = ).SelStart
  loc_F2996E: VarLateMemLdRfVar
  loc_F29992: var_88 = CStr(Mid(var_BC, 1, CInt(var_BC)))
  loc_F299AF: If (Me.Visible = True) Then
  loc_F299B9:   var_CC = 0
  loc_F299C3:   var_11C = 1
  loc_F299CC:   var_AC = Me.FindItem
  loc_F299D8:   IStAdFunc
  loc_F299E6:   If (arg_1C Is Nothing) Then
  loc_F299E9:     Exit Sub
  loc_F299ED:   Else
  loc_F299F3:     Me.EnsureVisible var_12E
  loc_F299FD:     Me.ListItem.Selected = True
  loc_F29A02:   End If
  loc_F29A02: End If
  loc_F29A02: Exit Sub
End Sub

Public Sub Proc_183_36_114886C
  'Data Table: 429190
  Dim var_C4 As Variant
  Dim var_94 As Variant
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  loc_11484D3: If (arg_1C = 144) Then
  loc_11484D6:   Exit Sub
  loc_11484D7: End If
  loc_11484E1: If (CLng(arg_1C) = &HD) Then
  loc_114850D:   If CBool().TEXT <> vbNullString) Then
  loc_1148518:     var_C4 = |�B.SelectedItem.TEXT
  loc_1148533:     ).TEXT = arg_18
  loc_1148540:   End If
  loc_1148548:   Me.Visible = False
  loc_114854C:   Exit Sub
  loc_114854D: End If
  loc_114857F: If (((((arg_1C = &H10) Or (CLng(arg_1C) = &H26)) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_1148594:   If (Me.Visible = False) Then
  loc_1148597:     Exit Sub
  loc_1148598:   End If
  loc_114859B: Else
  loc_11485AD:   If (Me.Visible = False) Then
  loc_11485BA:     Me.left = CVar(arg_24)
  loc_11485C8:     Me.top = CVar(arg_28)
  loc_11485D6:     Me.width = CVar(arg_2C)
  loc_11485E4:     Me.height = CVar(arg_30)
  loc_11485F1:     |�B.left = 0
  loc_11485FE:     |�B.top = 0
  loc_114860C:     |�B.width = CVar(arg_2C)
  loc_114861A:     |�B.height = CVar(arg_30)
  loc_1148621:     var_E4 = CVar(arg_2C) 'Integer
  loc_1148636:     |�B.ColumnHeaders.width = 1
  loc_1148647:     |�B.Tag = CVar(arg_18)
  loc_1148652:     Me.Visible = True
  loc_1148656:     var_94 = 0
  loc_114865F:     Call Me.ZOrder
  loc_1148665:   End If
  loc_1148665: End If
  loc_1148676: If (Me.Visible = True) Then
  loc_11486A4:   If ((((CLng(arg_1C) = &H26) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_11486B1:     |�B.Tag = CVar(arg_18)
  loc_11486EA:     If CBool((CLng(arg_1C) = &H26) And (|�B.SelectedItem.index > 1)) Then
  loc_11486ED:       var_E4 = True
  loc_1148704:       var_D4 = (|�B.SelectedItem.index - 1)
  loc_1148714:       |�B.ListItems.Selected = (|�B.SelectedItem.index > 1)
  loc_1148729:       var_C4 = |�B.SelectedItem.TEXT
  loc_1148744:       ).TEXT = arg_18
  loc_1148754:     Else
  loc_1148795:       If CBool((CLng(arg_1C) = &H28) And (|�B.SelectedItem.index < |�B.ListItems.Count)) Then
  loc_1148798:         var_E4 = True
  loc_11487AF:         var_D4 = (|�B.SelectedItem.index + 1)
  loc_11487BF:         |�B.ListItems.Selected = |�B.SelectedItem.index
  loc_11487D6:         var_C4 = |�B.SelectedItem.TEXT
  loc_11487F1:         ).TEXT = arg_18
  loc_1148801:       Else
  loc_1148836:         If CBool((CLng(arg_1C) = &H28) And (|�B.ListItems.Count = 1)) Then
  loc_1148841:           var_C4 = |�B.SelectedItem.TEXT
  loc_114885C:           ).TEXT = arg_18
  loc_1148869:         End If
  loc_1148869:       End If
  loc_1148869:     End If
  loc_1148869:   End If
  loc_1148869: End If
  loc_1148869: Exit Sub
End Sub

Public Sub Proc_183_37_EFE3E8
  'Data Table: 429190
  Dim var_D4 As Variant
  Dim var_E4 As Integer
  Dim var_134 As Integer
  Dim var_8C As ListItem
  loc_EFE31A: Call Me.ListItems.Clear
  loc_EFE32E: For var_B4 = 0 To (arg_1C - 1): var_8E = var_B4 'Integer
  loc_EFE33A:   var_D4 = CVar((var_8E + 1)) 'Integer
  loc_EFE34C:   VarIndexLdRfVar
  loc_EFE36A:   Set var_8C = Me.ListItems.add
  loc_EFE379: Next var_B4 'Integer
  loc_EFE393: var_E4 = 0
  loc_EFE39D: var_134 = 1
  loc_EFE3B2: Set var_8C = Me.FindItem
  loc_EFE3C3: If (var_8C Is Nothing) Then
  loc_EFE3C6:   Exit Sub
  loc_EFE3CA: Else
  loc_EFE3D0:   var_8C.EnsureVisible var_146
  loc_EFE3DA:   var_8C.Selected = True
  loc_EFE3DF: End If
  loc_EFE3E2: Set var_88 = var_8C 
  loc_EFE3E6: Exit Sub
End Sub

Public Sub Proc_183_38_F89768
  'Data Table: 429190
  Dim Me As Recordset15
  Dim var_134 As String
  Dim var_8C As ListItem
  Dim var_F0 As Integer
  Dim var_144 As Integer
  loc_F89622: Call Me.ListItems.Clear
  loc_F8963F: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F89642:   Exit Sub
  loc_F89643:   ' Referenced from: F896FC
  loc_F89643: End If
  loc_F89649: var_B6 = Me.EOF
  loc_F89652: If Not(var_B6) Then
  loc_F8967F:   var_A0 = Me.Recordset15.Fields.Item("Name").Value
  loc_F896D9:   var_134 = CStr(Me.Recordset15.Fields.Item("code").Value)
  loc_F896E2:   Me.ListItems.add.SubItems = 1
  loc_F896F7:   Me.Recordset15.MoveNext
  loc_F896FC:   GoTo loc_F89643
  loc_F896FF: End If
  loc_F89714: var_F0 = 0
  loc_F8971E: var_144 = 1
  loc_F89733: Set var_8C = Me.FindItem
  loc_F89744: If (var_8C Is Nothing) Then
  loc_F89747:   Exit Sub
  loc_F8974B: Else
  loc_F89751:   var_8C.EnsureVisible var_B6
  loc_F8975B:   var_8C.Selected = True
  loc_F89760: End If
  loc_F89763: Set var_88 = var_8C 
  loc_F89767: Exit Sub
End Sub

Public Sub Proc_183_39_E65720(arg_C) 'E65720
  'Data Table: 429190
  loc_E65710: If (((((((CLng(arg_C) = &H11) Or (CLng(arg_C) = &H10)) Or (CLng(arg_C) = &H90)) Or (CLng(arg_C) = &H14)) Or (CLng(arg_C) = &H91)) Or (arg_C = &H12)) Or (arg_C = &H5B)) Then
loc_E65718: End Sub
  loc_E65719: End If
  loc_E6571E: End Sub
End Sub

Public Sub Proc_183_40_F30B0C
  'Data Table: 429190
  loc_F30A87: If (((((((((((((CLng(arg_10) = &H71) Or (CLng(arg_10) = &H72)) Or (CLng(arg_10) = &H73)) Or ((arg_10 = &H46) And (arg_14 = 2))) Or ((arg_10 = &H50) And (arg_14 = 2))) Or ((arg_10 = &H53) And (arg_14 = 2))) Or (CLng(arg_10) = &H1B)) Or (CLng(arg_10) = &H74)) Or (CLng(arg_10) = &H79)) Or (CLng(arg_10) = &H24)) Or (CLng(arg_10) = &H21)) Or (CLng(arg_10) = &H22)) Or (CLng(arg_10) = &H23)) Then
  loc_F30AA2:   Call Me.TopCtrl1.TopKey_Down
  loc_F30AAB: End If
  loc_F30AB5: If (CLng(arg_10) <> &H79) Then
  loc_F30AD8:   If (Me.TopCtrl1.PrvKeyCode = &H1B) Then
  loc_F30AE9:     Me.TopCtrl1.PrvKeyCode = 0
  loc_F30AF3:   Else
  loc_F30B02:     Me.TopCtrl1.PrvKeyCode = CVar(arg_10)
  loc_F30B09:   End If
  loc_F30B09: End If
  loc_F30B09: Exit Sub
End Sub

Public Sub Proc_183_41_1459C78
  'Data Table: 429190
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim Me As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim arg_18 As Integer
  loc_14590F8: If (Me.Recordset15.RecordCount <= 0) Then
  loc_14590FB:   var_B0 = vbNullString
  loc_1459115:   ).TEXT = arg_10
  loc_145911C:   Exit Sub
  loc_145911D: End If
  loc_1459123: If (arg_18 = 0) Then
  loc_1459126:   Exit Sub
  loc_1459127: End If
  loc_145917D: If (((((((((arg_18 = &HD) Or (arg_18 = 8)) Or (arg_18 = &H10)) Or (CLng(arg_18) = &H25)) Or (CLng(arg_18) = &H27)) Or (CLng(arg_18) = &H26)) Or (CLng(arg_18) = &H28)) Or (CLng(arg_18) = &H21)) Or (CLng(arg_18) = &H22)) Then
  loc_1459180:   Exit Sub
  loc_1459181: End If
  loc_1459195: If (IsMissing(arg_20) Or (arg_20 = 0)) Then
  loc_14591C1:   If ().TEXT = vbNullString) Then
  loc_14591D4:     var_88 = CStr(Chr(CLng(arg_18)))
  loc_14591DD:   Else
  loc_1459206:     var_100 = ().TEXT + Chr(CLng(arg_18)))
  loc_145920B:     var_88 = CStr(var_100)
  loc_1459219:   End If
  loc_1459233:   If (((var_88 = vbNullString) Or (var_88 = "*")) Or (var_88 = "_")) Then
  loc_1459238:     arg_18 = 0
  loc_145923B:     Exit Sub
  loc_145923C:   End If
  loc_145923F:   Me.MoveFirst
  loc_145927C:   If (Me.Recordset15.Fields.Item(CVar(arg_1C)).Type = 3) Then
  loc_14592BC:     Me.Recordset15.Find vbNullString & arg_1C & " like " & CStr(Val(var_88)) & "*", 0, 1
  loc_14592E0:     If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_14592FE:       var_88 = CStr().TEXT)
  loc_145930B:       Me.Recordset15.MoveFirst
  loc_1459318:       If (var_88 <> vbNullString) Then
  loc_145934B:         Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_145935B:       End If
  loc_145935E:     Else
  loc_14593D5:       If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88)))) <> Ucase(var_88)) Then
  loc_14593F3:         var_88 = CStr().TEXT)
  loc_1459400:         Me.Recordset15.MoveFirst
  loc_1459435:         Me.Recordset15.Find vbNullString & arg_1C & " like " & var_88 & "*", 0, 1
  loc_1459445:       End If
  loc_1459445:     End If
  loc_1459448:   Else
  loc_145944B:     Me.MoveFirst
  loc_1459480:     Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_14594A4:     If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_14594C2:       var_88 = CStr().TEXT)
  loc_14594CF:       Me.Recordset15.MoveFirst
  loc_14594DC:       If (var_88 <> vbNullString) Then
  loc_145950F:         Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_145951F:       End If
  loc_1459522:     Else
  loc_1459599:       If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88)))) <> Ucase(var_88)) Then
  loc_14595B7:         var_88 = CStr().TEXT)
  loc_14595C4:         Me.Recordset15.MoveFirst
  loc_14595F9:         Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_1459609:       End If
  loc_1459609:     End If
  loc_1459609:   End If
  loc_145960C:   var_B0 = CVar(var_88) 'String
  loc_1459639:   var_100 = ().TEXT + Chr(CLng(arg_18)))
  loc_145964A:   If (arg_10 = Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88))))) Then
  loc_1459676:     var_100 = ().TEXT + Chr(CLng(arg_18)))
  loc_145968F:     ).TEXT = arg_10
  loc_14596A0:   End If
  loc_14596A2:   arg_18 = 0
  loc_14596A8: Else
  loc_14596C4:   var_8A = CByte().SelStart) 'Byte
  loc_14596EA:   var_88 = CStr().TEXT)
  loc_14596F7:   Me.Recordset15.MoveFirst
  loc_1459734:   If (Me.Recordset15.Fields.Item(CVar(arg_1C)).Type = 3) Then
  loc_1459741:     var_88 = CStr(Val(var_88))
  loc_1459774:     Me.Recordset15.Find vbNullString & arg_1C & " like " & var_88 & "*", 0, 1
  loc_1459798:     If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_14597B0:       var_D0 = Left(var_88, CLng((CInt(var_8A) - 1)))
  loc_14597CD:       var_E0 = Right(var_88, (Len(var_88) - CLng(var_8A)))
  loc_14597D5:       var_F0 = (Me.Recordset15.Fields.Item(CVar(arg_1C)).Value + ).TEXT)
  loc_14597DA:       var_88 = CStr().TEXT)
  loc_14597E9:       Me.Recordset15.MoveFirst
  loc_14597F6:       If (var_88 <> vbNullString) Then
  loc_1459829:         Me.Recordset15.Find vbNullString & arg_1C & " like " & var_88 & "*", 0, 1
  loc_1459839:       End If
  loc_145983C:       var_B0 = CVar(var_88) 'String
  loc_1459854:       ).TEXT = arg_10
  loc_145985E:     Else
  loc_14598D5:       If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88)))) <> Ucase(var_88)) Then
  loc_14598ED:         var_D0 = Left(var_88, CLng((CInt(var_8A) - 1)))
  loc_145990A:         var_E0 = Right(var_88, (Len(var_88) - CLng(var_8A)))
  loc_1459912:         var_F0 = (Me.Recordset15.Fields.Item(CVar(arg_1C)).Value + CVar(Len(var_88)))
  loc_1459917:         var_88 = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88))))
  loc_1459926:         Me.Recordset15.MoveFirst
  loc_1459933:         If (var_88 <> vbNullString) Then
  loc_1459966:           Me.Recordset15.Find vbNullString & arg_1C & " like " & var_88 & "*", 0, 1
  loc_1459976:         End If
  loc_1459979:         var_B0 = CVar(var_88) 'String
  loc_1459991:         ).TEXT = arg_10
  loc_1459998:       End If
  loc_1459998:     End If
  loc_145999B:   Else
  loc_14599A3:     If (var_88 <> vbNullString) Then
  loc_14599D6:       Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_14599FA:       If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_1459A12:         var_D0 = Left(var_88, CLng((CInt(var_8A) - 1)))
  loc_1459A2F:         var_E0 = Right(var_88, (Len(var_88) - CLng(var_8A)))
  loc_1459A37:         var_F0 = (Me.Recordset15.Fields.Item(CVar(arg_1C)).Value + CVar(Len(var_88)))
  loc_1459A3C:         var_88 = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88))))
  loc_1459A4B:         Me.Recordset15.MoveFirst
  loc_1459A58:         If (var_88 <> vbNullString) Then
  loc_1459A8B:           Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_1459A9B:         End If
  loc_1459A9E:         var_B0 = CVar(var_88) 'String
  loc_1459AB6:         ).TEXT = arg_10
  loc_1459AC0:       Else
  loc_1459B37:         If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88)))) <> Ucase(var_88)) Then
  loc_1459B4F:           var_D0 = Left(var_88, CLng((CInt(var_8A) - 1)))
  loc_1459B6C:           var_E0 = Right(var_88, (Len(var_88) - CLng(var_8A)))
  loc_1459B74:           var_F0 = (Me.Recordset15.Fields.Item(CVar(arg_1C)).Value + CVar(Len(var_88)))
  loc_1459B79:           var_88 = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88))))
  loc_1459B88:           Me.Recordset15.MoveFirst
  loc_1459B95:           If (var_88 <> vbNullString) Then
  loc_1459BC8:             Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_1459BD8:           End If
  loc_1459BDB:           var_B0 = CVar(var_88) 'String
  loc_1459BF3:           ).TEXT = arg_10
  loc_1459BFA:         End If
  loc_1459BFA:       End If
  loc_1459BFA:     End If
  loc_1459BFA:   End If
  loc_1459C14:   var_F0 = Len().TEXT)
  loc_1459C2D:   ).SelStart = arg_10
  loc_1459C3C:   arg_18 = 0
  loc_1459C3F: End If
  loc_1459C53: var_E0 = Len())
  loc_1459C6C: ).SelStart = arg_10
  loc_1459C77: Exit Sub
End Sub

Public Sub Proc_183_42_107D990(arg_C) '107D990
  'Data Table: 429190
  Dim var_D8 As Variant
  Dim unk_429253 As Connection15
  Dim var_C4 As Recordset15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  Dim var_98 As Double
  Dim var_90 As Double
  Dim var_F4 As String
  Dim var_C0 As Variant
  Dim var_124 As Variant
  Dim var_134 As Boolean
  Dim var_194 As Variant
  loc_107D71E: If (Len(arg_C) <= 0) Then
  loc_107D721:   Exit Sub
  loc_107D722: End If
  loc_107D72A: If (MemVar_1F92078 = "HO") Then
  loc_107D733:   var_D8 = 0
  loc_107D760:   unk_429253.Execute "SELECT isnull(sum(ledger.Amtcr),0) AS OpRec FROM ledger where subcode='" & arg_C & "'", var_C0, -1
  loc_107D768:   var_C4 = var_C4.Fields
  loc_107D770:   var_D8 = var_C8.Item(var_C8)
  loc_107D778:   var_DC = var_DC.Value
  loc_107D781:   var_98 = CSng(var_EC)
  loc_107D7A1:   var_D8 = 0
  loc_107D7CE:   unk_429253.Execute "SELECT isnull(sum(ledger.Amtdr),0) AS OpIss FROM ledger where subcode='" & arg_C & "'", var_C0, -1
  loc_107D7D6:   var_C4 = var_C4.Fields
  loc_107D7DE:   var_D8 = var_C8.Item(var_C8)
  loc_107D7E6:   var_DC = var_DC.Value
  loc_107D7EF:   var_90 = CSng(var_EC)
  loc_107D80C: Else
  loc_107D812:   var_D8 = 0
  loc_107D844:   var_F4 = "SELECT isnull(sum(ledger.Amtcr),0) AS OpRec FROM ledger where subcode='" & arg_C & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "'"
  loc_107D84D:   unk_429253.Execute var_F4, var_C0, -1
  loc_107D855:   var_C4 = var_C4.Fields
  loc_107D85D:   var_D8 = var_C8.Item(var_C8)
  loc_107D865:   var_DC = var_DC.Value
  loc_107D86E:   var_98 = CSng(var_EC)
  loc_107D892:   var_D8 = 0
  loc_107D8C4:   var_F4 = "SELECT isnull(sum(ledger.Amtdr),0) AS OpIss FROM ledger where subcode='" & arg_C & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "'"
  loc_107D8CD:   unk_429253.Execute var_F4, var_C0, -1
  loc_107D8D5:   var_C4 = var_C4.Fields
  loc_107D8DD:   var_D8 = var_C8.Item(var_C8)
  loc_107D8E5:   var_DC = var_DC.Value
  loc_107D8EE:   var_90 = CSng(var_EC)
  loc_107D90C: End If
  loc_107D929: var_C0 = CVar(Abs((var_90 - var_98))) 'Double
  loc_107D93D: var_124 = (Format(var_C0, "0.00") + " ")
  loc_107D963: var_134 = (CDbl((var_90 - var_98)) > CDbl(0))
  loc_107D972: var_194 = (var_124 + IIf(var_134, "Dr", "Cr"))
  loc_107D977: var_88 = CStr(var_194)
  loc_107D98F: Exit Sub
End Sub

Public Sub Proc_183_43_EF7D54(arg_C) 'EF7D54
  'Data Table: 429190
  Dim unk_429253 As Connection15
  Dim |�B As CommandButton
  Dim var_A4 As Variant
  loc_EF7C88: On Error Goto loc_EF7CF6
  loc_EF7CA1: unk_429253.Execute arg_C, var_A4, -1
  loc_EF7CAC: CVarUnk
  loc_EF7CB1: VerifyVarObj
  loc_EF7CB6: LateIdStAd
  loc_EF7CF0: |�B.Tag = arg_C
  loc_EF7CF5: Exit Sub
  loc_EF7CF6: ' Referenced from: EF7C88
  loc_EF7CFE: Set var_A8 = Err()
  loc_EF7D04: Call 0.Method_arg_1C (var_CC, cmdTransferCharge.DispID_3, arg_18, cmdTransferCharge.DispID_1)
  loc_EF7D15: If (var_CC > 0) Then
  loc_EF7D20:   Set var_A8 = Err()
  loc_EF7D26:   Call 0.Method_arg_2C (var_D0, arg_14, |�B)
  loc_EF7D3F:   MsgBox(CVar(var_D0), &H40, var_B8, var_E0, var_100)
  loc_EF7D52: End If
  loc_EF7D52: Exit Sub
End Sub

Public Sub Proc_183_44_EABF94(arg_C) 'EABF94
  'Data Table: 429190
  Dim var_B4 As Variant
  Dim Me As CommandButton
  Dim var_A4 As Variant
  loc_EABF23: var_B4 = CVar(CStr(cmdTransferCharge.DispID_2)) 'String
  loc_EABF67: Proc_183_43_EF7D54(CStr(Me.Tag), arg_C, CStr(var_B4))
  loc_EABF83: var_A4 = CVar(CStr(var_B4)) 'String
  loc_EABF92: Exit Sub
End Sub

Public Sub Proc_183_45_E5C118
  'Data Table: 429190
  Dim Me As Recordset15
  loc_E5C0E0: If (Me.Recordset15.RecordCount > 0) Then
  loc_E5C0F1:   If Me.Recordset15.BOF Then
  loc_E5C0F7:     Me.Recordset15.MoveFirst
  loc_E5C0FC:   End If
  loc_E5C10A:   If Me.EOF Then
  loc_E5C110:     Me.Recordset15.MoveLast
  loc_E5C115:   End If
  loc_E5C115: End If
  loc_E5C115: Exit Sub
End Sub

Public Sub Proc_183_46_E070C0(arg_C) 'E070C0
  'Data Table: 429190
  Dim arg_C As Integer
  loc_E070B6: If (arg_C = &H27) Then
  loc_E070BB:   arg_C = 0
  loc_E070BE:   Exit Sub
  loc_E070BF: End If
  loc_E070BF: Exit Sub
End Sub

Public Sub Proc_183_47_EA0858(arg_C) 'EA0858
  'Data Table: 429190
  loc_EA07D4: On Error Resume Next
  loc_EA07E7: Form.Visible = False
  loc_EA07F6: Form.Height = CDbl(8000)
  loc_EA0805: Form.Width = CDbl(12000)
  loc_EA0813: Form.Top = CDbl(0)
  loc_EA0821: Form.Left = CDbl(0)
  loc_EA0843: arg_C.TopBar1.BackColor = CVar(Form.BackColor)
  loc_EA084E: Set var_88 = Nothing 
  loc_EA0854: Exit Sub
End Sub

Public Sub Proc_183_48_F05F98
  'Data Table: 429190
  Dim var_86 As Integer
  Dim var_B4 As Variant
  loc_F05EBA: var_86 = 1
  loc_F05EE7: If (Proc_183_49_EF3180(CDate(Me.TXTS_DATE), "Starting Date") = 0) Then
loc_F05EEF: End Sub
  loc_F05EF0: End If
  loc_F05F1A: If (Proc_183_49_EF3180(CDate(Me.TXTE_DATE), "Ending Date", Me.TXTE_DATE) = 0) Then
loc_F05F22: End Sub
  loc_F05F23: End If
  loc_F05F30: var_B4 = Me.TXTE_DATE
  loc_F05F4D: var_C4 = DateDiff("d", Me.TXTS_DATE, var_B4, 1, 1)
  loc_F05F66: If (var_C4 < 0) Then
  loc_F05F82:   MsgBox(" Ending Date Less than Starting Date ", &H10, var_B4, var_C4, var_E4)
  loc_F05F94:   var_86 = 0
  loc_F05F97: End If
  loc_F05F97: End Sub
End Sub

Public Sub Proc_183_49_EF3180(arg_C, arg_10) 'EF3180
  'Data Table: 429190
  Dim var_86 As Integer
  loc_EF30B2: var_86 = &HFF
  loc_EF30E8: If (DateDiff("D", MemVar_1F920F4, arg_C, 1, 1) < 0) Then
  loc_EF3103:   MsgBox(CVar(arg_10 & " is Before Financial Year "), &H10, var_D8, var_E8, var_F8)
  loc_EF3115:   var_86 = 0
  loc_EF311B: Else
  loc_EF314E:   If (DateDiff("D", arg_C, MemVar_1F920FC, 1, 1) < 0) Then
  loc_EF3169:     MsgBox(CVar(arg_10 & " is After Financial Year "), &H10, var_D8, var_E8, var_F8)
  loc_EF317B:     var_86 = 0
  loc_EF317E:   End If
  loc_EF317E: End If
  loc_EF317E: End Sub
End Sub

Public Sub Proc_183_50_F73B30(arg_C, arg_10, arg_14) 'F73B30
  'Data Table: 429190
  Dim var_9C As Long
  Dim var_94 As Long
  Dim var_8C As Long
  Dim var_90 As Long
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  loc_F739F1: Me(48) = "One  Two  ThreeFour Five Six  Seveneightnine "
  loc_F739FC: Me(64) = "Eleven   Twelve   Therteen Fourteen Fifteen  Sixteen  SeventeenEighteen Nineteen "
  loc_F73A07: Me(80) = "Ten    Twenty Thirty Fourty Fifty  Sixty  SeventyEighty Ninty  "
  loc_F73A10: Me(112) = "Hundred ThousandLacs    Crore   Arab    "
  loc_F73A1A: var_9C = &H3B9ACA00
  loc_F73A23: Me(96) = CVar(arg_10)
  loc_F73A40: var_8C = CLng(((arg_C - Int(arg_C)) * CDbl(&H64)))
  loc_F73A4A: For var_C0 = 1 To 6: var_96 = var_C0 'Integer
  loc_F73A5C:   var_90 = CLng(Int((CDbl(CLng(Int(arg_C))) / CDbl(var_9C))))
  loc_F73A6A:   var_94 = (var_94 - (var_90 * var_9C))
  loc_F73A73:   If (var_96 <> 4) Then
  loc_F73A7F:     var_9C = CLng((CDbl(var_9C) / CDbl(&H64)))
  loc_F73A85:   Else
  loc_F73A8E:     var_9C = CLng((CDbl(var_9C) / CDbl(&HA)))
  loc_F73A91:   End If
  loc_F73A9A:   If (var_90 > 0) Then
  loc_F73AAC:     var_AC = Proc_183_51_108F7D0(var_90, var_96, var_9C, var_9C, CLng(Int(arg_C))) 'Variant
  loc_F73AB0:   End If
  loc_F73AB3: Next var_C0 'Integer
  loc_F73AC3: var_D0 = (Me(96) + CVar(arg_14))
  loc_F73ACC: var_F0 = (var_D0 + " ")
  loc_F73AD0: Me(96) = var_F0
  loc_F73AE2: If (var_8C > 0) Then
  loc_F73AF4:   var_AC = Proc_183_51_108F7D0(var_8C) 'Variant
  loc_F73AFB: Else
  loc_F73B05:   var_D0 = (Me(96) + " Zero ")
  loc_F73B09:   Me(96) = var_D0
  loc_F73B0F: End If
  loc_F73B19: var_D0 = (Me(96) + " Only")
  loc_F73B1D: Me(96) = var_D0
  loc_F73B2A: var_88 = CStr(Me(96))
  loc_F73B2D: Exit Sub
End Sub

Public Sub Proc_183_51_108F7D0(arg_C, arg_10) '108F7D0
  'Data Table: 429190
  Dim var_A8 As Variant
  Dim var_F8 As Variant
  loc_108F52F: If ((arg_C Mod &HA) = 0) Then
  loc_108F547:   var_A8 = (Me(96) + Space(1))
  loc_108F573:   var_D8 = Mid(Me(80), ((((arg_C / &HA) - 1) * 7) + 1), 7)
  loc_108F586:   var_F8 = (var_A8 + RTrim(var_D8))
  loc_108F58A:   Me(96) = var_F8
  loc_108F5A0: Else
  loc_108F5A9:   If (arg_C < &HA) Then
  loc_108F5C1:     var_A8 = (Me(96) + Space(1))
  loc_108F5E7:     var_D8 = Mid(Me(48), (((arg_C - 1) * 5) + 1), 5)
  loc_108F5FA:     var_F8 = (var_A8 + RTrim(var_D8))
  loc_108F5FE:     Me(96) = var_F8
  loc_108F614:   Else
  loc_108F61D:     If (arg_C < &H14) Then
  loc_108F635:       var_A8 = (Me(96) + Space(1))
  loc_108F661:       var_D8 = Mid(Me(64), ((((arg_C - &HA) - 1) * 9) + 1), 9)
  loc_108F674:       var_F8 = (var_A8 + RTrim(var_D8))
  loc_108F678:       Me(96) = var_F8
  loc_108F68E:     Else
  loc_108F6A3:       var_A8 = (Me(96) + Space(1))
  loc_108F6CF:       var_D8 = Mid(Me(80), ((((arg_C / &HA) - 1) * 7) + 1), 7)
  loc_108F6E2:       var_F8 = (var_A8 + RTrim(var_D8))
  loc_108F6E6:       Me(96) = var_F8
  loc_108F70E:       var_A8 = (Me(96) + Space(1))
  loc_108F73A:       var_D8 = Mid(Me(48), ((((arg_C Mod &HA) - 1) * 5) + 1), 5)
  loc_108F74D:       var_F8 = (var_A8 + RTrim(var_D8))
  loc_108F751:       Me(96) = var_F8
  loc_108F764:     End If
  loc_108F764:   End If
  loc_108F764: End If
  loc_108F76A: If (arg_10 < 6) Then
  loc_108F782:   var_A8 = (Me(96) + Space(1))
  loc_108F7A5:   var_D8 = Mid(Me(112), CLng((((5 - arg_10) * 8) + 1)), 8)
  loc_108F7B8:   var_F8 = (var_A8 + RTrim(var_D8))
  loc_108F7BC:   Me(96) = var_F8
  loc_108F7CF: End If
loc_108F7CF: End Sub
End Sub

Public Sub Proc_183_52_E7F478
  'Data Table: 429190
  loc_E7F41E: var_94 = CVar(arg_10) 'Variant
  loc_E7F43D: If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_E7F466:   var_94 = CVar(Asc(CStr(Ucase(Chr(CLng(arg_10)))))) 'Variant
  loc_E7F474: End If
  loc_E7F474: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_183_53_FE2130
  'Data Table: 429190
  Dim var_E0 As Integer
  Dim var_CC As Recordset15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim var_86 As Integer
  Dim var_C8 As Variant
  loc_FE1F85: If (arg_1C = 0) Then
  loc_FE1FC0:   var_8C = "Select Count(" & arg_14 & ") from " & arg_10 & " where " & arg_14 & " = '" & arg_18 & "'"
  loc_FE1FD7: Else
  loc_FE1FE0:   If (arg_1C = 1) Then
  loc_FE201B:     var_8C = "Select Count(" & arg_14 & ") from " & arg_10 & " where " & arg_14 & " = " & arg_18 & vbNullString
  loc_FE2032:   Else
  loc_FE203B:     If (arg_1C = 2) Then
  loc_FE2076:       var_8C = "Select Count(" & arg_14 & ") from " & arg_10 & " where " & arg_14 & " = #" & arg_18 & "#"
  loc_FE208A:     End If
  loc_FE208A:   End If
  loc_FE208A: End If
  loc_FE2090: var_E0 = 0
  loc_FE20AC: Me.Connection15.Execute var_8C, var_C8, -1
  loc_FE20B4: var_CC = var_CC.Fields
  loc_FE20BC: var_E0 = var_D0.Item(var_D0)
  loc_FE20C4: var_E4 = var_E4.Value
  loc_FE20E4: If (var_F4 > 0) Then
  loc_FE2113:   MsgBox(CVar("Related Record Exist in " & arg_20 & ", Entry Can't Be Deleted"), &H40, "Validation Check", var_114, var_124)
loc_FE2126: End Sub
  loc_FE212A: Else
  loc_FE212C:   var_86 = &HFF
  loc_FE212F: End If
  loc_FE212F: End Sub
End Sub

Public Sub Proc_183_54_F1DE80(arg_C) 'F1DE80
  'Data Table: 429190
  Dim var_90 As Long
  Dim var_C8 As Variant
  loc_F1DD81: var_90 = 1
  loc_F1DD90: For var_98 = 1 To Len(arg_C): var_88 = var_98 'Long
  loc_F1DDAE:   If (InStr(1, arg_C, ",", 0) <> 0) Then
  loc_F1DDC9:     var_C8 = CVar((InStr(1, arg_C, ",", 0) - 1)) 'Long
  loc_F1DE16:     var_D8 = Mid(arg_C, (InStr(1, arg_C, ",", 0) + 1), var_C8)
  loc_F1DE1F:     arg_C = CStr(Mid(arg_C, 1, var_C8))
  loc_F1DE35:     ReDim Preserve MemVar_1F92008(0 To var_90)
  loc_F1DE49:     MemVar_1F92008(var_90) = CLng(CStr(Mid(arg_C, 1, var_C8)))
  loc_F1DE53:     var_90 = (var_90 + 1)
  loc_F1DE56:   End If
  loc_F1DE59: Next var_98 'Long
  loc_F1DE69: ReDim Preserve MemVar_1F92008(0 To var_90)
  loc_F1DE7D: MemVar_1F92008(var_90) = CLng(arg_C)
  loc_F1DE7E: Exit Sub
End Sub

Public Sub Proc_183_55_FE7900
  'Data Table: 429190
  Dim var_F0 As Variant
  Dim var_86 As Integer
  Dim var_128 As Variant
  loc_FE776C: var_F0 = (Me.Recordset15.Fields.Item("Site_Code").Value = "HO") And (MemVar_1F92070 <> "HO")
  loc_FE7780: If CBool(var_F0) Then
  loc_FE77A1:   MsgBox("Record is Created at Other Site, Can't Edit it", &H10, var_D0, var_F0, var_110)
loc_FE77B1: End Sub
  loc_FE77B5: Else
  loc_FE781E:   var_128 = (Me.Recordset15.Fields.Item("Site_Code").Value = "HO") And (Me.Recordset15.Fields.Item("LogSite_Code").Value = CVar(MemVar_1F92078))
  loc_FE7836:   If CBool(var_128) Then
  loc_FE783B:     var_86 = 0
  loc_FE7841:   Else
  loc_FE7898:     var_F0 = Me.Recordset15.Fields.Item("LogSite_Code").Value
  loc_FE78C3:     If CBool((Me.Recordset15.Fields.Item("Site_Code").Value <> CVar(MemVar_1F92070)) And (var_F0 <> CVar(MemVar_1F92078))) Then
  loc_FE78E4:       MsgBox("Record is Created at Other Site, Can't Edit it", &H10, var_D0, var_F0, var_110)
loc_FE78F4: End Sub
  loc_FE78F8:     Else
  loc_FE78FA:       var_86 = 0
  loc_FE78FD:     End If
  loc_FE78FD:   End If
  loc_FE78FD: End If
  loc_FE78FD: End Sub
End Sub

Public Sub Proc_183_56_FE8818
  'Data Table: 429190
  Dim var_F0 As Variant
  Dim var_86 As Integer
  Dim var_128 As Variant
  loc_FE8684: var_F0 = (Me.Recordset15.Fields.Item("Site_Code").Value = "HO") And (MemVar_1F92070 <> "HO")
  loc_FE8698: If CBool(var_F0) Then
  loc_FE86B9:   MsgBox("Record is Created at Other Site, Can't Delete it", &H10, var_D0, var_F0, var_110)
loc_FE86C9: End Sub
  loc_FE86CD: Else
  loc_FE8736:   var_128 = (Me.Recordset15.Fields.Item("Site_Code").Value = "HO") And (Me.Recordset15.Fields.Item("LogSite_Code").Value = CVar(MemVar_1F92078))
  loc_FE874E:   If CBool(var_128) Then
  loc_FE8753:     var_86 = 0
  loc_FE8759:   Else
  loc_FE87B0:     var_F0 = Me.Recordset15.Fields.Item("LogSite_Code").Value
  loc_FE87DB:     If CBool((Me.Recordset15.Fields.Item("Site_Code").Value <> CVar(MemVar_1F92070)) And (var_F0 <> CVar(MemVar_1F92078))) Then
  loc_FE87FC:       MsgBox("Record is Created at Other Site, Can't Delete it", &H10, var_D0, var_F0, var_110)
loc_FE880C: End Sub
  loc_FE8810:     Else
  loc_FE8812:       var_86 = 0
  loc_FE8815:     End If
  loc_FE8815:   End If
  loc_FE8815: End If
  loc_FE8815: End Sub
End Sub

Public Sub Proc_183_57_104AA84(arg_C, arg_10) '104AA84
  'Data Table: 429190
  Dim var_9C As String
  Dim var_1EA As Integer
  Dim var_1EC As Integer
  Dim var_98 As String
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_1E4 As Variant
  loc_104A874: Set var_90 = Err()
  loc_104A87A: Call 0.Method_arg_1C (var_94)
  loc_104A88B: If (var_94 <> 0) Then
  loc_104A89A:   var_90 = Me.Global.App
  loc_104A8BD:   var_9C = App.Path & "\"
  loc_104A8CD:   Call 0.Method_arg_7C (var_9C & "FaLog.Log", 8, &HFF)
  loc_104A8D8:   Set var_8C = var_A4
  loc_104A8F8:   var_1EA = IsMissing(arg_C)
  loc_104A908:   var_1EC = IsMissing(arg_10)
  loc_104A918:   var_98 = CStr(Now)
  loc_104A92A:   Set var_90 = Err()
  loc_104A930:   Call 0.Method_arg_2C (var_9C, var_98 & " | ", var_1EC)
  loc_104A951:   Call 0.Method_arg_1C (var_94, var_1EA & var_9C & " | ")
  loc_104A971:   Set var_C8 = Err()
  loc_104A977:   Call 0.Method_arg_24 (var_CC, 0 & CStr(var_94) & " | ")
  loc_104A987:   var_144 = CVar(Err() & var_CC & " | ") 'String
  loc_104A9A8:   var_134 = IIf(Not(var_1EA), arg_C, vbNullString)
  loc_104A9B0:   var_154 = (var_144 + var_134)
  loc_104A9B9:   var_174 = (var_154 + " | ")
  loc_104A9E3:   var_1E4 = (var_174 + IIf(Not(var_1EC), arg_10, vbNullString))
  loc_104A9EE:   Call 0.Method_arg_3C (CStr(var_1E4))
  loc_104AA33:   Call 0.Method_Proc_183_57_104AA84C ()
  loc_104AA3D:   Set var_88 = Nothing
  loc_104AA48:   Set var_90 = Err()
  loc_104AA4E:   Call 0.Method_arg_2C (var_98)
  loc_104AA6F:   MsgBox(CVar(var_98), &H40, "Validation", var_134, var_144)
  loc_104AA82: End If
  loc_104AA82: Exit Sub
End Sub
