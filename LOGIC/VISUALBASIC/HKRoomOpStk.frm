VERSION 5.00
Begin VB.Form HKRoomOpStk
  Caption = "Room Op.Stock Entry"
  BackColor = &HBDD7D2&
  ForeColor = &H40&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 9015
  ClientHeight = 4755
  LockControls = -1  'True
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9015
    Height = 450
    TabIndex = 17
  End
  Begin TextBox Txt
    Index = 5
    Left = 4170
    Top = 945
    Width = 780
    Height = 240
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGItem
    Left = 60
    Top = 4410
    Width = 7440
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 4
    Left = 5355
    Top = 750
    Width = 2940
    Height = 225
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 40
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
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
    Left = 1110
    Top = 490
    Width = 2865
    Height = 240
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
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
    Left = 5355
    Top = 490
    Width = 1200
    Height = 240
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 8
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
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
    Left = 7050
    Top = 490
    Width = 1245
    Height = 240
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
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
    Left = 1050
    Top = 2985
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    Left = 1110
    Top = 750
    Width = 2865
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGRoom
    Left = 5325
    Top = 4095
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin MSHFlexGrid FGrid
    Left = 75
    Top = 1215
    Width = 8280
    Height = 2805
    TabIndex = 1
  End
  Begin DataGrid DGVType
    Left = 975
    Top = 4095
    Width = 4215
    Height = 3645
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin Label Label1
    Caption = "Vr. No."
    Index = 3
    ForeColor = &H404040&
    Left = 4005
    Top = 505
    Width = 585
    Height = 210
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "V.Type "
    Index = 4
    ForeColor = &H404040&
    Left = 105
    Top = 505
    Width = 660
    Height = 210
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Date"
    Index = 1
    ForeColor = &H404040&
    Left = 6615
    Top = 505
    Width = 390
    Height = 210
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H404040&
    Left = 4620
    Top = 490
    Width = 645
    Height = 240
    TabIndex = 7
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "DocID"
    Index = 12
    ForeColor = &H404040&
    Left = 4620
    Top = 757
    Width = 555
    Height = 210
    Visible = 0   'False
    TabIndex = 6
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Room No"
    Index = 0
    ForeColor = &H404040&
    Left = 105
    Top = 757
    Width = 750
    Height = 210
    TabIndex = 5
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "HKRoomOpStk"

Private global_80 As Integer
Private global_82 As Integer
Private MasterFormExit As Integer
Private global_128 As Integer

Private Sub FGrid_UnknownEvent_0 'EA4278
  'Data Table: 49835C
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA4213: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_112)) Then
  loc_EA4229:   Me.FGrid.Col = 1
  loc_EA4231: End If
  loc_EA4244: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA4257: Set var_88 = Me.TxtGrid
  loc_EA425D: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA4265: var_BC.Visible = False
  loc_EA4271: Call Proc_49_50_EBCCC8()
  loc_EA4276: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69ED0
  'Data Table: 49835C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E69E8C: Set var_88 = Me.TxtGrid
  loc_E69E92: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E69EAC: If (var_8C.Visible = 0) Then
  loc_E69EC5:   Me.FGrid.BackColorSel = CVar(CLng(global_112))
  loc_E69ECD: End If
  loc_E69ECD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFDFBC
  'Data Table: 49835C
  Dim var_1B8E As Integer
  loc_DFDFB4: Call Proc_49_44_E42688()
  loc_DFDFB9: Exit Sub
  loc_DFDFBA: var_1B8E = 
End Sub

Private Sub FGrid_UnknownEvent_A '113DA88
  'Data Table: 49835C
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_113D700: Set var_88 = Me.TopCtrl1
  loc_113D706: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_113D74B: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_113D754:   Call Form_KeyDown(KeyCode, Shift)
  loc_113D759: End If
  loc_113D75D: Set var_88 = Me.TopCtrl1
  loc_113D763: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_113D77C: If (CStr() = "Browse") Then
  loc_113D77F:   Exit Sub
  loc_113D780: End If
  loc_113D7F4: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_113D80D:   Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_113D81D:   var_9C = "+{Tab}"
  loc_113D823:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_113D82D:   KeyCode = 0
  loc_113D833: Else
  loc_113D83D:   var_B0 = Me.FGrid.Rows
  loc_113D88A:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_113D8A3:     Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_113D8B0:     Call Proc_49_51_F0DD04(0, var_B0, KeyCode)
  loc_113D8B5:   End If
  loc_113D8B5: End If
  loc_113D8BB: global_80 = KeyCode
  loc_113D8E1: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_113D905: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_113D91B:   var_EC = CLng(Me.FGrid.Col)
  loc_113D92B:   If (var_EC = CLng(1)) Then
  loc_113D941:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113D959:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_113D95E:     var_11C = vbNullString
  loc_113D968:     Set var_B4 = Me.FGrid
  loc_113D96E:     LateIdCallSt
  loc_113D999:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113D9A1:     var_FC = CVar(CLng(6)) 'Long
  loc_113D9A6:     var_11C = vbNullString
  loc_113D9B0:     Set var_A0 = Me.FGrid
  loc_113D9B6:     LateIdCallSt
  loc_113D9DB:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113D9E3:     var_FC = CVar(CLng(3)) 'Long
  loc_113D9E8:     var_11C = vbNullString
  loc_113D9F2:     Set var_A0 = Me.FGrid
  loc_113D9F8:     LateIdCallSt
  loc_113DA0D:   Else
  loc_113DA14:     If (var_EC = CLng(3)) Then
  loc_113DA2A:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113DA42:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_113DA47:       var_11C = vbNullString
  loc_113DA51:       Set var_B4 = Me.FGrid
  loc_113DA57:       LateIdCallSt
  loc_113DA6F:     End If
  loc_113DA6F:   End If
  loc_113DA6F: End If
  loc_113DA75: If (KeyCode = &HD) Then
  loc_113DA7D:   global_82 = 0
  loc_113DA80: End If
  loc_113DA82: KeyCode = 0
  loc_113DA85: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0C548
  'Data Table: 49835C
  loc_E0C539: Call FGrid_UnknownEvent_C()
  loc_E0C543: global_82 = 0
  loc_E0C546: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1012C8C
  'Data Table: 49835C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1012A7C: Set var_88 = Me.TopCtrl1
  loc_1012A82: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1012A9B: If (CStr() = "Browse") Then
  loc_1012A9E:   Exit Sub
  loc_1012A9F: End If
  loc_1012AB2: var_A0 = CLng(Me.FGrid.Col)
  loc_1012AC2: If (var_A0 = CLng(1)) Then
  loc_1012AC9:   Set var_C4 = Me.FGrid
  loc_1012AED:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_1012B1A:   Set var_B4 = var_C4
  loc_1012B2C:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1012B54:   Set var_88 = Me.TxtGrid
  loc_1012B5A:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1012B62:   0 = var_B4.Text
  loc_1012B7B:   If (Len(var_9C) <= 1) Then
  loc_1012B8A:     Set var_88 = Me.TxtGrid
  loc_1012B90:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1012B98:     var_CA = var_B4.Text
  loc_1012BA9:     Set var_B8 = Me.TxtGrid
  loc_1012BAF:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1012BB7:     var_C4.Text = var_9C
  loc_1012BCA:   End If
  loc_1012BD6:   Set var_88 = Me.TxtGrid
  loc_1012BDC:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1012BF6:   Set var_B8 = Me.TxtGrid
  loc_1012BFC:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1012C04:   var_C4.SelStart = Len(var_B4.Text)
  loc_1012C1A: Else
  loc_1012C21:   If (var_A0 = CLng(3)) Then
  loc_1012C62:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1012C74:   End If
  loc_1012C74: End If
  loc_1012C7E: If (CLng(KeyCode) <> &HD) Then
  loc_1012C86:   global_82 = &HFF
  loc_1012C89: End If
  loc_1012C89: Exit Sub
  loc_1012C8A: CExtInstUnk
End Sub

