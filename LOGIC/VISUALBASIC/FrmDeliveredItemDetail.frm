VERSION 5.00
Begin VB.Form FrmDeliveredItemDetail
  Caption = "Not Delivered Item"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  Begin BtnEnh CmdFill
    Left = 6945
    Top = 585
    Width = 1230
    Height = 900
    TabIndex = 15
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 585
    Visible = 0   'False
    TabIndex = 14
  End
  Begin CheckBox Check1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 855
    Top = 1935
    Width = 450
    Height = 225
    TabIndex = 13
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Frame FrmList
    Left = 11145
    Top = 630
    Width = 1860
    Height = 1815
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 15
      Top = 75
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 12
    End
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2565
    Top = 690
    Width = 1635
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
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
    BackColor = &HFFFFFF&
    Left = 2565
    Top = 1200
    Width = 1635
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 15
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
    BackColor = &HFFFFFF&
    Left = 2565
    Top = 945
    Width = 3345
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin TextBox TxtSearch
    BackColor = &HE0E0E0&
    Left = 9390
    Top = 2250
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin DataGrid DGRestType
    Left = 13140
    Top = 540
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MSFlexGrid FGPoint
    Left = 8595
    Top = 600
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 6
  End
  Begin MSHFlexGrid GridSel
    Left = 720
    Top = 1905
    Width = 15000
    Height = 6000
    TabIndex = 3
  End
  Begin BtnEnh CmdSave
    Left = 5520
    Top = 8250
    Width = 1530
    Height = 570
    TabIndex = 16
  End
  Begin BtnEnh CmdExit
    Left = 7185
    Top = 8250
    Width = 1530
    Height = 570
    TabIndex = 17
  End
  Begin Label LblName
    Caption = "Status"
    Index = 1
    ForeColor = &H0&
    Left = 945
    Top = 1215
    Width = 525
    Height = 225
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "For Date"
    Index = 0
    ForeColor = &H0&
    Left = 945
    Top = 690
    Width = 705
    Height = 225
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
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
    Left = 945
    Top = 945
    Width = 1035
    Height = 225
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Left = 780
    Top = 7920
    Width = 7680
    Height = 270
    TabIndex = 7
    BackStyle = 0 'Transparent
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
End

Attribute VB_Name = "FrmDeliveredItemDetail"

Private global_52 As Integer

Private Sub CmdExit_UnknownEvent_9 'E1A740
  'Data Table: 46B0E8
  Dim arg_70FF As Double
  loc_E1A735: Me.Global.Unload Me
  loc_E1A73D: Exit Sub
  loc_E1A73E: arg_70FF = 
End Sub

