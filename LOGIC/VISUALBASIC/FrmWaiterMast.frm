VERSION 5.00
Begin VB.Form FrmWaiterMast
  Caption = "Server Master"
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
  ClientWidth = 8070
  ClientHeight = 8760
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2265
    Top = 1350
    Width = 4215
    Height = 255
    TabIndex = 0
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 2265
    Top = 1950
    Width = 540
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 3
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
    Width = 8070
    Height = 450
    TabIndex = 9
  End
  Begin DataGrid DGHelp
    Left = 2730
    Top = 4245
    Width = 4230
    Height = 1530
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2265
    Top = 1635
    Width = 4215
    Height = 285
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
  Begin MSFlexGrid FGPoint
    Left = 5490
    Top = 1440
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 5
  End
  Begin DataGrid DGRest
    Left = 900
    Top = 2745
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin Label LblName
    Caption = "Restaurant"
    Index = 0
    ForeColor = &HC00000&
    Left = 960
    Top = 1350
    Width = 1020
    Height = 240
    TabIndex = 12
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
  Begin Label LblName
    Caption = "Active"
    Index = 2
    ForeColor = &HC00000&
    Left = 960
    Top = 1950
    Width = 585
    Height = 240
    TabIndex = 11
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
    Index = 3
    ForeColor = &H0&
    Left = 2820
    Top = 1980
    Width = 900
    Height = 195
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 435
    Width = 180
    Height = 540
    TabIndex = 8
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 225
    Top = 7980
    Width = 2880
    Height = 255
    TabIndex = 7
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
    Left = 30
    Top = 8355
    Width = 2790
    Height = 285
    TabIndex = 6
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
    Caption = "Server Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 930
    Top = 1665
    Width = 1245
    Height = 240
    TabIndex = 3
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

Attribute VB_Name = "FrmWaiterMast"


