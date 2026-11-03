VERSION 5.00
Begin VB.Form frmBlockMast
  Caption = "Block Master"
  ForeColor = &HFF0000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2880
    Top = 2940
    Width = 1845
    Height = 285
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2880
    Top = 2625
    Width = 585
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2880
    Top = 2310
    Width = 4215
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 450
    TabIndex = 0
  End
  Begin MSFlexGrid FGPoint
    Left = 12990
    Top = 1095
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 1
  End
  Begin DataGrid DGHelp
    Left = 10995
    Top = 3645
    Width = 4245
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin CommonDialog CDLG
  End
  Begin Label LblHelp
    Caption = "Help"
    ForeColor = &HC0&
    Left = 75
    Top = 6360
    Width = 14190
    Height = 1575
    TabIndex = 14
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
  Begin Label Label1
    Caption = "Color Selection"
    Index = 3
    ForeColor = &HC0&
    Left = 1365
    Top = 3405
    Width = 1470
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
    Index = 14
    BackColor = &H8080FF&
    ForeColor = &H0&
    Left = 2895
    Top = 3270
    Width = 4290
    Height = 405
    TabIndex = 10
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Shape Shape1
    BorderColor = &HC00000&
    Left = 2880
    Top = 3270
    Width = 4335
    Height = 435
    BorderWidth = 2
  End
  Begin Label LblName
    Caption = "Status"
    Index = 2
    ForeColor = &HFF0000&
    Left = 1605
    Top = 2880
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
  Begin Label LblName
    Caption = "Short Name"
    Index = 1
    ForeColor = &HFF0000&
    Left = 1605
    Top = 2595
    Width = 1125
    Height = 240
    TabIndex = 8
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
    Caption = "Block Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 1605
    Top = 2310
    Width = 1140
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
    Left = 0
    Top = 435
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 12105
    Top = 7815
    Width = 2880
    Height = 255
    TabIndex = 5
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
    Left = 12285
    Top = 8490
    Width = 2790
    Height = 285
    TabIndex = 4
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
End

Attribute VB_Name = "frmBlockMast"


