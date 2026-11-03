VERSION 5.00
Begin VB.Form FrmOPStock
  Caption = "Opening Stock Entry"
  BackColor = &HFFC0C0&
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
  ClientWidth = 13155
  ClientHeight = 5730
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13155
    Height = 450
    TabIndex = 16
  End
  Begin DataGrid DGDepart
    Left = 9105
    Top = 1485
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2775
    Top = 1425
    Width = 1260
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 35
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
    BackColor = &HC0C0C0&
    Left = 6570
    Top = 45
    Width = 2820
    Height = 255
    TabIndex = 10
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
  Begin DataGrid DGItem
    Left = 9165
    Top = 885
    Width = 3900
    Height = 2400
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2775
    Top = 1110
    Width = 3510
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 11070
    Top = 4965
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 240
      Top = 195
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 8
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 750
    Top = 3015
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 510
    Top = 1725
    Width = 6900
    Height = 6450
    TabIndex = 2
  End
  Begin MSFlexGrid FGPoint
    Left = 9195
    Top = 5055
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 12
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5205
    Top = 8580
    Width = 2790
    Height = 285
    TabIndex = 15
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
    Left = 1830
    Top = 8580
    Width = 2880
    Height = 255
    TabIndex = 14
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
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 13
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
  Begin Label LblName
    Caption = "Opening Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 1185
    Top = 1425
    Width = 1305
    Height = 240
    TabIndex = 11
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
  Begin Label lbltotal
    Caption = "."
    ForeColor = &HC0&
    Left = 4320
    Top = 1425
    Width = 870
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
    Caption = "Department "
    Index = 0
    ForeColor = &HC00000&
    Left = 1185
    Top = 1110
    Width = 1170
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
End

Attribute VB_Name = "FrmOPStock"

