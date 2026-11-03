VERSION 5.00
Begin VB.Form FaAdjustDel
  Caption = "Adjustment Delete"
  BackColor = &HE6AC86&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaAdjustDel.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  LockControls = -1  'True
  Begin DataCombo TXT_ACCOUNT
    Left = 2370
    Top = 675
    Width = 4575
    Height = 360
    TabIndex = 0
  End
  Begin MSFlexGrid FG1
    Left = 15
    Top = 1155
    Width = 11535
    Height = 7140
    TabIndex = 1
  End
  Begin BtnEnh btndelete
    Left = 8880
    Top = 555
    Width = 1365
    Height = 570
    TabIndex = 4
  End
  Begin BtnEnh BTNEXIT
    Left = 10320
    Top = 555
    Width = 1365
    Height = 570
    TabIndex = 5
  End
  Begin BtnEnh BTNFILL
    Left = 7440
    Top = 555
    Width = 1365
    Height = 570
    TabIndex = 6
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -15
    Width = 180
    Height = 540
    TabIndex = 3
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "System"
      Size = 19.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label
    Caption = "Account Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 720
    Top = 705
    Width = 1380
    Height = 240
    TabIndex = 2
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FaAdjustDel"


Private Sub BtnDelete_UnknownEvent_9 '10E1588
  'Data Table: 425E90
  Dim var_A8 As Variant
  Dim var_C8 As Long
  Dim var_DC As String
  Dim unk_425E95 As Connection15
  Dim var_FC As Variant
  Dim var_12C As Variant
  Dim var_14C As Long
  Dim var_10C As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Long
  Dim var_1D4 As Variant
  Dim var_204 As Variant
  Dim var_224 As Long
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_1E0 As String
  loc_10E12E8: On Error Goto loc_10E1554
  loc_10E130A: If (CLng(Me.FG1.Rows) > 1) Then
  loc_10E130D:   var_A8 = 1
  loc_10E1316:   var_C8 = 2
  loc_10E1345:   If (CStr(Me.FG1.TextMatrix)) <> vbNullString) Then
  loc_10E137F:     If (MsgBox("Do You Want to Delete It ", &H124, "Delete Confirmation", var_FC, var_10C) = 6) Then
  loc_10E138B:       unk_425E95.BeginTrans var_110
  loc_10E13A3:       var_A8 = CVar(CLng(Me.FG1.Row)) 'Long
  loc_10E13A8:       var_C8 = &HA
  loc_10E13DA:       var_12C = CVar(CLng(Me.FG1.Row)) 'Long
  loc_10E13DF:       var_14C = 4
  loc_10E1411:       var_190 = CVar(CLng(Me.FG1.Row)) 'Long
  loc_10E1416:       var_1B0 = &HB
  loc_10E1429:       var_1D4 = Me.FG1.TextMatrix)
  loc_10E1448:       var_204 = CVar(CLng(Me.FG1.Row)) 'Long
  loc_10E144D:       var_224 = 8
  loc_10E1460:       var_248 = Me.FG1.TextMatrix)
  loc_10E1476:       var_268 = Me.TXT_ACCOUNT.BoundText
  loc_10E1493:       var_DC = CStr(Me.FG1.TextMatrix))
  loc_10E14BB:       var_1E0 = "Delete From LEDGERADJ Where DocId1='" & var_DC & "' AND V_SNo1=" & CStr(Me.FG1.TextMatrix)) & " AND DocId2='" & CStr(var_1D4)
  loc_10E14EF:       unk_425E95.Execute var_1E0 & "' AND V_SNo2=" & CStr(var_248) & " AND SubCode='" & CStr(var_268) & "'", var_298, -1
  loc_10E1549:       unk_425E95.CommitTrans
  loc_10E154E:     End If
  loc_10E154E:   End If
  loc_10E154E: End If
  loc_10E154E: Call BTNFILL_UnknownEvent_9()
  loc_10E1553: Exit Sub
  loc_10E1554: ' Referenced from: 10E12E8
  loc_10E155A: unk_425E95.RollbackTrans
  loc_10E1565: Call 0.Method_arg_50 (var_DC, var_29C, var_268, var_248, var_224, var_204, var_1D4)
  loc_10E157A: Proc_183_57_104AA84(var_DC, "BTNDELETE_Click", var_1B0, var_190)
  loc_10E1586: Exit Sub
