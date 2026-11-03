VERSION 5.00
Begin VB.Form HallItemGroupMast
  Caption = "Item Group Entry"
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
  ClientWidth = 8880
  ClientHeight = 4410
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4065
    Top = 2025
    Width = 1515
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 10
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 450
    TabIndex = 8
  End
  Begin DataGrid DGHelp
    Left = 4425
    Top = 4455
    Width = 6645
    Height = 2280
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4065
    Top = 1710
    Width = 3690
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
  Begin MSFlexGrid FGPoint
    Left = -135
    Top = 3960
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 4
  End
  Begin Label LblName
    Caption = "Status"
    Index = 7
    ForeColor = &HFF0000&
    Left = 2955
    Top = 2055
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 510
    Width = 180
    Height = 540
    TabIndex = 7
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
    Top = 8895
    Width = 2430
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 150
    Top = 8565
    Width = 2520
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
  Begin Label LblName
    Caption = "Item Group"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2955
    Top = 1710
    Width = 1065
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

Attribute VB_Name = "HallItemGroupMast"

Private global_88 As Integer

Private Sub TopCtrl1_UnknownEvent_A 'EAAF3C
  'Data Table: 44A6C8
  Dim var_8C As Label
  Dim var_94 As TextBox
  loc_EAAEB0: On Error Goto loc_EAAF36
  loc_EAAED6: Call Proc_117_29_E79DEC(Proc_5_1_100CB50("ADD", Me))
  loc_EAAEE1: Call Proc_117_30_EDA898(global_56)
  loc_EAAEF3: Me.LblUser.Caption = vbNullString
  loc_EAAF08: Me.LblLDt.Caption = vbNullString
  loc_EAAF1B: Set var_8C = Me.Txt
  loc_EAAF21: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EAAF29: var_94.SetFocus
  loc_EAAF35: Exit Sub
  loc_EAAF36: ' Referenced from: EAAEB0
  loc_EAAF36: Proc_6_60_E62BC4(var_94)
  loc_EAAF3B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC4DCC
  'Data Table: 44A6C8
  loc_EC4D34: On Error Goto loc_EC4DC4
  loc_EC4D6E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC4D7D:   Set var_10C = Me
  loc_EC4D94:   Call Proc_117_29_E79DEC(Proc_5_1_100CB50("INI", var_10C))
  loc_EC4D9F:   Call Proc_117_33_E834B8(global_56)
  loc_EC4DA4:   Call Proc_117_31_11E6990()
  loc_EC4DAC: Else
  loc_EC4DB2:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC4DBA:   Call var_10C.SetFocus
  loc_EC4DC3: End If
  loc_EC4DC3: Exit Sub
  loc_EC4DC4: ' Referenced from: EC4D34
  loc_EC4DC4: Proc_6_60_E62BC4()
  loc_EC4DC9: Exit Sub
  loc_EC4DCA: Set arg_5074 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_C '112D420
  'Data Table: 44A6C8
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim unk_44A6DC As Connection15
  Dim var_114 As Variant
  Dim var_B0 As String
  loc_112D0D8: On Error Goto loc_112D3D0
  loc_112D0E9: If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_112D0EC:   Exit Sub
  loc_112D0ED: End If
  loc_112D11F: var_D0 = "Item Master"
  loc_112D167: If (Proc_6_108_1010FEC(MemVar_1F92044, "ItemMast", "ItemGroup", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_112D16A:   Exit Sub
  loc_112D16B: End If
  loc_112D1A2: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_112D1AE:   unk_44A6DC.BeginTrans var_CC
  loc_112D1C4:   var_94 = Me.Bookmark 'Variant
  loc_112D210:   var_114 = "Delete From ItemGrp Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_112D21E:   unk_44A6DC.Execute CStr(var_114), var_134, -1
  loc_112D269:   var_164 = 0
  loc_112D27C:   var_15C = 0
  loc_112D287:   var_158 = 0
  loc_112D29A:   var_150 = 0
  loc_112D2A5:   var_14C = 0
  loc_112D2B8:   var_144 = 0
  loc_112D2F8:   var_B0 = "ItemGrp"
  loc_112D301:   Proc_154_5_10E33A4(MemVar_1F92044, var_B0, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_112D32F:   unk_44A6DC.CommitTrans
  loc_112D33F:   Me.Requery -1
  loc_112D34F:   Me.Requery -1
  loc_112D36F:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_112D37C:     Me.Bookmark = var_94
  loc_112D384:   Else
  loc_112D398:     If (Me.EOF = 0) Then
  loc_112D3A1:       Me.MoveLast
  loc_112D3A6:     End If
  loc_112D3A6:   End If
  loc_112D3A6:   Call Proc_117_31_11E6990(var_144, 0, var_14C, var_150)
  loc_112D3C7:   Proc_5_0_110649C(&HFF, Me, global_56, 0)
  loc_112D3CF: End If
  loc_112D3CF: Exit Sub
  loc_112D3D0: ' Referenced from: 112D0D8
  loc_112D3D6: unk_44A6DC.RollbackTrans
  loc_112D3E3: Set var_98 = Err()
  loc_112D3E9: Call 0.Method_arg_2C (var_B0, 0, var_158)
  loc_112D40A: MsgBox(CVar(var_B0), &H30, " Deletion Error ", var_114, var_134)
  loc_112D41D: Exit Sub
  loc_112D41E: Set arg_5068 = var_15C
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EEEC2C
  'Data Table: 44A6C8
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EEEB5C: On Error Goto loc_EEEC24
  loc_EEEB6D: If (Proc_183_55_FE7900(global_56) = &HFF) Then
  loc_EEEB70:   Exit Sub
  loc_EEEB71: End If
  loc_EEEB94: Call Proc_117_29_E79DEC(Proc_5_1_100CB50("EDIT", Me))
  loc_EEEBAD: Set var_8C = Me.Txt
  loc_EEEBB3: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EEEBC6: global_64 = var_94.Text
  loc_EEEBDF: Set var_8C = Me.Txt
  loc_EEEBE5: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EEEBED: var_94.SetFocus
  loc_EEEC06: Me.LblUser.Caption = vbNullString
  loc_EEEC1B: Me.LblLDt.Caption = vbNullString
  loc_EEEC23: Exit Sub
  loc_EEEC24: ' Referenced from: EEEB5C
  loc_EEEC24: Proc_6_60_E62BC4(global_56)
  loc_EEEC29: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B748
  'Data Table: 44A6C8
  loc_E1B73D: Me.Global.Unload Me
  loc_E1B745: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F5174C
  'Data Table: 44A6C8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_110 As String
  Dim MemVar_1F920E4 As String
  loc_F51638: On Error Goto loc_F516E7
  loc_F51644: var_88 = Me.RecordCount
  loc_F51652: If (var_88 <= 0) Then
  loc_F5165B:   var_B8 = "Information"
  loc_F51676:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F51686:   Exit Sub
  loc_F51687: End If
  loc_F51695: var_110 = "SELECT Code,Name As ItemGroup,Status As Status FROM ItemGrp WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND RestCode='"
  loc_F516A6: MemVar_1F920E4 = var_110 & global_52 & "' ORDER BY Name"
  loc_F516B9: MemVar_1F92120 = Me
  loc_F516C0: var_10C = "3500,1500"
  loc_F516C6: Proc_6_126_F1BCC0(var_10C)
  loc_F516E1: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F516E6: Exit Sub
  loc_F516E7: ' Referenced from: F51638
  loc_F516EF: Set var_118 = Err()
  loc_F516F5: Call 0.Method_arg_1C (var_88)
  loc_F51706: If (var_88 <> 0) Then
  loc_F51711:   Set var_118 = Err()
  loc_F51717:   Call 0.Method_arg_2C (var_10C)
  loc_F51738:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F5174B: End If
  loc_F5174B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3D758
  'Data Table: 44A6C8
  loc_E3D748: Proc_5_0_110649C(&HFF, Me)
  loc_E3D750: Call Proc_117_31_11E6990(global_56)
  loc_E3D755: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3C498
  'Data Table: 44A6C8
  loc_E3C488: Proc_5_0_110649C(&HFF, Me)
  loc_E3C490: Call Proc_117_31_11E6990(global_56)
  loc_E3C495: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3C198
  'Data Table: 44A6C8
  loc_E3C188: Proc_5_0_110649C(&HFF, Me)
  loc_E3C190: Call Proc_117_31_11E6990(global_56)
  loc_E3C195: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3D7B8
  'Data Table: 44A6C8
  loc_E3D7A8: Proc_5_0_110649C(&HFF, Me)
  loc_E3D7B0: Call Proc_117_31_11E6990(global_56)
  loc_E3D7B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10A0CBC
  'Data Table: 44A6C8
  Dim var_A0 As String
  Dim var_A4 As String
  Dim var_AC As String
  Dim unk_44A6DC As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_136 As Integer
  Dim var_CC As Variant
  Dim var_F4 As Variant
  loc_10A0A10: On Error Goto loc_10A0C71
  loc_10A0A3F: var_AC = "SELECT * FROM ItemGrp WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and RestCode='" & global_52 & "' ORDER BY Name"
  loc_10A0A48: unk_44A6DC.Execute var_AC, var_CC, -1
  loc_10A0A53: Set var_88 = var_D0
  loc_10A0A6D: var_D4 = var_88.RecordCount
  loc_10A0A7B: If (var_D4 = 0) Then
  loc_10A0A97:   MsgBox("No Record Present For Printing", 0, var_F4, var_114, var_134)
  loc_10A0AA7:   Exit Sub
  loc_10A0AA8: End If
  loc_10A0AB7: var_A4 = MemVar_1F920B4 & "\HallItemGrp.ttx"
  loc_10A0ABE: Set var_D0 = var_88 
  loc_10A0ACA: var_136 = CreateFieldDefFile(var_D0, var_A4)
  loc_10A0AD4: Set var_88 = var_D0
  loc_10A0ADA: var_BC = CVar(var_136) 'Integer
  loc_10A0ADD: var_98 = var_BC 'Variant
  loc_10A0AF9: var_A0 = MemVar_1F920B4 & "\HallItemGrp.RPT"
  loc_10A0B02: Call 0.Method_arg_1C (var_A0, var_BC, var_D0)
  loc_10A0B0D: MemVar_1F921E4 = var_D0
  loc_10A0B28: Call 0.Method_arg_90 (var_D0, var_D4, var_9A, 1)
  loc_10A0B30: Call 0.Method_arg_24 (var_136, &HFF)
  loc_10A0B3C: For var_13A =  To CInt(var_D4): var_D0 = var_13A 'Integer
  loc_10A0B55:   Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_10A0B5D:   Call 0.Method_arg_20 (var_140)
  loc_10A0B65:   Call 0.Method_arg_30 (var_A0)
  loc_10A0BAB:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10A0BC1:     Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_10A0BC9:     Call 0.Method_arg_20 (var_140)
  loc_10A0BD1:     Call 0.Method_arg_38 ("'Item Group Master'")
  loc_10A0BDD:   End If
  loc_10A0BE0: Next var_13A 'Integer
  loc_10A0BFE: Call 0.Method_arg_64 (var_D0, CVar(var_88))
  loc_10A0C06: Call 0.Method_arg_2C (var_E4)
  loc_10A0C14: Call 0.Method_arg_150 (var_104)
  loc_10A0C1F: Call 0.Method_arg_50 (var_A0)
  loc_10A0C29: Set var_140 = Nothing
  loc_10A0C43: Set var_D0 = MemVar_1F921E4 
  loc_10A0C4F: Proc_6_99_1483714(var_D0, 0, var_A0)
  loc_10A0C5A: MemVar_1F921E4 = var_D0
  loc_10A0C6D: Set var_88 = Nothing
  loc_10A0C70: Exit Sub
  loc_10A0C71: ' Referenced from: 10A0A10
  loc_10A0C79: Set var_D0 = Err()
  loc_10A0C7F: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10A0C8A: Call 0.Method_arg_50 (var_A4)
  loc_10A0CA6: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_114, var_134)
  loc_10A0CB9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E09F30
  'Data Table: 44A6C8
  Dim Me As Recordset15
  loc_E09F27: Me.Requery -1
  loc_E09F2C: Exit Sub
  loc_E09F2D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1277280
  'Data Table: 44A6C8
  Dim var_C0 As Variant
  Dim var_AC As String
  Dim var_E4 As Variant
  Dim var_D4 As String
  Dim unk_44A6DC As Connection15
  Dim var_A0 As Variant
  Dim var_A4 As Variant
  Dim var_A8 As Field20
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim Me As Recordset15
  Dim var_11C As String
  Dim var_120 As String
  Dim var_12C As String
  Dim var_124 As TextBox
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_1B0 As Variant
  Dim var_240 As Variant
  Dim var_128 As String
  Dim var_1F0 As Variant
  loc_1276D2C: On Error Goto loc_127722B
  loc_1276D33: var_8A = CByte(0) 'Byte
  loc_1276D42: Set var_A0 = Me.Txt
  loc_1276D48: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1276D71: If (Proc_6_27_EA565C(var_A4, "Item Group") = 0) Then
  loc_1276D7B:   Call Txt_GotFocus()
  loc_1276D80:   Exit Sub
  loc_1276D81: End If
  loc_1276D86: var_9C = "Finish" 'Variant
  loc_1276D8D: Call Proc_117_32_10B26F0(var_AE, CInt(0))
  loc_1276D98: If (var_AE = &HFF) Then
  loc_1276D9B:   Exit Sub
  loc_1276D9C: End If
  loc_1276DA0: Set var_A0 = Me.TopCtrl1
  loc_1276DA6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A4)
  loc_1276DBF: If (CStr() = "Add") Then
  loc_1276DC8:   var_E4 = 0
  loc_1276DE5:   var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemGrp WHERE ISNUMERIC(SUBSTRING(Code,3,4))=1 AND SITE_CODE='" & MemVar_1F92070
  loc_1276DEC:   var_D4 = CStr() & "'"
  loc_1276DF5:   unk_44A6DC.Execute var_D4, var_D0, -1
  loc_1276DFD:   var_A0 = var_A0.Fields
  loc_1276E05:   var_E4 = var_A4.Item(var_A4)
  loc_1276E0D:   var_A8 = var_A8.Value
  loc_1276E3D:   var_104 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1276E68:   var_114 = (1 + Format(CStr(var_F4), "0000"))
  loc_1276E6D:   var_88 = CStr(var_114)
  loc_1276E7E: Else
  loc_1276E9B:   var_A4 = Me.Fields.Item("Code")
  loc_1276EAC:   var_88 = CStr(var_A4.Value)
  loc_1276EB9: End If
  loc_1276EC2: unk_44A6DC.BeginTrans var_118
  loc_1276ECB: var_8A = CByte(1) 'Byte
  loc_1276ED3: Set var_A0 = Me.TopCtrl1
  loc_1276ED9: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1276EF2: If (CStr(var_104) = "Add") Then
  loc_1276F09:   var_AC = "Insert Into ItemGrp(Code,Name,Status,Type,RestCode,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & var_88
  loc_1276F10:   var_11C = var_AC & "','"
  loc_1276F21:   Set var_A0 = Me.Txt
  loc_1276F27:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_D4, var_11C)
  loc_1276F2F:   var_284 = var_A4.Text
  loc_1276F38:   var_120 = -1 & var_D4
  loc_1276F3F:   var_12C = var_120 & "','"
  loc_1276F50:   Set var_A8 = Me.Txt
  loc_1276F56:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_124, var_128)
  loc_1276F5E:   var_12C = var_124.Text
  loc_1276F74:   var_F4 = CVar(var_288 & var_128 & "','") & var_9C 
  loc_1276FB0:   var_1B0 = var_F4 & "','" & CVar(global_52) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_1276FC8:   Proc_183_7_EB0C44(var_1F0, MemVar_1F920EC)
  loc_1276FFA:   unk_44A6DC.Execute CStr(var_1B0 & "'," & var_1F0 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_F4, 
  loc_1277043: Else
  loc_1277061:   Set var_A0 = Me.Txt
  loc_1277067:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "UPDATE ItemGrp SET Name='")
  loc_127706F:   var_240 = var_A4.Text
  loc_1277078:   var_D4 = -1 & var_AC
  loc_127707F:   var_120 = var_D4 & "',Status='"
  loc_1277090:   Set var_A8 = Me.Txt
  loc_1277096:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_124, var_11C)
  loc_127709E:   var_120 = var_124.Text
  loc_12770B4:   var_F4 = CVar(var_288 & var_11C & "',Type='") & var_9C 
  loc_12770B8:   var_C0 = "',SITE_CODE='"
  loc_12770BD:   var_104 = var_F4 & var_C0 
  loc_12770C7:   var_114 = var_104 & CVar(MemVar_1F92070) 
  loc_12770F2:   Proc_183_7_EB0C44(var_1B0, MemVar_1F920EC)
  loc_127711A:   var_12C = CStr(var_114 & "',U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_1B0 & " ,U_AE='E' WHERE Code='" & CVar(var_88) & "'")
  loc_1277124:   unk_44A6DC.Execute var_12C, , 
  loc_1277162: End If
  loc_1277168: unk_44A6DC.CommitTrans
  loc_1277171: var_8A = CByte(0) 'Byte
  loc_1277180: Me.Requery -1
  loc_1277190: Me.Requery -1
  loc_12771BA: Me.Find "Code='" & var_88 & "'", 0, 1
  loc_12771CA: Set var_A0 = Me.TopCtrl1
  loc_12771D0: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_12771E9: If (CStr() = "Add") Then
  loc_12771EC:   Call TopCtrl1_UnknownEvent_A()
  loc_12771F1:   Exit Sub
  loc_12771F2: End If
  loc_1277207: var_AC = "INI"
  loc_1277215: Call Proc_117_29_E79DEC(Proc_5_1_100CB50(var_AC, Me))
  loc_1277220: Call Proc_117_33_E834B8(global_56)
  loc_1277225: Call Proc_117_31_11E6990()
  loc_127722A: Exit Sub
  loc_127722B: ' Referenced from: 1276D2C
  loc_1277234: If (CInt(var_8A) = 1) Then
  loc_127723D:   unk_44A6DC.RollbackTrans
  loc_1277242: End If
  loc_127724A: Set var_A0 = Err()
  loc_1277250: Call 0.Method_arg_2C (var_AC)
  loc_1277269: MsgBox(CVar(var_AC), &H10, var_F4, var_104, var_114)
  loc_127727C: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10074D8
  'Data Table: 44A6C8
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_10072E6: Set var_88 = Me.Txt
  loc_10072EC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10072FA: Proc_6_74_E226B0(var_8C)
  loc_1007306: Call Proc_117_33_E834B8(var_8C)
  loc_100730E: var_92 = Index
  loc_1007319: If (var_92 = CInt(0)) Then
  loc_1007333:   If (Me.RecordCount > 0) Then
  loc_1007341:     Set var_8C = Me.FGPoint
  loc_1007359:     Proc_6_137_1193554(Me.DGHelp, global_60, Index)
  loc_1007367:   End If
  loc_10073B5:   Set var_88 = Me.Txt
  loc_10073BB:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_10073C3:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10073DB:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_10073EB:     Set var_88 = Me.Txt
  loc_10073F1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10073F9:     var_8C.Tag = vbNullString
  loc_1007405:     Exit Sub
  loc_1007406:   End If
  loc_1007413:   Set var_88 = Me.Txt
  loc_1007419:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1007421:   var_A0 = var_8C.Text
  loc_1007433:   var_B0 = "Name"
  loc_100746E:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1007477:     Me.MoveFirst
  loc_100749A:     Set var_88 = Me.Txt
  loc_10074A0:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_10074A8:     0 = var_8C.Text
  loc_10074C1:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_10074D6:   End If
  loc_10074D6: End If
  loc_10074D6: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FC804C
  'Data Table: 44A6C8
  Dim Me As Recordset15
  loc_FC7EA6: If (CLng(Shift) = &H1B) Then
  loc_FC7EA9:   Call Proc_117_33_E834B8()
  loc_FC7EAE:   Exit Sub
  loc_FC7EAF: End If
  loc_FC7EBD: If (KeyCode = CInt(0)) Then
  loc_FC7EDD:   Set var_9C = Me.FGPoint
  loc_FC7F0F:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_60, Shift)
  loc_FC7F7C:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FC7F83:     Set var_9C = Me.DGHelp
  loc_FC7FA2:     Proc_6_138_106D6F8(var_9C, global_60, KeyCode, Me.FGPoint, 0)
  loc_FC7FB0:   End If
  loc_FC7FB0: End If
  loc_FC7FCC: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FC7FED:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_FC7FF3:     Call Proc_117_34_E8FA50(KeyCode, 1, var_9C)
  loc_FC7FFB:   Else
  loc_FC8019:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_FC8022:       Proc_6_75_E527CC(Shift, arg_14)
  loc_FC802A:     Else
  loc_FC803D:       If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FC8046:         Proc_6_76_E52838(Shift, arg_14)
  loc_FC804B:       End If
  loc_FC804B:     End If
  loc_FC804B:   End If
  loc_FC804B: End If
  loc_FC804B: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EFF370
  'Data Table: 44A6C8
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_EFF2A6: If (KeyAscii = CInt(1)) Then
  loc_EFF2D2:   If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_EFF2E2:     Set var_CC = Me.Txt
  loc_EFF2E8:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFF2F0:     var_D0.Text = "Active"
  loc_EFF2FF:   Else
  loc_EFF306:     var_98 = Chr(CLng(arg_10))
  loc_EFF328:     If (Ucase(var_98) = "N") Then
  loc_EFF338:       Set var_CC = Me.Txt
  loc_EFF33E:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFF346:       var_D0.Text = "Non Active"
  loc_EFF352:     End If
  loc_EFF352:   End If
  loc_EFF354:   arg_10 = 0
  loc_EFF357: End If
  loc_EFF35D: Proc_6_133_E7EF78(var_98, arg_10)
  loc_EFF366: arg_10 = CInt(var_98)
  loc_EFF36C: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC1790
  'Data Table: 44A6C8
  loc_EC1702: If (KeyCode = CInt(0)) Then
  loc_EC1721:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC172E:     var_A4 = "Name"
  loc_EC174D:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_60)
  loc_EC177F:     Proc_6_138_106D6F8(Me.DGHelp, global_60, KeyCode, Me.FGPoint)
  loc_EC178D:   End If
  loc_EC178D: End If
  loc_EC178D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4688C
  'Data Table: 44A6C8
  loc_E4686A: Set var_88 = Me.Txt
  loc_E46870: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4687E: Proc_6_73_E22704(var_8C)
  loc_E4688A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F0946C
  'Data Table: 44A6C8
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As TextBox
  loc_F0938F: var_86 = Cancel
  loc_F0939A: If (var_86 = CInt(0)) Then
  loc_F093A0:   Call Proc_117_32_10B26F0(var_88)
  loc_F093AB:   If (var_88 = &HFF) Then
  loc_F093B0:     arg_10 = &HFF
  loc_F093B3:     Exit Sub
  loc_F093B4:   End If
  loc_F093B9:   global_88 = &HFF
  loc_F093BF: Else
  loc_F093C7:   If (var_86 = CInt(1)) Then
  loc_F093D4:     Set var_8C = Me.Txt
  loc_F093DA:     Call 0.Method_Txt_Validate0 (Cancel, var_90, global_88)
  loc_F09415:     If (Ucase(Left(CVar(var_90), 1)) = "Active") Then
  loc_F09425:       Set var_8C = Me.Txt
  loc_F0942B:       Call 0.Method_Txt_Validate0 (Cancel, var_90, "Active")
  loc_F09433:       var_90.Text = arg_10
  loc_F09442:     Else
  loc_F0944F:       Set var_8C = Me.Txt
  loc_F09455:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F0945D:       var_90.Text = "Non Active"
  loc_F09469:     End If
  loc_F09469:   End If
  loc_F09469: End If
  loc_F09469: Exit Sub