Private global_128 As Integer
Private global_104 As Integer
Private MasterFormExit As Integer
Private global_136 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '10F91D4
  'Data Table: 4C0550
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_10F8EB8: Call Proc_131_55_EBB670()
  loc_10F8ED0: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10F8EEB: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F8EF4: Set var_BC = Me.FGrid
  loc_10F8F2A: Set var_104 = Me.TxtGrid
  loc_10F8F30: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_10F8F38: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_10F8F69: var_110 = CLng(Me.FGrid.Col)
  loc_10F8F79: If (var_110 = CLng(3)) Then
  loc_10F8F8B:   Set var_A8 = Me.TxtGrid
  loc_10F8F91:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H23)
  loc_10F8F99:   var_BC.MaxLength = var_110
  loc_10F8FBC:   If (Me.RecordCount > 0) Then
  loc_10F8FCA:     Set var_BC = Me.FGPoint
  loc_10F8FE2:     Proc_6_137_1193554(Me.DGItem, global_72, Index)
  loc_10F8FF0:   End If
  loc_10F9031:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10F9034:     Exit Sub
  loc_10F9035:   End If
  loc_10F9048:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F9050:   var_DC = CVar(CLng(3)) 'Long
  loc_10F9083:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_10F908C:     Me.MoveFirst
  loc_10F90A4:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F90AC:     var_DC = CVar(CLng(1)) 'Long
  loc_10F90B5:     Set var_BC = Me.FGrid
  loc_10F90BB:     var_CC = var_BC.TextMatrix)
  loc_10F90F0:     Me.Find "Code ='" & CStr(var_CC) & "'", 0, 1
  loc_10F9120:     If (Me.EOF = &HFF) Then
  loc_10F9129:       Me.MoveFirst
  loc_10F912E:     End If
  loc_10F912E:   End If
  loc_10F9131: Else
  loc_10F9138:   If (var_110 = CLng(4)) Then
  loc_10F914A:     Set var_A8 = Me.TxtGrid
  loc_10F9150:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H19, var_130, var_CC, var_DC)
  loc_10F9158:     var_BC.MaxLength = var_94
  loc_10F9167:   Else
  loc_10F916E:     If (var_110 = CLng(9)) Then
  loc_10F9180:       Set var_A8 = Me.TxtGrid
  loc_10F9186:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HD, var_DC)
  loc_10F918E:       var_BC.MaxLength = var_94
  loc_10F919D:     Else
  loc_10F91A4:       If (var_110 = CLng(&HA)) Then
  loc_10F91B6:         Set var_A8 = Me.TxtGrid
  loc_10F91BC:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB)
  loc_10F91C4:         var_BC.MaxLength = var_BC
  loc_10F91D0:       End If
  loc_10F91D0:     End If
  loc_10F91D0:   End If
  loc_10F91D0: End If
  loc_10F91D0: Exit Sub
  loc_10F91D1: If var_94 Then Exit Sub
  loc_10F91D1: End If
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12905CC
  'Data Table: 4C0550
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C0 As Variant
  Dim var_94 As DataGrid
  Dim Me As Recordset15
  loc_128FFE8: On Error Goto loc_12905C5
  loc_128FFF5: If (CLng(Shift) = &H1B) Then
  loc_1290005:   Set var_88 = Me.TxtGrid
  loc_129000B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1290025:   Set var_94 = Me.TxtGrid
  loc_129002B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_1290033:   var_98.Text = var_8C.Tag
  loc_129004F:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1290054:   Call Proc_131_55_EBB670(arg_14)
  loc_129005D:   Set var_88 = Me.FGrid
  loc_129007A:   Set var_88 = Me.TxtGrid
  loc_1290080:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1290088:   var_8C.Visible = False
  loc_1290094:   Exit Sub
  loc_1290095: End If
  loc_12900B8: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_12900C7:   Set var_88 = Me.TxtGrid
  loc_12900CD:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B0)
  loc_12900D5:   var_AC = var_8C.Left
  loc_12900EC:   Me.DGItem.Left = CVar(var_B0)
  loc_1290106:   Set var_94 = Me.TxtGrid
  loc_129010C:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_1290125:   Set var_88 = Me.TxtGrid
  loc_129012B:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_129013F:   var_C0 = CVar((var_8C.Top + var_98.Height)) 'Single
  loc_129014E:   Me.DGItem.Top = CVar(var_8C.Top)
  loc_129017D:   Set var_98 = Me.FGPoint
  loc_1290188:   Set var_94 = Nothing
  loc_12901B6:   Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_72, Shift, &HFF)
  loc_1290225:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_129022C:     Set var_94 = Me.DGItem
  loc_129024B:     Proc_6_138_106D6F8(var_94, global_72, KeyCode, Me.FGPoint, 1)
  loc_1290259:   End If
  loc_1290263:   If (CLng(Shift) = &HD) Then
  loc_129026C:     Call Proc_131_51_14525B8(KeyCode, var_DA, var_94)
  loc_1290277:     If (var_DA = &HFF) Then
  loc_12902BD:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_104, &HA)
  loc_12902CD:     End If
  loc_12902CD:   End If
  loc_12902D0: Else
  loc_12902D7:   If (var_AC = CLng(2)) Then
  loc_12902E4:     If (CLng(Shift) = &HD) Then
  loc_12902ED:       Call Proc_131_51_14525B8(KeyCode, var_DA, 0, 5)
  loc_12902F8:       If (var_DA = &HFF) Then
  loc_129033E:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_104, &HA, 0)
  loc_129034E:       End If
  loc_129034E:     End If
  loc_1290351:   Else
  loc_1290358:     If (var_AC = CLng(9)) Then
  loc_1290365:       If (CLng(Shift) = &HD) Then
  loc_129036E:         Call Proc_131_51_14525B8(KeyCode, var_DA, 3, 0)
  loc_1290379:         If (var_DA = &HFF) Then
  loc_12903C6:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_104, CByte((CInt(&HA) + 1)), 0)
  loc_12903D6:         End If
  loc_12903D6:       End If
  loc_12903D9:     Else
  loc_12903E0:       If (var_AC = CLng(&HA)) Then
  loc_12903ED:         If (CLng(Shift) = &HD) Then
  loc_12903F6:           Call Proc_131_51_14525B8(KeyCode, var_DA, 0, 0)
  loc_1290401:           If (var_DA = &HFF) Then
  loc_1290447:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_104, &HA, 0)
  loc_1290457:           End If
  loc_1290457:         End If
  loc_129045A:       Else
  loc_1290461:         If (var_AC = CLng(5)) Then
  loc_12904A4:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_104 = &HFF))) Then
  loc_12904AD:             Call Proc_131_51_14525B8(KeyCode, var_DA, 0, 0)
  loc_12904B8:             If (var_DA = &HFF) Then
  loc_12904FE:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_104, &HA, 0)
  loc_129050E:             End If
  loc_129050E:           End If
  loc_1290511:         Else
  loc_1290518:           If (var_AC = CLng(6)) Then
  loc_129055B:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_104 = &HFF))) Then
  loc_1290564:               Call Proc_131_51_14525B8(KeyCode, var_DA, 0, 0)
  loc_129056F:               If (var_DA = &HFF) Then
  loc_12905B5:                 Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_104, &HA, 0)
  loc_12905C5:               End If
  loc_12905C5:             End If
  loc_12905C5:           End If
  loc_12905C5:         End If
  loc_12905C5:       End If
  loc_12905C5:       ' Referenced from: 128FFE8
  loc_12905C5:     End If
  loc_12905C5:   End If
  loc_12905C5: End If
  loc_12905C5: Proc_6_60_E62BC4(9, 0, 0)
  loc_12905CA: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'FB35E8
  'Data Table: 4C0550
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_FB344B: Proc_6_58_E054C0(arg_10)
  loc_FB345C: If (KeyAscii = 0) Then
  loc_FB3472:   var_A0 = CLng(Me.FGrid.Col)
  loc_FB3482:   If (var_A0 = CLng(3)) Then
  loc_FB34A1:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_FB34B3:       var_A4 = "Name"
  loc_FB34CE:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_72, arg_10)
  loc_FB34E8:       Set var_AC = Me.FGPoint
  loc_FB3500:       Proc_6_138_106D6F8(Me.DGItem, global_72, KeyAscii, var_AC)
  loc_FB350E:     End If
  loc_FB3511:   Else
  loc_FB3518:     If (var_A0 = CLng(9)) Then
  loc_FB3525:       Set var_8C = Me.TxtGrid
  loc_FB352B:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_FB3546:       Proc_6_42_129A86C(var_AC, arg_10, 7, 5)
  loc_FB3555:     Else
  loc_FB355C:       If (var_A0 = CLng(&HA)) Then
  loc_FB3569:         Set var_8C = Me.TxtGrid
  loc_FB356F:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_FB358A:         Proc_6_42_129A86C(var_AC, arg_10, 7)
  loc_FB3599:       Else
  loc_FB35A0:         If Not (var_A0 = CLng(5)) Then
  loc_FB35AA:           If (var_A0 = CLng(6)) Then
  loc_FB35AD:           End If
  loc_FB35B7:           Set var_8C = Me.TxtGrid
  loc_FB35BD:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 2)
  loc_FB35D8:           Proc_6_42_129A86C(var_AC, arg_10, 8)
  loc_FB35E4:         End If
  loc_FB35E4:       End If
  loc_FB35E4:     End If
  loc_FB35E4:   End If
  loc_FB35E4: End If
  loc_FB35E4: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '105238C
  'Data Table: 4C0550
  Dim var_88 As Variant
  Dim var_9C As Long
  Dim var_A8 As Variant
  Dim var_17C As Double
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_174 As MSHFlexGrid
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_B8 As Variant
  Dim var_A4 As String
  loc_1052140: On Error Goto loc_1052386
  loc_1052156: var_9C = CLng(Me.FGrid.Col)
  loc_1052166: If (var_9C = CLng(3)) Then
  loc_105218C:   If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_105219A:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_10521A3:     Set var_A8 = Me.TxtGrid
  loc_10521AE:     var_A4 = "Name"
  loc_10521C9:     Proc_6_89_146F1AC(var_A8, KeyCode, global_72, Shift)
  loc_10521D8:   End If
  loc_10521DB: Else
  loc_10521E2:   If Not (var_9C = CLng(5)) Then
  loc_10521EC:     If (var_9C = CLng(6)) Then
  loc_10521EF:     End If
  loc_10521FC:     Set var_88 = Me.TxtGrid
  loc_1052202:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A8, var_A4, var_A4)
  loc_105220A:     &HFF = var_A8.Text
  loc_105222D:     var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1052245:     var_140 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1052272:     var_160 = CVar(CStr(Format(CVar(Val(var_A4)), "0.000"))) 'String
  loc_105227A:     Set var_174 = Me.FGrid
  loc_1052280:     LateIdCallSt
  loc_10522BA:     var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10522C2:     var_170 = CVar(CLng(6)) 'Long
  loc_10522E4:     var_17C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10522FA:     var_1A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1052302:     var_1C0 = CVar(CLng(7)) 'Long
  loc_105231A:     var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1052322:     var_120 = CVar(CLng(5)) 'Long
  loc_105234A:     var_160 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * var_17C))) 'String
  loc_1052352:     Set var_1E4 = Me.FGrid
  loc_1052358:     LateIdCallSt
  loc_1052385:   End If
  loc_1052385: End If
  loc_1052385: Exit Sub
  loc_1052386: ' Referenced from: 1052140
  loc_1052386: Proc_6_60_E62BC4(var_1E4, var_160, var_120, var_B8, var_1C0, var_1A0, var_17C, var_170)
  loc_105238B: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20C1C
  'Data Table: 4C0550
  Dim arg_10 As Integer
  loc_E20C04: If (Cancel = 0) Then
  loc_E20C0D:   Call Proc_131_51_14525B8(Cancel, var_88)
  loc_E20C16:   arg_10 = Not(var_88)
  loc_E20C19: End If
  loc_E20C19: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FEB13C
  'Data Table: 4C0550
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_FEAF72: Set var_88 = Me.Txt
  loc_FEAF78: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FEAF86: Proc_6_74_E226B0(var_8C)
  loc_FEAF92: Call Proc_131_55_EBB670(var_8C)
  loc_FEAF9A: var_92 = Index
  loc_FEAFA5: If (var_92 = CInt(0)) Then
  loc_FEAFBF:   If (Me.RecordCount > 0) Then
  loc_FEAFCD:     Set var_8C = Me.FGPoint
  loc_FEAFE5:     Proc_6_137_1193554(Me.DGDepart, global_76, Index)
  loc_FEAFF3:   End If
  loc_FEB041:   Set var_88 = Me.Txt
  loc_FEB047:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FEB04F:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FEB067:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FEB06A:     Exit Sub
  loc_FEB06B:   End If
  loc_FEB078:   Set var_88 = Me.Txt
  loc_FEB07E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FEB086:   var_A0 = var_8C.Text
  loc_FEB098:   var_B0 = "Name"
  loc_FEB0D3:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FEB0DC:     Me.MoveFirst
  loc_FEB0FF:     Set var_88 = Me.Txt
  loc_FEB105:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FEB10D:     0 = var_8C.Text
  loc_FEB126:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_FEB13B:   End If
  loc_FEB13B: End If
  loc_FEB13B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FCFC80
  'Data Table: 4C0550
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  loc_FCFACE: If (CLng(Shift) = &H1B) Then
  loc_FCFAD1:   Call Proc_131_55_EBB670()
  loc_FCFAD6:   Exit Sub
  loc_FCFAD7: End If
  loc_FCFAE5: If (KeyCode = CInt(0)) Then
  loc_FCFB00:   Set var_9C = Nothing
  loc_FCFB0B:   Set var_98 = Nothing
  loc_FCFB39:   Proc_6_69_134A198(Me.DGDepart, Me.Txt, KeyCode, global_76, Shift, 0)
  loc_FCFBA6:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FCFBAD:     Set var_98 = Me.DGDepart
  loc_FCFBCC:     Proc_6_138_106D6F8(var_98, global_76, KeyCode, Me.FGPoint, 1)
  loc_FCFBDA:   End If
  loc_FCFBDA: End If
  loc_FCFBF6: If (CBool(Me.DGDepart.Visible) = 0) Then
  loc_FCFC0E:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FCFC11:   End If
  loc_FCFC26:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FCFC2F:     Proc_6_75_E527CC(Shift, arg_14, var_98)
  loc_FCFC34:   End If
  loc_FCFC3E:   If (CLng(Shift) = &H26) Then
  loc_FCFC45:     Set var_8C = Me.TopCtrl1
  loc_FCFC4B:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_FCFC64:     If (CStr(0) = "Add") Then
  loc_FCFC6F:       If (KeyCode <> CInt(0)) Then
  loc_FCFC78:         Proc_6_76_E52838(Shift, arg_14)
  loc_FCFC7D:       End If
  loc_FCFC7D:     End If
  loc_FCFC7D:   End If
  loc_FCFC7D: End If
  loc_FCFC7D: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EAA1F0
  'Data Table: 4C0550
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EAA16E: Proc_6_133_E7EF78(var_94)
  loc_EAA177: arg_10 = CInt(var_94)
  loc_EAA180: Proc_6_58_E054C0(arg_10, arg_10)
  loc_EAA193: If (KeyAscii = CInt(0)) Then
  loc_EAA1B2:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EAA1C4:     var_A0 = "Name"
  loc_EAA1DF:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, arg_10)
  loc_EAA1EE:   End If
  loc_EAA1EE: End If
  loc_EAA1EE: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EDBC8C
  'Data Table: 4C0550
  loc_EDBBEE: If (KeyCode = CInt(0)) Then
  loc_EDBC0D:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EDBC21:     var_A4 = "Name"
  loc_EDBC45:     Proc_183_33_12A1B28(Me.DGDepart, Me.Txt, KeyCode, global_76)
  loc_EDBC7B:     Proc_6_138_106D6F8(Me.DGDepart, global_76, KeyCode, Me.FGPoint)
  loc_EDBC89:   End If
  loc_EDBC89: End If
  loc_EDBC89: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47454
  'Data Table: 4C0550
  loc_E47432: Set var_88 = Me.Txt
  loc_E47438: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47446: Proc_6_73_E22704(var_8C)
  loc_E47452: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F081E8
  'Data Table: 4C0550
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim Me As Recordset15
  Dim var_B4 As TextBox
  loc_F0810F: var_86 = Cancel
  loc_F0811A: If (var_86 = CInt(0)) Then
  loc_F0813C:   Set var_8C = Me.Txt
  loc_F08142:   Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_94, "Name='")
  loc_F0814A:   0 = var_90.Text
  loc_F08163:   Me.Find 1 & var_94 & "'", var_AC, var_86
  loc_F0817B: Else
  loc_F08183:   If (var_86 = CInt(2)) Then
  loc_F08193:     Set var_8C = Me.Txt
  loc_F08199:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F081BF:     Set var_B0 = Me.Txt
  loc_F081C5:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_F081CD:     var_B4.Text = Proc_6_34_14ECF20(var_90.Text)
  loc_F081E4:   End If
  loc_F081E4: End If
  loc_F081E4: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 'FBDBD0
  'Data Table: 4C0550
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FBDA3B: Me.DGItem.Visible = False
  loc_FBDA5A: If (Me.RecordCount > 0) Then
  loc_FBDA97:   Set var_B4 = Me.TxtGrid
  loc_FBDA9D:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_FBDAA5:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FBDACE:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FBDAD6:   var_EC = CVar(CLng(1)) 'Long
  loc_FBDB09:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_FBDB11:   Set var_B8 = Me.FGrid
  loc_FBDB17:   LateIdCallSt
  loc_FBDB46:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FBDB4E:   var_EC = CVar(CLng(2)) 'Long
  loc_FBDB70:   var_B0 = Me.Fields.Item("Name")
  loc_FBDB81:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FBDB89:   Set var_B8 = Me.FGrid
  loc_FBDB8F:   LateIdCallSt
  loc_FBDBAB: End If
  loc_FBDBB4: Set var_A8 = Me.TxtGrid
  loc_FBDBBA: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8, var_11C, var_EC)
  loc_FBDBC2: var_B0.SetFocus
  loc_FBDBCE: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E73104
  'Data Table: 4C0550
  loc_E730C2: Proc_6_153_E91194(Me.DGItem, arg_14)
  loc_E730D9: Set var_8C = Me.FGPoint
  loc_E730F3: Proc_6_138_106D6F8(Me.DGItem, global_72, 0)
  loc_E73101: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E623B4
  'Data Table: 4C0550
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6237F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E62392: Set var_A8 = Me.TxtGrid
  loc_E62398: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E623A0: var_AC.Visible = False
  loc_E623AC: Call Proc_131_55_EBB670()
  loc_E623B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E66130
  'Data Table: 4C0550
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E660EC: Set var_88 = Me.TxtGrid
  loc_E660F2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6610C: If (var_8C.Visible = 0) Then
  loc_E66125:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E6612D: End If
  loc_E6612D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1E8C0
  'Data Table: 4C0550
  loc_E1E8B7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E8BF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE614
  'Data Table: 4C0550
  loc_DFE60C: Call Proc_131_50_E3F744()
  loc_DFE611: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1135118
  'Data Table: 4C0550
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_1134DA0: Set var_88 = Me.TopCtrl1
  loc_1134DA6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1134DEB: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1134DF4:   Call Form_KeyDown(Cancel, arg_10)
  loc_1134DF9: End If
  loc_1134DFD: Set var_88 = Me.TopCtrl1
  loc_1134E03: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1134E1C: If (CStr() = "Browse") Then
  loc_1134E1F:   Exit Sub
  loc_1134E20: End If
  loc_1134E3D: var_C4 = Me.FGrid.Rows
  loc_1134E94: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_1134EAA:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1134EBA:   var_9C = "+{Tab}"
  loc_1134EC0:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_1134ECA:   Cancel = 0
  loc_1134ED0: Else
  loc_1134F27:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_1134F3D:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1134F7C:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_1134F7F:       Call TopCtrl1_UnknownEvent_16()
  loc_1134F84:     End If
  loc_1134F84:   End If
  loc_1134F84: End If
  loc_1134F8A: global_128 = Cancel
  loc_1134FB0: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1134FD4: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1134FEA:   var_11C = CLng(Me.FGrid.Col)
  loc_1134FFA:   If (var_11C = CLng(3)) Then
  loc_1135010:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1135028:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_113502D:     var_12C = vbNullString
  loc_1135037:     Set var_B4 = Me.FGrid
  loc_113503D:     LateIdCallSt
  loc_1135068:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1135070:     var_F8 = CVar(CLng(1)) 'Long
  loc_1135075:     var_12C = vbNullString
  loc_113507F:     Set var_A0 = Me.FGrid
  loc_1135085:     LateIdCallSt
  loc_113509A:   Else
  loc_11350A1:     If Not (var_11C = CLng(2)) Then
  loc_11350AB:       If Not (var_11C = CLng(1)) Then
  loc_11350B5:         If (var_11C = CLng(4)) Then
  loc_11350B8:         End If
  loc_11350B8:       End If
  loc_11350CB:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11350E3:       var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11350E8:       var_12C = vbNullString
  loc_11350F2:       Set var_B4 = Me.FGrid
  loc_11350F8:       LateIdCallSt
  loc_1135110:     End If
  loc_1135110:   End If
  loc_1135110: End If
  loc_1135112: Cancel = 0
  loc_1135115: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0FBD8
  'Data Table: 4C0550
  loc_E0FBC9: Call FGrid_UnknownEvent_C()
  loc_E0FBD3: global_104 = 0
  loc_E0FBD6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '123BF14
  'Data Table: 4C0550
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_123B9E0: Set var_88 = Me.TopCtrl1
  loc_123B9E6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_123B9FF: If (CStr() = "Browse") Then
  loc_123BA02:   Exit Sub
  loc_123BA03: End If
  loc_123BA16: var_A0 = CLng(Me.FGrid.Col)
  loc_123BA26: If (var_A0 = CLng(3)) Then
  loc_123BA2D:   Set var_C4 = Me.FGrid
  loc_123BA51:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_123BA7E:   Set var_B4 = var_C4
  loc_123BA90:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_123BAB8:   Set var_88 = Me.TxtGrid
  loc_123BABE:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_123BAC6:   0 = var_B4.Text
  loc_123BADF:   If (Len(var_9C) <= 1) Then
  loc_123BAEE:     Set var_88 = Me.TxtGrid
  loc_123BAF4:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_123BAFC:     var_CA = var_B4.Text
  loc_123BB0D:     Set var_B8 = Me.TxtGrid
  loc_123BB13:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_123BB1B:     var_C4.Text = var_9C
  loc_123BB2E:   End If
  loc_123BB3A:   Set var_88 = Me.TxtGrid
  loc_123BB40:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_123BB5A:   Set var_B8 = Me.TxtGrid
  loc_123BB60:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_123BB68:   var_C4.SelStart = Len(var_B4.Text)
  loc_123BB7E: Else
  loc_123BB85:   If (var_A0 = CLng(2)) Then
  loc_123BB8C:     Set var_C4 = Me.FGrid
  loc_123BBB0:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_123BBDD:     Set var_B4 = var_C4
  loc_123BBEF:     Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_123BC17:     Set var_88 = Me.TxtGrid
  loc_123BC1D:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_123BC25:     0 = var_B4.Text
  loc_123BC3E:     If (Len(var_9C) <= 1) Then
  loc_123BC4D:       Set var_88 = Me.TxtGrid
  loc_123BC53:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_123BC5B:       var_CA = var_B4.Text
  loc_123BC6C:       Set var_B8 = Me.TxtGrid
  loc_123BC72:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_123BC7A:       var_C4.Text = var_9C
  loc_123BC8D:     End If
  loc_123BC99:     Set var_88 = Me.TxtGrid
  loc_123BC9F:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_123BCB9:     Set var_B8 = Me.TxtGrid
  loc_123BCBF:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_123BCC7:     var_C4.SelStart = Len(var_B4.Text)
  loc_123BCDD:   Else
  loc_123BCE4:     If Not (var_A0 = CLng(9)) Then
  loc_123BCEE:       If (var_A0 = CLng(&HA)) Then
  loc_123BCF1:       End If
  loc_123BCF5:       Set var_C4 = Me.FGrid
  loc_123BD19:       var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_123BD46:       Set var_B4 = var_C4
  loc_123BD58:       Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_123BD80:       Set var_88 = Me.TxtGrid
  loc_123BD86:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_123BD8E:       0 = var_B4.Text
  loc_123BDA7:       If (Len(var_9C) <= 1) Then
  loc_123BDB6:         Set var_88 = Me.TxtGrid
  loc_123BDBC:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_123BDC4:         var_CA = var_B4.Text
  loc_123BDD5:         Set var_B8 = Me.TxtGrid
  loc_123BDDB:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_123BDE3:         var_C4.Text = var_9C
  loc_123BDF6:       End If
  loc_123BE02:       Set var_88 = Me.TxtGrid
  loc_123BE08:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_123BE22:       Set var_B8 = Me.TxtGrid
  loc_123BE28:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_123BE30:       var_C4.SelStart = Len(var_B4.Text)
  loc_123BE46:     Else
  loc_123BE4D:       If (var_A0 = CLng(5)) Then
  loc_123BE8E:         Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_123BEA3:       Else
  loc_123BEAA:         If (var_A0 = CLng(6)) Then
  loc_123BEEB:           Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel)
  loc_123BEFD:         End If
  loc_123BEFD:       End If
  loc_123BEFD:     End If
  loc_123BEFD:   End If
  loc_123BEFD: End If
  loc_123BF07: If (CLng(Cancel) <> &HD) Then
  loc_123BF0F:   global_104 = &HFF
  loc_123BF12: End If
  loc_123BF12: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '102FA5C
  'Data Table: 4C0550
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  loc_102F828: Set var_90 = Me.TopCtrl1
  loc_102F82E: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_102F847: If (CStr() = "Browse") Then
  loc_102F84A:   Exit Sub
  loc_102F84B: End If
  loc_102F868: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_102F86B:   Exit Sub
  loc_102F86C: End If
  loc_102F87D: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_102F89F:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_102F8D9:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_102F8FB:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_102F911:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102F91A:         Set var_118 = Me.FGrid
  loc_102F935:       Else
  loc_102F948:         Me.FGrid.Rows = 1
  loc_102F965:         var_D4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_102F96D:         Set var_118 = Me.FGrid
  loc_102F99C:         Me.FGrid.FixedRows = 1
  loc_102F9A4:       End If
  loc_102F9C9:       For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_11C 'Integer
  loc_102F9D3:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_102F9DB:         var_E4 = CVar(CLng(0)) 'Long
  loc_102F9E5:         var_A0 = CVar(CStr(var_86)) 'String
  loc_102F9ED:         Set var_90 = Me.FGrid
  loc_102F9F3:         LateIdCallSt
  loc_102FA04:       Next var_11C 'Integer
  loc_102FA09:     End If
  loc_102FA0C:   Else
  loc_102FA2D:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_102FA3D:   End If
  loc_102FA41:   Set var_90 = Me.FGrid
  loc_102FA52: End If
  loc_102FA57: Set var_8C = Nothing
  loc_102FA5A: Exit Sub
  loc_102FA5B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1CDE0
  'Data Table: 4C0550
  loc_E1CDD7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1CDDF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1E320
  'Data Table: 4C0550
  loc_E1E317: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E31F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3F680
  'Data Table: 4C0550
  Dim var_8C As TextBox
  loc_E3F654: Call Proc_131_55_EBB670()
  loc_E3F664: Set var_88 = Me.TxtGrid
  loc_E3F66A: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3F672: var_8C.Visible = False
  loc_E3F67E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F09350
  'Data Table: 4C0550
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F09264: On Error Goto loc_F09347
  loc_F0927C: var_88 = "ADD"
  loc_F0928A: Call Proc_131_54_E9C4D8(Proc_5_1_100CB50(var_88, Me))
  loc_F09295: Call Proc_131_52_F32898(global_68)
  loc_F092A7: Set var_8C = Me.Txt
  loc_F092AD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_F092B5: var_94.Enabled = True
  loc_F092CC: Set var_8C = Me.Txt
  loc_F092D2: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_F092DA: var_94.SetFocus
  loc_F092EC: Call Proc_131_59_109BD74(MemVar_1F92044, var_88)
  loc_F092FF: Set var_8C = Me.Txt
  loc_F09305: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_F0930D: var_94.Text = var_88
  loc_F09329: Me.LblUser.Caption = vbNullString
  loc_F0933E: Me.LblLDt.Caption = vbNullString
  loc_F09346: Exit Sub
  loc_F09347: ' Referenced from: F09264
  loc_F09347: Proc_6_60_E62BC4(var_94)
  loc_F0934C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9B8C8
  'Data Table: 4C0550
  loc_E9B850: On Error Goto loc_E9B8C1
  loc_E9B88A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9B8B0:   Call Proc_131_54_E9C4D8(Proc_5_1_100CB50("INI", Me))
  loc_E9B8BB:   Call Proc_131_53_146519C(global_68)
  loc_E9B8C0: End If
  loc_E9B8C0: Exit Sub
  loc_E9B8C1: ' Referenced from: E9B850
  loc_E9B8C1: Proc_6_60_E62BC4()
  loc_E9B8C6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10D5DFC
  'Data Table: 4C0550
  Dim var_96 As Integer
  Dim unk_4C0571 As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_B8 As Variant
  loc_10D5B2C: On Error Goto loc_10D5DA5
  loc_10D5B3D: If (Proc_183_56_FE8818(global_68) = &HFF) Then
  loc_10D5B40:   Exit Sub
  loc_10D5B41: End If
  loc_10D5B78: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10D5B7D:   var_96 = 0
  loc_10D5B89:   unk_4C0571.BeginTrans var_11C
  loc_10D5B9C:   var_B8 = Me.Bookmark
  loc_10D5BA4:   var_94 = var_B8 'Variant
  loc_10D5BC6:   Set var_120 = Me.Txt
  loc_10D5BCC:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_124, var_128, "Delete From Stock Where DocId='", var_B8)
  loc_10D5BD4:   -1 = var_124.Text
  loc_10D5BED:   unk_4C0571.Execute var_134 & var_128 & "'", &HFF, &HFF
  loc_10D5C15:   Set var_120 = Me.Txt
  loc_10D5C1B:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_124)
  loc_10D5C2D:   var_168 = 0
  loc_10D5C40:   var_160 = 0
  loc_10D5C4B:   var_15C = 0
  loc_10D5C5E:   var_154 = 0
  loc_10D5C69:   var_150 = 0
  loc_10D5C7C:   var_148 = 0
  loc_10D5CBB:   var_128 = "Stock"
  loc_10D5CC4:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_10D5CEF:   unk_4C0571.CommitTrans
  loc_10D5CF6:   var_96 = 0
  loc_10D5D04:   Me.Requery -1
  loc_10D5D14:   Me.Requery -1
  loc_10D5D24:   Me.Requery -1
  loc_10D5D44:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10D5D51:     Me.Bookmark = var_94
  loc_10D5D59:   Else
  loc_10D5D6D:     If (Me.EOF = 0) Then
  loc_10D5D76:       Me.MoveLast
  loc_10D5D7B:     End If
  loc_10D5D7B:   End If
  loc_10D5D7B:   Call Proc_131_53_146519C(var_96, var_148, 0, var_150, var_154)
  loc_10D5D9C:   Proc_5_0_110649C(&HFF, Me, global_68, 0)
  loc_10D5DA4: End If
  loc_10D5DA4: Exit Sub
  loc_10D5DA5: ' Referenced from: 10D5B2C
  loc_10D5DAB: If (var_96 = &HFF) Then
  loc_10D5DB4:   unk_4C0571.RollbackTrans
  loc_10D5DB9: End If
  loc_10D5DC1: Set var_120 = Err()
  loc_10D5DC7: Call 0.Method_arg_2C (var_128, 0, var_15C)
  loc_10D5DE8: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10D5DFB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F8F378
  'Data Table: 4C0550
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F8F21C: On Error Goto loc_F8F334
  loc_F8F22D: If (Proc_183_55_FE7900(global_68) = &HFF) Then
  loc_F8F230:   Exit Sub
  loc_F8F231: End If
  loc_F8F248: If (Me.RecordCount > 0) Then
  loc_F8F26E:   Call Proc_131_54_E9C4D8(Proc_5_1_100CB50("EDIT", Me))
  loc_F8F287:   Set var_90 = Me.Txt
  loc_F8F28D:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F8F295:   var_8C = var_98.Tag
  loc_F8F2A0:   global_80 = var_8C
  loc_F8F2BB:   Set var_90 = Me.Txt
  loc_F8F2C1:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F8F2C9:   var_98.Enabled = False
  loc_F8F2D8: Else
  loc_F8F2F9:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F8F309: End If
  loc_F8F316: Me.LblUser.Caption = vbNullString
  loc_F8F32B: Me.LblLDt.Caption = vbNullString
  loc_F8F333: Exit Sub
  loc_F8F334: ' Referenced from: F8F21C
  loc_F8F33C: Set var_90 = Err()
  loc_F8F342: Call 0.Method_arg_2C (var_8C)
  loc_F8F363: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F8F376: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E175F8
  'Data Table: 4C0550
  loc_E175ED: Me.Global.Unload Me
  loc_E175F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB3BF4
  'Data Table: 4C0550
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB3B64: On Error Goto loc_EB3BEE
  loc_EB3B7E: If (Me.RecordCount <= 0) Then
  loc_EB3B87:   var_B8 = "Information"
  loc_EB3BA2:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB3BB2:   Exit Sub
  loc_EB3BB3: End If
  loc_EB3BB6: MemVar_1F920E4 = "SELECT distinct Stock.DocId AS SearchCode,Stock.Vno,CAST(Vdate AS VarChar(11)) as OpeningDate,ItemMast.name as ItemName ,Stock.QtyRec,Depart.Name as Department FROM (Stock INNER JOIN ItemMast ON Stock.Item = ItemMast.Code And ItemMast.ItemType='Store') INNER JOIN Depart ON Stock.DepartCode = Depart.Code WHERE (((Stock.Vtype)='STOP')) Order by Depart.Name"
  loc_EB3BC0: MemVar_1F92120 = Me
  loc_EB3BCD: Proc_6_126_F1BCC0("500,1200,2500,1000,2000")
  loc_EB3BE8: Call 0.Method_arg_2B0 (1)
  loc_EB3BED: Exit Sub
  loc_EB3BEE: ' Referenced from: EB3B64
  loc_EB3BEE: Proc_6_60_E62BC4(var_B8)
  loc_EB3BF3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3D1B8
  'Data Table: 4C0550
  loc_E3D1A8: Proc_5_0_110649C(&HFF, Me)
  loc_E3D1B0: Call Proc_131_53_146519C(global_68)
  loc_E3D1B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3ACF8
  'Data Table: 4C0550
  Dim var_2701 As Double
  loc_E3ACE8: Proc_5_0_110649C(&HFF, Me)
  loc_E3ACF0: Call Proc_131_53_146519C(global_68)
  loc_E3ACF5: Exit Sub
  loc_E3ACF6: var_2701 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3CFD8
  'Data Table: 4C0550
  loc_E3CFC8: Proc_5_0_110649C(&HFF, Me)
  loc_E3CFD0: Call Proc_131_53_146519C(global_68)
  loc_E3CFD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3CF18
  'Data Table: 4C0550
  loc_E3CF08: Proc_5_0_110649C(&HFF, Me)
  loc_E3CF10: Call Proc_131_53_146519C(global_68)
  loc_E3CF15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10A4D30
  'Data Table: 4C0550
  Dim var_D4 As String
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_B4 As Field20
  Dim var_E4 As Variant
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_108 As String
  Dim unk_4C0571 As Connection15
  Dim var_88 As Recordset15
  Dim var_136 As Integer
  loc_10A4A80: On Error Goto loc_10A4D08
  loc_10A4A90: var_D4 = "SELECT Stock.Vdate,Stock.Sno,Stock.Item,Stock.QtyRec Qty,Stock.Unit WtUnit,Stock.Rate,Stock.Amount,Stock.DepartCode,Stock.GodownCode,Stock.RecdQty WtQty,Stock.ConvRatio,ItemMast.Name as ItemName,ItemMast.IssueUnit Unit, GodownMast.Name as GodownName ,Stock.GodownCode FROM (Stock INNER JOIN ItemMast ON Stock.Item = ItemMast.Code And ItemMast.ItemType='Store') INNER JOIN GodownMast ON Stock.GodownCode = GodownMast.Code where Stock.Docid='"
  loc_10A4AB2: var_B4 = Me.Fields.Item("SearchCode")
  loc_10A4AC2: var_E4 = var_D4 & var_B4.Value 
  loc_10A4AC6: var_F4 = "' ORDER BY ItemMast.Name"
  loc_10A4ACB: var_104 = var_E4 & var_F4 
  loc_10A4AD9: unk_4C0571.Execute CStr(var_104), var_128, -1
  loc_10A4AE4: Set var_88 = var_12C
  loc_10A4B04: var_130 = var_88.RecordCount
  loc_10A4B12: If (var_130 = 0) Then
  loc_10A4B2E:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_128)
  loc_10A4B3E:   Exit Sub
  loc_10A4B3F: End If
  loc_10A4B55: Set var_A0 = var_88 
  loc_10A4B61: var_136 = CreateFieldDefFile(var_A0, MemVar_1F920B4 & "\OpenningStock.ttx")
  loc_10A4B6B: Set var_88 = var_A0
  loc_10A4B71: var_B0 = CVar(var_136) 'Integer
  loc_10A4B74: var_98 = var_B0 'Variant
  loc_10A4B90: var_108 = MemVar_1F920B4 & "\OpenningStock.RPT"
  loc_10A4B99: Call 0.Method_arg_1C (var_108, var_B0, var_A0)
  loc_10A4BA4: MemVar_1F921E4 = var_A0
  loc_10A4BBF: Call 0.Method_arg_90 (var_A0, var_130, var_9A, 1)
  loc_10A4BC7: Call 0.Method_arg_24 (var_136, &HFF)
  loc_10A4BD3: For var_13A =  To CInt(var_130): var_12C = var_13A 'Integer
  loc_10A4BEC:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_10A4BF4:   Call 0.Method_arg_20 (var_B4)
  loc_10A4BFC:   Call 0.Method_arg_30 (var_108)
  loc_10A4C42:   If (Ucase(CVar(var_108)) = Ucase("Title")) Then
  loc_10A4C58:     Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_10A4C60:     Call 0.Method_arg_20 (var_B4)
  loc_10A4C68:     Call 0.Method_arg_38 ("'Openning Stock'")
  loc_10A4C74:   End If
  loc_10A4C77: Next var_13A 'Integer
  loc_10A4C95: Call 0.Method_arg_64 (var_A0, CVar(var_88))
  loc_10A4C9D: Call 0.Method_arg_2C (var_D4)
  loc_10A4CAB: Call 0.Method_arg_150 (var_F4)
  loc_10A4CB6: Call 0.Method_arg_50 (var_108)
  loc_10A4CC0: Set var_B4 = Nothing
  loc_10A4CDA: Set var_A0 = MemVar_1F921E4 
  loc_10A4CE6: Proc_6_99_1483714(var_A0, 0, var_108)
  loc_10A4CF1: MemVar_1F921E4 = var_A0
  loc_10A4D04: Set var_88 = Nothing
  loc_10A4D07: Exit Sub
  loc_10A4D08: ' Referenced from: 10A4A80
  loc_10A4D0E: Call 0.Method_arg_50 (var_108, &HFF)
  loc_10A4D23: Proc_183_57_104AA84(var_108, "TopCtrl1_ePrn")
  loc_10A4D2F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E20BC8
  'Data Table: 4C0550
  Dim Me As Recordset15
  loc_E20BAF: Me.Requery -1
  loc_E20BBF: Me.Requery -1
  loc_E20BC4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14B5024
  'Data Table: 4C0550
  Dim var_F8 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_D8 As Variant
  Dim var_138 As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim unk_4C0571 As Connection15
  Dim var_B4 As String
  Dim var_AC As Variant
  Dim var_194 As String
  Dim var_198 As String
  Dim var_AA0 As Double
  Dim var_278 As TextBox
  Dim var_2EC As Variant
  Dim var_310 As Variant
  Dim var_358 As TextBox
  Dim var_4D4 As Variant
  Dim var_4F4 As Variant
  Dim var_56C As Variant
  Dim var_58C As Variant
  Dim var_604 As Variant
  Dim var_624 As Variant
  Dim var_69C As Variant
  Dim var_6BC As Variant
  Dim var_730 As Variant
  Dim var_750 As Variant
  Dim var_7C4 As Variant
  Dim var_7E4 As Variant
  Dim var_85C As Variant
  Dim var_87C As Variant
  Dim var_8F4 As Variant
  Dim var_914 As Variant
  Dim var_9A8 As Variant
  Dim var_9C8 As Variant
  Dim var_1C0 As String
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_29C As Variant
  Dim var_4A4 As Variant
  Dim var_5F4 As Variant
  Dim var_794 As Variant
  Dim var_958 As Variant
  Dim var_A4 As Recordset15
  Dim Me As Recordset15
  loc_14B44C4: On Error Goto loc_14B4FD0
  loc_14B44CB: var_86 = CByte(0) 'Byte
  loc_14B44DA: Set var_A8 = Me.Txt
  loc_14B44E0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_14B44F1: Set var_B0 = var_AC
  loc_14B4509: If (Proc_183_19_E8DAFC(var_B0, "Department") = 0) Then
  loc_14B4513:   Call Txt_GotFocus(CInt(0))
  loc_14B4518:   Exit Sub
  loc_14B4519: End If
  loc_14B453A: var_E8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14B4544: For var_118 = 1 To var_E8: var_9C = var_118 'Variant
  loc_14B454F:   var_D8 = CVar(CLng(var_9C)) 'Long
  loc_14B4557:   var_F8 = CVar(CLng(2)) 'Long
  loc_14B4593:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_14B45BB:     For var_16C = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9E = var_16C 'Integer
  loc_14B45C9:       var_17C = (var_9E = CInt(3))
  loc_14B45D2:       var_D8 = CVar(CLng(var_9C)) 'Long
  loc_14B45F5:       var_138 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14B45FB:       var_148 = Trim(var_138)
  loc_14B4621:       If CBool(CVar(CLng(var_9E)) And (var_148 = vbNullString)) Then
  loc_14B462C:         If (var_9E = CInt(3)) Then
  loc_14B4648:           MsgBox("Item Name is required", 0, var_138, var_148, var_168)
  loc_14B4658:         End If
  loc_14B466C:         Me.FGrid.Row = CVar(CLng(var_9C))
  loc_14B4687:         Me.FGrid.Col = CVar(CLng(var_9E))
  loc_14B4693:         Set var_A8 = Me.FGrid
  loc_14B46B7:         Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_14B46BF:         Exit Sub
  loc_14B46C0:       End If
  loc_14B46C3:     Next var_16C 'Integer
  loc_14B46C8:   End If
  loc_14B46CB: Next var_118 'Variant
  loc_14B46DA: unk_4C0571.BeginTrans var_190
  loc_14B46E3: var_86 = CByte(1) 'Byte
  loc_14B46EB: Set var_A8 = Me.TopCtrl1
  loc_14B46F1: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14B46F9: var_B4 = CStr()
  loc_14B470A: If (var_B4 = "Edit") Then
  loc_14B472B:   Set var_A8 = Me.Txt
  loc_14B4731:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_B4, "Delete From Stock Where Docid='")
  loc_14B4739:   var_C8 = var_AC.Text
  loc_14B4742:   var_194 = -1 & var_B4
  loc_14B4749:   var_198 = var_194 & "'"
  loc_14B4752:   unk_4C0571.Execute var_198, var_B0, 
  loc_14B476C: End If
  loc_14B478D: var_E8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14B4797: For var_1B8 = 1 To var_E8: var_9C = var_1B8 'Variant
  loc_14B47A2:   var_D8 = CVar(CLng(var_9C)) 'Long
  loc_14B47AA:   var_F8 = CVar(CLng(1)) 'Long
  loc_14B47C4:   var_138 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14B47E6:   If CBool(Trim(var_138) <> vbNullString) Then
  loc_14B47F7:     Set var_A8 = Me.Txt
  loc_14B47FD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_198)
  loc_14B4816:     var_AA0 = Val(CStr(var_9C))
  loc_14B4824:     Set var_B0 = Me.Txt
  loc_14B482A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1E0, var_AA0)
  loc_14B4832:     var_C8 = CVar(var_1E0) 'Address
  loc_14B4839:     Proc_6_7_F25D88(var_138, var_C8)
  loc_14B484C:     Set var_274 = Me.Txt
  loc_14B4852:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_278, var_27C)
  loc_14B485A:     var_D8 = var_278.Tag
  loc_14B486C:     var_2EC = CVar(CLng(1)) 'Long
  loc_14B487B:     var_310 = Me.FGrid.TextMatrix)
  loc_14B4895:     Set var_354 = Me.Txt
  loc_14B489B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_358, var_35C, var_310)
  loc_14B48A3:     var_2EC = var_358.Tag
  loc_14B48AB:     Proc_6_104_ED5D18(var_3EC, CVar(CLng(var_9C)))
  loc_14B48B4:     Set var_420 = Me.TopCtrl1
  loc_14B48BA:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AC.Text)
  loc_14B48F6:     var_4D4 = CVar(CLng(var_9C)) 'Long
  loc_14B48FE:     var_4F4 = CVar(CLng(5)) 'Long
  loc_14B4928:     var_56C = CVar(CLng(var_9C)) 'Long
  loc_14B4930:     var_58C = CVar(CLng(5)) 'Long
  loc_14B495A:     var_604 = CVar(CLng(var_9C)) 'Long
  loc_14B4962:     var_624 = CVar(CLng(5)) 'Long
  loc_14B498C:     var_69C = CVar(CLng(var_9C)) 'Long
  loc_14B4994:     var_6BC = CVar(CLng(8)) 'Long
  loc_14B49B4:     var_730 = CVar(CLng(var_9C)) 'Long
  loc_14B49BC:     var_750 = CVar(CLng(6)) 'Long
  loc_14B49DC:     var_7C4 = CVar(CLng(var_9C)) 'Long
  loc_14B49E4:     var_7E4 = CVar(CLng(7)) 'Long
  loc_14B4A0E:     var_85C = CVar(CLng(var_9C)) 'Long
  loc_14B4A16:     var_87C = CVar(CLng(9)) 'Long
  loc_14B4A40:     var_8F4 = CVar(CLng(var_9C)) 'Long
  loc_14B4A48:     var_914 = CVar(CLng(4)) 'Long
  loc_14B4A68:     var_9A8 = CVar(CLng(var_9C)) 'Long
  loc_14B4A70:     var_9C8 = CVar(CLng(&HA)) 'Long
  loc_14B4AA9:     var_B4 = "Insert Into Stock (DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code,GodownCode,Item,DepartCode,U_Name,U_EntDt,U_AE,Specification," & "ChalQty,RecdQty,RejQty,AccQty,Unit,ConvRatio,QtyRec,Rate,RecdUnit,Amount,Logsite_Code) "
  loc_14B4AFD:     var_18C = CVar(var_B4 & "Values(" & "'" & var_198 & "'," & CStr(var_AA0) & "," & CStr(global_136) & ",") & var_138 & ",'" 
  loc_14B4B4F:     var_29C = var_18C & CVar(global_140) & "','" & CVar(global_132) & "','" & CVar(MemVar_1F92070) & "'," & "'" & CVar(var_27C) 
  loc_14B4BA9:     var_4A4 = var_29C & "','" & CVar(CStr(var_310)) & "','" & CVar(var_35C) & "','" & CVar(MemVar_1F920C8) & "'," & var_3EC & ",'" & IIf((CStr(var_430) = "Add"), "A", "E") 
  loc_14B4BDA:     var_5F4 = var_4A4 & "','Opening Stock'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",0," 
  loc_14B4C0D:     var_794 = var_5F4 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14B4C49:     var_958 = var_794 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14B4C90:     unk_4C0571.Execute CStr(var_958 & "'," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(MemVar_1F92078) & "')"), var_A94, -1
  loc_14B4D74:   End If
  loc_14B4D77: Next var_1B8 'Variant
  loc_14B4D81: Set var_A8 = Me.TopCtrl1
  loc_14B4D87: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14B4DA0: If (CStr() = "Add") Then
  loc_14B4DB7:   var_B4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_14B4DDD:   var_138 = CVar(var_B4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_140 & "' And VP.Date_From<=") 'String
  loc_14B4DEB:   Proc_6_7_F25D88(var_C8, MemVar_1F920EC, var_138)
  loc_14B4E0A:   unk_4C0571.Execute CStr(var_18C & var_C8 & " Order By VP.Date_From DESC"), -1, var_A8
  loc_14B4E15:   Set var_A4 = var_A8
  loc_14B4E4B:   If (var_A4.RecordCount > 0) Then
  loc_14B4E7F:     var_1C0 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(global_136) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_14B4E9E:     var_148 = CVar(var_1C0 & MemVar_1F92078 & "') and V_Type='" & global_140 & "' and Date_From=") 'String
  loc_14B4EC7:     Proc_6_7_F25D88(var_138, CVar(var_A4.Fields.Item("Date_From")), var_148)
  loc_14B4ECF:     var_168 = var_18C & var_138 
  loc_14B4EDD:     unk_4C0571.Execute CStr(var_168), -1, var_B0
  loc_14B4F0B:   End If
  loc_14B4F0B: End If
  loc_14B4F11: unk_4C0571.CommitTrans
  loc_14B4F1A: var_86 = CByte(0) 'Byte
  loc_14B4F29: Me.Requery -1
  loc_14B4F39: Me.Requery -1
  loc_14B4F42: Set var_A8 = Me.DGItem
  loc_14B4F57: Set var_A8 = Me.DGDepart
  loc_14B4F6C: Set var_A8 = Me.TopCtrl1
  loc_14B4F72: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(DGDepart.DispID_FFFF)
  loc_14B4F8B: If (CStr(DGItem.DispID_FFFF) = "Add") Then
  loc_14B4F8E:   Call TopCtrl1_UnknownEvent_A()
  loc_14B4F93:   Exit Sub
  loc_14B4F94: End If
  loc_14B4FA9: var_B4 = "INI"
  loc_14B4FB7: Call Proc_131_54_E9C4D8(Proc_5_1_100CB50(var_B4, Me))
  loc_14B4FC2: Call Proc_131_53_146519C(global_68)
  loc_14B4FCC: Set var_A4 = Nothing
  loc_14B4FCF: Exit Sub
  loc_14B4FD0: ' Referenced from: 14B44C4
  loc_14B4FD9: If (CInt(var_86) = 1) Then
  loc_14B4FE2:   unk_4C0571.RollbackTrans
  loc_14B4FE7: End If
  loc_14B4FEF: Set var_A8 = Err()
  loc_14B4FF5: Call 0.Method_arg_2C (var_B4)
  loc_14B500E: MsgBox(CVar(var_B4), &H10, var_138, var_148, var_168)
  loc_14B5021: Exit Sub
