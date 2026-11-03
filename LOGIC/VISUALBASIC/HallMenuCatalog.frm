VERSION 5.00
Begin VB.Form HallMenuCatalog
  Caption = "Menu Catalog"
  ForeColor = &H40&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  BorderStyle = 1 'Fixed Single
  Icon = "HallMenuCatalog.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = -2265
  ClientTop = 435
  ClientWidth = 11940
  ClientHeight = 7275
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MSFlexGrid FGPoint
    Left = 14325
    Top = 3210
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 9
  End
  Begin DataGrid DGHelp
    Left = 12345
    Top = 1035
    Width = 4410
    Height = 3150
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11940
    Height = 450
    TabIndex = 14
  End
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &H80000012&
    Left = 1500
    Top = 2205
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
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
  Begin Frame Frame1
    Caption = "Category"
    BackColor = &H80000000&
    ForeColor = &H80000008&
    Left = 8805
    Top = 660
    Width = 1080
    Height = 735
    Visible = 0   'False
    TabIndex = 10
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    Begin SSOption OptCat
      Index = 0
      Left = 210
      Top = 225
      Width = 705
      Height = 210
      TabIndex = 12
    End
    Begin SSOption OptCat
      Index = 1
      Left = 210
      Top = 450
      Width = 735
      Height = 240
      TabIndex = 11
    End
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2235
    Top = 1500
    Width = 2955
    Height = 285
    TabIndex = 2
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
  Begin DataGrid DGItemGrp
    Left = 12480
    Top = 465
    Width = 4170
    Height = 3045
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2235
    Top = 1185
    Width = 2955
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &H80000012&
    Left = 6180
    Top = 2175
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
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
  Begin MSHFlexGrid FGrid
    Left = 5250
    Top = 1830
    Width = 7635
    Height = 7260
    TabIndex = 5
  End
  Begin MSHFlexGrid FGrid1
    Left = 735
    Top = 1875
    Width = 4395
    Height = 2805
    Visible = 0   'False
    TabIndex = 3
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 435
    Width = 180
    Height = 540
    TabIndex = 17
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 135
    Top = 8820
    Width = 2430
    Height = 285
    TabIndex = 16
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
    Left = 150
    Top = 8490
    Width = 2520
    Height = 255
    TabIndex = 15
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
  Begin Label LblName
    Caption = "Item Group"
    Index = 2
    ForeColor = &HFF0000&
    Left = 765
    Top = 1485
    Width = 1065
    Height = 240
    TabIndex = 1
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
    Caption = "Catalog Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 750
    Top = 1185
    Width = 1350
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
End

Attribute VB_Name = "HallMenuCatalog"

Private global_80 As Integer
Private global_82 As Integer
Private global_96 As Integer
Private MasterFormExit As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '1176FDC
  'Data Table: 4CE5E8
  Dim var_92 As Integer
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_90 As Variant
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim var_108 As TextBox
  Dim Me As Recordset15
  Dim var_13C As Long
  loc_1176C22: Set var_88 = Me.TxtGrid
  loc_1176C28: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_1176C36: Proc_6_74_E226B0(var_8C)
  loc_1176C42: Call Proc_121_63_EBBD50(var_8C)
  loc_1176C4A: var_92 = Index
  loc_1176C53: If (var_92 = 0) Then
  loc_1176C6C:   Me.FGrid.CellBackColor = CVar(CLng(global_92))
  loc_1176C90:   Set var_8C = Me.FGrid
  loc_1176CC6:   Set var_108 = Me.TxtGrid
  loc_1176CCC:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_1176CD4:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_1176D05:   var_114 = CLng(Me.FGrid.Col)
  loc_1176D15:   If (var_114 = CLng(2)) Then
  loc_1176D21:     Set var_88 = Me.OptCat
  loc_1176D27:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, var_114)
  loc_1176D2F:     var_8C.Value
  loc_1176D45:     If (CBool(CVar(CLng(Me.FGrid.Row))) = &HFF) Then
  loc_1176D48:       Exit Sub
  loc_1176D49:     End If
  loc_1176D56:     Set var_90 = Me.TxtGrid
  loc_1176D5C:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_1176D76:     Set var_88 = Me.TxtGrid
  loc_1176D7C:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_1176D90:     var_A4 = CVar((var_8C.Top + var_108.Height)) 'Single
  loc_1176D99:     Set var_10C = Me.DGItemGrp
  loc_1176D9F:     var_10C.Top = CVar(CLng(Me.FGrid.Row))
  loc_1176DBE:     Set var_88 = Me.TxtGrid
  loc_1176DC4:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_1176DE3:     Me.DGItemGrp.Left = CVar(var_8C.Left)
  loc_1176E32:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1176E35:       Exit Sub
  loc_1176E36:     End If
  loc_1176E3C:     Me.MoveFirst
  loc_1176E54:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1176E5C:     var_E4 = CVar(CLng(3)) 'Long
  loc_1176EA0:     Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_1176ED0:     If (Me.EOF = &HFF) Then
  loc_1176ED9:       Me.MoveFirst
  loc_1176EDE:     End If
  loc_1176EDE:   End If
  loc_1176EE1: Else
  loc_1176EE7:   If (var_92 = 1) Then
  loc_1176F06:     Set var_8C = Me.FGrid1
  loc_1176F0C:     var_D4 = var_8C.Col
  loc_1176F15:     var_E4 = CVar(CLng(var_D4)) 'Long
  loc_1176F3C:     Set var_108 = Me.TxtGrid
  loc_1176F42:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid1.TextMatrix)), var_E4, CVar(CLng(Me.FGrid1.Row)))
  loc_1176F4A:     var_10C.Tag = var_138
  loc_1176F7B:     var_13C = CLng(Me.FGrid1.Col)
  loc_1176F8B:     If (var_13C = CLng(3)) Then
  loc_1176F9D:       Set var_88 = Me.TxtGrid
  loc_1176FA3:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, var_13C)
  loc_1176FAB:       var_8C.MaxLength = var_D4
  loc_1176FC0:       If (global_82 = 0) Then
  loc_1176FCB:         var_110 = "{Home}+{End}"
  loc_1176FD1:         Proc_303_0_FB9B68(CStr(Me.FGrid1.TextMatrix)), 0, var_E4)
  loc_1176FD9:       End If
  loc_1176FD9:     End If
  loc_1176FD9:   End If
  loc_1176FD9: End If
  loc_1176FD9: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11FF874
  'Data Table: 4CE5E8
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim var_D4 As Variant
  loc_11FF3CF: var_86 = KeyCode
  loc_11FF3D8: If (var_86 = 0) Then
  loc_11FF3E5:   If (CLng(Shift) = &H1B) Then
  loc_11FF3F5:     Set var_8C = Me.TxtGrid
  loc_11FF3FB:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_11FF403:     var_94 = var_90.Tag
  loc_11FF415:     Set var_98 = Me.TxtGrid
  loc_11FF41B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_11FF423:     var_9C.Text = var_94
  loc_11FF43F:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_11FF444:     Call Proc_121_63_EBBD50(arg_14)
  loc_11FF44D:     Set var_8C = Me.FGrid
  loc_11FF46A:     Set var_8C = Me.TxtGrid
  loc_11FF470:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_11FF478:     var_90.Visible = FGrid.DispID_8001
  loc_11FF484:     Exit Sub
  loc_11FF485:   End If
  loc_11FF498:   var_B0 = CLng(Me.FGrid.Col)
  loc_11FF4A8:   If (var_B0 = CLng(2)) Then
  loc_11FF4B4:     Set var_8C = Me.OptCat
  loc_11FF4BA:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_11FF4C2:     var_90.Value
  loc_11FF4D8:     If (CBool(var_B0) = &HFF) Then
  loc_11FF4DB:       Exit Sub
  loc_11FF4DC:     End If
  loc_11FF4F4:     Set var_9C = Nothing
  loc_11FF52D:     Proc_6_69_134A198(Me.DGItemGrp, Me.TxtGrid, KeyCode, global_60, Shift, &HFF)
  loc_11FF54B:     If (CLng(Shift) = &HD) Then
  loc_11FF554:       Call Proc_121_59_1269CAC(KeyCode, var_B2, 1, Nothing)
  loc_11FF55F:       If (var_B2 = &HFF) Then
  loc_11FF56D:         Set var_9C = Me.TxtGrid
  loc_11FF5AC:         Proc_6_62_1253BC4(Me.FGrid, var_9C, KeyCode, Shift, global_82, CByte((CInt(4) + 1)))
  loc_11FF5DA:         var_AC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), 0, 2))) 'String
  loc_11FF5E2:         Set var_90 = Me.FGrid
  loc_11FF606:         var_AC = Me.FGrid.Row
  loc_11FF615:         var_D4 = CVar((CLng(var_AC) + 1)) 'Long
  loc_11FF61E:         Set var_90 = Me.FGrid
  loc_11FF624:         var_90.Row = var_D4
  loc_11FF645:         Me.FGrid.Col = CVar(CLng(2))
  loc_11FF64D:       End If
  loc_11FF64D:     End If
  loc_11FF64D:   End If
  loc_11FF650: Else
  loc_11FF656:   If (var_86 = 1) Then
  loc_11FF663:     If (CLng(Shift) = &H1B) Then
  loc_11FF673:       Set var_8C = Me.TxtGrid
  loc_11FF679:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94, FGrid.DispID_10000, var_AC)
  loc_11FF681:       0 = var_90.Tag
  loc_11FF693:       Set var_98 = Me.TxtGrid
  loc_11FF699:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_94)
  loc_11FF6A1:       var_9C.Text = var_9C
  loc_11FF6B4:       Call Proc_121_63_EBBD50(0)
  loc_11FF6BD:       Set var_8C = Me.FGrid1
  loc_11FF6DA:       Set var_8C = Me.TxtGrid
  loc_11FF6E0:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_11FF6E8:       var_90.Visible = FGrid1.DispID_8001
  loc_11FF6F4:       Exit Sub
  loc_11FF6F5:     End If
  loc_11FF718:     If (CLng(Me.FGrid1.Col) = CLng(3)) Then
  loc_11FF75B:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_82 = &HFF))) Then
  loc_11FF799:         If (CLng(Me.FGrid1.Row) < (CLng(Me.FGrid1.Rows) - 1)) Then
  loc_11FF7A2:           Call Proc_121_59_1269CAC(KeyCode, var_B2)
  loc_11FF7AD:           If (var_B2 = &HFF) Then
  loc_11FF7FA:             Proc_6_62_1253BC4(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_82, CByte((CInt(3) + 1)))
  loc_11FF81C:             Me.FGrid1.Col = CVar(CLng(3))
  loc_11FF824:           End If
  loc_11FF827:         Else
  loc_11FF82F:           Call TxtGrid_Validate(KeyCode)
  loc_11FF86B:           If (MsgBox("Save Record ?", 4, "Save Data", var_118, var_138) = 6) Then
  loc_11FF86E:             Call TopCtrl1_UnknownEvent_16()
  loc_11FF873:           End If
  loc_11FF873:         End If
  loc_11FF873:       End If
  loc_11FF873:     End If
  loc_11FF873:   End If
  loc_11FF873: End If
  loc_11FF873: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EECEF8
  'Data Table: 4CE5E8
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_A4 As SSOption
  loc_EECE33: Proc_6_58_E054C0(arg_10)
  loc_EECE44: If (KeyAscii = 0) Then
  loc_EECE5A:   var_A0 = CLng(Me.FGrid.Col)
  loc_EECE6A:   If (var_A0 = CLng(2)) Then
  loc_EECE76:     Set var_8C = Me.OptCat
  loc_EECE7C:     Call 0.Method_TxtGrid_KeyPress0 (0, var_A4)
  loc_EECE84:     var_A4.Value
  loc_EECE9A:     If (CBool(var_A0) = &HFF) Then
  loc_EECE9D:       Exit Sub
  loc_EECE9E:     End If
  loc_EECEBA:     If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_EECECC:       var_A8 = "Name"
  loc_EECEE7:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_60, arg_10)
  loc_EECEF6:     End If
  loc_EECEF6:   End If
  loc_EECEF6: End If
  loc_EECEF6: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F04B14
  'Data Table: 4CE5E8
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_A4 As SSOption
  loc_F04A30: On Error Goto loc_F04B0C
  loc_F04A3F: If (KeyCode = 0) Then
  loc_F04A55:   var_A0 = CLng(Me.FGrid.Col)
  loc_F04A65:   If (var_A0 = CLng(2)) Then
  loc_F04A71:     Set var_8C = Me.OptCat
  loc_F04A77:     Call 0.Method_TxtGrid_KeyUp0 (0, var_A4)
  loc_F04A7F:     var_A4.Value
  loc_F04A95:     If (CBool(var_A0) = &HFF) Then
  loc_F04A98:       Exit Sub
  loc_F04A99:     End If
  loc_F04ABC:     If ((Shift <> &HD) And (CBool(Me.DGItemGrp.Visible) = 0)) Then
  loc_F04ACD:       Call TxtGrid_KeyDown(KeyCode, global_80)
  loc_F04AE1:       var_AC = "Name"
  loc_F04AFC:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_60, Shift)
  loc_F04B0B:     End If
  loc_F04B0B:   End If
  loc_F04B0B: End If
  loc_F04B0B: Exit Sub
  loc_F04B0C: ' Referenced from: F04A30
  loc_F04B0C: Proc_6_60_E62BC4(var_AC, &HFF)
  loc_F04B11: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E53414
  'Data Table: 4CE5E8
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E533D7: var_86 = Cancel
  loc_E533E0: If (var_86 = 0) Then
  loc_E533E9:   Call Proc_121_59_1269CAC(Cancel, var_88)
  loc_E533F2:   arg_10 = Not(var_88)
  loc_E533F8: Else
  loc_E533FE:   If (var_86 = 1) Then
  loc_E53407:     Call Proc_121_59_1269CAC(Cancel, var_88)
  loc_E53410:     arg_10 = Not(var_88)
  loc_E53413:   End If
  loc_E53413: End If
  loc_E53413: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_0 'E75A14
  'Data Table: 4CE5E8
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E759CB: Me.FGrid1.BackColorSel = CVar(CLng("14737632"))
  loc_E759E5: Me.FGrid1.Col = CVar(CLng(3))
  loc_E759F8: Set var_A8 = Me.TxtGrid
  loc_E759FE: Call 0.Method_Fgrid1_UnknownEvent_00 (1, var_AC)
  loc_E75A06: var_AC.Visible = False
  loc_E75A12: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_1 'E67EF0
  'Data Table: 4CE5E8
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E67EAC: Set var_88 = Me.TxtGrid
  loc_E67EB2: Call 0.Method_Fgrid1_UnknownEvent_10 (1, var_8C)
  loc_E67ECC: If (var_8C.Visible = 0) Then
  loc_E67EE5:   Me.FGrid1.BackColorSel = CVar(CLng(global_92))
  loc_E67EED: End If
  loc_E67EED: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'DFF6EC
  'Data Table: 4CE5E8
  loc_DFF6E4: Call Proc_121_58_E42110()
  loc_DFF6E9: Exit Sub
  loc_DFF6EA: CExtInstUnk
End Sub