Private Sub FGrid_UnknownEvent_D 'FEE9E0
  'Data Table: 49835C
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FEE808: Set var_90 = Me.TopCtrl1
  loc_FEE80E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_FEE827: If (CStr() = "Browse") Then
  loc_FEE82A:   Exit Sub
  loc_FEE82B: End If
  loc_FEE848: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FEE84B:   Exit Sub
  loc_FEE84C: End If
  loc_FEE85D: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FEE87F:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FEE8B9:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FEE8DB:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FEE8F1:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEE8FA:         Set var_118 = Me.FGrid
  loc_FEE915:       Else
  loc_FEE928:         Me.FGrid.Rows = 1
  loc_FEE94E:         var_A0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_FEE956:         Set var_118 = Me.FGrid
  loc_FEE983:         Me.FGrid.FixedRows = 1
  loc_FEE98B:       End If
  loc_FEE98B:     End If
  loc_FEE98E:   Else
  loc_FEE9AF:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FEE9BF:   End If
  loc_FEE9C3:   Set var_90 = Me.FGrid
  loc_FEE9D4: End If
  loc_FEE9D9: Set var_8C = Nothing
  loc_FEE9DC: Exit Sub
  loc_FEE9DD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E42498
  'Data Table: 49835C
  Dim var_8C As TextBox
  loc_E4246C: Call Proc_49_50_EBCCC8()
  loc_E4247C: Set var_88 = Me.TxtGrid
  loc_E42482: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4248A: var_8C.Visible = False
  loc_E42496: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1068544
  'Data Table: 49835C
  Dim var_B8 As Variant
  Dim unk_49837C As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_C8 As TextBox
  loc_10682C4: On Error Goto loc_106853C
  loc_10682EA: Call Proc_49_49_EF5388(Proc_5_1_100CB50("ADD", Me))
  loc_10682F5: Call Proc_49_48_F2F9B0(global_68)
  loc_106830C: var_B4 = DateAdd("D", CDbl(&HFF), MemVar_1F920F4)
  loc_1068329: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_B8)
  loc_1068331: var_B8.Text = CStr(var_B4)
  loc_106836A: unk_49837C.Execute "Select Description,V_Type From Voucher_Type Where V_tYPE='" & global_140 & "'", var_B4, -1
  loc_1068375: Set var_88 = Me.Txt
  loc_1068399: If (var_88.RecordCount > 0) Then
  loc_10683D5:   Set var_C4 = Me.Txt
  loc_10683DB:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C8)
  loc_10683E3:   var_C8.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_1068413:   var_B8 = var_88.Fields.Item("V_Type")
  loc_1068432:   Set var_C4 = Me.Txt
  loc_1068438:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C8)
  loc_1068440:   var_C8.Tag = CStr(var_B8.Value)
  loc_1068462:   Call Txt_Validate(CInt(0))
  loc_1068467: End If
  loc_1068474: Set var_90 = Me.Txt
  loc_106847A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_B8, 0)
  loc_106849C: Set var_90 = Me.Txt
  loc_10684A2: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_B8)
  loc_10684BC: If (False = &HFF) Then
  loc_10684CA:   Set var_90 = Me.Txt
  loc_10684D0:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_B8)
  loc_10684D8:   var_B8.SetFocus
  loc_10684E7: Else
  loc_10684F4:   Set var_90 = Me.Txt
  loc_10684FA:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_B8)
  loc_1068502:   var_B8.Enabled = True
  loc_1068519:   Set var_90 = Me.Txt
  loc_106851F:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_B8)
  loc_1068527:   var_B8.SetFocus
  loc_1068533: End If
  loc_1068538: Set var_88 = Nothing
  loc_106853B: Exit Sub
  loc_106853C: ' Referenced from: 10682C4
  loc_106853C: Proc_6_60_E62BC4(var_90)
  loc_1068541: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9E748
  'Data Table: 49835C
  loc_E9E6D0: On Error Goto loc_E9E741
  loc_E9E70A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9E730:   Call Proc_49_49_EF5388(Proc_5_1_100CB50("INI", Me))
  loc_E9E73B:   Call Proc_49_46_1420048(global_68)
  loc_E9E740: End If
  loc_E9E740: Exit Sub
  loc_E9E741: ' Referenced from: E9E6D0
  loc_E9E741: Proc_6_60_E62BC4()
  loc_E9E746: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10C5AE8
  'Data Table: 49835C
  Dim unk_49837C As Connection15
  Dim var_96 As Integer
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10C582C: On Error Goto loc_10C5A8E
  loc_10C5866: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_10C5872:   unk_49837C.BeginTrans var_11C
  loc_10C5879:   var_96 = &HFF
  loc_10C588D:   var_94 = Me.Bookmark 'Variant
  loc_10C58D9:   var_F8 = "Delete From STOCK Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10C58E7:   unk_49837C.Execute CStr(var_F8), var_118, -1
  loc_10C5932:   var_164 = 0
  loc_10C5945:   var_15C = 0
  loc_10C5950:   var_158 = 0
  loc_10C5963:   var_150 = 0
  loc_10C596E:   var_14C = 0
  loc_10C5981:   var_144 = 0
  loc_10C59C1:   var_128 = "STOCK"
  loc_10C59CA:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10C59F8:   unk_49837C.CommitTrans
  loc_10C59FF:   var_96 = 0
  loc_10C5A0D:   Me.Requery -1
  loc_10C5A2D:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10C5A3A:     Me.Bookmark = var_94
  loc_10C5A42:   Else
  loc_10C5A56:     If (Me.EOF = 0) Then
  loc_10C5A5F:       Me.MoveLast
  loc_10C5A64:     End If
  loc_10C5A64:   End If
  loc_10C5A64:   Call Proc_49_46_1420048(var_96, var_144, 0, var_14C, var_150)
  loc_10C5A85:   Proc_5_0_110649C(&HFF, Me, global_68, 0)
  loc_10C5A8D: End If
  loc_10C5A8D: Exit Sub
  loc_10C5A8E: ' Referenced from: 10C582C
  loc_10C5A94: If (var_96 = &HFF) Then
  loc_10C5A9D:   unk_49837C.RollbackTrans
  loc_10C5AA2: End If
  loc_10C5AAA: Set var_120 = Err()
  loc_10C5AB0: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10C5AD1: MsgBox(CVar(var_128), &H10, " Deletion Message", var_F8, var_118)
  loc_10C5AE4: Exit Sub
  loc_10C5AE5: var_15C = 0
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EDC064
  'Data Table: 49835C
  Dim var_98 As TextBox
  loc_EDBFB0: On Error Goto loc_EDC05D
  loc_EDBFD6: Call Proc_49_49_EF5388(Proc_5_1_100CB50("EDIT", Me))
  loc_EDBFEE: Set var_90 = Me.Txt
  loc_EDBFF4: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_EDBFFC: var_98.Enabled = False
  loc_EDC015: Set var_90 = Me.Txt
  loc_EDC01B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_EDC023: var_98.Enabled = False
  loc_EDC03A: Set var_90 = Me.Txt
  loc_EDC040: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_EDC048: var_98.SetFocus
  loc_EDC054: Exit Sub
  loc_EDC05A: Set var_88 = Nothing
  loc_EDC05D: ' Referenced from: EDBFB0
  loc_EDC05D: Proc_6_60_E62BC4(global_68)
  loc_EDC062: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B074
  'Data Table: 49835C
  loc_E1B069: Me.Global.Unload Me
  loc_E1B071: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB5B6C
  'Data Table: 49835C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EB5ADC: On Error Goto loc_EB5B66
  loc_EB5AF6: If (Me.RecordCount <= 0) Then
  loc_EB5AFF:   var_B8 = "Information"
  loc_EB5B1A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB5B2A:   Exit Sub
  loc_EB5B2B: End If
  loc_EB5B35: var_10C = "Select Distinct Docid as SearchCode,V.Description As VType,K.VNo as VrNo ,K.VDate as V_Date,H.Name as RoomNo From ((STOCK K Left Join Voucher_Type V On K.VType= V.V_Type)Left Join RoomMast H On K.RoomNo= H.Code) Where V.V_tYPE='" & global_140
  loc_EB5B3C: MemVar_1F920E4 = var_10C & "' AND H.TYPE IN ('RO') Order By K.Docid"
  loc_EB5B49: MemVar_1F92120 = Me
  loc_EB5B60: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EB5B65: Exit Sub
  loc_EB5B66: ' Referenced from: EB5ADC
  loc_EB5B66: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EB5B6B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E34878
  'Data Table: 49835C
  Dim var_1B01 As Double
  loc_E34868: Proc_5_0_110649C(&HFF, Me)
  loc_E34870: Call Proc_49_46_1420048(global_68)
  loc_E34875: Exit Sub
  loc_E34876: var_1B01 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3A518
  'Data Table: 49835C
  Dim var_1B01 As Double
  loc_E3A508: Proc_5_0_110649C(&HFF, Me)
  loc_E3A510: Call Proc_49_46_1420048(global_68)
  loc_E3A515: Exit Sub
  loc_E3A516: var_1B01 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E361F8
  'Data Table: 49835C
  Dim var_1B01 As Double
  loc_E361E8: Proc_5_0_110649C(&HFF, Me)
  loc_E361F0: Call Proc_49_46_1420048(global_68)
  loc_E361F5: Exit Sub
  loc_E361F6: var_1B01 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E36258
  'Data Table: 49835C
  Dim var_1B01 As Double
  loc_E36248: Proc_5_0_110649C(&HFF, Me)
  loc_E36250: Call Proc_49_46_1420048(global_68)
  loc_E36255: Exit Sub
  loc_E36256: var_1B01 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFD0B4
  'Data Table: 49835C
  Dim arg_2700 As Long
  loc_DFD0B0: Exit Sub
  loc_DFD0B1: arg_2700 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E42310
  'Data Table: 49835C
  Dim Me As Recordset15
  loc_E422E7: Me.Requery -1
  loc_E422F7: Me.Requery -1
  loc_E42307: Me.Requery -1
  loc_E4230C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15465A8
  'Data Table: 49835C
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A0 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_A4 As Variant
  Dim var_AC As String
  Dim var_CC As Variant
  Dim var_144 As String
  Dim var_148 As String
  Dim unk_49837C As Connection15
  Dim var_A8 As Variant
  Dim var_14C As Variant
  Dim var_150 As Field20
  Dim Me As Recordset15
  Dim var_8A As Integer
  Dim var_188 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_784 As Double
  Dim var_1E0 As TextBox
  Dim var_264 As TextBox
  Dim var_2A0 As TextBox
  Dim var_34C As Variant
  Dim var_36C As Variant
  Dim var_3E0 As Variant
  Dim var_400 As Variant
  Dim var_474 As Variant
  Dim var_494 As Variant
  Dim var_79C As Double
  Dim var_7A4 As Double
  Dim var_6CC As Variant
  Dim var_6EC As Variant
  Dim var_1CC As String
  Dim var_1D0 As String
  Dim var_1D4 As String
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_1F4 As Variant
  Dim var_204 As Variant
  Dim var_21C As Variant
  Dim var_2C4 As Variant
  Dim var_444 As Variant
  Dim var_64C As Variant
  Dim var_20C As String
  Dim var_88 As Recordset15
  Dim var_1D8 As Fields15
  Dim var_1E4 As String
  loc_15456C4: On Error Goto loc_154658D
  loc_15456D2: Set var_A0 = Me.Txt
  loc_15456D8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1545701: If (Proc_6_27_EA565C(var_A4, "Voucher Date") = 0) Then
  loc_1545704:   Exit Sub
  loc_1545705: End If
  loc_1545710: Set var_A0 = Me.Txt
  loc_1545716: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_154573F: If (Proc_6_27_EA565C(var_A4, "Voucher No") = 0) Then
  loc_1545742:   Exit Sub
  loc_1545743: End If
  loc_154574E: Set var_A0 = Me.Txt
  loc_1545754: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_154577D: If (Proc_6_27_EA565C(var_A4, "RoomNo") = 0) Then
  loc_1545780:   Exit Sub
  loc_1545781: End If
  loc_1545781: var_BC = 1
  loc_154578A: var_DC = 1
  loc_15457A8: var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15457AE: var_11C = Trim(var_10C)
  loc_15457CA: If (var_11C = vbNullString) Then
  loc_15457E6:   MsgBox("Fill Item Name ", 0, var_10C, var_11C, var_13C)
  loc_1545809:   Me.FGrid.Row = 1
  loc_1545815:   Set var_A0 = Me.FGrid
  loc_1545839:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1545841:   Exit Sub
  loc_1545842: End If
  loc_1545842: var_BC = 1
  loc_154584B: var_DC = 3
  loc_1545869: var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_154586F: var_11C = Trim(var_10C)
  loc_154588B: If (var_11C = vbNullString) Then
  loc_15458A1:   var_FC = "Item Detail Required "
  loc_15458A7:   MsgBox(var_FC, 0, var_10C, var_11C, var_13C)
  loc_15458CA:   Me.FGrid.Row = 1
  loc_15458D6:   Set var_A0 = Me.FGrid
  loc_15458EB:   var_BC = CVar(CLng("14737632")) 'Long
  loc_15458FA:   Me.FGrid.CellBackColor = var_BC
  loc_1545902:   Exit Sub
  loc_1545903: End If
  loc_1545906: Call Proc_49_47_108D410(var_13E, FGrid.DispID_8001, var_DC, var_BC)
  loc_1545911: If (var_13E = 0) Then
  loc_1545914:   Exit Sub
  loc_1545915: End If
  loc_1545920: Set var_A0 = Me.TxtGrid
  loc_1545926: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, 0, FGrid.DispID_8001)
  loc_154592E: var_A4.Visible = var_DC
  loc_154593A: Call Proc_49_50_EBCCC8(var_BC)
  loc_1545943: Set var_A0 = Me.TopCtrl1
  loc_1545949: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_A4)
  loc_1545951: var_AC = CStr()
  loc_1545962: If (var_AC = "Add") Then
  loc_1545992:   Set var_A0 = Me.Txt
  loc_1545998:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_AC, "Select Count(*) From STOCK Where DocID='", var_FC, -1)
  loc_15459A0:   var_A8 = var_A4.Text
  loc_15459B9:   unk_49837C.Execute var_14C & var_AC & "'", 0, var_150
  loc_15459C9:    = var_14C.Item()
  loc_15459D1:    = var_150.Value
  loc_15459FE:   If (var_A8.Fields > 0) Then
  loc_1545A07:     Call Proc_49_52_1078538(MemVar_1F92044)
  loc_1545A1A:     Set var_A0 = Me.Txt
  loc_1545A20:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_1545A28:     var_A4.Text = var_AC
  loc_1545A37:     Exit Sub
  loc_1545A38:   End If
  loc_1545A3B: Else
  loc_1545A58:   var_A4 = Me.Fields.Item("DocID")
  loc_1545A60:   var_FC = var_A4.Value
  loc_1545A69:   var_AC = CStr(var_FC)
  loc_1545A6F:   global_116 = var_AC
  loc_1545A80: End If
  loc_1545A8E: unk_49837C.BeginTrans var_154
  loc_1545AB1: Set var_A0 = Me.Txt
  loc_1545AB7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_AC, "Delete From STOCK Where DocID='", var_FC)
  loc_1545ABF: -1 = var_A4.Text
  loc_1545ACF: var_148 = var_A8 & var_AC & "'"
  loc_1545AD8: unk_49837C.Execute var_148, &HFF, var_AC
  loc_1545B17: For var_158 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_158 'Integer
  loc_1545B21:   var_BC = CVar(CLng(var_92)) 'Long
  loc_1545B29:   var_DC = CVar(CLng(6)) 'Long
  loc_1545B43:   var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1545B70:   Set var_A4 = Me.FGrid
  loc_1545B81:   var_AC = CStr(var_A4.TextMatrix))
  loc_1545BAF:   If CBool(CVar(CLng(3)) And (CDbl(Val(var_AC)) <> CDbl(0))) Then
  loc_1545BC0:     Set var_A0 = Me.Txt
  loc_1545BC6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_AC, CVar(CLng(var_92)))
  loc_1545BCE:     (Trim(var_10C) <> vbNullString) = var_A4.Text
  loc_1545BE1:     Set var_A8 = Me.Txt
  loc_1545BE7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_14C, var_148)
  loc_1545BEF:     var_DC = var_14C.Text
  loc_1545BFC:     var_784 = Val(var_148)
  loc_1545C0A:     Set var_150 = Me.Txt
  loc_1545C10:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1D8, var_784)
  loc_1545C1F:     Proc_6_7_F25D88(var_10C, CVar(var_1D8))
  loc_1545C32:     Set var_1DC = Me.Txt
  loc_1545C38:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1E0, var_1E4)
  loc_1545C40:     var_BC = var_1E0.Tag
  loc_1545C65:     Set var_260 = Me.Txt
  loc_1545C6B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_264)
  loc_1545C86:     Set var_29C = Me.Txt
  loc_1545C8C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2A0)
  loc_1545C9D:     var_188 = CVar(CLng(var_92)) 'Long
  loc_1545CA5:     var_1B8 = CVar(CLng(0)) 'Long
  loc_1545CCE:     var_34C = CVar(CLng(var_92)) 'Long
  loc_1545CD6:     var_36C = CVar(CLng(6)) 'Long
  loc_1545CF5:     var_3E0 = CVar(CLng(var_92)) 'Long
  loc_1545CFD:     var_400 = CVar(CLng(2)) 'Long
  loc_1545D1C:     var_474 = CVar(CLng(var_92)) 'Long
  loc_1545D24:     var_494 = CVar(CLng(3)) 'Long
  loc_1545D77:     var_79C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1545DA8:     var_7A4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1545DB9:     Proc_6_7_F25D88(var_68C, Date, var_7A4, CVar(CLng(5)), CVar(CLng(var_92)), var_79C, CVar(CLng(4)), CVar(CLng(var_92)))
  loc_1545DC2:     var_6CC = CVar(CLng(var_92)) 'Long
  loc_1545DCA:     var_6EC = CVar(CLng(5)) 'Long
  loc_1545E03:     var_144 = "Insert Into Stock(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Sno,Item,Unit,Qtyrec,Rate,Amount,U_Name,U_EntDt,U_AE,TOTAL) Values ('" & var_AC
  loc_1545E0A:     var_1CC = var_144 & "',"
  loc_1545E36:     var_1F4 = CVar(var_1CC & CStr(var_784) & ",") & var_10C & ",'" & CVar(var_1E4) 
  loc_1545E46:     var_21C = CVar(Me.LblVPrefix.Caption) 'String
  loc_1545E82:     var_2C4 = var_1F4 & "','" & var_21C & "','" & CVar(MemVar_1F92070) & "','HSKP','" & CVar(var_264.Text) & "','RO','" & CVar(var_2A0.Tag) 
  loc_1545EBE:     var_444 = var_2C4 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1545F0D:     var_64C = var_444 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_79C) & "," & CVar(var_7A4) & ",'" & CVar(MemVar_1F920C8) 
  loc_1545F48:     unk_49837C.Execute CStr(var_64C & "'," & var_68C & ",'A'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ")"), var_778, -1
  loc_1545FF8:   End If
  loc_1545FFB: Next var_158 'Integer
  loc_1546004: Set var_A0 = Me.TopCtrl1
  loc_154600A: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1546023: If (CStr() = "Add") Then
  loc_154603A:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1546060:   Set var_A0 = Me.Txt
  loc_1546066:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_1CC, var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='")
  loc_154606E:   var_1C8 = var_A4.Tag
  loc_1546077:   var_1D4 = -1 & var_1CC
  loc_154607E:   var_11C = CVar(var_1CC & CStr(var_784) & "' And VP.Date_From<=") 'String
  loc_154608F:   Set var_A8 = Me.Txt
  loc_1546095:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_14C, var_1E4)
  loc_154609D:   var_11C = var_14C.Text
  loc_15460A5:   var_FC = CVar(var_1E4) 'String
  loc_15460AB:   Proc_6_7_F25D88(var_10C, var_FC)
  loc_15460CA:   unk_49837C.Execute CStr(var_150 & var_10C & " Order By VP.Date_From DESC"), , 
  loc_15460D5:   Set var_88 = var_150
  loc_1546119:   If (var_88.RecordCount > 0) Then
  loc_154612A:     Set var_A0 = Me.Txt
  loc_1546130:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_1546145:     var_784 = Val(var_A4.Text)
  loc_154614E:     var_CC = 0
  loc_154616E:     var_20C = "Select Sufix+'M'+Prefix From Depart Where Code='" & global_144
  loc_154617E:     unk_49837C.Execute CStr(var_150 & var_10C & " Order By VP.Date_From DESC") & "'", var_FC, -1
  loc_1546186:     var_A8 = var_A8.Fields
  loc_154618E:     var_CC = var_14C.Item(var_14C)
  loc_1546196:     var_150 = var_150.Value
  loc_15461C1:     Proc_6_7_F25D88(var_1F4, CVar(var_88.Fields.Item("Date_From")))
  loc_15461DB:     var_144 = CStr(var_784)
  loc_15461FB:     var_1E4 = "Update Voucher_Prefix Set Start_Srl_No=" & var_144 & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_1546218:     var_204 = CVar(var_1E4 & "') and V_Type='") & var_10C & "' and Date_From=" & var_1F4 
  loc_1546226:     unk_49837C.Execute CStr(var_204), var_21C, -1
  loc_1546268:   End If
  loc_1546268: End If
  loc_154626C: Set var_A0 = Me.TopCtrl1
  loc_1546272: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_1E0)
  loc_154628B: If (CStr(var_10C) = "Add") Then
  loc_15462B1:   var_AC = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F920C8
  loc_15462C1:   Call 0.Method_arg_50 (var_144, var_AC & "' AND ENAME='", var_FC, -1, var_A0)
  loc_15462D1:   var_1D0 = var_A4 & var_144 & "' "
  loc_15462DA:   unk_49837C.Execute var_1D0, 0, var_A8
  loc_15462E2:   var_10C = var_A0.Fields
  loc_15462EA:    = var_A4.Item(var_784)
  loc_15462F2:    = var_A8.Value
  loc_154631F:   If (var_10C > 0) Then
  loc_1546340:     Set var_A0 = Me.Txt
  loc_1546346:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_AC, "UPDATE LASTVOU  SET DOCID='")
  loc_154634E:     var_FC = var_A4.Text
  loc_1546357:     var_144 = -1 & var_AC
  loc_1546375:     Call 0.Method_arg_50 (var_1D0, var_144 & "' WHERE UNAME='" & MemVar_1F920C8 & "' AND ENAME='")
  loc_154638E:     unk_49837C.Execute var_A8 & var_1D0 & "'  ", , 
  loc_15463B5:   Else
  loc_15463D9:     Call 0.Method_arg_50 (var_144, "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "','", var_204)
  loc_15463E2:     var_1CC = -1 & var_144
  loc_15463E9:     var_1D4 = var_144 & "' WHERE UNAME='" & MemVar_1F920C8 & "','"
  loc_15463FA:     Set var_A0 = Me.Txt
  loc_1546400:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_1D0)
  loc_1546408:     var_1D4 = var_A4.Text
  loc_1546437:     Proc_6_7_F25D88(var_10C, Date)
  loc_1546443:     var_BC = ",'A','"
  loc_1546469:     unk_49837C.Execute CStr(CVar(var_A8 & var_1D0 & "','" & MemVar_1F92070 & "',") & var_10C & var_BC & CVar(MemVar_1F92078) & "')"), , 
  loc_15464A1:   End If
  loc_15464A1: End If
  loc_15464A7: unk_49837C.CommitTrans
  loc_15464AE: var_8A = 0
  loc_15464BF: Set var_A0 = Me.Txt
  loc_15464C5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_15464E1: var_8A = 0
  loc_15464EF: Me.Requery -1
  loc_1546519: Me.Find "SearchCode ='" & var_A4.Text & "'", 0, 1
  loc_1546529: Set var_A0 = Me.TopCtrl1
  loc_154652F: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_BC)
  loc_1546548: If (CStr(var_8A) = "Add") Then
  loc_154654B:   Call TopCtrl1_UnknownEvent_A()
  loc_1546550:   Exit Sub
  loc_1546551: End If
  loc_1546574: Call Proc_49_49_EF5388(Proc_5_1_100CB50("INI", Me), global_68)
  loc_154657F: Call Proc_49_46_1420048(var_8A)
  loc_1546589: Set var_88 = Nothing
  loc_154658C: Exit Sub
  loc_154658D: ' Referenced from: 15456C4
  loc_1546593: If (var_8A = &HFF) Then
  loc_154659C:   unk_49837C.RollbackTrans
  loc_15465A1: End If
  loc_15465A1: Proc_6_60_E62BC4()
  loc_15465A6: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'FA3108
  'Data Table: 49835C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_FA2F88: On Error Goto loc_FA3102
  loc_FA2F9A: Me.DGRoom.Visible = False
  loc_FA2FB9: If (Me.RecordCount > 0) Then
  loc_FA2FF8:   Set var_B4 = Me.Txt
  loc_FA2FFE:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(3), var_B8)
  loc_FA3006:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA3058:   Set var_B4 = Me.Txt
  loc_FA305E:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(3), var_B8)
  loc_FA3066:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FA3099:   var_B0 = Me.Fields.Item("RoomCat")
  loc_FA30B8:   Set var_B4 = Me.Txt
  loc_FA30BE:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(5), var_B8)
  loc_FA30C6:   var_B8.Text = CStr(var_B0.Value)
  loc_FA30DC: End If
  loc_FA30E7: Set var_A8 = Me.Txt
  loc_FA30ED: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(3))
  loc_FA30F5: var_B0.SetFocus
  loc_FA3101: Exit Sub
  loc_FA3102: ' Referenced from: FA2F88
  loc_FA3102: Proc_6_60_E62BC4(var_B0)
  loc_FA3107: Exit Sub
