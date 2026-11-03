VERSION 5.00
Begin VB.Form TelCallControlMast
  Caption = "Call Control Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8880
  ClientHeight = 6645
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 450
    Top = 3630
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin DataGrid DGHelp
    Left = 6480
    Top = 2205
    Width = 4410
    Height = 3150
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MSFlexGrid FGPoint
    Left = 6210
    Top = 645
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 4
  End
  Begin MSHFlexGrid FGrid
    Left = 0
    Top = 2160
    Width = 6045
    Height = 4275
    TabIndex = 1
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 1200
    Top = 750
    Width = 4215
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 510
    TabIndex = 6
  End
  Begin Label LblName
    Caption = "Name"
    Index = 0
    ForeColor = &H0&
    Left = 495
    Top = 765
    Width = 495
    Height = 240
    TabIndex = 3
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "TelCallControlMast"

Private global_64 As Integer
Private global_66 As Integer
Private MasterFormExit As Integer

Private Sub DGHelp_UnknownEvent_9 'F414A4
  'Data Table: 461634
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4139B: Me.DGHelp.Visible = False
  loc_F413BA: If (Me.RecordCount > 0) Then
  loc_F413F9:   Set var_B4 = Me.Txt
  loc_F413FF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F41407:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4143A:   var_B0 = Me.Fields.Item("Name")
  loc_F41459:   Set var_B4 = Me.Txt
  loc_F4145F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F41467:   var_B8.Text = CStr(var_B0.Value)
  loc_F4147D: End If
  loc_F41488: Set var_A8 = Me.Txt
  loc_F4148E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F41496: var_B0.SetFocus
  loc_F414A2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5E834
  'Data Table: 461634
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5E7FF: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5E812: Set var_A8 = Me.TxtGrid
  loc_E5E818: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5E820: var_AC.Visible = False
  loc_E5E82C: Call Proc_94_51_E85AC8()
  loc_E5E831: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E673C8
  'Data Table: 461634
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E67384: Set var_88 = Me.TxtGrid
  loc_E6738A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E673A4: If (var_8C.Visible = 0) Then
  loc_E673BD:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E673C5: End If
  loc_E673C5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1E690
  'Data Table: 461634
  loc_E1E687: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E68F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE8B4
  'Data Table: 461634
  loc_DFE8AC: Call Proc_94_46_E41170()
  loc_DFE8B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1037C94
  'Data Table: 461634
  Dim var_9C As String
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1037A50: Set var_88 = Me.TopCtrl1
  loc_1037A56: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1037A6F: If (CStr() = "Browse") Then
  loc_1037A72:   Exit Sub
  loc_1037A73: End If
  loc_1037AE7: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1037AFD:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1037B0D:   var_9C = "+{Tab}"
  loc_1037B13:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_1037B1D:   KeyCode = 0
  loc_1037B23: Else
  loc_1037B7A:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_1037B90:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1037B98:   End If
  loc_1037B98: End If
  loc_1037B9E: global_64 = KeyCode
  loc_1037BC4: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1037BE8: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_1037BFE:   var_EC = CLng(Me.FGrid.Col)
  loc_1037C0E:   If Not (var_EC = CLng(2)) Then
  loc_1037C18:     If Not (var_EC = CLng(3)) Then
  loc_1037C22:       If (var_EC = CLng(4)) Then
  loc_1037C25:       End If
  loc_1037C25:     End If
  loc_1037C38:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1037C50:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1037C55:     var_11C = vbNullString
  loc_1037C5F:     Set var_B4 = Me.FGrid
  loc_1037C65:     LateIdCallSt
  loc_1037C7D:   End If
  loc_1037C7D: End If
  loc_1037C83: If (KeyCode = &HD) Then
  loc_1037C8B:   global_66 = 0
  loc_1037C8E: End If
  loc_1037C90: KeyCode = 0
  loc_1037C93: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E14AE0
  'Data Table: 461634
  loc_E14AD1: Call FGrid_UnknownEvent_C()
  loc_E14ADB: global_66 = 0
  loc_E14ADE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '103655C
  'Data Table: 461634
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_C4 As Variant
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As MSHFlexGrid
  Dim var_11E As Integer
  Dim var_118 As TextBox
  loc_1036328: Set var_88 = Me.TopCtrl1
  loc_103632E: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1036347: If (CStr() = "Browse") Then
  loc_103634A:   Exit Sub
  loc_103634B: End If
  loc_103635E: var_A0 = CLng(Me.FGrid.Col)
  loc_103636E: If Not (var_A0 = CLng(2)) Then
  loc_1036378:   If Not (var_A0 = CLng(3)) Then
  loc_1036382:     If (var_A0 = CLng(4)) Then
  loc_1036385:     End If
  loc_1036385:   End If
  loc_1036398:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10363B0:   var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10363E7:   If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_10363EA:   End If
  loc_10363EE:   Set var_118 = Me.FGrid
  loc_1036412:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_1036445:   Set var_A4 = var_118
  loc_1036457:   Proc_6_134_112AEB4(Me, var_A4, Me.TxtGrid, 0, &HFF, Asc(var_9C))
  loc_1036483:   Set var_88 = Me.TxtGrid
  loc_1036489:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, 0)
  loc_1036491:   var_11E = var_A4.Text
  loc_10364AA:   If (Len(var_9C) <= 1) Then
  loc_10364B9:     Set var_88 = Me.TxtGrid
  loc_10364BF:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_10364C7:     var_E4 = var_A4.Text
  loc_10364D8:     Set var_F8 = Me.TxtGrid
  loc_10364DE:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_118, var_9C)
  loc_10364E6:     var_118.Text = var_C4
  loc_10364F9:   End If
  loc_1036505:   Set var_88 = Me.TxtGrid
  loc_103650B:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_1036525:   Set var_F8 = Me.TxtGrid
  loc_103652B:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_118)
  loc_1036533:   var_118.SelStart = Len(var_A4.Text)
  loc_1036546: End If
  loc_1036550: If (CLng(KeyCode) <> &HD) Then
  loc_1036558:   global_66 = &HFF
  loc_103655B: End If
  loc_103655B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '102E61C
  'Data Table: 461634
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  loc_102E3E8: Set var_90 = Me.TopCtrl1
  loc_102E3EE: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_102E407: If (CStr() = "Browse") Then
  loc_102E40A:   Exit Sub
  loc_102E40B: End If
  loc_102E428: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_102E42B:   Exit Sub
  loc_102E42C: End If
  loc_102E43D: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_102E45F:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_102E499:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_102E4BB:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_102E4D1:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102E4DA:         Set var_118 = Me.FGrid
  loc_102E4F5:       Else
  loc_102E508:         Me.FGrid.Rows = 1
  loc_102E525:         var_D4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_102E52D:         Set var_118 = Me.FGrid
  loc_102E55C:         Me.FGrid.FixedRows = 1
  loc_102E564:       End If
  loc_102E589:       For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_11C 'Integer
  loc_102E593:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_102E59B:         var_E4 = CVar(CLng(0)) 'Long
  loc_102E5A5:         var_A0 = CVar(CStr(var_86)) 'String
  loc_102E5AD:         Set var_90 = Me.FGrid
  loc_102E5B3:         LateIdCallSt
  loc_102E5C4:       Next var_11C 'Integer
  loc_102E5C9:     End If
  loc_102E5CC:   Else
  loc_102E5ED:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_102E5FD:   End If
  loc_102E601:   Set var_90 = Me.FGrid
  loc_102E612: End If
  loc_102E617: Set var_8C = Nothing
  loc_102E61A: Exit Sub
  loc_102E61B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1DEC0
  'Data Table: 461634
  loc_E1DEB7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1DEBF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1D240
  'Data Table: 461634
  loc_E1D237: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D23F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E416EC
  'Data Table: 461634
  Dim var_8C As TextBox
  loc_E416C0: Call Proc_94_51_E85AC8()
  loc_E416D0: Set var_88 = Me.TxtGrid
  loc_E416D6: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E416DE: var_8C.Visible = False
  loc_E416EA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E7EEDC
  'Data Table: 461634
  Dim var_94 As TextBox
  loc_E7EE78: On Error Goto loc_E7EED4
  loc_E7EE9E: Call Proc_94_50_E8C924(Proc_5_1_100CB50("ADD", Me))
  loc_E7EEA9: Call Proc_94_48_F2045C(global_68)
  loc_E7EEB9: Set var_8C = Me.Txt
  loc_E7EEBF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_E7EEC7: var_94.SetFocus
  loc_E7EED3: Exit Sub
  loc_E7EED4: ' Referenced from: E7EE78
  loc_E7EED4: Proc_6_60_E62BC4(var_94)
  loc_E7EED9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9AA88
  'Data Table: 461634
  loc_E9AA10: On Error Goto loc_E9AA81
  loc_E9AA4A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9AA70:   Call Proc_94_50_E8C924(Proc_5_1_100CB50("INI", Me))
  loc_E9AA7B:   Call Proc_94_49_112A71C(global_68)
  loc_E9AA80: End If
  loc_E9AA80: Exit Sub
  loc_E9AA81: ' Referenced from: E9AA10
  loc_E9AA81: Proc_6_60_E62BC4()
  loc_E9AA86: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10D1BDC
  'Data Table: 461634
  Dim var_96 As Integer
  Dim unk_46164B As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10D190C: On Error Goto loc_10D1B83
  loc_10D1946: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10D194B:   var_96 = 0
  loc_10D1957:   unk_46164B.BeginTrans var_11C
  loc_10D195E:   var_96 = &HFF
  loc_10D1972:   var_94 = Me.Bookmark 'Variant
  loc_10D19BE:   var_F8 = "Delete From TelCallControl Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10D19CC:   unk_46164B.Execute CStr(var_F8), var_118, -1
  loc_10D1A17:   var_164 = 0
  loc_10D1A2A:   var_15C = 0
  loc_10D1A35:   var_158 = 0
  loc_10D1A48:   var_150 = 0
  loc_10D1A53:   var_14C = 0
  loc_10D1A66:   var_144 = 0
  loc_10D1AA6:   var_128 = "TelCallControl"
  loc_10D1AAF:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10D1ADD:   unk_46164B.CommitTrans
  loc_10D1AE4:   var_96 = 0
  loc_10D1AF2:   Me.Requery -1
  loc_10D1B02:   Me.Requery -1
  loc_10D1B22:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10D1B2F:     Me.Bookmark = var_94
  loc_10D1B37:   Else
  loc_10D1B4B:     If (Me.EOF = 0) Then
  loc_10D1B54:       Me.MoveLast
  loc_10D1B59:     End If
  loc_10D1B59:   End If
  loc_10D1B59:   Call Proc_94_49_112A71C(var_96, var_144, 0, var_14C, var_150)
  loc_10D1B7A:   Proc_5_0_110649C(&HFF, Me, global_68, 0)
  loc_10D1B82: End If
  loc_10D1B82: Exit Sub
  loc_10D1B83: ' Referenced from: 10D190C
  loc_10D1B89: If (var_96 = &HFF) Then
  loc_10D1B92:   unk_46164B.RollbackTrans
  loc_10D1B97: End If
  loc_10D1B9F: Set var_120 = Err()
  loc_10D1BA5: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10D1BC6: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10D1BD9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F5F830
  'Data Table: 461634
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F5F710: On Error Goto loc_F5F7EA
  loc_F5F72A: If (Me.RecordCount > 0) Then
  loc_F5F750:   Call Proc_94_50_E8C924(Proc_5_1_100CB50("EDIT", Me))
  loc_F5F769:   Set var_90 = Me.Txt
  loc_F5F76F:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F5F777:   var_8C = var_98.Tag
  loc_F5F782:   global_76 = var_8C
  loc_F5F79B:   Set var_90 = Me.Txt
  loc_F5F7A1:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F5F7A9:   var_98.SetFocus
  loc_F5F7B8: Else
  loc_F5F7D9:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F5F7E9: End If
  loc_F5F7E9: Exit Sub
  loc_F5F7EA: ' Referenced from: F5F710
  loc_F5F7F2: Set var_90 = Err()
  loc_F5F7F8: Call 0.Method_arg_2C (var_8C)
  loc_F5F819: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F5F82C: Exit Sub
  loc_F5F82F: global_68() = 
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16214
  'Data Table: 461634
  loc_E16209: Me.Global.Unload Me
  loc_E16211: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB4FD4
  'Data Table: 461634
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB4F44: On Error Goto loc_EB4FCE
  loc_EB4F5E: If (Me.RecordCount <= 0) Then
  loc_EB4F67:   var_B8 = "Information"
  loc_EB4F82:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB4F92:   Exit Sub
  loc_EB4F93: End If
  loc_EB4F96: MemVar_1F920E4 = "Select Distinct Code As SearchCode,CallType FROM TelCallType Order by CallType"
  loc_EB4FA0: MemVar_1F92120 = Me
  loc_EB4FAD: Proc_6_126_F1BCC0("2000")
  loc_EB4FC8: Call 0.Method_arg_2B0 (1)
  loc_EB4FCD: Exit Sub
  loc_EB4FCE: ' Referenced from: EB4F44
  loc_EB4FCE: Proc_6_60_E62BC4(var_B8)
  loc_EB4FD3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2E7B8
  'Data Table: 461634
  Dim var_4301 As Double
  loc_E2E7A8: Proc_5_0_110649C(&HFF, Me)
  loc_E2E7B0: Call Proc_94_49_112A71C(global_68)
  loc_E2E7B5: Exit Sub
  loc_E2E7B6: var_4301 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2C0B8
  'Data Table: 461634
  Dim var_4301 As Double
  loc_E2C0A8: Proc_5_0_110649C(&HFF, Me)
  loc_E2C0B0: Call Proc_94_49_112A71C(global_68)
  loc_E2C0B5: Exit Sub
  loc_E2C0B6: var_4301 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2E398
  'Data Table: 461634
  Dim var_4301 As Double
  loc_E2E388: Proc_5_0_110649C(&HFF, Me)
  loc_E2E390: Call Proc_94_49_112A71C(global_68)
  loc_E2E395: Exit Sub
  loc_E2E396: var_4301 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2E5D8
  'Data Table: 461634
  Dim var_4301 As Double
  loc_E2E5C8: Proc_5_0_110649C(&HFF, Me)
  loc_E2E5D0: Call Proc_94_49_112A71C(global_68)
  loc_E2E5D5: Exit Sub
  loc_E2E5D6: var_4301 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A838
  'Data Table: 461634
  Dim Me As Recordset15
  loc_E0A82F: Me.Requery -1
  loc_E0A834: Exit Sub
  loc_E0A835: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '11E94F8
  'Data Table: 461634
  Dim var_A8 As TextBox
  Dim unk_46164B As Connection15
  Dim var_B0 As String
  Dim var_FC As Variant
  Dim var_A4 As MSHFlexGrid
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_CC As Variant
  Dim var_158 As Variant
  Dim var_19C As Variant
  Dim var_1FC As Variant
  Dim var_2B4 As Double
  Dim var_124 As String
  Dim var_210 As String
  Dim Me As Recordset15
  loc_11E90EC: On Error Goto loc_11E94A6
  loc_11E90F3: var_86 = CByte(0) 'Byte
  loc_11E9102: Set var_A4 = Me.Txt
  loc_11E9108: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_11E9131: If (Proc_183_19_E8DAFC(var_A8, "Call Type") = 0) Then
  loc_11E913B:   Call Txt_GotFocus()
  loc_11E9140:   Exit Sub
  loc_11E9141: End If
  loc_11E9144: Call Proc_94_45_1096028(var_B2, CInt(0))
  loc_11E914F: If (var_B2 = &HFF) Then
  loc_11E9152:   Exit Sub
  loc_11E9153: End If
  loc_11E9161: Set var_A4 = Me.Txt
  loc_11E9167: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_11E917A: global_60 = var_A8.Tag
  loc_11E9191: unk_46164B.BeginTrans var_B8
  loc_11E919A: var_86 = CByte(1) 'Byte
  loc_11E91B5: var_B0 = "Delete From TelCallControl Where Code='" & global_60
  loc_11E91C5: unk_46164B.Execute var_B0 & "'", var_DC, -1
  loc_11E91F8: var_EC = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_11E9202: For var_11C = 1 To var_EC: var_9C = var_11C 'Variant
  loc_11E9216:   Set var_A4 = Me.Txt
  loc_11E921C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0)
  loc_11E9224:   var_FC = var_A8.Tag
  loc_11E923D:   var_CC = CVar(CLng(var_9C)) 'Long
  loc_11E9245:   var_FC = CVar(CLng(2)) 'Long
  loc_11E9265:   var_158 = CVar(CLng(var_9C)) 'Long
  loc_11E927C:   var_19C = Me.FGrid.TextMatrix)
  loc_11E92A4:   var_1FC = Me.FGrid.TextMatrix)
  loc_11E92B7:   var_2B4 = Val(CStr(var_1FC))
  loc_11E92BD:   var_22C = Date
  loc_11E92C8:   Proc_6_7_F25D88(var_23C, var_22C, var_2B4, CVar(CLng(4)), CVar(CLng(var_9C)), var_19C, CVar(CLng(3)))
  loc_11E92E8:   var_124 = "Insert Into TelCallControl(Code,SNo,FromTime,ToTime,PulseMultiplier,Site_Code,U_Name,U_EntDt,U_AE) Values ('" & var_B0 & "',"
  loc_11E9332:   var_210 = var_124 & CStr(Val(CStr(var_9C))) & ",'" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(var_19C) & "'," & CStr(var_2B4) & ",'"
  loc_11E936B:   unk_46164B.Execute CStr(CVar(var_210 & MemVar_1F92078 & "','" & MemVar_1F920C8 & "',") & var_23C & ",'A')"), var_2A0, -1
  loc_11E93C4: Next var_11C 'Variant
  loc_11E93D0: unk_46164B.CommitTrans
  loc_11E93D9: var_86 = CByte(0) 'Byte
  loc_11E93E8: Me.Requery -1
  loc_11E93F8: Me.Requery -1
  loc_11E9401: Set var_A4 = Me.DGHelp
  loc_11E943A: Me.Find "SearchCode='" & global_60 & "'", 0, 1
  loc_11E944A: Set var_A4 = Me.TopCtrl1
  loc_11E9450: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_CC)
  loc_11E9469: If (CStr(DGHelp.DispID_FFFF) = "Add") Then
  loc_11E946C:   Call TopCtrl1_UnknownEvent_A()
  loc_11E9471:   Exit Sub
  loc_11E9472: End If
  loc_11E9487: var_B0 = "INI"
  loc_11E9495: Call Proc_94_50_E8C924(Proc_5_1_100CB50(var_B0, Me))
  loc_11E94A0: Call Proc_94_49_112A71C(global_68)
  loc_11E94A5: Exit Sub
  loc_11E94A6: ' Referenced from: 11E90EC
  loc_11E94AF: If (CInt(var_86) = 1) Then
  loc_11E94B8:   unk_46164B.RollbackTrans
  loc_11E94BD: End If
  loc_11E94C5: Set var_A4 = Err()
  loc_11E94CB: Call 0.Method_arg_2C (var_B0)
  loc_11E94E4: MsgBox(CVar(var_B0), &H10, var_19C, var_1FC, var_22C)
  loc_11E94F7: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F9561C
  'Data Table: 461634
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F954C0: Call Proc_94_51_E85AC8()
  loc_F954D8: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_F954F3: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F954FC: Set var_BC = Me.FGrid
  loc_F95532: Set var_104 = Me.TxtGrid
  loc_F95538: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F95540: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_F95571: var_110 = CLng(Me.FGrid.Col)
  loc_F95581: If (var_110 = CLng(2)) Then
  loc_F95593:   Set var_A8 = Me.TxtGrid
  loc_F95599:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 5)
  loc_F955A1:   var_BC.MaxLength = var_110
  loc_F955B0: Else
  loc_F955B7:   If (var_110 = CLng(3)) Then
  loc_F955C9:     Set var_A8 = Me.TxtGrid
  loc_F955CF:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_F955D7:     var_BC.MaxLength = 5
  loc_F955E6:   Else
  loc_F955ED:     If (var_110 = CLng(4)) Then
  loc_F955FF:       Set var_A8 = Me.TxtGrid
  loc_F95605:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_F9560D:       var_BC.MaxLength = 6
  loc_F95619:     End If
  loc_F95619:   End If
  loc_F95619: End If
  loc_F95619: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10BE49C
  'Data Table: 461634
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_10BE1B8: On Error Goto loc_10BE496
  loc_10BE1C5: If (CLng(Shift) = &H1B) Then
  loc_10BE1D5:   Set var_88 = Me.TxtGrid
  loc_10BE1DB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_10BE1F5:   Set var_94 = Me.TxtGrid
  loc_10BE1FB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_10BE203:   var_98.Text = var_8C.Tag
  loc_10BE21F:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_10BE224:   Call Proc_94_51_E85AC8(arg_14)
  loc_10BE22D:   Set var_88 = Me.FGrid
  loc_10BE24A:   Set var_88 = Me.TxtGrid
  loc_10BE250:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_10BE258:   var_8C.Visible = False
  loc_10BE264:   Exit Sub
  loc_10BE265: End If
  loc_10BE278: var_AC = CLng(Me.FGrid.Col)
  loc_10BE288: If (var_AC = CLng(2)) Then
  loc_10BE2CB:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_66 = &HFF))) Then
  loc_10BE2D4:     Call Proc_94_47_130B6A8(KeyCode, var_AE)
  loc_10BE2DF:     If (var_AE = &HFF) Then
  loc_10BE325:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 4)
  loc_10BE335:     End If
  loc_10BE335:   End If
  loc_10BE338: Else
  loc_10BE33F:   If (var_AC = CLng(3)) Then
  loc_10BE382:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_66 = &HFF))) Then
  loc_10BE38B:       Call Proc_94_47_130B6A8(KeyCode, var_AE, 0, 3)
  loc_10BE396:       If (var_AE = &HFF) Then
  loc_10BE3CD:         Set var_8C = Me.TxtGrid
  loc_10BE3DC:         Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_66, 4)
  loc_10BE3EC:       End If
  loc_10BE3EC:     End If
  loc_10BE3EF:   Else
  loc_10BE3F6:     If (var_AC = CLng(4)) Then
  loc_10BE408:       Set var_88 = Me.TxtGrid
  loc_10BE40E:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 6, 0, 4)
  loc_10BE416:       var_8C.MaxLength = 0
  loc_10BE42C:       If (CLng(Shift) = &HD) Then
  loc_10BE435:         Call Proc_94_47_130B6A8(KeyCode, var_AE, 0)
  loc_10BE440:         If (var_AE = &HFF) Then
  loc_10BE486:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 4)
  loc_10BE496:         End If
  loc_10BE496:       End If
  loc_10BE496:       ' Referenced from: 10BE1B8
  loc_10BE496:     End If
  loc_10BE496:   End If
  loc_10BE496: End If
  loc_10BE496: Proc_6_60_E62BC4(0, 0, 0)
  loc_10BE49B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EE9C88
  'Data Table: 461634
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  loc_EE9BC7: Proc_6_58_E054C0(arg_10)
  loc_EE9BD8: If (KeyAscii = 0) Then
  loc_EE9BEE:   var_A0 = CLng(Me.FGrid.Col)
  loc_EE9BFE:   If Not (var_A0 = CLng(2)) Then
  loc_EE9C08:     If (var_A0 = CLng(3)) Then
  loc_EE9C0B:     End If
  loc_EE9C15:     Set var_8C = Me.TxtGrid
  loc_EE9C1B:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_EE9C36:     Proc_6_42_129A86C(var_A4, arg_10, 2)
  loc_EE9C45:   Else
  loc_EE9C4C:     If (var_A0 = CLng(4)) Then
  loc_EE9C59:       Set var_8C = Me.TxtGrid
  loc_EE9C5F:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, 2)
  loc_EE9C7A:       Proc_6_42_129A86C(var_A4, arg_10, 3)
  loc_EE9C86:     End If
  loc_EE9C86:   End If
  loc_EE9C86: End If
  loc_EE9C86: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E2D374
  'Data Table: 461634
  Dim var_9C As Long
  loc_E2D34C: On Error Goto loc_E2D36C
  loc_E2D362: var_9C = CLng(Me.FGrid.Col)
  loc_E2D36B: Exit Sub
  loc_E2D36C: ' Referenced from: E2D34C
  loc_E2D36C: Proc_6_60_E62BC4(var_9C)
  loc_E2D371: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E5B820
  'Data Table: 461634
  Dim arg_10 As Integer
  Dim var_A0 As Long
  loc_E5B7EC: If (Cancel = 0) Then
  loc_E5B7F5:   Call Proc_94_47_130B6A8(Cancel, var_88)
  loc_E5B7FE:   arg_10 = Not(var_88)
  loc_E5B801: End If
  loc_E5B814: var_A0 = CLng(Me.FGrid.Col)
  loc_E5B81D: Exit Sub