Private Sub Fgrid1_UnknownEvent_A '1122150
  'Data Table: 4CE5E8
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_FC As Variant
  Dim var_11C As String
  Dim arg_70AC As Variant
  loc_1121DF4: Set var_88 = Me.TopCtrl1
  loc_1121DFA: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1121E3F: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1121E48:   Call Form_KeyDown(Cancel, arg_10)
  loc_1121E4D: End If
  loc_1121E51: Set var_88 = Me.TopCtrl1
  loc_1121E57: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1121E70: If (CStr() = "Browse") Then
  loc_1121E73:   Exit Sub
  loc_1121E74: End If
  loc_1121EE8: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_1121F01:   Me.FGrid1.CellBackColor = CVar(CLng(global_92))
  loc_1121F11:   var_9C = "+{Tab}"
  loc_1121F17:   Proc_303_0_FB9B68(CStr(Me.FGrid1.Tag), 0)
  loc_1121F21:   Cancel = 0
  loc_1121F27: Else
  loc_1121F7E:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - 1)))) Then
  loc_1121F97:     Me.FGrid1.CellBackColor = CVar(CLng(global_92))
  loc_1121F9F:   End If
  loc_1121F9F: End If
  loc_1121FA5: global_80 = Cancel
  loc_1121FCB: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_1121FEF: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1122015:   If (CLng(Me.FGrid1.Col) = CLng(2)) Then
  loc_112202B:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1122043:     var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1122048:     var_11C = vbNullString
  loc_1122052:     Set var_B4 = Me.FGrid1
  loc_1122058:     LateIdCallSt
  loc_1122083:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112208B:     var_FC = CVar(CLng(3)) 'Long
  loc_1122090:     var_11C = vbNullString
  loc_112209A:     Set var_A0 = Me.FGrid1
  loc_11220A0:     LateIdCallSt
  loc_11220C5:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11220CD:     var_FC = CVar(CLng(1)) 'Long
  loc_11220D2:     var_11C = vbNullString
  loc_11220DC:     Set var_A0 = Me.FGrid1
  loc_11220E2:     LateIdCallSt
  loc_1122107:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112210F:     var_FC = CVar(CLng(4)) 'Long
  loc_1122114:     var_11C = vbNullString
  loc_112211E:     Set var_A0 = Me.FGrid1
  loc_1122124:     LateIdCallSt
  loc_1122136:   End If
  loc_1122136: End If
  loc_112213C: If (Cancel = &HD) Then
  loc_1122144:   global_82 = 0
  loc_1122147: End If
  loc_112214C: Exit Sub
  loc_112214D: arg_70AC = CVar(0) 'Long
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E0D940
  'Data Table: 4CE5E8
  loc_E0D931: Call Fgrid1_UnknownEvent_C()
  loc_E0D93B: global_82 = 0
  loc_E0D93E: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'EE52B8
  'Data Table: 4CE5E8
  Dim var_88 As MSHFlexGrid
  loc_EE5208: Set var_88 = Me.TopCtrl1
  loc_EE520E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_EE5227: If (CStr() = "Browse") Then
  loc_EE522A:   Exit Sub
  loc_EE522B: End If
  loc_EE524E: If (CLng(Me.FGrid1.Col) = CLng(3)) Then
  loc_EE528F:   Proc_6_63_110ABA4(Me, Me.FGrid1, Me.TxtGrid, 1)
  loc_EE52A1: End If
  loc_EE52AB: If (CLng(Cancel) <> &HD) Then
  loc_EE52B3:   global_82 = &HFF
  loc_EE52B6: End If
  loc_EE52B6: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_D 'FEBE48
  'Data Table: 4CE5E8
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FEBC74: Set var_90 = Me.TopCtrl1
  loc_FEBC7A: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_FEBC93: If (CStr() = "Browse") Then
  loc_FEBC96:   Exit Sub
  loc_FEBC97: End If
  loc_FEBCB4: If (CLng(Me.FGrid1.ColSel) = CLng(0)) Then
  loc_FEBCB7:   Exit Sub
  loc_FEBCB8: End If
  loc_FEBCC9: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FEBCEB:   If (CLng(Me.FGrid1.Row) >= 1) Then
  loc_FEBD25:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FEBD47:       If (CLng(Me.FGrid1.Rows) > 2) Then
  loc_FEBD5D:         var_B4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FEBD66:         Set var_118 = Me.FGrid1
  loc_FEBD7E:         Call Proc_121_67_11A4C44(FGrid1.DispID_10000)
  loc_FEBD86:       Else
  loc_FEBD99:         Me.FGrid1.Rows = 1
  loc_FEBDBF:         var_A0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid1, CInt(0)))) 'String
  loc_FEBDC7:         Set var_118 = Me.FGrid1
  loc_FEBDF4:         Me.FGrid1.FixedRows = 1
  loc_FEBDFC:       End If
  loc_FEBDFC:     End If
  loc_FEBDFF:   Else
  loc_FEBE20:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FEBE30:   End If
  loc_FEBE34:   Set var_90 = Me.FGrid1
  loc_FEBE45: End If
  loc_FEBE45: Exit Sub
  loc_FEBE46: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E4524C
  'Data Table: 4CE5E8
  Dim var_8C As TextBox
  loc_E45220: Call Proc_121_63_EBBD50()
  loc_E45230: Set var_88 = Me.TxtGrid
  loc_E45236: Call 0.Method_Fgrid1_UnknownEvent_150 (1, var_8C)
  loc_E4523E: var_8C.Visible = False
  loc_E4524A: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FFDF58
  'Data Table: 4CE5E8
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FFDD6E: Set var_88 = Me.Txt
  loc_FFDD74: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FFDD82: Proc_6_74_E226B0(var_8C)
  loc_FFDD8E: Call Proc_121_63_EBBD50(var_8C)
  loc_FFDD96: var_92 = Index
  loc_FFDDA1: If (var_92 = CInt(1)) Then
  loc_FFDDBB:   If (Me.RecordCount > 0) Then
  loc_FFDDC9:     Set var_8C = Me.FGPoint
  loc_FFDDE1:     Proc_6_137_1193554(Me.DGItemGrp, global_60, Index)
  loc_FFDDEF:   End If
  loc_FFDE3D:   Set var_88 = Me.Txt
  loc_FFDE43:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FFDE4B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FFDE63:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FFDE66:     Exit Sub
  loc_FFDE67:   End If
  loc_FFDE74:   Set var_88 = Me.Txt
  loc_FFDE7A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FFDE82:   var_A0 = var_8C.Text
  loc_FFDE8A:   var_D4 = CVar(var_A0) 'String
  loc_FFDECF:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FFDED8:     Me.MoveFirst
  loc_FFDEFD:     Set var_88 = Me.Txt
  loc_FFDF03:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_FFDF0B:     0 = var_8C.Text
  loc_FFDF19:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_FFDF2F:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_FFDF47:   End If
  loc_FFDF4A: Else
  loc_FFDF52:   If (var_92 = CInt(0)) Then
  loc_FFDF55:   End If
  loc_FFDF55: End If
  loc_FFDF55: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10E7810
  'Data Table: 4CE5E8
  Dim var_A8 As Variant
  Dim var_AA As Integer
  Dim Me As Recordset15
  loc_10E750A: If (CLng(Shift) = &H1B) Then
  loc_10E750D:   Call Proc_121_63_EBBD50()
  loc_10E7512:   Exit Sub
  loc_10E7513: End If
  loc_10E7518: global_96 = 0
  loc_10E7525: If (CLng(Shift) = &HD) Then
  loc_10E7530:   If (KeyCode = CInt(1)) Then
  loc_10E7538:     global_96 = &HFF
  loc_10E753B:   End If
  loc_10E754D:   Me.FGrid.Col = CVar(CLng(2))
  loc_10E7555: End If
  loc_10E7558: var_AA = KeyCode
  loc_10E7563: If (var_AA = CInt(1)) Then
  loc_10E7583:   Set var_BC = Me.FGPoint
  loc_10E758E:   Set var_B8 = Nothing
  loc_10E75BC:   Proc_6_69_134A198(Me.DGItemGrp, Me.Txt, KeyCode, global_60, Shift, 0, 1)
  loc_10E762B:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10E7632:     Set var_B8 = Me.DGItemGrp
  loc_10E7651:     Proc_6_138_106D6F8(var_B8, global_60, KeyCode, Me.FGPoint, var_B8)
  loc_10E765F:   End If
  loc_10E7662: Else
  loc_10E766A:   If (var_AA = CInt(0)) Then
  loc_10E768F:     If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_10E7696:       Set var_BC = Me.DGHelp
  loc_10E76AA:       Set var_B8 = Nothing
  loc_10E76DC:       Proc_6_79_11ACE04(var_BC, Me.Txt, CInt(0), global_64, Shift, 0, 1)
  loc_10E76EE:     End If
  loc_10E76EE:   End If
  loc_10E76EE: End If
  loc_10E7729: If ((CBool(Me.DGItemGrp.Visible) = 0) And (CBool(Me.DGHelp.Visible) = 0)) Then
  loc_10E7741:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10E774A:     Proc_6_75_E527CC(Shift, arg_14, var_B8, 0, var_BC)
  loc_10E774F:   End If
  loc_10E7753:   Set var_A8 = Me.TopCtrl1
  loc_10E7759:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(0)
  loc_10E777B:   If ((CStr(var_AA) = "Add") And (KeyCode <> CInt(0))) Then
  loc_10E7793:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10E779C:       Proc_6_76_E52838(Shift, arg_14)
  loc_10E77A1:     End If
  loc_10E77A4:   Else
  loc_10E77A8:     Set var_A8 = Me.TopCtrl1
  loc_10E77AE:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(global_96)
  loc_10E77D0:     If ((CStr(global_96) = "Edit") And (KeyCode <> CInt(0))) Then
  loc_10E77E8:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10E77F1:         Proc_6_76_E52838(Shift)
  loc_10E77F6:       End If
  loc_10E77F6:     End If
  loc_10E77F6:   End If
  loc_10E780B:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10E780E:   End If
  loc_10E780E: End If
  loc_10E780E: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EED734
  'Data Table: 4CE5E8
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EED670: On Error Goto loc_EED72B
  loc_EED679: Proc_6_133_E7EF78(var_94)
  loc_EED682: arg_10 = CInt(var_94)
  loc_EED68B: Proc_6_58_E054C0(arg_10, arg_10)
  loc_EED69E: If (KeyAscii = CInt(1)) Then
  loc_EED6BD:   If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_EED6CF:     var_A0 = "Name"
  loc_EED6EA:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10)
  loc_EED6F9:   End If
  loc_EED71C:   Proc_6_138_106D6F8(Me.DGItemGrp, global_60, KeyAscii, Me.FGPoint)
  loc_EED72A: End If
  loc_EED72A: Exit Sub
  loc_EED72B: ' Referenced from: EED670
  loc_EED72B: Proc_6_60_E62BC4(var_A0, 0)
  loc_EED730: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E964F8
  'Data Table: 4CE5E8
  Dim var_86 As Integer
  loc_E96483: var_86 = KeyCode
  loc_E9648E: If (var_86 = CInt(0)) Then
  loc_E964AD:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E964BA:     var_A4 = "Name"
  loc_E964D9:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_64)
  loc_E964E8:   End If
  loc_E964EB: Else
  loc_E964F3:   If (var_86 = CInt(1)) Then
  loc_E964F6:   End If
  loc_E964F6: End If
  loc_E964F6: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E482F4
  'Data Table: 4CE5E8
  loc_E482D2: Set var_88 = Me.Txt
  loc_E482D8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E482E6: Proc_6_73_E22704(var_8C)
  loc_E482F2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12C412C
  'Data Table: 4CE5E8
  Dim var_8C As Integer
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_98 As Fields15
  Dim var_A0 As String
  Dim var_B8 As Variant
  Dim var_88 As Integer
  Dim var_CC As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_120 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim arg_10 As Integer
  Dim unk_4CE612 As Connection15
  Dim var_B4 As Recordset15
  Dim var_17C As Field20
  loc_12C3AE0: On Error Goto loc_12C4124
  loc_12C3AE6: var_8C = Cancel
  loc_12C3AF1: If (var_8C = CInt(1)) Then
  loc_12C3B14:   var_92 = Me.EOF
  loc_12C3B42:   Set var_98 = Me.Txt
  loc_12C3B48:   Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_12C3B50:   ((Me.RecordCount = 0) Or ((var_92 = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_12C3B68:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_12C3B78:     Set var_98 = Me.Txt
  loc_12C3B7E:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_12C3B86:     var_9C.Text = vbNullString
  loc_12C3B9F:     Set var_98 = Me.Txt
  loc_12C3BA5:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_12C3BAD:     var_9C.Tag = vbNullString
  loc_12C3BBC:   Else
  loc_12C3BF7:     Set var_B4 = Me.Txt
  loc_12C3BFD:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12C3C05:     var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12C3C56:     Set var_B4 = Me.Txt
  loc_12C3C5C:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12C3C64:     var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_12C3C7D:     Call Proc_121_57_11432F4(var_92)
  loc_12C3C8E:     If (var_92 > 0) Then
  loc_12C3C95:       Set var_CC = Me.FGrid1
  loc_12C3C9A:       var_88 = 0
  loc_12C3CB8:       For var_D0 = 1 To CInt((CLng(var_CC.Rows) - 1)):   var_86 = var_D0 'Integer
  loc_12C3CC2:         var_B0 = CVar(CLng(var_86)) 'Long
  loc_12C3CC7:         var_F0 = 1
  loc_12C3D0E:         var_140 = CVar(Me.Fields.Item("Code")) 'Address
  loc_12C3D2F:         If (Trim(CVar(CStr(var_CC.TextMatrix)))) = Trim(var_140)) Then
  loc_12C3D34:           var_88 = &HFF
  loc_12C3D37:         End If
  loc_12C3D3A:       Next var_D0 'Integer
  loc_12C3D45:       If (var_88 = 0) Then
  loc_12C3D5A:         var_B0 = CVar((CLng(var_CC.Rows) - 1)) 'Long
  loc_12C3D5F:         var_F0 = 0
  loc_12C3D7C:         var_120 = CVar(CStr((CLng(var_CC.Rows) - 1))) 'String
  loc_12C3D83:         LateIdCallSt
  loc_12C3DA6:         var_E0 = CVar((CLng(var_CC.Rows) - 1)) 'Long
  loc_12C3DAE:         var_100 = CVar(CLng(2)) 'Long
  loc_12C3DE1:         var_120 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_12C3DE8:         LateIdCallSt
  loc_12C3E12:         var_E0 = CVar((CLng(var_CC.Rows) - 1)) 'Long
  loc_12C3E1A:         var_100 = CVar(CLng(1)) 'Long
  loc_12C3E3C:         var_9C = Me.Fields.Item("Code")
  loc_12C3E44:         var_110 = var_9C.Value
  loc_12C3E4D:         var_120 = CVar(CStr(var_110)) 'String
  loc_12C3E54:         LateIdCallSt
  loc_12C3E6F:         var_C8 = var_CC.Rows
  loc_12C3E7E:         var_B0 = CVar((CLng(var_C8) + 1)) 'Long
  loc_12C3E86:         var_CC.Rows = "Code"
  loc_12C3E8E:       End If
  loc_12C3E90:       Set var_CC = Nothing 
  loc_12C3E94:     End If
  loc_12C3E9D:     If (global_96 = &HFF) Then
  loc_12C3EA2:       arg_10 = &HFF
  loc_12C3EA5:     End If
  loc_12C3EB2:     Set var_98 = Me.Txt
  loc_12C3EB8:     Call 0.Method_Txt_Validate0 (Cancel, var_9C, vbNullString, arg_10, var_CC, var_120, var_100)
  loc_12C3EC0:     var_9C.Text = var_E0
  loc_12C3ECC:   End If
  loc_12C3ECF: Else
  loc_12C3ED7:   If (var_8C = CInt(0)) Then
  loc_12C3EF1:     If (Me.RecordCount = 0) Then
  loc_12C3EF4:       Exit Sub
  loc_12C3EF5:     End If
  loc_12C3EF9:     Set var_98 = Me.TopCtrl1
  loc_12C3EFF:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_CC)
  loc_12C3F07:     var_A0 = CStr(var_120)
  loc_12C3F18:     If (var_A0 = "Add") Then
  loc_12C3F21:       var_E0 = 0
  loc_12C3F48:       Set var_98 = Me.Txt
  loc_12C3F4E:       Call 0.Method_Txt_Validate0 (CInt(0), var_9C, var_A0, "SELECT count(*) FROM CatalogMast Where Name='", var_C8, -1, var_B4)
  loc_12C3F6F:       unk_4CE612.Execute var_E0 & var_A0 & "'", var_17C, var_110
  loc_12C3F77:       var_100 = var_B4.Fields
  loc_12C3F7F:       var_CC = var_9C.Text.Item(var_E0)
  loc_12C3F87:        = var_17C.Value
  loc_12C3FB4:       If (var_110 > 0) Then
  loc_12C3FC2:         var_110 = "Information"
  loc_12C3FD2:         var_C8 = "Duplicate Name"
  loc_12C3FD8:         MsgBox(var_C8, &H40, var_110, var_120, var_140)
  loc_12C3FF3:         Set var_98 = Me.Txt
  loc_12C3FF9:         Call 0.Method_Txt_Validate0 (CInt(0))
  loc_12C4001:         var_9C.SetFocus
  loc_12C400F:         arg_10 = &HFF
  loc_12C4012:         Exit Sub
  loc_12C4013:       End If
  loc_12C4016:     Else
  loc_12C4043:       Set var_98 = Me.Txt
  loc_12C4049:       Call 0.Method_Txt_Validate0 (CInt(0), var_9C, var_A0, "SELECT Count(*) FROM CatalogMast Where Name='", var_C8, -1, var_B4)
  loc_12C407B:       unk_4CE612.Execute 0 & var_A0 & "' And Name<>'" & global_88 & "'", var_17C, var_110
  loc_12C4083:       arg_10 = var_B4.Fields
  loc_12C408B:        = var_9C.Text.Item(var_9C)
  loc_12C4093:        = var_17C.Value
  loc_12C40C4:       If (var_110 > 0) Then
  loc_12C40E8:         MsgBox("Duplicate Name", &H40, "Information", var_120, var_140)
  loc_12C4103:         Set var_98 = Me.Txt
  loc_12C4109:         Call 0.Method_Txt_Validate0 (CInt(0))
  loc_12C4111:         var_9C.SetFocus
  loc_12C411F:         arg_10 = &HFF
  loc_12C4122:         Exit Sub
  loc_12C4123:       End If
  loc_12C4123:     End If
  loc_12C4123:   End If
  loc_12C4123: End If
  loc_12C4123: Exit Sub
  loc_12C4124: ' Referenced from: 12C3AE0
  loc_12C4124: Proc_6_60_E62BC4(arg_10)
  loc_12C4129: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE4FBC
  'Data Table: 4CE5E8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE4F13: Me.DGHelp.Visible = False
  loc_EE4F32: If (Me.RecordCount > 0) Then
  loc_EE4F52:   var_B0 = Me.Fields.Item("Name")
  loc_EE4F71:   Set var_B4 = Me.Txt
  loc_EE4F77:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE4F7F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE4F95: End If
  loc_EE4FA0: Set var_A8 = Me.Txt
  loc_EE4FA6: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE4FAE: var_B0.SetFocus
  loc_EE4FBA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA2560
  'Data Table: 4CE5E8
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA24FB: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_92)) Then
  loc_EA2511:   Me.FGrid.Col = 2
  loc_EA2519: End If
  loc_EA252C: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA253F: Set var_88 = Me.TxtGrid
  loc_EA2545: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA254D: var_BC.Visible = False
  loc_EA2559: Call Proc_121_63_EBBD50()
  loc_EA255E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E674D8
  'Data Table: 4CE5E8
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E67494: Set var_88 = Me.TxtGrid
  loc_E6749A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E674B4: If (var_8C.Visible = 0) Then
  loc_E674CD:   Me.FGrid.BackColorSel = CVar(CLng(global_92))
  loc_E674D5: End If
  loc_E674D5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0032C
  'Data Table: 4CE5E8
  Dim arg_7074 As Integer
  loc_E00324: Call Proc_121_58_E42110()
  loc_E00329: Exit Sub
  loc_E0032A: arg_7074 = 
