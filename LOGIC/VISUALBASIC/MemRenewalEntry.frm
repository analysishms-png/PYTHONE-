VERSION 5.00
Begin VB.Form MemRenewalEntry
  Caption = "Member Renewal"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11400
  ClientHeight = 7440
  Begin BtnEnh cmd
    Index = 0
    Left = 7530
    Top = 4305
    Width = 1650
    Height = 525
    TabIndex = 19
  End
  Begin BtnEnh cmd
    Index = 1
    Left = 2430
    Top = 4305
    Width = 1650
    Height = 525
    TabIndex = 18
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HFF0000&
    Left = 7515
    Top = 3765
    Width = 2475
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin MSHFlexGrid FGrid
    Left = 150
    Top = 360
    Width = 12765
    Height = 2145
    TabIndex = 15
  End
  Begin CommandButton Cmdz
    Caption = "Fill &Grid"
    Index = 1
    Left = 2370
    Top = 6900
    Width = 1470
    Height = 525
    Visible = 0   'False
    TabIndex = 3
  End
  Begin CommandButton Cmdz
    Caption = "&Conferm"
    Index = 0
    Left = 7290
    Top = 7590
    Width = 1470
    Height = 525
    Visible = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HFF0000&
    Left = 7515
    Top = 3450
    Width = 2475
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 2
    ForeColor = &HFF0000&
    Left = 7515
    Top = 3135
    Width = 2475
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 2460
    Top = 3465
    Width = 2475
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HFF0000&
    Left = 2460
    Top = 3150
    Width = 2475
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataGrid DGHelp
    Left = 11295
    Top = 4320
    Width = 3705
    Height = 2565
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin Frame FrmList
    Left = 9975
    Top = 6585
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = -165
      Top = 15
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 10
    End
  End
  Begin MSFlexGrid FGPoint
    Left = 11865
    Top = 6645
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 12
  End
  Begin BtnEnh CmdExit
    Left = 5040
    Top = 4950
    Width = 1650
    Height = 525
    TabIndex = 17
  End
  Begin Label LBL
    Caption = "Renewal Date"
    Index = 4
    ForeColor = &HFF0000&
    Left = 5790
    Top = 3750
    Width = 1335
    Height = 285
    TabIndex = 16
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
  Begin Label LBL
    Caption = "Valid Upto"
    Index = 3
    ForeColor = &HFF0000&
    Left = 5790
    Top = 3435
    Width = 990
    Height = 285
    TabIndex = 14
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
  Begin Label LBL
    Caption = "Valid From"
    Index = 2
    ForeColor = &HFF0000&
    Left = 5805
    Top = 3120
    Width = 1050
    Height = 285
    TabIndex = 13
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
  Begin Label LBL
    Caption = "Member Category"
    Index = 1
    ForeColor = &HFF0000&
    Left = 750
    Top = 3450
    Width = 1695
    Height = 285
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
  Begin Label LBL
    Caption = "Member Type"
    Index = 0
    ForeColor = &HFF0000&
    Left = 750
    Top = 3135
    Width = 1305
    Height = 285
    TabIndex = 0
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

Attribute VB_Name = "MemRenewalEntry"

Private global_64 As Variant
Private global_52 As Integer

Private Sub FGPoint_UnknownEvent_9 'E2E154
  'Data Table: 438EC0
  loc_E2E148: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E2E14B:   Call DGHelp_UnknownEvent_9()
  loc_E2E150: End If
  loc_E2E150: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'FA894C
  'Data Table: 438EC0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_FA87CC: On Error Goto loc_FA88E6
  loc_FA87DE: Me.DGHelp.Visible = False
  loc_FA87EF: var_AC = Me.RecordCount
  loc_FA87FD: If (var_AC > 0) Then
  loc_FA883C:   Set var_B4 = Me.Txt
  loc_FA8842:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_B8)
  loc_FA884A:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA887D:   var_B0 = Me.Fields.Item("Code")
  loc_FA888E:   var_CC = CStr(var_B0.Value)
  loc_FA889C:   Set var_B4 = Me.Txt
  loc_FA88A2:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_B8)
  loc_FA88AA:   var_B8.Tag = var_CC
  loc_FA88C0: End If
  loc_FA88CB: Set var_A8 = Me.Txt
  loc_FA88D1: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1))
  loc_FA88D9: var_B0.SetFocus
  loc_FA88E5: Exit Sub
  loc_FA88E6: ' Referenced from: FA87CC
  loc_FA88EE: Set var_A8 = Err()
  loc_FA88F4: Call 0.Method_arg_1C (var_AC)
  loc_FA8905: If (var_AC <> 0) Then
  loc_FA8910:   Set var_A8 = Err()
  loc_FA8916:   Call 0.Method_arg_2C (var_CC)
  loc_FA8937:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FA894A: End If
  loc_FA894A: Exit Sub
