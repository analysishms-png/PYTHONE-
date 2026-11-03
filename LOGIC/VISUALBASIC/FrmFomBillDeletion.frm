VERSION 5.00
Begin VB.Form FrmFomBillDeletion
  Caption = "Fom Bill Delection"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3435
    Top = 1110
    Width = 1635
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3435
    Top = 1425
    Width = 1635
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3435
    Top = 1740
    Width = 3345
    Height = 285
    TabIndex = 3
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3435
    Top = 2055
    Width = 3345
    Height = 285
    Visible = 0   'False
    TabIndex = 4
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
  Begin CheckBox Check1
    Caption = "All"
    BackColor = &HFF8080&
    ForeColor = &HFFFFFF&
    Left = 1815
    Top = 2490
    Width = 915
    Height = 195
    TabIndex = 12
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
  Begin CommandButton CmdFillz
    Caption = "&Fill"
    BackColor = &HC0FFFF&
    Left = 9135
    Top = 4890
    Width = 1125
    Height = 780
    Visible = 0   'False
    TabIndex = 11
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox TxtSearch
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 8430
    Top = 2235
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdDeletez
    Caption = "&Delete"
    BackColor = &HC0FFFF&
    Left = 10680
    Top = 5085
    Width = 1545
    Height = 495
    Visible = 0   'False
    TabIndex = 9
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
  Begin CommandButton CmdExitz
    Caption = "E&xit"
    BackColor = &HC0FFFF&
    Left = 12615
    Top = 5430
    Width = 1545
    Height = 495
    Visible = 0   'False
    TabIndex = 8
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
  Begin CommandButton Command1
    Caption = "Serialize Bill"
    Left = 11895
    Top = 3315
    Width = 1125
    Height = 780
    Visible = 0   'False
    TabIndex = 7
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 2745
    Width = 4680
    Height = 345
    Visible = 0   'False
    TabIndex = 0
  End
  Begin MSHFlexGrid GridSel
    Left = 1725
    Top = 2415
    Width = 6495
    Height = 5985
    TabIndex = 6
  End
  Begin DataGrid DGRestType
    Left = 8325
    Top = 6570
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin MSFlexGrid FGPoint
    Left = 8475
    Top = 2490
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGPayType
    Left = 8010
    Top = 6210
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin BtnEnh CmdExit
    Left = 9390
    Top = 1170
    Width = 1200
    Height = 870
    TabIndex = 16
  End
  Begin BtnEnh CmdFill
    Left = 6930
    Top = 1170
    Width = 1275
    Height = 870
    TabIndex = 5
  End
  Begin BtnEnh CmdDelete
    Left = 8190
    Top = 1170
    Width = 1200
    Height = 870
    TabIndex = 17
  End
  Begin Label LblName
    Caption = "To Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 1950
    Top = 1410
    Width = 735
    Height = 240
    TabIndex = 23
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
    Caption = "From Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 1950
    Top = 1110
    Width = 990
    Height = 240
    TabIndex = 22
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
    Caption = "Department"
    Index = 2
    ForeColor = &HC00000&
    Left = 1950
    Top = 1740
    Width = 1110
    Height = 240
    TabIndex = 21
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
    Caption = "Payment mode"
    Index = 3
    ForeColor = &HC00000&
    Left = 1950
    Top = 2070
    Width = 1440
    Height = 240
    Visible = 0   'False
    TabIndex = 20
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
    BackColor = &H80FFFF&
    ForeColor = &H80&
    Left = 1755
    Top = 8520
    Width = 6360
    Height = 345
    TabIndex = 19
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
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 18
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
End

Attribute VB_Name = "FrmFomBillDeletion"

Private global_52 As Integer
Private global_84 As Long

Private Sub CmdExit_UnknownEvent_9 'E19CDC
  'Data Table: 4A2FEC
  loc_E19CD1: Me.Global.Unload Me
  loc_E19CD9: Exit Sub
  loc_E19CDA: ArrayRebase1Var
End Sub

