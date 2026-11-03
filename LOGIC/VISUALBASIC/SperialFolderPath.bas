
Public Sub Proc_345_0_6F004E
  'Data Table: 720066

End Sub

Public Sub Proc_345_1_610020
  'Data Table: 63006F

End Sub

Public Sub Proc_345_2_EB1880
  'Data Table: 41B3CC
  Dim var_A0 As String
  loc_EB17EF: var_88 = vbNullString
  loc_EB1818: If (CreateFieldDefFile(Form.hWnd, arg_10) = 0) Then
  loc_EB1825:   var_8C = Space$(&H104)
  loc_EB184E:   If CBool(CreateFieldDefFile(var_94, var_8C)) Then
  loc_EB1871:     var_A0 = Left$(var_8C, (InStr(1, var_8C, vbNullString, 0) - 1))
  loc_EB1878:     var_88 = var_8C & vbNullString
  loc_EB187E:   End If
  loc_EB187E: End If
  loc_EB187E: Exit Sub
End Sub