End Sub

Private Sub FGrid_UnknownEvent_B 'E0FF80
  'Data Table: 4CE5E8
  loc_E0FF71: Call FGrid_UnknownEvent_C()
  loc_E0FF7B: global_82 = 0
  loc_E0FF7E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'E42D2C
  'Data Table: 4CE5E8
  loc_E42D08: Set var_88 = Me.TopCtrl1
  loc_E42D0E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_E42D27: If (CStr() = "Browse") Then
  loc_E42D2A:   Exit Sub
  loc_E42D2B: End If
  loc_E42D2B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FED860
  'Data Table: 4CE5E8
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FED688: Set var_90 = Me.TopCtrl1
  loc_FED68E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_FED6A7: If (CStr() = "Browse") Then
  loc_FED6AA:   Exit Sub
  loc_FED6AB: End If
  loc_FED6C8: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FED6CB:   Exit Sub
  loc_FED6CC: End If
  loc_FED6DD: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FED6FF:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FED739:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FED75B:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FED771:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FED77A:         Set var_118 = Me.FGrid
  loc_FED795:       Else
  loc_FED7A8:         Me.FGrid.Rows = 1
  loc_FED7CE:         var_A0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_FED7D6:         Set var_118 = Me.FGrid
  loc_FED803:         Me.FGrid.FixedRows = 1
  loc_FED80B:       End If
  loc_FED80B:     End If
  loc_FED80E:   Else
  loc_FED82F:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FED83F:   End If
  loc_FED843:   Set var_90 = Me.FGrid
  loc_FED854: End If
  loc_FED859: Set var_8C = Nothing
  loc_FED85C: Exit Sub
  loc_FED85D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E43118
  'Data Table: 4CE5E8
  Dim var_8C As TextBox
  loc_E430EC: Call Proc_121_63_EBBD50()
  loc_E430FC: Set var_88 = Me.TxtGrid
  loc_E43102: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4310A: var_8C.Visible = False
  loc_E43116: Exit Sub
End Sub