End Sub

Private Sub Form_Load() '1229DF0
  'Data Table: 49835C
  Dim var_94 As Variant
  Dim var_BC As Variant
  Dim var_A4 As Variant
  Dim var_AC As String
  Dim var_C0 As String
  Dim unk_49837C As Connection15
  Dim var_A8 As Recordset15
  Dim var_C4 As Fields15
  Dim var_C8 As Field20
  Dim Me As Recordset15
  Dim var_100 As Variant
  Dim var_120 As Variant
  loc_12298F4: On Error Goto loc_1229DE7
  loc_1229901: Set var_A8 = Me.TopCtrl1
  loc_1229907: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000B("AEDP")
  loc_1229915: Call 0.Method_arg_50 (var_AC)
  loc_122991D: var_BC = CVar(var_AC) 'String
  loc_1229925: Set var_A8 = Me.TopCtrl1
  loc_122992B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030007(var_BC)
  loc_122993C: global_144 = MemVar_1F921B8
  loc_1229946: global_148 = MemVar_1F921BC
  loc_1229950: global_152 = MemVar_1F921C0
  loc_122995F: If (global_144 = vbNullString) Then
  loc_1229962:   Exit Sub
  loc_1229963: End If
  loc_1229969: var_A4 = 0
  loc_1229989: var_AC = "Select 'M'+Depart.ShortName From Depart Where Code='" & global_144
  loc_1229999: unk_49837C.Execute var_AC & "'", var_BC, -1
  loc_12299A9: var_A4 = var_C4.Item(var_C4)
  loc_12299B1: var_C8 = var_C8.Value
  loc_12299C0: global_140 = CStr(var_D8)
  loc_12299FB: var_C0 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE V_Type='" & global_140 & "' Order by Description"
  loc_1229A04: unk_49837C.Execute var_C0, var_BC, -1
  loc_1229A15: Set global_56 = var_A8.Fields
  loc_1229A33: CVarUnk
  loc_1229A38: VerifyVarObj
  loc_1229A3E: Set var_A8 = Me.DGVType
  loc_1229A44: LateIdStAd
  loc_1229A69: If (Me.RecordCount <= 0) Then
  loc_1229A85:   MsgBox("House Keeping Not Configured for selected Department", 0, var_D8, var_100, var_120)
  loc_1229A95: End If
  loc_1229A9F: Set global_60 = New 
  loc_1229AB1: Me.CursorLocation = 3
  loc_1229ACD: var_94 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,I.LPurRate From ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code WHERE I.TYPE IN ('Consumables','Store Item') AND IG.TYPE IN ('Consumables','Store Item') And I.ItemType='Store' Order by I.Name"
  loc_1229AD9: Me.Open var_94, CVar(MemVar_1F92044), 3
  loc_1229AE7: CVarUnk
  loc_1229AEC: VerifyVarObj
  loc_1229AF2: Set var_A8 = Me.DGItem
  loc_1229AF8: LateIdStAd
  loc_1229B22: Me.DGItem.CursorLocation = 3
  loc_1229B58: CVarUnk
  loc_1229B5D: VerifyVarObj
  loc_1229B69: LateIdStAd
  loc_1229B81: Set global_68 = New 
  loc_1229B93: Me.DGRoom.CursorLocation = 3
  loc_1229BB9: var_AC = "Select Distinct S.DocId as SearchCode,S.DocID From STOCK S LEFT JOIN VOUCHER_tYPE V ON V.V_tYPE=S.VTYPE Where S.VTYPE='" & global_140
  loc_1229BC0: var_BC = CVar(var_AC & "' Order by Docid") 'String
  loc_1229BCA: elect R.Code ,R.Name As Name,RoomCat From RoomMast R WHERE R.TYPE IN ('RO') Order by R.Name", CVar(MemVar_1F92044), 3 var_BC, CVar(MemVar_1F92044), 3
  loc_1229BFA: Call 0.Method_arg_50 (var_AC, "SELECT COUNT(*) FROM LASTVOU WHERE ENAME='", var_BC, -1, Me.DGRoom, var_C4, 0, var_C8)
  loc_1229C21: unk_49837C.Execute var_D8 & var_AC & "' AND UNAME='" & MemVar_1F920C8 & "'", 1, -1
  loc_1229C29: var_A8 = var_A8.Fields
  loc_1229C31: 1 = var_C4.Item(New)
  loc_1229C39: -1 = var_C8.Value
  loc_1229C66: If (var_D8 > 0) Then
  loc_1229CA1:   Call 0.Method_arg_50 (var_AC, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_BC, -1, var_A8, var_C4, 0)
  loc_1229CC8:   unk_49837C.Execute var_C8 & var_AC & "' AND UNAME='" & MemVar_1F920C8 & "'", var_D8, "SearchCode='"
  loc_1229CD0:   0 = var_A8.Fields
  loc_1229CD8:   var_13C = var_C4.Item(1)
  loc_1229CE0:    = var_C8.Value
  loc_1229CFF:   Me.Find CStr(var_D8 & "'"), , 
  loc_1229D27: End If
  loc_1229D3E: If (Me.RecordCount > 0) Then
  loc_1229D55:   If (Me.EOF = &HFF) Then
  loc_1229D5E:     Me.MoveLast
  loc_1229D63:   End If
  loc_1229D63: End If
  loc_1229D86: Call Proc_49_49_EF5388(Proc_5_1_100CB50("INI", Me))
  loc_1229DA3: Set var_A8 = Me
  loc_1229DA9: Proc_6_23_DFBA28(var_A8, 4950)
  loc_1229DBA: Call 0.Method_arg_160 (var_A8, 8595)
  loc_1229DC8: Call 0.Method_arg_164 (var_A8)
  loc_1229DD0: Call Proc_49_43_118010C(global_68)
  loc_1229DD5: Call Proc_49_46_1420048()
  loc_1229DE1: Call 0.Method_arg_64 (CLng(MemVar_1F921C0))
  loc_1229DE6: Exit Sub
  loc_1229DE7: ' Referenced from: 12298F4
  loc_1229DE7: Proc_6_60_E62BC4()
  loc_1229DEC: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E7A770
  'Data Table: 49835C
  loc_E7A717: Set global_64 = Nothing
  loc_E7A729: Set global_60 = Nothing
  loc_E7A73B: Set global_56 = Nothing
  loc_E7A74D: Set global_72 = Nothing
  loc_E7A75F: Set global_68 = Nothing
  loc_E7A76B: MasterFormExit = 0
  loc_E7A76E: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25B1C
  'Data Table: 49835C
  loc_E25B01: If (MasterFormExit = &HFF) Then
  loc_E25B11:   Me.Global.Unload Me
  loc_E25B19: End If
  loc_E25B19: Exit Sub
  loc_E25B1A: Get , ,  'get  bytes
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E34818
  'Data Table: 49835C
  loc_E347EC: On Error Goto loc_E34810
  loc_E34807: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3480F: Exit Sub
  loc_E34810: ' Referenced from: E347EC
  loc_E34810: Proc_6_60_E62BC4(Shift)
  loc_E34815: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10F3EA0
  'Data Table: 49835C
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
  loc_10F3B92: Set var_88 = Me.TxtGrid
  loc_10F3B98: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_10F3BA6: Proc_6_74_E226B0(var_8C)
  loc_10F3BB2: Call Proc_49_50_EBCCC8(var_8C)
  loc_10F3BC3: If (Index = 0) Then
  loc_10F3BDC:   Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_10F3BF7:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F3C00:   Set var_8C = Me.FGrid
  loc_10F3C36:   Set var_108 = Me.TxtGrid
  loc_10F3C3C:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_10F3C44:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_10F3C85:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_10F3C95:     Set var_90 = Me.TxtGrid
  loc_10F3C9B:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_11C)
  loc_10F3CA3:     var_114 = var_108.Height
  loc_10F3CB5:     Set var_88 = Me.TxtGrid
  loc_10F3CBB:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_118)
  loc_10F3CC3:     var_A4 = var_8C.Top
  loc_10F3CCF:     var_A4 = CVar((var_118 + var_11C)) 'Single
  loc_10F3CDE:     Me.DGItem.Top = var_A4
  loc_10F3CFD:     Set var_88 = Me.TxtGrid
  loc_10F3D03:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_10F3D22:     Me.DGItem.Left = CVar(var_8C.Left)
  loc_10F3D71:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10F3D74:       Exit Sub
  loc_10F3D75:     End If
  loc_10F3D7B:     Me.MoveFirst
  loc_10F3D93:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F3D9B:     var_E4 = CVar(CLng(6)) 'Long
  loc_10F3DA4:     Set var_8C = Me.FGrid
  loc_10F3DAA:     var_D4 = var_8C.TextMatrix)
  loc_10F3DDF:     Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_10F3E0F:     If (Me.EOF = &HFF) Then
  loc_10F3E18:       Me.MoveFirst
  loc_10F3E1D:     End If
  loc_10F3E26:     CVarUnk
  loc_10F3E2B:     VerifyVarObj
  loc_10F3E31:     Set var_88 = Me.DGItem
  loc_10F3E37:     LateIdStAd
  loc_10F3E48:   Else
  loc_10F3E4F:     If (var_114 = CLng(3)) Then
  loc_10F3E67:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, Me.TxtGrid, global_60)
  loc_10F3E6F:       var_8C.MaxLength = var_138
  loc_10F3E84:       If (global_82 = 0) Then
  loc_10F3E8F:         var_110 = "{Home}+{End}"
  loc_10F3E95:         Proc_303_0_FB9B68(CStr(var_D4), 0, var_D4)
  loc_10F3E9D:       End If
  loc_10F3E9D:     End If
  loc_10F3E9D:   End If
  loc_10F3E9D: End If
  loc_10F3E9D: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10D5ADC
  'Data Table: 49835C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_10D57E8: If (KeyCode = 0) Then
  loc_10D57F5:   If (CLng(Shift) = &H1B) Then
  loc_10D5805:     Set var_8C = Me.TxtGrid
  loc_10D580B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_10D5825:     Set var_98 = Me.TxtGrid
  loc_10D582B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_10D5833:     var_9C.Text = var_90.Tag
  loc_10D584F:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_10D5854:     Call Proc_49_50_EBCCC8(arg_14)
  loc_10D585D:     Set var_8C = Me.FGrid
  loc_10D587A:     Set var_8C = Me.TxtGrid
  loc_10D5880:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_10D5888:     var_90.Visible = FGrid.DispID_8001
  loc_10D5894:     Exit Sub
  loc_10D5895:   End If
  loc_10D58A8:   var_B0 = CLng(Me.FGrid.Col)
  loc_10D58B8:   If (var_B0 = CLng(1)) Then
  loc_10D58D3:     Set var_9C = Nothing
  loc_10D590C:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF)
  loc_10D592A:     If (CLng(Shift) = &HD) Then
  loc_10D5933:       Call Proc_49_45_12B3150(KeyCode, var_B2, 1, Nothing)
  loc_10D593E:       If (var_B2 = &HFF) Then
  loc_10D5984:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82, 3, 0)
  loc_10D5994:       End If
  loc_10D5994:     End If
  loc_10D5997:   Else
  loc_10D599E:     If (var_B0 = CLng(2)) Then
  loc_10D59AB:       If (CLng(Shift) = &HD) Then
  loc_10D59B4:         Call Proc_49_45_12B3150(KeyCode, var_B2, 3, 0)
  loc_10D59BF:         If (var_B2 = &HFF) Then
  loc_10D5A0C:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82, CByte((CInt(3) + 1)), 0)
  loc_10D5A1C:         End If
  loc_10D5A1C:       End If
  loc_10D5A1F:     Else
  loc_10D5A26:       If (var_B0 = CLng(3)) Then
  loc_10D5A69:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_82 = &HFF))) Then
  loc_10D5A72:           Call Proc_49_45_12B3150(KeyCode, var_B2, 0, 0)
  loc_10D5A7D:           If (var_B2 = &HFF) Then
  loc_10D5ACA:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82, CByte((CInt(3) + 1)), 0)
  loc_10D5ADA:           End If
  loc_10D5ADA:         End If
  loc_10D5ADA:       End If
  loc_10D5ADA:     End If
  loc_10D5ADA:   End If
  loc_10D5ADA: End If
  loc_10D5ADA: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F11884
  'Data Table: 49835C
  Dim arg_10 As Integer
  Dim var_9C As Variant
  Dim var_94 As Variant
  Dim var_A0 As Long
  loc_F11797: Proc_6_58_E054C0(arg_10)
  loc_F117A2: Proc_6_133_E7EF78(var_94)
  loc_F117AB: arg_10 = CInt(var_94)
  loc_F117BD: If (KeyAscii = 0) Then
  loc_F117D3:   var_A0 = CLng(Me.FGrid.Col)
  loc_F117E3:   If (var_A0 = CLng(1)) Then
  loc_F11802:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F11809:       Set var_AC = Me.TxtGrid
  loc_F1182F:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_60, arg_10, "Name")
  loc_F1183E:     End If
  loc_F11841:   Else
  loc_F11848:     If (var_A0 = CLng(3)) Then
  loc_F11855:       Set var_9C = Me.TxtGrid
  loc_F1185B:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0, var_A0)
  loc_F11876:       Proc_6_42_129A86C(var_AC, arg_10, 8, 3)
  loc_F11882:     End If
  loc_F11882:   End If
  loc_F11882: End If
  loc_F11882: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDBAAC
  'Data Table: 49835C
  loc_EDB9F8: On Error Goto loc_EDBAA3
  loc_EDBA07: If (KeyCode = 0) Then
  loc_EDBA2D:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_EDBA53:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_EDBA64:       Call TxtGrid_KeyDown(KeyCode, global_80)
  loc_EDBA93:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_60, Shift, "Name")
  loc_EDBAA2:     End If
  loc_EDBAA2:   End If
  loc_EDBAA2: End If
  loc_EDBAA2: Exit Sub
  loc_EDBAA3: ' Referenced from: EDB9F8
  loc_EDBAA3: Proc_6_60_E62BC4(&HFF, 0)
  loc_EDBAA8: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20340
  'Data Table: 49835C
  Dim arg_10 As Integer
  loc_E20328: If (Cancel = 0) Then
  loc_E20331:   Call Proc_49_45_12B3150(Cancel, var_88)
  loc_E2033A:   arg_10 = Not(var_88)
  loc_E2033D: End If
  loc_E2033D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10F30D8
  'Data Table: 49835C
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_10F2DC2: Set var_88 = Me.Txt
  loc_10F2DC8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10F2DD6: Proc_6_74_E226B0(var_8C)
  loc_10F2DE2: Call Proc_49_50_EBCCC8(var_8C)
  loc_10F2DEA: var_92 = Index
  loc_10F2DF5: If (var_92 = CInt(0)) Then
  loc_10F2E0B:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_10F2E64:   Set var_88 = Me.Txt
  loc_10F2E6A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_10F2E72:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10F2E8A:   If (var_92 Or (var_C0 = vbNullString)) Then
  loc_10F2E8D:     Exit Sub
  loc_10F2E8E:   End If
  loc_10F2E9B:   Set var_88 = Me.Txt
  loc_10F2EA1:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F2EA9:   var_C0 = var_8C.Text
  loc_10F2EB1:   var_D4 = CVar(var_C0) 'String
  loc_10F2EF6:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_10F2EFF:     Me.MoveFirst
  loc_10F2F24:     Set var_88 = Me.Txt
  loc_10F2F2A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_10F2F32:     0 = var_8C.Text
  loc_10F2F40:     Proc_6_17_EAA2B0(var_D4, CVar(var_C0))
  loc_10F2F56:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_10F2F6E:   End If
  loc_10F2F71: Else
  loc_10F2F79:   If (var_92 = CInt(3)) Then
  loc_10F2FCA:     Set var_88 = Me.Txt
  loc_10F2FD0:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F2FF0:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_10F2FF3:       Exit Sub
  loc_10F2FF4:     End If
  loc_10F3001:     Set var_88 = Me.Txt
  loc_10F3007:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F300F:     var_C0 = var_8C.Text
  loc_10F3017:     var_D4 = CVar(var_C0) 'String
  loc_10F305C:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_10F3065:       Me.MoveFirst
  loc_10F308A:       Set var_88 = Me.Txt
  loc_10F3090:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_10F3098:       0 = var_8C.Text
  loc_10F30A6:       Proc_6_17_EAA2B0(var_D4, CVar(var_C0))
  loc_10F30BC:       Me.Find CStr(1 & var_D4), var_F8, 
  loc_10F30D4:     End If
  loc_10F30D4:   End If
  loc_10F30D4: End If
  loc_10F30D4: Exit Sub
  loc_10F30D5: ThisVCallR4
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10355FC
  'Data Table: 49835C
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  loc_10353CE: If (CLng(Shift) = &H1B) Then
  loc_10353D1:   Call Proc_49_50_EBCCC8()
  loc_10353D6:   Exit Sub
  loc_10353D7: End If
  loc_10353DA: var_86 = KeyCode
  loc_10353E5: If (var_86 = CInt(0)) Then
  loc_1035400:   Set var_9C = Nothing
  loc_103540B:   Set var_98 = Nothing
  loc_1035439:   Proc_6_69_134A198(Me.DGVType, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_1035450: Else
  loc_1035458:   If (var_86 = CInt(3)) Then
  loc_1035473:     Set var_9C = Nothing
  loc_10354AC:     Proc_6_69_134A198(Me.DGRoom, Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_10354C0:   End If
  loc_10354C0: End If
  loc_10354F1: Set var_98 = Me.DGRoom
  loc_1035516: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGItem.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_103552E:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1035537:     Proc_6_75_E527CC(Shift, arg_14, var_9C, 0, 1)
  loc_103553C:   End If
  loc_1035540:   Set var_8C = Me.TopCtrl1
  loc_1035546:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_98)
  loc_1035568:   If ((CStr(var_9C) = "Add") And (KeyCode <> CInt(0))) Then
  loc_1035580:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1035589:       Proc_6_76_E52838(Shift, arg_14)
  loc_103558E:     End If
  loc_1035591:   Else
  loc_1035595:     Set var_8C = Me.TopCtrl1
  loc_103559B:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(0)
  loc_10355BD:     If ((CStr(var_86) = "Edit") And (KeyCode <> CInt(2))) Then
  loc_10355D5:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10355DE:         Proc_6_76_E52838(Shift)
  loc_10355E3:       End If
  loc_10355E3:     End If
  loc_10355E3:   End If
  loc_10355F8:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10355FB:   End If
  loc_10355FB: End If
  loc_10355FB: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F88734
  'Data Table: 49835C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F885D8: On Error Goto loc_F8872B
  loc_F885DE: Proc_6_58_E054C0(arg_10)
  loc_F885E9: Proc_6_133_E7EF78(var_94)
  loc_F885F2: arg_10 = CInt(var_94)
  loc_F885FB: var_96 = KeyAscii
  loc_F88606: If (var_96 = CInt(0)) Then
  loc_F88625:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F8863B:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_F8864A:     Set var_B8 = Me.Txt
  loc_F88670:     Proc_6_89_146F1AC(var_B8, KeyAscii, global_56, arg_10, "Name")
  loc_F8867F:   End If
  loc_F88682: Else
  loc_F8868A:   If (var_96 = CInt(1)) Then
  loc_F88697:     Set var_9C = Me.Txt
  loc_F8869D:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_F886B8:     Proc_6_42_129A86C(var_B8, arg_10, 8, 0)
  loc_F886C7:   Else
  loc_F886CF:     If (var_96 = CInt(3)) Then
  loc_F886EE:       If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F8871B:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_F8872A:       End If
  loc_F8872A:     End If
  loc_F8872A:   End If
  loc_F8872A: End If
  loc_F8872A: Exit Sub
  loc_F8872B: ' Referenced from: F885D8
  loc_F8872B: Proc_6_60_E62BC4(0, var_96)
  loc_F88730: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFE10C
  'Data Table: 49835C
  Dim var_86 As Integer
  loc_DFE107: var_86 = KeyCode
  loc_DFE10A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48B14
  'Data Table: 49835C
  loc_E48AF2: Set var_88 = Me.Txt
  loc_E48AF8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48B06: Proc_6_73_E22704(var_8C)
  loc_E48B12: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1492A4C
  'Data Table: 49835C
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A0 As String
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_160 As TextBox
  Dim var_184 As Variant
  Dim var_18C As TextBox
  Dim var_1B0 As Variant
  Dim var_130 As String
  Dim unk_49837C As Connection15
  Dim var_9C As Variant
  Dim var_15C As Variant
  Dim var_CC As Variant
  loc_1491E00: On Error Goto loc_1492A45
  loc_1491E06: var_8E = Cancel
  loc_1491E11: If (var_8E = CInt(0)) Then
  loc_1491E1F:   Set var_94 = Me.Txt
  loc_1491E25:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1491E2D:   var_A0 = "Voucher Type"
  loc_1491E4E:   If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_1491E5C:     Set var_94 = Me.Txt
  loc_1491E62:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1491E6A:     var_98.SetFocus
  loc_1491E78:     arg_10 = &HFF
  loc_1491E7B:     Exit Sub
  loc_1491E7C:   End If
  loc_1491ECA:   Set var_94 = Me.Txt
  loc_1491ED0:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_1491ED8:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1491EF0:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_1491F00:     Set var_94 = Me.Txt
  loc_1491F06:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1491F0E:     var_98.Text = vbNullString
  loc_1491F27:     Set var_94 = Me.Txt
  loc_1491F2D:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1491F35:     var_98.Tag = vbNullString
  loc_1491F47:     global_132 = vbNullString
  loc_1491F4E:   Else
  loc_1491F89:     Set var_9C = Me.Txt
  loc_1491F8F:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1491F97:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1491FE8:     Set var_9C = Me.Txt
  loc_1491FEE:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1491FF6:     var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1492029:     var_98 = Me.Fields.Item("NCat")
  loc_1492040:     global_132 = CStr(var_98.Value)
  loc_1492055:     Set var_94 = Me.TopCtrl1
  loc_149205B:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_8E)
  loc_1492074:     If (CStr() = "Add") Then
  loc_1492082:       If (global_88 = "Automatic") Then
  loc_1492092:         Set var_94 = Me.Txt
  loc_1492098:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_14920A0:         var_98.Enabled = False
  loc_14920AF:       Else
  loc_14920BC:         Set var_94 = Me.Txt
  loc_14920C2:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_14920CA:         var_98.Enabled = True
  loc_14920E1:         Set var_94 = Me.Txt
  loc_14920E7:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_14920EF:         var_98.SetFocus
  loc_14920FB:       End If
  loc_14920FB:     End If
  loc_14920FB:   End If
  loc_14920FF:   Set var_94 = Me.TopCtrl1
  loc_1492105:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_98)
  loc_149210D:   var_A0 = CStr()
  loc_149211E:   If (var_A0 = "Add") Then
  loc_1492127:     Call Proc_49_52_1078538(MemVar_1F92044)
  loc_149213A:     Set var_94 = Me.Txt
  loc_1492140:     Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_1492148:     var_98.Text = var_A0
  loc_1492157:   End If
  loc_149215A: Else
  loc_1492162:   If (var_8E = CInt(1)) Then
  loc_1492170:     Set var_94 = Me.Txt
  loc_1492176:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_149217E:     var_A0 = "Vr. No"
  loc_149219F:     If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_14921AD:       Set var_94 = Me.Txt
  loc_14921B3:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_14921BB:       var_98.SetFocus
  loc_14921C9:       arg_10 = &HFF
  loc_14921CC:       Exit Sub
  loc_14921CD:     End If
  loc_14921DB:     Set var_94 = Me.Txt
  loc_14921E1:     Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A0)
  loc_14921E9:     arg_10 = var_98.Text
  loc_1492201:     If (CDbl(var_A0) = CDbl(0)) Then
  loc_149221D:       MsgBox("Vr. No Can Not Be 0", 0, var_EC, var_10C, var_12C)
  loc_1492237:       Set var_94 = Me.Txt
  loc_149223D:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1492245:       var_98.SetFocus
  loc_1492253:       arg_10 = &HFF
  loc_1492256:       Exit Sub
  loc_1492257:     End If
  loc_149225B:     Set var_94 = Me.TopCtrl1
  loc_1492261:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(arg_10)
  loc_149227A:     If (CStr(var_A0) = "Add") Then
  loc_14922A2:       Set var_94 = Me.Txt
  loc_14922A8:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_14922CF:       Set var_9C = Me.Txt
  loc_14922D5:       Call 0.Method_Txt_Validate0 (CInt(0), var_BC, var_138)
  loc_14922DD:       5 = var_BC.Tag
  loc_14922EA:       var_CC = Space((CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_98.Tag) - Len(var_138)))
  loc_14922F2:       var_10C = ( + "Vr. No Can Not Be 0")
  loc_1492306:       var_12C = Space((5 - Len(global_124)))
  loc_149230E:       var_148 = (var_10C + var_12C)
  loc_149231B:       var_158 = (var_148 + CVar(global_124))
  loc_1492332:       Set var_15C = Me.Txt
  loc_1492338:       Call 0.Method_Txt_Validate0 (CInt(1), var_160, var_164)
  loc_1492340:       8 = var_160.Text
  loc_149234D:       var_174 = Space((var_158 - Len(var_164)))
  loc_1492355:       var_184 = ( + var_174)
  loc_1492367:       Set var_188 = Me.Txt
  loc_149236D:       Call 0.Method_Txt_Validate0 (CInt(1), var_18C)
  loc_1492380:       var_1B0 = (var_184 + CVar(var_18C.Text))
  loc_14923D9:       Set var_94 = Me.Txt
  loc_14923DF:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_14923E7:       var_98.Text = CStr(var_1B0)
  loc_1492403:       Me.LblVPrefix.Caption = global_124
  loc_149240B:     End If
  loc_149240F:     Set var_94 = Me.TopCtrl1
  loc_1492415:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_149241D:     var_A0 = CStr()
  loc_149242E:     If (var_A0 = "Add") Then
  loc_149245E:       Set var_94 = Me.Txt
  loc_1492464:       Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0, "Select Count(*) From STOCK Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_1492475:       var_130 = var_BC & var_A0
  loc_1492485:       unk_49837C.Execute var_130 & "'", 0, var_15C
  loc_1492495:        = var_BC.Item()
  loc_149249D:        = var_15C.Value
  loc_14924CA:       If (var_98.Text.Fields > 0) Then
  loc_14924D3:         Call 0.Method_arg_50 (var_A0)
  loc_14924F4:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_A0), var_10C, var_12C)
  loc_149250A:         Call Proc_49_52_1078538(MemVar_1F92044)
  loc_149251A:         If (var_A0 = vbNullString) Then
  loc_1492527:           Set var_94 = Me.Txt
  loc_149252D:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1492535:           var_98.SetFocus
  loc_1492543:           arg_10 = &HFF
  loc_1492546:           Exit Sub
  loc_1492547:         End If
  loc_149254D:         Call Proc_49_52_1078538(MemVar_1F92044, var_A0)
  loc_1492560:         Set var_94 = Me.Txt
  loc_1492566:         Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0)
  loc_149256E:         var_98.Text = arg_10
  loc_149257F:         arg_10 = &HFF
  loc_1492582:         Exit Sub
  loc_1492583:       End If
  loc_1492583:     End If
  loc_1492586:   Else
  loc_149258E:     If (var_8E = CInt(2)) Then
  loc_149259F:       Set var_94 = Me.Txt
  loc_14925A5:       Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_A0)
  loc_14925AD:       arg_10 = var_98.Text
  loc_14925C3:       var_10C = Len(Trim(CVar(var_A0)))
  loc_14925DD:       If (var_10C = 0) Then
  loc_14925F3:         Set var_94 = Me.Txt
  loc_14925F9:         Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_1492601:         var_98.Text = CStr(MemVar_1F920EC)
  loc_1492613:       Else
  loc_149261D:         Set var_94 = Me.Txt
  loc_1492623:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1492643:         Set var_BC = Me.Txt
  loc_1492649:         Call 0.Method_Txt_Validate0 (Cancel, var_15C)
  loc_1492651:         var_15C.Text = Proc_6_33_1512840(var_98)
  loc_1492664:       End If
  loc_1492671:       Set var_94 = Me.Txt
  loc_1492677:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_149267F:       var_A0 = var_98.Text
  loc_149269A:       Set var_9C = Me.Txt
  loc_14926A0:       Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_130)
  loc_14926A8:       (CDate(var_A0) >= MemVar_1F920F4) = var_BC.Text
  loc_14926CA:       If Not((var_A0 And (CDate(var_130) <= MemVar_1F920FC))) Then
  loc_14926EE:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_10C, var_12C)
  loc_1492708:         Set var_94 = Me.Txt
  loc_149270E:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1492716:         var_98.SetFocus
  loc_1492724:         arg_10 = &HFF
  loc_1492727:         Exit Sub
  loc_1492728:       End If
  loc_149272C:       Set var_94 = Me.TopCtrl1
  loc_1492732:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(arg_10)
  loc_149273A:       var_A0 = CStr(var_98)
  loc_1492750:       Set var_98 = Me.Txt
  loc_1492756:       Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_149277F:       If ((var_A0 = "Add") And (var_9C.Text = vbNullString)) Then
  loc_1492788:         Call Proc_49_52_1078538(MemVar_1F92044)
  loc_149279B:         Set var_94 = Me.Txt
  loc_14927A1:         Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_14927A9:         var_98.Text = var_A0
  loc_14927B8:       End If
  loc_14927BB:     Else
  loc_14927C3:       If (var_8E = CInt(3)) Then
  loc_14927D1:         Set var_94 = Me.Txt
  loc_14927D7:         Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_14927DF:         var_A0 = "RoomNo"
  loc_1492800:         If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_149280E:           Set var_94 = Me.Txt
  loc_1492814:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_149281C:           var_98.SetFocus
  loc_149282A:           arg_10 = &HFF
  loc_149282D:           Exit Sub
  loc_149282E:         End If
  loc_149287C:         Set var_94 = Me.Txt
  loc_1492882:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_149288A:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_14928A2:         If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_14928B2:           Set var_94 = Me.Txt
  loc_14928B8:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14928C0:           var_98.Text = vbNullString
  loc_14928D9:           Set var_94 = Me.Txt
  loc_14928DF:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14928E7:           var_98.Tag = vbNullString
  loc_1492901:           Set var_94 = Me.Txt
  loc_1492907:           Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_149290F:           var_98.Text = vbNullString
  loc_149291E:         Else
  loc_1492959:           Set var_9C = Me.Txt
  loc_149295F:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1492967:           var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14929B8:           Set var_9C = Me.Txt
  loc_14929BE:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14929C6:           var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1492A0A:           var_A0 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_1492A18:           Set var_9C = Me.Txt
  loc_1492A1E:           Call 0.Method_Txt_Validate0 (CInt(5), var_BC)
  loc_1492A26:           var_BC.Text = var_A0
  loc_1492A3C:         End If
  loc_1492A3C:       End If
  loc_1492A3C:     End If
  loc_1492A3C:   End If
  loc_1492A3C: End If
  loc_1492A41: Set var_88 = Nothing
  loc_1492A44: Exit Sub
  loc_1492A45: ' Referenced from: 1491E00
  loc_1492A45: Proc_6_60_E62BC4(var_A0)
  loc_1492A4A: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10A7560
  'Data Table: 49835C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_10C As Variant
  Dim var_13C As Variant
  loc_10A72AB: Me.DGItem.Visible = False
  loc_10A72CA: If (Me.RecordCount > 0) Then
  loc_10A7307:   Set var_B4 = Me.TxtGrid
  loc_10A730D:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10A7315:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_10A733E:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A7346:   var_EC = CVar(CLng(1)) 'Long
  loc_10A7379:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10A7381:   Set var_B8 = Me.FGrid
  loc_10A7387:   LateIdCallSt
  loc_10A73B6:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A73BE:   var_EC = CVar(CLng(6)) 'Long
  loc_10A73F1:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10A73FF:   LateIdCallSt
  loc_10A7425:   var_10C = Me.FGrid.Row
  loc_10A7466:   var_11C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")), CVar(CLng(2)), CVar(CLng(var_10C)), Me.FGrid, var_11C, CVar(CLng(2)))) 'String
  loc_10A7474:   LateIdCallSt
  loc_10A7498:   var_11C = Me.FGrid.Row
  loc_10A74C8:   var_B0 = Me.Fields.Item("LPurRate")
  loc_10A74D7:   Proc_6_39_E7C810(var_10C, CVar(var_B0), CVar(CLng(4)), CVar(CLng(var_11C)), Me.FGrid, var_11C)
  loc_10A74E0:   var_13C = CVar(CStr(var_10C)) 'String
  loc_10A74E8:   Set var_B8 = Me.FGrid
  loc_10A74EE:   LateIdCallSt
  loc_10A750A: End If
  loc_10A7516: Set var_A8 = Me.TxtGrid
  loc_10A751C: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_13E, var_B8, var_13C)
  loc_10A7524: var_A4 = var_B0.Visible
  loc_10A7536: If (var_13E = &HFF) Then
  loc_10A7542:   Set var_A8 = Me.TxtGrid
  loc_10A7548:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8)
  loc_10A7550:   var_B0.SetFocus
  loc_10A755C: End If
  loc_10A755C: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'FD3618
  'Data Table: 49835C
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD345C: On Error Goto loc_FD3610
  loc_FD346E: Me.DGVType.Visible = False
  loc_FD348D: If (Me.RecordCount > 0) Then
  loc_FD34DF:   Set var_CC = Me.Txt
  loc_FD34E5:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD34ED:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD3545:   Set var_B4 = Me.DGVType
  loc_FD355C:   Set var_CC = Me.Txt
  loc_FD3562:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD356A:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD35BE:   global_132 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD35CF: End If
  loc_FD35ED: Set var_B0 = Me.Txt
  loc_FD35F3: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD35FB: var_B4.SetFocus
  loc_FD360F: Exit Sub
  loc_FD3610: ' Referenced from: FD345C
  loc_FD3610: Proc_6_60_E62BC4(var_B4)
  loc_FD3615: Exit Sub
