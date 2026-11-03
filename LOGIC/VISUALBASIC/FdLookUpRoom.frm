VERSION 5.00
Begin VB.Form FdLookUpRoom
  Caption = "Look Up Room"
  BackColor = &HF5E7ED&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11460
  ClientHeight = 7170
  BeginProperty Font
    Name = "Times New Roman"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox Text1
    Left = 285
    Top = 4410
    Width = 1590
    Height = 315
    Visible = 0   'False
    TabIndex = 5
  End
  Begin TextBox Text3
    BackColor = &HFFFFFF&
    Left = 810
    Top = 1290
    Width = 975
    Height = 285
    Visible = 0   'False
    TabIndex = 0
    Tag = "2,0"
    Alignment = 2 'Center
    MaxLength = 1
    Locked = -1  'True
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
  Begin MSHFlexGrid FGrid1
    Left = 2475
    Top = -45
    Width = 11415
    Height = 6075
    TabIndex = 3
  End
  Begin TopCtrl TopCtrl1
    Left = 255
    Top = 4380
    Width = 1185
    Height = 375
    Visible = 0   'False
    TabIndex = 4
  End
  Begin Label Label1
    Caption = "(C)lean"
    Index = 1
    ForeColor = &HC00000&
    Left = 525
    Top = 6285
    Width = 705
    Height = 240
    TabIndex = 1
    Alignment = 2 'Center
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
    Caption = "(O)ut Of Order "
    Index = 2
    ForeColor = &HC00000&
    Left = 2835
    Top = 6285
    Width = 1380
    Height = 240
    TabIndex = 10
    Alignment = 2 'Center
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
    Caption = "(D)irty"
    Index = 0
    ForeColor = &HC00000&
    Left = 1740
    Top = 6285
    Width = 585
    Height = 240
    TabIndex = 9
    Alignment = 2 'Center
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
  Begin Label Label2
    Index = 2
    BackColor = &HDAFCFE&
    ForeColor = &H80000008&
    Left = 1335
    Top = 6270
    Width = 285
    Height = 270
    TabIndex = 8
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 1
    BackColor = &HA2A2FF&
    ForeColor = &H80000008&
    Left = 2430
    Top = 6270
    Width = 285
    Height = 270
    TabIndex = 7
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 0
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 120
    Top = 6270
    Width = 285
    Height = 270
    TabIndex = 6
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label LBLRoomName
    BackColor = &HE7E6B8&
    ForeColor = &HC00000&
    Left = 45
    Top = 6225
    Width = 11340
    Height = 360
    TabIndex = 2
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "FdLookUpRoom"

Private global_78 As Integer

