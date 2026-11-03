VERSION 5.00
Begin VB.Form SundryMast
  Caption = "Sundry Master"
  BackColor = &HFFFFC0&
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
  ClientWidth = 10455
  ClientHeight = 6225
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10455
    Height = 450
    TabIndex = 13
  End
  Begin DataGrid DGHelp
    Left = 7170
    Top = 4920
    Width = 4410
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 8760
    Top = 2160
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 60
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 8
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3345
    Top = 2265
    Width = 1320
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 1
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3345
    Top = 1950
    Width = 3180
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3345
    Top = 1635
    Width = 3180
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4680
    Top = 4770
    Width = 2790
    Height = 285
    TabIndex = 12
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
    Left = 1305
    Top = 4770
    Width = 2880
    Height = 255
    TabIndex = 11
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
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 10
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
  Begin Label LblDefine
    ForeColor = &H80&
    Left = 6675
    Top = 1665
    Width = 1365
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
    Caption = "Calc Sign"
    Index = 3
    ForeColor = &HC00000&
    Left = 1635
    Top = 2265
    Width = 915
    Height = 240
    TabIndex = 5
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
    Caption = "Nature of Sundry"
    Index = 2
    ForeColor = &HC00000&
    Left = 1635
    Top = 1950
    Width = 1605
    Height = 240
    TabIndex = 4
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
    Caption = "Sundry Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1635
    Top = 1635
    Width = 1290
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

Attribute VB_Name = "SundryMast"

Private global_64 As Variant