Private Sub FGPoint_UnknownEvent_9 'E62A3C
  'Data Table: 45ECFC
  loc_E62A0C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E62A0F:   Call DGHelp_UnknownEvent_9()
  loc_E62A14: End If
  loc_E62A30: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E62A33:   Call DGRest_UnknownEvent_9()
  loc_E62A38: End If
  loc_E62A38: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE43BC
  'Data Table: 45ECFC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE4313: Me.DGHelp.Visible = False
  loc_EE4332: If (Me.RecordCount > 0) Then
  loc_EE4352:   var_B0 = Me.Fields.Item("Name")
  loc_EE4371:   Set var_B4 = Me.Txt
  loc_EE4377:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_B8)
  loc_EE437F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE4395: End If
  loc_EE43A0: Set var_A8 = Me.Txt
  loc_EE43A6: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1))
  loc_EE43AE: var_B0.SetFocus
  loc_EE43BA: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E70DC0
  'Data Table: 45ECFC
  loc_E70D7E: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E70D95: Set var_8C = Me.FGPoint
  loc_E70DB1: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(1))
  loc_E70DBF: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '104A814
  'Data Table: 45ECFC
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_104A5CA: Set var_88 = Me.Txt
  loc_104A5D0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_104A5DE: Proc_6_74_E226B0(var_8C)
  loc_104A5EA: Call Proc_16_33_EBB904(var_8C)
  loc_104A5F2: var_92 = Index
  loc_104A5FD: If (var_92 = CInt(0)) Then
  loc_104A617:   If (Me.RecordCount > 0) Then
  loc_104A625:     Set var_8C = Me.FGPoint
  loc_104A63D:     Proc_6_137_1193554(Me.DGRest, global_60, Index)
  loc_104A64B:   End If
  loc_104A699:   Set var_88 = Me.Txt
  loc_104A69F:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_104A6A7:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_104A6BF:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_104A6CF:     Set var_88 = Me.Txt
  loc_104A6D5:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_104A6DD:     var_8C.Tag = vbNullString
  loc_104A6E9:     Exit Sub
  loc_104A6EA:   End If
  loc_104A6F7:   Set var_88 = Me.Txt
  loc_104A6FD:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_104A705:   var_A0 = var_8C.Text
  loc_104A717:   var_B0 = "Name"
  loc_104A752:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_104A75B:     Me.MoveFirst
  loc_104A77E:     Set var_88 = Me.Txt
  loc_104A784:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_104A78C:     0 = var_8C.Text
  loc_104A7A5:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_104A7BA:   End If
  loc_104A7BD: Else
  loc_104A7C5:   If (var_92 = CInt(1)) Then
  loc_104A7DF:     If (Me.RecordCount > 0) Then
  loc_104A7ED:       Set var_8C = Me.FGPoint
  loc_104A805:       Proc_6_137_1193554(Me.DGHelp, global_56)
  loc_104A813:     End If
  loc_104A813:   End If
  loc_104A813: End If
  loc_104A813: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '110CBAC
  'Data Table: 45ECFC
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As Variant
  loc_110C87E: If (CLng(Shift) = &H1B) Then
  loc_110C881:   Call Proc_16_33_EBB904()
  loc_110C886:   Exit Sub
  loc_110C887: End If
  loc_110C88A: var_86 = KeyCode
  loc_110C895: If (var_86 = CInt(0)) Then
  loc_110C8B5:   Set var_9C = Me.FGPoint
  loc_110C8C0:   Set var_98 = Nothing
  loc_110C8EE:   Proc_6_69_134A198(Me.DGRest, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_110C95D:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_110C983:     Proc_6_138_106D6F8(Me.DGRest, global_60, KeyCode, Me.FGPoint, 1)
  loc_110C991:   End If
  loc_110C994: Else
  loc_110C99C:   If (var_86 = CInt(1)) Then
  loc_110C9A3:     Set var_9C = Me.DGHelp
  loc_110C9BC:     Set var_98 = Me.FGPoint
  loc_110C9EE:     Proc_6_79_11ACE04(var_9C, Me.Txt, CInt(1), global_56, Shift, 0, 1)
  loc_110CA5B:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_110CA62:       Set var_98 = Me.DGHelp
  loc_110CA81:       Proc_6_138_106D6F8(var_98, global_56, KeyCode, Me.FGPoint, var_98)
  loc_110CA8F:     End If
  loc_110CA8F:   End If
  loc_110CA8F: End If
  loc_110CAA9: Set var_90 = Me.DGRest
  loc_110CACA: If ((CBool(Me.DGHelp.Visible) = 0) And (CBool(var_90.Visible) = 0)) Then
  loc_110CAEB:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(2))) Then
  loc_110CAF1:     Call Proc_16_32_1133DD0(var_92, 0, var_98)
  loc_110CAFC:     If (var_92 = &HFF) Then
  loc_110CB0C:       Set var_8C = Me.Txt
  loc_110CB12:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_110CB1A:       var_90.Text = var_9C
  loc_110CB26:       Exit Sub
  loc_110CB27:     End If
  loc_110CB5E:     If (MsgBox("Save Record ?", 4, "Save Data", var_114, var_134) = 6) Then
  loc_110CB61:       Call TopCtrl1_UnknownEvent_16()
  loc_110CB66:     End If
  loc_110CB66:     Exit Sub
  loc_110CB67:   End If
  loc_110CB7C:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_110CB85:     Proc_6_75_E527CC(Shift, arg_14)
  loc_110CB8A:   End If
  loc_110CB9D:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_110CBA6:     Proc_6_76_E52838(Shift, arg_14)
  loc_110CBAB:   End If
  loc_110CBAB: End If
  loc_110CBAB: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FA7E60
  'Data Table: 45ECFC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_FA7CE2: Proc_6_133_E7EF78(var_94)
  loc_FA7CF7: If (CInt(var_94) = &HD) Then
  loc_FA7CFC:   arg_10 = 0
  loc_FA7CFF: End If
  loc_FA7D02: Proc_6_58_E054C0(arg_10, arg_10)
  loc_FA7D0A: var_96 = KeyAscii
  loc_FA7D15: If (var_96 = CInt(0)) Then
  loc_FA7D34:   If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_FA7D61:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_FA7D7B:     Set var_A8 = Me.FGPoint
  loc_FA7D93:     Proc_6_138_106D6F8(Me.DGRest, global_60, KeyAscii, var_A8)
  loc_FA7DA1:   End If
  loc_FA7DA4: Else
  loc_FA7DAC:   If (var_96 = CInt(2)) Then
  loc_FA7DD8:     If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_FA7DE8:       Set var_9C = Me.Txt
  loc_FA7DEE:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes", 0)
  loc_FA7DF6:       var_A8.Text = var_96
  loc_FA7E05:     Else
  loc_FA7E2E:       If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_FA7E3E:         Set var_9C = Me.Txt
  loc_FA7E44:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_FA7E4C:         var_A8.Text = arg_10
  loc_FA7E58:       End If
  loc_FA7E58:     End If
  loc_FA7E5A:     arg_10 = 0
  loc_FA7E5D:   End If
  loc_FA7E5D: End If
  loc_FA7E5D: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC30F0
  'Data Table: 45ECFC
  loc_EC3062: If (KeyCode = CInt(1)) Then
  loc_EC3081:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC308E:     var_A4 = "Name"
  loc_EC30AD:     Proc_6_80_FF0AC0(Me.Txt, CInt(1), global_56)
  loc_EC30DF:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC30ED:   End If
  loc_EC30ED: End If
  loc_EC30ED: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4ED64
  'Data Table: 45ECFC
  loc_E4ED42: Set var_88 = Me.Txt
  loc_E4ED48: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4ED56: Proc_6_73_E22704(var_8C)
  loc_E4ED62: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '103A0CC
  'Data Table: 45ECFC
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim arg_10 As Integer
  loc_1039E8B: var_86 = Cancel
  loc_1039E96: If (var_86 = CInt(0)) Then
  loc_1039EB9:   var_8E = Me.EOF
  loc_1039EE7:   Set var_94 = Me.Txt
  loc_1039EED:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1039EF5:   ((Me.RecordCount = 0) Or ((var_8E = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1039F0D:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_1039F1D:     Set var_94 = Me.Txt
  loc_1039F23:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1039F2B:     var_98.Tag = vbNullString
  loc_1039F37:     Exit Sub
  loc_1039F38:   End If
  loc_1039F73:   Set var_B0 = Me.Txt
  loc_1039F79:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1039F81:   var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1039FB4:   var_98 = Me.Fields.Item("Code")
  loc_1039FD2:   Set var_B0 = Me.Txt
  loc_1039FD8:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1039FE0:   var_B4.Tag = CStr(var_98.Value)
  loc_1039FF9: Else
  loc_103A001:   If (var_86 = CInt(1)) Then
  loc_103A007:     Call Proc_16_32_1133DD0(var_8E)
  loc_103A012:     If (var_8E = &HFF) Then
  loc_103A017:       arg_10 = &HFF
  loc_103A01A:       Exit Sub
  loc_103A01B:     End If
  loc_103A01E:   Else
  loc_103A026:     If (var_86 = CInt(2)) Then
  loc_103A033:       Set var_94 = Me.Txt
  loc_103A039:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_103A074:       If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_103A084:         Set var_94 = Me.Txt
  loc_103A08A:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_103A092:         var_98.Text = "Yes"
  loc_103A0A1:       Else
  loc_103A0AE:         Set var_94 = Me.Txt
  loc_103A0B4:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_103A0BC:         var_98.Text = "No"
  loc_103A0C8:       End If
  loc_103A0C8:     End If
  loc_103A0C8:   End If
  loc_103A0C8: End If
  loc_103A0C8: Exit Sub
  loc_103A0C9: StAryRecCopy
End Sub

Private Sub Form_Load() 'FDFF4C
  'Data Table: 45ECFC
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_45ED0E As Connection15
  Dim var_B8 As Variant
  loc_FDFD7C: On Error Goto loc_FDFF06
  loc_FDFD91: Set var_8C = Me
  loc_FDFD97: Proc_6_23_DFBA28(var_8C, 3810)
  loc_FDFD9F: Call Proc_16_34_F8B334(7485)
  loc_FDFDC8: unk_45ED0E.Execute "SELECT Code,Name FROM Waiter where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B8, -1
  loc_FDFDF7: CVarUnk
  loc_FDFDFC: VerifyVarObj
  loc_FDFE08: LateIdStAd
  loc_FDFE31: var_98 = "Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' And RestType in('Outlet','Room Service','Production') Order by Name"
  loc_FDFE3A: unk_45ED0E.Execute var_98, var_B8, -1
  loc_FDFE69: CVarUnk
  loc_FDFE6E: VerifyVarObj
  loc_FDFE7A: LateIdStAd
  loc_FDFEA3: var_98 = "SELECT W.*,D.Name As RestName FROM Waiter W Left Join Depart D ON W.RestCode=D.Code WHere (W.LOGSITE_CODE='" & MemVar_1F92078 & "' or W.LOGSITE_CODE='HO') Order by D.Name,W.Name"
  loc_FDFEAC: unk_45ED0E.Execute var_98, var_B8, -1
  loc_FDFEDE: Set var_8C = Me
  loc_FDFEE7: var_94 = "INI"
  loc_FDFEF5: Call Proc_16_29_E79634(Proc_5_1_100CB50(var_94, var_8C, Me.DGRest, var_8C, var_8C), Me.DGHelp, var_8C)
  loc_FDFF00: Call Proc_16_31_10762D8(var_8C, var_8C)
  loc_FDFF05: Exit Sub
  loc_FDFF06: ' Referenced from: FDFD7C
  loc_FDFF0E: Set var_8C = Err()
  loc_FDFF14: Call 0.Method_arg_2C (var_94)
  loc_FDFF35: MsgBox(CVar(var_94), &H40, "Information", var_EC, var_10C)
  loc_FDFF48: Exit Sub
  loc_FDFF49: Exit Sub
End Sub

Private Sub Form_Resize() 'DFC588
  'Data Table: 45ECFC
  loc_DFC584: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E51098
  'Data Table: 45ECFC
  loc_E5106B: Set global_52 = Nothing
  loc_E5107D: Set global_56 = Nothing
  loc_E5108F: Set global_60 = Nothing
  loc_E51096: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27EB0
  'Data Table: 45ECFC
  loc_E27E88: On Error Goto loc_E27EA7
  loc_E27E9F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E27EA7: ' Referenced from: E27E88
  loc_E27EA7: Proc_6_60_E62BC4(Shift)
  loc_E27EAC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FA066C
  'Data Table: 45ECFC
  Dim var_94 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_88 As String
  Dim var_C0 As TextBox
  loc_FA04FC: On Error Goto loc_FA0628
  loc_FA04FF: Call Proc_16_30_E9E518()
  loc_FA0527: Call Proc_16_29_E79634(Proc_5_1_100CB50("ADD", Me))
  loc_FA053D: Set var_8C = Me.Txt
  loc_FA0543: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_FA054B: var_94.SetFocus
  loc_FA056E: If (Me.RecordCount > 0) Then
  loc_FA05AA:   Set var_BC = Me.Txt
  loc_FA05B0:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C0)
  loc_FA05B8:   var_C0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_FA05F7:   var_88 = Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")))
  loc_FA0605:   Set var_BC = Me.Txt
  loc_FA060B:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C0)
  loc_FA0613:   var_C0.Tag = var_88
  loc_FA0627: End If
  loc_FA0627: Exit Sub
  loc_FA0628: ' Referenced from: FA04FC
  loc_FA0630: Set var_8C = Err()
  loc_FA0636: Call 0.Method_arg_2C (var_88)
  loc_FA0657: MsgBox(CVar(var_88), &H40, "Information", var_F0, var_110)
  loc_FA066A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBF64C
  'Data Table: 45ECFC
  loc_EBF5B4: On Error Goto loc_EBF644
  loc_EBF5EE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBF5F1:   Call Proc_16_33_EBB904()
  loc_EBF602:   Set var_110 = Me
  loc_EBF619:   Call Proc_16_29_E79634(Proc_5_1_100CB50("INI", var_110))
  loc_EBF624:   Call Proc_16_31_10762D8(global_52)
  loc_EBF62C: Else
  loc_EBF632:   Call 0.Method_arg_1E8 (var_110)
  loc_EBF63A:   Call var_110.SetFocus
  loc_EBF643: End If
  loc_EBF643: Exit Sub
  loc_EBF644: ' Referenced from: EBF5B4
  loc_EBF644: Proc_6_60_E62BC4()
  loc_EBF649: Exit Sub
  loc_EBF64A: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10DFAE8
  'Data Table: 45ECFC
  Dim var_96 As Integer
  Dim unk_45ED0E As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10DF808: On Error Goto loc_10DFA91
  loc_10DF819: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_10DF81C:   Exit Sub
  loc_10DF81D: End If
  loc_10DF854: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10DF859:   var_96 = 0
  loc_10DF865:   unk_45ED0E.BeginTrans var_11C
  loc_10DF86C:   var_96 = &HFF
  loc_10DF880:   var_94 = Me.Bookmark 'Variant
  loc_10DF8CC:   var_F8 = "Delete From Waiter Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10DF8DA:   unk_45ED0E.Execute CStr(var_F8), var_118, -1
  loc_10DF925:   var_164 = 0
  loc_10DF938:   var_15C = 0
  loc_10DF943:   var_158 = 0
  loc_10DF956:   var_150 = 0
  loc_10DF961:   var_14C = 0
  loc_10DF974:   var_144 = 0
  loc_10DF9B4:   var_128 = "Waiter"
  loc_10DF9BD:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_10DF9EB:   unk_45ED0E.CommitTrans
  loc_10DF9F2:   var_96 = 0
  loc_10DFA00:   Me.Requery -1
  loc_10DFA10:   Me.Requery -1
  loc_10DFA30:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10DFA3D:     Me.Bookmark = var_94
  loc_10DFA45:   Else
  loc_10DFA59:     If (Me.EOF = 0) Then
  loc_10DFA62:       Me.MoveLast
  loc_10DFA67:     End If
  loc_10DFA67:   End If
  loc_10DFA67:   Call Proc_16_31_10762D8(var_96, var_144, 0, var_14C, var_150)
  loc_10DFA88:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_10DFA90: End If
  loc_10DFA90: Exit Sub
  loc_10DFA91: ' Referenced from: 10DF808
  loc_10DFA97: If (var_96 = &HFF) Then
  loc_10DFAA0:   unk_45ED0E.RollbackTrans
  loc_10DFAA5: End If
  loc_10DFAAD: Set var_120 = Err()
  loc_10DFAB3: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10DFAD4: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10DFAE7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F22B94
  'Data Table: 45ECFC
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F22A98: On Error Goto loc_F22B4F
  loc_F22AA9: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F22AAC:   Exit Sub
  loc_F22AAD: End If
  loc_F22AC4: If (Me.RecordCount > 0) Then
  loc_F22ADC:   var_8C = "EDIT"
  loc_F22AEA:   Call Proc_16_29_E79634(Proc_5_1_100CB50(var_8C, Me))
  loc_F22B00:   Set var_90 = Me.Txt
  loc_F22B06:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_F22B0E:   var_98.SetFocus
  loc_F22B1D: Else
  loc_F22B3E:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F22B4E: End If
  loc_F22B4E: Exit Sub
  loc_F22B4F: ' Referenced from: F22A98
  loc_F22B57: Set var_90 = Err()
  loc_F22B5D: Call 0.Method_arg_2C (var_8C)
  loc_F22B7E: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F22B91: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1BB24
  'Data Table: 45ECFC
  loc_E1BB19: Me.Global.Unload Me
  loc_E1BB21: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F235D8
  'Data Table: 45ECFC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F234D8: On Error Goto loc_F23570
  loc_F234E4: var_88 = Me.RecordCount
  loc_F234F2: If (var_88 <= 0) Then
  loc_F234FB:   var_B8 = "Information"
  loc_F23516:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F23526:   Exit Sub
  loc_F23527: End If
  loc_F2352E: var_10C = "Select W.Code As SearchCode,D.Name As RestName,W.Name,W.ActiveYN FROM Waiter W Left Join Depart D ON W.RestCode=D.Code Where (W.LOGSITE_CODE='" & MemVar_1F92078
  loc_F23535: MemVar_1F920E4 = var_10C & "' or W.LOGSITE_CODE='HO') Order by D.Name,W.Name"
  loc_F2353F: var_10C = "3000,3000"
  loc_F23545: Proc_6_126_F1BCC0(var_10C)
  loc_F23553: MemVar_1F92120 = Me
  loc_F2356A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F2356F: Exit Sub
  loc_F23570: ' Referenced from: F234D8
  loc_F23578: Set var_110 = Err()
  loc_F2357E: Call 0.Method_arg_1C (var_88)
  loc_F2358F: If (var_88 <> 0) Then
  loc_F2359A:   Set var_110 = Err()
  loc_F235A0:   Call 0.Method_arg_2C (var_10C)
  loc_F235C1:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F235D4: End If
  loc_F235D4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E36E58
  'Data Table: 45ECFC
  Dim var_7C00 As Integer
  loc_E36E48: Proc_5_0_110649C(&HFF, Me)
  loc_E36E50: Call Proc_16_31_10762D8(global_52)
  loc_E36E55: Exit Sub
  loc_E36E56: var_7C00 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E36A38
  'Data Table: 45ECFC
  loc_E36A28: Proc_5_0_110649C(&HFF, Me)
  loc_E36A30: Call Proc_16_31_10762D8(global_52)
  loc_E36A35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E36AF8
  'Data Table: 45ECFC
  Dim var_7C00 As Integer
  loc_E36AE8: Proc_5_0_110649C(&HFF, Me)
  loc_E36AF0: Call Proc_16_31_10762D8(global_52)
  loc_E36AF5: Exit Sub
  loc_E36AF6: var_7C00 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E36CD8
  'Data Table: 45ECFC
  loc_E36CC8: Proc_5_0_110649C(&HFF, Me)
  loc_E36CD0: Call Proc_16_31_10762D8(global_52)
  loc_E36CD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '108D124
  'Data Table: 45ECFC
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_45ED0E As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_108CE8C: On Error Goto loc_108D0D8
  loc_108CEA3: var_A0 = "SELECT D.Name As RestName,W.* from Waiter W Left Join Depart D ON W.RestCode=D.Code Where (W.LOGSITE_CODE='" & MemVar_1F92078
  loc_108CEB3: unk_45ED0E.Execute var_A0 & "' or W.LOGSITE_CODE='HO') order by D.Name,W.Name", var_C4, -1
  loc_108CEBE: Set var_88 = var_C8
  loc_108CED4: var_CC = var_88.RecordCount
  loc_108CEE2: If (var_CC = 0) Then
  loc_108CEFE:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108CF0E:   Exit Sub
  loc_108CF0F: End If
  loc_108CF1E: var_A4 = MemVar_1F920B4 & "\WaiterMast.ttx"
  loc_108CF25: Set var_C8 = var_88 
  loc_108CF31: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108CF3B: Set var_88 = var_C8
  loc_108CF41: var_B4 = CVar(var_12E) 'Integer
  loc_108CF44: var_98 = var_B4 'Variant
  loc_108CF60: var_A0 = MemVar_1F920B4 & "\WaiterMast.RPT"
  loc_108CF69: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108CF74: MemVar_1F921E4 = var_C8
  loc_108CF8F: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108CF97: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108CFA3: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108CFBC:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108CFC4:   Call 0.Method_arg_20 (var_138)
  loc_108CFCC:   Call 0.Method_arg_30 (var_A0)
  loc_108D012:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108D028:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108D030:     Call 0.Method_arg_20 (var_138)
  loc_108D038:     Call 0.Method_arg_38 ("'Waiter Master'")
  loc_108D044:   End If
  loc_108D047: Next var_132 'Integer
  loc_108D065: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_108D06D: Call 0.Method_arg_2C (var_DC)
  loc_108D07B: Call 0.Method_arg_150 (var_FC)
  loc_108D086: Call 0.Method_arg_50 (var_A0)
  loc_108D090: Set var_138 = Nothing
  loc_108D0AA: Set var_C8 = MemVar_1F921E4 
  loc_108D0B6: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_108D0C1: MemVar_1F921E4 = var_C8
  loc_108D0D4: Set var_88 = Nothing
  loc_108D0D7: Exit Sub
  loc_108D0D8: ' Referenced from: 108CE8C
  loc_108D0E0: Set var_C8 = Err()
  loc_108D0E6: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108D0F1: Call 0.Method_arg_50 (var_A4)
  loc_108D10D: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108D120: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E23CAC
  'Data Table: 45ECFC
  Dim Me As Recordset15
  loc_E23C93: Me.Requery -1
  loc_E23CA3: Me.Requery -1
  loc_E23CA8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12CE404
  'Data Table: 45ECFC
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_45ED0E As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_B0 As Variant
  Dim var_164 As TextBox
  Dim var_178 As Variant
  Dim var_1B0 As TextBox
  loc_12CDDE8: On Error Goto loc_12CE3AF
  loc_12CDDEF: var_86 = CByte(0) 'Byte
  loc_12CDDFE: Set var_90 = Me.Txt
  loc_12CDE04: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_12CDE2D: If (Proc_183_19_E8DAFC(var_94, "Name") = 0) Then
  loc_12CDE37:   Call Txt_GotFocus(CInt(1))
  loc_12CDE3C:   Exit Sub
  loc_12CDE3D: End If
  loc_12CDE41: Set var_90 = Me.TopCtrl1
  loc_12CDE47: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_94)
  loc_12CDE60: If (CStr() = "Add") Then
  loc_12CDE6B:   If (MemVar_1F923AC = "A") Then
  loc_12CDE74:     var_D4 = 0
  loc_12CDE91:     var_9C = "Select iif(IsNull(Max(val(MID(Code,3)))),1,Max(val(MID(Code,3)))+1)AS MyCode From Waiter WHERE SITE_CODE='" & MemVar_1F92070
  loc_12CDEA1:     unk_45ED0E.Execute CStr() & "'", var_B0, -1
  loc_12CDEA9:     var_90 = var_90.Fields
  loc_12CDEB1:     var_D4 = var_94.Item(var_94)
  loc_12CDEB9:     var_98 = var_98.Value
  loc_12CDEC8:     global_68 = CStr(var_E4)
  loc_12CDEE8:   Else
  loc_12CDEF0:     If (MemVar_1F923AC = "S") Then
  loc_12CDEF9:       var_D4 = 0
  loc_12CDF16:       var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From Waiter WHERE SITE_CODE='" & MemVar_1F92070
  loc_12CDF1D:       var_B4 = CStr() & "'"
  loc_12CDF26:       unk_45ED0E.Execute var_B4, var_B0, -1
  loc_12CDF2E:       var_90 = var_90.Fields
  loc_12CDF36:       var_D4 = var_94.Item(var_94)
  loc_12CDF3E:       var_98 = var_98.Value
  loc_12CDF4D:       global_68 = CStr(var_E4)
  loc_12CDF6A:     End If
  loc_12CDF6A:   End If
  loc_12CDF77:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_12CDF9D:   var_E4 = Format(global_68, "000")
  loc_12CDFA5:   var_108 = (1 + var_E4)
  loc_12CDFB0:   global_68 = CStr(var_108)
  loc_12CDFC5: Else
  loc_12CDFE2:   var_94 = Me.Fields.Item("Code")
  loc_12CDFF9:   global_68 = CStr(var_94.Value)
  loc_12CE00A: End If
  loc_12CE013: unk_45ED0E.BeginTrans var_10C
  loc_12CE01C: var_86 = CByte(1) 'Byte
  loc_12CE024: Set var_90 = Me.TopCtrl1
  loc_12CE02A: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(1)
  loc_12CE043: If (CStr(var_F8) = "Add") Then
  loc_12CE05D:   var_9C = "Insert Into Waiter(Code,Name,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,RestCode,ActiveYN) Values('" & global_68
  loc_12CE064:   var_E8 = var_9C & "','"
  loc_12CE075:   Set var_90 = Me.Txt
  loc_12CE07B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_B4, var_E8, var_218)
  loc_12CE083:   -1 = var_94.Text
  loc_12CE0BD:   Proc_6_7_F25D88(var_E4, CVar(Proc_6_15_EF2C1C(CVar(var_21C & var_B4 & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',"), var_E4)))
  loc_12CE0F3:   Set var_98 = Me.Txt
  loc_12CE0F9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_164)
  loc_12CE127:   Set var_1AC = Me.Txt
  loc_12CE12D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1B0)
  loc_12CE157:   unk_45ED0E.Execute CStr(var_E4 & var_E4 & ",'A','" & CVar(MemVar_1F92078) & "','" & CVar(var_164.Tag) & "','" & CVar(var_1B0.Text) & "' )"), , 
  loc_12CE1A4: Else
  loc_12CE1C2:   Set var_90 = Me.Txt
  loc_12CE1C8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE Waiter SET RestCode='")
  loc_12CE1D0:   var_178 = var_94.Tag
  loc_12CE1D9:   var_B4 = -1 & var_9C
  loc_12CE1E0:   var_110 = var_B4 & "',Name='"
  loc_12CE1F1:   Set var_98 = Me.Txt
  loc_12CE1F7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_164, var_E8)
  loc_12CE1FF:   var_110 = var_164.Text
  loc_12CE220:   Set var_1AC = Me.Txt
  loc_12CE226:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1B0)
  loc_12CE25A:   var_F8 = CVar(var_21C & var_E8 & "',ActiveYN='" & var_1B0.Text & "',SITE_CODE='" & MemVar_1F92070 & "',U_name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_12CE268:   Proc_6_7_F25D88(var_E4)
  loc_12CE270:   var_108 = CVar(Proc_6_15_EF2C1C(var_F8)) & var_E4 
  loc_12CE274:   var_C4 = " ,U_AE='E' WHERE Code='"
  loc_12CE29D:   unk_45ED0E.Execute CStr(var_108 & var_C4 & CVar(global_68) & "'"), , 
  loc_12CE2E3: End If
  loc_12CE2E9: unk_45ED0E.CommitTrans
  loc_12CE2F2: var_86 = CByte(0) 'Byte
  loc_12CE301: Me.Requery -1
  loc_12CE311: Me.Requery -1
  loc_12CE33E: Me.Find "Code='" & global_68 & "'", 0, 1
  loc_12CE34E: Set var_90 = Me.TopCtrl1
  loc_12CE354: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_C4)
  loc_12CE36D: If (CStr() = "Add") Then
  loc_12CE370:   Call TopCtrl1_UnknownEvent_A()
  loc_12CE375:   Exit Sub
  loc_12CE376: End If
  loc_12CE38B: var_9C = "INI"
  loc_12CE399: Call Proc_16_29_E79634(Proc_5_1_100CB50(var_9C, Me))
  loc_12CE3A4: Call Proc_16_33_EBB904(global_52)
  loc_12CE3A9: Call Proc_16_31_10762D8()
  loc_12CE3AE: Exit Sub
  loc_12CE3AF: ' Referenced from: 12CDDE8
  loc_12CE3B8: If (CInt(var_86) = 1) Then
  loc_12CE3C1:   unk_45ED0E.RollbackTrans
  loc_12CE3C6: End If
  loc_12CE3CE: Set var_90 = Err()
  loc_12CE3D4: Call 0.Method_arg_2C (var_9C)
  loc_12CE3ED: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_12CE400: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F4F784
  'Data Table: 45ECFC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4F67B: Me.DGRest.Visible = False
  loc_F4F69A: If (Me.RecordCount > 0) Then
  loc_F4F6D9:   Set var_B4 = Me.Txt
  loc_F4F6DF:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4F6E7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4F71A:   var_B0 = Me.Fields.Item("Code")
  loc_F4F739:   Set var_B4 = Me.Txt
  loc_F4F73F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4F747:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4F75D: End If
  loc_F4F768: Set var_A8 = Me.Txt
  loc_F4F76E: Call 0.Method_DGRest_UnknownEvent_90 (CInt(0))
  loc_F4F776: var_B0.SetFocus
  loc_F4F782: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E711CC
  'Data Table: 45ECFC
  loc_E7118A: Proc_6_153_E91194(Me.DGRest, arg_14)
  loc_E711A1: Set var_8C = Me.FGPoint
  loc_E711BD: Proc_6_138_106D6F8(Me.DGRest, global_60, CInt(0))
  loc_E711CB: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBFD44
  'Data Table: 45ECFC
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBFCBA: On Error Goto loc_EBFCFF
  loc_EBFCC3: Me.MoveFirst
  loc_EBFCDD: var_8C = "code='" & MyValue
  loc_EBFCED: Me.Find var_8C & "'", 0, 1
  loc_EBFCF9: Call Proc_16_31_10762D8(var_A0)
  loc_EBFCFE: Exit Sub
  loc_EBFCFF: ' Referenced from: EBFCBA
  loc_EBFD07: Set var_A4 = Err()
  loc_EBFD0D: Call 0.Method_arg_2C (var_8C)
  loc_EBFD2E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBFD41: Exit Sub
  loc_EBFD42: Exit Sub
