
Public Sub Proc_342_0_104AD78(arg_C) '104AD78
  'Data Table: 41B364
  Dim var_AA As Integer
  loc_104AB1B: var_90 = arg_C
  loc_104AB4C: var_90 = Replace(var_90, ", CStr(Chr(1)), 1, -1, 0)
  loc_104AB83: var_90 = Replace(var_90, "+", CStr(Chr(2)), 1, -1, 0)
  loc_104AB94: For var_A8 = 0 To 255: var_8A = var_A8 'Integer
  loc_104AB9D:   var_AA = var_8A
  loc_104ABA6:   If Not (var_AA = &H25) Then
  loc_104ABAF:     If Not (var_AA = &H2B) Then
  loc_104ABBB:       If Not (&H39 > var_AA > &H30) Then
  loc_104ABC7:         If Not (&H5A > var_AA > &H41) Then
  loc_104ABD3:           If (&H7A > var_AA > &H61) Then
  loc_104ABD6:           End If
  loc_104ABD6:         End If
  loc_104ABD6:       End If
  loc_104ABD6:     End If
  loc_104ABD9:   Else
  loc_104ABDF:     If (var_AA = 1) Then
  loc_104AC0F:       var_90 = Replace(var_90, CStr(Chr(CLng(var_8A))), "235995", 1, -1, 0)
  loc_104AC1B:     Else
  loc_104AC21:       If (var_AA = 2) Then
  loc_104AC51:         var_90 = Replace(var_90, CStr(Chr(CLng(var_8A))), "23599B", 1, -1, 0)
  loc_104AC5D:       Else
  loc_104AC63:         If (var_AA = &H20) Then
  loc_104AC93:           var_90 = Replace(var_90, CStr(Chr(CLng(var_8A))), "+", 1, -1, 0)
  loc_104AC9F:         Else
  loc_104ACA8:           If (&HF > var_AA > 3) Then
  loc_104ACF5:             var_90 = Replace(var_90, CStr(Chr(CLng(var_8A))), CStr("%0" & Hex(var_8A)), 1, -1, 0)
  loc_104AD0B:           Else
  loc_104AD55:             var_90 = Replace(var_90, CStr(Chr(CLng(var_8A))), CStr("%" & Hex(var_8A)), 1, -1, 0)
  loc_104AD68:           End If
  loc_104AD68:         End If
  loc_104AD68:       End If
  loc_104AD68:     End If
  loc_104AD68:   End If
  loc_104AD6B: Next var_A8 'Integer
  loc_104AD73: var_88 = var_90
  loc_104AD76: Exit Sub
End Sub
