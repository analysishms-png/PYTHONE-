VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "cJSONScript"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Private var_8C As New cStringBuilder
Private global_56 As Long

Public Function Eval(sJSON) 'FB78B8
  'Data Table: 41BCC4
  Dim var_C8 As Long
  loc_FB772E: Set var_90 = Proc_343_2_EC6BA0(sJSON)
  loc_FB774A: If ((Proc_343_0_E05B7C() = vbNullString) And Not((var_90 Is Nothing))) Then
  loc_FB7762:   For var_B4 = 1 To CLng(var_90.Count): var_98 = var_B4 'Long
  loc_FB777F:     var_C8 = VarType(var_90.Item)
  loc_FB778E:     If (var_C8 = 1) Then
  loc_FB77A0:       Call var_8C.Append("null")
  loc_FB77AB:     Else
  loc_FB77B4:       If (var_C8 = 7) Then
  loc_FB77D5:         Call var_8C.Append(CStr(var_90.Item))
  loc_FB77E3:       Else
  loc_FB77EC:         If (var_C8 = 8) Then
  loc_FB780D:           Call var_8C.Append(CStr(var_90.Item))
  loc_FB781B:         Else
  loc_FB7853:           Call var_8C.Append(ExecCommand(var_90.Item))
  loc_FB785B:         End If
  loc_FB785B:       End If
  loc_FB785B:     End If
  loc_FB785E:   Next var_B4 'Long
  loc_FB7866: Else
  loc_FB788A:   MsgBox(CVar(Proc_343_0_E05B7C()), &H30, "Parser Error", var_FC, var_11C)
  loc_FB789D: End If
  loc_FB78AE: var_88 = var_8C.toString
  loc_FB78B1: Eval = 
  loc_FB78B7:  = 
End Function