Private Sub FGPoint_UnknownEvent_9 'E3A154
  'Data Table: 454CB8
  Dim MeFF As Integer
  loc_E3A148: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3A14B:   Call DGHelp_UnknownEvent_9()
  loc_E3A150: End If
  loc_E3A150: Exit Sub
  loc_E3A151: MeFF = 
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE48BC
  'Data Table: 454CB8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE4813: Me.DGHelp.Visible = False
  loc_EE4832: If (Me.RecordCount > 0) Then
  loc_EE4852:   var_B0 = Me.Fields.Item("Name")
  loc_EE4871:   Set var_B4 = Me.Txt
  loc_EE4877:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE487F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE4895: End If
  loc_EE48A0: Set var_A8 = Me.Txt
  loc_EE48A6: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE48AE: var_B0.SetFocus
  loc_EE48BA: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E758E8
  'Data Table: 454CB8
  loc_E758A6: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E758BD: Set var_8C = Me.FGPoint
  loc_E758D9: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0))
  loc_E758E7: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EEA5B8
  'Data Table: 454CB8
  Dim var_8C As Label
  Dim var_96 As Integer
  Dim Me As Recordset15
  loc_EEA4FA: Set var_88 = Me.Txt
  loc_EEA500: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EEA50E: Proc_6_74_E226B0(var_8C)
  loc_EEA51A: Call Proc_255_29_E83560(var_8C)
  loc_EEA540: Me.LblHelp.Caption = Proc_6_154_EE76D0(Me)
  loc_EEA552: var_96 = Index
  loc_EEA55D: If (var_96 = CInt(0)) Then
  loc_EEA577:   If (Me.RecordCount > 0) Then
  loc_EEA585:     Set var_8C = Me.FGPoint
  loc_EEA59D:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_EEA5AB:   End If
  loc_EEA5AE: Else
  loc_EEA5B4:   If (var_96 = 2) Then
  loc_EEA5B7:   End If
  loc_EEA5B7: End If
  loc_EEA5B7: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FC2DDC
  'Data Table: 454CB8
  Dim Me As Recordset15
  loc_FC2C3E: If (CLng(Shift) = &H1B) Then
  loc_FC2C41:   Call Proc_255_29_E83560()
  loc_FC2C46:   Exit Sub
  loc_FC2C47: End If
  loc_FC2C55: If (KeyCode = CInt(0)) Then
  loc_FC2C75:   Set var_9C = Me.FGPoint
  loc_FC2CA7:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_FC2D14:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FC2D1B:     Set var_9C = Me.DGHelp
  loc_FC2D3A:     Proc_6_138_106D6F8(var_9C, global_56, KeyCode, Me.FGPoint, 0)
  loc_FC2D48:   End If
  loc_FC2D48: End If
  loc_FC2D64: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FC2D85:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_FC2D8B:     Call Proc_255_31_E90428(KeyCode, 1, var_9C)
  loc_FC2D93:   Else
  loc_FC2DA8:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FC2DB1:       Proc_6_75_E527CC(Shift, arg_14)
  loc_FC2DB9:     Else
  loc_FC2DCC:       If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FC2DD5:         Proc_6_76_E52838(Shift, arg_14)
  loc_FC2DDA:       End If
  loc_FC2DDA:     End If
  loc_FC2DDA:   End If
  loc_FC2DDA: End If
  loc_FC2DDA: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE9D88
  'Data Table: 454CB8
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_EE9CD4: If (KeyAscii = 2) Then
  loc_EE9D00:   If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_EE9D10:     Set var_CC = Me.Txt
  loc_EE9D16:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EE9D1E:     var_D0.Text = "Active"
  loc_EE9D2D:   Else
  loc_EE9D56:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_EE9D66:       Set var_CC = Me.Txt
  loc_EE9D6C:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EE9D74:       var_D0.Text = "Non Active"
  loc_EE9D80:     End If
  loc_EE9D80:   End If
  loc_EE9D82:   arg_10 = 0
  loc_EE9D85: End If
  loc_EE9D85: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC6730
  'Data Table: 454CB8
  loc_EC66A2: If (KeyCode = CInt(0)) Then
  loc_EC66C1:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC66CE:     var_A4 = "Name"
  loc_EC66ED:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_56)
  loc_EC671F:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC672D:   End If
  loc_EC672D: End If
  loc_EC672D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B00C
  'Data Table: 454CB8
  loc_E4AFEA: Set var_88 = Me.Txt
  loc_E4AFF0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4AFFE: Proc_6_73_E22704(var_8C)
  loc_E4B00A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F21384
  'Data Table: 454CB8
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As TextBox
  loc_F2128B: var_86 = Cancel
  loc_F21296: If (var_86 = CInt(0)) Then
  loc_F2129C:   Call Proc_255_32_115ECE4(var_88)
  loc_F212A7:   If (var_88 = &HFF) Then
  loc_F212AC:     arg_10 = &HFF
  loc_F212AF:     Exit Sub
  loc_F212B0:   End If
  loc_F212B3: Else
  loc_F212BB:   If (var_86 = CInt(1)) Then
  loc_F212C1:     Call Proc_255_32_115ECE4(var_88, arg_10)
  loc_F212CC:     If (var_88 = &HFF) Then
  loc_F212D1:       arg_10 = &HFF
  loc_F212D4:       Exit Sub
  loc_F212D5:     End If
  loc_F212D8:   Else
  loc_F212DE:     If (var_86 = 2) Then
  loc_F212EB:       Set var_8C = Me.Txt
  loc_F212F1:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F2132C:       If (Ucase(Left(CVar(var_90), 1)) = "Active") Then
  loc_F2133C:         Set var_8C = Me.Txt
  loc_F21342:         Call 0.Method_Txt_Validate0 (Cancel, var_90, "Active")
  loc_F2134A:         var_90.Text = arg_10
  loc_F21359:       Else
  loc_F21366:         Set var_8C = Me.Txt
  loc_F2136C:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F21374:         var_90.Text = "Non Active"
  loc_F21380:       End If
  loc_F21380:     End If
  loc_F21380:   End If
  loc_F21380: End If
  loc_F21380: Exit Sub
  loc_F21381: var_86 = 
End Sub

