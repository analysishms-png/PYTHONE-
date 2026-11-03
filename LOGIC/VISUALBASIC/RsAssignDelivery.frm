VERSION 5.00
Begin VB.Form RsAssignDelivery
  Caption = "Member Category Wise Revenue"
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
  ClientWidth = 11130
  ClientHeight = 5145
  Begin TextBox Txt
    Index = 0
    ForeColor = &HFF0000&
    Left = 2490
    Top = 600
    Width = 3930
    Height = 285
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 50
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
    Width = 11130
    Height = 450
    TabIndex = 6
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1515
    Top = 2580
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 4
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
  Begin Frame FrmList
    Left = 975
    Top = 4035
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 3
    End
  End
  Begin MSFlexGrid FGPoint
    Left = 12225
    Top = 4935
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 0
  End
  Begin DataGrid DGBill
    Left = 9555
    Top = 1680
    Width = 2190
    Height = 3885
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 1
  End
  Begin MSHFlexGrid FGrid
    Left = 30
    Top = 480
    Width = 8535
    Height = 4275
    TabIndex = 5
  End
  Begin DataGrid DGDeliBoy
    Left = 7515
    Top = 6225
    Width = 4230
    Height = 2565
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin Label Label1
    Caption = "Member Category :"
    ForeColor = &HFF0000&
    Left = 1275
    Top = 600
    Width = 1185
    Height = 270
    Visible = 0   'False
    TabIndex = 11
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 3885
    Top = 6600
    Width = 2790
    Height = 285
    TabIndex = 8
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
    Left = 510
    Top = 6600
    Width = 2880
    Height = 255
    TabIndex = 7
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
End

Attribute VB_Name = "RsAssignDelivery"

