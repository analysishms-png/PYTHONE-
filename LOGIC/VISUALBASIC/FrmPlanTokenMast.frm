VERSION 5.00
Begin VB.Form FrmPlanTokenMast
  Caption = "Plan Token Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11355
  ClientHeight = 7320
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 2400
    Top = 750
    Width = 645
    Height = 255
    Text = "No"
    TabIndex = 2
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
  Begin DataGrid DGHelp
    Left = 4575
    Top = 5655
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1125
    Top = 1380
    Width = 960
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 120
    Top = 1125
    Width = 9495
    Height = 4275
    TabIndex = 3
  End
  Begin DataGrid DGTaxMast
    Left = 4245
    Top = 5400
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2400
    Top = 480
    Width = 4215
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin Frame FrmList
    Left = 6450
    Top = 1605
    Width = 1965
    Height = 1875
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 8
    End
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11355
    Height = 375
    TabIndex = 0
  End
  Begin MSFlexGrid FGPoint
    Left = 9285
    Top = 1335
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 11
  End
  Begin Label LblName
    Caption = "Tax Before Discount"
    Index = 1
    ForeColor = &H0&
    Left = 495
    Top = 765
    Width = 1710
    Height = 240
    TabIndex = 10
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
  Begin Label LblName
    Caption = "Name"
    Index = 0
    ForeColor = &H0&
    Left = 495
    Top = 495
    Width = 495
    Height = 240
    TabIndex = 4
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

Attribute VB_Name = "FrmPlanTokenMast"

Private global_64 As Integer
Private global_66 As Integer
Private MasterFormExit As Integer

Private Sub DGTaxMast_UnknownEvent_9 'FC2BE4
  'Data Table: 497244
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FC2A4F: Me.DGTaxMast.Visible = False
  loc_FC2A6E: If (Me.RecordCount > 0) Then
  loc_FC2AAB:   Set var_B4 = Me.TxtGrid
  loc_FC2AB1:   Call 0.Method_DGTaxMast_UnknownEvent_90 (0, var_B8)
  loc_FC2AB9:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FC2AE2:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC2AEA:   var_EC = CVar(CLng(2)) 'Long
  loc_FC2B1D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FC2B25:   Set var_B8 = Me.FGrid
  loc_FC2B2B:   LateIdCallSt
  loc_FC2B5A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC2B62:   var_EC = CVar(CLng(1)) 'Long
  loc_FC2B84:   var_B0 = Me.Fields.Item("Code")
  loc_FC2B95:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FC2B9D:   Set var_B8 = Me.FGrid
  loc_FC2BA3:   LateIdCallSt
  loc_FC2BBF: End If
  loc_FC2BC8: Set var_A8 = Me.TxtGrid
  loc_FC2BCE: Call 0.Method_DGTaxMast_UnknownEvent_90 (0, var_B0, var_B8, var_11C, var_EC)
  loc_FC2BD6: var_B0.SetFocus
  loc_FC2BE2: Exit Sub
End Sub

