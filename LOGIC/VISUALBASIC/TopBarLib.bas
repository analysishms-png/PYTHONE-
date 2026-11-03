
Public Sub Proc_5_0_110649C(arg_C) '110649C
  'Data Table: 41B714
  Dim var_8C As Integer
  Dim Me As Recordset15
  Dim var_A4 As Boolean
  Dim var_C4 As Variant
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim var_CC As String
  Dim var_E4 As Variant
  loc_1106160: On Error Goto loc_110643F
  loc_1106166: var_8C = arg_18
  loc_110616F: If (var_8C = 1) Then
  loc_1106183:   If (Me.Recordset15.BOF = 0) Then
  loc_1106189:     Me.Recordset15.MoveFirst
  loc_110618E:   End If
  loc_1106191: Else
  loc_1106197:   If (var_8C = 2) Then
  loc_11061AB:     If (Me.Recordset15.BOF = 0) Then
  loc_11061B1:       Me.Recordset15.MovePrevious
  loc_11061B6:     End If
  loc_11061B9:   Else
  loc_11061BF:     If (var_8C = 3) Then
  loc_11061D3:       If (Me.Recordset15.EOF = 0) Then
  loc_11061D9:         Me.Recordset15.MoveNext
  loc_11061DE:       End If
  loc_11061E1:     Else
  loc_11061E7:       If (var_8C = 4) Then
  loc_11061FB:         If (Me.Recordset15.EOF = 0) Then
  loc_1106201:           Me.Recordset15.MoveLast
  loc_1106206:         End If
  loc_1106206:       End If
  loc_1106206:     End If
  loc_1106206:   End If
  loc_1106206: End If
  loc_110621F: If ((Me.RecordCount <= 0) Or Not(arg_C)) Then
  loc_110622F:   Me.TopCtrl1.tFirst = False
  loc_1106243:   Me.TopCtrl1.tPrev = False
  loc_110624A:   var_A4 = False
  loc_1106252:   var_C4 = Me.TopCtrl1
  loc_1106257:   var_C4.tNext = var_A4
  loc_110626B:   Me.TopCtrl1.tLast = False
  loc_110627F:   Me.TopCtrl1.tFind = False
  loc_1106293:   Me.TopCtrl1.tDel = False
  loc_11062A7:   Me.TopCtrl1.tEdit = False
  loc_11062BB:   Me.TopCtrl1.tPrn = False
  loc_11062C5: Else
  loc_11062E8:   If (Me.BOF Or (Me.Recordset15.AbsolutePosition = 1)) Then
  loc_11062ED:     var_88 = 0
  loc_11062F3:   Else
  loc_11062F5:     var_88 = &HFF
  loc_11062F8:   End If
  loc_1106324:   If (Me.Recordset15.EOF Or (Me.Recordset15.AbsolutePosition = Me.Recordset15.RecordCount)) Then
  loc_1106329:     var_8A = 0
  loc_110632F:   Else
  loc_1106331:     var_8A = &HFF
  loc_1106334:   End If
  loc_1106344:   Me.TopCtrl1.tFirst = var_88
  loc_110635F:   Me.TopCtrl1.tPrev = var_88
  loc_110636D:   var_A4 = var_8A
  loc_1106375:   var_C4 = Me.TopCtrl1
  loc_110637A:   var_C4.tNext = var_A4
  loc_1106395:   Me.TopCtrl1.tLast = var_8A
  loc_11063A0: End If
  loc_11063B4: If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_11063F1:   Me.TopCtrl1.TopText1 = CVar(CStr(Me.Recordset15.AbsolutePosition) & "/" & CStr(Me.Recordset15.RecordCount))
  loc_1106408: Else
  loc_1106411:   var_94 = Me.RecordCount
  loc_110641B:   var_CC = CStr(var_94)
  loc_1106426:   var_E4 = Me.TopCtrl1
  loc_110642B:   var_E4.TopText1 = CVar("0/" & var_CC)
  loc_1106439: End If
  loc_110643E: Result &HFF End Sub 'Integer
  loc_110643F: ' Referenced from: 1106160
  loc_1106447: Set var_E8 = Err()
  loc_110644D: Call 0.Method_arg_1C (var_94, var_8A, var_8A)
  loc_110645E: If (var_94 > 0) Then
  loc_1106477:   Set var_E8 = Err()
  loc_110647D:   Call 0.Method_arg_2C (var_CC, 0, var_E4, var_F8)
  loc_1106488:   MsgBox(CVar(var_CC), var_118, var_88, var_88, var_8C)
  loc_110649B: End If
  loc_110649B: Result  End Sub 'Integer
End Sub

