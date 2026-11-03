
Public Sub Proc_142_0_F96C2C
  'Data Table: 41B824
  Dim var_B4 As Variant
  Dim var_8C As TextBox
  Dim var_C4 As Variant
  Dim var_96 As Integer
  Dim var_86 As Integer
  loc_F96AD0: On Error Goto loc_F96C26
  loc_F96ADD: If Not(TypeOf arg_10 Is arg_0) Then
  loc_F96AE2:   Result  End Sub 'Integer
  loc_F96AE3: End If
  loc_F96AE8: var_B4 = Me.Picture
  loc_F96AF1: Set var_8C = var_B4
  loc_F96B03: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF4C
  loc_F96B16: If ( Or (CLng((var_8C Is Nothing)) = 0)) Then
  loc_F96B22:   var_C4 = Null
  loc_F96B2A:   LateMemCallSt
  loc_F96B35:   Call Me.Update
  loc_F96B3D:   Result Me End Sub 'Integer
  loc_F96B3E: End If
  loc_F96B54: If (Proc_142_2_E8BD90(var_C4) = vbNullString) Then
  loc_F96B5C:   var_90 = "C:\"
  loc_F96B5F: End If
  loc_F96B68: var_94 = var_90 & "0X2341KLZX.jpg"
  loc_F96B7D: Me.Global.SavePicture var_8C
  loc_F96B8F: var_96 = FreeFile(var_B4)
  loc_F96B9F: Open var_94 For Binary As var_96 Len = &HFF
  loc_F96BBD: ReDim var_A0(0 To LOF(var_96))
  loc_F96BCF: Get var_96, , var_A0
  loc_F96BF0: Call Me.Fields.AppendChunk
  loc_F96BFE: Call Me.Update
  loc_F96C09: Close var_96
  loc_F96C0D: On Error Resume Next
  loc_F96C1A: Kill var_94
  loc_F96C23: var_86 = &HFF
  loc_F96C26: ' Referenced from: F96AD0
  loc_F96C28: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_142_1_F33768
  'Data Table: 41B824
  Dim var_96 As Integer
  Dim var_9C As Long
  Dim var_C4 As Variant
  loc_F3366C: On Error Goto loc_F33767
  loc_F33677: If Not(TypeOf arg_10 Is arg_0) Then
  loc_F3367A:   Result  End Sub 'Integer
  loc_F3367B: End If
  loc_F3368B: If (Proc_142_2_E8BD90() = vbNullString) Then
  loc_F33691:   var_90 = "C:\"
  loc_F33694: End If
  loc_F3369B: var_94 = var_90 & "0X2341KLZX.jpg"
  loc_F336A6: var_96 = FreeFile(var_C4)
  loc_F336B4: Open var_94 For Binary As var_96 Len = &HFF
  loc_F336D2: var_9C = CLng(LenB()))
  loc_F33714: Put var_96, , ).GetChunk
  loc_F3371B: Close var_96
  loc_F3373D: Me.Global.LoadPicture CVar(var_94), var_E4, var_F8, var_108, var_118
  loc_F3374D: Me.Picture = CVar(var_11C)
  loc_F3375C: Kill var_94
  loc_F33766: Result &HFF End Sub 'Integer
  loc_F33767: ' Referenced from: F3366C
  loc_F33767: Result var_11C End Sub 'Integer
End Sub

Public Sub Proc_142_2_E8BD90
  'Data Table: 41B824
  Dim var_90 As Long
  loc_E8BD3E: var_8C = CStr(String(&HFF, 0))
  loc_E8BD6B: var_90 = GetTempPath(&HFF, var_8C)
  loc_E8BD7A: If (var_90 = 0) Then
  loc_E8BD7D:   Exit Sub
  loc_E8BD7E: End If
  loc_E8BD89: var_88 = Left$(var_8C, var_90)
  loc_E8BD8C: Exit Sub
End Sub

Public Sub Proc_142_3_E97580
  'Data Table: 41B824
  Dim var_86 As Integer
  loc_E97508: On Error Goto loc_E9757F
  loc_E97517: Set var_8C = Me.Picture
  loc_E97527: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF60
  loc_E9753A: If ( Or (CLng((var_8C Is Nothing)) = 0)) Then
  loc_E9753D:   Result  End Sub 'Integer
  loc_E9753E: End If
  loc_E9754A: Call 0.Method_Proc_142_3_E975804 (arg_10)
  loc_E97552: If var_A2 Then
  loc_E9755D:   Kill arg_10
  loc_E97562: End If
  loc_E97572: Me.Global.SavePicture var_8C
  loc_E9757C: var_86 = &HFF
  loc_E9757F: ' Referenced from: E97508
  loc_E9757F: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_142_4_EF1B44(arg_C, arg_10, arg_14, arg_18, arg_1C) 'EF1B44
  'Data Table: 41B824
  Dim var_94 As Long
  Dim var_90 As Long
  Dim var_8C As Long
  Dim var_86 As Integer
  loc_EF1A78: On Error Goto loc_EF1B0C
  loc_EF1A88: var_94 = GetWindowLong(arg_C, -20)
  loc_EF1A8F: var_90 = var_94
  loc_EF1A9F: If (var_8C <> (var_8C Or &H80000)) Then
  loc_EF1AB9:   SetWindowLong(arg_C, -20, (var_8C Or &H80000))
  loc_EF1ABF: End If
  loc_EF1AF3: var_94 = SetLayeredWindowAttributes(arg_C, arg_10, arg_14, CLng(IIf(arg_18, 3, 1)))
  loc_EF1B00: var_86 = (var_94 <> 0)
  loc_EF1B0C: ' Referenced from: EF1A78
  loc_EF1B14: Set var_F8 = Err()
  loc_EF1B1A: Call 0.Method_arg_1C (var_94, var_86, var_94)
  loc_EF1B2C: If Not((var_94 = 0)) Then
  loc_EF1B34:   Set var_F8 = Err()
  loc_EF1B3A:   VCallFPR8
  loc_EF1B40: End If
  loc_EF1B40: Result var_F8 End Sub 'Integer
End Sub

Public Sub Proc_142_5_E8C258
  'Data Table: 41B824
  Dim var_86 As Integer
  loc_E8C1E3: If (arg_10 And arg_14) Then
  loc_E8C203:   var_86 = Proc_142_4_EF1B44(Form.hWnd, arg_1C)
  loc_E8C209: Else
  loc_E8C20C:   If arg_10 Then
  loc_E8C22E:     var_86 = Proc_142_4_EF1B44(Form.hWnd, 0, CByte(arg_18), &HFF)
  loc_E8C234:   Else
  loc_E8C253:     var_86 = Proc_142_4_EF1B44(Form.hWnd, 0, CByte(255), &HFF)
  loc_E8C256:   End If
  loc_E8C256: End If
  loc_E8C256: Exit Sub
End Sub
