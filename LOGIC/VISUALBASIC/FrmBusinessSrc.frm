VERSION 5.00
Begin VB.Form FrmBusinessSrc
  Caption = "Business Source Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 8175
  ClientHeight = 5595
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3660
    Top = 2625
    Width = 600
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 3
    BeginProperty Font
      Name = "Arial"
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
    Width = 8175
    Height = 450
    TabIndex = 8
  End
  Begin MSFlexGrid FGPoint
    Left = 7710
    Top = 1440
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGHelp
    Left = 7650
    Top = 3150
    Width = 4245
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3660
    Top = 2325
    Width = 4215
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 20
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 1
    ForeColor = &H80&
    Left = 4305
    Top = 2655
    Width = 825
    Height = 225
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLedgerAc
    Caption = "Active"
    Index = 6
    ForeColor = &HC00000&
    Left = 3000
    Top = 2625
    Width = 585
    Height = 240
    TabIndex = 9
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4890
    Top = 4635
    Width = 2790
    Height = 285
    TabIndex = 7
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 1500
    Top = 4650
    Width = 2880
    Height = 255
    TabIndex = 6
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 345
    Width = 180
    Height = 540
    TabIndex = 5
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
  Begin Label LblName
    Caption = "Business Source Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1410
    Top = 2325
    Width = 2175
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

Attribute VB_Name = "FrmBusinessSrc"


Private Sub FGPoint_UnknownEvent_9 'E30614
  'Data Table: 45670C
  loc_E30608: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3060B:   Call DGHelp_UnknownEvent_9()
  loc_E30610: End If
  loc_E30610: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE65BC
  'Data Table: 45670C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE6513: Me.DGHelp.Visible = False
  loc_EE6532: If (Me.RecordCount > 0) Then
  loc_EE6552:   var_B0 = Me.Fields.Item("Name")
  loc_EE6571:   Set var_B4 = Me.Txt
  loc_EE6577:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE657F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE6595: End If
  loc_EE65A0: Set var_A8 = Me.Txt
  loc_EE65A6: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE65AE: var_B0.SetFocus
  loc_EE65BA: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E72BD0
  'Data Table: 45670C
  loc_E72B8E: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E72BA5: Set var_8C = Me.FGPoint
  loc_E72BC1: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0))
  loc_E72BCF: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EA931C
  'Data Table: 45670C
  Dim Me As Recordset15
  loc_EA929A: Set var_88 = Me.Txt
  loc_EA92A0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EA92AE: Proc_6_74_E226B0(var_8C)
  loc_EA92BA: Call Proc_12_31_E86BD8(var_8C)
  loc_EA92CD: If (Index = CInt(0)) Then
  loc_EA92E7:   If (Me.RecordCount > 0) Then
  loc_EA92F5:     Set var_8C = Me.FGPoint
  loc_EA930D:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_EA931B:   End If
  loc_EA931B: End If
  loc_EA931B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FD4AC0
  'Data Table: 45670C
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As TextBox
  loc_FD4906: If (CLng(Shift) = &H1B) Then
  loc_FD4909:   Call Proc_12_31_E86BD8()
  loc_FD490E:   Exit Sub
  loc_FD490F: End If
  loc_FD491D: If (KeyCode = CInt(0)) Then
  loc_FD493D:   Set var_9C = Me.FGPoint
  loc_FD496F:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_FD49DC:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FD49E3:     Set var_9C = Me.DGHelp
  loc_FD49EA:     Set var_90 = Me.FGPoint
  loc_FD4A02:     Proc_6_138_106D6F8(var_9C, global_56, KeyCode, var_90, 0)
  loc_FD4A10:   End If
  loc_FD4A10: End If
  loc_FD4A2C: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FD4A4D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(1))) Then
  loc_FD4A56:     Call Txt_Validate(KeyCode)
  loc_FD4A61:     If (var_86 = &HFF) Then
  loc_FD4A6F:       Set var_8C = Me.Txt
  loc_FD4A75:       Call 0.Method_Txt_KeyDown0 (CInt(0), var_90, var_86, 1)
  loc_FD4A7D:       var_90.SetFocus
  loc_FD4A89:       Exit Sub
  loc_FD4A8A:     End If
  loc_FD4A91:     Call Proc_12_32_E90F68(CInt(0), var_9C)
  loc_FD4A96:     Exit Sub
  loc_FD4A9A:   Else
  loc_FD4AAF:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FD4AB8:       Proc_6_75_E527CC(Shift, arg_14)
  loc_FD4ABD:     End If
  loc_FD4ABD:   End If
  loc_FD4ABD: End If
  loc_FD4ABD: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EFF5A8
  'Data Table: 45670C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  loc_EFF4D6: Proc_6_133_E7EF78(var_94)
  loc_EFF4DF: arg_10 = CInt(var_94)
  loc_EFF4E8: var_96 = KeyAscii
  loc_EFF4F3: If (var_96 = CInt(1)) Then
  loc_EFF51F:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_EFF52F:     Set var_CC = Me.Txt
  loc_EFF535:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_EFF53D:     var_D0.Text = var_96
  loc_EFF54C:   Else
  loc_EFF575:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_EFF585:       Set var_CC = Me.Txt
  loc_EFF58B:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "No")
  loc_EFF593:       var_D0.Text = arg_10
  loc_EFF59F:     End If
  loc_EFF59F:   End If
  loc_EFF5A1:   arg_10 = 0
  loc_EFF5A4: End If
  loc_EFF5A4: Exit Sub
  loc_EFF5A5: arg_10 = arg_10
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EBFFF0
  'Data Table: 45670C
  loc_EBFF62: If (KeyCode = CInt(0)) Then
  loc_EBFF81:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBFF8E:     var_A4 = "Name"
  loc_EBFFAD:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_56)
  loc_EBFFDF:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EBFFED:   End If
  loc_EBFFED: End If
  loc_EBFFED: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C594
  'Data Table: 45670C
  loc_E4C572: Set var_88 = Me.Txt
  loc_E4C578: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C586: Proc_6_73_E22704(var_8C)
  loc_E4C592: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E28EE0
  'Data Table: 45670C
  Dim arg_10 As Integer
  loc_E28EC2: If (Cancel = CInt(0)) Then
  loc_E28EC8:   Call Proc_12_30_10857FC(var_88)
  loc_E28ED3:   If (var_88 = &HFF) Then
  loc_E28ED8:     arg_10 = &HFF
  loc_E28EDB:     Exit Sub
  loc_E28EDC:   End If
  loc_E28EDC: End If
  loc_E28EDC: Exit Sub
  loc_E28EDD: CopyBytes 1279