Private global_64 As Recordset15
Private global_100 As Integer
Private global_56 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '1200C84
  'Data Table: 4A1E5C
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_12007E6: Set var_88 = Me.TxtGrid
  loc_12007EC: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_12007FA: Proc_6_74_E226B0(var_8C)
  loc_1200806: Call Proc_305_47_EBA1D0(var_8C)
  loc_1200819: Set var_88 = Me.TxtGrid
  loc_120081F: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_1200827: var_8C.MaxLength = 0
  loc_120083F: If (Index = 0) Then
  loc_1200858:   Me.FGrid.CellBackColor = CVar(CLng(global_124))
  loc_1200873:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12008B2:   Set var_108 = Me.TxtGrid
  loc_12008B8:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_12008C0:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_12008F1:   var_114 = CLng(Me.FGrid.Col)
  loc_1200901:   If (var_114 = CLng(3)) Then
  loc_1200945:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1200948:       Exit Sub
  loc_1200949:     End If
  loc_1200954:     Set var_8C = Me.FGPoint
  loc_120096C:     Proc_6_137_1193554(Me.DGBill, global_68, Index, var_8C)
  loc_1200989:     Set var_88 = Me.TxtGrid
  loc_120098F:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 8)
  loc_1200997:     var_8C.MaxLength = var_114
  loc_12009B6:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12009BE:     var_E4 = CVar(CLng(3)) 'Long
  loc_12009F1:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_12009FA:       Me.MoveFirst
  loc_1200A12:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1200A1A:       var_E4 = CVar(CLng(1)) 'Long
  loc_1200A3A:       Proc_6_17_EAA2B0(var_12C, CVar(CStr(Me.FGrid.TextMatrix))), var_E4, var_A4)
  loc_1200A63:       Me.Find CStr("DocId=" & var_12C), 0, 1
  loc_1200A93:       If (Me.EOF = &HFF) Then
  loc_1200A9C:         Me.MoveFirst
  loc_1200AA1:       End If
  loc_1200AA1:     End If
  loc_1200AA4:   Else
  loc_1200AAB:     If (var_114 = CLng(8)) Then
  loc_1200AEF:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1200AF2:         Exit Sub
  loc_1200AF3:       End If
  loc_1200AFE:       Set var_8C = Me.FGPoint
  loc_1200B16:       Proc_6_137_1193554(Me.DGDeliBoy, global_72, Index, var_8C, var_15C)
  loc_1200B33:       Set var_88 = Me.TxtGrid
  loc_1200B39:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H14, var_E4)
  loc_1200B41:       var_8C.MaxLength = var_A4
  loc_1200B60:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1200B68:       var_E4 = CVar(CLng(9)) 'Long
  loc_1200B9B:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1200BA4:         Me.MoveFirst
  loc_1200BC4:         var_E4 = CVar(CLng(9)) 'Long
  loc_1200BCD:         Set var_8C = Me.FGrid
  loc_1200BE4:         Proc_6_17_EAA2B0(var_12C, CVar(CStr(var_8C.TextMatrix))), var_E4, CVar(CLng(Me.FGrid.Row)))
  loc_1200C0D:         Me.Find CStr("Code=" & var_12C), 0, 1
  loc_1200C3D:         If (Me.EOF = &HFF) Then
  loc_1200C46:           Me.MoveFirst
  loc_1200C4B:         End If
  loc_1200C4B:       End If
  loc_1200C4E:     Else
  loc_1200C55:       If (var_114 = CLng(&HB)) Then
  loc_1200C67:         Set var_88 = Me.TxtGrid
  loc_1200C6D:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H32, var_15C)
  loc_1200C75:         var_8C.MaxLength = var_E4
  loc_1200C81:       End If
  loc_1200C81:     End If
  loc_1200C81:   End If
  loc_1200C81: End If
  loc_1200C81: Exit Sub
  loc_1200C82: CExtInstUnk
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1238D7C
  'Data Table: 4A1E5C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C4 As Variant
  Dim var_98 As DataGrid
  Dim Me As Recordset15
  loc_123885C: If (KeyCode = 0) Then
  loc_1238869:   If (CLng(Shift) = &H1B) Then
  loc_1238879:     Set var_8C = Me.TxtGrid
  loc_123887F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1238899:     Set var_98 = Me.TxtGrid
  loc_123889F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12388A7:     var_9C.Text = var_90.Tag
  loc_12388BE:     Set var_8C = Me.FGrid
  loc_12388DB:     Set var_8C = Me.TxtGrid
  loc_12388E1:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12388E9:     var_90.Visible = FGrid.DispID_8001
  loc_1238903:     Set var_8C = Me.TxtGrid
  loc_1238909:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_1238911:     var_90.MaxLength = 0
  loc_123891D:     Exit Sub
  loc_123891E:   End If
  loc_1238941:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_1238950:     Set var_8C = Me.TxtGrid
  loc_1238956:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B4)
  loc_123895E:     var_B0 = var_90.Left
  loc_1238975:     Me.DGBill.Left = CVar(var_B4)
  loc_123898F:     Set var_98 = Me.TxtGrid
  loc_1238995:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_123899D:     var_D8 = var_9C.Height
  loc_12389AE:     Set var_8C = Me.TxtGrid
  loc_12389B4:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12389C8:     var_C4 = CVar((var_90.Top + var_D8)) 'Single
  loc_12389D7:     Me.DGBill.Top = CVar(var_90.Top)
  loc_1238A06:     Set var_9C = Me.FGPoint
  loc_1238A11:     Set var_98 = Nothing
  loc_1238A3F:     Proc_6_69_134A198(Me.DGBill, Me.TxtGrid, KeyCode, global_68, Shift, &HFF)
  loc_1238A5E:     var_B4 = Me.RecordCount
  loc_1238A6C:     If (var_B4 > 0) Then
  loc_1238A73:       Set var_98 = Me.DGBill
  loc_1238A92:       Proc_6_138_106D6F8(var_98, global_68, KeyCode, Me.FGPoint, 1)
  loc_1238AA0:     End If
  loc_1238AAA:     If (CLng(Shift) = &HD) Then
  loc_1238AB3:       Call Proc_305_49_13E388C(KeyCode, var_DE, var_98)
  loc_1238ABE:       If (var_DE = &HFF) Then
  loc_1238ACC:         Set var_9C = Me.TxtGrid
  loc_1238AF5:         Set var_90 = var_9C
  loc_1238B04:         Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_100, &HB)
  loc_1238B14:       End If
  loc_1238B14:     End If
  loc_1238B17:   Else
  loc_1238B1E:     If (var_B0 = CLng(8)) Then
  loc_1238B2D:       Set var_8C = Me.TxtGrid
  loc_1238B33:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B4, 0, 8)
  loc_1238B3B:       0 = var_90.Left
  loc_1238B52:       Me.DGDeliBoy.Left = CVar(var_B4)
  loc_1238B6C:       Set var_98 = Me.TxtGrid
  loc_1238B72:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C, var_D8)
  loc_1238B7A:       var_9C = var_9C.Height
  loc_1238B8B:       Set var_8C = Me.TxtGrid
  loc_1238B91:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B4)
  loc_1238B99:       0 = var_90.Top
  loc_1238BA5:       var_C4 = CVar((var_B4 + var_D8)) 'Single
  loc_1238BB4:       Me.DGDeliBoy.Top = CVar(var_B4)
  loc_1238BE3:       Set var_9C = Me.FGPoint
  loc_1238BEE:       Set var_98 = Nothing
  loc_1238C1C:       Proc_6_69_134A198(Me.DGDeliBoy, Me.TxtGrid, KeyCode, global_72, Shift, &HFF)
  loc_1238C49:       If (Me.RecordCount > 0) Then
  loc_1238C50:         Set var_98 = Me.DGDeliBoy
  loc_1238C6F:         Proc_6_138_106D6F8(var_98, global_72, KeyCode, Me.FGPoint, 1)
  loc_1238C7D:       End If
  loc_1238C87:       If (CLng(Shift) = &HD) Then
  loc_1238C90:         Call Proc_305_49_13E388C(KeyCode, var_DE, var_98)
  loc_1238C9B:         If (var_DE = &HFF) Then
  loc_1238CE1:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_100, &HB)
  loc_1238CF1:         End If
  loc_1238CF1:       End If
  loc_1238CF4:     Else
  loc_1238CFB:       If (var_B0 = CLng(&HB)) Then
  loc_1238D08:         If (CLng(Shift) = &HD) Then
  loc_1238D11:           Call Proc_305_49_13E388C(KeyCode, var_DE, 0, &HB)
  loc_1238D1C:           If (var_DE = &HFF) Then
  loc_1238D69:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_100, &HB, CByte((CInt(&HB) + 1)))
  loc_1238D79:           End If
  loc_1238D79:         End If
  loc_1238D79:       End If
  loc_1238D79:     End If
  loc_1238D79:   End If
  loc_1238D79: End If
  loc_1238D79: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F8A95C
  'Data Table: 4A1E5C
  Dim var_A0 As Long
  loc_F8A7FF: Proc_6_58_E054C0(arg_10)
  loc_F8A810: If (KeyAscii = 0) Then
  loc_F8A826:   var_A0 = CLng(Me.FGrid.Col)
  loc_F8A836:   If (var_A0 = CLng(3)) Then
  loc_F8A855:     If (CBool(Me.DGBill.Visible) = &HFF) Then
  loc_F8A867:       var_A4 = "Name"
  loc_F8A882:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_68, arg_10)
  loc_F8A8B4:       Proc_6_138_106D6F8(Me.DGBill, global_68, KeyAscii, Me.FGPoint)
  loc_F8A8C2:     End If
  loc_F8A8C5:   Else
  loc_F8A8CC:     If (var_A0 = CLng(8)) Then
  loc_F8A8EB:       If (CBool(Me.DGDeliBoy.Visible) = &HFF) Then
  loc_F8A918:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_72, arg_10, "Name")
  loc_F8A94A:         Proc_6_138_106D6F8(Me.DGDeliBoy, global_72, KeyAscii, Me.FGPoint, 0)
  loc_F8A958:       End If
  loc_F8A958:     End If
  loc_F8A958:   End If
  loc_F8A958: End If
  loc_F8A958: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F63BB8
  'Data Table: 4A1E5C
  Dim var_A0 As Long
  loc_F63A88: On Error Goto loc_F63BB2
  loc_F63A97: If (KeyCode = 0) Then
  loc_F63AAD:   var_A0 = CLng(Me.FGrid.Col)
  loc_F63ABD:   If (var_A0 = CLng(3)) Then
  loc_F63AE3:     If ((Shift <> &HD) And (CBool(Me.DGBill.Visible) = 0)) Then
  loc_F63AF4:       Call TxtGrid_KeyDown(KeyCode, global_102)
  loc_F63B23:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_68, Shift, "Name")
  loc_F63B32:     End If
  loc_F63B35:   Else
  loc_F63B3C:     If (var_A0 = CLng(8)) Then
  loc_F63B62:       If ((Shift <> &HD) And (CBool(Me.DGDeliBoy.Visible) = 0)) Then
  loc_F63B73:         Call TxtGrid_KeyDown(KeyCode, global_102)
  loc_F63BA2:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_72, Shift, "Name", &HFF)
  loc_F63BB1:       End If
  loc_F63BB1:     End If
  loc_F63BB1:   End If
  loc_F63BB1: End If
  loc_F63BB1: Exit Sub
  loc_F63BB2: ' Referenced from: F63A88
  loc_F63BB2: Proc_6_60_E62BC4(0, &HFF, 0)
  loc_F63BB7: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23D00
  'Data Table: 4A1E5C
  Dim arg_10 As Integer
  loc_E23CE8: If (Cancel = 0) Then
  loc_E23CF1:   Call Proc_305_49_13E388C(Cancel, var_88)
  loc_E23CFA:   arg_10 = Not(var_88)
  loc_E23CFD: End If
  loc_E23CFD: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E57998
  'Data Table: 4A1E5C
  Dim var_92 As Integer
  loc_E5796A: Set var_88 = Me.Txt
  loc_E57970: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E5797E: Proc_6_74_E226B0(var_8C)
  loc_E5798A: Call Proc_305_47_EBA1D0(var_8C)
  loc_E57992: var_92 = Index
  loc_E57995: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'EC2C94
  'Data Table: 4A1E5C
  Dim var_86 As Integer
  loc_EC2BFE: If (CLng(Shift) = &H1B) Then
  loc_EC2C01:   Call Proc_305_47_EBA1D0()
  loc_EC2C06:   Exit Sub
  loc_EC2C07: End If
  loc_EC2C0A: var_86 = KeyCode
  loc_EC2C48: If ((CBool(Me.DGBill.Visible) = 0) And (CBool(Me.DGDeliBoy.Visible) = 0)) Then
  loc_EC2C60:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EC2C69:     Proc_6_75_E527CC(Shift, arg_14)
  loc_EC2C6E:   End If
  loc_EC2C83:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EC2C8C:     Proc_6_76_E52838(Shift, arg_14)
  loc_EC2C91:   End If
  loc_EC2C91: End If
  loc_EC2C91: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E09080
  'Data Table: 4A1E5C
  Dim var_86 As Integer
  loc_E09073: Proc_6_58_E054C0(arg_10)
  loc_E0907B: var_86 = KeyAscii
  loc_E0907E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E00134
  'Data Table: 4A1E5C
  Dim var_86 As Integer
  loc_E0012F: var_86 = KeyCode
  loc_E00132: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4AE04
  'Data Table: 4A1E5C
  loc_E4ADE2: Set var_88 = Me.Txt
  loc_E4ADE8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4ADF6: Proc_6_73_E22704(var_8C)
  loc_E4AE02: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'DFFDEC
  'Data Table: 4A1E5C
  Dim var_86 As Integer
  loc_DFFDE7: var_86 = Cancel
  loc_DFFDEA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EB28F4
  'Data Table: 4A1E5C
  Dim Me As Recordset15
  Dim var_8C As MSHFlexGrid
  loc_EB2858: On Error Goto loc_EB28ED
  loc_EB2882: Call Proc_305_46_E7888C(Proc_5_1_100CB50("ADD", Me))
  loc_EB288D: Call Proc_305_44_F1A2C8(global_64)
  loc_EB289D: Me.Requery -1
  loc_EB28B4: Me.FGrid.Col = CVar(CLng(3))
  loc_EB28CF: Me.FGrid.Row = 1
  loc_EB28DB: Set var_8C = Me.FGrid
  loc_EB28EC: Exit Sub
  loc_EB28ED: ' Referenced from: EB2858
  loc_EB28ED: Proc_6_60_E62BC4(FGrid.DispID_8001)
  loc_EB28F2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBA454
  'Data Table: 4A1E5C
  loc_EBA3C0: On Error Goto loc_EBA44B
  loc_EBA3FA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EBA424:   Call Proc_305_46_E7888C(Proc_5_1_100CB50("INI", Me))
  loc_EBA437:   Set var_10C = Me.TopCtrl1
  loc_EBA43D:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030019(True)
  loc_EBA445:   Call Proc_305_45_13751B8(global_64)
  loc_EBA44A: End If
  loc_EBA44A: Exit Sub
  loc_EBA44B: ' Referenced from: EBA3C0
  loc_EBA44B: Proc_6_60_E62BC4()
  loc_EBA450: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '115A8CC
  'Data Table: 4A1E5C
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_4A1E71 As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  Dim Me As Variant
  loc_115A548: On Error Goto loc_115A872
  loc_115A55D: If (Proc_183_56_FE8818(global_64) = &HFF) Then
  loc_115A560:   Exit Sub
  loc_115A561: End If
  loc_115A596: var_D4 = "Settlement"
  loc_115A5DE: If (Proc_6_108_1010FEC(MemVar_1F92044, "PayCharge", "DocId", CStr(Me.Recordset15.Fields.Item("SearchCode").Value)) = 0) Then
  loc_115A5E1:   Exit Sub
  loc_115A5E2: End If
  loc_115A619: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_115A61E:   var_96 = 0
  loc_115A62A:   unk_4A1E71.BeginTrans var_D0
  loc_115A631:   var_96 = &HFF
  loc_115A648:   var_94 = Me.Recordset15.Bookmark 'Variant
  loc_115A697:   var_118 = "Delete From AssignDelivery Where DocId='" & Me.Recordset15.Fields.Item("SearchCode").Value & "'" 
  loc_115A6A5:   unk_4A1E71.Execute CStr(var_118), var_138, -1
  loc_115A6F3:   var_168 = 0
  loc_115A706:   var_160 = 0
  loc_115A711:   var_15C = 0
  loc_115A724:   var_154 = 0
  loc_115A72F:   var_150 = 0
  loc_115A742:   var_148 = 0
  loc_115A782:   var_B4 = "AssignDelivery"
  loc_115A78B:   Proc_154_5_10E33A4(MemVar_1F92044, var_B4, "DocId", &HC8, CStr(Me.Recordset15.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_115A7B9:   unk_4A1E71.CommitTrans
  loc_115A7C0:   var_96 = 0
  loc_115A7D1:   Me.Recordset15.Requery -1
  loc_115A7E1:   Me.Requery -1
  loc_115A804:   If (CVar(Me.Recordset15.RecordCount) >= var_94) Then
  loc_115A814:     Me.Recordset15.Bookmark = var_94
  loc_115A81C:   Else
  loc_115A833:     If (global_64.EOF = 0) Then
  loc_115A83F:       Me.Recordset15.MoveLast
  loc_115A844:     End If
  loc_115A844:   End If
  loc_115A844:   Call Proc_305_45_13751B8(var_96, var_148, 0, var_150, var_154)
  loc_115A869:   Proc_5_0_110649C(&HFF, Me, global_64, 0)
  loc_115A871: End If
  loc_115A871: Exit Sub
  loc_115A872: ' Referenced from: 115A548
  loc_115A878: If (var_96 = &HFF) Then
  loc_115A881:   unk_4A1E71.RollbackTrans
  loc_115A886: End If
  loc_115A88E: Set var_9C = Err()
  loc_115A894: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_115A8B5: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_115A8C8: Exit Sub
  loc_115A8CB: var_160 = 0
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F08A04
  'Data Table: 4A1E5C
  loc_F08924: On Error Goto loc_F089C1
  loc_F08939: If (Proc_183_55_FE7900(global_64) = &HFF) Then
  loc_F0893C:   Exit Sub
  loc_F0893D: End If
  loc_F08957: If (global_64.RecordCount > 0) Then
  loc_F08973:   var_8C = "EDIT"
  loc_F08981:   Call Proc_305_46_E7888C(Proc_5_1_100CB50(var_8C, Me))
  loc_F0898F: Else
  loc_F089B0:   MsgBox("No Record To Edit.", &H40, "Information", var_F4, var_114)
  loc_F089C0: End If
  loc_F089C0: Exit Sub
  loc_F089C1: ' Referenced from: F08924
  loc_F089C9: Set var_90 = Err()
  loc_F089CF: Call 0.Method_arg_2C (var_8C)
  loc_F089F0: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F4, var_114)
  loc_F08A03: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A908
  'Data Table: 4A1E5C
  loc_E1A8FD: Me.Global.Unload Me
  loc_E1A905: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F '109E810
  'Data Table: 4A1E5C
  Dim var_B8 As String
  Dim var_E8 As Variant
  Dim var_10C As String
  Dim var_C8 As Variant
  Dim var_108 As Variant
  Dim var_134 As Variant
  Dim var_F8 As Variant
  Dim var_144 As Variant
  Dim var_184 As Integer
  Dim var_148 As String
  Dim unk_4A1E71 As Connection15
  Dim var_170 As Recordset15
  Dim var_174 As Fields15
  Dim var_188 As Field20
  Dim MemVar_1F920E4 As String
  Dim var_16C As Variant
  loc_109E580: On Error Goto loc_109E80A
  loc_109E59D: If (Me.Recordset15.RecordCount <= 0) Then
  loc_109E5C1:   MsgBox("No Records To Search.", &H40, "Information", var_E8, var_108)
  loc_109E5D1:   Exit Sub
  loc_109E5D2: End If
  loc_109E5DD: var_A8 = Ucase(MemVar_1F920C8)
  loc_109E60A: If CBool((var_A8 = "HTW_SYSTEM") Or (CDbl(MemVar_1F920B8) = CDbl("1"))) Then
  loc_109E614:   var_10C = "Select  S.Docid as SearchCode,S.VNo as [Bill_No] ,Convert(VARCHAR(17),S.VDate,103) as [Bill_Date],Convert(VARCHAR(17),S.DDate,103) as [Deli_Date],DB.Name As Delivery_Boy,S.BillAmt,S.Remark " & "From (AssignDelivery S INNER Join Voucher_Type V On (S.VType= V.V_Type AND S.SITE_CODE=V.SITE_CODE)) "
  loc_109E629:   var_C8 = CVar(var_10C & "INNER Join DeliveryBoy DB On S.DeliBoy=DB.Code Where S.LOGSITE_CODE='" & MemVar_1F92078 & "' And S.VDate between ") 'String
  loc_109E637:   Proc_6_7_F25D88(var_A8, MemVar_1F920F4)
  loc_109E657:   Proc_6_7_F25D88(var_124, MemVar_1F920FC)
  loc_109E65F:   var_134 = var_C8 & var_A8 & " And " & var_124 
  loc_109E668:   var_144 = var_134 & " And V_Type='" 
  loc_109E672:   var_184 = 0
  loc_109E692:   var_148 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_109E6A2:   unk_4A1E71.Execute var_148 & "'", var_16C, -1
  loc_109E6AA:   var_170 = var_170.Fields
  loc_109E6B2:   var_184 = var_174.Item(var_174)
  loc_109E6BA:   var_188 = var_188.Value
  loc_109E6D0:   MemVar_1F920E4 = CStr(var_198 & var_198 & "' Order By S.docid")
  loc_109E706: Else
  loc_109E70D:   var_10C = "Select  S.Docid as SearchCode,S.VNo as [Bill_No] ,Convert(VARCHAR(17),S.VDate,103) as [Bill_Date],Convert(VARCHAR(17),S.DDate,103) as [Deli_Date],DB.Name As Delivery_Boy,S.BillAmt,S.Remark " & "From (AssignDelivery S INNER Join Voucher_Type V On (S.VType= V.V_Type AND S.SITE_CODE=V.SITE_CODE)) "
  loc_109E722:   var_C8 = CVar(var_10C & "INNER Join DeliveryBoy DB On S.DeliBoy=DB.Code Where S.LOGSITE_CODE='" & MemVar_1F92078 & "' And S.VDate=") 'String
  loc_109E730:   Proc_6_7_F25D88(var_A8, MemVar_1F920EC, var_C8)
  loc_109E73C:   var_B8 = " And V_Type='"
  loc_109E741:   var_108 = MemVar_1F920E4 & var_A8 & var_B8 
  loc_109E74B:   var_F8 = 0
  loc_109E76B:   var_148 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_109E77B:   unk_4A1E71.Execute var_148 & "'", var_124, -1
  loc_109E783:   var_170 = var_170.Fields
  loc_109E78B:   var_F8 = var_174.Item(var_174)
  loc_109E793:   var_188 = var_188.Value
  loc_109E7A9:   MemVar_1F920E4 = CStr(var_134 & var_134 & "' Order By S.docid")
  loc_109E7D6: End If
  loc_109E7DC: MemVar_1F92120 = Me
  loc_109E7E9: Proc_6_126_F1BCC0("1500,2000,2000,3000,1500,3000", MemVar_1F920E4)
  loc_109E804: Call 0.Method_arg_2B0 (1, var_B8)
  loc_109E809: Exit Sub
  loc_109E80A: ' Referenced from: 109E580
  loc_109E80A: Proc_6_60_E62BC4(var_108)
  loc_109E80F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E422A8
  'Data Table: 4A1E5C
  loc_E42298: Proc_5_0_110649C(&HFF, Me)
  loc_E422A0: Call Proc_305_45_13751B8(global_64)
  loc_E422A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E42438
  'Data Table: 4A1E5C
  loc_E42428: Proc_5_0_110649C(&HFF, Me)
  loc_E42430: Call Proc_305_45_13751B8(global_64)
  loc_E42435: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E42370
  'Data Table: 4A1E5C
  loc_E42360: Proc_5_0_110649C(&HFF, Me)
  loc_E42368: Call Proc_305_45_13751B8(global_64)
  loc_E4236D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E42564
  'Data Table: 4A1E5C
  loc_E42554: Proc_5_0_110649C(&HFF, Me)
  loc_E4255C: Call Proc_305_45_13751B8(global_64)
  loc_E42561: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E23BB0
  'Data Table: 4A1E5C
  Dim Me As Recordset15
  loc_E23B97: Me.Requery -1
  loc_E23BA7: Me.Requery -1
  loc_E23BAC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14BBC54
  'Data Table: 4A1E5C
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_120 As Variant
  Dim unk_4A1E71 As Connection15
  Dim var_188 As String
  Dim var_160 As Variant
  Dim var_20C As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_76C As Double
  Dim var_2E0 As Variant
  Dim var_330 As Variant
  Dim var_374 As Variant
  Dim var_408 As Variant
  Dim var_774 As Double
  Dim var_1DC As String
  Dim var_1C0 As Variant
  Dim var_2C0 As Variant
  Dim var_320 As Variant
  Dim var_418 As Variant
  Dim var_5A4 As Variant
  Dim var_71C As Variant
  Dim var_180 As Variant
  Dim var_2F0 As Variant
  loc_14BB030: On Error Goto loc_14BBC01
  loc_14BB037: var_86 = CByte(0) 'Byte
  loc_14BB060: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A0 'Integer
  loc_14BB091:   If ((var_88 > 1) And (CLng(var_88) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_14BB098:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BB0A0:     var_D0 = CVar(CLng(3)) 'Long
  loc_14BB0BA:     var_F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14BB0C0:     var_100 = Trim(var_F0)
  loc_14BB0DC:     If (var_100 = vbNullString) Then
  loc_14BB0F8:       MsgBox("Define Bill No. ", &H40, var_F0, var_100, var_120)
  loc_14BB108:       Exit Sub
  loc_14BB109:     End If
  loc_14BB109:   End If
  loc_14BB10D:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BB115:   var_D0 = CVar(CLng(1)) 'Long
  loc_14BB151:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_14BB158:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BB160:     var_D0 = CVar(CLng(9)) 'Long
  loc_14BB19C:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_14BB1A3:       var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BB1AB:       var_D0 = CVar(CLng(8)) 'Long
  loc_14BB1F2:       MsgBox("Fill Delivery Boy Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_160, var_180)
  loc_14BB20F:       Set var_8C = Me.FGrid
  loc_14BB220:       Exit Sub
  loc_14BB221:     End If
  loc_14BB221:   End If
  loc_14BB224: Next var_A0 'Integer
  loc_14BB232: unk_4A1E71.BeginTrans var_184
  loc_14BB23B: var_86 = CByte(1) 'Byte
  loc_14BB243: Set var_8C = Me.TopCtrl1
  loc_14BB249: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_14BB262: If (CStr() = "Add") Then
  loc_14BB28A:   For var_18C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_18C 'Integer
  loc_14BB294:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BB29C:     var_D0 = CVar(CLng(1)) 'Long
  loc_14BB2BC:     var_100 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_14BB2C4:     var_110 = vbNullString
  loc_14BB2D2:     var_130 = CVar(CLng(var_88)) 'Long
  loc_14BB2FA:     var_180 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_14BB328:     If CBool(CVar(CLng(9)) And (var_180 <> vbNullString)) Then
  loc_14BB32F:       var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BB337:       var_D0 = CVar(CLng(1)) 'Long
  loc_14BB346:       var_9C = Me.FGrid.TextMatrix)
  loc_14BB36D:       var_F0 = Me.FGrid.TextMatrix)
  loc_14BB3A7:       var_76C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14BB3C5:       var_120 = Me.FGrid.TextMatrix)
  loc_14BB3FD:       Proc_6_8_EB0DE4(var_180, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_88)), var_120, CVar(CLng(4)), CVar(CLng(var_88)), var_76C)
  loc_14BB407:       var_2E0 = CVar(Proc_6_14_EF349C(CVar(CLng(3)), CVar(CLng(var_88)), var_F0, CVar(CLng(2)))) 'String
  loc_14BB40D:       Proc_6_8_EB0DE4(var_2F0, var_2E0, CVar(CLng(var_88)))
  loc_14BB42D:       var_374 = Me.FGrid.TextMatrix)
  loc_14BB454:       var_408 = Me.FGrid.TextMatrix)
  loc_14BB48E:       var_774 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14BB4BD:       Proc_6_17_EAA2B0(var_554, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_88)), var_774, CVar(CLng(&HA)), CVar(CLng(var_88)), var_408)
  loc_14BB4CD:       Proc_6_8_EB0DE4(var_5E4, CVar(Proc_6_14_EF349C(CVar(CLng(9)), CVar(CLng(var_88)), var_374, CVar(CLng(7)))), CVar(CLng(var_88)))
  loc_14BB4D6:       Set var_618 = Me.TopCtrl1
  loc_14BB4DC:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C(var_9C)
  loc_14BB527:       var_188 = "Insert Into AssignDelivery (DocId,Vtype,VNo,Vprefix,Vdate," & "Ddate,RestCode,DeliBoy,BillAmt,Remark,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) "
  loc_14BB577:       var_1C0 = CVar(var_188 & " Values ('" & CStr(var_9C) & "','" & CStr(var_F0) & "'," & CStr(var_76C) & ",'" & CStr(var_120) & "',") 'String
  loc_14BB596:       var_320 = var_1C0 & var_180 & "," & var_2F0 & ",'" 
  loc_14BB5EC:       var_5A4 = var_320 & CVar(CStr(var_374)) & "','" & CVar(CStr(var_408)) & "'," & CVar(var_774) & "," & var_554 & ",'" & CVar(MemVar_1F920C8) 
  loc_14BB632:       var_71C = var_5A4 & "'," & var_5E4 & ",'" & IIf((CStr(var_628) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) 
  loc_14BB649:       unk_4A1E71.Execute CStr(var_71C & "')"), var_760, -1
  loc_14BB6EF:     End If
  loc_14BB6F2:   Next var_18C 'Integer
  loc_14BB6FA: Else
  loc_14BB6FE:   Set var_8C = Me.TopCtrl1
  loc_14BB704:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_14BB71D:   If (CStr() = "Edit") Then
  loc_14BB745:     For var_778 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_88 = var_778 'Integer
  loc_14BB74F:       var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BB757:       var_D0 = CVar(CLng(1)) 'Long
  loc_14BB777:       var_100 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_14BB77F:       var_110 = vbNullString
  loc_14BB7E3:       If CBool(CVar(CLng(9)) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString)) Then
  loc_14BB7EA:         var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BB7F2:         var_D0 = CVar(CLng(9)) 'Long
  loc_14BB801:         var_9C = Me.FGrid.TextMatrix)
  loc_14BB811:         var_110 = CVar(CLng(var_88)) 'Long
  loc_14BB833:         var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14BB839:         Proc_6_17_EAA2B0(var_120, var_100, CVar(CLng(&HB)), var_110, var_9C, var_D0)
  loc_14BB849:         Proc_6_8_EB0DE4(var_2E0, CVar(Proc_6_14_EF349C(var_B0, CVar(CLng(var_88)), (var_100 <> var_110))), var_D0)
  loc_14BB852:         Set var_20C = Me.TopCtrl1
  loc_14BB858:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C(var_B0)
  loc_14BB893:         var_2C0 = CVar(CLng(var_88)) 'Long
  loc_14BB89B:         var_330 = CVar(CLng(1)) 'Long
  loc_14BB8EE:         var_1C0 = CVar("Update AssignDelivery Set DeliBoy='" & CStr(var_9C) & "',Remark=") & var_120 & ",U_Name='" & CVar(MemVar_1F920C8) 
  loc_14BB921:         var_418 = var_1C0 & "',U_EntDt=" & var_2E0 & ",U_AE='" & IIf((CStr(var_320) = "Add"), "A", "E") & "',Site_Code='" & CVar(MemVar_1F92070) 
  loc_14BB955:         var_1DC = CStr(var_418 & "',LogSite_Code='" & CVar(MemVar_1F92078) & "' Where DocId='" & CVar(CStr(Me.FGrid.TextMatrix))) & "'")
  loc_14BB95F:         unk_4A1E71.Execute var_1DC, var_554, -1
  loc_14BB9B9:       End If
  loc_14BB9BC:     Next var_778 'Integer
  loc_14BB9C1:   End If
  loc_14BB9C1: End If
  loc_14BB9C7: unk_4A1E71.CommitTrans
  loc_14BB9D0: var_86 = CByte(0) 'Byte
  loc_14BB9D8: Set var_8C = Me.TopCtrl1
  loc_14BB9DE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_14BB9F7: If (CStr() = "Add") Then
  loc_14BBA1F:   For var_77C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_77C 'Integer
  loc_14BBA29:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BBA31:     var_D0 = CVar(CLng(1)) 'Long
  loc_14BBA51:     var_100 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_14BBA59:     var_110 = vbNullString
  loc_14BBA67:     var_130 = CVar(CLng(var_88)) 'Long
  loc_14BBABD:     If CBool(CVar(CLng(9)) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString)) Then
  loc_14BBAC4:       var_B0 = CVar(CLng(var_88)) 'Long
  loc_14BBB02:       var_F0 = Me.FGrid.TextMatrix)
  loc_14BBB22:       Proc_233_16_1655ECC(CStr(Me.FGrid.TextMatrix)), "Assign Delivery", CStr(var_F0), CVar(CLng(7)), CVar(CLng(var_88)), Me.FGrid.TextMatrix), CVar(CLng(1)))
  loc_14BBB3E:     End If
  loc_14BBB41:   Next var_77C 'Integer
  loc_14BBB46: End If
  loc_14BBB54: global_64.Requery -1
  loc_14BBB74: var_9C = Me.FGrid.TextMatrix)
  loc_14BBBBD: Me.var_9C.Find "SearchCode ='" & CStr(var_9C) & "'", 0, 1
  loc_14BBBE2: var_188 = "INI"
  loc_14BBBF0: Call Proc_305_46_E7888C(Proc_5_1_100CB50(var_188, Me, global_64), 1)
  loc_14BBBFB: Call Proc_305_45_13751B8(CVar(CLng(1)))
  loc_14BBC00: Exit Sub
  loc_14BBC01: ' Referenced from: 14BB030
  loc_14BBC0A: If (CInt(var_86) = 1) Then
  loc_14BBC13:   unk_4A1E71.RollbackTrans
  loc_14BBC18: End If
  loc_14BBC20: Set var_8C = Err()
  loc_14BBC26: Call 0.Method_arg_2C (var_188)
  loc_14BBC3F: MsgBox(CVar(var_188), &H10, var_F0, var_100, var_120)
  loc_14BBC52: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5F834
  'Data Table: 4A1E5C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5F7FF: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5F812: Set var_A8 = Me.TxtGrid
  loc_E5F818: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5F820: var_AC.Visible = False
  loc_E5F82C: Call Proc_305_47_EBA1D0()
  loc_E5F831: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67098
  'Data Table: 4A1E5C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E67054: Set var_88 = Me.TxtGrid
  loc_E6705A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E67074: If (var_8C.Visible = 0) Then
  loc_E6708D:   Me.FGrid.BackColorSel = CVar(CLng(global_124))
  loc_E67095: End If
  loc_E67095: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E4AED4
  'Data Table: 4A1E5C
  loc_E4AEAC: Set var_88 = Me.TopCtrl1
  loc_E4AEB2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C()
  loc_E4AECB: If (CStr() <> "Browse") Then
  loc_E4AECE:   Call Proc_305_48_E434FC()
  loc_E4AED3: End If
  loc_E4AED3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '121E944
  'Data Table: 4A1E5C
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_121E454: Set var_88 = Me.TopCtrl1
  loc_121E45A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C()
  loc_121E49F: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_121E4A8:   Call Form_KeyDown(Cancel, arg_10)
  loc_121E4AD: End If
  loc_121E4B1: Set var_88 = Me.TopCtrl1
  loc_121E4B7: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C()
  loc_121E4D0: If (CStr() = "Browse") Then
  loc_121E4D3:   Exit Sub
  loc_121E4D4: End If
  loc_121E548: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_121E553:   var_9C = "+{Tab}"
  loc_121E559:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_121E563:   Cancel = 0
  loc_121E569: Else
  loc_121E5C0:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_121E5C5:     Cancel = 0
  loc_121E5C8:   End If
  loc_121E5C8: End If
  loc_121E5F4: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_121E60B: Set var_88 = Me.TopCtrl1
  loc_121E611: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(Cancel)
  loc_121E62A: If (CStr(Cancel) = "Edit") Then
  loc_121E62D:   Exit Sub
  loc_121E62E: End If
  loc_121E63F: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_121E655:   var_DC = CLng(Me.FGrid.Col)
  loc_121E665:   If (var_DC = CLng(3)) Then
  loc_121E67B:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E683:     var_FC = CVar(CLng(1)) 'Long
  loc_121E688:     var_11C = vbNullString
  loc_121E692:     Set var_A0 = Me.FGrid
  loc_121E698:     LateIdCallSt
  loc_121E6BD:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E6C5:     var_FC = CVar(CLng(2)) 'Long
  loc_121E6CA:     var_11C = vbNullString
  loc_121E6D4:     Set var_A0 = Me.FGrid
  loc_121E6DA:     LateIdCallSt
  loc_121E6FF:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E707:     var_FC = CVar(CLng(3)) 'Long
  loc_121E70C:     var_11C = vbNullString
  loc_121E716:     Set var_A0 = Me.FGrid
  loc_121E71C:     LateIdCallSt
  loc_121E741:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E749:     var_FC = CVar(CLng(4)) 'Long
  loc_121E74E:     var_11C = vbNullString
  loc_121E758:     Set var_A0 = Me.FGrid
  loc_121E75E:     LateIdCallSt
  loc_121E783:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E78B:     var_FC = CVar(CLng(2)) 'Long
  loc_121E790:     var_11C = vbNullString
  loc_121E79A:     Set var_A0 = Me.FGrid
  loc_121E7A0:     LateIdCallSt
  loc_121E7C5:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E7CD:     var_FC = CVar(CLng(5)) 'Long
  loc_121E7D2:     var_11C = vbNullString
  loc_121E7DC:     Set var_A0 = Me.FGrid
  loc_121E7E2:     LateIdCallSt
  loc_121E807:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E80F:     var_FC = CVar(CLng(7)) 'Long
  loc_121E814:     var_11C = vbNullString
  loc_121E81E:     Set var_A0 = Me.FGrid
  loc_121E824:     LateIdCallSt
  loc_121E839:   Else
  loc_121E840:     If (var_DC = CLng(8)) Then
  loc_121E856:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E85E:       var_FC = CVar(CLng(8)) 'Long
  loc_121E863:       var_11C = vbNullString
  loc_121E86D:       Set var_A0 = Me.FGrid
  loc_121E873:       LateIdCallSt
  loc_121E898:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E8A0:       var_FC = CVar(CLng(9)) 'Long
  loc_121E8A5:       var_11C = vbNullString
  loc_121E8AF:       Set var_A0 = Me.FGrid
  loc_121E8B5:       LateIdCallSt
  loc_121E8CA:     Else
  loc_121E8D1:       If (var_DC = CLng(&HB)) Then
  loc_121E8E7:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121E8FF:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_121E904:         var_11C = vbNullString
  loc_121E90E:         Set var_B4 = Me.FGrid
  loc_121E914:         LateIdCallSt
  loc_121E92C:       End If
  loc_121E92C:     End If
  loc_121E92C:   End If
  loc_121E92C: End If
  loc_121E932: If (Cancel = &HD) Then
  loc_121E93A:   global_100 = 0
  loc_121E93D: End If
  loc_121E93F: Cancel = 0
  loc_121E942: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E57924
  'Data Table: 4A1E5C
  loc_E578F0: Set var_88 = Me.TopCtrl1
  loc_E578F6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C()
  loc_E5790F: If (CStr() = "Browse") Then
  loc_E57912:   Exit Sub
  loc_E57913: End If
  loc_E5791C: Call FGrid_UnknownEvent_C()
  loc_E57921: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1149FD4
  'Data Table: 4A1E5C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1149C40: Set var_88 = Me.TopCtrl1
  loc_1149C46: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1149C5F: If (CStr() = "Browse") Then
  loc_1149C62:   Exit Sub
  loc_1149C63: End If
  loc_1149C76: var_A0 = CLng(Me.FGrid.Col)
  loc_1149C86: If (var_A0 = CLng(3)) Then
  loc_1149C8D:   Set var_88 = Me.TopCtrl1
  loc_1149C93:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_A0)
  loc_1149CAC:   If (CStr() = "Add") Then
  loc_1149CB3:     Set var_C4 = Me.FGrid
  loc_1149CD7:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1149CE0:     var_CA = Asc(var_9C)
  loc_1149D04:     Set var_B4 = var_C4
  loc_1149D16:     Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0)
  loc_1149D3E:     Set var_88 = Me.TxtGrid
  loc_1149D44:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, 0)
  loc_1149D4C:     var_CA = var_B4.Text
  loc_1149D65:     If (Len(var_9C) <= 1) Then
  loc_1149D74:       Set var_88 = Me.TxtGrid
  loc_1149D7A:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1149D82:       0 = var_B4.Text
  loc_1149D93:       Set var_B8 = Me.TxtGrid
  loc_1149D99:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1149DA1:       var_C4.Text = var_9C
  loc_1149DB4:     End If
  loc_1149DC0:     Set var_88 = Me.TxtGrid
  loc_1149DC6:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1149DE0:     Set var_B8 = Me.TxtGrid
  loc_1149DE6:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1149DEE:     var_C4.SelStart = Len(var_B4.Text)
  loc_1149E01:   End If
  loc_1149E04: Else
  loc_1149E0B:   If (var_A0 = CLng(8)) Then
  loc_1149E12:     Set var_C4 = Me.FGrid
  loc_1149E36:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1149E63:     Set var_B4 = var_C4
  loc_1149E75:     Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1149E9D:     Set var_88 = Me.TxtGrid
  loc_1149EA3:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1149EAB:     0 = var_B4.Text
  loc_1149EC4:     If (Len(var_9C) <= 1) Then
  loc_1149ED3:       Set var_88 = Me.TxtGrid
  loc_1149ED9:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1149EE1:       var_CA = var_B4.Text
  loc_1149EF2:       Set var_B8 = Me.TxtGrid
  loc_1149EF8:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1149F00:       var_C4.Text = var_9C
  loc_1149F13:     End If
  loc_1149F1F:     Set var_88 = Me.TxtGrid
  loc_1149F25:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1149F3F:     Set var_B8 = Me.TxtGrid
  loc_1149F45:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1149F4D:     var_C4.SelStart = Len(var_B4.Text)
  loc_1149F63:   Else
  loc_1149F6A:     If (var_A0 = CLng(&HB)) Then
  loc_1149FAB:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1149FBD:     End If
  loc_1149FBD:   End If
  loc_1149FBD: End If
  loc_1149FC7: If (CLng(Cancel) <> &HD) Then
  loc_1149FCF:   global_100 = &HFF
  loc_1149FD2: End If
  loc_1149FD2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1002418
  'Data Table: 4A1E5C
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_1002220: Set var_88 = Me.TopCtrl1
  loc_1002226: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C()
  loc_100223F: If (CStr() = "Browse") Then
  loc_1002242:   Exit Sub
  loc_1002243: End If
  loc_1002247: Set var_88 = Me.TopCtrl1
  loc_100224D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1002266: If (CStr() = "Edit") Then
  loc_1002269:   Exit Sub
  loc_100226A: End If
  loc_1002287: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_100228A:   Exit Sub
  loc_100228B: End If
  loc_100229C: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_10022BE:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10022F8:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_100231A:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1002330:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1002339:         Set var_110 = Me.FGrid
  loc_1002354:       Else
  loc_1002367:         Me.FGrid.Rows = 1
  loc_100238D:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_1002395:         Set var_110 = Me.FGrid
  loc_10023C2:         Me.FGrid.FixedRows = 1
  loc_10023CA:       End If
  loc_10023CA:     End If
  loc_10023CD:   Else
  loc_10023EE:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_10023FE:   End If
  loc_1002402:   Set var_88 = Me.FGrid
  loc_1002413: End If
  loc_1002413: Exit Sub
  loc_1002414: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E45698
  'Data Table: 4A1E5C
  Dim var_8C As TextBox
  loc_E4566C: Call Proc_305_47_EBA1D0()
  loc_E4567C: Set var_88 = Me.TxtGrid
  loc_E45682: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4568A: var_8C.Visible = False
  loc_E45696: Exit Sub