Private Sub OptCat_UnknownEvent_9 '100ACDC
  'Data Table: 4CE5E8
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_B0 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As DataGrid
  Dim var_CC As Label
  loc_100AACF: var_86 = Cancel
  loc_100AAD8: If (var_86 = 0) Then
  loc_100AAE5:   Set var_8C = Me.OptCat
  loc_100AAEB:   Call 0.Method_OptCat_UnknownEvent_90 (Cancel, var_90)
  loc_100AAF3:   var_90.Value
  loc_100AB09:   If (CBool(var_86) = &HFF) Then
  loc_100AB1A:     Me.FGrid1.Visible = True
  loc_100AB2E:     Set var_8C = Me.Txt
  loc_100AB34:     Call 0.Method_OptCat_UnknownEvent_90 (1, var_90)
  loc_100AB53:     Me.DGItemGrp.Left = CVar(var_90.Left)
  loc_100AB6D:     Set var_C8 = Me.LblName
  loc_100AB73:     Call 0.Method_OptCat_UnknownEvent_90 (2, var_CC)
  loc_100AB8C:     Set var_8C = Me.LblName
  loc_100AB92:     Call 0.Method_OptCat_UnknownEvent_90 (2, var_90)
  loc_100ABA6:     var_B0 = CVar((var_90.Top + var_CC.Height)) 'Single
  loc_100ABB5:     Me.DGItemGrp.Top = CVar(var_90.Left)
  loc_100ABC7:   End If
  loc_100ABCA: Else
  loc_100ABD0:   If (var_86 = 1) Then
  loc_100ABDD:     Set var_8C = Me.OptCat
  loc_100ABE3:     Call 0.Method_OptCat_UnknownEvent_90 (Cancel)
  loc_100ABEB:     var_90.Value
  loc_100AC01:     If (CBool(var_90) = &HFF) Then
  loc_100AC13:       Me.FGrid1.Visible = False
  loc_100AC27:       Set var_8C = Me.Txt
  loc_100AC2D:       Call 0.Method_OptCat_UnknownEvent_90 (1, var_90)
  loc_100AC4C:       Me.DGItemGrp.Left = CVar(var_90.Left)
  loc_100AC66:       Set var_C8 = Me.LblName
  loc_100AC6C:       Call 0.Method_OptCat_UnknownEvent_90 (2, var_CC)
  loc_100AC85:       Set var_8C = Me.LblName
  loc_100AC8B:       Call 0.Method_OptCat_UnknownEvent_90 (2, var_90)
  loc_100AC9F:       var_B0 = CVar((var_90.Top + var_CC.Height)) 'Single
  loc_100ACAE:       Me.DGItemGrp.Top = CVar(var_90.Left)
  loc_100ACD3:       Me.FGrid1.Rows = 1
  loc_100ACDB:     End If
  loc_100ACDB:   End If
  loc_100ACDB: End If
  loc_100ACDB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FA4F70
  'Data Table: 4CE5E8
  Dim unk_4CE612 As Connection15
  Dim var_A8 As Variant
  Dim var_90 As Variant
  Dim var_C0 As Variant
  loc_FA4DF0: On Error Goto loc_FA4F6A
  loc_FA4DFF: Set var_90 = Me
  loc_FA4E16: Call Proc_121_62_E79AF4(Proc_5_1_100CB50("ADD", var_90))
  loc_FA4E21: Call Proc_121_61_FAB36C(global_76)
  loc_FA4E4A: unk_4CE612.Execute "Select * from Enviro where LogSite_Code='" & MemVar_1F92078 & "'", var_B8, -1
  loc_FA4E55: Set var_88 = var_90
  loc_FA4E7C: If (Me.Recordset15.RecordCount > 0) Then
  loc_FA4E9C:   var_C0 = Me.Recordset15.Fields.Item("CatalogLimit")
  loc_FA4EBE:   If (var_C0.Value = "Yes") Then
  loc_FA4EC1:     var_A8 = True
  loc_FA4ECE:     Set var_90 = Me.OptCat
  loc_FA4ED4:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_C0)
  loc_FA4EEB:   Else
  loc_FA4EEB:     var_A8 = True
  loc_FA4EF8:     Set var_90 = Me.OptCat
  loc_FA4EFE:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (1, var_C0, var_A8)
  loc_FA4F12:   End If
  loc_FA4F12: End If
  loc_FA4F1F: Me.LblUser.Caption = vbNullString
  loc_FA4F34: Me.LblLDt.Caption = vbNullString
  loc_FA4F41: Set var_88 = Nothing
  loc_FA4F4F: Set var_90 = Me.Txt
  loc_FA4F55: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C0, OptCat.DispID_B)
  loc_FA4F5D: var_C0.SetFocus
  loc_FA4F69: Exit Sub
  loc_FA4F6A: ' Referenced from: FA4DF0
  loc_FA4F6A: Proc_6_60_E62BC4(OptCat.DispID_B, var_A8)
  loc_FA4F6F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9A788
  'Data Table: 4CE5E8
  loc_E9A710: On Error Goto loc_E9A781
  loc_E9A74A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9A770:   Call Proc_121_62_E79AF4(Proc_5_1_100CB50("INI", Me))
  loc_E9A77B:   Call Proc_121_60_13E23E4(global_76)
  loc_E9A780: End If
  loc_E9A780: Exit Sub
  loc_E9A781: ' Referenced from: E9A710
  loc_E9A781: Proc_6_60_E62BC4()
  loc_E9A786: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '113FCF0
  'Data Table: 4CE5E8
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim unk_4CE612 As Connection15
  Dim var_96 As Integer
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_113F994: On Error Goto loc_113FC96
  loc_113F9A5: If (Proc_183_56_FE8818(global_76) = &HFF) Then
  loc_113F9A8:   Exit Sub
  loc_113F9A9: End If
  loc_113F9DB: var_D4 = "Hall Booking"
  loc_113FA23: If (Proc_6_108_1010FEC(MemVar_1F92044, "hallBook", "MenuCatalog", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_113FA26:   Exit Sub
  loc_113FA27: End If
  loc_113FA5E: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_113FA6A:   unk_4CE612.BeginTrans var_D0
  loc_113FA71:   var_96 = &HFF
  loc_113FA85:   var_94 = Me.Bookmark 'Variant
  loc_113FAD1:   var_118 = "Delete From CatalogMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_113FADF:   unk_4CE612.Execute CStr(var_118), var_138, -1
  loc_113FB2A:   var_168 = 0
  loc_113FB3D:   var_160 = 0
  loc_113FB48:   var_15C = 0
  loc_113FB5B:   var_154 = 0
  loc_113FB66:   var_150 = 0
  loc_113FB79:   var_148 = 0
  loc_113FBB9:   var_B4 = "CatalogMast"
  loc_113FBC2:   Proc_154_5_10E33A4(MemVar_1F92044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_113FBF0:   unk_4CE612.CommitTrans
  loc_113FBF7:   var_96 = 0
  loc_113FC05:   Me.Requery -1
  loc_113FC15:   Me.Requery -1
  loc_113FC35:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_113FC42:     Me.Bookmark = var_94
  loc_113FC4A:   Else
  loc_113FC5E:     If (Me.EOF = 0) Then
  loc_113FC67:       Me.MoveLast
  loc_113FC6C:     End If
  loc_113FC6C:   End If
  loc_113FC6C:   Call Proc_121_60_13E23E4(var_96, var_148, 0, var_150, var_154)
  loc_113FC8D:   Proc_5_0_110649C(&HFF, Me, global_76, 0)
  loc_113FC95: End If
  loc_113FC95: Exit Sub
  loc_113FC96: ' Referenced from: 113F994
  loc_113FC9C: If (var_96 = &HFF) Then
  loc_113FCA5:   unk_4CE612.RollbackTrans
  loc_113FCAA: End If
  loc_113FCB2: Set var_9C = Err()
  loc_113FCB8: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_113FCD9: MsgBox(CVar(var_B4), &H10, " Deletion Message", var_118, var_138)
  loc_113FCEC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA8210
  'Data Table: 4CE5E8
  Dim var_94 As Variant
  Dim var_8C As Variant
  Dim var_B4 As Variant
  loc_FA807C: On Error Goto loc_FA8208
  loc_FA808D: If (Proc_183_55_FE7900(global_76) = &HFF) Then
  loc_FA8090:   Exit Sub
  loc_FA8091: End If
  loc_FA80B4: Call Proc_121_62_E79AF4(Proc_5_1_100CB50("EDIT", Me))
  loc_FA80CD: Set var_8C = Me.Txt
  loc_FA80D3: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_FA80E6: global_88 = var_94.Text
  loc_FA810D: var_B4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_FA8116: Set var_94 = Me.FGrid
  loc_FA811C: var_94.Row = var_B4
  loc_FA8135: Set var_8C = Me.FGrid
  loc_FA814F: Set var_8C = Me.OptCat
  loc_FA8155: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_94, FGrid.DispID_10000)
  loc_FA815D: var_94.Value
  loc_FA8173: If (CBool(vbNullString) = &HFF) Then
  loc_FA817A:   Set var_8C = Me.FGrid1
  loc_FA81A4:   var_B4 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_FA81B3:   Me.FGrid1.Row = vbNullString
  loc_FA81C2:   var_B4 = vbNullString
  loc_FA81CC:   Set var_8C = Me.FGrid1
  loc_FA81DD: End If
  loc_FA81EA: Me.LblUser.Caption = vbNullString
  loc_FA81FF: Me.LblLDt.Caption = vbNullString
  loc_FA8207: Exit Sub
  loc_FA8208: ' Referenced from: FA807C
  loc_FA8208: Proc_6_60_E62BC4(FGrid1.DispID_10000, var_B4)
  loc_FA820D: Exit Sub
  loc_FA820E: Set arg_7000 = FGrid1.DispID_8001
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AA84
  'Data Table: 4CE5E8
  loc_E1AA79: Me.Global.Unload Me
  loc_E1AA81: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F95E8C
  'Data Table: 4CE5E8
  Dim Me As Recordset15
  Dim var_BC As String
  Dim unk_4CE612 As Connection15
  Dim var_118 As Fields15
  Dim MemVar_1F920E4 As String
  loc_F95D30: On Error Goto loc_F95E83
  loc_F95D4A: If (Me.RecordCount <= 0) Then
  loc_F95D68:   var_AC = "Records Not Present For Searching."
  loc_F95D6E:   MsgBox(var_AC, &H40, "Information", var_EC, var_10C)
  loc_F95D7E:   Exit Sub
  loc_F95D7F: End If
  loc_F95DA3: unk_4CE612.Execute "Select * from Enviro where LogSite_Code='" & MemVar_1F92078 & "'", var_AC, -1
  loc_F95DAE: Set var_88 = var_118
  loc_F95DD5: If (Me.Recordset15.RecordCount > 0) Then
  loc_F95E05:   var_BC = "Yes"
  loc_F95E17:   If (Me.Recordset15.Fields.Item("CatalogLimit").Value = var_BC) Then
  loc_F95E28:     MemVar_1F920E4 = "Select Distinct CA.Code As SearchCode,CA.Name As CatalogName FROM CatalogMast CA WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CA.Category ='Y' Order by CA.Name"
  loc_F95E32:   Else
  loc_F95E40:     MemVar_1F920E4 = "Select Distinct CA.Code As SearchCode,CA.Name As CatalogName FROM CatalogMast CA WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CA.Category <>'Y' OR IsNull(CA.Category) Order by CA.Name"
  loc_F95E47:   End If
  loc_F95E47: End If
  loc_F95E4C: Set var_88 = Nothing
  loc_F95E55: MemVar_1F92120 = Me
  loc_F95E62: Proc_6_126_F1BCC0("4500", MemVar_1F920E4)
  loc_F95E7D: Call 0.Method_arg_2B0 (1, var_BC)
  loc_F95E82: Exit Sub
  loc_F95E83: ' Referenced from: F95D30
  loc_F95E83: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F95E88: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3E1D8
  'Data Table: 4CE5E8
  loc_E3E1C8: Proc_5_0_110649C(&HFF, Me)
  loc_E3E1D0: Call Proc_121_60_13E23E4(global_76)
  loc_E3E1D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3DB18
  'Data Table: 4CE5E8
  loc_E3DB08: Proc_5_0_110649C(&HFF, Me)
  loc_E3DB10: Call Proc_121_60_13E23E4(global_76)
  loc_E3DB15: Exit Sub
  loc_E3DB16: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3D938
  'Data Table: 4CE5E8
  Dim arg_70FF As Double
  loc_E3D928: Proc_5_0_110649C(&HFF, Me)
  loc_E3D930: Call Proc_121_60_13E23E4(global_76)
  loc_E3D935: Exit Sub
  loc_E3D936: arg_70FF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3DC98
  'Data Table: 4CE5E8
  Dim arg_70FF As Double
  loc_E3DC88: Proc_5_0_110649C(&HFF, Me)
  loc_E3DC90: Call Proc_121_60_13E23E4(global_76)
  loc_E3DC95: Exit Sub
  loc_E3DC96: arg_70FF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '14B5F08
  'Data Table: 4CE5E8
  Dim var_B0 As Variant
  Dim var_B8 As String
  Dim unk_4CE612 As Connection15
  Dim var_CC As Variant
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_F0 As Variant
  Dim var_104 As Recordset15
  Dim var_DC As Variant
  Dim var_E0 As Fields15
  Dim var_10C As Field20
  Dim var_B4 As String
  Dim var_134 As Double
  Dim var_12C As String
  Dim var_100 As Variant
  Dim var_9E As Integer
  Dim var_8C As Recordset15
  Dim var_106 As Integer
  Dim var_11C As Variant
  Dim var_15C As Variant
  loc_14B5224: On Error Goto loc_14B5EBC
  loc_14B522F: If (MemVar_1F923AC = "A") Then
  loc_14B5250:   Set var_AC = Me.Txt
  loc_14B5256:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_B0, var_B4, "SELECT CatalogMast.Name as CatlogName, ItemGrp.Name as ItemGroup, ItemMast.Name as ItemName,CatalogMast.Category AS Category FROM (CatalogMast INNER JOIN ItemGrp ON CatalogMast.ItemCatCode = ItemGrp.Code) iNNER JOIN ItemMast ON CatalogMast.ItemCode = ItemMast.Code where catalogmast.Code='")
  loc_14B525E:   var_DC = var_B0.Tag
  loc_14B5267:   var_B8 = -1 & var_B4
  loc_14B5277:   unk_4CE612.Execute var_B8 & "'", var_E0, 
  loc_14B5282:   Set var_88 = var_E0
  loc_14B529D: Else
  loc_14B52A5:   If (MemVar_1F923AC = "S") Then
  loc_14B52C6:     Set var_AC = Me.Txt
  loc_14B52CC:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_B0, var_B4, "SELECT CatalogMast.Name as CatlogName, ItemGrp.Name as ItemGroup, ItemMast.Name as ItemName,CatalogMast.Category AS Category FROM (CatalogMast INNER JOIN ItemGrp ON CatalogMast.ItemCatCode = ItemGrp.Code) iNNER JOIN ItemMast ON CatalogMast.ItemCode = ItemMast.Code where catalogmast.Code='")
  loc_14B52D4:     var_DC = var_B0.Tag
  loc_14B52DD:     var_B8 = -1 & var_B4
  loc_14B52ED:     unk_4CE612.Execute var_B8 & "' Order By ItemGrp.Name,ItemMast.Name", var_E0, 
  loc_14B52F8:     Set var_88 = var_E0
  loc_14B5310:   End If
  loc_14B5310: End If
  loc_14B532A: var_B0 = var_88.Fields.Item("Category")
  loc_14B534C: If (var_B0.Value = "Y") Then
  loc_14B5373:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_B0, var_B4, "SELECT CatalogMast.Name as CatlogName, ItemGrp.Name as ItemGroup, ItemMast.Name as ItemName,CatalogMast.Category AS Category, GroupCatalog.Limit AS MaxLimit,ItemMast.Specification AS Specification FROM ((CatalogMast INNER JOIN ItemGrp ON CatalogMast.ItemCatCode = ItemGrp.Code) INNER JOIN GroupCatalog ON CatalogMast.Code=GroupCatalog.CatCode AND CatalogMast.ItemCatCode=GroupCatalog.ItemCatCode) INNER JOIN ItemMast ON CatalogMast.ItemCode = ItemMast.Code where catalogmast.Code='")
  loc_14B537B:   var_DC = var_B0.Tag
  loc_14B5384:   var_B8 = -1 & var_B4
  loc_14B5394:   unk_4CE612.Execute var_B8 & "' ORDER BY ItemGrp.Name", var_E0, 
  loc_14B539F:   Set var_88 = var_E0
  loc_14B53C4:   Call Proc_121_56_FE0E40(New)
  loc_14B53CC:   Set var_8C = Me.Txt
  loc_14B53D2:   Set var_104 = var_8C 
  loc_14B53D6:   ' Referenced from: 14B5AD8
  loc_14B53E5:   If Not(Me.Recordset15.EOF) Then
  loc_14B53F8:     If (((var_9E Mod &H1B) <> 0) Or (var_9E = 0)) Then
  loc_14B53FE:       var_F0 = CVar(var_A4) 'String
  loc_14B5408:       var_CC = "ItemGroup"
  loc_14B5438:       If CBool(var_F0 <> var_88.Fields.Item(var_CC).Value) Then
  loc_14B5446:         var_104.AddNew var_CC, var_F0
  loc_14B548E:         var_104.Fields.Item("ItemName").Value = CVar(var_88.Fields.Item("ItemGroup"))
  loc_14B54C5:         Proc_6_48_EF4270(var_100, CVar(var_88.Fields.Item("MaxLimit")))
  loc_14B54DF:         If (var_100 > 0) Then
  loc_14B553E:           var_12C = "(Choose any " & Proc_6_43_10041F4(Abs(Val(CStr(var_88.Fields.Item("MaxLimit").Value))), vbNullString, vbNullString)
  loc_14B5545:           var_100 = CVar(var_12C & ")") 'String
  loc_14B5568:           var_104.Fields.Item("Remark").Value = var_100
  loc_14B558C:           var_F0 = "Y"
  loc_14B5595:           var_CC = "HFontBold"
  loc_14B55B1:           var_104.Fields.Item(var_CC).Value = var_F0
  loc_14B55BD:         End If
  loc_14B55C8:         var_104.Update var_CC, var_F0
  loc_14B55D6:         If (CInt(var_A6) = 1) Then
  loc_14B55DD:           var_A6 = CByte(0) 'Byte
  loc_14B55E4:         Else
  loc_14B55EA:           var_9E = (var_9E + 1)
  loc_14B55ED:         End If
  loc_14B55F3:         var_CC = "ItemGroup"
  loc_14B5618:         var_A4 = CStr(var_88.Fields.Item(var_CC).Value)
  loc_14B5625:       End If
  loc_14B5630:       var_104.AddNew var_CC, var_F0
  loc_14B5678:       var_104.Fields.Item("ItemName").Value = CVar(var_88.Fields.Item("ItemName"))
  loc_14B56CC:       var_104.Fields.Item("Remark").Value = CVar(var_88.Fields.Item("Specification"))
  loc_14B56DD:       var_F0 = "N"
  loc_14B56E6:       var_CC = "HFontBold"
  loc_14B5702:       var_104.Fields.Item(var_CC).Value = var_F0
  loc_14B5719:       var_104.Update var_CC, var_F0
  loc_14B5727:       If (CInt(var_A6) = 1) Then
  loc_14B572E:         var_A6 = CByte(0) 'Byte
  loc_14B5735:       Else
  loc_14B573B:         var_9E = (var_9E + 1)
  loc_14B573E:       End If
  loc_14B5741:       var_88.MoveNext
  loc_14B5749:     Else
  loc_14B574F:       If (var_9E = &H1B) Then
  loc_14B575A:         var_8C.AbsolutePosition = 1
  loc_14B5762:       Else
  loc_14B576F:         var_8C.AbsolutePosition = CLng(((var_9E - &H1B) + 1))
  loc_14B5774:         ' Referenced from:     14B5AC4
  loc_14B5774:       End If
  loc_14B5783:       If Not(var_8C.EOF) Then
  loc_14B5798:         If Not((var_88.EOF = &HFF)) Then
  loc_14B57D8:           If CBool(CVar(var_A4) <> var_88.Fields.Item("ItemGroup").Value) Then
  loc_14B581E:             var_104.Fields.Item("ItemName1").Value = CVar(var_88.Fields.Item("ItemGroup"))
  loc_14B5855:             Proc_6_48_EF4270(var_100, CVar(var_88.Fields.Item("MaxLimit")), var_9E)
  loc_14B586F:             If (var_100 > 0) Then
  loc_14B58A5:               var_134 = Val(CStr(var_88.Fields.Item("MaxLimit").Value))
  loc_14B58F8:               var_104.Fields.Item("Remark1").Value = CVar(var_134 & Proc_6_43_10041F4(Abs(var_134), vbNullString, vbNullString, "(Choose any ") & ")")
  loc_14B591C:               var_F0 = "Y"
  loc_14B5925:               var_CC = "HFontBold1"
  loc_14B5941:               var_104.Fields.Item(var_CC).Value = var_F0
  loc_14B594D:             End If
  loc_14B5958:             var_104.Update var_CC, var_F0
  loc_14B5960:             var_104.MoveNext
  loc_14B5990:             var_A4 = CStr(var_88.Fields.Item("ItemGroup").Value)
  loc_14B599D:           End If
  loc_14B59AE:           If (var_8C.EOF = &HFF) Then
  loc_14B59B1:             GoTo loc_14B5AC7
  loc_14B59B4:           End If
  loc_14B59F7:           var_104.Fields.Item("ItemName1").Value = CVar(var_88.Fields.Item("ItemName"))
  loc_14B5A3B:           var_E0 = var_104.Fields
  loc_14B5A43:           var_10C = var_E0.Item("Remark1")
  loc_14B5A4B:           var_10C.Value = CVar(var_88.Fields.Item("Specification"))
  loc_14B5A5C:           var_F0 = "N"
  loc_14B5A65:           var_CC = "HFontBold1"
  loc_14B5A79:           var_B0 = var_104.Fields.Item(var_CC)
  loc_14B5A81:           var_B0.Value = var_F0
  loc_14B5A98:           var_104.Update var_CC, var_F0
  loc_14B5AA0:           var_104.MoveNext
  loc_14B5AA8:           var_88.MoveNext
  loc_14B5ABE:           If (var_88.EOF = &HFF) Then
  loc_14B5AC1:             GoTo loc_14B5AC7
  loc_14B5AC4:           End If
  loc_14B5AC4:         End If
  loc_14B5AC4:         GoTo loc_14B5774
  loc_14B5AC7:         ' Referenced from:   14B5AC1
  loc_14B5AC7:         ' Referenced from:   14B59B1
  loc_14B5AC7:       End If
  loc_14B5ACD:       var_9E = (var_9E + 1)
  loc_14B5AD4:       var_A6 = CByte(1) 'Byte
  loc_14B5AD8:     End If
  loc_14B5AD8:     GoTo loc_14B53D6
  loc_14B5ADB:   End If
  loc_14B5ADD:   Set var_104 = Nothing 
  loc_14B5AF7:   Set var_AC = var_8C 
  loc_14B5B03:   var_106 = CreateFieldDefFile(var_AC, MemVar_1F920B4 & "\catlog1.ttx", &HFF, var_9E)
  loc_14B5B0D:   Set var_8C = var_AC
  loc_14B5B13:   var_CC = CVar(var_106) 'Integer
  loc_14B5B16:   var_9C = var_CC 'Variant
  loc_14B5B32:   var_B4 = MemVar_1F920B4 & "\catlog1.RPT"
  loc_14B5B3B:   Call 0.Method_arg_1C (var_B4, var_CC, var_AC, var_106)
  loc_14B5B46:   MemVar_1F921E4 = var_AC
  loc_14B5B61:   Call 0.Method_arg_90 (var_AC, var_138, var_9E, 1)
  loc_14B5B69:   Call 0.Method_arg_24 (var_9E, var_134)
  loc_14B5B75:   For var_13C =  To CInt(var_138): var_AC = var_13C 'Integer
  loc_14B5B8E:     Call 0.Method_arg_90 (var_AC, CLng(var_9E))
  loc_14B5B96:     Call 0.Method_arg_20 (var_B0)
  loc_14B5B9E:     Call 0.Method_arg_30 (var_B4)
  loc_14B5BE4:     If (Ucase(CVar(var_B4)) = Ucase("Title")) Then
  loc_14B5BF7:       Set var_AC = Me.Txt
  loc_14B5BFD:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_B0)
  loc_14B5C18:       var_F0 = "'"
  loc_14B5C35:       Call 0.Method_arg_90 (var_E0, CLng(var_9E))
  loc_14B5C3D:       Call 0.Method_arg_20 (var_10C)
  loc_14B5C45:       Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_B0)) & var_F0))
  loc_14B5C61:     End If
  loc_14B5C64:   Next var_13C 'Integer
  loc_14B5C82:   Call 0.Method_arg_64 (var_AC, CVar(var_8C))
  loc_14B5C8A:   Call 0.Method_arg_2C (var_F0)
  loc_14B5C98:   Call 0.Method_arg_150 (var_16C)
  loc_14B5CA2:   Set var_8C = Nothing
  loc_14B5CA8: Else
  loc_14B5CB7:   var_B8 = MemVar_1F920B4 & "\catlog.ttx"
  loc_14B5CBE:   Set var_AC = var_88 
  loc_14B5CCA:   var_106 = CreateFieldDefFile(var_AC, var_B8)
  loc_14B5CD4:   Set var_88 = var_AC
  loc_14B5CDA:   var_CC = CVar(var_106) 'Integer
  loc_14B5CDD:   var_9C = var_CC 'Variant
  loc_14B5CF9:   var_B4 = MemVar_1F920B4 & "\catlog.RPT"
  loc_14B5D02:   Call 0.Method_arg_1C (var_B4, var_CC, var_AC)
  loc_14B5D0D:   MemVar_1F921E4 = var_AC
  loc_14B5D28:   Call 0.Method_arg_90 (var_AC, var_138, var_9E)
  loc_14B5D30:   Call 0.Method_arg_24 (1, var_106)
  loc_14B5D3C:   For var_170 =  To CInt(var_138):   &HFF = var_170 'Integer
  loc_14B5D55:     Call 0.Method_arg_90 (var_AC, CLng(var_9E))
  loc_14B5D5D:     Call 0.Method_arg_20 (var_B0)
  loc_14B5D65:     Call 0.Method_arg_30 (var_B4)
  loc_14B5DAB:     If (Ucase(CVar(var_B4)) = Ucase("Title")) Then
  loc_14B5DBE:       Set var_AC = Me.Txt
  loc_14B5DC4:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_B0)
  loc_14B5DDB:       var_11C = "'" & Trim(CVar(var_B0)) 
  loc_14B5DDF:       var_F0 = "'"
  loc_14B5DE4:       var_15C = var_11C & var_F0 
  loc_14B5DE8:       var_B4 = CStr(var_15C)
  loc_14B5DFC:       Call 0.Method_arg_90 (var_E0, CLng(var_9E))
  loc_14B5E04:       Call 0.Method_arg_20 (var_10C)
  loc_14B5E0C:       Call 0.Method_arg_38 (var_B4)
  loc_14B5E28:     End If
  loc_14B5E2B:   Next var_170 'Integer
  loc_14B5E49:   Call 0.Method_arg_64 (var_AC, CVar(var_88))
  loc_14B5E51:   Call 0.Method_arg_2C (var_F0)
  loc_14B5E5F:   Call 0.Method_arg_150 (var_16C)
  loc_14B5E64: End If
  loc_14B5E6A: Call 0.Method_arg_50 (var_B4)
  loc_14B5E74: Set var_B0 = Nothing
  loc_14B5E8E: Set var_AC = MemVar_1F921E4 
  loc_14B5E9A: Proc_6_99_1483714(var_AC, 0, var_B4)
  loc_14B5EA5: MemVar_1F921E4 = var_AC
  loc_14B5EB8: Set var_88 = Nothing
  loc_14B5EBB: Exit Sub
  loc_14B5EBC: ' Referenced from: 14B5224
  loc_14B5EC4: Set var_AC = Err()
  loc_14B5ECA: Call 0.Method_arg_2C (var_B4, &HFF)
  loc_14B5ED5: Call 0.Method_arg_50 (var_B8)
  loc_14B5EF1: MsgBox(CVar(var_B4), &H10, CVar(var_B8), var_11C, var_15C)
  loc_14B5F04: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E20394
  'Data Table: 4CE5E8
  Dim Me As Recordset15
  loc_E2037B: Me.Requery -1
  loc_E2038B: Me.Requery -1
  loc_E20390: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '153112C
  'Data Table: 4CE5E8
  Dim var_94 As Variant
  Dim var_AC As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_4CE612 As Connection15
  Dim var_90 As Variant
  Dim var_A8 As Variant
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_86 As Integer
  Dim var_A4 As Variant
  Dim var_120 As Variant
  Dim var_E4 As Variant
  Dim var_140 As String
  Dim var_130 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_234 As Variant
  Dim var_150 As Variant
  Dim var_1D0 As Variant
  Dim var_254 As Variant
  Dim var_2A4 As Variant
  Dim var_2F4 As Variant
  Dim var_3C8 As Variant
  Dim var_45C As Double
  loc_1530200: On Error Goto loc_1531110
  loc_153020C: Set var_90 = Me.OptCat
  loc_1530212: Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_153021A: var_94.Value
  loc_1530230: If (CBool(var_94) = &HFF) Then
  loc_153023E:   Set var_90 = Me.Txt
  loc_1530244:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_153026D:   If (Proc_183_19_E8DAFC(var_94, "Catalog Name") = 0) Then
  loc_1530277:     Call Txt_GotFocus(CInt(0))
  loc_153027C:     Exit Sub
  loc_153027D:   End If
  loc_1530280:   Call Proc_121_66_10628C4(var_AE)
  loc_153028B:   If (var_AE = &HFF) Then
  loc_153028E:     Exit Sub
  loc_153028F:   End If
  loc_1530293:   Set var_90 = Me.TopCtrl1
  loc_1530299:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_94)
  loc_15302B2:   If (CStr() = "Add") Then
  loc_15302BB:     var_D4 = 0
  loc_15302D8:     var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From CatalogMast wHERE SITE_CODE='" & MemVar_1F92070
  loc_15302E8:     unk_4CE612.Execute CStr() & "'", var_A4, -1
  loc_15302F0:     var_90 = var_90.Fields
  loc_15302F8:     var_D4 = var_94.Item(var_94)
  loc_1530300:     var_A8 = var_A8.Value
  loc_1530339:     var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_153035F:     var_E4 = Format(CStr(var_E4), "000")
  loc_1530367:     var_108 = (1 + var_E4)
  loc_1530372:     global_84 = CStr(var_108)
  loc_1530387:   Else
  loc_15303A4:     var_94 = Me.Fields.Item("SearchCode")
  loc_15303AC:     var_A4 = var_94.Value
  loc_15303BB:     global_84 = CStr(var_A4)
  loc_15303CC:   End If
  loc_15303D7:   Set var_90 = Me.TxtGrid
  loc_15303DD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_94, 0)
  loc_15303E5:   var_94.Visible = True
  loc_15303FC:   Set var_90 = Me.TxtGrid
  loc_1530402:   Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_94, 0)
  loc_153040A:   var_94.Visible = var_F8
  loc_1530416:   Call Proc_121_63_EBBD50(var_E4)
  loc_153041D:   var_86 = &HFF
  loc_1530429:   unk_4CE612.BeginTrans var_10C
  loc_1530455:   unk_4CE612.Execute "Delete From CatalogMast Where Code='" & global_84 & "'", var_A4, -1
  loc_1530485:   var_B4 = "Delete From GroupCatalog Where CatCode='" & global_84 & "'"
  loc_153048E:   unk_4CE612.Execute var_B4, var_A4, -1
  loc_15304C5:   For var_110 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_110 'Integer
  loc_1530513:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1530524:       Set var_90 = Me.Txt
  loc_153052A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, CVar(CLng(3)), CVar(CLng(var_88)))
  loc_1530532:       1 = var_94.Text
  loc_1530549:       var_130 = CVar(CLng(var_88)) 'Long
  loc_1530560:       var_1A0 = Me.FGrid.TextMatrix)
  loc_1530587:       var_234 = Me.FGrid.TextMatrix)
  loc_153059E:       Proc_183_7_EB0C44(var_314, MemVar_1F920EC, var_234, CVar(CLng(3)), CVar(CLng(var_88)), var_1A0)
  loc_15305A7:       Set var_348 = Me.TopCtrl1
  loc_15305AD:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(CVar(CLng(4)))
  loc_15305FB:       var_AC = "Insert Into CatalogMast(Code,Name,RestCode,ItemCatCode,ItemCode,Site_Code,U_Name,U_EntDt,U_AE,Category,Logsite_Code) Values('" & global_84
  loc_1530608:       var_108 = CVar(var_AC & "','") & Trim(CVar(var_B4)) 
  loc_1530646:       var_254 = var_108 & "','" & CVar(global_56) & "','" & CVar(CStr(var_1A0)) & "','" & CVar(CStr(var_234)) 
  loc_1530675:       var_2F4 = var_254 & "','" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "'," 
  loc_15306B6:       unk_4CE612.Execute CStr(var_2F4 & var_314 & ",'" & IIf((CStr(var_358) = "Add"), "A", "E") & "','Y','" & CVar(MemVar_1F92078) & "')"), var_44C, -1
  loc_1530716:     End If
  loc_1530719:   Next var_110 'Integer
  loc_1530743:   For var_454 = 1 To CInt((CLng(Me.FGrid1.Rows) - 2)): var_88 = var_454 'Integer
  loc_153074D:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_1530755:     var_120 = CVar(CLng(3)) 'Long
  loc_1530775:     var_F8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_153077D:     var_140 = vbNullString
  loc_153078B:     var_180 = CVar(CLng(var_88)) 'Long
  loc_1530793:     var_1D0 = CVar(CLng(3)) 'Long
  loc_15307A2:     var_150 = Me.FGrid1.TextMatrix)
  loc_15307BA:     var_2A4 = (CDbl(Val(CStr(var_150))) = CDbl(0))
  loc_1530825:     If CBool(CVar(CLng(var_88)) Or CVar(CLng(2)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_153082C:       var_C4 = CVar(CLng(var_88)) 'Long
  loc_1530834:       var_120 = CVar(CLng(2)) 'Long
  loc_153087A:       MsgBox(CVar("Please enter the choose limit of " & CStr(Me.FGrid1.TextMatrix)) & "."), &H40, "Catalog Master...", var_108, var_150)
  loc_153089A:       var_C4 = CVar(CLng(var_88)) 'Long
  loc_15308A2:       var_120 = CVar(CLng(3)) 'Long
  loc_15308AB:       var_A4 = CVar(CStr(0)) 'String
  loc_15308B3:       Set var_90 = Me.FGrid1
  loc_15308B9:       LateIdCallSt
  loc_15308CD:       unk_4CE612.RollbackTrans
  loc_15308D2:       Exit Sub
  loc_15308D3:     End If
  loc_15308D7:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_15308DF:     var_120 = CVar(CLng(2)) 'Long
  loc_153091B:     If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1530964:       Set var_94 = Me.FGrid1
  loc_153097D:       var_45C = Val(CStr(var_94.TextMatrix)))
  loc_153098B:       Proc_6_7_F25D88(var_254, MemVar_1F920EC, var_45C, CVar(CLng(3)), CVar(CLng(var_88)), CVar(CLng(1)), CVar(CLng(var_88)), CVar(CLng(1)))
  loc_15309A7:       var_AC = "Insert Into GroupCatalog(CatCode,ItemcatCode,Limit,U_Name,Site_Code,U_EntDt,U_AE,LogSite_Code) Values('" & global_84
  loc_15309AE:       var_108 = CVar(var_AC & "','") 'String
  loc_15309EE:       var_234 = var_108 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "'," & CVar(var_45C) & ",'" & CVar(MemVar_1F920C8) & "','" & CVar(MemVar_1F92078) 
  loc_1530A28:       unk_4CE612.Execute CStr(var_234 & "'," & var_254 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_2F4, -1
  loc_1530A68:     End If
  loc_1530A6B:   Next var_454 'Integer
  loc_1530A76:   unk_4CE612.CommitTrans
  loc_1530A81:   var_8C = global_84
  loc_1530A87: Else
  loc_1530A92:   Set var_90 = Me.Txt
  loc_1530A98:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1530AC1:   If (Proc_183_19_E8DAFC(var_94, "Catalog Name") = 0) Then
  loc_1530ACB:     Call Txt_GotFocus(CInt(0))
  loc_1530AD0:     Exit Sub
  loc_1530AD1:   End If
  loc_1530AD1:   var_C4 = 1
  loc_1530ADA:   var_120 = 2
  loc_1530AF8:   var_E4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1530AFE:   var_F8 = Trim(var_E4)
  loc_1530B1A:   If (var_F8 = vbNullString) Then
  loc_1530B30:     var_A4 = "Fill Item Name "
  loc_1530B36:     MsgBox(var_A4, 0, var_E4, var_F8, var_108)
  loc_1530B59:     Me.FGrid.Row = 1
  loc_1530B65:     Set var_90 = Me.FGrid
  loc_1530B7A:     var_C4 = CVar(CLng("14737632")) 'Long
  loc_1530B89:     Me.FGrid.CellBackColor = var_C4
  loc_1530B91:     Exit Sub
  loc_1530B92:   End If
  loc_1530B95:   Call Proc_121_66_10628C4(var_AE, FGrid.DispID_8001, var_120)
  loc_1530BA0:   If (var_AE = &HFF) Then
  loc_1530BA3:     Exit Sub
  loc_1530BA4:   End If
  loc_1530BA8:   Set var_90 = Me.TopCtrl1
  loc_1530BAE:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_C4)
  loc_1530BC7:   If (CStr(var_94) = "Add") Then
  loc_1530BD0:     var_D4 = 0
  loc_1530BED:     var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From CatalogMast WHERE SITE_CODE='" & MemVar_1F92070
  loc_1530BFD:     unk_4CE612.Execute CStr(var_94) & "'", var_A4, -1
  loc_1530C05:     var_90 = var_90.Fields
  loc_1530C0D:     var_D4 = var_94.Item(var_94)
  loc_1530C15:     var_A8 = var_A8.Value
  loc_1530C4E:     var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1530C74:     var_E4 = Format(CStr(var_E4), "000")
  loc_1530C7C:     var_108 = (1 + var_E4)
  loc_1530C87:     global_84 = CStr(var_108)
  loc_1530C9C:   Else
  loc_1530CB9:     var_94 = Me.Fields.Item("SearchCode")
  loc_1530CC1:     var_A4 = var_94.Value
  loc_1530CD0:     global_84 = CStr(var_A4)
  loc_1530CE1:   End If
  loc_1530CEC:   Set var_90 = Me.TxtGrid
  loc_1530CF2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_94, 0)
  loc_1530CFA:   var_94.Visible = True
  loc_1530D11:   Set var_90 = Me.TxtGrid
  loc_1530D17:   Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_94, 0)
  loc_1530D1F:   var_94.Visible = var_F8
  loc_1530D2B:   Call Proc_121_63_EBBD50(var_E4)
  loc_1530D32:   var_86 = &HFF
  loc_1530D3E:   unk_4CE612.BeginTrans var_10C
  loc_1530D61:   var_B4 = "Delete From CatalogMast Where Code='" & global_84 & "'"
  loc_1530D6A:   unk_4CE612.Execute var_B4, var_A4, -1
  loc_1530DA1:   For var_460 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_88 = var_460 'Integer
  loc_1530DAB:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_1530DEF:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1530E00:       Set var_90 = Me.Txt
  loc_1530E06:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, CVar(CLng(3)))
  loc_1530E0E:       var_C4 = var_94.Text
  loc_1530E25:       var_130 = CVar(CLng(var_88)) 'Long
  loc_1530E3C:       var_1A0 = Me.FGrid.TextMatrix)
  loc_1530E63:       var_234 = Me.FGrid.TextMatrix)
  loc_1530E7A:       Proc_183_7_EB0C44(var_314, MemVar_1F920EC, var_234, CVar(CLng(3)), CVar(CLng(var_88)), var_1A0)
  loc_1530E83:       Set var_348 = Me.TopCtrl1
  loc_1530E89:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(CVar(CLng(4)))
  loc_1530ED7:       var_AC = "Insert Into CatalogMast(Code,Name,RestCode,ItemCatCode,ItemCode,Site_Code,U_Name,U_EntDt,U_AE,lOGsITE_cODE) Values('" & global_84
  loc_1530F22:       var_254 = CVar(var_AC & "','") & Trim(CVar(var_B4)) & "','" & CVar(global_56) & "','" & CVar(CStr(var_1A0)) & "','" & CVar(CStr(var_234)) 
  loc_1530F68:       var_3C8 = var_254 & "','" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "'," & var_314 & ",'" & IIf((CStr(var_358) = "Add"), "A", "E") 
  loc_1530F92:       unk_4CE612.Execute CStr(var_3C8 & "','" & CVar(MemVar_1F92078) & "')"), var_44C, -1
  loc_1530FF2:     End If
  loc_1530FF5:   Next var_460 'Integer
  loc_1531000:   unk_4CE612.CommitTrans
  loc_153101E:   var_C4 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_153102D:   Me.FGrid1.Rows = "','"
  loc_1531042:   var_8C = global_84
  loc_1531045: End If
  loc_1531047: var_86 = 0
  loc_1531055: Me.Requery -1
  loc_1531065: Me.Requery -1
  loc_1531075: Me.Requery -1
  loc_153109F: Me.Find "SearchCode ='" & var_8C & "'", 0, 1
  loc_15310AB: Call Proc_121_60_13E23E4("','")
  loc_15310B4: Set var_90 = Me.TopCtrl1
  loc_15310BA: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_86)
  loc_15310D3: If (CStr() = "Add") Then
  loc_15310D6:   Call TopCtrl1_UnknownEvent_A()
  loc_15310DB:   Exit Sub
  loc_15310DC: End If
  loc_15310FF: Call Proc_121_62_E79AF4(Proc_5_1_100CB50("INI", Me))
  loc_153110A: Call Proc_121_63_EBBD50(global_76)
  loc_153110F: Exit Sub
  loc_1531110: ' Referenced from: 1530200
  loc_1531116: If (var_86 = &HFF) Then
  loc_153111F:   unk_4CE612.RollbackTrans
  loc_1531124: End If
  loc_1531124: Proc_6_60_E62BC4()
  loc_1531129: Exit Sub
