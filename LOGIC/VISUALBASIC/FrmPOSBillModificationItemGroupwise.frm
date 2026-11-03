VERSION 5.00
Begin VB.Form FrmPOSBillModificationItemGroupwise
  Caption = "POS Bill Modification (Item Group Wise)"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  LockControls = -1  'True
  Begin CommandButton Command1
    Caption = "Serialize Bill"
    Left = 11880
    Top = 3330
    Width = 1125
    Height = 780
    Visible = 0   'False
    TabIndex = 19
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton CmdExit
    Caption = "E&xit"
    Left = 3915
    Top = 8280
    Width = 1545
    Height = 495
    TabIndex = 17
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton CmdDelete
    Caption = "&Delete"
    Left = 2250
    Top = 8280
    Width = 1545
    Height = 495
    TabIndex = 16
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox TxtSearch
    BackColor = &HE0E0E0&
    Left = 8415
    Top = 2250
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdFill
    Caption = "&Fill"
    Left = 6075
    Top = 915
    Width = 1125
    Height = 780
    TabIndex = 4
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CheckBox Check1
    Caption = "All"
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 825
    Top = 1995
    Width = 915
    Height = 195
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 15135
    Height = 375
    Visible = 0   'False
    TabIndex = 10
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 2610
    Top = 1425
    Width = 3345
    Height = 255
    TabIndex = 3
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
    Left = 2610
    Top = 1155
    Width = 3345
    Height = 255
    TabIndex = 2
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
    Index = 1
    BackColor = &HFFFFFF&
    Left = 2610
    Top = 885
    Width = 1635
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
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
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2610
    Top = 615
    Width = 1635
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin MSHFlexGrid GridSel
    Left = 735
    Top = 1920
    Width = 6500
    Height = 6000
    TabIndex = 5
  End
  Begin DataGrid DGRestType
    Left = 8310
    Top = 6585
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin MSFlexGrid FGPoint
    Left = 8460
    Top = 2505
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 13
  End
  Begin DataGrid DGPayType
    Left = 7995
    Top = 6225
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin Label Label1
    Left = 780
    Top = 7920
    Width = 6360
    Height = 270
    TabIndex = 18
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Mode Of Payment"
    Index = 3
    ForeColor = &H0&
    Left = 975
    Top = 1440
    Width = 1515
    Height = 240
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Outlet Name"
    Index = 2
    ForeColor = &H0&
    Left = 975
    Top = 1155
    Width = 1050
    Height = 240
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "From Date"
    Index = 0
    ForeColor = &H0&
    Left = 975
    Top = 615
    Width = 900
    Height = 240
    TabIndex = 7
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "To Date"
    Index = 1
    ForeColor = &H0&
    Left = 975
    Top = 870
    Width = 675
    Height = 240
    TabIndex = 6
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmPOSBillModificationItemGroupwise"

Private global_52 As Integer
Private global_84 As Long

Private Sub CmdDelete_Click() '113E9AC
  'Data Table: 479040
  Dim var_8C As Variant
  Dim var_90 As TextBox
  Dim unk_479052 As Connection15
  Dim var_CC As Variant
  Dim var_E0 As Field20
  Dim var_86 As Integer
  Dim var_C4 As Variant
  Dim var_120 As Variant
  Dim var_180 As Variant
  Dim var_94 As String
  loc_113E65C: On Error Goto loc_113E98F
  loc_113E66B: Me.CmdDelete.Enabled = False
  loc_113E680: Me.Label1.Caption = "Deleting..."
  loc_113E692: Me.Label1.Refresh
  loc_113E6CA: Set var_8C = Me.Txt
  loc_113E6D0: Call 0.Method_CmdDelete_Click0 (CInt(2), var_90, var_94, "SELECT SHORTNAME FROM DEPART WHERE CODE='", var_C4, -1)
  loc_113E6FF: unk_479052.Execute var_CC & var_94 & "'And Logsite_Code='" & MemVar_1F92078 & "'", 0, var_E0
  loc_113E707: var_F0 = var_90.Tag.Fields
  loc_113E70F:  = var_CC.Item("B")
  loc_113E717:  = var_E0.Value
  loc_113E765: unk_479052.BeginTrans var_FC
  loc_113E780: unk_479052.Execute "Delete from TempPosDel", var_C4, -1
  loc_113E7B4: Call Proc_218_27_11A8ABC(global_60, CByte(Me.Check1.Value), var_C4)
  loc_113E7E2: Call 0.Method_CmdDelete_Click0 (CInt(0), var_90, "Insert into TempPosDel(OldDocId,OldVno) Select DocId,Vno from Sale1 Where VDate>= ", var_1C0)
  loc_113E7F1: Proc_6_7_F25D88(var_F0, CVar(var_90), -1)
  loc_113E802: var_120 = var_E0 & var_F0 & " And RestCode='" 
  loc_113E81A: Call 0.Method_CmdDelete_Click0 (CInt(2), var_CC, var_94)
  loc_113E822: var_120 = var_CC.Tag
  loc_113E857: unk_479052.Execute CStr(Me.Txt & CVar(var_94) & "' And Logsite_Code='" & CVar(MemVar_1F92078) & "' Order by Vno,VDate"), &HFF, 
  loc_113E881: Call Proc_218_26_107A7C8()
  loc_113E886: Call Proc_218_25_130CD60()
  loc_113E8BC: Set var_8C = Me.Txt
  loc_113E8C2: Call 0.Method_CmdDelete_Click0 (CInt(1), var_90, CVar("UPDATE VOUCHER_PREFIX SET START_SRL_NO=" & CStr(global_84) & " WHERE "))
  loc_113E8D1: Proc_6_7_F25D88(var_F0, CVar(var_90), var_1C0)
  loc_113E8D9: var_120 = -1 & var_F0 
  loc_113E902: var_180 = var_120 & " BETWEEN DATE_FROM AND DATE_TO AND V_TYPE='" & CVar(Proc_6_38_E68A98(var_F0)) & "' And Logsite_Code='" & CVar(MemVar_1F92078) 
  loc_113E919: unk_479052.Execute CStr(var_180 & "'"), Me.Txt, 
  loc_113E94B: unk_479052.CommitTrans
  loc_113E952: var_86 = 0
  loc_113E960: Set global_76 = Nothing
  loc_113E974: Me.Label1.Caption = "Deletion Completed."
  loc_113E986: Me.Label1.Refresh
  loc_113E98E: Exit Sub
  loc_113E98F: ' Referenced from: 113E65C
  loc_113E995: If (var_86 = &HFF) Then
  loc_113E99E:   unk_479052.RollbackTrans
  loc_113E9A3: End If
  loc_113E9A3: Proc_6_60_E62BC4(var_86)
  loc_113E9A8: Exit Sub
End Sub