End Sub

Public Sub Proc_16_29_E79634(arg_C) 'E79634
  'Data Table: 45ECFC
  Dim var_98 As TextBox
  loc_E795E2: Set var_8C = Me.Txt
  loc_E795E8: Call 0.Method_Proc_16_29_E79634C (var_8E, var_86)
  loc_E795F8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7960E:   Set var_8C = Me.Txt
  loc_E79614:   Call 0.Method_Proc_16_29_E796340 (CInt(var_86), var_98)
  loc_E7961C:   var_98.Enabled = arg_C
  loc_E7962B: Next var_92 'Byte
  loc_E79631: Exit Sub
End Sub

Public Sub Proc_16_30_E9E518
  'Data Table: 45ECFC
  Dim var_98 As TextBox
  loc_E9E49E: Set var_8C = Me.Txt
  loc_E9E4A4: Call 0.Method_Proc_16_30_E9E518C (var_8E, var_86)
  loc_E9E4B4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9E4CA:   Set var_8C = Me.Txt
  loc_E9E4D0:   Call 0.Method_Proc_16_30_E9E5180 (CInt(var_86), var_98)
  loc_E9E4D8:   var_98.Text = vbNullString
  loc_E9E4E7: Next var_92 'Byte
  loc_E9E4FB: Set var_8C = Me.Txt
  loc_E9E501: Call 0.Method_Proc_16_30_E9E5180 (CInt(2), var_98)
  loc_E9E509: var_98.Text = "Yes"
  loc_E9E515: Exit Sub