Private Sub Fgrid1_UnknownEvent_9 'EDF1A4
  'Data Table: 429980
  Dim var_98 As Variant
  Dim var_AC As Long
  loc_EDF10F: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_EDF112:   Exit Sub
  loc_EDF113: End If
  loc_EDF12E: If (Me.Text3.Visible = &HFF) Then
  loc_EDF13D:   Me.Text3.Visible = False
  loc_EDF145: End If
  loc_EDF14F: var_98 = Me.FGrid1.Rows
  loc_EDF15E: var_AC = 1
  loc_EDF19F: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_EDF1A2:   Exit Sub
  loc_EDF1A3: End If
  loc_EDF1A3: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A 'E5C018
  'Data Table: 429980
  loc_E5BFDE: If (KeyCode = &HD) Then
  loc_E5C00C:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E5C00F:     Call Fgrid1_UnknownEvent_9()
  loc_E5C014:   End If
  loc_E5C014: End If
  loc_E5C014: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B '116EBF0
  'Data Table: 429980
  Dim var_8E As Integer
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_13C As String
  Dim var_150 As MSHFlexGrid
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_12C As Variant
  Dim unk_42998A As Connection15
  loc_116E88B: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_116E8A2:   var_8E = CInt(CLng(Me.FGrid1.Col))
  loc_116E8AE: Else
  loc_116E8ED:   var_8E = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_116E901: End If
  loc_116E914: var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_116E91D: var_EC = CVar(CLng(var_8E)) 'Long
  loc_116E948: var_12C = Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_116E950: var_13C = "OCCUPIED"
  loc_116E95E: Set var_150 = Me.FGrid1
  loc_116E964: var_160 = var_150.Row
  loc_116E96D: var_170 = CVar(CLng(var_160)) 'Long
  loc_116E9DB: If CBool(CVar(CLng(var_8E)) And (Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))) <> "OUT OF ORDER")) Then
  loc_116E9F1:   var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_116E9FD:   var_EC = CVar(CLng((var_8E - 1))) 'Long
  loc_116EA2F:   var_13C = "SELECT RoomCat.Name, RoomCat.Code FROM RoomMast LEFT JOIN RoomCat ON RoomMast.RoomCat = RoomCat.Code where rOOMmaST.CODE='"
  loc_116EA3B:   var_170 = "'"
  loc_116EA4E:   unk_42998A.Execute CStr(var_13C & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & var_170), var_160, -1
  loc_116EA59:   Set var_8C = var_150
  loc_116EA90:   If (Me.Recordset15.RecordCount > 0) Then
  loc_116EA9D:     var_BC = Me.FGrid1.Col
  loc_116EAB9:     var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_116EAD5:     var_EC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_BC) + 1)) / CDbl(6)))))) 'Long
  loc_116EADE:     Set var_150 = Me.FGrid1
  loc_116EAE4:     var_10C = var_150.TextMatrix)
  loc_116EAF5:     var_12C = Trim(CVar(CStr(var_10C)))
  loc_116EB07:     fdWalkInEntry.PRoomNo = CStr(var_12C)
  loc_116EB28:     var_CC = "Code"
  loc_116EB59:     fdWalkInEntry.PRoomTypeCode = Proc_6_38_E68A98(CVar(Me.var_10C.Fields.Item(var_CC)), var_EC, var_CC, var_BC, var_150, var_EC, var_CC)
  loc_116EB6A:     var_CC = "Name"
  loc_116EB9B:     fdWalkInEntry.PRoomTypeName = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_CC)), var_170, (var_12C <> var_13C), var_EC)
  loc_116EBB2:     Call 0.Method_arg_1C4 ("Online", var_CC)
  loc_116EBC5:     Call 0.Method_arg_2B0 (var_CC, var_DC)
  loc_116EBD0:     Call fdWalkInEntry.TopCtrl1_UnknownEvent_A()
  loc_116EBDA:     global_78 = &HFF
  loc_116EBDD:   End If
  loc_116EBDD: End If
  loc_116EBE2: Set var_88 = Nothing
  loc_116EBEA: Set var_8C = Nothing
  loc_116EBED: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'E5BF28
  'Data Table: 429980
  loc_E5BEEE: If (KeyCode = &HD) Then
  loc_E5BF1C:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E5BF1F:     Call Fgrid1_UnknownEvent_9()
  loc_E5BF24:   End If
  loc_E5BF24: End If
  loc_E5BF24: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 '1426DE8
  'Data Table: 429980
  Dim var_168 As Variant
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As MSHFlexGrid
  Dim var_118 As Variant
  Dim unk_42998A As Connection15
  Dim var_88 As Recordset15
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_1CC As Variant
  Dim var_214 As Variant
  Dim var_288 As Variant
  Dim var_2C0 As Variant
  Dim var_2E0 As Variant
  loc_14263CF: var_168 = ((CLng(Me.FGrid1.ColSel) Mod 6) = 0)
  loc_14263E6: var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1426407: Set var_108 = Me.FGrid1
  loc_142640D: var_118 = var_108.TextMatrix)
  loc_1426452: If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_118))) <> vbNullString)) Then
  loc_1426468:   var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14264C3:   unk_42998A.Execute "Select Name from roommast where code='" & CStr(Me.FGrid1.TextMatrix)) & "'", var_118, -1
  loc_14264CE:   Set var_88 = var_108
  loc_1426504:   If (var_88.RecordCount > 0) Then
  loc_1426542:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")), var_108, var_C4, CVar(CLng(Me.FGrid1.Col)))) & Space(5) 
  loc_1426559:     var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1426577:     var_104 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_14265B3:     var_1CC = var_104 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14265CA:     var_168 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14265E8:     var_214 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_1426624:     var_288 = var_214 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_142663B:     var_2C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1426659:     var_2E0 = CVar((CLng(Me.FGrid1.Col) + 5)) 'Long
  loc_1426693:     Me.LBLRoomName.Caption = CStr(var_2E0 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_14266EB:   End If
  loc_14266F5:   Me.LBLRoomName.Refresh
  loc_1426700: Else
  loc_1426725:   var_168 = (((CLng(Me.FGrid1.ColSel) - 1) Mod 6) = 0)
  loc_142673C:   var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_142675D:   Set var_108 = Me.FGrid1
  loc_1426763:   var_118 = var_108.TextMatrix)
  loc_14267A8:   If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_118))) <> vbNullString)) Then
  loc_14267BE:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14267DC:     var_F4 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_142681F:     unk_42998A.Execute "Select Name from roommast where code='" & CStr(Me.FGrid1.TextMatrix)) & "'", var_118, -1
  loc_142682A:     Set var_88 = var_108
  loc_1426860:     If (var_88.RecordCount > 0) Then
  loc_1426866:       var_D4 = "Name"
  loc_142688B:       var_C4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_D4)), var_108, var_C4, CVar(CLng(Me.FGrid1.Col)), var_D4, var_D4, var_168)) 'String
  loc_142689E:       var_118 = var_C4 & Space(5) 
  loc_14268B5:       var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14268D3:       var_104 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_142690F:       var_1CC = var_104 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1426926:       var_168 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1426944:       var_214 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1426980:       var_288 = var_214 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1426997:       var_2C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14269B5:       var_2E0 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_14269EF:       Me.LBLRoomName.Caption = CStr(var_2E0 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1426A47:     End If
  loc_1426A51:     Me.LBLRoomName.Refresh
  loc_1426A5C:   Else
  loc_1426A81:     var_168 = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_1426A98:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1426AB9:     Set var_108 = Me.FGrid1
  loc_1426ABF:     var_118 = var_108.TextMatrix)
  loc_1426B04:     If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_118))) <> vbNullString)) Then
  loc_1426B1A:       var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1426B38:       var_F4 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1426B7B:       unk_42998A.Execute "Select Name from roommast where code='" & CStr(Me.FGrid1.TextMatrix)) & "'", var_118, -1
  loc_1426B86:       Set var_88 = var_108
  loc_1426BBC:       If (var_88.RecordCount > 0) Then
  loc_1426BC2:         var_D4 = "Name"
  loc_1426BE7:         var_C4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_D4)), var_108, var_C4, CVar(CLng(Me.FGrid1.Col)), var_D4, var_D4, var_168)) 'String
  loc_1426BFA:         var_118 = var_C4 & Space(5) 
  loc_1426C11:         var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1426C2F:         var_104 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1426C6B:         var_1CC = var_104 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1426C82:         var_168 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1426CA0:         var_214 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1426CDC:         var_288 = var_214 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1426CF3:         var_2C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1426D11:         var_2E0 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1426D4B:         Me.LBLRoomName.Caption = CStr(var_2E0 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1426DA3:       End If
  loc_1426DAD:       Me.LBLRoomName.Refresh
  loc_1426DB8:     Else
  loc_1426DC5:       Me.LBLRoomName.Caption = vbNullString
  loc_1426DD7:       Me.LBLRoomName.Refresh
  loc_1426DDF:     End If
  loc_1426DDF:   End If
  loc_1426DDF: End If
  loc_1426DE4: Set var_88 = Nothing
  loc_1426DE7: Exit Sub
End Sub

Private Sub Form_Load() 'ED0438
  'Data Table: 429980
  Dim var_88 As MSHFlexGrid
  loc_ED0394: On Error Goto loc_ED03F1
  loc_ED03AF: Proc_6_23_DFBA28(Me, 7380)
  loc_ED03C9: Me.FGrid1.Top = CVar(CDbl(0))
  loc_ED03E3: Me.FGrid1.Left = CVar(CDbl(0))
  loc_ED03EB: Call Proc_75_10_156E4A0(11580)
  loc_ED03F0: Exit Sub
  loc_ED03F1: ' Referenced from: ED0394
  loc_ED03F9: Set var_88 = Err()
  loc_ED03FF: Call 0.Method_arg_2C (var_B0)
  loc_ED0420: MsgBox(CVar(var_B0), &H10, "Information", var_E0, var_100)
  loc_ED0433: Exit Sub
  loc_ED0434: Exit Sub
End Sub

Private Sub Form_Activate() 'E184D4
  'Data Table: 429980
  loc_E184C1: If (global_78 = &HFF) Then
  loc_E184C4:   Call Proc_75_10_156E4A0()
  loc_E184CE:   global_78 = 0
  loc_E184D1: End If
  loc_E184D1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E09DDC
  'Data Table: 429980
  loc_E09DD2: If (CLng(KeyCode) = &H74) Then
  loc_E09DD5:   Call Proc_75_10_156E4A0()
  loc_E09DDA: End If
  loc_E09DDA: Exit Sub
End Sub

Public Property Get FrmOpenType() 'E12EBC
  'Data Table: 429980
  loc_E12EB0: var_88 = global_80
  loc_E12EB3: FrmOpenType = 
End Sub

Public Property Let FrmOpenType(vNewValue) 'E12DE4
  'Data Table: 429980
  loc_E12DDC: global_80 = vNewValue
  loc_E12DE0: Exit Sub
End Sub

Public Sub Proc_75_10_156E4A0
  'Data Table: 429980
  Dim var_96 As Integer
  Dim unk_42998A As Connection15
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_8A As Integer
  Dim var_148 As Double
  Dim var_C0 As Variant
  Dim var_8C As Integer
  Dim var_88 As Recordset15
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_C4 As Variant
  Dim var_154 As Variant
  Dim var_168 As Variant
  Dim var_A0 As Recordset15
  Dim var_1A0 As Variant
  Dim var_128 As Variant
  Dim var_1D0 As Variant
  Dim var_92 As Integer
  loc_156D3E2: var_96 = 0
  loc_156D3FB: unk_42998A.Execute "Select * from roommast where Type='RO' order by COde", var_C0, -1
  loc_156D406: Set var_88 = var_C4
  loc_156D425: unk_42998A.Execute "Select * from RoomOcc where ChkOutDate is Null ", var_C0, -1
  loc_156D430: Set var_9C = var_C4
  loc_156D456: Proc_6_7_F25D88(var_C0, MemVar_1F920EC, "Select * from RoomBlockOut where Type='O' And ", var_128, -1)
  loc_156D475: unk_42998A.Execute CStr(var_C4 & var_C0 & " between fromdate and ToDate"), var_C4, var_C4
  loc_156D480: Set var_A0 = var_C4
  loc_156D496: var_8A = &H15
  loc_156D4B0: If (Me.Recordset15.RecordCount > 0) Then
  loc_156D4E0:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_156D51C:     var_148 = Val(CStr(Me.Recordset15.RecordCount))
  loc_156D54D:     var_C0 = CVar(((Val(CStr(Me.Recordset15.RecordCount)) - CDbl((CLng(var_148) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_156D56E:     var_8C = CInt(((Val(CStr(Format(var_C0, "00"))) + CDbl(1)) * CDbl(6)))
  loc_156D586:   Else
  loc_156D5A3:     var_E4 = "00"
  loc_156D5B5:     var_C0 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_156D5BC:     var_104 = Format(var_C0, var_E4)
  loc_156D5D6:     var_8C = CInt(((Val(CStr(var_104)) + CDbl(1)) * CDbl(6)))
  loc_156D5E5:   End If
  loc_156D5E8: Else
  loc_156D601:   MsgBox("First Fill Room Master", &H40, var_E4, var_104, var_128)
  loc_156D614: Else
  loc_156D616:   var_90 = 1
  loc_156D61B:   var_8E = 0
  loc_156D631:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_156D64C:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_156D666:   Call Proc_75_11_10F1550((var_8A - 1), (var_8C - 1), var_8E, var_90, var_8C, 1, 1)
  loc_156D67E:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_156D693:   Set var_C4 = Me.FGrid1
  loc_156D699:   var_C4.Col = CVar(CLng(var_8E))
  loc_156D6A1:   ' Referenced from:   156E481
  loc_156D6B5:   If (Me.var_C4.EOF = 0) Then
  loc_156D6BA:     var_90 = 1
  loc_156D6BD:     ' Referenced from:   156E47E
  loc_156D6C7:     If (var_90 <= (var_8A - 1)) Then
  loc_156D6DE:       For var_150 = (var_8C - 6) To (var_8C - 1):   var_94 = var_150 'Integer
  loc_156D6EE:         If (var_94 = (var_8C - 6)) Then
  loc_156D6F5:           var_D4 = CVar(CLng(var_90)) 'Long
  loc_156D704:           var_E4 = Me.FGrid1.Col
  loc_156D73D:           var_104 = CVar(Proc_6_38_E68A98(CVar(Me.var_E4.Fields.Item("Code")), CVar(CLng(var_E4)), var_D4, (var_8C - 6), &HFF, var_90, var_8C)) 'String
  loc_156D745:           Set var_17C = Me.FGrid1
  loc_156D74B:           LateIdCallSt
  loc_156D77E:           var_B0 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_156D78D:           Me.FGrid1.Col = "Code"
  loc_156D79C:         End If
  loc_156D7A6:         If (var_94 = (var_8C - 5)) Then
  loc_156D7C0:           If (Me.Recordset15.RecordCount > 0) Then
  loc_156D7C9:             Me.Recordset15.MoveFirst
  loc_156D7CE:           End If
  loc_156D81E:           Me.Recordset15.Find 1 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "RoomNo='", 0, 1, var_D4, var_17C, var_104) & "'", 1, var_148
  loc_156D849:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_156D850:             var_B0 = CVar(CLng(var_90)) 'Long
  loc_156D868:             var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156D86D:             var_168 = "Occupied"
  loc_156D877:             Set var_154 = Me.FGrid1
  loc_156D87D:             LateIdCallSt
  loc_156D892:           Else
  loc_156D8A6:             If (var_A0.RecordCount > 0) Then
  loc_156D8AC:               var_A0.MoveFirst
  loc_156D8B1:             End If
  loc_156D8C5:             var_B0 = "Code"
  loc_156D8DC:             var_154 = Me.Recordset15.Fields.Item(var_B0)
  loc_156D8FE:             var_A0.Find var_168 & Proc_6_38_E68A98(CVar(var_154), "RoomCode='", 0, 1, var_D4, var_154) & "'", var_F4, var_B0
  loc_156D929:             If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_156D930:               var_B0 = CVar(CLng(var_90)) 'Long
  loc_156D948:               var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156D94D:               var_168 = "Out Of Order"
  loc_156D957:               Set var_154 = Me.FGrid1
  loc_156D95D:               LateIdCallSt
  loc_156D972:             Else
  loc_156D976:               var_B0 = CVar(CLng(var_90)) 'Long
  loc_156D98E:               var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156D993:               var_168 = "Vacant"
  loc_156D99D:               Set var_154 = Me.FGrid1
  loc_156D9A3:               LateIdCallSt
  loc_156D9B5:             End If
  loc_156D9B5:           End If
  loc_156D9CE:           var_B0 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_156D9DD:           Me.FGrid1.Col = var_B0
  loc_156D9EC:         End If
  loc_156D9F6:         If (var_94 = (var_8C - 4)) Then
  loc_156DA0D:           If (var_A0.RecordCount > 0) Then
  loc_156DA13:             var_A0.MoveFirst
  loc_156DA18:           End If
  loc_156DA2C:           var_B0 = "Code"
  loc_156DA43:           var_154 = Me.Recordset15.Fields.Item(var_B0)
  loc_156DA65:           var_A0.Find var_F4 & Proc_6_38_E68A98(CVar(var_154), "RoomCode='", 0, 1, var_D4, var_154, var_168) & "'", var_B0, var_154
  loc_156DA8D:           If (var_A0.AbsolutePosition > 0) Then
  loc_156DAD9:             var_104 = CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Type")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))) 'String
  loc_156DAE1:             Set var_17C = Me.FGrid1
  loc_156DAE7:             LateIdCallSt
  loc_156DB04:           Else
  loc_156DB36:             var_168 = CVar(CLng(var_90)) 'Long
  loc_156DB45:             var_1A0 = Me.FGrid1.Col
  loc_156DB97:             var_F4 = (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomStat")), Me.var_1A0.Fields.Item("RoomStat"), "C") = vbNullString)
  loc_156DBA7:             var_1D0 = CVar(CStr(IIf(var_F4, "C", CVar(Proc_6_38_E68A98(CVar(Me.var_1A0.Fields.Item("RoomStat")), CVar(CLng(var_1A0)), var_168))))) 'String
  loc_156DBAF:             Set var_1E4 = Me.FGrid1
  loc_156DBB5:             LateIdCallSt
  loc_156DBE2:           End If
  loc_156DBF6:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_156DC12:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_156DC33:           Call Proc_75_12_11B9A48(CByte(CLng(Me.FGrid1.Col)), var_92, var_1E4, var_1D0)
  loc_156DC51:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_156DC72:           var_B0 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_156DC81:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_156DC90:         End If
  loc_156DC9A:         If (var_94 = (var_8C - 3)) Then
  loc_156DCEA:           If (Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomStat")), var_168))) = "O") Then
  loc_156DD01:             If (var_A0.RecordCount > 0) Then
  loc_156DD07:               var_A0.MoveFirst
  loc_156DD60:               var_A0.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & "'"), 0, 1
  loc_156DD8F:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_156DDDB:                 var_104 = CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Reasons")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))) 'String
  loc_156DDE3:                 Set var_17C = Me.FGrid1
  loc_156DDE9:                 LateIdCallSt
  loc_156DE06:               Else
  loc_156DE0A:                 var_B0 = CVar(CLng(var_90)) 'Long
  loc_156DE22:                 var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156DE27:                 var_168 = vbNullString
  loc_156DE31:                 Set var_154 = Me.FGrid1
  loc_156DE37:                 LateIdCallSt
  loc_156DE49:               End If
  loc_156DE4C:             Else
  loc_156DE50:               var_B0 = CVar(CLng(var_90)) 'Long
  loc_156DE68:               var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156DE6D:               var_168 = vbNullString
  loc_156DE77:               Set var_154 = Me.FGrid1
  loc_156DE7D:               LateIdCallSt
  loc_156DE8F:             End If
  loc_156DE92:           Else
  loc_156DE96:             var_B0 = CVar(CLng(var_90)) 'Long
  loc_156DEAE:             var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156DEB3:             var_168 = vbNullString
  loc_156DEBD:             Set var_154 = Me.FGrid1
  loc_156DEC3:             LateIdCallSt
  loc_156DED5:           End If
  loc_156DEEE:           var_B0 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_156DEFD:           Me.FGrid1.Col = var_B0
  loc_156DF0C:         End If
  loc_156DF16:         If (var_94 = (var_8C - 2)) Then
  loc_156DF1C:           var_B0 = "RoomStat"
  loc_156DF33:           var_154 = Me.Recordset15.Fields.Item(var_B0)
  loc_156DF66:           If (Trim(CVar(Proc_6_38_E68A98(CVar(var_154), var_154, var_168, var_F4, var_B0, var_154, var_168))) = "O") Then
  loc_156DF7D:             If (var_A0.RecordCount > 0) Then
  loc_156DF83:               var_A0.MoveFirst
  loc_156DFCC:               var_F4 = "'"
  loc_156DFDC:               var_A0.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & var_F4), 0, 1
  loc_156E00B:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_156E057:                 var_104 = CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("FromDate")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)), var_F4)) 'String
  loc_156E05F:                 Set var_17C = Me.FGrid1
  loc_156E065:                 LateIdCallSt
  loc_156E082:               Else
  loc_156E086:                 var_B0 = CVar(CLng(var_90)) 'Long
  loc_156E09E:                 var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156E0A3:                 var_168 = vbNullString
  loc_156E0AD:                 Set var_154 = Me.FGrid1
  loc_156E0B3:                 LateIdCallSt
  loc_156E0C5:               End If
  loc_156E0C8:             Else
  loc_156E0CC:               var_B0 = CVar(CLng(var_90)) 'Long
  loc_156E0E4:               var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156E0E9:               var_168 = vbNullString
  loc_156E0F3:               Set var_154 = Me.FGrid1
  loc_156E0F9:               LateIdCallSt
  loc_156E10B:             End If
  loc_156E10E:           Else
  loc_156E112:             var_B0 = CVar(CLng(var_90)) 'Long
  loc_156E12A:             var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156E12F:             var_168 = vbNullString
  loc_156E139:             Set var_154 = Me.FGrid1
  loc_156E13F:             LateIdCallSt
  loc_156E151:           End If
  loc_156E16A:           var_B0 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_156E179:           Me.FGrid1.Col = var_B0
  loc_156E188:         End If
  loc_156E192:         If (var_94 = (var_8C - 1)) Then
  loc_156E198:           var_B0 = "RoomStat"
  loc_156E1AF:           var_154 = Me.Recordset15.Fields.Item(var_B0)
  loc_156E1E2:           If (Trim(CVar(Proc_6_38_E68A98(CVar(var_154), var_154, var_168, var_F4, var_B0, var_154, var_168))) = "O") Then
  loc_156E1F9:             If (var_A0.RecordCount > 0) Then
  loc_156E1FF:               var_A0.MoveFirst
  loc_156E248:               var_F4 = "'"
  loc_156E258:               var_A0.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & var_F4), 0, 1
  loc_156E287:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_156E2D3:                 var_104 = CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("ToDate")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)), var_F4)) 'String
  loc_156E2DB:                 Set var_17C = Me.FGrid1
  loc_156E2E1:                 LateIdCallSt
  loc_156E2FE:               Else
  loc_156E302:                 var_B0 = CVar(CLng(var_90)) 'Long
  loc_156E31A:                 var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156E31F:                 var_168 = vbNullString
  loc_156E329:                 Set var_154 = Me.FGrid1
  loc_156E32F:                 LateIdCallSt
  loc_156E341:               End If
  loc_156E344:             Else
  loc_156E348:               var_B0 = CVar(CLng(var_90)) 'Long
  loc_156E360:               var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156E365:               var_168 = vbNullString
  loc_156E36F:               Set var_154 = Me.FGrid1
  loc_156E375:               LateIdCallSt
  loc_156E387:             End If
  loc_156E38A:           Else
  loc_156E38E:             var_B0 = CVar(CLng(var_90)) 'Long
  loc_156E3A6:             var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156E3AB:             var_168 = vbNullString
  loc_156E3B5:             Set var_154 = Me.FGrid1
  loc_156E3BB:             LateIdCallSt
  loc_156E3CD:           End If
  loc_156E3E6:           var_B0 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_156E3F5:           Me.FGrid1.Col = var_B0
  loc_156E404:         End If
  loc_156E407:       Next var_150 'Integer
  loc_156E412:       var_90 = (var_90 + 1)
  loc_156E41F:       If (var_90 > (var_8A - 1)) Then
  loc_156E43B:         var_B0 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_156E44A:         Me.FGrid1.Col = var_B0
  loc_156E459:       End If
  loc_156E45F:       var_88.MoveNext
  loc_156E478:       If (var_88.EOF = &HFF) Then
  loc_156E47B:         GoTo loc_156E484
  loc_156E47E:       End If
  loc_156E47E:       GoTo loc_156D6BD
  loc_156E481:     End If
  loc_156E481:     GoTo loc_156D6A1
  loc_156E484:     ' Referenced from:   156E47B
  loc_156E484:   End If
  loc_156E484: End If
  loc_156E489: Set var_88 = Nothing
  loc_156E491: Set var_9C = Nothing
  loc_156E499: Set var_A0 = Nothing
  loc_156E49C: Exit Sub