End Sub

Private Sub Form_Load() '128E07C
  'Data Table: 4CE5E8
  Dim var_98 As Variant
  Dim var_C0 As Variant
  Dim var_C4 As Variant
  Dim var_CC As DataGrid
  Dim var_D0 As TextBox
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_DC As String
  Dim unk_4CE612 As Connection15
  Dim var_88 As Recordset15
  Dim var_F0 As String
  Dim Me As Recordset15
  loc_128DAA8: On Error Goto loc_128E076
  loc_128DAB5: Set var_AC = Me.TopCtrl1
  loc_128DABB: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000B("AEDP")
  loc_128DAC9: Call 0.Method_arg_50 (var_B0)
  loc_128DAD1: var_C0 = CVar(var_B0) 'String
  loc_128DAD9: Set var_AC = Me.TopCtrl1
  loc_128DADF: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030007(var_C0)
  loc_128DAF8: Set var_AC = Me.Txt
  loc_128DAFE: Call 0.Method_Form_Load0 (CInt(0), var_C4)
  loc_128DB1D: Me.DGHelp.Left = CVar(var_C4.Left)
  loc_128DB39: Set var_CC = Me.Txt
  loc_128DB3F: Call 0.Method_Form_Load0 (CInt(0), var_D0)
  loc_128DB47: var_D4 = var_D0.Height
  loc_128DB5A: Set var_AC = Me.Txt
  loc_128DB60: Call 0.Method_Form_Load0 (CInt(0), var_C4)
  loc_128DB78: var_98 = CVar(((var_C4.Top + var_D4) + CDbl(&H1E))) 'Single
  loc_128DB87: Me.DGHelp.Top = CVar(var_C4.Left)
  loc_128DBA0: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_128DBB8: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_128DBD3: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_128DBEA: Me.LblUser.Left = CDbl(13500)
  loc_128DC01: Me.LblUser.Top = CDbl(7800)
  loc_128DC18: Me.LblLDt.Top = CDbl(8160)
  loc_128DC29: Set var_AC = Me.LblLDt
  loc_128DC2F: var_AC.Left = CDbl(13500)
  loc_128DC5B: unk_4CE612.Execute "Select * from Enviro where LOGSite_Code='" & MemVar_1F92078 & "'", var_C0, -1
  loc_128DC66: Set var_88 = var_AC
  loc_128DC7C: var_C8 = var_88.RecordCount
  loc_128DC8A: If (var_C8 > 0) Then
  loc_128DCA7:   var_C4 = var_88.Fields.Item("CatalogLimit")
  loc_128DCAF:   var_C0 = var_C4.Value
  loc_128DCC9:   If (var_C0 = "Yes") Then
  loc_128DCCC:     var_98 = True
  loc_128DCD9:     Set var_AC = Me.OptCat
  loc_128DCDF:     Call 0.Method_Form_Load0 (0, var_C4)
  loc_128DD0E:     var_DC = "SELECT DISTINCT CA.Code As SearchCode,lOGSITE_CODE,SITE_CODE FROM CatalogMast CA WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CA.Category ='Y' ORDER BY Code"
  loc_128DD17:     unk_4CE612.Execute var_DC, var_C0, -1
  loc_128DD28:     Set global_76 = var_AC
  loc_128DD62:     var_F0 = "SELECT distinct Code,Name FROM CatalogMast WHERE Logsite_Code in ('" & MemVar_1F92078 & "','HO') AND RestCode='" & global_56
  loc_128DD72:     unk_4CE612.Execute var_F0 & "' And Category ='Y' ORDER BY Name", var_C0, -1
  loc_128DD83:     Set global_64 = var_AC
  loc_128DD9F:   Else
  loc_128DDAC:     Set var_AC = Me.OptCat
  loc_128DDB2:     Call 0.Method_Form_Load0 (1, var_C4, True, var_AC)
  loc_128DDE1:     var_DC = "SELECT DISTINCT CA.Code As SearchCode,LOGSITE_CODE,SITE_CODE FROM CatalogMast CA WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND RestCode='"
  loc_128DDFB:     unk_4CE612.Execute var_DC & global_56 & "' AND CA.Category <>'Y' OR CA.Category Is Null ORDER BY Code", var_C0, -1
  loc_128DE0C:     Set global_76 = var_AC
  loc_128DE4A:     var_F0 = "SELECT distinct Code,Name FROM CatalogMast WHERE Logsite_Code in ('" & MemVar_1F92078 & "','HO') AND RestCode='" & global_56
  loc_128DE5A:     unk_4CE612.Execute var_F0 & "' And Category <>'Y' OR Category Is Null ORDER BY Name", var_C0, -1
  loc_128DE6B:     Set global_64 = var_AC
  loc_128DE84:   End If
  loc_128DE84: End If
  loc_128DE92: Set var_AC = Me.Txt
  loc_128DE98: Call 0.Method_Form_Load0 (CInt(1), var_C4, var_C8, var_AC, var_AC)
  loc_128DEA0: OptCat.DispID_B = var_C4.Left
  loc_128DEB7: Me.DGItemGrp.Left = CVar(var_C8)
  loc_128DED3: Set var_CC = Me.Txt
  loc_128DED9: Call 0.Method_Form_Load0 (CInt(1), var_D0, var_D4, var_AC)
  loc_128DEE1: OptCat.DispID_B = var_D0.Height
  loc_128DEFA: Call 0.Method_Form_Load0 (CInt(1), var_C4, var_C8)
  loc_128DF02: var_98 = var_C4.Top
  loc_128DF12: var_98 = CVar(((var_C8 + var_D4) + CDbl(&H1E))) 'Single
  loc_128DF21: Me.DGItemGrp.Top = var_98
  loc_128DF4E: var_DC = "SELECT Distinct Code,Name From ItemGrp where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Type= 'Finish' and RestCode='"
  loc_128DF68: unk_4CE612.Execute var_DC & global_56 & "' Order by Name", var_C0, -1
  loc_128DF79: Set global_60 = Me.Txt
  loc_128DF9B: CVarUnk
  loc_128DFA0: VerifyVarObj
  loc_128DFA6: Set var_AC = Me.DGItemGrp
  loc_128DFAC: LateIdStAd
  loc_128DFC3: CVarUnk
  loc_128DFC8: VerifyVarObj
  loc_128DFCE: Set var_AC = Me.DGHelp
  loc_128DFD4: LateIdStAd
  loc_128DFF9: If (Me.RecordCount > 0) Then
  loc_128E010:   If (Me.EOF = &HFF) Then
  loc_128E019:     Me.MoveLast
  loc_128E01E:   End If
  loc_128E01E: End If
  loc_128E02A: Set var_AC = Me
  loc_128E041: Call Proc_121_62_E79AF4(Proc_5_1_100CB50("INI", var_AC, global_76, var_AC, global_64), var_AC, global_60)
  loc_128E055: Call 0.Method_arg_160 (var_AC, var_AC)
  loc_128E063: Call 0.Method_arg_164 (var_AC)
  loc_128E06B: Call Proc_121_55_11D36B8(var_AC)
  loc_128E070: Call Proc_121_60_13E23E4()
  loc_128E075: Exit Sub
  loc_128E076: ' Referenced from: 128DAA8
  loc_128E076: Proc_6_60_E62BC4()
  loc_128E07B: Exit Sub
