VERSION 5.00
Begin VB.Form MemAutoSettleCardBalance
  Caption = "Auto Settle Card Balance"
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
  LockControls = -1  'True
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
    Visible = 0   'False
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
    Visible = 0   'False
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
    Visible = 0   'False
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
    Visible = 0   'False
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
    Visible = 0   'False
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
    Visible = 0   'False
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
    Visible = 0   'False
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

Attribute VB_Name = "MemAutoSettleCardBalance"

Private global_52 As Integer

Private Sub CmdExit_UnknownEvent_9 'E16B94
  'Data Table: 467800
  loc_E16B89: Me.Global.Unload Me
  loc_E16B91: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '120C2B4
  'Data Table: 467800
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim Me As Variant
  Dim var_88 As DataGrid
  loc_120BE04: On Error Goto loc_120C26F
  loc_120BE11: Set var_88 = Me.Txt
  loc_120BE17: Call 0.Method_Txt_GotFocus0 (Index)
  loc_120BE25: Proc_6_74_E226B0(var_8C)
  loc_120BE31: Call Proc_341_22_EB6B6C(var_8C)
  loc_120BE39: var_92 = Index
  loc_120BE44: If (var_92 = CInt(0)) Then
  loc_120BE54:   Set var_88 = Me.Txt
  loc_120BE5A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120BE75:   Set var_90 = Me.Txt
  loc_120BE7B:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_120BE83:   var_9C.SelLength = Len(var_8C.Text)
  loc_120BEA3:   Set var_88 = Me.Txt
  loc_120BEA9:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120BEB1:   var_98 = var_8C.Text
  loc_120BEC3:   Set var_90 = Me.Txt
  loc_120BEC9:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_120BED1:   var_9C.Tag = var_98
  loc_120BEE7: Else
  loc_120BEEF:   If (var_92 = CInt(1)) Then
  loc_120BF00:     Set var_88 = Me.Txt
  loc_120BF06:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_120BF25:     Me.DGRestType.Left = CVar(var_8C.Left)
  loc_120BF41:     Set var_90 = Me.Txt
  loc_120BF47:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_9C)
  loc_120BF62:     Set var_88 = Me.Txt
  loc_120BF68:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_120BF80:     var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_120BF8F:     Me.DGRestType.Top = CVar(var_8C.Left)
  loc_120BFB0:     Me.Filter = 0
  loc_120BFC1:     Me.Filter = "RestType<>'Kitchen'"
  loc_120BFDD:     If (Me.RecordCount > 0) Then
  loc_120BFEB:       Set var_8C = Me.FGPoint
  loc_120C003:       Proc_6_137_1193554(Me.DGRestType, global_64, Index)
  loc_120C011:     End If
  loc_120C05F:     Set var_88 = Me.Txt
  loc_120C065:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_120C06D:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_120C085:     If (var_8C Or (var_98 = vbNullString)) Then
  loc_120C088:       Exit Sub
  loc_120C089:     End If
  loc_120C096:     Set var_88 = Me.Txt
  loc_120C09C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120C0A4:     var_98 = var_8C.Text
  loc_120C0B6:     var_B0 = "Name"
  loc_120C0F1:     If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_120C0FA:       Me.MoveFirst
  loc_120C11D:       Set var_88 = Me.Txt
  loc_120C123:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_120C12B:       0 = var_8C.Text
  loc_120C144:       Me.Find 1 & var_98 & "'", var_B0, var_92
  loc_120C159:     End If
  loc_120C16C:     Me.DGRestType.Tag = CVar(CStr(Index))
  loc_120C17A:   Else
  loc_120C182:     If (var_92 = CInt(2)) Then
  loc_120C192:       ReDim var_108(0 To 1)
  loc_120C1A9:       var_108(0) = "Pending"
  loc_120C1B8:       var_108(1) = "All"
  loc_120C1CF:       global_80 = Array(var_108)
  loc_120C1DA:       Set var_9C = Me.ListView
  loc_120C1F5:       Set var_8C = Me.Txt
  loc_120C20F:       Set global_96 = Proc_6_66_EFF8FC(var_9C, var_8C, Index)
  loc_120C22D:       Set var_88 = Me.Txt
  loc_120C233:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_120C23B:       global_80 = var_8C.Text
  loc_120C24D:       Set var_90 = Me.Txt
  loc_120C253:       Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_98)
  loc_120C25B:       var_9C.Tag = 2
  loc_120C26E:     End If
  loc_120C26E:   End If
  loc_120C26E: End If
  loc_120C26E: Exit Sub
  loc_120C26F: ' Referenced from: 120BE04
  loc_120C277: Set var_88 = Err()
  loc_120C27D: Call 0.Method_arg_2C (var_98)
  loc_120C29E: MsgBox(CVar(var_98), &H40, "Information", var_FC, var_128)
  loc_120C2B1: Exit Sub
  loc_120C2B2: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10DD608
  'Data Table: 467800
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As DataGrid
  loc_10DD326: If (CLng(Shift) = &H1B) Then
  loc_10DD329:   Call Proc_341_22_EB6B6C()
  loc_10DD32E:   Exit Sub
  loc_10DD32F: End If
  loc_10DD332: var_88 = KeyCode
  loc_10DD33D: If (var_88 = CInt(1)) Then
  loc_10DD34B:   Set var_A8 = Me.Txt
  loc_10DD35D:   Set var_9C = Me.FGPoint
  loc_10DD368:   Set var_98 = Nothing
  loc_10DD396:   Proc_6_69_134A198(Me.DGRestType, var_A8, KeyCode, global_64, Shift, 0)
  loc_10DD3B5:   var_B0 = Me.RecordCount
  loc_10DD405:   If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10DD40C:     Set var_98 = Me.DGRestType
  loc_10DD413:     Set var_90 = Me.FGPoint
  loc_10DD42B:     Proc_6_138_106D6F8(var_98, global_64, KeyCode, var_90, 1)
  loc_10DD439:   End If
  loc_10DD43C: Else
  loc_10DD444:   If (var_88 = CInt(2)) Then
  loc_10DD469:     Set var_8C = Me.Txt
  loc_10DD46F:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, var_98)
  loc_10DD477:     var_9C = var_90.Left
  loc_10DD489:     Set var_98 = Me.Txt
  loc_10DD48F:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B4)
  loc_10DD497:     0 = var_9C.Top
  loc_10DD4A9:     Set var_A4 = Me.Txt
  loc_10DD4AF:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_10DD4B7:     var_B8 = var_A8.Height
  loc_10DD4C9:     Set var_AC = Me.Txt
  loc_10DD4CF:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_10DD4D7:     var_C0 = var_BC.Width
  loc_10DD523:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_10DD547:   End If
  loc_10DD547: End If
  loc_10DD580: If ((CBool(Me.DGRestType.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_10DD5A1:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_10DD5AA:     Call Txt_Validate(KeyCode)
  loc_10DD5B5:     If (var_86 = &HFF) Then
  loc_10DD5B8:       Exit Sub
  loc_10DD5B9:     End If
  loc_10DD5BF:     Proc_6_75_E527CC(Shift, arg_14, var_86, CInt(var_B0))
  loc_10DD5C7:   Else
  loc_10DD5DC:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10DD5E5:       Proc_6_75_E527CC(Shift, arg_14, CInt(((var_B4 + var_B8) + CDbl(&H19))))
  loc_10DD5ED:     Else
  loc_10DD5F7:       If (CLng(Shift) = &H26) Then
  loc_10DD600:         Proc_6_76_E52838(Shift, arg_14, CInt(var_C0))
  loc_10DD605:       End If
  loc_10DD605:     End If
  loc_10DD605:   End If
  loc_10DD605: End If
  loc_10DD605: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE0250
  'Data Table: 467800
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EE019B: Proc_6_58_E054C0(arg_10)
  loc_EE01A6: Proc_6_133_E7EF78(var_94)
  loc_EE01C3: If (KeyAscii = CInt(1)) Then
  loc_EE01E2:   If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EE020F:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, CInt(Me.DGRestType.Visible), "Name")
  loc_EE0241:     Proc_6_138_106D6F8(Me.DGRestType, global_64, KeyAscii, Me.FGPoint)
  loc_EE024F:   End If
  loc_EE024F: End If
  loc_EE024F: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E88524
  'Data Table: 467800
  loc_E884C6: If (KeyCode = CInt(2)) Then
  loc_E884E4:   If (Me.FrmList.Visible = &HFF) Then
  loc_E88513:     Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode)
  loc_E88523:   End If
  loc_E88523: End If
  loc_E88523: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E26C
  'Data Table: 467800
  loc_E4E24A: Set var_88 = Me.Txt
  loc_E4E250: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E25E: Proc_6_73_E22704(var_8C)
  loc_E4E26A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '107D6BC
  'Data Table: 467800
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As TextBox
  loc_107D428: On Error Goto loc_107D677
  loc_107D42E: var_86 = Cancel
  loc_107D439: If (var_86 = CInt(0)) Then
  loc_107D446:   Set var_8C = Me.Txt
  loc_107D44C:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107D46C:   Set var_98 = Me.Txt
  loc_107D472:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_107D47A:   var_9C.Text = Proc_6_33_1512840(var_90)
  loc_107D490: Else
  loc_107D498:   If (var_86 = CInt(1)) Then
  loc_107D4A8:     Set var_8C = Me.Txt
  loc_107D4AE:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107D4CD:     If (var_90.Text <> vbNullString) Then
  loc_107D50B:       Set var_94 = Me.Txt
  loc_107D511:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_107D519:       var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_107D54C:       var_90 = Me.Fields.Item("Code")
  loc_107D56A:       Set var_94 = Me.Txt
  loc_107D570:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_107D578:       var_98.Tag = CStr(var_90.Value)
  loc_107D591:     Else
  loc_107D59E:       Set var_8C = Me.Txt
  loc_107D5A4:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107D5AC:       var_90.Text = vbNullString
  loc_107D5C5:       Set var_8C = Me.Txt
  loc_107D5CB:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107D5D3:       var_90.Tag = vbNullString
  loc_107D5DF:     End If
  loc_107D5E2:   Else
  loc_107D5EA:     If (var_86 = CInt(2)) Then
  loc_107D5FA:       Set var_8C = Me.Txt
  loc_107D600:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107D61F:       If (var_90.Text <> vbNullString) Then
  loc_107D640:         var_A0 = Me.ListView.SelectedItem.Text
  loc_107D652:         Set var_94 = Me.Txt
  loc_107D658:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_107D660:         var_98.Text = var_A0
  loc_107D676:       End If
  loc_107D676:     End If
  loc_107D676:   End If
  loc_107D676: End If
  loc_107D676: Exit Sub
  loc_107D677: ' Referenced from: 107D428
  loc_107D67F: Set var_8C = Err()
  loc_107D685: Call 0.Method_arg_2C (var_A0)
  loc_107D6A6: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_107D6B9: Exit Sub
  loc_107D6BA: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A 'FD8F64
  'Data Table: 467800
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FD8DB2: If (Cancel = &HD) Then
  loc_FD8DC3:   Proc_303_0_FB9B68("	")
  loc_FD8DCB: End If
  loc_FD8DEA: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FD8DED:   Exit Sub
  loc_FD8DEE: End If
  loc_FD8E18: If ((CLng(Cancel) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FD8E2B:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FD8E45:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FD8E60:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD8E65:   var_D4 = 0
  loc_FD8E97:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD8E9C:   var_19C = 0
  loc_FD8ED7:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FD8EDF:   Set var_1D0 = Me.GridSel
  loc_FD8EE5:   LateIdCallSt
  loc_FD8F1F:   var_86 = CInt((UBound(global_56, 1) + 1))
  loc_FD8F31:   ReDim Preserve global_56(0 To CLng(var_86))
  loc_FD8F59:   global_56(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FD8F60: End If
  loc_FD8F60: Exit Sub
  loc_FD8F61: BranchFVar 22781
End Sub

Private Sub GridSel_UnknownEvent_E 'E5C9C8
  'Data Table: 467800
  loc_E5C9A3: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5C9A6:   Exit Sub
  loc_E5C9A7: End If
  loc_E5C9BE: global_52 = CInt(CLng(Me.GridSel.Row))
  loc_E5C9C7: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1028BA0
  'Data Table: 467800
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_10289A1: If ((CLng(Me.GridSel.Col) <> 0) Or (global_52 = 0)) Then
  loc_10289A4:   Exit Sub
  loc_10289A5: End If
  loc_1028A01: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_1028A04:   Exit Sub
  loc_1028A05: End If
  loc_1028A34: For var_BA = global_52 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_1028A4D:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1028A68:   Me.GridSel.Col = 0
  loc_1028A80:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1028A9A:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1028AA6:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1028AAB:   var_EC = 0
  loc_1028ACE:   var_160 = CVar(CLng(var_88)) 'Long
  loc_1028AD3:   var_180 = 0
  loc_1028B0E:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_1028B16:   Set var_A0 = Me.GridSel
  loc_1028B1C:   LateIdCallSt
  loc_1028B4E:   var_86 = CInt((UBound(global_56, 1) + 1))
  loc_1028B60:   ReDim Preserve global_56(0 To CLng(var_86))
  loc_1028B88:   global_56(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_1028B92: Next var_BA 'Integer
  loc_1028B9C: global_52 = 0
  loc_1028B9F: Exit Sub
End Sub

Private Sub CmdSave_UnknownEvent_9 'EF6384
  'Data Table: 467800
  Dim var_AC As Variant
  Dim var_86 As Integer
  Dim unk_467810 As Connection15
  loc_EF62A8: On Error Goto loc_EF6368
  loc_EF62B4: Set var_AC = Me.CmdSave
  loc_EF62BA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_EF62CF: Me.Label1.Caption = "Saving..."
  loc_EF62E1: Me.Label1.Refresh
  loc_EF62EB: var_86 = &HFF
  loc_EF62F7: unk_467810.BeginTrans var_B0
  loc_EF6325: Call Proc_341_21_1228858(global_56, CByte(Me.Check1.Value))
  loc_EF6336: unk_467810.CommitTrans
  loc_EF633D: var_86 = 0
  loc_EF634D: Me.Label1.Caption = "Save Completed."
  loc_EF635F: Me.Label1.Refresh
  loc_EF6367: Exit Sub
  loc_EF6368: ' Referenced from: EF62A8
  loc_EF636E: If (var_86 = &HFF) Then
  loc_EF6377:   unk_467810.RollbackTrans
  loc_EF637C: End If
  loc_EF637C: Proc_6_60_E62BC4(var_86, var_C4)
  loc_EF6381: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_9 'F41084
  'Data Table: 467800
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F40F7B: Me.DGRestType.Visible = False
  loc_F40F9A: If (Me.RecordCount > 0) Then
  loc_F40FD9:   Set var_B4 = Me.Txt
  loc_F40FDF:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F40FE7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4101A:   var_B0 = Me.Fields.Item("Code")
  loc_F41039:   Set var_B4 = Me.Txt
  loc_F4103F:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F41047:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4105D: End If
  loc_F41068: Set var_A8 = Me.Txt
  loc_F4106E: Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1))
  loc_F41076: var_B0.SetFocus
  loc_F41082: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_1F 'E749E0
  'Data Table: 467800
  loc_E7499E: Proc_6_153_E91194(Me.DGRestType, arg_14)
  loc_E749B5: Set var_8C = Me.FGPoint
  loc_E749D1: Proc_6_138_106D6F8(Me.DGRestType, global_64, CInt(1))
  loc_E749DF: Exit Sub
End Sub

Private Sub CmdFill_UnknownEvent_9 'EF1E74
  'Data Table: 467800
  Dim var_A8 As Variant
  loc_EF1D9C: Call Proc_341_22_EB6B6C()
  loc_EF1DAA: Set var_A8 = Me.CmdFill
  loc_EF1DB0: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000D(False)
  loc_EF1DC5: Me.Label1.Caption = "Processing..."
  loc_EF1DD7: Me.Label1.Refresh
  loc_EF1DDF: Call Proc_341_18_12ADCBC()
  loc_EF1DE4: Call Proc_341_19_12218A8()
  loc_EF1DFC: Me.GridSel.Row = 1
  loc_EF1E17: Me.GridSel.Col = 0
  loc_EF1E23: Set var_A8 = Me.GridSel
  loc_EF1E41: Me.Label1.Caption = vbNullString
  loc_EF1E53: Me.Label1.Refresh
  loc_EF1E63: Set var_A8 = Me.CmdFill
  loc_EF1E69: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000D(True)
  loc_EF1E71: Exit Sub
  loc_EF1E72: GridSel.DispID_8001() = 
End Sub

Private Sub FGPoint_UnknownEvent_9 'E2CBF4
  'Data Table: 467800
  loc_E2CBE8: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_E2CBEB:   Call DGRestType_UnknownEvent_9()
  loc_E2CBF0: End If
  loc_E2CBF0: Exit Sub
End Sub

Private Sub Form_Load() 'EF49E4
  'Data Table: 467800
  Dim var_94 As String
  Dim unk_467810 As Connection15
  loc_EF4920: On Error Goto loc_EF49DC
  loc_EF494C: var_94 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where Code<>'" & MemVar_1F92078 & "RS' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_EF4955: unk_467810.Execute var_94, var_B4, -1
  loc_EF4988: CVarUnk
  loc_EF498D: VerifyVarObj
  loc_EF4993: Set var_B8 = Me.DGRestType
  loc_EF4999: LateIdStAd
  loc_EF49B0: Set var_B8 = Me.CmdSave
  loc_EF49B6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_EF49BE: Call Proc_341_18_12ADCBC(var_B8, var_B8)
  loc_EF49CA: Call 0.Method_arg_7C (CDbl(0))
  loc_EF49D6: Call 0.Method_arg_74 (CDbl(0))
  loc_EF49DB: Exit Sub
  loc_EF49DC: ' Referenced from: EF4920
  loc_EF49DC: Proc_6_60_E62BC4(var_B8)
  loc_EF49E1: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E274A0
  'Data Table: 467800
  Dim var_90 As String
  loc_E27483: Set global_60 = Nothing
  loc_E27495: Set global_64 = Nothing
  loc_E2749C: Exit Sub
  loc_E2749D: var_90 = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27558
  'Data Table: 467800
  loc_E27530: On Error Goto loc_E2754F
  loc_E27547: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2754F: ' Referenced from: E27530
  loc_E2754F: Proc_6_60_E62BC4(Shift)
  loc_E27554: Exit Sub
End Sub

Public Sub Proc_341_18_12ADCBC
  'Data Table: 467800
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_12AD696: Me.GridSel.Rows = 1
  loc_12AD6AA: Me.GridSel.Cols = &HA
  loc_12AD6AF: var_98 = 0
  loc_12AD6BB: var_BC = CVar(CLng(0)) 'Long
  loc_12AD6C0: var_DC = "O"
  loc_12AD6C9: LateIdCallSt
  loc_12AD6D4: var_98 = CVar(CLng(0)) 'Long
  loc_12AD6D9: var_BC = &H258
  loc_12AD6E5: LateIdCallSt
  loc_12AD6ED: var_98 = 0
  loc_12AD6F9: var_BC = CVar(CLng(1)) 'Long
  loc_12AD6FE: var_DC = "RCode"
  loc_12AD707: LateIdCallSt
  loc_12AD712: var_98 = CVar(CLng(1)) 'Long
  loc_12AD71D: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD724: LateIdCallSt
  loc_12AD72F: var_98 = CVar(CLng(1)) 'Long
  loc_12AD73A: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD741: LateIdCallSt
  loc_12AD74C: var_98 = CVar(CLng(1)) 'Long
  loc_12AD751: var_BC = 0
  loc_12AD75D: LateIdCallSt
  loc_12AD765: var_98 = 0
  loc_12AD771: var_BC = CVar(CLng(2)) 'Long
  loc_12AD776: var_DC = "SerialNo"
  loc_12AD77F: LateIdCallSt
  loc_12AD78A: var_98 = CVar(CLng(2)) 'Long
  loc_12AD795: var_BC = CVar(CInt(7)) 'Integer
  loc_12AD79C: LateIdCallSt
  loc_12AD7A7: var_98 = CVar(CLng(2)) 'Long
  loc_12AD7B2: var_BC = CVar(CInt(7)) 'Integer
  loc_12AD7B9: LateIdCallSt
  loc_12AD7C4: var_98 = CVar(CLng(2)) 'Long
  loc_12AD7C9: var_BC = 0
  loc_12AD7D5: LateIdCallSt
  loc_12AD7DD: var_98 = 0
  loc_12AD7E9: var_BC = CVar(CLng(3)) 'Long
  loc_12AD7EE: var_DC = "Category"
  loc_12AD7F7: LateIdCallSt
  loc_12AD802: var_98 = CVar(CLng(3)) 'Long
  loc_12AD80D: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD814: LateIdCallSt
  loc_12AD81F: var_98 = CVar(CLng(3)) 'Long
  loc_12AD82A: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD831: LateIdCallSt
  loc_12AD83C: var_98 = CVar(CLng(3)) 'Long
  loc_12AD841: var_BC = &HBB8
  loc_12AD84D: LateIdCallSt
  loc_12AD855: var_98 = 0
  loc_12AD861: var_BC = CVar(CLng(4)) 'Long
  loc_12AD866: var_DC = "Member"
  loc_12AD86F: LateIdCallSt
  loc_12AD87A: var_98 = CVar(CLng(4)) 'Long
  loc_12AD885: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD88C: LateIdCallSt
  loc_12AD897: var_98 = CVar(CLng(4)) 'Long
  loc_12AD8A2: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD8A9: LateIdCallSt
  loc_12AD8B4: var_98 = CVar(CLng(4)) 'Long
  loc_12AD8B9: var_BC = &HDAC
  loc_12AD8C5: LateIdCallSt
  loc_12AD8CD: var_98 = 0
  loc_12AD8D9: var_BC = CVar(CLng(6)) 'Long
  loc_12AD8DE: var_DC = "Name"
  loc_12AD8E7: LateIdCallSt
  loc_12AD8F2: var_98 = CVar(CLng(6)) 'Long
  loc_12AD8FD: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD904: LateIdCallSt
  loc_12AD90F: var_98 = CVar(CLng(6)) 'Long
  loc_12AD91A: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD921: LateIdCallSt
  loc_12AD92C: var_98 = CVar(CLng(6)) 'Long
  loc_12AD931: var_BC = &HDAC
  loc_12AD93D: LateIdCallSt
  loc_12AD945: var_98 = 0
  loc_12AD951: var_BC = CVar(CLng(5)) 'Long
  loc_12AD956: var_DC = "CardNo"
  loc_12AD95F: LateIdCallSt
  loc_12AD96A: var_98 = CVar(CLng(5)) 'Long
  loc_12AD975: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD97C: LateIdCallSt
  loc_12AD987: var_98 = CVar(CLng(5)) 'Long
  loc_12AD992: var_BC = CVar(CInt(1)) 'Integer
  loc_12AD999: LateIdCallSt
  loc_12AD9A4: var_98 = CVar(CLng(5)) 'Long
  loc_12AD9A9: var_BC = &H5DC
  loc_12AD9B5: LateIdCallSt
  loc_12AD9BD: var_98 = 0
  loc_12AD9C9: var_BC = CVar(CLng(7)) 'Long
  loc_12AD9CE: var_DC = "Curr Bal"
  loc_12AD9D7: LateIdCallSt
  loc_12AD9E2: var_98 = CVar(CLng(7)) 'Long
  loc_12AD9ED: var_BC = CVar(CInt(7)) 'Integer
  loc_12AD9F4: LateIdCallSt
  loc_12AD9FF: var_98 = CVar(CLng(7)) 'Long
  loc_12ADA0A: var_BC = CVar(CInt(7)) 'Integer
  loc_12ADA11: LateIdCallSt
  loc_12ADA1C: var_98 = CVar(CLng(7)) 'Long
  loc_12ADA21: var_BC = &H4B0
  loc_12ADA2D: LateIdCallSt
  loc_12ADA35: var_98 = 0
  loc_12ADA41: var_BC = CVar(CLng(8)) 'Long
  loc_12ADA46: var_DC = "Secur Bal"
  loc_12ADA4F: LateIdCallSt
  loc_12ADA5A: var_98 = CVar(CLng(8)) 'Long
  loc_12ADA65: var_BC = CVar(CInt(7)) 'Integer
  loc_12ADA6C: LateIdCallSt
  loc_12ADA77: var_98 = CVar(CLng(8)) 'Long
  loc_12ADA82: var_BC = CVar(CInt(7)) 'Integer
  loc_12ADA89: LateIdCallSt
  loc_12ADA94: var_98 = CVar(CLng(8)) 'Long
  loc_12ADA99: var_BC = &H4B0
  loc_12ADAA5: LateIdCallSt
  loc_12ADAAD: var_98 = 0
  loc_12ADAB9: var_BC = CVar(CLng(9)) 'Long
  loc_12ADABE: var_DC = "Delivery Boy"
  loc_12ADAC7: LateIdCallSt
  loc_12ADAD2: var_98 = CVar(CLng(9)) 'Long
  loc_12ADADD: var_BC = CVar(CInt(1)) 'Integer
  loc_12ADAE4: LateIdCallSt
  loc_12ADAEF: var_98 = CVar(CLng(9)) 'Long
  loc_12ADAFA: var_BC = CVar(CInt(1)) 'Integer
  loc_12ADB01: LateIdCallSt
  loc_12ADB0C: var_98 = CVar(CLng(9)) 'Long
  loc_12ADB11: var_BC = 0
  loc_12ADB1D: LateIdCallSt
  loc_12ADB25: var_98 = vbNullString
  loc_12ADB2F: Set var_AC = Me.GridSel
  loc_12ADB53: Me.GridSel.FixedRows = 1
  loc_12ADB5D: Set var_88 = Nothing 
  loc_12ADB71: ReDim Preserve global_56(0 To 0)
  loc_12ADB88: global_56(0) = 0
  loc_12ADB9C: Me.GridSel.Height = CVar(CDbl(6000))
  loc_12ADBB7: Me.GridSel.Width = CVar(CDbl(15000))
  loc_12ADBBF: var_98 = 0
  loc_12ADBF0: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H1E))
  loc_12ADBFF: var_98 = 0
  loc_12ADC30: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &H1E))
  loc_12ADC61: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&HF))
  loc_12ADC92: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&HF))
  loc_12ADCB1: Me.Check1.Value = CInt(0)
  loc_12ADCB9: Exit Sub
