VERSION 5.00
Begin VB.Form salmarCompProfile
  Caption = "Company Profile"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11880
  ClientHeight = 7515
  Begin CommonDialog CDLG
  End
  Begin Frame Frame1
    Left = 375
    Top = 4245
    Width = 6465
    Height = 855
    TabIndex = 3
    Begin CommandButton cmdRpt
      Caption = "&Report"
      Left = 4335
      Top = 240
      Width = 1470
      Height = 420
      TabIndex = 6
    End
    Begin CommandButton CmdSave
      Caption = "&Save/Exit"
      BackColor = &H808080&
      Left = 585
      Top = 240
      Width = 1845
      Height = 420
      TabIndex = 4
      Appearance = 0 'Flat
    End
    Begin CommandButton CmdCancel
      Caption = "&Cancel"
      BackColor = &H808080&
      Left = 2460
      Top = 240
      Width = 1845
      Height = 420
      TabIndex = 5
      Appearance = 0 'Flat
    End
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11880
    Height = 375
    Visible = 0   'False
    TabIndex = 2
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 7380
    Top = 825
    Width = 1080
    Height = 240
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 360
    Top = 660
    Width = 6450
    Height = 3660
    TabIndex = 0
  End
  Begin Image Picture1
    Left = 7740
    Top = 795
    Width = 2865
    Height = 3285
    Stretch = -1  'True
  End
  Begin Shape Shape1
    Left = 7770
    Top = 720
    Width = 2895
    Height = 3330
  End
End

Attribute VB_Name = "salmarCompProfile"

Private global_56 As Integer
Private global_58 As Integer