End Sub

Private Sub Form_Load() '10A2564
  'Data Table: 4C0550
  Dim var_88 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  loc_10A2290: On Error Goto loc_10A255B
  loc_10A22A2: Me.LblUser.Left = CDbl(13500)
  loc_10A22B9: Me.LblUser.Top = CDbl(7800)
  loc_10A22D0: Me.LblLDt.Top = CDbl(8160)
  loc_10A22E7: Me.LblLDt.Left = CDbl(13500)
  loc_10A22F6: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10A230E: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_10A2320: Set var_88 = Me.TopCtrl1
  loc_10A2326: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_10A2334: Call 0.Method_arg_50 (var_AC)
  loc_10A2344: Set var_88 = Me.TopCtrl1
  loc_10A234A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_10A2371: Me.TopCtrl1.CursorLocation = 3
  loc_10A2394: var_AC = "SELECT ItemMast.Code, ItemMast.Name, ItemMast.Unit,Itemmast.IssueUnit,ItemMAst.ConvRatio,ItemMast.PurchRate FROM ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_10A23A5: Me.Open CVar(var_AC & "' or LOGSITE_CODE='HO') and ItemType IN ('Store') And ItemMast.ActiveYN<>'No' Order by ItemMast.Name"), CVar(MemVar_1F92044), 2
  loc_10A23B9: CVarUnk
  loc_10A23BE: VerifyVarObj
  loc_10A23C4: Set var_88 = Me.DGItem
  loc_10A23CA: LateIdStAd
  loc_10A23F4: Me.DGItem.CursorLocation = 3
  loc_10A241E: var_BC = CVar("Select Code,Name From GodownMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10A243C: CVarUnk
  loc_10A2441: VerifyVarObj
  loc_10A2447: Set var_88 = Me.DGDepart
  loc_10A244D: LateIdStAd
  loc_10A2477: Me.DGDepart.CursorLocation = 3
  loc_10A249A: var_AC = "Select Distinct DocId as SearchCode,VType,Vno,vPrefix,Site_Code,LogSite_Code From Stock  where (LOGSITE_CODE='" & MemVar_1F92078
  loc_10A24AB: r_BC, CVar(MemVar_1F92044), 2 CVar(var_AC & "' or LOGSITE_CODE='HO') and VType='STOP' Order by VNO"), CVar(MemVar_1F92044), 2
  loc_10A24D9: Call Proc_131_54_E9C4D8(Proc_5_1_100CB50("INI", Me, New, 3, -1, Me, New), 3, -1, Me)
  loc_10A24E4: Call Proc_131_49_127BAF4(New, 3)
  loc_10A24E9: Call Proc_131_53_146519C(-1)
  loc_10A2501: Me.FGrid.Left = CVar(CDbl(500))
  loc_10A251C: Me.FGrid.Width = CVar(CDbl(12000))
  loc_10A2537: Me.FGrid.Top = CVar(CDbl(1850))
  loc_10A2552: Me.FGrid.Height = CVar(CDbl(6320))
  loc_10A255A: Exit Sub
  loc_10A255B: ' Referenced from: 10A2290
  loc_10A255B: Proc_6_60_E62BC4()
  loc_10A2560: Exit Sub
End Sub

Private Sub Form_Resize() 'ED63B8
  'Data Table: 4C0550
  Dim var_8C As Label
  loc_ED6316: Call 0.Method_arg_50 (var_88)
  loc_ED6328: Me.LblFormCaption.Caption = var_88
  loc_ED6341: Me.LblFormCaption.Left = CDbl(0)
  loc_ED634D: Set var_A0 = Me.TopCtrl1
  loc_ED6353: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED6360: Set var_8C = Me.TopCtrl1
  loc_ED6366: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED6380: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED639B: Call 0.Method_arg_100 (var_B8)
  loc_ED63AD: Me.LblFormCaption.Width = var_B8
  loc_ED63B5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E568DC
  'Data Table: 4C0550
  loc_E568A7: Set global_76 = Nothing
  loc_E568B9: Set global_68 = Nothing
  loc_E568CB: Set global_72 = Nothing
  loc_E568D7: MasterFormExit = 0
  loc_E568DA: Exit Sub
End Sub

Private Sub Form_Activate() 'E46D08
  'Data Table: 4C0550
  loc_E46CD8: On Error Goto loc_E46D02
  loc_E46CDF: Set var_88 = Me.TopCtrl1
  loc_E46CE5: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E46CFA: If (CLng(CInt()) = &H2D) Then
  loc_E46CFD:   Call TopCtrl1_UnknownEvent_15()
  loc_E46D02:   ' Referenced from: E46CD8
  loc_E46D02: End If
  loc_E46D02: Proc_6_60_E62BC4()
  loc_E46D07: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26A3C
  'Data Table: 4C0550
  loc_E26A21: If (MasterFormExit = &HFF) Then
  loc_E26A31:   Me.Global.Unload Me
  loc_E26A39: End If
  loc_E26A39: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2AAE4
  'Data Table: 4C0550
  loc_E2AABC: On Error Goto loc_E2AADC
  loc_E2AAD3: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2AADB: Exit Sub
  loc_E2AADC: ' Referenced from: E2AABC
  loc_E2AADC: Proc_6_60_E62BC4(Shift)
  loc_E2AAE1: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E6327C
  'Data Table: 4C0550
  loc_E6324C: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_E6324F:   Call DGDepart_UnknownEvent_9()
  loc_E63254: End If
  loc_E63270: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E63273:   Call DGItem_UnknownEvent_9()
  loc_E63278: End If
  loc_E63278: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F4C8C4
  'Data Table: 4C0550
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4C7BB: Me.DGDepart.Visible = False
  loc_F4C7DA: If (Me.RecordCount > 0) Then
  loc_F4C819:   Set var_B4 = Me.Txt
  loc_F4C81F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4C827:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4C85A:   var_B0 = Me.Fields.Item("Code")
  loc_F4C879:   Set var_B4 = Me.Txt
  loc_F4C87F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4C887:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4C89D: End If
  loc_F4C8A8: Set var_A8 = Me.Txt
  loc_F4C8AE: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(0))
  loc_F4C8B6: var_B0.SetFocus
  loc_F4C8C2: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_1F 'E73638
  'Data Table: 4C0550
  loc_E735F6: Proc_6_153_E91194(Me.DGDepart, arg_14)
  loc_E7360D: Set var_8C = Me.FGPoint
  loc_E73629: Proc_6_138_106D6F8(Me.DGDepart, global_76, CInt(0))
  loc_E73637: Exit Sub