End Sub

Private Sub Form_Load() 'FDCA40
  'Data Table: 461634
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_88 As MSHFlexGrid
  loc_FDC864: On Error Goto loc_FDCA39
  loc_FDC87F: Proc_6_23_DFBA28(Me, 4035)
  loc_FDC891: Set var_88 = Me.TopCtrl1
  loc_FDC897: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_FDC8A5: Call 0.Method_arg_50 (var_B0)
  loc_FDC8B5: Set var_88 = Me.TopCtrl1
  loc_FDC8BB: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B0))
  loc_FDC8E2: Me.TopCtrl1.CursorLocation = 3
  loc_FDC918: CVarUnk
  loc_FDC91D: VerifyVarObj
  loc_FDC923: Set var_88 = Me.DGHelp
  loc_FDC929: LateIdStAd
  loc_FDC953: Me.DGHelp.CursorLocation = 3
  loc_FDC97B: elect Distinct Code As Code,CallType  as Name From TelCallType Order by CallType", CVar(MemVar_1F92044), 2 "Select Distinct Code as SearchCode From TelCallControl Order by Code", CVar(MemVar_1F92044), 2
  loc_FDC9A3: Call Proc_94_50_E8C924(Proc_5_1_100CB50("INI", Me, New, 3, -1), Me, New)
  loc_FDC9AE: Call Proc_94_44_105033C(3, -1)
  loc_FDC9B3: Call Proc_94_49_112A71C(7905)
  loc_FDC9CB: Me.FGrid.Left = CVar(CDbl(200))
  loc_FDC9E6: Me.FGrid.Top = CVar(CDbl(830))
  loc_FDC9F8: var_C0 = Me.FGrid.Top
  loc_FDCA07: Call 0.Method_Me8 (var_C4)
  loc_FDCA1A: var_9C = CVar(((var_C4 - CDbl(600)) - CDbl(var_C0))) 'Single
  loc_FDCA29: Me.FGrid.Height = CVar(CDbl(830))
  loc_FDCA38: Exit Sub
  loc_FDCA39: ' Referenced from: FDC864
  loc_FDCA39: Proc_6_60_E62BC4(var_C0)
  loc_FDCA3E: Exit Sub