End Sub

Private Sub Form_Load() '141EA64
  'Data Table: 4A1E5C
  Dim var_8C As Variant
  Dim var_C0 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_C4 As String
  Dim unk_4A1E71 As Connection15
  Dim var_C8 As Variant
  Dim var_CC As Field20
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_180 As Integer
  Dim var_170 As Variant
  Dim var_120 As Variant
  loc_141DFF4: On Error Goto loc_141EA20
  loc_141E006: Me.LblUser.Left = CDbl(13500)
  loc_141E01D: Me.LblUser.Top = CDbl(7800)
  loc_141E034: Me.LblLDt.Top = CDbl(8160)
  loc_141E04B: Me.LblLDt.Left = CDbl(13500)
  loc_141E05A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_141E072: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B0))
  loc_141E084: Set var_8C = Me.TopCtrl1
  loc_141E08A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_141E098: Call 0.Method_arg_50 (var_B0)
  loc_141E0A0: var_C0 = CVar(var_B0) 'String
  loc_141E0A8: Set var_8C = Me.TopCtrl1
  loc_141E0AE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(var_C0)
  loc_141E0E5: var_AC = 0
  loc_141E115: unk_4A1E71.Execute "Select AutoSplit from depart where Code='" & global_52 & "'", var_C0, -1
  loc_141E125: var_AC = var_C8.Item(var_C8)
  loc_141E12D: var_CC = var_CC.Value
  loc_141E181: unk_4A1E71.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_C0, -1
  loc_141E192: Set global_76 = var_8C.Fields
  loc_141E1BC: var_8C = Me.Fields
  loc_141E1C4: var_C8 = var_8C.Item("MultiBillGeneration")
  loc_141E1CC: var_C0 = var_C8.Value
  loc_141E1E6: If (var_C0 = "Yes") Then
  loc_141E1F4:   If (Proc_6_38_E68A98(var_DC, var_DC, Proc_96_17_FDBD80(global_52, global_84, global_80)) = "Yes") Then
  loc_141E1FD:     If (MemVar_1F920B8 = 1) Then
  loc_141E214:       var_B0 = "Select Cast(S.VNo As Varchar) Code,Cast(S.VNo As Varchar) Name,S.DocID,S.Vtype,S.Vprefix,S.Vtype,S.Vdate,S.Vtime,S.RestCode,S.NetAmt From SplitSale1 S LEFT JOIN AssignDelivery AD ON S.DocId=AD.DocId INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.SITE_CODE=V.SITE_CODE) WHERE ISNULL(AD.DeliBoy,'')='' And S.LOGSITE_CODE='" & MemVar_1F92078
  loc_141E229:       Proc_6_7_F25D88(var_C0, MemVar_1F920F4, CVar(var_B0 & "' AND S.VDate between "), var_1E4, -1)
  loc_141E249:       Proc_6_7_F25D88(var_120, MemVar_1F920FC, var_1E8 & var_C0 & " And ")
  loc_141E251:       var_130 = var_8C & var_120 
  loc_141E264:       var_180 = 0
  loc_141E284:       var_C4 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_141E294:       unk_4A1E71.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'" & "'", var_170, -1
  loc_141E29C:       var_8C = var_8C.Fields
  loc_141E2A4:       var_180 = var_C8.Item(var_C8)
  loc_141E2AC:       var_CC = var_CC.Value
  loc_141E2CB:       unk_4A1E71.Execute CStr(var_190 & var_190 & "' ORDER BY S.DOCID"), var_130 & " And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='", global_88
  loc_141E2DC:       Set global_68 = var_1E8
  loc_141E316:     Else
  loc_141E32A:       var_B0 = "Select Cast(S.VNo As Varchar) Code,Cast(S.VNo As Varchar) Name,S.DocID,S.Vtype,S.Vprefix,S.Vtype,S.Vdate,S.Vtime,S.RestCode,S.NetAmt From SplitSale1 S  LEFT JOIN AssignDelivery AD ON S.DocId=AD.DocId INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.SITE_CODE=V.SITE_CODE) WHERE ISNULL(AD.DeliBoy,'')='' And S.LOGSITE_CODE='" & MemVar_1F92078
  loc_141E33F:       Proc_6_7_F25D88(var_C0, MemVar_1F920EC, CVar(var_B0 & "' AND S.VDate="), var_190)
  loc_141E347:       var_F0 = -1 & var_C0 
  loc_141E35A:       var_140 = 0
  loc_141E37A:       var_C4 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_141E38A:       unk_4A1E71.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'" & "'", var_120, -1
  loc_141E392:       var_8C = var_8C.Fields
  loc_141E39A:       var_140 = var_C8.Item(var_C8)
  loc_141E3A2:       var_CC = var_CC.Value
  loc_141E3B3:       var_170 = var_130 & var_130 & "' ORDER BY S.DOCID" 
  loc_141E3C1:       unk_4A1E71.Execute CStr(var_170), var_1E8 & var_C0 & " And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='", var_1E8
  loc_141E3D2:       Set global_68 = var_1E8
  loc_141E403:     End If
  loc_141E406:   Else
  loc_141E40C:     If (MemVar_1F920B8 = 1) Then
  loc_141E423:       var_B0 = "Select Cast(S.VNo As Varchar) Code,Cast(S.VNo As Varchar) Name,S.DocID,S.Vtype,S.Vprefix,S.Vtype,S.Vdate,S.Vtime,S.RestCode,S.NetAmt From Sale1 S  LEFT JOIN AssignDelivery AD ON S.DocId=AD.DocId INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.SITE_CODE=V.SITE_CODE) WHERE ISNULL(AD.DeliBoy,'')='' And S.LOGSITE_CODE='" & MemVar_1F92078
  loc_141E438:       Proc_6_7_F25D88(var_C0, MemVar_1F920F4, CVar(var_B0 & "' And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VDate between "), var_1E4)
  loc_141E440:       var_F0 = -1 & var_C0 
  loc_141E458:       Proc_6_7_F25D88(var_120, MemVar_1F920FC, var_1E8 & var_C0 & " And ")
  loc_141E460:       var_130 = var_1E8 & var_120 
  loc_141E473:       var_180 = 0
  loc_141E493:       var_C4 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_141E4A3:       unk_4A1E71.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'" & "'", var_170, -1
  loc_141E4AB:       var_8C = var_8C.Fields
  loc_141E4B3:       var_180 = var_C8.Item(var_C8)
  loc_141E4BB:       var_CC = var_CC.Value
  loc_141E4DA:       unk_4A1E71.Execute CStr(var_190 & var_190 & "' ORDER BY S.DOCID"), var_130 & " AND S.VTYPE='", global_92
  loc_141E4EB:       Set global_68 = var_1E8
  loc_141E525:     Else
  loc_141E539:       var_B0 = "Select Cast(S.VNo As Varchar) Code,Cast(S.VNo As Varchar) Name,S.DocID,S.Vtype,S.Vprefix,S.Vtype,S.Vdate,S.Vtime,S.RestCode,S.NetAmt From Sale1 S  LEFT JOIN AssignDelivery AD ON S.DocId=AD.DocId INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.SITE_CODE=V.SITE_CODE) WHERE ISNULL(AD.DeliBoy,'')='' And S.LOGSITE_CODE='" & MemVar_1F92078
  loc_141E54E:       Proc_6_7_F25D88(var_C0, MemVar_1F920EC, CVar(var_B0 & "' AND S.VDate="))
  loc_141E569:       var_140 = 0
  loc_141E589:       var_C4 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_141E599:       unk_4A1E71.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'" & "'", var_120, -1
  loc_141E5A1:       var_8C = var_8C.Fields
  loc_141E5A9:       var_140 = var_C8.Item(var_C8)
  loc_141E5B1:       var_CC = var_CC.Value
  loc_141E5C2:       var_170 = var_130 & var_130 & "' ORDER BY S.DOCID" 
  loc_141E5D0:       unk_4A1E71.Execute CStr(var_170), var_190 & var_C0 & " And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='", -1
  loc_141E5E1:       Set global_68 = var_1E8
  loc_141E612:     End If
  loc_141E612:   End If
  loc_141E615: Else
  loc_141E61B:   If (MemVar_1F920B8 = 1) Then
  loc_141E632:     var_B0 = "Select Cast(S.VNo As Varchar) Code,Cast(S.VNo As Varchar) Name,S.DocID,S.Vtype,S.Vprefix,S.Vtype,S.Vdate,S.Vtime,S.RestCode,S.NetAmt From Sale1 S  LEFT JOIN AssignDelivery AD ON S.DocId=AD.DocId INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.SITE_CODE=V.SITE_CODE) WHERE ISNULL(AD.DeliBoy,'')='' And S.LOGSITE_CODE='" & MemVar_1F92078
  loc_141E647:     Proc_6_7_F25D88(var_C0, MemVar_1F920F4, CVar(var_B0 & "' And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VDate between "), var_1E4)
  loc_141E64F:     var_F0 = -1 & var_C0 
  loc_141E667:     Proc_6_7_F25D88(var_120, MemVar_1F920FC, var_190 & var_C0 & " And ")
  loc_141E66F:     var_130 = var_1E8 & var_120 
  loc_141E682:     var_180 = 0
  loc_141E6A2:     var_C4 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_141E6B2:     unk_4A1E71.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'" & "'", var_170, -1
  loc_141E6BA:     var_8C = var_8C.Fields
  loc_141E6C2:     var_180 = var_C8.Item(var_C8)
  loc_141E6CA:     var_CC = var_CC.Value
  loc_141E6E9:     unk_4A1E71.Execute CStr(var_190 & var_190 & "' ORDER BY S.DOCID"), var_130 & " AND S.VTYPE='", var_1E8
  loc_141E6FA:     Set global_68 = var_1E8
  loc_141E734:   Else
  loc_141E748:     var_B0 = "Select Cast(S.VNo As Varchar) Code,Cast(S.VNo As Varchar) Name,S.DocID,S.Vtype,S.Vprefix,S.Vtype,S.Vdate,S.Vtime,S.RestCode,S.NetAmt From Sale1 S  LEFT JOIN AssignDelivery AD ON S.DocId=AD.DocId INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.SITE_CODE=V.SITE_CODE) WHERE ISNULL(AD.DeliBoy,'')='' And S.LOGSITE_CODE='" & MemVar_1F92078
  loc_141E74F:     var_DC = CVar(var_B0 & "' AND S.VDate=") 'String
  loc_141E75D:     Proc_6_7_F25D88(var_C0, MemVar_1F920EC, var_DC)
  loc_141E778:     var_140 = 0
  loc_141E798:     var_C4 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_141E7A8:     unk_4A1E71.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'" & "'", var_120, -1
  loc_141E7B0:     var_8C = var_8C.Fields
  loc_141E7B8:     var_140 = var_C8.Item(var_C8)
  loc_141E7C0:     var_CC = var_CC.Value
  loc_141E7DF:     unk_4A1E71.Execute CStr(var_130 & var_130 & "' ORDER BY S.DOCID"), var_190 & var_C0 & " And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='", -1
  loc_141E7F0:     Set global_68 = var_1E8
  loc_141E821:   End If
  loc_141E821: End If
  loc_141E82A: CVarUnk
  loc_141E82F: VerifyVarObj
  loc_141E83B: LateIdStAd
  loc_141E86D: unk_4A1E71.Execute "SELECT Code, Name FROM DeliveryBoy Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_C0, -1
  loc_141E89C: CVarUnk
  loc_141E8A1: VerifyVarObj
  loc_141E8A7: Set var_8C = Me.DGDeliBoy
  loc_141E8AD: LateIdStAd
  loc_141E8C1: var_AC = 0
  loc_141E8E1: var_C4 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_141E8F1: unk_4A1E71.Execute "SELECT Code, Name FROM DeliveryBoy Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name" & "'", var_C0, -1
  loc_141E8F9: var_8C = var_8C.Fields
  loc_141E901: var_AC = var_C8.Item(var_C8)
  loc_141E909: var_CC = var_CC.Value
  loc_141E933: var_F0 = CVar("Select DocId AS SearchCode,SITE_CODE,LOGSITE_CODE From AssignDelivery AD Where AD.LOGSITE_CODE='" & MemVar_1F92078 & "' AND AD.VTYPE='") 'String
  loc_141E939: var_100 = var_F0 & var_DC 
  loc_141E950: Me.Recordset15.Open var_100 & "' Order By U_EntDt,VNo", CVar(MemVar_1F92044), 3
  loc_141E98D: var_B0 = "INI"
  loc_141E99B: Call Proc_305_46_E7888C(Proc_5_1_100CB50(var_B0, Me, global_64, 1, -1, var_DC), Me, Me.DGBill, Me)
  loc_141E9B4: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030019(True)
  loc_141E9BC: Call Proc_305_43_116F04C(Me.TopCtrl1, global_68)
  loc_141E9C1: Call Proc_305_45_13751B8(var_1E8)
  loc_141E9C6: Call TopCtrl1_UnknownEvent_11()
  loc_141E9DD: Me.FGrid.Left = CVar(CDbl(&H64))
  loc_141E9F2: Set var_8C = Me.FGrid
  loc_141E9F8: var_8C.Top = CVar(CDbl(600))
  loc_141EA09: Call 0.Method_arg_160 (var_8C)
  loc_141EA17: Call 0.Method_arg_164 (var_8C)
  loc_141EA1F: Exit Sub
  loc_141EA20: ' Referenced from: 141DFF4
  loc_141EA28: Set var_8C = Err()
  loc_141EA2E: Call 0.Method_arg_2C (var_B0)
  loc_141EA4F: MsgBox(CVar(var_B0), &H40, "Information", var_F0, var_100)
  loc_141EA62: Exit Sub
  loc_141EA63: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E69A0C
  'Data Table: 4A1E5C
  loc_E699C3: Set global_64 = Nothing
  loc_E699D5: Set global_68 = Nothing
  loc_E699E7: Set global_72 = Nothing
  loc_E699F9: Set global_76 = Nothing
  loc_E69A05: global_56 = 0
  loc_E69A08: Exit Sub
