VERSION 5.00
Begin VB.Form FrmEventMast
  Caption = "Event Type"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmEventMast.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2955
    Top = 1890
    Width = 1005
    Height = 285
    Text = "Active"
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2955
    Top = 1575
    Width = 4005
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
  Begin MSFlexGrid FGPoint
    Left = 8055
    Top = 2445
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGHelp
    Left = 2940
    Top = 2175
    Width = 4170
    Height = 3300
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 450
    TabIndex = 5
  End
  Begin Label LblHelp
    Caption = "Help"
    ForeColor = &HC0&
    Left = 705
    Top = 6225
    Width = 14190
    Height = 1575
    TabIndex = 10
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 405
    Top = 8235
    Width = 2520
    Height = 255
    TabIndex = 9
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 390
    Top = 8565
    Width = 2430
    Height = 285
    TabIndex = 8
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
  Begin Label LbStatus
    Caption = "Status"
    Index = 1
    ForeColor = &HFF0000&
    Left = 1830
    Top = 1890
    Width = 585
    Height = 240
    TabIndex = 7
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 15
    Top = 420
    Width = 180
    Height = 540
    TabIndex = 6
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
    Caption = "Event Type"
    Index = 0
    ForeColor = &HFF0000&
    Left = 1830
    Top = 1560
    Width = 1050
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

Attribute VB_Name = "FrmEventMast"