End Sub

Private Sub Form_Resize() 'DFCD40
  'Data Table: 461634
  loc_DFCD3C: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E42A78
  'Data Table: 461634
  loc_E42A53: Set global_72 = Nothing
  loc_E42A65: Set global_68 = Nothing
  loc_E42A71: MasterFormExit = 0
  loc_E42A74: Exit Sub
End Sub

Private Sub Form_Activate() 'E46070
  'Data Table: 461634
  loc_E46040: On Error Goto loc_E4606A
  loc_E46047: Set var_88 = Me.TopCtrl1
  loc_E4604D: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E46062: If (CLng(CInt()) = &H2D) Then
  loc_E46065:   Call TopCtrl1_UnknownEvent_15()
  loc_E4606A:   ' Referenced from: E46040
  loc_E4606A: End If
  loc_E4606A: Proc_6_60_E62BC4()
  loc_E4606F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24F14
  'Data Table: 461634
  loc_E24EF9: If (MasterFormExit = &HFF) Then
  loc_E24F09:   Me.Global.Unload Me
  loc_E24F11: End If
  loc_E24F11: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29440
  'Data Table: 461634
  loc_E29418: On Error Goto loc_E29438
  loc_E2942F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E29437: Exit Sub
  loc_E29438: ' Referenced from: E29418
  loc_E29438: Proc_6_60_E62BC4(Shift)
  loc_E2943D: Exit Sub
  loc_E2943E: 0 = 
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EAB70C
  'Data Table: 461634
  Dim Me As Recordset15
  loc_EAB68A: Set var_88 = Me.Txt
  loc_EAB690: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EAB69E: Proc_6_74_E226B0(var_8C)
  loc_EAB6AA: Call Proc_94_51_E85AC8(var_8C)
  loc_EAB6BD: If (Index = CInt(0)) Then
  loc_EAB6D7:   If (Me.RecordCount > 0) Then
  loc_EAB6E5:     Set var_8C = Me.FGPoint
  loc_EAB6FD:     Proc_6_137_1193554(Me.DGHelp, global_72, Index)
  loc_EAB70B:   End If
  loc_EAB70B: End If
  loc_EAB70B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FEFD98
  'Data Table: 461634
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_90 As TextBox
  loc_FEFBBE: If (CLng(Shift) = &H1B) Then
  loc_FEFBC1:   Call Proc_94_51_E85AC8()
  loc_FEFBC6:   Exit Sub
  loc_FEFBC7: End If
  loc_FEFBD5: If (KeyCode = CInt(0)) Then
  loc_FEFBF0:   Set var_9C = Nothing
  loc_FEFBFB:   Set var_98 = Nothing
  loc_FEFC29:   Proc_6_69_134A198(Me.DGHelp, Me.Txt, KeyCode, global_72, Shift, 0)
  loc_FEFC96:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FEFC9D:     Set var_98 = Me.DGHelp
  loc_FEFCA4:     Set var_90 = Me.FGPoint
  loc_FEFCBC:     Proc_6_138_106D6F8(var_98, global_72, KeyCode, var_90, 1)
  loc_FEFCCA:   End If
  loc_FEFCD9:   Me.FGPoint.Visible = False
  loc_FEFCE1: End If
  loc_FEFCFD: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FEFD15:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FEFD1B:     Call Proc_94_45_1096028(var_92, var_98, var_9C)
  loc_FEFD26:     If (var_92 = &HFF) Then
  loc_FEFD36:       Set var_8C = Me.Txt
  loc_FEFD3C:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_FEFD44:       var_90.Text = 0
  loc_FEFD50:       Exit Sub
  loc_FEFD51:     End If
  loc_FEFD51:   End If
  loc_FEFD66:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FEFD6F:     Proc_6_75_E527CC(Shift, arg_14)
  loc_FEFD74:   End If
  loc_FEFD87:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FEFD90:     Proc_6_76_E52838(Shift, arg_14)
  loc_FEFD95:   End If
  loc_FEFD95: End If
  loc_FEFD95: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E257AC
  'Data Table: 461634
  Dim var_96 As Integer
  loc_E2578E: Proc_6_133_E7EF78(var_94)
  loc_E257A0: Proc_6_58_E054C0(CInt(var_94), CInt(var_94))
  loc_E257A8: var_96 = KeyAscii
  loc_E257AB: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EDD2A0
  'Data Table: 461634
  loc_EDD1FE: If (KeyCode = CInt(0)) Then
  loc_EDD21D:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EDD231:     var_A8 = "Name"
  loc_EDD259:     Proc_6_68_129FB34(Me.DGHelp, Me.Txt, CInt(0), global_72)
  loc_EDD26C:   End If
  loc_EDD28F:   Proc_6_138_106D6F8(Me.DGHelp, global_72, KeyCode, Me.FGPoint)
  loc_EDD29D: End If
  loc_EDD29D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4695C
  'Data Table: 461634
  loc_E4693A: Set var_88 = Me.Txt
  loc_E46940: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4694E: Proc_6_73_E22704(var_8C)
  loc_E4695A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10776EC
  'Data Table: 461634
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_BC As String
  Dim var_A8 As Variant
  Dim unk_46164B As Connection15
  Dim var_A4 As Recordset15
  Dim var_D8 As Field20
  Dim arg_10 As Integer
  loc_107746F: var_86 = Cancel
  loc_107747A: If (var_86 = CInt(0)) Then
  loc_10774B9:   Set var_A4 = Me.Txt
  loc_10774BF:   Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_10774C7:   var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10774FA:   var_A0 = Me.Fields.Item("Code")
  loc_1077502:   var_B8 = var_A0.Value
  loc_1077519:   Set var_A4 = Me.Txt
  loc_107751F:   Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_1077527:   var_A8.Tag = CStr(var_B8)
  loc_1077541:   Set var_8C = Me.TopCtrl1
  loc_1077547:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_107754F:   var_BC = CStr()
  loc_1077560:   If (var_BC = "Add") Then
  loc_1077590:     Set var_8C = Me.Txt
  loc_1077596:     Call 0.Method_Txt_Validate0 (CInt(0), var_A0, var_BC, "Select Count(*) From TelCallControl Where Code='", var_B8, -1)
  loc_10775B7:     unk_46164B.Execute var_A8 & var_BC & "'", 0, var_D8
  loc_10775BF:     var_E8 = var_A0.Tag.Fields
  loc_10775C7:      = var_A8.Item()
  loc_10775CF:      = var_D8.Value
  loc_10775FC:     If (var_E8 > 0) Then
  loc_1077618:       MsgBox("Duplicate Name", 0, var_E8, var_108, var_128)
  loc_1077628:       Exit Sub
  loc_1077629:     End If
  loc_1077629:   End If
  loc_1077634:   Set var_8C = Me.Txt
  loc_107763A:   Call 0.Method_Txt_Validate0 (CInt(0))
  loc_1077663:   If (Proc_6_27_EA565C(var_A0, "Name") = 0) Then
  loc_1077670:     Set var_8C = Me.Txt
  loc_1077676:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_107767E:     var_A0.SetFocus
  loc_107768C:     arg_10 = &HFF
  loc_107768F:     Exit Sub
  loc_1077690:   End If
  loc_1077694:   Set var_8C = Me.TopCtrl1
  loc_107769A:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_10776B3:   If (CStr(var_A0) = "Add") Then
  loc_10776B9:     Call Proc_94_45_1096028(var_12A)
  loc_10776C4:     If (var_12A = &HFF) Then
  loc_10776C9:       arg_10 = &HFF
  loc_10776CC:       Exit Sub
  loc_10776CD:     End If
  loc_10776CD:   End If
  loc_10776E0:   Me.FGrid.Col = 2
  loc_10776E8: End If
  loc_10776E8: Exit Sub
  loc_10776E9: If arg_10 Then Exit Sub
  loc_10776E9: End If
