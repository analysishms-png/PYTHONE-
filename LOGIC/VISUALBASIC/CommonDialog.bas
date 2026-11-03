
Public Sub Proc_349_0_F00984(arg_C) 'F00984
  'Data Table: 41B55C
  loc_F008F0: DestructOFrame
  loc_F00913: Proc_349_2_FF6350(var_128, arg_C, vbNullString)
  loc_F0091E: AssignRecord
  loc_F00940: var_D4 = arg_0
  loc_F00948: var_174 = "": Set arg_0 = Null 'Destruct battery of vars and single variable
  loc_F0094E: If CBool(GetOpenFileName(Record Of arg_0)) Then
  loc_F0097B:   var_88 = Left$(var_B8, (InStr(1, var_B8, Chr$(0), 0) - 1))
  loc_F00981: End If
  loc_F00981: Exit Sub
End Sub

Public Sub Proc_349_1_EFD0EC(arg_C, arg_10) 'EFD0EC
  'Data Table: 41B55C
  loc_EFD060: DestructOFrame
  loc_EFD07D: Proc_349_2_FF6350(var_124, arg_C, arg_10)
  loc_EFD088: AssignRecord
  loc_EFD0A7: var_D4 = arg_0
  loc_EFD0AF: var_170 = "": Set arg_0 = Null 'Destruct battery of vars and single variable
  loc_EFD0B5: If CBool(GetOpenFileName(Record Of arg_0)) Then
  loc_EFD0E2:   var_88 = Left$(var_B8, (InStr(1, var_B8, Chr$(0), 0) - 1))
  loc_EFD0E8: End If
  loc_EFD0E8: Exit Sub
End Sub

Public Sub Proc_349_2_FF6350
  'Data Table: 41B55C
  Dim var_D8 As Long
  Dim var_FC As String
  Dim var_11C As Variant
  Dim var_134 As Long
  loc_FF6197: var_D8 = var_D0
  loc_FF619F: var_D8(0) = &H4C
  loc_FF61BB: For Each var_D4 In Me.Global.Forms
  loc_FF61C3:   Exit For
  loc_FF61CC: Next
  loc_FF61E2: var_D8(4) = Form.hWnd
  loc_FF61EC: Set var_D4 = Nothing
  loc_FF61FB: var_DC = Me.Global.App
  loc_FF620B: var_D8(8) = App.hInstance
  loc_FF6241: var_11C = CVar(Replace(arg_18, "|", CStr(Chr(0)), 1, -1, 0)) 'String
  loc_FF625C: var_D8(12) = CStr(var_11C & Chr(0))
  loc_FF6278: var_D8(32) = &H105
  loc_FF6282: var_D8(40) = &H105
  loc_FF629B: var_D8(36) = CStr(Space(&H104))
  loc_FF62A9: var_D8(44) = arg_10
  loc_FF62B1: var_D8(60) = arg_1C
  loc_FF62B9: var_134 = arg_20
  loc_FF62C5: If (var_134 = 0) Then
  loc_FF62CB:   var_D8(48) = "Open"
  loc_FF62E4:   var_D8(28) = CStr(Space(&H104))
  loc_FF62F4:   var_D8(52) = &H201004
  loc_FF62FC: Else
  loc_FF6305:   If (var_134 = 1) Then
  loc_FF630B:     var_D8(48) = "Save As"
  loc_FF6322:     var_FC = Space$((&H104 - Len(arg_14)))
  loc_FF6329:     var_D8(28) = arg_14 & CStr(Space(&H104))
  loc_FF633A:     var_D8(52) = &H200807
  loc_FF633F:   End If
  loc_FF633F: End If
  loc_FF6344: var_D8 = 0
  loc_FF6347: ExitProcFrameCb &H4CFF30
End Sub