Private Sub FGrid_UnknownEvent_0 'E67FFC
  'Data Table: 42E584
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E67FBB: Set var_88 = Me.TxtGrid
  loc_E67FC1: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E67FC9: var_8C.Visible = False
  loc_E67FF8: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_E67FFB: End If
  loc_E67FFB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6A7E8
  'Data Table: 42E584
  Dim var_88 As MSHFlexGrid
  Dim var_9C As TextBox
  loc_E6A798: Call Proc_181_18_E30670()
  loc_E6A7BC: If (CLng(Me.FGrid.Col) = 0) Then
  loc_E6A7CA:   Set var_88 = Me.TxtGrid
  loc_E6A7D0:   Call 0.Method_FGrid_UnknownEvent_90 (0, var_9C)
  loc_E6A7D8:   var_9C.Visible = False
  loc_E6A7E4: End If
  loc_E6A7E4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1007738
  'Data Table: 42E584
  Dim var_98 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim KeyCode As Integer
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1007534: Set var_88 = Me.TopCtrl1
  loc_100753A: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_100758A: If CBool(( = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_1007593:   Call Form_KeyDown(KeyCode, Shift)
  loc_1007598: End If
  loc_100759C: Set var_88 = Me.TopCtrl1
  loc_10075A2: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_10075B7: If ( = "Browse") Then
  loc_10075BA:   Exit Sub
  loc_10075BB: End If
  loc_100762F: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_100763A:   var_DC = "+{Tab}"
  loc_1007640:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_100764A:   KeyCode = 0
  loc_100764D: End If
  loc_1007653: global_56 = KeyCode
  loc_1007679: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_100769D: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_10076C3:   If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_10076D9:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10076F1:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10076F6:     var_11C = vbNullString
  loc_1007700:     Set var_E4 = Me.FGrid
  loc_1007706:     LateIdCallSt
  loc_100771E:   End If
  loc_100771E: End If
  loc_1007724: If (KeyCode = &HD) Then
  loc_100772C:   global_58 = 0
  loc_100772F: End If
  loc_1007731: KeyCode = 0
  loc_1007734: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0DA60
  'Data Table: 42E584
  loc_E0DA51: Call FGrid_UnknownEvent_C()
  loc_E0DA5B: global_58 = 0
  loc_E0DA5E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'EE014C
  'Data Table: 42E584
  Dim var_88 As MSHFlexGrid
  loc_EE00A0: Set var_88 = Me.TopCtrl1
  loc_EE00A6: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_EE00BB: If ( = "Browse") Then
  loc_EE00BE:   Exit Sub
  loc_EE00BF: End If
  loc_EE00E2: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_EE0123:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_EE0135: End If
  loc_EE013F: If (CLng(KeyCode) <> &HD) Then
  loc_EE0147:   global_58 = &HFF
  loc_EE014A: End If
  loc_EE014A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FD1524
  'Data Table: 42E584
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_BC As Variant
  loc_FD1360: Set var_8C = Me.TopCtrl1
  loc_FD1366: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_FD137B: If ( = "Browse") Then
  loc_FD137E:   Exit Sub
  loc_FD137F: End If
  loc_FD139C: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FD139F:   Exit Sub
  loc_FD13A0: End If
  loc_FD13B1: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FD13D3:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FD140D:     If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FD142F:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FD1445:         var_9C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FD144E:         Set var_110 = Me.FGrid
  loc_FD1469:       Else
  loc_FD147C:         Me.FGrid.Rows = 1
  loc_FD1499:         var_BC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FD14A1:         Set var_110 = Me.FGrid
  loc_FD14D0:         Me.FGrid.FixedRows = 1
  loc_FD14D8:       End If
  loc_FD14D8:     End If
  loc_FD14DB:   Else
  loc_FD14FC:     MsgBox("No Entries To Delete", &H10, "Delete !", var_EC, var_10C)
  loc_FD150C:   End If
  loc_FD1510:   Set var_8C = Me.FGrid
  loc_FD1521: End If
  loc_FD1521: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E305B4
  'Data Table: 42E584
  Dim var_8C As TextBox
  loc_E30597: Set var_88 = Me.TxtGrid
  loc_E3059D: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E305A5: var_8C.Visible = False
  loc_E305B1: Exit Sub
End Sub

Private Sub Picture1_DblClick() '1036CF0
  'Data Table: 42E584
  Dim var_94 As String
  Dim var_A8 As CommonDialog
  Dim var_BC As String
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_A4 As String
  loc_1036AD4: On Error Goto loc_1036C92
  loc_1036AE7: Me.CDLG.Filter = "*.*"
  loc_1036B0E: Me.CDLG.FileName = Me.CDLG._Action
  loc_1036B27: If (CStr() <> vbNullString) Then
  loc_1036B34:   Me.CDLG.FileName = 
  loc_1036B3C:   var_BC = CStr()
  loc_1036B49:   Me.Picture1.Tag = var_BC
  loc_1036B65:   Me.CDLG.FileName = 
  loc_1036B6D:   var_D0 = CVar(CStr()) 'String
  loc_1036B73:   var_E0 = Trim(var_D0)
  loc_1036B7C:   Set var_C0 = Me.CDLG
  loc_1036B82:   var_C0.FileName = 
  loc_1036BA0:   var_F0 = Right(var_E0, 3)
  loc_1036BDB:   var_A4 = "AVI"
  loc_1036C09:   If CBool((Ucase(var_F0) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_A4)) Then
  loc_1036C1A:     var_94 = "Invalid Format"
  loc_1036C25:     MsgBox(var_94, 0, var_D0, var_E0, var_F0)
  loc_1036C38:   Else
  loc_1036C4F:     Set var_A8 = Me.CDLG
  loc_1036C55:     var_A8.FileName = var_94
  loc_1036C5D:     var_D0 = CVar(CStr(var_A4)) 'String
  loc_1036C67:     Me.var_A8.LoadPicture var_D0, var_190, var_1A0, var_C0, 
  loc_1036C7C:     Me.Picture1.Picture = var_C0
  loc_1036C91:   End If
  loc_1036C91: End If
  loc_1036C91: Exit Sub
  loc_1036C92: ' Referenced from: 1036AD4
  loc_1036C9A: Set var_A8 = Err()
  loc_1036CA0: Call 0.Method_arg_1C (var_1AC)
  loc_1036CB1: If (var_1AC <> 0) Then
  loc_1036CCA:   Set var_A8 = Err()
  loc_1036CD0:   Call 0.Method_arg_2C (var_BC, 0, var_D0)
  loc_1036CDB:   MsgBox(CVar(var_BC), var_E0, var_F0, , )
  loc_1036CEE: End If
  loc_1036CEE: Exit Sub
End Sub

Private Sub cmdRpt_Click() 'FA7718
  'Data Table: 42E584
  Dim unk_42E58B As Connection15
  Dim var_88 As Recordset15
  Dim var_A4 As Variant
  Dim var_11E As Integer
  loc_FA75C0: unk_42E58B.Execute "select * FROM CompanyProfile WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')", var_B4, -1
  loc_FA75CB: Set var_88 = var_B8
  loc_FA75EF: If (var_88.RecordCount = 0) Then
  loc_FA7600:   var_A4 = "No Record Present For Printing"
  loc_FA760B:   MsgBox(var_A4, 0, var_DC, var_FC, var_11C)
  loc_FA761B:   Exit Sub
  loc_FA761C: End If
  loc_FA7632: Set var_B8 = var_88 
  loc_FA763E: var_11E = CreateFieldDefFile(var_B8, MemVar_1F920B4 & "\CompanyProfile.ttx")
  loc_FA7672: Call 0.Method_arg_1C (MemVar_1F920B4 & "\CompanyProfile.RPT", var_A4, var_B8, var_11E)
  loc_FA768D: Call unk_42E598.g
  loc_FA76AC: Call 0.Method_arg_64 (var_B8, CVar(var_B8), var_CC, var_EC)
  loc_FA76B4: Call 0.Method_arg_2C (var_11E, &HFF)
  loc_FA76C2: Call 0.Method_arg_150 (var_B8)
  loc_FA76CC: Set var_124 = Nothing
  loc_FA76E8: Set var_B8 = var_B8 
  loc_FA76F4: Proc_6_99_1483714(var_B8, 0, "Company Profile")
  loc_FA76FF: MemVar_1F921E4 = var_B8
  loc_FA7712: Set var_88 = Nothing
  loc_FA7715: Exit Sub
End Sub

Private Sub Form_Load() '115259C
  'Data Table: 42E584
  Dim var_8C As String
  Dim unk_42E58B As Connection15
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_E8 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_BC As Variant
  Dim var_118 As Variant
  loc_1152208: On Error Goto loc_1152557
  loc_115220B: Call IniGrid()
  loc_1152224: var_8C = "SELECT * FROM CompanyProfile WHERE Site_Code='" & MemVar_1F92070
  loc_1152242: unk_42E58B.Execute var_8C & "' AND (LogSite_Code='" & MemVar_1F92078 & "' OR LogSite_Code='HO')", var_B8, -1
  loc_1152253: Set global_52 = var_BC
  loc_1152283: If (Me.RecordCount > 0) Then
  loc_11522A0:   For var_C8 = CByte(1) To CByte(Me.RecordCount): var_86 = var_C8 'Byte
  loc_11522AB:     var_A8 = CVar(CLng(var_86)) 'Long
  loc_11522B3:     var_E8 = CVar(CLng(0)) 'Long
  loc_11522BE:     var_B8 = CVar(CStr(var_86)) 'String
  loc_11522C6:     Set var_BC = Me.FGrid
  loc_11522CC:     LateIdCallSt
  loc_11522FE:     var_BC = Me.Fields
  loc_1152317:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_BC.Item("FieldName")), CVar(CLng(1)), CVar(CLng(var_86)), var_BC, CVar(var_BC.Item("FieldName")))) 'String
  loc_1152325:     LateIdCallSt
  loc_1152348:     var_F8 = CVar(CLng(2)) 'Long
  loc_1152378:     var_118 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("FieldValue")), var_F8, CVar(CLng(var_86)), Me.FGrid, var_118)) 'String
  loc_1152380:     Set var_12C = Me.FGrid
  loc_1152386:     LateIdCallSt
  loc_11523B3:     If (CLng(var_86) < Me.RecordCount) Then
  loc_11523B6:       var_A8 = vbNullString
  loc_11523C0:       Set var_BC = Me.FGrid
  loc_11523D1:     End If
  loc_11523FE:     var_D8 = "PicturePath"
  loc_1152410:     If (Me.Fields.Item("FieldName").Value = var_D8) Then
  loc_1152453:       Me.Global.LoadPicture CVar(Me.Fields.Item("FieldValue")), var_D8, var_E8, var_F8, var_108
  loc_1152468:       Me.Picture1.Picture = var_12C
  loc_1152479:     End If
  loc_115247F:     Me.MoveNext
  loc_1152487:   Next var_C8 'Byte
  loc_11524A0:   Me.FGrid.Row = 1
  loc_11524BB:   Me.FGrid.Col = 2
  loc_11524C6: Else
  loc_11524DF:   MsgBox("No Company Profile Fields Are Defined! First Specify Them", &H40, var_118, var_144, var_154)
  loc_11524EF: End If
  loc_11524FB: Set var_BC = Me.TopCtrl1
  loc_1152501: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000F(5800)
  loc_1152508: .left = 
  loc_115251C: Set var_BC = Me.TopCtrl1
  loc_1152522: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E("Add")
  loc_115252B: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_115254E: Proc_6_23_DFBA28(Me, 4425)
  loc_1152556: Exit Sub
  loc_1152557: ' Referenced from: 1152208
  loc_115255F: Set var_BC = Err()
  loc_1152565: Call 0.Method_arg_2C (var_8C)
  loc_1152586: MsgBox(CVar(var_8C), &H40, "Information", var_144, var_154)
  loc_1152599: Exit Sub
  loc_115259A: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0F6C4
  'Data Table: 42E584
  loc_E0F6BB: Set global_52 = Nothing
  loc_E0F6C2: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E895E8
  'Data Table: 42E584
  loc_E89584: On Error Goto loc_E895A4
  loc_E8959B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E895A3: Exit Sub
  loc_E895A4: ' Referenced from: E89584
  loc_E895AC: Set var_88 = Err()
  loc_E895B2: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E895D3: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E895E6: Exit Sub
  loc_E895E7: Exit Sub
