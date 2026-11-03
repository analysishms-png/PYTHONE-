VERSION 5.00
Begin VB.Form frmEnviro
  Caption = "Parameter Settings"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmEnviro.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 15240
  ClientHeight = 8715
  LockControls = -1  'True
  Begin DataGrid DGPurchItem
    Left = 12405
    Top = 7455
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 375
  End
  Begin DataGrid DGTaxStru
    Left = 12735
    Top = 5745
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 270
  End
  Begin DataGrid DGPurchaseGodown
    Left = 13695
    Top = 2610
    Width = 3900
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 241
  End
  Begin DataGrid DGGroup
    Left = 12360
    Top = 6405
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 141
  End
  Begin DataGrid DGDepart
    Left = 13515
    Top = 3015
    Width = 3900
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 187
  End
  Begin DataGrid DGHelp
    Left = 12840
    Top = 5310
    Width = 5160
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 122
  End
  Begin DataGrid DGTAX
    Left = 13080
    Top = 4545
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 162
  End
  Begin DataGrid DGRevenue
    Left = 13080
    Top = 4935
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 164
  End
End

Attribute VB_Name = "frmEnviro"

Private global_116 As Integer
Private global_76 As Recordset15
Private global_84 As Recordset15
Private global_52 As Recordset15
Private global_60 As Recordset15
Private global_64 As Recordset15
Private global_56 As Recordset15
Private global_80 As Recordset15
Private global_72 As Recordset15
Private global_68 As Recordset15
Private global_96 As Variant

Private Sub ListView_UnknownEvent_13 'F5A224
  'Data Table: 554C78
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  Dim var_CC As Double
  Dim var_C4 As TextBox
  Dim var_88 As Variant
  Dim var_A4 As String
  loc_F5A117: Set var_88 = (var_A0)
  loc_F5A12E:  = Txt.DispID_7.Count
  loc_F5A146: If (var_A0 > 0) Then
  loc_F5A14D:   Set var_A8 = ()
  loc_F5A163:   var_CC = Val(CStr(var_A8.Tag))
  loc_F5A16D:   Set var_88 = var_CC(var_A4)
  loc_F5A184:    = Txt.DispID_D.Text
  loc_F5A197:   Set var_C0 = var_C4(CInt(var_CC))
  loc_F5A19D:   Call 0.Method_ListView_UnknownEvent_130 (var_A4)
  loc_F5A1A5:   var_C4.Text = 
  loc_F5A1C5: End If
  loc_F5A1D1: (0).Visible = 
  loc_F5A1F3: var_CC = Val(CStr(().Tag))
  loc_F5A201: Set var_9C = var_A8(CInt(var_CC))
  loc_F5A207: Call 0.Method_ListView_UnknownEvent_130 (var_CC)
  loc_F5A20F: var_A8.SetFocus
  loc_F5A223: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F1E72C
  'Data Table: 554C78
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim var_BC As TextBox
  loc_F1E63C: Call Proc_56_54_FB5464()
  loc_F1E64E: Set var_A8 = (CVar(CLng("16777215")))
  loc_F1E660: Set var_A8 = (Txt.DispID_26)
  loc_F1E678: Set var_BC = (CVar(CLng(Txt.DispID_A)))
  loc_F1E690: Set var_F0 = (CVar(CLng(Txt.DispID_B)))
  loc_F1E6AE: Set var_104 = var_108(Index)
  loc_F1E6B4: Call 0.Method_TxtGrid_GotFocus0 (CStr(Txt.DispID_41))
  loc_F1E6BC: var_108.Tag = 
  loc_F1E6DE: Set var_A8 = ()
  loc_F1E6ED: var_110 = CLng(Txt.DispID_B)
  loc_F1E6FD: If (var_110 = CLng(2)) Then
  loc_F1E70F:   Set var_A8 = var_BC(Index)
  loc_F1E715:   Call 0.Method_TxtGrid_GotFocus0 (1)
  loc_F1E71D:   var_BC.MaxLength = var_110
  loc_F1E729: End If
  loc_F1E729: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'FA9D74
  'Data Table: 554C78
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_AC As Long
  loc_FA9BE8: On Error Goto loc_FA9D6E
  loc_FA9BF5: If (CLng(Shift) = &H1B) Then
  loc_FA9C05:   Set var_88 = var_8C(KeyCode)
  loc_FA9C0B:   Call 0.Method_TxtGrid_KeyDown0 (var_90)
  loc_FA9C13:    = var_8C.Tag
  loc_FA9C25:   Set var_94 = var_98(KeyCode)
  loc_FA9C2B:   Call 0.Method_TxtGrid_KeyDown0 (var_90)
  loc_FA9C33:   var_98.Text = 
  loc_FA9C4F:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_FA9C54:   Call Proc_56_54_FB5464(arg_14)
  loc_FA9C5D:   Set var_88 = ()
  loc_FA9C7A:   Set var_88 = var_8C(KeyCode)
  loc_FA9C80:   Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_FA9C88:   var_8C.Visible = Txt.DispID_8001
  loc_FA9C94:   Exit Sub
  loc_FA9C95: End If
  loc_FA9C99: Set var_88 = ()
  loc_FA9CA8: var_AC = CLng(Txt.DispID_B)
  loc_FA9CB8: If (var_AC = CLng(2)) Then
  loc_FA9CCA:   Set var_88 = var_8C(KeyCode)
  loc_FA9CD0:   Call 0.Method_TxtGrid_KeyDown0 (1)
  loc_FA9CD8:   var_8C.MaxLength = var_AC
  loc_FA9D04:   If (((CLng(Shift) = &HD) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) Then
  loc_FA9D0D:     Call Proc_56_58_EE78E8(KeyCode)
  loc_FA9D18:     If (var_AE = &HFF) Then
  loc_FA9D5E:       Proc_6_62_1253BC4((var_AE), (), KeyCode, Shift, global_116)
  loc_FA9D6E:       ' Referenced from: FA9BE8
  loc_FA9D6E:     End If
  loc_FA9D6E:   End If
  loc_FA9D6E: End If
  loc_FA9D6E: Proc_6_60_E62BC4(2, 0)
  loc_FA9D73: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E224B4
  'Data Table: 554C78
  Dim arg_10 As Integer
  loc_E22497: Proc_6_58_E054C0(arg_10)
  loc_E224A2: Proc_6_133_E7EF78(var_94)
  loc_E224AB: arg_10 = CInt(var_94)
  loc_E224B1: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'ECC1E4
  'Data Table: 554C78
  Dim var_9C As Long
  Dim var_B4 As Variant
  Dim var_A0 As TextBox
  loc_ECC148: On Error Goto loc_ECC1DD
  loc_ECC14F: Set var_88 = ()
  loc_ECC15E: var_9C = CLng(Txt.DispID_B)
  loc_ECC16E: If (var_9C = CLng(2)) Then
  loc_ECC175:   Set var_A4 = (var_9C)
  loc_ECC184:   var_B4 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_ECC19E:   Set var_88 = var_A0(KeyCode)
  loc_ECC1A4:   Call 0.Method_TxtGrid_KeyUp0 (var_E8, CVar(CLng(2)))
  loc_ECC1AC:   var_B4 = var_A0.Text
  loc_ECC1BC:   Set var_10C = (CVar(var_E8))
  loc_ECC1C2:   LateIdCallSt
  loc_ECC1DC: End If
  loc_ECC1DC: Exit Sub
  loc_ECC1DD: ' Referenced from: ECC148
  loc_ECC1DD: Proc_6_60_E62BC4(var_10C)
  loc_ECC1E2: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E5A7B8
  'Data Table: 554C78
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_A0 As Long
  loc_E5A77B: var_86 = Cancel
  loc_E5A784: If (var_86 = 0) Then
  loc_E5A78D:   Call Proc_56_58_EE78E8(Cancel, var_88)
  loc_E5A796:   arg_10 = Not(var_88)
  loc_E5A799: End If
  loc_E5A79D: Set var_8C = var_86(arg_10)
  loc_E5A7AC: var_A0 = CLng(Txt.DispID_B)
  loc_E5A7B5: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'F1A198
  'Data Table: 554C78
  loc_F1A0B4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F1A0B7:   Call DGHelp_UnknownEvent_9()
  loc_F1A0BC: End If
  loc_F1A0D8: If (CBool(Me.DGGroup.Visible) = &HFF) Then
  loc_F1A0DB:   Call DGGroup_UnknownEvent_9()
  loc_F1A0E0: End If
  loc_F1A0FC: If (CBool(().Visible) = &HFF) Then
  loc_F1A0FF:   Call DGPayType_UnknownEvent_9()
  loc_F1A104: End If
  loc_F1A120: If (CBool(Me.DGPurchaseGodown.Visible) = &HFF) Then
  loc_F1A132:   Me.DGPurchaseGodown.Visible = False
  loc_F1A13A: End If
  loc_F1A156: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_F1A168:   Me.DGTaxStru.Visible = False
  loc_F1A170: End If
  loc_F1A18C: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_F1A18F:   Call DGRevenue_UnknownEvent_9()
  loc_F1A194: End If
  loc_F1A194: Exit Sub
  loc_F1A195: CExtInstUnk
  loc_F1A197:  = 
End Sub

Private Sub DGGroup_UnknownEvent_9 'F78AEC
  'Data Table: 554C78
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F789C3: var_86 = CInt(Val(CStr(Me.DGGroup.Tag)))
  loc_F789D8: Set var_8C = Me.DGGroup
  loc_F789DE: var_8C.Visible = False
  loc_F78A00: If (Me.var_8C.RecordCount > 0) Then
  loc_F78A41:   Set var_CC = var_D0(var_86)
  loc_F78A47:   Call 0.Method_DGGroup_UnknownEvent_90 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_F78A4F:   var_D0.Text = var_86
  loc_F78A85:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F78AA3:   Set var_CC = var_D0(var_86)
  loc_F78AA9:   Call 0.Method_DGGroup_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F78AB1:   var_D0.Tag = 
  loc_F78AC7: End If
  loc_F78AD1: Set var_8C = var_C8(var_86)
  loc_F78AD7: Call 0.Method_DGGroup_UnknownEvent_90 ()
  loc_F78ADF: var_C8.SetFocus
  loc_F78AEB: Exit Sub
End Sub

Private Sub DGGroup_UnknownEvent_1F 'EACE98
  'Data Table: 554C78
  loc_EACE2A: Proc_6_153_E91194(Me.DGGroup, arg_14)
  loc_EACE5E: Set var_A8 = arg_18(Val(CStr(Me.DGGroup.Tag)))
  loc_EACE7E: Proc_6_138_106D6F8(Me.DGGroup, global_56)
  loc_EACE94: Exit Sub
End Sub

Private Sub OptRoundOff_Click(Index As Integer) 'E77D34
  'Data Table: 554C78
  Dim var_8C As OptionButton
  loc_E77CF1: Set var_88 = var_8C(Index)
  loc_E77CF7: Call 0.Method_OptRoundOff_Click0 (var_90)
  loc_E77CFF:  = var_8C.Caption
  loc_E77D1C: global_88 = CStr(Trim(CVar(var_90)))
  loc_E77D31: Exit Sub
  loc_E77D32:  = 
End Sub

Private Sub FGrid_UnknownEvent_0 'E5EEB4
  'Data Table: 554C78
  Dim var_AC As TextBox
  loc_E5EE79: Set var_A8 = (CVar(CLng("14737632")))
  loc_E5EE92: Set var_A8 = var_AC(0)
  loc_E5EE98: Call 0.Method_FGrid_UnknownEvent_00 (0)
  loc_E5EEA0: var_AC.Visible = DGGroup.DispID_10
  loc_E5EEAC: Call Proc_56_54_FB5464()
  loc_E5EEB1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E65E00
  'Data Table: 554C78
  Dim var_8C As TextBox
  loc_E65DBC: Set var_88 = var_8C(0)
  loc_E65DC2: Call 0.Method_FGrid_UnknownEvent_10 (var_8E)
  loc_E65DCA:  = var_8C.Visible
  loc_E65DDC: If (var_8E = 0) Then
  loc_E65DEF:   Set var_88 = (CVar(CLng(global_120)))
  loc_E65DFD: End If
  loc_E65DFD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1E6E0
  'Data Table: 554C78
  loc_E1E6D1: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1E6DF: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '1004698
  'Data Table: 554C78
  Dim var_B0 As Variant
  Dim var_B4 As DataGrid
  Dim var_C4 As Variant
  Dim var_88 As DataGrid
  Dim var_9C As String
  Dim arg_C As Integer
  Dim var_EC As Long
  loc_100449E: var_B0 = ().RowCount
  loc_10044B1: var_C4 = (var_B0).RowCount
  loc_1004508: If ( And (CDbl(Val(CStr(var_C4((CLng(arg_C) = &H26)).Tag))) = CDbl((CLng(var_B0) - (CLng(var_C4) - 1))))) Then
  loc_1004518:   Set var_88 = (CVar(CLng("16777215")))
  loc_100452E:   var_9C = "+{Tab}"
  loc_1004534:   Proc_303_0_FB9B68(CStr(var_C4((CLng(arg_C) = &H26)).Tag), 0)
  loc_100453E:   arg_C = 0
  loc_1004544: Else
  loc_100454E:   var_B0 = DGGroup.DispID_26(arg_C).RowCount
  loc_100459B:   If ( And (CDbl(Val(CStr(var_B0((CLng(arg_C) = &H28)).Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_10045AB:     Set var_88 = (CVar(CLng("16777215")))
  loc_10045B9:   End If
  loc_10045B9: End If
  loc_10045C3: (DGGroup.DispID_26).InsertRows , 
  loc_10045DC: (CVar(CStr(CLng()))).Tag = 
  loc_1004600: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_100460D:   ().DeleteRowLabels , 
  loc_1004616:   var_EC = CLng()
  loc_1004626:   If (var_EC = CLng(2)) Then
  loc_1004633:     (var_EC).InsertRows , 
  loc_100464B:     (CVar(CLng())).DeleteRowLabels , 
  loc_1004663:     Set var_B4 = CVar(CLng())(vbNullString)
  loc_1004669:     LateIdCallSt
  loc_1004681:   End If
  loc_1004681: End If
  loc_1004687: If (arg_C = &HD) Then
  loc_100468F:   global_116 = 0
  loc_1004692: End If
  loc_1004694: arg_C = 0
  loc_1004697: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'FB1034
  'Data Table: 554C78
  Dim var_88 As DataGrid
  Dim var_9C As Long
  Dim var_B0 As String
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_FB0EAE: ().DeleteRowLabels , 
  loc_FB0EB7: var_9C = CLng()
  loc_FB0EC7: If (var_9C = CLng(2)) Then
  loc_FB0ECE:   Set var_C4 = (var_9C)
  loc_FB0EF2:   var_B0 = CStr(Ucase(Chr(CLng(Index))))
  loc_FB0F1F:   Set var_B4 = var_C4
  loc_FB0F31:   Proc_6_63_110ABA4(Me, var_B4, (), 0)
  loc_FB0F59:   Set var_88 = var_B4(0)
  loc_FB0F5F:   Call 0.Method_FGrid_UnknownEvent_C0 (var_B0, 0, Asc(var_B0))
  loc_FB0F67:   0 = var_B4.Text
  loc_FB0F80:   If (Len(var_B0) <= 1) Then
  loc_FB0F8F:     Set var_88 = var_B4(0)
  loc_FB0F95:     Call 0.Method_FGrid_UnknownEvent_C0 (var_B0)
  loc_FB0F9D:     var_CA = var_B4.Text
  loc_FB0FAE:     Set var_B8 = var_C4(0)
  loc_FB0FB4:     Call 0.Method_FGrid_UnknownEvent_C0 (var_B0)
  loc_FB0FBC:     var_C4.Text = 
  loc_FB0FCF:   End If
  loc_FB0FDB:   Set var_88 = var_B4(0)
  loc_FB0FE1:   Call 0.Method_FGrid_UnknownEvent_C0 (var_B0)
  loc_FB0FE9:    = var_B4.Text
  loc_FB0FFB:   Set var_B8 = var_C4(0)
  loc_FB1001:   Call 0.Method_FGrid_UnknownEvent_C0 (Len(var_B0))
  loc_FB1009:   var_C4.SelStart = 
  loc_FB101C: End If
  loc_FB1026: If (CLng(Index) <> &HD) Then
  loc_FB102E:   global_116 = &HFF
  loc_FB1031: End If
  loc_FB1031: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'E29328
  'Data Table: 554C78
  loc_E2930E: ().RandomDataFill
  loc_E29321: If (CLng() = CLng(0)) Then
  loc_E29324:   Exit Sub
  loc_E29325: End If
  loc_E29325: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1E500
  'Data Table: 554C78
  loc_E1E4F1: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1E4FF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E409A4
  'Data Table: 554C78
  Dim var_8C As TextBox
  loc_E40978: Call Proc_56_54_FB5464()
  loc_E40988: Set var_88 = var_8C(0)
  loc_E4098E: Call 0.Method_FGrid_UnknownEvent_150 (0)
  loc_E40996: var_8C.Visible = 
  loc_E409A2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ECE314
  'Data Table: 554C78
  Dim var_94 As Variant
  loc_ECE264: On Error Goto loc_ECE30C
  loc_ECE28E: Call Proc_56_51_E99380(Proc_5_1_100CB50("ADD", Me))
  loc_ECE2A7: Set var_8C = var_94(CInt(&H29))
  loc_ECE2AD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (vbNullString)
  loc_ECE2B5: var_94.Text = global_76
  loc_ECE2CC: Set var_8C = var_94(2)
  loc_ECE2D2: Call 0.Method_TopCtrl1_UnknownEvent_A0 (&HFF)
  loc_ECE2DA: var_94.Value = 
  loc_ECE2F1: Set var_8C = var_94(CInt(&H29))
  loc_ECE2F7: Call 0.Method_TopCtrl1_UnknownEvent_A0 ()
  loc_ECE2FF: var_94.SetFocus
  loc_ECE30B: Exit Sub
  loc_ECE30C: ' Referenced from: ECE264
  loc_ECE30C: Proc_6_60_E62BC4()
  loc_ECE311: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'FEA434
  'Data Table: 554C78
  Dim unk_554C7A As Connection15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_124 As String
  loc_FEA260: On Error Goto loc_FEA3E6
  loc_FEA29A: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_FEA2A6:   unk_554C7A.BeginTrans var_118
  loc_FEA2BF:   var_94 = Me.Recordset15.Bookmark 'Variant
  loc_FEA309:   var_F4 = "Delete From RoundOffSetting Where ModuleName='" & Trim(CVar(Me.Recordset15.Fields.Item("ModuleName"))) 
  loc_FEA312:   var_114 = var_F4 & "'" 
  loc_FEA316:   var_124 = CStr(var_114)
  loc_FEA320:   unk_554C7A.Execute var_124, var_134, -1
  loc_FEA342:   unk_554C7A.CommitTrans
  loc_FEA355:   Me.Recordset15.Requery -1
  loc_FEA378:   If (CVar(Me.Recordset15.RecordCount) >= var_94) Then
  loc_FEA388:     Me.Recordset15.Bookmark = var_94
  loc_FEA390:   Else
  loc_FEA3A7:     If (global_76.EOF = 0) Then
  loc_FEA3B3:       Me.Recordset15.MoveLast
  loc_FEA3B8:     End If
  loc_FEA3B8:   End If
  loc_FEA3B8:   Call Proc_56_50_103469C(var_138)
  loc_FEA3DD:   Proc_5_0_110649C(&HFF, Me)
  loc_FEA3E5: End If
  loc_FEA3E5: Exit Sub
  loc_FEA3E6: ' Referenced from: FEA260
  loc_FEA3EC: unk_554C7A.RollbackTrans
  loc_FEA3F9: Set var_11C = Err()
  loc_FEA3FF: Call 0.Method_arg_2C (var_124, global_76)
  loc_FEA420: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F4, var_114)
  loc_FEA433: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E804BC
  'Data Table: 554C78
  Dim var_94 As TextBox
  loc_E80458: On Error Goto loc_E804B5
  loc_E80482: Call Proc_56_51_E99380(Proc_5_1_100CB50("EDIT", Me))
  loc_E8049A: Set var_8C = var_94(CInt(&H29))
  loc_E804A0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0)
  loc_E804A8: var_94.Enabled = global_92
  loc_E804B4: Exit Sub
  loc_E804B5: ' Referenced from: E80458
  loc_E804B5: Proc_6_60_E62BC4()
  loc_E804BA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E54D6C
  'Data Table: 554C78
  loc_E54D5B: Call Proc_56_51_E99380(Proc_5_1_100CB50("INI", Me))
  loc_E54D66: Call Proc_56_50_103469C(global_76)
  loc_E54D6B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3FA08
  'Data Table: 554C78
  loc_E3F9F8: Proc_5_0_110649C(&HFF, Me)
  loc_E3FA00: Call Proc_56_50_103469C(global_76)
  loc_E3FA05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E40818
  'Data Table: 554C78
  loc_E40808: Proc_5_0_110649C(&HFF, Me)
  loc_E40810: Call Proc_56_50_103469C(global_76)
  loc_E40815: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E408E0
  'Data Table: 554C78
  loc_E408D0: Proc_5_0_110649C(&HFF, Me)
  loc_E408D8: Call Proc_56_50_103469C(global_76)
  loc_E408DD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3FAD0
  'Data Table: 554C78
  loc_E3FAC0: Proc_5_0_110649C(&HFF, Me)
  loc_E3FAC8: Call Proc_56_50_103469C(global_76)
  loc_E3FACD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'EAE29C
  'Data Table: 554C78
  loc_EAE20E: Me.Recordset15.Requery -1
  loc_EAE221: Me.Recordset15.Requery -1
  loc_EAE234: Me.Recordset15.Requery -1
  loc_EAE247: Me.Recordset15.Requery -1
  loc_EAE25A: Me.Recordset15.Requery -1
  loc_EAE26D: Me.Recordset15.Requery -1
  loc_EAE280: Me.Recordset15.Requery -1
  loc_EAE293: Me.Recordset15.Requery -1
  loc_EAE298: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '11B1A68
  'Data Table: 554C78
  Dim var_94 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As Variant
  Dim var_C0 As Variant
  Dim unk_554C7A As Connection15
  Dim var_86 As Integer
  Dim var_F4 As Variant
  Dim var_124 As Variant
  loc_11B1664: On Error Goto loc_11B1A17
  loc_11B166E: Set var_8C = (var_8E)
  loc_11B1674: Call 0.Method_TopCtrl1_UnknownEvent_164 ()
  loc_11B1686: Set var_94 = var_88(var_96)
  loc_11B168C: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_8E)
  loc_11B169B: For var_9A =  To var_96:  = var_9A 'Integer
  loc_11B16AE:   Set var_8C = var_94(var_88)
  loc_11B16B4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_8E)
  loc_11B16BC:    = var_94.Value
  loc_11B16CE:   If (var_8E = &HFF) Then
  loc_11B16DE:     Set var_8C = var_94(var_88)
  loc_11B16E4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A0)
  loc_11B16EC:      = var_94.Caption
  loc_11B1709:     global_88 = CStr(Trim(CVar(var_A0)))
  loc_11B171E:   End If
  loc_11B1721: Next var_9A 'Integer
  loc_11B1736: Set var_8C = var_94(CInt(&H29))
  loc_11B173C: Call 0.Method_TopCtrl1_UnknownEvent_160 (1)
  loc_11B1768: If (InStr(, CVar(var_94), " Bill", 0) <= 0) Then
  loc_11B178C:   MsgBox("Please Check Module Name!", &H40, "Save..", var_F4, var_124)
  loc_11B179C:   Exit Sub
  loc_11B179D: End If
  loc_11B17BE: If (Trim(global_88) = vbNullString) Then
  loc_11B17CC:   var_C0 = "Save.."
  loc_11B17DC:   var_B0 = "Please choose any type of RoundOff!"
  loc_11B17E2:   MsgBox(var_B0, &H40, var_C0, var_F4, var_124)
  loc_11B17F2:   Exit Sub
  loc_11B17F3: End If
  loc_11B17FC: unk_554C7A.BeginTrans var_128
  loc_11B1824: Set var_8C = var_94(CInt(&H29))
  loc_11B182A: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A0, "DELETE FROM RoundOffSetting WHERE ModuleName='", var_B0)
  loc_11B1832: -1 = var_94.Text
  loc_11B1859: unk_554C7A.Execute var_138 & var_A0 & "' AND lOGSITE_CODE='" & MemVar_1F92078 & "'", 1, 
  loc_11B1895: Set var_8C = var_94(CInt(&H29))
  loc_11B189B: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A0, "Insert Into RoundOffSetting(ModuleName,RoundOffType,Site_Code,U_Name,U_EntDt,U_AE,logSite_Code) Values('", var_188)
  loc_11B18A3: -1 = var_94.Text
  loc_11B18E0: var_F4 = CVar(var_138 & var_A0 & "','" & global_88 & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") 'String
  loc_11B18F1: Proc_6_7_F25D88(var_C0, Date)
  loc_11B18F9: var_124 = var_F4 & var_C0 
  loc_11B18FD: var_D4 = ",'A','"
  loc_11B1923: unk_554C7A.Execute CStr(var_124 & var_D4 & CVar(MemVar_1F92078) & "' )"), , 
  loc_11B195F: unk_554C7A.CommitTrans
  loc_11B1966: var_86 = 0
  loc_11B1977: Me.Recordset15.Requery -1
  loc_11B199B: Set var_8C = var_94(CInt(&H29))
  loc_11B19A1: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A0, "ModuleName='", 0)
  loc_11B19A9: 1 = var_94.Text
  loc_11B19C5: Me.Recordset15.Find var_D4 & var_A0 & "'", var_86, 
  loc_11B19F3: var_A0 = "INI"
  loc_11B1A01: Call Proc_56_51_E99380(Proc_5_1_100CB50(var_A0, Me))
  loc_11B1A0C: Call Proc_56_54_FB5464(global_76)
  loc_11B1A11: Call Proc_56_50_103469C()
  loc_11B1A16: Exit Sub
  loc_11B1A17: ' Referenced from: 11B1664
  loc_11B1A1D: If (var_86 = 1) Then
  loc_11B1A26:   unk_554C7A.RollbackTrans
  loc_11B1A2B: End If
  loc_11B1A33: Set var_8C = Err()
  loc_11B1A39: Call 0.Method_arg_2C (var_A0)
  loc_11B1A52: MsgBox(CVar(var_A0), &H10, var_C0, var_F4, var_124)
  loc_11B1A65: Exit Sub
End Sub

Private Sub Form_Load() '14BAFD8
  'Data Table: 554C78
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_A4 As Integer
  Dim var_E4 As String
  Dim unk_554C7A As Connection15
  Dim var_A8 As Recordset15
  Dim var_EC As Fields15
  Dim var_F0 As Field20
  loc_14BA2B8: On Error Goto loc_14BAFCF
  loc_14BA2C2: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_14BA2D4: Set var_A8 = (CVar(CLng(MemVar_1F921B0)))
  loc_14BA2EC: Set var_A8 = DGRevenue.DispID_FFFFFE0B("Add")
  loc_14BA304: Set global_52 = New 
  loc_14BA319: Me.Recordset15.CursorLocation = 3
  loc_14BA343: var_BC = CVar("Select SubCode as Code,Name From SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_14BA350: Me.Recordset15.Open var_BC, CVar(MemVar_1F92044), 2
  loc_14BA367: CVarUnk
  loc_14BA36C: VerifyVarObj
  loc_14BA372: Set var_A8 = Me.DGHelp
  loc_14BA378: LateIdStAd
  loc_14BA395: Set var_A8 = 0(False)
  loc_14BA39B: LateIdCallSt
  loc_14BA3B5: Set var_A8 = 1(False)
  loc_14BA3BB: LateIdCallSt
  loc_14BA3D5: Set var_A8 = 2(False)
  loc_14BA3DB: LateIdCallSt
  loc_14BA3F5: Set var_A8 = 6(False)
  loc_14BA3FB: LateIdCallSt
  loc_14BA415: Set var_A8 = 8(False)
  loc_14BA41B: LateIdCallSt
  loc_14BA435: Set var_A8 = 9(False)
  loc_14BA43B: LateIdCallSt
  loc_14BA455: Set var_A8 = 10(False)
  loc_14BA45B: LateIdCallSt
  loc_14BA475: Set var_A8 = 15(False)
  loc_14BA47B: LateIdCallSt
  loc_14BA495: Set var_A8 = 16(False)
  loc_14BA49B: LateIdCallSt
  loc_14BA4B5: Set var_A8 = 17(False)
  loc_14BA4BB: LateIdCallSt
  loc_14BA4C6: var_CC = 0
  loc_14BA4D2: var_A4 = 0
  loc_14BA4FD: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128
  loc_14BA50D: unk_554C7A.Execute var_E4 & "' AND [Option]='HR/PayRoll' AND Flag='N'", var_BC, -1
  loc_14BA515: var_A8 = var_A8.Fields
  loc_14BA51D: var_A4 = var_EC.Item(var_EC)
  loc_14BA525: var_F0 = var_F0.Value
  loc_14BA538: Set var_124 = var_100(CBool(var_100))
  loc_14BA53E: LateIdCallSt
  loc_14BA565: var_CC = 1
  loc_14BA571: var_A4 = 0
  loc_14BA59C: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128
  loc_14BA5AC: unk_554C7A.Execute var_E4 & "' AND [Option]='Front Office' AND Flag='N'", var_BC, -1
  loc_14BA5B4: var_A8 = var_A8.Fields
  loc_14BA5BC: var_A4 = var_EC.Item(var_EC)
  loc_14BA5C4: var_F0 = var_F0.Value
  loc_14BA5D7: Set var_124 = var_100(CBool(var_100))
  loc_14BA5DD: LateIdCallSt
  loc_14BA604: var_CC = 18
  loc_14BA610: var_A4 = 0
  loc_14BA63B: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128
  loc_14BA64B: unk_554C7A.Execute var_E4 & "' AND [Option]='Front Office' AND Flag='N'", var_BC, -1
  loc_14BA653: var_A8 = var_A8.Fields
  loc_14BA65B: var_A4 = var_EC.Item(var_EC)
  loc_14BA663: var_F0 = var_F0.Value
  loc_14BA676: Set var_124 = var_100(CBool(var_100))
  loc_14BA67C: LateIdCallSt
  loc_14BA6A3: var_CC = 2
  loc_14BA6AF: var_A4 = 0
  loc_14BA6DA: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128
  loc_14BA6EA: unk_554C7A.Execute var_E4 & "' AND [Option]='Purchase' AND Flag='N'", var_BC, -1
  loc_14BA6F2: var_A8 = var_A8.Fields
  loc_14BA6FA: var_A4 = var_EC.Item(var_EC)
  loc_14BA702: var_F0 = var_F0.Value
  loc_14BA715: Set var_124 = var_100(CBool(var_100))
  loc_14BA71B: LateIdCallSt
  loc_14BA742: var_CC = 6
  loc_14BA74E: var_A4 = 0
  loc_14BA779: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128
  loc_14BA789: unk_554C7A.Execute var_E4 & "' AND [Option]='Night Audit' AND Flag='N'", var_BC, -1
  loc_14BA791: var_A8 = var_A8.Fields
  loc_14BA799: var_A4 = var_EC.Item(var_EC)
  loc_14BA7A1: var_F0 = var_F0.Value
  loc_14BA7B4: Set var_124 = var_100(CBool(var_100))
  loc_14BA7BA: LateIdCallSt
  loc_14BA7E1: var_CC = 8
  loc_14BA7ED: var_A4 = 0
  loc_14BA818: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128
  loc_14BA828: unk_554C7A.Execute var_E4 & "' AND [Option]='EPABX' AND Flag='N'", var_BC, -1
  loc_14BA830: var_A8 = var_A8.Fields
  loc_14BA838: var_A4 = var_EC.Item(var_EC)
  loc_14BA840: var_F0 = var_F0.Value
  loc_14BA853: Set var_124 = var_100(CBool(var_100))
  loc_14BA859: LateIdCallSt
  loc_14BA880: var_CC = 9
  loc_14BA88C: var_A4 = 0
  loc_14BA8B7: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128
  loc_14BA8C7: unk_554C7A.Execute var_E4 & "' AND [Option]='Banquet' AND Flag='N'", var_BC, -1
  loc_14BA8CF: var_A8 = var_A8.Fields
  loc_14BA8D7: var_A4 = var_EC.Item(var_EC)
  loc_14BA8DF: var_F0 = var_F0.Value
  loc_14BA8F2: Set var_124 = var_100(CBool(var_100))
  loc_14BA8F8: LateIdCallSt
  loc_14BA91F: var_CC = 10
  loc_14BA92B: var_A4 = 0
  loc_14BA956: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128
  loc_14BA966: unk_554C7A.Execute var_E4 & "' AND [Option]='Point Of Sale' AND Flag='N'", var_BC, -1
  loc_14BA96E: var_A8 = var_A8.Fields
  loc_14BA976: var_A4 = var_EC.Item(var_EC)
  loc_14BA97E: var_F0 = var_F0.Value
  loc_14BA991: Set var_124 = var_100(CBool(var_100))
  loc_14BA997: LateIdCallSt
  loc_14BA9BE: var_CC = 16
  loc_14BA9CA: var_A4 = 0
  loc_14BA9F5: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128
  loc_14BAA05: unk_554C7A.Execute var_E4 & "' AND [Option]='Front Office' AND Flag='N'", var_BC, -1
  loc_14BAA0D: var_A8 = var_A8.Fields
  loc_14BAA15: var_A4 = var_EC.Item(var_EC)
  loc_14BAA1D: var_F0 = var_F0.Value
  loc_14BAA30: Set var_124 = var_100(CBool(var_100))
  loc_14BAA36: LateIdCallSt
  loc_14BAA5D: var_CC = 17
  loc_14BAA69: var_A4 = 0
  loc_14BAA94: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128
  loc_14BAAA4: unk_554C7A.Execute var_E4 & "' AND [Option]='Banquet' AND Flag='N'", var_BC, -1
  loc_14BAAAC: var_A8 = var_A8.Fields
  loc_14BAAB4: var_A4 = var_EC.Item(var_EC)
  loc_14BAABC: var_F0 = var_F0.Value
  loc_14BAACF: Set var_124 = var_100(CBool(var_100))
  loc_14BAAD5: LateIdCallSt
  loc_14BAB02: If (MemVar_1F920B8 = 1) Then
  loc_14BAB13:   Set var_A8 = 15(True)
  loc_14BAB19:   LateIdCallSt
  loc_14BAB24: End If
  loc_14BAB2E: Set global_84 = New 
  loc_14BAB43: Me.Recordset15.CursorLocation = 3
  loc_14BAB6D: var_BC = CVar("Select I.Code,I.Name From ItemMast I Where (I.LOGSITE_CODE='" & MemVar_1F92078 & "' or I.LOGSITE_CODE='HO') and (I.DirectSale='Y' OR I.Type='Consumables') And (I.GravyItem<>'Yes' or I.GravyItem is NULL) And I.DispCode <>9999 And I.ActiveYN<>'No' Order by I.Name") 'String
  loc_14BAB7A: Me.Recordset15.Open var_BC, CVar(MemVar_1F92044), 3
  loc_14BAB91: CVarUnk
  loc_14BAB96: VerifyVarObj
  loc_14BAB9C: Set var_A8 = Me.DGPurchItem
  loc_14BABA2: LateIdStAd
  loc_14BABBA: Set global_56 = New 
  loc_14BABCF: Me.DGPurchItem.CursorLocation = 3
  loc_14BABF9: var_BC = CVar("Select GroupCode AS Code,GroupName as Name From Acgroup where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by GroupName") 'String
  loc_14BAC06: Me.Recordset15.Open var_BC, CVar(MemVar_1F92044), 2
  loc_14BAC1D: CVarUnk
  loc_14BAC22: VerifyVarObj
  loc_14BAC28: Set var_A8 = Me.DGGroup
  loc_14BAC2E: LateIdStAd
  loc_14BAC46: Set global_80 = New 
  loc_14BAC5B: Me.DGGroup.CursorLocation = 3
  loc_14BAC85: var_BC = CVar("Select Code,Name From Godownmast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_14BAC92: Me.Recordset15.Open var_BC, CVar(MemVar_1F92044), 2
  loc_14BACA9: CVarUnk
  loc_14BACAE: VerifyVarObj
  loc_14BACB4: Set var_A8 = Me.DGPurchaseGodown
  loc_14BACBA: LateIdStAd
  loc_14BACD2: Set global_76 = New 
  loc_14BACE7: Me.DGPurchaseGodown.CursorLocation = 3
  loc_14BAD1E: Me.Recordset15.Open CVar("Select * From RoundOffSetting where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')"), CVar(MemVar_1F92044), 2
  loc_14BAD33: Set global_68 = New 
  loc_14BAD48: Me.Recordset15.CursorLocation = 3
  loc_14BAD72: var_BC = CVar("Select Code,Name From RevMast Where  FieldType='T' and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_14BAD7F: Me.Recordset15.Open var_BC, CVar(MemVar_1F92044), 2
  loc_14BAD96: CVarUnk
  loc_14BAD9B: VerifyVarObj
  loc_14BADA1: Set var_A8 = Me.DGTAX
  loc_14BADA7: LateIdStAd
  loc_14BADD4: Me.DGTAX.CursorLocation = 3
  loc_14BADFE: var_BC = CVar("Select Distinct Code,Name From TaxStru Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_14BAE0B: Me.Recordset15.Open var_BC, CVar(MemVar_1F92044), 2
  loc_14BAE22: CVarUnk
  loc_14BAE27: VerifyVarObj
  loc_14BAE2D: Set var_A8 = Me.DGTaxStru
  loc_14BAE33: LateIdStAd
  loc_14BAE60: Me.DGTaxStru.CursorLocation = 3
  loc_14BAE8A: var_BC = CVar("Select Code,Name From RevMast Where  FieldType='C' and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_14BAE97: Me.Recordset15.Open var_BC, CVar(MemVar_1F92044), 2
  loc_14BAEAE: CVarUnk
  loc_14BAEB3: VerifyVarObj
  loc_14BAEB9: Set var_A8 = Me.DGRevenue
  loc_14BAEBF: LateIdStAd
  loc_14BAEEC: Me.DGRevenue.CursorLocation = 3
  loc_14BAF16: var_BC = CVar("Select Code,Name From RevMast Where PayType in ('Cash','Room') and FieldType='P' and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_14BAF23: Me.Recordset15.Open var_BC, CVar(MemVar_1F92044), 2
  loc_14BAF3A: CVarUnk
  loc_14BAF3F: VerifyVarObj
  loc_14BAF45: Set var_A8 = 3(New)
  loc_14BAF4B: LateIdStAd
  loc_14BAF63: Set global_92 = New 
  loc_14BAF78: Me.Recordset15.CursorLocation = 3
  loc_14BAFAF: Me.Recordset15.Open CVar("Select * From Enviro WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "')"), CVar(MemVar_1F92044), 2
  loc_14BAFBA: Call Proc_56_53_1DE4914(3, -1, var_A8, -1, var_A8, New)
  loc_14BAFBF: Call Proc_56_50_103469C(3, -1, var_A8)
  loc_14BAFC4: Call Proc_56_56_1021750(New, 3)
  loc_14BAFC9: Call Proc_56_55_10DB148(-1)
  loc_14BAFCE: Exit Sub
  loc_14BAFCF: ' Referenced from: 14BA2B8
  loc_14BAFCF: Proc_6_60_E62BC4()
  loc_14BAFD4: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EE9168
  'Data Table: 554C78
  loc_EE90A3: Set global_52 = Nothing
  loc_EE90B5: Set global_92 = Nothing
  loc_EE90C7: Set global_84 = Nothing
  loc_EE90D9: Set global_56 = Nothing
  loc_EE90EB: Set global_80 = Nothing
  loc_EE90FD: Set global_72 = Nothing
  loc_EE910F: Set global_60 = Nothing
  loc_EE911B: global_96 = Nothing
  loc_EE912A: Set global_112 = Nothing
  loc_EE913C: Set global_68 = Nothing
  loc_EE914E: Set global_72 = Nothing
  loc_EE9160: Set global_76 = Nothing
  loc_EE9167: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29AB8
  'Data Table: 554C78
  loc_E29A90: On Error Goto loc_E29AB0
  loc_E29AA7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E29AAF: Exit Sub
  loc_E29AB0: ' Referenced from: E29A90
  loc_E29AB0: Proc_6_60_E62BC4(Shift)
  loc_E29AB5: Exit Sub
  loc_E29AB6: Set arg_54 = 0
End Sub

Private Sub DGRevenue_UnknownEvent_9 'F784BC
  'Data Table: 554C78
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F78393: var_86 = CInt(Val(CStr(Me.DGRevenue.Tag)))
  loc_F783A8: Set var_8C = Me.DGRevenue
  loc_F783AE: var_8C.Visible = False
  loc_F783D0: If (Me.var_8C.RecordCount > 0) Then
  loc_F78411:   Set var_CC = var_D0(var_86)
  loc_F78417:   Call 0.Method_DGRevenue_UnknownEvent_90 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_F7841F:   var_D0.Text = var_86
  loc_F78455:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F78473:   Set var_CC = var_D0(var_86)
  loc_F78479:   Call 0.Method_DGRevenue_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F78481:   var_D0.Tag = 
  loc_F78497: End If
  loc_F784A1: Set var_8C = var_C8(var_86)
  loc_F784A7: Call 0.Method_DGRevenue_UnknownEvent_90 ()
  loc_F784AF: var_C8.SetFocus
  loc_F784BB: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_1F 'EAD030
  'Data Table: 554C78
  loc_EACFC2: Proc_6_153_E91194(Me.DGRevenue, arg_14)
  loc_EACFF6: Set var_A8 = arg_18(Val(CStr(Me.DGRevenue.Tag)))
  loc_EAD016: Proc_6_138_106D6F8(Me.DGRevenue, global_64)
  loc_EAD02C: Exit Sub
  loc_EAD02E: CExtInstUnk
End Sub

Private Sub DGPayType_UnknownEvent_9 'F77544
  'Data Table: 554C78
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F7741B: var_86 = CInt(Val(CStr(().Tag)))
  loc_F77430: Set var_8C = var_86(False)
  loc_F77436: var_8C.Visible = 
  loc_F77458: If (Me.var_8C.RecordCount > 0) Then
  loc_F77499:   Set var_CC = var_D0(var_86)
  loc_F7749F:   Call 0.Method_DGPayType_UnknownEvent_90 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_F774A7:   var_D0.Text = 
  loc_F774DD:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F774FB:   Set var_CC = var_D0(var_86)
  loc_F77501:   Call 0.Method_DGPayType_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F77509:   var_D0.Tag = 
  loc_F7751F: End If
  loc_F77529: Set var_8C = var_C8(var_86)
  loc_F7752F: Call 0.Method_DGPayType_UnknownEvent_90 ()
  loc_F77537: var_C8.SetFocus
  loc_F77543: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'EAE4E8
  'Data Table: 554C78
  Dim var_B4 As Double
  Dim arg_7FFF As Integer
  loc_EAE47A: Proc_6_153_E91194((), arg_14)
  loc_EAE4A7: var_B4 = Val(CStr(().Tag))
  loc_EAE4AE: Set var_A8 = (var_B4)
  loc_EAE4CE: Proc_6_138_106D6F8((arg_18), global_60)
  loc_EAE4E4: Exit Sub
  loc_EAE4E5: arg_7FFF = CInt(var_B4)
End Sub

Private Sub Cmd_Click(Index As Integer) '1CB376C
  'Data Table: 554C78
  Dim var_8A As Variant
  Dim unk_554C7A As Connection15
  Dim var_86 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_37AC As Double
  Dim var_FC As Variant
  Dim var_37B4 As Double
  Dim var_114 As Variant
  Dim var_37BC As Double
  Dim var_12C As Variant
  Dim var_37C4 As Double
  Dim var_144 As Variant
  Dim var_37CC As Double
  Dim var_15C As Variant
  Dim var_170 As Variant
  Dim var_194 As Variant
  Dim var_1B8 As Variant
  Dim var_1CC As Variant
  Dim var_1F0 As Variant
  Dim var_214 As Variant
  Dim var_238 As Variant
  Dim var_25C As Variant
  Dim var_280 As Variant
  Dim var_294 As Variant
  Dim var_2A8 As Variant
  Dim var_2CC As Variant
  Dim var_2DC As Variant
  Dim var_334 As Variant
  Dim var_348 As Variant
  Dim var_390 As TextBox
  Dim var_3A4 As Variant
  Dim var_3EC As TextBox
  Dim var_448 As TextBox
  Dim var_4A4 As TextBox
  Dim var_5B0 As Variant
  Dim var_648 As TextBox
  Dim var_694 As TextBox
  Dim var_6E0 As TextBox
  Dim var_6F4 As Variant
  Dim var_73C As TextBox
  Dim var_788 As TextBox
  Dim var_884 As TextBox
  Dim var_938 As TextBox
  Dim var_94C As Variant
  Dim var_C04 As TextBox
  Dim var_CA0 As TextBox
  Dim var_D5C As Variant
  Dim var_E0C As Variant
  Dim var_EBC As Variant
  Dim var_F04 As TextBox
  Dim var_FA4 As CheckBox
  Dim var_11F8 As TextBox
  Dim var_12AC As TextBox
  Dim var_15D8 As Variant
  Dim var_1688 As Variant
  Dim var_1738 As Variant
  Dim var_1780 As TextBox
  Dim var_17DC As TextBox
  Dim var_17F0 As Variant
  Dim var_1838 As TextBox
  Dim var_18A4 As Variant
  Dim var_1958 As Variant
  Dim var_1A08 As Variant
  Dim var_1B30 As Variant
  Dim var_1CB0 As TextBox
  Dim var_38DC As Double
  Dim var_1D64 As Variant
  Dim var_1E14 As Variant
  Dim var_1E5C As TextBox
  Dim var_38E4 As Double
  Dim var_1EA8 As TextBox
  Dim var_38EC As Double
  Dim var_1EF4 As TextBox
  Dim var_38F4 As Double
  Dim var_1F40 As TextBox
  Dim var_38FC As Double
  Dim var_1F9C As Variant
  Dim var_1FF4 As Variant
  Dim var_224C As TextBox
  Dim var_22A8 As TextBox
  Dim var_2304 As TextBox
  Dim var_23D8 As Variant
  Dim var_25D0 As Variant
  Dim var_2770 As Variant
  Dim var_2A48 As Variant
  Dim var_2BE8 As Variant
  Dim var_2D88 As Variant
  Dim var_2DDC As CheckBox
  Dim var_2E84 As CheckBox
  Dim var_2F2C As CheckBox
  Dim var_2FD4 As CheckBox
  Dim var_3124 As CheckBox
  Dim var_32C0 As Variant
  Dim var_3308 As TextBox
  Dim var_3374 As Variant
  Dim var_3424 As Variant
  Dim var_94 As String
  Dim var_98 As Variant
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_B0 As String
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_F0 As String
  Dim var_F4 As Variant
  Dim var_104 As String
  Dim var_108 As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_138 As Variant
  Dim var_13C As String
  Dim var_14C As String
  Dim var_150 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_168 As String
  Dim var_184 As String
  Dim var_188 As Variant
  Dim var_18C As Variant
  Dim var_1A8 As Variant
  Dim var_1AC As String
  Dim var_1B0 As Variant
  Dim var_1C0 As String
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1D8 As Variant
  Dim var_1F4 As String
  Dim var_1F8 As Variant
  Dim var_1FC As Variant
  Dim var_218 As Variant
  Dim var_21C As Variant
  Dim var_220 As String
  Dim var_23C As String
  Dim var_240 As Variant
  Dim var_244 As String
  Dim var_260 As Variant
  Dim var_264 As String
  Dim var_268 As Variant
  Dim var_284 As String
  Dim var_288 As Variant
  Dim var_28C As Variant
  Dim var_2AC As String
  Dim var_2B0 As Variant
  Dim var_2B4 As Variant
  Dim var_2FC As Variant
  Dim var_30C As Variant
  Dim var_31C As Variant
  Dim var_32C As Variant
  Dim var_358 As Variant
  Dim var_368 As Variant
  Dim var_378 As Variant
  Dim var_388 As Variant
  Dim var_46C As Variant
  Dim var_47C As Variant
  Dim var_530 As Variant
  Dim var_588 As Variant
  Dim var_620 As Variant
  Dim var_6D8 As Variant
  Dim var_7AC As Variant
  Dim var_804 As Variant
  Dim var_85C As Variant
  Dim var_910 As Variant
  Dim var_A1C As Variant
  Dim var_A3C As Variant
  Dim var_B84 As Variant
  Dim var_BA4 As Variant
  Dim var_C78 As Variant
  Dim var_C98 As Variant
  Dim var_D9C As Variant
  Dim var_E84 As Variant
  Dim var_F70 As Variant
  Dim var_F80 As Variant
  Dim var_1038 As Variant
  Dim var_1198 As Variant
  Dim var_11D0 As Variant
  Dim var_12E0 As Variant
  Dim var_1300 As Variant
  Dim var_13B0 As Variant
  Dim var_13E8 As Variant
  Dim var_1460 As Variant
  Dim var_14F0 As Variant
  Dim var_1510 As Variant
  Dim var_15A0 As Variant
  Dim var_16A8 As Variant
  Dim var_17B4 As Variant
  Dim var_19D0 As Variant
  Dim var_1AA0 As Variant
  Dim var_1AE8 As Variant
  Dim var_1BB8 As Variant
  Dim var_1BD8 As Variant
  Dim var_1C88 As Variant
  Dim var_1E34 As Variant
  Dim var_1E80 As Variant
  Dim var_1F18 As Variant
  Dim var_2014 As Variant
  Dim var_206C As Variant
  Dim var_211C As Variant
  Dim var_2224 As Variant
  Dim var_2270 As Variant
  Dim var_2328 As Variant
  Dim var_2338 As Variant
  Dim var_2480 As Variant
  Dim var_24C8 As Variant
  Dim var_2530 As Variant
  Dim var_2598 As Variant
  Dim var_2668 As Variant
  Dim var_26D0 As Variant
  Dim var_2738 As Variant
  Dim var_27A0 As Variant
  Dim var_2870 As Variant
  Dim var_28D8 As Variant
  Dim var_28F8 As Variant
  Dim var_29A8 As Variant
  Dim var_2A10 As Variant
  Dim var_2A78 As Variant
  Dim var_2AE0 As Variant
  Dim var_2BB0 As Variant
  Dim var_2C18 As Variant
  Dim var_2C80 As Variant
  Dim var_2CE8 As Variant
  Dim var_2D50 As Variant
  Dim var_2DB8 As Variant
  Dim var_2FB0 As Variant
  Dim var_3210 As Variant
  Dim var_3230 As Variant
  Dim var_33EC As Variant
  Dim var_34F4 As Variant
  Dim var_3514 As Variant
  Dim var_3594 As Variant
  Dim var_361C As Variant
  Dim var_3644 As Variant
  Dim var_369C As Variant
  Dim var_3704 As Variant
  Dim var_377C As Variant
  Dim var_1E0 As DataGrid
  Dim var_204 As TextBox
  Dim var_228 As TextBox
  Dim var_500 As TextBox
  Dim var_558 As TextBox
  Dim var_8E0 As TextBox
  Dim var_994 As TextBox
  Dim var_9EC As TextBox
  Dim var_CEC As TextBox
  Dim var_103C As TextBox
  Dim var_1098 As CheckBox
  Dim var_1360 As TextBox
  Dim var_1430 As Variant
  Dim var_1894 As TextBox
  Dim var_18EC As TextBox
  Dim var_19F8 As TextBox
  Dim var_1D1C As Variant
  Dim var_1D74 As Variant
  Dim var_1D54 As TextBox
  Dim var_1FE4 As TextBox
  Dim var_2360 As TextBox
  Dim var_23B8 As TextBox
  Dim var_2450 As Variant
  Dim var_24B8 As Variant
  Dim var_2520 As Variant
  Dim var_2588 As Variant
  Dim var_25F0 As Variant
  Dim var_2658 As Variant
  Dim var_26C0 As Variant
  Dim var_2728 As Variant
  Dim var_2790 As Variant
  Dim var_27F8 As Variant
  Dim var_2860 As Variant
  Dim var_2930 As Variant
  Dim var_2998 As Variant
  Dim var_2A00 As Variant
  Dim var_2A68 As Variant
  Dim var_2AD0 As Variant
  Dim var_2B38 As Variant
  Dim var_2BA0 As Variant
  Dim var_2C08 As Variant
  Dim var_2C70 As Variant
  Dim var_2CD8 As Variant
  Dim var_2D40 As Variant
  Dim var_2DA8 As Variant
  Dim var_3048 As Variant
  Dim var_3198 As Variant
  Dim var_35CC As CheckBox
  Dim var_3620 As CheckBox
  Dim var_3624 As CheckBox
  Dim var_3678 As CheckBox
  Dim var_367C As CheckBox
  Dim var_3990 As Variant
  Dim var_39C8 As TextBox
  Dim var_39E8 As Variant
  Dim var_AC As String
  Dim var_C0 As String
  Dim var_D4 As Variant
  Dim var_E8 As String
  Dim var_100 As String
  Dim var_118 As String
  Dim var_130 As String
  Dim var_148 As String
  Dim var_160 As String
  Dim var_2EC As Variant
  Dim var_5C0 As Variant
  Dim var_AF4 As Variant
  Dim var_1DCC As Variant
  Dim var_1E24 As Variant
  Dim var_23E8 As Variant
  Dim var_2EF8 As Variant
  Dim var_2FA0 As Variant
  Dim var_30B0 As Variant
  Dim var_30F0 As Variant
  Dim var_3188 As Variant
  Dim var_3200 As Variant
  Dim var_3268 As Variant
  Dim var_32D0 As Variant
  Dim var_332C As Variant
  Dim var_37A0 As Variant
  Dim var_396C As Variant
  Dim var_740 As String
  Dim var_A4 As Variant
  Dim var_180 As Variant
  loc_1CADC24: On Error Goto loc_1CB3750
  loc_1CADC2A: var_8A = Index
  loc_1CADC33: If (var_8A = 0) Then
  loc_1CADC36:   Call Proc_56_54_FB5464(var_8A)
  loc_1CADC44:   unk_554C7A.BeginTrans var_90
  loc_1CADC4B:   var_86 = &HFF
  loc_1CADC5A:   var_90 = Me.Recordset15.RecordCount
  loc_1CADC68:   If (var_90 = 0) Then
  loc_1CADC79:     Set var_A4 = var_A8(CInt(4))
  loc_1CADC7F:     Call 0.Method_Cmd_Click0 (var_AC)
  loc_1CADC87:     var_86 = var_A8.Tag
  loc_1CADC9A:     Set var_B8 = var_BC(CInt(3))
  loc_1CADCA0:     Call 0.Method_Cmd_Click0 (var_C0)
  loc_1CADCA8:      = var_BC.Tag
  loc_1CADCBB:     Set var_CC = var_D0(CInt(2))
  loc_1CADCC1:     Call 0.Method_Cmd_Click0 (var_D4)
  loc_1CADCC9:      = var_D0.Tag
  loc_1CADCDC:     Set var_E0 = var_E4(CInt(7))
  loc_1CADCE2:     Call 0.Method_Cmd_Click0 (var_E8)
  loc_1CADCEA:      = var_E4.Text
  loc_1CADCF7:     var_37AC = Val(var_E8)
  loc_1CADD08:     Set var_F8 = var_FC(CInt(8))
  loc_1CADD0E:     Call 0.Method_Cmd_Click0 (var_100)
  loc_1CADD23:     var_37B4 = Val(var_100)
  loc_1CADD34:     Set var_110 = var_114(CInt(9))
  loc_1CADD3A:     Call 0.Method_Cmd_Click0 (var_118)
  loc_1CADD4F:     var_37BC = Val(var_118)
  loc_1CADD60:     Set var_128 = var_12C(CInt(5))
  loc_1CADD66:     Call 0.Method_Cmd_Click0 (var_130)
  loc_1CADD7B:     var_37C4 = Val(var_130)
  loc_1CADD8C:     Set var_140 = var_144(CInt(6))
  loc_1CADD92:     Call 0.Method_Cmd_Click0 (var_148)
  loc_1CADDA7:     var_37CC = Val(var_148)
  loc_1CADDB8:     Set var_158 = var_15C(CInt(&HC))
  loc_1CADDBE:     Call 0.Method_Cmd_Click0 (var_160)
  loc_1CADDD6:     Set var_16C = var_170(CInt(&HB))
  loc_1CADDDC:     Call 0.Method_Cmd_Click0 ()
  loc_1CADDE4:     Call {33AD4F03-6699-11CF-B70C00AA0060D393}.DispID_FFFFFE80
  loc_1CADDF8:     Set var_190 = var_194(CInt(&H3D))
  loc_1CADDFE:     Call 0.Method_Cmd_Click0 ()
  loc_1CADE06:     Call {33AD4F03-6699-11CF-B70C00AA0060D393}.DispID_FFFFFE5C
  loc_1CADE1D:     Set var_1B4 = var_1B8(CInt(&HB))
  loc_1CADE23:     Call 0.Method_Cmd_Click0 (var_1BC)
  loc_1CADE2B:      = var_1B8.Tag
  loc_1CADE3E:     Set var_1C8 = var_1CC(CInt(1))
  loc_1CADE44:     Call 0.Method_Cmd_Click0 (var_1D0)
  loc_1CADE4C:      = var_1CC.Tag
  loc_1CADE5C:     Set var_1DC = var_1E0(CInt(&H14))
  loc_1CADE62:     Call 0.Method_Cmd_Click0 ()
  loc_1CADE6A:     var_1F0 = CVar(var_1E0) 'Address
  loc_1CADE81:     Set var_200 = var_204(CInt(&H15))
  loc_1CADE87:     Call 0.Method_Cmd_Click0 ()
  loc_1CADE8F:     var_214 = CVar(var_204) 'Address
  loc_1CADEA6:     Set var_224 = var_228(CInt(&H13))
  loc_1CADEAC:     Call 0.Method_Cmd_Click0 ()
  loc_1CADEB4:     var_238 = CVar(var_228) 'Address
  loc_1CADECB:     Set var_248 = var_24C(CInt(&H12))
  loc_1CADED1:     Call 0.Method_Cmd_Click0 ()
  loc_1CADED9:     var_25C = CVar(var_24C) 'Address
  loc_1CADEF0:     Set var_26C = var_270(CInt(&H16))
  loc_1CADEF6:     Call 0.Method_Cmd_Click0 ()
  loc_1CADEFE:     var_280 = CVar(var_270) 'Address
  loc_1CADF18:     Set var_290 = var_294(CInt(&H11))
  loc_1CADF1E:     Call 0.Method_Cmd_Click0 (var_298)
  loc_1CADF26:      = var_294.Tag
  loc_1CADF2E:     var_2A8 = CVar(var_298) 'String
  loc_1CADF44:     Set var_2B8 = var_2BC(CInt(&H10))
  loc_1CADF4A:     Call 0.Method_Cmd_Click0 ()
  loc_1CADF52:     var_2CC = CVar(var_2BC) 'Address
  loc_1CADF66:     var_2DC = CVar(Proc_6_38_E68A98(var_2CC)) 'String
  loc_1CADF6C:     var_2EC = Left(var_2DC, 1)
  loc_1CADF7F:     Set var_330 = var_334(CInt(&H17))
  loc_1CADF85:     Call 0.Method_Cmd_Click0 (var_338)
  loc_1CADF8D:      = var_334.Tag
  loc_1CADF95:     var_348 = CVar(var_338) 'String
  loc_1CADFAE:     Set var_38C = var_390(CInt(&H1B))
  loc_1CADFB4:     Call 0.Method_Cmd_Click0 (var_394)
  loc_1CADFBC:      = var_390.Tag
  loc_1CADFDD:     Set var_3E8 = var_3EC(CInt(&H18))
  loc_1CADFE3:     Call 0.Method_Cmd_Click0 (var_3F0)
  loc_1CADFEB:      = var_3EC.Tag
  loc_1CAE00C:     Set var_444 = var_448(CInt(&H19))
  loc_1CAE012:     Call 0.Method_Cmd_Click0 (var_44C)
  loc_1CAE01A:      = var_448.Tag
  loc_1CAE03B:     Set var_4A0 = var_4A4(CInt(&H1A))
  loc_1CAE041:     Call 0.Method_Cmd_Click0 (var_4A8)
  loc_1CAE049:      = var_4A4.Tag
  loc_1CAE067:     Set var_4FC = var_500(CInt(&H1C))
  loc_1CAE06D:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE08C:     Set var_554 = var_558(CInt(0))
  loc_1CAE092:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE0B1:     Set var_5AC = var_5B0(CInt(1))
  loc_1CAE0B7:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE0BF:     Call {33AD4F03-6699-11CF-B70C00AA0060D393}.DispID_FFFFFA40
  loc_1CAE0D4:     Set var_644 = var_648(&H1D)
  loc_1CAE0DA:     Call 0.Method_Cmd_Click0 (var_64C)
  loc_1CAE0E2:      = var_648.Text
  loc_1CAE0F5:     Set var_690 = var_694(CInt(&H1E))
  loc_1CAE0FB:     Call 0.Method_Cmd_Click0 (var_698)
  loc_1CAE103:      = var_694.Text
  loc_1CAE116:     Set var_6DC = var_6E0(CInt(&H1F))
  loc_1CAE11C:     Call 0.Method_Cmd_Click0 (var_6E4)
  loc_1CAE124:      = var_6E0.Tag
  loc_1CAE145:     Set var_738 = var_73C(CInt(&H21))
  loc_1CAE14B:     Call 0.Method_Cmd_Click0 (var_740)
  loc_1CAE153:      = var_73C.Tag
  loc_1CAE166:     Set var_784 = var_788(CInt(&H22))
  loc_1CAE16C:     Call 0.Method_Cmd_Click0 (var_78C)
  loc_1CAE174:      = var_788.Tag
  loc_1CAE184:     Set var_7D0 = var_7D4(CInt(&HE))
  loc_1CAE18A:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE1A9:     Set var_828 = var_82C(CInt(&HF))
  loc_1CAE1AF:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE1D1:     Set var_880 = var_884(CInt(&H24))
  loc_1CAE1D7:     Call 0.Method_Cmd_Click0 (var_888)
  loc_1CAE1DF:      = var_884.Tag
  loc_1CAE1FD:     Set var_8DC = var_8E0(CInt(&H23))
  loc_1CAE203:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE225:     Set var_934 = var_938(CInt(&H25))
  loc_1CAE22B:     Call 0.Method_Cmd_Click0 (var_93C)
  loc_1CAE233:      = var_938.Tag
  loc_1CAE251:     Set var_990 = var_994(CInt(&H26))
  loc_1CAE257:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE276:     Set var_9E8 = var_9EC(CInt(&H28))
  loc_1CAE27C:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE2A9:     Set var_A70 = var_A74(CInt(Trim(&H27)))
  loc_1CAE2AF:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE2DB:     Set var_AF8 = var_AFC(CInt(Trim(130)))
  loc_1CAE2E1:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE300:     Set var_B50 = var_B54(CInt(&H2A))
  loc_1CAE306:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE324:     Set var_BA8 = var_BAC(135)
  loc_1CAE32A:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE34C:     Set var_C00 = var_C04(CInt(&H2B))
  loc_1CAE352:     Call 0.Method_Cmd_Click0 (var_C08)
  loc_1CAE35A:      = var_C04.Tag
  loc_1CAE37B:     Set var_C9C = var_CA0(CInt(&H2C))
  loc_1CAE381:     Call 0.Method_Cmd_Click0 (var_CA4)
  loc_1CAE389:      = var_CA0.Tag
  loc_1CAE399:     Set var_CE8 = var_CEC(CInt(&H2D))
  loc_1CAE39F:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE3CC:     Set var_DA0 = var_DA4(CInt(&H2F))
  loc_1CAE3D2:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE3F1:     Set var_DF8 = var_DFC(CInt(&H7A))
  loc_1CAE3F7:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE415:     Set var_E50 = var_E54(129)
  loc_1CAE41B:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE43B:     Set var_EA8 = var_EAC(CInt(128))
  loc_1CAE441:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE463:     Set var_F00 = var_F04(CInt(&H30))
  loc_1CAE469:     Call 0.Method_Cmd_Click0 (var_F08)
  loc_1CAE471:      = var_F04.Text
  loc_1CAE481:     Set var_F4C = var_F50(CInt(&H31))
  loc_1CAE487:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE4A8:      = (var_FA6).Value
  loc_1CAE4E4:     Set var_103C = var_1040(CInt(&H32))
  loc_1CAE4EA:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE509:     Set var_1094 = var_1098(CInt(&H34))
  loc_1CAE50F:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE52E:     Set var_10EC = var_10F0(CInt(&H33))
  loc_1CAE534:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE553:     Set var_1144 = var_1148(CInt(&H35))
  loc_1CAE559:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE578:     Set var_119C = var_11A0(CInt(&H36))
  loc_1CAE57E:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE5A0:     Set var_11F4 = var_11F8(CInt(&H37))
  loc_1CAE5A6:     Call 0.Method_Cmd_Click0 (var_11FC)
  loc_1CAE5AE:      = var_11F8.Tag
  loc_1CAE5CC:     Set var_1250 = var_1254(CInt(&H39))
  loc_1CAE5D2:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE5F4:     Set var_12A8 = var_12AC(CInt(&H38))
  loc_1CAE5FA:     Call 0.Method_Cmd_Click0 (var_12B0)
  loc_1CAE602:      = var_12AC.Tag
  loc_1CAE620:     Set var_1304 = var_1308(CInt(&H3A))
  loc_1CAE626:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE645:     Set var_135C = var_1360(CInt(&H3B))
  loc_1CAE64B:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE669:     Set var_13B4 = var_13B8(138)
  loc_1CAE66F:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE68E:     Set var_140C = var_1410(CInt(&H3D))
  loc_1CAE694:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE6A3:     Proc_6_39_E7C810(var_1430)
  loc_1CAE6B3:     Set var_1464 = var_1468(CInt(&H3C))
  loc_1CAE6B9:     Call 0.Method_Cmd_Click0 (CVar(var_1410))
  loc_1CAE6D8:     Set var_14BC = var_14C0(CInt(&H3E))
  loc_1CAE6DE:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE6FE:     Set var_1514 = var_1518(CInt(131))
  loc_1CAE704:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE723:     Set var_156C = var_1570(CInt(&H3F))
  loc_1CAE729:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE748:     Set var_15C4 = var_15C8(CInt(&H40))
  loc_1CAE74E:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE76D:     Set var_161C = var_1620(CInt(&H5C))
  loc_1CAE773:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE792:     Set var_1674 = var_1678(CInt(&H41))
  loc_1CAE798:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE7B7:     Set var_16CC = var_16D0(CInt(&H42))
  loc_1CAE7BD:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE7DC:     Set var_1724 = var_1728(CInt(&H43))
  loc_1CAE7E2:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE804:     Set var_177C = var_1780(CInt(&H44))
  loc_1CAE80A:     Call 0.Method_Cmd_Click0 (var_1784)
  loc_1CAE812:      = var_1780.Tag
  loc_1CAE833:     Set var_17D8 = var_17DC(CInt(&H45))
  loc_1CAE839:     Call 0.Method_Cmd_Click0 (var_17E0)
  loc_1CAE841:      = var_17DC.Tag
  loc_1CAE862:     Set var_1834 = var_1838(CInt(&H46))
  loc_1CAE868:     Call 0.Method_Cmd_Click0 (var_183C)
  loc_1CAE870:      = var_1838.Tag
  loc_1CAE88E:     Set var_1890 = var_1894(CInt(&H47))
  loc_1CAE894:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE8B3:     Set var_18E8 = var_18EC(CInt(&H48))
  loc_1CAE8B9:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE8DB:     Set var_1940 = var_1944(CInt(&H49))
  loc_1CAE8E1:     Call 0.Method_Cmd_Click0 (var_1948)
  loc_1CAE8E9:      = var_1944.Tag
  loc_1CAE907:     Set var_199C = var_19A0(CInt(&H4A))
  loc_1CAE90D:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE92C:     Set var_19F4 = var_19F8(CInt(&H55))
  loc_1CAE932:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE950:     Set var_1A4C = var_1A50(134)
  loc_1CAE956:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE975:     Set var_1AA4 = var_1AA8(CInt(&H4B))
  loc_1CAE97B:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE9AD:     Set var_1B0C = var_1B10(CInt(&H77))
  loc_1CAE9B3:     Call 0.Method_Cmd_Click0 ()
  loc_1CAE9E5:     Set var_1B74 = var_1B78(CInt(&H78))
  loc_1CAE9EB:     Call 0.Method_Cmd_Click0 ()
  loc_1CAEA1D:     Set var_1BDC = var_1BE0(CInt(&H79))
  loc_1CAEA23:     Call 0.Method_Cmd_Click0 ()
  loc_1CAEA55:     Set var_1C44 = var_1C48(CInt(&H58))
  loc_1CAEA5B:     Call 0.Method_Cmd_Click0 ()
  loc_1CAEA90:     Set var_1CAC = var_1CB0(CInt(&H4C))
  loc_1CAEA96:     Call 0.Method_Cmd_Click0 (var_1CB4)
  loc_1CAEA9E:      = var_1CB0.Text
  loc_1CAEAAB:     var_38DC = Val(var_1CB4)
  loc_1CAEAB9:     Set var_1CF8 = var_1CFC(CInt(&H4D))
  loc_1CAEABF:     Call 0.Method_Cmd_Click0 (var_38DC)
  loc_1CAEACE:     Proc_6_17_EAA2B0(var_1D1C)
  loc_1CAEADE:     Set var_1D50 = var_1D54(CInt(&H4E))
  loc_1CAEAE4:     Call 0.Method_Cmd_Click0 (CVar(var_1CFC))
  loc_1CAEAF3:     Proc_6_17_EAA2B0(var_1D74)
  loc_1CAEB03:     Set var_1DA8 = var_1DAC(CInt(&H4F))
  loc_1CAEB09:     Call 0.Method_Cmd_Click0 (CVar(var_1D54))
  loc_1CAEB18:     Proc_6_17_EAA2B0(var_1DCC)
  loc_1CAEB28:     Set var_1E00 = var_1E04(CInt(&H50))
  loc_1CAEB2E:     Call 0.Method_Cmd_Click0 (CVar(var_1DAC))
  loc_1CAEB36:     var_1E14 = CVar(var_1E04) 'Address
  loc_1CAEB3D:     Proc_6_17_EAA2B0(var_1E24)
  loc_1CAEB50:     Set var_1E58 = var_1E5C(CInt(&H51))
  loc_1CAEB56:     Call 0.Method_Cmd_Click0 (var_1E60)
  loc_1CAEB5E:     var_1E14 = var_1E5C.Text
  loc_1CAEB6B:     var_38E4 = Val(var_1E60)
  loc_1CAEB7C:     Set var_1EA4 = var_1EA8(CInt(&H52))
  loc_1CAEB82:     Call 0.Method_Cmd_Click0 (var_1EAC)
  loc_1CAEB97:     var_38EC = Val(var_1EAC)
  loc_1CAEBA8:     Set var_1EF0 = var_1EF4(CInt(&H53))
  loc_1CAEBAE:     Call 0.Method_Cmd_Click0 (var_1EF8)
  loc_1CAEBC3:     var_38F4 = Val(var_1EF8)
  loc_1CAEBD4:     Set var_1F3C = var_1F40(CInt(&H54))
  loc_1CAEBDA:     Call 0.Method_Cmd_Click0 (var_1F44)
  loc_1CAEBEF:     var_38FC = Val(var_1F44)
  loc_1CAEBFD:     Set var_1F88 = var_1F8C(CInt(&H56))
  loc_1CAEC03:     Call 0.Method_Cmd_Click0 (var_38FC)
  loc_1CAEC0B:     var_1F9C = CVar(var_1F8C) 'Address
  loc_1CAEC22:     Set var_1FE0 = var_1FE4(CInt(&H57))
  loc_1CAEC28:     Call 0.Method_Cmd_Click0 ()
  loc_1CAEC47:     Set var_2038 = var_203C(CInt(&H59))
  loc_1CAEC4D:     Call 0.Method_Cmd_Click0 ()
  loc_1CAEC6C:     Set var_2090 = var_2094(CInt(&H75))
  loc_1CAEC72:     Call 0.Method_Cmd_Click0 ()
  loc_1CAEC91:     Set var_20E8 = var_20EC(CInt(&H76))
  loc_1CAEC97:     Call 0.Method_Cmd_Click0 ()
  loc_1CAECB6:     Set var_2140 = var_2144(CInt(&H7B))
  loc_1CAECBC:     Call 0.Method_Cmd_Click0 ()
  loc_1CAECDB:     Set var_2198 = var_219C(CInt(&H7F))
  loc_1CAECE1:     Call 0.Method_Cmd_Click0 ()
  loc_1CAED01:     Set var_21F0 = var_21F4(CInt(132))
  loc_1CAED07:     Call 0.Method_Cmd_Click0 ()
  loc_1CAED29:     Set var_2248 = var_224C(CInt(&H5A))
  loc_1CAED2F:     Call 0.Method_Cmd_Click0 (var_2250)
  loc_1CAED37:      = var_224C.Tag
  loc_1CAED57:     Set var_22A4 = var_22A8(136)
  loc_1CAED5D:     Call 0.Method_Cmd_Click0 (var_22AC)
  loc_1CAED65:      = var_22A8.Tag
  loc_1CAED85:     Set var_2300 = var_2304(137)
  loc_1CAED8B:     Call 0.Method_Cmd_Click0 (var_2308)
  loc_1CAED93:      = var_2304.Tag
  loc_1CAEDB1:     Set var_235C = var_2360(CInt(&H5B))
  loc_1CAEDB7:     Call 0.Method_Cmd_Click0 ()
  loc_1CAEDD6:     Set var_23B4 = var_23B8(CInt(&H5D))
  loc_1CAEDDC:     Call 0.Method_Cmd_Click0 ()
  loc_1CAEDF3:     Proc_6_17_EAA2B0(var_23E8)
  loc_1CAEE03:     Set var_241C = var_2420(CInt(&H5E))
  loc_1CAEE09:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_23B8))))
  loc_1CAEE20:     Proc_6_17_EAA2B0(var_2450)
  loc_1CAEE30:     Set var_2484 = var_2488(CInt(&H5F))
  loc_1CAEE36:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2420))))
  loc_1CAEE4D:     Proc_6_17_EAA2B0(var_24B8)
  loc_1CAEE5D:     Set var_24EC = var_24F0(CInt(&H60))
  loc_1CAEE63:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2488))))
  loc_1CAEE7A:     Proc_6_17_EAA2B0(var_2520)
  loc_1CAEE8A:     Set var_2554 = var_2558(CInt(&H61))
  loc_1CAEE90:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_24F0))))
  loc_1CAEEA7:     Proc_6_17_EAA2B0(var_2588)
  loc_1CAEEB7:     Set var_25BC = var_25C0(CInt(&H62))
  loc_1CAEEBD:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2558))))
  loc_1CAEED4:     Proc_6_17_EAA2B0(var_25F0)
  loc_1CAEEE4:     Set var_2624 = var_2628(CInt(&H63))
  loc_1CAEEEA:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_25C0))))
  loc_1CAEF01:     Proc_6_17_EAA2B0(var_2658)
  loc_1CAEF11:     Set var_268C = var_2690(CInt(&H64))
  loc_1CAEF17:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2628))))
  loc_1CAEF2E:     Proc_6_17_EAA2B0(var_26C0)
  loc_1CAEF3E:     Set var_26F4 = var_26F8(CInt(&H65))
  loc_1CAEF44:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2690))))
  loc_1CAEF5B:     Proc_6_17_EAA2B0(var_2728)
  loc_1CAEF6B:     Set var_275C = var_2760(CInt(&H66))
  loc_1CAEF71:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_26F8))))
  loc_1CAEF88:     Proc_6_17_EAA2B0(var_2790)
  loc_1CAEF98:     Set var_27C4 = var_27C8(CInt(&H67))
  loc_1CAEF9E:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2760))))
  loc_1CAEFB5:     Proc_6_17_EAA2B0(var_27F8)
  loc_1CAEFC5:     Set var_282C = var_2830(CInt(&H68))
  loc_1CAEFCB:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_27C8))))
  loc_1CAEFE2:     Proc_6_17_EAA2B0(var_2860)
  loc_1CAEFF2:     Set var_2894 = var_2898(CInt(&H69))
  loc_1CAEFF8:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2830))))
  loc_1CAF00F:     Proc_6_17_EAA2B0(var_28C8)
  loc_1CAF01F:     Set var_28FC = var_2900(CInt(&H6A))
  loc_1CAF025:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2898))))
  loc_1CAF03C:     Proc_6_17_EAA2B0(var_2930)
  loc_1CAF04C:     Set var_2964 = var_2968(CInt(&H6B))
  loc_1CAF052:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2900))))
  loc_1CAF069:     Proc_6_17_EAA2B0(var_2998)
  loc_1CAF079:     Set var_29CC = var_29D0(CInt(&H6C))
  loc_1CAF07F:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2968))))
  loc_1CAF096:     Proc_6_17_EAA2B0(var_2A00)
  loc_1CAF0A6:     Set var_2A34 = var_2A38(CInt(&H6D))
  loc_1CAF0AC:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_29D0))))
  loc_1CAF0C3:     Proc_6_17_EAA2B0(var_2A68)
  loc_1CAF0D3:     Set var_2A9C = var_2AA0(CInt(&H6E))
  loc_1CAF0D9:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2A38))))
  loc_1CAF0F0:     Proc_6_17_EAA2B0(var_2AD0)
  loc_1CAF100:     Set var_2B04 = var_2B08(CInt(&H6F))
  loc_1CAF106:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2AA0))))
  loc_1CAF11D:     Proc_6_17_EAA2B0(var_2B38)
  loc_1CAF12D:     Set var_2B6C = var_2B70(CInt(&H70))
  loc_1CAF133:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2B08))))
  loc_1CAF14A:     Proc_6_17_EAA2B0(var_2BA0)
  loc_1CAF15A:     Set var_2BD4 = var_2BD8(CInt(&H71))
  loc_1CAF160:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2B70))))
  loc_1CAF177:     Proc_6_17_EAA2B0(var_2C08)
  loc_1CAF187:     Set var_2C3C = var_2C40(CInt(&H72))
  loc_1CAF18D:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2BD8))))
  loc_1CAF1A4:     Proc_6_17_EAA2B0(var_2C70)
  loc_1CAF1B4:     Set var_2CA4 = var_2CA8(CInt(&H73))
  loc_1CAF1BA:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2C40))))
  loc_1CAF1D1:     Proc_6_17_EAA2B0(var_2CD8)
  loc_1CAF1E1:     Set var_2D0C = var_2D10(CInt(&H74))
  loc_1CAF1E7:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2CA8))))
  loc_1CAF1FE:     Proc_6_17_EAA2B0(var_2D40)
  loc_1CAF20F:     Set var_2D74 = var_2D78(CInt(133))
  loc_1CAF215:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2D10))))
  loc_1CAF22C:     Proc_6_17_EAA2B0(var_2DA8)
  loc_1CAF23E:      = CVar(Proc_6_38_E68A98(CVar(var_2D78)))(var_2DDE).Value
  loc_1CAF271:     Proc_6_17_EAA2B0(var_2E50)
  loc_1CAF27D:     Set var_2E84 = IIf((var_2DDE = 1), "Y", "N")(var_2E86)
  loc_1CAF283:      = var_2E84.Value
  loc_1CAF2AB:     var_2EE8 = IIf((var_2E86 = 1), "Y", "N")
  loc_1CAF2B6:     Proc_6_17_EAA2B0(var_2EF8)
  loc_1CAF2C8:      = var_2EE8(var_2F2E).Value
  loc_1CAF2F0:     var_2F90 = IIf((var_2F2E = 1), "Y", "N")
  loc_1CAF2FB:     Proc_6_17_EAA2B0(var_2FA0)
  loc_1CAF307:     Set var_2FD4 = var_2F90(var_2FD6)
  loc_1CAF30D:      = var_2FD4.Value
  loc_1CAF340:     Proc_6_17_EAA2B0(var_3048)
  loc_1CAF352:      = IIf((var_2FD6 = 1), "Y", "N")(var_307E).Value
  loc_1CAF385:     Proc_6_17_EAA2B0(var_30F0)
  loc_1CAF397:      = IIf((var_307E = 1), "Y", "N")(var_3126).Value
  loc_1CAF3CA:     Proc_6_17_EAA2B0(var_3198)
  loc_1CAF3DA:     Set var_31CC = var_31D0(CInt(&H7C))
  loc_1CAF3E0:     Call 0.Method_Cmd_Click0 (IIf((var_3126 = 1), "Y", "N"))
  loc_1CAF3F7:     Proc_6_17_EAA2B0(var_3200)
  loc_1CAF407:     Set var_3234 = var_3238(CInt(&H7D))
  loc_1CAF40D:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_31D0))))
  loc_1CAF424:     Proc_6_17_EAA2B0(var_3268)
  loc_1CAF434:     Set var_329C = var_32A0(CInt(&H7E))
  loc_1CAF43A:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_3238))))
  loc_1CAF44B:     var_32C0 = CVar(Proc_6_38_E68A98(CVar(var_32A0))) 'String
  loc_1CAF451:     Proc_6_17_EAA2B0(var_32D0)
  loc_1CAF465:     Set var_3304 = var_3308(CInt(139))
  loc_1CAF46B:     Call 0.Method_Cmd_Click0 (var_330C)
  loc_1CAF473:     var_32C0 = var_3308.Tag
  loc_1CAF481:     Proc_6_17_EAA2B0(var_332C)
  loc_1CAF490:     Set var_3360 = var_3364(140)
  loc_1CAF496:     Call 0.Method_Cmd_Click0 (CVar(var_330C))
  loc_1CAF4B4:     Set var_33B8 = var_33BC(141)
  loc_1CAF4BA:     Call 0.Method_Cmd_Click0 ()
  loc_1CAF4DA:     Set var_3410 = var_3414(CInt(142))
  loc_1CAF4E0:     Call 0.Method_Cmd_Click0 ()
  loc_1CAF500:     Set var_3468 = var_346C(CInt(143))
  loc_1CAF506:     Call 0.Method_Cmd_Click0 ()
  loc_1CAF526:     Set var_34C0 = var_34C4(CInt(144))
  loc_1CAF52C:     Call 0.Method_Cmd_Click0 ()
  loc_1CAF54A:     Set var_3518 = var_351C(145)
  loc_1CAF550:     Call 0.Method_Cmd_Click0 ()
  loc_1CAF56E:     Set var_3570 = var_3574(146)
  loc_1CAF574:     Call 0.Method_Cmd_Click0 ()
  loc_1CAF594:     Set var_35C8 = var_35CC(CInt(147))
  loc_1CAF59A:     Call 0.Method_Cmd_Click0 ()
  loc_1CAF5BA:     Set var_3620 = var_3624(CInt(148))
  loc_1CAF5C0:     Call 0.Method_Cmd_Click0 ()
  loc_1CAF5DE:     Set var_3678 = var_367C(149)
  loc_1CAF5E4:     Call 0.Method_Cmd_Click0 ()
  loc_1CAF602:     Set var_36D0 = var_36D4(150)
  loc_1CAF608:     Call 0.Method_Cmd_Click0 ()
  loc_1CAF626:     Set var_3728 = var_372C(151)
  loc_1CAF62C:     Call 0.Method_Cmd_Click0 ()
  loc_1CAF654:     var_94 = "Insert Into Enviro(AdvanceAc,Loan_Ac,Salary_Ac,PF_Limit,PF_Employee,PF_Employer,ESI_Limit,ESI_Employee,CashPurchAc,variation,VariationBefore,RoomChrgDueAc,RoomTaxDueAc,Rate1,Rate2,Rate3,Rate4,Rate5,DefCompGroup,ArrDateTimeEdit,CashPayType,RoomPayType,OutletDiscAc,OutletRoundAc,CommissionAc,CalcMethod,CHeckout,checkoutvar,SITECODE,Bill_Footer,Bill_Header,CancellationAC,HallRoundOff,HallDiscAC,OutDoorCatering,CatalogLimit,OutDoorSaleAC,IndoorSaleAC," & "OutDoorpartyAC,IndoorPartyAC,TaxSummary,KOTPrinting,KOTPrintEdited,TokenPrint,KOTOutletSelection,DummyTravelAc,LogSite_Code,BookingPartyAc,RoomChrgPostingType,PlanMastType,PostComplimentaryBills,PostRoomDiscSeparately,POSSaleRevenueBifercation,PostPOSDiscSeparately,AllowRoomSettlement,SplitYN,AutoSplitYN,SmartPurchaseOrder,SMSOption,MobileNo,MobileSet,SMSMessage,AdvanceRRoomRent,BillAmendMode,AmendRevenue,RoomRentBefChkOut,RoomRentChkOutPost,PlanSelectionBasedOn,FomBillCopies,PlanCalc,PrintRcpt,RoomCheckOutClearanceYN,RcptPrinting,POSBillAtNightAudit,KOTAtNightAudit,NoShowAtNightAudit,BookingSlipFooter1,BookingSlipFooter2,CashCardDebitAc,CashCardCreditAc,CashCardSecurityAc,OrderBookingPrintType,"
  loc_1CAF65B:     var_98 = var_94 & "BillPrintingSummerised,PurchaseGodown,RptCashierSettlementAllUser,POSSaleBillEditLog,GuestChargesDeleteLog,GRCMandatory,RoomRateEditable,RoomIncTaxEditable,RoomServiceChargeEditable,CreditCardInfoMandatory,NCKOTPercentage,KOTHeader1,KOTHeader2,KOTHeader3,KOTHeader4,GAppCompYear,GMonthConsidered,GWorkingDaysInAMonth,GDaysSalary,ReqCompWise,AcFieldAlterable,ExpMfdDateInMR,RateEditableInPO,RateEditableInStockIssue,BarCodeFeatureInPurchase,ReprintingOnSaleBillYN,HideSettledBillsOnSaleBillYN,ExciseInvoiceTaxStru,PurchaseTaxVAT,SaleTaxVAT,AddModifyEntryInBackDate"
  loc_1CAF662:     var_9C = var_98 & "ResInstruction1,ResInstruction2,ResInstruction3,ResInstruction4,ResInstruction5,ResInstruction6,ResInstruction7,ResInstruction8,ResInstruction9,ResInstruction10,ResInstruction11,ResInstruction12,FPInstruction1,FPInstruction2,FPInstruction3,FPInstruction4,FPInstruction5,FPInstruction6,FPInstruction7,FPInstruction8,FPInstruction9,FPInstruction10,FPInstruction11,FPInstruction12,PlanTariffNarration"
  loc_1CAF669:     var_A0 = var_9C & "ESIBasic,ESIDA,ESIHRA,ESIConvey,ESIOther,ESILTA,KitchenStockReport,ItemRateInMRBasedOn,ItemRateInPurchaseBillBasedOn,SmartCardItem,CoversMandatory,MobileNoMandatory,RRIncTaxDefault,RRSerChrgDefault,ShowTitleBar,ShowMenuBar,ShowSubMenuBar,ShowShortCutsBar,ServiceTaxOnServiceChargeYN,SeperateReservationLetterAsPerStatusYN,ReservationExpandOnSaveYN,BlockInvalidTarrifIncTaxYN) "
  loc_1CAF670:     var_B0 = var_A0 & " Values ('"
  loc_1CAF677:     var_B4 = var_B0 & var_AC
  loc_1CAF67E:     var_C4 = var_B4 & "','"
  loc_1CAF685:     var_C8 = var_C4 & var_C0
  loc_1CAF68C:     var_D8 = var_C8 & "','"
  loc_1CAF693:     var_DC = var_D8 & var_D4
  loc_1CAF69A:     var_EC = var_DC & "',"
  loc_1CAF6A2:     var_F0 = CStr(var_FC.Text)
  loc_1CAF6A6:     var_F4 = var_EC & var_F0
  loc_1CAF6AD:     var_104 = var_F4 & ","
  loc_1CAF6B5:     var_108 = CStr(var_114.Text)
  loc_1CAF6B9:     var_10C = var_104 & var_108
  loc_1CAF6C0:     var_11C = var_10C & ","
  loc_1CAF6CC:     var_124 = var_11C & CStr(var_12C.Text)
  loc_1CAF6D3:     var_134 = var_124 & ","
  loc_1CAF6DB:     var_138 = CStr(var_144.Text)
  loc_1CAF6DF:     var_13C = var_134 & var_138
  loc_1CAF6E6:     var_14C = var_13C & ","
  loc_1CAF6EE:     var_150 = CStr(var_15C.Tag)
  loc_1CAF6F2:     var_154 = var_14C & var_150
  loc_1CAF6F9:     var_164 = var_154 & ",'"
  loc_1CAF70E:     var_188 = CStr(var_180)
  loc_1CAF712:     var_18C = var_164 & var_160 & "','" & var_188
  loc_1CAF719:     var_1A8 = var_18C & "','"
  loc_1CAF724:     var_1B0 = var_1A8 & CStr(var_1A4)
  loc_1CAF72B:     var_1C0 = var_1B0 & "','"
  loc_1CAF732:     var_1C4 = var_1C0 & var_1BC
  loc_1CAF739:     var_1D4 = var_1C4 & "','"
  loc_1CAF740:     var_1D8 = var_1D4 & var_1D0
  loc_1CAF747:     var_1F4 = var_1D8 & "','"
  loc_1CAF74D:     var_1F8 = Proc_6_38_E68A98(var_1F0)
  loc_1CAF751:     var_1FC = var_1F4 & var_1F8
  loc_1CAF758:     var_218 = var_1FC & "','"
  loc_1CAF75E:     var_21C = Proc_6_38_E68A98(var_214)
  loc_1CAF762:     var_220 = var_218 & var_21C
  loc_1CAF769:     var_23C = var_220 & "','"
  loc_1CAF76F:     var_240 = Proc_6_38_E68A98(var_238)
  loc_1CAF773:     var_244 = var_23C & var_240
  loc_1CAF77A:     var_260 = var_244 & "','"
  loc_1CAF780:     var_264 = Proc_6_38_E68A98(var_25C)
  loc_1CAF784:     var_268 = var_260 & var_264
  loc_1CAF78B:     var_284 = var_268 & "','"
  loc_1CAF791:     var_288 = Proc_6_38_E68A98(var_280)
  loc_1CAF795:     var_28C = var_284 & var_288
  loc_1CAF79C:     var_2AC = var_28C & "','"
  loc_1CAF7A2:     var_2B0 = Proc_6_38_E68A98(var_2A8)
  loc_1CAF7A6:     var_2B4 = var_2AC & var_2B0
  loc_1CAF7AD:     var_2FC = CVar(var_2B4 & "','") 'String
  loc_1CAF7B3:     var_30C = var_2FC & var_2EC 
  loc_1CAF7B7:     var_31C = "','"
  loc_1CAF7C3:     var_358 = CVar(Proc_6_38_E68A98(var_348)) 'String
  loc_1CAF7C6:     var_368 = var_30C & var_31C & var_358 
  loc_1CAF7CA:     var_378 = "','"
  loc_1CAF7CF:     var_388 = var_368 & var_378 
  loc_1CAF7FF:     var_47C = var_388 & CVar(Proc_6_38_E68A98(CVar(var_394))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_3F0))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_44C))) 
  loc_1CAF835:     var_588 = var_47C & "','" & CVar(Proc_6_38_E68A98(CVar(var_4A8))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_500))) & "','" & Trim(CVar(var_558)) 
  loc_1CAF88B:     var_6D8 = var_588 & "','" & CVar(CStr(var_5C0)) & "','" & CVar(MemVar_1F92078) & "','" & CVar(var_64C) & "','" & CVar(var_698) & "','" 
  loc_1CAF8CB:     var_804 = var_6D8 & CVar(Proc_6_38_E68A98(CVar(var_6E4))) & "','" & CVar(var_740) & "','" & CVar(var_78C) & "','" & Trim(CVar(var_7D4)) 
  loc_1CAF904:     var_910 = var_804 & "','" & CVar(Proc_6_38_E68A98(CVar(var_82C))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_888))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_8E0))) 
  loc_1CAF93D:     var_A1C = var_910 & "','" & CVar(Proc_6_38_E68A98(CVar(var_93C))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_994))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_9EC))) 
  loc_1CAF976:     var_B84 = var_A1C & "','" & CVar(Proc_6_38_E68A98(CVar(var_A74))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_AFC))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_B54))) 
  loc_1CAF9AF:     var_C78 = var_B84 & "','" & CVar(Proc_6_38_E68A98(CVar(var_BAC))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_C08))) & "','" & CVar(MemVar_1F92078) 
  loc_1CAF9F1:     var_D9C = var_C78 & "','" & CVar(var_CA4) & "','" & CVar(Proc_6_38_E68A98(CVar(var_CEC))) & "','" & CVar(Proc_6_38_E68A98(&H2E)) & "','" 
  loc_1CAFA21:     var_E84 = var_D9C & CVar(Proc_6_38_E68A98(CVar(var_DA4))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_DFC))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_E54))) 
  loc_1CAFA5A:     var_F80 = var_E84 & "','" & CVar(Proc_6_38_E68A98(CVar(var_EAC))) & "','" & CVar(var_F08) & "','" & CVar(Proc_6_38_E68A98(CVar(var_F50))) 
  loc_1CAFA90:     var_10C8 = var_F80 & "','" & IIf((CLng(var_FA6) = 1), "Y", "N") & "','" & CVar(Proc_6_38_E68A98(CVar(var_1040))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_1098))) 
  loc_1CAFAC9:     var_11D0 = var_10C8 & "','" & CVar(Proc_6_38_E68A98(CVar(var_10F0))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_1148))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_11A0))) 
  loc_1CAFB02:     var_12E0 = var_11D0 & "','" & CVar(Proc_6_38_E68A98(CVar(var_11FC))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_1254))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_12B0))) 
  loc_1CAFB3B:     var_13E8 = var_12E0 & "','" & CVar(Proc_6_38_E68A98(CVar(var_1308))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_1360))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_13B8))) 
  loc_1CAFB71:     var_14F0 = var_13E8 & "'," & var_1430 & ",'" & CVar(Proc_6_38_E68A98(CVar(var_1468))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_14C0))) 
  loc_1CAFB97:     var_15A0 = var_14F0 & "','" & CVar(Proc_6_38_E68A98(CVar(var_1518))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_1570))) 
  loc_1CAFBD0:     var_16A8 = var_15A0 & "','" & CVar(Proc_6_38_E68A98(CVar(var_15C8))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_1620))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_1678))) 
  loc_1CAFC09:     var_17B4 = var_16A8 & "','" & CVar(Proc_6_38_E68A98(CVar(var_16D0))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_1728))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_1784))) 
  loc_1CAFC42:     var_18C4 = var_17B4 & "','" & CVar(Proc_6_38_E68A98(CVar(var_17E0))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_183C))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_1894))) 
  loc_1CAFC7B:     var_19D0 = var_18C4 & "','" & CVar(Proc_6_38_E68A98(CVar(var_18EC))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_1948))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_19A0))) 
  loc_1CAFCB1:     var_1AE8 = var_19D0 & "','" & CVar(Proc_6_38_E68A98(CVar(var_19F8))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_1A50))) & "','" & Left(CVar(Proc_6_38_E68A98(CVar(var_1AA8))), 1) 
  loc_1CAFCD1:     var_1BB8 = var_1AE8 & "','" & Left(CVar(Proc_6_38_E68A98(CVar(var_1B10))), 1) & "','" & Left(CVar(Proc_6_38_E68A98(CVar(var_1B78))), 1) 
  loc_1CAFCF1:     var_1C88 = var_1BB8 & "','" & Left(CVar(Proc_6_38_E68A98(CVar(var_1BE0))), 1) & "','" & Left(CVar(Proc_6_38_E68A98(CVar(var_1C48))), 1) 
  loc_1CAFD59:     var_1E80 = var_1C88 & "'," & CVar(var_38DC) & "," & var_1D1C & "," & var_1D74 & "," & var_1DCC & "," & var_1E24 & "," & CVar(var_1EA8.Text) 
  loc_1CAFD81:     var_1F18 = var_1E80 & "," & CVar(var_1EF4.Text) & "," & CVar(var_1F40.Text) 
  loc_1CAFDBB:     var_2014 = var_1F18 & "," & CVar(var_38FC) & ",'" & CVar(Proc_6_38_E68A98(var_1F9C)) & "','" & CVar(Proc_6_38_E68A98(CVar(var_1FE4))) 
  loc_1CAFDF4:     var_211C = var_2014 & "','" & CVar(Proc_6_38_E68A98(CVar(var_203C))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_2094))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_20EC))) 
  loc_1CAFE2D:     var_2224 = var_211C & "','" & CVar(Proc_6_38_E68A98(CVar(var_2144))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_219C))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_21F4))) 
  loc_1CAFE66:     var_2338 = var_2224 & "','" & CVar(Proc_6_38_E68A98(CVar(var_2250))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_22AC))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_2308))) 
  loc_1CAFEA9:     var_24C8 = var_2338 & "','" & CVar(Proc_6_38_E68A98(CVar(var_2360))) & "'," & var_23E8 & "," & var_2450 & "," & var_24B8 
  loc_1CAFEB9:     var_2530 = var_24C8 & "," & var_2520 
  loc_1CAFEC9:     var_2598 = var_2530 & "," & var_2588 
  loc_1CAFED9:     var_2600 = var_2598 & "," & var_25F0 
  loc_1CAFEE9:     var_2668 = var_2600 & "," & var_2658 
  loc_1CAFEF9:     var_26D0 = var_2668 & "," & var_26C0 
  loc_1CAFF09:     var_2738 = var_26D0 & "," & var_2728 
  loc_1CAFF19:     var_27A0 = var_2738 & "," & var_2790 
  loc_1CAFF29:     var_2808 = var_27A0 & "," & var_27F8 
  loc_1CAFF39:     var_2870 = var_2808 & "," & var_2860 
  loc_1CAFF49:     var_28D8 = var_2870 & "," & var_28C8 
  loc_1CAFF59:     var_2940 = var_28D8 & "," & var_2930 
  loc_1CAFF69:     var_29A8 = var_2940 & "," & var_2998 
  loc_1CAFF79:     var_2A10 = var_29A8 & "," & var_2A00 
  loc_1CAFF89:     var_2A78 = var_2A10 & "," & var_2A68 
  loc_1CAFF99:     var_2AE0 = var_2A78 & "," & var_2AD0 
  loc_1CAFFA9:     var_2B48 = var_2AE0 & "," & var_2B38 
  loc_1CAFFB9:     var_2BB0 = var_2B48 & "," & var_2BA0 
  loc_1CAFFC9:     var_2C18 = var_2BB0 & "," & var_2C08 
  loc_1CAFFD9:     var_2C80 = var_2C18 & "," & var_2C70 
  loc_1CAFFE9:     var_2CE8 = var_2C80 & "," & var_2CD8 
  loc_1CAFFF9:     var_2D50 = var_2CE8 & "," & var_2D40 
  loc_1CB0009:     var_2DB8 = var_2D50 & "," & var_2DA8 
  loc_1CB0079:     var_3210 = var_2DB8 & "," & var_2E50 & "," & var_2EF8 & "," & var_2FA0 & "," & var_3048 & "," & var_30F0 & "," & var_3198 & "," & var_3200 
  loc_1CB00CF:     var_33EC = var_3210 & "," & var_3268 & "," & var_32D0 & "," & var_332C & ",'" & CVar(Proc_6_38_E68A98(CVar(var_3364))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_33BC))) 
  loc_1CB00F2:     var_348C = CVar(Proc_6_38_E68A98(CVar(var_346C))) 'String
  loc_1CB0108:     var_34F4 = var_33EC & "','" & CVar(Proc_6_38_E68A98(CVar(var_3414))) & "','" & var_348C & "','" & CVar(Proc_6_38_E68A98(CVar(var_34C4))) 
  loc_1CB0111:     var_3514 = var_34F4 & "','" 
  loc_1CB012B:     var_3594 = CVar(Proc_6_38_E68A98(CVar(var_3574))) 'String
  loc_1CB014A:     var_361C = var_3514 & CVar(Proc_6_38_E68A98(CVar(var_351C))) & "','" & var_3594 & "','" & CVar(Proc_6_38_E68A98(CVar(var_35CC))) & "','" 
  loc_1CB0164:     var_369C = CVar(Proc_6_38_E68A98(CVar(var_367C))) 'String
  loc_1CB017A:     var_3704 = var_361C & CVar(Proc_6_38_E68A98(CVar(var_3624))) & "','" & var_369C & "','" & CVar(Proc_6_38_E68A98(CVar(var_36D4))) 
  loc_1CB0196:     var_377C = var_3704 & "','" & CVar(Proc_6_38_E68A98(CVar(var_372C))) & "')" 
  loc_1CB01A4:     unk_554C7A.Execute CStr(var_377C), var_37A0, -1
  loc_1CB0957:   Else
  loc_1CB0965:     Set var_A4 = var_A8(CInt(4))
  loc_1CB096B:     Call 0.Method_Cmd_Click0 (var_94)
  loc_1CB0973:     var_37A4 = var_A8.Tag
  loc_1CB0986:     Set var_B8 = var_BC(CInt(3))
  loc_1CB098C:     Call 0.Method_Cmd_Click0 (var_9C)
  loc_1CB0994:      = var_BC.Tag
  loc_1CB09A7:     Set var_CC = var_D0(CInt(2))
  loc_1CB09AD:     Call 0.Method_Cmd_Click0 (var_B0)
  loc_1CB09B5:      = var_D0.Tag
  loc_1CB09C8:     Set var_E0 = var_E4(CInt(7))
  loc_1CB09CE:     Call 0.Method_Cmd_Click0 (var_C4)
  loc_1CB09D6:      = var_E4.Text
  loc_1CB09E3:     var_37AC = Val(var_C4)
  loc_1CB09F4:     Set var_F8 = var_FC(CInt(8))
  loc_1CB09FA:     Call 0.Method_Cmd_Click0 (var_DC)
  loc_1CB0A0F:     var_37B4 = Val(var_DC)
  loc_1CB0A20:     Set var_110 = var_114(CInt(9))
  loc_1CB0A26:     Call 0.Method_Cmd_Click0 (var_F4)
  loc_1CB0A3B:     var_37BC = Val(var_F4)
  loc_1CB0A4C:     Set var_128 = var_12C(CInt(5))
  loc_1CB0A52:     Call 0.Method_Cmd_Click0 (var_10C)
  loc_1CB0A67:     var_37C4 = Val(var_10C)
  loc_1CB0A78:     Set var_140 = var_144(CInt(&H1E))
  loc_1CB0A7E:     Call 0.Method_Cmd_Click0 (var_124)
  loc_1CB0A99:     Set var_158 = var_15C(CInt(6))
  loc_1CB0A9F:     Call 0.Method_Cmd_Click0 (var_13C)
  loc_1CB0AA7:      = var_15C.Text
  loc_1CB0AB4:     var_37CC = Val(var_13C)
  loc_1CB0AC5:     Set var_16C = var_170(CInt(&HC))
  loc_1CB0ACB:     Call 0.Method_Cmd_Click0 (var_154)
  loc_1CB0AE3:     Set var_190 = var_194(CInt(&HB))
  loc_1CB0AE9:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0AF1:     Call {33AD4F03-6699-11CF-B70C00AA0060D393}.DispID_FFFFFE80
  loc_1CB0B05:     Set var_1B4 = var_1B8(CInt(&H3D))
  loc_1CB0B0B:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0B13:     Call {33AD4F03-6699-11CF-B70C00AA0060D393}.DispID_FFFFFE5C
  loc_1CB0B27:     Set var_1C8 = var_1CC(CInt(0))
  loc_1CB0B2D:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0B35:     var_1F0 = CVar(var_1CC) 'Address
  loc_1CB0B3C:     var_214 = Trim(var_1F0)
  loc_1CB0B4C:     Set var_1DC = var_1E0(CInt(1))
  loc_1CB0B52:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0B5A:     Call {33AD4F03-6699-11CF-B70C00AA0060D393}.DispID_FFFFFD58
  loc_1CB0B71:     Set var_200 = var_204(CInt(&HB))
  loc_1CB0B77:     Call 0.Method_Cmd_Click0 (var_1B0)
  loc_1CB0B7F:      = var_204.Tag
  loc_1CB0B92:     Set var_224 = var_228(CInt(1))
  loc_1CB0B98:     Call 0.Method_Cmd_Click0 (var_1BC)
  loc_1CB0BA0:      = var_228.Tag
  loc_1CB0BB0:     Set var_248 = var_24C(CInt(&H14))
  loc_1CB0BB6:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0BBE:     var_388 = CVar(var_24C) 'Address
  loc_1CB0BD5:     Set var_26C = var_270(CInt(&H15))
  loc_1CB0BDB:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0BFA:     Set var_290 = var_294(CInt(&H13))
  loc_1CB0C00:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0C1F:     Set var_2B8 = var_2BC(CInt(&H12))
  loc_1CB0C25:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0C44:     Set var_330 = var_334(CInt(&H16))
  loc_1CB0C4A:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0C6C:     Set var_38C = var_390(CInt(&H11))
  loc_1CB0C72:     Call 0.Method_Cmd_Click0 (var_1C0)
  loc_1CB0C7A:      = var_390.Tag
  loc_1CB0C8A:     Set var_3E8 = var_3EC(CInt(&H10))
  loc_1CB0C90:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0CB7:     Set var_444 = var_448(CInt(&H17))
  loc_1CB0CBD:     Call 0.Method_Cmd_Click0 (var_1C4)
  loc_1CB0CC5:      = var_448.Tag
  loc_1CB0CE6:     Set var_4A0 = var_4A4(CInt(&H1B))
  loc_1CB0CEC:     Call 0.Method_Cmd_Click0 (var_1D0)
  loc_1CB0CF4:      = var_4A4.Tag
  loc_1CB0D15:     Set var_4FC = var_500(CInt(&H18))
  loc_1CB0D1B:     Call 0.Method_Cmd_Click0 (var_1D4)
  loc_1CB0D23:      = var_500.Tag
  loc_1CB0D44:     Set var_554 = var_558(CInt(&H19))
  loc_1CB0D4A:     Call 0.Method_Cmd_Click0 (var_1D8)
  loc_1CB0D52:      = var_558.Tag
  loc_1CB0D73:     Set var_5AC = var_5B0(CInt(&H1A))
  loc_1CB0D79:     Call 0.Method_Cmd_Click0 (var_1F4)
  loc_1CB0D81:      = var_5B0.Tag
  loc_1CB0DA0:     Set var_644 = var_648(&H1D)
  loc_1CB0DA6:     Call 0.Method_Cmd_Click0 (var_1F8)
  loc_1CB0DAE:      = var_648.Text
  loc_1CB0DBE:     Set var_690 = var_694(CInt(&H1C))
  loc_1CB0DC4:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0DE6:     Set var_6DC = var_6E0(CInt(&H1F))
  loc_1CB0DEC:     Call 0.Method_Cmd_Click0 (var_1FC)
  loc_1CB0DF4:      = var_6E0.Tag
  loc_1CB0E15:     Set var_738 = var_73C(CInt(&H22))
  loc_1CB0E1B:     Call 0.Method_Cmd_Click0 (var_218)
  loc_1CB0E23:      = var_73C.Tag
  loc_1CB0E36:     Set var_784 = var_788(CInt(&H21))
  loc_1CB0E3C:     Call 0.Method_Cmd_Click0 (var_21C)
  loc_1CB0E44:      = var_788.Tag
  loc_1CB0E54:     Set var_7D0 = var_7D4(CInt(&HD))
  loc_1CB0E5A:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0E79:     Set var_828 = var_82C(CInt(&HE))
  loc_1CB0E7F:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0E9E:     Set var_880 = var_884(CInt(&HF))
  loc_1CB0EA4:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0EC6:     Set var_8DC = var_8E0(CInt(&H24))
  loc_1CB0ECC:     Call 0.Method_Cmd_Click0 (var_220)
  loc_1CB0ED4:      = var_8E0.Tag
  loc_1CB0EF5:     Set var_934 = var_938(CInt(&H23))
  loc_1CB0EFB:     Call 0.Method_Cmd_Click0 (var_23C)
  loc_1CB0F03:      = var_938.Tag
  loc_1CB0F24:     Set var_990 = var_994(CInt(&H25))
  loc_1CB0F2A:     Call 0.Method_Cmd_Click0 (var_240)
  loc_1CB0F32:      = var_994.Tag
  loc_1CB0F53:     Set var_9E8 = var_9EC(CInt(&H26))
  loc_1CB0F59:     Call 0.Method_Cmd_Click0 (var_244)
  loc_1CB0F61:      = var_9EC.Tag
  loc_1CB0F7F:     Set var_A70 = var_A74(CInt(&H27))
  loc_1CB0F85:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0FAE:     Set var_AF8 = var_AFC(130)
  loc_1CB0FB4:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0FDE:     Set var_B50 = var_B54(CInt(&H28))
  loc_1CB0FE4:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1003:     Set var_BA8 = var_BAC(CInt(&H2A))
  loc_1CB1009:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1027:     Set var_C00 = var_C04(135)
  loc_1CB102D:     Call 0.Method_Cmd_Click0 ()
  loc_1CB104F:     Set var_C9C = var_CA0(CInt(&H2B))
  loc_1CB1055:     Call 0.Method_Cmd_Click0 (var_260)
  loc_1CB105D:      = var_CA0.Tag
  loc_1CB107E:     Set var_CE8 = var_CEC(CInt(&H2C))
  loc_1CB1084:     Call 0.Method_Cmd_Click0 (var_264)
  loc_1CB108C:      = var_CEC.Tag
  loc_1CB109C:     Set var_DA0 = var_DA4(CInt(&H2D))
  loc_1CB10A2:     Call 0.Method_Cmd_Click0 ()
  loc_1CB10C1:     Set var_DF8 = var_DFC(CInt(&H2E))
  loc_1CB10C7:     Call 0.Method_Cmd_Click0 ()
  loc_1CB10E6:     Set var_E50 = var_E54(CInt(&H2F))
  loc_1CB10EC:     Call 0.Method_Cmd_Click0 ()
  loc_1CB110B:     Set var_EA8 = var_EAC(CInt(&H7A))
  loc_1CB1111:     Call 0.Method_Cmd_Click0 ()
  loc_1CB112F:     Set var_F00 = var_F04(129)
  loc_1CB1135:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1155:     Set var_F4C = var_F50(CInt(128))
  loc_1CB115B:     Call 0.Method_Cmd_Click0 ()
  loc_1CB117D:     Set var_FA4 = var_103C(CInt(&H30))
  loc_1CB1183:     Call 0.Method_Cmd_Click0 (var_268)
  loc_1CB118B:      = var_103C.Text
  loc_1CB119B:     Set var_1040 = var_1094(CInt(&H31))
  loc_1CB11A1:     Call 0.Method_Cmd_Click0 ()
  loc_1CB11C2:      = (var_FA6).Value
  loc_1CB11FE:     Set var_10EC = var_10F0(CInt(&H32))
  loc_1CB1204:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1223:     Set var_1144 = var_1148(CInt(&H34))
  loc_1CB1229:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1248:     Set var_119C = var_11A0(CInt(&H33))
  loc_1CB124E:     Call 0.Method_Cmd_Click0 ()
  loc_1CB126D:     Set var_11F4 = var_11F8(CInt(&H35))
  loc_1CB1273:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1292:     Set var_1250 = var_1254(CInt(&H36))
  loc_1CB1298:     Call 0.Method_Cmd_Click0 ()
  loc_1CB12BA:     Set var_12A8 = var_12AC(CInt(&H37))
  loc_1CB12C0:     Call 0.Method_Cmd_Click0 (var_284)
  loc_1CB12C8:      = var_12AC.Tag
  loc_1CB12E6:     Set var_1304 = var_1308(CInt(&H39))
  loc_1CB12EC:     Call 0.Method_Cmd_Click0 ()
  loc_1CB130E:     Set var_135C = var_1360(CInt(&H38))
  loc_1CB1314:     Call 0.Method_Cmd_Click0 (var_288)
  loc_1CB131C:      = var_1360.Tag
  loc_1CB133A:     Set var_13B4 = var_13B8(CInt(&H3A))
  loc_1CB1340:     Call 0.Method_Cmd_Click0 ()
  loc_1CB135F:     Set var_140C = var_1410(CInt(&H3B))
  loc_1CB1365:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1383:     Set var_1464 = var_1468(138)
  loc_1CB1389:     Call 0.Method_Cmd_Click0 ()
  loc_1CB13A8:     Set var_14BC = var_14C0(CInt(&H3D))
  loc_1CB13AE:     Call 0.Method_Cmd_Click0 ()
  loc_1CB13BD:     Proc_6_39_E7C810(var_15A0)
  loc_1CB13CD:     Set var_1514 = var_1518(CInt(&H3C))
  loc_1CB13D3:     Call 0.Method_Cmd_Click0 (CVar(var_14C0))
  loc_1CB13F2:     Set var_156C = var_1570(CInt(&H3E))
  loc_1CB13F8:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1418:     Set var_15C4 = var_15C8(CInt(131))
  loc_1CB141E:     Call 0.Method_Cmd_Click0 ()
  loc_1CB143D:     Set var_161C = var_1620(CInt(&H3F))
  loc_1CB1443:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1462:     Set var_1674 = var_1678(CInt(&H40))
  loc_1CB1468:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1487:     Set var_16CC = var_16D0(CInt(&H5C))
  loc_1CB148D:     Call 0.Method_Cmd_Click0 ()
  loc_1CB14AC:     Set var_1724 = var_1728(CInt(&H41))
  loc_1CB14B2:     Call 0.Method_Cmd_Click0 ()
  loc_1CB14D1:     Set var_177C = var_1780(CInt(&H42))
  loc_1CB14D7:     Call 0.Method_Cmd_Click0 ()
  loc_1CB14F6:     Set var_17D8 = var_17DC(CInt(&H43))
  loc_1CB14FC:     Call 0.Method_Cmd_Click0 ()
  loc_1CB151E:     Set var_1834 = var_1838(CInt(&H44))
  loc_1CB1524:     Call 0.Method_Cmd_Click0 (var_28C)
  loc_1CB152C:      = var_1838.Tag
  loc_1CB154D:     Set var_1890 = var_1894(CInt(&H45))
  loc_1CB1553:     Call 0.Method_Cmd_Click0 (var_298)
  loc_1CB155B:      = var_1894.Tag
  loc_1CB157C:     Set var_18E8 = var_18EC(CInt(&H46))
  loc_1CB1582:     Call 0.Method_Cmd_Click0 (var_2AC)
  loc_1CB158A:      = var_18EC.Tag
  loc_1CB15A8:     Set var_1940 = var_1944(CInt(&H47))
  loc_1CB15AE:     Call 0.Method_Cmd_Click0 ()
  loc_1CB15CD:     Set var_199C = var_19A0(CInt(&H48))
  loc_1CB15D3:     Call 0.Method_Cmd_Click0 ()
  loc_1CB15F5:     Set var_19F4 = var_19F8(CInt(&H49))
  loc_1CB15FB:     Call 0.Method_Cmd_Click0 (var_2B0)
  loc_1CB1603:      = var_19F8.Tag
  loc_1CB1613:     Set var_1A4C = var_1A50(CInt(&H4A))
  loc_1CB1619:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1638:     Set var_1AA4 = var_1AA8(CInt(&H55))
  loc_1CB163E:     Call 0.Method_Cmd_Click0 ()
  loc_1CB165C:     Set var_1B0C = var_1B10(134)
  loc_1CB1662:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1681:     Set var_1B74 = var_1B78(CInt(&H4B))
  loc_1CB1687:     Call 0.Method_Cmd_Click0 ()
  loc_1CB16AB:     Set var_1BDC = var_1BE0(CInt(&H77))
  loc_1CB16B1:     Call 0.Method_Cmd_Click0 ()
  loc_1CB16D5:     Set var_1C44 = var_1C48(CInt(&H78))
  loc_1CB16DB:     Call 0.Method_Cmd_Click0 ()
  loc_1CB16FF:     Set var_1CAC = var_1CB0(CInt(&H79))
  loc_1CB1705:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1729:     Set var_1CF8 = var_1CFC(CInt(&H58))
  loc_1CB172F:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1756:     Set var_1D50 = var_1D54(CInt(&H4C))
  loc_1CB175C:     Call 0.Method_Cmd_Click0 (var_2B4)
  loc_1CB1764:      = var_1D54.Text
  loc_1CB1771:     var_38DC = Val(var_2B4)
  loc_1CB177F:     Set var_1DA8 = var_1DAC(CInt(&H4D))
  loc_1CB1785:     Call 0.Method_Cmd_Click0 (var_38DC)
  loc_1CB1794:     Proc_6_17_EAA2B0(var_1E14)
  loc_1CB17A4:     Set var_1E00 = var_1E04(CInt(&H4E))
  loc_1CB17AA:     Call 0.Method_Cmd_Click0 (CVar(var_1DAC))
  loc_1CB17B9:     Proc_6_17_EAA2B0(var_1E80)
  loc_1CB17C9:     Set var_1E58 = var_1E5C(CInt(&H4F))
  loc_1CB17CF:     Call 0.Method_Cmd_Click0 (CVar(var_1E04))
  loc_1CB17DE:     Proc_6_17_EAA2B0(var_1F18)
  loc_1CB17EE:     Set var_1EA4 = var_1EA8(CInt(&H50))
  loc_1CB17F4:     Call 0.Method_Cmd_Click0 (CVar(var_1E5C))
  loc_1CB17FC:     var_1F84 = CVar(var_1EA8) 'Address
  loc_1CB1803:     Proc_6_17_EAA2B0(var_1F9C)
  loc_1CB1816:     Set var_1EF0 = var_1EF4(CInt(&H51))
  loc_1CB181C:     Call 0.Method_Cmd_Click0 (var_338)
  loc_1CB1824:     var_1F84 = var_1EF4.Text
  loc_1CB1831:     var_38E4 = Val(var_338)
  loc_1CB1842:     Set var_1F3C = var_1F40(CInt(&H52))
  loc_1CB1848:     Call 0.Method_Cmd_Click0 (var_394)
  loc_1CB185D:     var_38EC = Val(var_394)
  loc_1CB186E:     Set var_1F88 = var_1F8C(CInt(&H53))
  loc_1CB1874:     Call 0.Method_Cmd_Click0 (var_3F0)
  loc_1CB1889:     var_38F4 = Val(var_3F0)
  loc_1CB189A:     Set var_1FE0 = var_1FE4(CInt(&H54))
  loc_1CB18A0:     Call 0.Method_Cmd_Click0 (var_44C)
  loc_1CB18B5:     var_38FC = Val(var_44C)
  loc_1CB18C3:     Set var_2038 = var_203C(CInt(&H56))
  loc_1CB18C9:     Call 0.Method_Cmd_Click0 (var_38FC)
  loc_1CB18E8:     Set var_2090 = var_2094(CInt(&H57))
  loc_1CB18EE:     Call 0.Method_Cmd_Click0 ()
  loc_1CB190D:     Set var_20E8 = var_20EC(CInt(&H59))
  loc_1CB1913:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1932:     Set var_2140 = var_2144(CInt(&H75))
  loc_1CB1938:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1957:     Set var_2198 = var_219C(CInt(&H76))
  loc_1CB195D:     Call 0.Method_Cmd_Click0 ()
  loc_1CB197C:     Set var_21F0 = var_21F4(CInt(&H7B))
  loc_1CB1982:     Call 0.Method_Cmd_Click0 ()
  loc_1CB19A1:     Set var_2248 = var_224C(CInt(&H7F))
  loc_1CB19A7:     Call 0.Method_Cmd_Click0 ()
  loc_1CB19C7:     Set var_22A4 = var_22A8(CInt(132))
  loc_1CB19CD:     Call 0.Method_Cmd_Click0 ()
  loc_1CB19EF:     Set var_2300 = var_2304(CInt(&H5A))
  loc_1CB19F5:     Call 0.Method_Cmd_Click0 (var_4A8)
  loc_1CB19FD:      = var_2304.Tag
  loc_1CB1A1D:     Set var_235C = var_2360(136)
  loc_1CB1A23:     Call 0.Method_Cmd_Click0 (var_64C)
  loc_1CB1A2B:      = var_2360.Tag
  loc_1CB1A4B:     Set var_23B4 = var_23B8(137)
  loc_1CB1A51:     Call 0.Method_Cmd_Click0 (var_698)
  loc_1CB1A59:      = var_23B8.Tag
  loc_1CB1A77:     Set var_241C = var_2420(CInt(&H5B))
  loc_1CB1A7D:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1A9C:     Set var_2484 = var_2488(CInt(&H5D))
  loc_1CB1AA2:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1AB9:     Proc_6_17_EAA2B0(var_24C8)
  loc_1CB1AC9:     Set var_24EC = var_24F0(CInt(&H5E))
  loc_1CB1ACF:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2488))))
  loc_1CB1AE6:     Proc_6_17_EAA2B0(var_2530)
  loc_1CB1AF6:     Set var_2554 = var_2558(CInt(&H5F))
  loc_1CB1AFC:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_24F0))))
  loc_1CB1B13:     Proc_6_17_EAA2B0(var_2598)
  loc_1CB1B23:     Set var_25BC = var_25C0(CInt(&H60))
  loc_1CB1B29:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2558))))
  loc_1CB1B40:     Proc_6_17_EAA2B0(var_2600)
  loc_1CB1B50:     Set var_2624 = var_2628(CInt(&H61))
  loc_1CB1B56:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_25C0))))
  loc_1CB1B6D:     Proc_6_17_EAA2B0(var_2668)
  loc_1CB1B7D:     Set var_268C = var_2690(CInt(&H62))
  loc_1CB1B83:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2628))))
  loc_1CB1B9A:     Proc_6_17_EAA2B0(var_26D0)
  loc_1CB1BAA:     Set var_26F4 = var_26F8(CInt(&H63))
  loc_1CB1BB0:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2690))))
  loc_1CB1BC7:     Proc_6_17_EAA2B0(var_2738)
  loc_1CB1BD7:     Set var_275C = var_2760(CInt(&H64))
  loc_1CB1BDD:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_26F8))))
  loc_1CB1BF4:     Proc_6_17_EAA2B0(var_27A0)
  loc_1CB1C04:     Set var_27C4 = var_27C8(CInt(&H65))
  loc_1CB1C0A:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2760))))
  loc_1CB1C21:     Proc_6_17_EAA2B0(var_2808)
  loc_1CB1C31:     Set var_282C = var_2830(CInt(&H66))
  loc_1CB1C37:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_27C8))))
  loc_1CB1C4E:     Proc_6_17_EAA2B0(var_2870)
  loc_1CB1C5E:     Set var_2894 = var_2898(CInt(&H67))
  loc_1CB1C64:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2830))))
  loc_1CB1C7B:     Proc_6_17_EAA2B0(var_28D8)
  loc_1CB1C8B:     Set var_28FC = var_2900(CInt(&H68))
  loc_1CB1C91:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2898))))
  loc_1CB1CA8:     Proc_6_17_EAA2B0(var_2940)
  loc_1CB1CB8:     Set var_2964 = var_2968(CInt(&H69))
  loc_1CB1CBE:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2900))))
  loc_1CB1CD5:     Proc_6_17_EAA2B0(var_29A8)
  loc_1CB1CE5:     Set var_29CC = var_29D0(CInt(&H6A))
  loc_1CB1CEB:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2968))))
  loc_1CB1D02:     Proc_6_17_EAA2B0(var_2A10)
  loc_1CB1D12:     Set var_2A34 = var_2A38(CInt(&H6B))
  loc_1CB1D18:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_29D0))))
  loc_1CB1D2F:     Proc_6_17_EAA2B0(var_2A78)
  loc_1CB1D3F:     Set var_2A9C = var_2AA0(CInt(&H6C))
  loc_1CB1D45:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2A38))))
  loc_1CB1D5C:     Proc_6_17_EAA2B0(var_2AE0)
  loc_1CB1D6C:     Set var_2B04 = var_2B08(CInt(&H6D))
  loc_1CB1D72:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2AA0))))
  loc_1CB1D89:     Proc_6_17_EAA2B0(var_2B48)
  loc_1CB1D99:     Set var_2B6C = var_2B70(CInt(&H6E))
  loc_1CB1D9F:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2B08))))
  loc_1CB1DB6:     Proc_6_17_EAA2B0(var_2BB0)
  loc_1CB1DC6:     Set var_2BD4 = var_2BD8(CInt(&H6F))
  loc_1CB1DCC:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2B70))))
  loc_1CB1DE3:     Proc_6_17_EAA2B0(var_2C18)
  loc_1CB1DF3:     Set var_2C3C = var_2C40(CInt(&H70))
  loc_1CB1DF9:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2BD8))))
  loc_1CB1E10:     Proc_6_17_EAA2B0(var_2C80)
  loc_1CB1E20:     Set var_2CA4 = var_2CA8(CInt(&H71))
  loc_1CB1E26:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2C40))))
  loc_1CB1E3D:     Proc_6_17_EAA2B0(var_2CE8)
  loc_1CB1E4D:     Set var_2D0C = var_2D10(CInt(&H72))
  loc_1CB1E53:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2CA8))))
  loc_1CB1E6A:     Proc_6_17_EAA2B0(var_2D50)
  loc_1CB1E7A:     Set var_2D74 = var_2D78(CInt(&H73))
  loc_1CB1E80:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2D10))))
  loc_1CB1E97:     Proc_6_17_EAA2B0(var_2DB8)
  loc_1CB1EA7:     Set var_2DDC = var_2E84(CInt(&H74))
  loc_1CB1EAD:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2D78))))
  loc_1CB1EC4:     Proc_6_17_EAA2B0(var_2E50)
  loc_1CB1ED5:     Set var_2F2C = var_2FD4(CInt(133))
  loc_1CB1EDB:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_2E84))))
  loc_1CB1EF2:     Proc_6_17_EAA2B0(var_2EE8)
  loc_1CB1F04:      = CVar(Proc_6_38_E68A98(CVar(var_2FD4)))(var_2DDE).Value
  loc_1CB1F37:     Proc_6_17_EAA2B0(var_2F90)
  loc_1CB1F46:     Set var_3124 = var_31CC(140)
  loc_1CB1F4C:     Call 0.Method_Cmd_Click0 (IIf((var_2DDE = 1), "Y", "N"))
  loc_1CB1F6A:     Set var_31D0 = var_3234(141)
  loc_1CB1F70:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1F90:     Set var_3238 = var_329C(CInt(142))
  loc_1CB1F96:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1FB6:     Set var_32A0 = var_3304(CInt(143))
  loc_1CB1FBC:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1FDC:     Set var_3308 = var_3360(CInt(144))
  loc_1CB1FE2:     Call 0.Method_Cmd_Click0 ()
  loc_1CB2000:     Set var_3364 = var_33B8(145)
  loc_1CB2006:     Call 0.Method_Cmd_Click0 ()
  loc_1CB2024:     Set var_33BC = var_3410(146)
  loc_1CB202A:     Call 0.Method_Cmd_Click0 ()
  loc_1CB204A:     Set var_3414 = var_3468(CInt(147))
  loc_1CB2050:     Call 0.Method_Cmd_Click0 ()
  loc_1CB2070:     Set var_346C = var_34C0(CInt(148))
  loc_1CB2076:     Call 0.Method_Cmd_Click0 ()
  loc_1CB2094:     Set var_34C4 = var_3518(149)
  loc_1CB209A:     Call 0.Method_Cmd_Click0 ()
  loc_1CB20B8:     Set var_351C = var_3570(150)
  loc_1CB20BE:     Call 0.Method_Cmd_Click0 ()
  loc_1CB20DC:     Set var_3574 = var_35C8(151)
  loc_1CB20E2:     Call 0.Method_Cmd_Click0 ()
  loc_1CB2103:      = (var_2E86).Value
  loc_1CB2136:     Proc_6_17_EAA2B0(var_348C)
  loc_1CB2148:      = IIf((var_2E86 = 1), "Y", "N")(var_2F2E).Value
  loc_1CB217B:     Proc_6_17_EAA2B0(var_3514)
  loc_1CB218D:      = IIf((var_2F2E = 1), "Y", "N")(var_2FD6).Value
  loc_1CB21C0:     Proc_6_17_EAA2B0(var_3594)
  loc_1CB21D2:      = IIf((var_2FD6 = 1), "Y", "N")(var_307E).Value
  loc_1CB2205:     Proc_6_17_EAA2B0(var_361C)
  loc_1CB2217:      = IIf((var_307E = 1), "Y", "N")(var_3126).Value
  loc_1CB224A:     Proc_6_17_EAA2B0(var_369C)
  loc_1CB225A:     Set var_36D0 = var_36D4(CInt(&H7C))
  loc_1CB2260:     Call 0.Method_Cmd_Click0 (IIf((var_3126 = 1), "Y", "N"))
  loc_1CB2277:     Proc_6_17_EAA2B0(var_3704)
  loc_1CB2287:     Set var_3728 = var_372C(CInt(&H7D))
  loc_1CB228D:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_36D4))))
  loc_1CB22A4:     Proc_6_17_EAA2B0(var_377C)
  loc_1CB22B4:     Set var_37A4 = var_3970(CInt(&H7E))
  loc_1CB22BA:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E68A98(CVar(var_372C))))
  loc_1CB22CB:     var_3990 = CVar(Proc_6_38_E68A98(CVar(var_3970))) 'String
  loc_1CB22D1:     Proc_6_17_EAA2B0(var_39A0)
  loc_1CB22E5:     Set var_39C4 = var_39C8(CInt(139))
  loc_1CB22EB:     Call 0.Method_Cmd_Click0 (var_6E4)
  loc_1CB22F3:     var_3990 = var_39C8.Tag
  loc_1CB2303:     var_39E8 = CVar(Proc_6_38_E68A98(CVar(var_6E4))) 'String
  loc_1CB2309:     Proc_6_17_EAA2B0(var_39F8)
  loc_1CB2322:     var_98 = "Update Enviro Set AdvanceAc='" & var_94
  loc_1CB2337:     var_B4 = var_98 & "',Loan_Ac='" & var_9C & "',Salary_Ac='"
  loc_1CB233E:     var_C0 = var_B4 & var_B0
  loc_1CB2345:     var_C8 = var_C0 & "',PF_Limit="
  loc_1CB234D:     var_D4 = CStr(var_FC.Text)
  loc_1CB2351:     var_D8 = var_C8 & var_D4
  loc_1CB2358:     var_E8 = var_D8 & ",PF_Employee="
  loc_1CB2364:     var_F0 = var_E8 & CStr(var_114.Text)
  loc_1CB2377:     var_108 = var_F0 & ",PF_Employer=" & CStr(var_12C.Text)
  loc_1CB237E:     var_118 = var_108 & ",ESI_Limit="
  loc_1CB238A:     var_120 = var_118 & CStr(var_144.Text)
  loc_1CB2391:     var_130 = var_120 & ",Bill_Header='"
  loc_1CB2398:     var_134 = var_130 & var_124
  loc_1CB23B2:     var_150 = var_134 & "'," & "ESI_Employee=" & CStr(var_170.Tag)
  loc_1CB23B9:     var_160 = var_150 & ",CashPurchAc='"
  loc_1CB23C7:     var_168 = var_160 & var_154 & "',Variation='"
  loc_1CB23CE:     var_184 = CStr(var_180)
  loc_1CB23D2:     var_188 = var_168 & var_184
  loc_1CB23D9:     var_18C = var_188 & "',VariationBefore='"
  loc_1CB23E0:     var_1A8 = CStr(var_1A4)
  loc_1CB23E4:     var_1AC = var_18C & var_1A8
  loc_1CB23EB:     var_238 = CVar(var_1AC & "',CHeckout='") 'String
  loc_1CB23F5:     var_31C = "',checkoutvar='"
  loc_1CB23FA:     var_280 = var_238 & var_214 & var_31C 
  loc_1CB2405:     var_2DC = var_280 & CVar(CStr(var_2A8)) 
  loc_1CB2409:     var_378 = "',RoomChrgDueAc='"
  loc_1CB240E:     var_2EC = var_2DC & var_378 
  loc_1CB2415:     var_2FC = CVar(var_1B0) 'String
  loc_1CB2421:     var_32C = var_2EC & var_2FC & "',RoomTaxDueAc='" 
  loc_1CB2428:     var_348 = CVar(var_1BC) 'String
  loc_1CB243B:     var_3A4 = CVar(Proc_6_38_E68A98(var_388)) 'String
  loc_1CB2464:     var_46C = var_32C & var_348 & "',Rate1='" & var_3A4 & "',Rate2='" & CVar(Proc_6_38_E68A98(CVar(var_270))) & "',Rate3='" & CVar(Proc_6_38_E68A98(CVar(var_294))) 
  loc_1CB2493:     var_530 = var_46C & "',Rate4='" & CVar(Proc_6_38_E68A98(CVar(var_2BC))) & "',Rate5='" & CVar(Proc_6_38_E68A98(CVar(var_334))) & "',DefCompGroup='" 
  loc_1CB24C0:     var_620 = var_530 & CVar(var_1C0) & "',ArrDateTimeEdit='" & Left(CVar(var_3EC), 1) & "',CashPayType='" & CVar(Proc_6_38_E68A98(CVar(var_1C4))) 
  loc_1CB24E6:     var_6F4 = var_620 & "',RoomPayType='" & CVar(Proc_6_38_E68A98(CVar(var_1D0))) & "',OutletDiscAc='" & CVar(Proc_6_38_E68A98(CVar(var_1D4))) 
  loc_1CB250C:     var_7AC = var_6F4 & "',OutletRoundAc='" & CVar(Proc_6_38_E68A98(CVar(var_1D8))) & "',CommissionAc='" & CVar(Proc_6_38_E68A98(CVar(var_1F4))) 
  loc_1CB253B:     var_85C = var_7AC & "',Bill_Footer='" & CVar(var_1F8) & "',CalcMethod='" & CVar(Proc_6_38_E68A98(CVar(var_694))) & "',CancellationAC='" 
  loc_1CB2574:     var_94C = var_85C & CVar(Proc_6_38_E68A98(CVar(var_1FC))) & "',HallDiscAC='" & CVar(var_218) & "',HallRoundOff='" & CVar(var_21C) & "',PostingTYPE='" 
  loc_1CB259E:     var_A3C = var_94C & Trim(CVar(var_7D4)) & "',OutDoorCatering='" & Trim(CVar(var_82C)) & "',CatalogLimit='" & CVar(Proc_6_38_E68A98(CVar(var_884))) 
  loc_1CB25C4:     var_AF4 = var_A3C & "',OutDoorSaleAC='" & CVar(Proc_6_38_E68A98(CVar(var_220))) & "',IndoorSaleAC='" & CVar(Proc_6_38_E68A98(CVar(var_23C))) 
  loc_1CB25EA:     var_BA4 = var_AF4 & "',OutDoorPartyAC='" & CVar(Proc_6_38_E68A98(CVar(var_240))) & "',IndoorPartyAC='" & CVar(Proc_6_38_E68A98(CVar(var_244))) 
  loc_1CB2610:     var_C98 = var_BA4 & "',KOTPrinting='" & CVar(Proc_6_38_E68A98(Trim(CVar(var_A74)))) & "',KOTPrintEdited='" & CVar(Proc_6_38_E68A98(Trim(CVar(var_AFC)))) 
  loc_1CB2636:     var_D5C = var_C98 & "',TaxSummary='" & CVar(Proc_6_38_E68A98(CVar(var_B54))) & "',TOKENPrint='" & CVar(Proc_6_38_E68A98(CVar(var_BAC))) 
  loc_1CB265C:     var_E0C = var_D5C & "',KOTOutletSelection='" & CVar(Proc_6_38_E68A98(CVar(var_C04))) & "',DummyTravelAc='" & CVar(Proc_6_38_E68A98(CVar(var_260))) 
  loc_1CB268B:     var_EBC = var_E0C & "',BookingPartyAc='" & CVar(var_264) & "',RoomChrgPostingType='" & CVar(Proc_6_38_E68A98(CVar(var_DA4))) & "',PlanMastType='" 
  loc_1CB26B1:     var_F70 = var_EBC & CVar(Proc_6_38_E68A98(CVar(var_DFC))) & "',PostComplimentaryBills='" & CVar(Proc_6_38_E68A98(CVar(var_E54))) & "',PostRoomDiscSeparately='" 
  loc_1CB26CE:     var_1038 = var_F70 & CVar(Proc_6_38_E68A98(CVar(var_EAC))) & "',POSSaleRevenueBifercation='" & CVar(Proc_6_38_E68A98(CVar(var_F04))) 
  loc_1CB26F4:     var_10C8 = var_1038 & "',PostPOSDiscSeparately='" & CVar(Proc_6_38_E68A98(CVar(var_F50))) & "',AllowRoomSettlement='" & CVar(var_268) 
  loc_1CB2717:     var_1198 = var_10C8 & "',SplitYN='" & CVar(Proc_6_38_E68A98(CVar(var_1094))) & "',AutoSplitYN='" & IIf((CLng(var_FA6) = 1), "Y", "N") 
  loc_1CB273D:     var_124C = var_1198 & "',SmartPurchaseOrder='" & CVar(Proc_6_38_E68A98(CVar(var_10F0))) & "',SMSOption='" & CVar(Proc_6_38_E68A98(CVar(var_1148))) 
  loc_1CB2763:     var_1300 = var_124C & "',MobileNo='" & CVar(Proc_6_38_E68A98(CVar(var_11A0))) & "',MobileSet='" & CVar(Proc_6_38_E68A98(CVar(var_11F8))) 
  loc_1CB2789:     var_13B0 = var_1300 & "',SMSMessage='" & CVar(Proc_6_38_E68A98(CVar(var_1254))) & "',AdvanceRRoomRent='" & CVar(Proc_6_38_E68A98(CVar(var_284))) 
  loc_1CB27AF:     var_1460 = var_13B0 & "',BillAmendMode='" & CVar(Proc_6_38_E68A98(CVar(var_1308))) & "',AmendRevenue='" & CVar(Proc_6_38_E68A98(CVar(var_288))) 
  loc_1CB27D5:     var_1510 = var_1460 & "',RoomRentBefChkOut='" & CVar(Proc_6_38_E68A98(CVar(var_13B8))) & "',RoomRentChkOutPost='" & CVar(Proc_6_38_E68A98(CVar(var_1410))) 
  loc_1CB2801:     var_15D8 = var_1510 & "',PlanSelectionBasedOn='" & CVar(Proc_6_38_E68A98(CVar(var_1468))) & "',FOMBillCopies=" & var_15A0 & ",PlanCalc='" 
  loc_1CB2827:     var_1688 = var_15D8 & CVar(Proc_6_38_E68A98(CVar(var_1518))) & "',PrintRcpt='" & CVar(Proc_6_38_E68A98(CVar(var_1570))) & "',RoomCheckOutClearanceYN='" 
  loc_1CB284D:     var_1738 = var_1688 & CVar(Proc_6_38_E68A98(CVar(var_15C8))) & "',RcptPrinting='" & CVar(Proc_6_38_E68A98(CVar(var_1620))) & "',POSBillAtNightAudit='" 
  loc_1CB2873:     var_17F0 = var_1738 & CVar(Proc_6_38_E68A98(CVar(var_1678))) & "',KOTAtNightAudit='" & CVar(Proc_6_38_E68A98(CVar(var_16D0))) & "',NoShowAtNightAudit='" 
  loc_1CB2899:     var_18A4 = var_17F0 & CVar(Proc_6_38_E68A98(CVar(var_1728))) & "',BookingSlipFooter1='" & CVar(Proc_6_38_E68A98(CVar(var_1780))) & "',BookingSlipFooter2='" 
  loc_1CB28BF:     var_1958 = var_18A4 & CVar(Proc_6_38_E68A98(CVar(var_17DC))) & "',CashCardDebitAc='" & CVar(Proc_6_38_E68A98(CVar(var_28C))) & "',CashCardCreditAc='" 
  loc_1CB28E5:     var_1A08 = var_1958 & CVar(Proc_6_38_E68A98(CVar(var_298))) & "',CashCardSecurityAc='" & CVar(Proc_6_38_E68A98(CVar(var_2AC))) & "',OrderBookingPrintType='" 
  loc_1CB2902:     var_1AA0 = var_1A08 & CVar(Proc_6_38_E68A98(CVar(var_1944))) & "',BillPrintingSummerised='" & CVar(Proc_6_38_E68A98(CVar(var_19A0))) 
  loc_1CB2928:     var_1B30 = var_1AA0 & "',PurchaseGodown='" & CVar(var_2B0) & "',RptCashierSettlementAllUser='" & CVar(Proc_6_38_E68A98(CVar(var_1A50))) 
  loc_1CB294E:     var_1BD8 = var_1B30 & "',POSSaleBillEditLog='" & CVar(Proc_6_38_E68A98(CVar(var_1AA8))) & "',GuestChargesDeleteLog='" & CVar(Proc_6_38_E68A98(CVar(var_1B10))) 
  loc_1CB2977:     var_1C88 = var_1BD8 & "',GRCMandatory='" & Left(CVar(var_1B78), 1) & "',RoomRateEditable='" & Left(CVar(var_1BE0), 1) & "',RoomIncTaxEditable='" 
  loc_1CB2997:     var_1D64 = var_1C88 & Left(CVar(var_1C48), 1) & "',RoomServiceChargeEditable='" & Left(CVar(var_1CB0), 1) & "',CreditCardInfoMandatory ='" 
  loc_1CB29CB:     var_1E34 = var_1D64 & Left(CVar(var_1CFC), 1) & "',NCKOTPercentage=" & CVar(var_38DC) & ",KOTHeader1=" & var_1E14 & ",KOTHeader2=" 
  loc_1CB2A0F:     var_1FF4 = var_1E34 & var_1E80 & ",KOTHeader3=" & var_1F18 & ",KOTHeader4=" & var_1F9C & ",GAppCompYear=" & CVar(var_1F40.Text) & ",GMonthConsidered=" 
  loc_1CB2A4B:     var_206C = var_1FF4 & CVar(var_1F8C.Text) & ",GWorkingDaysInAMonth=" & CVar(var_1FE4.Text) & ",GDaysSalary=" & CVar(var_38FC) & ",ReqCompWise='" 
  loc_1CB2A71:     var_211C = var_206C & CVar(Proc_6_38_E68A98(CVar(var_203C))) & "',AcFieldAlterable='" & CVar(Proc_6_38_E68A98(CVar(var_2094))) & "',ExpMfdDateInMR='" 
  loc_1CB2A97:     var_21CC = var_211C & CVar(Proc_6_38_E68A98(CVar(var_20EC))) & "',RateEditableInPO='" & CVar(Proc_6_38_E68A98(CVar(var_2144))) & "',RateEditableInStockIssue='" 
  loc_1CB2AB4:     var_2270 = var_21CC & CVar(Proc_6_38_E68A98(CVar(var_219C))) & "',BarCodeFeatureInPurchase='" & CVar(Proc_6_38_E68A98(CVar(var_21F4))) 
  loc_1CB2ADA:     var_2328 = var_2270 & "',ReprintingOnSaleBillYN='" & CVar(Proc_6_38_E68A98(CVar(var_224C))) & "',HideSettledBillsOnSaleBillYN='" & CVar(Proc_6_38_E68A98(CVar(var_22A8))) 
  loc_1CB2B00:     var_23D8 = var_2328 & "',ExciseInvoiceTaxStru='" & CVar(Proc_6_38_E68A98(CVar(var_4A8))) & "',PurchaseTaxVAT='" & CVar(Proc_6_38_E68A98(CVar(var_64C))) 
  loc_1CB2B26:     var_2480 = var_23D8 & "',SaleTaxVAT='" & CVar(Proc_6_38_E68A98(CVar(var_698))) & "',AddModifyEntryInBackDate='" & CVar(Proc_6_38_E68A98(CVar(var_2420))) 
  loc_1CB2B5F:     var_25D0 = var_2480 & "',ResInstruction1=" & var_24C8 & ",ResInstruction2=" & var_2530 & ",ResInstruction3=" & var_2598 & ",ResInstruction4=" 
  loc_1CB2B9F:     var_2770 = var_25D0 & var_2600 & ",ResInstruction5=" & var_2668 & ",ResInstruction6=" & var_26D0 & ",ResInstruction7=" & var_2738 & ",ResInstruction8=" 
  loc_1CB2BD6:     var_28F8 = var_2770 & var_27A0 & ",ResInstruction9=" & var_2808 & ",ResInstruction10=" & var_2870 & ",ResInstruction11=" & var_28D8 
  loc_1CB2C0F:     var_2A48 = var_28F8 & ",ResInstruction12=" & var_2940 & ",FPInstruction1=" & var_29A8 & ",FPInstruction2=" & var_2A10 & ",FPInstruction3=" 
  loc_1CB2C4F:     var_2BE8 = var_2A48 & var_2A78 & ",FPInstruction4=" & var_2AE0 & ",FPInstruction5=" & var_2B48 & ",FPInstruction6=" & var_2BB0 & ",FPInstruction7=" 
  loc_1CB2C8F:     var_2D88 = var_2BE8 & var_2C18 & ",FPInstruction8=" & var_2C80 & ",FPInstruction9=" & var_2CE8 & ",FPInstruction10=" & var_2D50 & ",FPInstruction11=" 
  loc_1CB2CCF:     var_2FB0 = var_2D88 & var_2DB8 & ",FPInstruction12=" & var_2E50 & ",PlanTariffNarration=" & var_2EE8 & ",ESIBasic=" & var_2F90 & ",CoversMandatory='" 
  loc_1CB2CF5:     var_30B0 = var_2FB0 & CVar(Proc_6_38_E68A98(CVar(var_31CC))) & "',MobileNoMandatory='" & CVar(Proc_6_38_E68A98(CVar(var_3234))) & "',RRIncTaxDefault='" 
  loc_1CB2D1B:     var_3188 = var_30B0 & CVar(Proc_6_38_E68A98(CVar(var_329C))) & "',RRSerChrgDefault='" & CVar(Proc_6_38_E68A98(CVar(var_3304))) & "',ShowTitleBar='" 
  loc_1CB2D41:     var_3230 = var_3188 & CVar(Proc_6_38_E68A98(CVar(var_3360))) & "',ShowMenuBar='" & CVar(Proc_6_38_E68A98(CVar(var_33B8))) & "',ShowSubMenuBar='" 
  loc_1CB2D67:     var_32D0 = var_3230 & CVar(Proc_6_38_E68A98(CVar(var_3410))) & "',ShowShortCutsBar='" & CVar(Proc_6_38_E68A98(CVar(var_3468))) & "',ServiceTaxOnServiceChargeYN='" 
  loc_1CB2D84:     var_3374 = var_32D0 & CVar(Proc_6_38_E68A98(CVar(var_34C0))) & "',SeperateReservationLetterAsPerStatusYN='" & CVar(Proc_6_38_E68A98(CVar(var_3518))) 
  loc_1CB2DAA:     var_3424 = var_3374 & "',ReservationExpandOnSaveYN='" & CVar(Proc_6_38_E68A98(CVar(var_3570))) & "',BlockInvalidTarrifIncTaxYN='" & CVar(Proc_6_38_E68A98(CVar(var_35C8))) 
  loc_1CB2DF3:     var_3644 = var_3424 & "',ESIDA=" & var_348C & ",ESIHRA=" & var_3514 & ",ESIConvey=" & var_3594 & ",ESIOther=" & var_361C & ",ESILTA=" 
  loc_1CB2E23:     var_396C = var_3644 & var_369C & ",KitchenStockReport=" & var_3704 & ",ItemRateInMRBasedOn=" & var_377C & ",ItemRateInPurchaseBillBasedOn=" 
  loc_1CB2E64:     unk_554C7A.Execute CStr(var_396C & var_39A0 & ",SmartCardItem=" & var_39F8 & " WHERE SITECODE='" & CVar(MemVar_1F92078) & "'"), var_3A78, -1
  loc_1CB35F6:   End If
  loc_1CB361E:   For var_3A80 = var_39E8 To CByte((CLng(CByte(1)(var_88).RowCount) - 1)): var_3A7C = var_3A80 'Byte
  loc_1CB363A:     Set var_A4 = CVar(CLng(var_88))(CVar(CLng(3)))
  loc_1CB365C:     If (CStr(DGRevenue.DispID_41) <> vbNullString) Then
  loc_1CB3675:       Set var_A4 = CVar(CLng(var_88))(CVar(CLng(2)))
  loc_1CB36A7:       Set var_A8 = CVar(CLng(var_88))(CVar(CLng(3)))
  loc_1CB36BE:       Proc_6_17_EAA2B0(var_214, CVar(CStr(DGRevenue.DispID_41)))
  loc_1CB36F7:       unk_554C7A.Execute CStr(CVar("Update Revmast Set SplitSeqNo=" & CStr(Val(CStr(DGRevenue.DispID_41))) & " Where Code=") & var_214), var_280, -1
  loc_1CB3721:     End If
  loc_1CB3724:   Next var_3A80 'Byte
  loc_1CB3730:   unk_554C7A.CommitTrans
  loc_1CB3737:   var_86 = 0
  loc_1CB373A: End If
  loc_1CB3747: Me.Global.Unload Me
  loc_1CB374F: Exit Sub
  loc_1CB3750: ' Referenced from: 1CADC24
  loc_1CB3756: If (var_86 = &HFF) Then
  loc_1CB375F:   unk_554C7A.RollbackTrans
  loc_1CB3764: End If
  loc_1CB3764: Proc_6_60_E62BC4(var_86)
  loc_1CB3769: Exit Sub
End Sub

Private Sub DGPurchaseGodown_UnknownEvent_9 'F78C78
  'Data Table: 554C78
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F78B4F: var_86 = CInt(Val(CStr(Me.DGPurchaseGodown.Tag)))
  loc_F78B64: Set var_8C = Me.DGPurchaseGodown
  loc_F78B6A: var_8C.Visible = False
  loc_F78B8C: If (Me.var_8C.RecordCount > 0) Then
  loc_F78BCD:   Set var_CC = var_D0(var_86)
  loc_F78BD3:   Call 0.Method_DGPurchaseGodown_UnknownEvent_90 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_F78BDB:   var_D0.Text = var_86
  loc_F78C11:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F78C2F:   Set var_CC = var_D0(var_86)
  loc_F78C35:   Call 0.Method_DGPurchaseGodown_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F78C3D:   var_D0.Tag = 
  loc_F78C53: End If
  loc_F78C5D: Set var_8C = var_C8(var_86)
  loc_F78C63: Call 0.Method_DGPurchaseGodown_UnknownEvent_90 ()
  loc_F78C6B: var_C8.SetFocus
  loc_F78C77: Exit Sub
End Sub

Private Sub DGPurchaseGodown_UnknownEvent_1F 'EAE8E4
  'Data Table: 554C78
  loc_EAE876: Proc_6_153_E91194(Me.DGPurchaseGodown, arg_14)
  loc_EAE8AA: Set var_A8 = arg_18(Val(CStr(Me.DGPurchaseGodown.Tag)))
  loc_EAE8CA: Proc_6_138_106D6F8(Me.DGPurchaseGodown, global_80)
  loc_EAE8E0: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '188A95C
  'Data Table: 554C78
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim var_90 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_D0 As TextBox
  Dim var_8C As TextBox
  Dim var_C8 As String
  loc_188823A: Set var_88 = var_8C(Index)
  loc_1888240: Call 0.Method_Txt_GotFocus0 ()
  loc_1888248: Set var_90 = var_8C
  loc_188824E: Proc_6_74_E226B0(var_90)
  loc_188825A: Call Proc_56_54_FB5464()
  loc_188826E: If (Index = CInt(139)) Then
  loc_188828D:   If (CBool(Me.DGPurchItem.Visible) = 0) Then
  loc_188829D:     Set var_8C = var_90(Index)
  loc_18882A3:     Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_18882AB:     var_92 = var_90.Left
  loc_18882C7:     var_B8 = CVar((CDbl(().Left) + var_A8)) 'Single
  loc_18882D6:     Me.DGPurchItem.Left = var_B8
  loc_18882F6:     Set var_8C = var_90(Index)
  loc_18882FC:     Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1888304:      = var_90.Top
  loc_1888316:     Set var_CC = var_D0(Index)
  loc_188831C:     Call 0.Method_Txt_GotFocus0 (var_D4)
  loc_1888324:      = var_D0.Height
  loc_1888348:     var_B8 = CVar((((CDbl(().Top) + var_A8) + var_D4) + CDbl(&H14))) 'Single
  loc_1888357:     Me.DGPurchItem.Top = var_B8
  loc_1888381:     Me.DGPurchItem.Tag = CVar(CStr(Index))
  loc_188838C:   End If
  loc_18883A6:   If (global_84.RecordCount > 0) Then
  loc_18883B4:     Set var_8C = ()
  loc_18883D0:     Proc_6_137_1193554(Me.DGPurchItem, global_84)
  loc_18883DE:   End If
  loc_18883EA:   var_A8 = global_84.RecordCount
  loc_1888435:   Set var_88 = var_8C(Index)
  loc_188843B:   Call 0.Method_Txt_GotFocus0 (var_E0, ((var_A8 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_1888443:   Index = var_8C.Text
  loc_188845B:   If (var_8C Or (var_E0 = vbNullString)) Then
  loc_188845E:     Exit Sub
  loc_188845F:   End If
  loc_188846C:   Set var_88 = var_8C(Index)
  loc_1888472:   Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_188847A:    = var_8C.Text
  loc_188848C:   var_B8 = "Name"
  loc_188849E:   var_90 = Me.Recordset15.Fields
  loc_18884CA:   If CBool(CVar(var_E0) <> var_90.Item(var_B8).Value) Then
  loc_18884D6:     Me.Recordset15.MoveFirst
  loc_18884F9:     Set var_88 = var_8C(Index)
  loc_18884FF:     Call 0.Method_Txt_GotFocus0 (var_E0, "Name ='", 0)
  loc_1888507:     1 = var_8C.Text
  loc_1888523:     Me.Recordset15.Find var_B8 & var_E0 & "'", , 
  loc_1888538:   End If
  loc_188853B: Else
  loc_1888543:   If Not (var_92 = CInt(4)) Then
  loc_188854E:     If Not (var_92 = CInt(3)) Then
  loc_1888559:       If Not (var_92 = CInt(2)) Then
  loc_1888564:         If Not (var_92 = CInt(&HB)) Then
  loc_188856F:           If Not (var_92 = CInt(1)) Then
  loc_188857A:             If Not (var_92 = CInt(&H22)) Then
  loc_1888585:               If Not (var_92 = CInt(&H21)) Then
  loc_1888590:                 If Not (var_92 = CInt(&H18)) Then
  loc_188859B:                   If Not (var_92 = CInt(&H19)) Then
  loc_18885A6:                     If Not (var_92 = CInt(&H1A)) Then
  loc_18885B1:                       If Not (var_92 = CInt(&H1F)) Then
  loc_18885BC:                         If Not (var_92 = CInt(&HC)) Then
  loc_18885C7:                           If Not (var_92 = CInt(&H24)) Then
  loc_18885D2:                             If Not (var_92 = CInt(&H23)) Then
  loc_18885DD:                               If Not (var_92 = CInt(&H25)) Then
  loc_18885E8:                                 If Not (var_92 = CInt(&H26)) Then
  loc_18885F3:                                   If Not (var_92 = CInt(&H2B)) Then
  loc_18885FE:                                     If Not (var_92 = CInt(&H2C)) Then
  loc_1888609:                                       If Not (var_92 = CInt(&H37)) Then
  loc_1888614:                                         If Not (var_92 = CInt(&H44)) Then
  loc_188861F:                                           If Not (var_92 = CInt(&H45)) Then
  loc_188862A:                                             If (var_92 = CInt(&H46)) Then
  loc_188862D:                                             End If
  loc_188862D:                                           End If
  loc_188862D:                                         End If
  loc_188862D:                                       End If
  loc_188862D:                                     End If
  loc_188862D:                                   End If
  loc_188862D:                                 End If
  loc_188862D:                               End If
  loc_188862D:                             End If
  loc_188862D:                           End If
  loc_188862D:                         End If
  loc_188862D:                       End If
  loc_188862D:                     End If
  loc_188862D:                   End If
  loc_188862D:                 End If
  loc_188862D:               End If
  loc_188862D:             End If
  loc_188862D:           End If
  loc_188862D:         End If
  loc_188862D:       End If
  loc_188862D:     End If
  loc_1888649:     If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_1888659:       Set var_8C = var_90(Index)
  loc_188865F:       Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1888667:        = var_90.Left
  loc_1888683:       var_B8 = CVar((CDbl(().Left) + var_A8)) 'Single
  loc_1888692:       Me.DGHelp.Left = var_B8
  loc_18886B2:       Set var_8C = var_90(Index)
  loc_18886B8:       Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_18886C0:        = var_90.Top
  loc_18886D2:       Set var_CC = var_D0(Index)
  loc_18886D8:       Call 0.Method_Txt_GotFocus0 (var_D4)
  loc_18886E0:        = var_D0.Height
  loc_1888704:       var_B8 = CVar((((CDbl(().Top) + var_A8) + var_D4) + CDbl(&H14))) 'Single
  loc_1888713:       Me.DGHelp.Top = var_B8
  loc_188873D:       Me.DGHelp.Tag = CVar(CStr(Index))
  loc_1888748:     End If
  loc_1888762:     If (global_52.RecordCount > 0) Then
  loc_1888770:       Set var_8C = ()
  loc_188878C:       Proc_6_137_1193554(Me.DGHelp, global_52)
  loc_188879A:     End If
  loc_18887A6:     var_A8 = global_52.RecordCount
  loc_18887F1:     Set var_88 = var_8C(Index)
  loc_18887F7:     Call 0.Method_Txt_GotFocus0 (var_E0, ((var_A8 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_18887FF:     Index = var_8C.Text
  loc_1888817:     If (var_8C Or (var_E0 = vbNullString)) Then
  loc_188881A:       Exit Sub
  loc_188881B:     End If
  loc_1888828:     Set var_88 = var_8C(Index)
  loc_188882E:     Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1888836:      = var_8C.Text
  loc_1888848:     var_B8 = "Name"
  loc_188885A:     var_90 = Me.Recordset15.Fields
  loc_1888886:     If CBool(CVar(var_E0) <> var_90.Item(var_B8).Value) Then
  loc_1888892:       Me.Recordset15.MoveFirst
  loc_18888B5:       Set var_88 = var_8C(Index)
  loc_18888BB:       Call 0.Method_Txt_GotFocus0 (var_E0, "Name ='", 0)
  loc_18888C3:       1 = var_8C.Text
  loc_18888DF:       Me.Recordset15.Find var_B8 & var_E0 & "'", , 
  loc_18888F4:     End If
  loc_18888F7:   Else
  loc_18888FF:     If Not (var_92 = CInt(&H17)) Then
  loc_188890A:       If (var_92 = CInt(&H1B)) Then
  loc_188890D:       End If
  loc_1888929:       If (CBool(().Visible) = 0) Then
  loc_1888939:         Set var_8C = var_90(Index)
  loc_188893F:         Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1888947:          = var_90.Left
  loc_1888963:         var_B8 = CVar((CDbl(().Left) + var_A8)) 'Single
  loc_1888972:         (var_B8).Left = 
  loc_1888992:         Set var_8C = var_90(Index)
  loc_1888998:         Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_18889A0:          = var_90.Top
  loc_18889B2:         Set var_CC = var_D0(Index)
  loc_18889B8:         Call 0.Method_Txt_GotFocus0 (var_D4)
  loc_18889C0:          = var_D0.Height
  loc_18889E4:         var_B8 = CVar((((CDbl(().Top) + var_A8) + var_D4) + CDbl(&H14))) 'Single
  loc_18889F3:         (var_B8).Top = 
  loc_1888A1D:         (CVar(CStr(Index))).Tag = 
  loc_1888A28:       End If
  loc_1888A42:       If (global_60.RecordCount > 0) Then
  loc_1888A50:         Set var_8C = ()
  loc_1888A6C:         Proc_6_137_1193554((), global_60)
  loc_1888A7A:       End If
  loc_1888A86:       var_A8 = global_60.RecordCount
  loc_1888AD1:       Set var_88 = var_8C(Index)
  loc_1888AD7:       Call 0.Method_Txt_GotFocus0 (var_E0, ((var_A8 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_1888ADF:       Index = var_8C.Text
  loc_1888AF7:       If (var_8C Or (var_E0 = vbNullString)) Then
  loc_1888AFA:         Exit Sub
  loc_1888AFB:       End If
  loc_1888B08:       Set var_88 = var_8C(Index)
  loc_1888B0E:       Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1888B16:        = var_8C.Text
  loc_1888B28:       var_B8 = "Name"
  loc_1888B3A:       var_90 = Me.Recordset15.Fields
  loc_1888B66:       If CBool(CVar(var_E0) <> var_90.Item(var_B8).Value) Then
  loc_1888B72:         Me.Recordset15.MoveFirst
  loc_1888B95:         Set var_88 = var_8C(Index)
  loc_1888B9B:         Call 0.Method_Txt_GotFocus0 (var_E0, "Name ='", 0)
  loc_1888BA3:         1 = var_8C.Text
  loc_1888BBF:         Me.Recordset15.Find var_B8 & var_E0 & "'", , 
  loc_1888BD4:       End If
  loc_1888BD7:     Else
  loc_1888BDF:       If (var_92 = CInt(&H38)) Then
  loc_1888BFE:         If (CBool(Me.DGRevenue.Visible) = 0) Then
  loc_1888C0E:           Set var_8C = var_90(Index)
  loc_1888C14:           Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1888C1C:            = var_90.Left
  loc_1888C38:           var_B8 = CVar((CDbl(().Left) + var_A8)) 'Single
  loc_1888C47:           Me.DGRevenue.Left = var_B8
  loc_1888C67:           Set var_8C = var_90(Index)
  loc_1888C6D:           Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1888C75:            = var_90.Top
  loc_1888C87:           Set var_CC = var_D0(Index)
  loc_1888C8D:           Call 0.Method_Txt_GotFocus0 (var_D4)
  loc_1888C95:            = var_D0.Height
  loc_1888CB9:           var_B8 = CVar((((CDbl(().Top) + var_A8) + var_D4) + CDbl(&H14))) 'Single
  loc_1888CC8:           Me.DGRevenue.Top = var_B8
  loc_1888CF2:           Me.DGRevenue.Tag = CVar(CStr(Index))
  loc_1888CFD:         End If
  loc_1888D17:         If (global_64.RecordCount > 0) Then
  loc_1888D25:           Set var_8C = ()
  loc_1888D41:           Proc_6_137_1193554(Me.DGRevenue, global_64)
  loc_1888D4F:         End If
  loc_1888D5B:         var_A8 = global_64.RecordCount
  loc_1888DA6:         Set var_88 = var_8C(Index)
  loc_1888DAC:         Call 0.Method_Txt_GotFocus0 (var_E0, ((var_A8 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_1888DB4:         Index = var_8C.Text
  loc_1888DCC:         If (var_8C Or (var_E0 = vbNullString)) Then
  loc_1888DCF:           Exit Sub
  loc_1888DD0:         End If
  loc_1888DDD:         Set var_88 = var_8C(Index)
  loc_1888DE3:         Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1888DEB:          = var_8C.Text
  loc_1888DFD:         var_B8 = "Name"
  loc_1888E0F:         var_90 = Me.Recordset15.Fields
  loc_1888E3B:         If CBool(CVar(var_E0) <> var_90.Item(var_B8).Value) Then
  loc_1888E47:           Me.Recordset15.MoveFirst
  loc_1888E6A:           Set var_88 = var_8C(Index)
  loc_1888E70:           Call 0.Method_Txt_GotFocus0 (var_E0, "Name ='", 0)
  loc_1888E78:           1 = var_8C.Text
  loc_1888E94:           Me.Recordset15.Find var_B8 & var_E0 & "'", , 
  loc_1888EA9:         End If
  loc_1888EAC:       Else
  loc_1888EB4:         If (var_92 = CInt(&H11)) Then
  loc_1888ED3:           If (CBool(Me.DGGroup.Visible) = 0) Then
  loc_1888EE3:             Set var_8C = var_90(Index)
  loc_1888EE9:             Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1888EF1:              = var_90.Left
  loc_1888F0D:             var_B8 = CVar((CDbl(().Left) + var_A8)) 'Single
  loc_1888F1C:             Me.DGGroup.Left = var_B8
  loc_1888F3C:             Set var_8C = var_90(Index)
  loc_1888F42:             Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1888F4A:              = var_90.Top
  loc_1888F5C:             Set var_CC = var_D0(Index)
  loc_1888F62:             Call 0.Method_Txt_GotFocus0 (var_D4)
  loc_1888F6A:              = var_D0.Height
  loc_1888F8E:             var_B8 = CVar((((CDbl(().Top) + var_A8) + var_D4) + CDbl(&H14))) 'Single
  loc_1888F9D:             Me.DGGroup.Top = var_B8
  loc_1888FC7:             Me.DGGroup.Tag = CVar(CStr(Index))
  loc_1888FD2:           End If
  loc_1888FEC:           If (global_56.RecordCount > 0) Then
  loc_1888FFA:             Set var_8C = ()
  loc_1889016:             Proc_6_137_1193554(Me.DGGroup, global_56)
  loc_1889024:           End If
  loc_1889030:           var_A8 = global_56.RecordCount
  loc_188907B:           Set var_88 = var_8C(Index)
  loc_1889081:           Call 0.Method_Txt_GotFocus0 (var_E0, ((var_A8 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_1889089:           Index = var_8C.Text
  loc_18890A1:           If (var_8C Or (var_E0 = vbNullString)) Then
  loc_18890A4:             Exit Sub
  loc_18890A5:           End If
  loc_18890B2:           Set var_88 = var_8C(Index)
  loc_18890B8:           Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_18890C0:            = var_8C.Text
  loc_18890D2:           var_B8 = "Name"
  loc_18890E4:           var_90 = Me.Recordset15.Fields
  loc_1889110:           If CBool(CVar(var_E0) <> var_90.Item(var_B8).Value) Then
  loc_188911C:             Me.Recordset15.MoveFirst
  loc_188913F:             Set var_88 = var_8C(Index)
  loc_1889145:             Call 0.Method_Txt_GotFocus0 (var_E0, "Name ='", 0)
  loc_188914D:             1 = var_8C.Text
  loc_1889169:             Me.Recordset15.Find var_B8 & var_E0 & "'", , 
  loc_188917E:           End If
  loc_1889181:         Else
  loc_1889189:           If (var_92 = CInt(&H49)) Then
  loc_18891A8:             If (CBool(Me.DGPurchaseGodown.Visible) = 0) Then
  loc_18891B8:               Set var_8C = var_90(Index)
  loc_18891BE:               Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_18891C6:                = var_90.Left
  loc_18891E2:               var_B8 = CVar((CDbl(().Left) + var_A8)) 'Single
  loc_18891F1:               Me.DGPurchaseGodown.Left = var_B8
  loc_1889211:               Set var_8C = var_90(Index)
  loc_1889217:               Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_188921F:                = var_90.Top
  loc_1889231:               Set var_CC = var_D0(Index)
  loc_1889237:               Call 0.Method_Txt_GotFocus0 (var_D4)
  loc_188923F:                = var_D0.Height
  loc_1889263:               var_B8 = CVar((((CDbl(().Top) + var_A8) + var_D4) + CDbl(&H14))) 'Single
  loc_1889272:               Me.DGPurchaseGodown.Top = var_B8
  loc_188929C:               Me.DGPurchaseGodown.Tag = CVar(CStr(Index))
  loc_18892A7:             End If
  loc_18892C1:             If (global_80.RecordCount > 0) Then
  loc_18892CF:               Set var_8C = ()
  loc_18892EB:               Proc_6_137_1193554(Me.DGPurchaseGodown, global_80)
  loc_18892F9:             End If
  loc_1889305:             var_A8 = global_80.RecordCount
  loc_1889350:             Set var_88 = var_8C(Index)
  loc_1889356:             Call 0.Method_Txt_GotFocus0 (var_E0, ((var_A8 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_188935E:             Index = var_8C.Text
  loc_1889376:             If (var_8C Or (var_E0 = vbNullString)) Then
  loc_1889379:               Exit Sub
  loc_188937A:             End If
  loc_1889387:             Set var_88 = var_8C(Index)
  loc_188938D:             Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1889395:              = var_8C.Text
  loc_18893A7:             var_B8 = "Name"
  loc_18893B9:             var_90 = Me.Recordset15.Fields
  loc_18893E5:             If CBool(CVar(var_E0) <> var_90.Item(var_B8).Value) Then
  loc_18893F1:               Me.Recordset15.MoveFirst
  loc_1889414:               Set var_88 = var_8C(Index)
  loc_188941A:               Call 0.Method_Txt_GotFocus0 (var_E0, "Name ='", 0)
  loc_1889422:               1 = var_8C.Text
  loc_188943E:               Me.Recordset15.Find var_B8 & var_E0 & "'", , 
  loc_1889453:             End If
  loc_1889456:           Else
  loc_188945E:             If (var_92 = CInt(&H5A)) Then
  loc_188947D:               If (CBool(Me.DGTaxStru.Visible) = 0) Then
  loc_188948D:                 Set var_8C = var_90(Index)
  loc_1889493:                 Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_188949B:                  = var_90.Left
  loc_18894B7:                 var_B8 = CVar((CDbl(().Left) + var_A8)) 'Single
  loc_18894C6:                 Me.DGTaxStru.Left = var_B8
  loc_18894E6:                 Set var_8C = var_90(Index)
  loc_18894EC:                 Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_18894F4:                  = var_90.Top
  loc_1889506:                 Set var_CC = var_D0(Index)
  loc_188950C:                 Call 0.Method_Txt_GotFocus0 (var_D4)
  loc_1889514:                  = var_D0.Height
  loc_1889538:                 var_B8 = CVar((((CDbl(().Top) + var_A8) + var_D4) + CDbl(&H14))) 'Single
  loc_1889547:                 Me.DGTaxStru.Top = var_B8
  loc_1889571:                 Me.DGTaxStru.Tag = CVar(CStr(Index))
  loc_188957C:               End If
  loc_1889596:               If (global_72.RecordCount > 0) Then
  loc_18895A4:                 Set var_8C = ()
  loc_18895C0:                 Proc_6_137_1193554(Me.DGTaxStru, global_72)
  loc_18895CE:               End If
  loc_18895DA:               var_A8 = global_72.RecordCount
  loc_1889625:               Set var_88 = var_8C(Index)
  loc_188962B:               Call 0.Method_Txt_GotFocus0 (var_E0, ((var_A8 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_1889633:               Index = var_8C.Text
  loc_188964B:               If (var_8C Or (var_E0 = vbNullString)) Then
  loc_188964E:                 Exit Sub
  loc_188964F:               End If
  loc_188965C:               Set var_88 = var_8C(Index)
  loc_1889662:               Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_188966A:                = var_8C.Text
  loc_188967C:               var_B8 = "Name"
  loc_188968E:               var_90 = Me.Recordset15.Fields
  loc_18896BA:               If CBool(CVar(var_E0) <> var_90.Item(var_B8).Value) Then
  loc_18896C6:                 Me.Recordset15.MoveFirst
  loc_18896E9:                 Set var_88 = var_8C(Index)
  loc_18896EF:                 Call 0.Method_Txt_GotFocus0 (var_E0, "Name ='", 0)
  loc_18896F7:                 1 = var_8C.Text
  loc_1889713:                 Me.Recordset15.Find var_B8 & var_E0 & "'", , 
  loc_1889728:               End If
  loc_188972B:             Else
  loc_1889732:               If Not (var_92 = 136) Then
  loc_188973C:                 If (var_92 = 137) Then
  loc_188973F:                 End If
  loc_188975B:                 If (CBool(Me.DGTAX.Visible) = 0) Then
  loc_188976B:                   Set var_8C = var_90(Index)
  loc_1889771:                   Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1889779:                    = var_90.Left
  loc_1889795:                   var_B8 = CVar((CDbl(().Left) + var_A8)) 'Single
  loc_18897A4:                   Me.DGTAX.Left = var_B8
  loc_18897C4:                   Set var_8C = var_90(Index)
  loc_18897CA:                   Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_18897D2:                    = var_90.Top
  loc_18897E4:                   Set var_CC = var_D0(Index)
  loc_18897EA:                   Call 0.Method_Txt_GotFocus0 (var_D4)
  loc_18897F2:                    = var_D0.Height
  loc_1889816:                   var_B8 = CVar((((CDbl(().Top) + var_A8) + var_D4) + CDbl(&H14))) 'Single
  loc_1889825:                   Me.DGTAX.Top = var_B8
  loc_188984F:                   Me.DGTAX.Tag = CVar(CStr(Index))
  loc_188985A:                 End If
  loc_1889874:                 If (global_68.RecordCount > 0) Then
  loc_1889882:                   Set var_8C = ()
  loc_188989E:                   Proc_6_137_1193554(Me.DGTAX, global_68)
  loc_18898AC:                 End If
  loc_1889903:                 Set var_88 = var_8C(Index)
  loc_1889909:                 Call 0.Method_Txt_GotFocus0 (var_E0, ((global_68.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_1889911:                 Index = var_8C.Text
  loc_1889929:                 If (var_8C Or (var_E0 = vbNullString)) Then
  loc_188992C:                   Exit Sub
  loc_188992D:                 End If
  loc_188993A:                 Set var_88 = var_8C(Index)
  loc_1889940:                 Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1889948:                  = var_8C.Text
  loc_188995A:                 var_B8 = "Name"
  loc_1889998:                 If CBool(CVar(var_E0) <> Me.Recordset15.Fields.Item(var_B8).Value) Then
  loc_18899A4:                   Me.Recordset15.MoveFirst
  loc_18899C7:                   Set var_88 = var_8C(Index)
  loc_18899CD:                   Call 0.Method_Txt_GotFocus0 (var_E0, "Name ='", 0)
  loc_18899D5:                   1 = var_8C.Text
  loc_18899F1:                   Me.Recordset15.Find var_B8 & var_E0 & "'", , 
  loc_1889A06:                 End If
  loc_1889A09:               Else
  loc_1889A11:                 If Not (var_92 = CInt(&H7D)) Then
  loc_1889A1C:                   If (var_92 = CInt(&H7E)) Then
  loc_1889A1F:                   End If
  loc_1889A2C:                   ReDim var_10C(0 To 2)
  loc_1889A43:                   var_10C(0) = "Purchase Rate"
  loc_1889A52:                   var_10C(1) = "Last Purchase Rate"
  loc_1889A61:                   var_10C(2) = "Party Wise Last Pur Rate"
  loc_1889AB8:                   Set global_112 = Proc_6_66_EFF8FC((Array(var_10C)), (), Index)
  loc_1889ACC:                 Else
  loc_1889AD4:                   If (var_92 = CInt(0)) Then
  loc_1889AE4:                     ReDim var_10C(0 To 1)
  loc_1889AFB:                     var_10C(0) = "24 Hrs"
  loc_1889B0A:                     var_10C(1) = "Other"
  loc_1889B21:                     global_96 = Array(var_10C)
  loc_1889B2C:                     Set var_CC = global_96(global_96)
  loc_1889B47:                     Set var_8C = (3)
  loc_1889B61:                     Set global_112 = Proc_6_66_EFF8FC(var_CC, var_8C, Index)
  loc_1889B7F:                     Set var_88 = var_8C(Index)
  loc_1889B85:                     Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_1889B8D:                     2 = var_8C.Text
  loc_1889B9F:                     Set var_90 = var_CC(Index)
  loc_1889BA5:                     Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1889BAD:                     var_CC.Tag = 
  loc_1889BC3:                   Else
  loc_1889BCB:                     If Not (var_92 = CInt(&H10)) Then
  loc_1889BD6:                       If Not (var_92 = CInt(&H4B)) Then
  loc_1889BE1:                         If Not (var_92 = CInt(&H77)) Then
  loc_1889BEC:                           If Not (var_92 = CInt(&H78)) Then
  loc_1889BF7:                             If Not (var_92 = CInt(&H79)) Then
  loc_1889C02:                               If (var_92 = CInt(&H58)) Then
  loc_1889C05:                               End If
  loc_1889C05:                             End If
  loc_1889C05:                           End If
  loc_1889C05:                         End If
  loc_1889C05:                       End If
  loc_1889C12:                       ReDim var_10C(0 To 1)
  loc_1889C29:                       var_10C(0) = "Yes"
  loc_1889C38:                       var_10C(1) = "No"
  loc_1889C4F:                       global_96 = Array(var_10C)
  loc_1889C5A:                       Set var_CC = (global_96)
  loc_1889C75:                       Set var_8C = ()
  loc_1889C8F:                       Set global_112 = Proc_6_66_EFF8FC(var_CC, var_8C, Index)
  loc_1889CAD:                       Set var_88 = var_8C(Index)
  loc_1889CB3:                       Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_1889CBB:                       2 = var_8C.Text
  loc_1889CCD:                       Set var_90 = var_CC(Index)
  loc_1889CD3:                       Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1889CDB:                       var_CC.Tag = 
  loc_1889CF1:                     Else
  loc_1889CF9:                       If Not (var_92 = CInt(&HE)) Then
  loc_1889D04:                         If (var_92 = CInt(&HF)) Then
  loc_1889D07:                         End If
  loc_1889D14:                         ReDim var_10C(0 To 1)
  loc_1889D2B:                         var_10C(0) = "Yes"
  loc_1889D3A:                         var_10C(1) = "No"
  loc_1889D51:                         global_96 = Array(var_10C)
  loc_1889D5C:                         Set var_CC = (global_96)
  loc_1889D77:                         Set var_8C = ()
  loc_1889D91:                         Set global_112 = Proc_6_66_EFF8FC(var_CC, var_8C, Index)
  loc_1889DAF:                         Set var_88 = var_8C(Index)
  loc_1889DB5:                         Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_1889DBD:                         2 = var_8C.Text
  loc_1889DCF:                         Set var_90 = var_CC(Index)
  loc_1889DD5:                         Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1889DDD:                         var_CC.Tag = 
  loc_1889DF3:                       Else
  loc_1889DFB:                         If (var_92 = CInt(&H1C)) Then
  loc_1889E0B:                           ReDim var_10C(0 To 1)
  loc_1889E22:                           var_10C(0) = "Reversible"
  loc_1889E31:                           var_10C(1) = "Call Based"
  loc_1889E48:                           global_96 = Array(var_10C)
  loc_1889E53:                           Set var_CC = (global_96)
  loc_1889E6E:                           Set var_8C = ()
  loc_1889E88:                           Set global_112 = Proc_6_66_EFF8FC(var_CC, var_8C, Index)
  loc_1889EA6:                           Set var_88 = var_8C(Index)
  loc_1889EAC:                           Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_1889EB4:                           2 = var_8C.Text
  loc_1889EC6:                           Set var_90 = var_CC(Index)
  loc_1889ECC:                           Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1889ED4:                           var_CC.Tag = 
  loc_1889EEA:                         Else
  loc_1889EF2:                           If (var_92 = CInt(&HD)) Then
  loc_1889F02:                             ReDim var_10C(0 To 1)
  loc_1889F19:                             var_10C(0) = "Daily Occupancy Based Posting"
  loc_1889F28:                             var_10C(1) = "Daily Bill wise Posting"
  loc_1889F3F:                             global_96 = Array(var_10C)
  loc_1889F4A:                             Set var_CC = (global_96)
  loc_1889F65:                             Set var_8C = ()
  loc_1889F7F:                             Set global_112 = Proc_6_66_EFF8FC(var_CC, var_8C, Index)
  loc_1889F9D:                             Set var_88 = var_8C(Index)
  loc_1889FA3:                             Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_1889FAB:                             2 = var_8C.Text
  loc_1889FBD:                             Set var_90 = var_CC(Index)
  loc_1889FC3:                             Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1889FCB:                             var_CC.Tag = 
  loc_1889FE1:                           Else
  loc_1889FE9:                             If Not (var_92 = CInt(&H2E)) Then
  loc_1889FF4:                               If (var_92 = CInt(&H7C)) Then
  loc_1889FF7:                               End If
  loc_188A004:                               ReDim var_10C(0 To 1)
  loc_188A01B:                               var_10C(0) = "Advanced"
  loc_188A02A:                               var_10C(1) = "Standard"
  loc_188A041:                               global_96 = Array(var_10C)
  loc_188A04C:                               Set var_CC = (global_96)
  loc_188A067:                               Set var_8C = ()
  loc_188A081:                               Set global_112 = Proc_6_66_EFF8FC(var_CC, var_8C, Index)
  loc_188A09F:                               Set var_88 = var_8C(Index)
  loc_188A0A5:                               Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_188A0AD:                               2 = var_8C.Text
  loc_188A0BF:                               Set var_90 = var_CC(Index)
  loc_188A0C5:                               Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_188A0CD:                               var_CC.Tag = 
  loc_188A0E3:                             Else
  loc_188A0EB:                               If (var_92 = CInt(&H2D)) Then
  loc_188A0FB:                                 ReDim var_10C(0 To 1)
  loc_188A112:                                 var_10C(0) = "Daily"
  loc_188A121:                                 var_10C(1) = "While Printing Bill"
  loc_188A138:                                 global_96 = Array(var_10C)
  loc_188A143:                                 Set var_CC = (global_96)
  loc_188A15E:                                 Set var_8C = ()
  loc_188A178:                                 Set global_112 = Proc_6_66_EFF8FC(var_CC, var_8C, Index)
  loc_188A196:                                 Set var_88 = var_8C(Index)
  loc_188A19C:                                 Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_188A1A4:                                 2 = var_8C.Text
  loc_188A1B6:                                 Set var_90 = var_CC(Index)
  loc_188A1BC:                                 Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_188A1C4:                                 var_CC.Tag = 
  loc_188A1DA:                               Else
  loc_188A1E2:                                 If Not (var_92 = CInt(7)) Then
  loc_188A1ED:                                   If Not (var_92 = CInt(5)) Then
  loc_188A1F8:                                     If Not (var_92 = CInt(8)) Then
  loc_188A203:                                       If Not (var_92 = CInt(9)) Then
  loc_188A20E:                                         If Not (var_92 = CInt(6)) Then
  loc_188A219:                                           If Not (var_92 = CInt(&H4C)) Then
  loc_188A224:                                             If Not (var_92 = CInt(&H51)) Then
  loc_188A22F:                                               If Not (var_92 = CInt(&H53)) Then
  loc_188A23A:                                                 If Not (var_92 = CInt(&H54)) Then
  loc_188A245:                                                   If (var_92 = CInt(&H52)) Then
  loc_188A248:                                                   End If
  loc_188A248:                                                 End If
  loc_188A248:                                               End If
  loc_188A248:                                             End If
  loc_188A248:                                           End If
  loc_188A248:                                         End If
  loc_188A248:                                       End If
  loc_188A248:                                     End If
  loc_188A248:                                   End If
  loc_188A250:                                   var_E0 = "{Home}+{End}"
  loc_188A256:                                   Proc_303_0_FB9B68(var_E0)
  loc_188A261:                                 Else
  loc_188A269:                                   If (var_92 = CInt(&H27)) Then
  loc_188A279:                                     ReDim var_10C(0 To 1)
  loc_188A290:                                     var_10C(0) = "Seperate for All Kitchen"
  loc_188A29F:                                     var_10C(1) = "For All Kitchen"
  loc_188A2B6:                                     global_96 = Array(var_10C)
  loc_188A2C1:                                     Set var_CC = 0(global_96)
  loc_188A2DC:                                     Set var_8C = ()
  loc_188A2F6:                                     Set global_112 = Proc_6_66_EFF8FC(var_CC, var_8C, Index)
  loc_188A314:                                     Set var_88 = var_8C(Index)
  loc_188A31A:                                     Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_188A322:                                     2 = var_8C.Text
  loc_188A334:                                     Set var_90 = var_CC(Index)
  loc_188A33A:                                     Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_188A342:                                     var_CC.Tag = 
  loc_188A358:                                   Else
  loc_188A35F:                                     If (var_92 = 130) Then
  loc_188A36F:                                       ReDim var_10C(0 To 2)
  loc_188A386:                                       var_10C(0) = "All Items"
  loc_188A395:                                       var_10C(1) = "Void Items"
  loc_188A3A4:                                       var_10C(2) = "No Print"
  loc_188A3BB:                                       global_96 = Array(var_10C)
  loc_188A3C6:                                       Set var_CC = (global_96)
  loc_188A3E1:                                       Set var_8C = ()
  loc_188A3FB:                                       Set global_112 = Proc_6_66_EFF8FC(var_CC, var_8C, Index)
  loc_188A419:                                       Set var_88 = var_8C(Index)
  loc_188A41F:                                       Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_188A427:                                       3 = var_8C.Text
  loc_188A439:                                       Set var_90 = var_CC(Index)
  loc_188A43F:                                       Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_188A447:                                       var_CC.Tag = 
  loc_188A45D:                                     Else
  loc_188A465:                                       If (var_92 = CInt(&H29)) Then
  loc_188A475:                                         ReDim var_10C(0 To 4)
  loc_188A48C:                                         var_10C(0) = "Guest Bill"
  loc_188A49B:                                         var_10C(1) = "Purchase Bill"
  loc_188A4AA:                                         var_10C(2) = "Sale Bill"
  loc_188A4B9:                                         var_10C(3) = "Member Bill"
  loc_188A4C8:                                         var_10C(4) = "Taxes Member Bill"
  loc_188A4DF:                                         global_96 = Array(var_10C)
  loc_188A4EA:                                         Set var_CC = (global_96)
  loc_188A505:                                         Set var_8C = ()
  loc_188A51F:                                         Set global_112 = Proc_6_66_EFF8FC(var_CC, var_8C, Index)
  loc_188A53D:                                         Set var_88 = var_8C(Index)
  loc_188A543:                                         Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_188A54B:                                         5 = var_8C.Text
  loc_188A55D:                                         Set var_90 = var_CC(Index)
  loc_188A563:                                         Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_188A56B:                                         var_CC.Tag = 
  loc_188A581:                                       Else
  loc_188A589:                                         If (var_92 = CInt(&H39)) Then
  loc_188A599:                                           ReDim var_10C(0 To 1)
  loc_188A5B0:                                           var_10C(0) = "Advanced"
  loc_188A5BF:                                           var_10C(1) = "Standard"
  loc_188A5D6:                                           global_96 = Array(var_10C)
  loc_188A5E1:                                           Set var_CC = (global_96)
  loc_188A5FC:                                           Set var_8C = ()
  loc_188A616:                                           Set global_112 = Proc_6_66_EFF8FC(var_CC, var_8C, Index)
  loc_188A634:                                           Set var_88 = var_8C(Index)
  loc_188A63A:                                           Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_188A642:                                           2 = var_8C.Text
  loc_188A654:                                           Set var_90 = var_CC(Index)
  loc_188A65A:                                           Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_188A662:                                           var_CC.Tag = 
  loc_188A678:                                         Else
  loc_188A680:                                           If (var_92 = CInt(&H34)) Then
  loc_188A690:                                             ReDim var_10C(0 To 1)
  loc_188A6A7:                                             var_10C(0) = "Through CSV"
  loc_188A6B6:                                             var_10C(1) = "Through Mobile"
  loc_188A6CD:                                             global_96 = Array(var_10C)
  loc_188A6D8:                                             Set var_CC = (global_96)
  loc_188A6F3:                                             Set var_8C = ()
  loc_188A70D:                                             Set global_112 = Proc_6_66_EFF8FC(var_CC, var_8C, Index)
  loc_188A72B:                                             Set var_88 = var_8C(Index)
  loc_188A731:                                             Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_188A739:                                             2 = var_8C.Text
  loc_188A74B:                                             Set var_90 = var_CC(Index)
  loc_188A751:                                             Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_188A759:                                             var_CC.Tag = 
  loc_188A76F:                                           Else
  loc_188A777:                                             If (var_92 = CInt(&H3B)) Then
  loc_188A787:                                               ReDim var_10C(0 To 1)
  loc_188A79E:                                               var_10C(0) = "Auto"
  loc_188A7AD:                                               var_10C(1) = "Semi"
  loc_188A7C4:                                               global_96 = Array(var_10C)
  loc_188A7CF:                                               Set var_CC = (global_96)
  loc_188A7EA:                                               Set var_8C = ()
  loc_188A804:                                               Set global_112 = Proc_6_66_EFF8FC(var_CC, var_8C, Index)
  loc_188A822:                                               Set var_88 = var_8C(Index)
  loc_188A828:                                               Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_188A830:                                               2 = var_8C.Text
  loc_188A842:                                               Set var_90 = var_CC(Index)
  loc_188A848:                                               Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_188A850:                                               var_CC.Tag = 
  loc_188A866:                                             Else
  loc_188A86D:                                               If (var_92 = 138) Then
  loc_188A87D:                                                 ReDim var_10C(0 To 1)
  loc_188A894:                                                 var_10C(0) = "Room Category"
  loc_188A896:                                                 var_C8 = "Room Category + Adult"
  loc_188A8A3:                                                 var_10C(1) = "Semi"
  loc_188A8BA:                                                 global_96 = Array(var_10C)
  loc_188A8C5:                                                 Set var_CC = (global_96)
  loc_188A8E0:                                                 Set var_8C = ()
  loc_188A8FA:                                                 Set global_112 = Proc_6_66_EFF8FC(var_CC, var_8C, Index)
  loc_188A918:                                                 Set var_88 = var_8C(Index)
  loc_188A91E:                                                 Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_188A926:                                                 2 = var_8C.Text
  loc_188A938:                                                 Set var_90 = var_CC(Index)
  loc_188A93E:                                                 Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_188A946:                                                 var_CC.Tag = 
  loc_188A959:                                               End If
  loc_188A959:                                             End If
  loc_188A959:                                           End If
  loc_188A959:                                         End If
  loc_188A959:                                       End If
  loc_188A959:                                     End If
  loc_188A959:                                   End If
  loc_188A959:                                 End If
  loc_188A959:                               End If
  loc_188A959:                             End If
  loc_188A959:                           End If
  loc_188A959:                         End If
  loc_188A959:                       End If
  loc_188A959:                     End If
  loc_188A959:                   End If
  loc_188A959:                 End If
  loc_188A959:               End If
  loc_188A959:             End If
  loc_188A959:           End If
  loc_188A959:         End If
  loc_188A959:       End If
  loc_188A959:     End If
  loc_188A959:   End If
  loc_188A959: End If
  loc_188A959: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '156C218
  'Data Table: 554C78
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_A4 As DataGrid
  Dim var_B8 As DataGrid
  loc_156B17E: If (CLng(Shift) = &H1B) Then
  loc_156B181:   Call Proc_56_54_FB5464()
  loc_156B186:   Exit Sub
  loc_156B187: End If
  loc_156B18A: var_86 = KeyCode
  loc_156B196: If (var_86 = CInt(139)) Then
  loc_156B1B1:   Set var_9C = Nothing
  loc_156B1BC:   Set var_98 = Nothing
  loc_156B1EE:   Proc_6_69_134A198(Me.DGPurchItem, (var_86), KeyCode, global_84, Shift)
  loc_156B25E:   If ((Me.Recordset15.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_156B265:     Set var_98 = Me.DGPurchItem
  loc_156B288:     Proc_6_138_106D6F8(var_98, global_84, KeyCode, 1(0))
  loc_156B296:   End If
  loc_156B299: Else
  loc_156B2A1:   If Not (var_86 = CInt(&H37)) Then
  loc_156B2AC:     If Not (var_86 = CInt(4)) Then
  loc_156B2B7:       If Not (var_86 = CInt(3)) Then
  loc_156B2C2:         If Not (var_86 = CInt(2)) Then
  loc_156B2CD:           If Not (var_86 = CInt(&HB)) Then
  loc_156B2D8:             If Not (var_86 = CInt(1)) Then
  loc_156B2E3:               If Not (var_86 = CInt(&H22)) Then
  loc_156B2EE:                 If Not (var_86 = CInt(&H21)) Then
  loc_156B2F9:                   If Not (var_86 = CInt(&H18)) Then
  loc_156B304:                     If Not (var_86 = CInt(&H19)) Then
  loc_156B30F:                       If Not (var_86 = CInt(&H1A)) Then
  loc_156B31A:                         If Not (var_86 = CInt(&H1F)) Then
  loc_156B325:                           If Not (var_86 = CInt(&HC)) Then
  loc_156B330:                             If Not (var_86 = CInt(&H24)) Then
  loc_156B33B:                               If Not (var_86 = CInt(&H23)) Then
  loc_156B346:                                 If Not (var_86 = CInt(&H25)) Then
  loc_156B351:                                   If Not (var_86 = CInt(&H26)) Then
  loc_156B35C:                                     If Not (var_86 = CInt(&H2B)) Then
  loc_156B367:                                       If Not (var_86 = CInt(&H2C)) Then
  loc_156B372:                                         If Not (var_86 = CInt(&H44)) Then
  loc_156B37D:                                           If Not (var_86 = CInt(&H45)) Then
  loc_156B388:                                             If (var_86 = CInt(&H46)) Then
  loc_156B38B:                                             End If
  loc_156B38B:                                           End If
  loc_156B38B:                                         End If
  loc_156B38B:                                       End If
  loc_156B38B:                                     End If
  loc_156B38B:                                   End If
  loc_156B38B:                                 End If
  loc_156B38B:                               End If
  loc_156B38B:                             End If
  loc_156B38B:                           End If
  loc_156B38B:                         End If
  loc_156B38B:                       End If
  loc_156B38B:                     End If
  loc_156B38B:                   End If
  loc_156B38B:                 End If
  loc_156B38B:               End If
  loc_156B38B:             End If
  loc_156B38B:           End If
  loc_156B38B:         End If
  loc_156B38B:       End If
  loc_156B38B:     End If
  loc_156B3A3:     Set var_9C = Nothing
  loc_156B3AE:     Set var_98 = Nothing
  loc_156B3E0:     Proc_6_69_134A198(Me.DGHelp, var_9C(var_98), KeyCode, global_52, Shift, 0)
  loc_156B450:     If ((Me.Recordset15.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_156B457:       Set var_98 = Me.DGHelp
  loc_156B47A:       Proc_6_138_106D6F8(var_98, global_52, KeyCode, var_98(1))
  loc_156B488:     End If
  loc_156B48B:   Else
  loc_156B493:     If Not (var_86 = CInt(&H17)) Then
  loc_156B49E:       If (var_86 = CInt(&H1B)) Then
  loc_156B4A1:       End If
  loc_156B4C4:       Set var_98 = Nothing
  loc_156B4F6:       Proc_6_69_134A198(0(Nothing), (0), KeyCode, global_60, Shift)
  loc_156B566:       If ((Me.Recordset15.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_156B56D:         Set var_98 = 1(0)
  loc_156B574:         Set var_90 = Nothing(var_98)
  loc_156B590:         Proc_6_138_106D6F8(var_98, global_60, KeyCode)
  loc_156B59E:       End If
  loc_156B5A1:     Else
  loc_156B5A9:       If (var_86 = CInt(&H38)) Then
  loc_156B5C4:         Set var_9C = Nothing
  loc_156B5CF:         Set var_98 = Nothing
  loc_156B601:         Proc_6_69_134A198(Me.DGRevenue, 0(var_90), KeyCode, global_64, Shift)
  loc_156B671:         If ((Me.Recordset15.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_156B678:           Set var_98 = Me.DGRevenue
  loc_156B69B:           Proc_6_138_106D6F8(var_98, global_64, KeyCode, 1(0))
  loc_156B6A9:         End If
  loc_156B6AC:       Else
  loc_156B6B4:         If (var_86 = CInt(&H11)) Then
  loc_156B6CF:           Set var_9C = Nothing
  loc_156B6DA:           Set var_98 = Nothing
  loc_156B70C:           Proc_6_69_134A198(Me.DGGroup, var_9C(var_98), KeyCode, global_56, Shift, 0)
  loc_156B77C:           If ((Me.Recordset15.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_156B783:             Set var_98 = Me.DGGroup
  loc_156B7A6:             Proc_6_138_106D6F8(var_98, global_56, KeyCode, var_98(1))
  loc_156B7B4:           End If
  loc_156B7B7:         Else
  loc_156B7BF:           If (var_86 = CInt(&H49)) Then
  loc_156B7DA:             Set var_9C = Nothing
  loc_156B7E5:             Set var_98 = Nothing
  loc_156B817:             Proc_6_69_134A198(Me.DGPurchaseGodown, 0(var_9C), KeyCode, global_80, Shift, 0)
  loc_156B887:             If ((Me.Recordset15.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_156B88E:               Set var_98 = Me.DGPurchaseGodown
  loc_156B8B1:               Proc_6_138_106D6F8(var_98, global_80, KeyCode, var_98(1))
  loc_156B8BF:             End If
  loc_156B8C2:           Else
  loc_156B8CA:             If (var_86 = CInt(&H5A)) Then
  loc_156B8E5:               Set var_9C = Nothing
  loc_156B8F0:               Set var_98 = Nothing
  loc_156B922:               Proc_6_69_134A198(Me.DGTaxStru, 0(var_9C), KeyCode, global_72, Shift, 0)
  loc_156B992:               If ((Me.Recordset15.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_156B999:                 Set var_98 = Me.DGTaxStru
  loc_156B9BC:                 Proc_6_138_106D6F8(var_98, global_72, KeyCode, var_98(1))
  loc_156B9CA:               End If
  loc_156B9CD:             Else
  loc_156B9D4:               If Not (var_86 = 136) Then
  loc_156B9DE:                 If (var_86 = 137) Then
  loc_156B9E1:                 End If
  loc_156B9EC:                 Set var_A8 = 0(var_9C)
  loc_156B9F9:                 Set var_9C = Nothing
  loc_156BA04:                 Set var_98 = Nothing
  loc_156BA36:                 Proc_6_69_134A198(Me.DGTAX, var_A8, KeyCode, global_68, Shift, 0)
  loc_156BA56:                 var_AC = Me.Recordset15.RecordCount
  loc_156BAA6:                 If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_156BAAD:                   Set var_98 = Me.DGTAX
  loc_156BAB4:                   Set var_90 = var_98(1)
  loc_156BAD0:                   Proc_6_138_106D6F8(var_98, global_68, KeyCode, var_90)
  loc_156BADE:                 End If
  loc_156BAE1:               Else
  loc_156BAE9:                 If Not (var_86 = CInt(&H7D)) Then
  loc_156BAF4:                   If Not (var_86 = CInt(&H7E)) Then
  loc_156BAFE:                     If (var_86 = 130) Then
  loc_156BB01:                     End If
  loc_156BB01:                   End If
  loc_156BB23:                   Set var_8C = var_90(KeyCode)
  loc_156BB29:                   Call 0.Method_Txt_KeyDown0 (var_AC)
  loc_156BB31:                    = var_90.Left
  loc_156BB43:                   Set var_98 = var_9C(KeyCode)
  loc_156BB49:                   Call 0.Method_Txt_KeyDown0 (var_B0)
  loc_156BB51:                    = var_9C.Top
  loc_156BB63:                   Set var_A4 = var_A8(KeyCode)
  loc_156BB69:                   Call 0.Method_Txt_KeyDown0 (var_B4)
  loc_156BB71:                    = var_A8.Height
  loc_156BB83:                   Set var_B8 = var_BC(KeyCode)
  loc_156BB89:                   Call 0.Method_Txt_KeyDown0 (var_C0)
  loc_156BB91:                    = var_BC.Width
  loc_156BBD9:                   Proc_6_65_119423C(0(var_9C), (0), (), KeyCode, Shift)
  loc_156BC00:                 Else
  loc_156BC08:                   If (var_86 = CInt(0)) Then
  loc_156BC16:                     Set var_D8 = CInt(var_C0)(CInt((var_B0 + var_B4)))
  loc_156BC2D:                     Set var_8C = var_90(KeyCode)
  loc_156BC33:                     Call 0.Method_Txt_KeyDown0 (var_AC)
  loc_156BC3B:                      = var_90.Left
  loc_156BC4D:                     Set var_98 = var_9C(KeyCode)
  loc_156BC53:                     Call 0.Method_Txt_KeyDown0 (var_B0)
  loc_156BC5B:                      = var_9C.Top
  loc_156BC6D:                     Set var_A4 = var_A8(KeyCode)
  loc_156BC73:                     Call 0.Method_Txt_KeyDown0 (var_B4)
  loc_156BC7B:                      = var_A8.Height
  loc_156BC8D:                     Set var_B8 = var_BC(KeyCode)
  loc_156BC93:                     Call 0.Method_Txt_KeyDown0 (var_C0)
  loc_156BC9B:                      = var_BC.Width
  loc_156BCE3:                     Proc_6_65_119423C(CInt(var_AC)(arg_14), (0), (780), KeyCode, Shift)
  loc_156BD15:                     Set var_8C = var_90(CInt(0))
  loc_156BD1B:                     Call 0.Method_Txt_KeyDown0 (var_E0, arg_14, CInt(var_AC))
  loc_156BD23:                     CInt((var_B0 + var_B4)) = var_90.Text
  loc_156BD3A:                     If (var_E0 = "Other") Then
  loc_156BD48:                       Set var_8C = var_90(CInt(1))
  loc_156BD4E:                       Call 0.Method_Txt_KeyDown0 (CInt(var_C0))
  loc_156BD6C:                       If (CBool(var_90.Visible) = 0) Then
  loc_156BD7E:                         Set var_8C = var_90(CInt(1))
  loc_156BD84:                         Call 0.Method_Txt_KeyDown0 (True)
  loc_156BD8C:                         var_90.Visible = 520
  loc_156BD98:                       End If
  loc_156BD9B:                     Else
  loc_156BDA6:                       Set var_8C = var_90(CInt(1))
  loc_156BDAC:                       Call 0.Method_Txt_KeyDown0 ()
  loc_156BDCA:                       If (CBool(var_90.Visible) = &HFF) Then
  loc_156BDDD:                         Set var_8C = var_90(CInt(1))
  loc_156BDE3:                         Call 0.Method_Txt_KeyDown0 (False)
  loc_156BDEB:                         var_90.Visible = 
  loc_156BDF7:                       End If
  loc_156BDF7:                     End If
  loc_156BDFA:                   Else
  loc_156BE02:                     If Not (var_86 = CInt(&H10)) Then
  loc_156BE0D:                       If Not (var_86 = CInt(&H1C)) Then
  loc_156BE18:                         If Not (var_86 = CInt(&HD)) Then
  loc_156BE23:                           If Not (var_86 = CInt(&HE)) Then
  loc_156BE2E:                             If Not (var_86 = CInt(&HF)) Then
  loc_156BE39:                               If Not (var_86 = CInt(&H27)) Then
  loc_156BE44:                                 If Not (var_86 = CInt(&H2D)) Then
  loc_156BE4F:                                   If Not (var_86 = CInt(&H2E)) Then
  loc_156BE5A:                                     If Not (var_86 = CInt(&H34)) Then
  loc_156BE65:                                       If Not (var_86 = CInt(&H39)) Then
  loc_156BE70:                                         If Not (var_86 = CInt(&H3B)) Then
  loc_156BE7A:                                           If Not (var_86 = 138) Then
  loc_156BE85:                                             If Not (var_86 = CInt(&H4B)) Then
  loc_156BE90:                                               If Not (var_86 = CInt(&H77)) Then
  loc_156BE9B:                                                 If Not (var_86 = CInt(&H78)) Then
  loc_156BEA6:                                                   If Not (var_86 = CInt(&H79)) Then
  loc_156BEB1:                                                     If Not (var_86 = CInt(&H58)) Then
  loc_156BEBC:                                                       If (var_86 = CInt(&H7C)) Then
  loc_156BEBF:                                                       End If
  loc_156BEBF:                                                     End If
  loc_156BEBF:                                                   End If
  loc_156BEBF:                                                 End If
  loc_156BEBF:                                               End If
  loc_156BEBF:                                             End If
  loc_156BEBF:                                           End If
  loc_156BEBF:                                         End If
  loc_156BEBF:                                       End If
  loc_156BEBF:                                     End If
  loc_156BEBF:                                   End If
  loc_156BEBF:                                 End If
  loc_156BEBF:                               End If
  loc_156BEBF:                             End If
  loc_156BEBF:                           End If
  loc_156BEBF:                         End If
  loc_156BEBF:                       End If
  loc_156BEE1:                       Set var_8C = var_90(KeyCode)
  loc_156BEE7:                       Call 0.Method_Txt_KeyDown0 (var_AC)
  loc_156BEEF:                        = var_90.Left
  loc_156BF01:                       Set var_98 = var_9C(KeyCode)
  loc_156BF07:                       Call 0.Method_Txt_KeyDown0 (var_B0)
  loc_156BF0F:                        = var_9C.Top
  loc_156BF21:                       Set var_A4 = var_A8(KeyCode)
  loc_156BF27:                       Call 0.Method_Txt_KeyDown0 (var_B4)
  loc_156BF2F:                        = var_A8.Height
  loc_156BF41:                       Set var_B8 = var_BC(KeyCode)
  loc_156BF47:                       Call 0.Method_Txt_KeyDown0 (var_C0)
  loc_156BF4F:                        = var_BC.Width
  loc_156BF97:                       Proc_6_65_119423C((), (), (), KeyCode, Shift)
  loc_156BFBE:                     Else
  loc_156BFC6:                       If (var_86 = CInt(&H29)) Then
  loc_156BFD4:                         Set var_D8 = CInt(var_C0)(CInt((var_B0 + var_B4)))
  loc_156BFEB:                         Set var_8C = var_90(KeyCode)
  loc_156BFF1:                         Call 0.Method_Txt_KeyDown0 (var_AC)
  loc_156BFF9:                          = var_90.Left
  loc_156C00B:                         Set var_98 = var_9C(KeyCode)
  loc_156C011:                         Call 0.Method_Txt_KeyDown0 (var_B0)
  loc_156C019:                          = var_9C.Top
  loc_156C02B:                         Set var_A4 = var_A8(KeyCode)
  loc_156C031:                         Call 0.Method_Txt_KeyDown0 (var_B4)
  loc_156C039:                          = var_A8.Height
  loc_156C04B:                         Set var_B8 = var_BC(KeyCode)
  loc_156C051:                         Call 0.Method_Txt_KeyDown0 (var_C0)
  loc_156C059:                          = var_BC.Width
  loc_156C0A1:                         Proc_6_65_119423C(CInt(var_AC)(arg_14), (), (520), KeyCode, Shift)
  loc_156C0C5:                       End If
  loc_156C0C5:                     End If
  loc_156C0C5:                   End If
  loc_156C0C5:                 End If
  loc_156C0C5:               End If
  loc_156C0C5:             End If
  loc_156C0C5:           End If
  loc_156C0C5:         End If
  loc_156C0C5:       End If
  loc_156C0C5:     End If
  loc_156C0C5:   End If
  loc_156C0C5: End If
  loc_156C13E: Set var_A8 = ((((CInt(var_AC) And (CBool(arg_14((CBool(Me.DGRevenue.Visible) = 0)).Visible) = 0)) And (CBool(Me.DGTAX.Visible) = 0)) And (CBool(Me.DGTaxStru.Visible) = 0)) And (CBool(Me.DGHelp.Visible) = 0))(var_92)
  loc_156C144: CInt((var_B0 + var_B4)) = var_A8.Visible
  loc_156C1D8: If (((((CInt(var_C0) And (var_92 = 0)) And (CBool(Me.DGGroup.Visible) = 0)) And (CBool(Me.DGDepart.Visible) = 0)) And (CBool(Me.DGPurchaseGodown.Visible) = 0)) And (CBool(Me.DGTaxStru.Visible) = 0)) Then
  loc_156C1F0:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_156C1F9:     Proc_6_75_E527CC(Shift, arg_14)
  loc_156C1FE:   End If
  loc_156C208:   If (CLng(Shift) = &H26) Then
  loc_156C211:     Proc_6_76_E52838(Shift, arg_14)
  loc_156C216:   End If
  loc_156C216: End If
  loc_156C216: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '148D088
  'Data Table: 554C78
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_A8 As TextBox
  Dim arg_10 As Integer
  Dim var_A0 As String
  loc_148C417: Proc_6_58_E054C0(arg_10)
  loc_148C41F: var_86 = KeyAscii
  loc_148C42B: If (var_86 = CInt(139)) Then
  loc_148C44A:   If (CBool(Me.DGPurchItem.Visible) = &HFF) Then
  loc_148C45C:     var_A0 = "Name"
  loc_148C47B:     Proc_6_89_146F1AC((var_86), KeyAscii, global_84)
  loc_148C48A:   End If
  loc_148C48D: Else
  loc_148C495:   If Not (var_86 = CInt(&H37)) Then
  loc_148C4A0:     If Not (var_86 = CInt(4)) Then
  loc_148C4AB:       If Not (var_86 = CInt(3)) Then
  loc_148C4B6:         If Not (var_86 = CInt(2)) Then
  loc_148C4C1:           If Not (var_86 = CInt(&HB)) Then
  loc_148C4CC:             If Not (var_86 = CInt(1)) Then
  loc_148C4D7:               If Not (var_86 = CInt(&H22)) Then
  loc_148C4E2:                 If Not (var_86 = CInt(&H21)) Then
  loc_148C4ED:                   If Not (var_86 = CInt(&H18)) Then
  loc_148C4F8:                     If Not (var_86 = CInt(&H19)) Then
  loc_148C503:                       If Not (var_86 = CInt(&H1A)) Then
  loc_148C50E:                         If Not (var_86 = CInt(&H1F)) Then
  loc_148C519:                           If Not (var_86 = CInt(&HC)) Then
  loc_148C524:                             If Not (var_86 = CInt(&H23)) Then
  loc_148C52F:                               If Not (var_86 = CInt(&H24)) Then
  loc_148C53A:                                 If Not (var_86 = CInt(&H25)) Then
  loc_148C545:                                   If Not (var_86 = CInt(&H26)) Then
  loc_148C550:                                     If Not (var_86 = CInt(&H2B)) Then
  loc_148C55B:                                       If Not (var_86 = CInt(&H2C)) Then
  loc_148C566:                                         If Not (var_86 = CInt(&H44)) Then
  loc_148C571:                                           If Not (var_86 = CInt(&H45)) Then
  loc_148C57C:                                             If (var_86 = CInt(&H46)) Then
  loc_148C57F:                                             End If
  loc_148C57F:                                           End If
  loc_148C57F:                                         End If
  loc_148C57F:                                       End If
  loc_148C57F:                                     End If
  loc_148C57F:                                   End If
  loc_148C57F:                                 End If
  loc_148C57F:                               End If
  loc_148C57F:                             End If
  loc_148C57F:                           End If
  loc_148C57F:                         End If
  loc_148C57F:                       End If
  loc_148C57F:                     End If
  loc_148C57F:                   End If
  loc_148C57F:                 End If
  loc_148C57F:               End If
  loc_148C57F:             End If
  loc_148C57F:           End If
  loc_148C57F:         End If
  loc_148C57F:       End If
  loc_148C57F:     End If
  loc_148C59B:     If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_148C5AD:       var_A0 = "Name"
  loc_148C5CC:       Proc_6_89_146F1AC(var_A0(arg_10), KeyAscii, global_52, arg_10)
  loc_148C5DB:     End If
  loc_148C5DE:   Else
  loc_148C5E6:     If Not (var_86 = CInt(&H17)) Then
  loc_148C5F1:       If (var_86 = CInt(&H1B)) Then
  loc_148C5F4:       End If
  loc_148C610:       If (CBool(0(var_A0).Visible) = &HFF) Then
  loc_148C622:         var_A0 = "Name"
  loc_148C641:         Proc_6_89_146F1AC((0), KeyAscii, global_60)
  loc_148C650:       End If
  loc_148C653:     Else
  loc_148C65B:       If (var_86 = CInt(&H38)) Then
  loc_148C67A:         If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_148C68C:           var_A0 = "Name"
  loc_148C6AB:           Proc_6_89_146F1AC(var_A0(arg_10), KeyAscii, global_64, arg_10)
  loc_148C6BA:         End If
  loc_148C6BD:       Else
  loc_148C6C5:         If (var_86 = CInt(&H11)) Then
  loc_148C6E4:           If (CBool(Me.DGGroup.Visible) = &HFF) Then
  loc_148C6F6:             var_A0 = "Name"
  loc_148C715:             Proc_6_89_146F1AC(0(var_A0), KeyAscii, global_56, arg_10)
  loc_148C724:           End If
  loc_148C727:         Else
  loc_148C72F:           If (var_86 = CInt(&H49)) Then
  loc_148C74E:             If (CBool(Me.DGPurchaseGodown.Visible) = &HFF) Then
  loc_148C760:               var_A0 = "Name"
  loc_148C77F:               Proc_6_89_146F1AC(0(var_A0), KeyAscii, global_80, arg_10)
  loc_148C78E:             End If
  loc_148C791:           Else
  loc_148C799:             If (var_86 = CInt(&H5A)) Then
  loc_148C7B8:               If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_148C7CA:                 var_A0 = "Name"
  loc_148C7E9:                 Proc_6_89_146F1AC(0(var_A0), KeyAscii, global_72, arg_10)
  loc_148C7F8:               End If
  loc_148C7FB:             Else
  loc_148C802:               If Not (var_86 = 136) Then
  loc_148C80C:                 If (var_86 = 137) Then
  loc_148C80F:                 End If
  loc_148C82B:                 If (CBool(Me.DGTAX.Visible) = &HFF) Then
  loc_148C832:                   Set var_A8 = 0(var_A0)
  loc_148C83D:                   var_A0 = "Name"
  loc_148C85C:                   Proc_6_89_146F1AC(var_A8, KeyAscii, global_68, arg_10)
  loc_148C86B:                 End If
  loc_148C86E:               Else
  loc_148C876:                 If Not (var_86 = CInt(7)) Then
  loc_148C881:                   If (var_86 = CInt(5)) Then
  loc_148C884:                   End If
  loc_148C88E:                   Set var_8C = var_A8(KeyAscii)
  loc_148C894:                   Call 0.Method_Txt_KeyPress0 (var_A0, 0)
  loc_148C8AF:                   Proc_6_42_129A86C(var_A8, arg_10, 8)
  loc_148C8BE:                 Else
  loc_148C8C6:                   If Not (var_86 = CInt(8)) Then
  loc_148C8D1:                     If Not (var_86 = CInt(9)) Then
  loc_148C8DC:                       If Not (var_86 = CInt(6)) Then
  loc_148C8E7:                         If (var_86 = CInt(&H4C)) Then
  loc_148C8EA:                         End If
  loc_148C8EA:                       End If
  loc_148C8EA:                     End If
  loc_148C8F4:                     Set var_8C = var_A8(KeyAscii)
  loc_148C8FA:                     Call 0.Method_Txt_KeyPress0 (2)
  loc_148C915:                     Proc_6_42_129A86C(var_A8, arg_10, 3)
  loc_148C924:                   Else
  loc_148C92C:                     If Not (var_86 = CInt(&H51)) Then
  loc_148C937:                       If Not (var_86 = CInt(&H53)) Then
  loc_148C942:                         If Not (var_86 = CInt(&H54)) Then
  loc_148C94D:                           If (var_86 = CInt(&H52)) Then
  loc_148C950:                           End If
  loc_148C950:                         End If
  loc_148C950:                       End If
  loc_148C95A:                       Set var_8C = var_A8(KeyAscii)
  loc_148C960:                       Call 0.Method_Txt_KeyPress0 (2)
  loc_148C97B:                       Proc_6_42_129A86C(var_A8, arg_10, 2)
  loc_148C98A:                     Else
  loc_148C992:                       If Not (var_86 = CInt(&H28)) Then
  loc_148C99D:                         If Not (var_86 = CInt(&H2F)) Then
  loc_148C9A8:                           If Not (var_86 = CInt(&H30)) Then
  loc_148C9B3:                             If Not (var_86 = CInt(&H48)) Then
  loc_148C9BE:                               If Not (var_86 = CInt(&H7A)) Then
  loc_148C9C8:                                 If Not (var_86 = 129) Then
  loc_148C9D4:                                   If Not (var_86 = CInt(128)) Then
  loc_148C9DE:                                     If Not (var_86 = 140) Then
  loc_148C9E8:                                       If Not (var_86 = 141) Then
  loc_148C9F4:                                         If Not (var_86 = CInt(142)) Then
  loc_148CA00:                                           If Not (var_86 = CInt(143)) Then
  loc_148CA0C:                                             If Not (var_86 = CInt(144)) Then
  loc_148CA16:                                               If Not (var_86 = 145) Then
  loc_148CA20:                                                 If Not (var_86 = 146) Then
  loc_148CA2C:                                                   If Not (var_86 = CInt(147)) Then
  loc_148CA38:                                                     If Not (var_86 = CInt(148)) Then
  loc_148CA42:                                                       If Not (var_86 = 149) Then
  loc_148CA4C:                                                         If Not (var_86 = 150) Then
  loc_148CA56:                                                           If (var_86 = 151) Then
  loc_148CA59:                                                           End If
  loc_148CA59:                                                         End If
  loc_148CA59:                                                       End If
  loc_148CA59:                                                     End If
  loc_148CA59:                                                   End If
  loc_148CA59:                                                 End If
  loc_148CA59:                                               End If
  loc_148CA59:                                             End If
  loc_148CA59:                                           End If
  loc_148CA59:                                         End If
  loc_148CA59:                                       End If
  loc_148CA59:                                     End If
  loc_148CA59:                                   End If
  loc_148CA59:                                 End If
  loc_148CA59:                               End If
  loc_148CA59:                             End If
  loc_148CA59:                           End If
  loc_148CA59:                         End If
  loc_148CA82:                         If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_148CA92:                           Set var_8C = var_A8(KeyAscii)
  loc_148CA98:                           Call 0.Method_Txt_KeyPress0 ("Yes", 0)
  loc_148CAA0:                           var_A8.Text = 0
  loc_148CAAF:                         Else
  loc_148CAD8:                           If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_148CAE8:                             Set var_8C = var_A8(KeyAscii)
  loc_148CAEE:                             Call 0.Method_Txt_KeyPress0 ("No")
  loc_148CAF6:                             var_A8.Text = 
  loc_148CB02:                           End If
  loc_148CB02:                         End If
  loc_148CB04:                         arg_10 = 0
  loc_148CB0A:                       Else
  loc_148CB12:                         If Not (var_86 = CInt(&H56)) Then
  loc_148CB1D:                           If Not (var_86 = CInt(&H57)) Then
  loc_148CB28:                             If Not (var_86 = CInt(&H59)) Then
  loc_148CB33:                               If Not (var_86 = CInt(&H75)) Then
  loc_148CB3E:                                 If Not (var_86 = CInt(&H76)) Then
  loc_148CB49:                                   If Not (var_86 = CInt(&H7B)) Then
  loc_148CB54:                                     If Not (var_86 = CInt(&H7F)) Then
  loc_148CB60:                                       If Not (var_86 = CInt(132)) Then
  loc_148CB6B:                                         If (var_86 = CInt(&H5B)) Then
  loc_148CB6E:                                         End If
  loc_148CB6E:                                       End If
  loc_148CB6E:                                     End If
  loc_148CB6E:                                   End If
  loc_148CB6E:                                 End If
  loc_148CB6E:                               End If
  loc_148CB6E:                             End If
  loc_148CB6E:                           End If
  loc_148CB97:                           If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_148CBA7:                             Set var_8C = var_A8(KeyAscii)
  loc_148CBAD:                             Call 0.Method_Txt_KeyPress0 ("Yes")
  loc_148CBB5:                             var_A8.Text = arg_10
  loc_148CBC4:                           Else
  loc_148CBED:                             If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_148CBFD:                               Set var_8C = var_A8(KeyAscii)
  loc_148CC03:                               Call 0.Method_Txt_KeyPress0 ("No")
  loc_148CC0B:                               var_A8.Text = 
  loc_148CC17:                             End If
  loc_148CC17:                           End If
  loc_148CC19:                           arg_10 = 0
  loc_148CC1F:                         Else
  loc_148CC27:                           If (var_86 = CInt(&H3D)) Then
  loc_148CC37:                             If ((arg_10 >= &H30) And (arg_10 <= &H39)) Then
  loc_148CC57:                               Set var_8C = var_A8(KeyAscii)
  loc_148CC5D:                               Call 0.Method_Txt_KeyPress0 (CStr(Chr(CLng(arg_10))))
  loc_148CC65:                               var_A8.Text = arg_10
  loc_148CC7A:                             Else
  loc_148CC7C:                               arg_10 = 0
  loc_148CC7F:                             End If
  loc_148CC82:                           Else
  loc_148CC8A:                             If Not (var_86 = CInt(&H3F)) Then
  loc_148CC95:                               If (var_86 = CInt(&H47)) Then
  loc_148CC98:                               End If
  loc_148CCC1:                               If (Ucase(Chr(CLng(arg_10))) = "W") Then
  loc_148CCD1:                                 Set var_8C = var_A8(KeyAscii)
  loc_148CCD7:                                 Call 0.Method_Txt_KeyPress0 ("W")
  loc_148CCDF:                                 var_A8.Text = arg_10
  loc_148CCEE:                               Else
  loc_148CD17:                                 If (Ucase(Chr(CLng(arg_10))) = "D") Then
  loc_148CD27:                                   Set var_8C = var_A8(KeyAscii)
  loc_148CD2D:                                   Call 0.Method_Txt_KeyPress0 ("D")
  loc_148CD35:                                   var_A8.Text = 
  loc_148CD41:                                 End If
  loc_148CD41:                               End If
  loc_148CD43:                               arg_10 = 0
  loc_148CD49:                             Else
  loc_148CD51:                               If Not (var_86 = CInt(&H2A)) Then
  loc_148CD5C:                                 If Not (var_86 = CInt(&H32)) Then
  loc_148CD67:                                   If Not (var_86 = CInt(&H3A)) Then
  loc_148CD72:                                     If Not (var_86 = CInt(&H3C)) Then
  loc_148CD7D:                                       If Not (var_86 = CInt(&H3E)) Then
  loc_148CD89:                                         If Not (var_86 = CInt(131)) Then
  loc_148CD94:                                           If Not (var_86 = CInt(&H40)) Then
  loc_148CD9F:                                             If Not (var_86 = CInt(&H5C)) Then
  loc_148CDAA:                                               If Not (var_86 = CInt(&H41)) Then
  loc_148CDB5:                                                 If Not (var_86 = CInt(&H4A)) Then
  loc_148CDC0:                                                   If Not (var_86 = CInt(&H55)) Then
  loc_148CDCA:                                                     If Not (var_86 = 134) Then
  loc_148CDD4:                                                       If (var_86 = 135) Then
  loc_148CDD7:                                                       End If
  loc_148CDD7:                                                     End If
  loc_148CDD7:                                                   End If
  loc_148CDD7:                                                 End If
  loc_148CDD7:                                               End If
  loc_148CDD7:                                             End If
  loc_148CDD7:                                           End If
  loc_148CDD7:                                         End If
  loc_148CDD7:                                       End If
  loc_148CDD7:                                     End If
  loc_148CDD7:                                   End If
  loc_148CDD7:                                 End If
  loc_148CE00:                                 If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_148CE10:                                   Set var_8C = var_A8(KeyAscii)
  loc_148CE16:                                   Call 0.Method_Txt_KeyPress0 ("Yes")
  loc_148CE1E:                                   var_A8.Text = arg_10
  loc_148CE2D:                                 Else
  loc_148CE56:                                   If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_148CE66:                                     Set var_8C = var_A8(KeyAscii)
  loc_148CE6C:                                     Call 0.Method_Txt_KeyPress0 ("No")
  loc_148CE74:                                     var_A8.Text = 
  loc_148CE80:                                   End If
  loc_148CE80:                                 End If
  loc_148CE82:                                 arg_10 = 0
  loc_148CE88:                               Else
  loc_148CE90:                                 If (var_86 = CInt(&H31)) Then
  loc_148CEBC:                                   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_148CECC:                                     Set var_8C = var_A8(KeyAscii)
  loc_148CED2:                                     Call 0.Method_Txt_KeyPress0 ("Yes")
  loc_148CEDA:                                     var_A8.Text = arg_10
  loc_148CEE9:                                   Else
  loc_148CF12:                                     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_148CF22:                                       Set var_8C = var_A8(KeyAscii)
  loc_148CF28:                                       Call 0.Method_Txt_KeyPress0 ("No")
  loc_148CF30:                                       var_A8.Text = 
  loc_148CF3C:                                     End If
  loc_148CF3C:                                   End If
  loc_148CF47:                                   Set var_8C = var_A8(CInt(&H31))
  loc_148CF4D:                                   Call 0.Method_Txt_KeyPress0 ()
  loc_148CF98:                                   (CBool(IIf((Left(CVar(var_A8), 1) = "Y"), True, False))).Visible = 
  loc_148CFB5:                                   arg_10 = 0
  loc_148CFBB:                                 Else
  loc_148CFC3:                                   If Not (var_86 = CInt(&H10)) Then
  loc_148CFCE:                                     If Not (var_86 = CInt(&H1C)) Then
  loc_148CFD9:                                       If Not (var_86 = CInt(&HD)) Then
  loc_148CFE4:                                         If Not (var_86 = CInt(&HE)) Then
  loc_148CFEF:                                           If Not (var_86 = CInt(&HF)) Then
  loc_148CFFA:                                             If Not (var_86 = CInt(&H27)) Then
  loc_148D005:                                               If Not (var_86 = CInt(&H29)) Then
  loc_148D010:                                                 If Not (var_86 = CInt(&H2D)) Then
  loc_148D01B:                                                   If Not (var_86 = CInt(&H2E)) Then
  loc_148D026:                                                     If Not (var_86 = CInt(&H34)) Then
  loc_148D031:                                                       If Not (var_86 = CInt(&H39)) Then
  loc_148D03C:                                                         If Not (var_86 = CInt(&H4B)) Then
  loc_148D047:                                                           If Not (var_86 = CInt(&H77)) Then
  loc_148D052:                                                             If Not (var_86 = CInt(&H78)) Then
  loc_148D05D:                                                               If Not (var_86 = CInt(&H79)) Then
  loc_148D068:                                                                 If Not (var_86 = CInt(&H58)) Then
  loc_148D073:                                                                   If Not (var_86 = CInt(&H7C)) Then
  loc_148D07D:                                                                     If (var_86 = 130) Then
  loc_148D080:                                                                     End If
  loc_148D080:                                                                   End If
  loc_148D080:                                                                 End If
  loc_148D080:                                                               End If
  loc_148D080:                                                             End If
  loc_148D080:                                                           End If
  loc_148D080:                                                         End If
  loc_148D080:                                                       End If
  loc_148D080:                                                     End If
  loc_148D080:                                                   End If
  loc_148D080:                                                 End If
  loc_148D080:                                               End If
  loc_148D080:                                             End If
  loc_148D080:                                           End If
  loc_148D080:                                         End If
  loc_148D080:                                       End If
  loc_148D080:                                     End If
  loc_148D082:                                     arg_10 = 0
  loc_148D085:                                   End If
  loc_148D085:                                 End If
  loc_148D085:                               End If
  loc_148D085:                             End If
  loc_148D085:                           End If
  loc_148D085:                         End If
  loc_148D085:                       End If
  loc_148D085:                     End If
  loc_148D085:                   End If
  loc_148D085:                 End If
  loc_148D085:               End If
  loc_148D085:             End If
  loc_148D085:           End If
  loc_148D085:         End If
  loc_148D085:       End If
  loc_148D085:     End If
  loc_148D085:   End If
  loc_148D085: End If
  loc_148D085: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '134FDBC
  'Data Table: 554C78
  Dim var_86 As Integer
  loc_134F5A3: var_86 = KeyCode
  loc_134F5AF: If (var_86 = CInt(139)) Then
  loc_134F5CE:   If (CBool(Me.DGPurchItem.Visible) = &HFF) Then
  loc_134F5E2:     var_A4 = "Name"
  loc_134F60A:     Proc_6_68_129FB34(Me.DGPurchItem, (var_86), KeyCode)
  loc_134F628:     Set var_A0 = Shift(global_84)
  loc_134F644:     Proc_6_138_106D6F8(Me.DGPurchItem, global_84, KeyCode)
  loc_134F652:   End If
  loc_134F655: Else
  loc_134F65D:   If Not (var_86 = CInt(&H37)) Then
  loc_134F668:     If Not (var_86 = CInt(4)) Then
  loc_134F673:       If Not (var_86 = CInt(3)) Then
  loc_134F67E:         If Not (var_86 = CInt(2)) Then
  loc_134F689:           If Not (var_86 = CInt(&HB)) Then
  loc_134F694:             If Not (var_86 = CInt(1)) Then
  loc_134F69F:               If Not (var_86 = CInt(&H22)) Then
  loc_134F6AA:                 If Not (var_86 = CInt(&H21)) Then
  loc_134F6B5:                   If Not (var_86 = CInt(&H18)) Then
  loc_134F6C0:                     If Not (var_86 = CInt(&H19)) Then
  loc_134F6CB:                       If Not (var_86 = CInt(&H1A)) Then
  loc_134F6D6:                         If Not (var_86 = CInt(&H1F)) Then
  loc_134F6E1:                           If Not (var_86 = CInt(&HC)) Then
  loc_134F6EC:                             If Not (var_86 = CInt(&H23)) Then
  loc_134F6F7:                               If Not (var_86 = CInt(&H24)) Then
  loc_134F702:                                 If Not (var_86 = CInt(&H25)) Then
  loc_134F70D:                                   If Not (var_86 = CInt(&H26)) Then
  loc_134F718:                                     If Not (var_86 = CInt(&H2B)) Then
  loc_134F723:                                       If Not (var_86 = CInt(&H2C)) Then
  loc_134F72E:                                         If Not (var_86 = CInt(&H44)) Then
  loc_134F739:                                           If Not (var_86 = CInt(&H45)) Then
  loc_134F744:                                             If (var_86 = CInt(&H46)) Then
  loc_134F747:                                             End If
  loc_134F747:                                           End If
  loc_134F747:                                         End If
  loc_134F747:                                       End If
  loc_134F747:                                     End If
  loc_134F747:                                   End If
  loc_134F747:                                 End If
  loc_134F747:                               End If
  loc_134F747:                             End If
  loc_134F747:                           End If
  loc_134F747:                         End If
  loc_134F747:                       End If
  loc_134F747:                     End If
  loc_134F747:                   End If
  loc_134F747:                 End If
  loc_134F747:               End If
  loc_134F747:             End If
  loc_134F747:           End If
  loc_134F747:         End If
  loc_134F747:       End If
  loc_134F747:     End If
  loc_134F763:     If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_134F777:       var_A4 = "Name"
  loc_134F79F:       Proc_6_68_129FB34(Me.DGHelp, var_A4(var_A0), KeyCode)
  loc_134F7BD:       Set var_A0 = Shift(global_52)
  loc_134F7D9:       Proc_6_138_106D6F8(Me.DGHelp, global_52, KeyCode)
  loc_134F7E7:     End If
  loc_134F7EA:   Else
  loc_134F7F2:     If Not (var_86 = CInt(&H17)) Then
  loc_134F7FD:       If (var_86 = CInt(&H1B)) Then
  loc_134F800:       End If
  loc_134F81C:       If (CBool(var_A4(var_A0).Visible) = &HFF) Then
  loc_134F858:         Proc_6_68_129FB34((), (), KeyCode)
  loc_134F876:         Set var_A0 = ("Name")
  loc_134F892:         Proc_6_138_106D6F8(Shift(global_60), global_60)
  loc_134F8A0:       End If
  loc_134F8A3:     Else
  loc_134F8AB:       If (var_86 = CInt(&H38)) Then
  loc_134F8CA:         If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_134F8DE:           var_A4 = "Name"
  loc_134F906:           Proc_6_68_129FB34(Me.DGRevenue, var_A0(KeyCode), KeyCode)
  loc_134F924:           Set var_A0 = Shift(global_64)
  loc_134F940:           Proc_6_138_106D6F8(Me.DGRevenue, global_64, KeyCode)
  loc_134F94E:         End If
  loc_134F951:       Else
  loc_134F959:         If (var_86 = CInt(&H11)) Then
  loc_134F978:           If (CBool(Me.DGGroup.Visible) = &HFF) Then
  loc_134F98C:             var_A4 = "Name"
  loc_134F9B4:             Proc_6_68_129FB34(Me.DGGroup, var_A4(var_A0), KeyCode)
  loc_134F9D2:             Set var_A0 = Shift(global_56)
  loc_134F9EE:             Proc_6_138_106D6F8(Me.DGGroup, global_56, KeyCode)
  loc_134F9FC:           End If
  loc_134F9FF:         Else
  loc_134FA07:           If (var_86 = CInt(&H49)) Then
  loc_134FA26:             If (CBool(Me.DGPurchaseGodown.Visible) = &HFF) Then
  loc_134FA3A:               var_A4 = "Name"
  loc_134FA62:               Proc_6_68_129FB34(Me.DGPurchaseGodown, var_A4(var_A0), KeyCode)
  loc_134FA80:               Set var_A0 = Shift(global_80)
  loc_134FA9C:               Proc_6_138_106D6F8(Me.DGPurchaseGodown, global_80, KeyCode)
  loc_134FAAA:             End If
  loc_134FAAD:           Else
  loc_134FAB5:             If (var_86 = CInt(&H5A)) Then
  loc_134FAD4:               If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_134FAE8:                 var_A4 = "Name"
  loc_134FB10:                 Proc_6_68_129FB34(Me.DGTaxStru, var_A4(var_A0), KeyCode)
  loc_134FB2E:                 Set var_A0 = Shift(global_72)
  loc_134FB4A:                 Proc_6_138_106D6F8(Me.DGTaxStru, global_72, KeyCode)
  loc_134FB58:               End If
  loc_134FB5B:             Else
  loc_134FB62:               If Not (var_86 = 136) Then
  loc_134FB6C:                 If (var_86 = 137) Then
  loc_134FB6F:                 End If
  loc_134FB8B:                 If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_134FB9F:                   var_A4 = "Name"
  loc_134FBC7:                   Proc_6_68_129FB34(Me.DGTAX, var_A4(var_A0), KeyCode)
  loc_134FBE5:                   Set var_A0 = Shift(global_68)
  loc_134FC01:                   Proc_6_138_106D6F8(Me.DGTAX, global_68, KeyCode)
  loc_134FC0F:                 End If
  loc_134FC12:               Else
  loc_134FC1A:                 If Not (var_86 = CInt(0)) Then
  loc_134FC25:                   If Not (var_86 = CInt(&H7D)) Then
  loc_134FC30:                     If Not (var_86 = CInt(&H7E)) Then
  loc_134FC3A:                       If (var_86 = 130) Then
  loc_134FC3D:                       End If
  loc_134FC3D:                     End If
  loc_134FC3D:                   End If
  loc_134FC4A:                   var_A4 = var_A0(var_AE).Visible
  loc_134FC58:                   If (var_AE = &HFF) Then
  loc_134FC87:                     Proc_6_64_F28E58((), (), KeyCode)
  loc_134FC97:                   End If
  loc_134FC9A:                 Else
  loc_134FCA2:                   If Not (var_86 = CInt(&H10)) Then
  loc_134FCAD:                     If Not (var_86 = CInt(&H1C)) Then
  loc_134FCB8:                       If Not (var_86 = CInt(&HD)) Then
  loc_134FCC3:                         If Not (var_86 = CInt(&HE)) Then
  loc_134FCCE:                           If Not (var_86 = CInt(&H27)) Then
  loc_134FCD9:                             If Not (var_86 = CInt(&H29)) Then
  loc_134FCE4:                               If Not (var_86 = CInt(&H2D)) Then
  loc_134FCEF:                                 If Not (var_86 = CInt(&H2E)) Then
  loc_134FCFA:                                   If Not (var_86 = CInt(&H34)) Then
  loc_134FD05:                                     If Not (var_86 = CInt(&H39)) Then
  loc_134FD10:                                       If Not (var_86 = CInt(&H3B)) Then
  loc_134FD1A:                                         If Not (var_86 = 138) Then
  loc_134FD25:                                           If Not (var_86 = CInt(&H4B)) Then
  loc_134FD30:                                             If Not (var_86 = CInt(&H77)) Then
  loc_134FD3B:                                               If Not (var_86 = CInt(&H78)) Then
  loc_134FD46:                                                 If Not (var_86 = CInt(&H79)) Then
  loc_134FD51:                                                   If Not (var_86 = CInt(&H58)) Then
  loc_134FD5C:                                                     If (var_86 = CInt(&H7C)) Then
  loc_134FD5F:                                                     End If
  loc_134FD5F:                                                   End If
  loc_134FD5F:                                                 End If
  loc_134FD5F:                                               End If
  loc_134FD5F:                                             End If
  loc_134FD5F:                                           End If
  loc_134FD5F:                                         End If
  loc_134FD5F:                                       End If
  loc_134FD5F:                                     End If
  loc_134FD5F:                                   End If
  loc_134FD5F:                                 End If
  loc_134FD5F:                               End If
  loc_134FD5F:                             End If
  loc_134FD5F:                           End If
  loc_134FD5F:                         End If
  loc_134FD5F:                       End If
  loc_134FD5F:                     End If
  loc_134FD6C:                     global_112 = Shift(var_AE).Visible
  loc_134FD7A:                     If (var_AE = &HFF) Then
  loc_134FDA9:                       Proc_6_64_F28E58((), (), KeyCode)
  loc_134FDB9:                     End If
  loc_134FDB9:                   End If
  loc_134FDB9:                 End If
  loc_134FDB9:               End If
  loc_134FDB9:             End If
  loc_134FDB9:           End If
  loc_134FDB9:         End If
  loc_134FDB9:       End If
  loc_134FDB9:     End If
  loc_134FDB9:   End If
  loc_134FDB9: End If
  loc_134FDB9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A23C
  'Data Table: 554C78
  loc_E4A21A: Set var_88 = var_8C(Index)
  loc_E4A220: Call 0.Method_Txt_LostFocus0 ()
  loc_E4A22E: Proc_6_73_E22704(var_8C)
  loc_E4A23A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '155E4CC
  'Data Table: 554C78
  Dim var_86 As Integer
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_155D458: On Error Resume Next
  loc_155D45D: Call Proc_56_54_FB5464()
  loc_155D475: If (Cancel = CInt(139)) Then
  loc_155D4D1:   Set var_94 = var_98(Cancel)
  loc_155D4D7:   Call 0.Method_Txt_Validate0 (var_9C, ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_155D4DF:   var_86 = var_98.Text
  loc_155D4F7:   If ( Or (var_9C = vbNullString)) Then
  loc_155D4FC:     Exit Sub
  loc_155D4FD:   End If
  loc_155D53D:   Set var_B0 = var_B4(Cancel)
  loc_155D543:   Call 0.Method_Txt_Validate0 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_155D54B:   var_B4.Text = 
  loc_155D583:   var_98 = Me.Recordset15.Fields.Item("Code")
  loc_155D594:   var_9C = CStr(var_98.Value)
  loc_155D5A1:   Set var_B0 = var_B4(Cancel)
  loc_155D5A7:   Call 0.Method_Txt_Validate0 (var_9C)
  loc_155D5AF:   var_B4.Tag = 
  loc_155D5C8: Else
  loc_155D5D2:   If Not (var_86 = CInt(&H37)) Then
  loc_155D5DD:     If Not (var_86 = CInt(4)) Then
  loc_155D5E8:       If Not (var_86 = CInt(3)) Then
  loc_155D5F3:         If Not (var_86 = CInt(2)) Then
  loc_155D5FE:           If Not (var_86 = CInt(&HB)) Then
  loc_155D609:             If Not (var_86 = CInt(1)) Then
  loc_155D614:               If Not (var_86 = CInt(&H18)) Then
  loc_155D61F:                 If Not (var_86 = CInt(&H19)) Then
  loc_155D62A:                   If Not (var_86 = CInt(&H21)) Then
  loc_155D635:                     If Not (var_86 = CInt(&H22)) Then
  loc_155D640:                       If Not (var_86 = CInt(&H1A)) Then
  loc_155D64B:                         If Not (var_86 = CInt(&H1F)) Then
  loc_155D656:                           If Not (var_86 = CInt(&HC)) Then
  loc_155D661:                             If Not (var_86 = CInt(&H24)) Then
  loc_155D66C:                               If Not (var_86 = CInt(&H23)) Then
  loc_155D677:                                 If Not (var_86 = CInt(&H25)) Then
  loc_155D682:                                   If Not (var_86 = CInt(&H26)) Then
  loc_155D68D:                                     If Not (var_86 = CInt(&H2B)) Then
  loc_155D698:                                       If Not (var_86 = CInt(&H2C)) Then
  loc_155D6A3:                                         If Not (var_86 = CInt(&H44)) Then
  loc_155D6AE:                                           If Not (var_86 = CInt(&H45)) Then
  loc_155D6B9:                                             If (var_86 = CInt(&H46)) Then
  loc_155D6BC:                                             End If
  loc_155D6BC:                                           End If
  loc_155D6BC:                                         End If
  loc_155D6BC:                                       End If
  loc_155D6BC:                                     End If
  loc_155D6BC:                                   End If
  loc_155D6BC:                                 End If
  loc_155D6BC:                               End If
  loc_155D6BC:                             End If
  loc_155D6BC:                           End If
  loc_155D6BC:                         End If
  loc_155D6BC:                       End If
  loc_155D6BC:                     End If
  loc_155D6BC:                   End If
  loc_155D6BC:                 End If
  loc_155D6BC:               End If
  loc_155D6BC:             End If
  loc_155D6BC:           End If
  loc_155D6BC:         End If
  loc_155D6BC:       End If
  loc_155D6BC:     End If
  loc_155D715:     Set var_94 = var_98(Cancel)
  loc_155D71B:     Call 0.Method_Txt_Validate0 (var_9C)
  loc_155D723:     ((global_52.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_155D73B:     If ( Or (var_9C = vbNullString)) Then
  loc_155D74D:       Set var_94 = var_98(Cancel)
  loc_155D753:       Call 0.Method_Txt_Validate0 (vbNullString)
  loc_155D75B:       var_98.Tag = 
  loc_155D769:       Exit Sub
  loc_155D76A:     End If
  loc_155D7AA:     Set var_B0 = var_B4(Cancel)
  loc_155D7B0:     Call 0.Method_Txt_Validate0 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_155D7B8:     var_B4.Text = 
  loc_155D7F0:     var_98 = Me.Recordset15.Fields.Item("Code")
  loc_155D801:     var_9C = CStr(var_98.Value)
  loc_155D80E:     Set var_B0 = var_B4(Cancel)
  loc_155D814:     Call 0.Method_Txt_Validate0 (var_9C)
  loc_155D81C:     var_B4.Tag = 
  loc_155D835:   Else
  loc_155D83F:     If Not (var_86 = CInt(&H17)) Then
  loc_155D84A:       If (var_86 = CInt(&H1B)) Then
  loc_155D84D:       End If
  loc_155D8A6:       Set var_94 = var_98(Cancel)
  loc_155D8AC:       Call 0.Method_Txt_Validate0 (var_9C)
  loc_155D8B4:       ((global_60.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_155D8CC:       If ( Or (var_9C = vbNullString)) Then
  loc_155D8DE:         Set var_94 = var_98(Cancel)
  loc_155D8E4:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_155D8EC:         var_98.Tag = 
  loc_155D8FA:         Exit Sub
  loc_155D8FB:       End If
  loc_155D93B:       Set var_B0 = var_B4(Cancel)
  loc_155D941:       Call 0.Method_Txt_Validate0 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_155D949:       var_B4.Text = 
  loc_155D981:       var_98 = Me.Recordset15.Fields.Item("Code")
  loc_155D992:       var_9C = CStr(var_98.Value)
  loc_155D99F:       Set var_B0 = var_B4(Cancel)
  loc_155D9A5:       Call 0.Method_Txt_Validate0 (var_9C)
  loc_155D9AD:       var_B4.Tag = 
  loc_155D9C6:     Else
  loc_155D9D0:       If (var_86 = CInt(&H38)) Then
  loc_155DA2C:         Set var_94 = var_98(Cancel)
  loc_155DA32:         Call 0.Method_Txt_Validate0 (var_9C)
  loc_155DA3A:         ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_155DA52:         If ( Or (var_9C = vbNullString)) Then
  loc_155DA64:           Set var_94 = var_98(Cancel)
  loc_155DA6A:           Call 0.Method_Txt_Validate0 (vbNullString)
  loc_155DA72:           var_98.Tag = 
  loc_155DA80:           Exit Sub
  loc_155DA81:         End If
  loc_155DAC1:         Set var_B0 = var_B4(Cancel)
  loc_155DAC7:         Call 0.Method_Txt_Validate0 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_155DACF:         var_B4.Text = 
  loc_155DB07:         var_98 = Me.Recordset15.Fields.Item("Code")
  loc_155DB18:         var_9C = CStr(var_98.Value)
  loc_155DB25:         Set var_B0 = var_B4(Cancel)
  loc_155DB2B:         Call 0.Method_Txt_Validate0 (var_9C)
  loc_155DB33:         var_B4.Tag = 
  loc_155DB4C:       Else
  loc_155DB56:         If (var_86 = CInt(&H11)) Then
  loc_155DBB2:           Set var_94 = var_98(Cancel)
  loc_155DBB8:           Call 0.Method_Txt_Validate0 (var_9C)
  loc_155DBC0:           ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_155DBD8:           If ( Or (var_9C = vbNullString)) Then
  loc_155DBEA:             Set var_94 = var_98(Cancel)
  loc_155DBF0:             Call 0.Method_Txt_Validate0 (vbNullString)
  loc_155DBF8:             var_98.Tag = 
  loc_155DC06:             Exit Sub
  loc_155DC07:           End If
  loc_155DC47:           Set var_B0 = var_B4(Cancel)
  loc_155DC4D:           Call 0.Method_Txt_Validate0 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_155DC55:           var_B4.Text = 
  loc_155DC8D:           var_98 = Me.Recordset15.Fields.Item("Code")
  loc_155DC9E:           var_9C = CStr(var_98.Value)
  loc_155DCAB:           Set var_B0 = var_B4(Cancel)
  loc_155DCB1:           Call 0.Method_Txt_Validate0 (var_9C)
  loc_155DCB9:           var_B4.Tag = 
  loc_155DCD2:         Else
  loc_155DCDC:           If (var_86 = CInt(&H49)) Then
  loc_155DD38:             Set var_94 = var_98(Cancel)
  loc_155DD3E:             Call 0.Method_Txt_Validate0 (var_9C)
  loc_155DD46:             ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_155DD5E:             If ( Or (var_9C = vbNullString)) Then
  loc_155DD70:               Set var_94 = var_98(Cancel)
  loc_155DD76:               Call 0.Method_Txt_Validate0 (vbNullString)
  loc_155DD7E:               var_98.Tag = 
  loc_155DD8C:               Exit Sub
  loc_155DD8D:             End If
  loc_155DDCD:             Set var_B0 = var_B4(Cancel)
  loc_155DDD3:             Call 0.Method_Txt_Validate0 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_155DDDB:             var_B4.Text = 
  loc_155DE13:             var_98 = Me.Recordset15.Fields.Item("Code")
  loc_155DE24:             var_9C = CStr(var_98.Value)
  loc_155DE31:             Set var_B0 = var_B4(Cancel)
  loc_155DE37:             Call 0.Method_Txt_Validate0 (var_9C)
  loc_155DE3F:             var_B4.Tag = 
  loc_155DE58:           Else
  loc_155DE62:             If (var_86 = CInt(&H5A)) Then
  loc_155DEBE:               Set var_94 = var_98(Cancel)
  loc_155DEC4:               Call 0.Method_Txt_Validate0 (var_9C)
  loc_155DECC:               ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_155DEE4:               If ( Or (var_9C = vbNullString)) Then
  loc_155DEF6:                 Set var_94 = var_98(Cancel)
  loc_155DEFC:                 Call 0.Method_Txt_Validate0 (vbNullString)
  loc_155DF04:                 var_98.Tag = 
  loc_155DF12:                 Exit Sub
  loc_155DF13:               End If
  loc_155DF53:               Set var_B0 = var_B4(Cancel)
  loc_155DF59:               Call 0.Method_Txt_Validate0 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_155DF61:               var_B4.Text = 
  loc_155DF99:               var_98 = Me.Recordset15.Fields.Item("Code")
  loc_155DFAA:               var_9C = CStr(var_98.Value)
  loc_155DFB7:               Set var_B0 = var_B4(Cancel)
  loc_155DFBD:               Call 0.Method_Txt_Validate0 (var_9C)
  loc_155DFC5:               var_B4.Tag = 
  loc_155DFDE:             Else
  loc_155DFE7:               If Not (var_86 = 136) Then
  loc_155DFF1:                 If (var_86 = 137) Then
  loc_155DFF4:                 End If
  loc_155E04D:                 Set var_94 = var_98(Cancel)
  loc_155E053:                 Call 0.Method_Txt_Validate0 (var_9C)
  loc_155E05B:                 ((global_68.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_155E073:                 If ( Or (var_9C = vbNullString)) Then
  loc_155E085:                   Set var_94 = var_98(Cancel)
  loc_155E08B:                   Call 0.Method_Txt_Validate0 (vbNullString)
  loc_155E093:                   var_98.Tag = 
  loc_155E0A1:                   Exit Sub
  loc_155E0A2:                 End If
  loc_155E0E2:                 Set var_B0 = var_B4(Cancel)
  loc_155E0E8:                 Call 0.Method_Txt_Validate0 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_155E0F0:                 var_B4.Text = 
  loc_155E128:                 var_98 = Me.Recordset15.Fields.Item("Code")
  loc_155E146:                 Set var_B0 = var_B4(Cancel)
  loc_155E14C:                 Call 0.Method_Txt_Validate0 (CStr(var_98.Value))
  loc_155E154:                 var_B4.Tag = 
  loc_155E16D:               Else
  loc_155E177:                 If Not (var_86 = CInt(&H28)) Then
  loc_155E182:                   If Not (var_86 = CInt(&H2F)) Then
  loc_155E18D:                     If Not (var_86 = CInt(&H30)) Then
  loc_155E198:                       If Not (var_86 = CInt(&H48)) Then
  loc_155E1A3:                         If Not (var_86 = CInt(&H7A)) Then
  loc_155E1AD:                           If Not (var_86 = 129) Then
  loc_155E1B9:                             If Not (var_86 = CInt(128)) Then
  loc_155E1C3:                               If Not (var_86 = 140) Then
  loc_155E1CD:                                 If Not (var_86 = 141) Then
  loc_155E1D9:                                   If Not (var_86 = CInt(142)) Then
  loc_155E1E5:                                     If Not (var_86 = CInt(143)) Then
  loc_155E1F1:                                       If Not (var_86 = CInt(144)) Then
  loc_155E1FB:                                         If Not (var_86 = 145) Then
  loc_155E205:                                           If Not (var_86 = 146) Then
  loc_155E211:                                             If Not (var_86 = CInt(147)) Then
  loc_155E21D:                                               If Not (var_86 = CInt(148)) Then
  loc_155E227:                                                 If Not (var_86 = 149) Then
  loc_155E231:                                                   If Not (var_86 = 150) Then
  loc_155E23B:                                                     If (var_86 = 151) Then
  loc_155E23E:                                                     End If
  loc_155E23E:                                                   End If
  loc_155E23E:                                                 End If
  loc_155E23E:                                               End If
  loc_155E23E:                                             End If
  loc_155E23E:                                           End If
  loc_155E23E:                                         End If
  loc_155E23E:                                       End If
  loc_155E23E:                                     End If
  loc_155E23E:                                   End If
  loc_155E23E:                                 End If
  loc_155E23E:                               End If
  loc_155E23E:                             End If
  loc_155E23E:                           End If
  loc_155E23E:                         End If
  loc_155E23E:                       End If
  loc_155E23E:                     End If
  loc_155E23E:                   End If
  loc_155E24A:                   Set var_94 = var_98(Cancel)
  loc_155E250:                   Call 0.Method_Txt_Validate0 ()
  loc_155E28B:                   If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_155E29D:                     Set var_94 = var_98(Cancel)
  loc_155E2A3:                     Call 0.Method_Txt_Validate0 ("Yes")
  loc_155E2AB:                     var_98.Text = 
  loc_155E2BA:                   Else
  loc_155E2CB:                     Set var_94 = var_98(Cancel)
  loc_155E2D1:                     Call 0.Method_Txt_Validate0 ("No")
  loc_155E2D9:                     var_98.Text = 
  loc_155E2E5:                   End If
  loc_155E2EA:                 Else
  loc_155E2F4:                   If Not (var_86 = CInt(&H56)) Then
  loc_155E2FF:                     If Not (var_86 = CInt(&H57)) Then
  loc_155E30A:                       If Not (var_86 = CInt(&H59)) Then
  loc_155E315:                         If Not (var_86 = CInt(&H75)) Then
  loc_155E320:                           If Not (var_86 = CInt(&H76)) Then
  loc_155E32B:                             If Not (var_86 = CInt(&H7B)) Then
  loc_155E336:                               If Not (var_86 = CInt(&H7F)) Then
  loc_155E342:                                 If Not (var_86 = CInt(132)) Then
  loc_155E34D:                                   If (var_86 = CInt(&H5B)) Then
  loc_155E350:                                   End If
  loc_155E350:                                 End If
  loc_155E350:                               End If
  loc_155E350:                             End If
  loc_155E350:                           End If
  loc_155E350:                         End If
  loc_155E350:                       End If
  loc_155E350:                     End If
  loc_155E35C:                     Set var_94 = var_98(Cancel)
  loc_155E362:                     Call 0.Method_Txt_Validate0 ()
  loc_155E39D:                     If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_155E3AF:                       Set var_94 = var_98(Cancel)
  loc_155E3B5:                       Call 0.Method_Txt_Validate0 ("Yes")
  loc_155E3BD:                       var_98.Text = 
  loc_155E3CC:                     Else
  loc_155E3DD:                       Set var_94 = var_98(Cancel)
  loc_155E3E3:                       Call 0.Method_Txt_Validate0 ("No")
  loc_155E3EB:                       var_98.Text = 
  loc_155E3F7:                     End If
  loc_155E3FC:                   Else
  loc_155E406:                     If Not (var_86 = CInt(&H2A)) Then
  loc_155E411:                       If Not (var_86 = CInt(&H32)) Then
  loc_155E41B:                         If (var_86 = 135) Then
  loc_155E41E:                         End If
  loc_155E41E:                       End If
  loc_155E42A:                       Set var_94 = var_98(Cancel)
  loc_155E430:                       Call 0.Method_Txt_Validate0 ()
  loc_155E46B:                       If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_155E47D:                         Set var_94 = var_98(Cancel)
  loc_155E483:                         Call 0.Method_Txt_Validate0 ("Yes")
  loc_155E48B:                         var_98.Text = 
  loc_155E49A:                       Else
  loc_155E4AB:                         Set var_94 = var_98(Cancel)
  loc_155E4B1:                         Call 0.Method_Txt_Validate0 ("No")
  loc_155E4B9:                         var_98.Text = 
  loc_155E4C5:                       End If
  loc_155E4C7:                     End If
  loc_155E4C7:                   End If
  loc_155E4C7:                 End If
  loc_155E4C7:               End If
  loc_155E4C7:             End If
  loc_155E4C7:           End If
  loc_155E4C7:         End If
  loc_155E4C7:       End If
  loc_155E4C7:     End If
  loc_155E4C7:   End If
  loc_155E4C7: End If
  loc_155E4CB: Exit Sub
End Sub

Private Sub DGPurchItem_UnknownEvent_9 'F78330
  'Data Table: 554C78
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F78207: var_86 = CInt(Val(CStr(Me.DGPurchItem.Tag)))
  loc_F7821C: Set var_8C = Me.DGPurchItem
  loc_F78222: var_8C.Visible = False
  loc_F78244: If (Me.var_8C.RecordCount > 0) Then
  loc_F78285:   Set var_CC = var_D0(var_86)
  loc_F7828B:   Call 0.Method_DGPurchItem_UnknownEvent_90 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_F78293:   var_D0.Text = var_86
  loc_F782C9:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F782E7:   Set var_CC = var_D0(var_86)
  loc_F782ED:   Call 0.Method_DGPurchItem_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F782F5:   var_D0.Tag = 
  loc_F7830B: End If
  loc_F78315: Set var_8C = var_C8(var_86)
  loc_F7831B: Call 0.Method_DGPurchItem_UnknownEvent_90 ()
  loc_F78323: var_C8.SetFocus
  loc_F7832F: Exit Sub
End Sub

Private Sub DGPurchItem_UnknownEvent_1F 'EAEC14
  'Data Table: 554C78
  loc_EAEBA6: Proc_6_153_E91194(Me.DGPurchItem, arg_14)
  loc_EAEBDA: Set var_A8 = arg_18(Val(CStr(Me.DGPurchItem.Tag)))
  loc_EAEBFA: Proc_6_138_106D6F8(Me.DGPurchItem, global_84)
  loc_EAEC10: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F7911C
  'Data Table: 554C78
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F78FF3: var_86 = CInt(Val(CStr(Me.DGTaxStru.Tag)))
  loc_F79008: Set var_8C = Me.DGTaxStru
  loc_F7900E: var_8C.Visible = False
  loc_F79030: If (Me.var_8C.RecordCount > 0) Then
  loc_F79071:   Set var_CC = var_D0(var_86)
  loc_F79077:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_F7907F:   var_D0.Text = var_86
  loc_F790B5:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F790D3:   Set var_CC = var_D0(var_86)
  loc_F790D9:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F790E1:   var_D0.Tag = 
  loc_F790F7: End If
  loc_F79101: Set var_8C = var_C8(var_86)
  loc_F79107: Call 0.Method_DGTaxStru_UnknownEvent_90 ()
  loc_F7910F: var_C8.SetFocus
  loc_F7911B: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'EAEB48
  'Data Table: 554C78
  loc_EAEADA: Proc_6_153_E91194(Me.DGTaxStru, arg_14)
  loc_EAEB0E: Set var_A8 = arg_18(Val(CStr(Me.DGTaxStru.Tag)))
  loc_EAEB2E: Proc_6_138_106D6F8(Me.DGTaxStru, global_72)
  loc_EAEB44: Exit Sub
  loc_EAEB45: Exit Sub
  loc_EAEB46: Assert
End Sub

Private Sub DGHelp_UnknownEvent_9 'F77D00
  'Data Table: 554C78
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F77BD7: var_86 = CInt(Val(CStr(Me.DGHelp.Tag)))
  loc_F77BEC: Set var_8C = Me.DGHelp
  loc_F77BF2: var_8C.Visible = False
  loc_F77C14: If (Me.var_8C.RecordCount > 0) Then
  loc_F77C55:   Set var_CC = var_D0(var_86)
  loc_F77C5B:   Call 0.Method_DGHelp_UnknownEvent_90 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_F77C63:   var_D0.Text = var_86
  loc_F77C99:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F77CB7:   Set var_CC = var_D0(var_86)
  loc_F77CBD:   Call 0.Method_DGHelp_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F77CC5:   var_D0.Tag = 
  loc_F77CDB: End If
  loc_F77CE5: Set var_8C = var_C8(var_86)
  loc_F77CEB: Call 0.Method_DGHelp_UnknownEvent_90 ()
  loc_F77CF3: var_C8.SetFocus
  loc_F77CFF: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EAEA7C
  'Data Table: 554C78
  loc_EAEA0E: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_EAEA42: Set var_A8 = arg_18(Val(CStr(Me.DGHelp.Tag)))
  loc_EAEA62: Proc_6_138_106D6F8(Me.DGHelp, global_52)
  loc_EAEA78: Exit Sub
End Sub

Public Sub Proc_56_50_103469C
  'Data Table: 554C78
  Dim var_90 As Variant
  Dim var_8C As Fields15
  Dim var_C0 As String
  Dim var_AC As TextBox
  Dim var_A8 As Fields15
  Dim var_E8 As Variant
  loc_1034471: Set var_8C = var_90(CInt(&H29))
  loc_1034477: Call 0.Method_Proc_56_50_103469C0 (0)
  loc_103447F: var_90.Enabled = 
  loc_103448B: On Error Goto loc_1034658
  loc_1034498: Proc_183_45_E5C118(global_76)
  loc_10344B7: If (Me.Recordset15.RecordCount <= 0) Then
  loc_10344C8:   Set var_8C = var_90(CInt(&H29))
  loc_10344CE:   Call 0.Method_Proc_56_50_103469C0 (vbNullString)
  loc_10344D6:   var_90.Text = 
  loc_10344E5: Else
  loc_1034516:   var_C0 = CStr(Me.Recordset15.Fields.Item("ModuleName").Value)
  loc_1034524:   Set var_A8 = var_AC(CInt(&H29))
  loc_103452A:   Call 0.Method_Proc_56_50_103469C0 (var_C0)
  loc_1034532:   var_AC.Text = 
  loc_103454F:   Set var_8C = (var_C2)
  loc_1034555:   Call 0.Method_Proc_56_50_103469C4 ()
  loc_1034567:   Set var_90 = var_86(var_C4)
  loc_103456D:   Call 0.Method_Proc_56_50_103469C8 (var_C2)
  loc_103457C:   For var_C8 =  To var_C4:    = var_C8 'Integer
  loc_103458F:     Set var_8C = var_90(var_86)
  loc_1034595:     Call 0.Method_Proc_56_50_103469C0 (var_C0)
  loc_103459D:      = var_90.Caption
  loc_10345D8:     var_E8 = CVar(Me.Recordset15.Fields.Item("RoundOffType")) 'Address
  loc_10345DF:     var_F8 = Trim(var_E8)
  loc_10345FD:     If (Trim(CVar(var_C0)) = var_F8) Then
  loc_103460C:       Set var_8C = var_90(var_86)
  loc_1034612:       Call 0.Method_Proc_56_50_103469C0 (&HFF)
  loc_103461A:       var_90.Value = 
  loc_1034629:     Else
  loc_1034635:       Set var_8C = var_90(var_86)
  loc_103463B:       Call 0.Method_Proc_56_50_103469C0 (0)
  loc_1034643:       var_90.Value = 
  loc_103464F:     End If
  loc_1034652:   Next var_C8 'Integer
  loc_1034657: End If
  loc_1034657: Exit Sub
  loc_1034658: ' Referenced from: 103448B
  loc_1034660: Set var_8C = Err()
  loc_1034666: Call 0.Method_arg_2C (var_C0)
  loc_1034687: MsgBox(CVar(var_C0), &H40, "Information", var_E8, var_F8)
  loc_103469A: Exit Sub
End Sub

Public Sub Proc_56_51_E99380(arg_C) 'E99380
  'Data Table: 554C78
  Dim var_98 As Variant
  loc_E9930A: Set var_8C = var_86(var_8E)
  loc_E99310: Call 0.Method_Proc_56_51_E993808 (CByte(0))
  loc_E9931D: For var_92 =  To CByte(var_8E):  = var_92 'Byte
  loc_E99333:   Set var_8C = var_98(CInt(var_86))
  loc_E99339:   Call 0.Method_Proc_56_51_E993800 (arg_C)
  loc_E99341:   var_98.Enabled = 
  loc_E99350: Next var_92 'Byte
  loc_E99364: Set var_8C = var_98(CInt(&H29))
  loc_E9936A: Call 0.Method_Proc_56_51_E993800 (arg_C)
  loc_E99372: var_98.Enabled = 
  loc_E9937E: Exit Sub
End Sub

Public Sub Proc_56_52_E77A4C
  'Data Table: 554C78
  Dim var_98 As TextBox
  Dim arg_FF As String
  loc_E779FA: Set var_8C = var_86(var_8E)
  loc_E77A00: Call 0.Method_Proc_56_52_E77A4CC (CByte(0))
  loc_E77A10: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_E77A26:   Set var_8C = var_98(CInt(var_86))
  loc_E77A2C:   Call 0.Method_Proc_56_52_E77A4C0 (vbNullString)
  loc_E77A34:   var_98.Text = 
  loc_E77A43: Next var_92 'Byte
  loc_E77A49: Exit Sub
  loc_E77A4A: arg_FF = 
End Sub

Public Sub Proc_56_53_1DE4914
  'Data Table: 554C78
  Dim var_98 As Variant
  Dim var_BC As Variant
  Dim var_132 As Integer
  Dim var_C0 As Variant
  Dim var_F4 As Variant
  Dim var_130 As String
  Dim var_12C As Variant
  Dim var_AC As Variant
  Dim var_138 As String
  Dim unk_554C7A As Connection15
  Dim var_88 As Recordset15
  Dim var_D4 As Variant
  Dim var_128 As Fields15
  Dim var_18C As Variant
  Dim var_1F4 As Variant
  Dim var_104 As Variant
  Dim var_17C As Variant
  Dim var_204 As Variant
  Dim var_15C As Variant
  loc_1DDBBE0: On Error Goto loc_1DD490B
  loc_1DDBBFD: Loop Until (Me.Recordset15.RecordCount > 0) 'do at: 1DD4905
  loc_1DDBC1D: var_AC = Me.Recordset15.Fields.Item("SmartCardItem")
  loc_1DDBC25: var_BC = CVar(var_AC) 'Address
  loc_1DDBC2E: var_132 = IsNull(var_BC)
  loc_1DDBC46: var_C0 = Me.Recordset15.Fields
  loc_1DDBC4E: var_D4 = var_C0.Item("SmartCardItem")
  loc_1DDBC77: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDBC87: Set var_128 = var_12C(CInt(139))
  loc_1DDBC8D: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDBC95: var_12C.Tag = var_132
  loc_1DDBCC4: Set var_98 = var_AC(CInt(139))
  loc_1DDBCCA: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDBCD2:  = var_AC.Tag
  loc_1DDBCE9: If (var_130 <> vbNullString) Then
  loc_1DDBD0B:   Set var_98 = var_AC(CInt(139))
  loc_1DDBD11:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From Itemmast Where Code='", var_BC)
  loc_1DDBD19:   -1 = var_AC.Tag
  loc_1DDBD32:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDBD3D:   Set var_88 = var_C0
  loc_1DDBD69:   If (var_88.RecordCount > 0) Then
  loc_1DDBD86:     var_AC = var_88.Fields.Item("Name")
  loc_1DDBDA6:     Set var_C0 = var_D4(CInt(139))
  loc_1DDBDAC:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDBDB4:     var_D4.Text = 
  loc_1DDBDCA:   End If
  loc_1DDBDCD: Else
  loc_1DDBDDC:   Set var_98 = var_AC(CInt(139))
  loc_1DDBDE2:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDBDEA:   var_AC.Text = 
  loc_1DDBDF6: End If
  loc_1DDBE13: var_AC = Me.Recordset15.Fields.Item("DefCompGroup")
  loc_1DDBE1B: var_BC = CVar(var_AC) 'Address
  loc_1DDBE24: var_132 = IsNull(var_BC)
  loc_1DDBE3C: var_C0 = Me.Recordset15.Fields
  loc_1DDBE44: var_D4 = var_C0.Item("DefCompGroup")
  loc_1DDBE6D: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDBE7C: Set var_128 = var_12C(CInt(&H11))
  loc_1DDBE82: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDBE8A: var_12C.Tag = var_132
  loc_1DDBEB8: Set var_98 = var_AC(CInt(&H11))
  loc_1DDBEBE: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDBEC6:  = var_AC.Tag
  loc_1DDBEDD: If (var_130 <> vbNullString) Then
  loc_1DDBEFE:   Set var_98 = var_AC(CInt(&H11))
  loc_1DDBF04:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select GroupName From Acgroup Where GroupCode='", var_BC)
  loc_1DDBF0C:   -1 = var_AC.Tag
  loc_1DDBF25:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDBF30:   Set var_88 = var_C0
  loc_1DDBF5C:   If (var_88.RecordCount > 0) Then
  loc_1DDBF79:     var_AC = var_88.Fields.Item("GroupName")
  loc_1DDBF98:     Set var_C0 = var_D4(CInt(&H11))
  loc_1DDBF9E:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDBFA6:     var_D4.Text = 
  loc_1DDBFBC:   End If
  loc_1DDBFBF: Else
  loc_1DDBFCD:   Set var_98 = var_AC(CInt(&H11))
  loc_1DDBFD3:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDBFDB:   var_AC.Text = 
  loc_1DDBFE7: End If
  loc_1DDC004: var_AC = Me.Recordset15.Fields.Item("PurchaseGodown")
  loc_1DDC00C: var_BC = CVar(var_AC) 'Address
  loc_1DDC015: var_132 = IsNull(var_BC)
  loc_1DDC02D: var_C0 = Me.Recordset15.Fields
  loc_1DDC035: var_D4 = var_C0.Item("PurchaseGodown")
  loc_1DDC05E: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDC06D: Set var_128 = var_12C(CInt(&H49))
  loc_1DDC073: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDC07B: var_12C.Tag = var_132
  loc_1DDC0A9: Set var_98 = var_AC(CInt(&H49))
  loc_1DDC0AF: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDC0B7:  = var_AC.Tag
  loc_1DDC0CE: If (var_130 <> vbNullString) Then
  loc_1DDC0EF:   Set var_98 = var_AC(CInt(&H49))
  loc_1DDC0F5:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From Godownmast Where Code='", var_BC)
  loc_1DDC0FD:   -1 = var_AC.Tag
  loc_1DDC116:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDC121:   Set var_88 = var_C0
  loc_1DDC14D:   If (var_88.RecordCount > 0) Then
  loc_1DDC16A:     var_AC = var_88.Fields.Item("Name")
  loc_1DDC189:     Set var_C0 = var_D4(CInt(&H49))
  loc_1DDC18F:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDC197:     var_D4.Text = 
  loc_1DDC1AD:   End If
  loc_1DDC1B0: Else
  loc_1DDC1BE:   Set var_98 = var_AC(CInt(&H49))
  loc_1DDC1C4:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDC1CC:   var_AC.Text = 
  loc_1DDC1D8: End If
  loc_1DDC1F5: var_AC = Me.Recordset15.Fields.Item("ExciseInvoiceTaxStru")
  loc_1DDC1FD: var_BC = CVar(var_AC) 'Address
  loc_1DDC206: var_132 = IsNull(var_BC)
  loc_1DDC21E: var_C0 = Me.Recordset15.Fields
  loc_1DDC226: var_D4 = var_C0.Item("ExciseInvoiceTaxStru")
  loc_1DDC24F: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDC25E: Set var_128 = var_12C(CInt(&H5A))
  loc_1DDC264: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDC26C: var_12C.Tag = var_132
  loc_1DDC29A: Set var_98 = var_AC(CInt(&H5A))
  loc_1DDC2A0: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDC2A8:  = var_AC.Tag
  loc_1DDC2BF: If (var_130 <> vbNullString) Then
  loc_1DDC2E0:   Set var_98 = var_AC(CInt(&H5A))
  loc_1DDC2E6:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select MAx(Name) As Name From TaxStru Where Code='", var_BC)
  loc_1DDC2EE:   -1 = var_AC.Tag
  loc_1DDC307:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDC312:   Set var_88 = var_C0
  loc_1DDC33E:   If (var_88.RecordCount > 0) Then
  loc_1DDC35B:     var_AC = var_88.Fields.Item("Name")
  loc_1DDC37A:     Set var_C0 = var_D4(CInt(&H5A))
  loc_1DDC380:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDC388:     var_D4.Text = 
  loc_1DDC39E:   End If
  loc_1DDC3A1: Else
  loc_1DDC3AF:   Set var_98 = var_AC(CInt(&H5A))
  loc_1DDC3B5:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDC3BD:   var_AC.Text = 
  loc_1DDC3C9: End If
  loc_1DDC3E6: var_AC = Me.Recordset15.Fields.Item("PurchaseTaxVAT")
  loc_1DDC3EE: var_BC = CVar(var_AC) 'Address
  loc_1DDC3F7: var_132 = IsNull(var_BC)
  loc_1DDC40F: var_C0 = Me.Recordset15.Fields
  loc_1DDC417: var_D4 = var_C0.Item("PurchaseTaxVAT")
  loc_1DDC440: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDC44E: Set var_128 = var_12C(136)
  loc_1DDC454: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDC45C: var_12C.Tag = var_132
  loc_1DDC489: Set var_98 = var_AC(136)
  loc_1DDC48F: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDC497:  = var_AC.Tag
  loc_1DDC4AE: If (var_130 <> vbNullString) Then
  loc_1DDC4CE:   Set var_98 = var_AC(136)
  loc_1DDC4D4:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select MAx(Name) As Name From RevMast Where FieldType='T' and Code='", var_BC)
  loc_1DDC4DC:   -1 = var_AC.Tag
  loc_1DDC4F5:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDC500:   Set var_88 = var_C0
  loc_1DDC52C:   If (var_88.RecordCount > 0) Then
  loc_1DDC549:     var_AC = var_88.Fields.Item("Name")
  loc_1DDC567:     Set var_C0 = var_D4(136)
  loc_1DDC56D:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDC575:     var_D4.Text = 
  loc_1DDC58B:   End If
  loc_1DDC58E: Else
  loc_1DDC59B:   Set var_98 = var_AC(136)
  loc_1DDC5A1:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDC5A9:   var_AC.Text = 
  loc_1DDC5B5: End If
  loc_1DDC5D2: var_AC = Me.Recordset15.Fields.Item("SaleTaxVAT")
  loc_1DDC5DA: var_BC = CVar(var_AC) 'Address
  loc_1DDC5E3: var_132 = IsNull(var_BC)
  loc_1DDC5FB: var_C0 = Me.Recordset15.Fields
  loc_1DDC603: var_D4 = var_C0.Item("SaleTaxVAT")
  loc_1DDC62C: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDC63A: Set var_128 = var_12C(137)
  loc_1DDC640: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDC648: var_12C.Tag = var_132
  loc_1DDC675: Set var_98 = var_AC(137)
  loc_1DDC67B: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDC683:  = var_AC.Tag
  loc_1DDC69A: If (var_130 <> vbNullString) Then
  loc_1DDC6BA:   Set var_98 = var_AC(137)
  loc_1DDC6C0:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select MAx(Name) As Name From RevMast Where FieldType='T' and Code='", var_BC)
  loc_1DDC6C8:   -1 = var_AC.Tag
  loc_1DDC6E1:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDC6EC:   Set var_88 = var_C0
  loc_1DDC718:   If (var_88.RecordCount > 0) Then
  loc_1DDC735:     var_AC = var_88.Fields.Item("Name")
  loc_1DDC753:     Set var_C0 = var_D4(137)
  loc_1DDC759:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDC761:     var_D4.Text = 
  loc_1DDC777:   End If
  loc_1DDC77A: Else
  loc_1DDC787:   Set var_98 = var_AC(137)
  loc_1DDC78D:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDC795:   var_AC.Text = 
  loc_1DDC7A1: End If
  loc_1DDC7CF: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("ArrDateTimeEdit")))
  loc_1DDC81F: var_12C = Me.Recordset15.Fields.Item("ArrDateTimeEdit")
  loc_1DDC87D: var_130 = CStr(IIf(var_132 Or (Me.Recordset15.Fields.Item("ArrDateTimeEdit").Value = "N") Or (var_12C.Value = vbNullString), "No", "Yes"))
  loc_1DDC88C: Set var_1F0 = var_1F4(CInt(&H10))
  loc_1DDC892: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDC89A: var_1F4.Text = var_132
  loc_1DDC8E3: var_AC = Me.Recordset15.Fields.Item("Loan_AC")
  loc_1DDC8EB: var_BC = CVar(var_AC) 'Address
  loc_1DDC8F4: var_132 = IsNull(var_BC)
  loc_1DDC90C: var_C0 = Me.Recordset15.Fields
  loc_1DDC914: var_D4 = var_C0.Item("Loan_AC")
  loc_1DDC93D: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDC94C: Set var_128 = var_12C(CInt(3))
  loc_1DDC952: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDC95A: var_12C.Tag = var_132
  loc_1DDC988: Set var_98 = var_AC(CInt(3))
  loc_1DDC98E: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDC996:  = var_AC.Tag
  loc_1DDC9AD: If (var_130 <> vbNullString) Then
  loc_1DDC9CE:   Set var_98 = var_AC(CInt(3))
  loc_1DDC9D4:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDC9DC:   -1 = var_AC.Tag
  loc_1DDC9F5:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDCA00:   Set var_88 = var_C0
  loc_1DDCA2C:   If (var_88.RecordCount > 0) Then
  loc_1DDCA49:     var_AC = var_88.Fields.Item("Name")
  loc_1DDCA68:     Set var_C0 = var_D4(CInt(3))
  loc_1DDCA6E:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDCA76:     var_D4.Text = 
  loc_1DDCA8C:   End If
  loc_1DDCA8F: Else
  loc_1DDCA9D:   Set var_98 = var_AC(CInt(3))
  loc_1DDCAA3:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDCAAB:   var_AC.Text = 
  loc_1DDCAB7: End If
  loc_1DDCAD4: var_AC = Me.Recordset15.Fields.Item("AdvanceAc")
  loc_1DDCADC: var_BC = CVar(var_AC) 'Address
  loc_1DDCAE5: var_132 = IsNull(var_BC)
  loc_1DDCAFD: var_C0 = Me.Recordset15.Fields
  loc_1DDCB05: var_D4 = var_C0.Item("AdvanceAc")
  loc_1DDCB2E: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDCB3D: Set var_128 = var_12C(CInt(4))
  loc_1DDCB43: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDCB4B: var_12C.Tag = var_132
  loc_1DDCB79: Set var_98 = var_AC(CInt(4))
  loc_1DDCB7F: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDCB87:  = var_AC.Tag
  loc_1DDCB9E: If (var_130 <> vbNullString) Then
  loc_1DDCBBF:   Set var_98 = var_AC(CInt(4))
  loc_1DDCBC5:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDCBCD:   -1 = var_AC.Tag
  loc_1DDCBE6:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDCBF1:   Set var_88 = var_C0
  loc_1DDCC1D:   If (var_88.RecordCount > 0) Then
  loc_1DDCC3A:     var_AC = var_88.Fields.Item("Name")
  loc_1DDCC59:     Set var_C0 = var_D4(CInt(4))
  loc_1DDCC5F:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDCC67:     var_D4.Text = 
  loc_1DDCC7D:   End If
  loc_1DDCC80: Else
  loc_1DDCC8E:   Set var_98 = var_AC(CInt(4))
  loc_1DDCC94:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDCC9C:   var_AC.Text = 
  loc_1DDCCA8: End If
  loc_1DDCCC5: var_AC = Me.Recordset15.Fields.Item("OutletDiscAc")
  loc_1DDCCCD: var_BC = CVar(var_AC) 'Address
  loc_1DDCCD6: var_132 = IsNull(var_BC)
  loc_1DDCCEE: var_C0 = Me.Recordset15.Fields
  loc_1DDCCF6: var_D4 = var_C0.Item("OutletDiscAc")
  loc_1DDCD1F: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDCD2E: Set var_128 = var_12C(CInt(&H18))
  loc_1DDCD34: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDCD3C: var_12C.Tag = var_132
  loc_1DDCD6A: Set var_98 = var_AC(CInt(&H18))
  loc_1DDCD70: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDCD78:  = var_AC.Tag
  loc_1DDCD8F: If (var_130 <> vbNullString) Then
  loc_1DDCDB0:   Set var_98 = var_AC(CInt(&H18))
  loc_1DDCDB6:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDCDBE:   -1 = var_AC.Tag
  loc_1DDCDD7:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDCDE2:   Set var_88 = var_C0
  loc_1DDCE0E:   If (var_88.RecordCount > 0) Then
  loc_1DDCE2B:     var_AC = var_88.Fields.Item("Name")
  loc_1DDCE4A:     Set var_C0 = var_D4(CInt(&H18))
  loc_1DDCE50:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDCE58:     var_D4.Text = 
  loc_1DDCE6E:   End If
  loc_1DDCE71: Else
  loc_1DDCE7F:   Set var_98 = var_AC(CInt(&H18))
  loc_1DDCE85:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDCE8D:   var_AC.Text = 
  loc_1DDCE99: End If
  loc_1DDCEB6: var_AC = Me.Recordset15.Fields.Item("OutletRoundAc")
  loc_1DDCEBE: var_BC = CVar(var_AC) 'Address
  loc_1DDCEC7: var_132 = IsNull(var_BC)
  loc_1DDCEDF: var_C0 = Me.Recordset15.Fields
  loc_1DDCEE7: var_D4 = var_C0.Item("OutletRoundAc")
  loc_1DDCF10: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDCF1F: Set var_128 = var_12C(CInt(&H19))
  loc_1DDCF25: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDCF2D: var_12C.Tag = var_132
  loc_1DDCF5B: Set var_98 = var_AC(CInt(&H19))
  loc_1DDCF61: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDCF69:  = var_AC.Tag
  loc_1DDCF80: If (var_130 <> vbNullString) Then
  loc_1DDCFA1:   Set var_98 = var_AC(CInt(&H19))
  loc_1DDCFA7:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDCFAF:   -1 = var_AC.Tag
  loc_1DDCFC8:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDCFD3:   Set var_88 = var_C0
  loc_1DDCFFF:   If (var_88.RecordCount > 0) Then
  loc_1DDD01C:     var_AC = var_88.Fields.Item("Name")
  loc_1DDD03B:     Set var_C0 = var_D4(CInt(&H19))
  loc_1DDD041:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDD049:     var_D4.Text = 
  loc_1DDD05F:   End If
  loc_1DDD062: Else
  loc_1DDD070:   Set var_98 = var_AC(CInt(&H19))
  loc_1DDD076:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDD07E:   var_AC.Text = 
  loc_1DDD08A: End If
  loc_1DDD0A7: var_AC = Me.Recordset15.Fields.Item("AdvanceRRoomRent")
  loc_1DDD0AF: var_BC = CVar(var_AC) 'Address
  loc_1DDD0B8: var_132 = IsNull(var_BC)
  loc_1DDD0D0: var_C0 = Me.Recordset15.Fields
  loc_1DDD0D8: var_D4 = var_C0.Item("AdvanceRRoomRent")
  loc_1DDD101: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDD110: Set var_128 = var_12C(CInt(&H37))
  loc_1DDD116: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDD11E: var_12C.Tag = var_132
  loc_1DDD14C: Set var_98 = var_AC(CInt(&H37))
  loc_1DDD152: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDD15A:  = var_AC.Tag
  loc_1DDD171: If (var_130 <> vbNullString) Then
  loc_1DDD192:   Set var_98 = var_AC(CInt(&H37))
  loc_1DDD198:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDD1A0:   -1 = var_AC.Tag
  loc_1DDD1B9:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDD1C4:   Set var_88 = var_C0
  loc_1DDD1F0:   If (var_88.RecordCount > 0) Then
  loc_1DDD20D:     var_AC = var_88.Fields.Item("Name")
  loc_1DDD22C:     Set var_C0 = var_D4(CInt(&H37))
  loc_1DDD232:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDD23A:     var_D4.Text = 
  loc_1DDD250:   End If
  loc_1DDD253: Else
  loc_1DDD261:   Set var_98 = var_AC(CInt(&H37))
  loc_1DDD267:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDD26F:   var_AC.Text = 
  loc_1DDD27B: End If
  loc_1DDD298: var_AC = Me.Recordset15.Fields.Item("OutDoorSaleAC")
  loc_1DDD2A0: var_BC = CVar(var_AC) 'Address
  loc_1DDD2A9: var_132 = IsNull(var_BC)
  loc_1DDD2C1: var_C0 = Me.Recordset15.Fields
  loc_1DDD2C9: var_D4 = var_C0.Item("OutDoorSaleAC")
  loc_1DDD2F2: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDD301: Set var_128 = var_12C(CInt(&H24))
  loc_1DDD307: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDD30F: var_12C.Tag = var_132
  loc_1DDD33D: Set var_98 = var_AC(CInt(&H19))
  loc_1DDD343: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDD34B:  = var_AC.Tag
  loc_1DDD362: If (var_130 <> vbNullString) Then
  loc_1DDD383:   Set var_98 = var_AC(CInt(&H24))
  loc_1DDD389:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDD391:   -1 = var_AC.Tag
  loc_1DDD3AA:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDD3B5:   Set var_88 = var_C0
  loc_1DDD3E1:   If (var_88.RecordCount > 0) Then
  loc_1DDD3FE:     var_AC = var_88.Fields.Item("Name")
  loc_1DDD41D:     Set var_C0 = var_D4(CInt(&H24))
  loc_1DDD423:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDD42B:     var_D4.Text = 
  loc_1DDD441:   End If
  loc_1DDD444: Else
  loc_1DDD452:   Set var_98 = var_AC(CInt(&H24))
  loc_1DDD458:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDD460:   var_AC.Text = 
  loc_1DDD46C: End If
  loc_1DDD489: var_AC = Me.Recordset15.Fields.Item("IndoorSaleAC")
  loc_1DDD491: var_BC = CVar(var_AC) 'Address
  loc_1DDD49A: var_132 = IsNull(var_BC)
  loc_1DDD4B2: var_C0 = Me.Recordset15.Fields
  loc_1DDD4BA: var_D4 = var_C0.Item("IndoorSaleAC")
  loc_1DDD4E3: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDD4F2: Set var_128 = var_12C(CInt(&H23))
  loc_1DDD4F8: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDD500: var_12C.Tag = var_132
  loc_1DDD52E: Set var_98 = var_AC(CInt(&H23))
  loc_1DDD534: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDD53C:  = var_AC.Tag
  loc_1DDD553: If (var_130 <> vbNullString) Then
  loc_1DDD574:   Set var_98 = var_AC(CInt(&H23))
  loc_1DDD57A:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDD582:   -1 = var_AC.Tag
  loc_1DDD59B:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDD5A6:   Set var_88 = var_C0
  loc_1DDD5D2:   If (var_88.RecordCount > 0) Then
  loc_1DDD5EF:     var_AC = var_88.Fields.Item("Name")
  loc_1DDD60E:     Set var_C0 = var_D4(CInt(&H23))
  loc_1DDD614:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDD61C:     var_D4.Text = 
  loc_1DDD632:   End If
  loc_1DDD635: Else
  loc_1DDD643:   Set var_98 = var_AC(CInt(&H23))
  loc_1DDD649:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDD651:   var_AC.Text = 
  loc_1DDD65D: End If
  loc_1DDD67A: var_AC = Me.Recordset15.Fields.Item("OutDoorPartyAC")
  loc_1DDD682: var_BC = CVar(var_AC) 'Address
  loc_1DDD68B: var_132 = IsNull(var_BC)
  loc_1DDD6A3: var_C0 = Me.Recordset15.Fields
  loc_1DDD6AB: var_D4 = var_C0.Item("OutDoorPartyAC")
  loc_1DDD6D4: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDD6E3: Set var_128 = var_12C(CInt(&H25))
  loc_1DDD6E9: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDD6F1: var_12C.Tag = var_132
  loc_1DDD71F: Set var_98 = var_AC(CInt(&H25))
  loc_1DDD725: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDD72D:  = var_AC.Tag
  loc_1DDD744: If (var_130 <> vbNullString) Then
  loc_1DDD765:   Set var_98 = var_AC(CInt(&H25))
  loc_1DDD76B:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDD773:   -1 = var_AC.Tag
  loc_1DDD78C:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDD797:   Set var_88 = var_C0
  loc_1DDD7C3:   If (var_88.RecordCount > 0) Then
  loc_1DDD7E0:     var_AC = var_88.Fields.Item("Name")
  loc_1DDD7FF:     Set var_C0 = var_D4(CInt(&H25))
  loc_1DDD805:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDD80D:     var_D4.Text = 
  loc_1DDD823:   End If
  loc_1DDD826: Else
  loc_1DDD834:   Set var_98 = var_AC(CInt(&H25))
  loc_1DDD83A:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDD842:   var_AC.Text = 
  loc_1DDD84E: End If
  loc_1DDD86B: var_AC = Me.Recordset15.Fields.Item("IndoorPartyAC")
  loc_1DDD873: var_BC = CVar(var_AC) 'Address
  loc_1DDD87C: var_132 = IsNull(var_BC)
  loc_1DDD894: var_C0 = Me.Recordset15.Fields
  loc_1DDD89C: var_D4 = var_C0.Item("IndoorPartyAC")
  loc_1DDD8C5: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDD8D4: Set var_128 = var_12C(CInt(&H26))
  loc_1DDD8DA: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDD8E2: var_12C.Tag = var_132
  loc_1DDD910: Set var_98 = var_AC(CInt(&H26))
  loc_1DDD916: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDD91E:  = var_AC.Tag
  loc_1DDD935: If (var_130 <> vbNullString) Then
  loc_1DDD956:   Set var_98 = var_AC(CInt(&H26))
  loc_1DDD95C:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDD964:   -1 = var_AC.Tag
  loc_1DDD97D:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDD988:   Set var_88 = var_C0
  loc_1DDD9B4:   If (var_88.RecordCount > 0) Then
  loc_1DDD9D1:     var_AC = var_88.Fields.Item("Name")
  loc_1DDD9F0:     Set var_C0 = var_D4(CInt(&H26))
  loc_1DDD9F6:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDD9FE:     var_D4.Text = 
  loc_1DDDA14:   End If
  loc_1DDDA17: Else
  loc_1DDDA25:   Set var_98 = var_AC(CInt(&H26))
  loc_1DDDA2B:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDDA33:   var_AC.Text = 
  loc_1DDDA3F: End If
  loc_1DDDA5C: var_AC = Me.Recordset15.Fields.Item("HallDiscAC")
  loc_1DDDA64: var_BC = CVar(var_AC) 'Address
  loc_1DDDA6D: var_132 = IsNull(var_BC)
  loc_1DDDA85: var_C0 = Me.Recordset15.Fields
  loc_1DDDA8D: var_D4 = var_C0.Item("HallDiscAC")
  loc_1DDDAB6: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDDAC5: Set var_128 = var_12C(CInt(&H22))
  loc_1DDDACB: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDDAD3: var_12C.Tag = var_132
  loc_1DDDB01: Set var_98 = var_AC(CInt(&H22))
  loc_1DDDB07: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDDB0F:  = var_AC.Tag
  loc_1DDDB26: If (var_130 <> vbNullString) Then
  loc_1DDDB47:   Set var_98 = var_AC(CInt(&H22))
  loc_1DDDB4D:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDDB55:   -1 = var_AC.Tag
  loc_1DDDB6E:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDDB79:   Set var_88 = var_C0
  loc_1DDDBA5:   If (var_88.RecordCount > 0) Then
  loc_1DDDBC2:     var_AC = var_88.Fields.Item("Name")
  loc_1DDDBE1:     Set var_C0 = var_D4(CInt(&H22))
  loc_1DDDBE7:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDDBEF:     var_D4.Text = 
  loc_1DDDC05:   End If
  loc_1DDDC08: Else
  loc_1DDDC16:   Set var_98 = var_AC(CInt(&H22))
  loc_1DDDC1C:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDDC24:   var_AC.Text = 
  loc_1DDDC30: End If
  loc_1DDDC4D: var_AC = Me.Recordset15.Fields.Item("HallRoundOff")
  loc_1DDDC55: var_BC = CVar(var_AC) 'Address
  loc_1DDDC5E: var_132 = IsNull(var_BC)
  loc_1DDDC76: var_C0 = Me.Recordset15.Fields
  loc_1DDDC7E: var_D4 = var_C0.Item("HallRoundOff")
  loc_1DDDCA7: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDDCB6: Set var_128 = var_12C(CInt(&H21))
  loc_1DDDCBC: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDDCC4: var_12C.Tag = var_132
  loc_1DDDCF2: Set var_98 = var_AC(CInt(&H21))
  loc_1DDDCF8: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDDD00:  = var_AC.Tag
  loc_1DDDD17: If (var_130 <> vbNullString) Then
  loc_1DDDD38:   Set var_98 = var_AC(CInt(&H21))
  loc_1DDDD3E:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDDD46:   -1 = var_AC.Tag
  loc_1DDDD5F:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDDD6A:   Set var_88 = var_C0
  loc_1DDDD96:   If (var_88.RecordCount > 0) Then
  loc_1DDDDB3:     var_AC = var_88.Fields.Item("Name")
  loc_1DDDDD2:     Set var_C0 = var_D4(CInt(&H21))
  loc_1DDDDD8:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDDDE0:     var_D4.Text = 
  loc_1DDDDF6:   End If
  loc_1DDDDF9: Else
  loc_1DDDE07:   Set var_98 = var_AC(CInt(&H21))
  loc_1DDDE0D:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDDE15:   var_AC.Text = 
  loc_1DDDE21: End If
  loc_1DDDE3E: var_AC = Me.Recordset15.Fields.Item("SALARY_AC")
  loc_1DDDE46: var_BC = CVar(var_AC) 'Address
  loc_1DDDE4F: var_132 = IsNull(var_BC)
  loc_1DDDE67: var_C0 = Me.Recordset15.Fields
  loc_1DDDE6F: var_D4 = var_C0.Item("SALARY_AC")
  loc_1DDDE98: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDDEA7: Set var_128 = var_12C(CInt(2))
  loc_1DDDEAD: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDDEB5: var_12C.Tag = var_132
  loc_1DDDEE3: Set var_98 = var_AC(CInt(2))
  loc_1DDDEE9: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDDEF1:  = var_AC.Tag
  loc_1DDDF08: If (var_130 <> vbNullString) Then
  loc_1DDDF29:   Set var_98 = var_AC(CInt(2))
  loc_1DDDF2F:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDDF37:   -1 = var_AC.Tag
  loc_1DDDF50:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDDF5B:   Set var_88 = var_C0
  loc_1DDDF87:   If (var_88.RecordCount > 0) Then
  loc_1DDDFA4:     var_AC = var_88.Fields.Item("Name")
  loc_1DDDFC3:     Set var_C0 = var_D4(CInt(2))
  loc_1DDDFC9:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDDFD1:     var_D4.Text = 
  loc_1DDDFE7:   End If
  loc_1DDDFEA: Else
  loc_1DDDFF8:   Set var_98 = var_AC(CInt(2))
  loc_1DDDFFE:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDE006:   var_AC.Text = 
  loc_1DDE012: End If
  loc_1DDE02F: var_AC = Me.Recordset15.Fields.Item("CancellationAC")
  loc_1DDE037: var_BC = CVar(var_AC) 'Address
  loc_1DDE040: var_132 = IsNull(var_BC)
  loc_1DDE058: var_C0 = Me.Recordset15.Fields
  loc_1DDE060: var_D4 = var_C0.Item("CancellationAC")
  loc_1DDE089: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDE098: Set var_128 = var_12C(CInt(&H1F))
  loc_1DDE09E: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDE0A6: var_12C.Tag = var_132
  loc_1DDE0D4: Set var_98 = var_AC(CInt(&H1F))
  loc_1DDE0DA: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDE0E2:  = var_AC.Tag
  loc_1DDE0F9: If (var_130 <> vbNullString) Then
  loc_1DDE11A:   Set var_98 = var_AC(CInt(&H1F))
  loc_1DDE120:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDE128:   -1 = var_AC.Tag
  loc_1DDE141:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDE14C:   Set var_88 = var_C0
  loc_1DDE178:   If (var_88.RecordCount > 0) Then
  loc_1DDE195:     var_AC = var_88.Fields.Item("Name")
  loc_1DDE1B4:     Set var_C0 = var_D4(CInt(&H1F))
  loc_1DDE1BA:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDE1C2:     var_D4.Text = 
  loc_1DDE1D8:   End If
  loc_1DDE1DB: Else
  loc_1DDE1E9:   Set var_98 = var_AC(CInt(&H1F))
  loc_1DDE1EF:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDE1F7:   var_AC.Text = 
  loc_1DDE203: End If
  loc_1DDE220: var_AC = Me.Recordset15.Fields.Item("CashPayType")
  loc_1DDE228: var_BC = CVar(var_AC) 'Address
  loc_1DDE231: var_132 = IsNull(var_BC)
  loc_1DDE249: var_C0 = Me.Recordset15.Fields
  loc_1DDE251: var_D4 = var_C0.Item("CashPayType")
  loc_1DDE27A: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDE289: Set var_128 = var_12C(CInt(&H17))
  loc_1DDE28F: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDE297: var_12C.Tag = var_132
  loc_1DDE2C5: Set var_98 = var_AC(CInt(&H17))
  loc_1DDE2CB: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDE2D3:  = var_AC.Tag
  loc_1DDE2EA: If (var_130 <> vbNullString) Then
  loc_1DDE30B:   Set var_98 = var_AC(CInt(&H17))
  loc_1DDE311:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From RevMAst Where Code='", var_BC)
  loc_1DDE319:   -1 = var_AC.Tag
  loc_1DDE332:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDE33D:   Set var_88 = var_C0
  loc_1DDE369:   If (var_88.RecordCount > 0) Then
  loc_1DDE386:     var_AC = var_88.Fields.Item("Name")
  loc_1DDE3A5:     Set var_C0 = var_D4(CInt(&H17))
  loc_1DDE3AB:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDE3B3:     var_D4.Text = 
  loc_1DDE3C9:   End If
  loc_1DDE3CC: Else
  loc_1DDE3DA:   Set var_98 = var_AC(CInt(&H17))
  loc_1DDE3E0:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDE3E8:   var_AC.Text = 
  loc_1DDE3F4: End If
  loc_1DDE411: var_AC = Me.Recordset15.Fields.Item("AmendRevenue")
  loc_1DDE419: var_BC = CVar(var_AC) 'Address
  loc_1DDE422: var_132 = IsNull(var_BC)
  loc_1DDE43A: var_C0 = Me.Recordset15.Fields
  loc_1DDE442: var_D4 = var_C0.Item("AmendRevenue")
  loc_1DDE46B: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDE47A: Set var_128 = var_12C(CInt(&H38))
  loc_1DDE480: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDE488: var_12C.Tag = var_132
  loc_1DDE4B6: Set var_98 = var_AC(CInt(&H17))
  loc_1DDE4BC: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDE4C4:  = var_AC.Tag
  loc_1DDE4DB: If (var_130 <> vbNullString) Then
  loc_1DDE4FC:   Set var_98 = var_AC(CInt(&H38))
  loc_1DDE502:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From RevMAst Where Code='", var_BC)
  loc_1DDE50A:   -1 = var_AC.Tag
  loc_1DDE523:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDE52E:   Set var_88 = var_C0
  loc_1DDE55A:   If (var_88.RecordCount > 0) Then
  loc_1DDE577:     var_AC = var_88.Fields.Item("Name")
  loc_1DDE596:     Set var_C0 = var_D4(CInt(&H38))
  loc_1DDE59C:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDE5A4:     var_D4.Text = 
  loc_1DDE5BA:   End If
  loc_1DDE5BD: Else
  loc_1DDE5CB:   Set var_98 = var_AC(CInt(&H38))
  loc_1DDE5D1:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDE5D9:   var_AC.Text = 
  loc_1DDE5E5: End If
  loc_1DDE602: var_AC = Me.Recordset15.Fields.Item("RoomPayType")
  loc_1DDE60A: var_BC = CVar(var_AC) 'Address
  loc_1DDE613: var_132 = IsNull(var_BC)
  loc_1DDE62B: var_C0 = Me.Recordset15.Fields
  loc_1DDE633: var_D4 = var_C0.Item("RoomPayType")
  loc_1DDE65C: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDE66B: Set var_128 = var_12C(CInt(&H1B))
  loc_1DDE671: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDE679: var_12C.Tag = var_132
  loc_1DDE6A7: Set var_98 = var_AC(CInt(&H1B))
  loc_1DDE6AD: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDE6B5:  = var_AC.Tag
  loc_1DDE6CC: If (var_130 <> vbNullString) Then
  loc_1DDE6ED:   Set var_98 = var_AC(CInt(&H1B))
  loc_1DDE6F3:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From RevMAst Where Code='", var_BC)
  loc_1DDE6FB:   -1 = var_AC.Tag
  loc_1DDE714:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDE71F:   Set var_88 = var_C0
  loc_1DDE74B:   If (var_88.RecordCount > 0) Then
  loc_1DDE768:     var_AC = var_88.Fields.Item("Name")
  loc_1DDE787:     Set var_C0 = var_D4(CInt(&H1B))
  loc_1DDE78D:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDE795:     var_D4.Text = 
  loc_1DDE7AB:   End If
  loc_1DDE7AE: Else
  loc_1DDE7BC:   Set var_98 = var_AC(CInt(&H1B))
  loc_1DDE7C2:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDE7CA:   var_AC.Text = 
  loc_1DDE7D6: End If
  loc_1DDE7F3: var_AC = Me.Recordset15.Fields.Item("RoomChrgDueAc")
  loc_1DDE7FB: var_BC = CVar(var_AC) 'Address
  loc_1DDE804: var_132 = IsNull(var_BC)
  loc_1DDE81C: var_C0 = Me.Recordset15.Fields
  loc_1DDE824: var_D4 = var_C0.Item("RoomChrgDueAc")
  loc_1DDE84D: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDE85C: Set var_128 = var_12C(CInt(&HB))
  loc_1DDE862: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDE86A: var_12C.Tag = var_132
  loc_1DDE898: Set var_98 = var_AC(CInt(&HB))
  loc_1DDE89E: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDE8A6:  = var_AC.Tag
  loc_1DDE8BD: If (var_130 <> vbNullString) Then
  loc_1DDE8DE:   Set var_98 = var_AC(CInt(&HB))
  loc_1DDE8E4:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDE8EC:   -1 = var_AC.Tag
  loc_1DDE905:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDE910:   Set var_88 = var_C0
  loc_1DDE93C:   If (var_88.RecordCount > 0) Then
  loc_1DDE959:     var_AC = var_88.Fields.Item("Name")
  loc_1DDE978:     Set var_C0 = var_D4(CInt(&HB))
  loc_1DDE97E:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDE986:     var_D4.Text = 
  loc_1DDE99C:   End If
  loc_1DDE99F: Else
  loc_1DDE9AD:   Set var_98 = var_AC(CInt(&HB))
  loc_1DDE9B3:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDE9BB:   var_AC.Text = 
  loc_1DDE9C7: End If
  loc_1DDE9E4: var_AC = Me.Recordset15.Fields.Item("DummyTravelAc")
  loc_1DDE9EC: var_BC = CVar(var_AC) 'Address
  loc_1DDE9F5: var_132 = IsNull(var_BC)
  loc_1DDEA0D: var_C0 = Me.Recordset15.Fields
  loc_1DDEA15: var_D4 = var_C0.Item("DummyTravelAc")
  loc_1DDEA3E: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDEA4D: Set var_128 = var_12C(CInt(&H2B))
  loc_1DDEA53: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDEA5B: var_12C.Tag = var_132
  loc_1DDEA89: Set var_98 = var_AC(CInt(&H2B))
  loc_1DDEA8F: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDEA97:  = var_AC.Tag
  loc_1DDEAAE: If (var_130 <> vbNullString) Then
  loc_1DDEACF:   Set var_98 = var_AC(CInt(&H2B))
  loc_1DDEAD5:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDEADD:   -1 = var_AC.Tag
  loc_1DDEAF6:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDEB01:   Set var_88 = var_C0
  loc_1DDEB2D:   If (var_88.RecordCount > 0) Then
  loc_1DDEB4A:     var_AC = var_88.Fields.Item("Name")
  loc_1DDEB69:     Set var_C0 = var_D4(CInt(&H2B))
  loc_1DDEB6F:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDEB77:     var_D4.Text = 
  loc_1DDEB8D:   End If
  loc_1DDEB90: Else
  loc_1DDEB9E:   Set var_98 = var_AC(CInt(&H2B))
  loc_1DDEBA4:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDEBAC:   var_AC.Text = 
  loc_1DDEBB8: End If
  loc_1DDEBD5: var_AC = Me.Recordset15.Fields.Item("BookingPartyAc")
  loc_1DDEBDD: var_BC = CVar(var_AC) 'Address
  loc_1DDEBE6: var_132 = IsNull(var_BC)
  loc_1DDEBFE: var_C0 = Me.Recordset15.Fields
  loc_1DDEC06: var_D4 = var_C0.Item("BookingPartyAc")
  loc_1DDEC2F: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDEC3E: Set var_128 = var_12C(CInt(&H2C))
  loc_1DDEC44: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDEC4C: var_12C.Tag = var_132
  loc_1DDEC7A: Set var_98 = var_AC(CInt(&H2C))
  loc_1DDEC80: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDEC88:  = var_AC.Tag
  loc_1DDEC9F: If (var_130 <> vbNullString) Then
  loc_1DDECC0:   Set var_98 = var_AC(CInt(&H2C))
  loc_1DDECC6:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDECCE:   -1 = var_AC.Tag
  loc_1DDECE7:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDECF2:   Set var_88 = var_C0
  loc_1DDED1E:   If (var_88.RecordCount > 0) Then
  loc_1DDED3B:     var_AC = var_88.Fields.Item("Name")
  loc_1DDED5A:     Set var_C0 = var_D4(CInt(&H2C))
  loc_1DDED60:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDED68:     var_D4.Text = 
  loc_1DDED7E:   End If
  loc_1DDED81: Else
  loc_1DDED8F:   Set var_98 = var_AC(CInt(&H2C))
  loc_1DDED95:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDED9D:   var_AC.Text = 
  loc_1DDEDA9: End If
  loc_1DDEDC6: var_AC = Me.Recordset15.Fields.Item("RoomTaxDueAc")
  loc_1DDEDCE: var_BC = CVar(var_AC) 'Address
  loc_1DDEDD7: var_132 = IsNull(var_BC)
  loc_1DDEDEF: var_C0 = Me.Recordset15.Fields
  loc_1DDEDF7: var_D4 = var_C0.Item("RoomTaxDueAc")
  loc_1DDEE20: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDEE2F: Set var_128 = var_12C(CInt(1))
  loc_1DDEE35: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDEE3D: var_12C.Tag = var_132
  loc_1DDEE6B: Set var_98 = var_AC(CInt(1))
  loc_1DDEE71: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDEE79:  = var_AC.Tag
  loc_1DDEE90: If (var_130 <> vbNullString) Then
  loc_1DDEEB1:   Set var_98 = var_AC(CInt(1))
  loc_1DDEEB7:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDEEBF:   -1 = var_AC.Tag
  loc_1DDEED8:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDEEE3:   Set var_88 = var_C0
  loc_1DDEF0F:   If (var_88.RecordCount > 0) Then
  loc_1DDEF2C:     var_AC = var_88.Fields.Item("Name")
  loc_1DDEF4B:     Set var_C0 = var_D4(CInt(1))
  loc_1DDEF51:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDEF59:     var_D4.Text = 
  loc_1DDEF6F:   End If
  loc_1DDEF72: Else
  loc_1DDEF80:   Set var_98 = var_AC(CInt(1))
  loc_1DDEF86:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDEF8E:   var_AC.Text = 
  loc_1DDEF9A: End If
  loc_1DDEFB7: var_AC = Me.Recordset15.Fields.Item("CommissionAc")
  loc_1DDEFBF: var_BC = CVar(var_AC) 'Address
  loc_1DDEFC8: var_132 = IsNull(var_BC)
  loc_1DDEFE0: var_C0 = Me.Recordset15.Fields
  loc_1DDEFE8: var_D4 = var_C0.Item("CommissionAc")
  loc_1DDF011: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDF020: Set var_128 = var_12C(CInt(&H1A))
  loc_1DDF026: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDF02E: var_12C.Tag = var_132
  loc_1DDF05C: Set var_98 = var_AC(CInt(&H1A))
  loc_1DDF062: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDF06A:  = var_AC.Tag
  loc_1DDF081: If (var_130 <> vbNullString) Then
  loc_1DDF0A2:   Set var_98 = var_AC(CInt(&H1A))
  loc_1DDF0A8:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where Subcode='", var_BC)
  loc_1DDF0B0:   -1 = var_AC.Tag
  loc_1DDF0C9:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDF0D4:   Set var_90 = var_C0
  loc_1DDF103:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1DDF123:     var_AC = Me.Recordset15.Fields.Item("Name")
  loc_1DDF142:     Set var_C0 = var_D4(CInt(&H1A))
  loc_1DDF148:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDF150:     var_D4.Text = 
  loc_1DDF166:   End If
  loc_1DDF169: Else
  loc_1DDF177:   Set var_98 = var_AC(CInt(&H1A))
  loc_1DDF17D:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDF185:   var_AC.Text = 
  loc_1DDF191: End If
  loc_1DDF1AE: var_AC = Me.Recordset15.Fields.Item("CashPurchAc")
  loc_1DDF1B6: var_BC = CVar(var_AC) 'Address
  loc_1DDF1BF: var_130 = Proc_6_38_E68A98(var_BC)
  loc_1DDF1CD: Set var_C0 = var_D4(CInt(&HC))
  loc_1DDF1D3: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDF1DB: var_D4.Tag = 
  loc_1DDF1FD: Set var_98 = var_AC(CInt(&HC))
  loc_1DDF203: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDF20B:  = var_AC.Tag
  loc_1DDF222: If (var_130 <> vbNullString) Then
  loc_1DDF243:   Set var_98 = var_AC(CInt(&HC))
  loc_1DDF249:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDF251:   -1 = var_AC.Tag
  loc_1DDF26A:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDF275:   Set var_88 = var_C0
  loc_1DDF2A1:   If (var_88.RecordCount > 0) Then
  loc_1DDF2BE:     var_AC = var_88.Fields.Item("Name")
  loc_1DDF2DD:     Set var_C0 = var_D4(CInt(&HC))
  loc_1DDF2E3:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDF2EB:     var_D4.Text = 
  loc_1DDF301:   End If
  loc_1DDF304: Else
  loc_1DDF312:   Set var_98 = var_AC(CInt(&HC))
  loc_1DDF318:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDF320:   var_AC.Text = 
  loc_1DDF32C: End If
  loc_1DDF349: var_AC = Me.Recordset15.Fields.Item("CashCardDebitAc")
  loc_1DDF351: var_BC = CVar(var_AC) 'Address
  loc_1DDF35A: var_132 = IsNull(var_BC)
  loc_1DDF372: var_C0 = Me.Recordset15.Fields
  loc_1DDF37A: var_D4 = var_C0.Item("CashCardDebitAc")
  loc_1DDF3A3: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDF3B2: Set var_128 = var_12C(CInt(&H44))
  loc_1DDF3B8: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDF3C0: var_12C.Tag = var_132
  loc_1DDF3EE: Set var_98 = var_AC(CInt(&H44))
  loc_1DDF3F4: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDF3FC:  = var_AC.Tag
  loc_1DDF413: If (var_130 <> vbNullString) Then
  loc_1DDF434:   Set var_98 = var_AC(CInt(&H44))
  loc_1DDF43A:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDF442:   -1 = var_AC.Tag
  loc_1DDF45B:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDF466:   Set var_88 = var_C0
  loc_1DDF492:   If (var_88.RecordCount > 0) Then
  loc_1DDF4AF:     var_AC = var_88.Fields.Item("Name")
  loc_1DDF4CE:     Set var_C0 = var_D4(CInt(&H44))
  loc_1DDF4D4:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDF4DC:     var_D4.Text = 
  loc_1DDF4F2:   End If
  loc_1DDF4F5: Else
  loc_1DDF503:   Set var_98 = var_AC(CInt(&H44))
  loc_1DDF509:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDF511:   var_AC.Text = 
  loc_1DDF51D: End If
  loc_1DDF53A: var_AC = Me.Recordset15.Fields.Item("CashCardCreditAc")
  loc_1DDF542: var_BC = CVar(var_AC) 'Address
  loc_1DDF54B: var_132 = IsNull(var_BC)
  loc_1DDF563: var_C0 = Me.Recordset15.Fields
  loc_1DDF56B: var_D4 = var_C0.Item("CashCardCreditAc")
  loc_1DDF594: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDF5A3: Set var_128 = var_12C(CInt(&H45))
  loc_1DDF5A9: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDF5B1: var_12C.Tag = var_132
  loc_1DDF5DF: Set var_98 = var_AC(CInt(&H45))
  loc_1DDF5E5: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDF5ED:  = var_AC.Tag
  loc_1DDF604: If (var_130 <> vbNullString) Then
  loc_1DDF625:   Set var_98 = var_AC(CInt(&H45))
  loc_1DDF62B:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDF633:   -1 = var_AC.Tag
  loc_1DDF64C:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDF657:   Set var_88 = var_C0
  loc_1DDF683:   If (var_88.RecordCount > 0) Then
  loc_1DDF6A0:     var_AC = var_88.Fields.Item("Name")
  loc_1DDF6BF:     Set var_C0 = var_D4(CInt(&H45))
  loc_1DDF6C5:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDF6CD:     var_D4.Text = 
  loc_1DDF6E3:   End If
  loc_1DDF6E6: Else
  loc_1DDF6F4:   Set var_98 = var_AC(CInt(&H45))
  loc_1DDF6FA:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDF702:   var_AC.Text = 
  loc_1DDF70E: End If
  loc_1DDF72B: var_AC = Me.Recordset15.Fields.Item("CashCardSecurityAc")
  loc_1DDF733: var_BC = CVar(var_AC) 'Address
  loc_1DDF73C: var_132 = IsNull(var_BC)
  loc_1DDF754: var_C0 = Me.Recordset15.Fields
  loc_1DDF75C: var_D4 = var_C0.Item("CashCardSecurityAc")
  loc_1DDF785: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDF794: Set var_128 = var_12C(CInt(&H46))
  loc_1DDF79A: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDF7A2: var_12C.Tag = var_132
  loc_1DDF7D0: Set var_98 = var_AC(CInt(&H46))
  loc_1DDF7D6: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DDF7DE:  = var_AC.Tag
  loc_1DDF7F5: If (var_130 <> vbNullString) Then
  loc_1DDF816:   Set var_98 = var_AC(CInt(&H46))
  loc_1DDF81C:   Call 0.Method_Proc_56_53_1DE49140 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDF824:   -1 = var_AC.Tag
  loc_1DDF83D:   unk_554C7A.Execute var_C0 & var_130 & "'", , 
  loc_1DDF848:   Set var_88 = var_C0
  loc_1DDF874:   If (var_88.RecordCount > 0) Then
  loc_1DDF891:     var_AC = var_88.Fields.Item("Name")
  loc_1DDF8B0:     Set var_C0 = var_D4(CInt(&H46))
  loc_1DDF8B6:     Call 0.Method_Proc_56_53_1DE49140 (CStr(var_AC.Value))
  loc_1DDF8BE:     var_D4.Text = 
  loc_1DDF8D4:   End If
  loc_1DDF8D7: Else
  loc_1DDF8E5:   Set var_98 = var_AC(CInt(&H46))
  loc_1DDF8EB:   Call 0.Method_Proc_56_53_1DE49140 (vbNullString)
  loc_1DDF8F3:   var_AC.Text = 
  loc_1DDF8FF: End If
  loc_1DDF93B: Set var_C0 = var_D4(CInt(&H14))
  loc_1DDF941: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Rate1"))))
  loc_1DDF949: var_D4.Text = 
  loc_1DDF999: Set var_C0 = var_D4(CInt(&H15))
  loc_1DDF99F: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Rate2"))))
  loc_1DDF9A7: var_D4.Text = 
  loc_1DDF9F7: Set var_C0 = var_D4(CInt(&H13))
  loc_1DDF9FD: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Rate3"))))
  loc_1DDFA05: var_D4.Text = 
  loc_1DDFA55: Set var_C0 = var_D4(CInt(&H12))
  loc_1DDFA5B: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Rate4"))))
  loc_1DDFA63: var_D4.Text = 
  loc_1DDFAB3: Set var_C0 = var_D4(CInt(&H16))
  loc_1DDFAB9: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Rate5"))))
  loc_1DDFAC1: var_D4.Text = 
  loc_1DDFB03: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("PF_LIMIT")))
  loc_1DDFB55: Set var_128 = var_12C(CInt(7))
  loc_1DDFB5B: Call 0.Method_Proc_56_53_1DE49140 (CStr(IIf(var_132, 0, CVar(Me.Recordset15.Fields.Item("PF_LIMIT")))))
  loc_1DDFB63: var_12C.Text = var_132
  loc_1DDFBB1: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("PF_EMPLOYEE")))
  loc_1DDFC03: Set var_128 = var_12C(CInt(8))
  loc_1DDFC09: Call 0.Method_Proc_56_53_1DE49140 (CStr(IIf(var_132, 0, CVar(Me.Recordset15.Fields.Item("PF_EMPLOYEE")))))
  loc_1DDFC11: var_12C.Text = var_132
  loc_1DDFC5F: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("PF_EMPLOYER")))
  loc_1DDFC7F: var_D4 = Me.Recordset15.Fields.Item("PF_EMPLOYER")
  loc_1DDFCB1: Set var_128 = var_12C(CInt(9))
  loc_1DDFCB7: Call 0.Method_Proc_56_53_1DE49140 (CStr(IIf(var_132, 0, CVar(var_D4))))
  loc_1DDFCBF: var_12C.Text = var_132
  loc_1DDFD1B: Set var_C0 = var_D4(CInt(&H30))
  loc_1DDFD21: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("AllowRoomSettlement"))))
  loc_1DDFD29: var_D4.Text = 
  loc_1DDFD6B: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("ESI_LIMIT")))
  loc_1DDFDBD: Set var_128 = var_12C(CInt(5))
  loc_1DDFDC3: Call 0.Method_Proc_56_53_1DE49140 (CStr(IIf(var_132, 0, CVar(Me.Recordset15.Fields.Item("ESI_LIMIT")))))
  loc_1DDFDCB: var_12C.Text = var_132
  loc_1DDFE19: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("esi_employee")))
  loc_1DDFE39: var_D4 = Me.Recordset15.Fields.Item("esi_employee")
  loc_1DDFE6B: Set var_128 = var_12C(CInt(6))
  loc_1DDFE71: Call 0.Method_Proc_56_53_1DE49140 (CStr(IIf(var_132, 0, CVar(var_D4))))
  loc_1DDFE79: var_12C.Text = var_132
  loc_1DDFED3: Set var_C0 = var_D4(&H1D)
  loc_1DDFED9: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Bill_Footer"))))
  loc_1DDFEE1: var_D4.Text = 
  loc_1DDFF31: Set var_C0 = var_D4(CInt(&H1E))
  loc_1DDFF37: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Bill_Header"))))
  loc_1DDFF3F: var_D4.Text = 
  loc_1DDFF8F: Set var_C0 = var_D4(CInt(&H42))
  loc_1DDFF95: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BookingSlipFooter1"))))
  loc_1DDFF9D: var_D4.Text = 
  loc_1DDFFED: Set var_C0 = var_D4(CInt(&H43))
  loc_1DDFFF3: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BookingSlipFooter2"))))
  loc_1DDFFFB: var_D4.Text = 
  loc_1DE00CF: var_17C = IsNull(Trim(CVar(Me.Recordset15.Fields.Item("variation")))) Or (Trim(CVar(Me.Recordset15.Fields.Item("variation"))) = vbNullString)
  loc_1DE00F5: Set var_1F0 = var_1F4(CInt(&HB))
  loc_1DE00FB: Call 0.Method_Proc_56_53_1DE49140 (CVar(CStr(IIf(var_17C, "00:00", Trim(CVar(Me.Recordset15.Fields.Item("variation")))))))
  loc_1DE0103: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_1DE0167: var_132 = IsNull(Trim(CVar(Me.var_1F4.Fields.Item("VariationBefore"))))
  loc_1DE01B8: var_12C = Me.Recordset15.Fields.Item("VariationBefore")
  loc_1DE0205: var_204 = CVar(CStr(IIf(var_132 Or (Trim(CVar(Me.Recordset15.Fields.Item("VariationBefore"))) = vbNullString), "00:00", Trim(CVar(var_12C))))) 'String
  loc_1DE0214: Set var_1F0 = var_1F4(CInt(&H3D))
  loc_1DE021A: Call 0.Method_Proc_56_53_1DE49140 (var_204, var_132)
  loc_1DE0222: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_1DE02CF: var_15C = IIf((Proc_6_38_E68A98(CVar(Me.var_1F4.Fields.Item("ItemRateInMRBasedOn"))) = vbNullString), "Purchase Rate", Trim(CVar(Me.Recordset15.Fields.Item("ItemRateInMRBasedOn"))))
  loc_1DE02E6: Set var_128 = var_12C(CInt(&H7D))
  loc_1DE02EC: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_15C))
  loc_1DE02F4: var_12C.Text = var_132
  loc_1DE039E: var_15C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ItemRateInPurchaseBillBasedOn"))) = vbNullString), "Purchase Rate", Trim(CVar(Me.Recordset15.Fields.Item("ItemRateInPurchaseBillBasedOn"))))
  loc_1DE03B5: Set var_128 = var_12C(CInt(&H7E))
  loc_1DE03BB: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_15C))
  loc_1DE03C3: var_12C.Text = 
  loc_1DE0439: var_D4 = Me.Recordset15.Fields.Item("KOTPrintEdited")
  loc_1DE0475: var_138 = CStr(IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("KOTPrintEdited"))) = vbNullString), "All Items", Trim(CVar(var_D4))))
  loc_1DE0483: Set var_128 = var_12C(130)
  loc_1DE0489: Call 0.Method_Proc_56_53_1DE49140 (var_138)
  loc_1DE0491: var_12C.Text = 
  loc_1DE04F5: Set var_C0 = var_D4(CInt(0))
  loc_1DE04FB: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CheckOut"))))
  loc_1DE0503: var_D4.Text = 
  loc_1DE0553: Set var_C0 = var_D4(CInt(&H1C))
  loc_1DE0559: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("calcMethod"))))
  loc_1DE0561: var_D4.Text = 
  loc_1DE05B1: Set var_C0 = var_D4(CInt(&H27))
  loc_1DE05B7: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("KOTPrinting"))))
  loc_1DE05BF: var_D4.Text = 
  loc_1DE0655: var_15C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TaxSummary"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("TaxSummary"))))
  loc_1DE066C: Set var_128 = var_12C(CInt(&H28))
  loc_1DE0672: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_15C))
  loc_1DE067A: var_12C.Text = 
  loc_1DE0724: var_15C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BillPrintingSummerised"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("BillPrintingSummerised"))))
  loc_1DE073B: Set var_128 = var_12C(CInt(&H48))
  loc_1DE0741: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_15C))
  loc_1DE0749: var_12C.Text = 
  loc_1DE07F3: var_15C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ReqCompWise"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("ReqCompWise"))))
  loc_1DE080A: Set var_128 = var_12C(CInt(&H56))
  loc_1DE0810: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_15C))
  loc_1DE0818: var_12C.Text = 
  loc_1DE08C2: var_15C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("AcFieldAlterable"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("AcFieldAlterable"))))
  loc_1DE08D9: Set var_128 = var_12C(CInt(&H57))
  loc_1DE08DF: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_15C))
  loc_1DE08E7: var_12C.Text = 
  loc_1DE0991: var_15C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ExpMfdDateInMR"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("ExpMfdDateInMR"))))
  loc_1DE09A8: Set var_128 = var_12C(CInt(&H59))
  loc_1DE09AE: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_15C))
  loc_1DE09B6: var_12C.Text = 
  loc_1DE0A60: var_15C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RateEditableInPO"))) = vbNullString), "Yes", Trim(CVar(Me.Recordset15.Fields.Item("RateEditableInPO"))))
  loc_1DE0A77: Set var_128 = var_12C(CInt(&H75))
  loc_1DE0A7D: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_15C))
  loc_1DE0A85: var_12C.Text = 
  loc_1DE0B2F: var_15C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RateEditableInStockIssue"))) = vbNullString), "Yes", Trim(CVar(Me.Recordset15.Fields.Item("RateEditableInStockIssue"))))
  loc_1DE0B46: Set var_128 = var_12C(CInt(&H76))
  loc_1DE0B4C: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_15C))
  loc_1DE0B54: var_12C.Text = 
  loc_1DE0BFE: var_15C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BarCodeFeatureInPurchase"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("BarCodeFeatureInPurchase"))))
  loc_1DE0C15: Set var_128 = var_12C(CInt(&H7B))
  loc_1DE0C1B: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_15C))
  loc_1DE0C23: var_12C.Text = 
  loc_1DE0CCD: var_15C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ReprintingOnSaleBillYN"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("ReprintingOnSaleBillYN"))))
  loc_1DE0CE4: Set var_128 = var_12C(CInt(&H7F))
  loc_1DE0CEA: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_15C))
  loc_1DE0CF2: var_12C.Text = 
  loc_1DE0D9C: var_15C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("HideSettledBillsOnSaleBillYN"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("HideSettledBillsOnSaleBillYN"))))
  loc_1DE0DB4: Set var_128 = var_12C(CInt(132))
  loc_1DE0DBA: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_15C))
  loc_1DE0DC2: var_12C.Text = 
  loc_1DE0E6C: var_15C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("AddModifyEntryInBackDate"))) = vbNullString), "Yes", Trim(CVar(Me.Recordset15.Fields.Item("AddModifyEntryInBackDate"))))
  loc_1DE0E83: Set var_128 = var_12C(CInt(&H5B))
  loc_1DE0E89: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_15C))
  loc_1DE0E91: var_12C.Text = 
  loc_1DE0F3B: var_15C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TokenPrint"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("TokenPrint"))))
  loc_1DE0F52: Set var_128 = var_12C(CInt(&H2A))
  loc_1DE0F58: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_15C))
  loc_1DE0F60: var_12C.Text = 
  loc_1DE0FD6: var_D4 = Me.Recordset15.Fields.Item("KOTOutletSelection")
  loc_1DE1012: var_138 = CStr(IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("KOTOutletSelection"))) = vbNullString), "Yes", Trim(CVar(var_D4))))
  loc_1DE1020: Set var_128 = var_12C(135)
  loc_1DE1026: Call 0.Method_Proc_56_53_1DE49140 (var_138)
  loc_1DE102E: var_12C.Text = 
  loc_1DE1073: var_AC = Me.Recordset15.Fields.Item("SplitYN")
  loc_1DE1092: Set var_C0 = var_D4(CInt(&H31))
  loc_1DE1098: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(var_AC)))
  loc_1DE10A0: var_D4.Text = 
  loc_1DE10BF: Set var_98 = var_AC(CInt(&H31))
  loc_1DE10C5: Call 0.Method_Proc_56_53_1DE49140 ()
  loc_1DE1110: (CBool(IIf((Left(CVar(var_AC), 1) = "Y"), True, False))).Visible = 
  loc_1DE1191: (CInt(IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("AutoSplitYN"))) = "Y"), 1, 0))).Value = 
  loc_1DE11ED: Set var_C0 = var_D4(CInt(&HD))
  loc_1DE11F3: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PostingType"))))
  loc_1DE11FB: var_D4.Text = 
  loc_1DE12A6: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomRentBefChkOut"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomRentBefChkOut"))))))
  loc_1DE12BD: Set var_128 = var_12C(CInt(&H3A))
  loc_1DE12C3: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE12CB: var_12C.Text = 
  loc_1DE138A: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomRentChkOutPost"))))) = vbNullString), "Semi", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomRentChkOutPost"))))))
  loc_1DE13A1: Set var_128 = var_12C(CInt(&H3B))
  loc_1DE13A7: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE13AF: var_12C.Text = 
  loc_1DE144C: var_F4 = "Room Category + Adult"
  loc_1DE146E: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PlanSelectionBasedOn"))))) = vbNullString), "Semi", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PlanSelectionBasedOn"))))))
  loc_1DE1484: Set var_128 = var_12C(138)
  loc_1DE148A: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE1492: var_12C.Text = 
  loc_1DE14E8: var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PlanCalc")))) 'String
  loc_1DE1510: var_D4 = Me.Recordset15.Fields.Item("PlanCalc")
  loc_1DE1568: Set var_128 = var_12C(CInt(&H3C))
  loc_1DE156E: Call 0.Method_Proc_56_53_1DE49140 (CStr(IIf((Trim(var_104) = vbNullString), "No", Trim(CVar(Proc_6_38_E68A98(CVar(var_D4)))))))
  loc_1DE1576: var_12C.Text = 
  loc_1DE15CA: Proc_6_39_E7C810(var_104)
  loc_1DE15E1: Set var_C0 = var_D4(CInt(&H3D))
  loc_1DE15E7: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_104))
  loc_1DE15EF: var_D4.Text = CVar(Me.Recordset15.Fields.Item("FOMBillCopies"))
  loc_1DE169E: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PrintRcpt"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PrintRcpt"))))))
  loc_1DE16B5: Set var_128 = var_12C(CInt(&H3E))
  loc_1DE16BB: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE16C3: var_12C.Text = 
  loc_1DE1782: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomCheckOutClearanceYN"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomCheckOutClearanceYN"))))))
  loc_1DE179A: Set var_128 = var_12C(CInt(131))
  loc_1DE17A0: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE17A8: var_12C.Text = 
  loc_1DE1867: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RcptPrinting"))))) = vbNullString), "W", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RcptPrinting"))))))
  loc_1DE187E: Set var_128 = var_12C(CInt(&H3F))
  loc_1DE1884: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE188C: var_12C.Text = 
  loc_1DE194B: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("POSBillAtNightAudit"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("POSBillAtNightAudit"))))))
  loc_1DE1962: Set var_128 = var_12C(CInt(&H40))
  loc_1DE1968: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE1970: var_12C.Text = 
  loc_1DE1A2F: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("KOTAtNightAudit"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("KOTAtNightAudit"))))))
  loc_1DE1A46: Set var_128 = var_12C(CInt(&H5C))
  loc_1DE1A4C: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE1A54: var_12C.Text = 
  loc_1DE1AD2: var_D4 = Me.Recordset15.Fields.Item("NoShowAtNightAudit")
  loc_1DE1B13: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("NoShowAtNightAudit"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E68A98(CVar(var_D4)))))
  loc_1DE1B2A: Set var_128 = var_12C(CInt(&H41))
  loc_1DE1B30: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE1B38: var_12C.Text = 
  loc_1DE1B7D: var_AC = Me.Recordset15.Fields.Item("BillAmendMode")
  loc_1DE1B8E: var_130 = Proc_6_38_E68A98(CVar(var_AC))
  loc_1DE1B9C: Set var_C0 = var_D4(CInt(&H39))
  loc_1DE1BA2: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DE1BAA: var_D4.Text = 
  loc_1DE1BCC: Set var_98 = var_AC(CInt(0))
  loc_1DE1BD2: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DE1BDA:  = var_AC.Text
  loc_1DE1BF1: If (var_130 <> "24 Hrs") Then
  loc_1DE1BFF:   Set var_98 = var_AC(CInt(1))
  loc_1DE1C05:   Call 0.Method_Proc_56_53_1DE49140 ()
  loc_1DE1C23:   If (CBool(var_AC.Visible) = 0) Then
  loc_1DE1C35:     Set var_98 = var_AC(CInt(1))
  loc_1DE1C3B:     Call 0.Method_Proc_56_53_1DE49140 (True)
  loc_1DE1C43:     var_AC.Visible = 
  loc_1DE1C4F:   End If
  loc_1DE1C4F: End If
  loc_1DE1CD9: var_12C = Me.Recordset15.Fields.Item("CheckoutVar")
  loc_1DE1D0F: var_17C = IsNull(Trim(CVar(Me.Recordset15.Fields.Item("CheckoutVar")))) Or (Trim(CVar(Me.Recordset15.Fields.Item("CheckoutVar"))) = vbNullString)
  loc_1DE1D35: Set var_1F0 = var_1F4(CInt(1))
  loc_1DE1D3B: Call 0.Method_Proc_56_53_1DE49140 (CVar(CStr(IIf(var_17C, "00:00", Trim(CVar(var_12C))))))
  loc_1DE1D43: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_1DE1D9C: var_132 = IsNull(CVar(Me.var_1F4.Fields.Item("OutDoorCatering")))
  loc_1DE1DF4: Set var_128 = var_12C(CInt(&HE))
  loc_1DE1DFA: Call 0.Method_Proc_56_53_1DE49140 (CStr(IIf(var_132, "No", CVar(Me.Recordset15.Fields.Item("OutDoorCatering")))), var_132)
  loc_1DE1E02: var_12C.Text = var_132
  loc_1DE1E50: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("CatalogLimit")))
  loc_1DE1E70: var_D4 = Me.Recordset15.Fields.Item("CatalogLimit")
  loc_1DE1EA8: Set var_128 = var_12C(CInt(&HF))
  loc_1DE1EAE: Call 0.Method_Proc_56_53_1DE49140 (CStr(IIf(var_132, "No", CVar(var_D4))))
  loc_1DE1EB6: var_12C.Text = var_132
  loc_1DE1F12: Set var_C0 = var_D4(CInt(&H2D))
  loc_1DE1F18: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomChrgPostingType"))))
  loc_1DE1F20: var_D4.Text = 
  loc_1DE1F70: Set var_C0 = var_D4(CInt(&H2E))
  loc_1DE1F76: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PlanMastType"))))
  loc_1DE1F7E: var_D4.Text = 
  loc_1DE2029: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("KitchenStockReport"))))) = vbNullString), "Standard", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("KitchenStockReport"))))))
  loc_1DE2040: Set var_128 = var_12C(CInt(&H7C))
  loc_1DE2046: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE204E: var_12C.Text = 
  loc_1DE210D: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PostComplimentaryBills"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PostComplimentaryBills"))))))
  loc_1DE2124: Set var_128 = var_12C(CInt(&H2F))
  loc_1DE212A: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE2132: var_12C.Text = 
  loc_1DE21F1: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PostRoomDiscSeparately"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PostRoomDiscSeparately"))))))
  loc_1DE2208: Set var_128 = var_12C(CInt(&H7A))
  loc_1DE220E: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE2216: var_12C.Text = 
  loc_1DE22D5: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("POSSaleRevenueBifercation"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("POSSaleRevenueBifercation"))))))
  loc_1DE22EB: Set var_128 = var_12C(129)
  loc_1DE22F1: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE22F9: var_12C.Text = 
  loc_1DE23B8: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PostPOSDiscSeparately"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PostPOSDiscSeparately"))))))
  loc_1DE23D0: Set var_128 = var_12C(CInt(128))
  loc_1DE23D6: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE23DE: var_12C.Text = 
  loc_1DE249D: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CoversMandatory"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CoversMandatory"))))))
  loc_1DE24B3: Set var_128 = var_12C(140)
  loc_1DE24B9: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE24C1: var_12C.Text = 
  loc_1DE2580: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("MobileNoMandatory"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("MobileNoMandatory"))))))
  loc_1DE2596: Set var_128 = var_12C(141)
  loc_1DE259C: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE25A4: var_12C.Text = 
  loc_1DE2663: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RRIncTaxDefault"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RRIncTaxDefault"))))))
  loc_1DE267B: Set var_128 = var_12C(CInt(142))
  loc_1DE2681: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE2689: var_12C.Text = 
  loc_1DE2748: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RRSerChrgDefault"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RRSerChrgDefault"))))))
  loc_1DE2760: Set var_128 = var_12C(CInt(143))
  loc_1DE2766: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE276E: var_12C.Text = 
  loc_1DE282D: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ShowTitleBar"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ShowTitleBar"))))))
  loc_1DE2845: Set var_128 = var_12C(CInt(144))
  loc_1DE284B: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE2853: var_12C.Text = 
  loc_1DE2912: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ShowMenuBar"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ShowMenuBar"))))))
  loc_1DE2928: Set var_128 = var_12C(145)
  loc_1DE292E: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE2936: var_12C.Text = 
  loc_1DE29F5: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ShowSubMenuBar"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ShowSubMenuBar"))))))
  loc_1DE2A0B: Set var_128 = var_12C(146)
  loc_1DE2A11: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE2A19: var_12C.Text = 
  loc_1DE2AD8: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ShowShortCutsBar"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ShowShortCutsBar"))))))
  loc_1DE2AF0: Set var_128 = var_12C(CInt(147))
  loc_1DE2AF6: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE2AFE: var_12C.Text = 
  loc_1DE2BBD: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ServiceTaxOnServiceChargeYN"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ServiceTaxOnServiceChargeYN"))))))
  loc_1DE2BD5: Set var_128 = var_12C(CInt(148))
  loc_1DE2BDB: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE2BE3: var_12C.Text = 
  loc_1DE2C98: var_19C = (Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("SeperateReservationLetterAsPerStatusYN"))))) = vbNullString) 'Variant
  loc_1DE2CAA: var_130 = CStr(IIf(var_19C, "No", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("SeperateReservationLetterAsPerStatusYN")))))))
  loc_1DE2CB8: Set var_128 = var_12C(149)
  loc_1DE2CBE: Call 0.Method_Proc_56_53_1DE49140 (var_130)
  loc_1DE2CC6: var_12C.Text = 
  loc_1DE2D85: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ReservationExpandOnSaveYN"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ReservationExpandOnSaveYN"))))))
  loc_1DE2D9B: Set var_128 = var_12C(150)
  loc_1DE2DA1: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE2DA9: var_12C.Text = 
  loc_1DE2E27: var_D4 = Me.Recordset15.Fields.Item("BlockInvalidTarrifIncTaxYN")
  loc_1DE2E68: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BlockInvalidTarrifIncTaxYN"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E68A98(CVar(var_D4)))))
  loc_1DE2E7E: Set var_128 = var_12C(151)
  loc_1DE2E84: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE2E8C: var_12C.Text = 
  loc_1DE2EF0: Set var_C0 = var_D4(CInt(&H32))
  loc_1DE2EF6: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("SmartPurchaseOrder"))))
  loc_1DE2EFE: var_D4.Text = 
  loc_1DE2FA9: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("OrderBookingPrintType"))))) = vbNullString), "D", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("OrderBookingPrintType"))))))
  loc_1DE2FC0: Set var_128 = var_12C(CInt(&H47))
  loc_1DE2FC6: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE2FCE: var_12C.Text = 
  loc_1DE308D: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RptCashierSettlementAllUser"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RptCashierSettlementAllUser"))))))
  loc_1DE30A4: Set var_128 = var_12C(CInt(&H4A))
  loc_1DE30AA: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE30B2: var_12C.Text = 
  loc_1DE3171: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("POSSaleBillEditLog"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("POSSaleBillEditLog"))))))
  loc_1DE3188: Set var_128 = var_12C(CInt(&H55))
  loc_1DE318E: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE3196: var_12C.Text = 
  loc_1DE3255: var_1DC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("GuestChargesDeleteLog"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("GuestChargesDeleteLog"))))))
  loc_1DE326B: Set var_128 = var_12C(134)
  loc_1DE3271: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1DC))
  loc_1DE3279: var_12C.Text = 
  loc_1DE32CF: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("GRCMandatory")))
  loc_1DE3367: var_18C = var_132 Or (Me.Recordset15.Fields.Item("GRCMandatory").Value = "N") Or (Me.Recordset15.Fields.Item("GRCMandatory").Value = vbNullString)
  loc_1DE338C: Set var_1F0 = var_1F4(CInt(&H4B))
  loc_1DE3392: Call 0.Method_Proc_56_53_1DE49140 (CStr(IIf(var_18C, "No", "Yes")))
  loc_1DE339A: var_1F4.Text = var_132
  loc_1DE33F4: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("RoomRateEditable")))
  loc_1DE348C: var_18C = var_132 Or (Me.Recordset15.Fields.Item("RoomRateEditable").Value = "Y") Or (Me.Recordset15.Fields.Item("RoomRateEditable").Value = vbNullString)
  loc_1DE34B1: Set var_1F0 = var_1F4(CInt(&H77))
  loc_1DE34B7: Call 0.Method_Proc_56_53_1DE49140 (CStr(IIf(var_18C, "Yes", "No")))
  loc_1DE34BF: var_1F4.Text = var_132
  loc_1DE3519: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("RoomIncTaxEditable")))
  loc_1DE35B1: var_18C = var_132 Or (Me.Recordset15.Fields.Item("RoomIncTaxEditable").Value = "Y") Or (Me.Recordset15.Fields.Item("RoomIncTaxEditable").Value = vbNullString)
  loc_1DE35D6: Set var_1F0 = var_1F4(CInt(&H78))
  loc_1DE35DC: Call 0.Method_Proc_56_53_1DE49140 (CStr(IIf(var_18C, "Yes", "No")))
  loc_1DE35E4: var_1F4.Text = var_132
  loc_1DE363E: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("RoomServiceChargeEditable")))
  loc_1DE36D6: var_18C = var_132 Or (Me.Recordset15.Fields.Item("RoomServiceChargeEditable").Value = "Y") Or (Me.Recordset15.Fields.Item("RoomServiceChargeEditable").Value = vbNullString)
  loc_1DE36FB: Set var_1F0 = var_1F4(CInt(&H79))
  loc_1DE3701: Call 0.Method_Proc_56_53_1DE49140 (CStr(IIf(var_18C, "Yes", "No")))
  loc_1DE3709: var_1F4.Text = var_132
  loc_1DE3763: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("CreditCardInfoMandatory")))
  loc_1DE37B3: var_12C = Me.Recordset15.Fields.Item("GRCMandatory")
  loc_1DE3809: var_1EC = IIf(var_132 Or (Me.Recordset15.Fields.Item("CreditCardInfoMandatory").Value = "Y") Or (var_12C.Value = vbNullString), "Yes", "No")
  loc_1DE3820: Set var_1F0 = var_1F4(CInt(&H58))
  loc_1DE3826: Call 0.Method_Proc_56_53_1DE49140 (CStr(var_1EC))
  loc_1DE382E: var_1F4.Text = var_132
  loc_1DE3888: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("NCKOTPercentage")))
  loc_1DE38A8: var_D4 = Me.Recordset15.Fields.Item("NCKOTPercentage")
  loc_1DE38DA: Set var_128 = var_12C(CInt(&H4C))
  loc_1DE38E0: Call 0.Method_Proc_56_53_1DE49140 (CStr(IIf(var_132, 100, CVar(var_D4))))
  loc_1DE38E8: var_12C.Text = var_132
  loc_1DE3944: Set var_C0 = var_D4(CInt(&H4D))
  loc_1DE394A: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("KOTHeader1"))))
  loc_1DE3952: var_D4.Text = 
  loc_1DE39A2: Set var_C0 = var_D4(CInt(&H4E))
  loc_1DE39A8: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("KOTHeader2"))))
  loc_1DE39B0: var_D4.Text = 
  loc_1DE3A00: Set var_C0 = var_D4(CInt(&H4F))
  loc_1DE3A06: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("KOTHeader3"))))
  loc_1DE3A0E: var_D4.Text = 
  loc_1DE3A5E: Set var_C0 = var_D4(CInt(&H50))
  loc_1DE3A64: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("KOTHeader4"))))
  loc_1DE3A6C: var_D4.Text = 
  loc_1DE3AAE: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("GAppCompYear")))
  loc_1DE3B00: Set var_128 = var_12C(CInt(&H51))
  loc_1DE3B06: Call 0.Method_Proc_56_53_1DE49140 (CStr(IIf(var_132, 0, CVar(Me.Recordset15.Fields.Item("GAppCompYear")))))
  loc_1DE3B0E: var_12C.Text = var_132
  loc_1DE3B5C: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("GMonthConsidered")))
  loc_1DE3BAE: Set var_128 = var_12C(CInt(&H52))
  loc_1DE3BB4: Call 0.Method_Proc_56_53_1DE49140 (CStr(IIf(var_132, 0, CVar(Me.Recordset15.Fields.Item("GMonthConsidered")))))
  loc_1DE3BBC: var_12C.Text = var_132
  loc_1DE3C0A: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("GWorkingDaysInAMonth")))
  loc_1DE3C5C: Set var_128 = var_12C(CInt(&H53))
  loc_1DE3C62: Call 0.Method_Proc_56_53_1DE49140 (CStr(IIf(var_132, 0, CVar(Me.Recordset15.Fields.Item("GWorkingDaysInAMonth")))))
  loc_1DE3C6A: var_12C.Text = var_132
  loc_1DE3CB8: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("GDaysSalary")))
  loc_1DE3CD8: var_D4 = Me.Recordset15.Fields.Item("GDaysSalary")
  loc_1DE3D0A: Set var_128 = var_12C(CInt(&H54))
  loc_1DE3D10: Call 0.Method_Proc_56_53_1DE49140 (CStr(IIf(var_132, 0, CVar(var_D4))))
  loc_1DE3D18: var_12C.Text = var_132
  loc_1DE3D74: Set var_C0 = var_D4(CInt(&H5D))
  loc_1DE3D7A: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ResInstruction1"))))
  loc_1DE3D82: var_D4.Text = 
  loc_1DE3DD2: Set var_C0 = var_D4(CInt(&H5E))
  loc_1DE3DD8: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ResInstruction2"))))
  loc_1DE3DE0: var_D4.Text = 
  loc_1DE3E30: Set var_C0 = var_D4(CInt(&H5F))
  loc_1DE3E36: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ResInstruction3"))))
  loc_1DE3E3E: var_D4.Text = 
  loc_1DE3E8E: Set var_C0 = var_D4(CInt(&H60))
  loc_1DE3E94: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ResInstruction4"))))
  loc_1DE3E9C: var_D4.Text = 
  loc_1DE3EEC: Set var_C0 = var_D4(CInt(&H61))
  loc_1DE3EF2: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ResInstruction5"))))
  loc_1DE3EFA: var_D4.Text = 
  loc_1DE3F4A: Set var_C0 = var_D4(CInt(&H62))
  loc_1DE3F50: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ResInstruction6"))))
  loc_1DE3F58: var_D4.Text = 
  loc_1DE3FA8: Set var_C0 = var_D4(CInt(&H63))
  loc_1DE3FAE: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ResInstruction7"))))
  loc_1DE3FB6: var_D4.Text = 
  loc_1DE4006: Set var_C0 = var_D4(CInt(&H64))
  loc_1DE400C: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ResInstruction8"))))
  loc_1DE4014: var_D4.Text = 
  loc_1DE4064: Set var_C0 = var_D4(CInt(&H65))
  loc_1DE406A: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ResInstruction9"))))
  loc_1DE4072: var_D4.Text = 
  loc_1DE40C2: Set var_C0 = var_D4(CInt(&H66))
  loc_1DE40C8: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ResInstruction10"))))
  loc_1DE40D0: var_D4.Text = 
  loc_1DE4120: Set var_C0 = var_D4(CInt(&H67))
  loc_1DE4126: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ResInstruction11"))))
  loc_1DE412E: var_D4.Text = 
  loc_1DE417E: Set var_C0 = var_D4(CInt(&H68))
  loc_1DE4184: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ResInstruction12"))))
  loc_1DE418C: var_D4.Text = 
  loc_1DE41DC: Set var_C0 = var_D4(CInt(&H69))
  loc_1DE41E2: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("FPInstruction1"))))
  loc_1DE41EA: var_D4.Text = 
  loc_1DE423A: Set var_C0 = var_D4(CInt(&H6A))
  loc_1DE4240: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("FPInstruction2"))))
  loc_1DE4248: var_D4.Text = 
  loc_1DE4298: Set var_C0 = var_D4(CInt(&H6B))
  loc_1DE429E: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("FPInstruction3"))))
  loc_1DE42A6: var_D4.Text = 
  loc_1DE42F6: Set var_C0 = var_D4(CInt(&H6C))
  loc_1DE42FC: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("FPInstruction4"))))
  loc_1DE4304: var_D4.Text = 
  loc_1DE4354: Set var_C0 = var_D4(CInt(&H6D))
  loc_1DE435A: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("FPInstruction5"))))
  loc_1DE4362: var_D4.Text = 
  loc_1DE43B2: Set var_C0 = var_D4(CInt(&H6E))
  loc_1DE43B8: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("FPInstruction6"))))
  loc_1DE43C0: var_D4.Text = 
  loc_1DE4410: Set var_C0 = var_D4(CInt(&H6F))
  loc_1DE4416: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("FPInstruction7"))))
  loc_1DE441E: var_D4.Text = 
  loc_1DE446E: Set var_C0 = var_D4(CInt(&H70))
  loc_1DE4474: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("FPInstruction8"))))
  loc_1DE447C: var_D4.Text = 
  loc_1DE44CC: Set var_C0 = var_D4(CInt(&H71))
  loc_1DE44D2: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("FPInstruction9"))))
  loc_1DE44DA: var_D4.Text = 
  loc_1DE452A: Set var_C0 = var_D4(CInt(&H72))
  loc_1DE4530: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("FPInstruction10"))))
  loc_1DE4538: var_D4.Text = 
  loc_1DE4588: Set var_C0 = var_D4(CInt(&H73))
  loc_1DE458E: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("FPInstruction11"))))
  loc_1DE4596: var_D4.Text = 
  loc_1DE45E6: Set var_C0 = var_D4(CInt(&H74))
  loc_1DE45EC: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("FPInstruction12"))))
  loc_1DE45F4: var_D4.Text = 
  loc_1DE4645: Set var_C0 = var_D4(CInt(133))
  loc_1DE464B: Call 0.Method_Proc_56_53_1DE49140 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PlanTariffNarration"))))
  loc_1DE4653: var_D4.Text = 
  loc_1DE46A6: Loop Until (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ESIBasic"))) = "Y") 'do at: 1DD46C0
  loc_1DE46B5: (1).Value = 
  loc_1DE46BD: GoTo loc_1DD46D4
  loc_1DE46CC: (0).Value = 
  loc_1DE4713: Loop Until (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ESIDA"))) = "Y") 'do at: 1DD472D
  loc_1DE4722: (1).Value = 
  loc_1DE472A: GoTo loc_1DD4741
  loc_1DE4739: (0).Value = 
  loc_1DE4780: Loop Until (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ESIHRA"))) = "Y") 'do at: 1DD479A
  loc_1DE478F: (1).Value = 
  loc_1DE4797: GoTo loc_1DD47AE
  loc_1DE47A6: (0).Value = 
  loc_1DE47ED: Loop Until (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ESIConvey"))) = "Y") 'do at: 1DD4807
  loc_1DE47FC: (1).Value = 
  loc_1DE4804: GoTo loc_1DD481B
  loc_1DE4813: (0).Value = 
  loc_1DE485A: Loop Until (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ESIOther"))) = "Y") 'do at: 1DD4874
  loc_1DE4869: (1).Value = 
  loc_1DE4871: GoTo loc_1DD4888
  loc_1DE4880: (0).Value = 
  loc_1DE48C7: Loop Until (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ESILTA"))) = "Y") 'do at: 1DD48E1
  loc_1DE48D6: (1).Value = 
  loc_1DE48DE: GoTo loc_1DD48F5
  loc_1DE48ED: (0).Value = 
  loc_1DE48FA: Set var_88 = Nothing
  loc_1DE4902: Set var_90 = Nothing
  loc_1DE4905: Call Proc_56_54_FB5464()
  loc_1DE490A: Exit Sub
  loc_1DE490B: Proc_6_60_E62BC4()
  loc_1DE4910: Exit Sub
End Sub

Public Sub Proc_56_54_FB5464
  'Data Table: 554C78
  loc_FB52D0: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FB52E2:   Me.DGHelp.Visible = False
  loc_FB52EA: End If
  loc_FB5306: If (CBool(Me.DGGroup.Visible) = &HFF) Then
  loc_FB5318:   Me.DGGroup.Visible = False
  loc_FB5320: End If
  loc_FB533C: If (CBool(().Visible) = &HFF) Then
  loc_FB534E:   (False).Visible = 
  loc_FB5356: End If
  loc_FB5363:  = (var_BA).Visible
  loc_FB5371: If (var_BA = &HFF) Then
  loc_FB5380:   (0).Visible = 
  loc_FB5388: End If
  loc_FB53A4: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_FB53B6:   Me.DGDepart.Visible = False
  loc_FB53BE: End If
  loc_FB53DA: If (CBool(Me.DGPurchaseGodown.Visible) = &HFF) Then
  loc_FB53EC:   Me.DGPurchaseGodown.Visible = False
  loc_FB53F4: End If
  loc_FB5410: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_FB5422:   Me.DGTaxStru.Visible = False
  loc_FB542A: End If
  loc_FB5446: If (CBool(().Visible) = &HFF) Then
  loc_FB5458:   (False).Visible = 
  loc_FB5460: End If
  loc_FB5460: Exit Sub
End Sub

Public Sub Proc_56_55_10DB148
  'Data Table: 554C78
  Dim var_94 As String
  Dim var_9C As String
  Dim unk_554C7A As Connection15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_86 As Integer
  Dim var_10C As Variant
  Dim var_124 As DataGrid
  Dim var_BC As Variant
  loc_10DAE54: On Error Goto loc_10DB147
  loc_10DAE72: var_94 = "Select Code,Name,SplitSeqNo From RevMast where Code Not In ('" & MemVar_1F92078 & "ROFF') And (PayType<>'Hold'  OR PayType is NULL) and (LOGSITE_CODE='"
  loc_10DAE80: var_9C = var_94 & MemVar_1F92078 & "') AND ((Fieldtype in ('C','P')  AND FLAGTYPE='FOM') OR (PAYTYPE<>'Company' AND PAYTYPE<>'' AND PAYTYPE IS NOT NULL)) ORDER BY NAME"
  loc_10DAE89: unk_554C7A.Execute var_9C, var_BC, -1
  loc_10DAE94: Set var_8C = var_C0
  loc_10DAEBF: If (Me.Recordset15.RecordCount > 0) Then
  loc_10DAED9:   var_AC = CVar((Me.Recordset15.RecordCount + 1)) 'Long
  loc_10DAEE8:   var_C0(var_AC).RowCount = 
  loc_10DAEF3: Else
  loc_10DAF06:   (2).RowCount = 
  loc_10DAF0E: End If
  loc_10DAF1B: Set var_C0 = (1)
  loc_10DAF2B: var_86 = 1
  loc_10DAF2E: ' Referenced from: 10DB120
  loc_10DAF40: If Not(Me.Recordset15.EOF) Then
  loc_10DAF47:   Set var_DC = DGTaxStru.DispID_A(var_86)
  loc_10DAF54:   ().InsertRows , 
  loc_10DAF6F:   var_10C = CVar(CStr(var_86)) 'String
  loc_10DAF76:   LateIdCallSt
  loc_10DAF8C:   Set var_124 = var_10C(var_DC)
  loc_10DAF92:   var_124.InsertRows CVar(CLng(0)), CVar(CLng())
  loc_10DAFDA:   LateIdCallSt
  loc_10DAFF6:   Set var_124 = CVar(Proc_6_38_E68A98(CVar(Me.var_124.Fields.Item("Name")), CVar(CLng(1))))(var_DC)
  loc_10DB03B:   Proc_6_39_E7C810(var_10C, CVar(Me.var_124.Fields.Item("SplitSeqNo")))
  loc_10DB04B:   LateIdCallSt
  loc_10DB069:   Set var_124 = CVar(CStr(var_10C))(var_DC)
  loc_10DB06F:   ar(CLng()), CVar(CLng(2)), CVar(CLng())
  loc_10DB0B7:   LateIdCallSt
  loc_10DB0DF:   CVar(Proc_6_38_E68A98(CVar(Me.var_124.Fields.Item("Code")), CVar(CLng(3))))(Nothing).InsertRows CVar(CLng()), 
  loc_10DB0EE:   var_AC = CVar((CLng() + 1)) 'Long
  loc_10DB0F7:   Set var_120 = ("Code")
  loc_10DB112:   var_86 = (var_86 + 1)
  loc_10DB11B:   Me.Recordset15.MoveNext
  loc_10DB120:   GoTo loc_10DAF2E
  loc_10DB123: End If
  loc_10DB130: Set var_C0 = var_86(1)
  loc_10DB143: Set var_8C = Nothing
  loc_10DB146: Exit Sub
  loc_10DB147: ' Referenced from: 10DAE54
  loc_10DB147: Exit Sub
End Sub

Public Sub Proc_56_56_1021750
  'Data Table: 554C78
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  loc_1021536: (1).RowCount = 
  loc_1021552: global_120 = CStr(CLng(DGTaxStru.DispID_FFFFFE0B))
  loc_102155C: var_A0 = 4
  loc_102156D: var_A0 = 0
  loc_1021579: var_D8 = CVar(CLng(0)) 'Long
  loc_102157E: var_F8 = "SNo"
  loc_1021587: LateIdCallSt
  loc_1021592: var_A0 = CVar(CLng(0)) 'Long
  loc_1021597: var_D8 = &H1F4
  loc_10215A3: LateIdCallSt
  loc_10215AB: var_A0 = 0
  loc_10215B7: var_D8 = CVar(CLng(1)) 'Long
  loc_10215BC: var_F8 = "Payment\Charge Name"
  loc_10215C5: LateIdCallSt
  loc_10215D0: var_A0 = CVar(CLng(1)) 'Long
  loc_10215DB: var_D8 = CVar(CInt(1)) 'Integer
  loc_10215E2: LateIdCallSt
  loc_10215ED: var_A0 = CVar(CLng(1)) 'Long
  loc_10215F8: var_D8 = CVar(CInt(1)) 'Integer
  loc_10215FF: LateIdCallSt
  loc_102160A: var_A0 = CVar(CLng(1)) 'Long
  loc_102160F: var_D8 = &H1194
  loc_102161B: LateIdCallSt
  loc_1021623: var_A0 = 0
  loc_102162F: var_D8 = CVar(CLng(2)) 'Long
  loc_1021634: var_F8 = "Split"
  loc_102163D: LateIdCallSt
  loc_1021648: var_A0 = CVar(CLng(2)) 'Long
  loc_1021653: var_D8 = CVar(CInt(1)) 'Integer
  loc_102165A: LateIdCallSt
  loc_1021665: var_A0 = CVar(CLng(2)) 'Long
  loc_1021670: var_D8 = CVar(CInt(1)) 'Integer
  loc_1021677: LateIdCallSt
  loc_1021682: var_A0 = CVar(CLng(2)) 'Long
  loc_1021687: var_D8 = &H258
  loc_1021693: LateIdCallSt
  loc_102169B: var_A0 = 0
  loc_10216A7: var_D8 = CVar(CLng(3)) 'Long
  loc_10216AC: var_F8 = "REVCODE"
  loc_10216B5: LateIdCallSt
  loc_10216C0: var_A0 = CVar(CLng(3)) 'Long
  loc_10216CB: var_D8 = CVar(CInt(1)) 'Integer
  loc_10216D2: LateIdCallSt
  loc_10216DD: var_A0 = CVar(CLng(3)) 'Long
  loc_10216E8: var_D8 = CVar(CInt(1)) 'Integer
  loc_10216EF: LateIdCallSt
  loc_10216FA: var_A0 = CVar(CLng(3)) 'Long
  loc_10216FF: var_D8 = 0
  loc_102170B: LateIdCallSt
  loc_102171D: Set var_B4 = ()(vbNullString)
  loc_102173B: Set var_B4 = DGTaxStru.DispID_10000(1)
  loc_102174B: Set var_90 = Nothing 
  loc_102174F: Exit Sub
End Sub

Public Sub Proc_56_57_E40B94
  'Data Table: 554C78
  loc_E40B70: Set var_88 = ()
  loc_E40B8F: If (CStr(DGTaxStru.DispID_68030005) = "Browse") Then
  loc_E40B92:   Exit Sub
  loc_E40B93: End If
  loc_E40B93: Exit Sub
End Sub

Public Sub Proc_56_58_EE78E8
  'Data Table: 554C78
  Dim var_8C As DataGrid
  Dim var_A0 As Long
  Dim var_F0 As Variant
  Dim var_A4 As TextBox
  loc_EE7842: ().DeleteRowLabels , 
  loc_EE784B: var_A0 = CLng()
  loc_EE785B: If (var_A0 = CLng(2)) Then
  loc_EE7868:   (var_A0).InsertRows , 
  loc_EE7880:   (CVar(CLng())).DeleteRowLabels , 
  loc_EE7889:   var_F0 = CVar(CLng()) 'Long
  loc_EE789A:   Set var_8C = var_A4(0)
  loc_EE78A0:   Call 0.Method_Proc_56_58_EE78E80 (var_A8)
  loc_EE78A8:   var_F0 = var_A4.Text
  loc_EE78B8:   Set var_124 = (CVar(var_A8))
  loc_EE78BE:   LateIdCallSt
  loc_EE78DC: End If
  loc_EE78E1: Proc_56_58_EE78E8 = &HFF
End Sub
