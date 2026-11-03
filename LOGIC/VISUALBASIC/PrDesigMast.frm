VERSION 5.00
Begin VB.Form PrDesigMast
  Caption = "Designation Master"
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
  ClientWidth = 6795
  ClientHeight = 3015
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 6795
    Height = 450
    TabIndex = 4
  End
End
Begin DataGrid DGHelp
  Left = 9435
  Top = 2295
  Width = 4230
  Height = 1695
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 1
End
Begin MSFlexGrid FGPoint
  Left = 13095
  Top = 2745
  Width = 1980
  Height = 1440
  Visible = 0   'False
  TabIndex = 3
End
Begin TextBox Txt
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2310
  Top = 1710
  Width = 4215
  Height = 285
  TabIndex = 0
  BorderStyle = 0 'None
  MaxLength = 25
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
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 360
  Width = 180
  Height = 540
  TabIndex = 9
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
Begin Label Label2
  Caption = "User"
  ForeColor = &HFF0000&
  Left = 0
  Top = 0
  Width = 2880
  Height = 255
  TabIndex = 8
  Alignment = 2 'Center
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
Begin Label Label1
  Caption = "Last Update"
  ForeColor = &HFF0000&
  Left = 3375
  Top = 0
  Width = 2790
  Height = 285
  TabIndex = 7
  Alignment = 2 'Center
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
  Left = 0
  Top = 6360
  Width = 2880
  Height = 255
  TabIndex = 6
  Alignment = 2 'Center
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
  Left = 3375
  Top = 6480
  Width = 2790
  Height = 285
  TabIndex = 5
  Alignment = 2 'Center
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
Begin Label LblName
  Caption = "Name :"
  Index = 0
  ForeColor = &HFF0000&
  Left = 1395
  Top = 1710
  Width = 675
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

Attribute VB_Name = "PrDesigMast"