End Sub

Private Sub Form_Load() '10C6E60
  'Data Table: 44A6C8
  Dim var_88 As Label
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim unk_44A6DC As Connection15
  loc_10C6B88: On Error Goto loc_10C6E1A
  loc_10C6B92: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10C6BA6: Me.LblUser.Left = CDbl(13500)
  loc_10C6BBD: Me.LblUser.Top = CDbl(7800)
  loc_10C6BD4: Me.LblLDt.Top = CDbl(8160)
  loc_10C6BEB: Me.LblLDt.Left = CDbl(13500)
  loc_10C6C01: Set var_88 = Me.Txt
  loc_10C6C07: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_10C6C26: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_10C6C42: Set var_B4 = Me.Txt
  loc_10C6C48: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_10C6C63: Set var_88 = Me.Txt
  loc_10C6C69: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_10C6C81: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_10C6C90: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_10C6CAC: Set var_88 = Me.TopCtrl1
  loc_10C6CB2: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_10C6CC0: Call 0.Method_arg_50 (var_C4)
  loc_10C6CC8: var_D4 = CVar(var_C4) 'String
  loc_10C6CD6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D4)
  loc_10C6CFC: var_D8 = "SELECT Code,Name,'Banquet' as BanquetName FROM ItemGrp WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and RestCode='"
  loc_10C6D16: unk_44A6DC.Execute var_D8 & global_52 & "'  ORDER BY Name", var_D4, -1
  loc_10C6D49: CVarUnk
  loc_10C6D4E: VerifyVarObj
  loc_10C6D5A: LateIdStAd
  loc_10C6D83: var_D8 = "SELECT Code,Name As ItemGroup,Status,SITE_CODE,LOGSITE_CODE FROM ItemGrp WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and RestCode='"
  loc_10C6D9D: unk_44A6DC.Execute var_D8 & global_52 & "' ORDER BY Name", var_D4, -1
  loc_10C6DD3: Set var_88 = Me
  loc_10C6DDC: var_C4 = "INI"
  loc_10C6DEA: Call Proc_117_29_E79DEC(Proc_5_1_100CB50(var_C4, var_88, Me.DGHelp, var_88), var_88)
  loc_10C6DFE: Call 0.Method_arg_160 (var_88, Me.TopCtrl1)
  loc_10C6E0C: Call 0.Method_arg_164 (var_88)
  loc_10C6E14: Call Proc_117_31_11E6990(var_88)
  loc_10C6E19: Exit Sub
  loc_10C6E1A: ' Referenced from: 10C6B88
  loc_10C6E22: Set var_88 = Err()
  loc_10C6E28: Call 0.Method_arg_2C (var_C4)
  loc_10C6E49: MsgBox(CVar(var_C4), &H40, "Information", var_104, var_124)
  loc_10C6E5C: Exit Sub
  loc_10C6E5D: Exit Sub
