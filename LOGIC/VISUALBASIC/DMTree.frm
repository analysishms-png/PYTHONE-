VERSION 5.00
Begin VB.Form DMTree
  Caption = "Form1"
  BackColor = &H80C0FF&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 13590
  ClientHeight = 10545
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin Frame Frame1
    Caption = "Frame1"
    BackColor = &HD6FEEE&
    Left = 0
    Top = 9390
    Width = 7455
    Height = 600
    TabIndex = 2
    BorderStyle = 0 'None
    Begin CommandButton btnsave
      Caption = "Save"
      Left = 6225
      Top = 45
      Width = 1170
      Height = 510
      TabIndex = 3
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "DMTree.frx":0
      DisabledPicture = "DMTree.frx":102
      ToolTipText = "Save Records"
      Style = 1
    End
    Begin Label Label1
      Caption = "(E)ntry Point, (R)eport, (V) for InVisible and (N) Main Menu"
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = 105
      Top = 180
      Width = 5955
      Height = 240
      TabIndex = 4
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin TextBox txtGrid
    Left = 4455
    Top = 840
    Width = 975
    Height = 285
    Visible = 0   'False
    TabIndex = 0
    Alignment = 2 'Center
    MaxLength = 2
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid1
    Left = 0
    Top = 15
    Width = 7455
    Height = 9360
    TabIndex = 1
  End
End

Attribute VB_Name = "DMTree"

Private global_52 As Integer
Private global_54 As Integer

Private Sub Form_Load() 'EB7300
  'Data Table: 425180
  Dim unk_425181 As Connection15
  Dim var_A4 As Variant
  loc_EB727A: unk_425181.Execute "Select Code,Opt1,Opt2,Opt3,Opt4,MenuCaption As Description,Flag As MType,Param_Str AS Permission From menuHelp1 WHERE UserName='SA' ORDER By Code", var_A4, -1
  loc_EB72A2: CVarUnk
  loc_EB72A7: VerifyVarObj
  loc_EB72B3: LateIdStAd
  loc_EB72C1: Call Proc_152_15_10EEF74(Me.FGrid1, Me.FGrid1)
  loc_EB72D1: Set global_56 = Nothing
  loc_EB72F3: Call 0.Method_Me4 ((CDbl(Me.FGrid1.Width) + CDbl(&HA)))
  loc_EB72FE: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E13BAC
  'Data Table: 425180
  loc_E13BA3: Set global_56 = Nothing
  loc_E13BAA: Exit Sub
End Sub