Private Sub Check1_Click() 'F69F0C
  'Data Table: 479040
  Dim var_9C As Variant
  loc_F69DEF: If (CLng(Me.Check1.Value) = 0) Then
  loc_F69E00:   Me.GridSel.Enabled = True
  loc_F69E27:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F69E3D:     Me.GridSel.Row = 1
  loc_F69E58:     Me.GridSel.Col = 0
  loc_F69E60:   End If
  loc_F69E63: Else
  loc_F69E72:   Me.GridSel.Enabled = False
  loc_F69E99:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F69EAF:     Me.GridSel.Row = 0
  loc_F69ECA:     Me.GridSel.Col = 0
  loc_F69EEB:     var_9C = CVar((CLng(Me.GridSel.Rows) - 1)) 'Long
  loc_F69EFA:     Me.GridSel.RowSel = 0
  loc_F69F09:   End If
  loc_F69F09: End If
  loc_F69F09: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E2240C
  'Data Table: 479040
  loc_E223F2: If (KeyCode = &HD) Then
  loc_E22403:   Proc_303_0_FB9B68("	")
  loc_E2240B: End If
  loc_E2240B: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E16AFC
  'Data Table: 479040
  loc_E16AF1: Me.Global.Unload Me
  loc_E16AF9: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12E17D8
  'Data Table: 479040
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_88 As DataGrid
  loc_12E1124: On Error Goto loc_12E1793
  loc_12E1131: Set var_88 = Me.Txt
  loc_12E1137: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12E1145: Proc_6_74_E226B0(var_8C)
  loc_12E1151: Call Proc_218_28_EB9938(var_8C)
  loc_12E1159: var_92 = Index
  loc_12E1164: If (var_92 = CInt(0)) Then
  loc_12E1174:   Set var_88 = Me.Txt
  loc_12E117A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E1195:   Set var_90 = Me.Txt
  loc_12E119B:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E11A3:   var_9C.SelLength = Len(var_8C.Text)
  loc_12E11C3:   Set var_88 = Me.Txt
  loc_12E11C9:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E11E3:   Set var_90 = Me.Txt
  loc_12E11E9:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E11F1:   var_9C.Tag = var_8C.Text
  loc_12E1207: Else
  loc_12E120F:   If (var_92 = CInt(1)) Then
  loc_12E121F:     Set var_88 = Me.Txt
  loc_12E1225:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E1240:     Set var_90 = Me.Txt
  loc_12E1246:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E124E:     var_9C.SelLength = Len(var_8C.Text)
  loc_12E126E:     Set var_88 = Me.Txt
  loc_12E1274:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E127C:     var_98 = var_8C.Text
  loc_12E128E:     Set var_90 = Me.Txt
  loc_12E1294:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E129C:     var_9C.Tag = var_98
  loc_12E12B2:   Else
  loc_12E12BA:     If (var_92 = CInt(2)) Then
  loc_12E12CB:       Set var_88 = Me.Txt
  loc_12E12D1:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E12F0:       Me.DGRestType.Left = CVar(var_8C.Left)
  loc_12E130C:       Set var_90 = Me.Txt
  loc_12E1312:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_9C)
  loc_12E132D:       Set var_88 = Me.Txt
  loc_12E1333:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E134B:       var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E135A:       Me.DGRestType.Top = CVar(var_8C.Left)
  loc_12E137B:       Me.Filter = 0
  loc_12E138C:       Me.Filter = "RestType<>'Kitchen'"
  loc_12E13A8:       If (Me.RecordCount > 0) Then
  loc_12E13B6:         Set var_8C = Me.FGPoint
  loc_12E13CE:         Proc_6_137_1193554(Me.DGRestType, global_68, Index)
  loc_12E13DC:       End If
  loc_12E142A:       Set var_88 = Me.Txt
  loc_12E1430:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E1438:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E1450:       If (var_8C Or (var_98 = vbNullString)) Then
  loc_12E1453:         Exit Sub
  loc_12E1454:       End If
  loc_12E1461:       Set var_88 = Me.Txt
  loc_12E1467:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E146F:       var_98 = var_8C.Text
  loc_12E1481:       var_B0 = "Name"
  loc_12E1498:       var_9C = Me.Fields.Item(var_B0)
  loc_12E14BC:       If CBool(CVar(var_98) <> var_9C.Value) Then
  loc_12E14C5:         Me.MoveFirst
  loc_12E14E8:         Set var_88 = Me.Txt
  loc_12E14EE:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E14F6:         0 = var_8C.Text
  loc_12E150F:         Me.Find 1 & var_98 & "'", var_B0, var_92
  loc_12E1524:       End If
  loc_12E1537:       Me.DGRestType.Tag = CVar(CStr(Index))
  loc_12E1545:     Else
  loc_12E154D:       If (var_92 = CInt(3)) Then
  loc_12E155E:         Set var_88 = Me.Txt
  loc_12E1564:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_12E1583:         Me.DGPayType.Left = CVar(var_8C.Left)
  loc_12E159F:         Set var_90 = Me.Txt
  loc_12E15A5:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_9C)
  loc_12E15C0:         Set var_88 = Me.Txt
  loc_12E15C6:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_12E15DE:         var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E15ED:         Me.DGPayType.Top = CVar(var_8C.Left)
  loc_12E1616:         If (Me.RecordCount > 0) Then
  loc_12E1624:           Set var_8C = Me.FGPoint
  loc_12E163C:           Proc_6_137_1193554(Me.DGPayType, global_72)
  loc_12E164A:         End If
  loc_12E1698:         Set var_88 = Me.Txt
  loc_12E169E:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E16A6:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E16BE:         If (Index Or (var_98 = vbNullString)) Then
  loc_12E16C1:           Exit Sub
  loc_12E16C2:         End If
  loc_12E16CF:         Set var_88 = Me.Txt
  loc_12E16D5:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E16DD:         var_98 = var_8C.Text
  loc_12E16EF:         var_B0 = "Name"
  loc_12E172A:         If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_12E1733:           Me.MoveFirst
  loc_12E1756:           Set var_88 = Me.Txt
  loc_12E175C:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E1764:           0 = var_8C.Text
  loc_12E177D:           Me.Find 1 & var_98 & "'", var_B0, var_8C
  loc_12E1792:         End If
  loc_12E1792:       End If
  loc_12E1792:     End If
  loc_12E1792:   End If
  loc_12E1792: End If
  loc_12E1792: Exit Sub
  loc_12E1793: ' Referenced from: 12E1124
  loc_12E179B: Set var_88 = Err()
  loc_12E17A1: Call 0.Method_arg_2C (var_98)
  loc_12E17C2: MsgBox(CVar(var_98), &H40, "Information", var_FC, var_124)
  loc_12E17D5: Exit Sub
  loc_12E17D6: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10CB950
  'Data Table: 479040
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_10CB666: If (CLng(Shift) = &H1B) Then
  loc_10CB669:   Call Proc_218_28_EB9938()
  loc_10CB66E:   Exit Sub
  loc_10CB66F: End If
  loc_10CB672: var_88 = KeyCode
  loc_10CB67D: If (var_88 = CInt(2)) Then
  loc_10CB69D:   Set var_9C = Me.FGPoint
  loc_10CB6A8:   Set var_98 = Nothing
  loc_10CB6D6:   Proc_6_69_134A198(Me.DGRestType, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_10CB745:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10CB76B:     Proc_6_138_106D6F8(Me.DGRestType, global_68, KeyCode, Me.FGPoint, 1)
  loc_10CB779:   End If
  loc_10CB77C: Else
  loc_10CB784:   If (var_88 = CInt(3)) Then
  loc_10CB7A4:     Set var_9C = Me.FGPoint
  loc_10CB7AF:     Set var_98 = Nothing
  loc_10CB7E1:     Proc_6_69_134A198(Me.DGPayType, Me.Txt, CInt(3), global_72, Shift, 0, 1)
  loc_10CB850:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10CB857:       Set var_98 = Me.DGPayType
  loc_10CB876:       Proc_6_138_106D6F8(var_98, global_72, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_10CB884:     End If
  loc_10CB884:   End If
  loc_10CB884: End If
  loc_10CB8BF: If ((CBool(Me.DGRestType.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) Then
  loc_10CB8E9:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(0)) Or (KeyCode = CInt(1)))) Then
  loc_10CB8F2:     Call Txt_Validate(KeyCode)
  loc_10CB8FD:     If (var_86 = &HFF) Then
  loc_10CB900:       Exit Sub
  loc_10CB901:     End If
  loc_10CB907:     Proc_6_75_E527CC(Shift, arg_14, var_86, 0)
  loc_10CB90F:   Else
  loc_10CB924:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10CB92D:       Proc_6_75_E527CC(Shift, arg_14, var_98)
  loc_10CB935:     Else
  loc_10CB93F:       If (CLng(Shift) = &H26) Then
  loc_10CB948:         Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_10CB94D:       End If
  loc_10CB94D:     End If
  loc_10CB94D:   End If
  loc_10CB94D: End If
  loc_10CB94D: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F8E98C
  'Data Table: 479040
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_F8E82F: Proc_6_58_E054C0(arg_10)
  loc_F8E83A: Proc_6_133_E7EF78(var_94)
  loc_F8E843: arg_10 = CInt(var_94)
  loc_F8E84C: var_96 = KeyAscii
  loc_F8E857: If (var_96 = CInt(2)) Then
  loc_F8E876:   If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_F8E8A3:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_F8E8D5:     Proc_6_138_106D6F8(Me.DGRestType, global_68, KeyAscii, Me.FGPoint)
  loc_F8E8E3:   End If
  loc_F8E8E6: Else
  loc_F8E8EE:   If (var_96 = CInt(3)) Then
  loc_F8E90D:     If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F8E945:       Proc_6_68_129FB34(Me.DGPayType, Me.Txt, KeyAscii, global_72, arg_10)
  loc_F8E97B:       Proc_6_138_106D6F8(Me.DGPayType, global_72, KeyAscii, Me.FGPoint, "Name")
  loc_F8E989:     End If
  loc_F8E989:   End If
  loc_F8E989: End If
  loc_F8E989: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4ACCC
  'Data Table: 479040
  loc_E4ACAA: Set var_88 = Me.Txt
  loc_E4ACB0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4ACBE: Proc_6_73_E22704(var_8C)
  loc_E4ACCA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1165988
  'Data Table: 479040
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_98 As TextBox
  loc_11655D8: On Error Goto loc_1165941
  loc_11655DE: var_86 = Cancel
  loc_11655E9: If (var_86 = CInt(0)) Then
  loc_11655F6:   Set var_8C = Me.Txt
  loc_11655FC:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116561C:   Set var_98 = Me.Txt
  loc_1165622:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_116562A:   var_9C.Text = Proc_6_33_1512840(var_90)
  loc_1165640: Else
  loc_1165648:   If (var_86 = CInt(1)) Then
  loc_1165655:     Set var_8C = Me.Txt
  loc_116565B:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116567B:     Set var_98 = Me.Txt
  loc_1165681:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1165689:     var_9C.Text = Proc_6_33_1512840(var_90)
  loc_116569F:   Else
  loc_11656A7:     If (var_86 = CInt(2)) Then
  loc_11656B7:       Set var_8C = Me.Txt
  loc_11656BD:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11656DC:       If (var_90.Text <> vbNullString) Then
  loc_116571A:         Set var_94 = Me.Txt
  loc_1165720:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1165728:         var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_116575B:         var_90 = Me.Fields.Item("Code")
  loc_1165779:         Set var_94 = Me.Txt
  loc_116577F:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1165787:         var_98.Tag = CStr(var_90.Value)
  loc_11657A0:       Else
  loc_11657AD:         Set var_8C = Me.Txt
  loc_11657B3:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11657BB:         var_90.Text = vbNullString
  loc_11657D4:         Set var_8C = Me.Txt
  loc_11657DA:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11657E2:         var_90.Tag = vbNullString
  loc_11657EE:       End If
  loc_11657F1:     Else
  loc_11657F9:       If (var_86 = CInt(3)) Then
  loc_1165809:         Set var_8C = Me.Txt
  loc_116580F:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116582E:         If (var_90.Text <> vbNullString) Then
  loc_116586C:           Set var_94 = Me.Txt
  loc_1165872:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_116587A:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11658AD:           var_90 = Me.Fields.Item("Code")
  loc_11658BE:           var_A0 = CStr(var_90.Value)
  loc_11658CB:           Set var_94 = Me.Txt
  loc_11658D1:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_11658D9:           var_98.Tag = var_A0
  loc_11658F2:         Else
  loc_11658FF:           Set var_8C = Me.Txt
  loc_1165905:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116590D:           var_90.Text = vbNullString
  loc_1165926:           Set var_8C = Me.Txt
  loc_116592C:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1165934:           var_90.Tag = vbNullString
  loc_1165940:         End If
  loc_1165940:       End If
  loc_1165940:     End If
  loc_1165940:   End If
  loc_1165940: End If
  loc_1165940: Exit Sub
  loc_1165941: ' Referenced from: 11655D8
  loc_1165949: Set var_8C = Err()
  loc_116594F: Call 0.Method_arg_2C (var_A0)
  loc_1165970: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_1165983: Exit Sub
  loc_1165984: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A 'FD785C
  'Data Table: 479040
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FD76AA: If (Cancel = &HD) Then
  loc_FD76BB:   Proc_303_0_FB9B68("	")
  loc_FD76C3: End If
  loc_FD76E2: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FD76E5:   Exit Sub
  loc_FD76E6: End If
  loc_FD7710: If ((CLng(Cancel) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FD7723:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FD773D:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FD7758:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD775D:   var_D4 = 0
  loc_FD778F:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD7794:   var_19C = 0
  loc_FD77CF:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FD77D7:   Set var_1D0 = Me.GridSel
  loc_FD77DD:   LateIdCallSt
  loc_FD7817:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_FD7829:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_FD7851:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FD7858: End If
  loc_FD7858: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5C5E8
  'Data Table: 479040
  loc_E5C5C3: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5C5C6:   Exit Sub
  loc_E5C5C7: End If
  loc_E5C5DE: global_52 = CInt(CLng(Me.GridSel.Row))
  loc_E5C5E7: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1026B54
  'Data Table: 479040
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_1026955: If ((CLng(Me.GridSel.Col) <> 0) Or (global_52 = 0)) Then
  loc_1026958:   Exit Sub
  loc_1026959: End If
  loc_10269B5: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_10269B8:   Exit Sub
  loc_10269B9: End If
  loc_10269E8: For var_BA = global_52 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_1026A01:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1026A1C:   Me.GridSel.Col = 0
  loc_1026A34:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1026A4E:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1026A5A:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1026A5F:   var_EC = 0
  loc_1026A82:   var_160 = CVar(CLng(var_88)) 'Long
  loc_1026A87:   var_180 = 0
  loc_1026AC2:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_1026ACA:   Set var_A0 = Me.GridSel
  loc_1026AD0:   LateIdCallSt
  loc_1026B02:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_1026B14:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_1026B3C:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_1026B46: Next var_BA 'Integer
  loc_1026B50: global_52 = 0
  loc_1026B53: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_9 'F45804
  'Data Table: 479040
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F456FB: Me.DGRestType.Visible = False
  loc_F4571A: If (Me.RecordCount > 0) Then
  loc_F45759:   Set var_B4 = Me.Txt
  loc_F4575F:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F45767:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4579A:   var_B0 = Me.Fields.Item("Code")
  loc_F457B9:   Set var_B4 = Me.Txt
  loc_F457BF:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F457C7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F457DD: End If
  loc_F457E8: Set var_A8 = Me.Txt
  loc_F457EE: Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2))
  loc_F457F6: var_B0.SetFocus
  loc_F45802: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_1F 'E751F8
  'Data Table: 479040
  loc_E751B6: Proc_6_153_E91194(Me.DGRestType, arg_14)
  loc_E751CD: Set var_8C = Me.FGPoint
  loc_E751E9: Proc_6_138_106D6F8(Me.DGRestType, global_68, CInt(2))
  loc_E751F7: Exit Sub
End Sub

Private Sub CmdFill_Click() '118D794
  'Data Table: 479040
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As Variant
  loc_118D3B7: Set var_88 = Me.Txt
  loc_118D3BD: Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_118D3E6: If (Proc_6_27_EA565C(var_8C, "From Date") = 0) Then
  loc_118D3E9:   Exit Sub
  loc_118D3EA: End If
  loc_118D3F8: Set var_88 = Me.Txt
  loc_118D3FE: Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_118D422: Set var_90 = Me.Txt
  loc_118D428: Call 0.Method_CmdFill_Click0 (CInt(0), var_98, var_9C)
  loc_118D430: (CDate(var_8C.Text) > MemVar_1F920FC) = var_98.Text
  loc_118D451: If (var_8C Or (CDate(var_9C) < MemVar_1F920F4)) Then
  loc_118D46D:   MsgBox("FromDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_118D488:   Set var_88 = Me.Txt
  loc_118D48E:   Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_118D496:   var_8C.SetFocus
  loc_118D4A2:   Exit Sub
  loc_118D4A3: End If
  loc_118D4AE: Set var_88 = Me.Txt
  loc_118D4B4: Call 0.Method_CmdFill_Click0 (CInt(1), var_8C)
  loc_118D4DD: If (Proc_6_27_EA565C(var_8C, "To Date") = 0) Then
  loc_118D4E0:   Exit Sub
  loc_118D4E1: End If
  loc_118D4EF: Set var_88 = Me.Txt
  loc_118D4F5: Call 0.Method_CmdFill_Click0 (CInt(1), var_8C)
  loc_118D519: Set var_90 = Me.Txt
  loc_118D51F: Call 0.Method_CmdFill_Click0 (CInt(1), var_98, var_9C)
  loc_118D527: (CDate(var_8C.Text) > MemVar_1F920FC) = var_98.Text
  loc_118D548: If (var_8C Or (CDate(var_9C) < MemVar_1F920F4)) Then
  loc_118D564:   MsgBox("ToDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_118D57F:   Set var_88 = Me.Txt
  loc_118D585:   Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_118D58D:   var_8C.SetFocus
  loc_118D599:   Exit Sub
  loc_118D59A: End If
  loc_118D5A8: Set var_90 = Me.Txt
  loc_118D5AE: Call 0.Method_CmdFill_Click0 (CInt(1), var_98)
  loc_118D5C9: Set var_88 = Me.Txt
  loc_118D5CF: Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_118D5F9: If (CDate(var_8C.Text) > CDate(var_98.Text)) Then
  loc_118D615:   MsgBox("FromDate must be less than ToDate", &H10, var_DC, var_FC, var_11C)
  loc_118D630:   Set var_88 = Me.Txt
  loc_118D636:   Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_118D63E:   var_8C.SetFocus
  loc_118D64A:   Exit Sub
  loc_118D64B: End If
  loc_118D656: Set var_88 = Me.Txt
  loc_118D65C: Call 0.Method_CmdFill_Click0 (CInt(2), var_8C)
  loc_118D685: If (Proc_6_27_EA565C(var_8C, "Outlet") = 0) Then
  loc_118D688:   Exit Sub
  loc_118D689: End If
  loc_118D694: Set var_88 = Me.Txt
  loc_118D69A: Call 0.Method_CmdFill_Click0 (CInt(3), var_8C)
  loc_118D6C3: If (Proc_6_27_EA565C(var_8C, "Payment Mode") = 0) Then
  loc_118D6C6:   Exit Sub
  loc_118D6C7: End If
  loc_118D6D3: Me.CmdFill.Enabled = False
  loc_118D6E8: Me.Label1.Caption = "Processing..."
  loc_118D6FA: Me.Label1.Refresh
  loc_118D702: Call Proc_218_22_117B638(var_8C)
  loc_118D707: Call Proc_218_23_13A2338()
  loc_118D71F: Me.GridSel.Row = 1
  loc_118D73A: Me.GridSel.Col = 0
  loc_118D746: Set var_88 = Me.GridSel
  loc_118D764: Me.Label1.Caption = vbNullString
  loc_118D776: Me.Label1.Refresh
  loc_118D78A: Me.CmdFill.Enabled = True
  loc_118D792: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F45AC4
  'Data Table: 479040
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F459BB: Me.DGPayType.Visible = False
  loc_F459DA: If (Me.RecordCount > 0) Then
  loc_F45A19:   Set var_B4 = Me.Txt
  loc_F45A1F:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B8)
  loc_F45A27:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F45A5A:   var_B0 = Me.Fields.Item("Code")
  loc_F45A79:   Set var_B4 = Me.Txt
  loc_F45A7F:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B8)
  loc_F45A87:   var_B8.Tag = CStr(var_B0.Value)
  loc_F45A9D: End If
  loc_F45AA8: Set var_A8 = Me.Txt
  loc_F45AAE: Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3))
  loc_F45AB6: var_B0.SetFocus
  loc_F45AC2: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'E753B4
  'Data Table: 479040
  loc_E75372: Proc_6_153_E91194(Me.DGPayType, arg_14)
  loc_E75389: Set var_8C = Me.FGPoint
  loc_E753A5: Proc_6_138_106D6F8(Me.DGPayType, global_72, CInt(3))
  loc_E753B3: Exit Sub
