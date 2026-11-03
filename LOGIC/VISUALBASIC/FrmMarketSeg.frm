VERSION 5.00
Begin VB.Form FrmMarketSeg
  Caption = "Market Segment Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 10680
  ClientHeight = 8535
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3480
    Top = 2535
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
    Width = 10680
    Height = 420
    TabIndex = 8
  End
  Begin MSFlexGrid FGPoint
    Left = 7665
    Top = 1575
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 4
  End
  Begin DataGrid DGHelp
    Left = 7800
    Top = 3300
    Width = 4245
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3480
    Top = 2235
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
  Begin Label LblLedgerAc
    Caption = "Active"
    Index = 6
    ForeColor = &HC00000&
    Left = 2820
    Top = 2535
    Width = 585
    Height = 240
    TabIndex = 10
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 1
    ForeColor = &H80&
    Left = 4110
    Top = 2565
    Width = 825
    Height = 225
    TabIndex = 9
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4620
    Top = 4980
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
    Left = 1230
    Top = 4980
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
    Top = 360
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
    Caption = "Market Segment Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1230
    Top = 2235
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

Attribute VB_Name = "FrmMarketSeg"


Private Sub FGPoint_UnknownEvent_9 'E30A34
  'Data Table: 453F90
  loc_E30A28: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E30A2B:   Call DGHelp_UnknownEvent_9()
  loc_E30A30: End If
  loc_E30A30: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE67BC
  'Data Table: 453F90
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE6713: Me.DGHelp.Visible = False
  loc_EE6732: If (Me.RecordCount > 0) Then
  loc_EE6752:   var_B0 = Me.Fields.Item("Name")
  loc_EE6771:   Set var_B4 = Me.Txt
  loc_EE6777:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE677F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE6795: End If
  loc_EE67A0: Set var_A8 = Me.Txt
  loc_EE67A6: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE67AE: var_B0.SetFocus
  loc_EE67BA: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA7BE0
  'Data Table: 453F90
  Dim var_A8 As Variant
  loc_EA7B60: Set var_88 = Me.DGHelp
  loc_EA7B8A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7B92: Set var_BC = Me.DGHelp
  loc_EA7BCE: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0), Me.FGPoint)
  loc_EA7BDC: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EAC6AC
  'Data Table: 453F90
  Dim Me As Recordset15
  loc_EAC62A: Set var_88 = Me.Txt
  loc_EAC630: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EAC63E: Proc_6_74_E226B0(var_8C)
  loc_EAC64A: Call Proc_14_31_E863F8(var_8C)
  loc_EAC65D: If (Index = CInt(0)) Then
  loc_EAC677:   If (Me.RecordCount > 0) Then
  loc_EAC685:     Set var_8C = Me.FGPoint
  loc_EAC69D:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_EAC6AB:   End If
  loc_EAC6AB: End If
  loc_EAC6AB: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FD3410
  'Data Table: 453F90
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As TextBox
  loc_FD3256: If (CLng(Shift) = &H1B) Then
  loc_FD3259:   Call Proc_14_31_E863F8()
  loc_FD325E:   Exit Sub
  loc_FD325F: End If
  loc_FD326D: If (KeyCode = CInt(0)) Then
  loc_FD328D:   Set var_9C = Me.FGPoint
  loc_FD32BF:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_FD332C:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FD3333:     Set var_9C = Me.DGHelp
  loc_FD333A:     Set var_90 = Me.FGPoint
  loc_FD3352:     Proc_6_138_106D6F8(var_9C, global_56, KeyCode, var_90, 0)
  loc_FD3360:   End If
  loc_FD3360: End If
  loc_FD337C: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FD339D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(1))) Then
  loc_FD33A6:     Call Txt_Validate(KeyCode)
  loc_FD33B1:     If (var_86 = &HFF) Then
  loc_FD33BF:       Set var_8C = Me.Txt
  loc_FD33C5:       Call 0.Method_Txt_KeyDown0 (CInt(0), var_90, var_86, 1)
  loc_FD33CD:       var_90.SetFocus
  loc_FD33D9:       Exit Sub
  loc_FD33DA:     End If
  loc_FD33E1:     Call Proc_14_32_E8E8BC(CInt(0), var_9C)
  loc_FD33E6:     Exit Sub
  loc_FD33EA:   Else
  loc_FD33FF:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FD3408:       Proc_6_75_E527CC(Shift, arg_14)
  loc_FD340D:     End If
  loc_FD340D:   End If
  loc_FD340D: End If
  loc_FD340D: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EFFB34
  'Data Table: 453F90
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  loc_EFFA62: Proc_6_133_E7EF78(var_94)
  loc_EFFA6B: arg_10 = CInt(var_94)
  loc_EFFA74: var_96 = KeyAscii
  loc_EFFA7F: If (var_96 = CInt(1)) Then
  loc_EFFAAB:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_EFFABB:     Set var_CC = Me.Txt
  loc_EFFAC1:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_EFFAC9:     var_D0.Text = var_96
  loc_EFFAD8:   Else
  loc_EFFB01:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_EFFB11:       Set var_CC = Me.Txt
  loc_EFFB17:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "No")
  loc_EFFB1F:       var_D0.Text = arg_10
  loc_EFFB2B:     End If
  loc_EFFB2B:   End If
  loc_EFFB2D:   arg_10 = 0
  loc_EFFB30: End If
  loc_EFFB30: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EBFC70
  'Data Table: 453F90
  loc_EBFBE2: If (KeyCode = CInt(0)) Then
  loc_EBFC01:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBFC0E:     var_A4 = "Name"
  loc_EBFC2D:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_56)
  loc_EBFC5F:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EBFC6D:   End If
  loc_EBFC6D: End If
  loc_EBFC6D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E5096C
  'Data Table: 453F90
  loc_E5094A: Set var_88 = Me.Txt
  loc_E50950: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E5095E: Proc_6_73_E22704(var_8C)
  loc_E5096A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E28F98
  'Data Table: 453F90
  Dim arg_10 As Integer
  loc_E28F7A: If (Cancel = CInt(0)) Then
  loc_E28F80:   Call Proc_14_30_108AAAC(var_88)
  loc_E28F8B:   If (var_88 = &HFF) Then
  loc_E28F90:     arg_10 = &HFF
  loc_E28F93:     Exit Sub
  loc_E28F94:   End If
  loc_E28F94: End If
  loc_E28F94: Exit Sub
  loc_E28F95: StUdtVar