Private Sub DGTaxMast_UnknownEvent_1F 'E74C30
  'Data Table: 497244
  loc_E74BEE: Proc_6_153_E91194(Me.DGTaxMast, arg_14)
  loc_E74C05: Set var_8C = Me.FGPoint
  loc_E74C1F: Proc_6_138_106D6F8(Me.DGTaxMast, global_76, 0)
  loc_E74C2D: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F41FA4
  'Data Table: 497244
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F41E9B: Me.DGHelp.Visible = False
  loc_F41EBA: If (Me.RecordCount > 0) Then
  loc_F41EF9:   Set var_B4 = Me.Txt
  loc_F41EFF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F41F07:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F41F3A:   var_B0 = Me.Fields.Item("Name")
  loc_F41F59:   Set var_B4 = Me.Txt
  loc_F41F5F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F41F67:   var_B8.Text = CStr(var_B0.Value)
  loc_F41F7D: End If
  loc_F41F88: Set var_A8 = Me.Txt
  loc_F41F8E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F41F96: var_B0.SetFocus
  loc_F41FA2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E74DEC
  'Data Table: 497244
  loc_E74DAA: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E74DC1: Set var_8C = Me.FGPoint
  loc_E74DDB: Proc_6_138_106D6F8(Me.DGHelp, global_72, 0)
  loc_E74DE9: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E6471C
  'Data Table: 497244
  loc_E646EC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E646EF:   Call DGHelp_UnknownEvent_9()
  loc_E646F4: End If
  loc_E64710: If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_E64713:   Call DGTaxMast_UnknownEvent_9()
  loc_E64718: End If
  loc_E64718: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FEC6F4
  'Data Table: 497244
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_FEC52A: Set var_88 = Me.Txt
  loc_FEC530: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FEC53E: Proc_6_74_E226B0(var_8C)
  loc_FEC54A: Call Proc_220_57_EF3298(var_8C)
  loc_FEC552: var_92 = Index
  loc_FEC55D: If (var_92 = CInt(0)) Then
  loc_FEC577:   If (Me.RecordCount > 0) Then
  loc_FEC585:     Set var_8C = Me.FGPoint
  loc_FEC59D:     Proc_6_137_1193554(Me.DGHelp, global_72, Index)
  loc_FEC5AB:   End If
  loc_FEC5F9:   Set var_88 = Me.Txt
  loc_FEC5FF:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FEC607:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FEC61F:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FEC622:     Exit Sub
  loc_FEC623:   End If
  loc_FEC630:   Set var_88 = Me.Txt
  loc_FEC636:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FEC63E:   var_A0 = var_8C.Text
  loc_FEC650:   var_B0 = "Name"
  loc_FEC68B:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FEC694:     Me.MoveFirst
  loc_FEC6B7:     Set var_88 = Me.Txt
  loc_FEC6BD:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FEC6C5:     0 = var_8C.Text
  loc_FEC6DE:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_FEC6F3:   End If
  loc_FEC6F3: End If
  loc_FEC6F3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '109B798
  'Data Table: 497244
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim Shift As Integer
  Dim var_8C As Frame
  Dim var_9C As DataGrid
  loc_109B4EA: If (CLng(Shift) = &H1B) Then
  loc_109B4ED:   Call Proc_220_57_EF3298()
  loc_109B4F2:   Exit Sub
  loc_109B4F3: End If
  loc_109B4F6: var_86 = KeyCode
  loc_109B501: If (var_86 = CInt(0)) Then
  loc_109B51C:   Set var_9C = Nothing
  loc_109B54E:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_72, Shift)
  loc_109B5B9:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_109B5C0:     Set var_9C = Me.DGHelp
  loc_109B5C7:     Set var_90 = Me.FGPoint
  loc_109B5DF:     Proc_6_138_106D6F8(var_9C, global_72, KeyCode, var_90, 0)
  loc_109B5ED:   End If
  loc_109B5F0: Else
  loc_109B5F8:   If (var_86 = CInt(1)) Then
  loc_109B624:     If (Ucase(Chr(CLng(Shift))) = "Y") Then
  loc_109B634:       Set var_8C = Me.Txt
  loc_109B63A:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, "Yes", 1)
  loc_109B642:       var_90.Text = var_9C
  loc_109B651:     Else
  loc_109B67A:       If (Ucase(Chr(CLng(Shift))) = "N") Then
  loc_109B68A:         Set var_8C = Me.Txt
  loc_109B690:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, "No")
  loc_109B698:         var_90.Text = 0
  loc_109B6A4:       End If
  loc_109B6A4:     End If
  loc_109B6A6:     Shift = 0
  loc_109B6A9:   End If
  loc_109B6A9: End If
  loc_109B6B6: var_92 = Me.FrmList.Visible
  loc_109B6C5: Set var_90 = Me.DGHelp
  loc_109B6FF: If (((var_92 = 0) And (CBool(var_90.Visible) = 0)) And (CBool(Me.DGTaxMast.Visible) = 0)) Then
  loc_109B717:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_109B71D:     Call Proc_220_51_1094228(var_92, Shift)
  loc_109B728:     If (var_92 = &HFF) Then
  loc_109B738:       Set var_8C = Me.Txt
  loc_109B73E:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_109B746:       var_90.Text = vbNullString
  loc_109B752:       Exit Sub
  loc_109B753:     End If
  loc_109B753:   End If
  loc_109B768:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_109B771:     Proc_6_75_E527CC(Shift, arg_14)
  loc_109B776:   End If
  loc_109B789:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_109B792:     Proc_6_76_E52838(Shift, arg_14)
  loc_109B797:   End If
  loc_109B797: End If
  loc_109B797: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E25D84
  'Data Table: 497244
  Dim var_96 As Integer
  loc_E25D66: Proc_6_133_E7EF78(var_94)
  loc_E25D78: Proc_6_58_E054C0(CInt(var_94), CInt(var_94))
  loc_E25D80: var_96 = KeyAscii
  loc_E25D83: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC4CF0
  'Data Table: 497244
  loc_EC4C62: If (KeyCode = CInt(0)) Then
  loc_EC4C81:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC4C8E:     var_A4 = "Name"
  loc_EC4CAD:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_72)
  loc_EC4CDF:     Proc_6_138_106D6F8(Me.DGHelp, global_72, KeyCode, Me.FGPoint)
  loc_EC4CED:   End If
  loc_EC4CED: End If
  loc_EC4CED: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49AEC
  'Data Table: 497244
  loc_E49ACA: Set var_88 = Me.Txt
  loc_E49AD0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49ADE: Proc_6_73_E22704(var_8C)
  loc_E49AEA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F8DDEC
  'Data Table: 497244
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_8C As MSHFlexGrid
  loc_F8DC97: var_86 = Cancel
  loc_F8DCA2: If (var_86 = CInt(0)) Then
  loc_F8DCB0:   Set var_8C = Me.Txt
  loc_F8DCB6:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_F8DCDF:   If (Proc_6_27_EA565C(var_90, "Name") = 0) Then
  loc_F8DCEC:     Set var_8C = Me.Txt
  loc_F8DCF2:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F8DCFA:     var_90.SetFocus
  loc_F8DD08:     arg_10 = &HFF
  loc_F8DD0B:     Exit Sub
  loc_F8DD0C:   End If
  loc_F8DD0F:   Call Proc_220_51_1094228(var_9A, arg_10)
  loc_F8DD1A:   If (var_9A = &HFF) Then
  loc_F8DD1F:     arg_10 = &HFF
  loc_F8DD22:     Exit Sub
  loc_F8DD23:   End If
  loc_F8DD36:   Me.FGrid.Col = 2
  loc_F8DD41: Else
  loc_F8DD49:   If (var_86 = CInt(1)) Then
  loc_F8DD56:     Set var_8C = Me.Txt
  loc_F8DD5C:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F8DD97:     If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_F8DDA7:       Set var_8C = Me.Txt
  loc_F8DDAD:       Call 0.Method_Txt_Validate0 (Cancel, var_90, "Yes")
  loc_F8DDB5:       var_90.Text = arg_10
  loc_F8DDC4:     Else
  loc_F8DDD1:       Set var_8C = Me.Txt
  loc_F8DDD7:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F8DDDF:       var_90.Text = "No"
  loc_F8DDEB:     End If
  loc_F8DDEB:   End If
  loc_F8DDEB: End If
  loc_F8DDEB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E62734
  'Data Table: 497244
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E626FF: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E62712: Set var_A8 = Me.TxtGrid
  loc_E62718: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E62720: var_AC.Visible = False
  loc_E6272C: Call Proc_220_57_EF3298()
  loc_E62731: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E658B0
  'Data Table: 497244
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6586C: Set var_88 = Me.TxtGrid
  loc_E65872: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6588C: If (var_8C.Visible = 0) Then
  loc_E658A5:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E658AD: End If
  loc_E658AD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1DC90
  'Data Table: 497244
  loc_E1DC87: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1DC8F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFEE2C
  'Data Table: 497244
  loc_DFEE24: Call Proc_220_52_E3B350()
  loc_DFEE29: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1038EAC
  'Data Table: 497244
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim var_C4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_BC As String
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1038C64: Set var_88 = Me.TopCtrl1
  loc_1038C6A: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E()
  loc_1038C7F: If ( = "Browse") Then
  loc_1038C82:   Exit Sub
  loc_1038C83: End If
  loc_1038CF7: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1038D0D:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1038D1D:   var_BC = "+{Tab}"
  loc_1038D23:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_1038D2D:   Cancel = 0
  loc_1038D33: Else
  loc_1038D3D:   var_B8 = Me.FGrid.Rows
  loc_1038D8A:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_1038DA0:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1038DAD:     Call Proc_220_58_EE100C(0, var_B8, Cancel)
  loc_1038DB4:     Cancel = 0
  loc_1038DB7:   End If
  loc_1038DB7: End If
  loc_1038DBD: global_64 = Cancel
  loc_1038DE3: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1038E07: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1038E1D:   var_EC = CLng(Me.FGrid.Col)
  loc_1038E2D:   If Not (var_EC = CLng(2)) Then
  loc_1038E37:     If (var_EC = CLng(3)) Then
  loc_1038E3A:     End If
  loc_1038E4D:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1038E65:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1038E6A:     var_11C = vbNullString
  loc_1038E74:     Set var_C4 = Me.FGrid
  loc_1038E7A:     LateIdCallSt
  loc_1038E92:   End If
  loc_1038E92: End If
  loc_1038E98: If (Cancel = &HD) Then
  loc_1038EA0:   global_66 = 0
  loc_1038EA3: End If
  loc_1038EA5: Cancel = 0
  loc_1038EA8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E11DE0
  'Data Table: 497244
  loc_E11DD1: Call FGrid_UnknownEvent_C()
  loc_E11DDB: global_66 = 0
  loc_E11DDE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '10E37B4
  'Data Table: 497244
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Long
  Dim var_C0 As String
  Dim var_DA As Integer
  Dim var_C4 As TextBox
  Dim var_D4 As TextBox
  loc_10E34A8: Set var_88 = Me.TopCtrl1
  loc_10E34AE: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E()
  loc_10E34C3: If ( = "Browse") Then
  loc_10E34C6:   Exit Sub
  loc_10E34C7: End If
  loc_10E34DA: var_BC = CLng(Me.FGrid.Col)
  loc_10E34EA: If (var_BC = CLng(2)) Then
  loc_10E34F1:   Set var_D4 = Me.FGrid
  loc_10E3515:   var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_10E3542:   Set var_C4 = var_D4
  loc_10E3554:   Proc_6_63_110ABA4(Me, var_C4, Me.TxtGrid, 0, 0)
  loc_10E357C:   Set var_88 = Me.TxtGrid
  loc_10E3582:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, Asc(var_C0))
  loc_10E358A:   0 = var_C4.Text
  loc_10E35A3:   If (Len(var_C0) <= 1) Then
  loc_10E35B2:     Set var_88 = Me.TxtGrid
  loc_10E35B8:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_10E35C0:     var_DA = var_C4.Text
  loc_10E35D1:     Set var_C8 = Me.TxtGrid
  loc_10E35D7:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_10E35DF:     var_D4.Text = var_C0
  loc_10E35F2:   End If
  loc_10E35FE:   Set var_88 = Me.TxtGrid
  loc_10E3604:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_10E361E:   Set var_C8 = Me.TxtGrid
  loc_10E3624:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_10E362C:   var_D4.SelStart = Len(var_C4.Text)
  loc_10E3642: Else
  loc_10E3649:   If (var_BC = CLng(3)) Then
  loc_10E3650:     Set var_D4 = Me.FGrid
  loc_10E3674:     var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_10E36A1:     Set var_C4 = var_D4
  loc_10E36B3:     Proc_6_63_110ABA4(Me, var_C4, Me.TxtGrid, 0, &HFF)
  loc_10E36DB:     Set var_88 = Me.TxtGrid
  loc_10E36E1:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, Asc(var_C0))
  loc_10E36E9:     0 = var_C4.Text
  loc_10E3702:     If (Len(var_C0) <= 1) Then
  loc_10E3711:       Set var_88 = Me.TxtGrid
  loc_10E3717:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_10E371F:       var_DA = var_C4.Text
  loc_10E3730:       Set var_C8 = Me.TxtGrid
  loc_10E3736:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_10E373E:       var_D4.Text = var_C0
  loc_10E3751:     End If
  loc_10E375D:     Set var_88 = Me.TxtGrid
  loc_10E3763:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_10E377D:     Set var_C8 = Me.TxtGrid
  loc_10E3783:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_10E378B:     var_D4.SelStart = Len(var_C4.Text)
  loc_10E379E:   End If
  loc_10E379E: End If
  loc_10E37A8: If (CLng(Cancel) <> &HD) Then
  loc_10E37B0:   global_66 = &HFF
  loc_10E37B3: End If
  loc_10E37B3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1029320
  'Data Table: 497244
  Dim var_A0 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  loc_10290F0: Set var_90 = Me.TopCtrl1
  loc_10290F6: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E()
  loc_102910B: If ( = "Browse") Then
  loc_102910E:   Exit Sub
  loc_102910F: End If
  loc_102912C: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_102912F:   Exit Sub
  loc_1029130: End If
  loc_1029141: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_1029163:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_102919D:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_10291BF:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10291D5:         var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10291DE:         Set var_114 = Me.FGrid
  loc_10291F9:       Else
  loc_102920C:         Me.FGrid.Rows = 1
  loc_1029229:         var_C0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1029231:         Set var_114 = Me.FGrid
  loc_1029260:         Me.FGrid.FixedRows = 1
  loc_1029268:       End If
  loc_102928D:       For var_118 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_118 'Integer
  loc_1029297:         var_A0 = CVar(CLng(var_86)) 'Long
  loc_102929F:         var_E0 = CVar(CLng(0)) 'Long
  loc_10292A9:         var_B0 = CVar(CStr(var_86)) 'String
  loc_10292B1:         Set var_90 = Me.FGrid
  loc_10292B7:         LateIdCallSt
  loc_10292C8:       Next var_118 'Integer
  loc_10292CD:     End If
  loc_10292D0:   Else
  loc_10292F1:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_1029301:   End If
  loc_1029305:   Set var_90 = Me.FGrid
  loc_1029316: End If
  loc_102931B: Set var_8C = Nothing
  loc_102931E: Exit Sub
  loc_102931F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1DDD0
  'Data Table: 497244
  loc_E1DDC7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1DDCF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1DCE0
  'Data Table: 497244
  loc_E1DCD7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1DCDF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E414F8
  'Data Table: 497244
  Dim var_8C As TextBox
  loc_E414CC: Call Proc_220_57_EF3298()
  loc_E414DC: Set var_88 = Me.TxtGrid
  loc_E414E2: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E414EA: var_8C.Visible = False
  loc_E414F6: Exit Sub