End Sub

Public Function MasterFormExitGet() '461F50
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '461F5F
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E949A8
  'Data Table: 461634
  Dim Me As Recordset15
  loc_E94936: On Error Goto loc_E9499F
  loc_E9493F: Me.MoveFirst
  loc_E94969: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94991: Proc_5_0_110649C(&HFF, Me, global_68)
  loc_E94999: Call Proc_94_49_112A71C(0)
  loc_E9499E: Exit Sub
  loc_E9499F: ' Referenced from: E94936
  loc_E9499F: Proc_6_60_E62BC4(var_A0)
  loc_E949A4: Exit Sub
End Sub

Public Sub Proc_94_44_105033C
  'Data Table: 461634
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_10500DC: On Error Goto loc_1050336
  loc_10500ED: Set var_88 = Me.Txt
  loc_10500F3: Call 0.Method_Proc_94_44_105033C0 (CInt(0), var_8C)
  loc_1050112: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_105012E: Set var_B4 = Me.Txt
  loc_1050134: Call 0.Method_Proc_94_44_105033C0 (CInt(0), var_B8)
  loc_105014F: Set var_88 = Me.Txt
  loc_1050155: Call 0.Method_Proc_94_44_105033C0 (CInt(0), var_8C)
  loc_105016D: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_105017C: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_1050192: Set var_C4 = Me.FGrid
  loc_10501A1: var_C4.Cols = 5
  loc_10501BA: global_56 = CStr(CLng(var_C4.BackColor))
  loc_10501C7: var_A0 = CVar(CLng(1)) 'Long
  loc_10501CC: var_E8 = 0
  loc_10501D8: LateIdCallSt
  loc_10501E3: var_A0 = CVar(CLng(0)) 'Long
  loc_10501E8: var_E8 = &H1F4
  loc_10501F4: LateIdCallSt
  loc_10501FC: var_A0 = 0
  loc_1050208: var_E8 = CVar(CLng(0)) 'Long
  loc_105020D: var_108 = "S.No"
  loc_1050216: LateIdCallSt
  loc_1050221: var_A0 = CVar(CLng(2)) 'Long
  loc_1050226: var_E8 = &H3E8
  loc_1050232: LateIdCallSt
  loc_105023D: var_A0 = CVar(CLng(3)) 'Long
  loc_1050248: var_E8 = CVar(CInt(7)) 'Integer
  loc_105024F: LateIdCallSt
  loc_1050257: var_A0 = 0
  loc_1050263: var_E8 = CVar(CLng(2)) 'Long
  loc_1050268: var_108 = "From Time"
  loc_1050271: LateIdCallSt
  loc_105027C: var_A0 = CVar(CLng(3)) 'Long
  loc_1050281: var_E8 = &H3E8
  loc_105028D: LateIdCallSt
  loc_1050298: var_A0 = CVar(CLng(3)) 'Long
  loc_10502A3: var_E8 = CVar(CInt(7)) 'Integer
  loc_10502AA: LateIdCallSt
  loc_10502B2: var_A0 = 0
  loc_10502BE: var_E8 = CVar(CLng(3)) 'Long
  loc_10502C3: var_108 = "To Time"
  loc_10502CC: LateIdCallSt
  loc_10502D7: var_A0 = CVar(CLng(4)) 'Long
  loc_10502DC: var_E8 = &H5DC
  loc_10502E8: LateIdCallSt
  loc_10502F3: var_A0 = CVar(CLng(4)) 'Long
  loc_10502FE: var_E8 = CVar(CInt(7)) 'Integer
  loc_1050305: LateIdCallSt
  loc_105030D: var_A0 = 0
  loc_1050319: var_E8 = CVar(CLng(4)) 'Long
  loc_105031E: var_108 = "Pulse Multiplier"
  loc_1050327: LateIdCallSt
  loc_1050331: Set var_C4 = Nothing 
  loc_1050335: Exit Sub
  loc_1050336: ' Referenced from: 10500DC
  loc_1050336: Proc_6_60_E62BC4(var_C4, var_108, var_E8, var_A0, var_C4, var_E8, var_A0, var_C4)
  loc_105033B: Exit Sub