End Sub

Private Sub Command1_Click() 'DFB7B8
  'Data Table: 479040
  loc_DFB7B4: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E651F0
  'Data Table: 479040
  loc_E651C0: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_E651C3:   Call DGRestType_UnknownEvent_9()
  loc_E651C8: End If
  loc_E651E4: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_E651E7:   Call DGPayType_UnknownEvent_9()
  loc_E651EC: End If
  loc_E651EC: Exit Sub
End Sub

Private Sub Form_Load() 'F6D908
  'Data Table: 479040
  Dim var_8C As String
  Dim var_94 As String
  Dim unk_479052 As Connection15
  Dim var_B8 As CommandButton
  loc_F6D7D4: On Error Goto loc_F6D8FF
  loc_F6D800: var_94 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where Code<>'" & MemVar_1F92078 & "RS' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_F6D809: unk_479052.Execute var_94, var_B4, -1
  loc_F6D83C: CVarUnk
  loc_F6D841: VerifyVarObj
  loc_F6D84D: LateIdStAd
  loc_F6D876: var_8C = "SELECT Code,Name,PayType FROM RevMast Where PayType In('Cash','Member','Complementary') And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND FieldType='P' ORDER BY Name"
  loc_F6D87F: unk_479052.Execute var_8C, var_B4, -1
  loc_F6D8AE: CVarUnk
  loc_F6D8B3: VerifyVarObj
  loc_F6D8B9: Set var_B8 = Me.DGPayType
  loc_F6D8BF: LateIdStAd
  loc_F6D8D3: Set var_B8 = Me.CmdDelete
  loc_F6D8D9: var_B8.Enabled = False
  loc_F6D8E1: Call Proc_218_22_117B638(var_B8, Me.DGRestType, var_B8)
  loc_F6D8ED: Call 0.Method_arg_7C (CDbl(0), var_B8)
  loc_F6D8F9: Call 0.Method_arg_74 (CDbl(0), var_B8)
  loc_F6D8FE: Exit Sub
  loc_F6D8FF: ' Referenced from: F6D7D4
  loc_F6D8FF: Proc_6_60_E62BC4(var_B8)
  loc_F6D904: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E605B8
  'Data Table: 479040
  loc_E60577: Set global_64 = Nothing
  loc_E60589: Set global_76 = Nothing
  loc_E6059B: Set global_68 = Nothing
  loc_E605AD: Set global_72 = Nothing
  loc_E605B4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E26D70
  'Data Table: 479040
  loc_E26D48: On Error Goto loc_E26D67
  loc_E26D5F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E26D67: ' Referenced from: E26D48
  loc_E26D67: Proc_6_60_E62BC4(Shift)
  loc_E26D6C: Exit Sub