End Sub

Private Sub Form_Load() '106E534
  'Data Table: 497244
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_88 As MSHFlexGrid
  loc_106E2A4: On Error Goto loc_106E52C
  loc_106E2BF: Proc_6_23_DFBA28(Me, 4035)
  loc_106E2D1: Set var_88 = Me.TopCtrl1
  loc_106E2D7: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_8001000B("AEDP")
  loc_106E2E5: Call 0.Method_arg_50 (var_B0)
  loc_106E2F5: Set var_88 = Me.TopCtrl1
  loc_106E2FB: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000F(CVar(var_B0))
  loc_106E304: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_0()
  loc_106E32F: Me.TopCtrl1.CursorLocation = 3
  loc_106E359: var_C0 = CVar("Select distinct Code As Code,Name From TaxStru  WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_106E363: Me.Open var_C0, CVar(MemVar_1F92044), 2
  loc_106E377: CVarUnk
  loc_106E37C: VerifyVarObj
  loc_106E382: Set var_88 = Me.DGHelp
  loc_106E388: LateIdStAd
  loc_106E3B2: Me.DGHelp.CursorLocation = 3
  loc_106E3DC: var_C0 = CVar("Select Code,Name From RevMast WHERE FIELDTYPE='T' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_106E3FA: CVarUnk
  loc_106E3FF: VerifyVarObj
  loc_106E405: Set var_88 = Me.DGTaxMast
  loc_106E40B: LateIdStAd
  loc_106E435: Me.DGTaxMast.CursorLocation = 3
  loc_106E45F: var_C0 = CVar("Select distinct Code as SearchCode,Name,LOGSITE_CODE,SITE_CODE From TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_106E469: r_C0, CVar(MemVar_1F92044), 2 var_C0, CVar(MemVar_1F92044), 2
  loc_106E497: Call Proc_220_56_E793D4(Proc_5_1_100CB50("INI", Me, New, 3, -1, Me, New), 3, -1, Me)
  loc_106E4A2: Call Proc_220_50_1092A70(New, 3)
  loc_106E4A7: Call Proc_220_55_117193C(-1)
  loc_106E4BE: Me.FGrid.Left = CVar(CDbl(0))
  loc_106E4D9: Me.FGrid.Top = CVar(CDbl(1030))
  loc_106E4EB: var_C0 = Me.FGrid.Top
  loc_106E4FA: Call 0.Method_Me8 (var_E4)
  loc_106E50D: var_9C = CVar(((var_E4 - CDbl(600)) - CDbl(var_C0))) 'Single
  loc_106E51C: Me.FGrid.Height = CVar(CDbl(1030))
  loc_106E52B: Exit Sub
  loc_106E52C: ' Referenced from: 106E2A4
  loc_106E52C: Proc_6_60_E62BC4(var_C0)
  loc_106E531: Exit Sub
End Sub

Private Sub Form_Resize() 'DFBB60
  'Data Table: 497244
  loc_DFBB5C: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E58398
  'Data Table: 497244
  loc_E58363: Set global_72 = Nothing
  loc_E58375: Set global_68 = Nothing
  loc_E58387: Set global_76 = Nothing
  loc_E58393: MasterFormExit = 0
  loc_E58396: Exit Sub
End Sub

Private Sub Form_Activate() 'E4A650
  'Data Table: 497244
  loc_E4A620: On Error Goto loc_E4A64A
  loc_E4A627: Set var_88 = Me.TopCtrl1
  loc_E4A62D: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_68030010()
  loc_E4A642: If (CLng(CInt()) = &H2D) Then
  loc_E4A645:   Call TopCtrl1_UnknownEvent_1D()
  loc_E4A64A:   ' Referenced from: E4A620
  loc_E4A64A: End If
  loc_E4A64A: Proc_6_60_E62BC4()
  loc_E4A64F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E267D4
  'Data Table: 497244
  loc_E267B9: If (MasterFormExit = &HFF) Then
  loc_E267C9:   Me.Global.Unload Me
  loc_E267D1: End If
  loc_E267D1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E26FF4
  'Data Table: 497244
  loc_E26FCC: On Error Goto loc_E26FEC
  loc_E26FE3: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E26FEB: Exit Sub
  loc_E26FEC: ' Referenced from: E26FCC
  loc_E26FEC: Proc_6_60_E62BC4(Shift)
  loc_E26FF1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E8073C
  'Data Table: 497244
  Dim var_94 As TextBox
  loc_E806D8: On Error Goto loc_E80734
  loc_E806FE: Call Proc_220_56_E793D4(Proc_5_1_100CB50("ADD", Me))
  loc_E80709: Call Proc_220_54_F20BF4(global_68)
  loc_E80719: Set var_8C = Me.Txt
  loc_E8071F: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0))
  loc_E80727: var_94.SetFocus
  loc_E80733: Exit Sub
  loc_E80734: ' Referenced from: E806D8
  loc_E80734: Proc_6_60_E62BC4(var_94)
  loc_E80739: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'F6B6BC
  'Data Table: 497244
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F6B58C: On Error Goto loc_F6B678
  loc_F6B59D: If (Proc_183_55_FE7900(global_68) = &HFF) Then
  loc_F6B5A0:   Exit Sub
  loc_F6B5A1: End If
  loc_F6B5B8: If (Me.RecordCount > 0) Then
  loc_F6B5DE:   Call Proc_220_56_E793D4(Proc_5_1_100CB50("EDIT", Me))
  loc_F6B5F7:   Set var_90 = Me.Txt
  loc_F6B5FD:   Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_98)
  loc_F6B605:   var_8C = var_98.Text
  loc_F6B610:   global_80 = var_8C
  loc_F6B629:   Set var_90 = Me.Txt
  loc_F6B62F:   Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_98)
  loc_F6B637:   var_98.SetFocus
  loc_F6B646: Else
  loc_F6B667:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F6B677: End If
  loc_F6B677: Exit Sub
  loc_F6B678: ' Referenced from: F6B58C
  loc_F6B680: Set var_90 = Err()
  loc_F6B686: Call 0.Method_arg_2C (var_8C)
  loc_F6B6A7: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F6B6BA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '11E7350
  'Data Table: 497244
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_49725C As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  Dim var_3301 As Integer
  loc_11E6EF4: On Error Goto loc_11E72F7
  loc_11E6F05: If (Proc_183_56_FE8818(global_68) = &HFF) Then
  loc_11E6F08:   Exit Sub
  loc_11E6F09: End If
  loc_11E6F3B: var_D4 = "Tax Structure"
  loc_11E6F83: If (Proc_6_108_1010FEC(MemVar_1F92044, "RevMast", "TaxStru", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_11E6F86:   Exit Sub
  loc_11E6F87: End If
  loc_11E6FB9: var_D4 = "Tax Structure"
  loc_11E7001: If (Proc_6_108_1010FEC(MemVar_1F92044, "ItemCatMast", "TaxStru", CStr(Me.Fields.Item("SearchCode").Value), 0) = 0) Then
  loc_11E7004:   Exit Sub
  loc_11E7005: End If
  loc_11E707F: If (Proc_6_108_1010FEC(MemVar_1F92044, "TelCallType", "TaxStru", CStr(Me.Fields.Item("SearchCode").Value), 0, "Tax Structure") = 0) Then
  loc_11E7082:   Exit Sub
  loc_11E7083: End If
  loc_11E70BA: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_11E70BF:   var_96 = 0
  loc_11E70CB:   unk_49725C.BeginTrans var_D0
  loc_11E70D2:   var_96 = &HFF
  loc_11E70E6:   var_94 = Me.Bookmark 'Variant
  loc_11E7132:   var_118 = "Delete From TaxStru Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_11E7140:   unk_49725C.Execute CStr(var_118), var_138, -1
  loc_11E718B:   var_168 = 0
  loc_11E719E:   var_160 = 0
  loc_11E71A9:   var_15C = 0
  loc_11E71BC:   var_154 = 0
  loc_11E71C7:   var_150 = 0
  loc_11E71DA:   var_148 = 0
  loc_11E721A:   var_B4 = "TaxStru"
  loc_11E7223:   Proc_154_5_10E33A4(MemVar_1F92044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11E7251:   unk_49725C.CommitTrans
  loc_11E7258:   var_96 = 0
  loc_11E7266:   Me.Requery -1
  loc_11E7276:   Me.Requery -1
  loc_11E7296:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11E72A3:     Me.Bookmark = var_94
  loc_11E72AB:   Else
  loc_11E72BF:     If (Me.EOF = 0) Then
  loc_11E72C8:       Me.MoveLast
  loc_11E72CD:     End If
  loc_11E72CD:   End If
  loc_11E72CD:   Call Proc_220_55_117193C(var_96, var_148, 0, var_150, var_154)
  loc_11E72EE:   Proc_5_0_110649C(&HFF, Me, global_68, 0)
  loc_11E72F6: End If
  loc_11E72F6: Exit Sub
  loc_11E72F7: ' Referenced from: 11E6EF4
  loc_11E72FD: If (var_96 = &HFF) Then
  loc_11E7306:   unk_49725C.RollbackTrans
  loc_11E730B: End If
  loc_11E7313: Set var_9C = Err()
  loc_11E7319: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_11E733A: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_11E734D: Exit Sub
  loc_11E734E: var_3301 = var_160
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E17B9C
  'Data Table: 497244
  loc_E17B91: Me.Global.Unload Me
  loc_E17B99: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3AC38
  'Data Table: 497244
  loc_E3AC28: Proc_5_0_110649C(&HFF, Me)
  loc_E3AC30: Call Proc_220_55_117193C(global_68)
  loc_E3AC35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E3B298
  'Data Table: 497244
  loc_E3B288: Proc_5_0_110649C(&HFF, Me)
  loc_E3B290: Call Proc_220_55_117193C(global_68)
  loc_E3B295: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E3B238
  'Data Table: 497244
  loc_E3B228: Proc_5_0_110649C(&HFF, Me)
  loc_E3B230: Call Proc_220_55_117193C(global_68)
  loc_E3B235: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E3AE18
  'Data Table: 497244
  loc_E3AE08: Proc_5_0_110649C(&HFF, Me)
  loc_E3AE10: Call Proc_220_55_117193C(global_68)
  loc_E3AE15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '139F3D8
  'Data Table: 497244
  Dim var_F4 As Variant
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_A8 As Variant
  Dim var_208 As Variant
  Dim var_9E As Integer
  Dim var_B0 As String
  Dim var_20C As String
  Dim unk_49725C As Connection15
  Dim var_AC As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_4B8 As Double
  Dim var_4C0 As Double
  Dim var_410 As Variant
  Dim Me As Recordset15
  loc_139EB94: On Error Goto loc_139F383
  loc_139EB9B: var_86 = CByte(0) 'Byte
  loc_139EBAA: Set var_A4 = Me.Txt
  loc_139EBB0: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_139EBD9: If (Proc_183_19_E8DAFC(var_A8, "Name") = 0) Then
  loc_139EBE3:   Call Txt_GotFocus(CInt(0))
  loc_139EBE8:   Exit Sub
  loc_139EBE9: End If
  loc_139EBEC: Call Proc_220_51_1094228(var_B2)
  loc_139EBF7: If (var_B2 = &HFF) Then
  loc_139EBFA:   Exit Sub
  loc_139EBFB: End If
  loc_139EC1C: var_E4 = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_139EC26: For var_114 = 1 To var_E4: var_9C = var_114 'Variant
  loc_139EC51:   For var_118 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9E = var_118 'Integer
  loc_139EC5C:     var_D4 = CVar(CLng(var_9C)) 'Long
  loc_139EC65:     var_F4 = CVar(CLng(var_9E)) 'Long
  loc_139EC7F:     var_138 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_139EC85:     var_148 = Trim(var_138)
  loc_139EC8D:     var_158 = vbNullString
  loc_139EC9C:     var_178 = CVar(CLng(var_9C)) 'Long
  loc_139ECAE:     Set var_A8 = Me.FGrid
  loc_139ECF3:     If CBool(CVar(CLng(var_9E)) Or (Trim(CVar(CStr(var_A8.TextMatrix)))) = "0.00")) Then
  loc_139ECFD:       If (var_9E = var_9E) Then
  loc_139ED00:         GoTo loc_139EDEB
  loc_139ED03:       End If
  loc_139ED14:       If ((var_9E = CInt(1)) Or (var_9E = CInt(2))) Then
  loc_139ED30:         MsgBox("Revenue is required", 0, var_138, var_148, var_168)
  loc_139ED44:         var_9E = CInt(2)
  loc_139ED47:       End If
  loc_139ED4F:       If (var_9E = CInt(3)) Then
  loc_139ED65:         var_C4 = "Rate is required"
  loc_139ED6B:         MsgBox(var_C4, 0, var_138, var_148, var_168)
  loc_139ED7B:       End If
  loc_139ED8F:       Me.FGrid.Row = CVar(CLng(var_9C))
  loc_139EDAA:       Me.FGrid.Col = CVar(CLng(var_9E))
  loc_139EDB6:       Set var_A4 = Me.FGrid
  loc_139EDDA:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_139EDE2:       Exit Sub
  loc_139EDE3:     End If
  loc_139EDE6:   Next var_118 'Integer
  loc_139EDEB:   ' Referenced from: 139ED00
  loc_139EDEE: Next var_114 'Variant
  loc_139EDF8: Set var_A4 = Me.TopCtrl1
  loc_139EDFE: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E()
  loc_139EE13: If ( = "Add") Then
  loc_139EE1C:   var_E4 = 0
  loc_139EE39:   var_B0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS NUMERIC)),1)+1 AS MyCode From TaxStru WHERE ISNumeric(substring(Code,3,4))=1 AND SITE_CODE='" & MemVar_1F92070
  loc_139EE49:   unk_49725C.Execute "Name" & "'", var_C4, -1
  loc_139EE51:   var_A4 = var_A4.Fields
  loc_139EE59:   var_E4 = var_A8.Item(var_A8)
  loc_139EE61:   var_AC = var_AC.Value
  loc_139EE9A:   var_148 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_139EEAC:   var_C4 = "0000"
  loc_139EEC8:   var_168 = (1 + Format(CStr(var_138), var_C4))
  loc_139EECD:   var_B0 = CStr(var_168)
  loc_139EED3:   global_60 = var_B0
  loc_139EEE8: Else
  loc_139EEF6:   Set var_A4 = Me.Txt
  loc_139EEFC:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_B0)
  loc_139EF04:   1 = var_A8.Tag
  loc_139EF0F:   global_60 = var_B0
  loc_139EF1D: End If
  loc_139EF26: unk_49725C.BeginTrans var_214
  loc_139EF2F: var_86 = CByte(1) 'Byte
  loc_139EF5A: unk_49725C.Execute "Delete From TaxStru Where Code='" & global_60 & "'", var_C4, -1
  loc_139EF8D: var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_139EF97: For var_234 = 1 To "0000": var_9C = var_234 'Variant
  loc_139EFA2:   var_D4 = CVar(CLng(var_9C)) 'Long
  loc_139EFE2:   Set var_A8 = Me.FGrid
  loc_139EFF3:   var_20C = CStr(var_A8.TextMatrix))
  loc_139F011:   If (CVar(CLng(3)) And (var_20C <> vbNullString)) Then
  loc_139F028:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_20C, CVar(CLng(var_9C)), (CStr(Me.FGrid.TextMatrix)) <> vbNullString), CVar(CLng(2)))
  loc_139F030:     var_D4 = var_A8.Text
  loc_139F041:     var_4B8 = Val(CStr(var_9C))
  loc_139F049:     var_D4 = CVar(CLng(var_9C)) 'Long
  loc_139F051:     var_F4 = CVar(CLng(1)) 'Long
  loc_139F060:     var_C4 = Me.FGrid.TextMatrix)
  loc_139F088:     var_138 = Me.FGrid.TextMatrix)
  loc_139F09B:     var_4C0 = Val(CStr(var_138))
  loc_139F0AD:     var_168 = "0.00"
  loc_139F0B6:     var_148 = CVar(var_4C0) 'Double
  loc_139F0D0:     Proc_183_7_EB0C44(var_2FC, Date, 1, 1, var_4C0, CVar(CLng(3)), CVar(CLng(var_9C)), var_C4)
  loc_139F0D9:     Set var_330 = Me.TopCtrl1
  loc_139F0DF:     Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E(var_F4)
  loc_139F125:     Set var_434 = Me.Txt
  loc_139F12B:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_438, var_D4, var_4B8)
  loc_139F156:     var_B0 = "Insert Into TaxStru(Code,Name,Sno,TaxCode,Rate,Limit,Site_Code,U_Name,U_EntDt,U_AE,Nature,CondApp,LogSite_Code,CompOperator,TaxBeforeDisc) Values ('" & global_60
  loc_139F1A9:     var_208 = CVar(var_B0 & "','" & var_20C & "'," & CStr(var_4B8) & ",'" & CStr(var_C4) & "',") & Format(var_148, var_168) & ",'" & CVar(MemVar_1F92078) 
  loc_139F1EF:     var_410 = var_208 & "','" & CVar(MemVar_1F920C8) & "'," & var_2FC & ",'" & IIf((var_350 = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) 
  loc_139F219:     unk_49725C.Execute CStr(var_410 & "','" & CVar(Proc_6_38_E68A98(CVar(var_438), var_F4, Me.Txt)) & "')"), var_4AC, -1
  loc_139F28D:   End If
  loc_139F290: Next var_234 'Variant
  loc_139F29C: unk_49725C.CommitTrans
  loc_139F2A5: var_86 = CByte(0) 'Byte
  loc_139F2B4: Me.Requery -1
  loc_139F2C4: Me.Requery -1
  loc_139F2CD: Set var_A4 = Me.DGHelp
  loc_139F2E2: Set var_A4 = Me.DGTaxMast
  loc_139F31B: Me.Find "SearchCode='" & global_60 & "'", 0, 1
  loc_139F32B: Set var_A4 = Me.TopCtrl1
  loc_139F331: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E(var_D4)
  loc_139F346: If (DGTaxMast.DispID_FFFF = "Add") Then
  loc_139F349:   Call TopCtrl1_UnknownEvent_11()
  loc_139F34E:   Exit Sub
  loc_139F34F: End If
  loc_139F364: var_B0 = "INI"
  loc_139F372: Call Proc_220_56_E793D4(Proc_5_1_100CB50(var_B0, Me), global_68)
  loc_139F37D: Call Proc_220_55_117193C(DGHelp.DispID_FFFF)
  loc_139F382: Exit Sub
  loc_139F383: ' Referenced from: 139EB94
  loc_139F38C: If (CInt(var_86) = 1) Then
  loc_139F395:   unk_49725C.RollbackTrans
  loc_139F39A: End If
  loc_139F3A2: Set var_A4 = Err()
  loc_139F3A8: Call 0.Method_arg_2C (var_B0)
  loc_139F3C1: MsgBox(CVar(var_B0), &H10, var_138, var_148, var_168)
  loc_139F3D4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'E9CF48
  'Data Table: 497244
  loc_E9CED0: On Error Goto loc_E9CF41
  loc_E9CF0A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9CF30:   Call Proc_220_56_E793D4(Proc_5_1_100CB50("INI", Me))
  loc_E9CF3B:   Call Proc_220_55_117193C(global_68)
  loc_E9CF40: End If
  loc_E9CF40: Exit Sub
  loc_E9CF41: ' Referenced from: E9CED0
  loc_E9CF41: Proc_6_60_E62BC4()
  loc_E9CF46: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EC7568
  'Data Table: 497244
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F920E4 As String
  loc_EC74C8: On Error Goto loc_EC7560
  loc_EC74E2: If (Me.RecordCount <= 0) Then
  loc_EC74EB:   var_B8 = "Information"
  loc_EC7506:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC7516:   Exit Sub
  loc_EC7517: End If
  loc_EC7525: MemVar_1F920E4 = "Select distinct Code As SearchCode,Name FROM TaxStru where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_EC7532: MemVar_1F92120 = Me
  loc_EC753F: Proc_6_126_F1BCC0("3500")
  loc_EC755A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC755F: Exit Sub
  loc_EC7560: ' Referenced from: EC74C8
  loc_EC7560: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC7565: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1C '1088D38
  'Data Table: 497244
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_49725C As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1088AA0: On Error Goto loc_1088CEC
  loc_1088AB7: var_A0 = "Select TaxStru.*,RevMast.Code as TaxCode, RevMast.Name as TaxName From TaxStru Left Join RevMast on RevMast.Code=TaxStru.TaxCode  where (RevMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_1088AC7: unk_49725C.Execute var_A0 & "' or RevMast.LOGSITE_CODE='HO') and RevMast.FieldType='T' Order by Sno", var_C4, -1
  loc_1088AD2: Set var_88 = var_C8
  loc_1088AE8: var_CC = var_88.RecordCount
  loc_1088AF6: If (var_CC = 0) Then
  loc_1088B12:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1088B22:   Exit Sub
  loc_1088B23: End If
  loc_1088B32: var_A4 = MemVar_1F920B4 & "\TaxStructureMast.ttx"
  loc_1088B39: Set var_C8 = var_88 
  loc_1088B45: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1088B4F: Set var_88 = var_C8
  loc_1088B55: var_B4 = CVar(var_12E) 'Integer
  loc_1088B58: var_98 = var_B4 'Variant
  loc_1088B74: var_A0 = MemVar_1F920B4 & "\TaxStructureMast.RPT"
  loc_1088B7D: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1088B88: MemVar_1F921E4 = var_C8
  loc_1088BA3: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1088BAB: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1088BB7: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1088BD0:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1088BD8:   Call 0.Method_arg_20 (var_138)
  loc_1088BE0:   Call 0.Method_arg_30 (var_A0)
  loc_1088C26:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1088C3C:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1088C44:     Call 0.Method_arg_20 (var_138)
  loc_1088C4C:     Call 0.Method_arg_38 ("'Tax Structure Master'")
  loc_1088C58:   End If
  loc_1088C5B: Next var_132 'Integer
  loc_1088C79: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1088C81: Call 0.Method_arg_2C (var_DC)
  loc_1088C8F: Call 0.Method_arg_150 (var_FC)
  loc_1088C9A: Call 0.Method_arg_50 (var_A0)
  loc_1088CA4: Set var_138 = Nothing
  loc_1088CBE: Set var_C8 = MemVar_1F921E4 
  loc_1088CCA: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_1088CD5: MemVar_1F921E4 = var_C8
  loc_1088CE8: Set var_88 = Nothing
  loc_1088CEB: Exit Sub
  loc_1088CEC: ' Referenced from: 1088AA0
  loc_1088CF4: Set var_C8 = Err()
  loc_1088CFA: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1088D05: Call 0.Method_arg_50 (var_A4)
  loc_1088D21: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1088D34: Exit Sub
  loc_1088D35: Set var_B4 = var_138
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E20244
  'Data Table: 497244
  Dim Me As Recordset15
  loc_E2022B: Me.Requery -1
  loc_E2023B: Me.Requery -1
  loc_E20240: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '109F460
  'Data Table: 497244
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_109F1B0: Call Proc_220_57_EF3298()
  loc_109F1C8: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_109F1E3: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109F1EC: Set var_BC = Me.FGrid
  loc_109F222: Set var_104 = Me.TxtGrid
  loc_109F228: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_109F230: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_109F261: var_110 = CLng(Me.FGrid.Col)
  loc_109F271: If (var_110 = CLng(2)) Then
  loc_109F283:   Set var_A8 = Me.TxtGrid
  loc_109F289:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H23)
  loc_109F291:   var_BC.MaxLength = var_110
  loc_109F2B4:   If (Me.RecordCount > 0) Then
  loc_109F2C2:     Set var_BC = Me.FGPoint
  loc_109F2DA:     Proc_6_137_1193554(Me.DGTaxMast, global_76, Index)
  loc_109F2E8:   End If
  loc_109F329:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_109F32C:     Exit Sub
  loc_109F32D:   End If
  loc_109F340:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109F348:   var_DC = CVar(CLng(2)) 'Long
  loc_109F37B:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_109F384:     Me.MoveFirst
  loc_109F39C:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109F3A4:     var_DC = CVar(CLng(1)) 'Long
  loc_109F3AD:     Set var_BC = Me.FGrid
  loc_109F3B3:     var_CC = var_BC.TextMatrix)
  loc_109F3E8:     Me.Find "Code ='" & CStr(var_CC) & "'", 0, 1
  loc_109F418:     If (Me.EOF = &HFF) Then
  loc_109F421:       Me.MoveFirst
  loc_109F426:     End If
  loc_109F426:   End If
  loc_109F429: Else
  loc_109F430:   If (var_110 = CLng(3)) Then
  loc_109F442:     Set var_A8 = Me.TxtGrid
  loc_109F448:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 5, var_130, var_CC, var_DC)
  loc_109F450:     var_BC.MaxLength = var_94
  loc_109F45C:   End If
  loc_109F45C: End If
  loc_109F45C: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10E1CB0
  'Data Table: 497244
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C0 As Variant
  Dim var_94 As DataGrid
  loc_10E19A4: On Error Goto loc_10E1CAA
  loc_10E19B1: If (CLng(Shift) = &H1B) Then
  loc_10E19C1:   Set var_88 = Me.TxtGrid
  loc_10E19C7:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_10E19E1:   Set var_94 = Me.TxtGrid
  loc_10E19E7:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_10E19EF:   var_98.Text = var_8C.Tag
  loc_10E1A0B:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_10E1A10:   Call Proc_220_57_EF3298(arg_14)
  loc_10E1A19:   Set var_88 = Me.FGrid
  loc_10E1A36:   Set var_88 = Me.TxtGrid
  loc_10E1A3C:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_10E1A44:   var_8C.Visible = False
  loc_10E1A50:   Exit Sub
  loc_10E1A51: End If
  loc_10E1A74: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_10E1A83:   Set var_88 = Me.TxtGrid
  loc_10E1A89:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B0)
  loc_10E1A91:   var_AC = var_8C.Left
  loc_10E1AA8:   Me.DGTaxMast.Left = CVar(var_B0)
  loc_10E1AC2:   Set var_94 = Me.TxtGrid
  loc_10E1AC8:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_10E1AE1:   Set var_88 = Me.TxtGrid
  loc_10E1AE7:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_10E1AFB:   var_C0 = CVar((var_8C.Top + var_98.Height)) 'Single
  loc_10E1B0A:   Me.DGTaxMast.Top = CVar(var_8C.Top)
  loc_10E1B39:   Set var_98 = Me.FGPoint
  loc_10E1B72:   Proc_6_69_134A198(Me.DGTaxMast, Me.TxtGrid, KeyCode, global_76, Shift, &HFF)
  loc_10E1B92:   If (CLng(Shift) = &HD) Then
  loc_10E1B9B:     Call Proc_220_53_10C9F1C(KeyCode, var_DA, 1, Nothing)
  loc_10E1BA6:     If (var_DA = &HFF) Then
  loc_10E1BB4:       Set var_98 = Me.TxtGrid
  loc_10E1BDF:       Set var_8C = var_98
  loc_10E1BEE:       Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_66, CByte(6))
  loc_10E1BFE:     End If
  loc_10E1BFE:   End If
  loc_10E1C01: Else
  loc_10E1C08:   If (var_AC = CLng(3)) Then
  loc_10E1C1A:     Set var_88 = Me.TxtGrid
  loc_10E1C20:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 5, 0, 0)
  loc_10E1C28:     var_8C.MaxLength = 0
  loc_10E1C3E:     If (CLng(Shift) = &HD) Then
  loc_10E1C47:       Call Proc_220_53_10C9F1C(KeyCode, var_DA, var_98)
  loc_10E1C52:       If (var_DA = &HFF) Then
  loc_10E1C9A:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(6))
  loc_10E1CAA:       End If
  loc_10E1CAA:       ' Referenced from: 10E19A4
  loc_10E1CAA:     End If
  loc_10E1CAA:   End If
  loc_10E1CAA: End If
  loc_10E1CAA: Proc_6_60_E62BC4(0, 0, 0)
  loc_10E1CAF: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F2DDD8
  'Data Table: 497244
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F2DCCF: Proc_6_58_E054C0(arg_10)
  loc_F2DCE0: If (KeyAscii = 0) Then
  loc_F2DCF6:   var_A0 = CLng(Me.FGrid.Col)
  loc_F2DD06:   If (var_A0 = CLng(2)) Then
  loc_F2DD25:     If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_F2DD37:       var_A4 = "Name"
  loc_F2DD52:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_76, arg_10)
  loc_F2DD6C:       Set var_AC = Me.FGPoint
  loc_F2DD84:       Proc_6_138_106D6F8(Me.DGTaxMast, global_76, KeyAscii, var_AC)
  loc_F2DD92:     End If
  loc_F2DD95:   Else
  loc_F2DD9C:     If (var_A0 = CLng(3)) Then
  loc_F2DDA9:       Set var_8C = Me.TxtGrid
  loc_F2DDAF:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F2DDCA:       Proc_6_42_129A86C(var_AC, arg_10, 2, 2)
  loc_F2DDD6:     End If
  loc_F2DDD6:   End If
  loc_F2DDD6: End If
  loc_F2DDD6: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EC4B34
  'Data Table: 497244
  loc_EC4A94: On Error Goto loc_EC4B2D
  loc_EC4ABA: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_EC4AE0:   If ((Shift <> &HD) And (CBool(Me.DGTaxMast.Visible) = 0)) Then
  loc_EC4AEE:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_EC4B02:     var_A4 = "Name"
  loc_EC4B1D:     Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_76, Shift)
  loc_EC4B2C:   End If
  loc_EC4B2C: End If
  loc_EC4B2C: Exit Sub
  loc_EC4B2D: ' Referenced from: EC4A94
  loc_EC4B2D: Proc_6_60_E62BC4(var_A4, &HFF)
  loc_EC4B32: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E201F0
  'Data Table: 497244
  Dim arg_10 As Integer
  loc_E201D8: If (Cancel = 0) Then
  loc_E201E1:   Call Proc_220_53_10C9F1C(Cancel, var_88)
  loc_E201EA:   arg_10 = Not(var_88)
  loc_E201ED: End If
  loc_E201ED: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F58604
  'Data Table: 497244
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F58526: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5852D:   Set var_A8 = Me.ListView
  loc_F58577:   Set var_C0 = Me.TxtGrid
  loc_F5857D:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F58585:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F585A5: End If
  loc_F585B1: Me.FrmList.Visible = False
  loc_F585E1: Set var_9C = Me.TxtGrid
  loc_F585E7: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F585EF: var_A8.SetFocus
  loc_F58603: Exit Sub