End Sub

Private Sub cmdCancel_Click() 'E15B40
  'Data Table: 42E584
  loc_E15B35: Me.Global.Unload Me
  loc_E15B3D: Exit Sub
End Sub

Private Sub CmdSave_Click() '10EC9A0
  'Data Table: 42E584
  Dim var_224 As Variant
  Dim var_244 As Variant
  Dim var_268 As Variant
  Dim var_164 As Variant
  Dim var_288 As Variant
  Dim var_298 As Variant
  Dim unk_42E58B As Connection15
  Dim var_2DC As Variant
  loc_10EC6EC: For var_A0 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Byte
  loc_10EC72A:   If (CStr(Me.FGrid.TextMatrix)) = "PicturePath") Then
  loc_10EC737:     Me.CDLG.FileName = CVar(CLng(1))
  loc_10EC745:     Proc_6_17_EAA2B0(var_104, CVar(CStr(CVar(CLng(var_86)))))
  loc_10EC758:     Proc_6_7_F25D88(var_1E4, Now)
  loc_10EC762:     var_224 = CVar(CLng(var_86)) 'Long
  loc_10EC76A:     var_244 = CVar(CLng(1)) 'Long
  loc_10EC779:     var_268 = Me.FGrid.TextMatrix)
  loc_10EC7C0:     var_164 = "UPDATE CompanyProfile SET FieldValue= " & var_104 & ",Site_Code='" & CVar(MemVar_1F92070) & "', LogSite_code='" & CVar(MemVar_1F92078) 
  loc_10EC7F7:     var_288 = var_164 & "',U_Name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_1E4 & ", U_AE='E'  WHERE FieldName='" & CVar(CStr(var_268)) 
  loc_10EC80E:     unk_42E58B.Execute CStr(var_288 & "'"), var_2C8, -1
  loc_10EC84D:   Else
  loc_10EC87A:     Proc_6_17_EAA2B0(var_104, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_86)), var_2CC)
  loc_10EC88D:     Proc_6_7_F25D88(var_1E4, Now, var_268)
  loc_10EC897:     var_298 = CVar(CLng(var_86)) 'Long
  loc_10EC89F:     var_2DC = CVar(CLng(1)) 'Long
  loc_10EC8F5:     var_164 = "UPDATE CompanyProfile SET FieldValue= " & var_104 & ",Site_Code='" & CVar(MemVar_1F92070) & "', LogSite_code='" & CVar(MemVar_1F92078) 
  loc_10EC92C:     var_288 = var_164 & "',U_Name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_1E4 & ", U_AE='E'  WHERE FieldName='" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_10EC943:     unk_42E58B.Execute CStr(var_288 & "'"), var_2C8, -1
  loc_10EC97F:   End If
  loc_10EC982: Next var_A0 'Byte
  loc_10EC995: Me.Global.Unload Me
  loc_10EC99D: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F6AF48
  'Data Table: 42E584
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_114 As Long
  loc_F6AE33: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F6AE3C: Set var_9C = Me.FGrid
  loc_F6AE72: Set var_104 = Me.TxtGrid
  loc_F6AE78: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F6AE80: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_F6AEAD: Set var_88 = Me.TxtGrid
  loc_F6AEB3: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_F6AEBB: var_9C.MaxLength = 0
  loc_F6AED3: If (Index = 0) Then
  loc_F6AEE9:   var_114 = CLng(Me.FGrid.Col)
  loc_F6AEF9:   If (var_114 = CLng(2)) Then
  loc_F6AF0A:     Set var_88 = Me.TxtGrid
  loc_F6AF10:     Call 0.Method_TxtGrid_GotFocus0 (0, var_9C, &H64)
  loc_F6AF18:     var_9C.MaxLength = var_114
  loc_F6AF2D:     If (global_58 = 0) Then
  loc_F6AF38:       var_10C = "{Home}+{End}"
  loc_F6AF3E:       Proc_303_0_FB9B68(CStr(Me.FGrid.TextMatrix)), 0)
  loc_F6AF46:     End If
  loc_F6AF46:   End If
  loc_F6AF46: End If
  loc_F6AF46: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1033C74
  'Data Table: 42E584
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_DC As Variant
  loc_1033A40: If (KeyCode = 0) Then
  loc_1033A4D:   If (CLng(Shift) = &H1B) Then
  loc_1033A5D:     Set var_8C = Me.TxtGrid
  loc_1033A63:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1033A7D:     Set var_98 = Me.TxtGrid
  loc_1033A83:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1033A8B:     var_9C.Text = var_90.Tag
  loc_1033AA2:     Set var_8C = Me.FGrid
  loc_1033ABF:     Set var_8C = Me.TxtGrid
  loc_1033AC5:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1033ACD:     var_90.Visible = FGrid.DispID_8001
  loc_1033AE7:     Set var_8C = Me.TxtGrid
  loc_1033AED:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_1033AF5:     var_90.MaxLength = 0
  loc_1033B01:     Exit Sub
  loc_1033B02:   End If
  loc_1033B25:   If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_1033B68:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_58 = &HFF))) Then
  loc_1033B71:       Call Proc_181_19_F8A2C8(KeyCode, var_B2)
  loc_1033BB8:       If ((var_B2 = &HFF) And (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_1033C04:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, &HFF, CByte((CInt(2) + 1)))
  loc_1033C2D:         var_DC = CVar((CLng(Me.FGrid.Col) + 1)) 'Long
  loc_1033C36:         Set var_90 = Me.FGrid
  loc_1033C3C:         var_90.Col = var_DC
  loc_1033C4E:       Else
  loc_1033C59:         Set var_8C = Me.TxtGrid
  loc_1033C5F:         Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0, 0)
  loc_1033C67:         var_90.Visible = False
  loc_1033C73:       End If
  loc_1033C73:     End If
  loc_1033C73:   End If
  loc_1033C73: End If
  loc_1033C73: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22E90
  'Data Table: 42E584
  Dim arg_10 As Integer
  loc_E22E78: If (Cancel = 0) Then
  loc_E22E81:   Call Proc_181_19_F8A2C8(Cancel, var_88)
  loc_E22E8A:   arg_10 = Not(var_88)
  loc_E22E8D: End If
  loc_E22E8D: Exit Sub
