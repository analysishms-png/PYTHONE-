VERSION 5.00
Begin VB.Form frmGuestParamMast
  Caption = "Guest Parameters Master"
  BackColor = &HE0E0E0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmGuestParamMast.frx":0
  LinkTopic = "Form1"
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6750
  ClientHeight = 4020
  LockControls = -1  'True
  Begin Frame Frame2
    BackColor = &HE0E0E0&
    Left = 60
    Top = 3210
    Width = 6630
    Height = 660
    TabIndex = 9
    Begin CommandButton CmdCancel
      Caption = "&Cancel"
      BackColor = &H808080&
      Left = 3300
      Top = 165
      Width = 1845
      Height = 420
      TabIndex = 11
      Appearance = 0 'Flat
    End
    Begin CommandButton CmdSave
      Caption = "&Save/Exit"
      BackColor = &H808080&
      Left = 1440
      Top = 165
      Width = 1845
      Height = 420
      TabIndex = 10
      Appearance = 0 'Flat
    End
  End
  Begin Frame Frame1
    BackColor = &HE0E0E0&
    Left = 3390
    Top = 390
    Width = 3285
    Height = 2820
    TabIndex = 4
    Begin TextBox TxtGrid
      Index = 1
      BackColor = &HFFFFFF&
      Left = 615
      Top = 675
      Width = 915
      Height = 225
      Visible = 0   'False
      TabIndex = 5
      BorderStyle = 0 'None
      MaxLength = 25
      Appearance = 0 'Flat
    End
    Begin MSFlexGrid FGrid1
      Left = 0
      Top = 420
      Width = 3210
      Height = 2325
      TabIndex = 6
    End
    Begin Label Label2
      Caption = "Custom Entry Fields Setup (Tab 2)"
      BackColor = &H656458&
      ForeColor = &H8000000E&
      Left = 30
      Top = 120
      Width = 3225
      Height = 285
      TabIndex = 8
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame framhold
    BackColor = &HE0E0E0&
    Left = 60
    Top = 390
    Width = 3285
    Height = 2820
    TabIndex = 3
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HFFFFFF&
      Left = 615
      Top = 675
      Width = 915
      Height = 225
      Visible = 0   'False
      TabIndex = 1
      BorderStyle = 0 'None
      MaxLength = 25
      Appearance = 0 'Flat
    End
    Begin MSFlexGrid FGrid
      Left = 0
      Top = 420
      Width = 3210
      Height = 2325
      TabIndex = 0
    End
    Begin Label Label1
      Caption = "Custom Entry Fields Setup (Tab 1)"
      BackColor = &H656458&
      ForeColor = &H8000000E&
      Left = 45
      Top = 120
      Width = 3195
      Height = 285
      TabIndex = 7
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8250
    Height = 375
    Visible = 0   'False
    TabIndex = 2
  End
End

Attribute VB_Name = "frmGuestParamMast"