End Sub

Public Sub Proc_218_22_117B638
  'Data Table: 479040
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_117B26A: Me.GridSel.Rows = 1
  loc_117B27E: Me.GridSel.Cols = 5
  loc_117B283: var_98 = 0
  loc_117B28F: var_BC = CVar(CLng(0)) 'Long
  loc_117B294: var_DC = "O"
  loc_117B29D: LateIdCallSt
  loc_117B2A8: var_98 = CVar(CLng(0)) 'Long
  loc_117B2AD: var_BC = &H258
  loc_117B2B9: LateIdCallSt
  loc_117B2C1: var_98 = 0
  loc_117B2CD: var_BC = CVar(CLng(1)) 'Long
  loc_117B2D2: var_DC = "Bill No"
  loc_117B2DB: LateIdCallSt
  loc_117B2E6: var_98 = CVar(CLng(1)) 'Long
  loc_117B2F1: var_BC = CVar(CInt(1)) 'Integer
  loc_117B2F8: LateIdCallSt
  loc_117B303: var_98 = CVar(CLng(1)) 'Long
  loc_117B30E: var_BC = CVar(CInt(1)) 'Integer
  loc_117B315: LateIdCallSt
  loc_117B320: var_98 = CVar(CLng(1)) 'Long
  loc_117B325: var_BC = &H5DC
  loc_117B331: LateIdCallSt
  loc_117B339: var_98 = 0
  loc_117B345: var_BC = CVar(CLng(2)) 'Long
  loc_117B34A: var_DC = "DocId"
  loc_117B353: LateIdCallSt
  loc_117B35E: var_98 = CVar(CLng(2)) 'Long
  loc_117B369: var_BC = CVar(CInt(7)) 'Integer
  loc_117B370: LateIdCallSt
  loc_117B37B: var_98 = CVar(CLng(2)) 'Long
  loc_117B386: var_BC = CVar(CInt(7)) 'Integer
  loc_117B38D: LateIdCallSt
  loc_117B398: var_98 = CVar(CLng(2)) 'Long
  loc_117B39D: var_BC = 0
  loc_117B3A9: LateIdCallSt
  loc_117B3B1: var_98 = 0
  loc_117B3BD: var_BC = CVar(CLng(3)) 'Long
  loc_117B3C2: var_DC = "Bill Date"
  loc_117B3CB: LateIdCallSt
  loc_117B3D6: var_98 = CVar(CLng(3)) 'Long
  loc_117B3E1: var_BC = CVar(CInt(1)) 'Integer
  loc_117B3E8: LateIdCallSt
  loc_117B3F3: var_98 = CVar(CLng(3)) 'Long
  loc_117B3FE: var_BC = CVar(CInt(1)) 'Integer
  loc_117B405: LateIdCallSt
  loc_117B410: var_98 = CVar(CLng(3)) 'Long
  loc_117B415: var_BC = &H7D0
  loc_117B421: LateIdCallSt
  loc_117B429: var_98 = 0
  loc_117B435: var_BC = CVar(CLng(4)) 'Long
  loc_117B43A: var_DC = "Bill Amount"
  loc_117B443: LateIdCallSt
  loc_117B44E: var_98 = CVar(CLng(4)) 'Long
  loc_117B459: var_BC = CVar(CInt(7)) 'Integer
  loc_117B460: LateIdCallSt
  loc_117B46B: var_98 = CVar(CLng(4)) 'Long
  loc_117B476: var_BC = CVar(CInt(7)) 'Integer
  loc_117B47D: LateIdCallSt
  loc_117B488: var_98 = CVar(CLng(4)) 'Long
  loc_117B48D: var_BC = &H7D0
  loc_117B499: LateIdCallSt
  loc_117B4A1: var_98 = vbNullString
  loc_117B4AB: Set var_AC = Me.GridSel
  loc_117B4CF: Me.GridSel.FixedRows = 1
  loc_117B4D9: Set var_88 = Nothing 
  loc_117B4ED: ReDim Preserve global_60(0 To 0)
  loc_117B504: global_60(0) = 0
  loc_117B518: Me.GridSel.Height = CVar(CDbl(6000))
  loc_117B533: Me.GridSel.Width = CVar(CDbl(6500))
  loc_117B53B: var_98 = 0
  loc_117B56C: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_117B57B: var_98 = 0
  loc_117B5AC: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_117B5DD: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_117B60E: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_117B62D: Me.Check1.Value = CInt(0)
  loc_117B635: Exit Sub