End Sub

Public Function MasterFormExitGet() '497E3C
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '497E4B
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E94DF8
  'Data Table: 497244
  Dim Me As Recordset15
  loc_E94D86: On Error Goto loc_E94DEF
  loc_E94D8F: Me.MoveFirst
  loc_E94DB9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94DE1: Proc_5_0_110649C(&HFF, Me, global_68)
  loc_E94DE9: Call Proc_220_55_117193C(0)
  loc_E94DEE: Exit Sub
  loc_E94DEF: ' Referenced from: E94D86
  loc_E94DEF: Proc_6_60_E62BC4(var_A0)
  loc_E94DF4: Exit Sub
End Sub

Public Sub Proc_220_50_1092A70
  'Data Table: 497244
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_10927C4: On Error Goto loc_1092A68
  loc_10927D5: Set var_88 = Me.Txt
  loc_10927DB: Call 0.Method_Proc_220_50_1092A700 (CInt(0), var_8C)
  loc_10927FA: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_1092816: Set var_B4 = Me.Txt
  loc_109281C: Call 0.Method_Proc_220_50_1092A700 (CInt(0), var_B8)
  loc_1092837: Set var_88 = Me.Txt
  loc_109283D: Call 0.Method_Proc_220_50_1092A700 (CInt(0), var_8C)
  loc_1092855: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1092864: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_1092882: Set var_88 = Me.TxtGrid
  loc_1092888: Call 0.Method_Proc_220_50_1092A700 (0, var_8C)
  loc_10928A7: Me.DGTaxMast.Left = CVar(var_8C.Left)
  loc_10928C1: Set var_B4 = Me.TxtGrid
  loc_10928C7: Call 0.Method_Proc_220_50_1092A700 (0, var_B8)
  loc_10928E0: Set var_88 = Me.TxtGrid
  loc_10928E6: Call 0.Method_Proc_220_50_1092A700 (0, var_8C)
  loc_10928FA: var_A0 = CVar((var_8C.Top + var_B8.Height)) 'Single
  loc_1092909: Me.DGTaxMast.Top = CVar(var_8C.Left)
  loc_109291F: Set var_C4 = Me.FGrid
  loc_109292E: var_C4.Cols = 4
  loc_1092947: global_56 = CStr(CLng(var_C4.BackColor))
  loc_1092954: var_A0 = CVar(CLng(0)) 'Long
  loc_1092959: var_E8 = &H1F4
  loc_1092965: LateIdCallSt
  loc_109296D: var_A0 = 0
  loc_1092979: var_E8 = CVar(CLng(0)) 'Long
  loc_109297E: var_108 = "S.No"
  loc_1092987: LateIdCallSt
  loc_1092992: var_A0 = CVar(CLng(1)) 'Long
  loc_1092997: var_E8 = 0
  loc_10929A3: LateIdCallSt
  loc_10929AE: var_A0 = CVar(CLng(2)) 'Long
  loc_10929B3: var_E8 = &H9C4
  loc_10929BF: LateIdCallSt
  loc_10929C7: var_A0 = 0
  loc_10929D3: var_E8 = CVar(CLng(2)) 'Long
  loc_10929D8: var_108 = "Revenue"
  loc_10929E1: LateIdCallSt
  loc_10929EC: var_A0 = CVar(CLng(2)) 'Long
  loc_10929F7: var_E8 = CVar(CInt(1)) 'Integer
  loc_10929FE: LateIdCallSt
  loc_1092A09: var_A0 = CVar(CLng(3)) 'Long
  loc_1092A0E: var_E8 = &H320
  loc_1092A1A: LateIdCallSt
  loc_1092A25: var_A0 = CVar(CLng(3)) 'Long
  loc_1092A30: var_E8 = CVar(CInt(7)) 'Integer
  loc_1092A37: LateIdCallSt
  loc_1092A3F: var_A0 = 0
  loc_1092A4B: var_E8 = CVar(CLng(3)) 'Long
  loc_1092A50: var_108 = "Rate"
  loc_1092A59: LateIdCallSt
  loc_1092A63: Set var_C4 = Nothing 
  loc_1092A67: Exit Sub
  loc_1092A68: ' Referenced from: 10927C4
  loc_1092A68: Proc_6_60_E62BC4(var_C4, var_108, var_E8, var_A0, var_C4, var_E8, var_A0, var_C4)
  loc_1092A6D: Exit Sub