Private global_64 As Integer
Private global_56 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) 'FC64A8
  'Data Table: 441630
  Dim var_88 As MSFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_10E As Integer
  Dim var_114 As Long
  Dim var_11C As Long
  loc_FC6317: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC6320: Set var_9C = Me.FGrid
  loc_FC6356: Set var_104 = Me.TxtGrid
  loc_FC635C: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_FC6364: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_FC6391: Set var_88 = Me.TxtGrid
  loc_FC6397: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_FC639F: var_9C.MaxLength = 0
  loc_FC63AE: var_10E = Index
  loc_FC63B7: If (var_10E = 0) Then
  loc_FC63CD:   var_114 = CLng(Me.FGrid.Col)
  loc_FC63DD:   If (var_114 = CLng(1)) Then
  loc_FC63EE:     Set var_88 = Me.TxtGrid
  loc_FC63F4:     Call 0.Method_TxtGrid_GotFocus0 (0, var_9C, &H19)
  loc_FC63FC:     var_9C.MaxLength = var_114
  loc_FC6411:     If (global_56 = 0) Then
  loc_FC641C:       var_10C = "{Home}+{End}"
  loc_FC6422:       Proc_303_0_FB9B68(CStr(Me.FGrid.TextMatrix)), 0)
  loc_FC642A:     End If
  loc_FC642A:   End If
  loc_FC642D: Else
  loc_FC6433:   If (var_10E = 1) Then
  loc_FC6449:     var_11C = CLng(Me.FGrid1.Col)
  loc_FC6459:     If (var_11C = CLng(1)) Then
  loc_FC646A:       Set var_88 = Me.TxtGrid
  loc_FC6470:       Call 0.Method_TxtGrid_GotFocus0 (1, var_9C, &H19)
  loc_FC6478:       var_9C.MaxLength = var_11C
  loc_FC648D:       If (global_56 = 0) Then
  loc_FC6498:         var_10C = "{Home}+{End}"
  loc_FC649E:         Proc_303_0_FB9B68(CStr(Me.FGrid.TextMatrix)), 0)
  loc_FC64A6:       End If
  loc_FC64A6:     End If
  loc_FC64A6:   End If
  loc_FC64A6: End If
  loc_FC64A6: Exit Sub
  loc_FC64A7: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1169E74
  'Data Table: 441630
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSFlexGrid
  Dim var_B0 As Long
  loc_1169AAB: var_86 = KeyCode
  loc_1169AB4: If (var_86 = 0) Then
  loc_1169AC1:   If (CLng(Shift) = &H1B) Then
  loc_1169AD1:     Set var_8C = Me.TxtGrid
  loc_1169AD7:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1169ADF:     var_94 = var_90.Tag
  loc_1169AF1:     Set var_98 = Me.TxtGrid
  loc_1169AF7:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1169AFF:     var_9C.Text = var_94
  loc_1169B16:     Set var_8C = Me.FGrid
  loc_1169B33:     Set var_8C = Me.TxtGrid
  loc_1169B39:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1169B41:     var_90.Visible = FGrid.DispID_8001
  loc_1169B5B:     Set var_8C = Me.TxtGrid
  loc_1169B61:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_1169B69:     var_90.MaxLength = 0
  loc_1169B75:     Exit Sub
  loc_1169B76:   End If
  loc_1169B89:   var_B0 = CLng(Me.FGrid.Col)
  loc_1169B99:   If (var_B0 = CLng(1)) Then
  loc_1169BDC:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_1169BE5:       Call Proc_45_28_10737F0(KeyCode, var_B2)
  loc_1169C10:       If ((var_B2 = &HFF) And (CLng(Me.FGrid.Row) < 8)) Then
  loc_1169C1E:         Set var_9C = Me.TxtGrid
  loc_1169C47:         Set var_90 = var_9C
  loc_1169C56:         Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_56, 1)
  loc_1169C69:       Else
  loc_1169C74:         Set var_8C = Me.TxtGrid
  loc_1169C7A:         Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0, 0)
  loc_1169C82:         var_90.Visible = False
  loc_1169C8E:       End If
  loc_1169C8E:     End If
  loc_1169C8E:   End If
  loc_1169C91: Else
  loc_1169C97:   If (var_86 = 1) Then
  loc_1169CA4:     If (CLng(Shift) = &H1B) Then
  loc_1169CB4:       Set var_8C = Me.TxtGrid
  loc_1169CBA:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_1169CC2:       0 = var_90.Tag
  loc_1169CD4:       Set var_98 = Me.TxtGrid
  loc_1169CDA:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_94)
  loc_1169CE2:       var_9C.Text = var_B0
  loc_1169CF9:       Set var_8C = Me.FGrid
  loc_1169D16:       Set var_8C = Me.TxtGrid
  loc_1169D1C:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1169D24:       var_90.Visible = FGrid.DispID_8001
  loc_1169D3F:       Set var_8C = Me.TxtGrid
  loc_1169D45:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1169D4D:       var_90.MaxLength = 0
  loc_1169D59:       Exit Sub
  loc_1169D5A:     End If
  loc_1169D7D:     If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_1169DC0:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_1169DC9:         Call Proc_45_28_10737F0(KeyCode, var_B2)
  loc_1169DF4:         If ((var_B2 = &HFF) And (CLng(Me.FGrid1.Row) < 8)) Then
  loc_1169E2B:           Set var_90 = Me.TxtGrid
  loc_1169E3A:           Proc_6_62_1253BC4(Me.FGrid1, var_90, KeyCode, Shift, global_56, 1)
  loc_1169E4D:         Else
  loc_1169E59:           Set var_8C = Me.TxtGrid
  loc_1169E5F:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0, 0)
  loc_1169E67:           var_90.Visible = False
  loc_1169E73:         End If
  loc_1169E73:       End If
  loc_1169E73:     End If
  loc_1169E73:   End If
  loc_1169E73: End If
  loc_1169E73: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22F38
  'Data Table: 441630
  Dim arg_10 As Integer
  loc_E22F20: If (Cancel = 0) Then
  loc_E22F29:   Call Proc_45_28_10737F0(Cancel, var_88)
  loc_E22F32:   arg_10 = Not(var_88)
  loc_E22F35: End If
  loc_E22F35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'DFC624
  'Data Table: 441630
  loc_DFC620: Exit Sub
End Sub