End Sub

Private Sub Form_Load() '107E840
  'Data Table: 45670C
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_D8 As Variant
  Dim var_C8 As String
  Dim unk_45671F As Connection15
  loc_107E5B0: On Error Goto loc_107E7F9
  loc_107E5C2: Me.LblUser.Left = CDbl(13500)
  loc_107E5D9: Me.LblUser.Top = CDbl(7800)
  loc_107E5F0: Me.LblLDt.Top = CDbl(8160)
  loc_107E607: Me.LblLDt.Left = CDbl(13500)
  loc_107E616: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_107E629: Set var_8C = Me.Txt
  loc_107E62F: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107E64E: Me.DGHelp.Left = CVar(var_90.Left)
  loc_107E66A: Set var_B8 = Me.Txt
  loc_107E670: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_107E68B: Set var_8C = Me.Txt
  loc_107E691: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107E6A9: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_107E6B8: Me.DGHelp.Top = CVar(var_90.Left)
  loc_107E6D4: Set var_8C = Me.TopCtrl1
  loc_107E6DA: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_107E6E8: Call 0.Method_arg_50 (var_C8)
  loc_107E6F0: var_D8 = CVar(var_C8) 'String
  loc_107E6FE: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D8)
  loc_107E72D: unk_45671F.Execute "SELECT Code,Name FROM BussSource WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107E75C: CVarUnk
  loc_107E761: VerifyVarObj
  loc_107E76D: LateIdStAd
  loc_107E79F: unk_45671F.Execute "SELECT * FROM BussSource WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107E7DA: var_C8 = "INI"
  loc_107E7E8: Call Proc_12_27_E7A5A4(Proc_5_1_100CB50(var_C8, Me, Me.DGHelp, Me), Me)
  loc_107E7F3: Call Proc_12_29_120F098(Me.TopCtrl1)
  loc_107E7F8: Exit Sub
  loc_107E7F9: ' Referenced from: 107E5B0
  loc_107E801: Set var_8C = Err()
  loc_107E807: Call 0.Method_arg_2C (var_C8)
  loc_107E828: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_107E83B: Exit Sub
  loc_107E83C: Exit Sub