End Sub

Public Sub Proc_94_45_1096028
  'Data Table: 461634
  Dim Me As Recordset15
  Dim var_B8 As TextBox
  Dim unk_46164B As Connection15
  Dim var_E0 As Fields15
  Dim var_F4 As Field20
  loc_1095DBC: If (Me.RecordCount = 0) Then
  loc_1095DBF:   Proc_94_45_1096028 = 0
  loc_1095DC5: End If
  loc_1095DC9: Set var_A0 = Me.TopCtrl1
  loc_1095DCF: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1095DE8: If (CStr() = "Add") Then
  loc_1095E26:   Set var_A0 = Me.Txt
  loc_1095E2C:   Call 0.Method_Proc_94_45_10960280 (CInt(0), var_B8, var_BC, "Select Count(*) From TelCallControl Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Code='", var_B0, -1)
  loc_1095E4D:   unk_46164B.Execute var_E0 & var_BC & "'", 0, var_F4
  loc_1095E5D:    = var_E0.Item()
  loc_1095E65:    = var_F4.Value
  loc_1095E96:   If (var_B8.Tag.Fields > 0) Then
  loc_1095EB4:     var_B0 = "Duplicate Name"
  loc_1095EBA:     MsgBox(var_B0, &H40, "Information", var_124, var_144)
  loc_1095ED5:     Set var_A0 = Me.Txt
  loc_1095EDB:     Call 0.Method_Proc_94_45_10960280 (CInt(0))
  loc_1095EE3:     var_B8.SetFocus
  loc_1095EF4:     Proc_94_45_1096028 = &HFF
  loc_1095EFA:   End If
  loc_1095EFD: Else
  loc_1095F38:   Set var_A0 = Me.Txt
  loc_1095F3E:   Call 0.Method_Proc_94_45_10960280 (CInt(0), var_B8, var_BC, "Select Count(*) From TelCallControl Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Code='", var_B0, -1)
  loc_1095F70:   unk_46164B.Execute var_E0 & var_BC & "' And Code <>'" & global_76 & "'", 0, var_F4
  loc_1095F80:    = var_E0.Item(var_B8)
  loc_1095F88:    = var_F4.Value
  loc_1095FBD:   If (var_B8.Tag.Fields > 0) Then
  loc_1095FE1:     MsgBox("Duplicate Name", &H40, "Information", var_124, var_144)
  loc_1095FFC:     Set var_A0 = Me.Txt
  loc_1096002:     Call 0.Method_Proc_94_45_10960280 (CInt(0))
  loc_109600A:     var_B8.SetFocus
  loc_109601B:     Proc_94_45_1096028 = &HFF
  loc_1096021:   End If
  loc_1096021: End If
  loc_1096021: Proc_94_45_1096028 = var_B8