End Sub

Public Sub IniGrid() 'F2F1C4
  'Data Table: 42E584
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_DC As String
  loc_F2F0A8: Set var_8C = Me.FGrid
  loc_F2F0AB: var_9C = 0
  loc_F2F0B7: var_BC = CVar(CLng(0)) 'Long
  loc_F2F0BC: var_DC = "Sr No."
  loc_F2F0C5: LateIdCallSt
  loc_F2F0D0: var_9C = CVar(CLng(0)) 'Long
  loc_F2F0D5: var_BC = &H2BC
  loc_F2F0E1: LateIdCallSt
  loc_F2F0EC: var_9C = CVar(CLng(0)) 'Long
  loc_F2F0F7: var_BC = CVar(CInt(1)) 'Integer
  loc_F2F0FE: LateIdCallSt
  loc_F2F106: var_9C = 0
  loc_F2F112: var_BC = CVar(CLng(1)) 'Long
  loc_F2F117: var_DC = "Field Name"
  loc_F2F120: LateIdCallSt
  loc_F2F12B: var_9C = CVar(CLng(1)) 'Long
  loc_F2F130: var_BC = &H9C4
  loc_F2F13C: LateIdCallSt
  loc_F2F147: var_9C = CVar(CLng(1)) 'Long
  loc_F2F152: var_BC = CVar(CInt(1)) 'Integer
  loc_F2F159: LateIdCallSt
  loc_F2F161: var_9C = 0
  loc_F2F16D: var_BC = CVar(CLng(2)) 'Long
  loc_F2F172: var_DC = "Field Value"
  loc_F2F17B: LateIdCallSt
  loc_F2F186: var_9C = CVar(CLng(2)) 'Long
  loc_F2F18B: var_BC = &H9C4
  loc_F2F197: LateIdCallSt
  loc_F2F1A2: var_9C = CVar(CLng(2)) 'Long
  loc_F2F1AD: var_BC = CVar(CInt(1)) 'Integer
  loc_F2F1B4: LateIdCallSt
  loc_F2F1BE: Set var_8C = Nothing 
  loc_F2F1C2: Exit Sub