Private Sub Form_Load() '107C81C
  'Data Table: 454CB8
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_D8 As Variant
  Dim var_C8 As String
  Dim unk_454CC4 As Connection15
  loc_107C58C: On Error Goto loc_107C7D5
  loc_107C596: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_107C5AA: Me.LblUser.Left = CDbl(13500)
  loc_107C5C1: Me.LblUser.Top = CDbl(7800)
  loc_107C5D8: Me.LblLDt.Top = CDbl(8160)
  loc_107C5EF: Me.LblLDt.Left = CDbl(13500)
  loc_107C605: Set var_8C = Me.Txt
  loc_107C60B: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107C62A: Me.DGHelp.Left = CVar(var_90.Left)
  loc_107C646: Set var_B8 = Me.Txt
  loc_107C64C: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_107C667: Set var_8C = Me.Txt
  loc_107C66D: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107C685: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_107C694: Me.DGHelp.Top = CVar(var_90.Left)
  loc_107C6B0: Set var_8C = Me.TopCtrl1
  loc_107C6B6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_107C6C4: Call 0.Method_arg_50 (var_C8)
  loc_107C6CC: var_D8 = CVar(var_C8) 'String
  loc_107C6DA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(var_D8)
  loc_107C709: unk_454CC4.Execute "SELECT Code,Name FROM BlockMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107C738: CVarUnk
  loc_107C73D: VerifyVarObj
  loc_107C749: LateIdStAd
  loc_107C77B: unk_454CC4.Execute "SELECT * FROM BlockMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107C7B6: var_C8 = "INI"
  loc_107C7C4: Call Proc_255_28_E7C354(Proc_5_1_100CB50(var_C8, Me, Me.DGHelp, Me), Me)
  loc_107C7CF: Call Proc_255_30_1238244(Me.TopCtrl1)
  loc_107C7D4: Exit Sub
  loc_107C7D5: ' Referenced from: 107C58C
  loc_107C7DD: Set var_8C = Err()
  loc_107C7E3: Call 0.Method_arg_2C (var_C8)
  loc_107C804: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_107C817: Exit Sub
  loc_107C818: Exit Sub
End Sub

