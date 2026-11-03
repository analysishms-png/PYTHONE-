VERSION 5.00
Begin VB.Form FdGrpdetCheckOut
  Caption = "Room Check Out Entry"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 135
  ClientTop = 750
  ClientWidth = 14760
  ClientHeight = 7905
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 30
    Top = 7680
    Width = 9900
    Height = 555
    Visible = 0   'False
    TabIndex = 56
  End
  Begin Frame Frame1
    Caption = "Frame1"
    BackColor = &HFFC0C0&
    Left = 2040
    Top = 180
    Width = 10155
    Height = 7575
    TabIndex = 1
    BorderStyle = 0 'None
    Begin TextBox txtleaderfolio
      Left = 1845
      Top = 1380
      Width = 2370
      Height = 285
      Visible = 0   'False
      TabIndex = 52
    End
    Begin MSHFlexGrid FGrid2
      Left = 45
      Top = 240
      Width = 9960
      Height = 2565
      TabIndex = 49
    End
    Begin TextBox TXT
      Index = 22
      Left = 3900
      Top = 1800
      Width = 1500
      Height = 285
      TabIndex = 51
    End
    Begin MSHFlexGrid FGrid
      Left = 45
      Top = 3150
      Width = 8760
      Height = 3150
      TabIndex = 42
    End
    Begin Timer Timer1
      Interval = 1000
      Left = 135
      Top = 3030
    End
    Begin PictureBox Picture2
      Left = 1890
      Top = 1500
      Width = 300
      Height = 285
      Visible = 0   'False
      TabIndex = 48
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HFFFFFF&
      Left = 120
      Top = 3780
      Width = 345
      Height = 240
      TabIndex = 47
      BorderStyle = 0 'None
      MaxLength = 9
      Appearance = 0 'Flat
    End
    Begin CommandButton cmdProvisional
      Caption = " Provisional     Bill &Print"
      Left = 10995
      Top = 2610
      Width = 1245
      Height = 795
      Visible = 0   'False
      TabIndex = 45
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox TXT
      Index = 15
      BackColor = &HFFFFFF&
      Left = 7725
      Top = 1785
      Width = 330
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 37
      Alignment = 2 'Center
      MaxLength = 3
      Locked = -1  'True
      DataFormat = 80
      DataFormat = 38
    End
    Begin TextBox TXT
      Index = 14
      BackColor = &HFFFFFF&
      Left = 8070
      Top = 1785
      Width = 330
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 36
      Alignment = 2 'Center
      MaxLength = 3
      Locked = -1  'True
      DataFormat = 80
      DataFormat = 38
    End
    Begin TextBox TXT
      Index = 13
      BackColor = &HFFFFFF&
      Left = 6540
      Top = 1785
      Width = 1170
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 35
      MaxLength = 11
      Locked = -1  'True
    End
    Begin TextBox TXT
      Index = 16
      BackColor = &HFFFFFF&
      Left = 6540
      Top = 2640
      Width = 3435
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 34
      Locked = -1  'True
    End
    Begin TextBox TXT
      Index = 17
      BackColor = &HFFFFFF&
      Left = 6540
      Top = 2355
      Width = 3435
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 33
      MaxLength = 50
      Locked = -1  'True
    End
    Begin TextBox TXT
      Index = 18
      BackColor = &HFFFFFF&
      Left = 6540
      Top = 2070
      Width = 3435
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 32
      MaxLength = 16
    End
    Begin TextBox TXT
      Index = 21
      BackColor = &HFFFFFF&
      Left = 1185
      Top = 3225
      Width = 4245
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 30
    End
    Begin TextBox TXT
      Index = 20
      BackColor = &HFFFFFF&
      Left = 1185
      Top = 2925
      Width = 4245
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 29
    End
    Begin TextBox TXT
      Index = 19
      BackColor = &HFFFFFF&
      Left = 1185
      Top = 2640
      Width = 4245
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 28
    End
    Begin TextBox TXT
      Index = 4
      BackColor = &HFFFFFF&
      Left = 2190
      Top = 1500
      Width = 3240
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 22
      MaxLength = 16
    End
    Begin TextBox TXT
      Index = 6
      BackColor = &HFFFFFF&
      Left = 7035
      Top = 1500
      Width = 480
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 21
      MaxLength = 2
    End
    Begin TextBox TXT
      Index = 5
      BackColor = &HFFFFFF&
      Left = 6540
      Top = 1500
      Width = 480
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 20
      MaxLength = 2
    End
    Begin TextBox TXT
      Index = 7
      BackColor = &HFFFFFF&
      Left = 1185
      Top = 2070
      Width = 990
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 19
      MaxLength = 1
    End
    Begin TextBox TXT
      Index = 8
      BackColor = &HFFFFFF&
      Left = 3900
      Top = 2070
      Width = 1530
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 18
      MaxLength = 8
    End
    Begin DataGrid DGRoomNo
      Left = 10755
      Top = 5910
      Width = 3795
      Height = 3330
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 16
    End
End

Attribute VB_Name = "FdGrpdetCheckOut"

Private global_82 As Integer
Private global_134 As Integer
Private MasterFormExit As Integer
Private global_72 As Long
Private global_80 As Integer
Private global_132 As Integer

Private Sub FGrid_UnknownEvent_0 'E5DC34
  'Data Table: 514A60
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5DBFF: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5DC12: Set var_A8 = Me.TxtGrid
  loc_E5DC18: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5DC20: var_AC.Visible = False
  loc_E5DC2C: Call Proc_174_56_EBC19C()
  loc_E5DC31: Exit Sub
  loc_E5DC32: BranchFVar -5889
End Sub

Private Sub FGrid_UnknownEvent_1 'E67D58
  'Data Table: 514A60
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E67D14: Set var_88 = Me.TxtGrid
  loc_E67D1A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E67D34: If (var_8C.Visible = 0) Then
  loc_E67D4D:   Me.FGrid.BackColorSel = CVar(CLng(global_60))
  loc_E67D55: End If
  loc_E67D55: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1C750
  'Data Table: 514A60
  loc_E1C747: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1C74F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10066F8
  'Data Table: 514A60
  Dim var_B4 As MSHFlexGrid
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1006568: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_100657E:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_100658E:   var_9C = "+{Tab}"
  loc_1006594:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_100659E:   KeyCode = 0
  loc_10065A4: Else
  loc_10065FB:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_1006611:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1006619:   End If
  loc_1006619: End If
  loc_100663C: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1006660: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_1006686:   If (CLng(Me.FGrid.Col) = CLng(&HA)) Then
  loc_100669C:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10066B4:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10066B9:     var_11C = vbNullString
  loc_10066C3:     Set var_B4 = Me.FGrid
  loc_10066C9:     LateIdCallSt
  loc_10066E1:   End If
  loc_10066E1: End If
  loc_10066E7: If (KeyCode = &HD) Then
  loc_10066EF:   global_82 = 0
  loc_10066F2: End If
  loc_10066F4: KeyCode = 0
  loc_10066F7: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'FB1D54
  'Data Table: 514A60
  Dim var_88 As MSHFlexGrid
  Dim var_B0 As String
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_FB1BE7: If (CLng(Me.FGrid.Col) = CLng(&HA)) Then
  loc_FB1BEE:   Set var_C4 = Me.FGrid
  loc_FB1C12:   var_B0 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_FB1C3F:   Set var_B4 = var_C4
  loc_FB1C51:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_FB1C79:   Set var_88 = Me.TxtGrid
  loc_FB1C7F:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_B0, Asc(var_B0))
  loc_FB1C87:   0 = var_B4.Text
  loc_FB1CA0:   If (Len(var_B0) <= 1) Then
  loc_FB1CAF:     Set var_88 = Me.TxtGrid
  loc_FB1CB5:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_B0)
  loc_FB1CBD:     var_CA = var_B4.Text
  loc_FB1CCE:     Set var_B8 = Me.TxtGrid
  loc_FB1CD4:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_FB1CDC:     var_C4.Text = var_B0
  loc_FB1CEF:   End If
  loc_FB1CFB:   Set var_88 = Me.TxtGrid
  loc_FB1D01:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_FB1D1B:   Set var_B8 = Me.TxtGrid
  loc_FB1D21:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_FB1D29:   var_C4.SelStart = Len(var_B4.Text)
  loc_FB1D3C: End If
  loc_FB1D46: If (CLng(KeyCode) <> &HD) Then
  loc_FB1D4E:   global_82 = &HFF
  loc_FB1D51: End If
  loc_FB1D51: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1C700
  'Data Table: 514A60
  loc_E1C6F7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1C6FF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E445CC
  'Data Table: 514A60
  Dim var_8C As TextBox
  loc_E445A0: Call Proc_174_56_EBC19C()
  loc_E445B0: Set var_88 = Me.TxtGrid
  loc_E445B6: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E445BE: var_8C.Visible = False
  loc_E445CA: Exit Sub
End Sub

Private Sub DGRoomType_UnknownEvent_9 'F4B164
  'Data Table: 514A60
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4B05B: (False).Visible = 
  loc_F4B07A: If (Me.RecordCount > 0) Then
  loc_F4B0B9:   Set var_B4 = Me.TXT
  loc_F4B0BF:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4B0C7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4B0FA:   var_B0 = Me.Fields.Item("Name")
  loc_F4B119:   Set var_B4 = Me.TXT
  loc_F4B11F:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4B127:   var_B8.Text = CStr(var_B0.Value)
  loc_F4B13D: End If
  loc_F4B148: Set var_A8 = Me.TXT
  loc_F4B14E: Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4))
  loc_F4B156: var_B0.SetFocus
  loc_F4B162: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E64590
  'Data Table: 514A60
  loc_E64560: If (CBool(().Visible) = &HFF) Then
  loc_E64563:   Call DGRoomType_UnknownEvent_9()
  loc_E64568: End If
  loc_E64584: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E64587:   Call DGRoomNo_UnknownEvent_9()
  loc_E6458C: End If
  loc_E6458C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F114E0
  'Data Table: 514A60
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F113F8: On Error Goto loc_F1149D
  loc_F11412: If (Me.RecordCount > 0) Then
  loc_F1142A:   var_8C = "EDIT"
  loc_F11438:   Call Proc_174_54_E7732C(Proc_5_1_100CB50(var_8C, Me))
  loc_F1144E:   Set var_90 = Me.TXT
  loc_F11454:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F1145C:   var_98.SetFocus
  loc_F1146B: Else
  loc_F1148C:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F1149C: End If
  loc_F1149C: Exit Sub
  loc_F1149D: ' Referenced from: F113F8
  loc_F114A5: Set var_90 = Err()
  loc_F114AB: Call 0.Method_arg_2C (var_8C)
  loc_F114CC: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F114DF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'ECAEE4
  'Data Table: 514A60
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F920E4 As String
  loc_ECAE40: On Error Goto loc_ECAEDB
  loc_ECAE5A: If (Me.RecordCount <= 0) Then
  loc_ECAE63:   var_B8 = "Information"
  loc_ECAE7E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_ECAE8E:   Exit Sub
  loc_ECAE8F: End If
  loc_ECAEA0: MemVar_1F920E4 = "SELECT DocId AS SearchCode FROM GuestFolio where VType='" & mVType & "' ORDER BY VDate"
  loc_ECAEAD: MemVar_1F92120 = Me
  loc_ECAEBA: Proc_6_126_F1BCC0("2000,2000,2000,2000")
  loc_ECAED5: Call 0.Method_arg_2B0 (1, var_B8)
  loc_ECAEDA: Exit Sub
  loc_ECAEDB: ' Referenced from: ECAE40
  loc_ECAEDB: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_ECAEE0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'F06AF4
  'Data Table: 514A60
  Dim Me As Recordset15
  Dim var_8C As TextBox
  loc_F06A20: On Error Goto loc_F06AB9
  loc_F06A2E: Set var_88 = Me.TXT
  loc_F06A34: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_F06A3C: var_94 = "Room No"
  loc_F06A5D: If (Proc_6_27_EA565C(var_8C, var_94) = 0) Then
  loc_F06A67:   Call Txt_GotFocus()
  loc_F06A6C:   Exit Sub
  loc_F06A6D: End If
  loc_F06A79: Call Txt_Validate(CInt(0))
  loc_F06A7E: Call Proc_174_55_EAB260(0, CInt(0))
  loc_F06A8E: Me.Requery -1
  loc_F06A9E: Set var_88 = Me.TXT
  loc_F06AA4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_8C)
  loc_F06AAC: var_8C.SetFocus
  loc_F06AB8: Exit Sub
  loc_F06AB9: ' Referenced from: F06A20
  loc_F06AC1: Set var_88 = Err()
  loc_F06AC7: Call 0.Method_arg_2C (var_94)
  loc_F06AE0: MsgBox(CVar(var_94), &H10, var_C8, var_E8, var_108)
  loc_F06AF3: Exit Sub
End Sub

Private Sub Timer1_Timer() '105266C
  'Data Table: 514A60
  Dim var_8C As TextBox
  loc_1052402: Set var_88 = Me.TXT
  loc_1052408: Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_1052425: If (var_8C.BackColor = &HD3B3FF) Then
  loc_1052436:   Set var_88 = Me.TXT
  loc_105243C:   Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_105245B:   If (var_8C.Text <> vbNullString) Then
  loc_105246E:     Set var_88 = Me.TXT
  loc_1052474:     Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_105247C:     var_8C.BackColor = &HFFFFFF
  loc_1052488:   End If
  loc_1052496:   Set var_88 = Me.TXT
  loc_105249C:   Call 0.Method_Timer1_Timer0 (CInt(&H11), var_8C)
  loc_10524BB:   If (var_8C.Text <> vbNullString) Then
  loc_10524CE:     Set var_88 = Me.TXT
  loc_10524D4:     Call 0.Method_Timer1_Timer0 (CInt(&H11), var_8C)
  loc_10524DC:     var_8C.BackColor = &HFFFFFF
  loc_10524E8:   End If
  loc_10524F6:   Set var_88 = Me.TXT
  loc_10524FC:   Call 0.Method_Timer1_Timer0 (CInt(&H10), var_8C)
  loc_105251B:   If (var_8C.Text <> vbNullString) Then
  loc_105252E:     Set var_88 = Me.TXT
  loc_1052534:     Call 0.Method_Timer1_Timer0 (CInt(&H10), var_8C)
  loc_105253C:     var_8C.BackColor = &HFFFFFF
  loc_1052548:   End If
  loc_105254B: Else
  loc_1052559:   Set var_88 = Me.TXT
  loc_105255F:   Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_105257E:   If (var_8C.Text <> vbNullString) Then
  loc_1052591:     Set var_88 = Me.TXT
  loc_1052597:     Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_105259F:     var_8C.BackColor = &HD3B3FF
  loc_10525AB:   End If
  loc_10525B9:   Set var_88 = Me.TXT
  loc_10525BF:   Call 0.Method_Timer1_Timer0 (CInt(&H11), var_8C)
  loc_10525DE:   If (var_8C.Text <> vbNullString) Then
  loc_10525F1:     Set var_88 = Me.TXT
  loc_10525F7:     Call 0.Method_Timer1_Timer0 (CInt(&H11), var_8C)
  loc_10525FF:     var_8C.BackColor = &HD3B3FF
  loc_105260B:   End If
  loc_1052619:   Set var_88 = Me.TXT
  loc_105261F:   Call 0.Method_Timer1_Timer0 (CInt(&H10), var_8C)
  loc_105263E:   If (var_8C.Text <> vbNullString) Then
  loc_1052651:     Set var_88 = Me.TXT
  loc_1052657:     Call 0.Method_Timer1_Timer0 (CInt(&H10), var_8C)
  loc_105265F:     var_8C.BackColor = &HD3B3FF
  loc_105266B:   End If
  loc_105266B: End If
  loc_105266B: Exit Sub
End Sub

Private Sub CmdPostChrg_UnknownEvent_9 '11AF64C
  'Data Table: 514A60
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_1BC As Double
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_140 As String
  Dim var_1C4 As Double
  Dim var_150 As Variant
  Dim var_184 As Variant
  Dim var_B0 As Integer
  Dim unk_514A67 As Connection15
  Dim var_1D0 As Field20
  Dim var_174 As Variant
  Dim var_160 As Variant
  Dim var_218 As Variant
  Dim var_8C As Recordset15
  loc_11AF273: var_1BC = Val(CStr(0(1).TextMatrix)))
  loc_11AF28C: Set var_12C = 0(2)
  loc_11AF292: var_13C = var_12C.TextMatrix)
  loc_11AF2A5: var_1C4 = Val(CStr(var_13C))
  loc_11AF2AC: var_150 = CVar(Me.txtleaderfolio) 'Address
  loc_11AF2B3: var_160 = Trim(var_150)
  loc_11AF2C0: Proc_96_39_1055C78(CStr(var_160), var_1C4)
  loc_11AF2D8: var_184 = CVar(((var_1BC - var_1C4) + var_1BC)) 'Double
  loc_11AF30E: If (Round(var_184, 2) < 0) Then
  loc_11AF324:   var_E4 = "First Post Retention Or Refund"
  loc_11AF32A:   MsgBox(var_E4, &H40, var_13C, var_150, var_160)
  loc_11AF33A:   Exit Sub
  loc_11AF33B: End If
  loc_11AF341: var_B0 = 0
  loc_11AF365: var_140 = "Select Max(IsNull(RoomCheckOutClearanceYN,'')) from Enviro where lOGSite_code='" & MemVar_1F92078 & "'"
  loc_11AF36E: unk_514A67.Execute var_140, var_E4, -1
  loc_11AF376: var_D4 = var_D4.Fields
  loc_11AF37E: var_B0 = var_12C.Item(var_12C)
  loc_11AF3AD: If (var_13C = "Yes") Then
  loc_11AF3D5:   For var_1D4 = 0 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_8E = var_1D4 'Integer
  loc_11AF400:     For var_1D8 = 1 To CInt((CLng(Me.FGrid2.Cols) - 1)): var_90 = var_1D8 'Integer
  loc_11AF40A:       var_A0 = CVar(CLng(var_8E)) 'Long
  loc_11AF413:       var_C0 = CVar(CLng(var_90)) 'Long
  loc_11AF43E:       If (CStr(Me.FGrid2.TextMatrix)) <> vbNullString) Then
  loc_11AF445:         var_A0 = CVar(CLng(var_8E)) 'Long
  loc_11AF44E:         var_C0 = CVar(CLng(var_90)) 'Long
  loc_11AF477:         var_118 = CVar(CLng(var_8E)) 'Long
  loc_11AF480:         var_174 = CVar(CLng(var_90)) 'Long
  loc_11AF4BA:         var_160 = "Select * From RoomCheckOutStatus Where FolionoDocId=(Select IsNull(Max(DocId),'') From RoomOcc Where RoomNo='" & Trim(CVar(CStr(Me.FGrid2.TextMatrix)))) 
  loc_11AF4D3:         var_218 = var_160 & "' And ChkOutDate Is Null) And RoomCode='" & Trim(CVar(CStr(Me.FGrid2.TextMatrix)))) & "' And ChkOutClearanceYN='Y'" 
  loc_11AF4E1:         unk_514A67.Execute CStr(var_218), var_238, -1
  loc_11AF528:         If (var_1D0.Value.RecordCount <= 0) Then
  loc_11AF52E:           var_F8 = CVar(var_88) 'String
  loc_11AF535:           var_A0 = CVar(CLng(var_8E)) 'Long
  loc_11AF55E:           var_150 = Trim(CVar(CStr(Me.FGrid2.TextMatrix))))
  loc_11AF566:           var_160 = (CVar(CLng(var_90)) + var_150)
  loc_11AF56F:           var_184 = (var_160 + ", ")
  loc_11AF574:           var_88 = CStr(var_160 & "' And ChkOutDate Is Null) And RoomCode='")
  loc_11AF587:         End If
  loc_11AF587:       End If
  loc_11AF58A:     Next var_1D8 'Integer
  loc_11AF592:   Next var_1D4 'Integer
  loc_11AF59C:   Set var_8C = Nothing
  loc_11AF5A7:   If (var_88 <> vbNullString) Then
  loc_11AF5B0:     Call 0.Method_arg_50 (var_140)
  loc_11AF5D7:     MsgBox(CVar("Room " & var_88 & "Check Out Clearance Is Still Pending."), &H10, CVar(var_140), var_150, var_160)
  loc_11AF5EA:     Exit Sub
  loc_11AF5EB:   End If
  loc_11AF5EB: End If
  loc_11AF629: If (CDbl(Val(CStr(0(1).TextMatrix)))) >= CDbl(20000)) Then
  loc_11AF63F:   Call 0.Method_arg_2B0 (1)
  loc_11AF644: End If
  loc_11AF644: Call Proc_174_49_1B87018(var_B0)
  loc_11AF649: Exit Sub
End Sub

Private Sub CmdPlanBill_UnknownEvent_9 'E02D00
  'Data Table: 514A60
  loc_E02CF5: global_134 = &HFF
  loc_E02CF8: Call CmdPostChrg_UnknownEvent_9()
  loc_E02CFD: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F4AD44
  'Data Table: 514A60
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4AC3B: Me.DGRoomNo.Visible = False
  loc_F4AC5A: If (Me.RecordCount > 0) Then
  loc_F4AC99:   Set var_B4 = Me.TXT
  loc_F4AC9F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4ACA7:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F4ACDA:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F4ACF9:   Set var_B4 = Me.TXT
  loc_F4ACFF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4AD07:   var_B8.Text = CStr(var_B0.Value)
  loc_F4AD1D: End If
  loc_F4AD28: Set var_A8 = Me.TXT
  loc_F4AD2E: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F4AD36: var_B0.SetFocus
  loc_F4AD42: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9A190
  'Data Table: 514A60
  Dim var_A8 As Variant
  loc_E9A114: Set var_88 = Me.DGRoomNo
  loc_E9A13E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9A146: Set var_BC = Me.DGRoomNo
  loc_E9A166: Set var_BC = var_A8(DGRoomNo.DispID_1B)
  loc_E9A180: Proc_6_138_106D6F8(Me.DGRoomNo, global_100, 0)
  loc_E9A18E: Exit Sub
End Sub

Private Sub Form_Load() '10B079C
  'Data Table: 514A60
  Dim var_A0 As String
  Dim unk_514B8A As Connection15
  Dim unk_514A67 As Connection15
  Dim var_94 As CommandButton
  Dim var_B4 As Variant
  Dim var_E0 As String
  Dim var_C4 As Variant
  Dim Me As Recordset15
  Dim var_9C As TextBox
  Dim var_E8 As DataGrid
  Dim var_EC As TextBox
  loc_10B04E2: Call 0.Method_Me8 (var_8C)
  loc_10B04ED: Call 0.Method_Me0 (var_90)
  loc_10B050C: Proc_6_23_DFBA28(Me, CInt(var_8C))
  loc_10B0520: Set var_9C = MemVar_1F92244.PictSubMenu
  loc_10B0526: var_90 = MDIForm1.PictSubMenu.Height
  loc_10B0537: Set var_94 = MemVar_1F92244.PictSubMenu
  loc_10B054D: Call 0.Method_arg_7C ((MDIForm1.PictSubMenu.Top + var_90))
  loc_10B057D: unk_514B8A.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F92078 & "FOM'", var_C4, -1
  loc_10B058E: Set global_128 = var_94
  loc_10B05AD: Set global_100 = New 
  loc_10B05B4: Call Proc_174_59_13BFBE4(var_94)
  loc_10B05C4: Me.Recordset15.CursorLocation = 3
  loc_10B05CF: If (MemVar_1F920B8 <> 1) Then
  loc_10B05D2:   GoTo loc_10B0614
  loc_10B05D5: End If
  loc_10B05F9: unk_514A67.Execute "Select nCUR from enviro where LOGsite_code='" & MemVar_1F92078 & "'", var_C4, -1
  loc_10B0604: Set var_88 = var_94
  loc_10B0614: ' Referenced from: 10B05D2
  loc_10B0621: var_94("Bill Settle").Caption = CInt(var_90)
  loc_10B0633: Set var_94 = Me.TopCtrl1
  loc_10B0639: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005("Add")
  loc_10B065F: var_A0 = "SELECT RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name as GuestName, GuestProf.GuestStatus, SubGroup.Name as CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode as CompanyCode,RoomOcc.FolioNO as FolioNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName,GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,GUESTSTAT.NAME AS STATUSNAME,roomocc.Docid,GuestFolio.Mfoliono,GuestFolio.MfolionoDocid,RoomOcc.PlanCode  " & "FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS WHERE ROOMMAST.LOGSITE_CODE='"
  loc_10B067B: var_E0 = var_A0 & MemVar_1F92078 & "' AND ROOMOCC.LOGSITE_CODE='" & MemVar_1F92078 & "' AND Roommast.type='RO'  and GuestFolio.Mfoliono="
  loc_10B068C: var_C4 = CVar(var_E0 & global_76 & " and RoomMast.Code in (Select ISNULL(RoomNo,'') from RoomOcc where isnull(type,'')<>'C' and isnull(type,'')<>'O')  and isnull(RoomOcc.type,'')<>'C' and isnull(RoomOcc.type,'')<>'O' Order by RoomCat.Name,RoomMast.Code,ROOMOCC.CHKOUTDATE ") 'String
  loc_10B0696: Me.Open var_C4, CVar(MemVar_1F92044), 2
  loc_10B06AD: Call Proc_174_58_1268520(3)
  loc_10B06B8: Call 0.Method_arg_54 ("Room Check Out Entry")
  loc_10B06CB: Set var_94 = Me.TXT
  loc_10B06D1: Call 0.Method_Form_Load0 (CInt(0), var_9C)
  loc_10B06F0: Me.DGRoomNo.Left = CVar(var_9C.Left)
  loc_10B070C: Set var_E8 = Me.TXT
  loc_10B0712: Call 0.Method_Form_Load0 (CInt(0), var_EC)
  loc_10B072D: Set var_94 = Me.TXT
  loc_10B0733: Call 0.Method_Form_Load0 (CInt(0), var_9C)
  loc_10B074B: var_B4 = CVar(((var_9C.Top + var_EC.Height) + CDbl(&H1E))) 'Single
  loc_10B075A: Me.DGRoomNo.Top = CVar(var_9C.Left)
  loc_10B0775: CVarUnk
  loc_10B077A: VerifyVarObj
  loc_10B0786: LateIdStAd
  loc_10B0794: Exit Sub
  loc_10B0795: Proc_6_60_E62BC4(Me.DGRoomNo, global_100)
  loc_10B079A: Exit Sub
End Sub

Private Sub Form_Resize() 'E476D0
  'Data Table: 514A60
  loc_E476A0: Call 0.Method_arg_7C (CDbl(1450))
  loc_E476AD: Call 0.Method_arg_74 (CDbl(1625))
  loc_E476BA: Call 0.Method_MeC (CDbl(9200))
  loc_E476C7: Call 0.Method_Me4 (CDbl(17000))
  loc_E476CC: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E770D0
  'Data Table: 514A60
  loc_E77077: Set global_100 = Nothing
  loc_E77089: Set global_96 = Nothing
  loc_E7709B: Set global_108 = Nothing
  loc_E770AD: Set global_104 = Nothing
  loc_E770BF: Set global_128 = Nothing
  loc_E770CB: MasterFormExit = 0
  loc_E770CE: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5BBDC
  'Data Table: 514A60
  loc_E5BBA4: Set var_88 = Me.TopCtrl1
  loc_E5BBAA: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_E5BBCD: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5BBD5:   Call Form_Unload(&HFF)
  loc_E5BBDA: End If
  loc_E5BBDA: Exit Sub
End Sub

Private Sub Form_Activate() 'EF5F1C
  'Data Table: 514A60
  Dim unk_514B8A As Connection15
  Dim var_B8 As TextBox
  loc_EF5E60: On Error Goto loc_EF5EED
  loc_EF5E87: unk_514B8A.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F92078 & "FOM'", var_B0, -1
  loc_EF5E98: Set global_128 = var_B4
  loc_EF5EC1: If (FdGrpdetCheckOut.OpenMode = 1) Then
  loc_EF5EC4:   GoTo loc_EF5EEC
  loc_EF5EC7: End If
  loc_EF5ED2: Set var_B4 = Me.TXT
  loc_EF5ED8: Call 0.Method_Form_Activate0 (CInt(0), var_B8)
  loc_EF5EE0: var_B8.SetFocus
  loc_EF5EEC: ' Referenced from: EF5EC4
  loc_EF5EEC: Exit Sub
  loc_EF5EED: ' Referenced from: EF5E60
  loc_EF5F06: MsgBox("FORM ACTIVATE", 0, var_DC, var_FC, var_11C)
  loc_EF5F16: Proc_6_60_E62BC4(var_B4)
  loc_EF5F1B: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24AF4
  'Data Table: 514A60
  loc_E24AD9: If (MasterFormExit = &HFF) Then
  loc_E24AE9:   Me.Global.Unload Me
  loc_E24AF1: End If
  loc_E24AF1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E5E138
  'Data Table: 514A60
  loc_E5E0EC: On Error Goto loc_E5E12F
  loc_E5E0F9: If (CLng(KeyCode) = &H79) Then
  loc_E5E109:   Me.Global.Unload Me
  loc_E5E111:   Exit Sub
  loc_E5E112: End If
  loc_E5E126: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E5E12E: Exit Sub
  loc_E5E12F: ' Referenced from: E5E0EC
  loc_E5E12F: Proc_6_60_E62BC4(Shift)
  loc_E5E134: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1BAD8
  'Data Table: 514A60
  loc_E1BACD: Me.Global.Unload Me
  loc_E1BAD5: Exit Sub
End Sub