Private Sub Txt_GotFocus(Index As Integer) '120DC40
  'Data Table: 46B0E8
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim Me As Variant
  Dim var_88 As DataGrid
  loc_120D790: On Error Goto loc_120DBFB
  loc_120D79D: Set var_88 = Me.Txt
  loc_120D7A3: Call 0.Method_Txt_GotFocus0 (Index)
  loc_120D7B1: Proc_6_74_E226B0(var_8C)
  loc_120D7BD: Call Proc_209_22_EB815C(var_8C)
  loc_120D7C5: var_92 = Index
  loc_120D7D0: If (var_92 = CInt(0)) Then
  loc_120D7E0:   Set var_88 = Me.Txt
  loc_120D7E6:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120D801:   Set var_90 = Me.Txt
  loc_120D807:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_120D80F:   var_9C.SelLength = Len(var_8C.Text)
  loc_120D82F:   Set var_88 = Me.Txt
  loc_120D835:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120D83D:   var_98 = var_8C.Text
  loc_120D84F:   Set var_90 = Me.Txt
  loc_120D855:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_120D85D:   var_9C.Tag = var_98
  loc_120D873: Else
  loc_120D87B:   If (var_92 = CInt(1)) Then
  loc_120D88C:     Set var_88 = Me.Txt
  loc_120D892:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_120D8B1:     Me.DGRestType.Left = CVar(var_8C.Left)
  loc_120D8CD:     Set var_90 = Me.Txt
  loc_120D8D3:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_9C)
  loc_120D8EE:     Set var_88 = Me.Txt
  loc_120D8F4:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_120D90C:     var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_120D91B:     Me.DGRestType.Top = CVar(var_8C.Left)
  loc_120D93C:     Me.Filter = 0
  loc_120D94D:     Me.Filter = "RestType<>'Kitchen'"
  loc_120D969:     If (Me.RecordCount > 0) Then
  loc_120D977:       Set var_8C = Me.FGPoint
  loc_120D98F:       Proc_6_137_1193554(Me.DGRestType, global_64, Index)
  loc_120D99D:     End If
  loc_120D9EB:     Set var_88 = Me.Txt
  loc_120D9F1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_120D9F9:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_120DA11:     If (var_8C Or (var_98 = vbNullString)) Then
  loc_120DA14:       Exit Sub
  loc_120DA15:     End If
  loc_120DA22:     Set var_88 = Me.Txt
  loc_120DA28:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120DA30:     var_98 = var_8C.Text
  loc_120DA42:     var_B0 = "Name"
  loc_120DA7D:     If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_120DA86:       Me.MoveFirst
  loc_120DAA9:       Set var_88 = Me.Txt
  loc_120DAAF:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_120DAB7:       0 = var_8C.Text
  loc_120DAD0:       Me.Find 1 & var_98 & "'", var_B0, var_92
  loc_120DAE5:     End If
  loc_120DAF8:     Me.DGRestType.Tag = CVar(CStr(Index))
  loc_120DB06:   Else
  loc_120DB0E:     If (var_92 = CInt(2)) Then
  loc_120DB1E:       ReDim var_108(0 To 1)
  loc_120DB35:       var_108(0) = "Pending"
  loc_120DB44:       var_108(1) = "All"
  loc_120DB5B:       global_80 = Array(var_108)
  loc_120DB66:       Set var_9C = Me.ListView
  loc_120DB81:       Set var_8C = Me.Txt
  loc_120DB9B:       Set global_96 = Proc_6_66_EFF8FC(var_9C, var_8C, Index)
  loc_120DBB9:       Set var_88 = Me.Txt
  loc_120DBBF:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_120DBC7:       global_80 = var_8C.Text
  loc_120DBD9:       Set var_90 = Me.Txt
  loc_120DBDF:       Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_98)
  loc_120DBE7:       var_9C.Tag = 2
  loc_120DBFA:     End If
  loc_120DBFA:   End If
  loc_120DBFA: End If
  loc_120DBFA: Exit Sub
  loc_120DBFB: ' Referenced from: 120D790
  loc_120DC03: Set var_88 = Err()
  loc_120DC09: Call 0.Method_arg_2C (var_98)
  loc_120DC2A: MsgBox(CVar(var_98), &H40, "Information", var_FC, var_128)
  loc_120DC3D: Exit Sub
  loc_120DC3E: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10DADE8
  'Data Table: 46B0E8
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As DataGrid
  loc_10DAB06: If (CLng(Shift) = &H1B) Then
  loc_10DAB09:   Call Proc_209_22_EB815C()
  loc_10DAB0E:   Exit Sub
  loc_10DAB0F: End If
  loc_10DAB12: var_88 = KeyCode
  loc_10DAB1D: If (var_88 = CInt(1)) Then
  loc_10DAB2B:   Set var_A8 = Me.Txt
  loc_10DAB3D:   Set var_9C = Me.FGPoint
  loc_10DAB48:   Set var_98 = Nothing
  loc_10DAB76:   Proc_6_69_134A198(Me.DGRestType, var_A8, KeyCode, global_64, Shift, 0)
  loc_10DAB95:   var_B0 = Me.RecordCount
  loc_10DABE5:   If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10DABEC:     Set var_98 = Me.DGRestType
  loc_10DABF3:     Set var_90 = Me.FGPoint
  loc_10DAC0B:     Proc_6_138_106D6F8(var_98, global_64, KeyCode, var_90, 1)
  loc_10DAC19:   End If
  loc_10DAC1C: Else
  loc_10DAC24:   If (var_88 = CInt(2)) Then
  loc_10DAC49:     Set var_8C = Me.Txt
  loc_10DAC4F:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, var_98)
  loc_10DAC57:     var_9C = var_90.Left
  loc_10DAC69:     Set var_98 = Me.Txt
  loc_10DAC6F:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B4)
  loc_10DAC77:     0 = var_9C.Top
  loc_10DAC89:     Set var_A4 = Me.Txt
  loc_10DAC8F:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_10DAC97:     var_B8 = var_A8.Height
  loc_10DACA9:     Set var_AC = Me.Txt
  loc_10DACAF:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_10DACB7:     var_C0 = var_BC.Width
  loc_10DAD03:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_10DAD27:   End If
  loc_10DAD27: End If
  loc_10DAD60: If ((CBool(Me.DGRestType.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_10DAD81:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_10DAD8A:     Call Txt_Validate(KeyCode)
  loc_10DAD95:     If (var_86 = &HFF) Then
  loc_10DAD98:       Exit Sub
  loc_10DAD99:     End If
  loc_10DAD9F:     Proc_6_75_E527CC(Shift, arg_14, var_86, CInt(var_B0))
  loc_10DADA7:   Else
  loc_10DADBC:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10DADC5:       Proc_6_75_E527CC(Shift, arg_14, CInt(((var_B4 + var_B8) + CDbl(&H19))))
  loc_10DADCD:     Else
  loc_10DADD7:       If (CLng(Shift) = &H26) Then
  loc_10DADE0:         Proc_6_76_E52838(Shift, arg_14, CInt(var_C0))
  loc_10DADE5:       End If
  loc_10DADE5:     End If
  loc_10DADE5:   End If
  loc_10DADE5: End If
  loc_10DADE5: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE1DE0
  'Data Table: 46B0E8
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EE1D2B: Proc_6_58_E054C0(arg_10)
  loc_EE1D36: Proc_6_133_E7EF78(var_94)
  loc_EE1D53: If (KeyAscii = CInt(1)) Then
  loc_EE1D72:   If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EE1D9F:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, CInt(Me.DGRestType.Visible), "Name")
  loc_EE1DD1:     Proc_6_138_106D6F8(Me.DGRestType, global_64, KeyAscii, Me.FGPoint)
  loc_EE1DDF:   End If
  loc_EE1DDF: End If
  loc_EE1DDF: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E88728
  'Data Table: 46B0E8
  loc_E886CA: If (KeyCode = CInt(2)) Then
  loc_E886E8:   If (Me.FrmList.Visible = &HFF) Then
  loc_E88717:     Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode)
  loc_E88727:   End If
  loc_E88727: End If
  loc_E88727: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B68C
  'Data Table: 46B0E8
  loc_E4B66A: Set var_88 = Me.Txt
  loc_E4B670: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B67E: Proc_6_73_E22704(var_8C)
  loc_E4B68A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '107DF80
  'Data Table: 46B0E8
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As TextBox
  loc_107DCEC: On Error Goto loc_107DF3B
  loc_107DCF2: var_86 = Cancel
  loc_107DCFD: If (var_86 = CInt(0)) Then
  loc_107DD0A:   Set var_8C = Me.Txt
  loc_107DD10:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107DD30:   Set var_98 = Me.Txt
  loc_107DD36:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_107DD3E:   var_9C.Text = Proc_6_33_1512840(var_90)
  loc_107DD54: Else
  loc_107DD5C:   If (var_86 = CInt(1)) Then
  loc_107DD6C:     Set var_8C = Me.Txt
  loc_107DD72:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107DD91:     If (var_90.Text <> vbNullString) Then
  loc_107DDCF:       Set var_94 = Me.Txt
  loc_107DDD5:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_107DDDD:       var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_107DE10:       var_90 = Me.Fields.Item("Code")
  loc_107DE2E:       Set var_94 = Me.Txt
  loc_107DE34:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_107DE3C:       var_98.Tag = CStr(var_90.Value)
  loc_107DE55:     Else
  loc_107DE62:       Set var_8C = Me.Txt
  loc_107DE68:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107DE70:       var_90.Text = vbNullString
  loc_107DE89:       Set var_8C = Me.Txt
  loc_107DE8F:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107DE97:       var_90.Tag = vbNullString
  loc_107DEA3:     End If
  loc_107DEA6:   Else
  loc_107DEAE:     If (var_86 = CInt(2)) Then
  loc_107DEBE:       Set var_8C = Me.Txt
  loc_107DEC4:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107DEE3:       If (var_90.Text <> vbNullString) Then
  loc_107DF04:         var_A0 = Me.ListView.SelectedItem.Text
  loc_107DF16:         Set var_94 = Me.Txt
  loc_107DF1C:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_107DF24:         var_98.Text = var_A0
  loc_107DF3A:       End If
  loc_107DF3A:     End If
  loc_107DF3A:   End If
  loc_107DF3A: End If
  loc_107DF3A: Exit Sub
  loc_107DF3B: ' Referenced from: 107DCEC
  loc_107DF43: Set var_8C = Err()
  loc_107DF49: Call 0.Method_arg_2C (var_A0)
  loc_107DF6A: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_107DF7D: Exit Sub
  loc_107DF7E: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A 'FDA454
  'Data Table: 46B0E8
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FDA2A2: If (Cancel = &HD) Then
  loc_FDA2B3:   Proc_303_0_FB9B68("	")
  loc_FDA2BB: End If
  loc_FDA2DA: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FDA2DD:   Exit Sub
  loc_FDA2DE: End If
  loc_FDA308: If ((CLng(Cancel) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FDA31B:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FDA335:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FDA350:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDA355:   var_D4 = 0
  loc_FDA387:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDA38C:   var_19C = 0
  loc_FDA3C7:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FDA3CF:   Set var_1D0 = Me.GridSel
  loc_FDA3D5:   LateIdCallSt
  loc_FDA40F:   var_86 = CInt((UBound(global_56, 1) + 1))
  loc_FDA421:   ReDim Preserve global_56(0 To CLng(var_86))
  loc_FDA449:   global_56(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FDA450: End If
  loc_FDA450: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5CEA0
  'Data Table: 46B0E8
  loc_E5CE7B: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5CE7E:   Exit Sub
  loc_E5CE7F: End If
  loc_E5CE96: global_52 = CInt(CLng(Me.GridSel.Row))
  loc_E5CE9F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1025EE8
  'Data Table: 46B0E8
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_1025CE9: If ((CLng(Me.GridSel.Col) <> 0) Or (global_52 = 0)) Then
  loc_1025CEC:   Exit Sub
  loc_1025CED: End If
  loc_1025D49: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_1025D4C:   Exit Sub
  loc_1025D4D: End If
  loc_1025D7C: For var_BA = global_52 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_1025D95:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1025DB0:   Me.GridSel.Col = 0
  loc_1025DC8:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1025DE2:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1025DEE:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1025DF3:   var_EC = 0
  loc_1025E16:   var_160 = CVar(CLng(var_88)) 'Long
  loc_1025E1B:   var_180 = 0
  loc_1025E56:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_1025E5E:   Set var_A0 = Me.GridSel
  loc_1025E64:   LateIdCallSt
  loc_1025E96:   var_86 = CInt((UBound(global_56, 1) + 1))
  loc_1025EA8:   ReDim Preserve global_56(0 To CLng(var_86))
  loc_1025ED0:   global_56(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_1025EDA: Next var_BA 'Integer
  loc_1025EE4: global_52 = 0
  loc_1025EE7: Exit Sub
End Sub

Private Sub CmdSave_UnknownEvent_9 'EE0940
  'Data Table: 46B0E8
  Dim var_AC As Label
  Dim var_86 As Integer
  Dim unk_46B102 As Connection15
  loc_EE087C: On Error Goto loc_EE0926
  loc_EE0888: Set var_AC = Me.CmdSave
  loc_EE088E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_EE08A3: Me.Label1.Caption = "Saving..."
  loc_EE08B5: Me.Label1.Refresh
  loc_EE08BF: var_86 = &HFF
  loc_EE08CB: unk_46B102.BeginTrans var_B0
  loc_EE08E6: Call Proc_209_21_10F0778(global_56, CByte(1))
  loc_EE08F4: unk_46B102.CommitTrans
  loc_EE08FB: var_86 = 0
  loc_EE090B: Me.Label1.Caption = "Save Completed."
  loc_EE091D: Me.Label1.Refresh
  loc_EE0925: Exit Sub
  loc_EE0926: ' Referenced from: EE087C
  loc_EE092C: If (var_86 = &HFF) Then
  loc_EE0935:   unk_46B102.RollbackTrans
  loc_EE093A: End If
  loc_EE093A: Proc_6_60_E62BC4(var_86, var_C4)
  loc_EE093F: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_9 'F42684
  'Data Table: 46B0E8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4257B: Me.DGRestType.Visible = False
  loc_F4259A: If (Me.RecordCount > 0) Then
  loc_F425D9:   Set var_B4 = Me.Txt
  loc_F425DF:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F425E7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4261A:   var_B0 = Me.Fields.Item("Code")
  loc_F42639:   Set var_B4 = Me.Txt
  loc_F4263F:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F42647:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4265D: End If
  loc_F42668: Set var_A8 = Me.Txt
  loc_F4266E: Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1))
  loc_F42676: var_B0.SetFocus
  loc_F42682: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_1F 'E6D924
  'Data Table: 46B0E8
  loc_E6D8E2: Proc_6_153_E91194(Me.DGRestType, arg_14)
  loc_E6D8F9: Set var_8C = Me.FGPoint
  loc_E6D915: Proc_6_138_106D6F8(Me.DGRestType, global_64, CInt(1))
  loc_E6D923: Exit Sub
End Sub

Private Sub CmdFill_UnknownEvent_9 '10465A8
  'Data Table: 46B0E8
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As Variant
  loc_104635C: Call Proc_209_22_EB815C()
  loc_104636C: Set var_88 = Me.Txt
  loc_1046372: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_104639B: If (Proc_6_27_EA565C(var_8C, "From Date") = 0) Then
  loc_104639E:   Exit Sub
  loc_104639F: End If
  loc_10463AD: Set var_88 = Me.Txt
  loc_10463B3: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_8C)
  loc_10463D7: Set var_90 = Me.Txt
  loc_10463DD: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_98, var_9C)
  loc_10463E5: (CDate(var_8C.Text) > MemVar_1F920FC) = var_98.Text
  loc_1046406: If (var_8C Or (CDate(var_9C) < MemVar_1F920F4)) Then
  loc_1046422:   MsgBox("ForDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_104643D:   Set var_88 = Me.Txt
  loc_1046443:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_104644B:   var_8C.SetFocus
  loc_1046457:   Exit Sub
  loc_1046458: End If
  loc_1046463: Set var_88 = Me.Txt
  loc_1046469: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_8C)
  loc_1046492: If (Proc_6_27_EA565C(var_8C, "Outlet") = 0) Then
  loc_1046495:   Exit Sub
  loc_1046496: End If
  loc_10464A1: Set var_88 = Me.Txt
  loc_10464A7: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(2), var_8C)
  loc_10464D0: If (Proc_6_27_EA565C(var_8C, "Status") = 0) Then
  loc_10464D3:   Exit Sub
  loc_10464D4: End If
  loc_10464DD: Set var_88 = Me.CmdFill
  loc_10464E3: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000D(False)
  loc_10464F8: Me.Label1.Caption = "Processing..."
  loc_104650A: Me.Label1.Refresh
  loc_1046512: Call Proc_209_18_12AD63C(var_8C)
  loc_1046517: Call Proc_209_19_137F1F4()
  loc_104652F: Me.GridSel.Row = 1
  loc_104654A: Me.GridSel.Col = 0
  loc_1046556: Set var_88 = Me.GridSel
  loc_1046574: Me.Label1.Caption = vbNullString
  loc_1046586: Me.Label1.Refresh
  loc_1046596: Set var_88 = Me.CmdFill
  loc_104659C: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000D(True)
  loc_10465A4: Exit Sub
  loc_10465A5: CExtInstUnk
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3A0F4
  'Data Table: 46B0E8
  loc_E3A0E8: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_E3A0EB:   Call DGRestType_UnknownEvent_9()
  loc_E3A0F0: End If
  loc_E3A0F0: Exit Sub