End Sub

Private Sub Form_Load() '1052E80
  'Data Table: 425E90
  Dim var_A8 As Variant
  Dim var_8C As Variant
  Dim var_C8 As Variant
  loc_1052C10: On Error Goto loc_1052E56
  loc_1052C1D: var_94 = "SUBCODE"
  loc_1052C38: var_88 = "SELECT NAME,SUBCODE FROM SUBGROUP ORDER BY NAME"
  loc_1052C3E: Proc_183_43_EF7D54(var_88, Me.TXT_ACCOUNT)
  loc_1052C5F: Proc_183_47_EA0858(Me, "NAME")
  loc_1052C6E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1052C86: Me.FG1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1052C97: Set var_8C = Me.btndelete
  loc_1052C9D: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_1052CB3: Me.TXT_ACCOUNT.Enabled = True
  loc_1052CBB: var_A8 = 2
  loc_1052CCA: var_C8 = CVar(CInt(1)) 'Integer
  loc_1052CD2: Set var_8C = Me.FG1
  loc_1052CD8: LateIdCallSt
  loc_1052CE3: var_A8 = 4
  loc_1052CF2: var_C8 = CVar(CInt(1)) 'Integer
  loc_1052CFA: Set var_8C = Me.FG1
  loc_1052D00: LateIdCallSt
  loc_1052D0B: var_A8 = 6
  loc_1052D1A: var_C8 = CVar(CInt(1)) 'Integer
  loc_1052D22: Set var_8C = Me.FG1
  loc_1052D28: LateIdCallSt
  loc_1052D33: var_A8 = 8
  loc_1052D42: var_C8 = CVar(CInt(1)) 'Integer
  loc_1052D4A: Set var_8C = Me.FG1
  loc_1052D50: LateIdCallSt
  loc_1052D5B: var_A8 = 9
  loc_1052D6A: var_C8 = CVar(CInt(7)) 'Integer
  loc_1052D72: Set var_8C = Me.FG1
  loc_1052D78: LateIdCallSt
  loc_1052D83: var_A8 = 3
  loc_1052D8C: var_C8 = 0
  loc_1052D99: Set var_8C = Me.FG1
  loc_1052D9F: LateIdCallSt
  loc_1052DAA: var_A8 = 7
  loc_1052DB3: var_C8 = 0
  loc_1052DC0: Set var_8C = Me.FG1
  loc_1052DC6: LateIdCallSt
  loc_1052DD1: var_A8 = &HA
  loc_1052DDA: var_C8 = 0
  loc_1052DE7: Set var_8C = Me.FG1
  loc_1052DED: LateIdCallSt
  loc_1052DF8: var_A8 = &HB
  loc_1052E01: var_C8 = 0
  loc_1052E0E: Set var_8C = Me.FG1
  loc_1052E14: LateIdCallSt
  loc_1052E32: Me.FG1.Left = CVar(CDbl(500))
  loc_1052E3E: var_A8 = CVar(CDbl(1250)) 'Single
  loc_1052E47: Set var_8C = Me.FG1
  loc_1052E4D: var_8C.Top = var_A8
  loc_1052E55: Exit Sub
  loc_1052E56: ' Referenced from: 1052C10
  loc_1052E5C: Call 0.Method_arg_50 (var_88, var_8C, var_C8, var_A8, var_8C, var_C8, var_A8)
  loc_1052E71: Proc_183_57_104AA84(var_88, "Form_Load", var_8C, var_C8, var_A8)
  loc_1052E7D: Exit Sub
End Sub

Private Sub Form_Resize() 'E6FE28
  'Data Table: 425E90
  loc_E6FDD2: Call 0.Method_arg_50 (var_88)
  loc_E6FDE4: Me.LblFormCaption.Caption = var_88
  loc_E6FDFD: Me.LblFormCaption.Left = CDbl(0)
  loc_E6FE0B: Call 0.Method_arg_100 (var_90)
  loc_E6FE1D: Me.LblFormCaption.Width = var_90
  loc_E6FE25: Exit Sub
  loc_E6FE26: CExtInstUnk
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E216EC
  'Data Table: 425E90
  loc_E216D2: If (KeyCode = &HD) Then
  loc_E216E3:   Proc_303_0_FB9B68("	")
  loc_E216EB: End If
  loc_E216EB: Exit Sub