Private Sub Form_Activate() 'E69980
  'Data Table: 425180
  loc_E6994C: Call 0.Method_MeC ((CDbl(Me.FGrid1.Height) + CDbl(660)))
  loc_E69972: Call 0.Method_Me4 ((CDbl(Me.FGrid1.Width) + CDbl(&H28)))
  loc_E6997D: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E01C70
  'Data Table: 425180
  loc_E01C69: Call 0.Method_arg_1BC (0)
  loc_E01C6E: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F0E2E8
  'Data Table: 425180
  loc_F0E253: If CBool((Ucase(Chr(CLng(KeyCode))) = "Q") And (Shift = 2) And (MemVar_1F920C8 = "SA")) Then
  loc_F0E25C:   Call 0.Method_arg_1B8 (var_106)
  loc_F0E267:   If (var_106 = 0) Then
  loc_F0E26F:     Call 0.Method_arg_1BC (&HFF)
  loc_F0E274:   End If
  loc_F0E28F:   Call 0.Method_Me4 ((CDbl(Me.FGrid1.Width) + CDbl(&HA)))
  loc_F0E29A: End If
  loc_F0E2D7: If CBool((Ucase(Chr(CLng(KeyCode))) = "H") And (Shift = 2)) Then
  loc_F0E2DF:   Call 0.Method_arg_1BC (0)
  loc_F0E2E4: End If
  loc_F0E2E4: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '1171D60
  'Data Table: 425180
  Dim var_9C As Long
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  loc_11719AF: var_9C = CLng(Me.FGrid1.ColSel)
  loc_11719C1: If Not (var_9C = 1) Then
  loc_11719CD:   If Not (var_9C = 2) Then
  loc_11719D9:     If Not (var_9C = 3) Then
  loc_11719E5:       If (var_9C = 4) Then
  loc_11719E8:       End If
  loc_11719E8:     End If
  loc_11719E8:   End If
  loc_11719F4:   Me.txtGrid.Alignment = 2
  loc_1171A0B:   Me.txtGrid.MaxLength = 2
  loc_1171A16: Else
  loc_1171A1F:   If (var_9C = 5) Then
  loc_1171A2E:     Me.txtGrid.Alignment = 0
  loc_1171A45:     Me.txtGrid.MaxLength = &H32
  loc_1171A50:   Else
  loc_1171A59:     If (var_9C = 6) Then
  loc_1171A68:       Me.txtGrid.Alignment = 2
  loc_1171A7F:       Me.txtGrid.MaxLength = 1
  loc_1171A8A:     Else
  loc_1171A93:       If (var_9C = 7) Then
  loc_1171AA2:         Me.txtGrid.Alignment = 2
  loc_1171AB9:         Me.txtGrid.MaxLength = 5
  loc_1171AC1:       End If
  loc_1171AC1:     End If
  loc_1171AC1:   End If
  loc_1171AC1: End If
  loc_1171B02: If ((CLng(Me.FGrid1.Rows) = 1) Or (CLng(Me.FGrid1.ColSel) = 0)) Then
  loc_1171B05:   Exit Sub
  loc_1171B06: End If
  loc_1171B3B: If (CLng(Me.FGrid1.ColSel) < CLng(Me.FGrid1.Cols)) Then
  loc_1171B76:   Me.txtGrid.Left = (CDbl(Me.FGrid1.Left) + CDbl(CLng(Me.FGrid1.CellLeft)))
  loc_1171BC3:   Me.txtGrid.Top = (CDbl(Me.FGrid1.Top) + CDbl(CLng(Me.FGrid1.CellTop)))
  loc_1171BEB:   var_C4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1171C12:   Me.txtGrid.Width = CDbl(CLng(Me.FGrid1.ColWidth)))
  loc_1171C46:   Me.txtGrid.Height = CDbl(CLng(Me.FGrid1.CellHeight))
  loc_1171C61:   Me.txtGrid.Visible = True
  loc_1171C7C:   var_C4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_1171C94:   var_E4 = CVar(CLng(Me.FGrid1.ColSel)) 'Long
  loc_1171CBB:   Me.txtGrid.Text = CStr(Me.FGrid1.TextMatrix))
  loc_1171CEA:   var_C4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_1171D02:   var_E4 = CVar(CLng(Me.FGrid1.ColSel)) 'Long
  loc_1171D1F:   var_11C = CVar(CStr(Me.FGrid1.TextMatrix))) 'Variant
  loc_1171D3F:   Me.txtGrid.SetFocus
  loc_1171D57:   Me.txtGrid.ZOrder 0
  loc_1171D5F: End If
  loc_1171D5F: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A 'E40C00
  'Data Table: 425180
  loc_E40BD6: If (KeyCode = &HD) Then
  loc_E40BD9:   DoEvents()
  loc_E40BF1:   Me.FGrid1.SelectionMode = 0
  loc_E40BF9:   Call Fgrid1_UnknownEvent_9()
  loc_E40BFE: End If
  loc_E40BFE: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'F73824
  'Data Table: 425180
  Dim var_C4 As Variant
  Dim var_B4 As MSHFlexGrid
  loc_F73719: If (CLng(Me.FGrid1.MouseRow) >= CLng(Me.FGrid1.FixedRows)) Then
  loc_F7371C:   Exit Sub
  loc_F7371D: End If
  loc_F7373C: If (CLng(Me.FGrid1.Col) > 4) Then
  loc_F7373F:   Exit Sub
  loc_F73740: End If
  loc_F73760: global_52 = CInt(CLng(Me.FGrid1.Col))
  loc_F73773: If (global_52 <> global_52) Then
  loc_F7377B:   global_54 = 1
  loc_F73781: Else
  loc_F7378D:   global_54 = (global_54 + 1)
  loc_F73799:   If (global_54 = 3) Then
  loc_F737A1:     global_54 = 1
  loc_F737A4:   End If
  loc_F737A4: End If
  loc_F737A8: Set var_B4 = Me.FGrid1
  loc_F737B3: var_B4.Redraw = False
  loc_F737C4: var_B4.Row = 1
  loc_F737DB: var_C4 = CVar((CLng(var_B4.Rows) - 1)) 'Long
  loc_F737E3: var_B4.RowSel = 1
  loc_F737FA: var_B4.Col = CVar(CLng(global_52))
  loc_F73818: var_B4.Redraw = True
  loc_F7381F: Set var_B4 = Nothing 
  loc_F73823: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E191E0
  'Data Table: 425180
  Dim Me54 As Variant
  loc_E191D4: Me.txtGrid.Visible = False
  loc_E191DC: Exit Sub
  loc_E191DD: Me54 = StrComp(, , )