Private Sub Command2_Click() '14E692C
  'Data Table: 514A60
  Dim var_B4 As Variant
  Dim var_BC As String
  Dim var_C0 As String
  Dim unk_514A67 As Connection15
  Dim var_9C As Recordset15
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_B8 As String
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_14C As Variant
  Dim var_154 As TextBox
  Dim var_160 As String
  Dim var_164 As String
  Dim var_158 As String
  Dim MemVar_1F920EC As Double
  Dim var_148 As Variant
  Dim var_1A8 As Variant
  Dim var_208 As Variant
  Dim var_228 As Variant
  Dim var_308 As Variant
  Dim var_3C8 As Variant
  Dim var_128 As Variant
  Dim var_178 As Variant
  Dim var_1F8 As Variant
  Dim unk_514A7C As Connection15
  Dim var_A8 As Long
  Dim var_3F4 As String
  Dim var_150 As Field20
  loc_14E5BD6: Set var_B0 = Me.TXT
  loc_14E5BDC: Call 0.Method_Command2_Click0 (CInt(&HA), var_B4)
  loc_14E5BE4: var_B8 = var_B4.Text
  loc_14E5BFB: If (var_B8 = vbNullString) Then
  loc_14E5BFE:   Exit Sub
  loc_14E5BFF: End If
  loc_14E5C1D: Set var_B0 = Me.TXT
  loc_14E5C23: Call 0.Method_Command2_Click0 (CInt(&HA), var_B4, var_B8, "Select  isnull(bill_no,'') as Bill_No,AmtDr from paycharge where (ContraDocId is NULL or contradocid='') and folionoDocid='")
  loc_14E5C2B: var_E0 = var_B4.Tag
  loc_14E5C34: var_BC = -1 & var_B8
  loc_14E5C44: unk_514A67.Execute var_BC & "'", var_E4, 
  loc_14E5C4F: Set var_9C = var_E4
  loc_14E5C7B: If (var_9C.RecordCount > 0) Then
  loc_14E5C87:   var_9C.Filter = "Bill_No='' and AmtDr<>0"
  loc_14E5C8C: End If
  loc_14E5C92: var_E8 = var_9C.RecordCount
  loc_14E5CA0: If (var_E8 > 0) Then
  loc_14E5CBC:   MsgBox("First Print Bill ", &H40, var_108, var_128, var_148)
  loc_14E5CCC:   Exit Sub
  loc_14E5CCD: End If
  loc_14E5CEE: Set var_B0 = Me.TXT
  loc_14E5CF4: Call 0.Method_Command2_Click0 (CInt(&HA), var_B4, var_B8, "Select distinct bill_no from paycharge where foliono=")
  loc_14E5CFC: var_E0 = var_B4.Text
  loc_14E5D05: var_BC = -1 & var_B8
  loc_14E5D15: unk_514A67.Execute var_BC & " and (Bill_NO<>'' and Bill_NO is not null)", var_E4, var_E8
  loc_14E5D1D:  = var_E4.RecordCount
  loc_14E5D40: If (var_E8 <= 0) Then
  loc_14E5D56:   var_E0 = "First Print Bill "
  loc_14E5D5C:   MsgBox(var_E0, &H40, var_108, var_128, var_148)
  loc_14E5D6C:   Exit Sub
  loc_14E5D6D: End If
  loc_14E5D8A: Proc_6_17_EAA2B0(var_E0, MemVar_1F92078, "Select * from enviro WHERE LOGSITE_CODE=")
  loc_14E5D92: var_108 = var_128 & var_E0 
  loc_14E5D96: var_B8 = CStr(var_108)
  loc_14E5DA0: unk_514A67.Execute var_B8, -1, var_B0
  loc_14E5DAB: Set var_9C = var_B0
  loc_14E5DDB: Set var_B0 = Me.TXT
  loc_14E5DE1: Call 0.Method_Command2_Click0 (CInt(&HA), var_B4, var_B8, "Select distinct Bill_No from Paycharge where FolioNo=")
  loc_14E5DE9: var_E0 = var_B4.Text
  loc_14E5DF2: var_BC = -1 & var_B8
  loc_14E5DFB: unk_514A67.Execute var_BC, var_E4, 
  loc_14E5E06: Set var_AC = var_E4
  loc_14E5E36: var_B4 = Me.Fields.Item("ChkOutDate")
  loc_14E5E55: Set var_E4 = Me.TXT
  loc_14E5E5B: Call 0.Method_Command2_Click0 (CInt(0), var_14C)
  loc_14E5E7F: Set var_150 = Me.TXT
  loc_14E5E85: Call 0.Method_Command2_Click0 (CInt(&HA), var_154)
  loc_14E5EB2: If ((IsNull(CVar(var_B4)) And (var_14C.Text <> vbNullString)) And (var_154.Text <> vbNullString)) Then
  loc_14E5EC3:   Set var_B0 = Me.TXT
  loc_14E5EC9:   Call 0.Method_Command2_Click0 (CInt(9), var_B4)
  loc_14E5EE4:   Set var_E4 = Me.TXT
  loc_14E5EEA:   Call 0.Method_Command2_Click0 (CInt(0), var_14C)
  loc_14E5F0C:   var_BC = "Checking Out Person :" & var_B4.Text
  loc_14E5F21:   var_160 = var_BC & vbCrLf & "RoomNo :" & var_14C.Text
  loc_14E5F64:   If (MsgBox(CVar(var_160 & vbCrLf & "Are you Sure ?"), &H21, var_108, var_128, var_148) = 1) Then
  loc_14E5F75:     Set var_B0 = Me.TXT
  loc_14E5F7B:     Call 0.Method_Command2_Click0 (CInt(1), var_B4)
  loc_14E5F9B:     If (CDate(var_B4.Text) <= MemVar_1F920EC) Then
  loc_14E5F9E:       ' Referenced from: 14E6143
  loc_14E5FB2:       var_B8 = "Select Sum(AmtDr-AmtCr) as Bal from PayCharge where lOGSite_Code='" & MemVar_1F92078
  loc_14E5FCA:       Set var_B0 = Me.TXT
  loc_14E5FD0:       Call 0.Method_Command2_Click0 (CInt(&HA), var_B4, var_BC, var_B4.Text & "' and VType Not In ('ARRES','ADRES') and Foliono=")
  loc_14E5FD8:       var_E0 = var_B4.Text
  loc_14E5FE1:       var_158 = -1 & var_BC
  loc_14E5FEA:       unk_514A67.Execute var_14C.Text, var_E4, 
  loc_14E6026:       var_B4 = var_E4.Fields.Item("Bal")
  loc_14E602E:       var_E0 = CVar(var_B4) 'Address
  loc_14E6035:       Proc_6_39_E7C810(var_108)
  loc_14E603D:       var_F8 = 0
  loc_14E604F:       If CBool(var_108 <> var_F8) Then
  loc_14E6081:         If (MsgBox("Guest Balance is Not Zero", &H41, var_108, var_128, var_148) = 1) Then
  loc_14E6096:           fdPaymentCharge.OpenMode = 1
  loc_14E60A4:           fdPaymentCharge.ParentForm = "Check Out"
  loc_14E60B7:           Set var_B0 = Me.LblName
  loc_14E60BD:           Call 0.Method_Command2_Click0 (CInt(0), var_B4)
  loc_14E60DD:           Set var_E4 = New fdPaymentCharge.Txt
  loc_14E60E3:           Call 0.Method_Command2_Click0 (CInt(0), var_14C)
  loc_14E60EB:           fdPaymentCharge.Txt.Text = fdPaymentCharge.LblName.Text
  loc_14E6110:           Call fdPaymentCharge.Txt_Validate(CInt(0))
  loc_14E611E:           Call 0.Method_arg_54 ("Bill Settlement", 0)
  loc_14E6136:           Call 0.Method_arg_2B0 (1, var_F8)
  loc_14E6140:           Set var_8C = Nothing
  loc_14E6143:           GoTo loc_14E5F9E
  loc_14E6149:         Else
  loc_14E615C:           var_E0 = "Guest Not Checked Out"
  loc_14E6162:           MsgBox(var_E0, &H40, var_108, var_128, var_148)
  loc_14E6172:           Exit Sub
  loc_14E6173:         End If
  loc_14E6176:       Else
  loc_14E617C:         var_F8 = 0
  loc_14E61A9:         unk_514A67.Execute "Select NCUR from enviro where LOGsite_code='" & MemVar_1F92078 & "'", var_E0, -1
  loc_14E61B1:         var_B0 = var_B0.Fields
  loc_14E61B9:         var_F8 = var_B4.Item(var_B4)
  loc_14E61C1:         var_E4 = var_E4.Value
  loc_14E61CB:         MemVar_1F920EC = CDate(var_108)
  loc_14E61EE:         unk_514A67.BeginTrans var_E8
  loc_14E61F6:         var_E0 = Time
  loc_14E620A:         var_108 = "hh"
  loc_14E624E:         Proc_6_7_F25D88(var_1F8, MemVar_1F920EC, 1, 1, 1)
  loc_14E625E:         Proc_6_7_F25D88(var_248, MemVar_1F920EC, 1)
  loc_14E626E:         Proc_6_7_F25D88(var_2D8, CVar(Proc_6_15_EF2C1C(MemVar_1F920EC, var_108)))
  loc_14E6281:         Set var_B0 = Me.TXT
  loc_14E6287:         Call 0.Method_Command2_Click0 (CInt(&HA), var_B4)
  loc_14E628F:         var_B8 = var_B4.Text
  loc_14E62A8:         Call 0.Method_Command2_Click0 (CInt(0), var_14C)
  loc_14E62CF:         var_148 = (Format(var_E0, var_108) + ":")
  loc_14E62D6:         var_1A8 = (var_148 + Format(Time, "nn"))
  loc_14E62EA:         var_208 = "Update RoomOcc set chkouttime='" & var_1A8 & "',ChkOutDate=" & var_1F8 
  loc_14E62F3:         var_228 = var_208 & ",UserchkoutDate=" 
  loc_14E6326:         var_308 = var_228 & var_248 & ",ChkOutUser='" & CVar(MemVar_1F920C8) & "',Type='O',U_EntDt=" & var_2D8 & ",U_AE='E' where FolioNo=" 
  loc_14E635F:         var_3C8 = var_308 & CVar(var_B8) & " and Site_Code='" & CVar(MemVar_1F92070) & "' and RoomNO='" & CVar(var_14C.Text) & "' and (Type='' or Type is NULL)" 
  loc_14E636D:         unk_514A67.Execute CStr(var_3C8), var_3E8, -1
  loc_14E63E1:         Set var_B0 = Me.TXT
  loc_14E63E7:         Call 0.Method_Command2_Click0 (CInt(0), var_B4, var_B8, "Update RoomMast set ROOMSTAT='D' WHERE CODE='", var_E0)
  loc_14E63EF:         -1 = var_B4.Text
  loc_14E63F8:         var_BC = Me.TXT & var_B8
  loc_14E6408:         unk_514A67.Execute var_BC & "' AND TYPE='RO'", var_150, var_E0
  loc_14E643F:         Proc_6_7_F25D88(var_E0, MemVar_1F920EC, "Update PayCharge set SettleDate=")
  loc_14E6447:         var_108 = var_208 & var_E0 
  loc_14E6450:         var_128 = var_108 & "where FolioNo=" 
  loc_14E6462:         Set var_B0 = Me.TXT
  loc_14E6468:         Call 0.Method_Command2_Click0 (CInt(&HA), var_B4, var_B8)
  loc_14E6470:         var_128 = var_B4.Text
  loc_14E6478:         var_148 = CVar(var_B8) 'String
  loc_14E647B:         var_178 = -1 & var_148 
  loc_14E6497:         var_1A8 = Time & " and LogSite_Code='" & CVar(MemVar_1F92078) & "' and RoomNO='" 
  loc_14E64A9:         Set var_E4 = Me.TXT
  loc_14E64AF:         Call 0.Method_Command2_Click0 (CInt(0), var_14C, var_BC)
  loc_14E64B7:         var_1A8 = var_14C.Text
  loc_14E64CF:         var_C0 = CStr(var_150 & CVar(var_BC) & "'")
  loc_14E64D9:         unk_514A67.Execute var_C0, , 
  loc_14E6511:         If (MemVar_1F921D0 = "Y") Then
  loc_14E651A:           var_F8 = 0
  loc_14E6539:           unk_514A7C.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_E0, -1
  loc_14E6541:           var_B0 = var_B0.Fields
  loc_14E6549:           var_F8 = var_B4.Item(var_B4)
  loc_14E6551:           var_E4 = var_E4.Value
  loc_14E655B:           var_A8 = CLng(var_108)
  loc_14E6587:           var_BC = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_A8)
  loc_14E659F:           Set var_B0 = Me.TXT
  loc_14E65A5:           Call 0.Method_Command2_Click0 (CInt(0), var_B4, var_C0, var_BC & ",'CHKOT','", var_E0)
  loc_14E65AD:           -1 = var_B4.Text
  loc_14E65BD:           var_164 = var_400 & var_C0 & "','"
  loc_14E65CE:           Set var_E4 = Me.TXT
  loc_14E65D4:           Call 0.Method_Command2_Click0 (CInt(0), var_14C, var_160)
  loc_14E65DC:           var_164 = var_14C.Text
  loc_14E65EC:           var_3F4 = var_A8 & var_160 & "','"
  loc_14E65FD:           Set var_150 = Me.TXT
  loc_14E6603:           Call 0.Method_Command2_Click0 (CInt(9), var_154, var_3F0)
  loc_14E660B:           var_3F4 = var_154.Text
  loc_14E6624:           unk_514A7C.Execute var_108 & var_3F0 & "',0)", , 
  loc_14E6658:         End If
  loc_14E665E:         unk_514A67.CommitTrans
  loc_14E6663:         Call Proc_174_55_EAB260()
  loc_14E6668:       End If
  loc_14E666B:     Else
  loc_14E6684:       MsgBox("InValid Check Out Date", 0, var_108, var_128, var_148)
  loc_14E6694:       Exit Sub
  loc_14E6695:     End If
  loc_14E6698:   Else
  loc_14E669F:     Call Txt_GotFocus()
  loc_14E66A4:   End If
  loc_14E66A7: Else
  loc_14E66B5:   Set var_B0 = Me.TXT
  loc_14E66BB:   Call 0.Method_Command2_Click0 (CInt(0), var_B4)
  loc_14E66C3:   var_B8 = var_B4.Text
  loc_14E66DE:   Set var_E4 = Me.TXT
  loc_14E66E4:   Call 0.Method_Command2_Click0 (CInt(&HA), var_14C, var_BC)
  loc_14E66EC:   (var_B8 <> vbNullString) = var_14C.Text
  loc_14E670C:   If (CInt(0) And (var_BC <> vbNullString)) Then
  loc_14E6722:     var_E0 = "Want to Cancel Check Out ?"
  loc_14E673E:     If (MsgBox(var_E0, &H24, var_108, var_128, var_148) = 6) Then
  loc_14E676E:       Set var_B0 = Me.TXT
  loc_14E6774:       Call 0.Method_Command2_Click0 (CInt(0), var_B4, var_B8, "Select Count(*) from RoomOcc where RoomNO='", var_E0, -1)
  loc_14E6795:       unk_514A67.Execute var_14C & var_B8 & "' and CHkoutDate is NULL", 0, var_150
  loc_14E679D:       var_108 = var_B4.Text.Fields
  loc_14E67A5:        = var_14C.Item()
  loc_14E67AD:        = var_150.Value
  loc_14E67DA:       If (var_108 > 0) Then
  loc_14E67F6:         MsgBox("Sorry! Room Already Occupied", &H40, var_108, var_128, var_148)
  loc_14E6806:         Exit Sub
  loc_14E6807:       End If
  loc_14E6810:       unk_514A67.BeginTrans var_E8
  loc_14E6832:       Proc_6_7_F25D88(var_108, CVar(Proc_6_15_EF2C1C("Update RoomOcc set chkouttime='',ChkOutDate=NULL,Type='',U_EntDt=", var_228)))
  loc_14E683A:       var_128 = -1 & var_108 
  loc_14E6843:       var_148 = var_128 & ",U_AE='E' where Type='O' AND FolioNo=" 
  loc_14E6855:       Set var_B0 = Me.TXT
  loc_14E685B:       Call 0.Method_Command2_Click0 (CInt(&HA), var_B4, var_B8)
  loc_14E6863:       var_148 = var_B4.Text
  loc_14E689C:       Set var_E4 = Me.TXT
  loc_14E68A2:       Call 0.Method_Command2_Click0 (CInt(0), var_14C)
  loc_14E68CC:       unk_514A67.Execute CStr(var_150 & CVar(var_B8) & " and Site_Code='" & CVar(MemVar_1F92070) & "' and RoomNO='" & CVar(var_14C.Text) & "'"), , 
  loc_14E6904:       unk_514A67.CommitTrans
  loc_14E6909:     End If
  loc_14E6909:     GoTo loc_14E690C
  loc_14E690C:     ' Referenced from:   14E6909
  loc_14E690C:   End If
  loc_14E690C: End If
  loc_14E6917: Me.Requery -1
  loc_14E6923: Call Txt_GotFocus()
  loc_14E6928: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11C0DFC
  'Data Table: 514A60
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_C4 As String
  Dim var_90 As Fields15
  Dim var_C8 As Variant
  loc_11C09B6: Set var_88 = Me.TXT
  loc_11C09BC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11C09CA: Proc_6_74_E226B0(var_8C)
  loc_11C09D9: var_92 = Index
  loc_11C09E4: If (var_92 = CInt(0)) Then
  loc_11C09FE:   If (Me.RecordCount > 0) Then
  loc_11C0A0C:     Set var_8C = var_8C(var_92)
  loc_11C0A24:     Proc_6_137_1193554(Me.DGRoomNo, global_100)
  loc_11C0A32:   End If
  loc_11C0A80:   Set var_88 = Me.TXT
  loc_11C0A86:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11C0A8E:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_11C0AB4:   If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_11C0AB7:     Exit Sub
  loc_11C0AB8:   End If
  loc_11C0AC5:   Set var_88 = Me.TXT
  loc_11C0ACB:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C0AD3:   var_A0 = var_8C.Text
  loc_11C0AE5:   var_C4 = "RoomNo"
  loc_11C0B20:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_11C0B29:     Me.MoveFirst
  loc_11C0B4C:     Set var_88 = Me.TXT
  loc_11C0B52:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_11C0B5A:     0 = var_8C.Text
  loc_11C0B73:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_11C0B88:   End If
  loc_11C0B8B: Else
  loc_11C0B93:   If (var_92 = CInt(4)) Then
  loc_11C0BAD:     If (Me.RecordCount > 0) Then
  loc_11C0BBB:       Set var_8C = ()
  loc_11C0BD3:       Proc_6_137_1193554((), global_104)
  loc_11C0BE1:     End If
  loc_11C0C2F:     Set var_88 = Me.TXT
  loc_11C0C35:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11C0C3D:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_11C0C63:     If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_11C0C66:       Exit Sub
  loc_11C0C67:     End If
  loc_11C0C74:     Set var_88 = Me.TXT
  loc_11C0C7A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C0C82:     var_A0 = var_8C.Text
  loc_11C0C94:     var_C4 = "Name"
  loc_11C0CAB:     var_C8 = Me.Fields.Item(var_C4)
  loc_11C0CCF:     If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_11C0CD8:       Me.MoveFirst
  loc_11C0CFB:       Set var_88 = Me.TXT
  loc_11C0D01:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_11C0D09:       0 = var_8C.Text
  loc_11C0D22:       Me.Find 1 & var_A0 & "'", var_C4, 
  loc_11C0D37:     End If
  loc_11C0D3A:   Else
  loc_11C0D42:     If (var_92 = CInt(8)) Then
  loc_11C0D53:       Set var_88 = Me.TXT
  loc_11C0D59:       Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_11C0D71:       global_84 = Val(var_8C.Text)
  loc_11C0D7E:     End If
  loc_11C0D7E:   End If
  loc_11C0D7E: End If
  loc_11C0D8D: Set var_88 = Me.TXT
  loc_11C0D93: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C0D9B: var_8C.SelStart = 0
  loc_11C0DB4: Set var_88 = Me.TXT
  loc_11C0DBA: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C0DD5: Set var_90 = Me.TXT
  loc_11C0DDB: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_11C0DE3: var_C8.SelLength = Len(var_8C.Text)
  loc_11C0DF6: Call Proc_174_56_EBC19C(global_84)
  loc_11C0DFB: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10FDE94
  'Data Table: 514A60
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_94 As DataGrid
  loc_10FDB73: var_88 = Shift
  loc_10FDB80: If (CLng(Shift) = &H1B) Then
  loc_10FDB83:   Call Proc_174_56_EBC19C(var_88)
  loc_10FDB88:   Exit Sub
  loc_10FDB89: End If
  loc_10FDB8C: var_8A = KeyCode
  loc_10FDB97: If (var_8A = CInt(0)) Then
  loc_10FDBB7:   Set var_A4 = (var_8A)
  loc_10FDBC2:   Set var_A0 = Nothing
  loc_10FDBF4:   Proc_6_69_134A198(Me.DGRoomNo, Me.TXT, CInt(0), global_100, Shift)
  loc_10FDC63:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_10FDC6A:     Set var_A0 = Me.DGRoomNo
  loc_10FDC89:     Proc_6_138_106D6F8(var_A0, global_100, KeyCode, 1(0))
  loc_10FDC97:   End If
  loc_10FDC9A: Else
  loc_10FDCA2:   If (var_8A = CInt(4)) Then
  loc_10FDCCD:     Set var_A0 = Nothing
  loc_10FDCFF:     Proc_6_69_134A198((0)(var_A0), Me.TXT, CInt(4), global_104, Shift)
  loc_10FDD6E:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_10FDD75:       Set var_A0 = 1(0)
  loc_10FDD7C:       Set var_94 = (0)(var_A0)
  loc_10FDD94:       Proc_6_138_106D6F8(var_A0, global_104, KeyCode)
  loc_10FDDA2:     End If
  loc_10FDDA2:   End If
  loc_10FDDA2: End If
  loc_10FDDDD: If (0 And (CBool(var_94((CBool(Me.DGRoomNo.Visible) = 0)).Visible) = 0)) Then
  loc_10FDDFE:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(8))) Then
  loc_10FDE07:     Call Txt_Validate(KeyCode)
  loc_10FDE12:     If (var_86 = &HFF) Then
  loc_10FDE15:       Exit Sub
  loc_10FDE16:     End If
  loc_10FDE4D:     If (MsgBox("Save Record ?", 4, "Save Data", var_118, var_138) = 6) Then
  loc_10FDE50:       Call TopCtrl1_UnknownEvent_16()
  loc_10FDE55:     End If
  loc_10FDE55:     Exit Sub
  loc_10FDE56:   End If
  loc_10FDE6B:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10FDE74:     Proc_6_75_E527CC(Shift, arg_14)
  loc_10FDE79:   End If
  loc_10FDE83:   If (CLng(Shift) = &H26) Then
  loc_10FDE8C:     Proc_6_76_E52838(Shift, arg_14)
  loc_10FDE91:   End If
  loc_10FDE91: End If
  loc_10FDE91: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F6E210
  'Data Table: 514A60
  Dim var_86 As Integer
  loc_F6E0D7: Proc_6_58_E054C0(arg_10)
  loc_F6E0DF: var_86 = KeyAscii
  loc_F6E0EA: If (var_86 = CInt(0)) Then
  loc_F6E109:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F6E136:     Proc_6_89_146F1AC(Me.TXT, KeyAscii, global_100, arg_10)
  loc_F6E150:     Set var_A8 = 0("RoomNo")
  loc_F6E168:     Proc_6_138_106D6F8(Me.DGRoomNo, global_100, KeyAscii)
  loc_F6E176:   End If
  loc_F6E179: Else
  loc_F6E181:   If (var_86 = CInt(4)) Then
  loc_F6E1A0:     If (CBool(var_86(var_A8).Visible) = &HFF) Then
  loc_F6E1CD:       Proc_6_89_146F1AC(Me.TXT, KeyAscii, global_104)
  loc_F6E1E7:       Set var_A8 = (0)
  loc_F6E1FF:       Proc_6_138_106D6F8("Name"(arg_10), global_104)
  loc_F6E20D:     End If
  loc_F6E20D:   End If
  loc_F6E20D: End If
  loc_F6E20D: Exit Sub
  loc_F6E20E: Set var_1788 = KeyAscii
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F1D834
  'Data Table: 514A60
  Dim var_86 As Integer
  loc_F1D73F: var_86 = KeyCode
  loc_F1D74A: If (var_86 = CInt(0)) Then
  loc_F1D769:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F1D77D:     var_A8 = "RoomNO"
  loc_F1D7A5:     Proc_6_68_129FB34(Me.DGRoomNo, Me.TXT, CInt(0), global_100)
  loc_F1D7B8:   End If
  loc_F1D7BB: Else
  loc_F1D7C3:   If (var_86 = CInt(4)) Then
  loc_F1D7E2:     If (CBool(var_A8(Shift).Visible) = &HFF) Then
  loc_F1D7F6:       var_A8 = "Name"
  loc_F1D81E:       Proc_6_68_129FB34((var_86), Me.TXT, CInt(4))
  loc_F1D831:     End If
  loc_F1D831:   End If
  loc_F1D831: End If
  loc_F1D831: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E45F34
  'Data Table: 514A60
  loc_E45F12: Set var_88 = Me.TXT
  loc_E45F18: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E45F26: Proc_6_73_E22704(var_8C)
  loc_E45F32: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '186F940
  'Data Table: 514A60
  Dim var_C0 As String
  Dim var_C4 As String
  Dim unk_514A67 As Connection15
  Dim var_D4 As Variant
  Dim var_A8 As Double
  Dim var_10A As Integer
  Dim Me As Variant
  Dim var_110 As Variant
  Dim var_E8 As Fields15
  Dim var_124 As TextBox
  Dim var_E4 As Variant
  Dim var_120 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_148 As String
  Dim var_14C As Fields15
  Dim var_170 As Variant
  Dim var_194 As String
  Dim var_190 As TextBox
  Dim var_144 As Variant
  Dim var_180 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_264 As Variant
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_3C4 As Variant
  Dim var_3E4 As Variant
  Dim var_444 As Variant
  Dim var_46C As Double
  Dim var_1E4 As Variant
  Dim var_AC As Recordset15
  Dim var_98 As Recordset15
  Dim var_18C As Fields15
  Dim var_464 As Variant
  Dim var_4DC As Variant
  Dim var_4CC As Variant
  Dim var_B0 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_B8 As Recordset15
  Dim var_A0 As Double
  Dim var_234 As Variant
  Dim var_560 As Fields15
  loc_186D3A8: var_C0 = "Select * from Enviro where LogSite_Code='" & MemVar_1F92078
  loc_186D3B8: unk_514A67.Execute var_C0 & "'", var_E4, -1
  loc_186D3C3: Set var_B4 = var_E8
  loc_186D3D3: On Error Goto loc_186F915
  loc_186D403: var_A8 = CDate(Format(Now, "hh:nn"))
  loc_186D414: var_10A = Cancel
  loc_186D41F: If (var_10A = CInt(0)) Then
  loc_186D42E:   If (global_72 = 1) Then
  loc_186D437:     Me.MoveFirst
  loc_186D45A:     Set var_E8 = Me.TXT
  loc_186D460:     Call 0.Method_Txt_Validate0 (Cancel, var_110, var_C0, "roomno='", 0, 1)
  loc_186D468:     var_D4 = var_110.Text
  loc_186D481:     Me.Find var_10A & var_C0 & "'", var_A8, 1
  loc_186D496:   End If
  loc_186D4E4:   Set var_E8 = Me.TXT
  loc_186D4EA:   Call 0.Method_Txt_Validate0 (Cancel, var_110, var_C0)
  loc_186D4F2:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_110.Text
  loc_186D50A:   If (1 Or (var_C0 = vbNullString)) Then
  loc_186D51A:     Set var_E8 = Me.TXT
  loc_186D520:     Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_186D528:     var_110.Tag = vbNullString
  loc_186D534:     Exit Sub
  loc_186D535:   End If
  loc_186D570:   Set var_120 = Me.TXT
  loc_186D576:   Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_186D57E:   var_124.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_186D5CF:   Set var_120 = Me.TXT
  loc_186D5D5:   Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_186D5DD:   var_124.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_186D62C:   Set var_120 = Me.TXT
  loc_186D632:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_124)
  loc_186D63A:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("FolioNo")))
  loc_186D687:   Set var_120 = Me.TXT
  loc_186D68D:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_124)
  loc_186D695:   var_124.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("DocID")))
  loc_186D6E2:   Set var_120 = Me.TXT
  loc_186D6E8:   Call 0.Method_Txt_Validate0 (CInt(&H16), var_124)
  loc_186D6F0:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("PlanCode")))
  loc_186D71E:   var_110 = Me.Fields.Item("ChkInDate")
  loc_186D73D:   Set var_120 = Me.TXT
  loc_186D743:   Call 0.Method_Txt_Validate0 (CInt(1), var_124)
  loc_186D74B:   var_124.Text = Proc_6_38_E68A98(CVar(var_110))
  loc_186D76A:   Set var_E8 = Me.TXT
  loc_186D770:   Call 0.Method_Txt_Validate0 (CInt(1), var_110)
  loc_186D7AA:   1(CStr(Format(CVar(var_110), "DDDD"))).Caption = 1
  loc_186D815:   Set var_120 = Me.TXT
  loc_186D81B:   Call 0.Method_Txt_Validate0 (CInt(2), var_124)
  loc_186D823:   var_124.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")))), 2))
  loc_186D877:   var_F8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")))) 'String
  loc_186D894:   Set var_120 = Me.TXT
  loc_186D89A:   Call 0.Method_Txt_Validate0 (CInt(3), var_124)
  loc_186D8A2:   var_124.Text = CStr(Right(var_F8, 2))
  loc_186D8FC:   Set var_120 = Me.TXT
  loc_186D902:   Call 0.Method_Txt_Validate0 (CInt(9), var_124)
  loc_186D90A:   var_124.Tag = CStr(Me.Fields.Item("GuestCode").Value)
  loc_186D95C:   Set var_120 = Me.TXT
  loc_186D962:   Call 0.Method_Txt_Validate0 (CInt(9), var_124)
  loc_186D96A:   var_124.Text = CStr(Me.Fields.Item("GuestName").Value)
  loc_186D9B9:   Set var_120 = Me.TXT
  loc_186D9BF:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_124)
  loc_186D9C7:   var_124.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("companyCode")))
  loc_186DA14:   Set var_120 = Me.TXT
  loc_186DA1A:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_124)
  loc_186DA22:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CompanyName")))
  loc_186DA6F:   Set var_120 = Me.TXT
  loc_186DA75:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_124)
  loc_186DA7D:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("GuestStatus")))
  loc_186DABA:   Proc_6_39_E7C810(var_F8, CVar(Me.Fields.Item("OldAdult")))
  loc_186DAD1:   Set var_120 = Me.TXT
  loc_186DAD7:   Call 0.Method_Txt_Validate0 (CInt(5), var_124)
  loc_186DADF:   var_124.Text = CStr(var_F8)
  loc_186DB20:   Proc_6_39_E7C810(var_F8, CVar(Me.Fields.Item("OldChild")))
  loc_186DB37:   Set var_120 = Me.TXT
  loc_186DB3D:   Call 0.Method_Txt_Validate0 (CInt(6), var_124)
  loc_186DB45:   var_124.Text = CStr(var_F8)
  loc_186DB96:   Set var_120 = Me.TXT
  loc_186DB9C:   Call 0.Method_Txt_Validate0 (CInt(7), var_124)
  loc_186DBA4:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RateCode")))
  loc_186DBE1:   Proc_6_39_E7C810(var_F8, CVar(Me.Fields.Item("RoomRate")))
  loc_186DBF8:   Set var_120 = Me.TXT
  loc_186DBFE:   Call 0.Method_Txt_Validate0 (CInt(8), var_124)
  loc_186DC06:   var_124.Text = CStr(var_F8)
  loc_186DC57:   Set var_120 = Me.TXT
  loc_186DC5D:   Call 0.Method_Txt_Validate0 (CInt(4), var_124)
  loc_186DC65:   var_124.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCatCode")))
  loc_186DCB2:   Set var_120 = Me.TXT
  loc_186DCB8:   Call 0.Method_Txt_Validate0 (CInt(4), var_124)
  loc_186DCC0:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCat")))
  loc_186DD0D:   Set var_120 = Me.TXT
  loc_186DD13:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_124)
  loc_186DD1B:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("STATUSNAME")))
  loc_186DD68:   Set var_120 = Me.TXT
  loc_186DD6E:   Call 0.Method_Txt_Validate0 (CInt(&H12), var_124)
  loc_186DD76:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments1")))
  loc_186DDC3:   Set var_120 = Me.TXT
  loc_186DDC9:   Call 0.Method_Txt_Validate0 (CInt(&H11), var_124)
  loc_186DDD1:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments2")))
  loc_186DE1E:   Set var_120 = Me.TXT
  loc_186DE24:   Call 0.Method_Txt_Validate0 (CInt(&H10), var_124)
  loc_186DE2C:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments3")))
  loc_186DE84:   Set var_120 = Me.TXT
  loc_186DE8A:   Call 0.Method_Txt_Validate0 (CInt(&H13), var_124)
  loc_186DE92:   var_124.Text = Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("Add1"))))
  loc_186DEEE:   Set var_120 = Me.TXT
  loc_186DEF4:   Call 0.Method_Txt_Validate0 (CInt(&H14), var_124)
  loc_186DEFC:   var_124.Text = Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("Add2"))))
  loc_186DF26:   var_E8 = Me.Fields
  loc_186DF6E:   var_124 = Me.Fields.Item("StateName")
  loc_186DFD2:   var_194 = var_E8 & Proc_6_38_E68A98(Trim(CVar(var_124)), Proc_6_38_E68A98(Trim(CVar(var_E8.Item("CityName")))) & ",") & "," & Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("CountryName"))))
  loc_186DFE0:   Set var_18C = Me.TXT
  loc_186DFE6:   Call 0.Method_Txt_Validate0 (CInt(&H15), var_190)
  loc_186DFEE:   var_190.Text = var_194
  loc_186E059:   Set var_120 = Me.TXT
  loc_186E05F:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_124)
  loc_186E067:   var_124.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DepDate")))
  loc_186E0CE:   Set var_120 = Me.TXT
  loc_186E0D4:   Call 0.Method_Txt_Validate0 (CInt(&HF), var_124)
  loc_186E0DC:   var_124.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_186E114:   var_110 = Me.Fields.Item("DepTime")
  loc_186E14D:   Set var_120 = Me.TXT
  loc_186E153:   Call 0.Method_Txt_Validate0 (CInt(&HE), var_124)
  loc_186E15B:   var_124.Text = CStr(Right(CVar(Proc_6_38_E68A98(CVar(var_110))), 2))
  loc_186E187:   Set var_E8 = Me.TXT
  loc_186E18D:   Call 0.Method_Txt_Validate0 (CInt(1), var_110)
  loc_186E195:   var_C0 = var_110.Text
  loc_186E1DE:   If ((CDate(var_C0) <= MemVar_1F920EC) And IsNull(CVar(Me.Fields.Item("ChkOutDate")))) Then
  loc_186E1E7:     Call 0.Method_arg_50 (var_C0)
  loc_186E1F7:     If (var_C0 <> "Reverse Check Out Entry") Then
  loc_186E21F:       var_E4 = Me.Fields.Item("ChkInDate").Value
  loc_186E239:       For var_1A4 = CDate(var_E4) To MemVar_1F920EC: var_94 = var_1A4 'Double
  loc_186E253:         var_F8 = CVar("select ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP]  FROM ((ROOMOCC inner JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) inner JOIN RevMast ON RoomCat.RevCode = RevMast.Code) " & "inner JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE ") 'String
  loc_186E261:         Proc_6_7_F25D88(var_E4, var_94, var_F8, var_464)
  loc_186E269:         var_108 = -1 & var_E4 
  loc_186E27C:         var_170 = Right(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInDate")))), 2) & ">=chkindate and Roomocc.LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_186E2A3:         var_110 = Me.Fields.Item("DocID")
  loc_186E2B2:         Proc_6_17_EAA2B0(var_1E4, CVar(var_110), var_170 & "' and RoomOcc.Docid=")
  loc_186E2D2:         Proc_6_7_F25D88(var_234, var_94)
  loc_186E2E3:         var_264 = var_18C & var_1E4 & " and RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_234 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_186E2F2:         Proc_6_7_F25D88(var_284, var_94)
  loc_186E312:         Proc_6_7_F25D88(var_2D4, var_94)
  loc_186E336:         var_344 = var_264 & var_284 & ">=chkindate and ChngDate<=" & var_2D4 & " and Roomocc.LogSite_Code='" & CVar(MemVar_1F92078) & "' and RoomOcc.Docid=" 
  loc_186E354:         var_124 = Me.Fields.Item("DocID")
  loc_186E363:         Proc_6_17_EAA2B0(var_374, CVar(var_124))
  loc_186E387:         var_3E4 = var_344 & var_374 & " Order By ChngDate Desc,Sno Desc) and Roomocc.LogSite_Code='" & CVar(MemVar_1F92078) & "' and RoomOcc.Docid=" 
  loc_186E39D:         var_14C = Me.Fields
  loc_186E3B4:         Proc_6_17_EAA2B0(var_414, CVar(var_14C.Item("DocID")))
  loc_186E3D3:         unk_514A67.Execute CStr(var_3E4 & var_414 & ")"), CDate(var_E4), 
  loc_186E3DE:         Set var_98 = var_18C
  loc_186E43E:         If (CDbl(global_76) <> CDbl(0)) Then
  loc_186E44F:           Set var_E8 = Me.TXT
  loc_186E455:           Call 0.Method_Txt_Validate0 (CInt(&HA), var_110)
  loc_186E484:           If (CDbl(global_76) = CDbl(Val(var_110.Text))) Then
  loc_186E492:             Proc_6_7_F25D88(var_E4, var_94)
  loc_186E4D3:             Set var_120 = Me.TXT
  loc_186E4D9:             Call 0.Method_Txt_Validate0 (CInt(&HA), var_124)
  loc_186E4EE:             var_46C = Val(var_124.Text)
  loc_186E50C:             var_F8 = CVar("select Count(*) from Paycharge where Vtype in ('RC') and Site_Code='" & MemVar_1F92070 & "' and Vdate=") 'String
  loc_186E52E:             var_1E4 = var_F8 & var_E4 & " and FolioNoDOCID='" & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("mFolioNoDocid")))) & "' And (RelatedFolioNo=" 
  loc_186E542:             var_214 = var_1E4 & CVar(var_46C) & " Or RelatedFolioNo=0)" 
  loc_186E550:             unk_514A67.Execute CStr(var_214), var_234, -1
  loc_186E55B:             Set var_AC = var_14C
  loc_186E590:           Else
  loc_186E59B:             Proc_6_7_F25D88(var_E4, var_94, var_14C)
  loc_186E5DC:             Set var_120 = Me.TXT
  loc_186E5E2:             Call 0.Method_Txt_Validate0 (CInt(&HA), var_124)
  loc_186E5F7:             var_46C = Val(var_124.Text)
  loc_186E615:             var_F8 = CVar("select Count(*) from Paycharge where Vtype in ('RC') and Site_Code='" & MemVar_1F92070 & "' and Vdate=") 'String
  loc_186E62E:             var_1D4 = var_F8 & var_E4 & " and FolioNoDOCID='" & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("mFolioNoDocid")), var_46C)) 
  loc_186E642:             var_1F4 = var_1D4 & "' And RelatedFolioNo=" & CVar(var_46C) 
  loc_186E650:             unk_514A67.Execute CStr(var_1F4), var_214, -1
  loc_186E65B:             Set var_AC = var_14C
  loc_186E68B:           End If
  loc_186E68E:         Else
  loc_186E6A9:           var_F8 = CVar("select Count(*) from Paycharge where Vtype in ('RC') and Site_Code='" & MemVar_1F92070 & "' and Vdate=") 'String
  loc_186E6B7:           Proc_6_7_F25D88(var_E4, var_94, var_F8, var_1F4, -1)
  loc_186E6F7:           var_180 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DocID")), var_120 & var_E4 & " and FolioNoDocid='", var_14C)) 'String
  loc_186E703:           var_1E4 = var_46C & var_180 & "'" 
  loc_186E711:           unk_514A67.Execute CStr(var_1E4), var_46C, 
  loc_186E71C:           Set var_AC = var_120
  loc_186E742:         End If
  loc_186E75C:         var_110 = var_AC.Fields.Item(0)
  loc_186E764:         var_E4 = var_110.Value
  loc_186E77E:         If (var_E4 <= 0) Then
  loc_186E78F:           Set var_E8 = Me.TXT
  loc_186E795:           Call 0.Method_Txt_Validate0 (CInt(&HA), var_110)
  loc_186E7B7:           If (var_110.Text = global_76) Then
  loc_186E7CE:             var_F8 = CVar("select ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP]  FROM ((ROOMOCC inner JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) inner JOIN RevMast ON RoomCat.RevCode = RevMast.Code) " & "inner JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE ") 'String
  loc_186E7DC:             Proc_6_7_F25D88(var_E4, var_94, var_F8)
  loc_186E82D:             Proc_6_17_EAA2B0(var_1E4, CVar(Me.Fields.Item("DocID")), var_55C & var_E4 & ">=chkindate and Roomocc.LogSite_Code='" & CVar(MemVar_1F92078) & "' and RoomOcc.Docid=")
  loc_186E835:             var_1F4 = -1 & var_1E4 
  loc_186E84D:             Proc_6_7_F25D88(var_234, var_94)
  loc_186E85E:             var_264 = var_1F4 & " and RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_234 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_186E86D:             Proc_6_7_F25D88(var_284, var_94)
  loc_186E88D:             Proc_6_7_F25D88(var_2D4, var_94)
  loc_186E8A8:             var_324 = var_264 & var_284 & ">=chkindate and ChngDate<=" & var_2D4 & " and Roomocc.LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_186E8DE:             Proc_6_17_EAA2B0(var_374, CVar(Me.Fields.Item("DocID")))
  loc_186E8F9:             var_3C4 = var_324 & "' and RoomOcc.Docid=" & var_374 & " Order By ChngDate Desc,Sno Desc) and Roomocc.LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_186E92F:             Proc_6_17_EAA2B0(var_414, CVar(Me.Fields.Item("DocID")))
  loc_186E940:             var_444 = var_3C4 & "' and RoomOcc.Docid=" & var_414 & ") and RoomOcc.Docid NOT IN (SELECT Distinct FolioNoDocid FROM PAYCHARGE where RoomNo='" 
  loc_186E953:             var_18C = var_98.Fields
  loc_186E963:             var_464 = CVar(var_18C.Item("RoomNo")) 'Address
  loc_186E987:             Proc_6_7_F25D88(var_4CC, var_94)
  loc_186E98F:             var_4DC = var_560 & CVar(Proc_6_38_E68A98(var_464, var_444)) & "' And  VDate=" & var_4CC 
  loc_186E9B9:             unk_514A67.Execute CStr(var_4DC & " AND VType in ('RC') and LogSite_Code='" & CVar(MemVar_1F92078) & "')"), , 
  loc_186E9C4:             Set var_B0 = var_560
  loc_186EA2F:           Else
  loc_186EA43:             var_F8 = CVar("select ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP]  FROM ((ROOMOCC inner JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) inner JOIN RevMast ON RoomCat.RevCode = RevMast.Code) " & "inner JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE ") 'String
  loc_186EA51:             Proc_6_7_F25D88(var_E4, var_94, var_F8)
  loc_186EA62:             var_144 = var_4DC & var_E4 & ">=chkindate and Roomocc.LogSite_Code='" 
  loc_186EAA2:             Proc_6_17_EAA2B0(var_1E4, CVar(Me.Fields.Item("DocID")), var_144 & CVar(MemVar_1F92078) & "' and RoomOcc.Docid=")
  loc_186EAAA:             var_1F4 = -1 & var_1E4 
  loc_186EAC2:             Proc_6_7_F25D88(var_234, var_94)
  loc_186EAD3:             var_264 = var_1F4 & " and RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_234 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_186EAE2:             Proc_6_7_F25D88(var_284, var_94)
  loc_186EB02:             Proc_6_7_F25D88(var_2D4, var_94)
  loc_186EB1D:             var_324 = var_264 & var_284 & ">=chkindate and ChngDate<=" & var_2D4 & " and Roomocc.LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_186EB3C:             var_120 = Me.Fields
  loc_186EB53:             Proc_6_17_EAA2B0(var_374, CVar(var_120.Item("DocID")))
  loc_186EB6E:             var_3C4 = var_324 & "' and RoomOcc.Docid=" & var_374 & " Order By ChngDate Desc,Sno Desc) and Roomocc.LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_186EBA4:             Proc_6_17_EAA2B0(var_414, CVar(Me.Fields.Item("DocID")))
  loc_186EBB5:             var_444 = var_3C4 & "' and RoomOcc.Docid=" & var_414 & ") and RoomOcc.Docid NOT IN (SELECT Distinct FolioNoDocid FROM PAYCHARGE where VDate=" 
  loc_186EBC4:             Proc_6_7_F25D88(var_464, var_94)
  loc_186EBF6:             unk_514A67.Execute CStr(var_444 & var_464 & " AND VType in ('RC') and LogSite_Code='" & CVar(MemVar_1F92078) & "')"), var_18C, 
  loc_186EC01:             Set var_B0 = var_18C
  loc_186EC5F:           End If
  loc_186EC73:           If (var_B0.RecordCount > 0) Then
  loc_186ECC9:             unk_514A67.Execute CStr("Select * from RoomOcc Where DocId='" & var_B0.Fields.Item("DocID").Value & "' And SNo=1"), var_144, -1
  loc_186ECD4:             Set var_B8 = var_120
  loc_186ED27:             If (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CheckOut"))) = "24 Hrs") Then
  loc_186EDD8:               Proc_96_11_EF9DD8(CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ChkInTime")))), "hh:nn")), CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("variation")), 1)), "hh:nn")), 1)
  loc_186EDDD:               var_A0 = 1
  loc_186EE08:             Else
  loc_186EE42:               var_108 = "hh:nn"
  loc_186EE51:               var_144 = Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CheckoutVar")), var_A0)), var_108)
  loc_186EEB6:               Proc_96_11_EF9DD8(CDate(var_144), CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("variation")), 1, 1)), "hh:nn")), 1)
  loc_186EEBB:               var_A0 = 1
  loc_186EEE3:             End If
  loc_186EF1C:             If (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomRentChkOutPost")), var_A0) = "Auto") Then
  loc_186EF1F:               GoTo loc_186EFEE
  loc_186EF22:             End If
  loc_186EF41:             var_F8 = CVar(var_B8.Fields.Item("ChkInDate")) 'Address
  loc_186EFB1:             If ((((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CheckOut"))) = "24 Hrs") And (var_94 = MemVar_1F920EC)) And (var_94 <> CDate(Proc_6_38_E68A98(var_F8, 1)))) And (var_A0 >= var_A8)) Then
  loc_186EFB4:               GoTo loc_186F8C7
  loc_186EFB7:             End If
  loc_186EFEB:             If (MsgBox("Want to Post Charges for " & CDate(var_94), &H24, var_F8, var_108, var_144) = 6) Then
  loc_186EFEE:               ' Referenced from: 186EF1F
  loc_186F02D:               var_120 = var_B4.Fields
  loc_186F046:               var_C4 = Proc_6_38_E68A98(CVar(var_120.Item("RoomRentBefChkOut")), (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CheckOut"))) = "Other"))
  loc_186F064:               If (var_120 And (var_C4 = "Yes")) Then
  loc_186F076:                 var_E8 = var_B8.Fields
  loc_186F0B1:                 var_F8 = CVar(var_B4.Fields.Item("CheckoutVar")) 'Address
  loc_186F19A:                 Proc_96_12_F095A0(CDate(Format(CVar(Proc_6_38_E68A98(var_F8)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VariationBefore")), 1)), "hh:nn")), (var_94 = CDate(Proc_6_38_E68A98(CVar(var_E8.Item("ChkInDate"))))), 1)
  loc_186F1E1:                 If (1 And (1 > CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ChkInTime")), 1)), "hh:nn")))) Then
  loc_186F209:                   unk_514A67.Execute CStr(var_B0.Source), var_F8, -1
  loc_186F277:                   Proc_96_4_1C1BDCC(CDate(Format$(var_94, "dd/MMM/yyyy")), var_E8, 0, "*", 0)
  loc_186F28C:                 End If
  loc_186F28C:               End If
  loc_186F29B:               If ((var_94 = MemVar_1F920EC) And (var_A0 >= var_A8)) Then
  loc_186F2AD:                 var_E8 = var_B4.Fields
  loc_186F2F6:                 var_C4 = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CheckOut")), (Proc_6_38_E68A98(CVar(var_E8.Item("RoomRentChkOutPost")), 1, 1) = "Semi"))
  loc_186F34B:                 If (1 And (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomRentBefChkOut")), (var_E8 And (var_C4 = "Other"))) <> "Yes")) Then
  loc_186F378:                   var_148 = 0
  loc_186F3A1:                   Proc_96_4_1C1BDCC(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*")
  loc_186F3B9:                 Else
  loc_186F43C:                   var_C4 = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CheckOut")), (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomRentChkOutPost")), 1) = "Auto"))
  loc_186F4A6:                   If (((1 And (var_C4 = "Other")) And (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomRentBefChkOut"))) <> "Yes")) And (var_94 = CDate(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ChkInDate")), var_148)))) Then
  loc_186F4D3:                     var_148 = 0
  loc_186F4FC:                     Proc_96_4_1C1BDCC(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*")
  loc_186F514:                   Else
  loc_186F533:                     var_108 = CVar(var_B8.Fields.Item("ChkInDate")) 'Address
  loc_186F55E:                     var_144 = CVar(var_B4.Fields.Item("CheckoutVar")) 'Address
  loc_186F681:                     var_C4 = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomRentBefChkOut")), (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CheckOut")), 1, 1) = "Other"))
  loc_186F6A9:                     Proc_96_12_F095A0(CDate(Format(CVar(Proc_6_38_E68A98(var_144, 1)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VariationBefore")), 1)), "hh:nn")))
  loc_186F6FC:                     If (1 And (((1 And (var_C4 = "Yes")) And (var_94 = CDate(Proc_6_38_E68A98(var_108, Proc_6_38_E68A98(var_108, var_148))))) <= CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ChkInTime")), 1, 1)), "hh:nn")))) Then
  loc_186F729:                       var_148 = 0
  loc_186F752:                       Proc_96_4_1C1BDCC(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*")
  loc_186F76A:                     Else
  loc_186F789:                       var_F8 = CVar(var_B8.Fields.Item("ChkInDate")) 'Address
  loc_186F7E9:                       If ((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CheckOut")), 1) = "24 Hrs") And (var_94 = CDate(Proc_6_38_E68A98(var_F8, var_148)))) Then
  loc_186F816:                         var_148 = 0
  loc_186F83F:                         Proc_96_4_1C1BDCC(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*")
  loc_186F854:                       End If
  loc_186F854:                     End If
  loc_186F854:                   End If
  loc_186F854:                 End If
  loc_186F857:               Else
  loc_186F8AA:                 Proc_96_4_1C1BDCC(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*", 0, 1)
  loc_186F8BF:               End If
  loc_186F8C4:               global_132 = &HFF
  loc_186F8C7:               ' Referenced from: 186EFB4
  loc_186F8C7:             End If
  loc_186F8C7:           End If
  loc_186F8C7:         End If
  loc_186F8CA:       Next var_1A4 'Double
  loc_186F8CF:     End If
  loc_186F8D4:     Set var_AC = Nothing
  loc_186F8DC:     Set var_98 = Nothing
  loc_186F8DF:   End If
  loc_186F8E3:   Set var_E8 = Me.FGrid
  loc_186F8F4: End If
  loc_186F8F9: Set var_B8 = Nothing
  loc_186F901: Set var_B4 = Nothing
  loc_186F909: Set var_BC = Nothing
  loc_186F911: Set var_B0 = Nothing
  loc_186F914: Exit Sub
  loc_186F915: ' Referenced from: 186D3D3
  loc_186F92E: MsgBox("TXT_VALIDATE", 0, var_F8, var_108, var_144)
  loc_186F93E: Exit Sub
End Sub

Private Sub cmdProvisional_Click() '109E21C
  'Data Table: 514A60
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim Me As Recordset15
  Dim var_88 As Fields15
  loc_109DF76: Set var_88 = Me.TXT
  loc_109DF7C: Call 0.Method_cmdProvisional_Click0 (CInt(0), var_8C)
  loc_109DF9F: Set var_94 = Me.TXT
  loc_109DFA5: Call 0.Method_cmdProvisional_Click0 (CInt(&HA), var_98)
  loc_109DFCD: If ((var_8C.Text <> vbNullString) And (var_98.Text <> vbNullString)) Then
  loc_109DFD6:   Me.MoveFirst
  loc_109DFF2:   If (Me.RecordCount > 0) Then
  loc_109DFF5:     ' Referenced from: 109E218
  loc_109E007:     If Not(Me.EOF) Then
  loc_109E049:       If (Me.Fields.Item("ModDescription").Value = "PROVISIONAL GUEST BILL WINDOWS PLAIN PAPER") Then
  loc_109E065:         MsgBox("Sorry", 0, var_E4, var_104, var_124)
  loc_109E075:         Exit Sub
  loc_109E079:       Else
  loc_109E0B8:         If (Me.Fields.Item("ModDescription").Value = "PROVISIONAL GUEST BILL DOS 80 COL PREPRINTED") Then
  loc_109E0FA:           If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_109E0FD:             Call Proc_174_51_18F1708()
  loc_109E105:           Else
  loc_109E134:             If (MsgBox("Print Bill ?", &H24, var_E4, var_104, var_124) = 6) Then
  loc_109E137:               Call Proc_174_51_18F1708()
  loc_109E13F:             Else
  loc_109E13F:               Exit Sub
  loc_109E140:             End If
  loc_109E140:           End If
  loc_109E143:         Else
  loc_109E182:           If (Me.Fields.Item("ModDescription").Value = "PROVISIONAL GUEST BILL DOS 80 COL PLAIN") Then
  loc_109E1C4:             If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_109E1C7:               Call Proc_174_52_1A30AE8()
  loc_109E1CF:             Else
  loc_109E1FE:               If (MsgBox("Print Bill ?", &H24, var_E4, var_104, var_124) = 6) Then
  loc_109E201:                 Call Proc_174_52_1A30AE8()
  loc_109E209:               Else
  loc_109E209:                 Exit Sub
  loc_109E20A:               End If
  loc_109E20A:             End If
  loc_109E20A:             GoTo loc_109E20D
  loc_109E20D:             ' Referenced from:     109E20A
  loc_109E20D:           End If
  loc_109E20D:         End If
  loc_109E20D:       End If
  loc_109E213:       Me.MoveNext
  loc_109E218:       GoTo loc_109DFF5
  loc_109E21B:     End If
  loc_109E21B:   End If
  loc_109E21B: End If
  loc_109E21B: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_B 'F9B96C
  'Data Table: 514A60
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_12C As TextBox
  loc_F9B82F: If (CLng(Me.FGrid2.CellBackColor) = &HFDE1FF) Then
  loc_F9B832:   Call Proc_174_63_102E38C()
  loc_F9B837:   Exit Sub
  loc_F9B838: End If
  loc_F9B84B: var_C0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_F9B89A: Set var_128 = Me.TXT
  loc_F9B8A0: Call 0.Method_FGrid2_UnknownEvent_B0 (CInt(0), var_12C, CStr(Trim(CVar(CStr(Me.FGrid2.TextMatrix))))))
  loc_F9B8A8: var_12C.Text = CVar(CLng(Me.FGrid2.Col))
  loc_F9B8D6: Call Txt_Validate(CInt(0))
  loc_F9B8EE: var_C0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_F9B906: var_E0 = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_F9B94C: If CBool(Trim(CVar(CStr(Me.FGrid2.TextMatrix)))) <> vbNullString) Then
  loc_F9B962:   Me.FGrid2.CellBackColor = &HFF
  loc_F9B96A: End If
  loc_F9B96A: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F1F7A0
  'Data Table: 514A60
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F1F6B0: Call Proc_174_56_EBC19C()
  loc_F1F6C8: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_F1F6E3: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F1F6EC: Set var_BC = Me.FGrid
  loc_F1F722: Set var_104 = Me.TxtGrid
  loc_F1F728: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F1F730: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_F1F761: var_110 = CLng(Me.FGrid.Col)
  loc_F1F771: If (var_110 = CLng(&HA)) Then
  loc_F1F783:   Set var_A8 = Me.TxtGrid
  loc_F1F789:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 5)
  loc_F1F791:   var_BC.MaxLength = var_110
  loc_F1F79D: End If
  loc_F1F79D: Exit Sub
  loc_F1F79E: var_94 = 
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'FAB70C
  'Data Table: 514A60
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_FAB580: On Error Goto loc_FAB706
  loc_FAB58D: If (CLng(Shift) = &H1B) Then
  loc_FAB59D:   Set var_88 = Me.TxtGrid
  loc_FAB5A3:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_FAB5BD:   Set var_94 = Me.TxtGrid
  loc_FAB5C3:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_FAB5CB:   var_98.Text = var_8C.Tag
  loc_FAB5E7:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_FAB5EC:   Call Proc_174_56_EBC19C(arg_14)
  loc_FAB5F5:   Set var_88 = Me.FGrid
  loc_FAB612:   Set var_88 = Me.TxtGrid
  loc_FAB618:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_FAB620:   var_8C.Visible = False
  loc_FAB62C:   Exit Sub
  loc_FAB62D: End If
  loc_FAB640: var_AC = CLng(Me.FGrid.Col)
  loc_FAB650: If (var_AC = CLng(&HA)) Then
  loc_FAB662:   Set var_88 = Me.TxtGrid
  loc_FAB668:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 5)
  loc_FAB670:   var_8C.MaxLength = var_AC
  loc_FAB69C:   If (((CLng(Shift) = &HD) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) Then
  loc_FAB6A5:     Call Proc_174_61_ECAB3C(KeyCode, var_AE)
  loc_FAB6B0:     If (var_AE = &HFF) Then
  loc_FAB6F6:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82)
  loc_FAB706:       ' Referenced from: FAB580
  loc_FAB706:     End If
  loc_FAB706:   End If
  loc_FAB706: End If
  loc_FAB706: Proc_6_60_E62BC4(&HA, 0, &HA)
  loc_FAB70B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E0125C
  'Data Table: 514A60
  Dim var_1794 As Variant
  loc_E01253: Proc_6_58_E054C0(arg_10)
  loc_E01258: Exit Sub
  loc_E01259: var_1794 = CVar() 'Long
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E3DBD4
  'Data Table: 514A60
  Dim var_9C As Long
  loc_E3DBAC: On Error Goto loc_E3DBCC
  loc_E3DBC2: var_9C = CLng(Me.FGrid.Col)
  loc_E3DBCB: Exit Sub
  loc_E3DBCC: ' Referenced from: E3DBAC
  loc_E3DBCC: Proc_6_60_E62BC4(var_9C)
  loc_E3DBD1: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E5AE48
  'Data Table: 514A60
  Dim arg_10 As Integer
  Dim var_A0 As Long
  loc_E5AE14: If (Cancel = 0) Then
  loc_E5AE1D:   Call Proc_174_61_ECAB3C(Cancel, var_88)
  loc_E5AE26:   arg_10 = Not(var_88)
  loc_E5AE29: End If
  loc_E5AE3C: var_A0 = CLng(Me.FGrid.Col)
  loc_E5AE45: Exit Sub
End Sub

Public Function MasterFormExitGet() '5161F0
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '5161FF
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '51620E
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '51621D
  mVType = Value
End Sub

Public Property Get OpenMode() 'E02B80
  'Data Table: 514A60
  loc_E02B79: OpenMode = global_72
End Sub

Public Property Let OpenMode(vNewValue) 'E00ED8
  'Data Table: 514A60
  loc_E00ED2: global_72 = vNewValue
  loc_E00ED5: Exit Sub
End Sub

Public Property Get mFolioNo() 'E0DCE4
  'Data Table: 514A60
  loc_E0DCD8: var_88 = global_76
  loc_E0DCDB: mFolioNo = 
  loc_E0DCE1: BranchFVar -769
End Sub

Public Property Let mFolioNo(vNewValue) 'E0D624
  'Data Table: 514A60
  loc_E0D61C: global_76 = vNewValue
  loc_E0D620: Exit Sub
  loc_E0D621: BranchFVar -769
End Sub

Public Property Get SplitBill() 'E038C0
  'Data Table: 514A60
  loc_E038B9: SplitBill = global_80
End Sub

Public Property Let SplitBill(vNewValue) 'E0116C
  'Data Table: 514A60
  loc_E01166: global_80 = vNewValue
  loc_E01169: Exit Sub
End Sub

Public Sub Proc_174_49_1B87018
  'Data Table: 514A60
  Dim var_9C As String
  Dim unk_514A67 As Connection15
  Dim var_C0 As Variant
  Dim var_BC As Variant
  Dim var_AC As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_150 As Variant
  Dim var_278 As Double
  Dim var_118 As Variant
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_1E4 As Variant
  Dim var_154 As String
  Dim var_15C As String
  Dim var_160 As String
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_244 As Variant
  Dim var_3B8 As Double
  Dim var_26C As Variant
  Dim var_268 As Variant
  Dim var_2F4 As Variant
  Dim var_314 As Variant
  Dim var_270 As MSHFlexGrid
  Dim var_27C As String
  Dim var_2C4 As Variant
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim unk_514A7C As Connection15
  Dim var_88 As Long
  Dim var_94 As Recordset15
  loc_1B81EA4: unk_514A67.Execute "Select * from Enviro where lOGSite_code='" & MemVar_1F92078 & "'", var_BC, -1
  loc_1B81EAF: Set var_94 = var_C0
  loc_1B81EE4: For var_C4 = 0 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_8A = var_C4 'Integer
  loc_1B81F0F:   For var_C8 = 1 To CInt((CLng(Me.FGrid2.Cols) - 1)): var_8C = var_C8 'Integer
  loc_1B81F19:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_1B81F22:     var_E8 = CVar(CLng(var_8C)) 'Long
  loc_1B81F4D:     If (CStr(Me.FGrid2.TextMatrix)) <> vbNullString) Then
  loc_1B81F58:       If (var_90 = vbNullString) Then
  loc_1B81F5F:         var_AC = CVar(CLng(var_8A)) 'Long
  loc_1B81F68:         var_E8 = CVar(CLng(var_8C)) 'Long
  loc_1B81F91:         var_90 = CStr(Trim(CVar(CStr(Me.FGrid2.TextMatrix)))))
  loc_1B81FA3:       Else
  loc_1B81FAA:         var_128 = CVar(var_90 & ",") 'String
  loc_1B81FB1:         var_AC = CVar(CLng(var_8A)) 'Long
  loc_1B81FE2:         var_138 = (CVar(CLng(var_8C)) + Trim(CVar(CStr(Me.FGrid2.TextMatrix)))))
  loc_1B81FE7:         var_90 = CStr(var_138)
  loc_1B81FFA:       End If
  loc_1B81FFA:     End If
  loc_1B81FFD:   Next var_C8 'Integer
  loc_1B82005: Next var_C4 'Integer
  loc_1B8202C: If CBool(Trim(CVar(Me.txtleaderfolio)) <> vbNullString) Then
  loc_1B82054:   For var_13C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_13C 'Integer
  loc_1B8205E:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_1B82066:     var_E8 = CVar(CLng(&HC)) 'Long
  loc_1B820A2:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1B820A9:       var_AC = CVar(CLng(var_8A)) 'Long
  loc_1B820B1:       var_E8 = CVar(CLng(&HC)) 'Long
  loc_1B82106:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(Me.txtleaderfolio.Text)) Then
  loc_1B82130:         var_278 = Val(CStr(Right(CVar(Me.txtleaderfolio), 8)))
  loc_1B82173:         var_138 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_278, CVar(CLng(&HA)))) 'String
  loc_1B82182:         var_1B0 = CVar(CLng(var_8A)) 'Long
  loc_1B8218A:         var_1D0 = CVar(CLng(&HC)) 'Long
  loc_1B821DD:         var_180 = CVar("Update PayCharge Set Foliono=" & CStr(var_278) & ",FolioNodocid='" & Me.txtleaderfolio.Text & "',Split='") 'String
  loc_1B8220A:         unk_514A67.Execute CStr(var_180 & Trim(var_138) & "' Where FolioNoDocid='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'"), var_268, -1
  loc_1B82251:       Else
  loc_1B82255:         Set var_3B0 = Me.txtleaderfolio
  loc_1B82260:         var_BC = CVar(var_3B0) 'Address
  loc_1B82267:         var_108 = Right(var_BC, 8)
  loc_1B822A2:         Set var_150 = Me.FGrid
  loc_1B822DA:         var_3B8 = Val(CStr(Right(Trim(CVar(CStr(var_150.TextMatrix)))), 8)))
  loc_1B82323:         Set var_26C = Me.FGrid
  loc_1B82334:         var_244 = CVar(CStr(var_26C.TextMatrix))) 'String
  loc_1B8233C:         var_268 = CVar(Proc_6_38_E68A98(var_244, CVar(CLng(&HA)), CVar(CLng(var_8A)), CVar(CLng(&HC)), CVar(CLng(var_8A)), var_3B8, CVar(CLng(&HC)), CVar(CLng(var_8A)))) 'String
  loc_1B8234B:         var_2F4 = CVar(CLng(var_8A)) 'Long
  loc_1B82353:         var_314 = CVar(CLng(&HC)) 'Long
  loc_1B823A6:         var_27C = "Update PayCharge Set Foliono=" & CStr(Val(CStr(var_108))) & ",FolioNodocid='" & Me.txtleaderfolio.Text & "',RelatedFoliono="
  loc_1B823CF:         var_2C4 = CVar(var_27C & CStr(var_3B8) & ",RelatedFolioNodocid='") & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "',Split='" & Trim(var_268) 
  loc_1B823F6:         unk_514A67.Execute CStr(var_2C4 & "' Where FolioNoDocid='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'"), var_3A8, -1
  loc_1B82458:       End If
  loc_1B82458:     End If
  loc_1B8245B:   Next var_13C 'Integer
  loc_1B82460: End If
  loc_1B8246E: Set var_C0 = Me.TXT
  loc_1B82474: Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150)
  loc_1B82497: Set var_1E4 = Me.TXT
  loc_1B8249D: Call 0.Method_Proc_174_49_1B870180 (CInt(&HA), var_26C)
  loc_1B824DD: If (((var_150.Text <> vbNullString) And (var_26C.Text <> vbNullString)) And (Me.RecordCount > 0)) Then
  loc_1B824E6:   Me.MoveFirst
  loc_1B824F3:   If (MemVar_1F921D0 = "Y") Then
  loc_1B824FC:     var_D8 = 0
  loc_1B8251B:     unk_514A7C.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_BC, -1
  loc_1B82523:     var_C0 = var_C0.Fields
  loc_1B8252B:     var_D8 = var_150.Item(var_150)
  loc_1B82533:     var_1E4 = var_1E4.Value
  loc_1B8253D:     var_88 = CLng(var_108)
  loc_1B82550:   End If
  loc_1B8258F:   If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER") Then
  loc_1B825AF:     var_150 = Me.Fields.Item("AutoPrint")
  loc_1B825D1:     If (var_150.Value = "Yes") Then
  loc_1B825D4:       Call Proc_174_50_1267F18(var_88)
  loc_1B825E8:       var_108(False).Enabled = 
  loc_1B825FF:       (False).Enabled = 
  loc_1B8260F:       If (MemVar_1F921D0 = "Y") Then
  loc_1B82632:         var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B82640:         Set var_C0 = Me.TXT
  loc_1B82646:         Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B82655:         var_108 = Trim(CVar(var_150))
  loc_1B8265D:         var_128 = var_244 & var_108 
  loc_1B82673:         Set var_1E4 = Me.TXT
  loc_1B82679:         Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_128 & "','")
  loc_1B82690:         var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B826A8:         Set var_270 = Me.TXT
  loc_1B826AE:         Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B826DC:         unk_514A7C.Execute CStr(CVar(CStr(Me.FGrid.TextMatrix))) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B82714:       End If
  loc_1B82714:       Call Proc_174_62_E7E800()
  loc_1B8271C:     Else
  loc_1B8274B:       If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B8274E:         Call Proc_174_50_1267F18()
  loc_1B82762:         (False).Enabled = 
  loc_1B82779:         (False).Enabled = 
  loc_1B82789:         If (MemVar_1F921D0 = "Y") Then
  loc_1B827AC:           var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B827BA:           Set var_C0 = Me.TXT
  loc_1B827C0:           Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B827ED:           Set var_1E4 = Me.TXT
  loc_1B827F3:           Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B8280A:           var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B82822:           Set var_270 = Me.TXT
  loc_1B82828:           Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B82856:           unk_514A7C.Execute CStr(CVar(CStr(Me.FGrid.TextMatrix))) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B8288E:         End If
  loc_1B8288E:         Call Proc_174_62_E7E800()
  loc_1B82896:       Else
  loc_1B82896:         Exit Sub
  loc_1B82897:       End If
  loc_1B82897:     End If
  loc_1B8289A:   Else
  loc_1B828D9:     If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER NEW") Then
  loc_1B8291B:       If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1B82935:         var_150 = var_94.Fields.Item("BillPrintingSummerised")
  loc_1B82957:         If (Proc_6_38_E68A98(CVar(var_150)) = "Yes") Then
  loc_1B82988:           Set var_C0 = Me.TXT
  loc_1B8298E:           Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B82996:           var_154 = var_150.Text
  loc_1B829A4:           Set var_3B0 = Nothing 
  loc_1B829AE:           Set var_3AC = ()
  loc_1B829B7:           var_15C = "O"
  loc_1B82A07:           Proc_96_64_1DB033C(Me.txtleaderfolio.Text, Me.FGrid, (), 7, 8, &HA, var_154)
  loc_1B82A2F:         Else
  loc_1B82A5D:           Set var_C0 = Me.TXT
  loc_1B82A63:           Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150, var_154, global_134)
  loc_1B82A6B:           global_128 = var_150.Text
  loc_1B82A79:           Set var_3B0 = Nothing 
  loc_1B82A83:           Set var_3AC = var_3AC(var_15C)
  loc_1B82A8C:           var_15C = "O"
  loc_1B82ACF:           Set var_26C = Me.FGrid
  loc_1B82ADC:           Proc_96_59_1F0457C(Me.txtleaderfolio.Text, var_26C, 2(1), 7, 8, &HA, var_154, 1)
  loc_1B82B01:         End If
  loc_1B82B19:         Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), 2, global_134, global_128)
  loc_1B82B37:         var_15C(False).Enabled = var_3AC
  loc_1B82B47:         If (MemVar_1F921D0 = "Y") Then
  loc_1B82B6A:           var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B82B78:           Set var_C0 = Me.TXT
  loc_1B82B7E:           Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118, var_244)
  loc_1B82B8D:           var_108 = Trim(CVar(var_150))
  loc_1B82B95:           var_128 = -1 & var_108 
  loc_1B82BAB:           Set var_1E4 = Me.TXT
  loc_1B82BB1:           Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B82BE0:           Set var_270 = Me.TXT
  loc_1B82BE6:           Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC, var_3B0 & Trim(CVar(var_26C)) & "','")
  loc_1B82C14:           unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B82C4C:         End If
  loc_1B82C4C:         Call Proc_174_62_E7E800()
  loc_1B82C54:       Else
  loc_1B82C83:         If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_244 & Trim(CVar(var_150))) = 6) Then
  loc_1B82C9D:           var_150 = var_94.Fields.Item("BillPrintingSummerised")
  loc_1B82CBF:           If (Proc_6_38_E68A98(CVar(var_150)) = "Yes") Then
  loc_1B82CF0:             Set var_C0 = Me.TXT
  loc_1B82CF6:             Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B82CFE:             var_154 = var_150.Text
  loc_1B82D0C:             Set var_3B0 = Nothing 
  loc_1B82D16:             Set var_3AC = ()
  loc_1B82D1F:             var_15C = "O"
  loc_1B82D6F:             Proc_96_64_1DB033C(Me.txtleaderfolio.Text, Me.FGrid, (), 7, 8, &HA, var_154)
  loc_1B82D97:           Else
  loc_1B82DC5:             Set var_C0 = Me.TXT
  loc_1B82DCB:             Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150, var_154, global_134)
  loc_1B82DD3:             global_128 = var_150.Text
  loc_1B82DE1:             Set var_3B0 = Nothing 
  loc_1B82DEB:             Set var_3AC = var_3AC(var_15C)
  loc_1B82DF4:             var_15C = "O"
  loc_1B82E37:             Set var_26C = Me.FGrid
  loc_1B82E44:             Proc_96_59_1F0457C(Me.txtleaderfolio.Text, var_26C, 2(1), 7, 8, &HA, var_154, 1)
  loc_1B82E69:           End If
  loc_1B82E81:           Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), 2, global_134, global_128)
  loc_1B82E9F:           var_15C(False).Enabled = var_3AC
  loc_1B82EAF:           If (MemVar_1F921D0 = "Y") Then
  loc_1B82ED2:             var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B82EE0:             Set var_C0 = Me.TXT
  loc_1B82EE6:             Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118, var_244)
  loc_1B82EFD:             var_128 = -1 & Trim(CVar(var_150)) 
  loc_1B82F13:             Set var_1E4 = Me.TXT
  loc_1B82F19:             Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B82F48:             Set var_270 = Me.TXT
  loc_1B82F4E:             Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC, var_3B0 & Trim(CVar(var_26C)) & "','")
  loc_1B82F7C:             unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B82FB4:           End If
  loc_1B82FB4:           Call Proc_174_62_E7E800()
  loc_1B82FBC:         Else
  loc_1B82FBC:           Exit Sub
  loc_1B82FBD:         End If
  loc_1B82FBD:       End If
  loc_1B82FC0:     Else
  loc_1B82FFF:       If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER PLAN") Then
  loc_1B83041:         If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1B8305B:           var_150 = var_94.Fields.Item("BillPrintingSummerised")
  loc_1B8307D:           If (Proc_6_38_E68A98(CVar(var_150)) = "Yes") Then
  loc_1B830AE:             Set var_C0 = Me.TXT
  loc_1B830B4:             Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B830BC:             var_154 = var_150.Text
  loc_1B830CA:             Set var_3B0 = Nothing 
  loc_1B830D4:             Set var_3AC = ()
  loc_1B830DD:             var_15C = "O"
  loc_1B8312D:             Proc_96_64_1DB033C(Me.txtleaderfolio.Text, Me.FGrid, (), 7, 8, &HA, var_154)
  loc_1B83155:           Else
  loc_1B8316B:             Set var_3B0 = Me.FGrid
  loc_1B83183:             Set var_C0 = Me.TXT
  loc_1B83189:             Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150, var_154, global_134)
  loc_1B83191:             global_128 = var_150.Text
  loc_1B831A0:             var_160 = "PayCharge"
  loc_1B831A9:             Set var_3AC = var_3AC(var_15C)
  loc_1B831B2:             var_15C = "O"
  loc_1B831F5:             Set var_26C = var_3B0
  loc_1B83202:             Proc_96_62_1F638EC(Me.txtleaderfolio.Text, var_26C, 2(1), 7, 8, &HA, var_154, 1)
  loc_1B83227:           End If
  loc_1B8323F:           Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), 2, global_134, global_128)
  loc_1B8325D:           var_15C(False).Enabled = var_3AC
  loc_1B8326D:           If (MemVar_1F921D0 = "Y") Then
  loc_1B83290:             var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B8329E:             Set var_C0 = Me.TXT
  loc_1B832A4:             Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118, var_244)
  loc_1B832B3:             var_108 = Trim(CVar(var_150))
  loc_1B832BB:             var_128 = -1 & var_108 
  loc_1B832D1:             Set var_1E4 = Me.TXT
  loc_1B832D7:             Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B83306:             Set var_270 = Me.TXT
  loc_1B8330C:             Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC, var_3B0 & Trim(CVar(var_26C)) & "','")
  loc_1B8333A:             unk_514A7C.Execute CStr(var_160 & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B83372:           End If
  loc_1B83372:           Call Proc_174_62_E7E800()
  loc_1B8337A:         Else
  loc_1B833A9:           If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_244 & Trim(CVar(var_150))) = 6) Then
  loc_1B833C3:             var_150 = var_94.Fields.Item("BillPrintingSummerised")
  loc_1B833E5:             If (Proc_6_38_E68A98(CVar(var_150)) = "Yes") Then
  loc_1B83416:               Set var_C0 = Me.TXT
  loc_1B8341C:               Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B83424:               var_154 = var_150.Text
  loc_1B83432:               Set var_3B0 = Nothing 
  loc_1B8343C:               Set var_3AC = ()
  loc_1B83445:               var_15C = "O"
  loc_1B83495:               Proc_96_64_1DB033C(Me.txtleaderfolio.Text, Me.FGrid, (), 7, 8, &HA, var_154)
  loc_1B834BD:             Else
  loc_1B834D3:               Set var_3B0 = Me.FGrid
  loc_1B834EB:               Set var_C0 = Me.TXT
  loc_1B834F1:               Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150, var_154, global_134)
  loc_1B834F9:               global_128 = var_150.Text
  loc_1B83508:               var_160 = "PayCharge"
  loc_1B83511:               Set var_3AC = var_3AC(var_15C)
  loc_1B8351A:               var_15C = "O"
  loc_1B8355D:               Set var_26C = var_3B0
  loc_1B8356A:               Proc_96_62_1F638EC(Me.txtleaderfolio.Text, var_26C, 2(1), 7, 8, &HA, var_154, 1)
  loc_1B8358F:             End If
  loc_1B835A7:             Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), 2, global_134, global_128)
  loc_1B835C5:             var_15C(False).Enabled = var_3AC
  loc_1B835D5:             If (MemVar_1F921D0 = "Y") Then
  loc_1B835F8:               var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B83606:               Set var_C0 = Me.TXT
  loc_1B8360C:               Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118, var_244)
  loc_1B83623:               var_128 = -1 & Trim(CVar(var_150)) 
  loc_1B83639:               Set var_1E4 = Me.TXT
  loc_1B8363F:               Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B8366E:               Set var_270 = Me.TXT
  loc_1B83674:               Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC, var_3B0 & Trim(CVar(var_26C)) & "','")
  loc_1B836A2:               unk_514A7C.Execute CStr(var_160 & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B836DA:             End If
  loc_1B836DA:             Call Proc_174_62_E7E800()
  loc_1B836E2:           Else
  loc_1B836E2:             Exit Sub
  loc_1B836E3:           End If
  loc_1B836E3:         End If
  loc_1B836E6:       Else
  loc_1B83725:         If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER PLAN1") Then
  loc_1B83767:           If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1B83781:             var_150 = var_94.Fields.Item("BillPrintingSummerised")
  loc_1B837A3:             If (Proc_6_38_E68A98(CVar(var_150)) = "Yes") Then
  loc_1B837D4:               Set var_C0 = Me.TXT
  loc_1B837DA:               Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B837E2:               var_154 = var_150.Text
  loc_1B837F0:               Set var_3B0 = Nothing 
  loc_1B837FA:               Set var_3AC = ()
  loc_1B83803:               var_15C = "O"
  loc_1B83853:               Proc_96_64_1DB033C(Me.txtleaderfolio.Text, Me.FGrid, (), 7, 8, &HA, var_154)
  loc_1B8387B:             Else
  loc_1B83891:               Set var_3B0 = Me.FGrid
  loc_1B838A9:               Set var_C0 = Me.TXT
  loc_1B838AF:               Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150, var_154, global_134)
  loc_1B838B7:               global_128 = var_150.Text
  loc_1B838C6:               var_160 = "PayCharge"
  loc_1B838CF:               Set var_3AC = var_3AC(var_15C)
  loc_1B838D8:               var_15C = "O"
  loc_1B8391B:               Set var_26C = var_3B0
  loc_1B83928:               Proc_96_63_1F555DC(Me.txtleaderfolio.Text, var_26C, 2(1), 7, 8, &HA, var_154, 1)
  loc_1B8394D:             End If
  loc_1B83965:             Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), 2, global_134, global_128)
  loc_1B83983:             var_15C(False).Enabled = var_3AC
  loc_1B83993:             If (MemVar_1F921D0 = "Y") Then
  loc_1B839B6:               var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B839C4:               Set var_C0 = Me.TXT
  loc_1B839CA:               Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118, var_244)
  loc_1B839D9:               var_108 = Trim(CVar(var_150))
  loc_1B839E1:               var_128 = -1 & var_108 
  loc_1B839F7:               Set var_1E4 = Me.TXT
  loc_1B839FD:               Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B83A2C:               Set var_270 = Me.TXT
  loc_1B83A32:               Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC, var_3B0 & Trim(CVar(var_26C)) & "','")
  loc_1B83A60:               unk_514A7C.Execute CStr(var_160 & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B83A98:             End If
  loc_1B83A98:             Call Proc_174_62_E7E800()
  loc_1B83AA0:           Else
  loc_1B83ACF:             If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_244 & Trim(CVar(var_150))) = 6) Then
  loc_1B83AE9:               var_150 = var_94.Fields.Item("BillPrintingSummerised")
  loc_1B83B0B:               If (Proc_6_38_E68A98(CVar(var_150)) = "Yes") Then
  loc_1B83B3C:                 Set var_C0 = Me.TXT
  loc_1B83B42:                 Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B83B4A:                 var_154 = var_150.Text
  loc_1B83B58:                 Set var_3B0 = Nothing 
  loc_1B83B62:                 Set var_3AC = ()
  loc_1B83B6B:                 var_15C = "O"
  loc_1B83BBB:                 Proc_96_64_1DB033C(Me.txtleaderfolio.Text, Me.FGrid, (), 7, 8, &HA, var_154)
  loc_1B83BE3:               Else
  loc_1B83BF9:                 Set var_3B0 = Me.FGrid
  loc_1B83C11:                 Set var_C0 = Me.TXT
  loc_1B83C17:                 Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150, var_154, global_134)
  loc_1B83C1F:                 global_128 = var_150.Text
  loc_1B83C2E:                 var_160 = "PayCharge"
  loc_1B83C37:                 Set var_3AC = var_3AC(var_15C)
  loc_1B83C40:                 var_15C = "O"
  loc_1B83C83:                 Set var_26C = var_3B0
  loc_1B83C90:                 Proc_96_63_1F555DC(Me.txtleaderfolio.Text, var_26C, 2(1), 7, 8, &HA, var_154, 1)
  loc_1B83CB5:               End If
  loc_1B83CCD:               Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), 2, global_134, global_128)
  loc_1B83CEB:               var_15C(False).Enabled = var_3AC
  loc_1B83CFB:               If (MemVar_1F921D0 = "Y") Then
  loc_1B83D1E:                 var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B83D2C:                 Set var_C0 = Me.TXT
  loc_1B83D32:                 Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118, var_244)
  loc_1B83D49:                 var_128 = -1 & Trim(CVar(var_150)) 
  loc_1B83D5F:                 Set var_1E4 = Me.TXT
  loc_1B83D65:                 Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B83D94:                 Set var_270 = Me.TXT
  loc_1B83D9A:                 Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC, var_3B0 & Trim(CVar(var_26C)) & "','")
  loc_1B83DC8:                 unk_514A7C.Execute CStr(var_160 & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B83E00:               End If
  loc_1B83E00:               Call Proc_174_62_E7E800()
  loc_1B83E08:             Else
  loc_1B83E08:               Exit Sub
  loc_1B83E09:             End If
  loc_1B83E09:           End If
  loc_1B83E0C:         Else
  loc_1B83E4B:           If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED") Then
  loc_1B83E6B:             var_150 = Me.Fields.Item("AutoPrint")
  loc_1B83E8D:             If (var_150.Value = "Yes") Then
  loc_1B83EA6:               Set var_3AC = Me.FGrid
  loc_1B83EAD:               Set var_3B0 = ()
  loc_1B83EBE:               Set var_C0 = Me.TXT
  loc_1B83EC4:               Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B83F17:               Set var_26C = var_3AC
  loc_1B83F24:               Proc_96_49_1C45D64(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B83F5B:               Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B83F79:               global_134(False).Enabled = global_128
  loc_1B83F90:               "O"(False).Enabled = 
  loc_1B83FA0:               If (MemVar_1F921D0 = "Y") Then
  loc_1B83FC3:                 var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B83FD1:                 Set var_C0 = Me.TXT
  loc_1B83FD7:                 Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B83FE6:                 var_108 = Trim(CVar(var_150))
  loc_1B83FEE:                 var_128 = var_244 & var_108 
  loc_1B84004:                 Set var_1E4 = Me.TXT
  loc_1B8400A:                 Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_128 & "','")
  loc_1B84021:                 var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B84039:                 Set var_270 = Me.TXT
  loc_1B8403F:                 Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B8406D:                 unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B840A5:               End If
  loc_1B840A5:               Call Proc_174_62_E7E800()
  loc_1B840AD:             Else
  loc_1B840DC:               If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B840F5:                 Set var_3AC = Me.FGrid
  loc_1B840FC:                 Set var_3B0 = ()
  loc_1B8410D:                 Set var_C0 = Me.TXT
  loc_1B84113:                 Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B84166:                 Set var_26C = var_3AC
  loc_1B84173:                 Proc_96_49_1C45D64(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B841AA:                 Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B841C8:                 global_134(False).Enabled = global_128
  loc_1B841DF:                 "O"(False).Enabled = 
  loc_1B841EF:                 If (MemVar_1F921D0 = "Y") Then
  loc_1B84212:                   var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B84220:                   Set var_C0 = Me.TXT
  loc_1B84226:                   Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B84253:                   Set var_1E4 = Me.TXT
  loc_1B84259:                   Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B84270:                   var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B84288:                   Set var_270 = Me.TXT
  loc_1B8428E:                   Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B842BC:                   unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B842F4:                 End If
  loc_1B842F4:                 Call Proc_174_62_E7E800()
  loc_1B842FC:               Else
  loc_1B842FC:                 Exit Sub
  loc_1B842FD:               End If
  loc_1B842FD:             End If
  loc_1B84300:           Else
  loc_1B8433F:             If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PLAIN") Then
  loc_1B8435F:               var_150 = Me.Fields.Item("AutoPrint")
  loc_1B84381:               If (var_150.Value = "Yes") Then
  loc_1B8439A:                 Set var_3AC = Me.FGrid
  loc_1B843A1:                 Set var_3B0 = ()
  loc_1B843B2:                 Set var_C0 = Me.TXT
  loc_1B843B8:                 Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B8440B:                 Set var_26C = var_3AC
  loc_1B84418:                 Proc_96_65_1DA7C54(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B8444F:                 Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B8446D:                 global_134(False).Enabled = global_128
  loc_1B84484:                 "O"(False).Enabled = 
  loc_1B84494:                 If (MemVar_1F921D0 = "Y") Then
  loc_1B844B7:                   var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B844C5:                   Set var_C0 = Me.TXT
  loc_1B844CB:                   Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B844DA:                   var_108 = Trim(CVar(var_150))
  loc_1B844E2:                   var_128 = var_244 & var_108 
  loc_1B844F8:                   Set var_1E4 = Me.TXT
  loc_1B844FE:                   Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_128 & "','")
  loc_1B84515:                   var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B8452D:                   Set var_270 = Me.TXT
  loc_1B84533:                   Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B84561:                   unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B84599:                 End If
  loc_1B84599:                 Call Proc_174_62_E7E800()
  loc_1B845A1:               Else
  loc_1B845D0:                 If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B845E9:                   Set var_3AC = Me.FGrid
  loc_1B845F0:                   Set var_3B0 = ()
  loc_1B84601:                   Set var_C0 = Me.TXT
  loc_1B84607:                   Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B8465A:                   Set var_26C = var_3AC
  loc_1B84667:                   Proc_96_65_1DA7C54(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B8469E:                   Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B846BC:                   global_134(False).Enabled = global_128
  loc_1B846D3:                   "O"(False).Enabled = 
  loc_1B846E3:                   If (MemVar_1F921D0 = "Y") Then
  loc_1B84706:                     var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B84714:                     Set var_C0 = Me.TXT
  loc_1B8471A:                     Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B84747:                     Set var_1E4 = Me.TXT
  loc_1B8474D:                     Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B84764:                     var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B8477C:                     Set var_270 = Me.TXT
  loc_1B84782:                     Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B847B0:                     unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B847E8:                   End If
  loc_1B847E8:                   Call Proc_174_62_E7E800()
  loc_1B847F0:                 Else
  loc_1B847F0:                   Exit Sub
  loc_1B847F1:                 End If
  loc_1B847F1:               End If
  loc_1B847F4:             Else
  loc_1B84833:               If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PLAIN FORMAT1") Then
  loc_1B84853:                 var_150 = Me.Fields.Item("AutoPrint")
  loc_1B84875:                 If (var_150.Value = "Yes") Then
  loc_1B8488E:                   Set var_3AC = Me.FGrid
  loc_1B84895:                   Set var_3B0 = ()
  loc_1B848A6:                   Set var_C0 = Me.TXT
  loc_1B848AC:                   Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B848FF:                   Set var_26C = var_3AC
  loc_1B8490C:                   Proc_96_66_1D56DA8(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B84943:                   Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B84961:                   global_134(False).Enabled = global_128
  loc_1B84978:                   "O"(False).Enabled = 
  loc_1B84988:                   If (MemVar_1F921D0 = "Y") Then
  loc_1B849AB:                     var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B849B9:                     Set var_C0 = Me.TXT
  loc_1B849BF:                     Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B849CE:                     var_108 = Trim(CVar(var_150))
  loc_1B849D6:                     var_128 = var_244 & var_108 
  loc_1B849EC:                     Set var_1E4 = Me.TXT
  loc_1B849F2:                     Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_128 & "','")
  loc_1B84A09:                     var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B84A21:                     Set var_270 = Me.TXT
  loc_1B84A27:                     Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B84A55:                     unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B84A8D:                   End If
  loc_1B84A8D:                   Call Proc_174_62_E7E800()
  loc_1B84A95:                 Else
  loc_1B84AC4:                   If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B84ADD:                     Set var_3AC = Me.FGrid
  loc_1B84AE4:                     Set var_3B0 = ()
  loc_1B84AF5:                     Set var_C0 = Me.TXT
  loc_1B84AFB:                     Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B84B4E:                     Set var_26C = var_3AC
  loc_1B84B5B:                     Proc_96_66_1D56DA8(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B84B92:                     Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B84BB0:                     global_134(False).Enabled = global_128
  loc_1B84BC7:                     "O"(False).Enabled = 
  loc_1B84BD7:                     If (MemVar_1F921D0 = "Y") Then
  loc_1B84BFA:                       var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B84C08:                       Set var_C0 = Me.TXT
  loc_1B84C0E:                       Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B84C3B:                       Set var_1E4 = Me.TXT
  loc_1B84C41:                       Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B84C58:                       var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B84C70:                       Set var_270 = Me.TXT
  loc_1B84C76:                       Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B84CA4:                       unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B84CDC:                     End If
  loc_1B84CDC:                     Call Proc_174_62_E7E800()
  loc_1B84CE4:                   Else
  loc_1B84CE4:                     Exit Sub
  loc_1B84CE5:                   End If
  loc_1B84CE5:                 End If
  loc_1B84CE8:               Else
  loc_1B84D27:                 If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT1") Then
  loc_1B84D47:                   var_150 = Me.Fields.Item("AutoPrint")
  loc_1B84D69:                   If (var_150.Value = "Yes") Then
  loc_1B84D82:                     Set var_3AC = Me.FGrid
  loc_1B84D89:                     Set var_3B0 = ()
  loc_1B84D9A:                     Set var_C0 = Me.TXT
  loc_1B84DA0:                     Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B84DFE:                     Set var_26C = var_3AC
  loc_1B84E0B:                     Proc_96_53_1D37E3C(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA, var_150.Text)
  loc_1B84E44:                     Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), 1, 2, global_134)
  loc_1B84E62:                     global_128(False).Enabled = "O"
  loc_1B84E79:                     0(False).Enabled = 
  loc_1B84E89:                     If (MemVar_1F921D0 = "Y") Then
  loc_1B84EAC:                       var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B84EBA:                       Set var_C0 = Me.TXT
  loc_1B84EC0:                       Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B84ECF:                       var_108 = Trim(CVar(var_150))
  loc_1B84ED7:                       var_128 = var_244 & var_108 
  loc_1B84EED:                       Set var_1E4 = Me.TXT
  loc_1B84EF3:                       Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_128 & "','")
  loc_1B84F0A:                       var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B84F22:                       Set var_270 = Me.TXT
  loc_1B84F28:                       Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B84F56:                       unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B84F8E:                     End If
  loc_1B84F8E:                     Call Proc_174_62_E7E800()
  loc_1B84F96:                   Else
  loc_1B84FC5:                     If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B84FDE:                       Set var_3AC = Me.FGrid
  loc_1B84FE5:                       Set var_3B0 = ()
  loc_1B84FF6:                       Set var_C0 = Me.TXT
  loc_1B84FFC:                       Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B8505A:                       Set var_26C = var_3AC
  loc_1B85067:                       Proc_96_53_1D37E3C(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA, var_150.Text)
  loc_1B850A0:                       Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), 1, 2, global_134)
  loc_1B850BE:                       global_128(False).Enabled = "O"
  loc_1B850D5:                       0(False).Enabled = 
  loc_1B850E5:                       If (MemVar_1F921D0 = "Y") Then
  loc_1B85108:                         var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B85116:                         Set var_C0 = Me.TXT
  loc_1B8511C:                         Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B85149:                         Set var_1E4 = Me.TXT
  loc_1B8514F:                         Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B85166:                         var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B8517E:                         Set var_270 = Me.TXT
  loc_1B85184:                         Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B851B2:                         unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B851EA:                       End If
  loc_1B851EA:                       Call Proc_174_62_E7E800()
  loc_1B851F2:                     Else
  loc_1B851F2:                       Exit Sub
  loc_1B851F3:                     End If
  loc_1B851F3:                   End If
  loc_1B851F6:                 Else
  loc_1B85235:                   If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT2") Then
  loc_1B85255:                     var_150 = Me.Fields.Item("AutoPrint")
  loc_1B85277:                     If (var_150.Value = "Yes") Then
  loc_1B85290:                       Set var_3AC = Me.FGrid
  loc_1B85297:                       Set var_3B0 = ()
  loc_1B852A8:                       Set var_C0 = Me.TXT
  loc_1B852AE:                       Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B85301:                       Set var_26C = var_3AC
  loc_1B8530E:                       Proc_96_67_1D47424(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B85345:                       Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B85363:                       global_134(False).Enabled = global_128
  loc_1B8537A:                       "O"(False).Enabled = 
  loc_1B8538A:                       If (MemVar_1F921D0 = "Y") Then
  loc_1B853AD:                         var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B853BB:                         Set var_C0 = Me.TXT
  loc_1B853C1:                         Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B853D0:                         var_108 = Trim(CVar(var_150))
  loc_1B853D8:                         var_128 = var_244 & var_108 
  loc_1B853EE:                         Set var_1E4 = Me.TXT
  loc_1B853F4:                         Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_128 & "','")
  loc_1B8540B:                         var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B85423:                         Set var_270 = Me.TXT
  loc_1B85429:                         Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B85457:                         unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B8548F:                       End If
  loc_1B8548F:                       Call Proc_174_62_E7E800()
  loc_1B85497:                     Else
  loc_1B854C6:                       If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B854DF:                         Set var_3AC = Me.FGrid
  loc_1B854E6:                         Set var_3B0 = ()
  loc_1B854F7:                         Set var_C0 = Me.TXT
  loc_1B854FD:                         Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B85550:                         Set var_26C = var_3AC
  loc_1B8555D:                         Proc_96_67_1D47424(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B85594:                         Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B855B2:                         global_134(False).Enabled = global_128
  loc_1B855C9:                         "O"(False).Enabled = 
  loc_1B855D9:                         If (MemVar_1F921D0 = "Y") Then
  loc_1B855FC:                           var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B8560A:                           Set var_C0 = Me.TXT
  loc_1B85610:                           Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B8563D:                           Set var_1E4 = Me.TXT
  loc_1B85643:                           Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B8565A:                           var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B85672:                           Set var_270 = Me.TXT
  loc_1B85678:                           Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B856A6:                           unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B856DE:                         End If
  loc_1B856DE:                         Call Proc_174_62_E7E800()
  loc_1B856E6:                       Else
  loc_1B856E6:                         Exit Sub
  loc_1B856E7:                       End If
  loc_1B856E7:                     End If
  loc_1B856EA:                   Else
  loc_1B85729:                     If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT3") Then
  loc_1B85749:                       var_150 = Me.Fields.Item("AutoPrint")
  loc_1B8576B:                       If (var_150.Value = "Yes") Then
  loc_1B85784:                         Set var_3AC = Me.FGrid
  loc_1B8578B:                         Set var_3B0 = ()
  loc_1B8579C:                         Set var_C0 = Me.TXT
  loc_1B857A2:                         Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B857F5:                         Set var_26C = var_3AC
  loc_1B85802:                         Proc_96_68_1E08714(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B85839:                         Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B85857:                         global_134(False).Enabled = global_128
  loc_1B8586E:                         "O"(False).Enabled = 
  loc_1B8587E:                         If (MemVar_1F921D0 = "Y") Then
  loc_1B858A1:                           var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B858AF:                           Set var_C0 = Me.TXT
  loc_1B858B5:                           Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B858C4:                           var_108 = Trim(CVar(var_150))
  loc_1B858CC:                           var_128 = var_244 & var_108 
  loc_1B858E2:                           Set var_1E4 = Me.TXT
  loc_1B858E8:                           Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_128 & "','")
  loc_1B858FF:                           var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B85917:                           Set var_270 = Me.TXT
  loc_1B8591D:                           Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B8594B:                           unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B85983:                         End If
  loc_1B85983:                         Call Proc_174_62_E7E800()
  loc_1B8598B:                       Else
  loc_1B859BA:                         If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B859D3:                           Set var_3AC = Me.FGrid
  loc_1B859DA:                           Set var_3B0 = ()
  loc_1B859EB:                           Set var_C0 = Me.TXT
  loc_1B859F1:                           Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B85A44:                           Set var_26C = var_3AC
  loc_1B85A51:                           Proc_96_68_1E08714(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B85A88:                           Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B85AA6:                           global_134(False).Enabled = global_128
  loc_1B85ABD:                           "O"(False).Enabled = 
  loc_1B85ACD:                           If (MemVar_1F921D0 = "Y") Then
  loc_1B85AF0:                             var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B85AFE:                             Set var_C0 = Me.TXT
  loc_1B85B04:                             Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B85B31:                             Set var_1E4 = Me.TXT
  loc_1B85B37:                             Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B85B4E:                             var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B85B66:                             Set var_270 = Me.TXT
  loc_1B85B6C:                             Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B85B9A:                             unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B85BD2:                           End If
  loc_1B85BD2:                           Call Proc_174_62_E7E800()
  loc_1B85BDA:                         Else
  loc_1B85BDA:                           Exit Sub
  loc_1B85BDB:                         End If
  loc_1B85BDB:                       End If
  loc_1B85BDE:                     Else
  loc_1B85C1D:                       If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT4") Then
  loc_1B85C3D:                         var_150 = Me.Fields.Item("AutoPrint")
  loc_1B85C5F:                         If (var_150.Value = "Yes") Then
  loc_1B85C78:                           Set var_3AC = Me.FGrid
  loc_1B85C7F:                           Set var_3B0 = ()
  loc_1B85C90:                           Set var_C0 = Me.TXT
  loc_1B85C96:                           Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B85CE9:                           Set var_26C = var_3AC
  loc_1B85CF6:                           Proc_96_54_1D7EA30(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B85D2D:                           Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B85D4B:                           global_134(False).Enabled = global_128
  loc_1B85D62:                           "O"(False).Enabled = 
  loc_1B85D72:                           If (MemVar_1F921D0 = "Y") Then
  loc_1B85D95:                             var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B85DA3:                             Set var_C0 = Me.TXT
  loc_1B85DA9:                             Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B85DB8:                             var_108 = Trim(CVar(var_150))
  loc_1B85DC0:                             var_128 = var_244 & var_108 
  loc_1B85DD6:                             Set var_1E4 = Me.TXT
  loc_1B85DDC:                             Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_128 & "','")
  loc_1B85DF3:                             var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B85E0B:                             Set var_270 = Me.TXT
  loc_1B85E11:                             Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B85E3F:                             unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B85E77:                           End If
  loc_1B85E77:                           Call Proc_174_62_E7E800()
  loc_1B85E7F:                         Else
  loc_1B85EAE:                           If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B85EC7:                             Set var_3AC = Me.FGrid
  loc_1B85ECE:                             Set var_3B0 = ()
  loc_1B85EDF:                             Set var_C0 = Me.TXT
  loc_1B85EE5:                             Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B85F38:                             Set var_26C = var_3AC
  loc_1B85F45:                             Proc_96_54_1D7EA30(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B85F7C:                             Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B85F9A:                             global_134(False).Enabled = global_128
  loc_1B85FB1:                             "O"(False).Enabled = 
  loc_1B85FC1:                             If (MemVar_1F921D0 = "Y") Then
  loc_1B85FDD:                               var_9C = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1B85FF2:                               Set var_C0 = Me.TXT
  loc_1B85FF8:                               Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, CVar(var_9C & ",'CHKOT','"))
  loc_1B86025:                               Set var_1E4 = Me.TXT
  loc_1B8602B:                               Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B86042:                               var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B8605A:                               Set var_270 = Me.TXT
  loc_1B86060:                               Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B8608E:                               unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B860C6:                             End If
  loc_1B860C6:                             Call Proc_174_62_E7E800()
  loc_1B860CE:                           Else
  loc_1B860CE:                             Exit Sub
  loc_1B860CF:                           End If
  loc_1B860CF:                         End If
  loc_1B860D2:                       Else
  loc_1B86111:                         If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT5") Then
  loc_1B86131:                           var_150 = Me.Fields.Item("AutoPrint")
  loc_1B86153:                           If (var_150.Value = "Yes") Then
  loc_1B8616C:                             Set var_3AC = Me.FGrid
  loc_1B86173:                             Set var_3B0 = ()
  loc_1B86184:                             Set var_C0 = Me.TXT
  loc_1B8618A:                             Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B861E8:                             Set var_26C = var_3AC
  loc_1B861F5:                             Proc_96_50_1CF47D8(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA, var_150.Text)
  loc_1B8622E:                             Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), 1, 2, global_134)
  loc_1B8624C:                             global_128(False).Enabled = "O"
  loc_1B86263:                             0(False).Enabled = 
  loc_1B86273:                             If (MemVar_1F921D0 = "Y") Then
  loc_1B8628F:                               var_9C = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1B86296:                               var_118 = CVar(var_9C & ",'CHKOT','") 'String
  loc_1B862A4:                               Set var_C0 = Me.TXT
  loc_1B862AA:                               Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B862B9:                               var_108 = Trim(CVar(var_150))
  loc_1B862C1:                               var_128 = var_244 & var_108 
  loc_1B862D7:                               Set var_1E4 = Me.TXT
  loc_1B862DD:                               Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_128 & "','")
  loc_1B862F4:                               var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B8630C:                               Set var_270 = Me.TXT
  loc_1B86312:                               Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B86340:                               unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B86378:                             End If
  loc_1B86378:                             Call Proc_174_62_E7E800()
  loc_1B86380:                           Else
  loc_1B863AF:                             If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B863C8:                               Set var_3AC = Me.FGrid
  loc_1B863CF:                               Set var_3B0 = ()
  loc_1B863E0:                               Set var_C0 = Me.TXT
  loc_1B863E6:                               Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B86444:                               Set var_26C = var_3AC
  loc_1B86451:                               Proc_96_50_1CF47D8(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA, var_150.Text)
  loc_1B8648A:                               Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), 1, 2, global_134)
  loc_1B864A8:                               global_128(False).Enabled = "O"
  loc_1B864BF:                               0(False).Enabled = 
  loc_1B864CF:                               If (MemVar_1F921D0 = "Y") Then
  loc_1B864EB:                                 var_9C = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1B86500:                                 Set var_C0 = Me.TXT
  loc_1B86506:                                 Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, CVar(var_9C & ",'CHKOT','"))
  loc_1B86533:                                 Set var_1E4 = Me.TXT
  loc_1B86539:                                 Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B86550:                                 var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B86568:                                 Set var_270 = Me.TXT
  loc_1B8656E:                                 Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B8659C:                                 unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B865D4:                               End If
  loc_1B865D4:                               Call Proc_174_62_E7E800()
  loc_1B865DC:                             Else
  loc_1B865DC:                               Exit Sub
  loc_1B865DD:                             End If
  loc_1B865DD:                           End If
  loc_1B865E0:                         Else
  loc_1B8661F:                           If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT6") Then
  loc_1B8663F:                             var_150 = Me.Fields.Item("AutoPrint")
  loc_1B86661:                             If (var_150.Value = "Yes") Then
  loc_1B8667A:                               Set var_3AC = Me.FGrid
  loc_1B86681:                               Set var_3B0 = ()
  loc_1B86692:                               Set var_C0 = Me.TXT
  loc_1B86698:                               Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B866F6:                               Set var_26C = var_3AC
  loc_1B86703:                               Proc_96_51_1EAC61C(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA, var_150.Text)
  loc_1B8673C:                               Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), 1, 2, global_134)
  loc_1B8675A:                               global_128(False).Enabled = "O"
  loc_1B86771:                               0(False).Enabled = 
  loc_1B86781:                               If (MemVar_1F921D0 = "Y") Then
  loc_1B8679D:                                 var_9C = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1B867A4:                                 var_118 = CVar(var_9C & ",'CHKOT','") 'String
  loc_1B867B2:                                 Set var_C0 = Me.TXT
  loc_1B867B8:                                 Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B867C7:                                 var_108 = Trim(CVar(var_150))
  loc_1B867CF:                                 var_128 = var_244 & var_108 
  loc_1B867E5:                                 Set var_1E4 = Me.TXT
  loc_1B867EB:                                 Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_128 & "','")
  loc_1B86802:                                 var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B8681A:                                 Set var_270 = Me.TXT
  loc_1B86820:                                 Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B8684E:                                 unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B86886:                               End If
  loc_1B86886:                               Call Proc_174_62_E7E800()
  loc_1B8688E:                             Else
  loc_1B868BD:                               If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B868D6:                                 Set var_3AC = Me.FGrid
  loc_1B868DD:                                 Set var_3B0 = ()
  loc_1B868EE:                                 Set var_C0 = Me.TXT
  loc_1B868F4:                                 Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B86952:                                 Set var_26C = var_3AC
  loc_1B8695F:                                 Proc_96_51_1EAC61C(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA, var_150.Text)
  loc_1B86998:                                 Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), 1, 2, global_134)
  loc_1B869B6:                                 global_128(False).Enabled = "O"
  loc_1B869CD:                                 0(False).Enabled = 
  loc_1B869DD:                                 If (MemVar_1F921D0 = "Y") Then
  loc_1B869F9:                                   var_9C = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1B86A0E:                                   Set var_C0 = Me.TXT
  loc_1B86A14:                                   Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, CVar(var_9C & ",'CHKOT','"))
  loc_1B86A41:                                   Set var_1E4 = Me.TXT
  loc_1B86A47:                                   Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B86A5E:                                   var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B86A76:                                   Set var_270 = Me.TXT
  loc_1B86A7C:                                   Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B86AAA:                                   unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B86AE2:                                 End If
  loc_1B86AE2:                                 Call Proc_174_62_E7E800()
  loc_1B86AEA:                               Else
  loc_1B86AEA:                                 Exit Sub
  loc_1B86AEB:                               End If
  loc_1B86AEB:                             End If
  loc_1B86AEE:                           Else
  loc_1B86B2D:                             If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT7") Then
  loc_1B86B4D:                               var_150 = Me.Fields.Item("AutoPrint")
  loc_1B86B6F:                               If (var_150.Value = "Yes") Then
  loc_1B86B88:                                 Set var_3AC = Me.FGrid
  loc_1B86B8F:                                 Set var_3B0 = ()
  loc_1B86BA0:                                 Set var_C0 = Me.TXT
  loc_1B86BA6:                                 Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B86C04:                                 Set var_26C = var_3AC
  loc_1B86C11:                                 Proc_96_52_1EA14A0(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA, var_150.Text)
  loc_1B86C4A:                                 Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), 1, 2, global_134)
  loc_1B86C68:                                 global_128(False).Enabled = "O"
  loc_1B86C7F:                                 0(False).Enabled = 
  loc_1B86C8F:                                 If (MemVar_1F921D0 = "Y") Then
  loc_1B86CAB:                                   var_9C = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1B86CB2:                                   var_118 = CVar(var_9C & ",'CHKOT','") 'String
  loc_1B86CC0:                                   Set var_C0 = Me.TXT
  loc_1B86CC6:                                   Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, var_118)
  loc_1B86CD5:                                   var_108 = Trim(CVar(var_150))
  loc_1B86CDD:                                   var_128 = var_244 & var_108 
  loc_1B86CF3:                                   Set var_1E4 = Me.TXT
  loc_1B86CF9:                                   Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_128 & "','")
  loc_1B86D10:                                   var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B86D28:                                   Set var_270 = Me.TXT
  loc_1B86D2E:                                   Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B86D5C:                                   unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B86D94:                                 End If
  loc_1B86D94:                                 Call Proc_174_62_E7E800()
  loc_1B86D9C:                               Else
  loc_1B86DCB:                                 If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B86DE4:                                   Set var_3AC = Me.FGrid
  loc_1B86DEB:                                   Set var_3B0 = ()
  loc_1B86DFC:                                   Set var_C0 = Me.TXT
  loc_1B86E02:                                   Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_150)
  loc_1B86E60:                                   Set var_26C = var_3AC
  loc_1B86E6D:                                   Proc_96_52_1EA14A0(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA, var_150.Text)
  loc_1B86EA6:                                   Proc_96_40_13BD354(CStr(Trim(CVar(Me.txtleaderfolio))), 1, 2, global_134)
  loc_1B86EC4:                                   global_128(False).Enabled = "O"
  loc_1B86EDB:                                   0(False).Enabled = 
  loc_1B86EEB:                                   If (MemVar_1F921D0 = "Y") Then
  loc_1B86F07:                                     var_9C = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1B86F1C:                                     Set var_C0 = Me.TXT
  loc_1B86F22:                                     Call 0.Method_Proc_174_49_1B870180 (CInt(0), var_150, CVar(var_9C & ",'CHKOT','"))
  loc_1B86F4F:                                     Set var_1E4 = Me.TXT
  loc_1B86F55:                                     Call 0.Method_Proc_174_49_1B870180 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B86F6C:                                     var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B86F84:                                     Set var_270 = Me.TXT
  loc_1B86F8A:                                     Call 0.Method_Proc_174_49_1B870180 (CInt(9), var_3AC)
  loc_1B86FB8:                                     unk_514A7C.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B86FF0:                                   End If
  loc_1B86FF0:                                   Call Proc_174_62_E7E800()
  loc_1B86FF8:                                 Else
  loc_1B86FF8:                                   Exit Sub
  loc_1B86FF9:                                 End If
  loc_1B86FF9:                               End If
  loc_1B86FF9:                             End If
  loc_1B86FF9:                           End If
  loc_1B86FF9:                         End If
  loc_1B86FF9:                       End If
  loc_1B86FF9:                     End If
  loc_1B86FF9:                   End If
  loc_1B86FF9:                 End If
  loc_1B86FF9:               End If
  loc_1B86FF9:             End If
  loc_1B86FF9:           End If
  loc_1B86FF9:         End If
  loc_1B86FF9:       End If
  loc_1B86FF9:     End If
  loc_1B86FF9:   End If
  loc_1B86FF9: End If
  loc_1B86FFD: Set var_C0 = Me.FGrid
  loc_1B87013: Set var_94 = Nothing
  loc_1B87016: Exit Sub