End Sub

Private Sub btnExit_UnknownEvent_9 'E18D20
  'Data Table: 425E90
  loc_E18D15: Me.Global.Unload Me
  loc_E18D1D: Exit Sub
  loc_E18D1E: arg_1870 = 
End Sub

Private Sub BTNFILL_UnknownEvent_9 '12B163C
  'Data Table: 425E90
  Dim var_8C As Variant
  Dim var_A0 As String
  Dim var_B0 As Variant
  Dim unk_425E95 As Connection15
  Dim var_88 As Recordset15
  Dim var_E0 As Variant
  Dim var_118 As Integer
  Dim var_F8 As Variant
  Dim var_1F0 As Variant
  Dim var_348 As Variant
  Dim var_400 As Variant
  Dim var_518 As Variant
  Dim var_528 As Variant
  loc_12B111C: On Error Goto loc_12B1611
  loc_12B1142: If (CStr(Me.TXT_ACCOUNT.defText) <> vbNullString) Then
  loc_12B1158:   Me.FG1.Rows = 1
  loc_12B1182:   var_A0 = CStr(Me.TXT_ACCOUNT.BoundText)
  loc_12B11A4:   unk_425E95.Execute "SELECT * FROM LEDGERADJ WHERE SUBCODE='" & var_A0 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E0, -1
  loc_12B11AF:   Set var_88 = var_E4
  loc_12B11CD:   ' Referenced from: 12B1578
  loc_12B11DC:   If Not(var_88.EOF) Then
  loc_12B1284:     var_118 = 5
  loc_12B1291:     var_F8 = CVar(var_88.Fields.Item("DocID1")) 'Address
  loc_12B12F7:     var_1F0 = vbNullString & Chr(9) & Mid(var_F8, 4, var_118) & Chr(9) & Trim(Right(CVar(var_88.Fields.Item("DocID1")), 8)) & Chr(9) & vbNullString 
  loc_12B13A7:     var_348 = var_1F0 & Chr(9) & var_88.Fields.Item("V_SNo1").Value & Chr(9) & Mid(CVar(var_88.Fields.Item("DocID2")), 4, 5) & Chr(9) & Trim(Right(CVar(var_88.Fields.Item("DocID2")), 8)) 
  loc_12B141A:     var_400 = var_348 & Chr(9) & vbNullString & Chr(9) & var_88.Fields.Item("V_SNo2").Value & Chr(9) 
  loc_12B14C9:     var_518 = 1 & Format(CVar(var_88.Fields.Item("cr")), "0.00") & Chr(9) & var_88.Fields.Item("DocID1").Value & Chr(9) & var_88.Fields.Item("DocID2").Value 
  loc_12B14CE:     var_528 = CVar(CStr(var_518)) 'String
  loc_12B14D6:     Set var_53C = Me.FG1
  loc_12B1573:     var_88.MoveNext
  loc_12B1578:     GoTo loc_12B11CD
  loc_12B157B:   End If
  loc_12B159A:   If (CLng(Me.FG1.Rows) = 1) Then
  loc_12B15A3:     Call 0.Method_arg_50 (var_A0, FG1.DispID_10000, var_528)
  loc_12B15C4:     MsgBox("No Record Found to Fill", &H40, CVar(var_A0), var_F8, var_118)
  loc_12B15D4:     var_B0 = vbNullString
  loc_12B15DE:     Set var_8C = Me.FG1
  loc_12B15F2:   Else
  loc_12B15F2:     var_B0 = True
  loc_12B15FA:     Set var_8C = Me.btndelete
  loc_12B1600:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001000D(var_B0)
  loc_12B1608:   End If
  loc_12B1608: End If
  loc_12B160D: Set var_88 = Nothing
  loc_12B1610: Exit Sub
  loc_12B1611: ' Referenced from: 12B111C
  loc_12B1617: Call 0.Method_arg_50 (var_A0, FG1.DispID_10000, var_B0)
  loc_12B162C: Proc_183_57_104AA84(var_A0, "BTNFILL_Click", 1)
  loc_12B1638: Exit Sub
End Sub