Private Sub DGHelp_UnknownEvent_9 'EE5ABC
  'Data Table: 451868
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE5A13: Me.DGHelp.Visible = False
  loc_EE5A32: If (Me.RecordCount > 0) Then
  loc_EE5A52:   var_B0 = Me.Fields.Item("Name")
  loc_EE5A71:   Set var_B4 = Me.Txt
  loc_EE5A77:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE5A7F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE5A95: End If
  loc_EE5AA0: Set var_A8 = Me.Txt
  loc_EE5AA6: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE5AAE: var_B0.SetFocus
  loc_EE5ABA: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1094848
  'Data Table: 451868
  Dim var_92 As Integer
  Dim var_A8 As String
  Dim var_B8 As String
  Dim var_8C As TextBox
  Dim var_160 As TextBox
  loc_10945AA: Set var_88 = Me.Txt
  loc_10945B0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10945BE: Proc_6_74_E226B0(var_8C)
  loc_10945CA: Call Proc_77_29_E81884(var_8C)
  loc_10945D2: var_92 = Index
  loc_10945DD: If (var_92 = CInt(1)) Then
  loc_10945ED:   ReDim var_98(0 To &HA)
  loc_1094604:   var_98(0) = "Addition"
  loc_1094613:   var_98(1) = "Deduction"
  loc_1094622:   var_98(2) = "Discount"
  loc_1094631:   var_98(3) = "Luxury Tax"
  loc_1094640:   var_98(4) = "Round Off"
  loc_109464F:   var_98(5) = "Service Charge"
  loc_109465E:   var_98(6) = "Sale Tax"
  loc_109466D:   var_98(7) = "Service Tax"
  loc_109467C:   var_98(8) = "CGST"
  loc_109468B:   var_98(9) = "SGST"
  loc_109469A:   var_98(&HA) = "IGST"
  loc_10946B1:   global_64 = Array(var_98)
  loc_10946BC:   Set var_160 = Me.ListView
  loc_10946D7:   Set var_8C = Me.Txt
  loc_10946F1:   Set global_80 = Proc_6_66_EFF8FC(var_160, var_8C, Index, global_64)
  loc_109470F:   Set var_88 = Me.Txt
  loc_1094715:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_168)
  loc_109471D:   &HB = var_8C.Text
  loc_109472F:   Set var_90 = Me.Txt
  loc_1094735:   Call 0.Method_Txt_GotFocus0 (Index, var_160, var_168)
  loc_109473D:   var_160.Tag = global_64
  loc_1094753: Else
  loc_109475B:   If (var_92 = CInt(2)) Then
  loc_109476B:     ReDim var_98(0 To 1)
  loc_1094775:     var_A8 = "+"
  loc_1094782:     var_98(0) = "Addition"
  loc_1094784:     var_B8 = "-"
  loc_1094791:     var_98(1) = "Deduction"
  loc_10947A8:     global_64 = Array(var_98)
  loc_10947B3:     Set var_160 = Me.ListView
  loc_10947CE:     Set var_8C = Me.Txt
  loc_10947E8:     Set global_80 = Proc_6_66_EFF8FC(var_160, var_8C, Index, global_64)
  loc_1094806:     Set var_88 = Me.Txt
  loc_109480C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_168)
  loc_1094814:     2 = var_8C.Text
  loc_1094826:     Set var_90 = Me.Txt
  loc_109482C:     Call 0.Method_Txt_GotFocus0 (Index, var_160, var_168)
  loc_1094834:     var_160.Tag = global_64
  loc_1094847:   End If
  loc_1094847: End If
  loc_1094847: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1166178
  'Data Table: 451868
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_A4 As TextBox
  Dim var_B4 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As ListView
  loc_1165DF2: If (CLng(Shift) = &H1B) Then
  loc_1165DF5:   Call Proc_77_29_E81884()
  loc_1165DFA:   Exit Sub
  loc_1165DFB: End If
  loc_1165DFE: var_88 = KeyCode
  loc_1165E09: If (var_88 = CInt(0)) Then
  loc_1165E10:   Set var_A4 = Me.DGHelp
  loc_1165E24:   Set var_9C = Nothing
  loc_1165E47:   Set var_90 = Me.Txt
  loc_1165E56:   Proc_6_79_11ACE04(var_A4, var_90, CInt(0), global_56, Shift)
  loc_1165E6B: Else
  loc_1165E73:   If (var_88 = CInt(1)) Then
  loc_1165E98:     Set var_8C = Me.Txt
  loc_1165E9E:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 0)
  loc_1165EA6:     1 = var_90.Left
  loc_1165EB8:     Set var_9C = Me.Txt
  loc_1165EBE:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_1165EC6:     var_9C = var_A4.Top
  loc_1165ED8:     Set var_A8 = Me.Txt
  loc_1165EDE:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4, var_B8)
  loc_1165EE6:     0 = var_B4.Height
  loc_1165EF8:     Set var_BC = Me.Txt
  loc_1165EFE:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_1165F06:     var_C4 = var_C0.Width
  loc_1165F4E:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1165F75:   Else
  loc_1165F7D:     If (var_88 = CInt(2)) Then
  loc_1165FA2:       Set var_8C = Me.Txt
  loc_1165FA8:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_1165FB0:       CInt((var_B0 + var_B8)) = var_90.Left
  loc_1165FC2:       Set var_9C = Me.Txt
  loc_1165FC8:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_1165FD0:       CInt(var_C4) = var_A4.Top
  loc_1165FE2:       Set var_A8 = Me.Txt
  loc_1165FE8:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4, var_B8)
  loc_1165FF0:       2860 = var_B4.Height
  loc_1166002:       Set var_BC = Me.Txt
  loc_1166008:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_1166010:       var_C4 = var_C0.Width
  loc_1166058:       Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_116607C:     End If
  loc_116607C:   End If
  loc_116607C: End If
  loc_11660B7: If ((CBool(Me.ListView.Visible) = 0) And (CBool(Me.DGHelp.Visible) = 0)) Then
  loc_11660CD:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_11660D6:     Proc_6_76_E52838(Shift, arg_14, CInt(var_AC), CInt((var_B0 + var_B8)))
  loc_11660DB:   End If
  loc_11660F9:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(2))) Then
  loc_1166102:     Call Txt_Validate(KeyCode)
  loc_116610D:     If (var_86 = 0) Then
  loc_1166147:       If (MsgBox("Save Record ?", 4, "Save Data", var_13C, var_15C) = 6) Then
  loc_116614A:         Call TopCtrl1_UnknownEvent_16()
  loc_116614F:       End If
  loc_116614F:       Exit Sub
  loc_1166150:     End If
  loc_1166153:   Else
  loc_1166168:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1166171:       Proc_6_75_E527CC(Shift, arg_14, var_86)
  loc_1166176:     End If
  loc_1166176:   End If
  loc_1166176: End If
  loc_1166176: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F04F9C
  'Data Table: 451868
  Dim var_86 As Integer
  loc_F04EC3: var_86 = KeyCode
  loc_F04ECE: If (var_86 = CInt(0)) Then
  loc_F04EED:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F04EFA:     var_A4 = "Name"
  loc_F04F19:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_56)
  loc_F04F28:   End If
  loc_F04F2B: Else
  loc_F04F33:   If Not (var_86 = CInt(1)) Then
  loc_F04F3E:     If (var_86 = CInt(2)) Then
  loc_F04F41:     End If
  loc_F04F5C:     If (Me.FrmList.Visible = &HFF) Then
  loc_F04F8B:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F04F9B:     End If
  loc_F04F9B:   End If
  loc_F04F9B: End If
  loc_F04F9B: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4DAB4
  'Data Table: 451868
  loc_E4DA92: Set var_88 = Me.Txt
  loc_E4DA98: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4DAA6: Proc_6_73_E22704(var_8C)
  loc_E4DAB2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F75820
  'Data Table: 451868
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim var_8C As ListView
  Dim var_AC As TextBox
  Dim var_A8 As ListItem
  Dim var_D0 As TextBox
  loc_F756EB: var_86 = Cancel
  loc_F756F6: If (var_86 = CInt(0)) Then
  loc_F756FC:   Call Proc_77_28_10898F4(var_88)
  loc_F75707:   If (var_88 = &HFF) Then
  loc_F7570C:     arg_10 = &HFF
  loc_F7570F:     Exit Sub
  loc_F75710:   End If
  loc_F75713: Else
  loc_F7571B:   If Not (var_86 = CInt(1)) Then
  loc_F75726:     If (var_86 = CInt(2)) Then
  loc_F75729:     End If
  loc_F75736:     Set var_8C = Me.Txt
  loc_F7573C:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_F75744:     arg_10 = var_90.Text
  loc_F7575B:     If (var_94 <> vbNullString) Then
  loc_F7578E:       Set var_A8 = Me.Txt
  loc_F75794:       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_F7579C:       var_AC.Text = Me.ListView.SelectedItem.Text
  loc_F757B5:     Else
  loc_F757F5:       Set var_AC = Me.Txt
  loc_F757FB:       Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_F75803:       var_D0.Text = Me.ListView.ListItems.Item(1).Text
  loc_F7581F:     End If
  loc_F7581F:   End If
  loc_F7581F: End If
  loc_F7581F: Exit Sub