Private Sub DGPayType_UnknownEvent_9 'F444C4
  'Data Table: 4A2FEC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F443BB: Me.DGPayType.Visible = False
  loc_F443DA: If (Me.RecordCount > 0) Then
  loc_F44419:   Set var_B4 = Me.Txt
  loc_F4441F:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B8)
  loc_F44427:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4445A:   var_B0 = Me.Fields.Item("Code")
  loc_F44479:   Set var_B4 = Me.Txt
  loc_F4447F:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B8)
  loc_F44487:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4449D: End If
  loc_F444A8: Set var_A8 = Me.Txt
  loc_F444AE: Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3))
  loc_F444B6: var_B0.SetFocus
  loc_F444C2: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'E6F0D8
  'Data Table: 4A2FEC
  loc_E6F096: Proc_6_153_E91194(Me.DGPayType, arg_14)
  loc_E6F0AD: Set var_8C = Me.FGPoint
  loc_E6F0C9: Proc_6_138_106D6F8(Me.DGPayType, global_72, CInt(3))
  loc_E6F0D7: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A 'FD8704
  'Data Table: 4A2FEC
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FD8552: If (Cancel = &HD) Then
  loc_FD8563:   Proc_303_0_FB9B68("	")
  loc_FD856B: End If
  loc_FD858A: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FD858D:   Exit Sub
  loc_FD858E: End If
  loc_FD85B8: If ((CLng(Cancel) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FD85CB:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FD85E5:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FD8600:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD8605:   var_D4 = 0
  loc_FD8637:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD863C:   var_19C = 0
  loc_FD8677:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FD867F:   Set var_1D0 = Me.GridSel
  loc_FD8685:   LateIdCallSt
  loc_FD86BF:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_FD86D1:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_FD86F9:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FD8700: End If
  loc_FD8700: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5C4F0
  'Data Table: 4A2FEC
  loc_E5C4CB: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5C4CE:   Exit Sub
  loc_E5C4CF: End If
  loc_E5C4E6: global_52 = CInt(CLng(Me.GridSel.Row))
  loc_E5C4EF: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1025C6C
  'Data Table: 4A2FEC
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_1025A6D: If ((CLng(Me.GridSel.Col) <> 0) Or (global_52 = 0)) Then
  loc_1025A70:   Exit Sub
  loc_1025A71: End If
  loc_1025ACD: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_1025AD0:   Exit Sub
  loc_1025AD1: End If
  loc_1025B00: For var_BA = global_52 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_1025B19:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1025B34:   Me.GridSel.Col = 0
  loc_1025B4C:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1025B66:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1025B72:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1025B77:   var_EC = 0
  loc_1025B9A:   var_160 = CVar(CLng(var_88)) 'Long
  loc_1025B9F:   var_180 = 0
  loc_1025BDA:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_1025BE2:   Set var_A0 = Me.GridSel
  loc_1025BE8:   LateIdCallSt
  loc_1025C1A:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_1025C2C:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_1025C54:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_1025C5E: Next var_BA 'Integer
  loc_1025C68: global_52 = 0
  loc_1025C6B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12E2600
  'Data Table: 4A2FEC
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_88 As DataGrid
  loc_12E1F4C: On Error Goto loc_12E25BB
  loc_12E1F59: Set var_88 = Me.Txt
  loc_12E1F5F: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12E1F6D: Proc_6_74_E226B0(var_8C)
  loc_12E1F79: Call Proc_299_28_EB917C(var_8C)
  loc_12E1F81: var_92 = Index
  loc_12E1F8C: If (var_92 = CInt(0)) Then
  loc_12E1F9C:   Set var_88 = Me.Txt
  loc_12E1FA2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E1FBD:   Set var_90 = Me.Txt
  loc_12E1FC3:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E1FCB:   var_9C.SelLength = Len(var_8C.Text)
  loc_12E1FEB:   Set var_88 = Me.Txt
  loc_12E1FF1:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E200B:   Set var_90 = Me.Txt
  loc_12E2011:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E2019:   var_9C.Tag = var_8C.Text
  loc_12E202F: Else
  loc_12E2037:   If (var_92 = CInt(1)) Then
  loc_12E2047:     Set var_88 = Me.Txt
  loc_12E204D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E2068:     Set var_90 = Me.Txt
  loc_12E206E:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E2076:     var_9C.SelLength = Len(var_8C.Text)
  loc_12E2096:     Set var_88 = Me.Txt
  loc_12E209C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E20A4:     var_98 = var_8C.Text
  loc_12E20B6:     Set var_90 = Me.Txt
  loc_12E20BC:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E20C4:     var_9C.Tag = var_98
  loc_12E20DA:   Else
  loc_12E20E2:     If (var_92 = CInt(2)) Then
  loc_12E20F3:       Set var_88 = Me.Txt
  loc_12E20F9:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E2118:       Me.DGRestType.Left = CVar(var_8C.Left)
  loc_12E2134:       Set var_90 = Me.Txt
  loc_12E213A:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_9C)
  loc_12E2155:       Set var_88 = Me.Txt
  loc_12E215B:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E2173:       var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E2182:       Me.DGRestType.Top = CVar(var_8C.Left)
  loc_12E21A3:       Me.Filter = 0
  loc_12E21B4:       Me.Filter = "RestType<>'Kitchen'"
  loc_12E21D0:       If (Me.RecordCount > 0) Then
  loc_12E21DE:         Set var_8C = Me.FGPoint
  loc_12E21F6:         Proc_6_137_1193554(Me.DGRestType, global_68, Index)
  loc_12E2204:       End If
  loc_12E2252:       Set var_88 = Me.Txt
  loc_12E2258:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E2260:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E2278:       If (var_8C Or (var_98 = vbNullString)) Then
  loc_12E227B:         Exit Sub
  loc_12E227C:       End If
  loc_12E2289:       Set var_88 = Me.Txt
  loc_12E228F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E2297:       var_98 = var_8C.Text
  loc_12E22A9:       var_B0 = "Name"
  loc_12E22C0:       var_9C = Me.Fields.Item(var_B0)
  loc_12E22E4:       If CBool(CVar(var_98) <> var_9C.Value) Then
  loc_12E22ED:         Me.MoveFirst
  loc_12E2310:         Set var_88 = Me.Txt
  loc_12E2316:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E231E:         0 = var_8C.Text
  loc_12E2337:         Me.Find 1 & var_98 & "'", var_B0, var_92
  loc_12E234C:       End If
  loc_12E235F:       Me.DGRestType.Tag = CVar(CStr(Index))
  loc_12E236D:     Else
  loc_12E2375:       If (var_92 = CInt(3)) Then
  loc_12E2386:         Set var_88 = Me.Txt
  loc_12E238C:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_12E23AB:         Me.DGPayType.Left = CVar(var_8C.Left)
  loc_12E23C7:         Set var_90 = Me.Txt
  loc_12E23CD:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_9C)
  loc_12E23E8:         Set var_88 = Me.Txt
  loc_12E23EE:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_12E2406:         var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E2415:         Me.DGPayType.Top = CVar(var_8C.Left)
  loc_12E243E:         If (Me.RecordCount > 0) Then
  loc_12E244C:           Set var_8C = Me.FGPoint
  loc_12E2464:           Proc_6_137_1193554(Me.DGPayType, global_72)
  loc_12E2472:         End If
  loc_12E24C0:         Set var_88 = Me.Txt
  loc_12E24C6:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E24CE:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E24E6:         If (Index Or (var_98 = vbNullString)) Then
  loc_12E24E9:           Exit Sub
  loc_12E24EA:         End If
  loc_12E24F7:         Set var_88 = Me.Txt
  loc_12E24FD:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E2505:         var_98 = var_8C.Text
  loc_12E2517:         var_B0 = "Name"
  loc_12E2552:         If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_12E255B:           Me.MoveFirst
  loc_12E257E:           Set var_88 = Me.Txt
  loc_12E2584:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E258C:           0 = var_8C.Text
  loc_12E25A5:           Me.Find 1 & var_98 & "'", var_B0, var_8C
  loc_12E25BA:         End If
  loc_12E25BA:       End If
  loc_12E25BA:     End If
  loc_12E25BA:   End If
  loc_12E25BA: End If
  loc_12E25BA: Exit Sub
  loc_12E25BB: ' Referenced from: 12E1F4C
  loc_12E25C3: Set var_88 = Err()
  loc_12E25C9: Call 0.Method_arg_2C (var_98)
  loc_12E25EA: MsgBox(CVar(var_98), &H40, "Information", var_FC, var_124)
  loc_12E25FD: Exit Sub
  loc_12E25FE: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10CC9B8
  'Data Table: 4A2FEC
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_10CC6CE: If (CLng(Shift) = &H1B) Then
  loc_10CC6D1:   Call Proc_299_28_EB917C()
  loc_10CC6D6:   Exit Sub
  loc_10CC6D7: End If
  loc_10CC6DA: var_88 = KeyCode
  loc_10CC6E5: If (var_88 = CInt(2)) Then
  loc_10CC705:   Set var_9C = Me.FGPoint
  loc_10CC710:   Set var_98 = Nothing
  loc_10CC73E:   Proc_6_69_134A198(Me.DGRestType, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_10CC7AD:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10CC7D3:     Proc_6_138_106D6F8(Me.DGRestType, global_68, KeyCode, Me.FGPoint, 1)
  loc_10CC7E1:   End If
  loc_10CC7E4: Else
  loc_10CC7EC:   If (var_88 = CInt(3)) Then
  loc_10CC80C:     Set var_9C = Me.FGPoint
  loc_10CC817:     Set var_98 = Nothing
  loc_10CC849:     Proc_6_69_134A198(Me.DGPayType, Me.Txt, CInt(3), global_72, Shift, 0, 1)
  loc_10CC8B8:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10CC8BF:       Set var_98 = Me.DGPayType
  loc_10CC8DE:       Proc_6_138_106D6F8(var_98, global_72, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_10CC8EC:     End If
  loc_10CC8EC:   End If
  loc_10CC8EC: End If
  loc_10CC927: If ((CBool(Me.DGRestType.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) Then
  loc_10CC951:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(0)) Or (KeyCode = CInt(1)))) Then
  loc_10CC95A:     Call Txt_Validate(KeyCode)
  loc_10CC965:     If (var_86 = &HFF) Then
  loc_10CC968:       Exit Sub
  loc_10CC969:     End If
  loc_10CC96F:     Proc_6_75_E527CC(Shift, arg_14, var_86, 0)
  loc_10CC977:   Else
  loc_10CC98C:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10CC995:       Proc_6_75_E527CC(Shift, arg_14, var_98)
  loc_10CC99D:     Else
  loc_10CC9A7:       If (CLng(Shift) = &H26) Then
  loc_10CC9B0:         Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_10CC9B5:       End If
  loc_10CC9B5:     End If
  loc_10CC9B5:   End If
  loc_10CC9B5: End If
  loc_10CC9B5: Exit Sub
  loc_10CC9B6: 0 = var_88
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F8D5AC
  'Data Table: 4A2FEC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_F8D44F: Proc_6_58_E054C0(arg_10)
  loc_F8D45A: Proc_6_133_E7EF78(var_94)
  loc_F8D463: arg_10 = CInt(var_94)
  loc_F8D46C: var_96 = KeyAscii
  loc_F8D477: If (var_96 = CInt(2)) Then
  loc_F8D496:   If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_F8D4C3:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_F8D4F5:     Proc_6_138_106D6F8(Me.DGRestType, global_68, KeyAscii, Me.FGPoint)
  loc_F8D503:   End If
  loc_F8D506: Else
  loc_F8D50E:   If (var_96 = CInt(3)) Then
  loc_F8D52D:     If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F8D565:       Proc_6_68_129FB34(Me.DGPayType, Me.Txt, KeyAscii, global_72, arg_10)
  loc_F8D59B:       Proc_6_138_106D6F8(Me.DGPayType, global_72, KeyAscii, Me.FGPoint, "Name")
  loc_F8D5A9:     End If
  loc_F8D5A9:   End If
  loc_F8D5A9: End If
  loc_F8D5A9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4EB5C
  'Data Table: 4A2FEC
  loc_E4EB3A: Set var_88 = Me.Txt
  loc_E4EB40: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4EB4E: Proc_6_73_E22704(var_8C)
  loc_E4EB5A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1164158
  'Data Table: 4A2FEC
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_98 As TextBox
  loc_1163DA8: On Error Goto loc_1164111
  loc_1163DAE: var_86 = Cancel
  loc_1163DB9: If (var_86 = CInt(0)) Then
  loc_1163DC6:   Set var_8C = Me.Txt
  loc_1163DCC:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1163DEC:   Set var_98 = Me.Txt
  loc_1163DF2:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1163DFA:   var_9C.Text = Proc_6_33_1512840(var_90)
  loc_1163E10: Else
  loc_1163E18:   If (var_86 = CInt(1)) Then
  loc_1163E25:     Set var_8C = Me.Txt
  loc_1163E2B:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1163E4B:     Set var_98 = Me.Txt
  loc_1163E51:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1163E59:     var_9C.Text = Proc_6_33_1512840(var_90)
  loc_1163E6F:   Else
  loc_1163E77:     If (var_86 = CInt(2)) Then
  loc_1163E87:       Set var_8C = Me.Txt
  loc_1163E8D:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1163EAC:       If (var_90.Text <> vbNullString) Then
  loc_1163EEA:         Set var_94 = Me.Txt
  loc_1163EF0:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1163EF8:         var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1163F2B:         var_90 = Me.Fields.Item("Code")
  loc_1163F49:         Set var_94 = Me.Txt
  loc_1163F4F:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1163F57:         var_98.Tag = CStr(var_90.Value)
  loc_1163F70:       Else
  loc_1163F7D:         Set var_8C = Me.Txt
  loc_1163F83:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1163F8B:         var_90.Text = vbNullString
  loc_1163FA4:         Set var_8C = Me.Txt
  loc_1163FAA:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1163FB2:         var_90.Tag = vbNullString
  loc_1163FBE:       End If
  loc_1163FC1:     Else
  loc_1163FC9:       If (var_86 = CInt(3)) Then
  loc_1163FD9:         Set var_8C = Me.Txt
  loc_1163FDF:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1163FFE:         If (var_90.Text <> vbNullString) Then
  loc_116403C:           Set var_94 = Me.Txt
  loc_1164042:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_116404A:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_116407D:           var_90 = Me.Fields.Item("Code")
  loc_116408E:           var_A0 = CStr(var_90.Value)
  loc_116409B:           Set var_94 = Me.Txt
  loc_11640A1:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_11640A9:           var_98.Tag = var_A0
  loc_11640C2:         Else
  loc_11640CF:           Set var_8C = Me.Txt
  loc_11640D5:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11640DD:           var_90.Text = vbNullString
  loc_11640F6:           Set var_8C = Me.Txt
  loc_11640FC:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1164104:           var_90.Tag = vbNullString
  loc_1164110:         End If
  loc_1164110:       End If
  loc_1164110:     End If
  loc_1164110:   End If
  loc_1164110: End If
  loc_1164110: Exit Sub
  loc_1164111: ' Referenced from: 1163DA8
  loc_1164119: Set var_8C = Err()
  loc_116411F: Call 0.Method_arg_2C (var_A0)
  loc_1164140: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_1164153: Exit Sub
  loc_1164154: Exit Sub
  loc_1164155: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_9 'F3BB44
  'Data Table: 4A2FEC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3BA3B: Me.DGRestType.Visible = False
  loc_F3BA5A: If (Me.RecordCount > 0) Then
  loc_F3BA99:   Set var_B4 = Me.Txt
  loc_F3BA9F:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3BAA7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3BADA:   var_B0 = Me.Fields.Item("Code")
  loc_F3BAF9:   Set var_B4 = Me.Txt
  loc_F3BAFF:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3BB07:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3BB1D: End If
  loc_F3BB28: Set var_A8 = Me.Txt
  loc_F3BB2E: Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2))
  loc_F3BB36: var_B0.SetFocus
  loc_F3BB42: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_1F 'E7141C
  'Data Table: 4A2FEC
  loc_E713DA: Proc_6_153_E91194(Me.DGRestType, arg_14)
  loc_E713F1: Set var_8C = Me.FGPoint
  loc_E7140D: Proc_6_138_106D6F8(Me.DGRestType, global_68, CInt(2))
  loc_E7141B: Exit Sub