End Sub

Private Sub Form_Resize() 'ED8488
  'Data Table: 44A6C8
  Dim var_8C As Label
  loc_ED83E6: Call 0.Method_arg_50 (var_88)
  loc_ED83F8: Me.LblFormCaption.Caption = var_88
  loc_ED8411: Me.LblFormCaption.Left = CDbl(0)
  loc_ED841D: Set var_A0 = Me.TopCtrl1
  loc_ED8423: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED8430: Set var_8C = Me.TopCtrl1
  loc_ED8436: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED8450: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED846B: Call 0.Method_arg_100 (var_B8)
  loc_ED847D: Me.LblFormCaption.Width = var_B8
  loc_ED8485: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E28190
  'Data Table: 44A6C8
  loc_E28173: Set global_56 = Nothing
  loc_E28185: Set global_60 = Nothing
  loc_E2818C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8BEE4
  'Data Table: 44A6C8
  loc_E8BE80: On Error Goto loc_E8BEA0
  loc_E8BE97: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8BE9F: Exit Sub
  loc_E8BEA0: ' Referenced from: E8BE80
  loc_E8BEA8: Set var_88 = Err()
  loc_E8BEAE: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8BECF: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8BEE2: Exit Sub
  loc_E8BEE3: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3BDD4
  'Data Table: 44A6C8
  loc_E3BDC8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3BDCB:   Call DGHelp_UnknownEvent_9()
  loc_E3BDD0: End If
  loc_E3BDD0: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F37C04
  'Data Table: 44A6C8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F37AFB: Me.DGHelp.Visible = False
  loc_F37B1A: If (Me.RecordCount > 0) Then
  loc_F37B59:   Set var_B4 = Me.Txt
  loc_F37B5F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F37B67:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F37B9A:   var_B0 = Me.Fields.Item("Code")
  loc_F37BB9:   Set var_B4 = Me.Txt
  loc_F37BBF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F37BC7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F37BDD: End If
  loc_F37BE8: Set var_A8 = Me.Txt
  loc_F37BEE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F37BF6: var_B0.SetFocus
  loc_F37C02: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E72B3C
  'Data Table: 44A6C8
  loc_E72AFA: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E72B11: Set var_8C = Me.FGPoint
  loc_E72B2D: Proc_6_138_106D6F8(Me.DGHelp, global_60, CInt(0))
  loc_E72B3B: Exit Sub