End Sub

Private Sub Form_Load() '104C820
  'Data Table: 451868
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_451877 As Connection15
  Dim var_DC As Variant
  loc_104C5D0: On Error Goto loc_104C7DA
  loc_104C5DA: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_104C5EE: Me.LblUser.Left = CDbl(13500)
  loc_104C605: Me.LblUser.Top = CDbl(7800)
  loc_104C61C: Me.LblLDt.Top = CDbl(8160)
  loc_104C633: Me.LblLDt.Left = CDbl(13500)
  loc_104C649: Set var_8C = Me.Txt
  loc_104C64F: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_104C66E: Me.DGHelp.Left = CVar(var_90.Left)
  loc_104C68A: Set var_B8 = Me.Txt
  loc_104C690: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_104C6B1: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_104C6C9: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_104C6D8: Me.DGHelp.Top = CVar(var_90.Left)
  loc_104C70E: unk_451877.Execute "SELECT Code,Name FROM SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  ORDER BY Name", var_DC, -1
  loc_104C73D: CVarUnk
  loc_104C742: VerifyVarObj
  loc_104C74E: LateIdStAd
  loc_104C780: unk_451877.Execute "SELECT * FROM SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_104C7BB: var_C8 = "INI"
  loc_104C7C9: Call Proc_77_25_E783CC(Proc_5_1_100CB50(var_C8, Me, Me.DGHelp, Me), Me)
  loc_104C7D4: Call Proc_77_27_129698C(Me.Txt)
  loc_104C7D9: Exit Sub
  loc_104C7DA: ' Referenced from: 104C5D0
  loc_104C7E2: Set var_8C = Err()
  loc_104C7E8: Call 0.Method_arg_2C (var_C8)
  loc_104C809: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_104C81C: Exit Sub
  loc_104C81D: Exit Sub
End Sub

