
Public Sub Proc_344_0_ED9850(arg_C) 'ED9850
  'Data Table: 41B4C0
  Dim var_AC As Variant
  loc_ED97CD: var_AC = False
  loc_ED97DB: Call 0.Method_arg_1C ("GET", arg_C, var_AC)
  loc_ED97E7: Call 0.Method_arg_2C (var_AC, var_BC)
  loc_ED97F5: Call CreateObject("MSXML2.ServerXMLHTTP", 0).WaitForResponse
  loc_ED9801: Call 0.Method_Proc_344_0_ED98500 (var_D0, 10000)
  loc_ED9811: If (var_D0 = vbNullString) Then
  loc_ED982D:   MsgBox("There is no response from the server currently, Please try again after some time!!", 0, var_E0, var_F0, var_110)
  loc_ED983D:   Exit Sub
  loc_ED983E: End If
  loc_ED9844: Call 0.Method_Proc_344_0_ED98500 (var_D0)
  loc_ED984C: var_88 = var_D0
  loc_ED984F: Exit Sub
End Sub

Public Sub Proc_344_1_E93588(arg_C, arg_10) 'E93588
  'Data Table: 41B4C0
  loc_E93543: Call 0.Method_arg_1C ("POST", arg_C, False)
  loc_E93551: Call 0.Method_arg_20 ("Content-Type", "application/json; charset=utf-8")
  loc_E93560: Call 0.Method_arg_2C (CVar(arg_10), var_BC)
  loc_E9356E: Call CreateObject("MSXML2.ServerXMLHTTP", 0).WaitForResponse
  loc_E9357A: Call 0.Method_Proc_344_1_E935880 (var_D0, 10000)
  loc_E93582: var_88 = var_D0
  loc_E93585: Exit Sub
End Sub

Public Sub Proc_344_2_E5B210
  'Data Table: 41B4C0
  Dim var_90 As Long
  Dim var_86 As Integer
  loc_E5B1DC: var_90 = InternetGetConnectedState(var_8C)
  loc_E5B1E8: If (var_90 = 0) Then
  loc_E5B1ED:   var_86 = 0
  loc_E5B1F3: Else
  loc_E5B1FC:   If (var_90 <= 4) Then
  loc_E5B201:     var_86 = &HFF
  loc_E5B207:   Else
  loc_E5B209:     var_86 = 0
  loc_E5B20C:   End If
  loc_E5B20C: End If
  loc_E5B20C: Result var_86 End Sub 'Integer
End Sub