End Sub

Private Sub Form_Activate() 'E4A310
  'Data Table: 4A1E5C
  loc_E4A2E0: On Error Goto loc_E4A30A
  loc_E4A2E7: Set var_88 = Me.TopCtrl1
  loc_E4A2ED: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030000()
  loc_E4A302: If (CLng(CInt()) = &H2D) Then
  loc_E4A305:   Call TopCtrl1_UnknownEvent_15()
  loc_E4A30A:   ' Referenced from: E4A2E0
  loc_E4A30A: End If
  loc_E4A30A: Proc_6_60_E62BC4()
  loc_E4A30F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E269E4
  'Data Table: 4A1E5C
  loc_E269C9: If (global_56 = &HFF) Then
  loc_E269D9:   Me.Global.Unload Me
  loc_E269E1: End If
  loc_E269E1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8A358
  'Data Table: 4A1E5C
  loc_E8A2F4: On Error Goto loc_E8A314
  loc_E8A30B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8A313: Exit Sub
  loc_E8A314: ' Referenced from: E8A2F4
  loc_E8A31C: Set var_88 = Err()
  loc_E8A322: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8A343: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8A356: Exit Sub
  loc_E8A357: Exit Sub
End Sub

Public Function global_52Get() '4A2B94
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4A2BA3
  global_52 = Value