Private Sub Form_Resize() 'ED71C8
  'Data Table: 451868
  Dim var_8C As Label
  loc_ED7126: Call 0.Method_arg_50 (var_88)
  loc_ED7138: Me.LblFormCaption.Caption = var_88
  loc_ED7151: Me.LblFormCaption.Left = CDbl(0)
  loc_ED715D: Set var_A0 = Me.TopCtrl1
  loc_ED7163: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED7170: Set var_8C = Me.TopCtrl1
  loc_ED7176: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED7190: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED71AB: Call 0.Method_arg_100 (var_B8)
  loc_ED71BD: Me.LblFormCaption.Width = var_B8
  loc_ED71C5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E29C84
  'Data Table: 451868
  loc_E29C67: Set global_52 = Nothing
  loc_E29C79: Set global_56 = Nothing
  loc_E29C80: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E883C4
  'Data Table: 451868
  loc_E88360: On Error Goto loc_E88380
  loc_E88377: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8837F: Exit Sub
  loc_E88380: ' Referenced from: E88360
  loc_E88388: Set var_88 = Err()
  loc_E8838E: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E883AF: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E883C2: Exit Sub
  loc_E883C3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ECB45C
  'Data Table: 451868
  Dim var_8C As Label
  Dim var_94 As TextBox
  loc_ECB3B0: On Error Goto loc_ECB455
  loc_ECB3D6: Call Proc_77_25_E783CC(Proc_5_1_100CB50("ADD", Me))
  loc_ECB3E1: Call Proc_77_26_EAC77C(global_52)
  loc_ECB3EC: global_60 = "N"
  loc_ECB3FD: Me.LblDefine.Caption = "User Defined"
  loc_ECB410: Set var_8C = Me.Txt
  loc_ECB416: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ECB41E: var_94.SetFocus
  loc_ECB437: Me.LblUser.Caption = vbNullString
  loc_ECB44C: Me.LblLDt.Caption = vbNullString
  loc_ECB454: Exit Sub
  loc_ECB455: ' Referenced from: ECB3B0
  loc_ECB455: Proc_6_60_E62BC4(var_94)
  loc_ECB45A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC22EC
  'Data Table: 451868
  loc_EC2254: On Error Goto loc_EC22E4
  loc_EC228E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC229D:   Set var_110 = Me
  loc_EC22B4:   Call Proc_77_25_E783CC(Proc_5_1_100CB50("INI", var_110))
  loc_EC22BF:   Call Proc_77_27_129698C(global_52)
  loc_EC22C4:   Call Proc_77_29_E81884()
  loc_EC22CC: Else
  loc_EC22D2:   Call 0.Method_arg_1E8 (var_110)
  loc_EC22DA:   Call var_110.SetFocus
  loc_EC22E3: End If
  loc_EC22E3: Exit Sub
  loc_EC22E4: ' Referenced from: EC2254
  loc_EC22E4: Proc_6_60_E62BC4()
  loc_EC22E9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '116B6BC
  'Data Table: 451868
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim unk_451877 As Connection15
  Dim var_96 As Integer
  Dim var_F8 As Variant
  Dim var_124 As String
  loc_116B320: On Error Goto loc_116B662
  loc_116B331: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_116B334:   Exit Sub
  loc_116B335: End If
  loc_116B340: If (global_60 = "Y") Then
  loc_116B364:   MsgBox("System Defined, Can not be Deleted", &H40, "Validation Check", var_F8, var_118)
  loc_116B374:   Exit Sub
  loc_116B375: End If
  loc_116B3A7: var_134 = "RevMast"
  loc_116B3EF: If (Proc_6_108_1010FEC(MemVar_1F92044, "RevMast", "Sundry", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_116B3F2:   Exit Sub
  loc_116B3F3: End If
  loc_116B42A: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_116B436:   unk_451877.BeginTrans var_130
  loc_116B43D:   var_96 = &HFF
  loc_116B451:   var_94 = Me.Bookmark 'Variant
  loc_116B49D:   var_F8 = "Delete From SundryMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_116B4AB:   unk_451877.Execute CStr(var_F8), var_118, -1
  loc_116B4F6:   var_168 = 0
  loc_116B509:   var_160 = 0
  loc_116B514:   var_15C = 0
  loc_116B527:   var_154 = 0
  loc_116B532:   var_150 = 0
  loc_116B545:   var_148 = 0
  loc_116B585:   var_124 = "SundryMast"
  loc_116B58E:   Proc_154_5_10E33A4(MemVar_1F92044, var_124, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_116B5BC:   unk_451877.CommitTrans
  loc_116B5C3:   var_96 = 0
  loc_116B5D1:   Me.Requery -1
  loc_116B5E1:   Me.Requery -1
  loc_116B601:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_116B60E:     Me.Bookmark = var_94
  loc_116B616:   Else
  loc_116B62A:     If (Me.EOF = 0) Then
  loc_116B633:       Me.MoveLast
  loc_116B638:     End If
  loc_116B638:   End If
  loc_116B638:   Call Proc_77_27_129698C(var_96, var_148, 0, var_150, var_154)
  loc_116B659:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_116B661: End If
  loc_116B661: Exit Sub
  loc_116B662: ' Referenced from: 116B320
  loc_116B668: If (var_96 = &HFF) Then
  loc_116B671:   unk_451877.RollbackTrans
  loc_116B676: End If
  loc_116B67E: Set var_11C = Err()
  loc_116B684: Call 0.Method_arg_2C (var_124, 0, var_15C)
  loc_116B6A5: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F8, var_118)
  loc_116B6B8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F8F6C8
  'Data Table: 451868
  Dim Me As Recordset15
  Dim var_118 As TextBox
  Dim var_110 As Label
  loc_F8F56C: On Error Goto loc_F8F6C2
  loc_F8F57D: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F8F580:   Exit Sub
  loc_F8F581: End If
  loc_F8F598: If (Me.RecordCount > 0) Then
  loc_F8F5A6:   If (global_60 = "Y") Then
  loc_F8F5CA:     MsgBox("System Defined, Can not be Edited", &H40, "Validation Check", var_E8, var_108)
  loc_F8F5DA:     Exit Sub
  loc_F8F5DB:   End If
  loc_F8F5FE:   Call Proc_77_25_E783CC(Proc_5_1_100CB50("EDIT", Me))
  loc_F8F617:   Set var_110 = Me.Txt
  loc_F8F61D:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_118)
  loc_F8F630:   global_88 = var_118.Text
  loc_F8F649:   Set var_110 = Me.Txt
  loc_F8F64F:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_118)
  loc_F8F657:   var_118.SetFocus
  loc_F8F666: Else
  loc_F8F687:   MsgBox("There Is No Record To Edit.", &H40, "Information", var_E8, var_108)
  loc_F8F697: End If
  loc_F8F6A4: Me.LblUser.Caption = vbNullString
  loc_F8F6B9: Me.LblLDt.Caption = vbNullString
  loc_F8F6C1: Exit Sub
  loc_F8F6C2: ' Referenced from: F8F56C
  loc_F8F6C2: Proc_6_60_E62BC4(global_52)
  loc_F8F6C7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15174
  'Data Table: 451868
  loc_E15169: Me.Global.Unload Me
  loc_E15171: Exit Sub
  loc_E15172:  = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F275E8
  'Data Table: 451868
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F274E8: On Error Goto loc_F27580
  loc_F274F4: var_88 = Me.RecordCount
  loc_F27502: If (var_88 <= 0) Then
  loc_F2750B:   var_B8 = "Information"
  loc_F27526:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F27536:   Exit Sub
  loc_F27537: End If
  loc_F2753E: var_10C = "Select SundryMast.Code As SearchCode,SundryMast.Name,SundryMast.Nature,SundryMast.CalcSign,SYSYN=CASE SundryMast.SysYN WHEN 'Y' THEN 'System Defined' ELSE 'User Defined' END FROM SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_F27545: MemVar_1F920E4 = var_10C & "' or LOGSITE_CODE='HO') Order by Name"
  loc_F27552: MemVar_1F92120 = Me
  loc_F27559: var_10C = "4500,1800,2000,2000"
  loc_F2755F: Proc_6_126_F1BCC0(var_10C)
  loc_F2757A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F2757F: Exit Sub
  loc_F27580: ' Referenced from: F274E8
  loc_F27588: Set var_110 = Err()
  loc_F2758E: Call 0.Method_arg_1C (var_88)
  loc_F2759F: If (var_88 <> 0) Then
  loc_F275AA:   Set var_110 = Err()
  loc_F275B0:   Call 0.Method_arg_2C (var_10C)
  loc_F275D1:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F275E4: End If
  loc_F275E4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2DBB8
  'Data Table: 451868
  loc_E2DBA8: Proc_5_0_110649C(&HFF, Me)
  loc_E2DBB0: Call Proc_77_27_129698C(global_52)
  loc_E2DBB5: Exit Sub
  loc_E2DBB6: CopyBytes -3841
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2EB78
  'Data Table: 451868
  loc_E2EB68: Proc_5_0_110649C(&HFF, Me)
  loc_E2EB70: Call Proc_77_27_129698C(global_52)
  loc_E2EB75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2EA58
  'Data Table: 451868
  loc_E2EA48: Proc_5_0_110649C(&HFF, Me)
  loc_E2EA50: Call Proc_77_27_129698C(global_52)
  loc_E2EA55: Exit Sub
  loc_E2EA56: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2EB18
  'Data Table: 451868
  loc_E2EB08: Proc_5_0_110649C(&HFF, Me)
  loc_E2EB10: Call Proc_77_27_129698C(global_52)
  loc_E2EB15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '108B39C
  'Data Table: 451868
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_451877 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  Dim var_F18 As Variant
  loc_108B104: On Error Goto loc_108B350
  loc_108B12B: unk_451877.Execute "select * FROM SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_108B136: Set var_88 = var_C8
  loc_108B14C: var_CC = var_88.RecordCount
  loc_108B15A: If (var_CC = 0) Then
  loc_108B176:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108B186:   Exit Sub
  loc_108B187: End If
  loc_108B196: var_A4 = MemVar_1F920B4 & "\SundryMast.ttx"
  loc_108B19D: Set var_C8 = var_88 
  loc_108B1A9: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108B1B3: Set var_88 = var_C8
  loc_108B1B9: var_B4 = CVar(var_12E) 'Integer
  loc_108B1BC: var_98 = var_B4 'Variant
  loc_108B1D8: var_A0 = MemVar_1F920B4 & "\SundryMast.RPT"
  loc_108B1E1: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108B1EC: MemVar_1F921E4 = var_C8
  loc_108B207: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108B20F: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108B21B: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108B234:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108B23C:   Call 0.Method_arg_20 (var_138)
  loc_108B244:   Call 0.Method_arg_30 (var_A0)
  loc_108B28A:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108B2A0:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108B2A8:     Call 0.Method_arg_20 (var_138)
  loc_108B2B0:     Call 0.Method_arg_38 ("'Sundry Master'")
  loc_108B2BC:   End If
  loc_108B2BF: Next var_132 'Integer
  loc_108B2DD: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_108B2E5: Call 0.Method_arg_2C (var_DC)
  loc_108B2F3: Call 0.Method_arg_150 (var_FC)
  loc_108B2FE: Call 0.Method_arg_50 (var_A0)
  loc_108B308: Set var_138 = Nothing
  loc_108B322: Set var_C8 = MemVar_1F921E4 
  loc_108B32E: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_108B339: MemVar_1F921E4 = var_C8
  loc_108B34C: Set var_88 = Nothing
  loc_108B34F: Exit Sub
  loc_108B350: ' Referenced from: 108B104
  loc_108B358: Set var_C8 = Err()
  loc_108B35E: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108B369: Call 0.Method_arg_50 (var_A4)
  loc_108B385: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108B398: Exit Sub
  loc_108B399: var_F18 = CVar(var_138) 'Long
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B938
  'Data Table: 451868
  Dim Me As Recordset15
  loc_E0B92F: Me.Requery -1
  loc_E0B934: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1253590
  'Data Table: 451868
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_451877 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_114 As TextBox
  Dim var_128 As TextBox
  Dim var_14C As String
  Dim var_B0 As Variant
  loc_12530B0: On Error Goto loc_125353B
  loc_12530B7: var_86 = CByte(0) 'Byte
  loc_12530C6: Set var_90 = Me.Txt
  loc_12530CC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_12530F5: If (Proc_183_19_E8DAFC(var_94, "Name") = 0) Then
  loc_12530FF:   Call Txt_GotFocus(CInt(0))
  loc_1253104:   Exit Sub
  loc_1253105: End If
  loc_1253108: Call Proc_77_28_10898F4(var_9E)
  loc_1253113: If (var_9E = &HFF) Then
  loc_1253116:   Exit Sub
  loc_1253117: End If
  loc_125311B: Set var_90 = Me.TopCtrl1
  loc_1253121: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_125313A: If (CStr() = "Add") Then
  loc_1253143:   var_D4 = 0
  loc_1253160:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From SundryMast Where SITE_CODE='" & MemVar_1F92070
  loc_1253170:   unk_451877.Execute CStr() & "' AND SysYN<>'Y'", var_B0, -1
  loc_1253178:   var_90 = var_90.Fields
  loc_1253180:   var_D4 = var_94.Item(var_94)
  loc_1253188:   var_98 = var_98.Value
  loc_12531C1:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_12531E7:   var_E4 = Format(CStr(var_E4), "0000")
  loc_12531EF:   var_108 = (1 + var_E4)
  loc_12531FA:   global_84 = CStr(var_108)
  loc_125320F: Else
  loc_125322C:   var_94 = Me.Fields.Item("Code")
  loc_1253234:   var_B0 = var_94.Value
  loc_1253243:   global_84 = CStr(var_B0)
  loc_1253254: End If
  loc_125325D: unk_451877.BeginTrans var_10C
  loc_1253266: var_86 = CByte(1) 'Byte
  loc_1253288: var_B4 = "Delete From SundryMast Where Code='" & global_84 & "'"
  loc_1253291: unk_451877.Execute var_B4, var_B0, -1
  loc_12532B7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, Me.Txt)
  loc_12532BF: 1 = var_94.Text
  loc_12532D2: Set var_98 = Me.Txt
  loc_12532D8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_118)
  loc_12532E0: var_F8 = var_114.Text
  loc_12532F3: Set var_124 = Me.Txt
  loc_12532F9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_128)
  loc_1253314: Proc_6_7_F25D88(var_E4, Date)
  loc_125331D: Set var_160 = Me.TopCtrl1
  loc_1253323: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E4)
  loc_1253371: var_9C = "Insert Into SundryMast(Code,Name,Nature,CalcSign,SysYN,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values ('" & global_84
  loc_12533C8: var_14C = var_9C & "','" & var_B4 & "','" & var_118 & "','" & var_128.Text & "','" & global_60 & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8
  loc_12533CF: var_F8 = CVar(var_14C & "',") 'String
  loc_12533D5: var_108 = var_F8 & var_E4 
  loc_12533D9: var_C4 = ",'"
  loc_125340F: unk_451877.Execute CStr(var_108 & var_C4 & IIf((CStr(var_170) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_258, -1
  loc_1253475: unk_451877.CommitTrans
  loc_125347E: var_86 = CByte(0) 'Byte
  loc_125348D: Me.Requery -1
  loc_125349D: Me.Requery -1
  loc_12534CA: Me.Find "Code='" & global_84 & "'", 0, 1
  loc_12534DA: Set var_90 = Me.TopCtrl1
  loc_12534E0: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_12534F9: If (CStr(var_25C) = "Add") Then
  loc_12534FC:   Call TopCtrl1_UnknownEvent_A()
  loc_1253501:   Exit Sub
  loc_1253502: End If
  loc_1253517: var_9C = "INI"
  loc_1253525: Call Proc_77_25_E783CC(Proc_5_1_100CB50(var_9C, Me))
  loc_1253530: Call Proc_77_29_E81884(global_52)
  loc_1253535: Call Proc_77_27_129698C()
  loc_125353A: Exit Sub
  loc_125353B: ' Referenced from: 12530B0
  loc_1253544: If (CInt(var_86) = 1) Then
  loc_125354D:   unk_451877.RollbackTrans
  loc_1253552: End If
  loc_125355A: Set var_90 = Err()
  loc_1253560: Call 0.Method_arg_2C (var_9C)
  loc_1253579: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_125358C: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5CAEC
  'Data Table: 451868
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5CA0E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5CA15:   Set var_A8 = Me.ListView
  loc_F5CA5F:   Set var_C0 = Me.Txt
  loc_F5CA65:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5CA6D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5CA8D: End If
  loc_F5CA99: Me.FrmList.Visible = False
  loc_F5CAC9: Set var_9C = Me.Txt
  loc_F5CACF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5CAD7: var_A8.SetFocus
  loc_F5CAEB: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC24A4
  'Data Table: 451868
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC241A: On Error Goto loc_EC245F
  loc_EC2423: Me.MoveFirst
  loc_EC243D: var_8C = "code='" & MyValue
  loc_EC244D: Me.Find var_8C & "'", 0, 1
  loc_EC2459: Call Proc_77_27_129698C(var_A0)
  loc_EC245E: Exit Sub
  loc_EC245F: ' Referenced from: EC241A
  loc_EC2467: Set var_A4 = Err()
  loc_EC246D: Call 0.Method_arg_2C (var_8C)
  loc_EC248E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC24A1: Exit Sub
  loc_EC24A2: Exit Sub
End Sub

Public Sub Proc_77_25_E783CC(arg_C) 'E783CC
  'Data Table: 451868
  Dim var_98 As TextBox
  loc_E7837A: Set var_8C = Me.Txt
  loc_E78380: Call 0.Method_Proc_77_25_E783CCC (var_8E, var_86)
  loc_E78390: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E783A6:   Set var_8C = Me.Txt
  loc_E783AC:   Call 0.Method_Proc_77_25_E783CC0 (CInt(var_86), var_98)
  loc_E783B4:   var_98.Enabled = arg_C
  loc_E783C3: Next var_92 'Byte
  loc_E783C9: Exit Sub
End Sub

Public Sub Proc_77_26_EAC77C
  'Data Table: 451868
  Dim var_98 As TextBox
  loc_EAC6EE: global_88 = vbNullString
  loc_EAC700: Set var_8C = Me.Txt
  loc_EAC706: Call 0.Method_Proc_77_26_EAC77CC (var_8E, var_86)
  loc_EAC716: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAC72C:   Set var_8C = Me.Txt
  loc_EAC732:   Call 0.Method_Proc_77_26_EAC77C0 (CInt(var_86), var_98)
  loc_EAC73A:   var_98.Text = vbNullString
  loc_EAC756:   Set var_8C = Me.Txt
  loc_EAC75C:   Call 0.Method_Proc_77_26_EAC77C0 (CInt(var_86), var_98)
  loc_EAC764:   var_98.Tag = vbNullString
  loc_EAC773: Next var_92 'Byte
  loc_EAC779: Exit Sub
End Sub

Public Sub Proc_77_27_129698C
  'Data Table: 451868
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_451877 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Variant
  Dim var_11C As TextBox
  loc_12963D4: On Error Goto loc_1296946
  loc_12963DD: Proc_183_45_E5C118(global_52)
  loc_1296438: unk_451877.Execute CStr("Select U_Name,U_AE,U_EntDt From Sundrymast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_1296443: Set var_88 = var_118
  loc_1296497: var_118 = var_88.Fields
  loc_1296500: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1296545: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_12965BF: var_11C = var_88.Fields.Item("U_AE")
  loc_1296620: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_1296665: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_12966B4: If (Me.RecordCount <= 0) Then
  loc_12966B7:   Call Proc_77_26_EAC77C()
  loc_12966BF: Else
  loc_12966F3:   global_60 = CStr(Me.Fields.Item("SysYN").Value)
  loc_129673E:   var_114 = "System Defined"
  loc_1296751:   var_F0 = (Me.Fields.Item("SysYN").Value = "Y") 'Variant
  loc_1296771:   Me.LblDefine.Caption = CStr(IIf(var_F0, var_114, "User Defined"))
  loc_12967C3:   global_84 = CStr(Me.Fields.Item("Name").Value)
  loc_1296810:   Set var_118 = Me.Txt
  loc_1296816:   Call 0.Method_Proc_77_27_129698C0 (CInt(0), var_11C)
  loc_129681E:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_129686D:   Set var_118 = Me.Txt
  loc_1296873:   Call 0.Method_Proc_77_27_129698C0 (CInt(0), var_11C)
  loc_129687B:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_12968C8:   Set var_118 = Me.Txt
  loc_12968CE:   Call 0.Method_Proc_77_27_129698C0 (CInt(1), var_11C)
  loc_12968D6:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Nature")))
  loc_1296915:   var_F4 = Proc_6_38_E68A98(CVar(Me.Fields.Item("CalcSign")))
  loc_1296923:   Set var_118 = Me.Txt
  loc_1296929:   Call 0.Method_Proc_77_27_129698C0 (CInt(2), var_11C)
  loc_1296931:   var_11C.Text = var_F4
  loc_1296945: End If
  loc_1296945: Exit Sub
  loc_1296946: ' Referenced from: 12963D4
  loc_129694E: Set var_8C = Err()
  loc_1296954: Call 0.Method_arg_2C (var_F4)
  loc_1296975: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_1296988: Exit Sub
End Sub

Public Sub Proc_77_28_10898F4
  'Data Table: 451868
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_451877 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1089687: If (Me.RecordCount = 0) Then
  loc_108968A:   Proc_77_28_10898F4 = 
  loc_1089690: End If
  loc_1089694: Set var_90 = Me.TopCtrl1
  loc_108969A: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10896B3: If (CStr() = "Add") Then
  loc_10896F1:   Set var_90 = Me.Txt
  loc_10896F7:   Call 0.Method_Proc_77_28_10898F40 (CInt(0), var_A8, var_AC, "Select Count(*) From SundryMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Name='", var_A0, -1)
  loc_1089718:   unk_451877.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1089728:    = var_D0.Item()
  loc_1089730:    = var_E4.Value
  loc_1089761:   If (var_A8.Text.Fields > 0) Then
  loc_108977F:     var_A0 = "Duplicate Name"
  loc_1089785:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_10897A0:     Set var_90 = Me.Txt
  loc_10897A6:     Call 0.Method_Proc_77_28_10898F40 (CInt(0))
  loc_10897AE:     var_A8.SetFocus
  loc_10897BF:     Proc_77_28_10898F4 = &HFF
  loc_10897C5:   End If
  loc_10897C8: Else
  loc_1089803:   Set var_90 = Me.Txt
  loc_1089809:   Call 0.Method_Proc_77_28_10898F40 (CInt(0), var_A8, var_AC, "Select Count(*) From SundryMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Name='", var_A0, -1)
  loc_108983B:   unk_451877.Execute var_D0 & var_AC & "' And Name<>'" & global_88 & "'", 0, var_E4
  loc_108984B:    = var_D0.Item(var_A8)
  loc_1089853:    = var_E4.Value
  loc_1089888:   If (var_A8.Text.Fields > 0) Then
  loc_10898AC:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_10898C7:     Set var_90 = Me.Txt
  loc_10898CD:     Call 0.Method_Proc_77_28_10898F40 (CInt(0))
  loc_10898D5:     var_A8.SetFocus
  loc_10898E6:     Proc_77_28_10898F4 = &HFF
  loc_10898EC:   End If
  loc_10898EC: End If
  loc_10898EC: Proc_77_28_10898F4 = var_A8
End Sub

Public Sub Proc_77_29_E81884
  'Data Table: 451868
  loc_E81834: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E81846:   Me.DGHelp.Visible = False
  loc_E8184E: End If
  loc_E81869: If (Me.FrmList.Visible = &HFF) Then
  loc_E81878:   Me.FrmList.Visible = False
  loc_E81880: End If
  loc_E81880: Exit Sub
  loc_E81881: Result  End Sub 'Currency
End Sub