End Sub

Public Sub Cmd_UnknownEvent_9(Index As Integer) '122A828
  'Data Table: 438EC0
  Dim var_8A As Integer
  Dim var_90 As String
  Dim var_A0 As String
  Dim var_98 As TextBox
  Dim unk_438EC7 As Connection15
  Dim var_94 As MSHFlexGrid
  Dim Cmd_UnknownEvent_94 As Variant
  Dim arg_2C As Variant
  Dim var_CC As TextBox
  Dim var_B4 As Variant
  Dim var_F0 As Long
  Dim var_104 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_9C As String
  Dim var_110 As String
  Dim var_144 As Variant
  Dim var_2DC As Variant
  Dim Me As Recordset15
  loc_122A3B7: var_8A = Index
  loc_122A3C2: If (var_8A = CInt(1)) Then
  loc_122A3CC:   var_90 = "SELECT '' as a, S.Name As Name , MCat.Name As Type , Convert(varchar,S.ValidFrom,103) as ValidFrom ,Convert(varchar,S.ValidateUpto,103) As ValidUntil " & " , Convert(varchar,MHis.RenewalDate ,103) As RenewalDate, S.Subcode as Code  FROM Subgroup S join MemCatMast MCat on S.Companytype = MCat.Code "
  loc_122A3D3:   var_A0 = var_90 & " left join MemHistory MHis on s.subcode=MHis.code Where s.ActiveYN= 1 and s.BlackListed='N' and MCat.Name='"
  loc_122A3EA:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(1), var_98, var_9C)
  loc_122A3F2:   var_A0 = var_98.Text
  loc_122A42D:   unk_438EC7.Execute var_8A & var_9C & "' AND  S.validFrom=MHis.validFrom AND S.validateupto=MHis.ValidUntil", var_C4, -1
  loc_122A456:   Cmd_UnknownEvent_94 = Me.FGrid.Text
  loc_122A47F:   CVarUnk
  loc_122A484:   VerifyVarObj
  loc_122A490:   LateIdStAd
  loc_122A49E:   Call Proc_277_14_107B6CC(Me.FGrid, Me.Txt, Me.FGrid.Text)
  loc_122A4A6: Else
  loc_122A4AE:   If (var_8A = CInt(0)) Then
  loc_122A4BF:     Set var_94 = Me.Txt
  loc_122A4C5:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(2), var_98, var_90)
  loc_122A4CD:     Cmd_UnknownEvent_94 = var_98.Text
  loc_122A4E0:     Set var_C8 = Me.Txt
  loc_122A4E6:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(3), var_CC)
  loc_122A4FA:     var_B4 = CVar(CLng(global_52)) 'Long
  loc_122A4FF:     var_F0 = 6
  loc_122A50C:     Set var_104 = Me.FGrid
  loc_122A552:     var_110 = "UPDATE Subgroup SET ValidFrom='" & var_90 & "', Validateupto='" & var_CC.Text & "' WHERE SubCode='" & CStr(var_104.TextMatrix))
  loc_122A57E:     unk_438EC7.Execute var_110 & "'  AND Site_Code='" & MemVar_1F92070 & "' AND LogSite_Code='" & MemVar_1F92078 & "'", var_144, -1
  loc_122A5C2:     var_F0 = 6
  loc_122A5D5:     var_C4 = Me.FGrid.TextMatrix)
  loc_122A5EC:     Set var_98 = Me.Txt
  loc_122A5F2:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(2), var_C8, var_C4, var_F0, CVar(CLng(global_52)))
  loc_122A601:     Proc_6_7_F25D88(var_158, CVar(var_C8), var_148, var_C4)
  loc_122A611:     Set var_CC = Me.Txt
  loc_122A617:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(3), var_104, var_F0)
  loc_122A626:     Proc_6_7_F25D88(var_1A8, CVar(var_104))
  loc_122A636:     Set var_148 = Me.Txt
  loc_122A63C:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(4), var_1DC)
  loc_122A64B:     Proc_6_7_F25D88(var_1FC, CVar(var_1DC))
  loc_122A65E:     Proc_6_7_F25D88(var_28C, Now)
  loc_122A67B:     var_9C = "INSERT INTO MemHistory(Code,ValidFrom,ValidUntil,RenewalDate,U_Name,U_EntDt,U_AE,LOGSITE_CODE,SITE_CODE) VALUES ('" & CStr(var_C4)
  loc_122A6DE:     var_2DC = CVar(var_9C & "',") & var_158 & "," & var_1A8 & "," & var_1FC & ",'" & CVar(MemVar_1F920C8) & "'," & var_28C & ",'A','" & CVar(MemVar_1F92078) 
  loc_122A708:     unk_438EC7.Execute CStr(var_2DC & "','" & CVar(MemVar_1F92070) & "')"), var_35C, -1
  loc_122A75F:     var_B4 = CVar(CLng(global_52)) 'Long
  loc_122A777:     Set var_94 = Me.FGrid
  loc_122A77D:     LateIdCallSt
  loc_122A795:     Set var_94 = Me.FGrid
  loc_122A79B:     var_94.CellForeColor = &HFF0000
  loc_122A7A8:     Call Proc_277_16_E6C044(2, var_94, "ü", 0)
  loc_122A7B8:     Me.Requery -1
  loc_122A7C7:     Cmd_UnknownEvent_94 = Me.FGrid.Text
  loc_122A7DC:     arg_2C = Me.FGrid.Text
  loc_122A7F0:     CVarUnk
  loc_122A7F5:     VerifyVarObj
  loc_122A7FB:     Set var_94 = Me.FGrid
  loc_122A801:     LateIdStAd
  loc_122A813:     Set var_94 = Me.FGrid
  loc_122A824:   End If
  loc_122A824: End If
  loc_122A824: Exit Sub
  loc_122A826: If (var_94 = FGrid.DispID_FFFF) Then Exit Sub
  loc_122A826: End If