End Sub

Public Function global_56Get() '4A2BB2
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4A2BC1
  global_56 = Value
End Sub

Public Function global_60Get() '4A2BD0
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4A2BDF
  global_60 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E9F110
  'Data Table: 4A1E5C
  loc_E9F096: On Error Goto loc_E9F109
  loc_E9F0A2: Me.Recordset15.MoveFirst
  loc_E9F0CF: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E9F0FB: Proc_5_0_110649C(&HFF, Me, global_64)
  loc_E9F103: Call Proc_305_45_13751B8(0)
  loc_E9F108: Exit Sub
  loc_E9F109: ' Referenced from: E9F096
  loc_E9F109: Proc_6_60_E62BC4(var_A0)
  loc_E9F10E: Exit Sub
End Sub

Public Sub Proc_305_43_116F04C
  'Data Table: 4A1E5C
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_116EC74: Set var_88 = Me.FGrid
  loc_116EC83: var_88.Height = CVar(CDbl(6800))
  loc_116EC94: var_88.Width = CVar(CDbl(14300))
  loc_116ECA5: var_88.Cols = &HC
  loc_116ECB6: var_88.Rows = 2
  loc_116ECCF: global_124 = CStr(CLng(var_88.BackColor))
  loc_116ECD9: var_98 = 0
  loc_116ECE5: var_CC = CVar(CLng(0)) 'Long
  loc_116ECEA: var_EC = "SNo."
  loc_116ECF3: LateIdCallSt
  loc_116ECFE: var_98 = CVar(CLng(0)) 'Long
  loc_116ED03: var_CC = &H1F4
  loc_116ED0F: LateIdCallSt
  loc_116ED1A: var_98 = CVar(CLng(0)) 'Long
  loc_116ED25: var_CC = CVar(CInt(4)) 'Integer
  loc_116ED2C: LateIdCallSt
  loc_116ED37: var_98 = CVar(CLng(1)) 'Long
  loc_116ED3C: var_CC = 0
  loc_116ED48: LateIdCallSt
  loc_116ED53: var_98 = CVar(CLng(2)) 'Long
  loc_116ED58: var_CC = 0
  loc_116ED64: LateIdCallSt
  loc_116ED6C: var_98 = 0
  loc_116ED78: var_CC = CVar(CLng(3)) 'Long
  loc_116ED7D: var_EC = "Bill No."
  loc_116ED86: LateIdCallSt
  loc_116ED91: var_98 = CVar(CLng(3)) 'Long
  loc_116ED96: var_CC = &H4B0
  loc_116EDA2: LateIdCallSt
  loc_116EDAD: var_98 = CVar(CLng(3)) 'Long
  loc_116EDB8: var_CC = CVar(CInt(1)) 'Integer
  loc_116EDBF: LateIdCallSt
  loc_116EDCA: var_98 = CVar(CLng(4)) 'Long
  loc_116EDCF: var_CC = 0
  loc_116EDDB: LateIdCallSt
  loc_116EDE3: var_98 = 0
  loc_116EDEF: var_CC = CVar(CLng(5)) 'Long
  loc_116EDF4: var_EC = "Bill Date"
  loc_116EDFD: LateIdCallSt
  loc_116EE08: var_98 = CVar(CLng(5)) 'Long
  loc_116EE13: var_CC = CVar(CInt(1)) 'Integer
  loc_116EE1A: LateIdCallSt
  loc_116EE25: var_98 = CVar(CLng(5)) 'Long
  loc_116EE30: var_CC = CVar(CInt(1)) 'Integer
  loc_116EE37: LateIdCallSt
  loc_116EE42: var_98 = CVar(CLng(5)) 'Long
  loc_116EE47: var_CC = &H6A4
  loc_116EE53: LateIdCallSt
  loc_116EE5B: var_98 = 0
  loc_116EE67: var_CC = CVar(CLng(6)) 'Long
  loc_116EE6C: var_EC = "Deli.Date"
  loc_116EE75: LateIdCallSt
  loc_116EE80: var_98 = CVar(CLng(6)) 'Long
  loc_116EE8B: var_CC = CVar(CInt(1)) 'Integer
  loc_116EE92: LateIdCallSt
  loc_116EE9D: var_98 = CVar(CLng(6)) 'Long
  loc_116EEA8: var_CC = CVar(CInt(1)) 'Integer
  loc_116EEAF: LateIdCallSt
  loc_116EEBA: var_98 = CVar(CLng(6)) 'Long
  loc_116EEBF: var_CC = &H6A4
  loc_116EECB: LateIdCallSt
  loc_116EED6: var_98 = CVar(CLng(7)) 'Long
  loc_116EEDB: var_CC = 0
  loc_116EEE7: LateIdCallSt
  loc_116EEEF: var_98 = 0
  loc_116EEFB: var_CC = CVar(CLng(8)) 'Long
  loc_116EF00: var_EC = "Delivery Boy"
  loc_116EF09: LateIdCallSt
  loc_116EF14: var_98 = CVar(CLng(8)) 'Long
  loc_116EF19: var_CC = &HC80
  loc_116EF25: LateIdCallSt
  loc_116EF30: var_98 = CVar(CLng(8)) 'Long
  loc_116EF3B: var_CC = CVar(CInt(1)) 'Integer
  loc_116EF42: LateIdCallSt
  loc_116EF4D: var_98 = CVar(CLng(9)) 'Long
  loc_116EF52: var_CC = 0
  loc_116EF5E: LateIdCallSt
  loc_116EF66: var_98 = 0
  loc_116EF72: var_CC = CVar(CLng(&HA)) 'Long
  loc_116EF77: var_EC = "Bill Amt"
  loc_116EF80: LateIdCallSt
  loc_116EF8B: var_98 = CVar(CLng(&HA)) 'Long
  loc_116EF96: var_CC = CVar(CInt(7)) 'Integer
  loc_116EF9D: LateIdCallSt
  loc_116EFA8: var_98 = CVar(CLng(&HA)) 'Long
  loc_116EFB3: var_CC = CVar(CInt(7)) 'Integer
  loc_116EFBA: LateIdCallSt
  loc_116EFC5: var_98 = CVar(CLng(&HA)) 'Long
  loc_116EFCA: var_CC = &H4B0
  loc_116EFD6: LateIdCallSt
  loc_116EFDE: var_98 = 0
  loc_116EFEA: var_CC = CVar(CLng(&HB)) 'Long
  loc_116EFEF: var_EC = "Remark"
  loc_116EFF8: LateIdCallSt
  loc_116F003: var_98 = CVar(CLng(&HB)) 'Long
  loc_116F008: var_CC = &H1194
  loc_116F014: LateIdCallSt
  loc_116F01F: var_98 = CVar(CLng(&HB)) 'Long
  loc_116F02A: var_CC = CVar(CInt(1)) 'Integer
  loc_116F031: LateIdCallSt
  loc_116F040: var_88.Enabled = True
  loc_116F047: Set var_88 = Nothing 
  loc_116F04B: Exit Sub