End Sub

Public Sub Proc_174_50_1267F18
  'Data Table: 514A60
  Dim var_8A As Integer
  Dim var_A4 As TextBox
  Dim unk_514A67 As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As Variant
  Dim var_A8 As String
  Dim var_CC As Variant
  Dim var_100 As Variant
  Dim var_F0 As String
  Dim var_120 As Variant
  Dim var_110 As String
  loc_12679CC: On Error Goto loc_1267F0C
  loc_12679EB: Call 0.Method_Proc_174_50_1267F180 (CInt(&HA), var_A4, var_A8)
  loc_12679F3: "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono=" = var_A4.Text
  loc_1267A2A: unk_514A67.Execute &HFF & var_A8 & " order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO", var_CC, -1
  loc_1267A35: Set var_90 = Me.TXT
  loc_1267A44: var_D0 = var_90.RecordCount
  loc_1267A52: If (var_D0 <= 0) Then
  loc_1267A5B:   Call 0.Method_arg_50 (var_A8)
  loc_1267A7C:   MsgBox("** No Records Found to Print **", &H40, CVar(var_A8), var_100, var_120)
  loc_1267A8E:   var_8A = 0
  loc_1267A91:   Exit Sub
  loc_1267A92: End If
  loc_1267A95: var_94 = "BillPrint"
  loc_1267A98: var_BC = "Guest Bill"
  loc_1267AAF: var_98 = CStr(Ucase(var_BC))
  loc_1267ABF: If (var_8A = 0) Then
  loc_1267AC2:   Exit Sub
  loc_1267AC3: End If
  loc_1267AE7: Set var_A0 = var_90 
  loc_1267AEE: CreateFieldDefFile(var_A0, MemVar_1F920B4 & "\" & var_94 & ".ttx", &HFF)
  loc_1267B19: var_A8 = MemVar_1F920B4 & "\"
  loc_1267B30: Call 0.Method_arg_1C (var_A8 & var_94 & ".RPT", var_BC, var_A0)
  loc_1267B3B: MemVar_1F921E4 = var_A0
  loc_1267B64: Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_F0)
  loc_1267B6C: Call 0.Method_arg_2C (var_110, var_8A)
  loc_1267B7A: Call 0.Method_arg_150 (var_A0)
  loc_1267B84: Set var_90 = Nothing
  loc_1267B98: Call 0.Method_arg_90 (var_A0, var_D0)
  loc_1267BA0: Call 0.Method_arg_24 (var_9A)
  loc_1267BAC: For var_12C =  To CInt(var_D0): 1 = var_12C 'Integer
  loc_1267BC5:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_1267BCD:   Call 0.Method_arg_20 (var_A4)
  loc_1267BD5:   Call 0.Method_arg_30 (var_A8)
  loc_1267BEB:   var_13C = Ucase(CVar(var_A8)) 'Variant
  loc_1267C1B:   If (var_13C = Ucase("ChkInDt")) Then
  loc_1267C2E:     Set var_A0 = Me.TXT
  loc_1267C34:     Call 0.Method_Proc_174_50_1267F180 (CInt(1), var_A4)
  loc_1267C6C:     Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_1267C74:     Call 0.Method_arg_20 (var_148)
  loc_1267C7C:     Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_1267C9B:   Else
  loc_1267CBD:     If (var_13C = Ucase("Company")) Then
  loc_1267CD0:       Set var_A0 = Me.TXT
  loc_1267CD6:       Call 0.Method_Proc_174_50_1267F180 (CInt(&HB), var_A4)
  loc_1267D0E:       Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_1267D16:       Call 0.Method_arg_20 (var_148)
  loc_1267D1E:       Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_1267D3D:     Else
  loc_1267D5F:       If (var_13C = Ucase("AdltChld")) Then
  loc_1267D72:         Set var_A0 = Me.TXT
  loc_1267D78:         Call 0.Method_Proc_174_50_1267F180 (CInt(5), var_A4)
  loc_1267DA7:         Set var_144 = Me.TXT
  loc_1267DAD:         Call 0.Method_Proc_174_50_1267F180 (CInt(6), var_148)
  loc_1267DE5:         Call 0.Method_arg_90 (var_18C, CLng(var_9A))
  loc_1267DED:         Call 0.Method_arg_20 (var_190)
  loc_1267DF5:         Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "/" & Trim(CVar(var_148)) & "'"))
  loc_1267E1E:       Else
  loc_1267E40:         If (var_13C = Ucase("RoomNo")) Then
  loc_1267E53:           Set var_A0 = Me.TXT
  loc_1267E59:           Call 0.Method_Proc_174_50_1267F180 (CInt(0), var_A4)
  loc_1267E91:           Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_1267E99:           Call 0.Method_arg_20 (var_148)
  loc_1267EA1:           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_1267EBD:         End If
  loc_1267EBD:       End If
  loc_1267EBD:     End If
  loc_1267EBD:   End If
  loc_1267EC0: Next var_12C 'Integer
  loc_1267ECA: Set var_A4 = Nothing
  loc_1267EE0: Set var_A0 = MemVar_1F921E4 
  loc_1267EEC: Proc_6_99_1483714(var_A0, 0, var_98)
  loc_1267EF7: MemVar_1F921E4 = var_A0
  loc_1267F07: MemVar_1F921E4 = Nothing
  loc_1267F0B: Exit Sub
  loc_1267F0C: ' Referenced from: 12679CC
  loc_1267F11: Proc_6_60_E62BC4(0, &HFF)
  loc_1267F16: Exit Sub