End Sub

Public Function MasterFormExitGet() '4C1440
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4C144F
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E972A0
  'Data Table: 4C0550
  Dim Me As Recordset15
  loc_E9722E: On Error Goto loc_E97297
  loc_E97237: Me.MoveFirst
  loc_E97261: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97289: Proc_5_0_110649C(&HFF, Me, global_68)
  loc_E97291: Call Proc_131_53_146519C(0)
  loc_E97296: Exit Sub
  loc_E97297: ' Referenced from: E9722E
  loc_E97297: Proc_6_60_E62BC4(var_A0)
  loc_E9729C: Exit Sub
End Sub

Public Sub Proc_131_49_127BAF4
  'Data Table: 4C0550
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_127B53C: On Error Goto loc_127BAEE
  loc_127B54D: Set var_88 = Me.Txt
  loc_127B553: Call 0.Method_Proc_131_49_127BAF40 (CInt(0), var_8C)
  loc_127B572: Me.DGDepart.Left = CVar(var_8C.Left)
  loc_127B58E: Set var_B4 = Me.Txt
  loc_127B594: Call 0.Method_Proc_131_49_127BAF40 (CInt(0), var_B8)
  loc_127B5AF: Set var_88 = Me.Txt
  loc_127B5B5: Call 0.Method_Proc_131_49_127BAF40 (CInt(0), var_8C)
  loc_127B5BD: var_90 = var_8C.Top
  loc_127B5CD: var_A0 = CVar(((var_90 + var_B8.Height) + CDbl(&H19))) 'Single
  loc_127B5DC: Me.DGDepart.Top = CVar(var_8C.Left)
  loc_127B5F4: Call 0.Method_Me8 (var_90)
  loc_127B600: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_127B60F: Me.FGrid.Height = CVar(var_8C.Left)
  loc_127B623: Set var_88 = Me.TxtGrid
  loc_127B629: Call 0.Method_Proc_131_49_127BAF40 (0, var_8C)
  loc_127B648: Me.DGItem.Left = CVar(var_8C.Left)
  loc_127B662: Set var_B4 = Me.TxtGrid
  loc_127B668: Call 0.Method_Proc_131_49_127BAF40 (0, var_B8)
  loc_127B681: Set var_88 = Me.TxtGrid
  loc_127B687: Call 0.Method_Proc_131_49_127BAF40 (0, var_8C)
  loc_127B69B: var_A0 = CVar((var_8C.Top + var_B8.Height)) 'Single
  loc_127B6AA: Me.DGItem.Top = CVar(var_8C.Left)
  loc_127B6C0: Set var_C4 = Me.FGrid
  loc_127B6CF: var_C4.Cols = &HB
  loc_127B6E0: var_C4.Rows = 1
  loc_127B6F9: global_56 = CStr(CLng(var_C4.BackColor))
  loc_127B706: var_A0 = CVar(CLng(0)) 'Long
  loc_127B70B: var_E8 = &H226
  loc_127B717: LateIdCallSt
  loc_127B71F: var_A0 = 0
  loc_127B72B: var_E8 = CVar(CLng(0)) 'Long
  loc_127B730: var_108 = "S.No"
  loc_127B739: LateIdCallSt
  loc_127B744: var_A0 = CVar(CLng(1)) 'Long
  loc_127B749: var_E8 = 0
  loc_127B755: LateIdCallSt
  loc_127B760: var_A0 = CVar(CLng(2)) 'Long
  loc_127B765: var_E8 = 0
  loc_127B771: LateIdCallSt
  loc_127B779: var_A0 = 0
  loc_127B785: var_E8 = CVar(CLng(2)) 'Long
  loc_127B78A: var_108 = "Date"
  loc_127B793: LateIdCallSt
  loc_127B79E: var_A0 = CVar(CLng(2)) 'Long
  loc_127B7A9: var_E8 = CVar(CInt(1)) 'Integer
  loc_127B7B0: LateIdCallSt
  loc_127B7BB: var_A0 = CVar(CLng(3)) 'Long
  loc_127B7C0: var_E8 = &HE10
  loc_127B7CC: LateIdCallSt
  loc_127B7D7: var_A0 = CVar(CLng(3)) 'Long
  loc_127B7E2: var_E8 = CVar(CInt(1)) 'Integer
  loc_127B7E9: LateIdCallSt
  loc_127B7F1: var_A0 = 0
  loc_127B7FD: var_E8 = CVar(CLng(3)) 'Long
  loc_127B802: var_108 = "Item Name"
  loc_127B80B: LateIdCallSt
  loc_127B816: var_A0 = CVar(CLng(4)) 'Long
  loc_127B81B: var_E8 = &H3B6
  loc_127B827: LateIdCallSt
  loc_127B82F: var_A0 = 0
  loc_127B83B: var_E8 = CVar(CLng(4)) 'Long
  loc_127B840: var_108 = "Unit"
  loc_127B849: LateIdCallSt
  loc_127B854: var_A0 = CVar(CLng(4)) 'Long
  loc_127B85F: var_E8 = CVar(CInt(1)) 'Integer
  loc_127B866: LateIdCallSt
  loc_127B871: var_A0 = CVar(CLng(9)) 'Long
  loc_127B876: var_E8 = &H3E8
  loc_127B882: LateIdCallSt
  loc_127B88A: var_A0 = 0
  loc_127B896: var_E8 = CVar(CLng(9)) 'Long
  loc_127B89B: var_108 = "Rate"
  loc_127B8A4: LateIdCallSt
  loc_127B8AF: var_A0 = CVar(CLng(9)) 'Long
  loc_127B8BA: var_E8 = CVar(CInt(7)) 'Integer
  loc_127B8C1: LateIdCallSt
  loc_127B8C9: var_A0 = 0
  loc_127B8D5: var_E8 = CVar(CLng(5)) 'Long
  loc_127B8DA: var_108 = "Qty"
  loc_127B8E3: LateIdCallSt
  loc_127B8EE: var_A0 = CVar(CLng(5)) 'Long
  loc_127B8F9: var_E8 = CVar(CInt(7)) 'Integer
  loc_127B900: LateIdCallSt
  loc_127B90B: var_A0 = CVar(CLng(5)) 'Long
  loc_127B916: var_E8 = CVar(CInt(7)) 'Integer
  loc_127B91D: LateIdCallSt
  loc_127B928: var_A0 = CVar(CLng(5)) 'Long
  loc_127B92D: var_E8 = &H3B6
  loc_127B939: LateIdCallSt
  loc_127B941: var_A0 = 0
  loc_127B94D: var_E8 = CVar(CLng(6)) 'Long
  loc_127B952: var_108 = "Con.Ratio"
  loc_127B95B: LateIdCallSt
  loc_127B966: var_A0 = CVar(CLng(6)) 'Long
  loc_127B971: var_E8 = CVar(CInt(7)) 'Integer
  loc_127B978: LateIdCallSt
  loc_127B983: var_A0 = CVar(CLng(6)) 'Long
  loc_127B98E: var_E8 = CVar(CInt(7)) 'Integer
  loc_127B995: LateIdCallSt
  loc_127B9A0: var_A0 = CVar(CLng(6)) 'Long
  loc_127B9A5: var_E8 = &H47E
  loc_127B9B1: LateIdCallSt
  loc_127B9B9: var_A0 = 0
  loc_127B9C5: var_E8 = CVar(CLng(7)) 'Long
  loc_127B9CA: var_108 = "Wt Qty"
  loc_127B9D3: LateIdCallSt
  loc_127B9DE: var_A0 = CVar(CLng(7)) 'Long
  loc_127B9E9: var_E8 = CVar(CInt(7)) 'Integer
  loc_127B9F0: LateIdCallSt
  loc_127B9FB: var_A0 = CVar(CLng(7)) 'Long
  loc_127BA06: var_E8 = CVar(CInt(7)) 'Integer
  loc_127BA0D: LateIdCallSt
  loc_127BA18: var_A0 = CVar(CLng(7)) 'Long
  loc_127BA1D: var_E8 = &H3B6
  loc_127BA29: LateIdCallSt
  loc_127BA31: var_A0 = 0
  loc_127BA3D: var_E8 = CVar(CLng(8)) 'Long
  loc_127BA42: var_108 = "Wt.Unit"
  loc_127BA4B: LateIdCallSt
  loc_127BA56: var_A0 = CVar(CLng(8)) 'Long
  loc_127BA61: var_E8 = CVar(CInt(1)) 'Integer
  loc_127BA68: LateIdCallSt
  loc_127BA73: var_A0 = CVar(CLng(8)) 'Long
  loc_127BA78: var_E8 = &H3B6
  loc_127BA84: LateIdCallSt
  loc_127BA8F: var_A0 = CVar(CLng(&HA)) 'Long
  loc_127BA94: var_E8 = &H5C3
  loc_127BAA0: LateIdCallSt
  loc_127BAA8: var_A0 = 0
  loc_127BAB4: var_E8 = CVar(CLng(&HA)) 'Long
  loc_127BAB9: var_108 = "Stock Value"
  loc_127BAC2: LateIdCallSt
  loc_127BACD: var_A0 = CVar(CLng(&HA)) 'Long
  loc_127BAD8: var_E8 = CVar(CInt(7)) 'Integer
  loc_127BADF: LateIdCallSt
  loc_127BAE9: Set var_C4 = Nothing 
  loc_127BAED: Exit Sub
  loc_127BAEE: ' Referenced from: 127B53C
  loc_127BAEE: Proc_6_60_E62BC4(var_C4, var_E8, var_A0, var_C4, var_108, var_E8, var_A0, var_C4)
  loc_127BAF3: Exit Sub