Private Sub Form_Resize() 'ED53C8
  'Data Table: 454CB8
  Dim var_8C As Label
  loc_ED5326: Call 0.Method_arg_50 (var_88)
  loc_ED5338: Me.LblFormCaption.Caption = var_88
  loc_ED5351: Me.LblFormCaption.Left = CDbl(0)
  loc_ED535D: Set var_A0 = Me.TopCtrl1
  loc_ED5363: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED5370: Set var_8C = Me.TopCtrl1
  loc_ED5376: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED5390: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED53AB: Call 0.Method_arg_100 (var_B8)
  loc_ED53BD: Me.LblFormCaption.Width = var_B8
  loc_ED53C5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E26BA4
  'Data Table: 454CB8
  loc_E26B87: Set global_52 = Nothing
  loc_E26B99: Set global_56 = Nothing
  loc_E26BA0: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E89088
  'Data Table: 454CB8
  loc_E89024: On Error Goto loc_E89044
  loc_E8903B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E89043: Exit Sub
  loc_E89044: ' Referenced from: E89024
  loc_E8904C: Set var_88 = Err()
  loc_E89052: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E89073: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E89086: Exit Sub
  loc_E89087: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ED54C4
  'Data Table: 454CB8
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_ED5410: On Error Goto loc_ED54BC
  loc_ED5420: Me.LblUser.Caption = vbNullString
  loc_ED5435: Me.LblLDt.Caption = vbNullString
  loc_ED5460: Call Proc_255_28_E7C354(Proc_5_1_100CB50("ADD", Me))
  loc_ED546B: Call Proc_255_27_EAFC14(global_52)
  loc_ED547B: Set var_88 = Me.Txt
  loc_ED5481: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED5489: var_94.SetFocus
  loc_ED54A1: Set var_88 = Me.Txt
  loc_ED54A7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (2, var_94)
  loc_ED54AF: var_94.Text = "Active"
  loc_ED54BB: Exit Sub
  loc_ED54BC: ' Referenced from: ED5410
  loc_ED54BC: Proc_6_60_E62BC4(var_94)
  loc_ED54C1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC68EC
  'Data Table: 454CB8
  loc_EC6854: On Error Goto loc_EC68E4
  loc_EC688E: If (MsgBox("Cancel ?", &H33, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC689D:   Set var_10C = Me
  loc_EC68B4:   Call Proc_255_28_E7C354(Proc_5_1_100CB50("INI", var_10C))
  loc_EC68BF:   Call Proc_255_29_E83560(global_52)
  loc_EC68C4:   Call Proc_255_30_1238244()
  loc_EC68CC: Else
  loc_EC68D2:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC68DA:   Call var_10C.SetFocus
  loc_EC68E3: End If
  loc_EC68E3: Exit Sub
  loc_EC68E4: ' Referenced from: EC6854
  loc_EC68E4: Proc_6_60_E62BC4()
  loc_EC68E9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10DED78
  'Data Table: 454CB8
  Dim var_96 As Integer
  Dim unk_454CC4 As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10DEA98: On Error Goto loc_10DED21
  loc_10DEAA9: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_10DEAAC:   Exit Sub
  loc_10DEAAD: End If
  loc_10DEAE4: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10DEAE9:   var_96 = 0
  loc_10DEAF5:   unk_454CC4.BeginTrans var_11C
  loc_10DEAFC:   var_96 = &HFF
  loc_10DEB10:   var_94 = Me.Bookmark 'Variant
  loc_10DEB5C:   var_F8 = "Delete From BlockMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10DEB6A:   unk_454CC4.Execute CStr(var_F8), var_118, -1
  loc_10DEBB5:   var_164 = 0
  loc_10DEBC8:   var_15C = 0
  loc_10DEBD3:   var_158 = 0
  loc_10DEBE6:   var_150 = 0
  loc_10DEBF1:   var_14C = 0
  loc_10DEC04:   var_144 = 0
  loc_10DEC44:   var_128 = "BlockMast"
  loc_10DEC4D:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_10DEC7B:   unk_454CC4.CommitTrans
  loc_10DEC82:   var_96 = 0
  loc_10DEC90:   Me.Requery -1
  loc_10DECA0:   Me.Requery -1
  loc_10DECC0:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10DECCD:     Me.Bookmark = var_94
  loc_10DECD5:   Else
  loc_10DECE9:     If (Me.EOF = 0) Then
  loc_10DECF2:       Me.MoveLast
  loc_10DECF7:     End If
  loc_10DECF7:   End If
  loc_10DECF7:   Call Proc_255_30_1238244(var_96, var_144, 0, var_14C, var_150)
  loc_10DED18:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_10DED20: End If
  loc_10DED20: Exit Sub
  loc_10DED21: ' Referenced from: 10DEA98
  loc_10DED27: If (var_96 = &HFF) Then
  loc_10DED30:   unk_454CC4.RollbackTrans
  loc_10DED35: End If
  loc_10DED3D: Set var_120 = Err()
  loc_10DED43: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10DED64: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10DED77: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F13908
  'Data Table: 454CB8
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F13810: On Error Goto loc_F138FF
  loc_F13821: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F13824:   Exit Sub
  loc_F13825: End If
  loc_F13848: Call Proc_255_28_E7C354(Proc_5_1_100CB50("EDIT", Me))
  loc_F13861: Set var_8C = Me.Txt
  loc_F13867: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F1387A: global_68 = var_94.Text
  loc_F13893: Set var_8C = Me.Txt
  loc_F13899: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F138A1: var_94.SetFocus
  loc_F138BA: Set var_8C = Me.Txt
  loc_F138C0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F138C8: var_94.Enabled = False
  loc_F138E1: Me.LblUser.Caption = vbNullString
  loc_F138F6: Me.LblLDt.Caption = vbNullString
  loc_F138FE: Exit Sub
  loc_F138FF: ' Referenced from: F13810
  loc_F138FF: Proc_6_60_E62BC4(global_52)
  loc_F13904: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1734C
  'Data Table: 454CB8
  loc_E17341: Me.Global.Unload Me
  loc_E17349: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F259B8
  'Data Table: 454CB8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F258B8: On Error Goto loc_F25950
  loc_F258C4: var_88 = Me.RecordCount
  loc_F258D2: If (var_88 <= 0) Then
  loc_F258DB:   var_B8 = "Information"
  loc_F258F6:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F25906:   Exit Sub
  loc_F25907: End If
  loc_F25915: MemVar_1F920E4 = "Select BlockMast.Code As SearchCode,BlockMast.Name,ShortName,Status FROM BlockMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by BlockMast.Name"
  loc_F25922: MemVar_1F92120 = Me
  loc_F25929: var_10C = "4000,700,1300"
  loc_F2592F: Proc_6_126_F1BCC0(var_10C)
  loc_F2594A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F2594F: Exit Sub
  loc_F25950: ' Referenced from: F258B8
  loc_F25958: Set var_110 = Err()
  loc_F2595E: Call 0.Method_arg_1C (var_88)
  loc_F2596F: If (var_88 <> 0) Then
  loc_F2597A:   Set var_110 = Err()
  loc_F25980:   Call 0.Method_arg_2C (var_10C)
  loc_F259A1:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F259B4: End If
  loc_F259B4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3A1B8
  'Data Table: 454CB8
  loc_E3A1A8: Proc_5_0_110649C(&HFF, Me)
  loc_E3A1B0: Call Proc_255_30_1238244(global_52)
  loc_E3A1B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E34578
  'Data Table: 454CB8
  loc_E34568: Proc_5_0_110649C(&HFF, Me)
  loc_E34570: Call Proc_255_30_1238244(global_52)
  loc_E34575: Exit Sub
  loc_E34576: Set TopCtrl1_UnknownEvent_11000 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3A5D8
  'Data Table: 454CB8
  loc_E3A5C8: Proc_5_0_110649C(&HFF, Me)
  loc_E3A5D0: Call Proc_255_30_1238244(global_52)
  loc_E3A5D5: Exit Sub
  loc_E3A5D6: Set TopCtrl1_UnknownEvent_12000 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E34A58
  'Data Table: 454CB8
  loc_E34A48: Proc_5_0_110649C(&HFF, Me)
  loc_E34A50: Call Proc_255_30_1238244(global_52)
  loc_E34A55: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1087E74
  'Data Table: 454CB8
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_454CC4 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1087BDC: On Error Goto loc_1087E28
  loc_1087C03: unk_454CC4.Execute "select * FROM BlockMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_1087C0E: Set var_88 = var_C8
  loc_1087C24: var_CC = var_88.RecordCount
  loc_1087C32: If (var_CC = 0) Then
  loc_1087C4E:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1087C5E:   Exit Sub
  loc_1087C5F: End If
  loc_1087C6E: var_A4 = MemVar_1F920B4 & "\BlockMast.ttx"
  loc_1087C75: Set var_C8 = var_88 
  loc_1087C81: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1087C8B: Set var_88 = var_C8
  loc_1087C91: var_B4 = CVar(var_12E) 'Integer
  loc_1087C94: var_98 = var_B4 'Variant
  loc_1087CB0: var_A0 = MemVar_1F920B4 & "\BlockMast.RPT"
  loc_1087CB9: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1087CC4: MemVar_1F921E4 = var_C8
  loc_1087CDF: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1087CE7: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1087CF3: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1087D0C:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1087D14:   Call 0.Method_arg_20 (var_138)
  loc_1087D1C:   Call 0.Method_arg_30 (var_A0)
  loc_1087D62:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1087D78:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1087D80:     Call 0.Method_arg_20 (var_138)
  loc_1087D88:     Call 0.Method_arg_38 ("'Block Master'")
  loc_1087D94:   End If
  loc_1087D97: Next var_132 'Integer
  loc_1087DB5: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1087DBD: Call 0.Method_arg_2C (var_DC)
  loc_1087DCB: Call 0.Method_arg_150 (var_FC)
  loc_1087DD6: Call 0.Method_arg_50 (var_A0)
  loc_1087DE0: Set var_138 = Nothing
  loc_1087DFA: Set var_C8 = MemVar_1F921E4 
  loc_1087E06: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_1087E11: MemVar_1F921E4 = var_C8
  loc_1087E24: Set var_88 = Nothing
  loc_1087E27: Exit Sub
  loc_1087E28: ' Referenced from: 1087BDC
  loc_1087E30: Set var_C8 = Err()
  loc_1087E36: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1087E41: Call 0.Method_arg_50 (var_A4)
  loc_1087E5D: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1087E70: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E09E20
  'Data Table: 454CB8
  Dim Me As Recordset15
  loc_E09E17: Me.Requery -1
  loc_E09E1C: Exit Sub
  loc_E09E1D: If  Then Exit Sub
  loc_E09E1D: End If
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12AC25C
  'Data Table: 454CB8
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_454CC4 As Connection15
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
  Dim var_130 As String
  Dim var_128 As TextBox
  Dim var_E4 As Variant
  Dim var_164 As Variant
  Dim var_118 As String
  Dim var_12C As String
  Dim var_B0 As Variant
  loc_12ABC88: On Error Goto loc_12AC209
  loc_12ABC8F: var_86 = CByte(0) 'Byte
  loc_12ABC9E: Set var_90 = Me.Txt
  loc_12ABCA4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_12ABCCD: If (Proc_6_27_EA565C(var_94, "Name") = 0) Then
  loc_12ABCD7:   Call Txt_GotFocus(CInt(0))
  loc_12ABCDC:   Exit Sub
  loc_12ABCDD: End If
  loc_12ABCE8: Set var_90 = Me.Txt
  loc_12ABCEE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_12ABD17: If (Proc_6_27_EA565C(var_94, "ShortName") = 0) Then
  loc_12ABD21:   Call Txt_GotFocus(CInt(0))
  loc_12ABD26:   Exit Sub
  loc_12ABD27: End If
  loc_12ABD2A: Call Proc_255_32_115ECE4(var_9E)
  loc_12ABD35: If (var_9E = &HFF) Then
  loc_12ABD38:   Exit Sub
  loc_12ABD39: End If
  loc_12ABD3D: Set var_90 = Me.TopCtrl1
  loc_12ABD43: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_94)
  loc_12ABD5C: If (CStr() = "Add") Then
  loc_12ABD65:   var_D4 = 0
  loc_12ABD82:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From BlockMast Where Site_Code='" & MemVar_1F92070
  loc_12ABD89:   var_B4 = CStr() & "'"
  loc_12ABD92:   unk_454CC4.Execute var_B4, var_B0, -1
  loc_12ABD9A:   var_90 = var_90.Fields
  loc_12ABDA2:   var_D4 = var_94.Item(var_94)
  loc_12ABDAA:   var_98 = var_98.Value
  loc_12ABDE3:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_12ABE09:   var_E4 = Format(CStr(var_E4), "000")
  loc_12ABE11:   var_108 = (1 + var_E4)
  loc_12ABE1C:   global_64 = CStr(var_108)
  loc_12ABE31: Else
  loc_12ABE4E:   var_94 = Me.Fields.Item("Code")
  loc_12ABE56:   var_B0 = var_94.Value
  loc_12ABE65:   global_64 = CStr(var_B0)
  loc_12ABE76: End If
  loc_12ABE7F: unk_454CC4.BeginTrans var_10C
  loc_12ABE88: var_86 = CByte(1) 'Byte
  loc_12ABE90: Set var_90 = Me.TopCtrl1
  loc_12ABE96: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_12ABEAF: If (CStr(var_F8) = "Add") Then
  loc_12ABEC9:   var_9C = "Insert Into BlockMast(Code,Name,ShortName,Status,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_64
  loc_12ABED0:   var_E8 = var_9C & "','"
  loc_12ABEE1:   Set var_90 = Me.Txt
  loc_12ABEE7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_E8)
  loc_12ABEEF:   var_1A8 = var_94.Text
  loc_12ABEF8:   var_110 = -1 & var_B4
  loc_12ABEFF:   var_11C = var_110 & "','"
  loc_12ABF10:   Set var_98 = Me.Txt
  loc_12ABF16:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_118)
  loc_12ABF1E:   var_11C = var_114.Text
  loc_12ABF2E:   var_130 = var_1AC & var_118 & "','"
  loc_12ABF3D:   Set var_124 = Me.Txt
  loc_12ABF43:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_128, var_12C)
  loc_12ABF4B:   var_130 = var_128.Text
  loc_12ABF85:   Proc_183_7_EB0C44(var_B0, MemVar_1F920EC)
  loc_12ABFA0:   var_164 = CVar(var_E4 & var_12C & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") & var_B0 & ",'A','" & CVar(MemVar_1F92078) 
  loc_12ABFB7:   unk_454CC4.Execute CStr(var_164 & "')"), , 
  loc_12AC002: Else
  loc_12AC020:   Set var_90 = Me.Txt
  loc_12AC026:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE BlockMast SET Name='")
  loc_12AC02E:   var_1A8 = var_94.Text
  loc_12AC037:   var_B4 = -1 & var_9C
  loc_12AC03E:   var_110 = var_B4 & "',ShortName='"
  loc_12AC04F:   Set var_98 = Me.Txt
  loc_12AC055:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_E8)
  loc_12AC05D:   var_110 = var_114.Text
  loc_12AC07C:   Set var_124 = Me.Txt
  loc_12AC082:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_128)
  loc_12AC0B6:   var_E4 = CVar(var_1AC & var_E8 & "',Status='" & var_128.Text & "',SITE_CODE='" & MemVar_1F92070 & "',U_name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_12AC0BC:   var_C4 = MemVar_1F920EC
  loc_12AC0C4:   Proc_183_7_EB0C44(var_B0, var_C4)
  loc_12AC0CC:   var_F8 = var_E4 & var_B0 
  loc_12AC0D5:   var_108 = var_F8 & " ,U_AE='E' WHERE Code='" 
  loc_12AC0F9:   unk_454CC4.Execute CStr(var_108 & CVar(global_64) & "'"), , 
  loc_12AC13D: End If
  loc_12AC143: unk_454CC4.CommitTrans
  loc_12AC14C: var_86 = CByte(0) 'Byte
  loc_12AC15B: Me.Requery -1
  loc_12AC16B: Me.Requery -1
  loc_12AC198: Me.Find "Code='" & global_64 & "'", 0, 1
  loc_12AC1A8: Set var_90 = Me.TopCtrl1
  loc_12AC1AE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_C4)
  loc_12AC1C7: If (CStr() = "Add") Then
  loc_12AC1CA:   Call TopCtrl1_UnknownEvent_A()
  loc_12AC1CF:   Exit Sub
  loc_12AC1D0: End If
  loc_12AC1E5: var_9C = "INI"
  loc_12AC1F3: Call Proc_255_28_E7C354(Proc_5_1_100CB50(var_9C, Me))
  loc_12AC1FE: Call Proc_255_29_E83560(global_52)
  loc_12AC203: Call Proc_255_30_1238244()
  loc_12AC208: Exit Sub
  loc_12AC209: ' Referenced from: 12ABC88
  loc_12AC212: If (CInt(var_86) = 1) Then
  loc_12AC21B:   unk_454CC4.RollbackTrans
  loc_12AC220: End If
  loc_12AC228: Set var_90 = Err()
  loc_12AC22E: Call 0.Method_arg_2C (var_9C)
  loc_12AC247: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_12AC25A: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC6644
  'Data Table: 454CB8
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC65BA: On Error Goto loc_EC65FF
  loc_EC65C3: Me.MoveFirst
  loc_EC65DD: var_8C = "code='" & MyValue
  loc_EC65ED: Me.Find var_8C & "'", 0, 1
  loc_EC65F9: Call Proc_255_30_1238244(var_A0)
  loc_EC65FE: Exit Sub
  loc_EC65FF: ' Referenced from: EC65BA
  loc_EC6607: Set var_A4 = Err()
  loc_EC660D: Call 0.Method_arg_2C (var_8C)
  loc_EC662E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC6641: Exit Sub
  loc_EC6642: Exit Sub