End Sub

Public Sub Proc_218_23_13A2338
  'Data Table: 479040
  Dim var_B8 As Variant
  Dim var_98 As Variant
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_148 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_1D0 As String
  Dim unk_479052 As Connection15
  Dim var_1F4 As Variant
  Dim var_1F8 As Variant
  Dim var_20C As Field20
  Dim var_A8 As Variant
  Dim var_110 As Variant
  Dim Me As Recordset15
  Dim var_EC As Variant
  Dim var_F0 As Variant
  Dim var_144 As Variant
  Dim var_258 As String
  Dim var_268 As TextBox
  Dim var_1F0 As Variant
  Dim var_21C As Variant
  Dim var_14C As String
  Dim var_88 As Recordset15
  loc_13A1AB4: Proc_6_7_F25D88(var_A8, MemVar_1F920F4, "Select max(Vno) From Sale1 Where VDate>=", var_1F0, -1)
  loc_13A1ABC: var_C8 = var_1F4 & var_A8 
  loc_13A1AD4: Set var_EC = Me.Txt
  loc_13A1ADA: Call 0.Method_Proc_218_23_13A23380 (CInt(0), var_F0, var_C8 & " And vdate<", var_1F8)
  loc_13A1AE9: Proc_6_7_F25D88(var_110, CVar(var_F0), 0)
  loc_13A1AFA: var_140 = var_20C & var_110 & " And RestCode='" 
  loc_13A1B0C: Set var_144 = Me.Txt
  loc_13A1B12: Call 0.Method_Proc_218_23_13A23380 (CInt(2), var_148, var_14C)
  loc_13A1B1A: var_140 = var_148.Tag
  loc_13A1B2E: var_18C = var_21C & CVar(var_14C) & "' And Logsite_Code='" 
  loc_13A1B38: var_1AC = var_18C & CVar(MemVar_1F92078) 
  loc_13A1B41: var_1CC = var_1AC & "'" 
  loc_13A1B4F: unk_479052.Execute CStr(var_1CC), , 
  loc_13A1B57:  = var_1F4.Fields
  loc_13A1B5F:  = var_1F8.Item()
  loc_13A1B67:  = var_20C.Value
  loc_13A1B72: Proc_6_39_E7C810(var_22C)
  loc_13A1BD2: Set var_EC = Me.Txt
  loc_13A1BD8: Call 0.Method_Proc_218_23_13A23380 (CInt(0), var_F0, "Select Vno,Vdate,PayType From PayCharge Where PayType not in ('Cash','Member','Complementary') and VDate>= ", var_18C)
  loc_13A1BE7: Proc_6_7_F25D88(var_C8, CVar(var_F0), -1)
  loc_13A1BF8: var_100 = var_1F4 & var_C8 & " And RestCode='" 
  loc_13A1C0A: Set var_144 = Me.Txt
  loc_13A1C10: Call 0.Method_Proc_218_23_13A23380 (CInt(2), var_148, var_14C)
  loc_13A1C18: var_100 = var_148.Tag
  loc_13A1C3F: var_16C = CLng(var_22C) & CVar(var_14C) & "' And Logsite_Code='" & CVar(MemVar_1F92078) & "' and Vtype not in ('IPOS','PPOS') Order by Vno,VDate" 
  loc_13A1C4D: unk_479052.Execute CStr(var_16C), var_21C, 
  loc_13A1C5E: Set global_76 = var_1F4
  loc_13A1CA0: If (Me.RecordCount > 0) Then
  loc_13A1CA9:   Me.MoveFirst
  loc_13A1CAE:   ' Referenced from: 13A1DF7
  loc_13A1CC0:   If Not(Me.EOF) Then
  loc_13A1CE0:     var_F0 = Me.Fields.Item("VNo")
  loc_13A1D0A:     var_148 = Me.Fields.Item("PayType")
  loc_13A1D34:     var_1F8 = Me.Fields.Item("VDate")
  loc_13A1D3C:     var_140 = var_1F8.Value
  loc_13A1D57:     var_C8 = "Bill No. " & var_F0.Value 
  loc_13A1D89:     var_18C = var_C8 & " has been Settled In Mode " & var_148.Value & " On Date " & var_140 & vbCrLf & "So Bill Deletion Process not Possible." 
  loc_13A1D8D:     MsgBox(var_18C, &H40, var_1AC, var_1CC, var_1F0)
  loc_13A1DC9:     Set global_76 = Nothing
  loc_13A1DE3:     Me.GridSel.Rows = 2
  loc_13A1DEB:     Exit Sub
  loc_13A1DF2:     Me.MoveNext
  loc_13A1DF7:     GoTo loc_13A1CAE
  loc_13A1DFA:   End If
  loc_13A1DFA: End If
  loc_13A1E18: Set var_EC = Me.Txt
  loc_13A1E1E: Call 0.Method_Proc_218_23_13A23380 (CInt(3), var_F0, var_14C, "Select P.DocId From (PayCharge P Inner Join Sale1 S on P.DocId=S.DocId) Where P.PayCode='")
  loc_13A1E26: var_22C = var_F0.Tag
  loc_13A1E2F: var_1D0 = -1 & var_14C
  loc_13A1E36: var_258 = CStr(var_C8 & " has been Settled In Mode " & var_148.Value & " On Date " & var_140 & vbCrLf) & "' And P.PayType Not In('PPOS','IPOS') And P.PayCode Not In('"
  loc_13A1E60: Set var_144 = Me.Txt
  loc_13A1E66: Call 0.Method_Proc_218_23_13A23380 (CInt(0), var_148)
  loc_13A1E75: Proc_6_7_F25D88(var_C8, CVar(var_148))
  loc_13A1E7D: var_100 = CVar(var_258 & MemVar_1F92078 & "ROOM','" & MemVar_1F92078 & "TOUT') And S.VDate Between ") & var_C8 
  loc_13A1E95: Set var_1F4 = Me.Txt
  loc_13A1E9B: Call 0.Method_Proc_218_23_13A23380 (CInt(1), var_1F8)
  loc_13A1EAA: Proc_6_7_F25D88(var_140, CVar(var_1F8))
  loc_13A1EBB: var_16C = var_100 & " And " & var_140 & " And P.RestCode='" 
  loc_13A1ECD: Set var_20C = Me.Txt
  loc_13A1ED3: Call 0.Method_Proc_218_23_13A23380 (CInt(2), var_268, var_26C)
  loc_13A1EDB: var_16C = var_268.Tag
  loc_13A1F10: unk_479052.Execute CStr(var_274 & CVar(var_26C) & "' And P.Logsite_Code='" & CVar(MemVar_1F92078) & "' Order by P.Vno"), , 
  loc_13A1F21: Set global_76 = var_274
  loc_13A1F81: If (Me.RecordCount = 0) Then
  loc_13A1F97:   Me.GridSel.Rows = 2
  loc_13A1F9F:   Exit Sub
  loc_13A1FA0: End If
  loc_13A1FB3: Me.GridSel.Row = 1
  loc_13A1FC7: Me.CmdDelete.Enabled = True
  loc_13A1FCF: ' Referenced from: 13A2316
  loc_13A1FE1: If Not(Me.EOF) Then
  loc_13A203A:   unk_479052.Execute CStr("Select Vno,Vdate,NetAmt as BillAmount,DocId From Sale1 Where DocId='" & Me.Fields.Item(0).Value & "'"), var_100, -1
  loc_13A2045:   Set var_88 = var_144
  loc_13A2073:   If (var_88.RecordCount = 1) Then
  loc_13A207A:     Set var_27C = Me.GridSel
  loc_13A207D:     var_98 = vbNullString
  loc_13A20A1:     var_98 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_13A20A9:     var_D8 = CVar(CLng(0)) 'Long
  loc_13A20B7:     LateIdCallSt
  loc_13A20D8:     var_B8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_13A20E0:     var_130 = CVar(CLng(1)) 'Long
  loc_13A2110:     var_E8 = CVar(CStr(var_88.Fields.Item("VNo").Value)) 'String
  loc_13A2117:     LateIdCallSt
  loc_13A2179:     var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_27C, var_E8, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_13A2180:     LateIdCallSt
  loc_13A21D6:     var_D8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_13A21DE:     var_17C = CVar(CLng(3)) 'Long
  loc_13A21FB:     var_C8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VDate")), var_27C, "dd/mmm/yyyy", var_27C, vbNullString)) 'String
  loc_13A2211:     LateIdCallSt
  loc_13A2258:     Proc_6_39_E7C810(var_C8, CVar(var_88.Fields.Item("BillAmount")), var_27C, CVar(CStr(Format(var_C8, "dd/mmm/yyyy"))), 1, 1)
  loc_13A2270:     var_D8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_13A2278:     var_17C = CVar(CLng(4)) 'Long
  loc_13A22A1:     var_120 = CVar(CStr(Format(var_C8, "0.00"))) 'String
  loc_13A22A8:     LateIdCallSt
  loc_13A22C8:     Set var_27C = Nothing 
  loc_13A22D1:     Set var_88 = Nothing
  loc_13A22ED:     var_98 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_13A22FC:     Me.GridSel.Row = "BillAmount"
  loc_13A230B:   End If
  loc_13A2311:   Me.MoveNext
  loc_13A2316:   GoTo loc_13A1FCF
  loc_13A2319: End If
  loc_13A232C: Me.GridSel.FixedRows = 1
  loc_13A2334: Exit Sub