End Sub

Private Sub Form_Load() 'EF48D4
  'Data Table: 46B0E8
  Dim var_94 As String
  Dim unk_46B102 As Connection15
  loc_EF4810: On Error Goto loc_EF48CC
  loc_EF483C: var_94 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where Code<>'" & MemVar_1F92078 & "RS' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_EF4845: unk_46B102.Execute var_94, var_B4, -1
  loc_EF4878: CVarUnk
  loc_EF487D: VerifyVarObj
  loc_EF4883: Set var_B8 = Me.DGRestType
  loc_EF4889: LateIdStAd
  loc_EF48A0: Set var_B8 = Me.CmdSave
  loc_EF48A6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_EF48AE: Call Proc_209_18_12AD63C(var_B8, var_B8)
  loc_EF48BA: Call 0.Method_arg_7C (CDbl(0))
  loc_EF48C6: Call 0.Method_arg_74 (CDbl(0))
  loc_EF48CB: Exit Sub
  loc_EF48CC: ' Referenced from: EF4810
  loc_EF48CC: Proc_6_60_E62BC4(var_B8)
  loc_EF48D1: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E288C0
  'Data Table: 46B0E8
  Dim arg_19FF As Double
  loc_E288A3: Set global_60 = Nothing
  loc_E288B5: Set global_64 = Nothing
  loc_E288BC: Exit Sub
  loc_E288BD: arg_19FF = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28864
  'Data Table: 46B0E8
  loc_E2883C: On Error Goto loc_E2885B
  loc_E28853: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2885B: ' Referenced from: E2883C
  loc_E2885B: Proc_6_60_E62BC4(Shift)
  loc_E28860: Exit Sub
  loc_E28861: var_92 = 0