End Sub

Public Sub Proc_255_27_EAFC14
  'Data Table: 454CB8
  Dim var_98 As TextBox
  loc_EAFB86: global_68 = vbNullString
  loc_EAFB98: Set var_8C = Me.Txt
  loc_EAFB9E: Call 0.Method_Proc_255_27_EAFC14C (var_8E, var_86)
  loc_EAFBAE: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAFBC4:   Set var_8C = Me.Txt
  loc_EAFBCA:   Call 0.Method_Proc_255_27_EAFC140 (CInt(var_86), var_98)
  loc_EAFBD2:   var_98.Text = vbNullString
  loc_EAFBEE:   Set var_8C = Me.Txt
  loc_EAFBF4:   Call 0.Method_Proc_255_27_EAFC140 (CInt(var_86), var_98)
  loc_EAFBFC:   var_98.Tag = vbNullString
  loc_EAFC0B: Next var_92 'Byte
  loc_EAFC11: Exit Sub
End Sub

Public Sub Proc_255_28_E7C354(arg_C) 'E7C354
  'Data Table: 454CB8
  Dim var_98 As TextBox
  loc_E7C302: Set var_8C = Me.Txt
  loc_E7C308: Call 0.Method_Proc_255_28_E7C354C (var_8E, var_86)
  loc_E7C318: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7C32E:   Set var_8C = Me.Txt
  loc_E7C334:   Call 0.Method_Proc_255_28_E7C3540 (CInt(var_86), var_98)
  loc_E7C33C:   var_98.Enabled = arg_C
  loc_E7C34B: Next var_92 'Byte
  loc_E7C351: Exit Sub