End Sub

Public Sub Proc_305_44_F1A2C8
  'Data Table: 4A1E5C
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F1A1DE: Set var_8C = Me.Txt
  loc_F1A1E4: Call 0.Method_Proc_305_44_F1A2C8C (var_8E, var_86)
  loc_F1A1F4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1A20A:   Set var_8C = Me.Txt
  loc_F1A210:   Call 0.Method_Proc_305_44_F1A2C80 (CInt(var_86), var_98)
  loc_F1A218:   var_98.Text = vbNullString
  loc_F1A234:   Set var_8C = Me.Txt
  loc_F1A23A:   Call 0.Method_Proc_305_44_F1A2C80 (CInt(var_86), var_98)
  loc_F1A242:   var_98.Tag = vbNullString
  loc_F1A251: Next var_92 'Byte
  loc_F1A26A: Me.FGrid.Rows = 1
  loc_F1A287: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F1A28F: Set var_98 = Me.FGrid
  loc_F1A2BE: Me.FGrid.FixedRows = 1
  loc_F1A2C6: Exit Sub
End Sub

Public Sub Proc_305_45_13751B8
  'Data Table: 4A1E5C
  Dim var_94 As String
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim unk_4A1E71 As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  Dim var_12C As Fields15
  Dim var_150 As Variant
  Dim var_140 As Variant
  Dim var_118 As Variant
  Dim var_8A As Integer
  Dim var_128 As Variant
  loc_137496C: On Error Goto loc_13751B0
  loc_1374989: If (Me.Recordset15.RecordCount > 0) Then
  loc_137498C:   Call Proc_305_44_F1A2C8()
  loc_13749A5:   var_94 = "Select AD.*,DB.Name From (AssignDelivery AD Left Join DeliveryBoy DB On AD.DeliBoy = DB.Code) Where AD.Site_Code='" & MemVar_1F92070
  loc_13749ED:   var_E4 = CVar(var_94 & "' and (AD.LOGSITE_CODE='" & MemVar_1F92078 & "' or AD.LOGSITE_CODE='HO') and DocId='") & Me.Recordset15.Fields.Item("SearchCode").Value 
  loc_1374A04:   unk_4A1E71.Execute CStr(var_E4 & "'"), var_128, -1
  loc_1374A0F:   Set var_88 = var_12C
  loc_1374A47:   If (var_88.RecordCount > 0) Then
  loc_1374A84:     var_12C = var_88.Fields
  loc_1374AED:     var_190 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_12C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1374B32:     Me.LblUser.Caption = CStr(var_12C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_1374C0D:     var_190 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_1374C52:     Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1374C8C:     var_8A = 1
  loc_1374CA2:     Me.FGrid.Rows = 1
  loc_1374CAA:     ' Referenced from: 1375127
  loc_1374CB9:     If Not(var_88.EOF) Then
  loc_1374CBC:       var_B0 = vbNullString
  loc_1374CC6:       Set var_A0 = Me.FGrid
  loc_1374CDB:       Set var_1E8 = Me.FGrid
  loc_1374CE2:       var_B0 = CVar(CLng(var_8A)) 'Long
  loc_1374CEA:       var_118 = CVar(CLng(0)) 'Long
  loc_1374CF4:       var_C4 = CVar(CStr(var_8A)) 'String
  loc_1374CFB:       LateIdCallSt
  loc_1374D0A:       var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1374D12:       var_140 = CVar(CLng(1)) 'Long
  loc_1374D42:       var_D4 = CVar(CStr(var_88.Fields.Item("DocID").Value)) 'String
  loc_1374D49:       LateIdCallSt
  loc_1374D63:       var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1374D6B:       var_140 = CVar(CLng(2)) 'Long
  loc_1374D9B:       var_D4 = CVar(CStr(var_88.Fields.Item("vType").Value)) 'String
  loc_1374DA2:       LateIdCallSt
  loc_1374DEF:       Proc_6_39_E7C810(var_D4, CVar(var_88.Fields.Item("VNo")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1E8, var_D4, CVar(CLng(3)))
  loc_1374DFF:       LateIdCallSt
  loc_1374E4C:       var_D4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("vPrefix")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(var_D4)), CVar(CLng(var_8A)))) 'String
  loc_1374E53:       LateIdCallSt
  loc_1374E85:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_1374E8D:       var_150 = CVar(CLng(5)) 'Long
  loc_1374EBA:       var_104 = CVar(CStr(Format(CVar(var_88.Fields.Item("VDate")), "dd/MMM/yyyy hh:nn"))) 'String
  loc_1374EC1:       LateIdCallSt
  loc_1374F33:       LateIdCallSt
  loc_1374F82:       var_D4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RestCode")), CVar(CLng(7)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(Format(CVar(var_88.Fields.Item("DDate")), "dd/MMM/yyyy hh:nn"))), 1, 1)) 'String
  loc_1374F89:       LateIdCallSt
  loc_1374FD4:       var_D4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")), CVar(CLng(8)), CVar(CLng(var_8A)), var_1E8, var_D4, CVar(CLng(6)))) 'String
  loc_1374FDB:       LateIdCallSt
  loc_1375026:       var_D4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DeliBoy")), CVar(CLng(9)), CVar(CLng(var_8A)), var_1E8, var_D4)) 'String
  loc_137502D:       LateIdCallSt
  loc_1375065:       Proc_6_39_E7C810(var_D4, CVar(var_88.Fields.Item("BillAmt")), var_1E8, var_D4, CVar(CLng(var_8A)))
  loc_137506E:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_1375076:       var_150 = CVar(CLng(&HA)) 'Long
  loc_1375096:       var_104 = Format(var_D4, "0.00")
  loc_13750A6:       LateIdCallSt
  loc_13750F7:       var_D4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remark")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(var_104)), 1, 1)) 'String
  loc_13750FE:       LateIdCallSt
  loc_1375112:       Set var_1E8 = Nothing 
  loc_137511C:       var_8A = (var_8A + 1)
  loc_1375122:       var_88.MoveNext
  loc_1375127:       GoTo loc_1374CAA
  loc_137512A:     End If
  loc_137512A:   End If
  loc_137512A:   var_B0 = 0
  loc_1375134:   Set var_A0 = Me.FGrid
  loc_1375161:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1375164:     var_B0 = vbNullString
  loc_137516E:     Set var_A0 = Me.FGrid
  loc_137517F:   End If
  loc_137517F:   var_B0 = 1
  loc_1375192:   Me.FGrid.FixedRows = var_B0
  loc_137519D: Else
  loc_137519D:   Call Proc_305_44_F1A2C8(FGrid.DispID_10000, var_B0, FGrid.DispID_2E, var_B0, var_8A, var_1E8, var_D4)
  loc_13751A2: End If
  loc_13751A2: Call Proc_305_47_EBA1D0(var_150, var_118, var_1E8)
  loc_13751AC: Set var_88 = Nothing
  loc_13751AF: Exit Sub
  loc_13751B0: ' Referenced from: 137496C
  loc_13751B0: Proc_6_60_E62BC4(var_104, 1)
  loc_13751B5: Exit Sub