End Sub

Public Sub Proc_209_18_12AD63C
  'Data Table: 46B0E8
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_12AD016: Me.GridSel.Rows = 1
  loc_12AD02A: Me.GridSel.Cols = &HA
  loc_12AD02F: var_98 = 0
  loc_12AD03B: var_BC = CVar(CLng(0)) 'Long
  loc_12AD040: var_DC = "O"
  loc_12AD049: LateIdCallSt
  loc_12AD054: var_98 = CVar(CLng(0)) 'Long
  loc_12AD059: var_BC = &H258
  loc_12AD065: LateIdCallSt
  loc_12AD06D: var_98 = 0
  loc_12AD079: var_BC = CVar(CLng(1)) 'Long
  loc_12AD07E: var_DC = "Bill No"
  loc_12AD087: LateIdCallSt
  loc_12AD092: var_98 = CVar(CLng(1)) 'Long
  loc_12AD09D: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD0A4: LateIdCallSt
  loc_12AD0AF: var_98 = CVar(CLng(1)) 'Long
  loc_12AD0BA: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD0C1: LateIdCallSt
  loc_12AD0CC: var_98 = CVar(CLng(1)) 'Long
  loc_12AD0D1: var_BC = &H4B0
  loc_12AD0DD: LateIdCallSt
  loc_12AD0E5: var_98 = 0
  loc_12AD0F1: var_BC = CVar(CLng(2)) 'Long
  loc_12AD0F6: var_DC = "DocId"
  loc_12AD0FF: LateIdCallSt
  loc_12AD10A: var_98 = CVar(CLng(2)) 'Long
  loc_12AD115: var_BC = CVar(CInt(7)) 'Integer
  loc_12AD11C: LateIdCallSt
  loc_12AD127: var_98 = CVar(CLng(2)) 'Long
  loc_12AD132: var_BC = CVar(CInt(7)) 'Integer
  loc_12AD139: LateIdCallSt
  loc_12AD144: var_98 = CVar(CLng(2)) 'Long
  loc_12AD149: var_BC = 0
  loc_12AD155: LateIdCallSt
  loc_12AD15D: var_98 = 0
  loc_12AD169: var_BC = CVar(CLng(3)) 'Long
  loc_12AD16E: var_DC = "Bill Date"
  loc_12AD177: LateIdCallSt
  loc_12AD182: var_98 = CVar(CLng(3)) 'Long
  loc_12AD18D: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD194: LateIdCallSt
  loc_12AD19F: var_98 = CVar(CLng(3)) 'Long
  loc_12AD1AA: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD1B1: LateIdCallSt
  loc_12AD1BC: var_98 = CVar(CLng(3)) 'Long
  loc_12AD1C1: var_BC = &H4B0
  loc_12AD1CD: LateIdCallSt
  loc_12AD1D5: var_98 = 0
  loc_12AD1E1: var_BC = CVar(CLng(4)) 'Long
  loc_12AD1E6: var_DC = "Bill Amount"
  loc_12AD1EF: LateIdCallSt
  loc_12AD1FA: var_98 = CVar(CLng(4)) 'Long
  loc_12AD205: var_BC = CVar(CInt(7)) 'Integer
  loc_12AD20C: LateIdCallSt
  loc_12AD217: var_98 = CVar(CLng(4)) 'Long
  loc_12AD222: var_BC = CVar(CInt(7)) 'Integer
  loc_12AD229: LateIdCallSt
  loc_12AD234: var_98 = CVar(CLng(4)) 'Long
  loc_12AD239: var_BC = &H4B0
  loc_12AD245: LateIdCallSt
  loc_12AD24D: var_98 = 0
  loc_12AD259: var_BC = CVar(CLng(5)) 'Long
  loc_12AD25E: var_DC = "Token No"
  loc_12AD267: LateIdCallSt
  loc_12AD272: var_98 = CVar(CLng(5)) 'Long
  loc_12AD27D: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD284: LateIdCallSt
  loc_12AD28F: var_98 = CVar(CLng(5)) 'Long
  loc_12AD29A: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD2A1: LateIdCallSt
  loc_12AD2AC: var_98 = CVar(CLng(5)) 'Long
  loc_12AD2B1: var_BC = &H4B0
  loc_12AD2BD: LateIdCallSt
  loc_12AD2C5: var_98 = 0
  loc_12AD2D1: var_BC = CVar(CLng(6)) 'Long
  loc_12AD2D6: var_DC = "Payment Mode"
  loc_12AD2DF: LateIdCallSt
  loc_12AD2EA: var_98 = CVar(CLng(6)) 'Long
  loc_12AD2F5: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD2FC: LateIdCallSt
  loc_12AD307: var_98 = CVar(CLng(6)) 'Long
  loc_12AD312: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD319: LateIdCallSt
  loc_12AD324: var_98 = CVar(CLng(6)) 'Long
  loc_12AD329: var_BC = &H640
  loc_12AD335: LateIdCallSt
  loc_12AD33D: var_98 = 0
  loc_12AD349: var_BC = CVar(CLng(7)) 'Long
  loc_12AD34E: var_DC = "Delivered On"
  loc_12AD357: LateIdCallSt
  loc_12AD362: var_98 = CVar(CLng(7)) 'Long
  loc_12AD36D: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD374: LateIdCallSt
  loc_12AD37F: var_98 = CVar(CLng(7)) 'Long
  loc_12AD38A: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD391: LateIdCallSt
  loc_12AD39C: var_98 = CVar(CLng(7)) 'Long
  loc_12AD3A1: var_BC = &H6A4
  loc_12AD3AD: LateIdCallSt
  loc_12AD3B5: var_98 = 0
  loc_12AD3C1: var_BC = CVar(CLng(8)) 'Long
  loc_12AD3C6: var_DC = "Delivery Boy"
  loc_12AD3CF: LateIdCallSt
  loc_12AD3DA: var_98 = CVar(CLng(8)) 'Long
  loc_12AD3E5: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD3EC: LateIdCallSt
  loc_12AD3F7: var_98 = CVar(CLng(8)) 'Long
  loc_12AD402: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD409: LateIdCallSt
  loc_12AD414: var_98 = CVar(CLng(8)) 'Long
  loc_12AD419: var_BC = &H960
  loc_12AD425: LateIdCallSt
  loc_12AD42D: var_98 = 0
  loc_12AD439: var_BC = CVar(CLng(9)) 'Long
  loc_12AD43E: var_DC = "Remark"
  loc_12AD447: LateIdCallSt
  loc_12AD452: var_98 = CVar(CLng(9)) 'Long
  loc_12AD45D: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD464: LateIdCallSt
  loc_12AD46F: var_98 = CVar(CLng(9)) 'Long
  loc_12AD47A: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD481: LateIdCallSt
  loc_12AD48C: var_98 = CVar(CLng(9)) 'Long
  loc_12AD491: var_BC = &HDAC
  loc_12AD49D: LateIdCallSt
  loc_12AD4A5: var_98 = vbNullString
  loc_12AD4AF: Set var_AC = Me.GridSel
  loc_12AD4D3: Me.GridSel.FixedRows = 1
  loc_12AD4DD: Set var_88 = Nothing 
  loc_12AD4F1: ReDim Preserve global_56(0 To 0)
  loc_12AD508: global_56(0) = 0
  loc_12AD51C: Me.GridSel.Height = CVar(CDbl(6000))
  loc_12AD537: Me.GridSel.Width = CVar(CDbl(15000))
  loc_12AD53F: var_98 = 0
  loc_12AD570: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H1E))
  loc_12AD57F: var_98 = 0
  loc_12AD5B0: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &H1E))
  loc_12AD5E1: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&HF))
  loc_12AD612: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&HF))
  loc_12AD631: Me.Check1.Value = CInt(0)
  loc_12AD639: Exit Sub