End Sub

Public Sub Proc_75_11_10F1550(arg_C, arg_10) '10F1550
  'Data Table: 429980
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_F8 As String
  Dim arg_10 As Integer
  loc_10F1233: Me.FGrid1.Row = 0
  loc_10F123B: ' Referenced from: 10F1492
  loc_10F1241: If (arg_10 < 5) Then
  loc_10F1244:   GoTo loc_10F1495
  loc_10F1247: End If
  loc_10F124B: Set var_B0 = Me.FGrid1
  loc_10F125C: For var_B4 = arg_10 To (arg_10 - 2) Step &HFF: var_86 = var_B4 'Integer
  loc_10F1266:   var_98 = CVar(CLng(var_86)) 'Long
  loc_10F126B:   var_C4 = 0
  loc_10F1278:   Set var_AC = Me.FGrid1
  loc_10F127E:   LateIdCallSt
  loc_10F128C: Next var_B4 'Integer
  loc_10F12A0: For var_D8 = (arg_10 - 5) To (arg_10 - 3): var_86 = var_D8 'Integer
  loc_10F12B0:   If (var_86 = (arg_10 - 5)) Then
  loc_10F12B7:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10F12BC:     var_C4 = &H3E8
  loc_10F12C9:     Set var_AC = Me.FGrid1
  loc_10F12CF:     LateIdCallSt
  loc_10F12DE:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10F12E3:     var_C4 = 1
  loc_10F12ED:     Set var_AC = Me.FGrid1
  loc_10F12F3:     LateIdCallSt
  loc_10F1311:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10F131A:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10F131F:     var_F8 = "Room No"
  loc_10F1329:     Set var_10C = Me.FGrid1
  loc_10F132F:     LateIdCallSt
  loc_10F1341:   End If
  loc_10F134B:   If (var_86 = (arg_10 - 4)) Then
  loc_10F1352:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10F1357:     var_C4 = &H5DC
  loc_10F1364:     Set var_AC = Me.FGrid1
  loc_10F136A:     LateIdCallSt
  loc_10F1379:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10F137E:     var_C4 = 1
  loc_10F1388:     Set var_AC = Me.FGrid1
  loc_10F138E:     LateIdCallSt
  loc_10F13AC:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10F13B5:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10F13BA:     var_F8 = "Status"
  loc_10F13C4:     Set var_10C = Me.FGrid1
  loc_10F13CA:     LateIdCallSt
  loc_10F13DC:   End If
  loc_10F13E6:   If (var_86 = (arg_10 - 3)) Then
  loc_10F13ED:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10F13F2:     var_C4 = &H12C
  loc_10F13FF:     Set var_AC = Me.FGrid1
  loc_10F1405:     LateIdCallSt
  loc_10F1414:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10F141F:     var_C4 = CVar(CInt(4)) 'Integer
  loc_10F1427:     Set var_AC = Me.FGrid1
  loc_10F142D:     LateIdCallSt
  loc_10F144B:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10F1454:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10F1459:     var_F8 = vbNullString
  loc_10F1463:     Set var_10C = Me.FGrid1
  loc_10F1469:     LateIdCallSt
  loc_10F147B:   End If
  loc_10F147E: Next var_D8 'Integer
  loc_10F1485: Set var_B0 = Nothing 
  loc_10F148F: arg_10 = (arg_10 - 6)
  loc_10F1492: GoTo loc_10F123B
  loc_10F1495: ' Referenced from: 10F1244
  loc_10F14BC: For var_110 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_110 'Integer
  loc_10F14D5:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_10F14E5:   For var_114 = 1 To arg_C: var_88 = var_114 'Integer
  loc_10F14FE:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_10F1519:     Me.FGrid1.CellBackColor = &HE69839
  loc_10F1534:     Me.FGrid1.CellForeColor = &HFFFF
  loc_10F153F:   Next var_114 'Integer
  loc_10F1547: Next var_110 'Integer
  loc_10F154C: Exit Sub