End Sub

Private Sub Form_Resize() 'ED90B8
  'Data Table: 4CE5E8
  Dim var_8C As Label
  loc_ED9016: Call 0.Method_arg_50 (var_88)
  loc_ED9028: Me.LblFormCaption.Caption = var_88
  loc_ED9041: Me.LblFormCaption.Left = CDbl(0)
  loc_ED904D: Set var_A0 = Me.TopCtrl1
  loc_ED9053: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010006()
  loc_ED9060: Set var_8C = Me.TopCtrl1
  loc_ED9066: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004()
  loc_ED9080: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED909B: Call 0.Method_arg_100 (var_B8)
  loc_ED90AD: Me.LblFormCaption.Width = var_B8
  loc_ED90B5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5636C
  'Data Table: 4CE5E8
  loc_E56337: Set global_60 = Nothing
  loc_E56349: Set global_76 = Nothing
  loc_E5635B: Set global_64 = Nothing
  loc_E56367: MasterFormExit = 0
  loc_E5636A: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24FC4
  'Data Table: 4CE5E8
  loc_E24FA9: If (MasterFormExit = &HFF) Then
  loc_E24FB9:   Me.Global.Unload Me
  loc_E24FC1: End If
  loc_E24FC1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E3D9F8
  'Data Table: 4CE5E8
  loc_E3D9CC: On Error Goto loc_E3D9F0
  loc_E3D9E7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3D9EF: Exit Sub
  loc_E3D9F0: ' Referenced from: E3D9CC
  loc_E3D9F0: Proc_6_60_E62BC4(Shift)
  loc_E3D9F5: Exit Sub
End Sub

Private Sub DGItemGrp_UnknownEvent_9 'FE65B8
  'Data Table: 4CE5E8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE63F3: Me.DGItemGrp.Visible = False
  loc_FE6412: If (Me.RecordCount > 0) Then
  loc_FE644F:   Set var_B4 = Me.TxtGrid
  loc_FE6455:   Call 0.Method_DGItemGrp_UnknownEvent_90 (0, var_B8)
  loc_FE645D:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_FE6486:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE648E:   var_EC = CVar(CLng(2)) 'Long
  loc_FE64C1:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE64C9:   Set var_B8 = Me.FGrid
  loc_FE64CF:   LateIdCallSt
  loc_FE64FE:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE6506:   var_EC = CVar(CLng(3)) 'Long
  loc_FE6528:   var_B0 = Me.Fields.Item("Code")
  loc_FE6539:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE6541:   Set var_B8 = Me.FGrid
  loc_FE6547:   LateIdCallSt
  loc_FE6563: End If
  loc_FE656F: Set var_A8 = Me.TxtGrid
  loc_FE6575: Call 0.Method_DGItemGrp_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE657D: var_A4 = var_B0.Visible
  loc_FE658F: If (var_12E = &HFF) Then
  loc_FE659B:   Set var_A8 = Me.TxtGrid
  loc_FE65A1:   Call 0.Method_DGItemGrp_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FE65A9:   var_B0.SetFocus
  loc_FE65B5: End If
  loc_FE65B5: Exit Sub
End Sub

Private Sub DGItemGrp_UnknownEvent_1F 'EA67F8
  'Data Table: 4CE5E8
  Dim var_A8 As Variant
  loc_EA6778: Set var_88 = Me.DGItemGrp
  loc_EA67A2: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA67AA: Set var_BC = Me.DGItemGrp
  loc_EA67E6: Proc_6_138_106D6F8(Me.DGItemGrp, global_60, CInt(1), Me.FGPoint)
  loc_EA67F4: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3D874
  'Data Table: 4CE5E8
  loc_E3D868: If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_E3D86B:   Call DGItemGrp_UnknownEvent_9()
  loc_E3D870: End If
  loc_E3D870: Exit Sub
End Sub

Public Function MasterFormExitGet() '4CF538
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4CF547
  MasterFormExit = Value
End Sub

Public Function global_56Get() '4CF556
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4CF565
  global_56 = Value
End Sub

Public Sub FindMove(mDocId) 'E74700
  'Data Table: 4CE5E8
  Dim Me As Recordset15
  loc_E746AA: Me.MoveFirst
  loc_E746D4: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E746F4: If (Me.EOF = 0) Then
  loc_E746F7:   Call Proc_121_60_13E23E4(var_9C)
  loc_E746FC: End If
  loc_E746FC: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E97358
  'Data Table: 4CE5E8
  Dim Me As Recordset15
  loc_E972E6: On Error Goto loc_E9734F
  loc_E972EF: Me.MoveFirst
  loc_E97319: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97341: Proc_5_0_110649C(&HFF, Me, global_76)
  loc_E97349: Call Proc_121_60_13E23E4(0)
  loc_E9734E: Exit Sub
  loc_E9734F: ' Referenced from: E972E6
  loc_E9734F: Proc_6_60_E62BC4(var_A0)
  loc_E97354: Exit Sub
End Sub

Public Sub Proc_121_55_11D36B8
  'Data Table: 4CE5E8
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_B4 As Variant
  Dim var_B8 As TextBox
  Dim var_E4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_118 As String
  Dim var_12C As MSHFlexGrid
  loc_11D3263: Me.FGrid1.Left = CVar(CDbl(900))
  loc_11D327E: Me.FGrid.Top = CVar(CDbl(1200))
  loc_11D3299: Me.FGrid.Height = CVar(CDbl(7725))
  loc_11D32B4: Me.FGrid.Width = CVar(CDbl(6300))
  loc_11D32CA: Set var_A8 = Me.Txt
  loc_11D32D0: Call 0.Method_Proc_121_55_11D36B80 (CInt(1), var_AC)
  loc_11D32EF: Me.DGItemGrp.Left = CVar(var_AC.Left)
  loc_11D330B: Set var_B4 = Me.Txt
  loc_11D3311: Call 0.Method_Proc_121_55_11D36B80 (CInt(1), var_B8)
  loc_11D332C: Set var_A8 = Me.Txt
  loc_11D3332: Call 0.Method_Proc_121_55_11D36B80 (CInt(1), var_AC)
  loc_11D334A: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_11D3359: Me.DGItemGrp.Top = CVar(var_AC.Left)
  loc_11D337E: Me.FGrid1.Top = CVar(CDbl(1950))
  loc_11D3399: Me.FGrid1.Height = CVar(CDbl(6000))
  loc_11D33D2: var_94 = CVar(((CDbl(Me.FGrid1.Left) + CDbl(Me.FGrid1.Width)) + CDbl(150))) 'Single
  loc_11D33E1: Me.FGrid.Left = CVar(CDbl(6000))
  loc_11D33FA: Set var_E4 = Me.FGrid
  loc_11D3411: global_92 = CStr(CLng(var_E4.BackColor))
  loc_11D3427: var_E4.Cols = 5
  loc_11D342F: var_94 = CVar(CLng(0)) 'Long
  loc_11D3434: var_F8 = &H1C2
  loc_11D3440: LateIdCallSt
  loc_11D3448: var_94 = 0
  loc_11D3454: var_F8 = CVar(CLng(1)) 'Long
  loc_11D3459: var_118 = "Item Group"
  loc_11D3462: LateIdCallSt
  loc_11D346D: var_94 = CVar(CLng(1)) 'Long
  loc_11D3478: var_F8 = CVar(CInt(1)) 'Integer
  loc_11D347F: LateIdCallSt
  loc_11D348A: var_94 = CVar(CLng(1)) 'Long
  loc_11D348F: var_F8 = &H9C4
  loc_11D349B: LateIdCallSt
  loc_11D34A3: var_94 = 0
  loc_11D34AF: var_F8 = CVar(CLng(2)) 'Long
  loc_11D34B4: var_118 = "Item Name"
  loc_11D34BD: LateIdCallSt
  loc_11D34C8: var_94 = CVar(CLng(2)) 'Long
  loc_11D34D3: var_F8 = CVar(CInt(1)) 'Integer
  loc_11D34DA: LateIdCallSt
  loc_11D34E5: var_94 = CVar(CLng(2)) 'Long
  loc_11D34EA: var_F8 = &HBB8
  loc_11D34F6: LateIdCallSt
  loc_11D3501: var_94 = CVar(CLng(3)) 'Long
  loc_11D3506: var_F8 = 0
  loc_11D3512: LateIdCallSt
  loc_11D351D: var_94 = CVar(CLng(4)) 'Long
  loc_11D3522: var_F8 = 0
  loc_11D352E: LateIdCallSt
  loc_11D3538: Set var_E4 = Nothing 
  loc_11D3540: Set var_12C = Me.FGrid1
  loc_11D3557: global_92 = CStr(CLng(var_12C.BackColor))
  loc_11D356D: var_12C.Cols = 4
  loc_11D3572: var_94 = 0
  loc_11D357B: var_F8 = &H113
  loc_11D3587: LateIdCallSt
  loc_11D358F: var_94 = 0
  loc_11D359B: var_F8 = CVar(CLng(2)) 'Long
  loc_11D35A0: var_118 = "Group Name"
  loc_11D35A9: LateIdCallSt
  loc_11D35B4: var_94 = CVar(CLng(2)) 'Long
  loc_11D35BF: var_F8 = CVar(CInt(1)) 'Integer
  loc_11D35C6: LateIdCallSt
  loc_11D35D1: var_94 = CVar(CLng(2)) 'Long
  loc_11D35D6: var_F8 = &HC80
  loc_11D35E2: LateIdCallSt
  loc_11D35EA: var_94 = 0
  loc_11D35F6: var_F8 = CVar(CLng(1)) 'Long
  loc_11D35FB: var_118 = "Group Code"
  loc_11D3604: LateIdCallSt
  loc_11D360F: var_94 = CVar(CLng(1)) 'Long
  loc_11D361A: var_F8 = CVar(CInt(1)) 'Integer
  loc_11D3621: LateIdCallSt
  loc_11D362C: var_94 = CVar(CLng(1)) 'Long
  loc_11D3631: var_F8 = 0
  loc_11D363D: LateIdCallSt
  loc_11D3645: var_94 = 0
  loc_11D3651: var_F8 = CVar(CLng(3)) 'Long
  loc_11D3656: var_118 = "M.Limit"
  loc_11D365F: LateIdCallSt
  loc_11D366A: var_94 = CVar(CLng(3)) 'Long
  loc_11D3675: var_F8 = CVar(CInt(4)) 'Integer
  loc_11D367C: LateIdCallSt
  loc_11D3687: var_94 = CVar(CLng(3)) 'Long
  loc_11D368C: var_F8 = &H384
  loc_11D3698: LateIdCallSt
  loc_11D36AC: var_12C.Rows = 1
  loc_11D36B3: Set var_12C = Nothing 
  loc_11D36B7: Exit Sub