End Sub

Private Sub CmdFill_UnknownEvent_9 '1164968
  'Data Table: 4A2FEC
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As Variant
  loc_11645C3: Set var_88 = Me.Txt
  loc_11645C9: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_11645F2: If (Proc_6_27_EA565C(var_8C, "From Date") = 0) Then
  loc_11645F5:   Exit Sub
  loc_11645F6: End If
  loc_1164604: Set var_88 = Me.Txt
  loc_116460A: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_8C)
  loc_116462E: Set var_90 = Me.Txt
  loc_1164634: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_98, var_9C)
  loc_116463C: (CDate(var_8C.Text) > MemVar_1F920FC) = var_98.Text
  loc_116465D: If (var_8C Or (CDate(var_9C) < MemVar_1F920F4)) Then
  loc_1164679:   MsgBox("FromDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_1164694:   Set var_88 = Me.Txt
  loc_116469A:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_11646A2:   var_8C.SetFocus
  loc_11646AE:   Exit Sub
  loc_11646AF: End If
  loc_11646BA: Set var_88 = Me.Txt
  loc_11646C0: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_8C)
  loc_11646E9: If (Proc_6_27_EA565C(var_8C, "To Date") = 0) Then
  loc_11646EC:   Exit Sub
  loc_11646ED: End If
  loc_11646FB: Set var_88 = Me.Txt
  loc_1164701: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_8C)
  loc_1164725: Set var_90 = Me.Txt
  loc_116472B: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_98, var_9C)
  loc_1164733: (CDate(var_8C.Text) > MemVar_1F920FC) = var_98.Text
  loc_1164754: If (var_8C Or (CDate(var_9C) < MemVar_1F920F4)) Then
  loc_1164770:   MsgBox("ToDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_116478B:   Set var_88 = Me.Txt
  loc_1164791:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_1164799:   var_8C.SetFocus
  loc_11647A5:   Exit Sub
  loc_11647A6: End If
  loc_11647B4: Set var_90 = Me.Txt
  loc_11647BA: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_98)
  loc_11647D5: Set var_88 = Me.Txt
  loc_11647DB: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_8C)
  loc_1164805: If (CDate(var_8C.Text) > CDate(var_98.Text)) Then
  loc_1164821:   MsgBox("FromDate must be less than ToDate", &H10, var_DC, var_FC, var_11C)
  loc_116483C:   Set var_88 = Me.Txt
  loc_1164842:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_8C)
  loc_116484A:   var_8C.SetFocus
  loc_1164856:   Exit Sub
  loc_1164857: End If
  loc_1164862: Set var_88 = Me.Txt
  loc_1164868: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(2), var_8C)
  loc_1164891: If (Proc_6_27_EA565C(var_8C, "Department") = 0) Then
  loc_1164894:   Exit Sub
  loc_1164895: End If
  loc_116489E: Set var_88 = Me.CmdFill
  loc_11648A4: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_11648B9: Me.Label1.Caption = "Processing..."
  loc_11648CB: Me.Label1.Refresh
  loc_11648D3: Call Proc_299_22_11BCD18(var_8C)
  loc_11648D8: Call Proc_299_23_126CBD4()
  loc_11648F0: Me.GridSel.Row = 1
  loc_116490B: Me.GridSel.Col = 0
  loc_1164917: Set var_88 = Me.GridSel
  loc_1164935: Me.Label1.Caption = vbNullString
  loc_1164947: Me.Label1.Refresh
  loc_1164957: Set var_88 = Me.CmdFill
  loc_116495D: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_1164965: Exit Sub