End Sub

Private Sub Form_Load() '107EB2C
  'Data Table: 453F90
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_D8 As Variant
  Dim var_C8 As String
  Dim unk_453FA2 As Connection15
  loc_107E89C: On Error Goto loc_107EAE5
  loc_107E8AE: Me.LblUser.Left = CDbl(13500)
  loc_107E8C5: Me.LblUser.Top = CDbl(7800)
  loc_107E8DC: Me.LblLDt.Top = CDbl(8160)
  loc_107E8F3: Me.LblLDt.Left = CDbl(13500)
  loc_107E902: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_107E915: Set var_8C = Me.Txt
  loc_107E91B: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107E93A: Me.DGHelp.Left = CVar(var_90.Left)
  loc_107E956: Set var_B8 = Me.Txt
  loc_107E95C: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_107E977: Set var_8C = Me.Txt
  loc_107E97D: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107E995: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_107E9A4: Me.DGHelp.Top = CVar(var_90.Left)
  loc_107E9C0: Set var_8C = Me.TopCtrl1
  loc_107E9C6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_107E9D4: Call 0.Method_arg_50 (var_C8)
  loc_107E9DC: var_D8 = CVar(var_C8) 'String
  loc_107E9EA: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D8)
  loc_107EA19: unk_453FA2.Execute "SELECT Code,Name FROM MarketSeg WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107EA48: CVarUnk
  loc_107EA4D: VerifyVarObj
  loc_107EA59: LateIdStAd
  loc_107EA8B: unk_453FA2.Execute "SELECT * FROM MarketSeg WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107EAC6: var_C8 = "INI"
  loc_107EAD4: Call Proc_14_27_E7A804(Proc_5_1_100CB50(var_C8, Me, Me.DGHelp, Me), Me)
  loc_107EADF: Call Proc_14_29_120FFF8(Me.TopCtrl1)
  loc_107EAE4: Exit Sub
  loc_107EAE5: ' Referenced from: 107E89C
  loc_107EAED: Set var_8C = Err()
  loc_107EAF3: Call 0.Method_arg_2C (var_C8)
  loc_107EB14: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_107EB27: Exit Sub
  loc_107EB28: Exit Sub
  loc_107EB29: ThisVCallI2