End Sub

Public Sub Proc_209_19_137F1F4
  'Data Table: 46B0E8
  Dim var_C8 As Variant
  Dim var_DC As String
  Dim var_D8 As Variant
  Dim var_104 As Variant
  Dim var_10C As TextBox
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim unk_46B102 As Connection15
  Dim var_90 As Recordset15
  Dim var_94 As Variant
  Dim var_B8 As Variant
  Dim var_98 As Variant
  Dim var_88 As Recordset15
  Dim var_108 As MSHFlexGrid
  Dim var_1A4 As Variant
  Dim var_1E4 As Variant
  loc_137E997: Set var_94 = Me.Txt
  loc_137E99D: Call 0.Method_Proc_209_19_137F1F40 (CInt(2))
  loc_137E9AC: var_B8 = Trim(CVar(var_98))
  loc_137E9C6: If (var_B8 = "Pending") Then
  loc_137E9CC:   var_8C = " DeliveredYN <> 'Y' And "
  loc_137E9CF: End If
  loc_137E9E3: var_DC = "Select S.DocId,P.PayType,DB.Name DeliBoy,AD.Ddate,AD.Remark From Sale1 S Left Join PayCharge P on P.DocId=S.DocId Left Join AssignDelivery AD On AD.DocId=S.DocId Left Join DeliveryBoy DB On AD.DeliBoy = DB.Code Where IsNull(P.PayType,'') Not In('PPOS','IPOS') And IsNull(P.PayCode,'') Not In('" & MemVar_1F92078
  loc_137EA06: Set var_94 = Me.Txt
  loc_137EA0C: Call 0.Method_Proc_209_19_137F1F40 (CInt(0), var_98, CVar(var_DC & "ROOM','" & MemVar_1F92078 & "TOUT') And S.VDate ="), var_1B4)
  loc_137EA1B: Proc_6_7_F25D88(var_B8, CVar(var_98), -1)
  loc_137EA2C: var_104 = var_1B8 & var_B8 & " And S.RestCode='" 
  loc_137EA3E: Set var_108 = Me.Txt
  loc_137EA44: Call 0.Method_Proc_209_19_137F1F40 (CInt(1), var_10C, var_110)
  loc_137EA4C: var_104 = var_10C.Tag
  loc_137EA81: unk_46B102.Execute CStr(var_98 & CVar(var_110) & "' And S.Logsite_Code='" & CVar(MemVar_1F92078) & "' Order by S.Vno"), , 
  loc_137EAD2: If (var_1B8.RecordCount = 0) Then
  loc_137EAE8:   Me.GridSel.Rows = 2
  loc_137EAF9:   Set var_94 = Me.CmdSave
  loc_137EAFF:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_137EB0C:   Set var_90 = Nothing
  loc_137EB0F:   Exit Sub
  loc_137EB13: Else
  loc_137EB1B:   Set var_94 = Me.CmdSave
  loc_137EB21:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_137EB29: End If
  loc_137EB3C: Me.GridSel.Row = 1
  loc_137EB4C: Set var_94 = Me.CmdSave
  loc_137EB52: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_137EB5A: ' Referenced from: 137F1CC
  loc_137EB69: If Not(var_90.EOF) Then
  loc_137EBB4:   var_D8 = CVar("Select Vno,Vdate,NetAmt as BillAmount,DocId,TokenNo,DeliveredYN From Sale1 Where " & var_8C & " DocId='") & var_90.Fields.Item(0).Value 
  loc_137EBCB:   unk_46B102.Execute CStr(var_D8 & "'"), var_104, -1
  loc_137EBD6:   Set var_88 = var_108
  loc_137EC0A:   If (var_88.RecordCount = 1) Then
  loc_137EC11:     Set var_1C4 = Me.GridSel
  loc_137EC14:     var_C8 = vbNullString
  loc_137EC63:     var_1A4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_137EC6B:     var_1E4 = CVar(CLng(0)) 'Long
  loc_137ECA1:     var_120 = CVar(CStr(IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("DeliveredYN")), GridSel.DispID_10000) = "Y"), "ü", vbNullString))) 'String
  loc_137ECA8:     LateIdCallSt
  loc_137ECE2:     var_140 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_137ECEA:     var_180 = CVar(CLng(1)) 'Long
  loc_137ED1A:     var_D8 = CVar(CStr(var_88.Fields.Item("VNo").Value)) 'String
  loc_137ED21:     LateIdCallSt
  loc_137ED83:     var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_1C4, var_D8, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_137ED8A:     LateIdCallSt
  loc_137EDE0:     var_160 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_137EDE8:     var_1A4 = CVar(CLng(3)) 'Long
  loc_137EE05:     var_B8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VDate")), var_1C4, "dd/mmm/yyyy", var_1C4, var_120)) 'String
  loc_137EE1B:     LateIdCallSt
  loc_137EE62:     Proc_6_39_E7C810(var_B8, CVar(var_88.Fields.Item("BillAmount")), var_1C4, CVar(CStr(Format(var_B8, "dd/mmm/yyyy"))), 1, 1)
  loc_137EE7A:     var_160 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_137EEB2:     LateIdCallSt
  loc_137EEF6:     Proc_6_39_E7C810(var_B8, CVar(var_88.Fields.Item("TokenNo")), var_1C4, CVar(CStr(Format(var_B8, "0.00"))), 1, 1, CVar(CLng(4)))
  loc_137EF46:     LateIdCallSt
  loc_137EFAC:     var_D8 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("PayType")), CVar(CLng(6)), CVar(CLng(Me.GridSel.Row)), var_1C4, CVar(CStr(Format(Me.GridSel.Row, "0"))), 1, 1)) 'String
  loc_137EFB3:     LateIdCallSt
  loc_137F009:     var_160 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_137F02E:     var_B8 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("DDate")), var_1C4, "dd/mmm/yyyy hh:nn", CVar(CLng(5)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_137F044:     LateIdCallSt
  loc_137F0AD:     var_D8 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("DeliBoy")), CVar(CLng(8)), CVar(CLng(Me.GridSel.Row)), var_1C4, CVar(CStr(Format(Me.GridSel.Row, "dd/mmm/yyyy hh:nn"))), 1, 1)) 'String
  loc_137F0B4:     LateIdCallSt
  loc_137F114:     var_D8 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Remark")), CVar(CLng(9)), CVar(CLng(Me.GridSel.Row)), var_1C4, var_D8, CVar(CLng(7)))) 'String
  loc_137F11B:     LateIdCallSt
  loc_137F135:     Set var_1C4 = Nothing 
  loc_137F14B:     Me.GridSel.Col = CVar(CLng(0))
  loc_137F163:     Me.GridSel.CellFontName = "WINGDINGS"
  loc_137F17D:     Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_137F18A:     Set var_88 = Nothing
  loc_137F1A6:     var_C8 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_137F1B5:     Me.GridSel.Row = CVar(CDbl(&HE))
  loc_137F1C4:   End If
  loc_137F1C7:   var_90.MoveNext
  loc_137F1CC:   GoTo loc_137EB5A
  loc_137F1CF: End If
  loc_137F1E2: Me.GridSel.FixedRows = 1
  loc_137F1EF: Set var_90 = Nothing
  loc_137F1F2: Exit Sub