End Sub

Private Sub Form_Load() 'F91804
  'Data Table: 4A2FEC
  Dim var_88 As Variant
  Dim var_B0 As String
  Dim var_B4 As String
  Dim unk_4A2FFD As Connection15
  loc_F9169C: On Error Goto loc_F917FB
  loc_F916B5: Proc_6_23_DFBA28(Me, 0)
  loc_F916C4: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_F916DC: Me.GridSel.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_F916EC: Set var_88 = Me.Label1
  loc_F916F2: var_88.BackColor = CLng(MemVar_1F921B0)
  loc_F91715: var_B4 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND RestType='Fom' ORDER BY Name"
  loc_F9171E: unk_4A2FFD.Execute var_B4, var_C4, -1
  loc_F9172F: Set global_68 = var_88
  loc_F9174D: CVarUnk
  loc_F91752: VerifyVarObj
  loc_F9175E: LateIdStAd
  loc_F91780: var_B0 = "SELECT Code,Name,PayType FROM RevMast Where PayType In('Cash','Member','Credit Card','Company','Complementary') And (LOGSITE_CODE='" & MemVar_1F92078
  loc_F91790: unk_4A2FFD.Execute var_B0 & "' or LOGSITE_CODE='HO') AND FieldType='P' ORDER BY Name", var_C4, -1
  loc_F917BF: CVarUnk
  loc_F917C4: VerifyVarObj
  loc_F917CA: Set var_88 = Me.DGPayType
  loc_F917D0: LateIdStAd
  loc_F917E7: Set var_88 = Me.CmdDelete
  loc_F917ED: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_F917F5: Call Proc_299_22_11BCD18(var_88, Me.DGRestType, var_88, var_88)
  loc_F917FA: Exit Sub
  loc_F917FB: ' Referenced from: F9169C
  loc_F917FB: Proc_6_60_E62BC4(global_68, var_88)
  loc_F91800: Exit Sub
  loc_F91801: 0 = 
End Sub