End Sub

Public Sub Proc_131_50_E3F744
  'Data Table: 4C0550
  loc_E3F720: Set var_88 = Me.TopCtrl1
  loc_E3F726: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E3F73F: If (CStr() = "Browse") Then
  loc_E3F742:   Exit Sub
  loc_E3F743: End If
  loc_E3F743: Exit Sub
End Sub

Public Sub Proc_131_51_14525B8(arg_C) '14525B8
  'Data Table: 4C0550
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_B0 As String
  Dim var_124 As Variant
  Dim var_188 As Double
  Dim var_138 As MSHFlexGrid
  Dim var_16C As Variant
  Dim var_180 As MSHFlexGrid
  Dim var_258 As Double
  loc_1451A7F: var_A0 = CLng(Me.FGrid.Col)
  loc_1451A8F: If (var_A0 = CLng(3)) Then
  loc_1451AB2:   var_A6 = Me.EOF
  loc_1451AE0:   Set var_8C = Me.TxtGrid
  loc_1451AE6:   Call 0.Method_Proc_131_51_14525B80 (arg_C, var_AC, var_B0)
  loc_1451AEE:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_1451B06:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_1451B1C:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1451B24:     var_E0 = CVar(CLng(2)) 'Long
  loc_1451B29:     var_100 = vbNullString
  loc_1451B33:     Set var_AC = Me.FGrid
  loc_1451B39:     LateIdCallSt
  loc_1451B5E:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1451B66:     var_E0 = CVar(CLng(1)) 'Long
  loc_1451B6B:     var_100 = vbNullString
  loc_1451B75:     Set var_AC = Me.FGrid
  loc_1451B7B:     LateIdCallSt
  loc_1451BA0:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1451BA8:     var_E0 = CVar(CLng(9)) 'Long
  loc_1451BAD:     var_100 = vbNullString
  loc_1451BB7:     Set var_AC = Me.FGrid
  loc_1451BBD:     LateIdCallSt
  loc_1451BD2:   Else
  loc_1451BDC:     Set var_8C = Me.TxtGrid
  loc_1451BE2:     Call 0.Method_Proc_131_51_14525B80 (arg_C, var_AC, var_AC, var_100, var_E0, var_C0, var_AC)
  loc_1451C0B:     If (Proc_6_27_EA565C(var_AC, "Name", var_100, var_E0, var_C0) = 0) Then
  loc_1451C18:       Set var_8C = Me.TxtGrid
  loc_1451C1E:       Call 0.Method_Proc_131_51_14525B80 (arg_C, var_AC, var_AC)
  loc_1451C26:       var_AC.SetFocus
  loc_1451C37:       Proc_131_51_14525B8 = 0
  loc_1451C3D:     End If
  loc_1451C5A:     var_AC = Me.Fields.Item("Code")
  loc_1451C8D:     Call Proc_131_58_1047AA0(CStr(var_AC.Value), CLng(Me.FGrid.Row), var_A6, Me.FGrid.Row)
  loc_1451CAB:     If (var_A6 = 0) Then
  loc_1451CB8:       Set var_8C = Me.TxtGrid
  loc_1451CBE:       Call 0.Method_Proc_131_51_14525B80 (arg_C, var_AC, var_100)
  loc_1451CC6:       var_AC.SetFocus
  loc_1451CD7:       Proc_131_51_14525B8 = 0
  loc_1451CDD:     End If
  loc_1451D22:     var_124 = Me.Fields.Item("Name").Value
  loc_1451D39:     LateIdCallSt
  loc_1451D89:     global_64 = CStr(Me.Fields.Item("Unit").Value)
  loc_1451DC3:     Proc_6_39_E7C810(var_124, CVar(Me.Fields.Item("PurchRate")), Me.FGrid, CVar(CStr(var_124)))
  loc_1451DCF:     global_108 = CSng(var_124)
  loc_1451E07:     var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("IssueUnit")), global_108, CVar(CLng(3)))) 'String
  loc_1451E1C:     global_116 = CStr(Trim(var_124))
  loc_1451E58:     Proc_6_39_E7C810(var_124, CVar(Me.Fields.Item("ConvRatio")), CVar(CLng(Me.FGrid.Row)))
  loc_1451E84:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1451E8C:     var_F0 = CVar(CLng(1)) 'Long
  loc_1451EBF:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1451EC7:     Set var_138 = Me.FGrid
  loc_1451ECD:     LateIdCallSt
  loc_1451EFC:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1451F04:     var_E0 = CVar(CLng(4)) 'Long
  loc_1451F17:     Set var_AC = Me.FGrid
  loc_1451F1D:     LateIdCallSt
  loc_1451F42:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1451F4A:     var_E0 = CVar(CLng(6)) 'Long
  loc_1451F57:     var_124 = CVar(CStr(CSng(var_124))) 'String
  loc_1451F5F:     Set var_AC = Me.FGrid
  loc_1451F65:     LateIdCallSt
  loc_1451F8E:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1451F96:     var_E0 = CVar(CLng(8)) 'Long
  loc_1451FA9:     Set var_AC = Me.FGrid
  loc_1451FAF:     LateIdCallSt
  loc_1451FD4:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1451FDC:     var_E0 = CVar(CLng(9)) 'Long
  loc_1451FE9:     var_124 = CVar(CStr(global_108)) 'String
  loc_1451FF1:     Set var_AC = Me.FGrid
  loc_1451FF7:     LateIdCallSt
  loc_145200D:   End If
  loc_1452026:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_145202B:   var_E0 = 1
  loc_1452049:   var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_1452062:   If (var_B0 <> vbNullString) Then
  loc_145207A:     var_124 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1452082:     Set var_AC = Me.FGrid
  loc_145209E:   End If
  loc_14520A1: Else
  loc_14520A8:   If (var_A0 = CLng(2)) Then
  loc_14520BE:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14520D7:     Set var_8C = Me.TxtGrid
  loc_14520DD:     Call 0.Method_Proc_131_51_14525B80 (0, var_AC, var_B0, CVar(CLng(2)), var_C0, FGrid.DispID_10000, var_124)
  loc_14520E5:     var_E0 = var_AC.Text
  loc_14520F6:     var_124 = CVar(Proc_6_34_14ECF20(var_B0, var_C0, var_AC, var_124)) 'String
  loc_14520FE:     Set var_138 = Me.FGrid
  loc_1452104:     LateIdCallSt
  loc_1452124:   Else
  loc_145212B:     If (var_A0 = CLng(9)) Then
  loc_1452138:       Set var_8C = Me.TxtGrid
  loc_145213E:       Call 0.Method_Proc_131_51_14525B80 (arg_C, var_AC, var_138, var_124)
  loc_1452156:       If Not(IsNumeric(CVar(var_AC))) Then
  loc_145215D:         var_B0 = CStr(0)
  loc_145216A:         Set var_8C = Me.TxtGrid
  loc_1452170:         Call 0.Method_Proc_131_51_14525B80 (arg_C, var_AC, var_B0)
  loc_1452178:         var_AC.Text = var_E0
  loc_1452187:       End If
  loc_1452194:       Set var_8C = Me.TxtGrid
  loc_145219A:       Call 0.Method_Proc_131_51_14525B80 (arg_C, var_AC, var_B0)
  loc_14521A2:       var_C0 = var_AC.Text
  loc_14521C5:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14521DD:       var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1452218:       LateIdCallSt
  loc_145223F:       Call Proc_131_57_1141BC8(Me.FGrid, CVar(CStr(Format(CVar(Val(var_B0)), "0.00000"))), 1, 1)
  loc_1452247:     Else
  loc_145224E:       If (var_A0 = CLng(&HA)) Then
  loc_145225B:         Set var_8C = Me.TxtGrid
  loc_1452261:         Call 0.Method_Proc_131_51_14525B80 (arg_C, var_AC, var_100)
  loc_1452279:         If Not(IsNumeric(CVar(var_AC))) Then
  loc_1452280:           var_B0 = CStr(0)
  loc_145228D:           Set var_8C = Me.TxtGrid
  loc_1452293:           Call 0.Method_Proc_131_51_14525B80 (arg_C, var_AC, var_B0)
  loc_145229B:           var_AC.Text = var_E0
  loc_14522AA:         End If
  loc_14522B7:         Set var_8C = Me.TxtGrid
  loc_14522BD:         Call 0.Method_Proc_131_51_14525B80 (arg_C, var_AC, var_B0)
  loc_14522C5:         var_188 = var_AC.Text
  loc_14522E8:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1452300:         var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_145232D:         var_16C = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_1452335:         Set var_180 = Me.FGrid
  loc_145233B:         LateIdCallSt
  loc_1452375:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_145237E:         Set var_AC = Me.FGrid
  loc_145238D:         var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_14523AF:         var_188 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14523C5:         var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14523D6:         Set var_180 = Me.FGrid
  loc_14523EF:         var_258 = Val(CStr(var_180.TextMatrix)))
  loc_145244C:         LateIdCallSt
  loc_1452483:         Call Proc_131_57_1141BC8(Me.FGrid, CVar(CStr(Format(CVar((var_188 / var_258)), "0.00000"))), 1, 1, CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)), var_258, CVar(CLng(5)))
  loc_145248B:       Else
  loc_1452492:         If Not (var_A0 = CLng(5)) Then
  loc_145249C:           If (var_A0 = CLng(6)) Then
  loc_145249F:           End If
  loc_14524A9:           Set var_8C = Me.TxtGrid
  loc_14524AF:           Call 0.Method_Proc_131_51_14525B80 (arg_C, var_AC, var_100, var_188, var_E0)
  loc_14524C7:           If Not(IsNumeric(CVar(var_AC))) Then
  loc_14524CE:             var_B0 = CStr(0)
  loc_14524DB:             Set var_8C = Me.TxtGrid
  loc_14524E1:             Call 0.Method_Proc_131_51_14525B80 (arg_C, var_AC, var_B0, var_C0)
  loc_14524E9:             var_AC.Text = var_180
  loc_14524F8:           End If
  loc_1452504:           Set var_8C = Me.TxtGrid
  loc_145250A:           Call 0.Method_Proc_131_51_14525B80 (0, var_AC, var_B0)
  loc_1452512:           var_16C = var_AC.Text
  loc_145252A:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1452542:           var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_145257C:           LateIdCallSt
  loc_14525A0:           Call Proc_131_57_1141BC8(Me.FGrid, CVar(CStr(Format(CVar(var_B0), "0.000"))), 1, 1)
  loc_14525A5:         End If
  loc_14525A5:       End If
  loc_14525A5:     End If
  loc_14525A5:   End If
  loc_14525A5: End If
  loc_14525A5: Call Proc_131_57_1141BC8(var_F0, var_D0)
  loc_14525AF: Proc_131_51_14525B8 = &HFF