End Sub

Public Sub Proc_174_51_18F1708
  'Data Table: 514A60
  Dim var_10C As String
  Dim var_110 As String
  Dim unk_514A67 As Connection15
  Dim var_E4 As Recordset15
  Dim var_124 As Variant
  Dim var_B4 As Recordset15
  Dim var_88 As Variant
  Dim var_86 As Variant
  Dim var_120 As Variant
  Dim var_14C As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_208 As Fields15
  Dim var_25C As Variant
  Dim var_27C As Variant
  Dim var_37C As Variant
  Dim var_424 As Variant
  Dim var_3F4 As Variant
  Dim var_414 As Variant
  Dim var_434 As Variant
  Dim var_454 As Variant
  Dim var_514 As Variant
  Dim var_534 As Variant
  Dim var_554 As Variant
  Dim var_588 As Variant
  Dim var_5AC As Variant
  Dim var_5CC As Variant
  Dim var_5EC As Variant
  Dim var_654 As Variant
  Dim var_698 As Variant
  Dim var_6FC As Variant
  Dim var_71C As Variant
  Dim var_774 As Variant
  Dim var_794 As Variant
  Dim var_7D4 As Variant
  Dim var_828 As Variant
  Dim var_8A4 As Variant
  Dim var_8B4 As Variant
  Dim var_914 As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_1E4 As Variant
  Dim var_204 As Variant
  Dim var_2BC As Variant
  Dim var_304 As Variant
  Dim var_3BC As Variant
  Dim var_474 As Variant
  Dim var_4BC As Variant
  Dim var_574 As Variant
  Dim var_62C As Variant
  Dim var_684 As Variant
  Dim var_73C As Variant
  Dim var_814 As Variant
  Dim var_87C As Variant
  Dim var_954 As Variant
  Dim var_16C As Variant
  Dim var_2E4 As Variant
  Dim var_3E4 As Variant
  Dim var_49C As Variant
  Dim var_504 As Variant
  Dim var_7A4 As Variant
  Dim var_85C As Variant
  Dim var_1F4 As Variant
  Dim var_24C As Variant
  Dim var_32C As Variant
  Dim var_34C As Variant
  Dim var_61C As Variant
  Dim var_674 As Variant
  Dim var_130 As Field20
  Dim var_15C As Variant
  Dim var_B0 As Recordset15
  Dim var_CC As Double
  Dim var_D4 As Double
  Dim var_1D4 As Variant
  Dim var_2AC As Variant
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_22C As Variant
  Dim var_3AC As Variant
  Dim var_DC As Double
  Dim var_4E4 As Variant
  Dim var_6CC As Variant
  Dim var_804 As Variant
  Dim Me As Recordset15
  loc_18EEE7C: On Error Goto loc_18F16EC
  loc_18EEE81: Close 1
  loc_18EEE8A: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_18EEEA5: var_10C = "Select Distinct Split,Bill_No from paycharge where (ContraDocId is NULL or contradocid='') and folionodocid in ('" & global_68
  loc_18EEEB5: unk_514A67.Execute var_10C & ")", var_120, -1
  loc_18EEEC0: Set var_E4 = var_124
  loc_18EEED0: ' Referenced from: 18F163B
  loc_18EEEDF: If Not(var_E4.EOF) Then
  loc_18EEF08:   var_110 = "SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory FROM ((GuestProf LEFT JOIN (GuestFolio LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) left joIn Subgroup S on GuestFolio.Company=s.Subcode Where GuestFolio.Docid = '" & Me.txtleaderfolio.Text
  loc_18EEF18:   unk_514A67.Execute Me.txtleaderfolio.Text & ")" & "' order by  RoomOcc.Sno Desc", var_120, -1
  loc_18EEF23:   Set var_B4 = var_130
  loc_18EEF4D:   If (var_B4.RecordCount <= 0) Then
  loc_18EEF50:     Exit Sub
  loc_18EEF51:   End If
  loc_18EEF57:   If (var_86 = 0) Then
  loc_18EEF60:     var_88 = (var_88 + 1)
  loc_18EEF68:     Print 1, " "
  loc_18EEF73:     Print 1, " "
  loc_18EEF7E:     Print 1, " "
  loc_18EEF89:     Print 1, " "
  loc_18EEF91:     var_86 = &HC
  loc_18EEFE2:     Print 1, " Mr " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Name")), var_86, var_88), &H23)
  loc_18EF000:     Print 1, vbNullString
  loc_18EF01D:     var_130 = var_B4.Fields.Item("Add1")
  loc_18EF034:     var_15C = Trim(CVar(Proc_6_38_E68A98(CVar(var_130), var_130)))
  loc_18EF0C2:     var_22C = var_B4.Fields.Item("FolioNo").Value
  loc_18EF0DE:     var_27C = (9 - Len(Trim(CVar(CStr(var_22C)))))
  loc_18EF15F:     var_37C = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_18EF1B9:     var_434 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_18EF23A:     var_534 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_18EF294:     var_5EC = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_18EF321:     var_6FC = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_18EF392:     var_7D4 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_18EF44C:     var_914 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_18EF473:     var_18C = (CVar(vbNullString & Proc_6_45_EAD428(CStr(var_15C), &H23)) + Space(3))
  loc_18EF47A:     var_1E4 = (var_18C + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))))
  loc_18EF481:     var_204 = (var_1E4 + Space(3))
  loc_18EF488:     var_2BC = (var_204 + Space(CLng((var_27C / 2))))
  loc_18EF494:     var_304 = (var_2BC + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_18EF49B:     var_3BC = (var_304 + Space(CLng((var_37C / 2))))
  loc_18EF4A2:     var_474 = (var_3BC + Space(CLng((var_434 / 2))))
  loc_18EF4AE:     var_4BC = (var_474 + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_18EF4B5:     var_574 = (var_4BC + Space(CLng((var_534 / 2))))
  loc_18EF4BC:     var_62C = (var_574 + Space(CLng((var_5EC / 2))))
  loc_18EF4C3:     var_684 = (var_62C + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_18EF4CA:     var_73C = (var_684 + Space(CLng((var_6FC / 2))))
  loc_18EF4D1:     var_814 = (var_73C + Space(CLng((var_7D4 / 2))))
  loc_18EF4D8:     var_87C = (var_814 + Trim(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_18EF4DF:     var_954 = (var_87C + Space(CLng((var_914 / 2))))
  loc_18EF4E5:     Print 1, var_954
  loc_18EF5C3:     Print 1, vbNullString
  loc_18EF610:     Print 1, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add2"))), &H23)
  loc_18EF62C:     Print 1, vbNullString
  loc_18EF675:     var_13C = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CityName"))) & "-", &H23)
  loc_18EF6A3:     Proc_6_39_E7C810(var_15C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18EF6BF:     var_1B4 = (10 - Len(Trim(CVar(CStr(var_15C)))))
  loc_18EF6C8:     var_1C4 = (CVar(var_B4.Fields.Item("RoomNo")) / 2)
  loc_18EF6E5:     var_208 = var_B4.Fields
  loc_18EF6FC:     Proc_6_39_E7C810(var_22C, CVar(var_208.Item("RoomRate")))
  loc_18EF72C:     Proc_6_39_E7C810(var_27C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18EF748:     var_2E4 = (10 - Len(Trim(CVar(CStr(var_27C)))))
  loc_18EF788:     var_424 = 12
  loc_18EF7C3:     var_3E4 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_18EF805:     var_454 = "dd/mm/yy"
  loc_18EF836:     var_588 = 12
  loc_18EF853:     var_49C = CVar(var_B4.Fields.Item("VDate")) 'Address
  loc_18EF871:     var_504 = (1 - Len(Trim(Format(var_49C, "dd/mm/yy"))))
  loc_18EF8A4:     var_698 = 12
  loc_18EF8DF:     var_5CC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_18EF952:     var_828 = 12
  loc_18EF98D:     var_6FC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_18EF9C3:     var_794 = (8 - Len(Trim("****")))
  loc_18EFA0C:     var_86C = (9 - Len(Trim("****")))
  loc_18EFA33:     var_1F4 = (CVar(vbNullString & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))) + Space(CLng(var_1C4)))
  loc_18EFA3F:     var_24C = (Space(3) + CVar(CStr(var_22C)))
  loc_18EFA46:     var_32C = (Trim(CVar(CStr(var_22C))) + Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))))
  loc_18EFA4D:     var_34C = (var_B4.Fields.Item("FolioNo").Value + Space(1))
  loc_18EFA54:     var_414 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_18EFA5B:     var_474 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Format(CVar(var_B4.Fields.Item("VDate")), var_454))
  loc_18EFA62:     var_554 = (var_474 + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))))
  loc_18EFA69:     var_61C = ((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))) / 2) + Space(CLng((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2))))
  loc_18EFA70:     var_674 = (Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_18EFA77:     var_73C = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomCategory"))))) + Space(CLng((var_6FC / 2))))
  loc_18EFA7E:     var_7D4 = (var_73C + Space(CLng((CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9))) / 2))))
  loc_18EFA85:     var_814 = (var_7D4 + Trim("****"))
  loc_18EFA8C:     var_8B4 = (var_814 + Space(CLng((Trim(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)) / 2))))
  loc_18EFA92:     Print 1, CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName"))))
  loc_18EFB48:     Print 1, " "
  loc_18EFB53:     Print 1, " "
  loc_18EFB5E:     Print 1, " "
  loc_18EFB66:     var_86 = &H17
  loc_18EFB69:   End If
  loc_18EFB80:   var_10C = "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocId = GuestFolio.DocId) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionodocid in ('" & global_68
  loc_18EFBBD:   var_16C = CVar(var_10C & ") and (amtdr<>0 or amtcr<>0) and PayCharge.Split='") & var_E4.Fields.Item("Split").Value & "' and PayCharge.Bill_No='" 
  loc_18EFC02:   unk_514A67.Execute CStr(var_16C & var_E4.Fields.Item("Bill_no").Value & "' order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO"), var_1C4, -1
  loc_18EFC0D:   Set var_B0 = var_208
  loc_18EFC37:   ' Referenced from: 18F124C
  loc_18EFC46:   If Not(var_B0.EOF) Then
  loc_18EFC83:     If (var_DC <> CDate(var_B0.Fields.Item("VDate").Value)) Then
  loc_18EFC9A:       If (var_B0.AbsolutePosition > 1) Then
  loc_18EFCA4:         var_CC = (var_BC - var_C4)
  loc_18EFCAE:         var_D4 = (var_D4 + var_CC)
  loc_18EFD39:         var_1C4 = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, 1, var_828)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1, 1)))
  loc_18EFDB0:         var_25C = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, 1)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1, 1)))
  loc_18EFE06:         var_15C = (Space(&H16) + CVar(Proc_6_45_EAD428("Day Total", &H18, var_D4, var_CC, var_208, var_86)))
  loc_18EFE0D:         var_1D4 = (CVar("Day Total" & ") and (amtdr<>0 or amtcr<>0) and PayCharge.Split='") & var_E4.Fields.Item("Split").Value + var_1C4)
  loc_18EFE14:         var_1F4 = (Space(CLng(var_1C4)) + Space(1))
  loc_18EFE1B:         var_27C = (Space(3) + var_25C)
  loc_18EFE22:         var_2AC = (var_27C + Space(1))
  loc_18EFE2C:         var_304 = (Trim(CVar(CStr(var_27C))) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_18EFE32:         Print 1, Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2)))
  loc_18EFE90:         var_86 = (var_86 + 1)
  loc_18EFE98:         Print 1, vbNullString
  loc_18EFEA4:         var_86 = (var_86 + 1)
  loc_18EFEAA:         var_BC = CDbl(0)
  loc_18EFEB0:         var_C4 = CDbl(0)
  loc_18EFEB3:       End If
  loc_18EFEB3:     End If
  loc_18EFEF8:     var_14C = Space(1)
  loc_18EFF56:     Proc_6_39_E7C810(Space(CLng(CVar(var_B0.Fields.Item("VNo")))), CVar(var_B0.Fields.Item("VNo")))
  loc_18EFF82:     var_22C = (CVar(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("vType")), var_86, 1)))) & "/") + Trim(CVar(CStr(Space(CLng(CVar(var_B0.Fields.Item("VNo"))))))))
  loc_18F000B:     Proc_6_39_E7C810(Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))), CVar(var_B0.Fields.Item("AmtDr")))
  loc_18F004C:     Proc_6_39_E7C810(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), CVar(var_B0.Fields.Item("AmtDr")))
  loc_18F00A4:     var_3E4 = IIf((Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))) = 0), CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), "0.00")), &HA, 1)))
  loc_18F00DC:     Proc_6_39_E7C810(var_454, CVar(var_B0.Fields.Item("AmtCr")), 1)
  loc_18F011D:     Proc_6_39_E7C810(var_49C, CVar(var_B0.Fields.Item("AmtCr")))
  loc_18F0174:     var_514 = IIf((var_454 = 0), CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_49C, "0.00")), &HA, 1)))
  loc_18F0182:     var_16C = (CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_14C)
  loc_18F018C:     var_24C = ("0.00" + CVar(Proc_6_45_EAD428(CStr(Format(var_C4, "0.00")), 9)))
  loc_18F0193:     var_27C = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1, 1)) + Space(1))
  loc_18F019D:     var_2E4 = (var_27C + CVar(Proc_6_45_EAD428(CStr(Left(CVar(var_B0.Fields.Item("Comments")), &H18)), &H18)))
  loc_18F01A4:     var_3F4 = (Format(var_D4, "0.00") + var_3E4)
  loc_18F01AB:     var_414 = ((var_B4.Fields.Item("Adult").Value / 2) + Space(1))
  loc_18F01B2:     var_534 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + var_514)
  loc_18F01B8:     Print 1, Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2)))
  loc_18F0259:     var_86 = (var_86 + 1)
  loc_18F0289:     Proc_6_39_E7C810(var_14C, CVar(var_B0.Fields.Item("AmtDr")), CVar(var_BC), var_86)
  loc_18F0291:     var_15C = (1 + var_14C)
  loc_18F0296:     var_BC = CSng(CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_18F02D2:     Proc_6_39_E7C810(var_14C, CVar(var_B0.Fields.Item("AmtCr")), CVar(var_C4))
  loc_18F02DA:     var_15C = (var_BC + var_14C)
  loc_18F02DF:     var_C4 = CSng(CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_18F0344:     If (var_B0.AbsolutePosition = var_B0.RecordCount) Then
  loc_18F034E:       var_CC = (var_BC - var_C4)
  loc_18F0358:       var_D4 = (var_D4 + var_CC)
  loc_18F03E3:       var_1C4 = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, CDate(var_B0.Fields.Item("VDate").Value))), CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1, 1)))
  loc_18F045A:       var_25C = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, var_C4)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_18F04B0:       var_15C = (Space(&H16) + CVar(Proc_6_45_EAD428("Day Total", &H18, var_D4, var_CC)))
  loc_18F04B7:       var_1D4 = (CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_1C4)
  loc_18F04BE:       var_1F4 = (Space(CLng(var_1C4)) + Space(1))
  loc_18F04C5:       var_27C = (Trim(CVar(CStr(Space(CLng(CVar(var_B0.Fields.Item("VNo"))))))) + var_25C)
  loc_18F04CC:       var_2AC = (var_27C + Space(1))
  loc_18F04D6:       var_304 = (Left(CVar(var_B0.Fields.Item("Comments")), &H18) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_18F04DC:       Print 1, Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2)))
  loc_18F053A:       var_86 = (var_86 + 1)
  loc_18F0540:       var_BC = CDbl(0)
  loc_18F0546:       var_C4 = CDbl(0)
  loc_18F0549:     End If
  loc_18F054F:     If (var_86 >= &H30) Then
  loc_18F0557:       Print 1, " "
  loc_18F057B:       var_16C = CVar((Val(CStr(var_88)) + CDbl(1))) 'Double
  loc_18F058F:       var_14C = (" " + Space(&H37))
  loc_18F0598:       var_15C = (CVar(Proc_6_45_EAD428("Day Total", &H18, var_D4, var_CC)) + "Continued Page No ")
  loc_18F05A5:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) & Str("0.00")
  loc_18F05C3:       var_86 = (var_86 + 1)
  loc_18F05D8:       Print 1, Chr(&HC)
  loc_18F05E3:       var_86 = 0
  loc_18F05E6:     End If
  loc_18F05EC:     If (var_86 = 0) Then
  loc_18F05F5:       var_88 = (var_88 + 1)
  loc_18F05FD:       Print 1, " "
  loc_18F0608:       Print 1, " "
  loc_18F0613:       Print 1, " "
  loc_18F061E:       Print 1, " "
  loc_18F0626:       var_86 = &HC
  loc_18F0665:       var_13C = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Name")), var_86, var_88, var_86, var_86, var_C4), &H23, var_BC, var_86)
  loc_18F0677:       Print 1, " Mr " & var_13C
  loc_18F0695:       Print 1, vbNullString
  loc_18F06C9:       var_15C = Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add1")), 1)))
  loc_18F0757:       var_22C = var_B4.Fields.Item("FolioNo").Value
  loc_18F0773:       var_27C = (9 - Len(Trim(CVar(CStr(var_22C)))))
  loc_18F07F4:       var_37C = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_18F084E:       var_434 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_18F08CF:       var_534 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_18F0929:       var_5EC = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_18F09B6:       var_6FC = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_18F0A27:       var_7D4 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_18F0AE1:       var_914 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_18F0B08:       var_18C = (CVar(vbNullString & Proc_6_45_EAD428(CStr(var_15C), &H23)) + Space(3))
  loc_18F0B0F:       var_1E4 = (CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) & Str("0.00") + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), 1))))
  loc_18F0B16:       var_204 = (Space(1) + Space(3))
  loc_18F0B1D:       var_2BC = ("0.00" + Space(CLng((var_27C / 2))))
  loc_18F0B29:       var_304 = ("0.00" + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_18F0B30:       var_3BC = (Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))) + Space(CLng((Format(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), "0.00") / 2))))
  loc_18F0B37:       var_474 = (CVar(Proc_6_52_EAD4F4(CStr(Format(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), "0.00")), &HA, 1)) + Space(CLng((CVar(var_B0.Fields.Item("AmtCr")) / 2))))
  loc_18F0B43:       var_4BC = (CVar(var_B0.Fields.Item("AmtCr")) + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_18F0B4A:       var_574 = (Format(var_B4.Fields.Item("Adult").Value, "0.00") + Space(CLng((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))) / 2))))
  loc_18F0B51:       var_62C = ("dd/mm/yy" + Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))))
  loc_18F0B58:       var_684 = (CVar(var_B4.Fields.Item("DepDate")) + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_18F0B5F:       var_73C = (CVar(var_B4.Fields.Item("DepDate")) + Space(CLng((var_6FC / 2))))
  loc_18F0B66:       var_814 = (var_73C + Space(CLng((var_7D4 / 2))))
  loc_18F0B6D:       var_87C = (var_814 + Trim(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_18F0B74:       var_954 = ((Trim(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)) / 2) + Space(CLng((var_914 / 2))))
  loc_18F0B7A:       Print 1, var_954
  loc_18F0C58:       Print 1, vbNullString
  loc_18F0CA5:       Print 1, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add2"))), &H23)
  loc_18F0CC1:       Print 1, vbNullString
  loc_18F0D0A:       var_13C = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CityName"))) & "-", &H23)
  loc_18F0D38:       Proc_6_39_E7C810(var_15C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18F0D54:       var_1B4 = (10 - Len(Trim(CVar(CStr(var_15C)))))
  loc_18F0D91:       Proc_6_39_E7C810(var_22C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18F0DC1:       Proc_6_39_E7C810(var_27C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18F0DDD:       var_2E4 = (10 - Len(Trim(CVar(CStr(var_27C)))))
  loc_18F0E10:       var_424 = 12
  loc_18F0E4B:       var_3AC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_18F0EBE:       var_588 = 12
  loc_18F0EF9:       var_4E4 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_18F0F2C:       var_698 = 12
  loc_18F0F67:       var_5AC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_18F0FDA:       var_828 = 12
  loc_18F1015:       var_6CC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_18F1063:       var_774 = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_18F10E8:       var_85C = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_18F110F:       var_1F4 = (CVar(vbNullString & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))) + Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2))))
  loc_18F111B:       var_24C = (Space(3) + CVar(CStr(var_22C)))
  loc_18F1122:       var_32C = (Trim(CVar(CStr(var_22C))) + Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))))
  loc_18F1129:       var_3F4 = (var_B4.Fields.Item("FolioNo").Value + Space(CLng((Space(CLng((Format(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), "0.00") / 2))) / 2))))
  loc_18F1130:       var_454 = (CVar(CStr(var_B4.Fields.Item("Adult").Value)) + Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))
  loc_18F1137:       var_514 = ((CVar(var_B0.Fields.Item("AmtCr")) / 2) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_18F113E:       var_5EC = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Space(CLng((CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)) / 2))))
  loc_18F1145:       var_654 = ((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_18F114C:       var_71C = (CVar(var_B4.Fields.Item("RoomCategory")) + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value))) / 2))))
  loc_18F1153:       var_7A4 = ((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value))) / 2))) / 2) + Space(CLng((CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))) / 2))))
  loc_18F115A:       var_804 = (Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))) + Trim(CVar(CStr(var_E4.Fields.Item("Bill_no").Value))))
  loc_18F1161:       var_8A4 = (Space(CLng((CVar(CStr(var_E4.Fields.Item("Bill_no").Value)) / 2))) + Space(CLng((Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9) / 2))))
  loc_18F1167:       Print 1, CVar(var_B4.Fields.Item("CountryName"))
  loc_18F1223:       Print 1, " "
  loc_18F122E:       Print 1, " "
  loc_18F1239:       Print 1, " "
  loc_18F1241:       var_86 = &H17
  loc_18F1244:     End If
  loc_18F1247:     var_B0.MoveNext
  loc_18F124C:     GoTo loc_18EFC37
  loc_18F124F:     ' Referenced from: 18F126C
  loc_18F124F:   End If
  loc_18F1255:   If (var_86 <= &H32) Then
  loc_18F125D:     Print 1, vbNullString
  loc_18F1269:     var_86 = (var_86 + 1)
  loc_18F126C:     GoTo loc_18F124F
  loc_18F126F:   End If
  loc_18F12AF:   var_958 = Proc_6_45_EAD428(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise", var_86, var_86, 1, var_828, 1), &H35, 1, 1, var_698)
  loc_18F1302:   var_15C = (Space(8) + CVar(var_958))
  loc_18F1309:   var_17C = (var_15C + Space(6))
  loc_18F1313:   var_1D4 = (Trim(CVar(CStr(var_15C))) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HC, 1, 1, 1)))
  loc_18F1319:   Print 1, Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2)))
  loc_18F134B:   var_86 = (var_86 + 1)
  loc_18F13C7:   var_18C = CVar(Proc_6_45_EAD428(CStr(Mid(CVar(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise", var_588)), &H36, var_15C)), &H35, 1)) 'String
  loc_18F13F4:   var_1C4 = (Space(8) + IIf((Len(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise", var_86)) <= &H35), " ", var_18C))
  loc_18F13FA:   Print 1, CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HC, 1, 1, 1))
  loc_18F142E:   var_86 = (var_86 + 1)
  loc_18F1481:   var_17C = (Space(&H43) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HC, 1, 1)))
  loc_18F1487:   Print 1, " "
  loc_18F14A7:   var_86 = (var_86 + 1)
  loc_18F14AC:   var_86 = 0
  loc_18F14BA:   Print 1, vbNullString
  loc_18F1500:   var_14C = (Space(7) + "Cash")
  loc_18F1509:   var_15C = ("0.00" + "              ")
  loc_18F1513:   var_18C = (Format(CDbl(0), "0.00") + CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CompanyName")), CDbl(0), var_86, var_86)))
  loc_18F1519:   Print 1, var_18C
  loc_18F1575:   var_14C = (Space(7) + CVar(MemVar_1F920C8))
  loc_18F157E:   var_15C = ("0.00" + "              ")
  loc_18F1588:   var_18C = (Format(CDbl(0), "0.00") + CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ContactPerson")), var_86)))
  loc_18F158E:   Print 1, var_18C
  loc_18F15AE:   Print 1, " "
  loc_18F15B9:   Print 1, " "
  loc_18F15C4:   Print 1, " "
  loc_18F15CF:   Print 1, " "
  loc_18F15DA:   Print 1, " "
  loc_18F1607:   Print 1, Proc_6_98_11AC4E4("PROVISIONAL GUEST BILL", "B", &H4E)
  loc_18F162A:   Print 1, Chr(&HC)
  loc_18F1636:   var_E4.MoveNext
  loc_18F163B:   GoTo loc_18EEED0
  loc_18F163E: End If
  loc_18F1640: Close 1
  loc_18F1649: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_18F1685: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value
  loc_18F169B: Close 1
  loc_18F16A5: If (MemVar_1F923B8 = "Y") Then
  loc_18F16C1:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_18F16CB: Else
  loc_18F16E4:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_18F16EB: End If
  loc_18F16EB: Exit Sub
  loc_18F16EC: ' Referenced from: 18EEE7C
  loc_18F16F2: If (var_E8 = &HFF) Then
  loc_18F16FB:   unk_514A67.RollbackTrans
  loc_18F1700: End If
  loc_18F1700: Proc_6_60_E62BC4(1)
  loc_18F1705: Exit Sub
End Sub

Public Sub Proc_174_52_1A30AE8
  'Data Table: 514A60
  Dim var_DE As Integer
  Dim var_10C As String
  Dim var_110 As String
  Dim unk_514A67 As Connection15
  Dim var_E4 As Recordset15
  Dim var_124 As Variant
  Dim var_B4 As Recordset15
  Dim var_88 As Variant
  Dim var_154 As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_86 As Variant
  Dim var_174 As Variant
  Dim var_1C4 As Variant
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_260 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_2B0 As Variant
  Dim var_2C0 As Variant
  Dim var_2E0 As Variant
  Dim var_120 As Variant
  Dim var_2EC As Fields15
  Dim var_320 As Variant
  Dim var_360 As Variant
  Dim var_408 As Variant
  Dim var_3F8 As Variant
  Dim var_418 As Variant
  Dim var_438 As Variant
  Dim var_518 As Variant
  Dim var_538 As Variant
  Dim var_5B0 As Variant
  Dim var_5D0 As Variant
  Dim var_6E0 As Variant
  Dim var_778 As Variant
  Dim var_7B8 As Variant
  Dim var_7D8 As Variant
  Dim var_820 As Variant
  Dim var_830 As Variant
  Dim var_898 As Variant
  Dim var_8F8 As Variant
  Dim var_3A0 As Variant
  Dim var_458 As Variant
  Dim var_4A0 As Variant
  Dim var_558 As Variant
  Dim var_610 As Variant
  Dim var_668 As Variant
  Dim var_720 As Variant
  Dim var_7F8 As Variant
  Dim var_938 As Variant
  Dim var_3C8 As Variant
  Dim var_4E8 As Variant
  Dim var_548 As Variant
  Dim var_788 As Variant
  Dim var_7E8 As Variant
  Dim var_8A8 As Variant
  Dim var_218 As String
  Dim var_240 As Variant
  Dim var_330 As Variant
  Dim var_600 As Variant
  Dim var_658 As Variant
  Dim var_8C8 As Variant
  Dim var_2A0 As Variant
  Dim var_130 As Field20
  Dim var_B0 As Recordset15
  Dim var_CC As Double
  Dim var_D4 As Double
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_DC As Double
  Dim var_220 As String
  Dim var_93C As String
  Dim var_940 As String
  Dim Me As Recordset15
  loc_1A2D5F0: On Error Goto loc_1A30ACD
  loc_1A2D5F5: var_DE = 0
  loc_1A2D5FA: Close 1
  loc_1A2D603: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1A2D61E: var_10C = "Select Distinct Split,Bill_No from paycharge where (ContraDocId is NULL or contradocid='') and folionodocid in ('" & global_68
  loc_1A2D62E: unk_514A67.Execute var_10C & ")", var_120, -1
  loc_1A2D639: Set var_E4 = var_124
  loc_1A2D649: ' Referenced from: 1A30A1C
  loc_1A2D658: If Not(var_E4.EOF) Then
  loc_1A2D681:   var_110 = "SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory FROM ((GuestProf LEFT JOIN (GuestFolio LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) left joIn Subgroup S on GuestFolio.Company=s.Subcode Where GuestFolio.Docid = '" & Me.txtleaderfolio.Text
  loc_1A2D691:   unk_514A67.Execute Me.txtleaderfolio.Text & ")" & "' order by  RoomOcc.Sno Desc", var_120, -1
  loc_1A2D69C:   Set var_B4 = var_130
  loc_1A2D6C6:   If (var_B4.RecordCount <= 0) Then
  loc_1A2D6C9:     Exit Sub
  loc_1A2D6CA:   End If
  loc_1A2D6D0:   If (var_86 = 0) Then
  loc_1A2D701:     var_A4 = Replace(CStr(Space(&H50)), " ", "-", 1, -1, 0)
  loc_1A2D710:     var_88 = (var_88 + 1)
  loc_1A2D734:     Print 1, Proc_6_98_11AC4E4(MemVar_1F92130, "A", &H4E, var_88)
  loc_1A2D789:     var_154 = (Trim(MemVar_1F92134) + ", ")
  loc_1A2D790:     var_184 = (var_154 + Trim(MemVar_1F92138))
  loc_1A2D799:     var_1A4 = (var_184 + " ")
  loc_1A2D7A0:     var_1D4 = (var_1A4 + Trim(MemVar_1F9213C))
  loc_1A2D7A9:     var_1F4 = (var_1D4 + " ")
  loc_1A2D7B3:     var_214 = (var_1F4 + CVar(MemVar_1F9215C))
  loc_1A2D7CC:     Print 1, Proc_6_98_11AC4E4(CStr(var_214), "B", &H4E)
  loc_1A2D82A:     Print 1, Proc_6_98_11AC4E4("Phone: " & MemVar_1F92140 & " Fax :" & MemVar_1F92144, "D", 138)
  loc_1A2D844:     Print 1, vbNullString
  loc_1A2D871:     Print 1, Proc_6_98_11AC4E4("PROVISIONAL GUEST BILL", "B", &H4E)
  loc_1A2D887:     Print 1, var_A4
  loc_1A2D88F:     var_86 = &HC
  loc_1A2D90C:     var_174 = (Chr(&HF) + CVar(Proc_6_45_EAD428("Guest Name :", &H3D, var_86)))
  loc_1A2D915:     var_184 = (Trim(MemVar_1F92138) + "|")
  loc_1A2D91C:     var_1C4 = (var_184 + Space(2))
  loc_1A2D925:     var_1D4 = (Trim(MemVar_1F9213C) + "Room #")
  loc_1A2D92C:     var_214 = (var_1D4 + Space(&HA))
  loc_1A2D935:     var_230 = (var_214 + "Reg #")
  loc_1A2D93C:     var_250 = (var_230 + Space(&HA))
  loc_1A2D945:     var_260 = (var_250 + "Pax")
  loc_1A2D94C:     var_280 = (var_260 + Space(&HB))
  loc_1A2D955:     var_290 = (var_280 + "Type")
  loc_1A2D95C:     var_2B0 = (var_290 + Space(&HA))
  loc_1A2D965:     var_2C0 = (var_2B0 + "Nation")
  loc_1A2D96C:     var_2E0 = (var_2C0 + Chr(&H12))
  loc_1A2D972:     Print 1, var_2E0
  loc_1A2D9BB:     var_124 = var_B4.Fields
  loc_1A2D9C3:     var_130 = var_124.Item("Name")
  loc_1A2DA7B:     var_280 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A2DAFC:     var_360 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A2DB56:     var_418 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A2DBD7:     var_518 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A2DC31:     var_5D0 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A2DCBE:     var_6E0 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A2DD2F:     var_7B8 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_1A2DDE9:     var_8F8 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_1A2DE17:     var_184 = (CVar("Mr " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_130), var_130), &H1F) & "|") + Space(1))
  loc_1A2DE1E:     var_1F4 = (var_184 + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_124))))
  loc_1A2DE25:     var_230 = (Space(&HA) + Space(3))
  loc_1A2DE2C:     var_2B0 = (var_230 + Space(CLng((var_280 / 2))))
  loc_1A2DE38:     var_2E0 = (var_2B0 + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_1A2DE3F:     var_3A0 = (var_2E0 + Space(CLng((var_360 / 2))))
  loc_1A2DE46:     var_458 = (var_3A0 + Space(CLng((var_418 / 2))))
  loc_1A2DE52:     var_4A0 = (var_458 + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_1A2DE59:     var_558 = (var_4A0 + Space(CLng((var_518 / 2))))
  loc_1A2DE60:     var_610 = (var_558 + Space(CLng((var_5D0 / 2))))
  loc_1A2DE67:     var_668 = (var_610 + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_1A2DE6E:     var_720 = (var_668 + Space(CLng((var_6E0 / 2))))
  loc_1A2DE75:     var_7F8 = (var_720 + Space(CLng((var_7B8 / 2))))
  loc_1A2DE7C:     var_860 = (var_7F8 + Trim(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_1A2DE83:     var_938 = (var_860 + Space(CLng((var_8F8 / 2))))
  loc_1A2DE89:     Print 1, var_938
  loc_1A2DFD0:     var_1A4 = CVar(vbNullString & Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add1")))))), &H23) & "|") 'String
  loc_1A2DFD6:     var_1C4 = (var_1A4 + Left(var_A4, &H2C))
  loc_1A2DFDC:     Print 1, CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))
  loc_1A2E087:     var_2A0 = Chr(&H12)
  loc_1A2E096:     var_174 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add2"))), &H23) & "|") 'String
  loc_1A2E09C:     var_184 = (var_174 + Chr(&HF))
  loc_1A2E0A3:     var_1C4 = (Left(var_A4, &H2C) + Space(2))
  loc_1A2E0AC:     var_1D4 = (CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields)) + "R.Rate")
  loc_1A2E0B3:     var_214 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) + Space(&HE))
  loc_1A2E0BC:     var_230 = (Space(3) + "Arrival")
  loc_1A2E0C3:     var_250 = (var_230 + Space(&HD))
  loc_1A2E0CC:     var_260 = (CVar(CStr(var_B4.Fields.Item("FolioNo").Value)) + "Departure")
  loc_1A2E0D3:     var_280 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(&HA))
  loc_1A2E0DC:     var_290 = (var_280 + " Bill # ")
  loc_1A2E0E3:     var_2B0 = ((var_280 / 2) + var_2A0)
  loc_1A2E0E9:     Print 1, var_2B0
  loc_1A2E167:     var_93C = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CityName"))) & "-", &H23)
  loc_1A2E195:     Proc_6_39_E7C810(var_174, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A2E1B1:     var_1D4 = (6 - Len(Trim(CVar(CStr(var_174)))))
  loc_1A2E1D7:     var_2EC = var_B4.Fields
  loc_1A2E1EE:     Proc_6_39_E7C810(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), CVar(var_2EC.Item("RoomRate")))
  loc_1A2E21E:     Proc_6_39_E7C810(var_2A0, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A2E23A:     var_2E0 = (10 - Len(Trim(CVar(CStr(var_2A0)))))
  loc_1A2E26D:     var_408 = 12
  loc_1A2E281:     var_360 = "dd/mm/yy"
  loc_1A2E2A8:     var_3C8 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), var_360))))
  loc_1A2E33F:     var_4A0 = Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy")
  loc_1A2E356:     var_4E8 = (1 - Len(Trim(var_4A0)))
  loc_1A2E3C4:     var_5B0 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A2E472:     var_6E0 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A2E4C8:     var_788 = (12 - Len(Trim(CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 9, 1, 12, 1, 1, 1)))))
  loc_1A2E55A:     var_898 = (1 - Len(Trim(CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 9, 1)))))
  loc_1A2E588:     var_240 = (CVar(vbNullString & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName"))) & "|") + Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2))))
  loc_1A2E594:     var_280 = (Space(&HD) + CVar(CStr(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))))))
  loc_1A2E59B:     var_330 = (var_280 + Space(CLng((var_2E0 / 2))))
  loc_1A2E5A2:     var_3F8 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_1A2E5A9:     var_458 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))
  loc_1A2E5B0:     var_538 = (var_458 + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))))
  loc_1A2E5B7:     var_600 = ((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))) / 2) + Space(CLng((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2))))
  loc_1A2E5BE:     var_658 = (Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_1A2E5C5:     var_720 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomCategory"))))) + Space(CLng((var_6E0 / 2))))
  loc_1A2E5CC:     var_7D8 = (var_720 + Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))))
  loc_1A2E5D3:     var_830 = ((Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) / 2) + Trim(CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 1, 12))))
  loc_1A2E5DA:     var_8C8 = (CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))) + Space(CLng((CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))) / 2))))
  loc_1A2E5E0:     Print 1, Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), &HA))))
  loc_1A2E6C2:     Print 1, Proc_6_45_EAD428(" ", &H23) & "|"
  loc_1A2E6D8:     Print 1, var_A4
  loc_1A2E79F:     var_174 = (CVar(Proc_6_45_EAD428("Date", &HB)) + Space(1))
  loc_1A2E7A9:     var_1A4 = (var_174 + CVar(Proc_6_45_EAD428("Bill/Vou#", 9)))
  loc_1A2E7B0:     var_1D4 = (Trim(CVar(CStr(var_174))) + Space(1))
  loc_1A2E7B7:     var_1F4 = CVar(Proc_6_45_EAD428("Description", &H18)) 'String
  loc_1A2E7BA:     var_214 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) + var_1F4)
  loc_1A2E7C4:     var_240 = (Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2))) + CVar(Proc_6_52_EAD4F4("Debit", &HA)))
  loc_1A2E7CB:     var_260 = (Space(&HD) + Space(1))
  loc_1A2E7D5:     var_280 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + CVar(Proc_6_52_EAD4F4("Credit", &HA)))
  loc_1A2E7DC:     var_2A0 = (var_280 + Space(1))
  loc_1A2E7E6:     var_2C0 = (var_2A0 + CVar(Proc_6_52_EAD4F4("Balance", &HB)))
  loc_1A2E7EC:     Print 1, Trim(CVar(CStr(var_2A0)))
  loc_1A2E83B:     Print 1, var_A4
  loc_1A2E843:     var_86 = &H17
  loc_1A2E846:   End If
  loc_1A2E85D:   var_10C = "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocId = GuestFolio.DocId) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionodocid in ('" & global_68
  loc_1A2E89A:   var_184 = CVar(var_10C & ") and (amtdr<>0 or amtcr<>0) and PayCharge.Split='") & var_E4.Fields.Item("Split").Value & "' and PayCharge.Bill_No='" 
  loc_1A2E8DF:   unk_514A67.Execute CStr(var_184 & var_E4.Fields.Item("Bill_no").Value & "' order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO"), var_1F4, -1
  loc_1A2E8EA:   Set var_B0 = var_2EC
  loc_1A2E914:   ' Referenced from: 1A3040A
  loc_1A2E923:   If Not(var_B0.EOF) Then
  loc_1A2E960:     If (var_DC <> CDate(var_B0.Fields.Item("VDate").Value)) Then
  loc_1A2E977:       If (var_B0.AbsolutePosition > 1) Then
  loc_1A2E981:         var_CC = (var_BC - var_C4)
  loc_1A2E98B:         var_D4 = (var_D4 + var_CC)
  loc_1A2EA16:         var_1F4 = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, var_2EC)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1)))
  loc_1A2EA8D:         var_290 = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, 1)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_1A2EAE3:         var_174 = (Space(&H16) + CVar(Proc_6_45_EAD428("Day Total", &H18, var_D4, var_CC)))
  loc_1A2EAEA:         var_214 = (CVar("Day Total" & ") and (amtdr<>0 or amtcr<>0) and PayCharge.Split='") & var_E4.Fields.Item("Split").Value + var_1F4)
  loc_1A2EAF1:         var_240 = (Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2))) + Space(1))
  loc_1A2EAF8:         var_2A0 = (Space(&HD) + var_290)
  loc_1A2EAFF:         var_2C0 = (var_2A0 + Space(1))
  loc_1A2EB09:         var_320 = (Trim(CVar(CStr(var_2A0))) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_1A2EB0F:         Print 1, Space(CLng((Format(var_D4, "0.00") / 2)))
  loc_1A2EB6D:         var_86 = (var_86 + 1)
  loc_1A2EB75:         Print 1, vbNullString
  loc_1A2EB81:         var_86 = (var_86 + 1)
  loc_1A2EB87:         var_BC = CDbl(0)
  loc_1A2EB8D:         var_C4 = CDbl(0)
  loc_1A2EB90:       End If
  loc_1A2EB90:     End If
  loc_1A2EBD5:     var_154 = Space(1)
  loc_1A2EC33:     Proc_6_39_E7C810(Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2))), CVar(var_B0.Fields.Item("VNo")))
  loc_1A2EC5F:     var_260 = (CVar(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("vType")), var_86, 1)))) & "/") + Trim(CVar(CStr(Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2)))))))
  loc_1A2ECE8:     Proc_6_39_E7C810(Space(CLng((Format(var_D4, "0.00") / 2))), CVar(var_B0.Fields.Item("AmtDr")))
  loc_1A2ED29:     Proc_6_39_E7C810(var_360, CVar(var_B0.Fields.Item("AmtDr")))
  loc_1A2ED81:     var_3E8 = IIf((Space(CLng((Format(var_D4, "0.00") / 2))) = 0), CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_360, "0.00")), &HA, 1)))
  loc_1A2EDB9:     Proc_6_39_E7C810(var_458, CVar(var_B0.Fields.Item("AmtCr")), 1)
  loc_1A2EDFA:     Proc_6_39_E7C810(var_4A0, CVar(var_B0.Fields.Item("AmtCr")))
  loc_1A2EE51:     var_538 = IIf((var_458 = 0), CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_4A0, "0.00")), &HA, 1)))
  loc_1A2EE5F:     var_184 = (CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_154)
  loc_1A2EE69:     var_280 = ("0.00" + CVar(Proc_6_45_EAD428(CStr(Format(var_C4, "0.00")), 9)))
  loc_1A2EE70:     var_2A0 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(1))
  loc_1A2EE7A:     var_2E0 = (var_2A0 + CVar(Proc_6_45_EAD428(CStr(Left(CVar(var_B0.Fields.Item("Comments")), &H18)), &H18)))
  loc_1A2EE81:     var_3F8 = (Format(var_D4, "0.00") + var_3E8)
  loc_1A2EE88:     var_438 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Space(1))
  loc_1A2EE8F:     var_548 = ("dd/mm/yy" + var_538)
  loc_1A2EE95:     Print 1, CVar(var_B4.Fields.Item("DepDate"))
  loc_1A2EF36:     var_86 = (var_86 + 1)
  loc_1A2EF66:     Proc_6_39_E7C810(var_154, CVar(var_B0.Fields.Item("AmtDr")), CVar(var_BC), var_86)
  loc_1A2EF6E:     var_174 = (1 + var_154)
  loc_1A2EF73:     var_BC = CSng(CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_1A2EFAF:     Proc_6_39_E7C810(var_154, CVar(var_B0.Fields.Item("AmtCr")), CVar(var_C4))
  loc_1A2EFB7:     var_174 = (var_BC + var_154)
  loc_1A2EFBC:     var_C4 = CSng(CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_1A2F021:     If (var_B0.AbsolutePosition = var_B0.RecordCount) Then
  loc_1A2F02B:       var_CC = (var_BC - var_C4)
  loc_1A2F035:       var_D4 = (var_D4 + var_CC)
  loc_1A2F03D:       Print 1, vbNullString
  loc_1A2F049:       var_86 = (var_86 + 1)
  loc_1A2F0D4:       var_1F4 = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, CDate(var_B0.Fields.Item("VDate").Value))), CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1, 1)))
  loc_1A2F14B:       var_290 = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, var_C4)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_1A2F1A1:       var_174 = (Space(&H16) + CVar(Proc_6_45_EAD428("Day Total", &H18, var_86, var_D4, var_CC)))
  loc_1A2F1A8:       var_214 = (CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_1F4)
  loc_1A2F1AF:       var_240 = (Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2))) + Space(1))
  loc_1A2F1B6:       var_2A0 = (Trim(CVar(CStr(Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2)))))) + var_290)
  loc_1A2F1BD:       var_2C0 = (var_2A0 + Space(1))
  loc_1A2F1C7:       var_320 = (Left(CVar(var_B0.Fields.Item("Comments")), &H18) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_1A2F1CD:       Print 1, Space(CLng((Format(var_D4, "0.00") / 2)))
  loc_1A2F22B:       var_86 = (var_86 + 1)
  loc_1A2F231:       var_BC = CDbl(0)
  loc_1A2F237:       var_C4 = CDbl(0)
  loc_1A2F23A:     End If
  loc_1A2F240:     If (var_86 >= &H30) Then
  loc_1A2F248:       Print 1, " "
  loc_1A2F26C:       var_184 = CVar((Val(CStr(var_88)) + CDbl(1))) 'Double
  loc_1A2F280:       var_154 = (" " + Space(&H37))
  loc_1A2F289:       var_174 = (CVar(Proc_6_45_EAD428("Day Total", &H18, var_86, var_D4, var_CC)) + "Continued Page No ")
  loc_1A2F296:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) & Str("0.00")
  loc_1A2F2B4:       var_86 = (var_86 + 1)
  loc_1A2F2C9:       Print 1, Chr(&HC)
  loc_1A2F2D4:       var_86 = 0
  loc_1A2F2D7:     End If
  loc_1A2F2DD:     If (var_86 = 0) Then
  loc_1A2F2E6:       var_88 = (var_88 + 1)
  loc_1A2F2EF:       var_88 = (var_88 + 1)
  loc_1A2F313:       Print 1, Proc_6_98_11AC4E4(MemVar_1F92130, "A", &H4E, var_88, var_88, var_86, var_86)
  loc_1A2F368:       var_154 = (Trim(MemVar_1F92134) + ", ")
  loc_1A2F36F:       var_184 = (CVar(Proc_6_45_EAD428("Day Total", &H18, var_86, var_D4, var_CC)) + Trim(MemVar_1F92138))
  loc_1A2F378:       var_1A4 = ("0.00" + " ")
  loc_1A2F37F:       var_1D4 = (Str("0.00") + Trim(MemVar_1F9213C))
  loc_1A2F388:       var_1F4 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1, 1)) + " ")
  loc_1A2F392:       var_214 = (var_1F4 + CVar(MemVar_1F9215C))
  loc_1A2F3A0:       var_218 = Proc_6_98_11AC4E4(CStr(Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2)))), "B", &H4E, var_C4, var_BC)
  loc_1A2F3AB:       Print 1, var_218
  loc_1A2F408:       Print 1, Proc_6_98_11AC4E4("Phone: " & MemVar_1F92140 & " Fax :" & MemVar_1F92144, "D", &H7D, var_86)
  loc_1A2F43B:       var_218 = Proc_6_98_11AC4E4("Website: " & "www.kumaonindia.com * www.himalaya-holidays.com * www.indiatravelplan.com", "D", &H7D)
  loc_1A2F446:       Print 1, "D"
  loc_1A2F45C:       Print 1, var_A4
  loc_1A2F464:       var_86 = &HC
  loc_1A2F4E1:       var_174 = (Chr(&HF) + CVar(Proc_6_45_EAD428("Guest Name :", &H3C, var_86)))
  loc_1A2F4EA:       var_184 = (Trim(MemVar_1F92138) + "|")
  loc_1A2F4F1:       var_1C4 = ("0.00" + Space(2))
  loc_1A2F4FA:       var_1D4 = (Trim(MemVar_1F9213C) + "Room #")
  loc_1A2F501:       var_214 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1, 1)) + Space(&HA))
  loc_1A2F50A:       var_230 = (Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2))) + "Reg #")
  loc_1A2F511:       var_250 = (Space(1) + Space(&HA))
  loc_1A2F51A:       var_260 = ("0.00" + "Pax")
  loc_1A2F521:       var_280 = (Format(var_C4, "0.00") + Space(&HB))
  loc_1A2F52A:       var_290 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) + "Type")
  loc_1A2F531:       var_2B0 = (var_290 + Space(&HA))
  loc_1A2F53A:       var_2C0 = (Space(1) + "Nation")
  loc_1A2F541:       var_2E0 = (Left(CVar(var_B0.Fields.Item("Comments")), &H18) + Chr(&H12))
  loc_1A2F547:       Print 1, Format(var_D4, "0.00")
  loc_1A2F650:       var_280 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A2F6D1:       var_360 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A2F72B:       var_418 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A2F7AC:       var_518 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A2F806:       var_5D0 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A2F893:       var_6E0 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A2F904:       var_7B8 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_1A2F916:       var_7E8 = Space(CLng((Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) / 2)))
  loc_1A2F9BE:       var_8F8 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_1A2F9EC:       var_184 = (CVar("Mr " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Name")), 1), &H1F) & "|") + Space(1))
  loc_1A2F9F3:       var_1F4 = ("0.00" + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_86))))
  loc_1A2F9FA:       var_230 = (Space(&HA) + Space(3))
  loc_1A2FA01:       var_2B0 = (Space(1) + Space(CLng((CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) / 2))))
  loc_1A2FA0D:       var_2E0 = (Space(1) + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_1A2FA14:       var_3A0 = (Format(var_D4, "0.00") + Space(CLng((var_360 / 2))))
  loc_1A2FA1B:       var_458 = ((Space(CLng((Format(var_D4, "0.00") / 2))) = 0) + Space(CLng((Space(1) / 2))))
  loc_1A2FA27:       var_4A0 = (var_458 + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_1A2FA2E:       var_558 = (var_4A0 + Space(CLng((CVar(Proc_6_52_EAD4F4(CStr(Format(var_4A0, "0.00")), &HA, 1)) / 2))))
  loc_1A2FA35:       var_610 = ("dd/mm/yy" + Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))))
  loc_1A2FA3C:       var_668 = (CVar(var_B4.Fields.Item("DepDate")) + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_1A2FA43:       var_720 = (CVar(var_B4.Fields.Item("DepDate")) + Space(CLng((var_6E0 / 2))))
  loc_1A2FA4A:       var_7F8 = (var_720 + var_7E8)
  loc_1A2FA51:       var_860 = (CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 1, 12)) + Trim(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_1A2FA58:       var_938 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 9, 1))) + Space(CLng((var_8F8 / 2))))
  loc_1A2FA5E:       Print 1, var_938
  loc_1A2FBA5:       var_1A4 = CVar(vbNullString & Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add1")))))), &H23) & "|") 'String
  loc_1A2FBAB:       var_1C4 = (var_1A4 + Left(var_A4, &H2C))
  loc_1A2FBB1:       Print 1, CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_86))
  loc_1A2FC5C:       var_2A0 = Chr(&H12)
  loc_1A2FC6B:       var_174 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add2"))), &H23) & "|") 'String
  loc_1A2FC71:       var_184 = (var_174 + Chr(&HF))
  loc_1A2FC78:       var_1C4 = (Left(var_A4, &H2C) + Space(2))
  loc_1A2FC81:       var_1D4 = (CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_86)) + "R.Rate")
  loc_1A2FC88:       var_214 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_86))) + Space(&HE))
  loc_1A2FC91:       var_230 = (Space(3) + "Arrival")
  loc_1A2FC98:       var_250 = (Space(1) + Space(&HD))
  loc_1A2FCA1:       var_260 = (CVar(CStr(var_B4.Fields.Item("FolioNo").Value)) + "Departure")
  loc_1A2FCA8:       var_280 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(&HA))
  loc_1A2FCB1:       var_290 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) + " Bill # ")
  loc_1A2FCB8:       var_2B0 = ((CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) / 2) + var_2A0)
  loc_1A2FCBE:       Print 1, Space(1)
  loc_1A2FD3C:       var_220 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CityName"))) & "-", &H23)
  loc_1A2FD6A:       Proc_6_39_E7C810(var_174, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A2FD86:       var_1D4 = (6 - Len(Trim(CVar(CStr(var_174)))))
  loc_1A2FDC3:       Proc_6_39_E7C810(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A2FDF3:       Proc_6_39_E7C810(var_2A0, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A2FE0F:       var_2E0 = (10 - Len(Trim(CVar(CStr(var_2A0)))))
  loc_1A2FE42:       var_408 = 12
  loc_1A2FE7D:       var_3C8 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_1A2FF2B:       var_4E8 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_1A2FF99:       var_5B0 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A30047:       var_6E0 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A30095:       var_778 = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_1A3011A:       var_860 = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_1A30148:       var_240 = (CVar(vbNullString & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName"))) & "|") + Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_86))) / 2))))
  loc_1A30154:       var_280 = (Space(&HD) + CVar(CStr(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))))))
  loc_1A3015B:       var_330 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(CLng((Format(var_D4, "0.00") / 2))))
  loc_1A30162:       var_3F8 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_1A30169:       var_458 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))
  loc_1A30170:       var_538 = (var_458 + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))))
  loc_1A30177:       var_600 = ((CVar(Proc_6_52_EAD4F4(CStr(Format(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"), "0.00")), &HA, 1)) / 2) + Space(CLng((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2))))
  loc_1A3017E:       var_658 = (Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_1A30185:       var_720 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomCategory"))))) + Space(CLng((var_6E0 / 2))))
  loc_1A3018C:       var_7B8 = (var_720 + Space(CLng((CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9))) / 2))))
  loc_1A30193:       var_820 = (Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) + Trim(CVar(CStr(var_E4.Fields.Item("Bill_no").Value))))
  loc_1A3019A:       var_8A8 = (CVar(var_B4.Fields.Item("CountryName")) + Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 9, 1))) / 2))))
  loc_1A301A0:       Print 1, Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), &HA)
  loc_1A3027E:       Print 1, Proc_6_45_EAD428(" ", &H23, 1, 12, 1, 1, 1) & "|"
  loc_1A30294:       Print 1, var_A4
  loc_1A3035B:       var_174 = (CVar(Proc_6_45_EAD428("Date", &HB, 12, 1)) + Space(1))
  loc_1A30365:       var_1A4 = (var_174 + CVar(Proc_6_45_EAD428("Bill/Vou#", 9, 12)))
  loc_1A3036C:       var_1D4 = (Trim(CVar(CStr(var_174))) + Space(1))
  loc_1A30376:       var_214 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_86))) + CVar(Proc_6_45_EAD428("Description", &H18, 1)))
  loc_1A30380:       var_240 = (Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_86))) / 2))) + CVar(Proc_6_52_EAD4F4("Debit", &HA)))
  loc_1A30387:       var_260 = (Space(&HD) + Space(1))
  loc_1A30391:       var_280 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + CVar(Proc_6_52_EAD4F4("Credit", &HA)))
  loc_1A30398:       var_2A0 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(1))
  loc_1A303A2:       var_2C0 = (var_2A0 + CVar(Proc_6_52_EAD4F4("Balance", &HB)))
  loc_1A303A8:       Print 1, Trim(CVar(CStr(var_2A0)))
  loc_1A303F7:       Print 1, var_A4
  loc_1A303FF:       var_86 = &H17
  loc_1A30402:     End If
  loc_1A30405:     var_B0.MoveNext
  loc_1A3040A:     GoTo loc_1A2E914
  loc_1A3040D:     ' Referenced from: 1A3042A
  loc_1A3040D:   End If
  loc_1A30413:   If (var_86 <= &H32) Then
  loc_1A3041B:     Print 1, vbNullString
  loc_1A30427:     var_86 = (var_86 + 1)
  loc_1A3042A:     GoTo loc_1A3040D
  loc_1A3042D:   End If
  loc_1A30432:   Print 1, var_A4
  loc_1A3043E:   var_86 = (var_86 + 1)
  loc_1A30481:   var_174 = IIf((var_D4 < CDbl(0)), CVar(Proc_6_45_EAD428("Refund: ", 8, var_86, var_86)), CVar(Proc_6_45_EAD428("Charge: ", 8, var_86)))
  loc_1A30515:   var_1A4 = (var_174 + CVar(Proc_6_45_EAD428(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise"), &H35)))
  loc_1A3051F:   var_1D4 = (Trim(CVar(CStr(var_174))) + CVar(Proc_6_45_EAD428("TOTAL:", 6)))
  loc_1A30529:   var_240 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_86))) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A3052F:   Print 1, Space(&HD)
  loc_1A30571:   var_86 = (var_86 + 1)
  loc_1A305ED:   var_1C4 = CVar(Proc_6_45_EAD428(CStr(Mid(CVar(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise")), &H36, var_174)), &H35, 1)) 'String
  loc_1A3061A:   var_1F4 = (Space(8) + IIf((Len(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise", var_86)) <= &H35), " ", var_1C4))
  loc_1A30620:   Print 1, "0.00"
  loc_1A30654:   var_86 = (var_86 + 1)
  loc_1A306BD:   var_174 = (Space(&H3D) + CVar(Proc_6_45_EAD428("NET  :", 6, var_86)))
  loc_1A306C7:   var_1D4 = (var_174 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A306CD:   Print 1, IIf((Len(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise", var_86)) <= &H35), " ", CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A306F5:   var_86 = (var_86 + 1)
  loc_1A3070D:   var_154 = (Space(&H3D) + "===================")
  loc_1A30713:   Print 1, CVar(Proc_6_45_EAD428("NET  :", 6, var_86))
  loc_1A30726:   var_86 = (var_86 + 1)
  loc_1A3072B:   var_86 = 0
  loc_1A307A9:   var_940 = Proc_6_45_EAD428("Payment ", 8, CDbl(0), var_86, var_86) & Proc_6_45_EAD428(vbNullString, &HC, var_86) & "Company: " & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CompanyName")), 1)
  loc_1A307AE:   Print 1, var_940
  loc_1A30842:   var_93C = Proc_6_45_EAD428("USER", 8) & Proc_6_45_EAD428(MemVar_1F920C8, &HC) & "Contact: " & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ContactPerson")), 1)
  loc_1A30847:   Print 1, var_93C
  loc_1A3086F:   Print 1, var_A4
  loc_1A308AE:   var_174 = (Chr(&HF) + CVar(Proc_6_52_EAD4F4("Regardless of charge instructions I agree to be held", &H7B)))
  loc_1A308B5:   var_1A4 = (var_174 + Chr(&H12))
  loc_1A308BB:   Print 1, Format(CDbl(0), "0.00")
  loc_1A3090F:   var_174 = (Chr(&HF) + CVar(Proc_6_52_EAD4F4("personally liable for payment of the total amount of this bill.", 134)))
  loc_1A30916:   var_1A4 = (var_174 + Chr(&H12))
  loc_1A3091C:   Print 1, Format(CDbl(0), "0.00")
  loc_1A30938:   Print 1
  loc_1A30940:   Print 1
  loc_1A30980:   var_174 = (Chr(&HF) + Space(&HA))
  loc_1A30989:   var_184 = (var_174 + "Cashier")
  loc_1A30990:   var_1C4 = (Chr(&H12) + Space(&H60))
  loc_1A30999:   var_1D4 = (CVar(Proc_6_52_EAD4F4(CStr(Format(CDbl(0), "0.00")), &HC, 1)) + "Guest Signature")
  loc_1A309A0:   var_214 = (IIf((Len(Proc_6_43_10041F4(Abs(CDbl(0)), vbNullString, " & Paise", var_86)) <= &H35), " ", CVar(Proc_6_52_EAD4F4(CStr(Format(CDbl(0), "0.00")), &HC, 1))) + Chr(&H12))
  loc_1A309A6:   Print 1, Format(CDbl(0), "0.00")
  loc_1A309E8:   Print 1, Proc_6_98_11AC4E4("**THANKS FOR YOUR VISIT**", "A")
  loc_1A30A0B:   Print 1, Chr(&HC)
  loc_1A30A17:   var_E4.MoveNext
  loc_1A30A1C:   GoTo loc_1A2D649
  loc_1A30A1F: End If
  loc_1A30A21: Close 1
  loc_1A30A2A: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1A30A66: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value
  loc_1A30A7C: Close 1
  loc_1A30A86: If (MemVar_1F923B8 = "Y") Then
  loc_1A30AA2:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1A30AAC: Else
  loc_1A30AC5:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1A30ACC: End If
  loc_1A30ACC: Exit Sub
  loc_1A30ACD: ' Referenced from: 1A2D5F0
  loc_1A30AD3: If (var_E8 = &HFF) Then
  loc_1A30ADC:   unk_514A67.RollbackTrans
  loc_1A30AE1: End If
  loc_1A30AE1: Proc_6_60_E62BC4(&H4E)
  loc_1A30AE6: Exit Sub
End Sub

Public Sub Proc_174_53_FB31E8
  'Data Table: 514A60
  Dim unk_514A67 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  Dim var_B0 As Variant
  Dim var_F4 As Variant
  loc_FB3089: unk_514A67.BeginTrans var_90
  loc_FB30A4: unk_514A67.Execute "SELECT * FROM ROOMOCC WHERE TYPE='O' ORDER BY CHKOUTDATE,CHKOUTTIME", var_B0, -1
  loc_FB30AF: Set var_88 = var_B4
  loc_FB30CE: unk_514A67.Execute "SELECT * FROM PAYCHARGE WHERE FOLIONO<>0 AND VTYPE Not In ('ARRES','ADRES')", var_B0, -1
  loc_FB30D9: Set var_8C = var_B4
  loc_FB30E2: ' Referenced from: FB31D6
  loc_FB30F3: If (var_88.EOF = 0) Then
  loc_FB3133:   var_B4 = var_88.Fields
  loc_FB314A:   Proc_6_7_F25D88(var_D4, CVar(var_B4.Item("ChkOutDate")), CVar("UPDATE PAYCHARGE SET BILL_NO='" & CStr(var_88.AbsolutePosition) & "',SETTLEDATE="), var_190)
  loc_FB3152:   var_F4 = -1 & var_D4 
  loc_FB31A0:   unk_514A67.Execute CStr(var_F4 & " WHERE FOLIONO=" & var_88.Fields.Item("FolioNo").Value & " AND VTYPE Not In ('ARRES','ADRES')"), var_194, var_B4
  loc_FB31D1:   var_88.MoveNext
  loc_FB31D6:   GoTo loc_FB30E2
  loc_FB31D9: End If
  loc_FB31DF: unk_514A67.CommitTrans
  loc_FB31E4: Exit Sub
End Sub

Public Sub Proc_174_54_E7732C(arg_C) 'E7732C
  'Data Table: 514A60
  Dim var_98 As TextBox
  loc_E772DA: Set var_8C = Me.TXT
  loc_E772E0: Call 0.Method_Proc_174_54_E7732CC (var_8E, var_86)
  loc_E772F0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E77306:   Set var_8C = Me.TXT
  loc_E7730C:   Call 0.Method_Proc_174_54_E7732C0 (CInt(var_86), var_98)
  loc_E77314:   var_98.Enabled = arg_C
  loc_E77323: Next var_92 'Byte
  loc_E77329: Exit Sub
End Sub

Public Sub Proc_174_55_EAB260
  'Data Table: 514A60
  Dim var_98 As TextBox
  loc_EAB1DE: Set var_8C = Me.TXT
  loc_EAB1E4: Call 0.Method_Proc_174_55_EAB260C (var_8E, var_86)
  loc_EAB1F4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAB20A:   Set var_8C = Me.TXT
  loc_EAB210:   Call 0.Method_Proc_174_55_EAB2600 (CInt(var_86), var_98)
  loc_EAB218:   var_98.Text = vbNullString
  loc_EAB234:   Set var_8C = Me.TXT
  loc_EAB23A:   Call 0.Method_Proc_174_55_EAB2600 (CInt(var_86), var_98)
  loc_EAB242:   var_98.Tag = vbNullString
  loc_EAB251: Next var_92 'Byte
  loc_EAB257: Call Proc_174_59_13BFBE4()
  loc_EAB25C: Exit Sub
End Sub

Public Sub Proc_174_56_EBC19C
  'Data Table: 514A60
  loc_EBC114: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EBC126:   Me.DGRoomNo.Visible = False
  loc_EBC12E: End If
  loc_EBC14A: If (CBool(().Visible) = &HFF) Then
  loc_EBC15C:   (False).Visible = 
  loc_EBC164: End If
  loc_EBC180: If (CBool(().Visible) = &HFF) Then
  loc_EBC192:   (False).Visible = 
  loc_EBC19A: End If
  loc_EBC19A: Exit Sub
End Sub

Public Sub Proc_174_57_145C064(arg_C, arg_10) '145C064
  'Data Table: 514A60
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_A4 As Variant
  Dim var_EC As String
  Dim unk_514A67 As Connection15
  Dim var_A0 As Variant
  Dim var_C4 As Variant
  Dim var_118 As Variant
  Dim var_140 As Variant
  Dim var_E4 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_120 As MSHFlexGrid
  Dim var_160 As Variant
  Dim var_1D0 As Variant
  Dim var_210 As Variant
  Dim var_1A0 As Variant
  loc_145B4E4: On Error Goto loc_145BFFD
  loc_145B4F2: Set var_A0 = Me.TXT
  loc_145B4F8: Call 0.Method_Proc_174_57_145C0640 (CInt(&HA))
  loc_145B521: If (Trim(CVar(var_A4)) = vbNullString) Then
  loc_145B524:   Exit Sub
  loc_145B525: End If
  loc_145B543: Set var_A0 = Me.TXT
  loc_145B549: Call 0.Method_Proc_174_57_145C0640 (CInt(&HA), var_A4, var_E8, "Select * from paycharge where (ContraDocId is NULL or contradocid='') and (folionoDocid='")
  loc_145B551: var_B4 = var_A4.Tag
  loc_145B55A: var_EC = -1 & var_E8
  loc_145B58A: unk_514A67.Execute var_EC & "' or folionoDocid='" & Me.txtleaderfolio.Text & "') order by vDate,VNO,SNO", var_104, var_A4
  loc_145B595: Set var_8C = var_104
  loc_145B5BE: var_108 = Me.Recordset15.RecordCount
  loc_145B5CC: If (var_108 = 0) Then
  loc_145B5E2:   Me.FGrid.Rows = 2
  loc_145B5EA:   Exit Sub
  loc_145B5EB: End If
  loc_145B604: var_D4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_145B60D: Set var_A4 = Me.FGrid
  loc_145B613: var_A4.Row = 2
  loc_145B622: ' Referenced from: 145BE4A
  loc_145B634: If Not(Me.var_A4.EOF) Then
  loc_145B63B:   Set var_120 = Me.FGrid
  loc_145B648:   var_C4 = Me.FGrid.Row
  loc_145B651:   var_118 = CVar(CLng(var_C4)) 'Long
  loc_145B689:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item("MarkEntry")), CVar(CLng(0)))) 'String
  loc_145B690:   LateIdCallSt
  loc_145B6B2:   var_C4 = Me.FGrid.Row
  loc_145B6F3:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item("VDate")), CVar(CLng(1)), CVar(CLng(var_C4)))) 'String
  loc_145B6FA:   LateIdCallSt
  loc_145B71C:   var_170 = Me.FGrid.Row
  loc_145B76C:   var_180 = CVar(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(Me.var_170.Fields.Item("Comments")), CVar(CLng(2)), CVar(CLng(var_170)), var_120))))) 'String
  loc_145B773:   LateIdCallSt
  loc_145B7B8:   var_170 = Me.FGrid.Row
  loc_145B7C1:   var_130 = CVar(CLng(var_170)) 'Long
  loc_145B7C9:   var_150 = CVar(CLng(3)) 'Long
  loc_145B7F6:   var_180 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtDr")), "0.00"))) 'String
  loc_145B7FD:   LateIdCallSt
  loc_145B842:   var_170 = Me.FGrid.Row
  loc_145B867:   var_C4 = "0.00"
  loc_145B887:   LateIdCallSt
  loc_145B8D3:   Proc_6_39_E7C810(var_C4, CVar(Me.var_170.Fields.Item("AmtDr")), CVar(var_94), var_120, CVar(CStr(Format(CVar(Me.var_170.Fields.Item("AmtCr")), var_C4))), 1, 1)
  loc_145B8DB:   var_E4 = (CVar(CLng(4)) + var_C4)
  loc_145B8E0:   var_94 = CSng(Format(CVar(Me.var_170.Fields.Item("AmtCr")), var_C4))
  loc_145B91F:   Proc_6_39_E7C810(var_C4, CVar(Me.Recordset15.Fields.Item("AmtCr")), CVar(var_9C), var_94, CVar(CLng(var_170)))
  loc_145B927:   var_E4 = (var_120 + var_C4)
  loc_145B92C:   var_9C = CSng(Format(CVar(Me.var_170.Fields.Item("AmtCr")), var_C4))
  loc_145B94E:   var_130 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_145B956:   var_150 = CVar(CLng(5)) 'Long
  loc_145B978:   var_B4 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_145B988:   var_180 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_145B98F:   LateIdCallSt
  loc_145B9B3:   If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_145B9C9:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_145B9D1:     var_130 = CVar(CLng(6)) 'Long
  loc_145B9D6:     var_150 = "Dr"
  loc_145B9DF:     LateIdCallSt
  loc_145B9F0:   Else
  loc_145B9FC:     If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_145BA12:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_145BA1A:       var_130 = CVar(CLng(6)) 'Long
  loc_145BA1F:       var_150 = "Cr"
  loc_145BA28:       LateIdCallSt
  loc_145BA39:     Else
  loc_145BA4C:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_145BA54:       var_130 = CVar(CLng(6)) 'Long
  loc_145BA59:       var_150 = vbNullString
  loc_145BA62:       LateIdCallSt
  loc_145BA70:     End If
  loc_145BA70:   End If
  loc_145BA7A:   var_C4 = Me.FGrid.Row
  loc_145BA93:   var_D4 = "DocID"
  loc_145BABB:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item(var_D4)), CVar(CLng(7)), CVar(CLng(var_C4)), var_120, var_150, var_130, var_D4)) 'String
  loc_145BAC2:   LateIdCallSt
  loc_145BAE4:   var_C4 = Me.FGrid.Row
  loc_145BB25:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item("SNo")), CVar(CLng(8)), CVar(CLng(var_C4)), var_120, var_E4, var_120)) 'String
  loc_145BB2C:   LateIdCallSt
  loc_145BB4E:   var_C4 = Me.FGrid.Row
  loc_145BB8F:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item("U_Name")), CVar(CLng(9)), CVar(CLng(var_C4)), var_120, var_E4)) 'String
  loc_145BB96:   LateIdCallSt
  loc_145BBC1:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_145BBC9:   var_130 = CVar(CLng(7)) 'Long
  loc_145BBD1:   var_C4 = var_120.TextMatrix)
  loc_145BC5B:   var_210 = (Trim(Mid(CVar(CStr(var_C4)), 4, 5)) <> "RC") And (Me.var_C4.Fields.Item("PlanCharge").Value <> "Yes") And (SplitBill = &HFF)
  loc_145BC7D:   If CBool(var_210) Then
  loc_145BC93:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_145BC9B:     var_130 = CVar(CLng(&HA)) 'Long
  loc_145BCA0:     var_150 = "2"
  loc_145BCA9:     LateIdCallSt
  loc_145BCBA:   Else
  loc_145BCCD:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_145BCD5:     var_130 = CVar(CLng(&HA)) 'Long
  loc_145BCDA:     var_150 = "1"
  loc_145BCE3:     LateIdCallSt
  loc_145BCF1:   End If
  loc_145BCFB:   var_C4 = Me.FGrid.Row
  loc_145BD14:   var_D4 = "PayCode"
  loc_145BD3C:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item(var_D4)), CVar(CLng(&HB)), CVar(CLng(var_C4)), var_120, var_150, var_130, var_D4)) 'String
  loc_145BD43:   LateIdCallSt
  loc_145BD88:   var_C4 = CVar(Proc_6_38_E68A98(arg_C, CVar(CLng(&HC)), CVar(CLng(Me.FGrid.Row)), var_120, var_E4, var_120)) 'String
  loc_145BD8F:   LateIdCallSt
  loc_145BDCE:   var_C4 = CVar(Proc_6_38_E68A98(arg_10, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), var_120, var_C4)) 'String
  loc_145BDD5:   LateIdCallSt
  loc_145BDE9:   Set var_120 = Nothing 
  loc_145BDED:   var_D4 = vbNullString
  loc_145BDF7:   Set var_A0 = Me.FGrid
  loc_145BE21:   var_D4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_145BE2A:   Set var_A4 = Me.FGrid
  loc_145BE30:   var_A4.Row = var_D4
  loc_145BE45:   Me.var_A4.MoveNext
  loc_145BE4A:   GoTo loc_145B622
  loc_145BE4D: End If
  loc_145BE4D: var_D4 = 1
  loc_145BE60: Me.FGrid.FixedRows = var_D4
  loc_145BE6C: Set var_214 = var_D4(FGrid.DispID_10000)
  loc_145BE6F: var_130 = 0
  loc_145BE7B: var_150 = CVar(CLng(1)) 'Long
  loc_145BEA9: var_E4 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_145BEB0: LateIdCallSt
  loc_145BEC1: var_130 = 0
  loc_145BECD: var_150 = CVar(CLng(2)) 'Long
  loc_145BEFB: var_E4 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_145BF02: LateIdCallSt
  loc_145BF13: var_130 = 0
  loc_145BF1F: var_150 = CVar(CLng(3)) 'Long
  loc_145BF41: var_B4 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_145BF51: var_170 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_145BF58: LateIdCallSt
  loc_145BF6B: var_160 = 0
  loc_145BF77: var_1D0 = CVar(CLng(4)) 'Long
  loc_145BF81: var_C4 = vbNullString
  loc_145BF9E: var_D4 = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_145BFA5: var_E4 = IIf(var_9C, "Cr", var_C4)
  loc_145BFB2: var_170 = "Dr"
  loc_145BFC4: var_140 = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_145BFD4: var_1A0 = CVar(CStr(IIf(CVar(CLng(&HD)), var_170, var_E4))) 'String
  loc_145BFDB: LateIdCallSt
  loc_145BFF8: Set var_214 = Nothing 
  loc_145BFFC: Exit Sub
  loc_145BFFD: ' Referenced from: 145B4E4
  loc_145C016: MsgBox("FILL DETAILS", 0, var_C4, var_E4, var_170)
  loc_145C03C: Set var_A0 = Err()
  loc_145C042: Call 0.Method_arg_1C (var_108, 0, var_C4, var_E4, var_170, var_214, var_1A0, var_1D0)
  loc_145C04E: MsgBox(CVar(var_108), var_160, var_214, var_170, 1)
  loc_145C061: Exit Sub