End Sub

Public Sub Proc_16_31_10762D8
  'Data Table: 45ECFC
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B4 As String
  Dim var_BC As TextBox
  loc_107604C: On Error Goto loc_1076293
  loc_1076055: Proc_183_45_E5C118(global_52)
  loc_1076071: If (Me.RecordCount <= 0) Then
  loc_1076074:   Call Proc_16_30_E9E518()
  loc_107607C: Else
  loc_10760B0:   global_68 = CStr(Me.Fields.Item("Name").Value)
  loc_10760FA:   Set var_B8 = Me.Txt
  loc_1076100:   Call 0.Method_Proc_16_31_10762D80 (CInt(0), var_BC)
  loc_1076108:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestName")))
  loc_1076155:   Set var_B8 = Me.Txt
  loc_107615B:   Call 0.Method_Proc_16_31_10762D80 (CInt(0), var_BC)
  loc_1076163:   var_BC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestCode")))
  loc_10761B0:   Set var_B8 = Me.Txt
  loc_10761B6:   Call 0.Method_Proc_16_31_10762D80 (CInt(2), var_BC)
  loc_10761BE:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ActiveYN")))
  loc_107620E:   Set var_B8 = Me.Txt
  loc_1076214:   Call 0.Method_Proc_16_31_10762D80 (CInt(1), var_BC)
  loc_107621C:   var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1076260:   var_B4 = CStr(Me.Fields.Item("Code").Value)
  loc_107626E:   Set var_B8 = Me.Txt
  loc_1076274:   Call 0.Method_Proc_16_31_10762D80 (CInt(1), var_BC)
  loc_107627C:   var_BC.Tag = var_B4
  loc_1076292: End If
  loc_1076292: Exit Sub
  loc_1076293: ' Referenced from: 107604C
  loc_107629B: Set var_8C = Err()
  loc_10762A1: Call 0.Method_arg_2C (var_B4)
  loc_10762C2: MsgBox(CVar(var_B4), &H40, "Information", var_EC, var_10C)
  loc_10762D5: Exit Sub