End Sub

Public Sub Proc_131_52_F32898
  'Data Table: 4C0550
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F32786: global_80 = vbNullString
  loc_F32798: Set var_8C = Me.Txt
  loc_F3279E: Call 0.Method_Proc_131_52_F32898C (var_8E, var_86)
  loc_F327AE: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F327C4:   Set var_8C = Me.Txt
  loc_F327CA:   Call 0.Method_Proc_131_52_F328980 (CInt(var_86), var_98)
  loc_F327D2:   var_98.Text = vbNullString
  loc_F327EE:   Set var_8C = Me.Txt
  loc_F327F4:   Call 0.Method_Proc_131_52_F328980 (CInt(var_86), var_98)
  loc_F327FC:   var_98.Tag = vbNullString
  loc_F3280B: Next var_92 'Byte
  loc_F3281E: Me.lbltotal.Caption = vbNullString
  loc_F32839: Me.FGrid.Rows = 1
  loc_F32856: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F3285E: Set var_98 = Me.FGrid
  loc_F3288D: Me.FGrid.FixedRows = 1
  loc_F32895: Exit Sub
End Sub

Public Sub Proc_131_53_146519C
  'Data Table: 4C0550
  Dim Me As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Variant
  Dim var_D0 As TextBox
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim unk_4C0571 As Connection15
  Dim var_88 As Recordset15
  Dim var_CC As Fields15
  Dim var_144 As Variant
  Dim var_120 As Variant
  Dim var_8C As Integer
  Dim var_154 As Variant
  Dim var_130 As Variant
  loc_1464604: On Error Goto loc_1465194
  loc_146461E: If (Me.RecordCount > 0) Then
  loc_1464621:   Call Proc_131_52_F32898()
  loc_146465A:   global_140 = CStr(Me.Fields.Item("vType").Value)
  loc_14646DD:   global_132 = CStr(Me.Fields.Item("vPrefix").Value)
  loc_1464730:   Call 0.Method_Proc_131_53_146519C0 (CInt(1), var_D0)
  loc_1464738:   var_D0.Text = CStr(Me.Fields.Item("SearchCode").Value)
  loc_146475B:   var_E0 = "SELECT Stock.Vdate,Stock.Sno,Stock.U_Name,Stock.U_AE,Stock.U_EntDt,Stock.Item,Stock.QtyRec,Stock.Unit,Stock.Rate,Stock.Amount,Stock.DepartCode,Stock.GodownCode,Stock.RecdQty,Stock.AccQty,Stock.RecdUnit,Stock.ConvRatio,ItemMast.Name as ItemName,ItemMast.IssueUnit, GodownMast.Name as GodownName ,Stock.GodownCode FROM (Stock INNER JOIN ItemMast ON Stock.Item = ItemMast.Code And ItemMast.ItemType='Store') INNER JOIN GodownMast ON Stock.GodownCode = GodownMast.Code where Stock.Docid='"
  loc_146478D:   var_F0 = var_E0 & Me.Fields.Item("SearchCode").Value 
  loc_14647A4:   unk_4C0571.Execute CStr(var_F0 & "' ORDER BY ItemMast.Name"), var_130, -1
  loc_14647AF:   Set var_88 = Me.Txt
  loc_1464808:   Call 0.Method_Proc_131_53_146519C0 (CInt(0), var_D0, CStr(var_88.Fields.Item("Godowncode").Value))
  loc_1464810:   var_D0.Tag = Me.Txt
  loc_146485C:   Set var_CC = Me.Txt
  loc_1464862:   Call 0.Method_Proc_131_53_146519C0 (CInt(0), var_D0)
  loc_146486A:   var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GodownName")))
  loc_14648B7:   Set var_CC = Me.Txt
  loc_14648BD:   Call 0.Method_Proc_131_53_146519C0 (CInt(2), var_D0)
  loc_14648C5:   var_D0.Text = CStr(var_88.Fields.Item("VDate").Value)
  loc_1464909:   global_64 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RecdUnit")))
  loc_1464944:   global_116 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("IssueUnit")))
  loc_1464977:   Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("ConvRatio")))
  loc_1464A33:   var_194 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), CSng(CVar(var_88.Fields.Item("U_AE")))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1464A78:   Me.LblUser.Caption = CStr(CInt(Me.Fields.Item("VNo").Value) & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_194)))
  loc_1464B53:   var_194 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_1464B98:   Me.LblLDt.Caption = CStr(var_194 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1464BE4:   If (var_88.RecordCount > 0) Then
  loc_1464BE9:     var_8C = 1
  loc_1464BFF:     Me.FGrid.Rows = 1
  loc_1464C07:     ' Referenced from: 14650EB
  loc_1464C16:     If Not(var_88.EOF) Then
  loc_1464C19:       var_B0 = vbNullString
  loc_1464C23:       Set var_A0 = Me.FGrid
  loc_1464C38:       Set var_1F4 = Me.FGrid
  loc_1464C3F:       var_E0 = CVar(CLng(var_8C)) 'Long
  loc_1464C47:       var_120 = CVar(CLng(0)) 'Long
  loc_1464C77:       var_F0 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1464C7E:       LateIdCallSt
  loc_1464CCD:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Item")), CVar(CLng(1)), CVar(CLng(var_8C)), var_1F4, var_F0)) 'String
  loc_1464CD4:       LateIdCallSt
  loc_1464D1F:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VDate")), CVar(CLng(2)), CVar(CLng(var_8C)), var_1F4, var_F0)) 'String
  loc_1464D26:       LateIdCallSt
  loc_1464D71:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("IssueUnit")), CVar(CLng(4)), CVar(CLng(var_8C)), var_1F4, var_F0)) 'String
  loc_1464D78:       LateIdCallSt
  loc_1464D96:       var_120 = CVar(CLng(3)) 'Long
  loc_1464DC3:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), var_120, CVar(CLng(var_8C)), var_1F4, var_F0)) 'String
  loc_1464DCA:       LateIdCallSt
  loc_1464E02:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("Amount")), var_1F4, var_F0, var_120)
  loc_1464E0B:       var_100 = CVar(CLng(var_8C)) 'Long
  loc_1464E13:       var_144 = CVar(CLng(&HA)) 'Long
  loc_1464E43:       LateIdCallSt
  loc_1464E81:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("Rate")), var_1F4, CVar(CStr(Format(var_F0, "0.00"))), 1, 1)
  loc_1464E8A:       var_100 = CVar(CLng(var_8C)) 'Long
  loc_1464E92:       var_144 = CVar(CLng(9)) 'Long
  loc_1464EBB:       var_154 = CVar(CStr(Format(var_F0, "0.00000"))) 'String
  loc_1464EC2:       LateIdCallSt
  loc_1464EFA:       var_100 = CVar(CLng(var_8C)) 'Long
  loc_1464F02:       var_144 = CVar(CLng(6)) 'Long
  loc_1464F2F:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("ConvRatio")), "0.000"))) 'String
  loc_1464F36:       LateIdCallSt
  loc_1464F6C:       var_100 = CVar(CLng(var_8C)) 'Long
  loc_1464F74:       var_144 = CVar(CLng(7)) 'Long
  loc_1464FA1:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyRec")), "0.000"))) 'String
  loc_1464FA8:       LateIdCallSt
  loc_1464FDE:       var_100 = CVar(CLng(var_8C)) 'Long
  loc_1465013:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("RecdQty")), "0.000"))) 'String
  loc_146501A:       LateIdCallSt
  loc_1465069:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8C)), var_1F4, var_130, 1, 1)) 'String
  loc_1465070:       LateIdCallSt
  loc_14650BB:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RecdUnit")), CVar(CLng(4)), CVar(CLng(var_8C)), var_1F4, var_F0, CVar(CLng(5)))) 'String
  loc_14650C2:       LateIdCallSt
  loc_14650D6:       Set var_1F4 = Nothing 
  loc_14650E0:       var_8C = (var_8C + 1)
  loc_14650E6:       var_88.MoveNext
  loc_14650EB:       GoTo loc_1464C07
  loc_14650EE:     End If
  loc_14650EE:   End If
  loc_14650EE:   var_B0 = 0
  loc_14650F8:   Set var_A0 = Me.FGrid
  loc_1465125:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1465128:     var_B0 = "1"
  loc_1465132:     Set var_A0 = Me.FGrid
  loc_1465143:   End If
  loc_1465143:   var_B0 = 1
  loc_1465156:   Me.FGrid.FixedRows = var_B0
  loc_146515E:   Call Proc_131_57_1141BC8(FGrid.DispID_10000, var_B0, FGrid.DispID_2E, var_B0, var_8C, var_1F4)
  loc_1465166: Else
  loc_1465166:   Call Proc_131_52_F32898(var_F0, var_100, var_1F4)
  loc_146516B: End If
  loc_146517E: Me.FGrid.Col = 1
  loc_1465186: Call Proc_131_55_EBB670(var_130, 1)
  loc_1465190: Set var_88 = Nothing
  loc_1465193: Exit Sub
  loc_1465194: ' Referenced from: 1464604
  loc_1465194: Proc_6_60_E62BC4(1)
  loc_1465199: Exit Sub