End Sub

Public Sub Proc_75_12_11B9A48(arg_C) '11B9A48
  'Data Table: 429980
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_11B960F: var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B9619: var_C8 = CVar(CLng(arg_C)) 'Long
  loc_11B965B: If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "D") Then
  loc_11B9677:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_11B9680:   Set var_DC = Me.FGrid1
  loc_11B9686:   var_DC.Col = var_A8
  loc_11B96A1:   Set var_88 = Me.Label2
  loc_11B96A7:   Call 0.Method_Proc_75_12_11B9A480 (2, var_DC, var_130)
  loc_11B96AF:   var_C8 = var_DC.BackColor
  loc_11B96C6:   Me.FGrid1.CellBackColor = CVar(var_130)
  loc_11B96ED:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_11B96F6:   Set var_DC = Me.FGrid1
  loc_11B96FC:   var_DC.Col = CVar(var_130)
  loc_11B9717:   Set var_88 = Me.Label2
  loc_11B971D:   Call 0.Method_Proc_75_12_11B9A480 (2, var_DC)
  loc_11B9725:   var_130 = var_DC.BackColor
  loc_11B973C:   Me.FGrid1.CellBackColor = CVar(var_130)
  loc_11B974D: Else
  loc_11B9760:   var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B976A:   var_C8 = CVar(CLng(arg_C)) 'Long
  loc_11B97AC:   If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "O") Then
  loc_11B97C8:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_11B97D7:     Me.FGrid1.Col = var_A8
  loc_11B97F9:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B9802:     Set var_DC = Me.FGrid1
  loc_11B9811:     var_C8 = CVar(CLng(var_DC.Col)) 'Long
  loc_11B9826:     LateIdCallSt
  loc_11B984A:     Set var_88 = Me.Label2
  loc_11B9850:     Call 0.Method_Proc_75_12_11B9A480 (1, var_DC, var_130, Me.FGrid1, "Out Of Order")
  loc_11B9858:     var_C8 = var_DC.BackColor
  loc_11B986F:     Me.FGrid1.CellBackColor = CVar(var_130)
  loc_11B9896:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_11B989F:     Set var_DC = Me.FGrid1
  loc_11B98A5:     var_DC.Col = CVar(var_130)
  loc_11B98C0:     Set var_88 = Me.Label2
  loc_11B98C6:     Call 0.Method_Proc_75_12_11B9A480 (1, var_DC, var_130, CVar(var_130))
  loc_11B98CE:     var_C8 = var_DC.BackColor
  loc_11B98E5:     Me.FGrid1.CellBackColor = CVar(var_130)
  loc_11B98F6:   Else
  loc_11B9909:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B9955:     If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "C") Then
  loc_11B9971:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_11B997A:       Set var_DC = Me.FGrid1
  loc_11B9980:       var_DC.Col = var_A8
  loc_11B999B:       Set var_88 = Me.Label2
  loc_11B99A1:       Call 0.Method_Proc_75_12_11B9A480 (0, var_DC, var_130, CVar(CLng(arg_C)))
  loc_11B99A9:       var_A8 = var_DC.BackColor
  loc_11B99C0:       Me.FGrid1.CellBackColor = CVar(var_130)
  loc_11B99E7:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_11B99F0:       Set var_DC = Me.FGrid1
  loc_11B99F6:       var_DC.Col = CVar(var_130)
  loc_11B9A11:       Set var_88 = Me.Label2
  loc_11B9A17:       Call 0.Method_Proc_75_12_11B9A480 (0, var_DC, var_130)
  loc_11B9A1F:       var_A8 = var_DC.BackColor
  loc_11B9A36:       Me.FGrid1.CellBackColor = CVar(var_130)
  loc_11B9A44:     End If
  loc_11B9A44:   End If
  loc_11B9A44: End If
  loc_11B9A44: Exit Sub
End Sub