End Sub

Public Sub Proc_94_46_E41170
  'Data Table: 461634
  loc_E4114C: Set var_88 = Me.TopCtrl1
  loc_E41152: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4116B: If (CStr() = "Browse") Then
  loc_E4116E:   Exit Sub
  loc_E4116F: End If
  loc_E4116F: Exit Sub
End Sub

Public Sub Proc_94_47_130B6A8
  'Data Table: 461634
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_EC As String
  Dim var_F4 As Double
  Dim var_C0 As MSHFlexGrid
  Dim var_134 As Variant
  Dim var_124 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_188 As Variant
  Dim var_104 As Variant
  Dim var_A8 As String
  Dim var_C8 As String
  Dim var_1C4 As Double
  loc_130AFAB: var_A0 = CLng(Me.FGrid.Col)
  loc_130AFBB: If Not (var_A0 = CLng(2)) Then
  loc_130AFC5:   If (var_A0 = CLng(3)) Then
  loc_130AFC8:   End If
  loc_130AFD4:   Set var_8C = Me.TxtGrid
  loc_130AFDA:   Call 0.Method_Proc_94_47_130B6A80 (0, var_A4)
  loc_130B012:   Set var_C0 = Me.TxtGrid
  loc_130B018:   Call 0.Method_Proc_94_47_130B6A80 (0, var_C4, var_C8)
  loc_130B020:   (CDbl(Val(CStr(Trim(CVar(var_A4.Text))))) < CDbl(0)) = var_C4.Text
  loc_130B062:   If (var_A0 Or (CDbl(Val(CStr(Trim(CVar(var_C8))))) > CDbl(&H18))) Then
  loc_130B076:     Set var_8C = Me.TxtGrid
  loc_130B07C:     Call 0.Method_Proc_94_47_130B6A80 (0, var_A4)
  loc_130B084:     var_A4.Text = vbNullString
  loc_130B099:     Set var_8C = Me.TxtGrid
  loc_130B09F:     Call 0.Method_Proc_94_47_130B6A80 (0, var_A4)
  loc_130B0A7:     var_A4.SetFocus
  loc_130B0B3:     Proc_94_47_130B6A8 = 0
  loc_130B0B9:   End If
  loc_130B0C5:   Set var_C0 = Me.TxtGrid
  loc_130B0CB:   Call 0.Method_Proc_94_47_130B6A80 (0, var_C4)
  loc_130B0E9:   var_EC = CStr(Trim(CVar(var_C4.Text)))
  loc_130B0F2:   var_F4 = Val(var_EC)
  loc_130B101:   Set var_8C = Me.TxtGrid
  loc_130B107:   Call 0.Method_Proc_94_47_130B6A80 (0, var_A4)
  loc_130B15C:   If (CDbl((Val(CStr(Trim(CVar(var_A4.Text)))) - Int(var_F4))) > 0.59) Then
  loc_130B170:     Set var_8C = Me.TxtGrid
  loc_130B176:     Call 0.Method_Proc_94_47_130B6A80 (0, var_A4, vbNullString)
  loc_130B17E:     var_A4.Text = 0
  loc_130B193:     Set var_8C = Me.TxtGrid
  loc_130B199:     Call 0.Method_Proc_94_47_130B6A80 (0, var_A4)
  loc_130B1A1:     var_A4.SetFocus
  loc_130B1AD:     Proc_94_47_130B6A8 = var_F4
  loc_130B1B3:   End If
  loc_130B1BF:   Set var_8C = Me.TxtGrid
  loc_130B1C5:   Call 0.Method_Proc_94_47_130B6A80 (0, var_A4)
  loc_130B1F0:   var_134 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130B208:   var_154 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_130B241:   Set var_188 = Me.FGrid
  loc_130B247:   LateIdCallSt
  loc_130B293:   Set var_188 = Me.FGrid
  loc_130B2AC:   var_F4 = Val(CStr(var_188.TextMatrix)))
  loc_130B2CC:   Set var_A4 = Me.FGrid
  loc_130B2FE:   var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_130B32E:   If (3 And (CDbl(Val(var_A8)) < CDbl(var_F4))) Then
  loc_130B342:     Set var_8C = Me.TxtGrid
  loc_130B348:     Call 0.Method_Proc_94_47_130B6A80 (0, var_A4, vbNullString, 0, CVar(CLng(var_A4.Row)), (CLng(Me.FGrid.Col) = 3), var_F4)
  loc_130B350:     var_A4.Text = 2
  loc_130B365:     Set var_8C = Me.TxtGrid
  loc_130B36B:     Call 0.Method_Proc_94_47_130B6A80 (0, var_A4, CVar(CLng(Me.FGrid.Row)), var_188)
  loc_130B373:     var_A4.SetFocus
  loc_130B37F:     Proc_94_47_130B6A8 = CVar(CStr(Format(CVar((Val(var_A4.Text) * CDbl(&H64))), "00:00")))
  loc_130B385:   End If
  loc_130B3AD:   For var_19C = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 2)): var_88 = var_19C 'Byte
  loc_130B3BD:     var_134 = 2
  loc_130B3E3:     var_F4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_130B403:     var_174 = Me.FGrid.TextMatrix)
  loc_130B416:     var_1C4 = Val(CStr(var_174))
  loc_130B425:     Set var_8C = Me.TxtGrid
  loc_130B42B:     Call 0.Method_Proc_94_47_130B6A80 (0, var_A4, var_A8, var_1C4, 3, CVar(CLng(var_88)), var_F4)
  loc_130B433:     var_134 = var_A4.Text
  loc_130B464:     Set var_C4 = Me.TxtGrid
  loc_130B46A:     Call 0.Method_Proc_94_47_130B6A80 (0, var_188, var_EC, (CDbl(Val(CStr(Trim(CVar(var_A8))))) > CDbl(var_F4)), CVar(CLng(var_88)))
  loc_130B472:     CByte(1) = var_188.Text
  loc_130B480:     var_124 = Trim(CVar(var_EC))
  loc_130B4DF:     If ((1 And (CDbl(Val(CStr(var_124))) < CDbl(var_1C4))) And (CLng(Me.FGrid.Row) <> CLng(var_88))) Then
  loc_130B4E2:       var_104 = 0
  loc_130B4FE:       var_134 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_130B53D:       MsgBox(CVar(CStr(Me.FGrid.TextMatrix)) & " Already included in the Range"), 0, "Information", var_124, var_174)
  loc_130B56E:       var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130B577:       Set var_A4 = Me.FGrid
  loc_130B586:       var_134 = CVar(CLng(var_A4.Col)) 'Long
  loc_130B58B:       var_154 = vbNullString
  loc_130B595:       Set var_C0 = Me.FGrid
  loc_130B59B:       LateIdCallSt
  loc_130B5B7:       Set var_8C = Me.FGrid
  loc_130B5C8:       Proc_94_47_130B6A8 = FGrid.DispID_8001
  loc_130B5CE:     End If
  loc_130B5D1:   Next var_19C 'Byte
  loc_130B5DA: Else
  loc_130B5E1:   If (var_A0 = CLng(4)) Then
  loc_130B5F0:     Set var_8C = Me.TxtGrid
  loc_130B5F6:     Call 0.Method_Proc_94_47_130B6A80 (0, var_A4)
  loc_130B621:     var_134 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130B639:     var_154 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_130B666:     var_174 = CVar(CStr(Format(CVar(Val(var_A4.Text)), "0.00"))) 'String
  loc_130B66E:     Set var_188 = Me.FGrid
  loc_130B674:     LateIdCallSt
  loc_130B69B:   End If
  loc_130B69B: End If
  loc_130B6A0: Proc_94_47_130B6A8 = &HFF