End Sub

Public Function global_52Get() '44B008
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '44B017
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC4EA4
  'Data Table: 44A6C8
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC4E1A: On Error Goto loc_EC4E5F
  loc_EC4E23: Me.MoveFirst
  loc_EC4E3D: var_8C = "code='" & MyValue
  loc_EC4E4D: Me.Find var_8C & "'", 0, 1
  loc_EC4E59: Call Proc_117_31_11E6990(var_A0)
  loc_EC4E5E: Exit Sub
  loc_EC4E5F: ' Referenced from: EC4E1A
  loc_EC4E67: Set var_A4 = Err()
  loc_EC4E6D: Call 0.Method_arg_2C (var_8C)
  loc_EC4E8E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC4EA1: Exit Sub
  loc_EC4EA2: Exit Sub
End Sub

Public Sub Proc_117_29_E79DEC(arg_C) 'E79DEC
  'Data Table: 44A6C8
  Dim var_98 As TextBox
  loc_E79D9A: Set var_8C = Me.Txt
  loc_E79DA0: Call 0.Method_Proc_117_29_E79DECC (var_8E, var_86)
  loc_E79DB0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79DC6:   Set var_8C = Me.Txt
  loc_E79DCC:   Call 0.Method_Proc_117_29_E79DEC0 (CInt(var_86), var_98)
  loc_E79DD4:   var_98.Enabled = arg_C
  loc_E79DE3: Next var_92 'Byte
  loc_E79DE9: Exit Sub