End Sub

Public Sub Proc_341_19_12218A8
  'Data Table: 467800
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As String
  Dim unk_467810 As Connection15
  Dim var_90 As Recordset15
  Dim var_F0 As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  loc_12213CD: Set var_B4 = Me.GridSel
  loc_12213D3: var_B4.Row = 1
  loc_12213EF: var_B8 = "Select SC.Code,SC.CardNo,SC.Name,SC.SerialNo,SC.CurrBal,SC.SecurBal,S.Name MemberName,M.Name MemCategory From SmartCardRegistration SC Left Join SubGroup S On SC.MemberCode=S.SubCode Inner Join MemCatMast M On S.CompanyType=M.Code Where (SC.LOGSITE_CODE='" & MemVar_1F92078
  loc_12213FF: unk_467810.Execute var_B8 & "' or SC.LOGSITE_CODE='HO') And S.ActiveYN = 0 And (CurrBal <> 0 Or SecurBal <> 0)", var_CC, -1
  loc_122140A: Set var_90 = var_B4
  loc_122142E: If (var_90.RecordCount > 0) Then
  loc_1221431:   ' Referenced from: 1221836
  loc_1221440:   If Not(var_90.EOF) Then
  loc_1221447:     Set var_D8 = Me.GridSel
  loc_122144A:     var_A0 = vbNullString
  loc_12214A3:     var_130 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Code")), CVar(CLng(1)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_12214AA:     LateIdCallSt
  loc_122150A:     var_130 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("SerialNo")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_D8)) 'String
  loc_1221511:     LateIdCallSt
  loc_1221571:     var_130 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("MemCategory")), CVar(CLng(3)), CVar(CLng(Me.GridSel.Row)), var_D8, var_130)) 'String
  loc_1221578:     LateIdCallSt
  loc_12215D8:     var_130 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("MemberName")), CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)), var_D8, var_130)) 'String
  loc_12215DF:     LateIdCallSt
  loc_122163F:     var_130 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Name")), CVar(CLng(6)), CVar(CLng(Me.GridSel.Row)), var_D8, var_130)) 'String
  loc_1221646:     LateIdCallSt
  loc_1221668:     var_F0 = Me.GridSel.Row
  loc_12216A6:     var_130 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("CardNo")), CVar(CLng(5)), CVar(CLng(var_F0)), var_D8, var_130)) 'String
  loc_12216AD:     LateIdCallSt
  loc_122170B:     Proc_6_47_EF59D0(var_F0, CVar(var_90.Fields.Item("CurrBal")), CVar(CLng(7)), CVar(CLng(Me.GridSel.Row)), var_D8)
  loc_122171B:     LateIdCallSt
  loc_122177B:     Proc_6_47_EF59D0(var_F0, CVar(var_90.Fields.Item("SecurBal")), CVar(CLng(8)), CVar(CLng(Me.GridSel.Row)), var_D8, CVar(CStr(var_F0)))
  loc_1221784:     var_150 = CVar(CStr(var_F0)) 'String
  loc_122178B:     LateIdCallSt
  loc_12217A7:     Set var_D8 = Nothing 
  loc_12217BD:     Me.GridSel.Col = CVar(CLng(0))
  loc_12217D5:     Me.GridSel.CellFontName = "WINGDINGS"
  loc_12217EF:     Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1221810:     var_A0 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_122181F:     Me.GridSel.Row = CVar(CDbl(&HE))
  loc_1221831:     var_90.MoveNext
  loc_1221836:     GoTo loc_1221431
  loc_1221839:   End If
  loc_1221841:   Set var_B4 = Me.CmdSave
  loc_1221847:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_1221852: Else
  loc_1221865:   Me.GridSel.Rows = 2
  loc_1221876:   Set var_B4 = Me.CmdSave
  loc_122187C:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_1221884: End If
  loc_1221897: Me.GridSel.FixedRows = 1
  loc_12218A4: Set var_90 = Nothing
  loc_12218A7: Exit Sub