End Sub

Private Sub btnsave_Click() '1006488
  'Data Table: 425180
  Dim unk_425181 As Connection15
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_FC As Variant
  Dim var_11C As Long
  Dim var_13C As Variant
  Dim var_158 As Variant
  Dim var_178 As Long
  Dim var_198 As Variant
  Dim var_1A4 As String
  loc_10062AD: unk_425181.BeginTrans var_8C
  loc_10062B6: Set var_90 = Me.FGrid1
  loc_10062D4: For var_A4 = 1 To CInt((CLng(var_90.Rows) - 1)): var_86 = var_A4 'Integer
  loc_10062DE:   var_B4 = CVar(CLng(var_86)) 'Long
  loc_10062E3:   var_D4 = 7
  loc_10062FF:   var_FC = CVar(CLng(var_86)) 'Long
  loc_1006304:   var_11C = 6
  loc_1006320:   var_158 = CVar(CLng(var_86)) 'Long
  loc_1006325:   var_178 = 0
  loc_1006331:   var_198 = var_90.TextMatrix)
  loc_1006379:   var_1A4 = "UPDATE menuHelp1 SET Param_Str='" & CStr(var_90.TextMatrix)) & "',Flag='" & CStr(var_90.TextMatrix)) & "' WHERE Code=" & CStr(var_198)
  loc_1006389:   unk_425181.Execute var_1A4 & " AND UserName='SA'", var_1C8, -1
  loc_10063B5:   var_B4 = CVar(CLng(var_86)) 'Long
  loc_10063BA:   var_D4 = 6
  loc_10063D6:   var_FC = CVar(CLng(var_86)) 'Long
  loc_10063DB:   var_11C = 0
  loc_10063E7:   var_13C = var_90.TextMatrix)
  loc_1006426:   unk_425181.Execute "UPDATE UserModule1 SET Flag='" & CStr(var_90.TextMatrix)) & "' WHERE Code=" & CStr(var_13C), var_198, -1
  loc_1006447: Next var_A4 'Integer
  loc_100644E: Set var_90 = Nothing 
  loc_1006458: unk_425181.CommitTrans
  loc_1006476: MsgBox("Updated.", &H40, var_13C, var_198, var_1C8)
  loc_1006486: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus() 'E1922C
  'Data Table: 425180
  loc_E1921C: var_88 = "{HOME}+{END}"
  loc_E19222: Proc_303_0_FB9B68(var_88)
  loc_E1922A: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1122C54
  'Data Table: 425180
  Dim var_88 As Variant
  Dim var_C0 As Variant
  Dim var_C4 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As Variant
  loc_1122902: If (CLng(KeyCode) = &H1B) Then
  loc_1122911:   Me.txtGrid.Visible = False
  loc_1122919:   Exit Sub
  loc_112291A:   Exit Sub
  loc_112291B: End If
  loc_1122921: If (KeyCode = &H28) Then
  loc_1122995:   If ((CLng(Me.FGrid1.Rows) > (CLng(Me.FGrid1.Row) + 1)) And (CLng(Me.FGrid1.Col) <> (CLng(Me.FGrid1.Cols) - 1))) Then
  loc_11229B1:     var_E4 = CVar((CLng(Me.FGrid1.Row) + 1)) 'Long
  loc_11229C0:     Me.FGrid1.Row = var_E4
  loc_11229CF:     Call Fgrid1_UnknownEvent_9()
  loc_11229D4:   End If
  loc_11229D7: Else
  loc_11229DD:   If (KeyCode = &H26) Then
  loc_1122A39:     If ((CLng(Me.FGrid1.Row) > 1) And (CLng(Me.FGrid1.Col) <> (CLng(Me.FGrid1.Cols) - 1))) Then
  loc_1122A55:       var_E4 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_1122A64:       Me.FGrid1.Row = var_E4
  loc_1122A73:       Call Fgrid1_UnknownEvent_9()
  loc_1122A78:     End If
  loc_1122A78:   End If
  loc_1122A78: End If
  loc_1122A7E: If (KeyCode = &HD) Then
  loc_1122A81:   DoEvents()
  loc_1122A99:   var_E4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_1122AB1:   var_104 = CVar(CLng(Me.FGrid1.ColSel)) 'Long
  loc_1122ACB:   var_C0 = CVar(Me.txtGrid.Text) 'String
  loc_1122AD3:   Set var_C4 = Me.FGrid1
  loc_1122AD9:   LateIdCallSt
  loc_1122B01:   Me.txtGrid.Visible = False
  loc_1122B44:   If (CLng(Me.FGrid1.ColSel) = (CLng(Me.FGrid1.Cols) - 1)) Then
  loc_1122B82:     If (CLng(Me.FGrid1.RowSel) < (CLng(Me.FGrid1.Rows) - 1)) Then
  loc_1122B9E:       var_E4 = CVar((CLng(Me.FGrid1.RowSel) + 1)) 'Long
  loc_1122BAD:       Me.FGrid1.Row = var_E4
  loc_1122BBF:     Else
  loc_1122BC9:       Me.btnsave.SetFocus
  loc_1122BD1:       Exit Sub
  loc_1122BD2:     End If
  loc_1122BE5:     Me.FGrid1.Col = 1
  loc_1122BF1:     Set var_88 = Me.FGrid1
  loc_1122C05:   Else
  loc_1122C1E:     var_E4 = CVar((CLng(Me.FGrid1.ColSel) + 1)) 'Long
  loc_1122C2D:     Me.FGrid1.Col = 1
  loc_1122C40:     Set var_88 = Me.FGrid1
  loc_1122C51:   End If
  loc_1122C51: End If
  loc_1122C51: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EDD964
  'Data Table: 425180
  Dim KeyAscii As Variant
  loc_EDD8E3: If (CLng(Me.FGrid1.ColSel) = 6) Then
  loc_EDD925:   If CBool(InStr(1, CVar("NREV"), Ucase(Chr(CLng(KeyAscii))), 1) <> 0) Then
  loc_EDD94B:     KeyAscii = Asc(CStr(Ucase(Chr(CLng(KeyAscii)))))
  loc_EDD95B:   Else
  loc_EDD95D:     KeyAscii = 0
  loc_EDD960:   End If
  loc_EDD960: End If
  loc_EDD960: Exit Sub
  loc_EDD961: KeyAscii.global_54 = KeyAscii
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E9AB40
  'Data Table: 425180
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_104 As Variant
  loc_E9AAE3: var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_E9AAFB: var_DC = CVar(CLng(Me.FGrid1.ColSel)) 'Long
  loc_E9AB15: var_104 = CVar(Me.txtGrid.Text) 'String
  loc_E9AB1D: Set var_118 = Me.FGrid1
  loc_E9AB23: LateIdCallSt
  loc_E9AB3F: Exit Sub