End Sub

Public Sub Proc_117_30_EDA898
  'Data Table: 44A6C8
  Dim var_98 As TextBox
  loc_EDA7E2: global_64 = vbNullString
  loc_EDA7F4: Set var_8C = Me.Txt
  loc_EDA7FA: Call 0.Method_Proc_117_30_EDA898C (var_8E, var_86)
  loc_EDA80A: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EDA820:   Set var_8C = Me.Txt
  loc_EDA826:   Call 0.Method_Proc_117_30_EDA8980 (CInt(var_86), var_98)
  loc_EDA82E:   var_98.Text = vbNullString
  loc_EDA84A:   Set var_8C = Me.Txt
  loc_EDA850:   Call 0.Method_Proc_117_30_EDA8980 (CInt(var_86), var_98)
  loc_EDA858:   var_98.Tag = vbNullString
  loc_EDA872:   Set var_8C = Me.Txt
  loc_EDA878:   Call 0.Method_Proc_117_30_EDA8980 (CInt(1), var_98)
  loc_EDA880:   var_98.Text = "Active"
  loc_EDA88F: Next var_92 'Byte
  loc_EDA895: Exit Sub
End Sub

Public Sub Proc_117_31_11E6990
  'Data Table: 44A6C8
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_C0 As String
  Dim var_AC As TextBox
  Dim var_100 As Variant
  Dim unk_44A6DC As Connection15
  Dim var_88 As Recordset15
  Dim var_A8 As Fields15
  Dim var_1CC As Variant
  loc_11E6544: On Error Goto loc_11E694B
  loc_11E654D: Proc_183_45_E5C118(global_56)
  loc_11E6569: If (Me.RecordCount <= 0) Then
  loc_11E656C:   Call Proc_117_30_EDA898()
  loc_11E6574: Else
  loc_11E65B0:   Set var_A8 = Me.Txt
  loc_11E65B6:   Call 0.Method_Proc_117_31_11E69900 (CInt(0), var_AC)
  loc_11E65BE:   var_AC.Text = CStr(Me.Fields.Item("ItemGroup").Value)
  loc_11E6610:   Set var_A8 = Me.Txt
  loc_11E6616:   Call 0.Method_Proc_117_31_11E69900 (CInt(0), var_AC)
  loc_11E661E:   var_AC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_11E6673:   Call 0.Method_Proc_117_31_11E69900 (CInt(1), var_AC)
  loc_11E667B:   var_AC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Status")))
  loc_11E66E5:   unk_44A6DC.Execute CStr("Select U_Name,U_AE,U_EntDt From ItemGrp where Code='" & Me.Fields.Item("Code").Value & "'  "), var_120, -1
  loc_11E66F0:   Set var_88 = Me.Txt
  loc_11E6744:   var_A8 = var_88.Fields
  loc_11E67AD:   var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_A8.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_11E67F2:   Me.LblUser.Caption = CStr(var_A8 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_11E6885:   var_120 = "entdt :   "
  loc_11E6890:   var_100 = "Last Update :   "
  loc_11E68BE:   var_C0 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")))
  loc_11E6900:   var_1CC = IIf((var_C0 = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), var_100, var_120)) & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))) 
  loc_11E6912:   Me.LblLDt.Caption = CStr(var_1CC)
  loc_11E694A: End If
  loc_11E694A: Exit Sub
  loc_11E694B: ' Referenced from: 11E6544
  loc_11E6953: Set var_90 = Err()
  loc_11E6959: Call 0.Method_arg_2C (var_C0)
  loc_11E697A: MsgBox(CVar(var_C0), &H40, "Information", var_100, var_120)
  loc_11E698D: Exit Sub