Private Sub FGPoint_UnknownEvent_9 'E386B4
  'Data Table: 4559E0
  loc_E386A8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E386AB:   Call DGHelp_UnknownEvent_9()
  loc_E386B0: End If
  loc_E386B0: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE2FBC
  'Data Table: 4559E0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE2F13: Me.DGHelp.Visible = False
  loc_EE2F32: If (Me.RecordCount > 0) Then
  loc_EE2F52:   var_B0 = Me.Fields.Item("Name")
  loc_EE2F71:   Set var_B4 = Me.Txt
  loc_EE2F77:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE2F7F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE2F95: End If
  loc_EE2FA0: Set var_A8 = Me.Txt
  loc_EE2FA6: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE2FAE: var_B0.SetFocus
  loc_EE2FBA: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6F578
  'Data Table: 4559E0
  loc_E6F536: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E6F54D: Set var_8C = Me.FGPoint
  loc_E6F569: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0))
  loc_E6F577: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EAA834
  'Data Table: 4559E0
  Dim Me As Recordset15
  loc_EAA7B2: Set var_88 = Me.Txt
  loc_EAA7B8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EAA7C6: Proc_6_74_E226B0(var_8C)
  loc_EAA7D2: Call Proc_314_31_E83AA0(var_8C)
  loc_EAA7E5: If (Index = CInt(0)) Then
  loc_EAA7FF:   If (Me.RecordCount > 0) Then
  loc_EAA80D:     Set var_8C = Me.FGPoint
  loc_EAA825:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_EAA833:   End If
  loc_EAA833: End If
  loc_EAA833: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1019D90
  'Data Table: 4559E0
  Dim var_86 As Variant
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As TextBox
  loc_1019B86: If (CLng(Shift) = &H1B) Then
  loc_1019B89:   Call Proc_314_31_E83AA0()
  loc_1019B8E:   Exit Sub
  loc_1019B8F: End If
  loc_1019B92: var_86 = KeyCode
  loc_1019B9D: If (var_86 = CInt(0)) Then
  loc_1019BBD:   Set var_9C = Me.FGPoint
  loc_1019BEF:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_1019C5C:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1019C63:     Set var_9C = Me.DGHelp
  loc_1019C6A:     Set var_90 = Me.FGPoint
  loc_1019C82:     Proc_6_138_106D6F8(var_9C, global_56, KeyCode, var_90, 0)
  loc_1019C90:   End If
  loc_1019C90: End If
  loc_1019CAC: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_1019CCD:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_1019CD3:     Call Proc_314_30_1086F9C(var_92, 1, var_9C)
  loc_1019CDE:     If (var_92 = &HFF) Then
  loc_1019CEE:       Set var_8C = Me.Txt
  loc_1019CF4:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_1019CFC:       var_90.Text = 0
  loc_1019D08:       Exit Sub
  loc_1019D09:     End If
  loc_1019D40:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_130) = 6) Then
  loc_1019D43:       Call TopCtrl1_UnknownEvent_16()
  loc_1019D48:     End If
  loc_1019D48:     Exit Sub
  loc_1019D49:   End If
  loc_1019D5E:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1019D67:     Proc_6_75_E527CC(Shift, arg_14)
  loc_1019D6C:   End If
  loc_1019D7F:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_1019D88:     Proc_6_76_E52838(Shift, arg_14)
  loc_1019D8D:   End If
  loc_1019D8D: End If
  loc_1019D8D: Exit Sub
  loc_1019D8E: var_86.global_26688 = 
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E23A08
  'Data Table: 4559E0
  loc_E239EE: Proc_6_133_E7EF78(var_94)
  loc_E23A00: Proc_6_58_E054C0(CInt(var_94), CInt(var_94))
  loc_E23A05: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC38D0
  'Data Table: 4559E0
  loc_EC3842: If (KeyCode = CInt(0)) Then
  loc_EC3861:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC386E:     var_A4 = "Name"
  loc_EC388D:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_56)
  loc_EC38BF:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC38CD:   End If
  loc_EC38CD: End If
  loc_EC38CD: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E470AC
  'Data Table: 4559E0
  loc_E4708A: Set var_88 = Me.Txt
  loc_E47090: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4709E: Proc_6_73_E22704(var_8C)
  loc_E470AA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E280DC
  'Data Table: 4559E0
  Dim arg_10 As Integer
  loc_E280BE: If (Cancel = CInt(0)) Then
  loc_E280C4:   Call Proc_314_30_1086F9C(var_88)
  loc_E280CF:   If (var_88 = &HFF) Then
  loc_E280D4:     arg_10 = &HFF
  loc_E280D7:     Exit Sub
  loc_E280D8:   End If
  loc_E280D8: End If
  loc_E280D8: Exit Sub
  loc_E280D9: Exit Sub
End Sub

Private Sub Form_Load() 'FBD400
  'Data Table: 4559E0
  Dim var_8C As Label
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_4559F3 As Connection15
  Dim var_B4 As Variant
  loc_FBD25C: On Error Goto loc_FBD3BC
  loc_FBD26E: Me.LblUser.Left = CDbl(13500)
  loc_FBD285: Me.LblUser.Top = CDbl(7800)
  loc_FBD29C: Me.LblLDt.Top = CDbl(8160)
  loc_FBD2AD: Set var_8C = Me.LblLDt
  loc_FBD2B3: var_8C.Left = CDbl(13500)
  loc_FBD2C2: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_FBD2C7: Call Proc_314_33_EDBF6C()
  loc_FBD2F0: unk_4559F3.Execute "SELECT Code,Name FROM Desig where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_FBD31F: CVarUnk
  loc_FBD324: VerifyVarObj
  loc_FBD330: LateIdStAd
  loc_FBD359: var_94 = "SELECT D.*,D.Code as SearchCode FROM Desig D where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_FBD362: unk_4559F3.Execute var_94, var_B4, -1
  loc_FBD39D: var_90 = "INI"
  loc_FBD3AB: Call Proc_314_27_E797FC(Proc_5_1_100CB50(var_90, Me, Me.DGHelp, Me), Me)
  loc_FBD3B6: Call Proc_314_29_1196D04(Me)
  loc_FBD3BB: Exit Sub
  loc_FBD3BC: ' Referenced from: FBD25C
  loc_FBD3C4: Set var_8C = Err()
  loc_FBD3CA: Call 0.Method_arg_2C (var_90)
  loc_FBD3EB: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_FBD3FE: Exit Sub
  loc_FBD3FF: Exit Sub