End Sub

Public Sub Proc_218_24_F7864C(arg_C) 'F7864C
  'Data Table: 479040
  Dim unk_479052 As Connection15
  loc_F78528: unk_479052.Execute "Update Kot Set ContraDocID='Deleted' Where ContraDocID='" & arg_C & "'", var_B0, -1
  loc_F7855E: unk_479052.Execute "Delete From Sale1 Where DocID='" & arg_C & "'", var_B0, -1
  loc_F78594: unk_479052.Execute "Delete From Sale2 Where DocID='" & arg_C & "'", var_B0, -1
  loc_F785CA: unk_479052.Execute "Delete From SunTran Where DocID='" & arg_C & "'", var_B0, -1
  loc_F78600: unk_479052.Execute "Delete From Stock Where DocID='" & arg_C & "'", var_B0, -1
  loc_F78636: unk_479052.Execute "Delete From Paycharge Where DocID='" & arg_C & "'", var_B0, -1
  loc_F78648: Exit Sub
  loc_F78649: Exit Sub
End Sub

Public Sub Proc_218_25_130CD60
  'Data Table: 479040
  Dim unk_479052 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_1F0 As Variant
  Dim var_1F4 As String
  Dim var_130 As Variant
  loc_130C66E: unk_479052.Execute "Select * from TempPosDel Order By OldVno", var_A8, -1
  loc_130C679: Set var_88 = var_AC
  loc_130C696: If (var_88.RecordCount = 0) Then
  loc_130C699:   Exit Sub
  loc_130C69A: End If
  loc_130C6AE: If (var_88.RecordCount > 0) Then
  loc_130C6B4:   var_88.MoveFirst
  loc_130C6B9:   ' Referenced from: 130CD5A
  loc_130C6C8:   If Not(var_88.EOF) Then
  loc_130C6EF:     var_AC = var_88.Fields
  loc_130C73A:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Sale1 Set DocId='" & var_AC.Item("NewDocId").Value & "',Vno=", var_214)
  loc_130C742:     var_140 = -1 & var_130 
  loc_130C7B4:     var_1F4 = CStr(var_140 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value)
  loc_130C7BE:     unk_479052.Execute var_1F4, var_218, var_AC
  loc_130C865:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Sale2 Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_130C8DB:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_130C8E9:     unk_479052.Execute CStr(var_1F0), -1, var_218
  loc_130C990:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update SunTran Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_130CA06:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_130CA14:     unk_479052.Execute CStr(var_1F0), -1, var_218
  loc_130CABB:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Stock Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_130CB31:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_130CB3F:     unk_479052.Execute CStr(var_1F0), -1, var_218
  loc_130CBE6:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update PayCharge Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_130CBF7:     var_160 = var_214 & var_130 & " Where DocId='" 
  loc_130CC6A:     unk_479052.Execute CStr(var_160 & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value), -1, var_218
  loc_130CD15:     var_130 = "Update Kot Set ContraDocId='" & var_88.Fields.Item("NewDocId").Value & "' Where ContraDocId='" & var_88.Fields.Item("OldDocid").Value 
  loc_130CD2C:     unk_479052.Execute CStr(var_130 & "'"), var_160, -1
  loc_130CD55:     var_88.MoveNext
  loc_130CD5A:     GoTo loc_130C6B9
  loc_130CD5D:   End If
  loc_130CD5D: End If
  loc_130CD5D: Exit Sub