Public Sub Proc_5_1_100CB50(arg_C, arg_10, arg_14) '100CB50
  'Data Table: 41B714
  Dim var_8E As Integer
  Dim var_CC As Variant
  Dim var_86 As Integer
  loc_100C950: On Error Goto loc_100CADC
  loc_100C956: var_98 = arg_C
  loc_100C961: If (var_98 = "ADD") Then
  loc_100C96E:   var_8E = Proc_5_2_1067474(0)
  loc_100C986:   var_8E = Proc_5_0_110649C(0, arg_10, arg_14)
  loc_100C997:   Me.TopCtrl1.TopText2 = "Add"
  loc_100C9A0:   var_86 = &HFF
  loc_100C9A6: Else
  loc_100C9AE:   If (var_98 = "EDIT") Then
  loc_100C9BB:     var_8E = Proc_5_2_1067474(0, arg_10, var_86, var_8E)
  loc_100C9D3:     var_8E = Proc_5_0_110649C(0, arg_10, arg_14, 0)
  loc_100C9E4:     Me.TopCtrl1.TopText2 = "Edit"
  loc_100C9ED:     var_86 = &HFF
  loc_100C9F3:   Else
  loc_100C9FB:     If (var_98 = "INI") Then
  loc_100CA06:       VarLateMemLdRfVar
  loc_100CA28:       If (Trim(Me.TopCtrl1) = "Browse") Then
  loc_100CA39:         var_CC = CVar(Form.ActiveControl) 'Address
  loc_100CA41:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_100CA49:         ' Referenced from:     100CB4B
  loc_100CA49:       End If
  loc_100CA53:       var_8E = Proc_5_2_1067474(&HFF, arg_10, var_CC, var_86, var_8E)
  loc_100CA6B:       var_8E = Proc_5_0_110649C(&HFF, arg_10, arg_14, 0, var_8E)
  loc_100CA7C:       Me.TopCtrl1.TopText2 = "Browse"
  loc_100CA85:       var_86 = 0
  loc_100CAC5:       If CBool((Me.TopCtrl1.Visible = True) And (Me.TopCtrl1.Enabled = True)) Then
  loc_100CAD2:         Call Me.TopCtrl1.SetFocus
  loc_100CADB:       End If
  loc_100CADB:     End If
  loc_100CADB:   End If
  loc_100CADB: End If
  loc_100CADB: Result var_86 End Sub 'Integer
  loc_100CADC: ' Referenced from: 100C950
  loc_100CB1A: If CBool((IsEmpty(MemVar_1F92E80) = 0) And (Trim(MemVar_1F92E80) <> vbNullString)) Then
  loc_100CB2C:   Me.TopCtrl1.Tag = CVar(MemVar_1F92E80)
  loc_100CB36: Else
  loc_100CB44:   Me.TopCtrl1.Tag = "AEDP"
  loc_100CB4B: End If
  loc_100CB4B: GoTo loc_100CA49
  loc_100CB4E: Result var_8E End Sub 'Integer
End Sub

Public Sub Proc_5_2_1067474(arg_C) '1067474
  'Data Table: 41B714
  loc_10671EA: If (arg_C = &HFF) Then
  loc_106721F:   If CBool(InStr(1, Me.TopCtrl1.Tag, "A", 0) <> 0) Then
  loc_1067232:     Me.TopCtrl1.tAdd = arg_C
  loc_1067240:   Else
  loc_1067251:     Me.TopCtrl1.tAdd = Not(arg_C)
  loc_106725C:   End If
  loc_106728E:   If CBool(InStr(1, Me.TopCtrl1.Tag, "E", 0) <> 0) Then
  loc_10672A1:     Me.TopCtrl1.tEdit = arg_C
  loc_10672AF:   Else
  loc_10672C0:     Me.TopCtrl1.tEdit = Not(arg_C)
  loc_10672CB:   End If
  loc_10672FD:   If CBool(InStr(1, Me.TopCtrl1.Tag, "D", 0) <> 0) Then
  loc_1067310:     Me.TopCtrl1.tDel = arg_C
  loc_106731E:   Else
  loc_106732F:     Me.TopCtrl1.tDel = Not(arg_C)
  loc_106733A:   End If
  loc_106736C:   If CBool(InStr(1, Me.TopCtrl1.Tag, "P", 0) <> 0) Then
  loc_106737F:     Me.TopCtrl1.tPrn = arg_C
  loc_106738D:   Else
  loc_106739E:     Me.TopCtrl1.tPrn = Not(arg_C)
  loc_10673A9:   End If
  loc_10673AC: Else
  loc_10673BC:   Me.TopCtrl1.tAdd = arg_C
  loc_10673D7:   Me.TopCtrl1.tEdit = arg_C
  loc_10673F2:   Me.TopCtrl1.tDel = arg_C
  loc_106740D:   Me.TopCtrl1.tPrn = arg_C
  loc_1067418: End If
  loc_1067428: Me.TopCtrl1.tFind = arg_C
  loc_1067444: Me.TopCtrl1.tSave = Not(arg_C)
  loc_1067460: Me.TopCtrl1.tCancel = Not(arg_C)
  loc_1067470: Result &HFF End Sub 'Integer
  loc_1067471:  = arg_3200
End Sub