End Sub

Public Sub Proc_341_20_F99348(arg_C, arg_10, arg_14, arg_18, arg_1C) 'F99348
  'Data Table: 467800
  Dim var_C4 As Variant
  Dim var_F8 As Variant
  Dim unk_467810 As Connection15
  loc_F99219: If ((arg_10 <> vbNullString) And (arg_C <> vbNullString)) Then
  loc_F99230:   var_C4 = CVar("Agnst. Auto Refund " & arg_C & "/") 'String
  loc_F9928F:   Proc_275_17_1185D08(arg_C, arg_10, "Refund", MemVar_1F920EC, arg_18, arg_1C, CStr(var_C4 & Trim(arg_14)))
  loc_F992A6:   Proc_6_17_EAA2B0(var_C4, CVar(Proc_6_14_EF349C(MemVar_1F920C8, CDate(Proc_6_14_EF349C()), "A")), var_90)
  loc_F992B6:   Proc_6_17_EAA2B0(var_118, arg_C)
  loc_F992EA:   var_F8 = CVar("Update SmartCardRegistration Set LastTransAmt=" & CStr(arg_18) & ",LastTransDate=") & var_C4 & ",CurrBal=0,SecurBal=0 Where Code=" 
  loc_F9931B:   unk_467810.Execute CStr(var_F8 & var_118 & " And LogSite_Code='" & CVar(MemVar_1F92078) & "'"), var_1AC, -1
  loc_F99345: End If
  loc_F99345: Exit Sub