End Sub

Public Sub Proc_16_32_1133DD0
  'Data Table: 45ECFC
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As Variant
  Dim unk_45ED0E As Connection15
  Dim var_E0 As Recordset15
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_19C As Integer
  Dim var_108 As Variant
  Dim var_B8 As Fields15
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_18C As Fields15
  Dim var_1A0 As Field20
  loc_1133AB7: If (Me.RecordCount = 0) Then
  loc_1133ABA:   Proc_16_32_1133DD0 = 
  loc_1133AC0: End If
  loc_1133AC4: Set var_90 = Me.TopCtrl1
  loc_1133ACA: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1133AE3: If (CStr() = "Add") Then
  loc_1133AEC:   var_F4 = 0
  loc_1133B21:   Set var_90 = Me.Txt
  loc_1133B27:   Call 0.Method_Proc_16_32_1133DD00 (CInt(1), var_A8, var_AC, "Select Count(*) From Waiter Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1133B50:   Set var_B8 = Me.Txt
  loc_1133B56:   Call 0.Method_Proc_16_32_1133DD00 (CInt(0), var_BC, var_C0, var_E4 & var_AC & "' And RestCode='")
  loc_1133B5E:   var_F4 = var_BC.Tag
  loc_1133B77:   unk_45ED0E.Execute var_F8 & var_C0 & "'", var_108, 
  loc_1133B7F:    = var_A8.Text.Fields
  loc_1133B87:    = var_E4.Item()
  loc_1133B8F:    = var_F8.Value
  loc_1133BCA:   If (var_108 > 0) Then
  loc_1133BEE:     MsgBox("Duplicate Name", &H40, "Information", var_128, var_148)
  loc_1133C09:     Set var_90 = Me.Txt
  loc_1133C0F:     Call 0.Method_Proc_16_32_1133DD00 (CInt(1))
  loc_1133C17:     var_A8.SetFocus
  loc_1133C28:     Proc_16_32_1133DD0 = &HFF
  loc_1133C2E:   End If
  loc_1133C31: Else
  loc_1133C37:   var_19C = 0
  loc_1133C6C:   Set var_90 = Me.Txt
  loc_1133C72:   Call 0.Method_Proc_16_32_1133DD00 (CInt(1), var_A8, var_AC, "Select Count(*) From Waiter Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (Name='", var_188, -1)
  loc_1133CBA:   var_128 = CVar(var_18C & var_AC & "' And Name<>'") & Me.Fields.Item("Name").Value 
  loc_1133CC3:   var_148 = var_128 & "') And RestCode='" 
  loc_1133CD5:   Set var_E0 = Me.Txt
  loc_1133CDB:   Call 0.Method_Proc_16_32_1133DD00 (CInt(0), var_E4, var_C0, var_148)
  loc_1133CE3:   var_19C = var_E4.Tag
  loc_1133D05:   unk_45ED0E.Execute CStr(var_1A0 & CVar(var_C0) & "'"), var_1B0, var_A8
  loc_1133D0D:    = var_A8.Text.Fields
  loc_1133D15:    = var_18C.Item()
  loc_1133D1D:    = var_1A0.Value
  loc_1133D64:   If (var_1B0 > 0) Then
  loc_1133D88:     MsgBox("Duplicate Name", &H40, "Information", var_128, var_148)
  loc_1133DA3:     Set var_90 = Me.Txt
  loc_1133DA9:     Call 0.Method_Proc_16_32_1133DD00 (CInt(1))
  loc_1133DB1:     var_A8.SetFocus
  loc_1133DC2:     Proc_16_32_1133DD0 = &HFF
  loc_1133DC8:   End If
  loc_1133DC8: End If
  loc_1133DC8: Proc_16_32_1133DD0 = var_A8
End Sub

Public Sub Proc_16_33_EBB904
  'Data Table: 45ECFC
  loc_EBB87C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBB88E:   Me.DGHelp.Visible = False
  loc_EBB896: End If
  loc_EBB8B2: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EBB8C4:   Me.DGRest.Visible = False
  loc_EBB8CC: End If
  loc_EBB8E8: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBB8FA:   Me.FGPoint.Visible = False
  loc_EBB902: End If
  loc_EBB902: Exit Sub
End Sub

Public Sub Proc_16_34_F8B334
  'Data Table: 45ECFC
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_F8B1E2: Set var_88 = Me.Txt
  loc_F8B1E8: Call 0.Method_Proc_16_34_F8B3340 (CInt(1), var_8C)
  loc_F8B207: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_F8B223: Set var_B4 = Me.Txt
  loc_F8B229: Call 0.Method_Proc_16_34_F8B3340 (CInt(1), var_B8)
  loc_F8B244: Set var_88 = Me.Txt
  loc_F8B24A: Call 0.Method_Proc_16_34_F8B3340 (CInt(1), var_8C)
  loc_F8B262: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_F8B271: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_F8B291: Set var_88 = Me.Txt
  loc_F8B297: Call 0.Method_Proc_16_34_F8B3340 (CInt(0), var_8C)
  loc_F8B2B6: Me.DGRest.Left = CVar(var_8C.Left)
  loc_F8B2D2: Set var_B4 = Me.Txt
  loc_F8B2D8: Call 0.Method_Proc_16_34_F8B3340 (CInt(0), var_B8)
  loc_F8B2F3: Set var_88 = Me.Txt
  loc_F8B2F9: Call 0.Method_Proc_16_34_F8B3340 (CInt(0), var_8C)
  loc_F8B311: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_F8B320: Me.DGRest.Top = CVar(var_8C.Left)
  loc_F8B332: Exit Sub
End Sub
