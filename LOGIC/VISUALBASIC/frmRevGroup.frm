VERSION 5.00
Begin VB.Form frmRevGroup
  Caption = "Revenue Group"
  BackColor = &HE8F4F3&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 7755
  ClientHeight = 6480
  LockControls = -1  'True
  Begin Frame Frame2
    BackColor = &HC1C1C1&
    Left = 6075
    Top = 5010
    Width = 1560
    Height = 1305
    TabIndex = 5
    BorderStyle = 0 'None
    Begin CommandButton CmdExit
      Caption = "&Cancel"
      BackColor = &HC6B7A4&
      Left = 210
      Top = 720
      Width = 1155
      Height = 480
      TabIndex = 7
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton CmdSave
      Caption = "&Save"
      BackColor = &HC6B7A4&
      Left = 210
      Top = 195
      Width = 1155
      Height = 480
      TabIndex = 6
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin Frame Frame1
    BackColor = &HC1C1C1&
    Left = 6675
    Top = 1935
    Width = 555
    Height = 2040
    TabIndex = 1
    BorderStyle = 0 'None
    Begin CommandButton CmdDown
      Caption = "â"
      BackColor = &HC6B7A4&
      Left = 83
      Top = 1125
      Width = 390
      Height = 630
      TabIndex = 3
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton CmdUp
      Caption = "á"
      BackColor = &HC6B7A4&
      Left = 90
      Top = 270
      Width = 390
      Height = 630
      TabIndex = 2
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin MSFlexGrid FGrid
    Left = 15
    Top = 30
    Width = 5970
    Height = 6390
    TabIndex = 0
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7755
    Height = 375
    Visible = 0   'False
    TabIndex = 4
  End
End

Attribute VB_Name = "frmRevGroup"


Private Sub CmdUp_Click() '107C1F4
  'Data Table: 426CC8
  Dim var_86 As Integer
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_128 As MSFlexGrid
  Dim var_19C As Variant
  loc_107BFD7: If (CLng(Me.FGrid.Row) = 1) Then
  loc_107BFDA:   Exit Sub
  loc_107BFDB: End If
  loc_107BFEF: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_107C01D: For var_DC = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_DC 'Integer
  loc_107C027:   var_EC = CVar(CLng(var_86)) 'Long
  loc_107C030:   var_10C = CVar(CLng(var_C2)) 'Long
  loc_107C054:   var_A0(CLng(var_C2)) = CStr(Me.FGrid.TextMatrix))
  loc_107C061: Next var_DC 'Integer
  loc_107C08B: For var_124 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_124 'Integer
  loc_107C0A4:   var_15C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_107C0AD:   var_17C = CVar(CLng(var_C2)) 'Long
  loc_107C0CB:   var_EC = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_107C0D4:   var_10C = CVar(CLng(var_C2)) 'Long
  loc_107C0EE:   var_19C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_107C0F6:   Set var_1B0 = Me.FGrid
  loc_107C0FC:   LateIdCallSt
  loc_107C11D: Next var_124 'Integer
  loc_107C147: For var_1B4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_1B4 'Integer
  loc_107C166:   var_EC = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_107C16F:   var_10C = CVar(CLng(var_C2)) 'Long
  loc_107C184:   Set var_128 = Me.FGrid
  loc_107C18A:   LateIdCallSt
  loc_107C19F: Next var_1B4 'Integer
  loc_107C1AB: var_EC = CVar(CLng((var_86 - 1))) 'Long
  loc_107C1BA: Me.FGrid.Row = var_EC
  loc_107C1E4: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_107C1F3: Exit Sub
End Sub