End Sub

Private Sub Form_Resize() 'ED5788
  'Data Table: 453F90
  Dim var_8C As Label
  loc_ED56E6: Call 0.Method_arg_50 (var_88)
  loc_ED56F8: Me.LblFormCaption.Caption = var_88
  loc_ED5711: Me.LblFormCaption.Left = CDbl(0)
  loc_ED571D: Set var_A0 = Me.TopCtrl1
  loc_ED5723: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED5730: Set var_8C = Me.TopCtrl1
  loc_ED5736: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED5750: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED576B: Call 0.Method_arg_100 (var_B8)
  loc_ED577D: Me.LblFormCaption.Width = var_B8
  loc_ED5785: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E290A8
  'Data Table: 453F90
  loc_E2908B: Set global_52 = Nothing
  loc_E2909D: Set global_56 = Nothing
  loc_E290A4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E87BB4
  'Data Table: 453F90
  loc_E87B50: On Error Goto loc_E87B70
  loc_E87B67: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E87B6F: Exit Sub
  loc_E87B70: ' Referenced from: E87B50
  loc_E87B78: Set var_88 = Err()
  loc_E87B7E: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E87B9F: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E87BB2: Exit Sub
  loc_E87BB3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ED5884
  'Data Table: 453F90
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_ED57D0: On Error Goto loc_ED587E
  loc_ED57E0: Me.LblUser.Caption = vbNullString
  loc_ED57F5: Me.LblLDt.Caption = vbNullString
  loc_ED5820: Call Proc_14_27_E7A804(Proc_5_1_100CB50("ADD", Me))
  loc_ED582B: Call Proc_14_28_EAFB48(global_52)
  loc_ED583E: Set var_88 = Me.Txt
  loc_ED5844: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_ED584C: var_94.Text = "Yes"
  loc_ED5863: Set var_88 = Me.Txt
  loc_ED5869: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED5871: var_94.SetFocus
  loc_ED587D: Exit Sub
  loc_ED587E: ' Referenced from: ED57D0
  loc_ED587E: Proc_6_60_E62BC4(var_94)
  loc_ED5883: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBFB8C
  'Data Table: 453F90
  Dim arg_1800 As Integer
  loc_EBFAF4: On Error Goto loc_EBFB84
  loc_EBFB2E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBFB3D:   Set var_110 = Me
  loc_EBFB54:   Call Proc_14_27_E7A804(Proc_5_1_100CB50("INI", var_110))
  loc_EBFB5F:   Call Proc_14_31_E863F8(global_52)
  loc_EBFB64:   Call Proc_14_29_120FFF8()
  loc_EBFB6C: Else
  loc_EBFB72:   Call 0.Method_arg_1E8 (var_110)
  loc_EBFB7A:   Call var_110.SetFocus
  loc_EBFB83: End If
  loc_EBFB83: Exit Sub
  loc_EBFB84: ' Referenced from: EBFAF4
  loc_EBFB84: Proc_6_60_E62BC4()
  loc_EBFB89: Exit Sub
  loc_EBFB8A: arg_1800 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_C '118ECB0
  'Data Table: 453F90
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim unk_453FA2 As Connection15
  Dim var_114 As Variant
  Dim var_B0 As String
  loc_118E8EC: On Error Goto loc_118EC62
  loc_118E8FD: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_118E900:   Exit Sub
  loc_118E901: End If
  loc_118E933: var_D0 = "Guest Folio"
  loc_118E97B: If (Proc_6_108_1010FEC(MemVar_1F92044, "GuestFolio", "MarketSeg", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_118E97E:   Exit Sub
  loc_118E97F: End If
  loc_118E9B1: var_D0 = "Booking"
  loc_118E9F9: If (Proc_6_108_1010FEC(MemVar_1F92044, "Booking", "MarketSeg", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_118E9FC:   Exit Sub
  loc_118E9FD: End If
  loc_118EA34: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_118EA40:   unk_453FA2.BeginTrans var_CC
  loc_118EA56:   var_94 = Me.Bookmark 'Variant
  loc_118EAA2:   var_114 = "Delete From MarketSeg Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_118EAB0:   unk_453FA2.Execute CStr(var_114), var_134, -1
  loc_118EAFB:   var_164 = 0
  loc_118EB0E:   var_15C = 0
  loc_118EB19:   var_158 = 0
  loc_118EB2C:   var_150 = 0
  loc_118EB37:   var_14C = 0
  loc_118EB4A:   var_144 = 0
  loc_118EB8A:   var_B0 = "MarketSeg"
  loc_118EB93:   Proc_154_5_10E33A4(MemVar_1F92044, var_B0, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_118EBC1:   unk_453FA2.CommitTrans
  loc_118EBD1:   Me.Requery -1
  loc_118EBE1:   Me.Requery -1
  loc_118EC01:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_118EC0E:     Me.Bookmark = var_94
  loc_118EC16:   Else
  loc_118EC2A:     If (Me.EOF = 0) Then
  loc_118EC33:       Me.MoveLast
  loc_118EC38:     End If
  loc_118EC38:   End If
  loc_118EC38:   Call Proc_14_29_120FFF8(var_144, 0, var_14C, var_150)
  loc_118EC59:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_118EC61: End If
  loc_118EC61: Exit Sub
  loc_118EC62: ' Referenced from: 118E8EC
  loc_118EC68: unk_453FA2.RollbackTrans
  loc_118EC75: Set var_98 = Err()
  loc_118EC7B: Call 0.Method_arg_2C (var_B0, 0, var_158)
  loc_118EC9C: MsgBox(CVar(var_B0), &H30, " Deletion Error ", var_114, var_134)
  loc_118ECAF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF160C
  'Data Table: 453F90
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EF153C: On Error Goto loc_EF1604
  loc_EF154C: Me.LblUser.Caption = vbNullString
  loc_EF1561: Me.LblLDt.Caption = vbNullString
  loc_EF1577: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_EF157A:   Exit Sub
  loc_EF157B: End If
  loc_EF159E: Call Proc_14_27_E7A804(Proc_5_1_100CB50("EDIT", Me))
  loc_EF15B7: Set var_88 = Me.Txt
  loc_EF15BD: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF15D0: global_64 = var_94.Text
  loc_EF15E9: Set var_88 = Me.Txt
  loc_EF15EF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF15F7: var_94.SetFocus
  loc_EF1603: Exit Sub
  loc_EF1604: ' Referenced from: EF153C
  loc_EF1604: Proc_6_60_E62BC4(global_52)
  loc_EF1609: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1676C
  'Data Table: 453F90
  loc_E16761: Me.Global.Unload Me
  loc_E16769: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F23720
  'Data Table: 453F90
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F23620: On Error Goto loc_F236B8
  loc_F2362C: var_88 = Me.RecordCount
  loc_F2363A: If (var_88 <= 0) Then
  loc_F23643:   var_B8 = "Information"
  loc_F2365E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F2366E:   Exit Sub
  loc_F2366F: End If
  loc_F2367D: MemVar_1F920E4 = "Select MarketSeg.Code As SearchCode,MarketSeg.Name,MarketSeg.Active FROM MarketSeg Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by MarketSeg.Name"
  loc_F2368A: MemVar_1F92120 = Me
  loc_F23691: var_10C = "4000,1000"
  loc_F23697: Proc_6_126_F1BCC0(var_10C)
  loc_F236B2: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F236B7: Exit Sub
  loc_F236B8: ' Referenced from: F23620
  loc_F236C0: Set var_110 = Err()
  loc_F236C6: Call 0.Method_arg_1C (var_88)
  loc_F236D7: If (var_88 <> 0) Then
  loc_F236E2:   Set var_110 = Err()
  loc_F236E8:   Call 0.Method_arg_2C (var_10C)
  loc_F23709:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F2371C: End If
  loc_F2371C: Exit Sub
  loc_F2371D: MemVar_1F920E4 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E30918
  'Data Table: 453F90
  loc_E30908: Proc_5_0_110649C(&HFF, Me)
  loc_E30910: Call Proc_14_29_120FFF8(global_52)
  loc_E30915: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E30798
  'Data Table: 453F90
  loc_E30788: Proc_5_0_110649C(&HFF, Me)
  loc_E30790: Call Proc_14_29_120FFF8(global_52)
  loc_E30795: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E307F8
  'Data Table: 453F90
  loc_E307E8: Proc_5_0_110649C(&HFF, Me)
  loc_E307F0: Call Proc_14_29_120FFF8(global_52)
  loc_E307F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E30858
  'Data Table: 453F90
  loc_E30848: Proc_5_0_110649C(&HFF, Me)
  loc_E30850: Call Proc_14_29_120FFF8(global_52)
  loc_E30855: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10860EC
  'Data Table: 453F90
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_453FA2 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1085E54: On Error Goto loc_10860A0
  loc_1085E7B: unk_453FA2.Execute "select * FROM MarketSeg Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_1085E86: Set var_88 = var_C8
  loc_1085E9C: var_CC = var_88.RecordCount
  loc_1085EAA: If (var_CC = 0) Then
  loc_1085EC6:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1085ED6:   Exit Sub
  loc_1085ED7: End If
  loc_1085EE6: var_A4 = MemVar_1F920B4 & "\MarketSeg.ttx"
  loc_1085EED: Set var_C8 = var_88 
  loc_1085EF9: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1085F03: Set var_88 = var_C8
  loc_1085F09: var_B4 = CVar(var_12E) 'Integer
  loc_1085F0C: var_98 = var_B4 'Variant
  loc_1085F28: var_A0 = MemVar_1F920B4 & "\MarketSeg.RPT"
  loc_1085F31: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1085F3C: MemVar_1F921E4 = var_C8
  loc_1085F57: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1085F5F: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1085F6B: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1085F84:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1085F8C:   Call 0.Method_arg_20 (var_138)
  loc_1085F94:   Call 0.Method_arg_30 (var_A0)
  loc_1085FDA:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1085FF0:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1085FF8:     Call 0.Method_arg_20 (var_138)
  loc_1086000:     Call 0.Method_arg_38 ("'Market Segment Master'")
  loc_108600C:   End If
  loc_108600F: Next var_132 'Integer
  loc_108602D: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1086035: Call 0.Method_arg_2C (var_DC)
  loc_1086043: Call 0.Method_arg_150 (var_FC)
  loc_108604E: Call 0.Method_arg_50 (var_A0)
  loc_1086058: Set var_138 = Nothing
  loc_1086072: Set var_C8 = MemVar_1F921E4 
  loc_108607E: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_1086089: MemVar_1F921E4 = var_C8
  loc_108609C: Set var_88 = Nothing
  loc_108609F: Exit Sub
  loc_10860A0: ' Referenced from: 1085E54
  loc_10860A8: Set var_C8 = Err()
  loc_10860AE: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10860B9: Call 0.Method_arg_50 (var_A4)
  loc_10860D5: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_10860E8: Exit Sub
  loc_10860E9: Put , , var_138
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E09C44
  'Data Table: 453F90
  Dim Me As Recordset15
  loc_E09C3B: Me.Requery -1
  loc_E09C40: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1262778
  'Data Table: 453F90
  Dim var_9C As String
  Dim var_D0 As Variant
  Dim unk_453FA2 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F0 As Variant
  Dim var_C0 As Variant
  Dim var_100 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_B0 As Variant
  Dim var_1E4 As Variant
  Dim var_204 As Variant
  Dim var_108 As String
  loc_1262244: On Error Goto loc_1262723
  loc_126224B: var_86 = CByte(0) 'Byte
  loc_126225A: Set var_90 = Me.Txt
  loc_1262260: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1262289: If (Proc_6_27_EA565C(var_94, "Name") = 0) Then
  loc_1262293:   Call Txt_GotFocus(CInt(0))
  loc_1262298:   Exit Sub
  loc_1262299: End If
  loc_126229C: Call Proc_14_30_108AAAC(var_9E)
  loc_12622A7: If (var_9E = &HFF) Then
  loc_12622AA:   Exit Sub
  loc_12622AB: End If
  loc_12622AF: Set var_90 = Me.TopCtrl1
  loc_12622B5: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_12622CE: If (CStr() = "Add") Then
  loc_12622D7:   var_D0 = 0
  loc_12622F6:   unk_453FA2.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From MarketSeg", var_B0, -1
  loc_12622FE:   var_90 = var_90.Fields
  loc_1262306:   var_D0 = var_94.Item(var_94)
  loc_126230E:   var_98 = var_98.Value
  loc_1262341:   var_F0 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1262367:   var_E0 = Format(CStr(var_E0), "000")
  loc_126236F:   var_100 = (1 + var_E0)
  loc_126237A:   global_60 = CStr(var_100)
  loc_126238F: Else
  loc_12623AC:   var_94 = Me.Fields.Item("Code")
  loc_12623C3:   global_60 = CStr(var_94.Value)
  loc_12623D4: End If
  loc_12623DD: unk_453FA2.BeginTrans var_104
  loc_12623E6: var_86 = CByte(1) 'Byte
  loc_12623EE: Set var_90 = Me.TopCtrl1
  loc_12623F4: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_126240D: If (CStr(var_F0) = "Add") Then
  loc_1262427:   var_9C = "Insert Into MarketSeg(Code,Name,Active,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_60
  loc_126243F:   Set var_90 = Me.Txt
  loc_1262445:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_108, var_9C & "','")
  loc_126244D:   var_248 = var_94.Text
  loc_1262456:   var_110 = -1 & var_108
  loc_126246B:   Set var_98 = Me.Txt
  loc_1262471:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, CVar(var_110 & "',"))
  loc_1262480:   Proc_6_17_EAA2B0(var_E0, CVar(var_114))
  loc_12624C9:   Proc_6_7_F25D88(var_1B4, Date)
  loc_12624E4:   var_204 = var_24C & var_E0 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_1B4 & ",'A','" & CVar(MemVar_1F92078) 
  loc_12624FB:   unk_453FA2.Execute CStr(var_204 & "')"), var_E0, 
  loc_126253E: Else
  loc_126255C:   Set var_90 = Me.Txt
  loc_1262562:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE MarketSeg SET Name='")
  loc_126256A:   var_248 = var_94.Text
  loc_1262573:   var_108 = -1 & var_9C
  loc_126257A:   var_F0 = CVar(var_108 & "',Active=") 'String
  loc_1262588:   Set var_98 = Me.Txt
  loc_126258E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114)
  loc_126259D:   Proc_6_17_EAA2B0(var_E0, CVar(var_114))
  loc_12625A5:   var_100 = var_F0 & var_E0 
  loc_12625A9:   var_C0 = ",SITE_CODE='"
  loc_12625E6:   Proc_6_7_F25D88(var_1B4, Date)
  loc_12625F7:   var_1E4 = var_100 & var_C0 & CVar(MemVar_1F92070) & "',U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_1B4 & " ,U_AE='E' WHERE Code='" 
  loc_126261B:   unk_453FA2.Execute CStr(var_1E4 & CVar(global_60) & "'"), var_24C, 
  loc_1262657: End If
  loc_126265D: unk_453FA2.CommitTrans
  loc_1262666: var_86 = CByte(0) 'Byte
  loc_1262675: Me.Requery -1
  loc_1262685: Me.Requery -1
  loc_12626B2: Me.Find "Code='" & global_60 & "'", 0, 1
  loc_12626C2: Set var_90 = Me.TopCtrl1
  loc_12626C8: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_12626E1: If (CStr() = "Add") Then
  loc_12626E4:   Call TopCtrl1_UnknownEvent_A()
  loc_12626E9:   Exit Sub
  loc_12626EA: End If
  loc_12626FF: var_9C = "INI"
  loc_126270D: Call Proc_14_27_E7A804(Proc_5_1_100CB50(var_9C, Me))
  loc_1262718: Call Proc_14_31_E863F8(global_52)
  loc_126271D: Call Proc_14_29_120FFF8()
  loc_1262722: Exit Sub
  loc_1262723: ' Referenced from: 1262244
  loc_126272C: If (CInt(var_86) = 1) Then
  loc_1262735:   unk_453FA2.RollbackTrans
  loc_126273A: End If
  loc_1262742: Set var_90 = Err()
  loc_1262748: Call 0.Method_arg_2C (var_9C)
  loc_1262761: MsgBox(CVar(var_9C), &H10, var_E0, var_F0, var_100)
  loc_1262774: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBFAA4
  'Data Table: 453F90
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBFA1A: On Error Goto loc_EBFA5F
  loc_EBFA23: Me.MoveFirst
  loc_EBFA3D: var_8C = "code='" & MyValue
  loc_EBFA4D: Me.Find var_8C & "'", 0, 1
  loc_EBFA59: Call Proc_14_29_120FFF8(var_A0)
  loc_EBFA5E: Exit Sub
  loc_EBFA5F: ' Referenced from: EBFA1A
  loc_EBFA67: Set var_A4 = Err()
  loc_EBFA6D: Call 0.Method_arg_2C (var_8C)
  loc_EBFA8E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBFAA1: Exit Sub
  loc_EBFAA2: Exit Sub
End Sub

Public Sub Proc_14_27_E7A804(arg_C) 'E7A804
  'Data Table: 453F90
  Dim var_98 As TextBox
  loc_E7A7B2: Set var_8C = Me.Txt
  loc_E7A7B8: Call 0.Method_Proc_14_27_E7A804C (var_8E, var_86)
  loc_E7A7C8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A7DE:   Set var_8C = Me.Txt
  loc_E7A7E4:   Call 0.Method_Proc_14_27_E7A8040 (CInt(var_86), var_98)
  loc_E7A7EC:   var_98.Enabled = arg_C
  loc_E7A7FB: Next var_92 'Byte
  loc_E7A801: Exit Sub
End Sub

Public Sub Proc_14_28_EAFB48
  'Data Table: 453F90
  Dim var_98 As TextBox
  loc_EAFABA: global_64 = vbNullString
  loc_EAFACC: Set var_8C = Me.Txt
  loc_EAFAD2: Call 0.Method_Proc_14_28_EAFB48C (var_8E, var_86)
  loc_EAFAE2: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAFAF8:   Set var_8C = Me.Txt
  loc_EAFAFE:   Call 0.Method_Proc_14_28_EAFB480 (CInt(var_86), var_98)
  loc_EAFB06:   var_98.Text = vbNullString
  loc_EAFB22:   Set var_8C = Me.Txt
  loc_EAFB28:   Call 0.Method_Proc_14_28_EAFB480 (CInt(var_86), var_98)
  loc_EAFB30:   var_98.Tag = vbNullString
  loc_EAFB3F: Next var_92 'Byte
  loc_EAFB45: Exit Sub
End Sub

Public Sub Proc_14_29_120FFF8
  'Data Table: 453F90
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_453FA2 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_11C As TextBox
  loc_120FB64: On Error Goto loc_120FFB5
  loc_120FB6D: Proc_183_45_E5C118(global_52)
  loc_120FBC8: unk_453FA2.Execute CStr("Select U_Name,U_AE,U_EntDt From MarketSeg where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_120FBD3: Set var_88 = var_118
  loc_120FC27: var_118 = var_88.Fields
  loc_120FC90: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_120FCD5: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_120FD4F: var_11C = var_88.Fields.Item("U_AE")
  loc_120FD68: var_114 = "entdt : "
  loc_120FD73: var_F0 = "Last Update : "
  loc_120FDB0: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), var_F0, var_114))
  loc_120FDF5: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_120FE44: If (Me.RecordCount <= 0) Then
  loc_120FE47:   Call Proc_14_28_EAFB48()
  loc_120FE4F: Else
  loc_120FE83:   global_60 = CStr(Me.Fields.Item("Name").Value)
  loc_120FED0:   Set var_118 = Me.Txt
  loc_120FED6:   Call 0.Method_Proc_14_29_120FFF80 (CInt(0), var_11C)
  loc_120FEDE:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_120FF30:   Set var_118 = Me.Txt
  loc_120FF36:   Call 0.Method_Proc_14_29_120FFF80 (CInt(0), var_11C)
  loc_120FF3E:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_120FF7F:   var_F4 = Proc_6_38_E68A98(CVar(Me.Fields.Item("Active")))
  loc_120FF8D:   Set var_118 = Me.Txt
  loc_120FF93:   Call 0.Method_Proc_14_29_120FFF80 (CInt(1), var_11C)
  loc_120FF9B:   var_11C.Text = var_F4
  loc_120FFAF: End If
  loc_120FFAF: Call Proc_14_31_E863F8()
  loc_120FFB4: Exit Sub
  loc_120FFB5: ' Referenced from: 120FB64
  loc_120FFBD: Set var_8C = Err()
  loc_120FFC3: Call 0.Method_arg_2C (var_F4)
  loc_120FFE4: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_120FFF7: Exit Sub