Private Sub Form_Resize() 'E70924
  'Data Table: 4A2FEC
  loc_E708CE: Call 0.Method_arg_50 (var_88)
  loc_E708E0: Me.LblFormCaption.Caption = var_88
  loc_E708F9: Me.LblFormCaption.Left = CDbl(0)
  loc_E70907: Call 0.Method_arg_100 (var_90)
  loc_E70919: Me.LblFormCaption.Width = var_90
  loc_E70921: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5ECB8
  'Data Table: 4A2FEC
  loc_E5EC77: Set global_64 = Nothing
  loc_E5EC89: Set global_76 = Nothing
  loc_E5EC9B: Set global_68 = Nothing
  loc_E5ECAD: Set global_72 = Nothing
  loc_E5ECB4: Exit Sub
  loc_E5ECB5:  = arg_1903
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'FB9D70
  'Data Table: 4A2FEC
  Dim var_D4 As Variant
  Dim var_94 As Variant
  Dim var_B4 As String
  Dim var_E4 As Variant
  Dim var_E8 As MSHFlexGrid
  Dim var_108 As Variant
  Dim var_13C As MSHFlexGrid
  Dim var_150 As String
  loc_FB9BD8: On Error Goto loc_FB9D68
  loc_FB9BEC: var_94 = MemVar_1F920C8
  loc_FB9BFC: var_B4 = "HTW_SYSTEM"
  loc_FB9C06: var_E4 = (CLng(KeyCode) = &H70) And (Ucase(var_94) = var_B4)
  loc_FB9C1D: var_108 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FB9C2E: Set var_13C = Me.GridSel
  loc_FB9C3F: var_150 = CStr(var_13C.TextMatrix))
  loc_FB9C68: If CBool(CVar(CLng(2)) And (var_150 <> vbNullString)) Then
  loc_FB9C75:   Set var_174 = New RSSaleBill
  loc_FB9C89:   Set var_E8 = Me.FrCustSaleDetail
  loc_FB9C8F:   Call 0.Method_Form_KeyDown0 (CInt(2), var_13C, var_150)
  loc_FB9C97:   var_108 = RSSaleBill.FrCustSaleDetail.Tag
  loc_FB9CA6:   var_174.LocalRestCode = CVar(var_150)
  loc_FB9CC2:   Set var_E8 = var_13C(CInt(2))
  loc_FB9CC8:   Call 0.Method_Form_KeyDown0 (var_150)
  loc_FB9CD0:   var_E4 = var_174.TextBox.Text
  loc_FB9CDB:   Form.Caption = var_150
  loc_FB9CF5:   Form.Show var_94, var_B4
  loc_FB9D0D:   var_94 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FB9D15:   var_D4 = CVar(CLng(2)) 'Long
  loc_FB9D2F:   var_E4 = CVar(CStr(Me.GridSel.TextMatrix))) 'String
  loc_FB9D36:   Call var_174.SEARCHBACK
  loc_FB9D4C: End If
  loc_FB9D60: Proc_6_88_FE81B4(Me, KeyCode, Shift, 0)
  loc_FB9D68: ' Referenced from: FB9BD8
  loc_FB9D68: Proc_6_60_E62BC4(var_E4, var_D4)
  loc_FB9D6D: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E64068
  'Data Table: 4A2FEC
  loc_E64038: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_E6403B:   Call DGRestType_UnknownEvent_9()
  loc_E64040: End If
  loc_E6405C: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_E6405F:   Call DGPayType_UnknownEvent_9()
  loc_E64064: End If
  loc_E64064: Exit Sub
End Sub

Private Sub CmdDelete_UnknownEvent_9 '108D700
  'Data Table: 4A2FEC
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_86 As Integer
  Dim unk_4A2FFD As Connection15
  Dim var_C0 As Variant
  Dim var_F8 As Variant
  Dim var_148 As Variant
  Dim var_118 As Variant
  loc_108D478: On Error Goto loc_108D6E3
  loc_108D484: Set var_AC = Me.CmdDelete
  loc_108D48A: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_108D49F: Me.Label1.Caption = "Deleting..."
  loc_108D4B1: Me.Label1.Refresh
  loc_108D4D1: unk_4A2FFD.BeginTrans var_B0
  loc_108D4EC: unk_4A2FFD.Execute "Delete from TempPosDel", var_C0, -1
  loc_108D520: Call Proc_299_27_11A8644(global_60, CByte(Me.Check1.Value), var_C0)
  loc_108D538: var_98 = "Insert into TempPosDel(OldDocId,OldVno) Select Distinct FolioNoDocId,Cast(Bill_no As Int) Bill_no from FomBillDetails Where Bill_Date>= "
  loc_108D54E: Call 0.Method_CmdDelete_UnknownEvent_90 (CInt(0), var_C8, var_98, var_1AC)
  loc_108D55D: Proc_6_7_F25D88(var_D8, CVar(var_C8), -1)
  loc_108D57D: Proc_6_7_F25D88(var_118, MemVar_1F920FC, var_1B0 & var_D8 & " And Bill_Date<=")
  loc_108D5AF: unk_4A2FFD.Execute CStr(Me.Txt & var_118 & " And Logsite_Code='" & CVar(MemVar_1F92078) & "' Order by Cast(Bill_no As Int)"), &HFF, 
  loc_108D5D5: Call Proc_299_26_FCC5BC()
  loc_108D5DA: Call Proc_299_25_10AF17C()
  loc_108D610: Set var_AC = Me.Txt
  loc_108D616: Call 0.Method_CmdDelete_UnknownEvent_90 (CInt(1), var_C8, CVar("UPDATE VOUCHER_PREFIX SET START_SRL_NO=" & CStr(global_84) & " WHERE "))
  loc_108D625: Proc_6_7_F25D88(var_D8, CVar(var_C8), var_1AC)
  loc_108D62D: var_F8 = -1 & var_D8 
  loc_108D64C: var_148 = var_1B0 & var_D8 & " And Bill_Date<=" & " BETWEEN DATE_FROM AND DATE_TO AND V_TYPE='" & CVar("BCNT") & "' And Logsite_Code='" 
  loc_108D66D: unk_4A2FFD.Execute CStr(var_148 & CVar(MemVar_1F92078) & "'"), var_1B0, 
  loc_108D69F: unk_4A2FFD.CommitTrans
  loc_108D6A6: var_86 = 0
  loc_108D6B4: Set global_76 = Nothing
  loc_108D6C8: Me.Label1.Caption = "Deletion Completed."
  loc_108D6DA: Me.Label1.Refresh
  loc_108D6E2: Exit Sub
  loc_108D6E3: ' Referenced from: 108D478
  loc_108D6E9: If (var_86 = &HFF) Then
  loc_108D6F2:   unk_4A2FFD.RollbackTrans
  loc_108D6F7: End If
  loc_108D6F7: Proc_6_60_E62BC4(var_86)
  loc_108D6FC: Exit Sub
End Sub

Private Sub Check1_Click() 'F67474
  'Data Table: 4A2FEC
  Dim var_9C As Variant
  loc_F67357: If (CLng(Me.Check1.Value) = 0) Then
  loc_F67368:   Me.GridSel.Enabled = True
  loc_F6738F:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F673A5:     Me.GridSel.Row = 1
  loc_F673C0:     Me.GridSel.Col = 0
  loc_F673C8:   End If
  loc_F673CB: Else
  loc_F673DA:   Me.GridSel.Enabled = False
  loc_F67401:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F67417:     Me.GridSel.Row = 0
  loc_F67432:     Me.GridSel.Col = 0
  loc_F67453:     var_9C = CVar((CLng(Me.GridSel.Rows) - 1)) 'Long
  loc_F67462:     Me.GridSel.RowSel = 0
  loc_F67471:   End If
  loc_F67471: End If
  loc_F67471: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E22B98
  'Data Table: 4A2FEC
  loc_E22B7E: If (KeyCode = &HD) Then
  loc_E22B8F:   Proc_303_0_FB9B68("	")
  loc_E22B97: End If
  loc_E22B97: Exit Sub
End Sub