End Sub

Private Sub TxtGrid_LostFocus() 'E19278
  'Data Table: 425180
  loc_E1926C: Me.txtGrid.Visible = False
  loc_E19274: Exit Sub
End Sub

Public Sub Proc_152_15_10EEF74
  'Data Table: 425180
  Dim var_B8 As Long
  Dim var_CC As MSHFlexGrid
  Dim var_DC As Variant
  loc_10EEC68: On Error Goto loc_10EEF35
  loc_10EEC7E: Me.FGrid1.Cols = 8
  loc_10EEC99: Me.FGrid1.Row = 0
  loc_10EECA1: var_B8 = 0
  loc_10EECB0: var_DC = CVar(CInt(4)) 'Integer
  loc_10EECB8: Set var_CC = Me.FGrid1
  loc_10EECBE: LateIdCallSt
  loc_10EECC9: var_B8 = 0
  loc_10EECD2: var_DC = &H258
  loc_10EECDF: Set var_CC = Me.FGrid1
  loc_10EECE5: LateIdCallSt
  loc_10EECF0: var_B8 = 1
  loc_10EECFF: var_DC = CVar(CInt(4)) 'Integer
  loc_10EED07: Set var_CC = Me.FGrid1
  loc_10EED0D: LateIdCallSt
  loc_10EED18: var_B8 = 1
  loc_10EED21: var_DC = &H1F4
  loc_10EED2E: Set var_CC = Me.FGrid1
  loc_10EED34: LateIdCallSt
  loc_10EED3F: var_B8 = 2
  loc_10EED4E: var_DC = CVar(CInt(4)) 'Integer
  loc_10EED56: Set var_CC = Me.FGrid1
  loc_10EED5C: LateIdCallSt
  loc_10EED67: var_B8 = 2
  loc_10EED70: var_DC = &H1F4
  loc_10EED7D: Set var_CC = Me.FGrid1
  loc_10EED83: LateIdCallSt
  loc_10EED8E: var_B8 = 3
  loc_10EED9D: var_DC = CVar(CInt(4)) 'Integer
  loc_10EEDA5: Set var_CC = Me.FGrid1
  loc_10EEDAB: LateIdCallSt
  loc_10EEDB6: var_B8 = 3
  loc_10EEDBF: var_DC = &H1F4
  loc_10EEDCC: Set var_CC = Me.FGrid1
  loc_10EEDD2: LateIdCallSt
  loc_10EEDDD: var_B8 = 4
  loc_10EEDEC: var_DC = CVar(CInt(4)) 'Integer
  loc_10EEDF4: Set var_CC = Me.FGrid1
  loc_10EEDFA: LateIdCallSt
  loc_10EEE05: var_B8 = 4
  loc_10EEE0E: var_DC = &H1F4
  loc_10EEE1B: Set var_CC = Me.FGrid1
  loc_10EEE21: LateIdCallSt
  loc_10EEE2C: var_B8 = 5
  loc_10EEE3B: var_DC = CVar(CInt(1)) 'Integer
  loc_10EEE43: Set var_CC = Me.FGrid1
  loc_10EEE49: LateIdCallSt
  loc_10EEE54: var_B8 = 5
  loc_10EEE5D: var_DC = &HA8C
  loc_10EEE6A: Set var_CC = Me.FGrid1
  loc_10EEE70: LateIdCallSt
  loc_10EEE7B: var_B8 = 6
  loc_10EEE8A: var_DC = CVar(CInt(4)) 'Integer
  loc_10EEE92: Set var_CC = Me.FGrid1
  loc_10EEE98: LateIdCallSt
  loc_10EEEA3: var_B8 = 6
  loc_10EEEAC: var_DC = &H320
  loc_10EEEB9: Set var_CC = Me.FGrid1
  loc_10EEEBF: LateIdCallSt
  loc_10EEECA: var_B8 = 7
  loc_10EEED9: var_DC = CVar(CInt(4)) 'Integer
  loc_10EEEE1: Set var_CC = Me.FGrid1
  loc_10EEEE7: LateIdCallSt
  loc_10EEEF2: var_B8 = 7
  loc_10EEEFB: var_DC = &H3E8
  loc_10EEF08: Set var_CC = Me.FGrid1
  loc_10EEF0E: LateIdCallSt
  loc_10EEF19: var_B8 = 1
  loc_10EEF2C: Me.FGrid1.Row = var_B8
  loc_10EEF34: Exit Sub
  loc_10EEF35: ' Referenced from: 10EEC68
  loc_10EEF43: Call 0.Method_arg_2C (var_F0, Err(), var_DC, var_B8, Err(), var_DC, var_B8)
  loc_10EEF5C: MsgBox(CVar(var_F0), &H10, var_110, var_120, var_130)
  loc_10EEF6F: Exit Sub
  loc_10EEF70: Exit Sub
End Sub