End Sub

Public Sub Proc_174_58_1268520
  'Data Table: 514A60
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim Me As Recordset15
  Dim var_E8 As Variant
  Dim var_C4 As Variant
  Dim var_128 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_13C As Variant
  Dim arg_1EFF As Double
  loc_1267FA4: On Error Goto loc_12684B8
  loc_1267FAB: var_A2 = CByte(0) 'Byte
  loc_1267FB3: var_A4 = CByte(0) 'Byte
  loc_1267FBC: var_B4 = CVar(CLng(var_A4)) 'Long
  loc_1267FC1: var_D4 = &H1F4
  loc_1267FCE: Set var_E8 = Me.FGrid2
  loc_1267FD4: LateIdCallSt
  loc_1267FE8: var_EC = Me.RecordCount
  loc_1267FF6: If (var_EC > 0) Then
  loc_1267FFF:   Me.MoveFirst
  loc_1268032:   var_A0 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_126803F: End If
  loc_126803F: var_B4 = 0
  loc_1268048: var_D4 = 0
  loc_126805C: Set var_E8 = Me.FGrid2
  loc_1268062: LateIdCallSt
  loc_1268078: var_A2 = CByte((CInt(var_A2) + 1)) 'Byte
  loc_126807C: ' Referenced from: 12684B4
  loc_126808E: If Not(Me.EOF) Then
  loc_12680D1:   If (CVar(var_A0) = Me.Fields.Item("RoomCat").Value) Then
  loc_12680D4:     ' Referenced from: 12683C8
  loc_12680D8:     Set var_128 = Me.FGrid2
  loc_12680F6:     If ((CLng(var_128.Cols) - 1) < CLng(var_A2)) Then
  loc_126810B:       var_B4 = CVar((CLng(var_128.Cols) + 1)) 'Long
  loc_1268113:       var_128.Cols = "RoomCat"
  loc_126811B:     End If
  loc_1268120:     var_C4 = CVar(CLng(var_A4)) 'Long
  loc_126812A:     var_E4 = CVar(CLng(var_A2)) 'Long
  loc_126815D:     var_124 = CVar(CStr(Me.Fields.Item("RoomNo").Value)) 'String
  loc_1268164:     LateIdCallSt
  loc_12681E8:     If (Me.Fields.Item("FolioNo").Value = Me.Fields.Item("mFolioNo").Value) Then
  loc_12681FF:       Me.FGrid2.Row = CVar(CLng(var_A4))
  loc_126821B:       Me.FGrid2.Col = CVar(CLng(var_A2))
  loc_126825E:       Me.txtleaderfolio.Text = CStr(Me.Fields.Item("DocID").Value)
  loc_1268285:       Me.FGrid2.CellBackColor = &HFDE1FF
  loc_12682C9:       Me.FGrid2.Tag = CVar(CStr(Me.Fields.Item("RoomNo").Value))
  loc_12682DE:     End If
  loc_12682E3:     var_B4 = CVar(CLng(var_A2)) 'Long
  loc_12682E8:     var_D4 = &H1F4
  loc_12682F5:     Set var_E8 = Me.FGrid2
  loc_12682FB:     LateIdCallSt
  loc_1268311:     var_A2 = CByte((CInt(var_A2) + 1)) 'Byte
  loc_1268317:     Set var_128 = Nothing 
  loc_126831E:   Else
  loc_1268323:     var_C4 = CVar(CLng(var_A4)) 'Long
  loc_1268328:     var_E4 = 0
  loc_126835F:     var_124 = CVar(CStr(Me.Fields.Item("RoomCat").Value)) 'String
  loc_1268367:     Set var_13C = Me.FGrid2
  loc_126836D:     LateIdCallSt
  loc_12683B3:     var_A0 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_12683C4:     var_A2 = CByte(1) 'Byte
  loc_12683C8:     GoTo loc_12680D4
  loc_12683CB:   End If
  loc_12683D1:   Me.MoveNext
  loc_12683EA:   If (Me.EOF = 0) Then
  loc_12683F0:     var_C4 = CVar(var_A0) 'String
  loc_126842D:     If CBool(var_C4 <> Me.Fields.Item("RoomCat").Value) Then
  loc_1268449:       var_B4 = CVar((CLng(Me.FGrid2.Rows) + 1)) 'Long
  loc_1268458:       Me.FGrid2.Rows = "RoomCat"
  loc_1268482:       var_A4 = CByte((CLng(Me.FGrid2.Rows) - 1)) 'Byte
  loc_1268491:       var_B4 = CVar(CLng(var_A4)) 'Long
  loc_1268496:       var_D4 = &H1F4
  loc_12684A3:       Set var_E8 = Me.FGrid2
  loc_12684A9:       LateIdCallSt
  loc_12684B4:     End If
  loc_12684B4:   End If
  loc_12684B4:   GoTo loc_126807C
  loc_12684B7: End If
  loc_12684B7: Exit Sub
  loc_12684B8: ' Referenced from: 1267FA4
  loc_12684C6: var_B4 = "FILL DETAILS"
  loc_12684D1: MsgBox(var_B4, 0, var_124, var_150, var_164)
  loc_12684F7: Set var_E8 = Err()
  loc_12684FD: Call 0.Method_arg_1C (var_EC, 0, var_124, var_150, var_164, var_E8, var_D4, var_B4)
  loc_1268509: MsgBox(CVar(var_EC), var_13C, var_124, var_E4, var_C4)
  loc_126851C: Exit Sub
  loc_126851D: arg_1EFF = var_E8