Public Function ExecCommand(obj) '13DFAD8
  'Data Table: 41BCC4
  Dim var_90 As Long
  Dim var_94 As String
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_A4 As Variant
  Dim var_140 As Variant
  Dim var_164 As Variant
  Dim var_184 As String
  Dim var_1B4 As Variant
  Dim var_194 As Variant
  Dim var_252 As Integer
  loc_13DF14E: If (global_56 > &H28) Then
  loc_13DF154:   var_88 = "ERROR: Nesting level exceeded."
  loc_13DF157:   GoTo loc_13DFAB4
  loc_13DF15A: End If
  loc_13DF169: global_56 = (global_56 + 1)
  loc_13DF174: var_90 = VarType(obj)
  loc_13DF180: If (var_90 = 1) Then
  loc_13DF192:   Call var_8C.Append("null")
  loc_13DF19A:   GoTo loc_13DFAA2
  loc_13DF19D: End If
  loc_13DF1A6: If (var_90 = 7) Then
  loc_13DF1BB:   Call var_8C.Append(CStr(obj))
  loc_13DF1C3:   GoTo loc_13DFAA2
  loc_13DF1C6: End If
  loc_13DF1CF: If (var_90 = 8) Then
  loc_13DF1E4:   Call var_8C.Append(CStr(obj))
  loc_13DF1EC:   GoTo loc_13DFAA2
  loc_13DF1EF: End If
  loc_13DF1F8: If (var_90 = 9) Then
  loc_13DF20E:   If (TypeName(obj) = "Dictionary") Then
  loc_13DF234:     var_118 = (obj.Count - 1)
  loc_13DF23D:     For var_120 = 0 To CLng(var_118): var_A8 = var_120 'Long
  loc_13DF246:       var_D8 = vbNullString
  loc_13DF259:       var_C0 = obj.keys(var_A8) 'Variant
  loc_13DF267:       VarLateMemCallLdRfVar
  loc_13DF27D:       If (VarType(obj) = 8) Then
  loc_13DF293:         var_D8 = CStr(obj.Item)
  loc_13DF29C:       Else
  loc_13DF2B0:         Set var_B0 = obj.Item 
  loc_13DF2B7:       End If
  loc_13DF2C5:       var_130 = LCase(var_C0) 'Variant
  loc_13DF2D4:       If (var_130 = "alert") Then
  loc_13DF2D7:         var_A4 = "message"
  loc_13DF2F5:         var_140 = "title"
  loc_13DF32A:         MsgBox(CVar(ExecCommand(var_B0.Item)), &H40, CVar(ExecCommand(var_B0.Item)), var_194, var_1B4)
  loc_13DF341:       Else
  loc_13DF34C:         If (var_130 = "input") Then
  loc_13DF34F:           var_A4 = "prompt"
  loc_13DF368:           var_94 = ExecCommand(var_B0.Item)
  loc_13DF36D:           var_140 = "title"
  loc_13DF38B:           var_184 = "default"
  loc_13DF3D6:           Call var_8C.Append(InputBox(CVar(var_94), CVar(ExecCommand(var_B0.Item)), CVar(ExecCommand(var_B0.Item)), var_1D8, var_1F8, var_218, var_238))
  loc_13DF3F8:         Else
  loc_13DF403:           If (var_130 = "switch") Then
  loc_13DF409:             var_A4 = "default"
  loc_13DF41A:             var_A4 = ExecCommand(var_B0.Item)
  loc_13DF422:             var_D4 = var_94
  loc_13DF42B:             var_A4 = "case"
  loc_13DF43C:             var_A4 = ExecCommand(var_B0.Item)
  loc_13DF467:             var_A4 = "items"
  loc_13DF483:             var_164 = (var_B0.Item.Count - 1)
  loc_13DF490:             For var_244 = var_AC To CLng(LCase(CVar(var_94))):     var_A4 = var_244 'Long
  loc_13DF496:               var_184 = "case"
  loc_13DF4A5:               var_140 = CVar((var_AC + 1)) 'Long
  loc_13DF4AA:               var_A4 = "items"
  loc_13DF4BB:               VarLateMemCallLdRfVar
  loc_13DF4C3:               VarLateMemCallLdRfVar
  loc_13DF4EA:               If (LCase(var_B0.Item) = CVar(CStr(LCase(CVar(var_94))))) Then
  loc_13DF4F0:                 var_184 = "return"
  loc_13DF4FF:                 var_140 = CVar((var_AC + 1)) 'Long
  loc_13DF504:                 var_A4 = "items"
  loc_13DF515:                 VarLateMemCallLdRfVar
  loc_13DF51D:                 VarLateMemCallLdRfVar
  loc_13DF525:                 var_A4 = ExecCommand(var_B0.Item)
  loc_13DF52D:                 var_D4 = var_94
  loc_13DF539:                 Exit For
  loc_13DF53C:               End If
  loc_13DF53F:             Next var_244 'Long
  loc_13DF544:             ' Referenced from:     13DF539
  loc_13DF54D:             Call var_8C.Append(var_D4)
  loc_13DF555:           Else
  loc_13DF560:             If (var_130 = "set") Then
  loc_13DF580:               Call 0.Method_arg_30 (var_B0.Item, "name")
  loc_13DF58B:               If var_246 Then
  loc_13DF591:                 var_A4 = "value"
  loc_13DF5A2:                 var_A4 = ExecCommand(var_B0.Item)
  loc_13DF5C7:                 Call 0.Method_arg_20 (var_B0.Item, "name", CVar(var_94))
  loc_13DF5D8:               Else
  loc_13DF5D8:                 var_A4 = "name"
  loc_13DF5F4:                 var_F8 = var_B0.Item
  loc_13DF604:                 var_94 = ExecCommand(var_F8)
  loc_13DF60C:                 var_164 = CVar(var_94) 'String
  loc_13DF61B:                 Call 0.Method_arg_28 (var_B0.Item, var_164, var_F8, "value")
  loc_13DF629:               End If
  loc_13DF62C:             Else
  loc_13DF637:               If (var_130 = "get") Then
  loc_13DF65F:                 Call 0.Method_arg_24 (CVar(CStr(var_B0.Item)), "name", var_164, var_94)
  loc_13DF667:                 var_118 = ExecCommand(var_164)
  loc_13DF683:                 If (var_94 = vbNullString) Then
  loc_13DF689:                   var_A4 = "default"
  loc_13DF69A:                   var_A4 = ExecCommand(var_B0.Item)
  loc_13DF6A2:                   var_D8 = var_94
  loc_13DF6A8:                 End If
  loc_13DF6B1:                 Call var_8C.Append(var_94)
  loc_13DF6B9:               Else
  loc_13DF6C4:                 If (var_130 = "if") Then
  loc_13DF6CA:                   var_A4 = "value1"
  loc_13DF6DB:                   var_A4 = ExecCommand(var_B0.Item)
  loc_13DF6E3:                   var_24C = var_94
  loc_13DF6EC:                   var_A4 = "value2"
  loc_13DF6FD:                   var_A4 = ExecCommand(var_B0.Item)
  loc_13DF705:                   var_250 = var_94
  loc_13DF70D:                   var_252 = 0
  loc_13DF710:                   var_A4 = "type"
  loc_13DF72C:                   var_264 = LCase(var_B0.Item) 'Variant
  loc_13DF73E:                   If (var_264 = "eq") Then
  loc_13DF770:                     If (LCase(var_24C) = LCase(var_250)) Then
  loc_13DF775:                       var_252 = &HFF
  loc_13DF778:                     End If
  loc_13DF77B:                   Else
  loc_13DF786:                     If (var_264 = "gt") Then
  loc_13DF791:                       If (var_24C > var_250) Then
  loc_13DF796:                         var_252 = &HFF
  loc_13DF799:                       End If
  loc_13DF79C:                     Else
  loc_13DF7A7:                       If (var_264 = "lt") Then
  loc_13DF7B2:                         If (var_24C < var_250) Then
  loc_13DF7B7:                           var_252 = &HFF
  loc_13DF7BA:                         End If
  loc_13DF7BD:                       Else
  loc_13DF7C8:                         If (var_264 = "gte") Then
  loc_13DF7D3:                           If (var_24C >= var_250) Then
  loc_13DF7D8:                             var_252 = &HFF
  loc_13DF7DB:                           End If
  loc_13DF7DE:                         Else
  loc_13DF7E9:                           If (var_264 = "lte") Then
  loc_13DF7F4:                             If (var_24C <= var_250) Then
  loc_13DF7F9:                               var_252 = &HFF
  loc_13DF7FC:                             End If
  loc_13DF7FC:                           End If
  loc_13DF7FC:                         End If
  loc_13DF7FC:                       End If
  loc_13DF7FC:                     End If
  loc_13DF7FC:                   End If
  loc_13DF7FF:                   If var_252 Then
  loc_13DF805:                     var_A4 = "true"
  loc_13DF816:                     var_A4 = ExecCommand(var_B0.Item)
  loc_13DF828:                     Call var_8C.Append(var_94)
  loc_13DF836:                   Else
  loc_13DF839:                     var_A4 = "false"
  loc_13DF84A:                     var_A4 = ExecCommand(var_B0.Item)
  loc_13DF85C:                     Call var_8C.Append(var_94)
  loc_13DF867:                   End If
  loc_13DF86A:                 Else
  loc_13DF875:                   If (var_130 = "return") Then
  loc_13DF895:                     Call var_8C.Append(CStr(obj.Item))
  loc_13DF8A3:                   Else
  loc_13DF8BB:                     If (TypeName(var_B0) = "Dictionary") Then
  loc_13DF8C6:                       var_D0 = var_B0.keys 'Variant
  loc_13DF8DF:                       var_118 = (var_B0.Count - 1)
  loc_13DF8E8:                       For var_26C = 0 To CLng(LCase(var_250)):               var_AC = var_26C 'Long
  loc_13DF8F7:                         If (var_AC > 0) Then
  loc_13DF901:                           var_D8 = var_D8 & ","
  loc_13DF904:                         End If
  loc_13DF911:                         VarIndexLdRfVar
  loc_13DF92C:                         var_D8 = CStr(var_B0.Item) & CStr(var_B0.Item)
  loc_13DF93C:                       Next var_26C 'Long
  loc_13DF941:                     End If
  loc_13DF97F:                     Call var_8C.Append(CStr("<%" & Ucase(var_C0) & "(" & CVar(var_D8) & ")%>"))
  loc_13DF994:                   End If
  loc_13DF994:                 End If
  loc_13DF994:               End If
  loc_13DF994:             End If
  loc_13DF994:           End If
  loc_13DF994:         End If
  loc_13DF994:       End If
  loc_13DF997:     Next var_120 'Long
  loc_13DF99C:     GoTo loc_13DF9ED
  loc_13DF99F:   End If
  loc_13DF9B2:   If (TypeName(obj) = "Collection") Then
  loc_13DF9BE:     For Each var_27C In obj
  loc_13DF9DC:       Call var_8C.Append(ExecCommand(var_27C))
  loc_13DF9E7:     Next
  loc_13DF9ED:     ' Referenced from: 13DF99C
  loc_13DF9ED:   End If
  loc_13DF9EF:   Set var_B0 = Nothing 
  loc_13DF9F6: Else
  loc_13DF9FF:   If (var_90 = &HB) Then
  loc_13DFA0A:     If CBool(obj) Then
  loc_13DFA1C:       Call var_8C.Append("true")
  loc_13DFA27:     Else
  loc_13DFA36:       Call var_8C.Append("false")
  loc_13DFA3E:     End If
  loc_13DFA41:   Else
  loc_13DFA4A:     If Not (var_90 = &HC) Then
  loc_13DFA56:       If Not (var_90 = &H2000) Then
  loc_13DFA62:         If (var_90 = &H200C) Then
  loc_13DFA65:         End If
  loc_13DFA65:       End If
  loc_13DFA68:     Else
  loc_13DFA96:       Call var_8C.Append(Replace(CStr(obj), ",", ".", 1, -1, 0))
  loc_13DFAA2:     End If
  loc_13DFAA2:   End If
  loc_13DFAA2: End If
  loc_13DFAA2: ' Referenced from: 13DF1EC
  loc_13DFAA2: ' Referenced from: 13DF1C3
  loc_13DFAA2: ' Referenced from: 13DF19A
  loc_13DFAB1: global_56 = (global_56 - 1)
  loc_13DFAB4: ' Referenced from: 13DF157
  loc_13DFAC5: var_88 = var_8C.toString
  loc_13DFACD: Set var_8C = Nothing
  loc_13DFAD0: ExecCommand = global_56
End Function