End Sub

Private Sub Form_Resize() 'ED5C38
  'Data Table: 45670C
  Dim var_8C As Label
  loc_ED5B96: Call 0.Method_arg_50 (var_88)
  loc_ED5BA8: Me.LblFormCaption.Caption = var_88
  loc_ED5BC1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED5BCD: Set var_A0 = Me.TopCtrl1
  loc_ED5BD3: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED5BE0: Set var_8C = Me.TopCtrl1
  loc_ED5BE6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED5C00: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED5C1B: Call 0.Method_arg_100 (var_B8)
  loc_ED5C2D: Me.LblFormCaption.Width = var_B8
  loc_ED5C35: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E28F38
  'Data Table: 45670C
  loc_E28F1B: Set global_52 = Nothing
  loc_E28F2D: Set global_56 = Nothing
  loc_E28F34: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E891E0
  'Data Table: 45670C
  loc_E8917C: On Error Goto loc_E8919C
  loc_E89193: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8919B: Exit Sub
  loc_E8919C: ' Referenced from: E8917C
  loc_E891A4: Set var_88 = Err()
  loc_E891AA: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E891CB: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E891DE: Exit Sub
  loc_E891DF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ED5E24
  'Data Table: 45670C
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_ED5D70: On Error Goto loc_ED5E1E
  loc_ED5D80: Me.LblUser.Caption = vbNullString
  loc_ED5D95: Me.LblLDt.Caption = vbNullString
  loc_ED5DC0: Call Proc_12_27_E7A5A4(Proc_5_1_100CB50("ADD", Me))
  loc_ED5DCB: Call Proc_12_28_EAF0EC(global_52)
  loc_ED5DDE: Set var_88 = Me.Txt
  loc_ED5DE4: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_ED5DEC: var_94.Text = "Yes"
  loc_ED5E03: Set var_88 = Me.Txt
  loc_ED5E09: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED5E11: var_94.SetFocus
  loc_ED5E1D: Exit Sub
  loc_ED5E1E: ' Referenced from: ED5D70
  loc_ED5E1E: Proc_6_60_E62BC4(var_94)
  loc_ED5E23: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBFF0C
  'Data Table: 45670C
  loc_EBFE74: On Error Goto loc_EBFF04
  loc_EBFEAE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBFEBD:   Set var_110 = Me
  loc_EBFED4:   Call Proc_12_27_E7A5A4(Proc_5_1_100CB50("INI", var_110))
  loc_EBFEDF:   Call Proc_12_31_E86BD8(global_52)
  loc_EBFEE4:   Call Proc_12_29_120F098()
  loc_EBFEEC: Else
  loc_EBFEF2:   Call 0.Method_arg_1E8 (var_110)
  loc_EBFEFA:   Call var_110.SetFocus
  loc_EBFF03: End If
  loc_EBFF03: Exit Sub
  loc_EBFF04: ' Referenced from: EBFE74
  loc_EBFF04: Proc_6_60_E62BC4()
  loc_EBFF09: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '119870C
  'Data Table: 45670C
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_45671F As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_1198330: On Error Goto loc_11986B5
  loc_1198341: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_1198344:   Exit Sub
  loc_1198345: End If
  loc_1198377: var_D4 = "Guest Folio"
  loc_11983BF: If (Proc_6_108_1010FEC(MemVar_1F92044, "GuestFolio", "BussSource", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_11983C2:   Exit Sub
  loc_11983C3: End If
  loc_11983F5: var_D4 = "Booking"
  loc_119843D: If (Proc_6_108_1010FEC(MemVar_1F92044, "Booking", "BussSource", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_1198440:   Exit Sub
  loc_1198441: End If
  loc_1198478: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_119847D:   var_96 = 0
  loc_1198489:   unk_45671F.BeginTrans var_D0
  loc_1198490:   var_96 = &HFF
  loc_11984A4:   var_94 = Me.Bookmark 'Variant
  loc_11984F0:   var_118 = "Delete From BussSource Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_11984FE:   unk_45671F.Execute CStr(var_118), var_138, -1
  loc_1198549:   var_168 = 0
  loc_119855C:   var_160 = 0
  loc_1198567:   var_15C = 0
  loc_119857A:   var_154 = 0
  loc_1198585:   var_150 = 0
  loc_1198598:   var_148 = 0
  loc_11985D8:   var_B4 = "BussSource"
  loc_11985E1:   Proc_154_5_10E33A4(MemVar_1F92044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_119860F:   unk_45671F.CommitTrans
  loc_1198616:   var_96 = 0
  loc_1198624:   Me.Requery -1
  loc_1198634:   Me.Requery -1
  loc_1198654:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1198661:     Me.Bookmark = var_94
  loc_1198669:   Else
  loc_119867D:     If (Me.EOF = 0) Then
  loc_1198686:       Me.MoveLast
  loc_119868B:     End If
  loc_119868B:   End If
  loc_119868B:   Call Proc_12_29_120F098(var_96, var_148, 0, var_150, var_154)
  loc_11986AC:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_11986B4: End If
  loc_11986B4: Exit Sub
  loc_11986B5: ' Referenced from: 1198330
  loc_11986BB: If (var_96 = &HFF) Then
  loc_11986C4:   unk_45671F.RollbackTrans
  loc_11986C9: End If
  loc_11986D1: Set var_9C = Err()
  loc_11986D7: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_11986F8: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_119870B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EEFAD4
  'Data Table: 45670C
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EEFA04: On Error Goto loc_EEFACC
  loc_EEFA14: Me.LblUser.Caption = vbNullString
  loc_EEFA29: Me.LblLDt.Caption = vbNullString
  loc_EEFA3F: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_EEFA42:   Exit Sub
  loc_EEFA43: End If
  loc_EEFA66: Call Proc_12_27_E7A5A4(Proc_5_1_100CB50("EDIT", Me))
  loc_EEFA7F: Set var_88 = Me.Txt
  loc_EEFA85: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EEFA98: global_64 = var_94.Text
  loc_EEFAB1: Set var_88 = Me.Txt
  loc_EEFAB7: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EEFABF: var_94.SetFocus
  loc_EEFACB: Exit Sub
  loc_EEFACC: ' Referenced from: EEFA04
  loc_EEFACC: Proc_6_60_E62BC4(global_52)
  loc_EEFAD1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E166D4
  'Data Table: 45670C
  Dim var_6C00 As Long
  loc_E166C9: Me.Global.Unload Me
  loc_E166D1: Exit Sub
  loc_E166D2: var_6C00 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F22F70
  'Data Table: 45670C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F22E70: On Error Goto loc_F22F08
  loc_F22E7C: var_88 = Me.RecordCount
  loc_F22E8A: If (var_88 <= 0) Then
  loc_F22E93:   var_B8 = "Information"
  loc_F22EAE:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F22EBE:   Exit Sub
  loc_F22EBF: End If
  loc_F22EC6: var_10C = "Select BussSource.Code As SearchCode,BussSource.Name,BussSource.Active FROM BussSource where (LOGSITE_CODE='" & MemVar_1F92078
  loc_F22ECD: MemVar_1F920E4 = var_10C & "' or LOGSITE_CODE='HO') Order by BussSource.Name"
  loc_F22EDA: MemVar_1F92120 = Me
  loc_F22EE1: var_10C = "4000,1000"
  loc_F22EE7: Proc_6_126_F1BCC0(var_10C)
  loc_F22F02: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F22F07: Exit Sub
  loc_F22F08: ' Referenced from: F22E70
  loc_F22F10: Set var_110 = Err()
  loc_F22F16: Call 0.Method_arg_1C (var_88)
  loc_F22F27: If (var_88 <> 0) Then
  loc_F22F32:   Set var_110 = Err()
  loc_F22F38:   Call 0.Method_arg_2C (var_10C)
  loc_F22F59:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F22F6C: End If
  loc_F22F6C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E30558
  'Data Table: 45670C
  loc_E30548: Proc_5_0_110649C(&HFF, Me)
  loc_E30550: Call Proc_12_29_120F098(global_52)
  loc_E30555: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E30438
  'Data Table: 45670C
  loc_E30428: Proc_5_0_110649C(&HFF, Me)
  loc_E30430: Call Proc_12_29_120F098(global_52)
  loc_E30435: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E30498
  'Data Table: 45670C
  loc_E30488: Proc_5_0_110649C(&HFF, Me)
  loc_E30490: Call Proc_12_29_120F098(global_52)
  loc_E30495: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E304F8
  'Data Table: 45670C
  loc_E304E8: Proc_5_0_110649C(&HFF, Me)
  loc_E304F0: Call Proc_12_29_120F098(global_52)
  loc_E304F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10822E8
  'Data Table: 45670C
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_45671F As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1082050: On Error Goto loc_108229C
  loc_1082077: unk_45671F.Execute "select * FROM BussSource where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_1082082: Set var_88 = var_C8
  loc_1082098: var_CC = var_88.RecordCount
  loc_10820A6: If (var_CC = 0) Then
  loc_10820C2:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_10820D2:   Exit Sub
  loc_10820D3: End If
  loc_10820E2: var_A4 = MemVar_1F920B4 & "\BussSource.ttx"
  loc_10820E9: Set var_C8 = var_88 
  loc_10820F5: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_10820FF: Set var_88 = var_C8
  loc_1082105: var_B4 = CVar(var_12E) 'Integer
  loc_1082108: var_98 = var_B4 'Variant
  loc_1082124: var_A0 = MemVar_1F920B4 & "\BussSource.RPT"
  loc_108212D: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1082138: MemVar_1F921E4 = var_C8
  loc_1082153: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108215B: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1082167: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1082180:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1082188:   Call 0.Method_arg_20 (var_138)
  loc_1082190:   Call 0.Method_arg_30 (var_A0)
  loc_10821D6:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10821EC:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10821F4:     Call 0.Method_arg_20 (var_138)
  loc_10821FC:     Call 0.Method_arg_38 ("'Business Source Master'")
  loc_1082208:   End If
  loc_108220B: Next var_132 'Integer
  loc_1082229: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1082231: Call 0.Method_arg_2C (var_DC)
  loc_108223F: Call 0.Method_arg_150 (var_FC)
  loc_108224A: Call 0.Method_arg_50 (var_A0)
  loc_1082254: Set var_138 = Nothing
  loc_108226E: Set var_C8 = MemVar_1F921E4 
  loc_108227A: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_1082285: MemVar_1F921E4 = var_C8
  loc_1082298: Set var_88 = Nothing
  loc_108229B: Exit Sub
  loc_108229C: ' Referenced from: 1082050
  loc_10822A4: Set var_C8 = Err()
  loc_10822AA: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10822B5: Call 0.Method_arg_50 (var_A4)
  loc_10822D1: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_10822E4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E09AAC
  'Data Table: 45670C
  Dim Me As Recordset15
  loc_E09AA3: Me.Requery -1
  loc_E09AA8: Exit Sub
  loc_E09AA9: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1269684
  'Data Table: 45670C
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_45671F As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_B0 As Variant
  Dim var_1E4 As Variant
  Dim var_204 As Variant
  loc_126913C: On Error Goto loc_126962F
  loc_1269143: var_86 = CByte(0) 'Byte
  loc_1269152: Set var_90 = Me.Txt
  loc_1269158: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1269181: If (Proc_6_27_EA565C(var_94, "Name") = 0) Then
  loc_126918B:   Call Txt_GotFocus(CInt(0))
  loc_1269190:   Exit Sub
  loc_1269191: End If
  loc_1269194: Call Proc_12_30_10857FC(var_9E)
  loc_126919F: If (var_9E = &HFF) Then
  loc_12691A2:   Exit Sub
  loc_12691A3: End If
  loc_12691A7: Set var_90 = Me.TopCtrl1
  loc_12691AD: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_12691C6: If (CStr() = "Add") Then
  loc_12691CF:   var_D4 = 0
  loc_12691EC:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From BussSource WHERE SITE_CODE='" & MemVar_1F92070
  loc_12691F3:   var_B4 = CStr() & "'"
  loc_12691FC:   unk_45671F.Execute var_B4, var_B0, -1
  loc_1269204:   var_90 = var_90.Fields
  loc_126920C:   var_D4 = var_94.Item(var_94)
  loc_1269214:   var_98 = var_98.Value
  loc_126924D:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1269273:   var_E4 = Format(CStr(var_E4), "000")
  loc_126927B:   var_108 = (1 + var_E4)
  loc_1269286:   global_60 = CStr(var_108)
  loc_126929B: Else
  loc_12692B8:   var_94 = Me.Fields.Item("Code")
  loc_12692CF:   global_60 = CStr(var_94.Value)
  loc_12692E0: End If
  loc_12692E9: unk_45671F.BeginTrans var_10C
  loc_12692F2: var_86 = CByte(1) 'Byte
  loc_12692FA: Set var_90 = Me.TopCtrl1
  loc_1269300: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1269319: If (CStr(var_F8) = "Add") Then
  loc_1269333:   var_9C = "Insert Into BussSource(Code,Name,Active,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_60
  loc_126934B:   Set var_90 = Me.Txt
  loc_1269351:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_9C & "','")
  loc_1269359:   var_248 = var_94.Text
  loc_1269362:   var_110 = -1 & var_B4
  loc_1269377:   Set var_98 = Me.Txt
  loc_126937D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, CVar(var_110 & "',"))
  loc_126938C:   Proc_6_17_EAA2B0(var_E4, CVar(var_114))
  loc_12693D5:   Proc_6_7_F25D88(var_1B4, Date)
  loc_12693F0:   var_204 = var_24C & var_E4 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_1B4 & ",'A','" & CVar(MemVar_1F92078) 
  loc_1269407:   unk_45671F.Execute CStr(var_204 & "')"), var_E4, 
  loc_126944A: Else
  loc_1269468:   Set var_90 = Me.Txt
  loc_126946E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE BussSource SET Name='")
  loc_1269476:   var_248 = var_94.Text
  loc_126947F:   var_B4 = -1 & var_9C
  loc_1269486:   var_F8 = CVar(var_B4 & "',Active=") 'String
  loc_1269494:   Set var_98 = Me.Txt
  loc_126949A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114)
  loc_12694A9:   Proc_6_17_EAA2B0(var_E4, CVar(var_114))
  loc_12694B1:   var_108 = var_F8 & var_E4 
  loc_12694B5:   var_C4 = ",SITE_CODE='"
  loc_12694F2:   Proc_6_7_F25D88(var_1B4, Date)
  loc_1269503:   var_1E4 = var_108 & var_C4 & CVar(MemVar_1F92070) & "',U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_1B4 & " ,U_AE='E' WHERE Code='" 
  loc_1269527:   unk_45671F.Execute CStr(var_1E4 & CVar(global_60) & "'"), var_24C, 
  loc_1269563: End If
  loc_1269569: unk_45671F.CommitTrans
  loc_1269572: var_86 = CByte(0) 'Byte
  loc_1269581: Me.Requery -1
  loc_1269591: Me.Requery -1
  loc_12695BE: Me.Find "Code='" & global_60 & "'", 0, 1
  loc_12695CE: Set var_90 = Me.TopCtrl1
  loc_12695D4: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_12695ED: If (CStr() = "Add") Then
  loc_12695F0:   Call TopCtrl1_UnknownEvent_A()
  loc_12695F5:   Exit Sub
  loc_12695F6: End If
  loc_126960B: var_9C = "INI"
  loc_1269619: Call Proc_12_27_E7A5A4(Proc_5_1_100CB50(var_9C, Me))
  loc_1269624: Call Proc_12_31_E86BD8(global_52)
  loc_1269629: Call Proc_12_29_120F098()
  loc_126962E: Exit Sub
  loc_126962F: ' Referenced from: 126913C
  loc_1269638: If (CInt(var_86) = 1) Then
  loc_1269641:   unk_45671F.RollbackTrans
  loc_1269646: End If
  loc_126964E: Set var_90 = Err()
  loc_1269654: Call 0.Method_arg_2C (var_9C)
  loc_126966D: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_1269680: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBFE24
  'Data Table: 45670C
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBFD9A: On Error Goto loc_EBFDDF
  loc_EBFDA3: Me.MoveFirst
  loc_EBFDBD: var_8C = "code='" & MyValue
  loc_EBFDCD: Me.Find var_8C & "'", 0, 1
  loc_EBFDD9: Call Proc_12_29_120F098(var_A0)
  loc_EBFDDE: Exit Sub
  loc_EBFDDF: ' Referenced from: EBFD9A
  loc_EBFDE7: Set var_A4 = Err()
  loc_EBFDED: Call 0.Method_arg_2C (var_8C)
  loc_EBFE0E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBFE21: Exit Sub
  loc_EBFE22: Exit Sub
End Sub

Public Sub Proc_12_27_E7A5A4(arg_C) 'E7A5A4
  'Data Table: 45670C
  Dim var_98 As TextBox
  loc_E7A552: Set var_8C = Me.Txt
  loc_E7A558: Call 0.Method_Proc_12_27_E7A5A4C (var_8E, var_86)
  loc_E7A568: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A57E:   Set var_8C = Me.Txt
  loc_E7A584:   Call 0.Method_Proc_12_27_E7A5A40 (CInt(var_86), var_98)
  loc_E7A58C:   var_98.Enabled = arg_C
  loc_E7A59B: Next var_92 'Byte
  loc_E7A5A1: Exit Sub
End Sub

Public Sub Proc_12_28_EAF0EC
  'Data Table: 45670C
  Dim var_98 As TextBox
  loc_EAF05E: global_64 = vbNullString
  loc_EAF070: Set var_8C = Me.Txt
  loc_EAF076: Call 0.Method_Proc_12_28_EAF0ECC (var_8E, var_86)
  loc_EAF086: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAF09C:   Set var_8C = Me.Txt
  loc_EAF0A2:   Call 0.Method_Proc_12_28_EAF0EC0 (CInt(var_86), var_98)
  loc_EAF0AA:   var_98.Text = vbNullString
  loc_EAF0C6:   Set var_8C = Me.Txt
  loc_EAF0CC:   Call 0.Method_Proc_12_28_EAF0EC0 (CInt(var_86), var_98)
  loc_EAF0D4:   var_98.Tag = vbNullString
  loc_EAF0E3: Next var_92 'Byte
  loc_EAF0E9: Exit Sub
End Sub

Public Sub Proc_12_29_120F098
  'Data Table: 45670C
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_45671F As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_11C As TextBox
  loc_120EC04: On Error Goto loc_120F055
  loc_120EC0D: Proc_183_45_E5C118(global_52)
  loc_120EC68: unk_45671F.Execute CStr("Select U_Name,U_AE,U_EntDt From BussSource where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_120EC73: Set var_88 = var_118
  loc_120ECC7: var_118 = var_88.Fields
  loc_120ED30: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_120ED75: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_120EDEF: var_11C = var_88.Fields.Item("U_AE")
  loc_120EE08: var_114 = "entdt : "
  loc_120EE13: var_F0 = "Last Update : "
  loc_120EE50: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), var_F0, var_114))
  loc_120EE95: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_120EEE4: If (Me.RecordCount <= 0) Then
  loc_120EEE7:   Call Proc_12_28_EAF0EC()
  loc_120EEEF: Else
  loc_120EF23:   global_60 = CStr(Me.Fields.Item("Name").Value)
  loc_120EF70:   Set var_118 = Me.Txt
  loc_120EF76:   Call 0.Method_Proc_12_29_120F0980 (CInt(0), var_11C)
  loc_120EF7E:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_120EFD0:   Set var_118 = Me.Txt
  loc_120EFD6:   Call 0.Method_Proc_12_29_120F0980 (CInt(0), var_11C)
  loc_120EFDE:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_120F01F:   var_F4 = Proc_6_38_E68A98(CVar(Me.Fields.Item("Active")))
  loc_120F02D:   Set var_118 = Me.Txt
  loc_120F033:   Call 0.Method_Proc_12_29_120F0980 (CInt(1), var_11C)
  loc_120F03B:   var_11C.Text = var_F4
  loc_120F04F: End If
  loc_120F04F: Call Proc_12_31_E86BD8()
  loc_120F054: Exit Sub
  loc_120F055: ' Referenced from: 120EC04
  loc_120F05D: Set var_8C = Err()
  loc_120F063: Call 0.Method_arg_2C (var_F4)
  loc_120F084: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_120F097: Exit Sub