End Sub

Public Sub Proc_131_54_E9C4D8(arg_C) 'E9C4D8
  'Data Table: 4C0550
  Dim var_98 As TextBox
  loc_E9C45E: Set var_8C = Me.Txt
  loc_E9C464: Call 0.Method_Proc_131_54_E9C4D8C (var_8E, var_86)
  loc_E9C474: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9C48A:   Set var_8C = Me.Txt
  loc_E9C490:   Call 0.Method_Proc_131_54_E9C4D80 (CInt(var_86), var_98)
  loc_E9C498:   var_98.Enabled = arg_C
  loc_E9C4A7: Next var_92 'Byte
  loc_E9C4BA: Set var_8C = Me.Txt
  loc_E9C4C0: Call 0.Method_Proc_131_54_E9C4D80 (CInt(1), var_98)
  loc_E9C4C8: var_98.Enabled = False
  loc_E9C4D4: Exit Sub
End Sub

Public Sub Proc_131_55_EBB670
  'Data Table: 4C0550
  loc_EBB5E8: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EBB5FA:   Me.DGItem.Visible = False
  loc_EBB602: End If
  loc_EBB61E: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EBB630:   Me.DGDepart.Visible = False
  loc_EBB638: End If
  loc_EBB654: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBB666:   Me.FGPoint.Visible = False
  loc_EBB66E: End If
  loc_EBB66E: Exit Sub