End Sub

Public Sub Proc_305_46_E7888C(arg_C) 'E7888C
  'Data Table: 4A1E5C
  Dim var_98 As TextBox
  loc_E7883A: Set var_8C = Me.Txt
  loc_E78840: Call 0.Method_Proc_305_46_E7888CC (var_8E, var_86)
  loc_E78850: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78866:   Set var_8C = Me.Txt
  loc_E7886C:   Call 0.Method_Proc_305_46_E7888C0 (CInt(var_86), var_98)
  loc_E78874:   var_98.Enabled = arg_C
  loc_E78883: Next var_92 'Byte
  loc_E78889: Exit Sub
End Sub

Public Sub Proc_305_47_EBA1D0
  'Data Table: 4A1E5C
  loc_EBA148: If (CBool(Me.DGBill.Visible) = &HFF) Then
  loc_EBA15A:   Me.DGBill.Visible = False
  loc_EBA162: End If
  loc_EBA17E: If (CBool(Me.DGDeliBoy.Visible) = &HFF) Then
  loc_EBA190:   Me.DGDeliBoy.Visible = False
  loc_EBA198: End If
  loc_EBA1B4: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBA1C6:   Me.FGPoint.Visible = False
  loc_EBA1CE: End If
  loc_EBA1CE: Exit Sub