End Sub

Public Sub Proc_220_51_1094228
  'Data Table: 497244
  Dim Me As Recordset15
  Dim var_D8 As TextBox
  Dim unk_49725C As Connection15
  Dim var_F0 As Fields15
  Dim var_104 As Field20
  loc_1093FC0: If (Me.RecordCount = 0) Then
  loc_1093FC3:   Proc_220_51_1094228 = 0
  loc_1093FC9: End If
  loc_1093FCD: Set var_A0 = Me.TopCtrl1
  loc_1093FD3: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E()
  loc_1093FE8: If ( = "Add") Then
  loc_1094026:   Set var_A0 = Me.Txt
  loc_109402C:   Call 0.Method_Proc_220_51_10942280 (CInt(0), var_D8, var_DC, "Select Count(*) From TaxStru Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_C0, -1)
  loc_109404D:   unk_49725C.Execute var_F0 & var_DC & "'", 0, var_104
  loc_109405D:    = var_F0.Item()
  loc_1094065:    = var_104.Value
  loc_1094096:   If (var_D8.Text.Fields > 0) Then
  loc_10940B4:     var_C0 = "Duplicate Name"
  loc_10940BA:     MsgBox(var_C0, &H40, "Information", var_124, var_144)
  loc_10940D5:     Set var_A0 = Me.Txt
  loc_10940DB:     Call 0.Method_Proc_220_51_10942280 (CInt(0))
  loc_10940E3:     var_D8.SetFocus
  loc_10940F4:     Proc_220_51_1094228 = &HFF
  loc_10940FA:   End If
  loc_10940FD: Else
  loc_1094138:   Set var_A0 = Me.Txt
  loc_109413E:   Call 0.Method_Proc_220_51_10942280 (CInt(0), var_D8, var_DC, "Select Count(*) From TaxStru Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_C0, -1)
  loc_1094170:   unk_49725C.Execute var_F0 & var_DC & "' And Name <>'" & global_80 & "'", 0, var_104
  loc_1094180:    = var_F0.Item(var_D8)
  loc_1094188:    = var_104.Value
  loc_10941BD:   If (var_D8.Text.Fields > 0) Then
  loc_10941E1:     MsgBox("Duplicate Name", &H40, "Information", var_124, var_144)
  loc_10941FC:     Set var_A0 = Me.Txt
  loc_1094202:     Call 0.Method_Proc_220_51_10942280 (CInt(0))
  loc_109420A:     var_D8.SetFocus
  loc_109421B:     Proc_220_51_1094228 = &HFF
  loc_1094221:   End If
  loc_1094221: End If
  loc_1094221: Proc_220_51_1094228 = var_D8
End Sub

Public Sub Proc_220_52_E3B350
  'Data Table: 497244
  loc_E3B330: Set var_88 = Me.TopCtrl1
  loc_E3B336: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E()
  loc_E3B34B: If ( = "Browse") Then
  loc_E3B34E:   Exit Sub
  loc_E3B34F: End If
  loc_E3B34F: Exit Sub
End Sub

Public Sub Proc_220_53_10C9F1C(arg_C) '10C9F1C
  'Data Table: 497244
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_158 As Variant
  loc_10C9C43: var_A0 = CLng(Me.FGrid.Col)
  loc_10C9C53: If (var_A0 = CLng(2)) Then
  loc_10C9C76:   var_A6 = Me.EOF
  loc_10C9CA4:   Set var_8C = Me.TxtGrid
  loc_10C9CAA:   Call 0.Method_Proc_220_53_10C9F1C0 (arg_C, var_AC, var_B0)
  loc_10C9CB2:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_10C9CCA:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_10C9CE0:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C9CE8:     var_E0 = CVar(CLng(2)) 'Long
  loc_10C9CED:     var_100 = vbNullString
  loc_10C9CF7:     Set var_AC = Me.FGrid
  loc_10C9CFD:     LateIdCallSt
  loc_10C9D22:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C9D2A:     var_E0 = CVar(CLng(1)) 'Long
  loc_10C9D2F:     var_100 = vbNullString
  loc_10C9D39:     Set var_AC = Me.FGrid
  loc_10C9D3F:     LateIdCallSt
  loc_10C9D54:   Else
  loc_10C9D57:     Call Proc_220_59_FBFEF4(var_A6, var_AC, var_100, var_E0, var_C0)
  loc_10C9D62:     If (var_A6 = 0) Then
  loc_10C9D6A:       Proc_220_53_10C9F1C = 0
  loc_10C9D70:     End If
  loc_10C9D83:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C9D8B:     var_F0 = CVar(CLng(2)) 'Long
  loc_10C9DBE:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10C9DC6:     Set var_138 = Me.FGrid
  loc_10C9DCC:     LateIdCallSt
  loc_10C9DFB:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C9E03:     var_F0 = CVar(CLng(1)) 'Long
  loc_10C9E25:     var_AC = Me.Fields.Item("Code")
  loc_10C9E36:     var_134 = CVar(CStr(var_AC.Value)) 'String
  loc_10C9E3E:     Set var_138 = Me.FGrid
  loc_10C9E44:     LateIdCallSt
  loc_10C9E60:   End If
  loc_10C9E63: Else
  loc_10C9E6A:   If (var_A0 = CLng(3)) Then
  loc_10C9E79:     Set var_8C = Me.TxtGrid
  loc_10C9E7F:     Call 0.Method_Proc_220_53_10C9F1C0 (0, var_AC, var_B0, var_138, var_134, var_F0, var_D0)
  loc_10C9E87:     var_138 = var_AC.Text
  loc_10C9EAA:     var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C9EB2:     var_100 = CVar(CLng(3)) 'Long
  loc_10C9EDF:     var_158 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_10C9EE7:     Set var_138 = Me.FGrid
  loc_10C9EED:     LateIdCallSt
  loc_10C9F10:   End If
  loc_10C9F10: End If
  loc_10C9F15: Proc_220_53_10C9F1C = &HFF
End Sub

Public Sub Proc_220_54_F20BF4
  'Data Table: 497244
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_33BC As String
  loc_F20AF6: global_80 = vbNullString
  loc_F20B08: Set var_8C = Me.Txt
  loc_F20B0E: Call 0.Method_Proc_220_54_F20BF4C (var_8E, var_86)
  loc_F20B1E: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F20B34:   Set var_8C = Me.Txt
  loc_F20B3A:   Call 0.Method_Proc_220_54_F20BF40 (CInt(var_86), var_98)
  loc_F20B42:   var_98.Text = vbNullString
  loc_F20B5E:   Set var_8C = Me.Txt
  loc_F20B64:   Call 0.Method_Proc_220_54_F20BF40 (CInt(var_86), var_98)
  loc_F20B6C:   var_98.Tag = vbNullString
  loc_F20B7B: Next var_92 'Byte
  loc_F20B94: Me.FGrid.Rows = 1
  loc_F20BB1: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F20BB9: Set var_98 = Me.FGrid
  loc_F20BE8: Me.FGrid.FixedRows = 1
  loc_F20BF0: Exit Sub
  loc_F20BF2: var_33BC = CStr(FGrid.DispID_10000)
End Sub

Public Sub Proc_220_55_117193C
  'Data Table: 497244
  Dim var_8C As Integer
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim unk_49725C As Connection15
  Dim var_88 As Recordset15
  Dim var_134 As TextBox
  Dim var_118 As Variant
  Dim var_148 As Variant
  Dim var_128 As Variant
  loc_1171580: On Error Goto loc_1171934
  loc_1171585: var_8C = 1
  loc_117159F: If (Me.RecordCount > 0) Then
  loc_11715AF:   var_D4 = "Select TaxStru.*,RevMast.Code as TaxCode, RevMast.Name as TaxName From TaxStru Left Join RevMast on RevMast.Code=TaxStru.TaxCode  where RevMast.FieldType='T' and TaxStru.Code='"
  loc_11715F8:   unk_49725C.Execute CStr(var_D4 & Me.Fields.Item("SearchCode").Value & "' Order by Sno"), var_128, -1
  loc_1171603:   Set var_88 = var_12C
  loc_1171631:   If (var_88.RecordCount > 0) Then
  loc_1171634:     Call Proc_220_54_F20BF4(var_12C)
  loc_1171639:     ' Referenced from: 11718FB
  loc_1171648:     If Not(var_88.EOF) Then
  loc_1171684:       Set var_12C = Me.Txt
  loc_117168A:       Call 0.Method_Proc_220_55_117193C0 (CInt(0), var_134)
  loc_1171692:       var_134.Tag = CStr(var_88.Fields.Item("Code").Value)
  loc_11716E1:       Set var_12C = Me.Txt
  loc_11716E7:       Call 0.Method_Proc_220_55_117193C0 (CInt(0), var_134)
  loc_11716EF:       var_134.Text = CStr(var_88.Fields.Item("Name").Value)
  loc_117173B:       Set var_12C = Me.Txt
  loc_1171741:       Call 0.Method_Proc_220_55_117193C0 (CInt(1), var_134)
  loc_1171749:       var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxBeforeDisc")))
  loc_1171761:       Set var_138 = Me.FGrid
  loc_1171764:       var_B0 = vbNullString
  loc_1171779:       var_D4 = CVar(CLng(var_8C)) 'Long
  loc_1171781:       var_118 = CVar(CLng(0)) 'Long
  loc_11717B1:       var_E4 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_11717B8:       LateIdCallSt
  loc_1171807:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(1)), CVar(CLng(var_8C)), var_138, var_E4)) 'String
  loc_117180E:       LateIdCallSt
  loc_117182C:       var_118 = CVar(CLng(2)) 'Long
  loc_1171859:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxName")), var_118, CVar(CLng(var_8C)), var_138, var_E4)) 'String
  loc_1171860:       LateIdCallSt
  loc_1171892:       var_F4 = CVar(CLng(var_8C)) 'Long
  loc_117189A:       var_148 = CVar(CLng(3)) 'Long
  loc_11718A9:       var_D4 = "0.00"
  loc_11718AE:       var_E4 = var_D4
  loc_11718C7:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), var_E4))) 'String
  loc_11718CE:       LateIdCallSt
  loc_11718E6:       Set var_138 = Nothing 
  loc_11718F0:       var_8C = (var_8C + 1)
  loc_11718F6:       var_88.MoveNext
  loc_11718FB:       GoTo loc_1171639
  loc_11718FE:     End If
  loc_1171900:     var_8C = 0
  loc_1171916:     Me.FGrid.FixedRows = 1
  loc_117191E:   End If
  loc_1171921: Else
  loc_1171921:   Call Proc_220_54_F20BF4(var_8C, var_8C, var_138, var_128, 1, 1, var_148)
  loc_1171926: End If
  loc_1171926: Call Proc_220_57_EF3298(var_F4, var_138, var_E4)
  loc_1171930: Set var_88 = Nothing
  loc_1171933: Exit Sub
  loc_1171934: ' Referenced from: 1171580
  loc_1171934: Proc_6_60_E62BC4(var_118, var_D4)
  loc_1171939: Exit Sub