End Sub

Public Sub Proc_218_26_107A7C8
  'Data Table: 479040
  Dim unk_479052 As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Long
  Dim var_B0 As Fields15
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_11C As Variant
  Dim var_14C As Variant
  Dim var_1BC As Variant
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_234 As Variant
  loc_107A5A6: unk_479052.Execute "Select * from TempPosDel Order By OldVno", var_AC, -1
  loc_107A5B1: Set var_88 = var_B0
  loc_107A5CE: If (var_88.RecordCount = 0) Then
  loc_107A5DA:   global_84 = global_80
  loc_107A5DD:   Exit Sub
  loc_107A5DE: End If
  loc_107A5E3: var_8C = 1
  loc_107A5FA: If (var_88.RecordCount > 0) Then
  loc_107A600:   var_88.MoveFirst
  loc_107A605:   ' Referenced from: 107A7AD
  loc_107A614:   If Not(var_88.EOF) Then
  loc_107A658:     var_DC = CVar(CStr((global_80 + var_8C))) 'String
  loc_107A66A:     var_11C = (8 - Len(Trim(var_DC)))
  loc_107A684:     var_14C = CVar(CStr((global_80 + var_8C))) 'String
  loc_107A69B:     var_1BC = CVar(CStr((global_80 + var_8C))) 'String
  loc_107A70C:     var_13C = (Left(CVar(var_88.Fields.Item("OldDocid")), &HD) + Space(CLng(var_11C)))
  loc_107A713:     var_16C = (var_13C + Trim(var_14C))
  loc_107A737:     var_234 = "Update TempPosDel Set NewDocId='" & var_16C & "',NewVno=" & Trim(var_1BC) & " Where OldDocId='" & var_88.Fields.Item("OldDocid").Value 
  loc_107A755:     unk_479052.Execute CStr(var_234 & "' And OldVno=" & var_88.Fields.Item("OldVno").Value), var_2B0, -1
  loc_107A7A2:     var_8C = (var_8C + 1)
  loc_107A7A8:     var_88.MoveNext
  loc_107A7AD:     GoTo loc_107A605
  loc_107A7B0:   End If
  loc_107A7C3:   global_84 = ((global_80 + var_8C) - 1)
  loc_107A7C6: End If
  loc_107A7C6: Exit Sub