End Sub

Public Sub Proc_94_48_F2045C
  'Data Table: 461634
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F2035E: global_76 = vbNullString
  loc_F20370: Set var_8C = Me.Txt
  loc_F20376: Call 0.Method_Proc_94_48_F2045CC (var_8E, var_86)
  loc_F20386: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F2039C:   Set var_8C = Me.Txt
  loc_F203A2:   Call 0.Method_Proc_94_48_F2045C0 (CInt(var_86), var_98)
  loc_F203AA:   var_98.Text = vbNullString
  loc_F203C6:   Set var_8C = Me.Txt
  loc_F203CC:   Call 0.Method_Proc_94_48_F2045C0 (CInt(var_86), var_98)
  loc_F203D4:   var_98.Tag = vbNullString
  loc_F203E3: Next var_92 'Byte
  loc_F203FC: Me.FGrid.Rows = 1
  loc_F20419: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F20421: Set var_98 = Me.FGrid
  loc_F20450: Me.FGrid.FixedRows = 1
  loc_F20458: Exit Sub
End Sub

Public Sub Proc_94_49_112A71C
  'Data Table: 461634
  Dim var_8C As Integer
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim unk_46164B As Connection15
  Dim var_88 As Recordset15
  Dim var_134 As TextBox
  Dim var_118 As Variant
  Dim var_148 As Variant
  Dim var_128 As Variant
  loc_112A3BC: On Error Goto loc_112A713
  loc_112A3C1: var_8C = 1
  loc_112A3DB: If (Me.RecordCount > 0) Then
  loc_112A3EB:   var_D4 = "Select TelCallControl.*, TelCallType.CallType as Name From TelCallControl Left Join TelCallType On TelCallControl.Code=TelCallType.Code Where TelCallControl.Code='"
  loc_112A434:   unk_46164B.Execute CStr(var_D4 & Me.Fields.Item("SearchCode").Value & "'"), var_128, -1
  loc_112A43F:   Set var_88 = var_12C
  loc_112A46D:   If (var_88.RecordCount > 0) Then
  loc_112A470:     Call Proc_94_48_F2045C(var_12C)
  loc_112A475:     ' Referenced from: 112A6DA
  loc_112A484:     If Not(var_88.EOF) Then
  loc_112A4C0:       Set var_12C = Me.Txt
  loc_112A4C6:       Call 0.Method_Proc_94_49_112A71C0 (CInt(0), var_134)
  loc_112A4CE:       var_134.Tag = CStr(var_88.Fields.Item("Code").Value)
  loc_112A51A:       Set var_12C = Me.Txt
  loc_112A520:       Call 0.Method_Proc_94_49_112A71C0 (CInt(0), var_134)
  loc_112A528:       var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")))
  loc_112A540:       Set var_138 = Me.FGrid
  loc_112A543:       var_B0 = vbNullString
  loc_112A558:       var_D4 = CVar(CLng(var_8C)) 'Long
  loc_112A560:       var_118 = CVar(CLng(0)) 'Long
  loc_112A590:       var_E4 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_112A597:       LateIdCallSt
  loc_112A5E6:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FromTime")), CVar(CLng(2)), CVar(CLng(var_8C)), var_138, var_E4)) 'String
  loc_112A5ED:       LateIdCallSt
  loc_112A60B:       var_118 = CVar(CLng(3)) 'Long
  loc_112A638:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToTime")), var_118, CVar(CLng(var_8C)), var_138, var_E4)) 'String
  loc_112A63F:       LateIdCallSt
  loc_112A671:       var_F4 = CVar(CLng(var_8C)) 'Long
  loc_112A679:       var_148 = CVar(CLng(4)) 'Long
  loc_112A688:       var_D4 = "0.00"
  loc_112A68D:       var_E4 = var_D4
  loc_112A6A6:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("PulseMultiplier")), var_E4))) 'String
  loc_112A6AD:       LateIdCallSt
  loc_112A6C5:       Set var_138 = Nothing 
  loc_112A6CF:       var_8C = (var_8C + 1)
  loc_112A6D5:       var_88.MoveNext
  loc_112A6DA:       GoTo loc_112A475
  loc_112A6DD:     End If
  loc_112A6DF:     var_8C = 0
  loc_112A6F5:     Me.FGrid.FixedRows = 1
  loc_112A6FD:   End If
  loc_112A700: Else
  loc_112A700:   Call Proc_94_48_F2045C(var_8C, var_8C, var_138, var_128, 1, 1, var_148)
  loc_112A705: End If
  loc_112A705: Call Proc_94_51_E85AC8(var_F4, var_138, var_E4)
  loc_112A70F: Set var_88 = Nothing
  loc_112A712: Exit Sub
  loc_112A713: ' Referenced from: 112A3BC
  loc_112A713: Proc_6_60_E62BC4(var_118, var_D4)
  loc_112A718: Exit Sub