Private Sub FGPoint_UnknownEvent_9 'E36974
  'Data Table: 457438
  Dim MeFF As Integer
  loc_E36968: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3696B:   Call DGHelp_UnknownEvent_9()
  loc_E36970: End If
  loc_E36970: Exit Sub
  loc_E36971: MeFF = 
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE4BBC
  'Data Table: 457438
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE4B13: Me.DGHelp.Visible = False
  loc_EE4B32: If (Me.RecordCount > 0) Then
  loc_EE4B52:   var_B0 = Me.Fields.Item("Name")
  loc_EE4B71:   Set var_B4 = Me.Txt
  loc_EE4B77:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE4B7F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE4B95: End If
  loc_EE4BA0: Set var_A8 = Me.Txt
  loc_EE4BA6: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE4BAE: var_B0.SetFocus
  loc_EE4BBA: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E73198
  'Data Table: 457438
  loc_E73156: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E7316D: Set var_8C = Me.FGPoint
  loc_E73189: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0))
  loc_E73197: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EF0118
  'Data Table: 457438
  Dim var_8C As Label
  Dim var_96 As Integer
  Dim Me As Recordset15
  loc_EF0056: Set var_88 = Me.Txt
  loc_EF005C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EF006A: Proc_6_74_E226B0(var_8C)
  loc_EF0076: Call Proc_115_29_E85630(var_8C)
  loc_EF009C: Me.LblHelp.Caption = Proc_6_154_EE76D0(Me)
  loc_EF00AE: var_96 = Index
  loc_EF00B9: If (var_96 = CInt(0)) Then
  loc_EF00D3:   If (Me.RecordCount > 0) Then
  loc_EF00E1:     Set var_8C = Me.FGPoint
  loc_EF00F9:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_EF0107:   End If
  loc_EF010A: Else
  loc_EF0112:   If (var_96 = CInt(1)) Then
  loc_EF0115:   End If
  loc_EF0115: End If
  loc_EF0115: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FBF920
  'Data Table: 457438
  Dim Me As Recordset15
  loc_FBF782: If (CLng(Shift) = &H1B) Then
  loc_FBF785:   Call Proc_115_29_E85630()
  loc_FBF78A:   Exit Sub
  loc_FBF78B: End If
  loc_FBF799: If (KeyCode = CInt(0)) Then
  loc_FBF7B9:   Set var_9C = Me.FGPoint
  loc_FBF7EB:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_FBF858:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FBF85F:     Set var_9C = Me.DGHelp
  loc_FBF87E:     Proc_6_138_106D6F8(var_9C, global_56, KeyCode, Me.FGPoint, 0)
  loc_FBF88C:   End If
  loc_FBF88C: End If
  loc_FBF8A8: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FBF8C9:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_FBF8CF:     Call Proc_115_31_E8F1E0(KeyCode, 1, var_9C)
  loc_FBF8D7:   Else
  loc_FBF8EC:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FBF8F5:       Proc_6_75_E527CC(Shift, arg_14)
  loc_FBF8FD:     Else
  loc_FBF910:       If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FBF919:         Proc_6_76_E52838(Shift, arg_14)
  loc_FBF91E:       End If
  loc_FBF91E:     End If
  loc_FBF91E:   End If
  loc_FBF91E: End If
  loc_FBF91E: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EFEF00
  'Data Table: 457438
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_EFEE36: If (KeyAscii = CInt(1)) Then
  loc_EFEE62:   If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_EFEE72:     Set var_CC = Me.Txt
  loc_EFEE78:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFEE80:     var_D0.Text = "Active"
  loc_EFEE8F:   Else
  loc_EFEE96:     var_98 = Chr(CLng(arg_10))
  loc_EFEEB8:     If (Ucase(var_98) = "N") Then
  loc_EFEEC8:       Set var_CC = Me.Txt
  loc_EFEECE:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFEED6:       var_D0.Text = "Non Active"
  loc_EFEEE2:     End If
  loc_EFEEE2:   End If
  loc_EFEEE4:   arg_10 = 0
  loc_EFEEE7: End If
  loc_EFEEED: Proc_6_133_E7EF78(var_98, arg_10)
  loc_EFEEF6: arg_10 = CInt(var_98)
  loc_EFEEFC: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC4430
  'Data Table: 457438
  loc_EC43A2: If (KeyCode = CInt(0)) Then
  loc_EC43C1:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC43CE:     var_A4 = "Name"
  loc_EC43ED:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_56)
  loc_EC441F:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC442D:   End If
  loc_EC442D: End If
  loc_EC442D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48A44
  'Data Table: 457438
  loc_E48A22: Set var_88 = Me.Txt
  loc_E48A28: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48A36: Proc_6_73_E22704(var_8C)
  loc_E48A42: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F023A8
  'Data Table: 457438
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As TextBox
  loc_F022D3: var_86 = Cancel
  loc_F022DE: If (var_86 = CInt(0)) Then
  loc_F022E4:   Call Proc_115_32_108CE1C(var_88)
  loc_F022EF:   If (var_88 = &HFF) Then
  loc_F022F4:     arg_10 = &HFF
  loc_F022F7:     Exit Sub
  loc_F022F8:   End If
  loc_F022FB: Else
  loc_F02303:   If (var_86 = CInt(1)) Then
  loc_F02310:     Set var_8C = Me.Txt
  loc_F02316:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F02351:     If (Ucase(Left(CVar(var_90), 1)) = "Active") Then
  loc_F02361:       Set var_8C = Me.Txt
  loc_F02367:       Call 0.Method_Txt_Validate0 (Cancel, var_90, "Active")
  loc_F0236F:       var_90.Text = arg_10
  loc_F0237E:     Else
  loc_F0238B:       Set var_8C = Me.Txt
  loc_F02391:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F02399:       var_90.Text = "Non Active"
  loc_F023A5:     End If
  loc_F023A5:   End If
  loc_F023A5: End If
  loc_F023A5: Exit Sub
End Sub

Private Sub Form_Load() '107D0E0
  'Data Table: 457438
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_D8 As Variant
  Dim var_C8 As String
  Dim unk_457445 As Connection15
  Dim var_3FA8 As Variant
  loc_107CE50: On Error Goto loc_107D099
  loc_107CE5A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_107CE6E: Me.LblUser.Left = CDbl(13500)
  loc_107CE85: Me.LblUser.Top = CDbl(7800)
  loc_107CE9C: Me.LblLDt.Top = CDbl(8160)
  loc_107CEB3: Me.LblLDt.Left = CDbl(13500)
  loc_107CEC9: Set var_8C = Me.Txt
  loc_107CECF: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107CEEE: Me.DGHelp.Left = CVar(var_90.Left)
  loc_107CF0A: Set var_B8 = Me.Txt
  loc_107CF10: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_107CF2B: Set var_8C = Me.Txt
  loc_107CF31: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107CF49: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_107CF58: Me.DGHelp.Top = CVar(var_90.Left)
  loc_107CF74: Set var_8C = Me.TopCtrl1
  loc_107CF7A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_107CF88: Call 0.Method_arg_50 (var_C8)
  loc_107CF90: var_D8 = CVar(var_C8) 'String
  loc_107CF9E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D8)
  loc_107CFCD: unk_457445.Execute "SELECT Code,Name FROM FunctionType where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107CFFC: CVarUnk
  loc_107D001: VerifyVarObj
  loc_107D00D: LateIdStAd
  loc_107D03F: unk_457445.Execute "SELECT * FROM FunctionType WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107D07A: var_C8 = "INI"
  loc_107D088: Call Proc_115_28_E78D4C(Proc_5_1_100CB50(var_C8, Me, Me.DGHelp, Me), Me)
  loc_107D093: Call Proc_115_30_120CCCC(Me.TopCtrl1)
  loc_107D098: Exit Sub
  loc_107D099: ' Referenced from: 107CE50
  loc_107D0A7: Call 0.Method_arg_2C (var_C8)
  loc_107D0C8: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_107D0DB: Exit Sub
  loc_107D0DC: Exit Sub
  loc_107D0DD: var_3FA8 = CVar(Err()) 'Long