End Sub

Public Sub Proc_255_29_E83560
  'Data Table: 454CB8
  loc_E8350C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E8351E:   Me.DGHelp.Visible = False
  loc_E83526: End If
  loc_E83542: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E83554:   Me.FGPoint.Visible = False
  loc_E8355C: End If
  loc_E8355C: Exit Sub
End Sub

Public Sub Proc_255_30_1238244
  'Data Table: 454CB8
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim unk_454CC4 As Connection15
  Dim var_88 As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As TextBox
  loc_1237D50: On Error Goto loc_12381FE
  loc_1237D59: Proc_183_45_E5C118(global_52)
  loc_1237D75: If (Me.RecordCount <= 0) Then
  loc_1237D78:   Call Proc_255_27_EAFC14()
  loc_1237D80: Else
  loc_1237DD6:   unk_454CC4.Execute CStr("Select U_Name,U_AE,U_EntDt From BlockMast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1
  loc_1237DE1:   Set var_88 = var_11C
  loc_1237E35:   var_11C = var_88.Fields
  loc_1237E9E:   var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_11C.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_1237EE3:   Me.LblUser.Caption = CStr(var_11C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_1237F5D:   var_120 = var_88.Fields.Item("U_AE")
  loc_1237F76:   var_118 = "entdt :   "
  loc_1237F81:   var_F4 = "Last Update :   "
  loc_1237FBE:   var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_120)) = "E"), var_F4, var_118))
  loc_1238003:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_123806F:   global_64 = CStr(Me.Fields.Item("Name").Value)
  loc_12380BA:   Set var_11C = Me.Txt
  loc_12380C0:   Call 0.Method_Proc_255_30_12382440 (0, var_120)
  loc_12380C8:   var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1238118:   Set var_11C = Me.Txt
  loc_123811E:   Call 0.Method_Proc_255_30_12382440 (0, var_120)
  loc_1238126:   var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1238176:   Set var_11C = Me.Txt
  loc_123817C:   Call 0.Method_Proc_255_30_12382440 (1, var_120)
  loc_1238184:   var_120.Text = CStr(Me.Fields.Item("ShortName").Value)
  loc_12381C8:   var_F8 = CStr(Me.Fields.Item("Status").Value)
  loc_12381D4:   Set var_11C = Me.Txt
  loc_12381DA:   Call 0.Method_Proc_255_30_12382440 (2, var_120)
  loc_12381E2:   var_120.Text = var_F8
  loc_12381F8: End If
  loc_12381F8: Call Proc_255_29_E83560()
  loc_12381FD: Exit Sub
  loc_12381FE: ' Referenced from: 1237D50
  loc_1238206: Set var_90 = Err()
  loc_123820C: Call 0.Method_arg_2C (var_F8)
  loc_123822D: MsgBox(CVar(var_F8), &H40, "Information", var_F4, var_118)
  loc_1238240: Exit Sub