End Sub

Public Sub Proc_131_56_E8F780(arg_C) 'E8F780
  'Data Table: 4C0550
  Dim var_10C As TextBox
  loc_E8F714: Call Proc_131_55_EBB670()
  loc_E8F750: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8F753:   Call TopCtrl1_UnknownEvent_16()
  loc_E8F75B: Else
  loc_E8F765:   Set var_108 = Me.Txt
  loc_E8F76B:   Call 0.Method_Proc_131_56_E8F7800 (arg_C)
  loc_E8F773:   var_10C.SetFocus
  loc_E8F77F: End If
  loc_E8F77F: Exit Sub
End Sub

Public Sub Proc_131_57_1141BC8
  'Data Table: 4C0550
  Dim var_90 As Double
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_130 As MSHFlexGrid
  Dim var_140 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_1E4 As Variant
  Dim var_1F8 As MSHFlexGrid
  Dim var_240 As Variant
  loc_114186D: Me.lbltotal.Caption = vbNullString
  loc_1141878: var_90 = CDbl(0)
  loc_11418A0: For var_A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A8 'Integer
  loc_11418AA:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_11418B2:   var_D8 = CVar(CLng(5)) 'Long
  loc_11418DB:   var_FC = CVar(CLng(var_86)) 'Long
  loc_11418E3:   var_11C = CVar(CLng(9)) 'Long
  loc_114190C:   var_1A4 = CVar(CLng(var_86)) 'Long
  loc_1141914:   var_1C4 = CVar(CLng(&HA)) 'Long
  loc_1141945:   var_1E4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_114194D:   Set var_1F8 = Me.FGrid
  loc_1141953:   LateIdCallSt
  loc_114198D:   var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1141995:   var_D8 = CVar(CLng(6)) 'Long
  loc_11419CD:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <= CDbl(0)) Then
  loc_11419E3:     var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11419EB:     var_D8 = CVar(CLng(6)) 'Long
  loc_11419F4:     var_140 = CVar(CStr(1)) 'String
  loc_11419FC:     Set var_130 = Me.FGrid
  loc_1141A02:     LateIdCallSt
  loc_1141A18:   End If
  loc_1141A2B:   var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1141A33:   var_D8 = CVar(CLng(6)) 'Long
  loc_1141A6B:   var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1141A73:   var_11C = CVar(CLng(5)) 'Long
  loc_1141AAB:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1141AB3:   var_1C4 = CVar(CLng(7)) 'Long
  loc_1141AE4:   var_240 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.000"))) 'String
  loc_1141AEC:   Set var_244 = Me.FGrid
  loc_1141AF2:   LateIdCallSt
  loc_1141B29:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_1141B31:   var_D8 = CVar(CLng(&HA)) 'Long
  loc_1141B5D:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1141B6C: Next var_A8 'Integer
  loc_1141B71: var_D8 = "Total->"
  loc_1141BB0: Me.lbltotal.Caption = CStr(1 & Format(var_90, "0.00"))
  loc_1141BC4: Exit Sub
End Sub

Public Sub Proc_131_58_1047AA0(arg_C, arg_10) '1047AA0
  'Data Table: 4C0550
  Dim var_94 As String
  Dim var_98 As String
  Dim var_A4 As TextBox
  Dim var_B0 As String
  Dim var_C0 As String
  Dim var_B8 As TextBox
  Dim unk_4C0571 As Connection15
  Dim var_8C As Recordset15
  Dim var_A0 As Variant
  Dim var_E8 As Variant
  Dim var_120 As Variant
  Dim var_110 As Variant
  Dim var_100 As Variant
  loc_10478A0: var_98 = "Select * From Stock Where VType='STOP' And LogSite_Code='" & MemVar_1F92078 & "' And Item='"
  loc_10478BF: Set var_A0 = Me.Txt
  loc_10478C5: Call 0.Method_Proc_131_58_1047AA00 (CInt(0), var_A4, var_A8, var_98 & arg_C & "' And GoDownCode='")
  loc_10478CD: var_E8 = var_A4.Tag
  loc_10478D6: var_B0 = -1 & var_A8
  loc_10478DD: var_C0 = var_B0 & "' And DocId<>'"
  loc_10478EE: Set var_B4 = Me.Txt
  loc_10478F4: Call 0.Method_Proc_131_58_1047AA00 (CInt(1), var_B8, var_BC)
  loc_10478FC: var_C0 = var_B8.Text
  loc_1047915: unk_4C0571.Execute var_EC & var_BC & "'", &HFF, 
  loc_1047920: Set var_8C = var_EC
  loc_104795E: If (var_8C.RecordCount > 0) Then
  loc_1047980:   var_E8 = CVar(var_8C.Fields.Item("VNo")) 'Address
  loc_1047987:   Proc_6_39_E7C810(var_100)
  loc_1047992:   Call 0.Method_arg_50 (var_98)
  loc_10479A0:   var_120 = CVar(var_98) 'String
  loc_10479B4:   var_110 = CVar("Item Opening Already Present Agnst. Enrty No. " & CStr(var_100)) 'String
  loc_10479B7:   MsgBox(var_110, 0, var_120, var_140, var_160)
  loc_10479D8:   Proc_131_58_1047AA0 = 0
  loc_10479DE: End If
  loc_1047A03: For var_164 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8E = var_164 'Integer
  loc_1047A11:   If (CLng(var_8E) <> arg_10) Then
  loc_1047A3A:     var_94 = CStr(Me.FGrid.TextMatrix))
  loc_1047A4B:     If (var_94 = arg_C) Then
  loc_1047A54:       Call 0.Method_arg_50 (var_94, CVar(CLng(1)), CVar(CLng(var_8E)))
  loc_1047A75:       MsgBox("Duplicate Item", &H40, CVar(var_94), var_110, var_120)
  loc_1047A8A:       Proc_131_58_1047AA0 = 0
  loc_1047A90:     End If
  loc_1047A90:   End If
  loc_1047A93: Next var_164 'Integer
  loc_1047A98: Proc_131_58_1047AA0 = 
End Sub

Public Sub Proc_131_59_109BD74
  'Data Table: 4C0550
  Dim var_94 As String
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_8C As Recordset15
  Dim var_12C As Fields15
  Dim var_134 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  loc_109BAF5: var_90 = "STOP"
  loc_109BB0C: var_94 = "Select VT.Number_Method,VP.V_Type,Vt.Description,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_109BB3D: Proc_6_7_F25D88(var_C4, MemVar_1F920EC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_109BB59: Me.Connection15.Execute CStr(var_128 & var_C4 & " Order By VP.Date_From DESC"), -1, var_12C
  loc_109BB64: Set var_8C = var_12C
  loc_109BB9A: If (var_8C.RecordCount > 0) Then
  loc_109BBD9:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_109BBDC:     GoTo loc_109BC69
  loc_109BBDF:   End If
  loc_109BC10:   global_132 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_109BC3B:   var_134 = var_8C.Fields.Item("start_srl_no")
  loc_109BC50:   var_D4 = (var_134.Value + 1)
  loc_109BC58:   global_136 = CInt(CVar(CStr(var_8C.Fields.Item("Prefix").Value) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_109BC69:   ' Referenced from: 109BBDC
  loc_109BC69: End If
  loc_109BC94: var_C4 = Space((5 - Len(var_90)))
  loc_109BC9C: var_E4 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_134.Value)
  loc_109BCB0: var_104 = Space((5 - Len(global_132)))
  loc_109BCB8: var_128 = (var_128 & var_134.Value + var_128 & var_134.Value & " Order By VP.Date_From DESC")
  loc_109BCC5: var_148 = (var_128 + CVar(global_132))
  loc_109BCDE: var_158 = Space((8 - Len(CStr(global_136))))
  loc_109BCE6: var_168 = (var_148 + var_158)
  loc_109BCF5: var_188 = (var_168 + CVar(CStr(global_136)))
  loc_109BD00: global_144 = CStr(var_188)
  loc_109BD37: Set var_12C = Me.Txt
  loc_109BD3D: Call 0.Method_Proc_131_59_109BD740 (CInt(1), var_134)
  loc_109BD45: var_134.Text = global_144
  loc_109BD57: global_140 = var_90
  loc_109BD61: var_88 = global_144
  loc_109BD69: Set var_8C = Nothing
  loc_109BD6C: Proc_131_59_109BD74 = global_136
End Sub