End Sub

Public Sub Proc_174_59_13BFBE4
  'Data Table: 514A60
  Dim var_A0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_90 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  Dim var_10C As MSHFlexGrid
  loc_13BF254: Set var_90 = Me.FGrid
  loc_13BF26A: Me.FGrid.Rows = 1
  loc_13BF286: global_60 = CStr(CLng(var_90.BackColor))
  loc_13BF29C: var_90.Cols = &HE
  loc_13BF2A1: var_A0 = 0
  loc_13BF2AD: var_D8 = CVar(CLng(0)) 'Long
  loc_13BF2B2: var_F8 = "SNo"
  loc_13BF2BB: LateIdCallSt
  loc_13BF2C6: var_A0 = CVar(CLng(0)) 'Long
  loc_13BF2CB: var_D8 = 0
  loc_13BF2D7: LateIdCallSt
  loc_13BF2DF: var_A0 = 0
  loc_13BF2EB: var_D8 = CVar(CLng(1)) 'Long
  loc_13BF2F0: var_F8 = "Date"
  loc_13BF2F9: LateIdCallSt
  loc_13BF304: var_A0 = CVar(CLng(1)) 'Long
  loc_13BF30F: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF316: LateIdCallSt
  loc_13BF321: var_A0 = CVar(CLng(1)) 'Long
  loc_13BF32C: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF333: LateIdCallSt
  loc_13BF33E: var_A0 = CVar(CLng(1)) 'Long
  loc_13BF343: var_D8 = &H4E2
  loc_13BF34F: LateIdCallSt
  loc_13BF357: var_A0 = 0
  loc_13BF363: var_D8 = CVar(CLng(2)) 'Long
  loc_13BF368: var_F8 = "Particulars"
  loc_13BF371: LateIdCallSt
  loc_13BF37C: var_A0 = CVar(CLng(2)) 'Long
  loc_13BF387: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF38E: LateIdCallSt
  loc_13BF399: var_A0 = CVar(CLng(2)) 'Long
  loc_13BF3A4: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF3AB: LateIdCallSt
  loc_13BF3B6: var_A0 = CVar(CLng(2)) 'Long
  loc_13BF3BB: var_D8 = &HBB8
  loc_13BF3C7: LateIdCallSt
  loc_13BF3CF: var_A0 = 0
  loc_13BF3DB: var_D8 = CVar(CLng(3)) 'Long
  loc_13BF3E0: var_F8 = "Debit"
  loc_13BF3E9: LateIdCallSt
  loc_13BF3F4: var_A0 = CVar(CLng(3)) 'Long
  loc_13BF3FF: var_D8 = CVar(CInt(7)) 'Integer
  loc_13BF406: LateIdCallSt
  loc_13BF411: var_A0 = CVar(CLng(3)) 'Long
  loc_13BF41C: var_D8 = CVar(CInt(7)) 'Integer
  loc_13BF423: LateIdCallSt
  loc_13BF42E: var_A0 = CVar(CLng(3)) 'Long
  loc_13BF433: var_D8 = &H3E8
  loc_13BF43F: LateIdCallSt
  loc_13BF447: var_A0 = 0
  loc_13BF453: var_D8 = CVar(CLng(4)) 'Long
  loc_13BF458: var_F8 = "Credit"
  loc_13BF461: LateIdCallSt
  loc_13BF46C: var_A0 = CVar(CLng(4)) 'Long
  loc_13BF477: var_D8 = CVar(CInt(7)) 'Integer
  loc_13BF47E: LateIdCallSt
  loc_13BF489: var_A0 = CVar(CLng(4)) 'Long
  loc_13BF494: var_D8 = CVar(CInt(7)) 'Integer
  loc_13BF49B: LateIdCallSt
  loc_13BF4A6: var_A0 = CVar(CLng(4)) 'Long
  loc_13BF4AB: var_D8 = &H3E8
  loc_13BF4B7: LateIdCallSt
  loc_13BF4BF: var_A0 = 0
  loc_13BF4CB: var_D8 = CVar(CLng(5)) 'Long
  loc_13BF4D0: var_F8 = "Balance"
  loc_13BF4D9: LateIdCallSt
  loc_13BF4E4: var_A0 = CVar(CLng(5)) 'Long
  loc_13BF4EF: var_D8 = CVar(CInt(7)) 'Integer
  loc_13BF4F6: LateIdCallSt
  loc_13BF501: var_A0 = CVar(CLng(5)) 'Long
  loc_13BF50C: var_D8 = CVar(CInt(7)) 'Integer
  loc_13BF513: LateIdCallSt
  loc_13BF51E: var_A0 = CVar(CLng(5)) 'Long
  loc_13BF523: var_D8 = &H3E8
  loc_13BF52F: LateIdCallSt
  loc_13BF537: var_A0 = 0
  loc_13BF543: var_D8 = CVar(CLng(6)) 'Long
  loc_13BF548: var_F8 = vbNullString
  loc_13BF551: LateIdCallSt
  loc_13BF55C: var_A0 = CVar(CLng(6)) 'Long
  loc_13BF567: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF56E: LateIdCallSt
  loc_13BF579: var_A0 = CVar(CLng(6)) 'Long
  loc_13BF584: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF58B: LateIdCallSt
  loc_13BF596: var_A0 = CVar(CLng(6)) 'Long
  loc_13BF59B: var_D8 = &H12C
  loc_13BF5A7: LateIdCallSt
  loc_13BF5AF: var_A0 = 0
  loc_13BF5BB: var_D8 = CVar(CLng(7)) 'Long
  loc_13BF5C0: var_F8 = vbNullString
  loc_13BF5C9: LateIdCallSt
  loc_13BF5D4: var_A0 = CVar(CLng(7)) 'Long
  loc_13BF5DF: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF5E6: LateIdCallSt
  loc_13BF5F1: var_A0 = CVar(CLng(7)) 'Long
  loc_13BF5FC: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF603: LateIdCallSt
  loc_13BF60E: var_A0 = CVar(CLng(7)) 'Long
  loc_13BF613: var_D8 = 0
  loc_13BF61F: LateIdCallSt
  loc_13BF627: var_A0 = 0
  loc_13BF633: var_D8 = CVar(CLng(8)) 'Long
  loc_13BF638: var_F8 = vbNullString
  loc_13BF641: LateIdCallSt
  loc_13BF64C: var_A0 = CVar(CLng(8)) 'Long
  loc_13BF657: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF65E: LateIdCallSt
  loc_13BF669: var_A0 = CVar(CLng(8)) 'Long
  loc_13BF674: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF67B: LateIdCallSt
  loc_13BF686: var_A0 = CVar(CLng(8)) 'Long
  loc_13BF68B: var_D8 = 0
  loc_13BF697: LateIdCallSt
  loc_13BF69F: var_A0 = 0
  loc_13BF6AB: var_D8 = CVar(CLng(9)) 'Long
  loc_13BF6B0: var_F8 = "User"
  loc_13BF6B9: LateIdCallSt
  loc_13BF6C4: var_A0 = CVar(CLng(9)) 'Long
  loc_13BF6CF: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF6D6: LateIdCallSt
  loc_13BF6E1: var_A0 = CVar(CLng(9)) 'Long
  loc_13BF6EC: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF6F3: LateIdCallSt
  loc_13BF6FE: var_A0 = CVar(CLng(9)) 'Long
  loc_13BF703: var_D8 = &H1F4
  loc_13BF70F: LateIdCallSt
  loc_13BF717: var_A0 = 0
  loc_13BF723: var_D8 = CVar(CLng(&HA)) 'Long
  loc_13BF728: var_F8 = "Split"
  loc_13BF731: LateIdCallSt
  loc_13BF73C: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13BF747: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF74E: LateIdCallSt
  loc_13BF759: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13BF764: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF76B: LateIdCallSt
  loc_13BF776: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13BF77B: var_D8 = &H1F4
  loc_13BF787: LateIdCallSt
  loc_13BF78F: var_A0 = 0
  loc_13BF79B: var_D8 = CVar(CLng(&HB)) 'Long
  loc_13BF7A0: var_F8 = "REVCODE"
  loc_13BF7A9: LateIdCallSt
  loc_13BF7B4: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13BF7BF: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF7C6: LateIdCallSt
  loc_13BF7D1: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13BF7DC: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF7E3: LateIdCallSt
  loc_13BF7EE: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13BF7F3: var_D8 = 0
  loc_13BF7FF: LateIdCallSt
  loc_13BF807: var_A0 = 0
  loc_13BF813: var_D8 = CVar(CLng(&HC)) 'Long
  loc_13BF818: var_F8 = "FolioNo Docid"
  loc_13BF821: LateIdCallSt
  loc_13BF82C: var_A0 = CVar(CLng(&HC)) 'Long
  loc_13BF837: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF83E: LateIdCallSt
  loc_13BF849: var_A0 = CVar(CLng(&HC)) 'Long
  loc_13BF854: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF85B: LateIdCallSt
  loc_13BF866: var_A0 = CVar(CLng(&HC)) 'Long
  loc_13BF86B: var_D8 = 0
  loc_13BF877: LateIdCallSt
  loc_13BF87F: var_A0 = 0
  loc_13BF88B: var_D8 = CVar(CLng(&HD)) 'Long
  loc_13BF890: var_F8 = "Room No"
  loc_13BF899: LateIdCallSt
  loc_13BF8A4: var_A0 = CVar(CLng(&HD)) 'Long
  loc_13BF8AF: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF8B6: LateIdCallSt
  loc_13BF8C1: var_A0 = CVar(CLng(&HD)) 'Long
  loc_13BF8CC: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF8D3: LateIdCallSt
  loc_13BF8DE: var_A0 = CVar(CLng(&HD)) 'Long
  loc_13BF8EF: LateIdCallSt
  loc_13BF8F7: var_A0 = vbNullString
  loc_13BF901: Set var_B4 = Me.FGrid
  loc_13BF912: var_A0 = 1
  loc_13BF925: Me.FGrid.FixedRows = var_A0
  loc_13BF937: Set var_10C = var_A0(FGrid.DispID_10000)
  loc_13BF94D: Nothing(1).Rows = 0
  loc_13BF969: global_60 = CStr(CLng(var_10C.BackColor))
  loc_13BF97F: var_10C.Cols = 5
  loc_13BF984: var_A0 = 0
  loc_13BF990: var_D8 = CVar(CLng(0)) 'Long
  loc_13BF995: var_F8 = "Total :"
  loc_13BF99E: LateIdCallSt
  loc_13BF9A9: var_A0 = CVar(CLng(0)) 'Long
  loc_13BF9B4: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF9BB: LateIdCallSt
  loc_13BF9C6: var_A0 = CVar(CLng(0)) 'Long
  loc_13BF9D1: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BF9D8: LateIdCallSt
  loc_13BF9E3: var_A0 = CVar(CLng(0)) 'Long
  loc_13BF9E8: var_D8 = &H109A
  loc_13BF9F4: LateIdCallSt
  loc_13BF9FC: var_A0 = 0
  loc_13BFA08: var_D8 = CVar(CLng(1)) 'Long
  loc_13BFA0D: var_F8 = vbNullString
  loc_13BFA16: LateIdCallSt
  loc_13BFA21: var_A0 = CVar(CLng(1)) 'Long
  loc_13BFA2C: var_D8 = CVar(CInt(7)) 'Integer
  loc_13BFA33: LateIdCallSt
  loc_13BFA3E: var_A0 = CVar(CLng(1)) 'Long
  loc_13BFA49: var_D8 = CVar(CInt(7)) 'Integer
  loc_13BFA50: LateIdCallSt
  loc_13BFA5B: var_A0 = CVar(CLng(1)) 'Long
  loc_13BFA60: var_D8 = &H3E8
  loc_13BFA6C: LateIdCallSt
  loc_13BFA74: var_A0 = 0
  loc_13BFA80: var_D8 = CVar(CLng(2)) 'Long
  loc_13BFA85: var_F8 = vbNullString
  loc_13BFA8E: LateIdCallSt
  loc_13BFA99: var_A0 = CVar(CLng(2)) 'Long
  loc_13BFAA4: var_D8 = CVar(CInt(7)) 'Integer
  loc_13BFAAB: LateIdCallSt
  loc_13BFAB6: var_A0 = CVar(CLng(2)) 'Long
  loc_13BFAC1: var_D8 = CVar(CInt(7)) 'Integer
  loc_13BFAC8: LateIdCallSt
  loc_13BFAD3: var_A0 = CVar(CLng(2)) 'Long
  loc_13BFAD8: var_D8 = &H3E8
  loc_13BFAE4: LateIdCallSt
  loc_13BFAEC: var_A0 = 0
  loc_13BFAF8: var_D8 = CVar(CLng(3)) 'Long
  loc_13BFAFD: var_F8 = vbNullString
  loc_13BFB06: LateIdCallSt
  loc_13BFB11: var_A0 = CVar(CLng(3)) 'Long
  loc_13BFB1C: var_D8 = CVar(CInt(7)) 'Integer
  loc_13BFB23: LateIdCallSt
  loc_13BFB2E: var_A0 = CVar(CLng(3)) 'Long
  loc_13BFB39: var_D8 = CVar(CInt(7)) 'Integer
  loc_13BFB40: LateIdCallSt
  loc_13BFB4B: var_A0 = CVar(CLng(3)) 'Long
  loc_13BFB50: var_D8 = &H3E8
  loc_13BFB5C: LateIdCallSt
  loc_13BFB64: var_A0 = 0
  loc_13BFB70: var_D8 = CVar(CLng(4)) 'Long
  loc_13BFB75: var_F8 = vbNullString
  loc_13BFB7E: LateIdCallSt
  loc_13BFB89: var_A0 = CVar(CLng(4)) 'Long
  loc_13BFB94: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BFB9B: LateIdCallSt
  loc_13BFBA6: var_A0 = CVar(CLng(4)) 'Long
  loc_13BFBB1: var_D8 = CVar(CInt(1)) 'Integer
  loc_13BFBB8: LateIdCallSt
  loc_13BFBC3: var_A0 = CVar(CLng(4)) 'Long
  loc_13BFBC8: var_D8 = &H12C
  loc_13BFBD4: LateIdCallSt
  loc_13BFBDE: Set var_10C = Nothing 
  loc_13BFBE2: Exit Sub