End Sub

Public Sub Proc_209_20_EC8724(arg_C, arg_10) 'EC8724
  'Data Table: 46B0E8
  Dim unk_46B102 As Connection15
  loc_EC8701: unk_46B102.Execute CStr("Update Sale1 Set DeliveredYN='" & IIf((arg_10 = "ü"), "Y", "N") & "' Where DocID='" & CVar(arg_C) & "'"), var_188, -1
  loc_EC8721: Exit Sub
End Sub

Public Sub Proc_209_21_10F0778(arg_C, arg_10) '10F0778
  'Data Table: 46B0E8
  Dim var_96 As Integer
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_108 As Variant
  Dim var_128 As Variant
  loc_10F0462: On Error Goto loc_10F076B
  loc_10F0467: var_96 = 0
  loc_10F0473: If (CInt(arg_10) = 1) Then
  loc_10F049B:   For var_B4 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_98 = var_B4 'Integer
  loc_10F04A4:     var_9A = var_98
  loc_10F04AB:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F04B0:     var_E4 = 2
  loc_10F04DF:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_10F04E6:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F04EB:       var_E4 = 2
  loc_10F050E:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_10F0516:       var_128 = CVar(CLng(0)) 'Long
  loc_10F053C:       Call Proc_209_20_EC8724(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)))
  loc_10F0558:       var_96 = &HFF
  loc_10F055B:     End If
  loc_10F055E:   Next var_B4 'Integer
  loc_10F0566: Else
  loc_10F056E:   CRefVarAry
  loc_10F0576:   For var_154 = 0 To CInt(UBound(arg_C, 1)):   var_98 = var_154 'Integer
  loc_10F0597:     If (arg_C(var_98) = 0) Then
  loc_10F059A:       GoTo loc_10F06A3
  loc_10F059D:     End If
  loc_10F05AE:     var_9A = CInt(arg_C(var_98))
  loc_10F05B8:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F05BD:     var_E4 = 0
  loc_10F05EC:     If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_10F05F3:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F05F8:       var_E4 = 2
  loc_10F0627:       If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_10F062E:         var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F0633:         var_E4 = 2
  loc_10F0656:         var_108 = CVar(CLng(var_9A)) 'Long
  loc_10F065E:         var_128 = CVar(CLng(0)) 'Long
  loc_10F0684:         Call Proc_209_20_EC8724(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)))
  loc_10F06A0:         var_96 = &HFF
  loc_10F06A3:         ' Referenced from:   10F059A
  loc_10F06A3:       End If
  loc_10F06A3:     End If
  loc_10F06A6:   Next var_154 'Integer
  loc_10F06AB: End If
  loc_10F06BB: If ((var_96 = 0) And (CInt(arg_10) = 0)) Then
  loc_10F06BE:   var_C4 = 0
  loc_10F06C7:   var_E4 = 1
  loc_10F06DA:   var_B0 = Me.GridSel.TextMatrix)
  loc_10F0702:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_164, var_174, var_184)
  loc_10F072D:   Me.GridSel.Row = 1
  loc_10F0735:   var_C4 = 0
  loc_10F0748:   Me.GridSel.Col = var_C4
  loc_10F0754:   Set var_A0 = Me.GridSel
  loc_10F0765: End If
  loc_10F0765: Proc_209_21_10F0778 = GridSel.DispID_8001
  loc_10F076B: ' Referenced from: 10F0462
  loc_10F076B: Proc_6_60_E62BC4(var_B0, var_E4)
  loc_10F0770: Proc_209_21_10F0778 = var_C4
End Sub

Public Sub Proc_209_22_EB815C
  'Data Table: 46B0E8
  loc_EB80D8: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EB80EA:   Me.DGRestType.Visible = False
  loc_EB80F2: End If
  loc_EB810E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB8120:   Me.FGPoint.Visible = False
  loc_EB8128: End If
  loc_EB8143: If (Me.FrmList.Visible = &HFF) Then
  loc_EB8152:   Me.FrmList.Visible = False
  loc_EB815A: End If
  loc_EB815A: Exit Sub
End Sub