End Sub

Public Sub Proc_12_30_10857FC
  'Data Table: 45670C
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_45671F As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108558F: If (Me.RecordCount = 0) Then
  loc_1085592:   Proc_12_30_10857FC = 
  loc_1085598: End If
  loc_108559C: Set var_90 = Me.TopCtrl1
  loc_10855A2: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10855BB: If (CStr() = "Add") Then
  loc_10855F9:   Set var_90 = Me.Txt
  loc_10855FF:   Call 0.Method_Proc_12_30_10857FC0 (CInt(0), var_A8, var_AC, "Select Count(*) From BussSource Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1085620:   unk_45671F.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1085630:    = var_D0.Item()
  loc_1085638:    = var_E4.Value
  loc_1085669:   If (var_A8.Text.Fields > 0) Then
  loc_1085687:     var_A0 = "Duplicate Name"
  loc_108568D:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_10856A8:     Set var_90 = Me.Txt
  loc_10856AE:     Call 0.Method_Proc_12_30_10857FC0 (CInt(0))
  loc_10856B6:     var_A8.SetFocus
  loc_10856C7:     Proc_12_30_10857FC = &HFF
  loc_10856CD:   End If
  loc_10856D0: Else
  loc_108570B:   Set var_90 = Me.Txt
  loc_1085711:   Call 0.Method_Proc_12_30_10857FC0 (CInt(0), var_A8, var_AC, "Select Count(*) From BussSource Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1085743:   unk_45671F.Execute var_D0 & var_AC & "' And Name<>'" & global_64 & "'", 0, var_E4
  loc_1085753:    = var_D0.Item(var_A8)
  loc_108575B:    = var_E4.Value
  loc_1085790:   If (var_A8.Text.Fields > 0) Then
  loc_10857B4:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_10857CF:     Set var_90 = Me.Txt
  loc_10857D5:     Call 0.Method_Proc_12_30_10857FC0 (CInt(0))
  loc_10857DD:     var_A8.SetFocus
  loc_10857EE:     Proc_12_30_10857FC = &HFF
  loc_10857F4:   End If
  loc_10857F4: End If
  loc_10857F4: Proc_12_30_10857FC = var_A8
End Sub

Public Sub Proc_12_31_E86BD8
  'Data Table: 45670C
  loc_E86B84: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E86B96:   Me.DGHelp.Visible = False
  loc_E86B9E: End If
  loc_E86BBA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E86BCC:   Me.FGPoint.Visible = False
  loc_E86BD4: End If
  loc_E86BD4: Exit Sub
End Sub

Public Sub Proc_12_32_E90F68(arg_C) 'E90F68
  'Data Table: 45670C
  Dim var_10C As TextBox
  loc_E90EFC: Call Proc_12_31_E86BD8()
  loc_E90F38: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E90F3B:   Call TopCtrl1_UnknownEvent_16()
  loc_E90F43: Else
  loc_E90F4D:   Set var_108 = Me.Txt
  loc_E90F53:   Call 0.Method_Proc_12_32_E90F680 (arg_C)
  loc_E90F5B:   var_10C.SetFocus
  loc_E90F67: End If
  loc_E90F67: Exit Sub
End Sub