Private Sub CmdDown_Click() '106F334
  'Data Table: 426CC8
  Dim var_C0 As MSFlexGrid
  Dim var_86 As Integer
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  loc_106F117: If (CLng(Me.FGrid.Row) = (CLng(Me.FGrid.Rows) - 1)) Then
  loc_106F11A:   Exit Sub
  loc_106F11B: End If
  loc_106F12F: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_106F15D: For var_D4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_D4 'Integer
  loc_106F167:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_106F170:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_106F194:   var_A0(CLng(var_A6)) = CStr(Me.FGrid.TextMatrix))
  loc_106F1A1: Next var_D4 'Integer
  loc_106F1CB: For var_11C = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_11C 'Integer
  loc_106F1E4:   var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_106F1ED:   var_160 = CVar(CLng(var_A6)) 'Long
  loc_106F20B:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_106F214:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_106F22E:   var_180 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_106F236:   Set var_194 = Me.FGrid
  loc_106F23C:   LateIdCallSt
  loc_106F25D: Next var_11C 'Integer
  loc_106F287: For var_198 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_198 'Integer
  loc_106F2A6:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_106F2AF:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_106F2C4:   Set var_C0 = Me.FGrid
  loc_106F2CA:   LateIdCallSt
  loc_106F2DF: Next var_198 'Integer
  loc_106F2EB: var_E4 = CVar(CLng((var_86 + 1))) 'Long
  loc_106F2FA: Me.FGrid.Row = var_E4
  loc_106F324: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_106F333: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E298EC
  'Data Table: 426CC8
  loc_E298CF: Set global_60 = Nothing
  loc_E298E3: Me.Global.Unload Me
  loc_E298EB: Exit Sub
End Sub

Private Sub Form_Load() 'EAE9BC
  'Data Table: 426CC8
  loc_EAE92C: On Error Goto loc_EAE9B5
  loc_EAE941: Set var_88 = Me
  loc_EAE947: Proc_6_23_DFBA28(var_88, 6885)
  loc_EAE94F: Call Proc_72_9_F96214(8205)
  loc_EAE95E: Set global_60 = New 
  loc_EAE97B: Me.Connection15.Execute "Select GroupSrNo as Sno,Name as Revenue,code as RevCode,FlagAMR from revmast Order by GroupSrNo", var_AC, -1
  loc_EAE98C: Set global_60 = var_88
  loc_EAE99A: Call Proc_72_10_106E804(var_88)
  loc_EAE9A3: Set var_88 = Me.FGrid
  loc_EAE9B4: Exit Sub
  loc_EAE9B5: ' Referenced from: EAE92C
  loc_EAE9B5: Proc_6_60_E62BC4(FGrid.DispID_FFFF)
  loc_EAE9BA: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E14194
  'Data Table: 426CC8
  loc_E1418B: Set global_60 = Nothing
  loc_E14192: Exit Sub
End Sub

Private Sub Form_Activate() 'E16DA8
  'Data Table: 426CC8
  loc_E16D94: Set var_88 = Me.FGrid
  loc_E16DA5: Exit Sub
End Sub

Private Sub Form_Deactivate() 'DFCCD8
  'Data Table: 426CC8
  loc_DFCCD4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B15C
  'Data Table: 426CC8
  Dim arg_50FF As Integer
  loc_E2B134: On Error Goto loc_E2B154
  loc_E2B14B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2B153: Exit Sub
  loc_E2B154: ' Referenced from: E2B134
  loc_E2B154: Proc_6_60_E62BC4(Shift)
  loc_E2B159: Exit Sub
  loc_E2B15A: arg_50FF = 0
End Sub

Private Sub CmdSave_Click() 'F866A4
  'Data Table: 426CC8
  Dim unk_426CD2 As Connection15
  Dim var_90 As MSFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A8 As String
  loc_F86568: On Error Goto loc_F86651
  loc_F8656F: var_88 = CByte(1) 'Byte
  loc_F8657C: unk_426CD2.BeginTrans var_8C
  loc_F865A6: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F865B0:   var_BC = CVar(CLng(var_86)) 'Long
  loc_F865B8:   var_DC = CVar(CLng(2)) 'Long
  loc_F865E8:   var_A8 = CStr(var_86)
  loc_F8660E:   unk_426CD2.Execute "Update Revmast set GroupSrNo=" & var_A8 & " where code='" & CStr(Me.FGrid.TextMatrix)) & "'", var_11C, -1
  loc_F86633: Next var_A4 'Integer
  loc_F8663C: var_88 = CByte(0) 'Byte
  loc_F86646: unk_426CD2.CommitTrans
  loc_F8664B: Call CmdExit_Click()
  loc_F86650: Exit Sub
  loc_F86651: ' Referenced from: F86568
  loc_F8665A: If (CInt(var_88) = 1) Then
  loc_F86663:   unk_426CD2.RollbackTrans
  loc_F86668: End If
  loc_F86670: Set var_90 = Err()
  loc_F86676: Call 0.Method_arg_2C (var_A8)
  loc_F8668F: MsgBox(CVar(var_A8), &H10, var_11C, var_130, var_140)
  loc_F866A2: Exit Sub