End Sub

Public Sub Proc_255_31_E90428(arg_C) 'E90428
  'Data Table: 454CB8
  Dim var_10C As TextBox
  loc_E903BC: Call Proc_255_29_E83560()
  loc_E903F8: If (MsgBox("Save This Block Master ?", &H24, "Save", var_E4, var_104) = 6) Then
  loc_E903FB:   Call TopCtrl1_UnknownEvent_16()
  loc_E90403: Else
  loc_E9040D:   Set var_108 = Me.Txt
  loc_E90413:   Call 0.Method_Proc_255_31_E904280 (arg_C)
  loc_E9041B:   var_10C.SetFocus
  loc_E90427: End If
  loc_E90427: Exit Sub
End Sub

Public Sub Proc_255_32_115ECE4
  'Data Table: 454CB8
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_454CC4 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_115E967: If (Me.RecordCount = 0) Then
  loc_115E96A:   Proc_255_32_115ECE4 = 
  loc_115E970: End If
  loc_115E974: Set var_90 = Me.TopCtrl1
  loc_115E97A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_115E993: If (CStr() = "Add") Then
  loc_115E9D1:   Set var_90 = Me.Txt
  loc_115E9D7:   Call 0.Method_Proc_255_32_115ECE40 (CInt(0), var_A8, var_AC, "Select Count(*) From BlockMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_115E9F8:   unk_454CC4.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_115EA08:    = var_D0.Item()
  loc_115EA10:    = var_E4.Value
  loc_115EA41:   If (var_A8.Text.Fields > 0) Then
  loc_115EA5F:     var_A0 = "Duplicate Name"
  loc_115EA65:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_115EA80:     Set var_90 = Me.Txt
  loc_115EA86:     Call 0.Method_Proc_255_32_115ECE40 (CInt(0))
  loc_115EA8E:     var_A8.SetFocus
  loc_115EA9F:     Proc_255_32_115ECE4 = &HFF
  loc_115EAA5:   End If
  loc_115EAE0:   Set var_90 = Me.Txt
  loc_115EAE6:   Call 0.Method_Proc_255_32_115ECE40 (CInt(1), var_A8, var_AC, "Select Count(*) From BlockMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and ShortName='", var_A0, -1)
  loc_115EB07:   unk_454CC4.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_115EB17:    = var_D0.Item(var_A8)
  loc_115EB1F:    = var_E4.Value
  loc_115EB50:   If (var_A8.Text.Fields > 0) Then
  loc_115EB6E:     var_A0 = "Duplicate Short Name"
  loc_115EB74:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_115EB8F:     Set var_90 = Me.Txt
  loc_115EB95:     Call 0.Method_Proc_255_32_115ECE40 (CInt(1))
  loc_115EB9D:     var_A8.SetFocus
  loc_115EBAE:     Proc_255_32_115ECE4 = &HFF
  loc_115EBB4:   End If
  loc_115EBB7: Else
  loc_115EBF2:   Set var_90 = Me.Txt
  loc_115EBF8:   Call 0.Method_Proc_255_32_115ECE40 (CInt(0), var_A8, var_AC, "Select Count(*) From BlockMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_115EC2A:   unk_454CC4.Execute var_D0 & var_AC & "' And Name<>'" & global_68 & "'", 0, var_E4
  loc_115EC3A:    = var_D0.Item(var_A8)
  loc_115EC42:    = var_E4.Value
  loc_115EC77:   If (var_A8.Text.Fields > 0) Then
  loc_115EC9B:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_115ECB6:     Set var_90 = Me.Txt
  loc_115ECBC:     Call 0.Method_Proc_255_32_115ECE40 (CInt(0))
  loc_115ECC4:     var_A8.SetFocus
  loc_115ECD5:     Proc_255_32_115ECE4 = &HFF
  loc_115ECDB:   End If
  loc_115ECDB: End If
  loc_115ECDB: Proc_255_32_115ECE4 = var_A8
End Sub