Public Sub Proc_299_22_11BCD18
  'Data Table: 4A2FEC
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_11BC8D2: Me.GridSel.Rows = 1
  loc_11BC8E6: Me.GridSel.Cols = 6
  loc_11BC8EB: var_98 = 0
  loc_11BC8F7: var_BC = CVar(CLng(0)) 'Long
  loc_11BC8FC: var_DC = "O"
  loc_11BC905: LateIdCallSt
  loc_11BC910: var_98 = CVar(CLng(0)) 'Long
  loc_11BC915: var_BC = &H258
  loc_11BC921: LateIdCallSt
  loc_11BC929: var_98 = 0
  loc_11BC935: var_BC = CVar(CLng(1)) 'Long
  loc_11BC93A: var_DC = "Bill No"
  loc_11BC943: LateIdCallSt
  loc_11BC94E: var_98 = CVar(CLng(1)) 'Long
  loc_11BC959: var_BC = CVar(CInt(1)) 'Integer
  loc_11BC960: LateIdCallSt
  loc_11BC96B: var_98 = CVar(CLng(1)) 'Long
  loc_11BC976: var_BC = CVar(CInt(1)) 'Integer
  loc_11BC97D: LateIdCallSt
  loc_11BC988: var_98 = CVar(CLng(1)) 'Long
  loc_11BC98D: var_BC = &H514
  loc_11BC999: LateIdCallSt
  loc_11BC9A1: var_98 = 0
  loc_11BC9AD: var_BC = CVar(CLng(2)) 'Long
  loc_11BC9B2: var_DC = "DocId"
  loc_11BC9BB: LateIdCallSt
  loc_11BC9C6: var_98 = CVar(CLng(2)) 'Long
  loc_11BC9D1: var_BC = CVar(CInt(7)) 'Integer
  loc_11BC9D8: LateIdCallSt
  loc_11BC9E3: var_98 = CVar(CLng(2)) 'Long
  loc_11BC9EE: var_BC = CVar(CInt(7)) 'Integer
  loc_11BC9F5: LateIdCallSt
  loc_11BCA00: var_98 = CVar(CLng(2)) 'Long
  loc_11BCA05: var_BC = 0
  loc_11BCA11: LateIdCallSt
  loc_11BCA19: var_98 = 0
  loc_11BCA25: var_BC = CVar(CLng(3)) 'Long
  loc_11BCA2A: var_DC = "Bill Date"
  loc_11BCA33: LateIdCallSt
  loc_11BCA3E: var_98 = CVar(CLng(3)) 'Long
  loc_11BCA49: var_BC = CVar(CInt(1)) 'Integer
  loc_11BCA50: LateIdCallSt
  loc_11BCA5B: var_98 = CVar(CLng(3)) 'Long
  loc_11BCA66: var_BC = CVar(CInt(1)) 'Integer
  loc_11BCA6D: LateIdCallSt
  loc_11BCA78: var_98 = CVar(CLng(3)) 'Long
  loc_11BCA7D: var_BC = &H578
  loc_11BCA89: LateIdCallSt
  loc_11BCA91: var_98 = 0
  loc_11BCA9D: var_BC = CVar(CLng(4)) 'Long
  loc_11BCAA2: var_DC = "Bill Amount"
  loc_11BCAAB: LateIdCallSt
  loc_11BCAB6: var_98 = CVar(CLng(4)) 'Long
  loc_11BCAC1: var_BC = CVar(CInt(7)) 'Integer
  loc_11BCAC8: LateIdCallSt
  loc_11BCAD3: var_98 = CVar(CLng(4)) 'Long
  loc_11BCADE: var_BC = CVar(CInt(7)) 'Integer
  loc_11BCAE5: LateIdCallSt
  loc_11BCAF0: var_98 = CVar(CLng(4)) 'Long
  loc_11BCAF5: var_BC = &H640
  loc_11BCB01: LateIdCallSt
  loc_11BCB09: var_98 = 0
  loc_11BCB15: var_BC = CVar(CLng(5)) 'Long
  loc_11BCB1A: var_DC = "Status"
  loc_11BCB23: LateIdCallSt
  loc_11BCB2E: var_98 = CVar(CLng(5)) 'Long
  loc_11BCB39: var_BC = CVar(CInt(1)) 'Integer
  loc_11BCB40: LateIdCallSt
  loc_11BCB4B: var_98 = CVar(CLng(5)) 'Long
  loc_11BCB56: var_BC = CVar(CInt(1)) 'Integer
  loc_11BCB5D: LateIdCallSt
  loc_11BCB68: var_98 = CVar(CLng(5)) 'Long
  loc_11BCB6D: var_BC = &H4B0
  loc_11BCB79: LateIdCallSt
  loc_11BCB81: var_98 = vbNullString
  loc_11BCB8B: Set var_AC = Me.GridSel
  loc_11BCBAF: Me.GridSel.FixedRows = 1
  loc_11BCBB9: Set var_88 = Nothing 
  loc_11BCBCD: ReDim Preserve global_60(0 To 0)
  loc_11BCBE4: global_60(0) = 0
  loc_11BCBF8: Me.GridSel.Height = CVar(CDbl(6000))
  loc_11BCC13: Me.GridSel.Width = CVar(CDbl(6500))
  loc_11BCC1B: var_98 = 0
  loc_11BCC4C: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_11BCC5B: var_98 = 0
  loc_11BCC8C: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_11BCCBD: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_11BCCEE: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_11BCD0D: Me.Check1.Value = CInt(0)
  loc_11BCD15: Exit Sub
End Sub