End Sub

Public Sub Proc_174_60_E44F8C
  'Data Table: 514A60
  loc_E44F68: Set var_88 = Me.TopCtrl1
  loc_E44F6E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_E44F87: If (CStr() = "Browse") Then
  loc_E44F8A:   Exit Sub
  loc_E44F8B: End If
  loc_E44F8B: Exit Sub
End Sub

Public Sub Proc_174_61_ECAB3C
  'Data Table: 514A60
  Dim var_8C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A4 As TextBox
  Dim var_FC As Variant
  loc_ECAAC3: If (CLng(Me.FGrid.Col) = CLng(&HA)) Then
  loc_ECAAD9:   var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_ECAAE1:   var_DC = CVar(CLng(&HA)) 'Long
  loc_ECAAF2:   Set var_8C = Me.TxtGrid
  loc_ECAAF8:   Call 0.Method_Proc_174_61_ECAB3C0 (0, var_A4, var_A8)
  loc_ECAB00:   var_DC = var_A4.Text
  loc_ECAB08:   var_FC = CVar(var_A8) 'String
  loc_ECAB10:   Set var_110 = Me.FGrid
  loc_ECAB16:   LateIdCallSt
  loc_ECAB30: End If
  loc_ECAB35: Proc_174_61_ECAB3C = &HFF