End Sub

Public Sub Proc_305_48_E434FC
  'Data Table: 4A1E5C
  loc_E434D8: Set var_88 = Me.TopCtrl1
  loc_E434DE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C()
  loc_E434F7: If (CStr() = "Browse") Then
  loc_E434FA:   Exit Sub
  loc_E434FB: End If
  loc_E434FB: Exit Sub
End Sub

Public Sub Proc_305_49_13E388C(arg_C) '13E388C
  'Data Table: 4A1E5C
  Dim var_86 As Integer
  Dim var_8E As Integer
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_118 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_190 As Variant
  Dim var_12C As Variant
  loc_13E2EC2: var_86 = &HFF
  loc_13E2EC8: var_8E = arg_C
  loc_13E2ED1: If (var_8E = 0) Then
  loc_13E2EF7:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_13E2F1A:     var_AE = Me.EOF
  loc_13E2F48:     Set var_94 = Me.TxtGrid
  loc_13E2F4E:     Call 0.Method_Proc_305_49_13E388C0 (arg_C, var_B4, var_B8, ((Me.RecordCount = 0) Or ((var_AE = &HFF) Or (Me.BOF = &HFF))))
  loc_13E2F56:     var_A8 = var_B4.Text
  loc_13E2F6E:     If (var_8E Or (var_B8 = vbNullString)) Then
  loc_13E2F84:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E2F8C:       var_E8 = CVar(CLng(1)) 'Long
  loc_13E2F91:       var_108 = vbNullString
  loc_13E2F9B:       Set var_B4 = Me.FGrid
  loc_13E2FA1:       LateIdCallSt
  loc_13E2FC6:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E2FCE:       var_E8 = CVar(CLng(2)) 'Long
  loc_13E2FD3:       var_108 = vbNullString
  loc_13E2FDD:       Set var_B4 = Me.FGrid
  loc_13E2FE3:       LateIdCallSt
  loc_13E3008:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3010:       var_E8 = CVar(CLng(3)) 'Long
  loc_13E3015:       var_108 = vbNullString
  loc_13E301F:       Set var_B4 = Me.FGrid
  loc_13E3025:       LateIdCallSt
  loc_13E304A:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3052:       var_E8 = CVar(CLng(4)) 'Long
  loc_13E3057:       var_108 = vbNullString
  loc_13E3061:       Set var_B4 = Me.FGrid
  loc_13E3067:       LateIdCallSt
  loc_13E308C:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3094:       var_E8 = CVar(CLng(5)) 'Long
  loc_13E3099:       var_108 = vbNullString
  loc_13E30A3:       Set var_B4 = Me.FGrid
  loc_13E30A9:       LateIdCallSt
  loc_13E30CE:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E30D6:       var_E8 = CVar(CLng(6)) 'Long
  loc_13E30DB:       var_108 = vbNullString
  loc_13E30E5:       Set var_B4 = Me.FGrid
  loc_13E30EB:       LateIdCallSt
  loc_13E3110:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3118:       var_E8 = CVar(CLng(7)) 'Long
  loc_13E311D:       var_108 = vbNullString
  loc_13E3127:       Set var_B4 = Me.FGrid
  loc_13E312D:       LateIdCallSt
  loc_13E3152:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E315A:       var_E8 = CVar(CLng(&HA)) 'Long
  loc_13E315F:       var_108 = vbNullString
  loc_13E3169:       Set var_B4 = Me.FGrid
  loc_13E316F:       LateIdCallSt
  loc_13E3183:       var_86 = 0
  loc_13E3189:     Else
  loc_13E318C:       Call Proc_305_50_FC1A4C(var_AE, var_86, var_B4, var_108, var_E8, var_C8, var_B4, var_108)
  loc_13E3197:       If (var_AE = 0) Then
  loc_13E319F:         Proc_305_49_13E388C = 0
  loc_13E31A5:       End If
  loc_13E31B8:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E31C0:       var_F8 = CVar(CLng(1)) 'Long
  loc_13E31F3:       var_13C = CVar(CStr(Me.Fields.Item("DocID").Value)) 'String
  loc_13E31FB:       Set var_140 = Me.FGrid
  loc_13E3201:       LateIdCallSt
  loc_13E3230:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3238:       var_F8 = CVar(CLng(2)) 'Long
  loc_13E326B:       var_13C = CVar(CStr(Me.Fields.Item("vType").Value)) 'String
  loc_13E3273:       Set var_140 = Me.FGrid
  loc_13E3279:       LateIdCallSt
  loc_13E32A8:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E32B0:       var_F8 = CVar(CLng(3)) 'Long
  loc_13E32E3:       var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_13E32EB:       Set var_140 = Me.FGrid
  loc_13E32F1:       LateIdCallSt
  loc_13E3320:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3328:       var_F8 = CVar(CLng(4)) 'Long
  loc_13E335B:       var_13C = CVar(CStr(Me.Fields.Item("vPrefix").Value)) 'String
  loc_13E3363:       Set var_140 = Me.FGrid
  loc_13E3369:       LateIdCallSt
  loc_13E33D6:       var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E340F:       var_150 = (Format(CVar(Me.Fields.Item("VDate")), "dd/MMM/yyyy") + " ")
  loc_13E343A:       var_190 = (1 + Format(CVar(Me.Fields.Item("VTIME")), "hh:nn"))
  loc_13E344D:       LateIdCallSt
  loc_13E347C:       var_B8 = Proc_6_14_EF349C(Me.FGrid, CVar(CStr(var_190)), 1, var_150, 1, 1, CVar(CLng(5)))
  loc_13E3492:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E349A:       var_F8 = CVar(CLng(6)) 'Long
  loc_13E34C6:       var_160 = CVar(CStr(Format(CVar(var_B8), "dd/MMM/yyyy hh:nn"))) 'String
  loc_13E34CE:       Set var_B4 = Me.FGrid
  loc_13E34D4:       LateIdCallSt
  loc_13E3506:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E350E:       var_F8 = CVar(CLng(7)) 'Long
  loc_13E3538:       var_12C = Me.Fields.Item("RestCode").Value
  loc_13E3541:       var_13C = CVar(CStr(var_12C)) 'String
  loc_13E354F:       LateIdCallSt
  loc_13E3575:       var_13C = Me.FGrid.Row
  loc_13E357E:       var_D8 = CVar(CLng(var_13C)) 'Long
  loc_13E35A5:       var_B4 = Me.Fields.Item("NetAmt")
  loc_13E35B4:       Proc_6_47_EF59D0(var_12C, CVar(var_B4), CVar(CLng(&HA)), var_D8, Me.FGrid, var_13C, CVar(CLng(&HA)))
  loc_13E35BD:       var_150 = CVar(CStr(var_12C)) 'String
  loc_13E35C5:       Set var_140 = Me.FGrid
  loc_13E35CB:       LateIdCallSt
  loc_13E35E7:     End If
  loc_13E35EA:   Else
  loc_13E35F1:     If (var_A8 = CLng(8)) Then
  loc_13E3642:       Set var_94 = Me.TxtGrid
  loc_13E3648:       Call 0.Method_Proc_305_49_13E388C0 (arg_C, var_B4, var_B8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_140, var_150, var_D8)
  loc_13E3650:       var_B4 = var_B4.Text
  loc_13E3668:       If (var_160 Or (var_B8 = vbNullString)) Then
  loc_13E367E:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3686:         var_E8 = CVar(CLng(8)) 'Long
  loc_13E368B:         var_108 = vbNullString
  loc_13E3695:         Set var_B4 = Me.FGrid
  loc_13E369B:         LateIdCallSt
  loc_13E36C0:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E36C8:         var_E8 = CVar(CLng(9)) 'Long
  loc_13E36CD:         var_108 = vbNullString
  loc_13E36D7:         Set var_B4 = Me.FGrid
  loc_13E36DD:         LateIdCallSt
  loc_13E36F1:         var_86 = 0
  loc_13E36F7:       Else
  loc_13E370A:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E3712:         var_F8 = CVar(CLng(8)) 'Long
  loc_13E3745:         var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_13E374D:         Set var_140 = Me.FGrid
  loc_13E3753:         LateIdCallSt
  loc_13E3782:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13E378A:         var_F8 = CVar(CLng(9)) 'Long
  loc_13E37AC:         var_B4 = Me.Fields.Item("Code")
  loc_13E37BD:         var_13C = CVar(CStr(var_B4.Value)) 'String
  loc_13E37C5:         Set var_140 = Me.FGrid
  loc_13E37CB:         LateIdCallSt
  loc_13E37E7:       End If
  loc_13E37EA:     Else
  loc_13E37F1:       If (var_A8 = CLng(&HB)) Then
  loc_13E3820:         Set var_94 = Me.TxtGrid
  loc_13E3826:         Call 0.Method_Proc_305_49_13E388C0 (0, var_B4, var_B8, CVar(CLng(&HB)), CVar(CLng(Me.FGrid.Row)), var_140, var_13C)
  loc_13E382E:         var_F8 = var_B4.Text
  loc_13E3836:         var_12C = CVar(var_B8) 'String
  loc_13E383E:         Set var_140 = Me.FGrid
  loc_13E3844:         LateIdCallSt
  loc_13E385E:       End If
  loc_13E385E:     End If
  loc_13E385E:   End If
  loc_13E385E: End If
  loc_13E386C: Set var_94 = Me.TxtGrid
  loc_13E3872: Call 0.Method_Proc_305_49_13E388C0 (0, var_B4, 0, var_140, var_12C, var_D8)
  loc_13E387A: var_B4.MaxLength = var_140
  loc_13E3886: Proc_305_49_13E388C = var_13C
End Sub

Public Sub Proc_305_50_FC1A4C
  'Data Table: 4A1E5C
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC18CF: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_FC18D4:   var_92 = 3 'Byte
  loc_FC18D8: End If
  loc_FC18E1: Set var_98 = Me.TxtGrid
  loc_FC18E7: Call 0.Method_Proc_305_50_FC1A4C0 (0, var_B0)
  loc_FC190A: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC193E: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC1962:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC1965:     GoTo loc_FC1A37
  loc_FC1968:   End If
  loc_FC196C:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC1996:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC19A0:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC19D5:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC19F9:     MsgBox("Duplicate Not Allowed!", &H40, "Validation", var_D0, var_124)
  loc_FC1A12:     Set var_98 = Me.TxtGrid
  loc_FC1A18:     Call 0.Method_Proc_305_50_FC1A4C0 (0, var_B0, CVar(CLng(var_92)))
  loc_FC1A20:     var_B0.SetFocus
  loc_FC1A31:     Proc_305_50_FC1A4C = 0
  loc_FC1A37:     ' Referenced from: FC1965
  loc_FC1A37:   End If
  loc_FC1A3A: Next var_D4 'Integer
  loc_FC1A44: Proc_305_50_FC1A4C = &HFF
End Sub