End Sub

Public Sub Proc_341_21_1228858(arg_C, arg_10) '1228858
  'Data Table: 467800
  Dim var_96 As Integer
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_1F4 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_248 As Variant
  Dim var_25C As Variant
  Dim var_27C As Variant
  Dim var_2A0 As Variant
  loc_122837A: On Error Goto loc_122884D
  loc_122837F: var_96 = 0
  loc_122838B: If (CInt(arg_10) = 1) Then
  loc_12283B3:   For var_B4 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_98 = var_B4 'Integer
  loc_12283BC:     var_9A = var_98
  loc_12283C3:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_12283C8:     var_E4 = 2
  loc_12283F7:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_12283FE:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_1228406:       var_E4 = CVar(CLng(1)) 'Long
  loc_1228425:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_122842D:       var_128 = CVar(CLng(2)) 'Long
  loc_122844C:       var_15C = CVar(CLng(var_9A)) 'Long
  loc_1228454:       var_17C = CVar(CLng(5)) 'Long
  loc_1228473:       var_1B0 = CVar(CLng(var_9A)) 'Long
  loc_122847B:       var_1D0 = CVar(CLng(7)) 'Long
  loc_12284A4:       var_204 = CVar(CLng(var_9A)) 'Long
  loc_12284AC:       var_224 = CVar(CLng(8)) 'Long
  loc_12284D5:       var_25C = CVar(CLng(var_9A)) 'Long
  loc_12284DD:       var_27C = CVar(CLng(0)) 'Long
  loc_12284EC:       var_2A0 = Me.GridSel.TextMatrix)
  loc_1228521:       Call Proc_341_20_F99348(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)), Val(CStr(Me.GridSel.TextMatrix))), Val(CStr(Me.GridSel.TextMatrix))))
  loc_1228555:       var_96 = &HFF
  loc_1228558:     End If
  loc_122855B:   Next var_B4 'Integer
  loc_1228563: Else
  loc_122856B:   CRefVarAry
  loc_1228573:   For var_2D4 = 0 To CInt(UBound(arg_C, 1)):   var_98 = var_2D4 'Integer
  loc_1228594:     If (arg_C(var_98) = 0) Then
  loc_1228597:       GoTo loc_1228785
  loc_122859A:     End If
  loc_12285AB:     var_9A = CInt(arg_C(var_98))
  loc_12285B5:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_12285BA:     var_E4 = 0
  loc_12285E9:     If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_12285F0:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_12285F5:       var_E4 = 2
  loc_1228624:       If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_122862B:         var_C4 = CVar(CLng(var_9A)) 'Long
  loc_1228633:         var_E4 = CVar(CLng(1)) 'Long
  loc_1228652:         var_108 = CVar(CLng(var_9A)) 'Long
  loc_122865A:         var_128 = CVar(CLng(2)) 'Long
  loc_1228679:         var_15C = CVar(CLng(var_9A)) 'Long
  loc_1228681:         var_17C = CVar(CLng(5)) 'Long
  loc_1228690:         var_1A0 = Me.GridSel.TextMatrix)
  loc_12286A0:         var_1B0 = CVar(CLng(var_9A)) 'Long
  loc_12286A8:         var_1D0 = CVar(CLng(7)) 'Long
  loc_12286B7:         var_1F4 = Me.GridSel.TextMatrix)
  loc_12286D1:         var_204 = CVar(CLng(var_9A)) 'Long
  loc_12286D9:         var_224 = CVar(CLng(8)) 'Long
  loc_12286E8:         var_248 = Me.GridSel.TextMatrix)
  loc_1228702:         var_25C = CVar(CLng(var_9A)) 'Long
  loc_122870A:         var_27C = CVar(CLng(0)) 'Long
  loc_1228719:         var_2A0 = Me.GridSel.TextMatrix)
  loc_122874E:         Call Proc_341_20_F99348(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)), CStr(var_1A0), Val(CStr(var_1F4)), Val(CStr(var_248)))
  loc_1228782:         var_96 = &HFF
  loc_1228785:         ' Referenced from:   1228597
  loc_1228785:       End If
  loc_1228785:     End If
  loc_1228788:   Next var_2D4 'Integer
  loc_122878D: End If
  loc_122879D: If ((var_96 = 0) And (CInt(arg_10) = 0)) Then
  loc_12287A0:   var_C4 = 0
  loc_12287A9:   var_E4 = 1
  loc_12287BC:   var_B0 = Me.GridSel.TextMatrix)
  loc_12287E4:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_1A0, var_1F4, var_248)
  loc_122880F:   Me.GridSel.Row = 1
  loc_1228817:   var_C4 = 0
  loc_122882A:   Me.GridSel.Col = var_C4
  loc_1228836:   Set var_A0 = Me.GridSel
  loc_1228847: End If
  loc_1228847: Proc_341_21_1228858 = GridSel.DispID_8001
  loc_122884D: ' Referenced from: 122837A
  loc_122884D: Proc_6_60_E62BC4(var_B0, var_E4)
  loc_1228852: Proc_341_21_1228858 = var_C4
End Sub

Public Sub Proc_341_22_EB6B6C
  'Data Table: 467800
  loc_EB6AE8: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EB6AFA:   Me.DGRestType.Visible = False
  loc_EB6B02: End If
  loc_EB6B1E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB6B30:   Me.FGPoint.Visible = False
  loc_EB6B38: End If
  loc_EB6B53: If (Me.FrmList.Visible = &HFF) Then
  loc_EB6B62:   Me.FrmList.Visible = False
  loc_EB6B6A: End If
  loc_EB6B6A: Exit Sub
End Sub