End Sub

Public Sub Proc_94_50_E8C924(arg_C) 'E8C924
  'Data Table: 461634
  Dim var_98 As TextBox
  loc_E8C8BA: Set var_8C = Me.Txt
  loc_E8C8C0: Call 0.Method_Proc_94_50_E8C924C (var_8E, var_86)
  loc_E8C8D0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E8C8E6:   Set var_8C = Me.Txt
  loc_E8C8EC:   Call 0.Method_Proc_94_50_E8C9240 (CInt(var_86), var_98)
  loc_E8C8F4:   var_98.Enabled = arg_C
  loc_E8C903: Next var_92 'Byte
  loc_E8C912: Set var_8C = Me.TopCtrl1
  loc_E8C918: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000F(False)
  loc_E8C920: Exit Sub
End Sub

Public Sub Proc_94_51_E85AC8
  'Data Table: 461634
  loc_E85A74: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E85A86:   Me.DGHelp.Visible = False
  loc_E85A8E: End If
  loc_E85AAA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E85ABC:   Me.FGPoint.Visible = False
  loc_E85AC4: End If
  loc_E85AC4: Exit Sub
End Sub

Public Sub Proc_94_52_EED93C(arg_C) 'EED93C
  'Data Table: 461634
  Dim var_90 As TextBox
  loc_EED884: Call Proc_94_51_E85AC8()
  loc_EED88D: Call 0.Method_Proc_94_52_EED93C8 (var_88)
  loc_EED89E: Set var_8C = Me.Txt
  loc_EED8A4: Call 0.Method_Proc_94_52_EED93C0 (CInt(var_88))
  loc_EED8D1: If (Proc_6_27_EA565C(var_90, "Name") = 0) Then
  loc_EED8D4:   Exit Sub
  loc_EED8D5: End If
  loc_EED90C: If (MsgBox("Save Record ?", 4, "Save Data", var_F8, var_118) = 6) Then
  loc_EED90F:   Call TopCtrl1_UnknownEvent_16()
  loc_EED917: Else
  loc_EED921:   Set var_8C = Me.Txt
  loc_EED927:   Call 0.Method_Proc_94_52_EED93C0 (arg_C, var_90)
  loc_EED92F:   var_90.SetFocus
  loc_EED93B: End If
  loc_EED93B: Exit Sub
End Sub

Public Sub Proc_94_53_FA32C4
  'Data Table: 461634
  Dim var_98 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_120 As Variant
  Dim var_9C As TextBox
  loc_FA3159: Set var_98 = Me.TxtGrid
  loc_FA315F: Call 0.Method_Proc_94_53_FA32C40 (0)
  loc_FA3182: var_8C = CStr(Ucase(Trim(CVar(var_9C))))
  loc_FA31B6: For var_D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D0 'Integer
  loc_FA31DA:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FA31DD:     GoTo loc_FA32AF
  loc_FA31E0:   End If
  loc_FA31E4:   var_E0 = CVar(CLng(var_88)) 'Long
  loc_FA320E:   var_CC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FA3218:   var_120 = CVar(CStr(var_CC)) 'String
  loc_FA324D:   If ((var_8C = CStr(Ucase(var_120))) And (CStr(Ucase(var_120)) <> vbNullString)) Then
  loc_FA3271:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_CC, var_120)
  loc_FA328A:     Set var_98 = Me.TxtGrid
  loc_FA3290:     Call 0.Method_Proc_94_53_FA32C40 (0, var_9C, CVar(CLng(var_92)))
  loc_FA3298:     var_9C.SetFocus
  loc_FA32A9:     Proc_94_53_FA32C4 = 0
  loc_FA32AF:     ' Referenced from: FA31DD
  loc_FA32AF:   End If
  loc_FA32B2: Next var_D0 'Integer
  loc_FA32BC: Proc_94_53_FA32C4 = &HFF
End Sub