End Sub

Public Sub Proc_174_62_E7E800
  'Data Table: 514A60
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_E7E7BD: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_E7E7C7:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_E7E7CF:   var_D0 = CVar(CLng(0)) 'Long
  loc_E7E7D4:   var_F0 = vbNullString
  loc_E7E7DE:   Set var_8C = Me.FGrid
  loc_E7E7E4:   LateIdCallSt
  loc_E7E7F2: Next var_A0 'Integer
  loc_E7E7FC: global_132 = 0
  loc_E7E7FF: Exit Sub
End Sub

Public Sub Proc_174_63_102E38C
  'Data Table: 514A60
  Dim var_8C As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E8 As String
  Dim var_110 As TextBox
  Dim var_10C As TextBox
  Dim var_118 As String
  loc_102E166: Call Proc_174_59_13BFBE4()
  loc_102E190: For var_A0 = 0 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_86 = var_A0 'Integer
  loc_102E1BB:   For var_A4 = 1 To CInt((CLng(Me.FGrid2.Cols) - 1)): var_88 = var_A4 'Integer
  loc_102E1C5:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_102E1CE:     var_D4 = CVar(CLng(var_88)) 'Long
  loc_102E1F9:     If (CStr(Me.FGrid2.TextMatrix)) <> vbNullString) Then
  loc_102E20F:       Me.FGrid2.Row = CVar(CLng(var_86))
  loc_102E22A:       Me.FGrid2.Col = CVar(CLng(var_88))
  loc_102E23F:       var_D4 = CVar(CLng(var_88)) 'Long
  loc_102E267:       var_E8 = CStr(Trim(CVar(CStr(Me.FGrid2.TextMatrix)))))
  loc_102E276:       Set var_10C = Me.TXT
  loc_102E27C:       Call 0.Method_Proc_174_63_102E38C0 (CInt(0), var_110, var_E8, var_D4, CVar(CLng(var_86)))
  loc_102E284:       var_110.Text = var_D4
  loc_102E2AA:       Call Txt_Validate(CInt(0))
  loc_102E2BA:       If (vbNullString = vbNullString) Then
  loc_102E2CB:         Set var_8C = Me.TXT
  loc_102E2D1:         Call 0.Method_Proc_174_63_102E38C0 (CInt(&HA), var_10C, var_E8, 0)
  loc_102E2D9:         var_B4 = var_10C.Tag
  loc_102E2EB:         global_68 = var_E8 & "'"
  loc_102E300:       Else
  loc_102E30A:         var_118 = global_68 & ",'"
  loc_102E31B:         Set var_8C = Me.TXT
  loc_102E321:         Call 0.Method_Proc_174_63_102E38C0 (CInt(&HA), var_10C, var_E8)
  loc_102E329:         var_118 = var_10C.Tag
  loc_102E33F:         global_68 = 1 & var_E8 & "'"
  loc_102E355:       End If
  loc_102E368:       Me.FGrid2.CellBackColor = &HFF
  loc_102E370:     End If
  loc_102E373:   Next var_A4 'Integer
  loc_102E37B: Next var_A0 'Integer
  loc_102E386: Call Proc_174_64_14554FC(global_68)
  loc_102E38B: Exit Sub
End Sub

Public Sub Proc_174_64_14554FC(arg_C) '14554FC
  'Data Table: 514A60
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E4 As String
  Dim unk_514A67 As Connection15
  Dim var_E8 As Variant
  Dim var_BC As Variant
  Dim var_F0 As Variant
  Dim var_DC As Variant
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_F8 As MSHFlexGrid
  Dim var_14C As Variant
  Dim var_1BC As Variant
  Dim var_1FC As Variant
  Dim var_18C As Variant
  loc_14549A0: On Error Goto loc_1455494
  loc_14549AE: var_BC = Trim(arg_C)
  loc_14549C1: If (var_BC = vbNullString) Then
  loc_14549C4:   Exit Sub
  loc_14549C5: End If
  loc_14549E0: var_E4 = "Select * from paycharge where (ContraDocId is NULL or contradocid='') and folionoDocid in ('" & arg_C & ") order by vDate,VNO,SNO"
  loc_14549E9: unk_514A67.Execute var_E4, var_BC, -1
  loc_14549F4: Set var_8C = var_E8
  loc_1454A0D: var_EC = Me.Recordset15.RecordCount
  loc_1454A1B: If (var_EC = 0) Then
  loc_1454A31:   Me.FGrid.Rows = 2
  loc_1454A39:   Exit Sub
  loc_1454A3A: End If
  loc_1454A53: var_AC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1454A5C: Set var_F0 = Me.FGrid
  loc_1454A62: var_F0.Row = 2
  loc_1454A71: ' Referenced from: 14552E1
  loc_1454A83: If Not(Me.var_F0.EOF) Then
  loc_1454A8A:   Set var_F8 = Me.FGrid
  loc_1454A97:   var_DC = Me.FGrid.Row
  loc_1454AA0:   var_CC = CVar(CLng(var_DC)) 'Long
  loc_1454AD8:   var_13C = CVar(Proc_6_38_E68A98(CVar(Me.var_DC.Fields.Item("MarkEntry")), CVar(CLng(0)))) 'String
  loc_1454ADF:   LateIdCallSt
  loc_1454B01:   var_DC = Me.FGrid.Row
  loc_1454B42:   var_13C = CVar(Proc_6_38_E68A98(CVar(Me.var_DC.Fields.Item("VDate")), CVar(CLng(1)), CVar(CLng(var_DC)), var_F8)) 'String
  loc_1454B49:   LateIdCallSt
  loc_1454B6B:   var_15C = Me.FGrid.Row
  loc_1454BBB:   var_16C = CVar(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(Me.var_15C.Fields.Item("Comments")), CVar(CLng(2)), CVar(CLng(var_15C)), var_F8))))) 'String
  loc_1454BC2:   LateIdCallSt
  loc_1454C07:   var_15C = Me.FGrid.Row
  loc_1454C10:   var_10C = CVar(CLng(var_15C)) 'Long
  loc_1454C18:   var_12C = CVar(CLng(3)) 'Long
  loc_1454C45:   var_16C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtDr")), "0.00"))) 'String
  loc_1454C4C:   LateIdCallSt
  loc_1454C91:   var_15C = Me.FGrid.Row
  loc_1454CB6:   var_DC = "0.00"
  loc_1454CD6:   LateIdCallSt
  loc_1454D22:   Proc_6_39_E7C810(var_DC, CVar(Me.var_15C.Fields.Item("AmtDr")), CVar(var_94), var_F8, CVar(CStr(Format(CVar(Me.var_15C.Fields.Item("AmtCr")), var_DC))), 1, 1)
  loc_1454D2A:   var_13C = (CVar(CLng(4)) + var_DC)
  loc_1454D2F:   var_94 = CSng(Format(CVar(Me.var_15C.Fields.Item("AmtCr")), var_DC))
  loc_1454D6E:   Proc_6_39_E7C810(var_DC, CVar(Me.Recordset15.Fields.Item("AmtCr")), CVar(var_9C), var_94, CVar(CLng(var_15C)))
  loc_1454D76:   var_13C = (var_F8 + var_DC)
  loc_1454D7B:   var_9C = CSng(Format(CVar(Me.var_15C.Fields.Item("AmtCr")), var_DC))
  loc_1454D9D:   var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1454DA5:   var_12C = CVar(CLng(5)) 'Long
  loc_1454DC7:   var_BC = CVar(Abs((var_94 - var_9C))) 'Double
  loc_1454DD7:   var_16C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_1454DDE:   LateIdCallSt
  loc_1454E02:   If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_1454E18:     var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1454E20:     var_10C = CVar(CLng(6)) 'Long
  loc_1454E25:     var_12C = "Dr"
  loc_1454E2E:     LateIdCallSt
  loc_1454E3F:   Else
  loc_1454E4B:     If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_1454E61:       var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1454E69:       var_10C = CVar(CLng(6)) 'Long
  loc_1454E6E:       var_12C = "Cr"
  loc_1454E77:       LateIdCallSt
  loc_1454E88:     Else
  loc_1454E9B:       var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1454EA3:       var_10C = CVar(CLng(6)) 'Long
  loc_1454EA8:       var_12C = vbNullString
  loc_1454EB1:       LateIdCallSt
  loc_1454EBF:     End If
  loc_1454EBF:   End If
  loc_1454EC9:   var_DC = Me.FGrid.Row
  loc_1454EE2:   var_AC = "DocID"
  loc_1454F0A:   var_13C = CVar(Proc_6_38_E68A98(CVar(Me.var_DC.Fields.Item(var_AC)), CVar(CLng(7)), CVar(CLng(var_DC)), var_F8, var_12C, var_10C, var_AC)) 'String
  loc_1454F11:   LateIdCallSt
  loc_1454F33:   var_DC = Me.FGrid.Row
  loc_1454F74:   var_13C = CVar(Proc_6_38_E68A98(CVar(Me.var_DC.Fields.Item("SNo")), CVar(CLng(8)), CVar(CLng(var_DC)), var_F8, var_13C, var_F8)) 'String
  loc_1454F7B:   LateIdCallSt
  loc_1454F9D:   var_DC = Me.FGrid.Row
  loc_1454FDE:   var_13C = CVar(Proc_6_38_E68A98(CVar(Me.var_DC.Fields.Item("U_Name")), CVar(CLng(9)), CVar(CLng(var_DC)), var_F8, var_13C)) 'String
  loc_1454FE5:   LateIdCallSt
  loc_1455010:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1455018:   var_10C = CVar(CLng(7)) 'Long
  loc_1455020:   var_DC = var_F8.TextMatrix)
  loc_14550AA:   var_1FC = (Trim(Mid(CVar(CStr(var_DC)), 4, 5)) <> "RC") And (Me.var_DC.Fields.Item("PlanCharge").Value <> "Yes") And (SplitBill = &HFF)
  loc_14550CC:   If CBool(var_1FC) Then
  loc_14550E2:     var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14550EA:     var_10C = CVar(CLng(&HA)) 'Long
  loc_14550EF:     var_12C = "2"
  loc_14550F8:     LateIdCallSt
  loc_1455109:   Else
  loc_145511C:     var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1455124:     var_10C = CVar(CLng(&HA)) 'Long
  loc_1455129:     var_12C = "1"
  loc_1455132:     LateIdCallSt
  loc_1455140:   End If
  loc_145514A:   var_DC = Me.FGrid.Row
  loc_1455163:   var_AC = "PayCode"
  loc_145518B:   var_13C = CVar(Proc_6_38_E68A98(CVar(Me.var_DC.Fields.Item(var_AC)), CVar(CLng(&HB)), CVar(CLng(var_DC)), var_F8, var_12C, var_10C, var_AC)) 'String
  loc_1455192:   LateIdCallSt
  loc_14551B4:   var_DC = Me.FGrid.Row
  loc_14551F5:   var_13C = CVar(Proc_6_38_E68A98(CVar(Me.var_DC.Fields.Item("FolioNoDocid")), CVar(CLng(&HC)), CVar(CLng(var_DC)), var_F8, var_13C, var_F8)) 'String
  loc_14551FC:   LateIdCallSt
  loc_145521E:   var_DC = Me.FGrid.Row
  loc_145525F:   var_13C = CVar(Proc_6_38_E68A98(CVar(Me.var_DC.Fields.Item("RoomNo")), CVar(CLng(&HD)), CVar(CLng(var_DC)), var_F8, var_13C)) 'String
  loc_1455266:   LateIdCallSt
  loc_1455280:   Set var_F8 = Nothing 
  loc_1455284:   var_AC = vbNullString
  loc_145528E:   Set var_E8 = Me.FGrid
  loc_14552B8:   var_AC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_14552C1:   Set var_F0 = Me.FGrid
  loc_14552C7:   var_F0.Row = var_AC
  loc_14552DC:   Me.var_F0.MoveNext
  loc_14552E1:   GoTo loc_1454A71
  loc_14552E4: End If
  loc_14552E4: var_AC = 1
  loc_14552F7: Me.FGrid.FixedRows = var_AC
  loc_1455303: Set var_200 = var_AC(FGrid.DispID_10000)
  loc_1455306: var_10C = 0
  loc_1455312: var_12C = CVar(CLng(1)) 'Long
  loc_1455340: var_13C = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_1455347: LateIdCallSt
  loc_1455358: var_10C = 0
  loc_1455364: var_12C = CVar(CLng(2)) 'Long
  loc_1455392: var_13C = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_1455399: LateIdCallSt
  loc_14553AA: var_10C = 0
  loc_14553B6: var_12C = CVar(CLng(3)) 'Long
  loc_14553D8: var_BC = CVar(Abs((var_94 - var_9C))) 'Double
  loc_14553E8: var_15C = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_14553EF: LateIdCallSt
  loc_1455402: var_14C = 0
  loc_145540E: var_1BC = CVar(CLng(4)) 'Long
  loc_1455418: var_DC = vbNullString
  loc_1455435: var_AC = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_145543C: var_13C = IIf(var_9C, "Cr", var_DC)
  loc_1455449: var_15C = "Dr"
  loc_145545B: var_11C = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_145546B: var_18C = CVar(CStr(IIf(CVar(CLng(&HD)), var_15C, var_13C))) 'String
  loc_1455472: LateIdCallSt
  loc_145548F: Set var_200 = Nothing 
  loc_1455493: Exit Sub
  loc_1455494: ' Referenced from: 14549A0
  loc_14554AD: MsgBox("FILL DETAILS", 0, var_DC, var_13C, var_15C)
  loc_14554D3: Set var_E8 = Err()
  loc_14554D9: Call 0.Method_arg_1C (var_EC, 0, var_DC, var_13C, var_15C, var_200, var_18C, var_1BC)
  loc_14554E5: MsgBox(CVar(var_EC), var_14C, var_200, var_15C, 1)
  loc_14554F8: Exit Sub
End Sub

Public Sub Proc_174_65_E6C0D0
  'Data Table: 514A60
  loc_E6C0A6: For var_B0 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_96 = var_B0 'Byte
  loc_E6C0B4:   var_94 = CVar(var_96) 'Variant
  loc_E6C0B8:   Proc_174_65_E6C0D0 = CByte(1)
  loc_E6C0C1: Next var_B0 'Byte
  loc_E6C0C7: Proc_174_65_E6C0D0 = 
End Sub

Public Sub Proc_174_66_F73F78(arg_C) 'F73F78
  'Data Table: 514A60
  Dim var_90 As String
  Dim var_138 As Variant
  Dim var_148 As String
  Dim var_1F0 As Variant
  loc_F73E81: var_90 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocid = GuestFolio.Docid) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocid='" & arg_14
  loc_F73ED1: var_138 = CVar(var_90 & "' And Split='") & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" & CVar(arg_C) & ") Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all " 
  loc_F73ED5: var_148 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocid = GuestFolio.Docid) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocid='"
  loc_F73F24: var_1F0 = var_138 & var_148 & CVar(arg_14) & "' And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_F73F6F: var_88 = CStr(var_1F0 & CVar(arg_C) & ") Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all ")
  loc_F73F72: Proc_174_66_F73F78 = 
End Sub

Public Sub Proc_174_67_1061D38(arg_C) '1061D38
  'Data Table: 514A60
  Dim var_90 As String
  Dim var_128 As String
  Dim var_138 As Variant
  Dim var_148 As String
  Dim var_1F0 As Variant
  Dim var_220 As String
  Dim var_240 As String
  Dim var_2E8 As Variant
  Dim var_318 As String
  Dim var_338 As String
  Dim var_3E0 As Variant
  Dim var_410 As String
  loc_1061B4D: var_90 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' as AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocid = GuestFolio.Docid) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocid='" & arg_14
  loc_1061B98: var_128 = ") AND PayCode not in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_1061B9D: var_138 = CVar(var_90 & "' And Split='") & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" & CVar(arg_C) & var_128 
  loc_1061BA1: var_148 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'T' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocid = GuestFolio.Docid) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocid='"
  loc_1061BF0: var_1F0 = var_138 & var_148 & CVar(arg_14) & "' And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" 
  loc_1061BFE: var_220 = ") AND PayCode in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_1061C07: var_240 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocid = GuestFolio.Docid) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocid='"
  loc_1061C56: var_2E8 = var_1F0 & CVar(arg_C) & var_220 & var_240 & CVar(arg_14) & "' And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_1061C64: var_318 = ") AND PayCode NOT in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_1061C6D: var_338 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'T' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocid = GuestFolio.Docid) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocid='"
  loc_1061CBC: var_3E0 = var_2E8 & CVar(arg_C) & var_318 & var_338 & CVar(arg_14) & "' And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_1061CCA: var_410 = ") AND PayCode in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_1061D2F: var_88 = CStr(var_3E0 & CVar(arg_C) & var_410)
  loc_1061D32: Proc_174_67_1061D38 = 
End Sub