Public Sub Proc_299_23_126CBD4
  'Data Table: 4A2FEC
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim unk_4A2FFD As Connection15
  Dim var_1A4 As Variant
  Dim var_1A8 As Fields15
  Dim var_1BC As Field20
  Dim var_A4 As Variant
  Dim var_10C As Variant
  Dim var_1A0 As Variant
  Dim Me As Recordset15
  Dim var_E8 As Variant
  Dim var_EC As Variant
  Dim arg_74FF As Integer
  loc_126C690: Proc_6_7_F25D88(var_A4, MemVar_1F920F4, "Select isnull(max(cast(bill_no as integer)),0) From FomBillDetails Where Bill_Date>=", var_1A0, -1)
  loc_126C698: var_C4 = var_1A4 & var_A4 
  loc_126C6B0: Set var_E8 = Me.Txt
  loc_126C6B6: Call 0.Method_Proc_299_23_126CBD40 (CInt(0), var_EC, var_C4 & " And Bill_date<", var_1A8)
  loc_126C6C5: Proc_6_7_F25D88(var_10C, CVar(var_EC), 0)
  loc_126C6CD: var_11C = var_1BC & var_10C 
  loc_126C6F7: unk_4A2FFD.Execute CStr(var_11C & "  And Logsite_Code='" & CVar(MemVar_1F92078) & "'"), var_1CC, 
  loc_126C6FF:  = var_1A4.Fields
  loc_126C707:  = var_1A8.Item()
  loc_126C70F:  = var_1BC.Value
  loc_126C71A: Proc_6_39_E7C810(var_1DC)
  loc_126C760: var_94 = "Select Distinct S.Bill_no,S.Bill_date,S.BillAmt as BillAmount,S.Status,S.FolioNoDocId,Cast(S.Bill_no As Integer) Bill_no From (FomBillDetails S Left Join PayCharge P on P.DocId=S.FolioNoDocId) Where S.Bill_Date Between "
  loc_126C770: Set var_E8 = Me.Txt
  loc_126C776: Call 0.Method_Proc_299_23_126CBD40 (CInt(0), var_EC, var_94, var_1CC)
  loc_126C785: Proc_6_7_F25D88(var_C4, CVar(var_EC), -1)
  loc_126C7A5: Set var_1A4 = Me.Txt
  loc_126C7AB: Call 0.Method_Proc_299_23_126CBD40 (CInt(1), var_1A8, var_1BC & var_C4 & " And ")
  loc_126C7BA: Proc_6_7_F25D88(var_11C, CVar(var_1A8))
  loc_126C7EC: unk_4A2FFD.Execute CStr(CLng(var_1DC) & var_11C & "  And S.Logsite_Code='" & CVar(MemVar_1F92078) & "' Order by Cast(S.Bill_no As Integer)"), var_1CC, 
  loc_126C7FD: Set global_76 = var_1BC
  loc_126C83F: If (Me.RecordCount = 0) Then
  loc_126C855:   Me.GridSel.Rows = 2
  loc_126C85D:   Exit Sub
  loc_126C85E: End If
  loc_126C871: Me.GridSel.Row = 1
  loc_126C881: Set var_E8 = Me.CmdDelete
  loc_126C887: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_126C88F: ' Referenced from: 126CBB3
  loc_126C8A1: If Not(Me.EOF) Then
  loc_126C8A8:   Set var_1EC = Me.GridSel
  loc_126C8AB:   var_94 = vbNullString
  loc_126C8CF:   var_94 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_126C8D7:   var_D4 = CVar(CLng(0)) 'Long
  loc_126C8E5:   LateIdCallSt
  loc_126C906:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_126C90E:   var_12C = CVar(CLng(1)) 'Long
  loc_126C942:   var_E4 = CVar(CStr(Me.Fields.Item("Bill_no").Value)) 'String
  loc_126C949:   LateIdCallSt
  loc_126C9AE:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("FolioNoDocid")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_1EC, var_E4, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_126C9B5:   LateIdCallSt
  loc_126CA0E:   var_D4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_126CA16:   var_14C = CVar(CLng(3)) 'Long
  loc_126CA33:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Bill_Date")), var_1EC, "dd/mmm/yyyy", var_1EC, vbNullString)) 'String
  loc_126CA49:   LateIdCallSt
  loc_126CA93:   Proc_6_39_E7C810(var_C4, CVar(Me.Fields.Item("BillAmount")), var_1EC, CVar(CStr(Format(var_C4, "dd/mmm/yyyy"))), 1, 1)
  loc_126CAAB:   var_D4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_126CAB3:   var_14C = CVar(CLng(4)) 'Long
  loc_126CAE3:   LateIdCallSt
  loc_126CB4C:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Status")), CVar(CLng(5)), CVar(CLng(Me.GridSel.Row)), var_1EC, CVar(CStr(Format(Me.GridSel.Row, "0.00"))), 1, 1)) 'String
  loc_126CB53:   LateIdCallSt
  loc_126CB6D:   Set var_1EC = Nothing 
  loc_126CB8A:   var_94 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_126CB99:   Me.GridSel.Row = "Status"
  loc_126CBAE:   Me.MoveNext
  loc_126CBB3:   GoTo loc_126C88F
  loc_126CBB6: End If
  loc_126CBC9: Me.GridSel.FixedRows = 1
  loc_126CBD1: Exit Sub
  loc_126CBD2: arg_74FF = var_1EC
End Sub

Public Sub Proc_299_24_F5FC68(arg_C, arg_10) 'F5FC68
  'Data Table: 4A2FEC
  Dim unk_4A2FFD As Connection15
  Dim var_CC As Integer
  Dim var_B8 As Recordset15
  Dim var_BC As Fields15
  Dim var_D0 As Field20
  loc_F5FB5C: If (arg_C = vbNullString) Then
  loc_F5FB5F:   Exit Sub
  loc_F5FB60: End If
  loc_F5FB92: unk_4A2FFD.Execute "Delete From FomBillDetails Where FolioNoDocID='" & arg_C & "' And RTrim(LTrim(Bill_no))='" & arg_10 & "'", var_B4, -1
  loc_F5FBAE: var_CC = 0
  loc_F5FBE9: unk_4A2FFD.Execute "Select count(*) From Paycharge Where FolioNoDocID='" & arg_C & "' And RTrim(LTrim(Bill_no))='" & arg_10 & "'", var_B4, -1
  loc_F5FBF1: var_B8 = var_B8.Fields
  loc_F5FBF9: var_CC = var_BC.Item(var_BC)
  loc_F5FC01: var_D0 = var_D0.Value
  loc_F5FC2C: If (var_E0 >= 1) Then
  loc_F5FC53:   unk_4A2FFD.Execute "Delete From Paycharge Where FolioNoDocID='" & arg_C & "'", var_B4, -1
  loc_F5FC65: End If
  loc_F5FC65: Exit Sub
End Sub

Public Sub Proc_299_25_10AF17C
  'Data Table: 4A2FEC
  Dim unk_4A2FFD As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_A8 As Variant
  Dim var_D0 As String
  Dim var_138 As Variant
  Dim var_190 As Variant
  loc_10AEEFE: unk_4A2FFD.Execute "Select * from TempPosDel Order By OldVno", var_A8, -1
  loc_10AEF09: Set var_88 = var_AC
  loc_10AEF26: If (var_88.RecordCount = 0) Then
  loc_10AEF29:   Exit Sub
  loc_10AEF2A: End If
  loc_10AEF3E: If (var_88.RecordCount > 0) Then
  loc_10AEF44:   var_88.MoveFirst
  loc_10AEF49:   ' Referenced from: 10AF175
  loc_10AEF58:   If Not(var_88.EOF) Then
  loc_10AEF7A:     var_AC = var_88.Fields
  loc_10AEF91:     Proc_6_39_E7C810(var_C8, CVar(var_AC.Item("NEWVNO")), "Update FomBillDetails Set Bill_no='", var_1D4)
  loc_10AEF9F:     var_D0 = -1 & CStr(var_C8)
  loc_10AF006:     Proc_6_39_E7C810(var_170, CVar(var_88.Fields.Item("OldVno")), CVar(var_D0 & "' Where FolionoDocId='") & var_88.Fields.Item("OldDocid").Value & "' And RTrim(LTrim(Bill_no))='")
  loc_10AF02A:     unk_4A2FFD.Execute CStr(var_1D8 & CVar(CStr(var_170)) & "'"), var_AC, 
  loc_10AF09A:     Proc_6_39_E7C810(var_C8, CVar(var_88.Fields.Item("NEWVNO")), "Update PayCharge Set Bill_no='")
  loc_10AF0E5:     var_138 = CVar(var_1D4 & CStr(var_C8) & "' Where FolioNoDocId='") & var_88.Fields.Item("OldDocid").Value & "' And RTrim(LTrim(Bill_no))='" 
  loc_10AF10F:     Proc_6_39_E7C810(var_170, CVar(var_88.Fields.Item("OldVno")), var_138)
  loc_10AF11C:     var_190 = -1 & CVar(CStr(var_170)) 
  loc_10AF133:     unk_4A2FFD.Execute CStr(var_1D8 & CVar(CStr(var_170)) & "'"), var_1D8, 
  loc_10AF170:     var_88.MoveNext
  loc_10AF175:     GoTo loc_10AEF49
  loc_10AF178:   End If
  loc_10AF178: End If
  loc_10AF178: Exit Sub