End Sub

Public Sub Proc_220_56_E793D4(arg_C) 'E793D4
  'Data Table: 497244
  Dim var_98 As TextBox
  loc_E79382: Set var_8C = Me.Txt
  loc_E79388: Call 0.Method_Proc_220_56_E793D4C (var_8E, var_86)
  loc_E79398: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E793AE:   Set var_8C = Me.Txt
  loc_E793B4:   Call 0.Method_Proc_220_56_E793D40 (CInt(var_86), var_98)
  loc_E793BC:   var_98.Enabled = arg_C
  loc_E793CB: Next var_92 'Byte
  loc_E793D1: Exit Sub
End Sub

Public Sub Proc_220_57_EF3298
  'Data Table: 497244
  loc_EF31DC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF31EE:   Me.DGHelp.Visible = False
  loc_EF31F6: End If
  loc_EF3212: If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_EF3224:   Me.DGTaxMast.Visible = False
  loc_EF322C: End If
  loc_EF3247: If (Me.FrmList.Visible = &HFF) Then
  loc_EF3256:   Me.FrmList.Visible = False
  loc_EF325E: End If
  loc_EF327A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF328C:   Me.FGPoint.Visible = False
  loc_EF3294: End If
  loc_EF3294: Exit Sub
End Sub

Public Sub Proc_220_58_EE100C(arg_C) 'EE100C
  'Data Table: 497244
  Dim var_8C As TextBox
  Dim var_3301 As Double
  loc_EE0F60: Call Proc_220_57_EF3298()
  loc_EE0F70: Set var_88 = Me.Txt
  loc_EE0F76: Call 0.Method_Proc_220_58_EE100C0 (CInt(0))
  loc_EE0F9F: If (Proc_6_27_EA565C(var_8C, "Name") = 0) Then
  loc_EE0FA2:   Exit Sub
  loc_EE0FA3: End If
  loc_EE0FDA: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE0FDD:   Call TopCtrl1_UnknownEvent_19()
  loc_EE0FE5: Else
  loc_EE0FEF:   Set var_88 = Me.Txt
  loc_EE0FF5:   Call 0.Method_Proc_220_58_EE100C0 (arg_C, var_8C)
  loc_EE0FFD:   var_8C.SetFocus
  loc_EE1009: End If
  loc_EE1009: Exit Sub
  loc_EE100A: var_3301 = var_8C
End Sub

Public Sub Proc_220_59_FBFEF4
  'Data Table: 497244
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBFD77: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FBFD7C:   var_92 = 2 'Byte
  loc_FBFD80: End If
  loc_FBFD89: Set var_98 = Me.TxtGrid
  loc_FBFD8F: Call 0.Method_Proc_220_59_FBFEF40 (0, var_B0)
  loc_FBFDB2: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBFDE6: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBFE0A:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBFE0D:     GoTo loc_FBFEDF
  loc_FBFE10:   End If
  loc_FBFE14:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBFE3E:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBFE48:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBFE7D:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBFEA1:     MsgBox("Duplicate Revenue Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBFEBA:     Set var_98 = Me.TxtGrid
  loc_FBFEC0:     Call 0.Method_Proc_220_59_FBFEF40 (0, var_B0, CVar(CLng(var_92)))
  loc_FBFEC8:     var_B0.SetFocus
  loc_FBFED9:     Proc_220_59_FBFEF4 = 0
  loc_FBFEDF:     ' Referenced from: FBFE0D
  loc_FBFEDF:   End If
  loc_FBFEE2: Next var_D4 'Integer
  loc_FBFEEC: Proc_220_59_FBFEF4 = &HFF
End Sub