End Sub

Private Sub Form_Resize() 'ED2038
  'Data Table: 4559E0
  Dim var_8C As Label
  loc_ED1F96: Call 0.Method_arg_50 (var_88)
  loc_ED1FA8: Me.LblFormCaption.Caption = var_88
  loc_ED1FC1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED1FCD: Set var_A0 = Me.TopCtrl1
  loc_ED1FD3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED1FE0: Set var_8C = Me.TopCtrl1
  loc_ED1FE6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED2000: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED201B: Call 0.Method_arg_100 (var_B8)
  loc_ED202D: Me.LblFormCaption.Width = var_B8
  loc_ED2035: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E27D9C
  'Data Table: 4559E0
  loc_E27D7F: Set global_52 = Nothing
  loc_E27D91: Set global_56 = Nothing
  loc_E27D98: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27B18
  'Data Table: 4559E0
  loc_E27AF0: On Error Goto loc_E27B0F
  loc_E27B07: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E27B0F: ' Referenced from: E27AF0
  loc_E27B0F: Proc_6_60_E62BC4(Shift)
  loc_E27B14: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFD474
  'Data Table: 4559E0
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFD3A8: On Error Goto loc_EFD42E
  loc_EFD3B8: Me.LblUser.Caption = vbNullString
  loc_EFD3CD: Me.LblLDt.Caption = vbNullString
  loc_EFD3D5: Call Proc_314_28_E7862C()
  loc_EFD3EF: var_8C = "ADD"
  loc_EFD3FD: Call Proc_314_27_E797FC(Proc_5_1_100CB50(var_8C, Me))
  loc_EFD413: Set var_88 = Me.Txt
  loc_EFD419: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EFD421: var_94.SetFocus
  loc_EFD42D: Exit Sub
  loc_EFD42E: ' Referenced from: EFD3A8
  loc_EFD436: Set var_88 = Err()
  loc_EFD43C: Call 0.Method_arg_2C (var_8C)
  loc_EFD45D: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFD470: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC8C8C
  'Data Table: 4559E0
  loc_EC8BF0: On Error Goto loc_EC8C85
  loc_EC8C2A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC8C2D:   Call Proc_314_31_E83AA0()
  loc_EC8C3E:   Set var_110 = Me
  loc_EC8C55:   Call Proc_314_27_E797FC(Proc_5_1_100CB50("INI", var_110))
  loc_EC8C60:   Call Proc_314_31_E83AA0(global_52)
  loc_EC8C65:   Call Proc_314_29_1196D04()
  loc_EC8C6D: Else
  loc_EC8C73:   Call 0.Method_arg_1E8 (var_110)
  loc_EC8C7B:   Call var_110.SetFocus
  loc_EC8C84: End If
  loc_EC8C84: Exit Sub
  loc_EC8C85: ' Referenced from: EC8BF0
  loc_EC8C85: Proc_6_60_E62BC4()
  loc_EC8C8A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1063130
  'Data Table: 4559E0
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim unk_4559F3 As Connection15
  Dim var_96 As Integer
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_1062EC4: On Error Goto loc_10630D7
  loc_1062ED5: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_1062ED8:   Exit Sub
  loc_1062ED9: End If
  loc_1062F0B: var_D4 = "Employee Master"
  loc_1062F53: If (Proc_6_108_1010FEC(MemVar_1F92044, "Employee", "Designation", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_1062F56:   Exit Sub
  loc_1062F57: End If
  loc_1062F8E: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_1062F9A:   unk_4559F3.BeginTrans var_D0
  loc_1062FA1:   var_96 = &HFF
  loc_1062FB5:   var_94 = Me.Bookmark 'Variant
  loc_1063001:   var_118 = "Delete From Desig Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_1063005:   var_B4 = CStr(var_118)
  loc_106300F:   unk_4559F3.Execute var_B4, var_138, -1
  loc_1063031:   unk_4559F3.CommitTrans
  loc_1063038:   var_96 = 0
  loc_1063046:   Me.Requery -1
  loc_1063056:   Me.Requery -1
  loc_1063076:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1063083:     Me.Bookmark = var_94
  loc_106308B:   Else
  loc_106309F:     If (Me.EOF = 0) Then
  loc_10630A8:       Me.MoveLast
  loc_10630AD:     End If
  loc_10630AD:   End If
  loc_10630AD:   Call Proc_314_29_1196D04(var_96, var_13C, var_96)
  loc_10630CE:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_10630D6: End If
  loc_10630D6: Exit Sub
  loc_10630D7: ' Referenced from: 1062EC4
  loc_10630DD: If (var_96 = &HFF) Then
  loc_10630E6:   unk_4559F3.RollbackTrans
  loc_10630EB: End If
  loc_10630F3: Set var_9C = Err()
  loc_10630F9: Call 0.Method_arg_2C (var_B4, 0)
  loc_106311A: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_106312D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F6416C
  'Data Table: 4559E0
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F64048: On Error Goto loc_F64129
  loc_F64059: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F6405C:   Exit Sub
  loc_F6405D: End If
  loc_F64074: If (Me.RecordCount > 0) Then
  loc_F6408C:   var_8C = "EDIT"
  loc_F6409A:   Call Proc_314_27_E797FC(Proc_5_1_100CB50(var_8C, Me))
  loc_F640B0:   Set var_90 = Me.Txt
  loc_F640B6:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F640BE:   var_98.SetFocus
  loc_F640CD: Else
  loc_F640EE:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F640FE: End If
  loc_F6410B: Me.LblUser.Caption = vbNullString
  loc_F64120: Me.LblLDt.Caption = vbNullString
  loc_F64128: Exit Sub
  loc_F64129: ' Referenced from: F64048
  loc_F64131: Set var_90 = Err()
  loc_F64137: Call 0.Method_arg_2C (var_8C)
  loc_F64158: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F6416B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B028
  'Data Table: 4559E0
  loc_E1B01D: Me.Global.Unload Me
  loc_E1B025: Exit Sub
  loc_E1B026: arg_6808 = Mid$(, , )
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F159A0
  'Data Table: 4559E0
  Dim Me As Recordset15
  loc_F158B0: On Error Goto loc_F1593A
  loc_F158BC: var_88 = Me.RecordCount
  loc_F158CA: If (var_88 <= 0) Then
  loc_F158EE:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F158FE:   Exit Sub
  loc_F158FF: End If
  loc_F15902: MemVar_1F920E4 = "Select Code As SearchCode,Name FROM Desig Order by Name"
  loc_F15909: var_10C = "4000"
  loc_F1590F: Proc_6_126_F1BCC0(var_10C)
  loc_F1591D: MemVar_1F92120 = Me
  loc_F15934: Call 0.Method_arg_2B0 (1)
  loc_F15939: Exit Sub
  loc_F1593A: ' Referenced from: F158B0
  loc_F15942: Set var_110 = Err()
  loc_F15948: Call 0.Method_arg_1C (var_88)
  loc_F15959: If (var_88 <> 0) Then
  loc_F15964:   Set var_110 = Err()
  loc_F1596A:   Call 0.Method_arg_2C (var_10C)
  loc_F1598B:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F1599E: End If
  loc_F1599E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3C4F8
  'Data Table: 4559E0
  loc_E3C4E8: Proc_5_0_110649C(&HFF, Me)
  loc_E3C4F0: Call Proc_314_29_1196D04(global_52)
  loc_E3C4F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3C7F8
  'Data Table: 4559E0
  loc_E3C7E8: Proc_5_0_110649C(&HFF, Me)
  loc_E3C7F0: Call Proc_314_29_1196D04(global_52)
  loc_E3C7F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3C5B8
  'Data Table: 4559E0
  loc_E3C5A8: Proc_5_0_110649C(&HFF, Me)
  loc_E3C5B0: Call Proc_314_29_1196D04(global_52)
  loc_E3C5B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3C558
  'Data Table: 4559E0
  loc_E3C548: Proc_5_0_110649C(&HFF, Me)
  loc_E3C550: Call Proc_314_29_1196D04(global_52)
  loc_E3C555: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1099954
  'Data Table: 4559E0
  Dim unk_4559F3 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_12C As String
  Dim var_E4 As Variant
  loc_10996B0: On Error Goto loc_1099909
  loc_10996C9: unk_4559F3.Execute "SELECT * from Desig order by Name", var_BC, -1
  loc_10996D4: Set var_88 = var_C0
  loc_10996E3: var_C4 = var_88.RecordCount
  loc_10996F1: If (var_C4 = 0) Then
  loc_109970D:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_109971D:   Exit Sub
  loc_109971E: End If
  loc_1099734: Set var_C0 = var_88 
  loc_1099740: var_12E = CreateFieldDefFile(var_C0, MemVar_1F920B4 & "\DesigMast.ttx")
  loc_109974A: Set var_88 = var_C0
  loc_1099750: var_AC = CVar(var_12E) 'Integer
  loc_1099753: var_98 = var_AC 'Variant
  loc_109976F: var_128 = MemVar_1F920B4 & "\DesigMast.RPT"
  loc_1099778: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_1099783: MemVar_1F921E4 = var_C0
  loc_109979E: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_10997A6: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10997B2: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_10997CB:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10997D3:   Call 0.Method_arg_20 (var_138)
  loc_10997DB:   Call 0.Method_arg_30 (var_128)
  loc_1099821:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_109982D:     Call 0.Method_arg_50 (var_128)
  loc_1099836:     var_12C = "'" & var_128
  loc_1099850:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1099858:     Call 0.Method_arg_20 (var_138)
  loc_1099860:     Call 0.Method_arg_38 (var_12C & "'")
  loc_1099875:   End If
  loc_1099878: Next var_132 'Integer
  loc_1099896: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_109989E: Call 0.Method_arg_2C (var_D4)
  loc_10998AC: Call 0.Method_arg_150 (var_F4)
  loc_10998B7: Call 0.Method_arg_50 (var_128)
  loc_10998C1: Set var_138 = Nothing
  loc_10998DB: Set var_C0 = MemVar_1F921E4 
  loc_10998E7: Proc_6_99_1483714(var_C0, 0, var_128)
  loc_10998F2: MemVar_1F921E4 = var_C0
  loc_1099905: Set var_88 = Nothing
  loc_1099908: Exit Sub
  loc_1099909: ' Referenced from: 10996B0
  loc_1099911: Set var_C0 = Err()
  loc_1099917: Call 0.Method_arg_2C (var_128, &HFF)
  loc_1099922: Call 0.Method_arg_50 (var_12C)
  loc_109993E: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_1099951: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E09FB8
  'Data Table: 4559E0
  Dim Me As Recordset15
  loc_E09FAF: Me.Requery -1
  loc_E09FB4: Exit Sub
  loc_E09FB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1250E08
  'Data Table: 4559E0
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_4559F3 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  loc_12508DC: On Error Goto loc_1250DB5
  loc_12508E3: var_86 = CByte(0) 'Byte
  loc_12508F2: Set var_90 = Me.Txt
  loc_12508F8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1250921: If (Proc_183_19_E8DAFC(var_94, "Name") = 0) Then
  loc_125092B:   Call Txt_GotFocus(CInt(0))
  loc_1250930:   Exit Sub
  loc_1250931: End If
  loc_1250935: Set var_90 = Me.TopCtrl1
  loc_125093B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_94)
  loc_1250954: If (CStr() = "Add") Then
  loc_125095F:   If (MemVar_1F923AC = "A") Then
  loc_1250968:     var_D4 = 0
  loc_1250985:     var_9C = "Select iif(IsNull(Max(val(MID(Code,3)))),1,Max(val(MID(Code,3)))+1)AS MyCode From Desig where Site_Code='" & MemVar_1F92070
  loc_1250995:     unk_4559F3.Execute CStr() & "'", var_B0, -1
  loc_125099D:     var_90 = var_90.Fields
  loc_12509A5:     var_D4 = var_94.Item(var_94)
  loc_12509AD:     var_98 = var_98.Value
  loc_12509BC:     global_64 = CStr(var_E4)
  loc_12509DC:   Else
  loc_12509E4:     If (MemVar_1F923AC = "S") Then
  loc_12509ED:       var_D4 = 0
  loc_1250A0A:       var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From Desig where site_code='" & MemVar_1F92070
  loc_1250A11:       var_B4 = CStr() & "'"
  loc_1250A1A:       unk_4559F3.Execute var_B4, var_B0, -1
  loc_1250A22:       var_90 = var_90.Fields
  loc_1250A2A:       var_D4 = var_94.Item(var_94)
  loc_1250A32:       var_98 = var_98.Value
  loc_1250A41:       global_64 = CStr(var_E4)
  loc_1250A5E:     End If
  loc_1250A5E:   End If
  loc_1250A6B:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1250A91:   var_E4 = Format(global_64, "000")
  loc_1250A99:   var_108 = (1 + var_E4)
  loc_1250AA4:   global_64 = CStr(var_108)
  loc_1250AB9: Else
  loc_1250AD6:   var_94 = Me.Fields.Item("Code")
  loc_1250AED:   global_64 = CStr(var_94.Value)
  loc_1250AFE: End If
  loc_1250B07: unk_4559F3.BeginTrans var_10C
  loc_1250B10: var_86 = CByte(1) 'Byte
  loc_1250B18: Set var_90 = Me.TopCtrl1
  loc_1250B1E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(1)
  loc_1250B37: If (CStr(var_F8) = "Add") Then
  loc_1250B51:   var_9C = "Insert Into Desig(Code,Name,Site_Code,U_Name,U_EntDt,U_AE,Logsite_Code) Values('" & global_64
  loc_1250B69:   Set var_90 = Me.Txt
  loc_1250B6F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_9C & "','", var_184)
  loc_1250B77:   -1 = var_94.Text
  loc_1250BB1:   Proc_6_8_EB0DE4(var_E4, CVar(Proc_6_14_EF349C(CVar(var_98 & var_B4 & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',"), var_E4)))
  loc_1250BE3:   unk_4559F3.Execute CStr(var_E4 & var_E4 & ",'A','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1250C1C: Else
  loc_1250C3A:   Set var_90 = Me.Txt
  loc_1250C40:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE Desig SET Name='")
  loc_1250C48:   var_184 = var_94.Text
  loc_1250C51:   var_B4 = -1 & var_9C
  loc_1250C74:   var_F8 = CVar(var_B4 & "',SITE_CODE='" & MemVar_1F92070 & "',U_name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_1250C82:   Proc_6_8_EB0DE4(var_E4, CVar(Proc_6_14_EF349C(var_F8)))
  loc_1250C8A:   var_108 = var_98 & var_E4 
  loc_1250C8E:   var_C4 = " ,U_AE='E' WHERE Code='"
  loc_1250CB7:   unk_4559F3.Execute CStr(var_108 & var_C4 & CVar(global_64) & "'"), , 
  loc_1250CE9: End If
  loc_1250CEF: unk_4559F3.CommitTrans
  loc_1250CF8: var_86 = CByte(0) 'Byte
  loc_1250D07: Me.Requery -1
  loc_1250D17: Me.Requery -1
  loc_1250D44: Me.Find "SearchCode='" & global_64 & "'", 0, 1
  loc_1250D54: Set var_90 = Me.TopCtrl1
  loc_1250D5A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_C4)
  loc_1250D73: If (CStr() = "Add") Then
  loc_1250D76:   Call TopCtrl1_UnknownEvent_A()
  loc_1250D7B:   Exit Sub
  loc_1250D7C: End If
  loc_1250D91: var_9C = "INI"
  loc_1250D9F: Call Proc_314_27_E797FC(Proc_5_1_100CB50(var_9C, Me))
  loc_1250DAA: Call Proc_314_31_E83AA0(global_52)
  loc_1250DAF: Call Proc_314_29_1196D04()
  loc_1250DB4: Exit Sub
  loc_1250DB5: ' Referenced from: 12508DC
  loc_1250DBE: If (CInt(var_86) = 1) Then
  loc_1250DC7:   unk_4559F3.RollbackTrans
  loc_1250DCC: End If
  loc_1250DD4: Set var_90 = Err()
  loc_1250DDA: Call 0.Method_arg_2C (var_9C)
  loc_1250DF3: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_1250E06: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC3624
  'Data Table: 4559E0
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC359A: On Error Goto loc_EC35DF
  loc_EC35A3: Me.MoveFirst
  loc_EC35BD: var_8C = "code='" & MyValue
  loc_EC35CD: Me.Find var_8C & "'", 0, 1
  loc_EC35D9: Call Proc_314_29_1196D04(var_A0)
  loc_EC35DE: Exit Sub
  loc_EC35DF: ' Referenced from: EC359A
  loc_EC35E7: Set var_A4 = Err()
  loc_EC35ED: Call 0.Method_arg_2C (var_8C)
  loc_EC360E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC3621: Exit Sub
  loc_EC3622: Exit Sub
End Sub

Public Sub Proc_314_27_E797FC(arg_C) 'E797FC
  'Data Table: 4559E0
  Dim var_98 As TextBox
  loc_E797AA: Set var_8C = Me.Txt
  loc_E797B0: Call 0.Method_Proc_314_27_E797FCC (var_8E, var_86)
  loc_E797C0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E797D6:   Set var_8C = Me.Txt
  loc_E797DC:   Call 0.Method_Proc_314_27_E797FC0 (CInt(var_86), var_98)
  loc_E797E4:   var_98.Enabled = arg_C
  loc_E797F3: Next var_92 'Byte
  loc_E797F9: Exit Sub
End Sub

Public Sub Proc_314_28_E7862C
  'Data Table: 4559E0
  Dim var_98 As TextBox
  loc_E785DA: Set var_8C = Me.Txt
  loc_E785E0: Call 0.Method_Proc_314_28_E7862CC (var_8E, var_86)
  loc_E785F0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78606:   Set var_8C = Me.Txt
  loc_E7860C:   Call 0.Method_Proc_314_28_E7862C0 (CInt(var_86), var_98)
  loc_E78614:   var_98.Text = vbNullString
  loc_E78623: Next var_92 'Byte
  loc_E78629: Exit Sub
End Sub

Public Sub Proc_314_29_1196D04
  'Data Table: 4559E0
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B8 As Fields15
  Dim var_B4 As String
  Dim var_CC As TextBox
  loc_1196938: On Error Goto loc_1196CC0
  loc_1196941: Proc_183_45_E5C118(global_52)
  loc_119695D: If (Me.RecordCount <= 0) Then
  loc_1196960:   Call Proc_314_28_E7862C()
  loc_1196968: Else
  loc_1196A11:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_1196A59:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_Name")))))
  loc_1196AD9:   var_CC = Me.Fields.Item("U_AE")
  loc_1196AF2:   var_130 = "entdt :   "
  loc_1196AFD:   var_110 = "Last Update :   "
  loc_1196B3A:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_CC)) = "E"), var_110, var_130))
  loc_1196B82:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_EntDt")))))
  loc_1196BEE:   global_64 = CStr(Me.Fields.Item("Name").Value)
  loc_1196C3B:   Set var_B8 = Me.Txt
  loc_1196C41:   Call 0.Method_Proc_314_29_1196D040 (CInt(0), var_CC)
  loc_1196C49:   var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1196C8D:   var_B4 = CStr(Me.Fields.Item("Code").Value)
  loc_1196C9B:   Set var_B8 = Me.Txt
  loc_1196CA1:   Call 0.Method_Proc_314_29_1196D040 (CInt(0), var_CC)
  loc_1196CA9:   var_CC.Tag = var_B4
  loc_1196CBF: End If
  loc_1196CBF: Exit Sub
  loc_1196CC0: ' Referenced from: 1196938
  loc_1196CC8: Set var_8C = Err()
  loc_1196CCE: Call 0.Method_arg_2C (var_B4)
  loc_1196CEF: MsgBox(CVar(var_B4), &H40, "Information", var_110, var_130)
  loc_1196D02: Exit Sub