Private Sub Form_Load() '12F2EF4
  'Data Table: 441630
  Dim unk_441634 As Connection15
  Dim Me As Recordset15
  Dim var_C4 As Long
  Dim var_AC As Fields15
  Dim var_A8 As Variant
  Dim var_104 As Variant
  loc_12F2804: On Error Goto loc_12F2EB0
  loc_12F2807: Call Proc_45_24_103F45C()
  loc_12F2822: unk_441634.Execute "SELECT * FROM GUESTPARAM ", var_A8, -1
  loc_12F2833: Set global_52 = var_AC
  loc_12F2858: If (Me.RecordCount > 0) Then
  loc_12F285B:   var_C4 = 1
  loc_12F2898:   var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("T1Field1")), 1)) 'String
  loc_12F28A6:   LateIdCallSt
  loc_12F28F9:   var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("T1Field2")), 1, 2, Me.FGrid)) 'String
  loc_12F2907:   LateIdCallSt
  loc_12F295A:   var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("T1Field3")), 1, 3, Me.FGrid)) 'String
  loc_12F2968:   LateIdCallSt
  loc_12F29BB:   var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("T1Field4")), 1, 4, Me.FGrid, var_104)) 'String
  loc_12F29C9:   LateIdCallSt
  loc_12F2A1C:   var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("T1Field5")), 1, 5, Me.FGrid, var_104)) 'String
  loc_12F2A2A:   LateIdCallSt
  loc_12F2A7D:   var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("T1Field6")), 1, 6, Me.FGrid, var_104)) 'String
  loc_12F2A8B:   LateIdCallSt
  loc_12F2ADE:   var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("T1Field7")), 1, 7, Me.FGrid, var_104)) 'String
  loc_12F2AEC:   LateIdCallSt
  loc_12F2B3F:   var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("T1Field8")), 1, 8, Me.FGrid, var_104)) 'String
  loc_12F2B4D:   LateIdCallSt
  loc_12F2BA0:   var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("T2Field1")), 1, 1, Me.FGrid, var_104)) 'String
  loc_12F2BAE:   LateIdCallSt
  loc_12F2C01:   var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("T2Field2")), 1, 2, Me.FGrid1, var_104)) 'String
  loc_12F2C0F:   LateIdCallSt
  loc_12F2C62:   var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("T2Field3")), 1, 3, Me.FGrid1, var_104)) 'String
  loc_12F2C70:   LateIdCallSt
  loc_12F2CC3:   var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("T2Field4")), 1, 4, Me.FGrid1, var_104)) 'String
  loc_12F2CD1:   LateIdCallSt
  loc_12F2D24:   var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("T2Field5")), 1, 5, Me.FGrid1, var_104)) 'String
  loc_12F2D32:   LateIdCallSt
  loc_12F2D85:   var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("T2Field6")), 1, 6, Me.FGrid1, var_104)) 'String
  loc_12F2D93:   LateIdCallSt
  loc_12F2DE6:   var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("T2Field7")), 1, 7, Me.FGrid1, var_104)) 'String
  loc_12F2DF4:   LateIdCallSt
  loc_12F2E47:   var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("T2Field8")), 1, 8, Me.FGrid1, var_104)) 'String
  loc_12F2E4F:   Set var_118 = Me.FGrid1
  loc_12F2E55:   LateIdCallSt
  loc_12F2E6B: End If
  loc_12F2E75: Set var_AC = Me.TopCtrl1
  loc_12F2E7B: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E("Add")
  loc_12F2E84: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_0(var_104)
  loc_12F2EA7: Proc_6_23_DFBA28(Me, 4425, 6870, var_104)
  loc_12F2EAF: Exit Sub
  loc_12F2EB0: ' Referenced from: 12F2804
  loc_12F2EB8: Set var_AC = Err()
  loc_12F2EBE: Call 0.Method_arg_2C (var_120, var_104)
  loc_12F2EDF: MsgBox(CVar(var_120), &H40, "Information", var_130, var_140)
  loc_12F2EF2: Exit Sub
  loc_12F2EF3: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E10F3C
  'Data Table: 441630
  loc_E10F33: Set global_52 = Nothing
  loc_E10F3A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8BCE0
  'Data Table: 441630
  loc_E8BC7C: On Error Goto loc_E8BC9C
  loc_E8BC93: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8BC9B: Exit Sub
  loc_E8BC9C: ' Referenced from: E8BC7C
  loc_E8BCA4: Set var_88 = Err()
  loc_E8BCAA: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8BCCB: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8BCDE: Exit Sub
  loc_E8BCDF: Exit Sub
End Sub