End Sub

Private Sub Form_Resize() 'ED2C68
  'Data Table: 457438
  Dim var_8C As Label
  loc_ED2BC6: Call 0.Method_arg_50 (var_88)
  loc_ED2BD8: Me.LblFormCaption.Caption = var_88
  loc_ED2BF1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED2BFD: Set var_A0 = Me.TopCtrl1
  loc_ED2C03: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED2C10: Set var_8C = Me.TopCtrl1
  loc_ED2C16: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED2C30: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED2C4B: Call 0.Method_arg_100 (var_B8)
  loc_ED2C5D: Me.LblFormCaption.Width = var_B8
  loc_ED2C65: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E27780
  'Data Table: 457438
  loc_E27763: Set global_52 = Nothing
  loc_E27775: Set global_56 = Nothing
  loc_E2777C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E89898
  'Data Table: 457438
  loc_E89834: On Error Goto loc_E89854
  loc_E8984B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E89853: Exit Sub
  loc_E89854: ' Referenced from: E89834
  loc_E8985C: Set var_88 = Err()
  loc_E89862: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E89883: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E89896: Exit Sub
  loc_E89897: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAB3EC
  'Data Table: 457438
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EAB360: On Error Goto loc_EAB3E6
  loc_EAB370: Me.LblUser.Caption = vbNullString
  loc_EAB385: Me.LblLDt.Caption = vbNullString
  loc_EAB3B0: Call Proc_115_28_E78D4C(Proc_5_1_100CB50("ADD", Me))
  loc_EAB3BB: Call Proc_115_27_ED93A0(global_52)
  loc_EAB3CB: Set var_88 = Me.Txt
  loc_EAB3D1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EAB3D9: var_94.SetFocus
  loc_EAB3E5: Exit Sub
  loc_EAB3E6: ' Referenced from: EAB360
  loc_EAB3E6: Proc_6_60_E62BC4(var_94)
  loc_EAB3EB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC5F4C
  'Data Table: 457438
  loc_EC5EB4: On Error Goto loc_EC5F44
  loc_EC5EEE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC5EFD:   Set var_110 = Me
  loc_EC5F14:   Call Proc_115_28_E78D4C(Proc_5_1_100CB50("INI", var_110))
  loc_EC5F1F:   Call Proc_115_29_E85630(global_52)
  loc_EC5F24:   Call Proc_115_30_120CCCC()
  loc_EC5F2C: Else
  loc_EC5F32:   Call 0.Method_arg_1E8 (var_110)
  loc_EC5F3A:   Call var_110.SetFocus
  loc_EC5F43: End If
  loc_EC5F43: Exit Sub
  loc_EC5F44: ' Referenced from: EC5EB4
  loc_EC5F44: Proc_6_60_E62BC4()
  loc_EC5F49: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '119B27C
  'Data Table: 457438
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_457445 As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_119AEA0: On Error Goto loc_119B225
  loc_119AEB1: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_119AEB4:   Exit Sub
  loc_119AEB5: End If
  loc_119AEE7: var_D4 = "Booking Inquiry"
  loc_119AF2F: If (Proc_6_108_1010FEC(MemVar_1F92044, "BookingInquiry", "FuncType", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_119AF32:   Exit Sub
  loc_119AF33: End If
  loc_119AF65: var_D4 = "Banquet Booking"
  loc_119AFAD: If (Proc_6_108_1010FEC(MemVar_1F92044, "HallBook", "Func_Name", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_119AFB0:   Exit Sub
  loc_119AFB1: End If
  loc_119AFE8: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_119AFED:   var_96 = 0
  loc_119AFF9:   unk_457445.BeginTrans var_D0
  loc_119B000:   var_96 = &HFF
  loc_119B014:   var_94 = Me.Bookmark 'Variant
  loc_119B060:   var_118 = "Delete From FunctionType Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_119B06E:   unk_457445.Execute CStr(var_118), var_138, -1
  loc_119B0B9:   var_168 = 0
  loc_119B0CC:   var_160 = 0
  loc_119B0D7:   var_15C = 0
  loc_119B0EA:   var_154 = 0
  loc_119B0F5:   var_150 = 0
  loc_119B108:   var_148 = 0
  loc_119B148:   var_B4 = "FunctionType"
  loc_119B151:   Proc_154_5_10E33A4(MemVar_1F92044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_119B17F:   unk_457445.CommitTrans
  loc_119B186:   var_96 = 0
  loc_119B194:   Me.Requery -1
  loc_119B1A4:   Me.Requery -1
  loc_119B1C4:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_119B1D1:     Me.Bookmark = var_94
  loc_119B1D9:   Else
  loc_119B1ED:     If (Me.EOF = 0) Then
  loc_119B1F6:       Me.MoveLast
  loc_119B1FB:     End If
  loc_119B1FB:   End If
  loc_119B1FB:   Call Proc_115_30_120CCCC(var_96, var_148, 0, var_150, var_154)
  loc_119B21C:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_119B224: End If
  loc_119B224: Exit Sub
  loc_119B225: ' Referenced from: 119AEA0
  loc_119B22B: If (var_96 = &HFF) Then
  loc_119B234:   unk_457445.RollbackTrans
  loc_119B239: End If
  loc_119B241: Set var_9C = Err()
  loc_119B247: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_119B268: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_119B27B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF0334
  'Data Table: 457438
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EF0264: On Error Goto loc_EF032C
  loc_EF0275: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_EF0278:   Exit Sub
  loc_EF0279: End If
  loc_EF029C: Call Proc_115_28_E78D4C(Proc_5_1_100CB50("EDIT", Me))
  loc_EF02B5: Set var_8C = Me.Txt
  loc_EF02BB: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF02CE: global_68 = var_94.Text
  loc_EF02E7: Set var_8C = Me.Txt
  loc_EF02ED: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF02F5: var_94.SetFocus
  loc_EF030E: Me.LblUser.Caption = vbNullString
  loc_EF0323: Me.LblLDt.Caption = vbNullString
  loc_EF032B: Exit Sub
  loc_EF032C: ' Referenced from: EF0264
  loc_EF032C: Proc_6_60_E62BC4(global_52)
  loc_EF0331: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E186E4
  'Data Table: 457438
  loc_E186D9: Me.Global.Unload Me
  loc_E186E1: Exit Sub
  loc_E186E2: CopyBytes -16129
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F27D98
  'Data Table: 457438
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F27C98: On Error Goto loc_F27D30
  loc_F27CA4: var_88 = Me.RecordCount
  loc_F27CB2: If (var_88 <= 0) Then
  loc_F27CBB:   var_B8 = "Information"
  loc_F27CD6:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F27CE6:   Exit Sub
  loc_F27CE7: End If
  loc_F27CF5: MemVar_1F920E4 = "Select FunctionType.Code As SearchCode,FunctionType.Name,Status FROM FunctionType WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by FunctionType.Name"
  loc_F27D02: MemVar_1F92120 = Me
  loc_F27D09: var_10C = "4000,1300"
  loc_F27D0F: Proc_6_126_F1BCC0(var_10C)
  loc_F27D2A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F27D2F: Exit Sub
  loc_F27D30: ' Referenced from: F27C98
  loc_F27D38: Set var_110 = Err()
  loc_F27D3E: Call 0.Method_arg_1C (var_88)
  loc_F27D4F: If (var_88 <> 0) Then
  loc_F27D5A:   Set var_110 = Err()
  loc_F27D60:   Call 0.Method_arg_2C (var_10C)
  loc_F27D81:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F27D94: End If
  loc_F27D94: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E36C18
  'Data Table: 457438
  loc_E36C08: Proc_5_0_110649C(&HFF, Me)
  loc_E36C10: Call Proc_115_30_120CCCC(global_52)
  loc_E36C15: Exit Sub
  loc_E36C16: Set var_4000 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E36FD8
  'Data Table: 457438
  loc_E36FC8: Proc_5_0_110649C(&HFF, Me)
  loc_E36FD0: Call Proc_115_30_120CCCC(global_52)
  loc_E36FD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3B7D8
  'Data Table: 457438
  loc_E3B7C8: Proc_5_0_110649C(&HFF, Me)
  loc_E3B7D0: Call Proc_115_30_120CCCC(global_52)
  loc_E3B7D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3B838
  'Data Table: 457438
  loc_E3B828: Proc_5_0_110649C(&HFF, Me)
  loc_E3B830: Call Proc_115_30_120CCCC(global_52)
  loc_E3B835: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1084364
  'Data Table: 457438
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_457445 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_10840CC: On Error Goto loc_1084318
  loc_10840F3: unk_457445.Execute "select * FROM FunctionType WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_10840FE: Set var_88 = var_C8
  loc_1084114: var_CC = var_88.RecordCount
  loc_1084122: If (var_CC = 0) Then
  loc_108413E:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108414E:   Exit Sub
  loc_108414F: End If
  loc_108415E: var_A4 = MemVar_1F920B4 & "\EventMast.ttx"
  loc_1084165: Set var_C8 = var_88 
  loc_1084171: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108417B: Set var_88 = var_C8
  loc_1084181: var_B4 = CVar(var_12E) 'Integer
  loc_1084184: var_98 = var_B4 'Variant
  loc_10841A0: var_A0 = MemVar_1F920B4 & "\EventMast.RPT"
  loc_10841A9: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_10841B4: MemVar_1F921E4 = var_C8
  loc_10841CF: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_10841D7: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10841E3: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_10841FC:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1084204:   Call 0.Method_arg_20 (var_138)
  loc_108420C:   Call 0.Method_arg_30 (var_A0)
  loc_1084252:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1084268:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1084270:     Call 0.Method_arg_20 (var_138)
  loc_1084278:     Call 0.Method_arg_38 ("'Event Type'")
  loc_1084284:   End If
  loc_1084287: Next var_132 'Integer
  loc_10842A5: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_10842AD: Call 0.Method_arg_2C (var_DC)
  loc_10842BB: Call 0.Method_arg_150 (var_FC)
  loc_10842C6: Call 0.Method_arg_50 (var_A0)
  loc_10842D0: Set var_138 = Nothing
  loc_10842EA: Set var_C8 = MemVar_1F921E4 
  loc_10842F6: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_1084301: MemVar_1F921E4 = var_C8
  loc_1084314: Set var_88 = Nothing
  loc_1084317: Exit Sub
  loc_1084318: ' Referenced from: 10840CC
  loc_1084320: Set var_C8 = Err()
  loc_1084326: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1084331: Call 0.Method_arg_50 (var_A4)
  loc_108434D: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1084360: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E09E64
  'Data Table: 457438
  Dim Me As Recordset15
  loc_E09E5B: Me.Requery -1
  loc_E09E60: Exit Sub
  loc_E09E61: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1250848
  'Data Table: 457438
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_457445 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_11C As String
  Dim var_114 As TextBox
  Dim var_E4 As Variant
  Dim var_118 As String
  Dim var_B0 As Variant
  loc_125032C: On Error Goto loc_12507F5
  loc_1250333: var_86 = CByte(0) 'Byte
  loc_1250342: Set var_90 = Me.Txt
  loc_1250348: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1250371: If (Proc_6_27_EA565C(var_94, "Name") = 0) Then
  loc_125037B:   Call Txt_GotFocus(CInt(0))
  loc_1250380:   Exit Sub
  loc_1250381: End If
  loc_1250384: Call Proc_115_32_108CE1C(var_9E)
  loc_125038F: If (var_9E = &HFF) Then
  loc_1250392:   Exit Sub
  loc_1250393: End If
  loc_1250397: Set var_90 = Me.TopCtrl1
  loc_125039D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_12503B6: If (CStr() = "Add") Then
  loc_12503BF:   var_D4 = 0
  loc_12503DC:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From FunctionType Where Site_Code='" & MemVar_1F92070
  loc_12503E3:   var_B4 = CStr() & "'"
  loc_12503EC:   unk_457445.Execute var_B4, var_B0, -1
  loc_12503F4:   var_90 = var_90.Fields
  loc_12503FC:   var_D4 = var_94.Item(var_94)
  loc_1250404:   var_98 = var_98.Value
  loc_125043D:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_125046B:   var_108 = (1 + Format(CStr(var_E4), "000"))
  loc_1250476:   global_64 = CStr(var_108)
  loc_125048B: Else
  loc_12504A8:   var_94 = Me.Fields.Item("Code")
  loc_12504B0:   var_B0 = var_94.Value
  loc_12504BF:   global_64 = CStr(var_B0)
  loc_12504D0: End If
  loc_12504D9: unk_457445.BeginTrans var_10C
  loc_12504E2: var_86 = CByte(1) 'Byte
  loc_12504EA: Set var_90 = Me.TopCtrl1
  loc_12504F0: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1250509: If (CStr(var_F8) = "Add") Then
  loc_1250523:   var_9C = "Insert Into FunctionType(Code,Name,Status,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_64
  loc_125052A:   var_E8 = var_9C & "','"
  loc_125053B:   Set var_90 = Me.Txt
  loc_1250541:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_E8)
  loc_1250549:   var_194 = var_94.Text
  loc_1250552:   var_110 = -1 & var_B4
  loc_1250559:   var_11C = var_110 & "','"
  loc_125056A:   Set var_98 = Me.Txt
  loc_1250570:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_118)
  loc_1250578:   var_11C = var_114.Text
  loc_12505A4:   var_E4 = CVar(var_198 & var_118 & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") 'String
  loc_12505B2:   Proc_183_7_EB0C44(var_B0, MemVar_1F920EC)
  loc_12505E4:   unk_457445.Execute CStr(var_E4 & var_B0 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_E4, 
  loc_1250625: Else
  loc_1250643:   Set var_90 = Me.Txt
  loc_1250649:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE FunctionType SET Name='")
  loc_1250651:   var_194 = var_94.Text
  loc_125065A:   var_B4 = -1 & var_9C
  loc_1250661:   var_110 = var_B4 & "',Status='"
  loc_1250672:   Set var_98 = Me.Txt
  loc_1250678:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_E8)
  loc_1250680:   var_110 = var_114.Text
  loc_12506AC:   var_E4 = CVar(var_198 & var_E8 & "',SITE_CODE='" & MemVar_1F92070 & "',U_name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_12506B2:   var_C4 = MemVar_1F920EC
  loc_12506BA:   Proc_183_7_EB0C44(var_B0, var_C4)
  loc_12506C2:   var_F8 = var_E4 & var_B0 
  loc_12506CB:   var_108 = var_F8 & " ,U_AE='E' WHERE Code='" 
  loc_12506EF:   unk_457445.Execute CStr(var_108 & CVar(global_64) & "'"), , 
  loc_1250729: End If
  loc_125072F: unk_457445.CommitTrans
  loc_1250738: var_86 = CByte(0) 'Byte
  loc_1250747: Me.Requery -1
  loc_1250757: Me.Requery -1
  loc_1250784: Me.Find "Code='" & global_64 & "'", 0, 1
  loc_1250794: Set var_90 = Me.TopCtrl1
  loc_125079A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_12507B3: If (CStr() = "Add") Then
  loc_12507B6:   Call TopCtrl1_UnknownEvent_A()
  loc_12507BB:   Exit Sub
  loc_12507BC: End If
  loc_12507D1: var_9C = "INI"
  loc_12507DF: Call Proc_115_28_E78D4C(Proc_5_1_100CB50(var_9C, Me))
  loc_12507EA: Call Proc_115_29_E85630(global_52)
  loc_12507EF: Call Proc_115_30_120CCCC()
  loc_12507F4: Exit Sub
  loc_12507F5: ' Referenced from: 125032C
  loc_12507FE: If (CInt(var_86) = 1) Then
  loc_1250807:   unk_457445.RollbackTrans
  loc_125080C: End If
  loc_1250814: Set var_90 = Err()
  loc_125081A: Call 0.Method_arg_2C (var_9C)
  loc_1250833: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_1250846: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC4964
  'Data Table: 457438
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC48DA: On Error Goto loc_EC491F
  loc_EC48E3: Me.MoveFirst
  loc_EC48FD: var_8C = "code='" & MyValue
  loc_EC490D: Me.Find var_8C & "'", 0, 1
  loc_EC4919: Call Proc_115_30_120CCCC(var_A0)
  loc_EC491E: Exit Sub
  loc_EC491F: ' Referenced from: EC48DA
  loc_EC4927: Set var_A4 = Err()
  loc_EC492D: Call 0.Method_arg_2C (var_8C)
  loc_EC494E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC4961: Exit Sub
  loc_EC4962: Exit Sub
End Sub

Public Sub Proc_115_27_ED93A0
  'Data Table: 457438
  Dim var_98 As TextBox
  loc_ED92EA: global_68 = vbNullString
  loc_ED92FC: Set var_8C = Me.Txt
  loc_ED9302: Call 0.Method_Proc_115_27_ED93A0C (var_8E, var_86)
  loc_ED9312: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_ED9328:   Set var_8C = Me.Txt
  loc_ED932E:   Call 0.Method_Proc_115_27_ED93A00 (CInt(var_86), var_98)
  loc_ED9336:   var_98.Text = vbNullString
  loc_ED9352:   Set var_8C = Me.Txt
  loc_ED9358:   Call 0.Method_Proc_115_27_ED93A00 (CInt(var_86), var_98)
  loc_ED9360:   var_98.Tag = vbNullString
  loc_ED936F: Next var_92 'Byte
  loc_ED9383: Set var_8C = Me.Txt
  loc_ED9389: Call 0.Method_Proc_115_27_ED93A00 (CInt(1), var_98)
  loc_ED9391: var_98.Text = "Active"
  loc_ED939D: Exit Sub
  loc_ED939E: Loop Until  'do at: ED53B8
End Sub

Public Sub Proc_115_28_E78D4C(arg_C) 'E78D4C
  'Data Table: 457438
  Dim var_98 As TextBox
  loc_E78CFA: Set var_8C = Me.Txt
  loc_E78D00: Call 0.Method_Proc_115_28_E78D4CC (var_8E, var_86)
  loc_E78D10: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78D26:   Set var_8C = Me.Txt
  loc_E78D2C:   Call 0.Method_Proc_115_28_E78D4C0 (CInt(var_86), var_98)
  loc_E78D34:   var_98.Enabled = arg_C
  loc_E78D43: Next var_92 'Byte
  loc_E78D49: Exit Sub
End Sub

Public Sub Proc_115_29_E85630
  'Data Table: 457438
  loc_E855DC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E855EE:   Me.DGHelp.Visible = False
  loc_E855F6: End If
  loc_E85612: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E85624:   Me.FGPoint.Visible = False
  loc_E8562C: End If
  loc_E8562C: Exit Sub
End Sub

Public Sub Proc_115_30_120CCCC
  'Data Table: 457438
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim unk_457445 As Connection15
  Dim var_88 As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As TextBox
  loc_120C83C: On Error Goto loc_120CC87
  loc_120C845: Proc_183_45_E5C118(global_52)
  loc_120C861: If (Me.RecordCount <= 0) Then
  loc_120C864:   Call Proc_115_27_ED93A0()
  loc_120C86C: Else
  loc_120C8C2:   unk_457445.Execute CStr("Select U_Name,U_AE,U_EntDt From FunctionType where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1
  loc_120C8CD:   Set var_88 = var_11C
  loc_120C921:   var_11C = var_88.Fields
  loc_120C98A:   var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_11C.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_120C9CF:   Me.LblUser.Caption = CStr(var_11C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_120CA49:   var_120 = var_88.Fields.Item("U_AE")
  loc_120CA62:   var_118 = "entdt :   "
  loc_120CA6D:   var_F4 = "Last Update :   "
  loc_120CAAA:   var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_120)) = "E"), var_F4, var_118))
  loc_120CAEF:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_120CB5B:   global_64 = CStr(Me.Fields.Item("Name").Value)
  loc_120CBA6:   Set var_11C = Me.Txt
  loc_120CBAC:   Call 0.Method_Proc_115_30_120CCCC0 (0, var_120)
  loc_120CBB4:   var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_120CC04:   Set var_11C = Me.Txt
  loc_120CC0A:   Call 0.Method_Proc_115_30_120CCCC0 (0, var_120)
  loc_120CC12:   var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_120CC53:   var_F8 = Proc_6_38_E68A98(CVar(Me.Fields.Item("Status")))
  loc_120CC5F:   Set var_11C = Me.Txt
  loc_120CC65:   Call 0.Method_Proc_115_30_120CCCC0 (1, var_120)
  loc_120CC6D:   var_120.Text = var_F8
  loc_120CC81: End If
  loc_120CC81: Call Proc_115_29_E85630()
  loc_120CC86: Exit Sub
  loc_120CC87: ' Referenced from: 120C83C
  loc_120CC8F: Set var_90 = Err()
  loc_120CC95: Call 0.Method_arg_2C (var_F8)
  loc_120CCB6: MsgBox(CVar(var_F8), &H40, "Information", var_F4, var_118)
  loc_120CCC9: Exit Sub
End Sub

Public Sub Proc_115_31_E8F1E0(arg_C) 'E8F1E0
  'Data Table: 457438
  Dim var_10C As TextBox
  loc_E8F174: Call Proc_115_29_E85630()
  loc_E8F1B0: If (MsgBox("Save This Event ?", 4, "Save Event", var_E4, var_104) = 6) Then
  loc_E8F1B3:   Call TopCtrl1_UnknownEvent_16()
  loc_E8F1BB: Else
  loc_E8F1C5:   Set var_108 = Me.Txt
  loc_E8F1CB:   Call 0.Method_Proc_115_31_E8F1E00 (arg_C)
  loc_E8F1D3:   var_10C.SetFocus
  loc_E8F1DF: End If
  loc_E8F1DF: Exit Sub
End Sub

Public Sub Proc_115_32_108CE1C
  'Data Table: 457438
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_457445 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108CBAF: If (Me.RecordCount = 0) Then
  loc_108CBB2:   Proc_115_32_108CE1C = 
  loc_108CBB8: End If
  loc_108CBBC: Set var_90 = Me.TopCtrl1
  loc_108CBC2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_108CBDB: If (CStr() = "Add") Then
  loc_108CC19:   Set var_90 = Me.Txt
  loc_108CC1F:   Call 0.Method_Proc_115_32_108CE1C0 (CInt(0), var_A8, var_AC, "Select Count(*) From FunctionType Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108CC40:   unk_457445.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_108CC50:    = var_D0.Item()
  loc_108CC58:    = var_E4.Value
  loc_108CC89:   If (var_A8.Text.Fields > 0) Then
  loc_108CCA7:     var_A0 = "Duplicate Name"
  loc_108CCAD:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_108CCC8:     Set var_90 = Me.Txt
  loc_108CCCE:     Call 0.Method_Proc_115_32_108CE1C0 (CInt(0))
  loc_108CCD6:     var_A8.SetFocus
  loc_108CCE7:     Proc_115_32_108CE1C = &HFF
  loc_108CCED:   End If
  loc_108CCF0: Else
  loc_108CD2B:   Set var_90 = Me.Txt
  loc_108CD31:   Call 0.Method_Proc_115_32_108CE1C0 (CInt(0), var_A8, var_AC, "Select Count(*) From FunctionType Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108CD63:   unk_457445.Execute var_D0 & var_AC & "' And Name<>'" & global_68 & "'", 0, var_E4
  loc_108CD73:    = var_D0.Item(var_A8)
  loc_108CD7B:    = var_E4.Value
  loc_108CDB0:   If (var_A8.Text.Fields > 0) Then
  loc_108CDD4:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108CDEF:     Set var_90 = Me.Txt
  loc_108CDF5:     Call 0.Method_Proc_115_32_108CE1C0 (CInt(0))
  loc_108CDFD:     var_A8.SetFocus
  loc_108CE0E:     Proc_115_32_108CE1C = &HFF
  loc_108CE14:   End If
  loc_108CE14: End If
  loc_108CE14: Proc_115_32_108CE1C = var_A8
End Sub