End Sub

Public Sub Proc_314_30_1086F9C
  'Data Table: 4559E0
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4559F3 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1086D2F: If (Me.RecordCount = 0) Then
  loc_1086D32:   Proc_314_30_1086F9C = 
  loc_1086D38: End If
  loc_1086D3C: Set var_90 = Me.TopCtrl1
  loc_1086D42: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1086D5B: If (CStr() = "Add") Then
  loc_1086D99:   Set var_90 = Me.Txt
  loc_1086D9F:   Call 0.Method_Proc_314_30_1086F9C0 (CInt(0), var_A8, var_AC, "Select Count(*) From Desig Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1086DC0:   unk_4559F3.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1086DD0:    = var_D0.Item()
  loc_1086DD8:    = var_E4.Value
  loc_1086E09:   If (var_A8.Text.Fields > 0) Then
  loc_1086E27:     var_A0 = "Duplicate Name"
  loc_1086E2D:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1086E48:     Set var_90 = Me.Txt
  loc_1086E4E:     Call 0.Method_Proc_314_30_1086F9C0 (CInt(0))
  loc_1086E56:     var_A8.SetFocus
  loc_1086E67:     Proc_314_30_1086F9C = &HFF
  loc_1086E6D:   End If
  loc_1086E70: Else
  loc_1086EAB:   Set var_90 = Me.Txt
  loc_1086EB1:   Call 0.Method_Proc_314_30_1086F9C0 (CInt(0), var_A8, var_AC, "Select Count(*) From Desig Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1086EE3:   unk_4559F3.Execute var_D0 & var_AC & "' And Name<>'" & global_64 & "'", 0, var_E4
  loc_1086EF3:    = var_D0.Item(var_A8)
  loc_1086EFB:    = var_E4.Value
  loc_1086F30:   If (var_A8.Text.Fields > 0) Then
  loc_1086F54:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1086F6F:     Set var_90 = Me.Txt
  loc_1086F75:     Call 0.Method_Proc_314_30_1086F9C0 (CInt(0))
  loc_1086F7D:     var_A8.SetFocus
  loc_1086F8E:     Proc_314_30_1086F9C = &HFF
  loc_1086F94:   End If
  loc_1086F94: End If
  loc_1086F94: Proc_314_30_1086F9C = var_A8
End Sub

Public Sub Proc_314_31_E83AA0
  'Data Table: 4559E0
  loc_E83A4C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E83A5E:   Me.DGHelp.Visible = False
  loc_E83A66: End If
  loc_E83A82: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E83A94:   Me.FGPoint.Visible = False
  loc_E83A9C: End If
  loc_E83A9C: Exit Sub
End Sub

Public Sub Proc_314_32_EE0F10(arg_C) 'EE0F10
  'Data Table: 4559E0
  Dim var_8C As TextBox
  loc_EE0E64: Call Proc_314_31_E83AA0()
  loc_EE0E74: Set var_88 = Me.Txt
  loc_EE0E7A: Call 0.Method_Proc_314_32_EE0F100 (CInt(0))
  loc_EE0EA3: If (Proc_6_27_EA565C(var_8C, "Designation Name") = 0) Then
  loc_EE0EA6:   Exit Sub
  loc_EE0EA7: End If
  loc_EE0EDE: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE0EE1:   Call TopCtrl1_UnknownEvent_16()
  loc_EE0EE9: Else
  loc_EE0EF3:   Set var_88 = Me.Txt
  loc_EE0EF9:   Call 0.Method_Proc_314_32_EE0F100 (arg_C, var_8C)
  loc_EE0F01:   var_8C.SetFocus
  loc_EE0F0D: End If
  loc_EE0F0D: Exit Sub
End Sub

Public Sub Proc_314_33_EDBF6C
  'Data Table: 4559E0
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_EDBECA: Set var_88 = Me.Txt
  loc_EDBED0: Call 0.Method_Proc_314_33_EDBF6C0 (CInt(0), var_8C)
  loc_EDBEEF: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_EDBF0B: Set var_B4 = Me.Txt
  loc_EDBF11: Call 0.Method_Proc_314_33_EDBF6C0 (CInt(0), var_B8)
  loc_EDBF2C: Set var_88 = Me.Txt
  loc_EDBF32: Call 0.Method_Proc_314_33_EDBF6C0 (CInt(0), var_8C)
  loc_EDBF4A: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_EDBF59: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_EDBF6B: Exit Sub
End Sub