End Sub

Public Function MasterFormExitGet() '498FA4
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '498FB3
  MasterFormExit = Value
End Sub

Public Sub FindMove(mDocId) 'E75730
  'Data Table: 49835C
  Dim Me As Recordset15
  loc_E756DA: Me.MoveFirst
  loc_E75704: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E75724: If (Me.EOF = 0) Then
  loc_E75727:   Call Proc_49_46_1420048(var_9C)
  loc_E7572C: End If
  loc_E7572C: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E93EE0
  'Data Table: 49835C
  Dim Me As Recordset15
  loc_E93E6E: On Error Goto loc_E93ED7
  loc_E93E77: Me.MoveFirst
  loc_E93EA1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93EC9: Proc_5_0_110649C(&HFF, Me, global_68)
  loc_E93ED1: Call Proc_49_46_1420048(0)
  loc_E93ED6: Exit Sub
  loc_E93ED7: ' Referenced from: E93E6E
  loc_E93ED7: Proc_6_60_E62BC4(var_A0)
  loc_E93EDC: Exit Sub
End Sub

Public Sub Proc_49_43_118010C
  'Data Table: 49835C
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_117FD42: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_117FD5D: Me.FGrid.Top = CVar(CDbl(1500))
  loc_117FD78: Me.FGrid.Height = CVar(CDbl(2800))
  loc_117FD93: Me.FGrid.Width = CVar(CDbl(8280))
  loc_117FDAE: Me.DGItem.Left = CVar(CDbl(3000))
  loc_117FDC9: Me.DGItem.Top = CVar(CDbl(1000))
  loc_117FDDF: Set var_A8 = Me.Txt
  loc_117FDE5: Call 0.Method_Proc_49_43_118010C0 (CInt(3), var_AC)
  loc_117FE04: Me.DGRoom.Left = CVar(var_AC.Left)
  loc_117FE20: Set var_B4 = Me.Txt
  loc_117FE26: Call 0.Method_Proc_49_43_118010C0 (CInt(3), var_B8)
  loc_117FE41: Set var_A8 = Me.Txt
  loc_117FE47: Call 0.Method_Proc_49_43_118010C0 (CInt(3), var_AC)
  loc_117FE5F: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_117FE6E: Me.DGRoom.Top = CVar(var_AC.Left)
  loc_117FE8E: Set var_A8 = Me.Txt
  loc_117FE94: Call 0.Method_Proc_49_43_118010C0 (CInt(0), var_AC)
  loc_117FEB3: Me.DGVType.Left = CVar(var_AC.Left)
  loc_117FECF: Set var_B4 = Me.Txt
  loc_117FED5: Call 0.Method_Proc_49_43_118010C0 (CInt(0), var_B8)
  loc_117FEF0: Set var_A8 = Me.Txt
  loc_117FEF6: Call 0.Method_Proc_49_43_118010C0 (CInt(0), var_AC)
  loc_117FF0E: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_117FF1D: Me.DGVType.Top = CVar(var_AC.Left)
  loc_117FF33: Set var_C4 = Me.FGrid
  loc_117FF4A: global_112 = CStr(CLng(var_C4.BackColor))
  loc_117FF60: var_C4.Cols = 7
  loc_117FF68: var_94 = CVar(CLng(0)) 'Long
  loc_117FF6D: var_E8 = &HFA
  loc_117FF79: LateIdCallSt
  loc_117FF81: var_94 = 0
  loc_117FF8D: var_E8 = CVar(CLng(1)) 'Long
  loc_117FF92: var_108 = "Item Name"
  loc_117FF9B: LateIdCallSt
  loc_117FFA6: var_94 = CVar(CLng(1)) 'Long
  loc_117FFB1: var_E8 = CVar(CInt(1)) 'Integer
  loc_117FFB8: LateIdCallSt
  loc_117FFC3: var_94 = CVar(CLng(1)) 'Long
  loc_117FFC8: var_E8 = &H122A
  loc_117FFD4: LateIdCallSt
  loc_117FFDC: var_94 = 0
  loc_117FFE8: var_E8 = CVar(CLng(2)) 'Long
  loc_117FFED: var_108 = "Unit"
  loc_117FFF6: LateIdCallSt
  loc_1180001: var_94 = CVar(CLng(2)) 'Long
  loc_118000C: var_E8 = CVar(CInt(1)) 'Integer
  loc_1180013: LateIdCallSt
  loc_118001E: var_94 = CVar(CLng(2)) 'Long
  loc_1180023: var_E8 = &H578
  loc_118002F: LateIdCallSt
  loc_1180037: var_94 = 0
  loc_1180043: var_E8 = CVar(CLng(3)) 'Long
  loc_1180048: var_108 = "Qty"
  loc_1180051: LateIdCallSt
  loc_118005C: var_94 = CVar(CLng(3)) 'Long
  loc_1180067: var_E8 = CVar(CInt(7)) 'Integer
  loc_118006E: LateIdCallSt
  loc_1180079: var_94 = CVar(CLng(3)) 'Long
  loc_1180084: var_E8 = CVar(CInt(7)) 'Integer
  loc_118008B: LateIdCallSt
  loc_1180096: var_94 = CVar(CLng(3)) 'Long
  loc_118009B: var_E8 = &H578
  loc_11800A7: LateIdCallSt
  loc_11800B2: var_94 = CVar(CLng(4)) 'Long
  loc_11800B7: var_E8 = 0
  loc_11800C3: LateIdCallSt
  loc_11800CE: var_94 = CVar(CLng(5)) 'Long
  loc_11800D3: var_E8 = 0
  loc_11800DF: LateIdCallSt
  loc_11800EA: var_94 = CVar(CLng(6)) 'Long
  loc_11800FB: LateIdCallSt
  loc_1180105: Set var_C4 = Nothing 
  loc_1180109: Exit Sub
  loc_118010A: var_C4 = 0