End Sub

Public Sub Proc_117_32_10B26F0
  'Data Table: 44A6C8
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_44A6DC As Connection15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  loc_10B245B: If (Me.RecordCount = 0) Then
  loc_10B245E:   Proc_117_32_10B26F0 = 
  loc_10B2464: End If
  loc_10B2468: Set var_90 = Me.TopCtrl1
  loc_10B246E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10B2487: If (CStr() = "Add") Then
  loc_10B24C5:   Set var_90 = Me.Txt
  loc_10B24CB:   Call 0.Method_Proc_117_32_10B26F00 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemGrp Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10B24FD:   unk_44A6DC.Execute var_D8 & var_AC & "' And RestCode='" & global_52 & "'", 0, var_EC
  loc_10B250D:    = var_D8.Item()
  loc_10B2515:    = var_EC.Value
  loc_10B254A:   If (var_A8.Text.Fields > 0) Then
  loc_10B2568:     var_A0 = "Duplicate Name"
  loc_10B256E:     MsgBox(var_A0, &H40, "Information", var_11C, var_13C)
  loc_10B2589:     Set var_90 = Me.Txt
  loc_10B258F:     Call 0.Method_Proc_117_32_10B26F00 (CInt(0))
  loc_10B2597:     var_A8.SetFocus
  loc_10B25A8:     Proc_117_32_10B26F0 = &HFF
  loc_10B25AE:   End If
  loc_10B25B1: Else
  loc_10B25EC:   Set var_90 = Me.Txt
  loc_10B25F2:   Call 0.Method_Proc_117_32_10B26F00 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemGrp Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (Name='", var_A0, -1)
  loc_10B2635:   unk_44A6DC.Execute var_D8 & var_AC & "' And Name<>'" & global_64 & "') And RestCode='" & global_52 & "'", 0, var_EC
  loc_10B2645:    = var_D8.Item(var_A8)
  loc_10B264D:    = var_EC.Value
  loc_10B2686:   If (var_A8.Text.Fields > 0) Then
  loc_10B26AA:     MsgBox("Duplicate Name", &H40, "Information", var_11C, var_13C)
  loc_10B26C5:     Set var_90 = Me.Txt
  loc_10B26CB:     Call 0.Method_Proc_117_32_10B26F00 (CInt(0))
  loc_10B26D3:     var_A8.SetFocus
  loc_10B26E4:     Proc_117_32_10B26F0 = &HFF
  loc_10B26EA:   End If
  loc_10B26EA: End If
  loc_10B26EA: Proc_117_32_10B26F0 = var_A8
End Sub

Public Sub Proc_117_33_E834B8
  'Data Table: 44A6C8
  loc_E83464: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E83476:   Me.DGHelp.Visible = False
  loc_E8347E: End If
  loc_E8349A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E834AC:   Me.FGPoint.Visible = False
  loc_E834B4: End If
  loc_E834B4: Exit Sub
End Sub

Public Sub Proc_117_34_E8FA50(arg_C) 'E8FA50
  'Data Table: 44A6C8
  Dim var_10C As TextBox
  loc_E8F9E4: Call Proc_117_33_E834B8()
  loc_E8FA20: If (MsgBox("Save Item Group ?", 4, "Save", var_E4, var_104) = 6) Then
  loc_E8FA23:   Call TopCtrl1_UnknownEvent_16()
  loc_E8FA2B: Else
  loc_E8FA35:   Set var_108 = Me.Txt
  loc_E8FA3B:   Call 0.Method_Proc_117_34_E8FA500 (arg_C)
  loc_E8FA43:   var_10C.SetFocus
  loc_E8FA4F: End If
  loc_E8FA4F: Exit Sub
End Sub