End Sub

Public Sub Proc_121_56_FE0E40(arg_C) 'FE0E40
  'Data Table: 4CE5E8
  Dim var_8C As Recordset15
  loc_FE0C61: Set var_8C = arg_C 
  loc_FE0C89: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FE0CB5: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_FE0CE1: var_8C.Fields.Append "ItemName", &HC8, &H23
  loc_FE0D0D: var_8C.Fields.Append "Remark", &HC8, &H32
  loc_FE0D39: var_8C.Fields.Append "HFontBold", &HC8, 1
  loc_FE0D65: var_8C.Fields.Append "ItemName1", &HC8, &H23
  loc_FE0D91: var_8C.Fields.Append "Remark1", &HC8, &H64
  loc_FE0DBD: var_8C.Fields.Append "HFontBold1", &HC8, 1
  loc_FE0DE9: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FE0DF9: var_8C.CursorType = 3
  loc_FE0E06: var_8C.LockType = 3
  loc_FE0E25: var_8C.Open var_A0, var_B0, -1
  loc_FE0E2C: Set var_8C = Nothing 
  loc_FE0E33: Set var_88 = arg_C 
  loc_FE0E37: Proc_121_56_FE0E40 = -1
  loc_FE0E3E: If (&H20 > -1) Then Exit Sub
  loc_FE0E3E: End If
End Sub

Public Sub Proc_121_57_11432F4
  'Data Table: 4CE5E8
  Dim var_90 As String
  Dim var_98 As Variant
  Dim var_A4 As String
  Dim unk_4CE612 As Connection15
  Dim var_8C As Recordset15
  Dim var_B8 As Variant
  Dim var_94 As Variant
  Dim var_CC As Variant
  Dim var_C8 As Variant
  Dim var_11C As Variant
  loc_1142F9F: var_90 = "SELECT ItemMast.Code as ItemCode, ItemMast.Name as ItemName, ItemGrp.Name as ItemGrpName,ItemGrp.Code as ItemGrpCode FROM ItemMast LEFT JOIN ItemGrp ON ItemGrp.Code = ItemMast.ItemGroup WHERE ItemMast.RestCode='" & global_56
  loc_1142FB7: Set var_94 = Me.Txt
  loc_1142FBD: Call 0.Method_Proc_121_57_11432F40 (CInt(1), var_98, var_9C, var_90 & "' and ItemMast.ItemGroup='")
  loc_1142FC5: var_C8 = var_98.Tag
  loc_1142FCE: var_A4 = -1 & var_9C
  loc_1142FDE: unk_4CE612.Execute var_A4 & "'", var_CC, 
  loc_1142FE9: Set var_8C = var_CC
  loc_1143005: ' Referenced from: 11432CF
  loc_114300B: var_CE = var_8C.EOF
  loc_1143014: If Not(var_CE) Then
  loc_1143087:   var_11C = var_8C.Fields.Item("ItemName").Value
  loc_11430A7:   Call Proc_121_65_F811C8(CStr(var_8C.Fields.Item("ItemGrpName").Value), CStr(var_8C.Fields.Item("ItemCode").Value))
  loc_11430D3:   If (var_CE = &HFF) Then
  loc_11430EF:     var_B8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11430FE:     Me.FGrid.Row = "ItemGrpName"
  loc_1143111:     Set var_120 = Me.FGrid
  loc_1143114:     var_B8 = vbNullString
  loc_114316D:     var_11C = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ItemGrpName")), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000)) 'String
  loc_1143174:     LateIdCallSt
  loc_11431D4:     var_11C = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ItemGrpCode")), CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), var_120)) 'String
  loc_11431DB:     LateIdCallSt
  loc_114323B:     var_11C = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ItemCode")), CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_120, var_11C)) 'String
  loc_1143242:     LateIdCallSt
  loc_11432A2:     var_11C = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ItemName")), CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)), var_120, var_11C)) 'String
  loc_11432A9:     LateIdCallSt
  loc_11432C3:     Set var_120 = Nothing 
  loc_11432C7:   End If
  loc_11432CA:   var_8C.MoveNext
  loc_11432CF:   GoTo loc_1143005
  loc_11432D2: End If
  loc_11432E9: Set var_8C = Nothing
  loc_11432EC: Proc_121_57_11432F4 = CInt(var_8C.RecordCount)
End Sub

Public Sub Proc_121_58_E42110
  'Data Table: 4CE5E8
  loc_E420EC: Set var_88 = Me.TopCtrl1
  loc_E420F2: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_E4210B: If (CStr() = "Browse") Then
  loc_E4210E:   Exit Sub
  loc_E4210F: End If
  loc_E4210F: Exit Sub
End Sub

Public Sub Proc_121_59_1269CAC(arg_C) '1269CAC
  'Data Table: 4CE5E8
  Dim var_94 As Integer
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_118 As String
  Dim var_92 As Integer
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_144 As Variant
  Dim var_148 As Long
  loc_1269723: var_94 = arg_C
  loc_126972C: If (var_94 = 0) Then
  loc_1269742:   var_AC = CLng(Me.FGrid.Col)
  loc_1269752:   If (var_AC = CLng(2)) Then
  loc_126975E:     Set var_98 = Me.OptCat
  loc_1269764:     Call 0.Method_Proc_121_59_1269CAC0 (0, var_B0)
  loc_126976C:     var_B0.Value
  loc_1269782:     If (CBool(var_AC) = &HFF) Then
  loc_1269798:       var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12697A0:       var_E4 = CVar(CLng(3)) 'Long
  loc_12697B1:       Set var_98 = Me.TxtGrid
  loc_12697B7:       Call 0.Method_Proc_121_59_1269CAC0 (0, var_B0, var_F8)
  loc_12697BF:       var_E4 = var_B0.Text
  loc_12697C7:       var_108 = CVar(var_F8) 'String
  loc_12697CF:       Set var_11C = Me.FGrid1
  loc_12697D5:       LateIdCallSt
  loc_12697F4:       Proc_121_59_1269CAC = &HFF
  loc_12697FA:     End If
  loc_126981A:     var_122 = Me.EOF
  loc_1269848:     Set var_98 = Me.TxtGrid
  loc_126984E:     Call 0.Method_Proc_121_59_1269CAC0 (arg_C, var_B0, var_F8, ((Me.RecordCount = 0) Or ((var_122 = &HFF) Or (Me.BOF = &HFF))))
  loc_1269856:     var_11C = var_B0.Text
  loc_126986E:     If (var_108 Or (var_F8 = vbNullString)) Then
  loc_1269884:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_126988C:       var_E4 = CVar(CLng(2)) 'Long
  loc_1269891:       var_118 = vbNullString
  loc_126989B:       Set var_B0 = Me.FGrid
  loc_12698A1:       LateIdCallSt
  loc_12698C6:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12698CE:       var_E4 = CVar(CLng(3)) 'Long
  loc_12698D3:       var_118 = vbNullString
  loc_12698DD:       Set var_B0 = Me.FGrid
  loc_12698E3:       LateIdCallSt
  loc_1269908:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1269910:       var_E4 = CVar(CLng(1)) 'Long
  loc_1269915:       var_118 = vbNullString
  loc_126991F:       Set var_B0 = Me.FGrid
  loc_1269925:       LateIdCallSt
  loc_126994A:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1269952:       var_E4 = CVar(CLng(4)) 'Long
  loc_1269957:       var_118 = vbNullString
  loc_1269961:       Set var_B0 = Me.FGrid
  loc_1269967:       LateIdCallSt
  loc_126997C:     Else
  loc_126997F:       Call Proc_121_64_FC04D0(var_122, var_B0, var_118, var_E4, var_C4, var_B0, var_118, var_E4)
  loc_126998A:       If (var_122 = 0) Then
  loc_1269992:         Proc_121_59_1269CAC = 0
  loc_1269998:       End If
  loc_12699AC:       var_92 = CInt(CLng(Me.FGrid.Row))
  loc_12699C8:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12699D0:       var_F4 = CVar(CLng(2)) 'Long
  loc_1269A03:       var_144 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1269A0B:       Set var_11C = Me.FGrid
  loc_1269A11:       LateIdCallSt
  loc_1269A40:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1269A48:       var_F4 = CVar(CLng(3)) 'Long
  loc_1269A7B:       var_144 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1269A83:       Set var_11C = Me.FGrid
  loc_1269A89:       LateIdCallSt
  loc_1269AB8:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1269AC0:       var_F4 = CVar(CLng(1)) 'Long
  loc_1269AF3:       var_144 = CVar(CStr(Me.Fields.Item("ItemCatName").Value)) 'String
  loc_1269AFB:       Set var_11C = Me.FGrid
  loc_1269B01:       LateIdCallSt
  loc_1269B30:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1269B38:       var_F4 = CVar(CLng(4)) 'Long
  loc_1269B5A:       var_B0 = Me.Fields.Item("ItemCatCode")
  loc_1269B6B:       var_144 = CVar(CStr(var_B0.Value)) 'String
  loc_1269B73:       Set var_11C = Me.FGrid
  loc_1269B79:       LateIdCallSt
  loc_1269B99:       var_C4 = CVar(CLng(var_92)) 'Long
  loc_1269BA1:       var_E4 = CVar(CLng(0)) 'Long
  loc_1269BAB:       var_A8 = CVar(CStr(var_92)) 'String
  loc_1269BB3:       Set var_98 = Me.FGrid
  loc_1269BB9:       LateIdCallSt
  loc_1269BC7:     End If
  loc_1269BC7:   End If
  loc_1269BCA: Else
  loc_1269BD0:   If (var_94 = 1) Then
  loc_1269BDD:     var_A8 = Me.FGrid1.Col
  loc_1269BE6:     var_148 = CLng(var_A8)
  loc_1269BF6:     If (var_148 = CLng(3)) Then
  loc_1269C08:       Call 0.Method_Proc_121_59_1269CAC0 (0, var_B0, var_148, Me.OptCat, var_A8, var_E4, var_C4)
  loc_1269C10:       var_B0.Value
  loc_1269C26:       If (CBool(var_11C) = &HFF) Then
  loc_1269C56:         Set var_98 = Me.TxtGrid
  loc_1269C5C:         Call 0.Method_Proc_121_59_1269CAC0 (arg_C, var_B0, var_F8, CVar(CLng(3)), CVar(CLng(Me.FGrid1.Row)), var_144)
  loc_1269C64:         var_F4 = var_B0.Text
  loc_1269C6C:         var_108 = CVar(var_F8) 'String
  loc_1269C74:         Set var_11C = Me.FGrid1
  loc_1269C7A:         LateIdCallSt
  loc_1269C99:         Proc_121_59_1269CAC = &HFF
  loc_1269C9F:       End If
  loc_1269C9F:     End If
  loc_1269C9F:   End If
  loc_1269C9F: End If
  loc_1269CA4: Proc_121_59_1269CAC = &HFF
End Sub