End Sub

Public Sub Proc_181_18_E30670
  'Data Table: 42E584
  loc_E30650: Set var_88 = Me.TopCtrl1
  loc_E30656: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E3066B: If ( = "Browse") Then
  loc_E3066E:   Exit Sub
  loc_E3066F: End If
  loc_E3066F: Exit Sub
End Sub

Public Sub Proc_181_19_F8A2C8(arg_C) 'F8A2C8
  'Data Table: 42E584
  Dim var_94 As MSHFlexGrid
  Dim var_A8 As Long
  Dim var_AC As TextBox
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As String
  Dim var_124 As Variant
  loc_F8A184: If (arg_C = 0) Then
  loc_F8A1AA:   If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_F8A1BA:     Set var_94 = Me.TxtGrid
  loc_F8A1C0:     Call 0.Method_Proc_181_19_F8A2C80 (arg_C, var_AC, var_B0)
  loc_F8A1C8:     var_A8 = var_AC.Text
  loc_F8A1DF:     If (var_B0 = vbNullString) Then
  loc_F8A1F5:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F8A1FD:       var_E0 = CVar(CLng(2)) 'Long
  loc_F8A202:       var_100 = vbNullString
  loc_F8A20C:       Set var_AC = Me.FGrid
  loc_F8A212:       LateIdCallSt
  loc_F8A227:     Else
  loc_F8A254:       Set var_94 = Me.TxtGrid
  loc_F8A25A:       Call 0.Method_Proc_181_19_F8A2C80 (arg_C, var_AC, var_B0, CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)))
  loc_F8A262:       var_AC = var_AC.Text
  loc_F8A26A:       var_124 = CVar(var_B0) 'String
  loc_F8A272:       Set var_128 = Me.FGrid
  loc_F8A278:       LateIdCallSt
  loc_F8A292:     End If
  loc_F8A292:   End If
  loc_F8A292: End If
  loc_F8A2A5: Set var_94 = Me.TxtGrid
  loc_F8A2AB: Call 0.Method_Proc_181_19_F8A2C80 (0, var_AC, 0, &HFF, var_128)
  loc_F8A2B3: var_AC.MaxLength = var_124
  loc_F8A2BF: Proc_181_19_F8A2C8 = var_100
End Sub