End Sub

Private Sub Txt_GotFocus(Index As Integer) '118763C
  'Data Table: 438EC0
  Dim var_92 As Integer
  Dim var_A8 As String
  Dim var_8C As TextBox
  Dim var_D0 As Variant
  Dim unk_438EC7 As Connection15
  Dim Me As Recordset15
  Dim var_90 As Fields15
  loc_118727A: Set var_88 = Me.Txt
  loc_1187280: Call 0.Method_Txt_GotFocus0 (Index)
  loc_118728E: Proc_6_74_E226B0(var_8C)
  loc_118729A: Call Proc_277_15_EB79C4(var_8C)
  loc_11872A2: var_92 = Index
  loc_11872AD: If (var_92 = CInt(0)) Then
  loc_11872BD:   ReDim var_98(0 To 1)
  loc_11872D4:   var_98(0) = "Corporate"
  loc_11872E3:   var_98(1) = "Individual"
  loc_11872EB:   var_C8 = Array(var_98)
  loc_11872FA:   global_64 = var_C8
  loc_1187305:   Set var_D0 = Me.ListView
  loc_1187320:   Set var_8C = Me.Txt
  loc_118733A:   Set global_80 = Proc_6_66_EFF8FC(var_D0, var_8C, Index, global_64)
  loc_1187358:   Set var_88 = Me.Txt
  loc_118735E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_1187366:   2 = var_8C.Text
  loc_1187378:   Set var_90 = Me.Txt
  loc_118737E:   Call 0.Method_Txt_GotFocus0 (Index, var_D0, var_D8)
  loc_1187386:   var_D0.Tag = global_64
  loc_118739C: Else
  loc_11873A4:   If (var_92 = CInt(1)) Then
  loc_11873BB:     Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_11873C3:     var_D8 = var_8C.Text
  loc_11873DA:     If (var_D8 = "Corporate") Then
  loc_11873F3:       unk_438EC7.Execute "SELECT Code,Name FROM MemCatMast Where Corporate='Y'", var_C8, -1
  loc_1187404:       Set global_56 = Me.Txt
  loc_1187412:     End If
  loc_1187420:     Set var_88 = Me.Txt
  loc_1187426:     Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C, var_D8)
  loc_1187445:     If (var_D8 = "Individual") Then
  loc_118745E:       unk_438EC7.Execute "SELECT Code,Name FROM MemCatMast Where Corporate='N'", var_C8, -1
  loc_118746F:       Set global_56 = var_8C.Text
  loc_118747D:     End If
  loc_1187486:     CVarUnk
  loc_118748B:     VerifyVarObj
  loc_1187491:     Set var_88 = Me.DGHelp
  loc_1187497:     LateIdStAd
  loc_11874BC:     If (Me.RecordCount > 0) Then
  loc_11874CA:       Set var_8C = Me.FGPoint
  loc_11874E2:       Proc_6_137_1193554(Me.DGHelp, global_56, Index, var_8C)
  loc_11874F0:     End If
  loc_118753E:     Set var_88 = Me.Txt
  loc_1187544:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_118754C:     var_88 = var_8C.Text
  loc_1187564:     If (global_56 Or (var_D8 = vbNullString)) Then
  loc_1187567:       Exit Sub
  loc_1187568:     End If
  loc_1187575:     Set var_88 = Me.Txt
  loc_118757B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_1187583:     var_88 = var_8C.Text
  loc_1187595:     var_A8 = "Name"
  loc_11875D0:     If CBool(CVar(var_D8) <> Me.Fields.Item(var_A8).Value) Then
  loc_11875D9:       Me.MoveFirst
  loc_11875FC:       Set var_88 = Me.Txt
  loc_1187602:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, "Name ='")
  loc_118760A:       0 = var_8C.Text
  loc_1187623:       Me.Find 1 & var_D8 & "'", var_A8, var_92
  loc_1187638:     End If
  loc_1187638:   End If
  loc_1187638: End If
  loc_1187638: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10FFE04
  'Data Table: 438EC0
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As TextBox
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As DataGrid
  loc_10FFAFC: On Error Goto loc_10FFD9C
  loc_10FFB09: If (CLng(Shift) = &H1B) Then
  loc_10FFB0C:   Call Proc_277_15_EB79C4()
  loc_10FFB11:   Exit Sub
  loc_10FFB12: End If
  loc_10FFB15: var_86 = KeyCode
  loc_10FFB20: If (var_86 = CInt(1)) Then
  loc_10FFB27:   Set var_A0 = Me.DGHelp
  loc_10FFB35:   Set var_A8 = Me.FGPoint
  loc_10FFB40:   Set var_98 = var_A8
  loc_10FFB6E:   Proc_6_79_11ACE04(var_A0, Me.Txt, KeyCode, global_56, Shift)
  loc_10FFB8B:   var_AC = Me.RecordCount
  loc_10FFBDB:   If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10FFBE9:     Set var_90 = Me.FGPoint
  loc_10FFC01:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, var_90, 0)
  loc_10FFC0F:   End If
  loc_10FFC12: Else
  loc_10FFC1A:   If (var_86 = CInt(0)) Then
  loc_10FFC3F:     Set var_8C = Me.Txt
  loc_10FFC45:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 1)
  loc_10FFC4D:     var_98 = var_90.Left
  loc_10FFC5F:     Set var_98 = Me.Txt
  loc_10FFC65:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B0)
  loc_10FFC6D:     0 = var_A0.Top
  loc_10FFC7F:     Set var_A4 = Me.Txt
  loc_10FFC85:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_10FFC8D:     var_B4 = var_A8.Height
  loc_10FFC9F:     Set var_B8 = Me.Txt
  loc_10FFCA5:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_10FFCAD:     var_C0 = var_BC.Width
  loc_10FFCF5:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_10FFD19:   End If
  loc_10FFD19: End If
  loc_10FFD52: If ((CBool(Me.DGHelp.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_10FFD6A:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10FFD73:     Proc_6_75_E527CC(Shift, arg_14, CInt(var_AC), CInt((var_B0 + var_B4)))
  loc_10FFD78:   End If
  loc_10FFD8D:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10FFD96:     Proc_6_76_E52838(Shift, arg_14, CInt(var_C0))
  loc_10FFD9B:   End If
  loc_10FFD9B: End If
  loc_10FFD9B: Exit Sub
  loc_10FFD9C: ' Referenced from: 10FFAFC
  loc_10FFDA4: Set var_8C = Err()
  loc_10FFDAA: Call 0.Method_arg_1C (var_AC, 600)
  loc_10FFDBB: If (var_AC <> 0) Then
  loc_10FFDC6:   Set var_8C = Err()
  loc_10FFDCC:   Call 0.Method_arg_2C (var_F0)
  loc_10FFDED:   MsgBox(CVar(var_F0), &H40, "Validation", var_130, var_150)
  loc_10FFE00: End If
  loc_10FFE00: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F67D30
  'Data Table: 438EC0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F67C08: On Error Goto loc_F67CCA
  loc_F67C11: Proc_6_133_E7EF78(var_94)
  loc_F67C26: If (CInt(var_94) = &H27) Then
  loc_F67C2B:   arg_10 = 0
  loc_F67C2E:   Exit Sub
  loc_F67C2F: End If
  loc_F67C32: var_96 = KeyAscii
  loc_F67C3D: If (var_96 = CInt(1)) Then
  loc_F67C5C:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F67C6E:     var_A0 = "Name"
  loc_F67C89:     Proc_183_41_1459C78(Me.Txt, KeyAscii, global_56, arg_10, var_A0)
  loc_F67CBB:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyAscii, Me.FGPoint, 0)
  loc_F67CC9:   End If
  loc_F67CC9: End If
  loc_F67CC9: Exit Sub
  loc_F67CCA: ' Referenced from: F67C08
  loc_F67CD2: Set var_9C = Err()
  loc_F67CD8: Call 0.Method_arg_1C (var_B0, var_96, arg_10)
  loc_F67CE9: If (var_B0 <> 0) Then
  loc_F67CF4:   Set var_9C = Err()
  loc_F67CFA:   Call 0.Method_arg_2C (var_A0, arg_10)
  loc_F67D1B:   MsgBox(CVar(var_A0), &H40, "Validation", var_F0, var_110)
  loc_F67D2E: End If
  loc_F67D2E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F9B0CC
  'Data Table: 438EC0
  Dim var_86 As Integer
  Dim var_8C As Variant
  loc_F9AF64: On Error Goto loc_F9B065
  loc_F9AF6A: var_86 = KeyCode
  loc_F9AF75: If (var_86 = CInt(1)) Then
  loc_F9AF94:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F9AFA1:     var_A0 = "Name"
  loc_F9AFBC:     Proc_183_32_FE7F70(Me.Txt, KeyCode, global_56)
  loc_F9AFEE:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_F9AFFC:   End If
  loc_F9AFFF: Else
  loc_F9B007:   If (var_86 = CInt(0)) Then
  loc_F9B025:     If (Me.FrmList.Visible = &HFF) Then
  loc_F9B054:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F9B064:     End If
  loc_F9B064:   End If
  loc_F9B064: End If
  loc_F9B064: Exit Sub
  loc_F9B065: ' Referenced from: F9AF64
  loc_F9B06D: Set var_8C = Err()
  loc_F9B073: Call 0.Method_arg_1C (var_B4, global_80, Shift)
  loc_F9B084: If (var_B4 <> 0) Then
  loc_F9B08F:   Set var_8C = Err()
  loc_F9B095:   Call 0.Method_arg_2C (var_A0, var_A0)
  loc_F9B0B6:   MsgBox(CVar(var_A0), &H40, "Validation", var_F4, var_114)
  loc_F9B0C9: End If
  loc_F9B0C9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48BE4
  'Data Table: 438EC0
  loc_E48BC2: Set var_88 = Me.Txt
  loc_E48BC8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48BD6: Proc_183_27_E22608(var_8C)
  loc_E48BE2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '112C17C
  'Data Table: 438EC0
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_8C As ListView
  Dim var_AC As TextBox
  Dim arg_10 As Integer
  Dim var_B0 As TextBox
  loc_112BE07: var_86 = Cancel
  loc_112BE12: If (var_86 = CInt(0)) Then
  loc_112BE22:   Set var_8C = Me.Txt
  loc_112BE28:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_112BE47:   If (var_90.Text = vbNullString) Then
  loc_112BE4A:     Exit Sub
  loc_112BE4B:   End If
  loc_112BE58:   Set var_8C = Me.Txt
  loc_112BE5E:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_112BE7D:   If (var_90.Text <> vbNullString) Then
  loc_112BE98:     Set var_90 = Me.ListView.SelectedItem
  loc_112BEB0:     Set var_A8 = Me.Txt
  loc_112BEB6:     Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_112BEBE:     var_AC.Text = var_90.Text
  loc_112BED4:   End If
  loc_112BED7: Else
  loc_112BEDF:   If (var_86 = CInt(2)) Then
  loc_112BEF0:     Set var_8C = Me.Txt
  loc_112BEF6:     Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_112BF15:     If (var_90.Text <> vbNullString) Then
  loc_112BF23:       Set var_8C = Me.Txt
  loc_112BF29:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_112BF52:       If (Proc_183_19_E8DAFC(var_90, "Valid From") = 0) Then
  loc_112BF57:         arg_10 = &HFF
  loc_112BF5A:         Exit Sub
  loc_112BF5B:       End If
  loc_112BF5E:     Else
  loc_112BF60:       arg_10 = &HFF
  loc_112BF63:     End If
  loc_112BF6E:     Set var_8C = Me.Txt
  loc_112BF74:     Call 0.Method_Txt_Validate0 (CInt(2), var_90, arg_10)
  loc_112BF95:     Set var_AC = Me.Txt
  loc_112BF9B:     Call 0.Method_Txt_Validate0 (CInt(2), var_B0)
  loc_112BFA3:     var_B0.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_112BFB9:   Else
  loc_112BFC1:     If (var_86 = CInt(3)) Then
  loc_112BFD2:       Set var_8C = Me.Txt
  loc_112BFD8:       Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_112BFF7:       If (var_90.Text <> vbNullString) Then
  loc_112C005:         Set var_8C = Me.Txt
  loc_112C00B:         Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_112C034:         If (Proc_183_19_E8DAFC(var_90, "Valid Until") = 0) Then
  loc_112C039:           arg_10 = &HFF
  loc_112C03C:           Exit Sub
  loc_112C03D:         End If
  loc_112C040:       Else
  loc_112C042:         arg_10 = &HFF
  loc_112C045:       End If
  loc_112C050:       Set var_8C = Me.Txt
  loc_112C056:       Call 0.Method_Txt_Validate0 (CInt(3), var_90, arg_10)
  loc_112C077:       Set var_AC = Me.Txt
  loc_112C07D:       Call 0.Method_Txt_Validate0 (CInt(3), var_B0)
  loc_112C085:       var_B0.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_112C09B:     Else
  loc_112C0A3:       If (var_86 = CInt(4)) Then
  loc_112C0B4:         Set var_8C = Me.Txt
  loc_112C0BA:         Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_112C0D9:         If (var_90.Text <> vbNullString) Then
  loc_112C0E7:           Set var_8C = Me.Txt
  loc_112C0ED:           Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_112C116:           If (Proc_183_19_E8DAFC(var_90, "Renewal Date") = 0) Then
  loc_112C11B:             arg_10 = &HFF
  loc_112C11E:             Exit Sub
  loc_112C11F:           End If
  loc_112C122:         Else
  loc_112C124:           arg_10 = &HFF
  loc_112C127:         End If
  loc_112C132:         Set var_8C = Me.Txt
  loc_112C138:         Call 0.Method_Txt_Validate0 (CInt(4), var_90, arg_10)
  loc_112C159:         Set var_AC = Me.Txt
  loc_112C15F:         Call 0.Method_Txt_Validate0 (CInt(4), var_B0)
  loc_112C167:         var_B0.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_112C17A:       End If
  loc_112C17A:     End If
  loc_112C17A:   End If
  loc_112C17A: End If
  loc_112C17A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'F814EC
  'Data Table: 438EC0
  Dim var_A8 As Variant
  Dim var_C8 As Long
  Dim var_174 As Variant
  Dim var_194 As Long
  Dim var_1B4 As Variant
  loc_F813D3: If (CLng(Me.FGrid.Col) = 0) Then
  loc_F813E6:   Me.FGrid.CellFontName = "WINGDINGS"
  loc_F81400:   Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_F8141B:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F81420:   var_C8 = 0
  loc_F81452:   var_174 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F81457:   var_194 = 0
  loc_F81492:   var_1B4 = CVar(CStr(IIf((CStr(Me.FGrid.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_F8149A:   Set var_1C8 = Me.FGrid
  loc_F814A0:   LateIdCallSt
  loc_F814E0:   global_52 = CInt(CLng(Me.FGrid.Row))
  loc_F814E9: End If
  loc_F814E9: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E15B8C
  'Data Table: 438EC0
  loc_E15B81: Me.Global.Unload Me
  loc_E15B89: Exit Sub
End Sub

Private Sub Form_Load() 'E647A0
  'Data Table: 438EC0
  Dim var_9C As Variant
  loc_E6475D: Call 0.Method_arg_160 (var_88)
  loc_E6476B: Call 0.Method_arg_164 (var_88)
  loc_E6477A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_E64783: var_9C = CVar(CLng(MemVar_1F921B0)) 'Long
  loc_E6478C: Set var_88 = Me.ImgLogo
  loc_E6479A: Call Proc_277_14_107B6CC(ImgLogo.DispID_12)
  loc_E6479F: Exit Sub
End Sub

Private Sub Form_Resize() 'ED9D1C
  'Data Table: 438EC0
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_ED9C7A: Set var_88 = Me.Txt
  loc_ED9C80: Call 0.Method_Form_Resize0 (CInt(1), var_8C)
  loc_ED9C9F: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_ED9CBB: Set var_B4 = Me.Txt
  loc_ED9CC1: Call 0.Method_Form_Resize0 (CInt(1), var_B8)
  loc_ED9CDC: Set var_88 = Me.Txt
  loc_ED9CE2: Call 0.Method_Form_Resize0 (CInt(1), var_8C)
  loc_ED9CFA: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&HF))) 'Single
  loc_ED9D09: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_ED9D1B: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F192DC
  'Data Table: 438EC0
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F191F8: On Error Goto loc_F192D6
  loc_F191FF: Set var_A4 = Me.ListView
  loc_F19249: Set var_BC = Me.Txt
  loc_F1924F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F19257: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F19283: Me.FrmList.Visible = False
  loc_F192A5: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F192B3: Set var_9C = Me.Txt
  loc_F192B9: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F192C1: var_A4.SetFocus
  loc_F192D5: Exit Sub
  loc_F192D6: ' Referenced from: F191F8
  loc_F192D6: Proc_6_60_E62BC4(var_C8)
  loc_F192DB: Exit Sub
End Sub

Public Sub Proc_277_14_107B6CC
  'Data Table: 438EC0
  Dim var_98 As Long
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_107B42B: Me.FGrid.Cols = 7
  loc_107B430: var_98 = 0
  loc_107B439: var_B8 = 0
  loc_107B442: var_D8 = vbNullString
  loc_107B44B: LateIdCallSt
  loc_107B453: var_98 = 0
  loc_107B462: var_B8 = CVar(CInt(1)) 'Integer
  loc_107B469: LateIdCallSt
  loc_107B471: var_98 = 1
  loc_107B47A: var_B8 = &H1C2
  loc_107B486: LateIdCallSt
  loc_107B48E: var_98 = 0
  loc_107B497: var_B8 = 1
  loc_107B4A0: var_D8 = "Member Name"
  loc_107B4A9: LateIdCallSt
  loc_107B4B1: var_98 = 0
  loc_107B4C0: var_B8 = CVar(CInt(1)) 'Integer
  loc_107B4C7: LateIdCallSt
  loc_107B4CF: var_98 = 1
  loc_107B4D8: var_B8 = &H1194
  loc_107B4E4: LateIdCallSt
  loc_107B4EC: var_98 = 0
  loc_107B4F5: var_B8 = 2
  loc_107B4FE: var_D8 = "Member Type"
  loc_107B507: LateIdCallSt
  loc_107B50F: var_98 = 2
  loc_107B51E: var_B8 = CVar(CInt(1)) 'Integer
  loc_107B525: LateIdCallSt
  loc_107B52D: var_98 = 2
  loc_107B536: var_B8 = &H7D0
  loc_107B542: LateIdCallSt
  loc_107B54A: var_98 = 0
  loc_107B553: var_B8 = 3
  loc_107B55C: var_D8 = "Valid From"
  loc_107B565: LateIdCallSt
  loc_107B56D: var_98 = 3
  loc_107B57C: var_B8 = CVar(CInt(1)) 'Integer
  loc_107B583: LateIdCallSt
  loc_107B58B: var_98 = 3
  loc_107B594: var_B8 = &H640
  loc_107B5A0: LateIdCallSt
  loc_107B5A8: var_98 = 0
  loc_107B5B1: var_B8 = 4
  loc_107B5BA: var_D8 = "Valid Until"
  loc_107B5C3: LateIdCallSt
  loc_107B5CB: var_98 = 4
  loc_107B5DA: var_B8 = CVar(CInt(1)) 'Integer
  loc_107B5E1: LateIdCallSt
  loc_107B5E9: var_98 = 4
  loc_107B5F2: var_B8 = &H640
  loc_107B5FE: LateIdCallSt
  loc_107B606: var_98 = 0
  loc_107B60F: var_B8 = 5
  loc_107B618: var_D8 = "Renewal Date"
  loc_107B621: LateIdCallSt
  loc_107B629: var_98 = 5
  loc_107B638: var_B8 = CVar(CInt(7)) 'Integer
  loc_107B63F: LateIdCallSt
  loc_107B647: var_98 = 5
  loc_107B650: var_B8 = &H640
  loc_107B65C: LateIdCallSt
  loc_107B664: var_98 = 0
  loc_107B66D: var_B8 = 6
  loc_107B676: var_D8 = "Code"
  loc_107B67F: LateIdCallSt
  loc_107B687: var_98 = 6
  loc_107B696: var_B8 = CVar(CInt(7)) 'Integer
  loc_107B69D: LateIdCallSt
  loc_107B6A5: var_98 = 6
  loc_107B6AE: var_B8 = 0
  loc_107B6BA: LateIdCallSt
  loc_107B6C4: Set var_88 = Nothing 
  loc_107B6C8: Exit Sub
End Sub

Public Sub Proc_277_15_EB79C4
  'Data Table: 438EC0
  loc_EB7940: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EB7952:   Me.DGHelp.Visible = False
  loc_EB795A: End If
  loc_EB7976: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB7988:   Me.FGPoint.Visible = False
  loc_EB7990: End If
  loc_EB79AB: If (Me.FrmList.Visible = &HFF) Then
  loc_EB79BA:   Me.FrmList.Visible = False
  loc_EB79C2: End If
  loc_EB79C2: Exit Sub
End Sub

Public Sub Proc_277_16_E6C044(arg_C) 'E6C044
  'Data Table: 438EC0
  Dim var_98 As TextBox
  loc_E6BFF9: Set var_8C = Me.Txt
  loc_E6BFFF: Call 0.Method_Proc_277_16_E6C044C (var_8E, var_86)
  loc_E6C00D: For var_92 =  To (var_8E - 1): arg_C = var_92 'Integer
  loc_E6C020:   Set var_8C = Me.Txt
  loc_E6C026:   Call 0.Method_Proc_277_16_E6C0440 (var_86, var_98)
  loc_E6C02E:   var_98.Text = vbNullString
  loc_E6C03D: Next var_92 'Integer
  loc_E6C042: Exit Sub
End Sub