Public Sub Proc_121_60_13E23E4
  'Data Table: 4CE5E8
  Dim var_88 As Variant
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_AC As Field20
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim unk_4CE612 As Connection15
  Dim var_8C As Recordset15
  Dim var_BC As Variant
  Dim var_124 As Fields15
  Dim var_110 As Variant
  Dim var_90 As Recordset15
  Dim var_1EC As MSHFlexGrid
  Dim var_120 As Variant
  Dim var_128 As TextBox
  Dim var_92 As Integer
  loc_13E1A3C: On Error Goto loc_13E23DD
  loc_13E1A4B: Me.Frame1.Enabled = False
  loc_13E1A59: Proc_183_45_E5C118(global_76)
  loc_13E1A75: If (Me.RecordCount <= 0) Then
  loc_13E1A78:   Call Proc_121_61_FAB36C()
  loc_13E1A80: Else
  loc_13E1A8D:   var_CC = "SELECT CA.*, CA.U_AE,CA.U_Name,CA.U_EntDt,I.Name AS ItemName, IC.Name AS ItemCatName, Depart.Name as RestName,CA.RestCode as RestCode, CA.Category AS Category FROM ((CatalogMast AS CA LEFT JOIN ItemMast AS I ON CA.ItemCode = I.Code) LEFT JOIN ItemGrp AS IC ON I.ItemGroup = IC.Code) LEFT JOIN Depart ON CA.RestCode = Depart.Code Where CA.Code='"
  loc_13E1AD6:   unk_4CE612.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "' Order By IC.Name,I.Name"), var_120, -1
  loc_13E1AE1:   Set var_8C = var_124
  loc_13E1B0F:   If (var_8C.RecordCount > 0) Then
  loc_13E1B4C:     var_124 = var_8C.Fields
  loc_13E1BB5:     var_18C = IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_124.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_13E1BFA:     Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_Name")), var_18C)))
  loc_13E1C6C:     var_124 = var_8C.Fields
  loc_13E1C74:     var_128 = var_124.Item("U_AE")
  loc_13E1C8D:     var_120 = "entdt :   "
  loc_13E1CD5:     var_18C = IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_128)) = "E"), "Last Update :   ", var_120))
  loc_13E1D1A:     Me.LblLDt.Caption = CStr(var_18C & CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_EntDt")))))
  loc_13E1D8E:     If (var_8C.Fields.Item("Category").Value = "Y") Then
  loc_13E1D9E:       var_CC = "SELECT IG.Code AS Code, IG.Name AS GroupName, GC.Limit AS Limit FROM ItemGrp IG INNER JOIN GroupCatalog  GC ON IG.Code = GC.ItemCatCode WHERE GC.CatCode='"
  loc_13E1DC0:       var_AC = Me.Fields.Item("SearchCode")
  loc_13E1DE7:       unk_4CE612.Execute CStr(var_CC & var_AC.Value & "' Order By IG.Name"), var_120, -1
  loc_13E1DF2:       Set var_90 = var_124
  loc_13E1E0C:       var_A8 = True
  loc_13E1E19:       Set var_88 = Me.OptCat
  loc_13E1E1F:       Call 0.Method_Proc_121_60_13E23E40 (0, var_AC)
  loc_13E1E3D:       Call OptCat_UnknownEvent_9()
  loc_13E1E42:       Call Proc_121_55_11D36B8(0, 1, OptCat.DispID_B)
  loc_13E1E47:       ' Referenced from:   13E200A
  loc_13E1E56:       If Not(var_90.EOF) Then
  loc_13E1E5D:         Set var_1EC = Me.FGrid1
  loc_13E1E72:         var_A8 = CVar((CLng(var_1EC.Rows) + 1)) 'Long
  loc_13E1E7A:         var_1EC.Rows = var_A8
  loc_13E1E94:         var_A8 = CVar((CLng(var_1EC.Rows) - 1)) 'Long
  loc_13E1E9C:         var_EC = CVar(CLng(0)) 'Long
  loc_13E1EB5:         var_FC = CVar(CStr((CLng(var_1EC.Rows) - 1))) 'String
  loc_13E1EBC:         LateIdCallSt
  loc_13E1EDF:         var_CC = CVar((CLng(var_1EC.Rows) - 1)) 'Long
  loc_13E1F14:         var_FC = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("GroupName")), CVar(CLng(2)), var_CC, var_1EC, var_FC)) 'String
  loc_13E1F1B:         LateIdCallSt
  loc_13E1F32:         var_DC = var_1EC.Rows
  loc_13E1F41:         var_CC = CVar((CLng(var_DC) - 1)) 'Long
  loc_13E1F76:         var_FC = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Code")), CVar(CLng(1)), var_CC, var_1EC, var_FC)) 'String
  loc_13E1F7D:         LateIdCallSt
  loc_13E1F94:         var_FC = var_1EC.Rows
  loc_13E1FA3:         var_CC = CVar((CLng(var_FC) - 1)) 'Long
  loc_13E1FC7:         var_AC = var_90.Fields.Item("Limit")
  loc_13E1FD6:         Proc_6_48_EF4270(var_DC, CVar(var_AC), CVar(CLng(3)), var_CC, var_1EC)
  loc_13E1FDF:         var_120 = CVar(CStr(var_DC)) 'String
  loc_13E1FE6:         LateIdCallSt
  loc_13E1FFE:         Set var_1EC = Nothing 
  loc_13E2005:         var_90.MoveNext
  loc_13E200A:         GoTo loc_13E1E47
  loc_13E200D:       End If
  loc_13E2020:       Me.FGrid1.FixedRows = 1
  loc_13E202B:     Else
  loc_13E2038:       Set var_88 = Me.OptCat
  loc_13E203E:       Call 0.Method_Proc_121_60_13E23E40 (1, var_AC, True, var_1EC, var_120)
  loc_13E205C:       Call OptCat_UnknownEvent_9()
  loc_13E2061:     End If
  loc_13E209A:     Set var_124 = Me.Txt
  loc_13E20A0:     Call 0.Method_Proc_121_60_13E23E40 (CInt(0), var_128, CStr(var_8C.Fields.Item("Code").Value), 1, 1, OptCat.DispID_B)
  loc_13E20A8:     var_128.Tag = var_FC
  loc_13E20C4:     var_A8 = "Name"
  loc_13E20F7:     Set var_124 = Me.Txt
  loc_13E20FD:     Call 0.Method_Proc_121_60_13E23E40 (CInt(0), var_128, CStr(var_8C.Fields.Item(var_A8).Value), var_EC)
  loc_13E2105:     var_128.Text = var_A8
  loc_13E212A:     Me.FGrid.Redraw = False
  loc_13E2145:     Me.FGrid.Rows = 1
  loc_13E214F:     var_92 = 1
  loc_13E2152:     ' Referenced from:   13E2314
  loc_13E2161:     If Not(var_8C.EOF) Then
  loc_13E2164:       var_A8 = vbNullString
  loc_13E216E:       Set var_88 = Me.FGrid
  loc_13E2183:       Set var_1F0 = Me.FGrid
  loc_13E218A:       var_A8 = CVar(CLng(var_92)) 'Long
  loc_13E219C:       var_BC = CVar(CStr(var_92)) 'String
  loc_13E21A3:       LateIdCallSt
  loc_13E21E7:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ItemName")), CVar(CLng(2)), CVar(CLng(var_92)), var_1F0, CVar(var_8C.Fields.Item("ItemName")), CVar(CLng(0)))) 'String
  loc_13E21EE:       LateIdCallSt
  loc_13E2214:       var_A8 = "ItemCatName"
  loc_13E2239:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_A8)), CVar(CLng(1)), CVar(CLng(var_92)), var_1F0, var_DC, var_A8)) 'String
  loc_13E2240:       LateIdCallSt
  loc_13E2256:       var_CC = CVar(CLng(var_92)) 'Long
  loc_13E225E:       var_110 = CVar(CLng(3)) 'Long
  loc_13E228E:       var_DC = CVar(CStr(var_8C.Fields.Item("ItemCode").Value)) 'String
  loc_13E2295:       LateIdCallSt
  loc_13E22E4:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ItemCatCode")), CVar(CLng(4)), CVar(CLng(var_92)), var_1F0, var_DC, CVar(CLng(4)), CVar(CLng(var_92)))) 'String
  loc_13E22EB:       LateIdCallSt
  loc_13E22FF:       Set var_1F0 = Nothing 
  loc_13E2309:       var_92 = (var_92 + 1)
  loc_13E230F:       var_8C.MoveNext
  loc_13E2314:       GoTo loc_13E2152
  loc_13E2317:     End If
  loc_13E232A:     Me.FGrid.FixedRows = 1
  loc_13E2332:   End If
  loc_13E2340:   Me.FGrid.Redraw = True
  loc_13E234E:   If (var_92 = 1) Then
  loc_13E2364:     Me.FGrid.Rows = 1
  loc_13E238A:     var_BC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_92, var_1F0, var_DC, var_1F0))) 'String
  loc_13E2392:     Set var_AC = Me.FGrid
  loc_13E23AC:     var_A8 = 1
  loc_13E23BF:     Me.FGrid.FixedRows = var_A8
  loc_13E23C7:   End If
  loc_13E23C7: End If
  loc_13E23C7: Call Proc_121_63_EBBD50(FGrid.DispID_10000, var_BC, var_DC, FGrid.DispID_10000)
  loc_13E23D1: Set var_8C = Nothing
  loc_13E23D9: Set var_90 = Nothing
  loc_13E23DC: Exit Sub
  loc_13E23DD: ' Referenced from: 13E1A3C
  loc_13E23DD: Proc_6_60_E62BC4(var_A8, var_92)
  loc_13E23E2: Exit Sub
End Sub

Public Sub Proc_121_61_FAB36C
  'Data Table: 4CE5E8
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  loc_FAB1E4: Me.Frame1.Enabled = True
  loc_FAB1F2: global_88 = vbNullString
  loc_FAB204: Set var_8C = Me.Txt
  loc_FAB20A: Call 0.Method_Proc_121_61_FAB36CC (var_8E, var_86)
  loc_FAB21A: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FAB230:   Set var_8C = Me.Txt
  loc_FAB236:   Call 0.Method_Proc_121_61_FAB36C0 (CInt(var_86), var_98)
  loc_FAB23E:   var_98.Text = vbNullString
  loc_FAB25A:   Set var_8C = Me.Txt
  loc_FAB260:   Call 0.Method_Proc_121_61_FAB36C0 (CInt(var_86), var_98)
  loc_FAB268:   var_98.Tag = vbNullString
  loc_FAB277: Next var_92 'Byte
  loc_FAB290: Me.FGrid.Rows = 1
  loc_FAB2B6: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_FAB2BE: Set var_98 = Me.FGrid
  loc_FAB2EB: Me.FGrid.FixedRows = 1
  loc_FAB306: Me.FGrid1.Rows = 1
  loc_FAB32C: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid1, CInt(0), FGrid.DispID_10000))) 'String
  loc_FAB334: Set var_98 = Me.FGrid1
  loc_FAB361: Me.FGrid1.FixedRows = 1
  loc_FAB369: Exit Sub
End Sub

Public Sub Proc_121_62_E79AF4(arg_C) 'E79AF4
  'Data Table: 4CE5E8
  Dim var_98 As TextBox
  loc_E79AA2: Set var_8C = Me.Txt
  loc_E79AA8: Call 0.Method_Proc_121_62_E79AF4C (var_8E, var_86)
  loc_E79AB8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79ACE:   Set var_8C = Me.Txt
  loc_E79AD4:   Call 0.Method_Proc_121_62_E79AF40 (CInt(var_86), var_98)
  loc_E79ADC:   var_98.Enabled = arg_C
  loc_E79AEB: Next var_92 'Byte
  loc_E79AF1: Exit Sub
End Sub

Public Sub Proc_121_63_EBBD50
  'Data Table: 4CE5E8
  loc_EBBCC8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBBCDA:   Me.DGHelp.Visible = False
  loc_EBBCE2: End If
  loc_EBBCFE: If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_EBBD10:   Me.DGItemGrp.Visible = False
  loc_EBBD18: End If
  loc_EBBD34: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBBD46:   Me.FGPoint.Visible = False
  loc_EBBD4E: End If
  loc_EBBD4E: Exit Sub
End Sub

Public Sub Proc_121_64_FC04D0
  'Data Table: 4CE5E8
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC0353: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FC0358:   var_92 = 2 'Byte
  loc_FC035C: End If
  loc_FC0365: Set var_98 = Me.TxtGrid
  loc_FC036B: Call 0.Method_Proc_121_64_FC04D00 (0, var_B0)
  loc_FC038E: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC03C2: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC03E6:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC03E9:     GoTo loc_FC04BB
  loc_FC03EC:   End If
  loc_FC03F0:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC041A:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC0424:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC0459:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC047D:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC0496:     Set var_98 = Me.TxtGrid
  loc_FC049C:     Call 0.Method_Proc_121_64_FC04D00 (0, var_B0, CVar(CLng(var_92)))
  loc_FC04A4:     var_B0.SetFocus
  loc_FC04B5:     Proc_121_64_FC04D0 = 0
  loc_FC04BB:     ' Referenced from: FC03E9
  loc_FC04BB:   End If
  loc_FC04BE: Next var_D4 'Integer
  loc_FC04C8: Proc_121_64_FC04D0 = &HFF
End Sub

Public Sub Proc_121_65_F811C8
  'Data Table: 4CE5E8
  Dim var_A4 As Variant
  Dim var_F0 As Variant
  loc_F81086: var_92 = 2 'Byte
  loc_F810A9: var_8C = CStr(Ucase(Trim(arg_14)))
  loc_F810CC: var_A4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_F810DB: Me.FGrid.Row = arg_14
  loc_F8110F: For var_E0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_E0 'Integer
  loc_F81133:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_F81136:     GoTo loc_F811B4
  loc_F81139:   End If
  loc_F8113D:   var_A4 = CVar(CLng(var_88)) 'Long
  loc_F81147:   var_F0 = CVar(CLng(var_92)) 'Long
  loc_F811A6:   If ((var_8C = CStr(Ucase(CVar(CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))))))) And (CStr(Ucase(CVar(CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix)))))))) <> vbNullString)) Then
  loc_F811AE:     Proc_121_65_F811C8 = 0
  loc_F811B4:     ' Referenced from: F81136
  loc_F811B4:   End If
  loc_F811B7: Next var_E0 'Integer
  loc_F811C1: Proc_121_65_F811C8 = &HFF
End Sub

Public Sub Proc_121_66_10628C4
  'Data Table: 4CE5E8
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_4CE612 As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_106267B: If (Me.RecordCount = 0) Then
  loc_106267E:   Proc_121_66_10628C4 = 
  loc_1062684: End If
  loc_1062688: Set var_90 = Me.TopCtrl1
  loc_106268E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1062696: var_A4 = CStr()
  loc_10626A7: If (var_A4 = "Add") Then
  loc_10626D7:   Set var_90 = Me.Txt
  loc_10626DD:   Call 0.Method_Proc_121_66_10628C40 (CInt(0), var_A8, var_A4, "Select Count(*) From CatalogMast Where Name='", var_A0, -1)
  loc_10626FE:   unk_4CE612.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_106270E:    = var_C8.Item()
  loc_1062716:    = var_DC.Value
  loc_1062743:   If (var_A8.Text.Fields > 0) Then
  loc_1062761:     var_A0 = "Duplicate Name"
  loc_1062767:     MsgBox(var_A0, &H40, "Information", var_10C, var_12C)
  loc_1062782:     Set var_90 = Me.Txt
  loc_1062788:     Call 0.Method_Proc_121_66_10628C40 (CInt(0))
  loc_1062790:     var_A8.SetFocus
  loc_10627A1:     Proc_121_66_10628C4 = &HFF
  loc_10627A7:   End If
  loc_10627AA: Else
  loc_10627D7:   Set var_90 = Me.Txt
  loc_10627DD:   Call 0.Method_Proc_121_66_10628C40 (CInt(0), var_A8, var_A4, "Select Count(*) From CatalogMast Where Name='", var_A0, -1)
  loc_106280F:   unk_4CE612.Execute var_C8 & var_A4 & "' And Name<>'" & global_88 & "'", 0, var_DC
  loc_106281F:    = var_C8.Item(var_A8)
  loc_1062827:    = var_DC.Value
  loc_1062858:   If (var_A8.Text.Fields > 0) Then
  loc_106287C:     MsgBox("Duplicate Name", &H40, "Information", var_10C, var_12C)
  loc_1062897:     Set var_90 = Me.Txt
  loc_106289D:     Call 0.Method_Proc_121_66_10628C40 (CInt(0))
  loc_10628A5:     var_A8.SetFocus
  loc_10628B6:     Proc_121_66_10628C4 = &HFF
  loc_10628BC:   End If
  loc_10628BC: End If
  loc_10628BC: Proc_121_66_10628C4 = var_A8
End Sub

Public Sub Proc_121_67_11A4C44
  'Data Table: 4CE5E8
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D8 As Variant
  Dim var_C8 As String
  Dim unk_4CE612 As Connection15
  Dim var_88 As Recordset15
  Dim var_170 As Variant
  Dim var_108 As Variant
  loc_11A485F: Me.FGrid.Rows = 1
  loc_11A4867: var_9C = vbNullString
  loc_11A4871: Set var_B0 = Me.FGrid
  loc_11A4895: Me.FGrid.FixedRows = 1
  loc_11A48C3: For var_C4 = var_8A To CInt((CLng(Me.FGrid1.Rows) - 1)): var_8A = var_C4 'Integer
  loc_11A48CD:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_11A48D2:   var_D8 = 1
  loc_11A4912:   var_C8 = "SELECT ItemMast.Code as ItemCode, ItemMast.Name as ItemName, ItemGrp.Name as ItemGrpName,ItemGrp.Code as ItemGrpCode FROM ItemMast LEFT JOIN ItemGrp ON ItemGrp.Code = ItemMast.ItemGroup WHERE ItemMast.RestCode='" & global_56
  loc_11A4936:   unk_4CE612.Execute CStr(CVar(var_C8 & "' and ItemMast.ItemGroup='") & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "'"), var_16C, -1
  loc_11A4941:   Set var_88 = var_170
  loc_11A4963:   ' Referenced from: 11A4C2D
  loc_11A4969:   var_172 = var_88.EOF
  loc_11A4972:   If Not(var_172) Then
  loc_11A498F:     var_170 = var_88.Fields.Item("ItemGrpName")
  loc_11A4A05:     Call Proc_121_65_F811C8(CStr(var_170.Value), CStr(var_88.Fields.Item("ItemCode").Value), CStr(var_88.Fields.Item("ItemName").Value), var_172, var_170)
  loc_11A4A31:     If (var_172 = &HFF) Then
  loc_11A4A4D:       var_9C = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11A4A5C:       Me.FGrid.Row = "ItemGrpName"
  loc_11A4A6F:       Set var_18C = Me.FGrid
  loc_11A4A72:       var_9C = vbNullString
  loc_11A4AA6:       var_9C = "ItemGrpName"
  loc_11A4ACB:       var_108 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_9C)), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000, var_9C)) 'String
  loc_11A4AD2:       LateIdCallSt
  loc_11A4B32:       var_108 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemGrpCode")), CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), var_18C, var_108)) 'String
  loc_11A4B39:       LateIdCallSt
  loc_11A4B99:       var_108 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemCode")), CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_18C, var_108)) 'String
  loc_11A4BA0:       LateIdCallSt
  loc_11A4C00:       var_108 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)), var_18C, var_108)) 'String
  loc_11A4C07:       LateIdCallSt
  loc_11A4C21:       Set var_18C = Nothing 
  loc_11A4C25:     End If
  loc_11A4C28:     var_88.MoveNext
  loc_11A4C2D:     GoTo loc_11A4963
  loc_11A4C30:   End If
  loc_11A4C35:   Set var_88 = Nothing
  loc_11A4C3B: Next var_C4 'Integer
  loc_11A4C40: Exit Sub
End Sub