End Sub

Public Sub Proc_49_44_E42688
  'Data Table: 49835C
  loc_E42664: Set var_88 = Me.TopCtrl1
  loc_E4266A: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_E42683: If (CStr() = "Browse") Then
  loc_E42686:   Exit Sub
  loc_E42687: End If
  loc_E42687: Exit Sub
End Sub

Public Sub Proc_49_45_12B3150(arg_C) '12B3150
  'Data Table: 49835C
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_BC As String
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_164 As MSHFlexGrid
  Dim var_174 As Variant
  Dim var_178 As String
  Dim var_92 As Integer
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_12B2B48: If (arg_C = 0) Then
  loc_12B2B5E:   var_AC = CLng(Me.FGrid.Col)
  loc_12B2B6E:   If (var_AC = CLng(1)) Then
  loc_12B2B91:     var_B2 = Me.EOF
  loc_12B2BBF:     Set var_98 = Me.TxtGrid
  loc_12B2BC5:     Call 0.Method_Proc_49_45_12B31500 (arg_C, var_B8, var_BC)
  loc_12B2BCD:     ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_12B2BE5:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_12B2BFB:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B2C03:       var_EC = CVar(CLng(1)) 'Long
  loc_12B2C08:       var_10C = vbNullString
  loc_12B2C12:       Set var_B8 = Me.FGrid
  loc_12B2C18:       LateIdCallSt
  loc_12B2C3D:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B2C45:       var_EC = CVar(CLng(6)) 'Long
  loc_12B2C4A:       var_10C = vbNullString
  loc_12B2C54:       Set var_B8 = Me.FGrid
  loc_12B2C5A:       LateIdCallSt
  loc_12B2C7F:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B2C87:       var_EC = CVar(CLng(2)) 'Long
  loc_12B2C8C:       var_10C = vbNullString
  loc_12B2C96:       Set var_B8 = Me.FGrid
  loc_12B2C9C:       LateIdCallSt
  loc_12B2CC1:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B2CC9:       var_EC = CVar(CLng(4)) 'Long
  loc_12B2CCE:       var_10C = vbNullString
  loc_12B2CD8:       Set var_B8 = Me.FGrid
  loc_12B2CDE:       LateIdCallSt
  loc_12B2CF3:     Else
  loc_12B2CF6:       Call Proc_49_54_FBEF54(var_B2, var_B8, var_10C, var_EC, var_CC, var_B8, var_10C, var_EC)
  loc_12B2D01:       If (var_B2 = 0) Then
  loc_12B2D09:         Proc_49_45_12B3150 = 0
  loc_12B2D0F:       End If
  loc_12B2D28:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B2D30:       var_EC = CVar(CLng(6)) 'Long
  loc_12B2D4A:       var_BC = CStr(Me.FGrid.TextMatrix))
  loc_12B2D68:       var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B2D70:       var_150 = CVar(CLng(6)) 'Long
  loc_12B2D8A:       var_178 = CStr(Me.FGrid.TextMatrix))
  loc_12B2DF5:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(6)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_12B2E0C:         var_92 = CInt(CLng(Me.FGrid.Row))
  loc_12B2E28:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B2E30:         var_FC = CVar(CLng(1)) 'Long
  loc_12B2E63:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_12B2E6B:         Set var_164 = Me.FGrid
  loc_12B2E71:         LateIdCallSt
  loc_12B2EA0:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B2EA8:         var_FC = CVar(CLng(6)) 'Long
  loc_12B2EDB:         var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_12B2EE3:         Set var_164 = Me.FGrid
  loc_12B2EE9:         LateIdCallSt
  loc_12B2F18:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B2F20:         var_FC = CVar(CLng(2)) 'Long
  loc_12B2F4A:         var_12C = Me.Fields.Item("Unit").Value
  loc_12B2F53:         var_140 = CVar(CStr(var_12C)) 'String
  loc_12B2F5B:         Set var_164 = Me.FGrid
  loc_12B2F61:         LateIdCallSt
  loc_12B2F81:         var_CC = CVar(CLng(var_92)) 'Long
  loc_12B2F93:         var_A8 = CVar(CStr(var_92)) 'String
  loc_12B2F9B:         Set var_98 = Me.FGrid
  loc_12B2FA1:         LateIdCallSt
  loc_12B2FB9:         var_140 = Me.FGrid.Row
  loc_12B2FC2:         var_DC = CVar(CLng(var_140)) 'Long
  loc_12B2FCA:         var_FC = CVar(CLng(4)) 'Long
  loc_12B2FD2:         var_CC = "LPurRate"
  loc_12B2FE1:         var_98 = Me.Fields
  loc_12B2FE9:         var_B8 = var_98.Item(var_CC)
  loc_12B2FF8:         Proc_6_39_E7C810(var_12C, CVar(var_B8), var_FC, var_DC, var_98, CVar(var_B8), CVar(CLng(0)))
  loc_12B3001:         var_174 = CVar(CStr(var_12C)) 'String
  loc_12B3009:         Set var_164 = Me.FGrid
  loc_12B300F:         LateIdCallSt
  loc_12B302B:       End If
  loc_12B302B:     End If
  loc_12B302B:     Call Proc_49_55_F73978(var_164, var_174, var_CC, var_164, var_140)
  loc_12B3033:   Else
  loc_12B303A:     If (var_AC = CLng(3)) Then
  loc_12B3047:       Set var_98 = Me.TxtGrid
  loc_12B304D:       Call 0.Method_Proc_49_45_12B31500 (arg_C, var_B8, var_FC)
  loc_12B3065:       If Not(IsNumeric(CVar(var_B8))) Then
  loc_12B306C:         var_BC = CStr(0)
  loc_12B3079:         Set var_98 = Me.TxtGrid
  loc_12B307F:         Call 0.Method_Proc_49_45_12B31500 (arg_C, var_B8, var_BC)
  loc_12B3087:         var_B8.Text = var_DC
  loc_12B3096:       End If
  loc_12B30A3:       Set var_98 = Me.TxtGrid
  loc_12B30A9:       Call 0.Method_Proc_49_45_12B31500 (arg_C, var_B8, var_BC)
  loc_12B30B1:       var_164 = var_B8.Text
  loc_12B30C9:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B30E1:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12B311B:       LateIdCallSt
  loc_12B313F:       Call Proc_49_55_F73978(Me.FGrid, CVar(CStr(Format(CVar(var_BC), "0.000"))), 1, 1)
  loc_12B3144:     End If
  loc_12B3144:   End If
  loc_12B3144: End If
  loc_12B3149: Proc_49_45_12B3150 = &HFF