End Sub

Public Sub Proc_14_30_108AAAC
  'Data Table: 453F90
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_453FA2 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108A83F: If (Me.RecordCount = 0) Then
  loc_108A842:   Proc_14_30_108AAAC = 
  loc_108A848: End If
  loc_108A84C: Set var_90 = Me.TopCtrl1
  loc_108A852: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_108A86B: If (CStr() = "Add") Then
  loc_108A8A9:   Set var_90 = Me.Txt
  loc_108A8AF:   Call 0.Method_Proc_14_30_108AAAC0 (CInt(0), var_A8, var_AC, "Select Count(*) From MarketSeg Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108A8D0:   unk_453FA2.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_108A8E0:    = var_D0.Item()
  loc_108A8E8:    = var_E4.Value
  loc_108A919:   If (var_A8.Text.Fields > 0) Then
  loc_108A937:     var_A0 = "Duplicate Name"
  loc_108A93D:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_108A958:     Set var_90 = Me.Txt
  loc_108A95E:     Call 0.Method_Proc_14_30_108AAAC0 (CInt(0))
  loc_108A966:     var_A8.SetFocus
  loc_108A977:     Proc_14_30_108AAAC = &HFF
  loc_108A97D:   End If
  loc_108A980: Else
  loc_108A9BB:   Set var_90 = Me.Txt
  loc_108A9C1:   Call 0.Method_Proc_14_30_108AAAC0 (CInt(0), var_A8, var_AC, "Select Count(*) From MarketSeg Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108A9F3:   unk_453FA2.Execute var_D0 & var_AC & "' And Name<>'" & global_64 & "'", 0, var_E4
  loc_108AA03:    = var_D0.Item(var_A8)
  loc_108AA0B:    = var_E4.Value
  loc_108AA40:   If (var_A8.Text.Fields > 0) Then
  loc_108AA64:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108AA7F:     Set var_90 = Me.Txt
  loc_108AA85:     Call 0.Method_Proc_14_30_108AAAC0 (CInt(0))
  loc_108AA8D:     var_A8.SetFocus
  loc_108AA9E:     Proc_14_30_108AAAC = &HFF
  loc_108AAA4:   End If
  loc_108AAA4: End If
  loc_108AAA4: Proc_14_30_108AAAC = var_A8
End Sub

Public Sub Proc_14_31_E863F8
  'Data Table: 453F90
  loc_E863A4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E863B6:   Me.DGHelp.Visible = False
  loc_E863BE: End If
  loc_E863DA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E863EC:   Me.FGPoint.Visible = False
  loc_E863F4: End If
  loc_E863F4: Exit Sub
End Sub

Public Sub Proc_14_32_E8E8BC(arg_C) 'E8E8BC
  'Data Table: 453F90
  Dim var_10C As TextBox
  loc_E8E850: Call Proc_14_31_E863F8()
  loc_E8E88C: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8E88F:   Call TopCtrl1_UnknownEvent_16()
  loc_E8E897: Else
  loc_E8E8A1:   Set var_108 = Me.Txt
  loc_E8E8A7:   Call 0.Method_Proc_14_32_E8E8BC0 (arg_C)
  loc_E8E8AF:   var_10C.SetFocus
  loc_E8E8BB: End If
  loc_E8E8BB: Exit Sub
End Sub