End Sub

Public Sub Proc_218_27_11A8ABC(arg_C, arg_10) '11A8ABC
  'Data Table: 479040
  Dim var_96 As Integer
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_108 As Variant
  Dim var_128 As Long
  Dim var_14C As Variant
  loc_11A869E: On Error Goto loc_11A8AB1
  loc_11A86A3: var_96 = 0
  loc_11A86AF: If (CInt(arg_10) = 1) Then
  loc_11A86D7:   For var_B4 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_98 = var_B4 'Integer
  loc_11A86E0:     var_9A = var_98
  loc_11A86E7:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A86EC:     var_E4 = 2
  loc_11A871B:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11A8722:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A8727:       var_E4 = 2
  loc_11A874A:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11A874F:       var_128 = 1
  loc_11A8762:       var_14C = Me.GridSel.TextMatrix)
  loc_11A8779:       Call Proc_218_24_F7864C(CStr(Me.GridSel.TextMatrix)))
  loc_11A8795:       var_96 = &HFF
  loc_11A87BD:       For var_154 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_154 'Integer
  loc_11A87D6:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11A87F1:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11A880C:         Me.GridSel.CellBackColor = &H80FF
  loc_11A8817:       Next var_154 'Integer
  loc_11A881C:     End If
  loc_11A881F:   Next var_B4 'Integer
  loc_11A8824:   Exit For
  loc_11A8827: End If
  loc_11A882F: CRefVarAry
  loc_11A8837: For var_158 = 0 To CInt(UBound(arg_C, 1)): var_98 = var_158 'Integer
  loc_11A8858:   If (arg_C(var_98) = 0) Then
  loc_11A885B:     GoTo loc_11A89E9
  loc_11A885E:   End If
  loc_11A886F:   var_9A = CInt(arg_C(var_98))
  loc_11A8879:   var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A887E:   var_E4 = 0
  loc_11A88AD:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_11A88B4:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A88B9:     var_E4 = 2
  loc_11A88E8:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11A88EF:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A88F4:       var_E4 = 2
  loc_11A8917:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11A891C:       var_128 = 1
  loc_11A892F:       var_14C = Me.GridSel.TextMatrix)
  loc_11A8946:       Call Proc_218_24_F7864C(CStr(Me.GridSel.TextMatrix)))
  loc_11A8962:       var_96 = &HFF
  loc_11A898A:       For var_15C = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_15C 'Integer
  loc_11A89A3:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11A89BE:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11A89D9:         Me.GridSel.CellBackColor = &H80FF
  loc_11A89E4:       Next var_15C 'Integer
  loc_11A89E9:       ' Referenced from: 11A885B
  loc_11A89E9:     End If
  loc_11A89E9:   End If
  loc_11A89EC: Next var_158 'Integer
  loc_11A89F1: ' Referenced from: 11A8824
  loc_11A8A01: If ((var_96 = 0) And (CInt(arg_10) = 0)) Then
  loc_11A8A04:   var_C4 = 0
  loc_11A8A0D:   var_E4 = 1
  loc_11A8A20:   var_B0 = Me.GridSel.TextMatrix)
  loc_11A8A48:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_16C, var_17C, var_18C)
  loc_11A8A73:   Me.GridSel.Row = 1
  loc_11A8A7B:   var_C4 = 0
  loc_11A8A8E:   Me.GridSel.Col = var_C4
  loc_11A8A9A:   Set var_A0 = Me.GridSel
  loc_11A8AAB: End If
  loc_11A8AAB: Proc_218_27_11A8ABC = GridSel.DispID_8001
  loc_11A8AB1: ' Referenced from: 11A869E
  loc_11A8AB1: Proc_6_60_E62BC4(var_B0, var_E4)
  loc_11A8AB6: Proc_218_27_11A8ABC = var_C4
End Sub

Public Sub Proc_218_28_EB9938
  'Data Table: 479040
  loc_EB98B0: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EB98C2:   Me.DGRestType.Visible = False
  loc_EB98CA: End If
  loc_EB98E6: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_EB98F8:   Me.DGPayType.Visible = False
  loc_EB9900: End If
  loc_EB991C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB992E:   Me.FGPoint.Visible = False
  loc_EB9936: End If
  loc_EB9936: Exit Sub
End Sub