End Sub

Public Sub Proc_49_46_1420048
  'Data Table: 49835C
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_49837C As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Variant
  Dim var_168 As Integer
  Dim var_124 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_158 As Variant
  Dim var_16C As Field20
  Dim var_188 As TextBox
  Dim var_BC As Variant
  Dim var_184 As TextBox
  Dim var_8E As Integer
  Dim var_88 As Recordset15
  Dim var_144 As Variant
  loc_141F5DC: On Error Goto loc_1420040
  loc_141F5F6: If (Me.RecordCount > 0) Then
  loc_141F638:   var_DC = "Select S.* From STOCK S Where S.Docid='" & Me.Fields.Item("DocID").Value 
  loc_141F64F:   unk_49837C.Execute CStr(var_DC & "'"), var_120, -1
  loc_141F677:   Set var_128 = var_124 
  loc_141F6B4:   Set var_124 = Me.Txt
  loc_141F6BA:   Call 0.Method_Proc_49_46_14200480 (CInt(4), var_12C)
  loc_141F6C2:   var_12C.Text = CStr(var_128.Fields.Item("DocID").Value)
  loc_141F6F2:   var_AC = var_128.Fields.Item("vType")
  loc_141F6FA:   var_BC = var_AC.Value
  loc_141F711:   Set var_124 = Me.Txt
  loc_141F717:   Call 0.Method_Proc_49_46_14200480 (CInt(0), var_12C)
  loc_141F71F:   var_12C.Tag = CStr(var_BC)
  loc_141F73B:   var_168 = 0
  loc_141F75C:   var_CC = 0
  loc_141F77C:   var_100 = "Select 'M'+ShortName From Depart Where Code='" & global_144
  loc_141F78C:   unk_49837C.Execute CStr(var_BC) & "'", var_BC, -1
  loc_141F794:   var_98 = var_98.Fields
  loc_141F79C:   var_CC = var_AC.Item(var_AC)
  loc_141F7A4:   var_124 = var_124.Value
  loc_141F7C3:   unk_49837C.Execute CStr(var_DC & var_DC & "'"), "Select NCAT From Voucher_Type Where V_Type='", var_154
  loc_141F7CB:   -1 = var_12C.Fields
  loc_141F7D3:   var_158 = var_158.Item(var_12C)
  loc_141F7DB:   var_168 = var_16C.Value
  loc_141F7EA:   global_132 = CStr(var_17C)
  loc_141F81D:   var_168 = 0
  loc_141F83E:   var_CC = 0
  loc_141F85E:   var_100 = "Select 'M'+ShortName From Depart Where Code='" & global_144
  loc_141F86E:   unk_49837C.Execute CStr(var_BC) & "'", var_BC, -1
  loc_141F876:   var_98 = var_98.Fields
  loc_141F87E:   var_CC = var_AC.Item(var_AC)
  loc_141F886:   var_124 = var_124.Value
  loc_141F897:   var_120 = var_DC & var_DC & "'" 
  loc_141F8A5:   unk_49837C.Execute CStr(var_120), "Select Description From Voucher_type Where V_Type='", var_154
  loc_141F8AD:   -1 = var_12C.Fields
  loc_141F8B5:   var_158 = var_158.Item(var_12C)
  loc_141F8BD:   var_168 = var_16C.Value
  loc_141F8D4:   Set var_184 = Me.Txt
  loc_141F8DA:   Call 0.Method_Proc_49_46_14200480 (CInt(0), var_188)
  loc_141F8E2:   var_188.Text = CStr(var_17C)
  loc_141F94D:   Set var_124 = Me.Txt
  loc_141F953:   Call 0.Method_Proc_49_46_14200480 (CInt(1), var_12C)
  loc_141F95B:   var_12C.Text = CStr(var_128.Fields.Item("VNo").Value)
  loc_141F9C3:   Set var_124 = Me.Txt
  loc_141F9C9:   Call 0.Method_Proc_49_46_14200480 (CInt(2), var_12C, CStr(Format(CVar(var_128.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_141F9D1:   var_12C.Text = 1
  loc_141FA23:   Me.LblVPrefix.Caption = CStr(var_128.Fields.Item("vPrefix").Value)
  loc_141FA6D:   Set var_124 = Me.Txt
  loc_141FA73:   Call 0.Method_Proc_49_46_14200480 (CInt(5), var_12C)
  loc_141FA7B:   var_12C.Text = Proc_6_38_E68A98(CVar(var_128.Fields.Item("RoomCat")), 1)
  loc_141FAB7:   var_100 = Proc_6_38_E68A98(CVar(var_128.Fields.Item("RoomNo")))
  loc_141FAC5:   Set var_124 = Me.Txt
  loc_141FACB:   Call 0.Method_Proc_49_46_14200480 (CInt(3), var_12C)
  loc_141FAD3:   var_12C.Tag = var_100
  loc_141FB01:   var_AC = var_128.Fields.Item("RoomNo")
  loc_141FB09:   var_BC = var_AC.Value
  loc_141FB23:   If CBool(var_BC <> vbNullString) Then
  loc_141FB53:     Set var_98 = Me.Txt
  loc_141FB59:     Call 0.Method_Proc_49_46_14200480 (CInt(3), var_AC, var_100, "Select Name,RoomCat From RoomMast Where Code='", var_BC, -1)
  loc_141FB61:     var_124 = var_AC.Tag
  loc_141FB7A:     unk_49837C.Execute var_12C & var_100 & "' and (code is not null or code <> '')", 0, var_158
  loc_141FB8A:      = var_12C.Item(var_16C)
  loc_141FB92:      = var_158.Value
  loc_141FBA9:     Set var_16C = Me.Txt
  loc_141FBAF:     Call 0.Method_Proc_49_46_14200480 (CInt(3), var_184)
  loc_141FBB7:     var_184.Text = CStr(var_124.Fields)
  loc_141FBDF:   End If
  loc_141FBE1:   Set var_128 = Nothing 
  loc_141FBF4:   Me.FGrid.Redraw = False
  loc_141FC0F:   Me.FGrid.Rows = 1
  loc_141FC19:   var_8E = 1
  loc_141FC29:   var_CC = "Select S1.*,I.name as ItemName From STOCK S1 Left Join ItemMast I On S1.Item=I.Code And I.ItemType='Store' Where S1.DocId='"
  loc_141FC72:   unk_49837C.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_141FC7D:   Set var_88 = var_124
  loc_141FCAB:   If (var_88.RecordCount > 0) Then
  loc_141FCAE:     ' Referenced from: 141FF77
  loc_141FCBD:     If Not(var_88.EOF) Then
  loc_141FCC0:       var_A8 = vbNullString
  loc_141FCCA:       Set var_98 = Me.FGrid
  loc_141FCDF:       Set var_190 = Me.FGrid
  loc_141FCE6:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_141FCEE:       var_110 = CVar(CLng(0)) 'Long
  loc_141FD1E:       var_DC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_141FD25:       LateIdCallSt
  loc_141FD3F:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_141FD47:       var_110 = CVar(CLng(6)) 'Long
  loc_141FD77:       var_DC = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_141FD7E:       LateIdCallSt
  loc_141FDCD:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_190, var_DC, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_141FDD4:       LateIdCallSt
  loc_141FE06:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_141FE0E:       var_144 = CVar(CLng(3)) 'Long
  loc_141FE42:       LateIdCallSt
  loc_141FE91:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(2)), CVar(CLng(var_8E)), var_190, CVar(CStr(Format(CVar(var_88.Fields.Item("QtyRec")), "0.000"))), 1, 1)) 'String
  loc_141FE98:       LateIdCallSt
  loc_141FEE1:       Proc_6_39_E7C810(var_DC, CVar(var_88.Fields.Item("Rate")), CVar(CLng(4)), CVar(CLng(var_8E)), var_190, var_DC)
  loc_141FEF1:       LateIdCallSt
  loc_141FF3C:       Proc_6_39_E7C810(var_DC, CVar(var_88.Fields.Item("Amount")), CVar(CLng(5)), CVar(CLng(var_8E)), var_190, CVar(CStr(var_DC)))
  loc_141FF45:       var_FC = CVar(CStr(var_DC)) 'String
  loc_141FF4C:       LateIdCallSt
  loc_141FF62:       Set var_190 = Nothing 
  loc_141FF6C:       var_8E = (var_8E + 1)
  loc_141FF72:       var_88.MoveNext
  loc_141FF77:       GoTo loc_141FCAE
  loc_141FF7A:     End If
  loc_141FF8D:     Me.FGrid.FixedRows = 1
  loc_141FF95:   End If
  loc_141FFA3:   Me.FGrid.Redraw = True
  loc_141FFB1:   If (var_8E = 1) Then
  loc_141FFC7:     Me.FGrid.Rows = 1
  loc_141FFED:     var_BC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_8E, var_190, var_FC, var_144))) 'String
  loc_141FFF5:     Set var_AC = Me.FGrid
  loc_1420022:     Me.FGrid.FixedRows = 1
  loc_142002A:   End If
  loc_142002D: Else
  loc_142002D:   Call Proc_49_48_F2F9B0(FGrid.DispID_10000, var_BC, var_EC, var_190)
  loc_1420032: End If
  loc_1420032: Call Proc_49_50_EBCCC8(var_DC, var_190)
  loc_142003C: Set var_88 = Nothing
  loc_142003F: Exit Sub
  loc_1420040: ' Referenced from: 141F5DC
  loc_1420040: Proc_6_60_E62BC4(var_DC)
  loc_1420045: Exit Sub