Private Sub CmdSave_Click() '13267AC
  'Data Table: 441630
  Dim unk_441634 As Connection15
  Dim var_88 As Variant
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_E0 As Long
  Dim var_BC As Variant
  Dim var_160 As Long
  Dim var_180 As Long
  Dim var_204 As Long
  Dim var_224 As Long
  Dim var_2A8 As Long
  Dim var_2C8 As Long
  Dim var_34C As Long
  Dim var_36C As Long
  Dim var_3F0 As Long
  Dim var_410 As Long
  Dim var_494 As Long
  Dim var_4B4 As Long
  Dim var_538 As Long
  Dim var_558 As Long
  Dim var_5DC As Long
  Dim var_5FC As Long
  Dim var_680 As Long
  Dim var_6A0 As Long
  Dim var_724 As Long
  Dim var_744 As Long
  Dim var_7C8 As Long
  Dim var_7E8 As Long
  Dim var_86C As Long
  Dim var_120 As String
  Dim var_278 As Variant
  Dim var_464 As Variant
  Dim var_650 As Variant
  Dim var_83C As Variant
  Dim var_A28 As Variant
  Dim var_B9C As Variant
  loc_13261A8: On Error Goto loc_1326792
  loc_13261B4: unk_441634.BeginTrans var_8C
  loc_13261D2: var_90 = "delete from GuestParam WHERE SITE_CODE='" & MemVar_1F92070
  loc_13261D9: var_94 = var_90 & "' AND LOGSITE_CODE='"
  loc_13261E0: var_98 = var_94 & MemVar_1F92078
  loc_13261F0: unk_441634.Execute var_98 & "'", var_BC, -1
  loc_1326206: var_AC = 1
  loc_132620F: var_E0 = 1
  loc_1326238: var_160 = 2
  loc_1326241: var_180 = 1
  loc_132626A: var_204 = 3
  loc_1326273: var_224 = 1
  loc_132629C: var_2A8 = 4
  loc_13262A5: var_2C8 = 1
  loc_13262CE: var_34C = 5
  loc_13262D7: var_36C = 1
  loc_1326300: var_3F0 = 6
  loc_1326309: var_410 = 1
  loc_1326332: var_494 = 7
  loc_132633B: var_4B4 = 1
  loc_1326364: var_538 = 8
  loc_132636D: var_558 = 1
  loc_1326396: var_5DC = 1
  loc_132639F: var_5FC = 1
  loc_13263C8: var_680 = 2
  loc_13263D1: var_6A0 = 1
  loc_13263FA: var_724 = 3
  loc_1326403: var_744 = 1
  loc_132642C: var_7C8 = 4
  loc_1326435: var_7E8 = 1
  loc_132645E: var_86C = 5
  loc_1326467: var_88C = 1
  loc_1326534: Proc_6_7_F25D88(var_B4C, Date, 1, 8, 1, 7, 1, 6)
  loc_1326546: var_120 = "insert into GuestParam(T1Field1,T1Field2,T1Field3,T1Field4,T1Field5,T1Field6,T1Field7,T1Field8,T2Field1,T2Field2,T2Field3,T2Field4,T2Field5,T2Field6,T2Field7,T2Field8,Site_Code,U_EntDt,U_AE,lOGSITE_CODE) values ('"
  loc_132656E: var_278 = var_120 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_132659E: var_464 = var_278 & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_13265CE: var_650 = var_464 & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) 
  loc_13265FE: var_83C = var_650 & "','" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) 
  loc_132662E: var_A28 = var_83C & "','" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) 
  loc_1326674: var_B9C = var_A28 & "','" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "','" & CVar(MemVar_1F92070) & "'," & var_B4C & ",'A','" & CVar(MemVar_1F92078) 
  loc_132668B: unk_441634.Execute CStr(var_B9C & "')"), var_BDC, -1
  loc_132676F: var_88 = 0
  loc_1326778: unk_441634.CommitTrans
  loc_132678A: Me.Global.Unload Me
  loc_1326792: ' Referenced from: 13261A8
  loc_1326798: If (var_88 = &HFF) Then
  loc_13267A1:   unk_441634.RollbackTrans
  loc_13267A6: End If
  loc_13267A6: Proc_6_60_E62BC4(var_88, var_BE0, var_88C, var_86C, var_7E8)
  loc_13267AB: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_0 'E2D4F4
  'Data Table: 441630
  Dim var_8C As TextBox
  loc_E2D4D7: Set var_88 = Me.TxtGrid
  loc_E2D4DD: Call 0.Method_Fgrid1_UnknownEvent_00 (1, var_8C)
  loc_E2D4E5: var_8C.Visible = False
  loc_E2D4F1: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'E6AD60
  'Data Table: 441630
  Dim var_88 As MSFlexGrid
  Dim var_9C As TextBox
  loc_E6AD10: Call Proc_45_27_E2B990()
  loc_E6AD34: If (CLng(Me.FGrid1.Col) = 0) Then
  loc_E6AD42:   Set var_88 = Me.TxtGrid
  loc_E6AD48:   Call 0.Method_Fgrid1_UnknownEvent_90 (1, var_9C)
  loc_E6AD50:   var_9C.Visible = False
  loc_E6AD5C: End If
  loc_E6AD5C: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_A(arg_C, arg_10) '100D988
  'Data Table: 441630
  Dim var_98 As Variant
  Dim var_E4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim var_DC As String
  Dim arg_C As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_100D77C: Set var_88 = Me.TopCtrl1
  loc_100D782: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_100D7D2: If CBool(( = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_100D7DB:   Call Form_KeyDown(arg_C, arg_10)
  loc_100D7E0: End If
  loc_100D7E4: Set var_88 = Me.TopCtrl1
  loc_100D7EA: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_100D7FF: If ( = "Browse") Then
  loc_100D802:   Exit Sub
  loc_100D803: End If
  loc_100D877: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_100D882:   var_DC = "+{Tab}"
  loc_100D888:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_100D892:   arg_C = 0
  loc_100D895: End If
  loc_100D89B: global_64 = arg_C
  loc_100D8C1: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_100D8E5: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_100D8FB:   var_EC = CLng(Me.FGrid1.Col)
  loc_100D90B:   If Not (var_EC = CLng(0)) Then
  loc_100D915:     If (var_EC = CLng(1)) Then
  loc_100D918:     End If
  loc_100D92B:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_100D943:     var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_100D948:     var_11C = vbNullString
  loc_100D952:     Set var_E4 = Me.FGrid1
  loc_100D958:     LateIdCallSt
  loc_100D970:   End If
  loc_100D970: End If
  loc_100D976: If (arg_C = &HD) Then
  loc_100D97E:   global_56 = 0
  loc_100D981: End If
  loc_100D983: arg_C = 0
  loc_100D986: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E10640
  'Data Table: 441630
  loc_E10631: Call Fgrid1_UnknownEvent_C()
  loc_E1063B: global_56 = 0
  loc_E1063E: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_C(Index As Integer) 'EEACE4
  'Data Table: 441630
  Dim var_88 As MSFlexGrid
  Dim var_BC As Long
  loc_EEAC2C: Set var_88 = Me.TopCtrl1
  loc_EEAC32: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_EEAC47: If ( = "Browse") Then
  loc_EEAC4A:   Exit Sub
  loc_EEAC4B: End If
  loc_EEAC5E: var_BC = CLng(Me.FGrid1.Col)
  loc_EEAC6E: If Not (var_BC = CLng(0)) Then
  loc_EEAC78:   If (var_BC = CLng(1)) Then
  loc_EEAC7B:   End If
  loc_EEACB9:   Proc_6_63_110ABA4(Me, Me.FGrid1, Me.TxtGrid, 1)
  loc_EEACCB: End If
  loc_EEACD5: If (CLng(Index) <> &HD) Then
  loc_EEACDD:   global_56 = &HFF
  loc_EEACE0: End If
  loc_EEACE0: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_D(arg_C, arg_10) 'FD1D64
  'Data Table: 441630
  Dim var_9C As Variant
  Dim var_8C As MSFlexGrid
  Dim var_BC As Variant
  loc_FD1BA0: Set var_8C = Me.TopCtrl1
  loc_FD1BA6: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_FD1BBB: If ( = "Browse") Then
  loc_FD1BBE:   Exit Sub
  loc_FD1BBF: End If
  loc_FD1BDC: If (CLng(Me.FGrid1.ColSel) = CLng(0)) Then
  loc_FD1BDF:   Exit Sub
  loc_FD1BE0: End If
  loc_FD1BF1: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FD1C13:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FD1C4D:     If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FD1C6F:       If (CLng(Me.FGrid1.Rows) > 2) Then
  loc_FD1C85:         var_9C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FD1C8E:         Set var_110 = Me.FGrid1
  loc_FD1CA9:       Else
  loc_FD1CBC:         Me.FGrid1.Rows = 1
  loc_FD1CD9:         var_BC = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_FD1CE1:         Set var_110 = Me.FGrid1
  loc_FD1D10:         Me.FGrid1.FixedRows = 1
  loc_FD1D18:       End If
  loc_FD1D18:     End If
  loc_FD1D1B:   Else
  loc_FD1D3C:     MsgBox("No Entries To Delete", &H10, "Delete !", var_EC, var_10C)
  loc_FD1D4C:   End If
  loc_FD1D50:   Set var_8C = Me.FGrid
  loc_FD1D61: End If
  loc_FD1D61: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E2BAB4
  'Data Table: 441630
  Dim var_8C As TextBox
  loc_E2BA97: Set var_88 = Me.TxtGrid
  loc_E2BA9D: Call 0.Method_Fgrid1_UnknownEvent_150 (1, var_8C)
  loc_E2BAA5: var_8C.Visible = False
  loc_E2BAB1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E2D134
  'Data Table: 441630
  Dim var_8C As TextBox
  loc_E2D117: Set var_88 = Me.TxtGrid
  loc_E2D11D: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E2D125: var_8C.Visible = False
  loc_E2D131: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6B134
  'Data Table: 441630
  Dim var_88 As MSFlexGrid
  Dim var_9C As TextBox
  loc_E6B0E4: Call Proc_45_26_E2D490()
  loc_E6B108: If (CLng(Me.FGrid.Col) = 0) Then
  loc_E6B116:   Set var_88 = Me.TxtGrid
  loc_E6B11C:   Call 0.Method_FGrid_UnknownEvent_90 (0, var_9C)
  loc_E6B124:   var_9C.Visible = False
  loc_E6B130: End If
  loc_E6B130: Exit Sub
  loc_E6B133:  = 
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '100D018
  'Data Table: 441630
  Dim var_98 As Variant
  Dim var_E4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim var_DC As String
  Dim arg_C As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_100CE0C: Set var_88 = Me.TopCtrl1
  loc_100CE12: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_100CE62: If CBool(( = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_100CE6B:   Call Form_KeyDown(arg_C, arg_10)
  loc_100CE70: End If
  loc_100CE74: Set var_88 = Me.TopCtrl1
  loc_100CE7A: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_100CE8F: If ( = "Browse") Then
  loc_100CE92:   Exit Sub
  loc_100CE93: End If
  loc_100CF07: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_100CF12:   var_DC = "+{Tab}"
  loc_100CF18:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_100CF22:   arg_C = 0
  loc_100CF25: End If
  loc_100CF2B: global_64 = arg_C
  loc_100CF51: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_100CF75: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_100CF8B:   var_EC = CLng(Me.FGrid.Col)
  loc_100CF9B:   If Not (var_EC = CLng(1)) Then
  loc_100CFA5:     If (var_EC = CLng(0)) Then
  loc_100CFA8:     End If
  loc_100CFBB:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_100CFD3:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_100CFD8:     var_11C = vbNullString
  loc_100CFE2:     Set var_E4 = Me.FGrid
  loc_100CFE8:     LateIdCallSt
  loc_100D000:   End If
  loc_100D000: End If
  loc_100D006: If (arg_C = &HD) Then
  loc_100D00E:   global_56 = 0
  loc_100D011: End If
  loc_100D013: arg_C = 0
  loc_100D016: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10E68
  'Data Table: 441630
  loc_E10E59: Call FGrid_UnknownEvent_C()
  loc_E10E63: global_56 = 0
  loc_E10E66: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'EECCDC
  'Data Table: 441630
  Dim var_88 As MSFlexGrid
  Dim var_BC As Long
  loc_EECC24: Set var_88 = Me.TopCtrl1
  loc_EECC2A: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_EECC3F: If ( = "Browse") Then
  loc_EECC42:   Exit Sub
  loc_EECC43: End If
  loc_EECC56: var_BC = CLng(Me.FGrid.Col)
  loc_EECC66: If Not (var_BC = CLng(0)) Then
  loc_EECC70:   If (var_BC = CLng(1)) Then
  loc_EECC73:   End If
  loc_EECCB1:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_EECCC3: End If
  loc_EECCCD: If (CLng(Index) <> &HD) Then
  loc_EECCD5:   global_56 = &HFF
  loc_EECCD8: End If
  loc_EECCD8: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) 'FD1F74
  'Data Table: 441630
  Dim var_9C As Variant
  Dim var_8C As MSFlexGrid
  Dim var_BC As Variant
  loc_FD1DB0: Set var_8C = Me.TopCtrl1
  loc_FD1DB6: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_FD1DCB: If ( = "Browse") Then
  loc_FD1DCE:   Exit Sub
  loc_FD1DCF: End If
  loc_FD1DEC: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FD1DEF:   Exit Sub
  loc_FD1DF0: End If
  loc_FD1E01: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FD1E23:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FD1E5D:     If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FD1E7F:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FD1E95:         var_9C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FD1E9E:         Set var_110 = Me.FGrid
  loc_FD1EB9:       Else
  loc_FD1ECC:         Me.FGrid.Rows = 1
  loc_FD1EE9:         var_BC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FD1EF1:         Set var_110 = Me.FGrid
  loc_FD1F20:         Me.FGrid.FixedRows = 1
  loc_FD1F28:       End If
  loc_FD1F28:     End If
  loc_FD1F2B:   Else
  loc_FD1F4C:     MsgBox("No Entries To Delete", &H10, "Delete !", var_EC, var_10C)
  loc_FD1F5C:   End If
  loc_FD1F60:   Set var_8C = Me.FGrid
  loc_FD1F71: End If
  loc_FD1F71: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E2D194
  'Data Table: 441630
  Dim var_8C As TextBox
  loc_E2D177: Set var_88 = Me.TxtGrid
  loc_E2D17D: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E2D185: var_8C.Visible = False
  loc_E2D191: Exit Sub
End Sub

Private Sub cmdCancel_Click() 'E14F60
  'Data Table: 441630
  loc_E14F55: Me.Global.Unload Me
  loc_E14F5D: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EDB3F4
  'Data Table: 441630
  Dim Me As Recordset15
  Dim var_E8 As Variant
  Dim var_EC As String
  loc_EDB352: On Error Goto loc_EDB3AF
  loc_EDB35B: Me.MoveFirst
  loc_EDB38F: var_E8 = "SYear='" & Year(MyValue) & "'" 
  loc_EDB393: var_EC = CStr(var_E8)
  loc_EDB39D: Me.Find var_EC, 0, 1
  loc_EDB3AE: Exit Sub
  loc_EDB3AF: ' Referenced from: EDB352
  loc_EDB3B7: Set var_100 = Err()
  loc_EDB3BD: Call 0.Method_arg_2C (var_EC)
  loc_EDB3DE: MsgBox(CVar(var_EC), &H40, "Information", var_E8, var_110)
  loc_EDB3F1: Exit Sub
  loc_EDB3F2: Exit Sub
End Sub

Public Sub Proc_45_24_103F45C
  'Data Table: 441630
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_DC As String
  Dim var_F4 As MSFlexGrid
  Dim var_104 As Variant
  loc_103F200: Set var_8C = Me.FGrid
  loc_103F203: var_9C = 0
  loc_103F20F: var_BC = CVar(CLng(0)) 'Long
  loc_103F214: var_DC = "Sr No."
  loc_103F21D: LateIdCallSt
  loc_103F228: var_9C = CVar(CLng(0)) 'Long
  loc_103F22D: var_BC = &H2BC
  loc_103F239: LateIdCallSt
  loc_103F244: var_9C = CVar(CLng(0)) 'Long
  loc_103F24F: var_BC = CVar(CInt(1)) 'Integer
  loc_103F256: LateIdCallSt
  loc_103F25E: var_9C = 0
  loc_103F26A: var_BC = CVar(CLng(1)) 'Long
  loc_103F26F: var_DC = "Description"
  loc_103F278: LateIdCallSt
  loc_103F283: var_9C = CVar(CLng(1)) 'Long
  loc_103F288: var_BC = &H9C4
  loc_103F294: LateIdCallSt
  loc_103F29F: var_9C = CVar(CLng(1)) 'Long
  loc_103F2AA: var_BC = CVar(CInt(1)) 'Integer
  loc_103F2B1: LateIdCallSt
  loc_103F2BB: Set var_8C = Nothing 
  loc_103F2C3: Set var_F0 = Me.FGrid1
  loc_103F2C6: var_9C = 0
  loc_103F2D2: var_BC = CVar(CLng(0)) 'Long
  loc_103F2D7: var_DC = "Sr No."
  loc_103F2E0: LateIdCallSt
  loc_103F2EB: var_9C = CVar(CLng(0)) 'Long
  loc_103F2F0: var_BC = &H2BC
  loc_103F2FC: LateIdCallSt
  loc_103F307: var_9C = CVar(CLng(0)) 'Long
  loc_103F312: var_BC = CVar(CInt(1)) 'Integer
  loc_103F319: LateIdCallSt
  loc_103F321: var_9C = 0
  loc_103F32D: var_BC = CVar(CLng(1)) 'Long
  loc_103F332: var_DC = "Description"
  loc_103F33B: LateIdCallSt
  loc_103F346: var_9C = CVar(CLng(1)) 'Long
  loc_103F34B: var_BC = &H9C4
  loc_103F357: LateIdCallSt
  loc_103F362: var_9C = CVar(CLng(1)) 'Long
  loc_103F36D: var_BC = CVar(CInt(1)) 'Integer
  loc_103F374: LateIdCallSt
  loc_103F37E: Set var_F0 = Nothing 
  loc_103F3AA: For var_108 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_86 = var_108 'Byte
  loc_103F3B5:   var_9C = CVar(CLng(var_86)) 'Long
  loc_103F3BA:   var_BC = 0
  loc_103F3C9:   var_104 = CVar(CStr(var_86)) 'String
  loc_103F3D1:   Set var_F4 = Me.FGrid
  loc_103F3D7:   LateIdCallSt
  loc_103F3E8: Next var_108 'Byte
  loc_103F416: For var_10C = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_10C 'Byte
  loc_103F421:   var_9C = CVar(CLng(var_86)) 'Long
  loc_103F426:   var_BC = 0
  loc_103F435:   var_104 = CVar(CStr(var_86)) 'String
  loc_103F43D:   Set var_F4 = Me.FGrid1
  loc_103F443:   LateIdCallSt
  loc_103F454: Next var_10C 'Byte
  loc_103F45A: Exit Sub
End Sub

Public Sub Proc_45_25_F0DE4C
  'Data Table: 441630
  Dim var_98 As Long
  Dim var_AC As MSFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As String
  Dim var_4701 As Variant
  loc_F0DD67: Me.FGrid.FixedRows = 1
  loc_F0DD82: Me.FGrid.Rows = 2
  loc_F0DD91: For var_B0 = 0 To 1: var_86 = var_B0 'Byte
  loc_F0DD97:   var_98 = 1
  loc_F0DDA5:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_F0DDAA:   var_E0 = vbNullString
  loc_F0DDB4:   Set var_AC = Me.FGrid
  loc_F0DDBA:   LateIdCallSt
  loc_F0DDC8: Next var_B0 'Byte
  loc_F0DDE1: Me.FGrid1.FixedRows = 1
  loc_F0DDFC: Me.FGrid1.Rows = 2
  loc_F0DE0B: For var_F4 = 0 To 1: var_86 = var_F4 'Byte
  loc_F0DE11:   var_98 = 1
  loc_F0DE1F:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_F0DE24:   var_E0 = vbNullString
  loc_F0DE2E:   Set var_AC = Me.FGrid1
  loc_F0DE34:   LateIdCallSt
  loc_F0DE42: Next var_F4 'Byte
  loc_F0DE48: Exit Sub
  loc_F0DE4A: var_4701 = CVar(( Mod )) 'Integer
End Sub

Public Sub Proc_45_26_E2D490
  'Data Table: 441630
  loc_E2D470: Set var_88 = Me.TopCtrl1
  loc_E2D476: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_E2D48B: If ( = "Browse") Then
  loc_E2D48E:   Exit Sub
  loc_E2D48F: End If
  loc_E2D48F: Exit Sub
End Sub

Public Sub Proc_45_27_E2B990
  'Data Table: 441630
  loc_E2B970: Set var_88 = Me.TopCtrl1
  loc_E2B976: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_E2B98B: If ( = "Browse") Then
  loc_E2B98E:   Exit Sub
  loc_E2B98F: End If
  loc_E2B98F: Exit Sub
End Sub

Public Sub Proc_45_28_10737F0(arg_C) '10737F0
  'Data Table: 441630
  Dim var_8E As Integer
  Dim var_94 As MSFlexGrid
  Dim var_A8 As Long
  Dim var_AC As TextBox
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As String
  Dim var_124 As Variant
  Dim var_12C As Long
  loc_1073567: var_8E = arg_C
  loc_1073570: If (var_8E = 0) Then
  loc_1073596:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_10735A6:     Set var_94 = Me.TxtGrid
  loc_10735AC:     Call 0.Method_Proc_45_28_10737F00 (arg_C, var_AC, var_B0)
  loc_10735B4:     var_A8 = var_AC.Text
  loc_10735CB:     If (var_B0 = vbNullString) Then
  loc_10735E1:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10735E9:       var_E0 = CVar(CLng(1)) 'Long
  loc_10735EE:       var_100 = vbNullString
  loc_10735F8:       Set var_AC = Me.FGrid
  loc_10735FE:       LateIdCallSt
  loc_1073613:     Else
  loc_1073640:       Set var_94 = Me.TxtGrid
  loc_1073646:       Call 0.Method_Proc_45_28_10737F00 (arg_C, var_AC, var_B0, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)))
  loc_107364E:       var_AC = var_AC.Text
  loc_1073656:       var_124 = CVar(var_B0) 'String
  loc_107365E:       Set var_128 = Me.FGrid
  loc_1073664:       LateIdCallSt
  loc_107367E:     End If
  loc_107367E:   End If
  loc_1073681: Else
  loc_1073687:   If (var_8E = 1) Then
  loc_107369D:     var_12C = CLng(Me.FGrid1.Col)
  loc_10736AD:     If (var_12C = CLng(1)) Then
  loc_10736BD:       Set var_94 = Me.TxtGrid
  loc_10736C3:       Call 0.Method_Proc_45_28_10737F00 (arg_C, var_AC, var_B0, var_12C, var_128)
  loc_10736CB:       var_124 = var_AC.Text
  loc_10736E2:       If (var_B0 = vbNullString) Then
  loc_10736F8:         var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1073700:         var_E0 = CVar(CLng(1)) 'Long
  loc_1073705:         var_100 = vbNullString
  loc_107370F:         Set var_AC = Me.FGrid1
  loc_1073715:         LateIdCallSt
  loc_107372A:       Else
  loc_107373D:         var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1073757:         Set var_94 = Me.TxtGrid
  loc_107375D:         Call 0.Method_Proc_45_28_10737F00 (arg_C, var_AC, var_B0, CVar(CLng(1)), var_C0, var_AC, var_100)
  loc_1073765:         var_E0 = var_AC.Text
  loc_107376D:         var_124 = CVar(var_B0) 'String
  loc_1073775:         Set var_128 = Me.FGrid1
  loc_107377B:         LateIdCallSt
  loc_1073795:       End If
  loc_1073795:     End If
  loc_1073795:   End If
  loc_1073795: End If
  loc_10737A8: Set var_94 = Me.TxtGrid
  loc_10737AE: Call 0.Method_Proc_45_28_10737F00 (0, var_AC, 0, &HFF, var_128, var_124)
  loc_10737B6: var_AC.MaxLength = var_C0
  loc_10737D0: Set var_94 = Me.TxtGrid
  loc_10737D6: Call 0.Method_Proc_45_28_10737F00 (1, var_AC, 0, var_100)
  loc_10737DE: var_AC.MaxLength = var_E0
  loc_10737EA: Proc_45_28_10737F0 = var_C0
End Sub