End Sub

Public Sub Proc_72_9_F96214
  'Data Table: 426CC8
  Dim var_A0 As Variant
  Dim var_90 As MSFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_F96098: Set var_90 = Me.FGrid
  loc_F960A7: var_90.Cols = 4
  loc_F960B8: var_90.Rows = 2
  loc_F960BD: var_A0 = 0
  loc_F960C9: var_C0 = CVar(CLng(0)) 'Long
  loc_F960CE: var_E0 = "SNo"
  loc_F960D7: LateIdCallSt
  loc_F960E2: var_A0 = CVar(CLng(0)) 'Long
  loc_F960E7: var_C0 = &H1F4
  loc_F960F3: LateIdCallSt
  loc_F960FB: var_A0 = 0
  loc_F96107: var_C0 = CVar(CLng(1)) 'Long
  loc_F9610C: var_E0 = "Revenue"
  loc_F96115: LateIdCallSt
  loc_F96120: var_A0 = CVar(CLng(1)) 'Long
  loc_F9612B: var_C0 = CVar(CInt(1)) 'Integer
  loc_F96132: LateIdCallSt
  loc_F9613D: var_A0 = CVar(CLng(1)) 'Long
  loc_F96142: var_C0 = &H1388
  loc_F9614E: LateIdCallSt
  loc_F96156: var_A0 = 0
  loc_F96162: var_C0 = CVar(CLng(2)) 'Long
  loc_F96167: var_E0 = "RevCode"
  loc_F96170: LateIdCallSt
  loc_F9617B: var_A0 = CVar(CLng(2)) 'Long
  loc_F96186: var_C0 = CVar(CInt(1)) 'Integer
  loc_F9618D: LateIdCallSt
  loc_F96198: var_A0 = CVar(CLng(2)) 'Long
  loc_F9619D: var_C0 = 0
  loc_F961A9: LateIdCallSt
  loc_F961B1: var_A0 = 0
  loc_F961BD: var_C0 = CVar(CLng(3)) 'Long
  loc_F961C2: var_E0 = "FlagAMR"
  loc_F961CB: LateIdCallSt
  loc_F961D6: var_A0 = CVar(CLng(3)) 'Long
  loc_F961E1: var_C0 = CVar(CInt(7)) 'Integer
  loc_F961E8: LateIdCallSt
  loc_F961F3: var_A0 = CVar(CLng(3)) 'Long
  loc_F961F8: var_C0 = 0
  loc_F96204: LateIdCallSt
  loc_F9620E: Set var_90 = Nothing 
  loc_F96212: Exit Sub
End Sub

Public Sub Proc_72_10_106E804
  'Data Table: 426CC8
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_EC As Variant
  Dim var_A8 As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_D8 As Variant
  loc_106E58F: Me.FGrid.Row = 1
  loc_106E597: ' Referenced from: 106E7FE
  loc_106E5A9: If Not(Me.EOF) Then
  loc_106E5B0:   Set var_B4 = Me.FGrid
  loc_106E5C6:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_106E5CE:   var_10C = CVar(CLng(0)) 'Long
  loc_106E5FC:   Proc_6_39_E7C810(var_D8, CVar(Me.Fields.Item("SNo")))
  loc_106E605:   var_12C = CVar(CStr(var_D8)) 'String
  loc_106E60C:   LateIdCallSt
  loc_106E671:   var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Revenue")), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_B4)) 'String
  loc_106E678:   LateIdCallSt
  loc_106E6DB:   var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RevCode")), CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)), var_B4)) 'String
  loc_106E6E2:   LateIdCallSt
  loc_106E745:   var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("FlagAMR")), CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_B4, var_EC)) 'String
  loc_106E74C:   LateIdCallSt
  loc_106E766:   Set var_B4 = Nothing 
  loc_106E770:   Me.MoveNext
  loc_106E7A9:   If ((CLng(Me.FGrid.Row) >= 1) And (Me.EOF = 0)) Then
  loc_106E7AC:     var_98 = vbNullString
  loc_106E7B6:     Set var_AC = Me.FGrid
  loc_106E7E0:     var_98 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_106E7EF:     Me.FGrid.Row = var_98
  loc_106E7FE:   End If
  loc_106E7FE:   GoTo loc_106E597
  loc_106E801: End If
  loc_106E801: Exit Sub
End Sub