End Sub

Public Sub Proc_49_47_108D410
  'Data Table: 49835C
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_49837C As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_108D189: Set var_9C = Me.TopCtrl1
  loc_108D18F: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(&HFF)
  loc_108D197: var_B0 = CStr()
  loc_108D1A8: If (var_B0 = "Add") Then
  loc_108D1D8:   Set var_9C = Me.Txt
  loc_108D1DE:   Call 0.Method_Proc_49_47_108D4100 (CInt(4), var_B4, var_B0, "Select Count(*) From STOCK Where DocID='", var_AC, -1)
  loc_108D1FF:   unk_49837C.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_108D20F:    = var_D4.Item()
  loc_108D217:    = var_E8.Value
  loc_108D244:   If (var_B4.Text.Fields > 0) Then
  loc_108D24D:     Call 0.Method_arg_50 (var_B0)
  loc_108D26E:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_108D284:     Call Proc_49_52_1078538(MemVar_1F92044)
  loc_108D297:     Set var_9C = Me.Txt
  loc_108D29D:     Call 0.Method_Proc_49_47_108D4100 (CInt(4), var_B4)
  loc_108D2A5:     var_B4.Text = var_B0
  loc_108D2B9:     Proc_49_47_108D410 = 0
  loc_108D2BF:   End If
  loc_108D2BF: End If
  loc_108D2E4: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_108D2EE:   var_CC = CVar(CLng(var_88)) 'Long
  loc_108D2F6:   var_108 = CVar(CLng(6)) 'Long
  loc_108D316:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_108D332:   If CBool(var_118 <> vbNullString) Then
  loc_108D339:     var_CC = CVar(CLng(var_88)) 'Long
  loc_108D341:     var_108 = CVar(CLng(3)) 'Long
  loc_108D371:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_108D399:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_108D3BF:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_108D3CB:       Set var_9C = Me.FGrid
  loc_108D3EF:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_108D3FC:       Proc_49_47_108D410 = 0
  loc_108D402:     End If
  loc_108D402:   End If
  loc_108D405: Next var_12C 'Integer
  loc_108D40A: Proc_49_47_108D410 = 