End Sub

Public Sub Proc_299_26_FCC5BC
  'Data Table: 4A2FEC
  Dim unk_4A2FFD As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Long
  Dim var_AC As Variant
  Dim var_B0 As Fields15
  Dim var_14C As Variant
  loc_FCC446: unk_4A2FFD.Execute "Select * from TempPosDel Order By OldVno", var_AC, -1
  loc_FCC451: Set var_88 = var_B0
  loc_FCC46E: If (var_88.RecordCount = 0) Then
  loc_FCC47A:   global_84 = global_80
  loc_FCC47D:   Exit Sub
  loc_FCC47E: End If
  loc_FCC483: var_8C = 1
  loc_FCC49A: If (var_88.RecordCount > 0) Then
  loc_FCC4A0:   var_88.MoveFirst
  loc_FCC4A5:   ' Referenced from: FCC59F
  loc_FCC4B4:   If Not(var_88.EOF) Then
  loc_FCC4D5:     var_AC = CVar(CStr((global_80 + var_8C))) 'String
  loc_FCC523:     var_14C = "Update TempPosDel Set NewVno=" & Trim(var_AC) & " Where OldDocId='" & var_88.Fields.Item("OldDocid").Value & "' And OldVno=" 
  loc_FCC55F:     unk_4A2FFD.Execute CStr(var_14C & var_88.Fields.Item("OldVno").Value), var_1A8, -1
  loc_FCC594:     var_8C = (var_8C + 1)
  loc_FCC59A:     var_88.MoveNext
  loc_FCC59F:     GoTo loc_FCC4A5
  loc_FCC5A2:   End If
  loc_FCC5B5:   global_84 = ((global_80 + var_8C) - 1)
  loc_FCC5B8: End If
  loc_FCC5B8: Exit Sub
End Sub

Public Sub Proc_299_27_11A8644(arg_C, arg_10) '11A8644
  'Data Table: 4A2FEC
  Dim var_96 As Integer
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_108 As Variant
  Dim var_128 As Long
  loc_11A8226: On Error Goto loc_11A8639
  loc_11A822B: var_96 = 0
  loc_11A8237: If (CInt(arg_10) = 1) Then
  loc_11A825F:   For var_B4 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_98 = var_B4 'Integer
  loc_11A8268:     var_9A = var_98
  loc_11A826F:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A8274:     var_E4 = 2
  loc_11A82A3:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11A82AA:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A82AF:       var_E4 = 2
  loc_11A82D2:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11A82D7:       var_128 = 1
  loc_11A8301:       Call Proc_299_24_F5FC68(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)))
  loc_11A831D:       var_96 = &HFF
  loc_11A8345:       For var_154 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_154 'Integer
  loc_11A835E:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11A8379:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11A8394:         Me.GridSel.CellBackColor = &H80FF
  loc_11A839F:       Next var_154 'Integer
  loc_11A83A4:     End If
  loc_11A83A7:   Next var_B4 'Integer
  loc_11A83AC:   Exit For
  loc_11A83AF: End If
  loc_11A83B7: CRefVarAry
  loc_11A83BF: For var_158 = 0 To CInt(UBound(arg_C, 1)): var_98 = var_158 'Integer
  loc_11A83E0:   If (arg_C(var_98) = 0) Then
  loc_11A83E3:     GoTo loc_11A8571
  loc_11A83E6:   End If
  loc_11A83F7:   var_9A = CInt(arg_C(var_98))
  loc_11A8401:   var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A8406:   var_E4 = 0
  loc_11A8435:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_11A843C:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A8441:     var_E4 = 2
  loc_11A8470:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11A8477:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A847C:       var_E4 = 2
  loc_11A849F:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11A84A4:       var_128 = 1
  loc_11A84CE:       Call Proc_299_24_F5FC68(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)))
  loc_11A84EA:       var_96 = &HFF
  loc_11A8512:       For var_15C = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_15C 'Integer
  loc_11A852B:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11A8546:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11A8561:         Me.GridSel.CellBackColor = &H80FF
  loc_11A856C:       Next var_15C 'Integer
  loc_11A8571:       ' Referenced from: 11A83E3
  loc_11A8571:     End If
  loc_11A8571:   End If
  loc_11A8574: Next var_158 'Integer
  loc_11A8579: ' Referenced from: 11A83AC
  loc_11A8589: If ((var_96 = 0) And (CInt(arg_10) = 0)) Then
  loc_11A858C:   var_C4 = 0
  loc_11A8595:   var_E4 = 1
  loc_11A85A8:   var_B0 = Me.GridSel.TextMatrix)
  loc_11A85D0:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_16C, var_17C, var_18C)
  loc_11A85FB:   Me.GridSel.Row = 1
  loc_11A8603:   var_C4 = 0
  loc_11A8616:   Me.GridSel.Col = var_C4
  loc_11A8622:   Set var_A0 = Me.GridSel
  loc_11A8633: End If
  loc_11A8633: Proc_299_27_11A8644 = GridSel.DispID_8001
  loc_11A8639: ' Referenced from: 11A8226
  loc_11A8639: Proc_6_60_E62BC4(var_B0, var_E4)
  loc_11A863E: Proc_299_27_11A8644 = var_C4
End Sub

Public Sub Proc_299_28_EB917C
  'Data Table: 4A2FEC
  loc_EB90F4: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EB9106:   Me.DGRestType.Visible = False
  loc_EB910E: End If
  loc_EB912A: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_EB913C:   Me.DGPayType.Visible = False
  loc_EB9144: End If
  loc_EB9160: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB9172:   Me.FGPoint.Visible = False
  loc_EB917A: End If
  loc_EB917A: Exit Sub
  loc_EB917B: Exit Sub
End Sub