End Sub

Public Sub Proc_49_48_F2F9B0
  'Data Table: 49835C
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  loc_F2F8A9: Me.LblVPrefix.Caption = vbNullString
  loc_F2F8BF: Set var_8C = Me.Txt
  loc_F2F8C5: Call 0.Method_Proc_49_48_F2F9B0C (var_8E, var_86)
  loc_F2F8D5: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F2F8EB:   Set var_8C = Me.Txt
  loc_F2F8F1:   Call 0.Method_Proc_49_48_F2F9B00 (CInt(var_86), var_98)
  loc_F2F8F9:   var_98.Text = vbNullString
  loc_F2F915:   Set var_8C = Me.Txt
  loc_F2F91B:   Call 0.Method_Proc_49_48_F2F9B00 (CInt(var_86), var_98)
  loc_F2F923:   var_98.Tag = vbNullString
  loc_F2F932: Next var_92 'Byte
  loc_F2F94B: Me.FGrid.Rows = 1
  loc_F2F971: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_F2F979: Set var_98 = Me.FGrid
  loc_F2F9A6: Me.FGrid.FixedRows = 1
  loc_F2F9AE: Exit Sub
End Sub

Public Sub Proc_49_49_EF5388(arg_C) 'EF5388
  'Data Table: 49835C
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  loc_EF52BE: Set var_8C = Me.Txt
  loc_EF52C4: Call 0.Method_Proc_49_49_EF5388C (var_8E, var_86)
  loc_EF52D4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EF52EA:   Set var_8C = Me.Txt
  loc_EF52F0:   Call 0.Method_Proc_49_49_EF53880 (CInt(var_86), var_98)
  loc_EF52F8:   var_98.Enabled = arg_C
  loc_EF5307: Next var_92 'Byte
  loc_EF531A: Set var_8C = Me.Txt
  loc_EF5320: Call 0.Method_Proc_49_49_EF53880 (CInt(4), var_98)
  loc_EF5328: var_98.Enabled = False
  loc_EF5341: Set var_8C = Me.Txt
  loc_EF5347: Call 0.Method_Proc_49_49_EF53880 (CInt(2), var_98)
  loc_EF534F: var_98.Enabled = False
  loc_EF536A: Set var_8C = Me.Txt
  loc_EF5370: Call 0.Method_Proc_49_49_EF53880 (global_128, var_98)
  loc_EF5378: var_98.Enabled = False
  loc_EF5384: Exit Sub
  loc_EF5385: var_C8 = CVar() 'String
End Sub

Public Sub Proc_49_50_EBCCC8
  'Data Table: 49835C
  loc_EBCC40: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EBCC52:   Me.DGVType.Visible = False
  loc_EBCC5A: End If
  loc_EBCC76: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_EBCC88:   Me.DGRoom.Visible = False
  loc_EBCC90: End If
  loc_EBCCAC: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EBCCBE:   Me.DGItem.Visible = False
  loc_EBCCC6: End If
  loc_EBCCC6: Exit Sub
End Sub

Public Sub Proc_49_51_F0DD04
  'Data Table: 49835C
  loc_F0DC28: Call Proc_49_50_EBCCC8()
  loc_F0DC38: Set var_88 = Me.Txt
  loc_F0DC3E: Call 0.Method_Proc_49_51_F0DD040 (CInt(2))
  loc_F0DC67: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F0DC6A:   Exit Sub
  loc_F0DC6B: End If
  loc_F0DC76: Set var_88 = Me.Txt
  loc_F0DC7C: Call 0.Method_Proc_49_51_F0DD040 (CInt(1), var_8C)
  loc_F0DCA5: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F0DCA8:   Exit Sub
  loc_F0DCA9: End If
  loc_F0DCE0: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0DCE3:   Call TopCtrl1_UnknownEvent_16()
  loc_F0DCEB: Else
  loc_F0DCF1:   Call 0.Method_arg_1E8 (var_88)
  loc_F0DCF9:   Call var_88.SetFocus
  loc_F0DD02: End If
  loc_F0DD02: Exit Sub
End Sub

Public Sub Proc_49_52_1078538
  'Data Table: 49835C
  Dim var_98 As TextBox
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_C0 As Variant
  Dim var_F4 As Variant
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  loc_10782EA: Call 0.Method_Proc_49_52_10785380 (CInt(0), var_98)
  loc_10782FA: var_90 = var_98.Tag
  loc_1078325: Me.Connection15.Execute "Select MAX(vno)AS VNO From STOCK s Where s.VType='" & var_90 & "' ", var_C0, -1
  loc_1078330: Set var_8C = Me.Txt
  loc_1078354: If (var_8C.RecordCount > 0) Then
  loc_1078374:   var_D4 = Year(DateAdd("d", CDbl(&HFF), MemVar_1F920F4))
  loc_1078383:   global_124 = CStr(var_D4)
  loc_10783A8:   var_98 = var_8C.Fields.Item("VNo")
  loc_10783B7:   Proc_6_39_E7C810(var_D4, CVar(var_98))
  loc_10783C4:   var_F4 = (var_D4 + 1)
  loc_10783CC:   global_128 = CInt(var_F4)
  loc_10783DB: End If
  loc_1078405: var_F4 = (CVar(global_128 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C)) + Trim(var_90))
  loc_1078416: var_108 = Space((5 - Len(var_90)))
  loc_107841E: var_118 = (var_F4 + var_108)
  loc_1078432: var_128 = Space((5 - Len(global_124)))
  loc_107843A: var_138 = (var_118 + var_128)
  loc_1078447: var_148 = (var_138 + CVar(global_124))
  loc_1078460: var_158 = Space((8 - Len(CStr(global_128))))
  loc_1078468: var_168 = (var_148 + var_158)
  loc_1078477: var_188 = (var_168 + CVar(CStr(global_128)))
  loc_1078482: global_116 = CStr(var_188)
  loc_10784BA: Me.LblVPrefix.Caption = global_124
  loc_10784D3: Set var_94 = Me.Txt
  loc_10784D9: Call 0.Method_Proc_49_52_10785380 (CInt(4), var_98)
  loc_10784E1: var_98.Text = global_116
  loc_1078509: Call 0.Method_Proc_49_52_10785380 (CInt(1), var_98)
  loc_1078511: var_98.Text = CStr(global_128)
  loc_1078526: var_88 = global_116
  loc_107852E: Set var_8C = Nothing
  loc_1078531: Proc_49_52_1078538 = Me.Txt
End Sub

Public Sub Proc_49_53_10B6C30(arg_C, arg_10, arg_14) '10B6C30
  'Data Table: 49835C
  Dim unk_49837C As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B699E: If (arg_C = "HKROP") Then
  loc_10B69C5:   unk_49837C.Execute "Select Distinct DocId,VType,VNo From STOCK Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B69D0:   Set var_8C = var_C4
  loc_10B69E3:   var_94 = "Room Op.STOCK Entry"
  loc_10B69E9: Else
  loc_10B69EE:   Proc_49_53_10B6C30 = &HFF
  loc_10B69F4: End If
  loc_10B6A08: If (var_8C.RecordCount > 0) Then
  loc_10B6A0B:   ' Referenced from: 10B6B84
  loc_10B6A1A:   If Not(var_8C.EOF) Then
  loc_10B6A25:     If (var_90 = vbNullString) Then
  loc_10B6A68:       var_D4 = "V.Type :-> " & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B6A6F:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B6AA1:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B6AC6:     Else
  loc_10B6B02:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B6B22:       var_10C = CVar(var_120 & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B6B4F:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B6B54:       var_90 = CStr(var_11C)
  loc_10B6B7C:     End If
  loc_10B6B7F:     var_8C.MoveNext
  loc_10B6B84:     GoTo loc_10B6A0B
  loc_10B6B87:   End If
  loc_10B6B8D:   Call 0.Method_arg_50 (var_138)
  loc_10B6BE9:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This ," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B6BEC:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B6C1B:   Set var_8C = Nothing
  loc_10B6C1E:   Proc_49_53_10B6C30 = 0
  loc_10B6C24: End If
  loc_10B6C29: Proc_49_53_10B6C30 = &HFF
End Sub

Public Sub Proc_49_54_FBEF54
  'Data Table: 49835C
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBEDD7: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FBEDDC:   var_92 = 1 'Byte
  loc_FBEDE0: End If
  loc_FBEDE9: Set var_98 = Me.TxtGrid
  loc_FBEDEF: Call 0.Method_Proc_49_54_FBEF540 (0, var_B0)
  loc_FBEE12: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBEE46: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBEE6A:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBEE6D:     GoTo loc_FBEF3F
  loc_FBEE70:   End If
  loc_FBEE74:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBEE9E:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBEEA8:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBEEDD:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBEF01:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBEF1A:     Set var_98 = Me.TxtGrid
  loc_FBEF20:     Call 0.Method_Proc_49_54_FBEF540 (0, var_B0, CVar(CLng(var_92)))
  loc_FBEF28:     var_B0.SetFocus
  loc_FBEF39:     Proc_49_54_FBEF54 = 0
  loc_FBEF3F:     ' Referenced from: FBEE6D
  loc_FBEF3F:   End If
  loc_FBEF42: Next var_D4 'Integer
  loc_FBEF4C: Proc_49_54_FBEF54 = &HFF
End Sub

Public Sub Proc_49_55_F73978
  'Data Table: 49835C
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  loc_F7387B: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F73883: var_C8 = CVar(CLng(4)) 'Long
  loc_F738BB: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F738C3: var_134 = CVar(CLng(3)) 'Long
  loc_F738FB: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F73903: var_1F0 = CVar(CLng(5)) 'Long
  loc_F73934: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_F7393C: Set var_224 = Me.FGrid
  loc_F73942: LateIdCallSt
  loc_F73975: Exit Sub
End Sub
