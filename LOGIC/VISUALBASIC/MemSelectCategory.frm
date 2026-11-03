VERSION 5.00
Begin VB.Form MemSelectCategory
  Caption = "Select Member Category"
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
    Visible = 0   'False
    TabIndex = 15
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 585
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
    Width = 5500
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

Attribute VB_Name = "MemSelectCategory"

Private global_52 As Integer

Private Sub CmdExit_UnknownEvent_9 'E1BCA0
  'Data Table: 484AE4
  loc_E1BC95: Me.Global.Unload Me
  loc_E1BC9D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '120BD98
  'Data Table: 484AE4
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim Me As Variant
  Dim var_88 As DataGrid
  loc_120B8E8: On Error Goto loc_120BD53
  loc_120B8F5: Set var_88 = Me.Txt
  loc_120B8FB: Call 0.Method_Txt_GotFocus0 (Index)
  loc_120B909: Proc_6_74_E226B0(var_8C)
  loc_120B915: Call Proc_340_31_EB6ECC(var_8C)
  loc_120B91D: var_92 = Index
  loc_120B928: If (var_92 = CInt(0)) Then
  loc_120B938:   Set var_88 = Me.Txt
  loc_120B93E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120B959:   Set var_90 = Me.Txt
  loc_120B95F:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_120B967:   var_9C.SelLength = Len(var_8C.Text)
  loc_120B987:   Set var_88 = Me.Txt
  loc_120B98D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120B995:   var_98 = var_8C.Text
  loc_120B9A7:   Set var_90 = Me.Txt
  loc_120B9AD:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_120B9B5:   var_9C.Tag = var_98
  loc_120B9CB: Else
  loc_120B9D3:   If (var_92 = CInt(1)) Then
  loc_120B9E4:     Set var_88 = Me.Txt
  loc_120B9EA:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_120BA09:     Me.DGRestType.Left = CVar(var_8C.Left)
  loc_120BA25:     Set var_90 = Me.Txt
  loc_120BA2B:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_9C)
  loc_120BA46:     Set var_88 = Me.Txt
  loc_120BA4C:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_120BA64:     var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_120BA73:     Me.DGRestType.Top = CVar(var_8C.Left)
  loc_120BA94:     Me.Filter = 0
  loc_120BAA5:     Me.Filter = "RestType<>'Kitchen'"
  loc_120BAC1:     If (Me.RecordCount > 0) Then
  loc_120BACF:       Set var_8C = Me.FGPoint
  loc_120BAE7:       Proc_6_137_1193554(Me.DGRestType, global_64, Index)
  loc_120BAF5:     End If
  loc_120BB43:     Set var_88 = Me.Txt
  loc_120BB49:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_120BB51:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_120BB69:     If (var_8C Or (var_98 = vbNullString)) Then
  loc_120BB6C:       Exit Sub
  loc_120BB6D:     End If
  loc_120BB7A:     Set var_88 = Me.Txt
  loc_120BB80:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120BB88:     var_98 = var_8C.Text
  loc_120BB9A:     var_B0 = "Name"
  loc_120BBD5:     If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_120BBDE:       Me.MoveFirst
  loc_120BC01:       Set var_88 = Me.Txt
  loc_120BC07:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_120BC0F:       0 = var_8C.Text
  loc_120BC28:       Me.Find 1 & var_98 & "'", var_B0, var_92
  loc_120BC3D:     End If
  loc_120BC50:     Me.DGRestType.Tag = CVar(CStr(Index))
  loc_120BC5E:   Else
  loc_120BC66:     If (var_92 = CInt(2)) Then
  loc_120BC76:       ReDim var_108(0 To 1)
  loc_120BC8D:       var_108(0) = "Article_26(a)"
  loc_120BC9C:       var_108(1) = "Article_23"
  loc_120BCB3:       global_80 = Array(var_108)
  loc_120BCBE:       Set var_9C = Me.ListView
  loc_120BCD9:       Set var_8C = Me.Txt
  loc_120BCF3:       Set global_96 = Proc_6_66_EFF8FC(var_9C, var_8C, Index)
  loc_120BD11:       Set var_88 = Me.Txt
  loc_120BD17:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_120BD1F:       global_80 = var_8C.Text
  loc_120BD31:       Set var_90 = Me.Txt
  loc_120BD37:       Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_98)
  loc_120BD3F:       var_9C.Tag = 2
  loc_120BD52:     End If
  loc_120BD52:   End If
  loc_120BD52: End If
  loc_120BD52: Exit Sub
  loc_120BD53: ' Referenced from: 120B8E8
  loc_120BD5B: Set var_88 = Err()
  loc_120BD61: Call 0.Method_arg_2C (var_98)
  loc_120BD82: MsgBox(CVar(var_98), &H40, "Information", var_FC, var_128)
  loc_120BD95: Exit Sub
  loc_120BD96: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10DB7F0
  'Data Table: 484AE4
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As DataGrid
  loc_10DB50E: If (CLng(Shift) = &H1B) Then
  loc_10DB511:   Call Proc_340_31_EB6ECC()
  loc_10DB516:   Exit Sub
  loc_10DB517: End If
  loc_10DB51A: var_88 = KeyCode
  loc_10DB525: If (var_88 = CInt(1)) Then
  loc_10DB533:   Set var_A8 = Me.Txt
  loc_10DB545:   Set var_9C = Me.FGPoint
  loc_10DB550:   Set var_98 = Nothing
  loc_10DB57E:   Proc_6_69_134A198(Me.DGRestType, var_A8, KeyCode, global_64, Shift, 0)
  loc_10DB59D:   var_B0 = Me.RecordCount
  loc_10DB5ED:   If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10DB5F4:     Set var_98 = Me.DGRestType
  loc_10DB5FB:     Set var_90 = Me.FGPoint
  loc_10DB613:     Proc_6_138_106D6F8(var_98, global_64, KeyCode, var_90, 1)
  loc_10DB621:   End If
  loc_10DB624: Else
  loc_10DB62C:   If (var_88 = CInt(2)) Then
  loc_10DB651:     Set var_8C = Me.Txt
  loc_10DB657:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, var_98)
  loc_10DB65F:     var_9C = var_90.Left
  loc_10DB671:     Set var_98 = Me.Txt
  loc_10DB677:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B4)
  loc_10DB67F:     0 = var_9C.Top
  loc_10DB691:     Set var_A4 = Me.Txt
  loc_10DB697:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_10DB69F:     var_B8 = var_A8.Height
  loc_10DB6B1:     Set var_AC = Me.Txt
  loc_10DB6B7:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_10DB6BF:     var_C0 = var_BC.Width
  loc_10DB70B:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_10DB72F:   End If
  loc_10DB72F: End If
  loc_10DB768: If ((CBool(Me.DGRestType.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_10DB789:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_10DB792:     Call Txt_Validate(KeyCode)
  loc_10DB79D:     If (var_86 = &HFF) Then
  loc_10DB7A0:       Exit Sub
  loc_10DB7A1:     End If
  loc_10DB7A7:     Proc_6_75_E527CC(Shift, arg_14, var_86, CInt(var_B0))
  loc_10DB7AF:   Else
  loc_10DB7C4:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10DB7CD:       Proc_6_75_E527CC(Shift, arg_14, CInt(((var_B4 + var_B8) + CDbl(&H19))))
  loc_10DB7D5:     Else
  loc_10DB7DF:       If (CLng(Shift) = &H26) Then
  loc_10DB7E8:         Proc_6_76_E52838(Shift, arg_14, CInt(var_C0))
  loc_10DB7ED:       End If
  loc_10DB7ED:     End If
  loc_10DB7ED:   End If
  loc_10DB7ED: End If
  loc_10DB7ED: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EDFD64
  'Data Table: 484AE4
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EDFCAF: Proc_6_58_E054C0(arg_10)
  loc_EDFCBA: Proc_6_133_E7EF78(var_94)
  loc_EDFCD7: If (KeyAscii = CInt(1)) Then
  loc_EDFCF6:   If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EDFD23:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, CInt(Me.DGRestType.Visible), "Name")
  loc_EDFD55:     Proc_6_138_106D6F8(Me.DGRestType, global_64, KeyAscii, Me.FGPoint)
  loc_EDFD63:   End If
  loc_EDFD63: End If
  loc_EDFD63: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E87C68
  'Data Table: 484AE4
  loc_E87C0A: If (KeyCode = CInt(2)) Then
  loc_E87C28:   If (Me.FrmList.Visible = &HFF) Then
  loc_E87C57:     Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode)
  loc_E87C67:   End If
  loc_E87C67: End If
  loc_E87C67: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F78C
  'Data Table: 484AE4
  loc_E4F76A: Set var_88 = Me.Txt
  loc_E4F770: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F77E: Proc_6_73_E22704(var_8C)
  loc_E4F78A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '107C534
  'Data Table: 484AE4
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As TextBox
  loc_107C2A0: On Error Goto loc_107C4EF
  loc_107C2A6: var_86 = Cancel
  loc_107C2B1: If (var_86 = CInt(0)) Then
  loc_107C2BE:   Set var_8C = Me.Txt
  loc_107C2C4:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107C2E4:   Set var_98 = Me.Txt
  loc_107C2EA:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_107C2F2:   var_9C.Text = Proc_6_33_1512840(var_90)
  loc_107C308: Else
  loc_107C310:   If (var_86 = CInt(1)) Then
  loc_107C320:     Set var_8C = Me.Txt
  loc_107C326:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107C345:     If (var_90.Text <> vbNullString) Then
  loc_107C383:       Set var_94 = Me.Txt
  loc_107C389:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_107C391:       var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_107C3C4:       var_90 = Me.Fields.Item("Code")
  loc_107C3E2:       Set var_94 = Me.Txt
  loc_107C3E8:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_107C3F0:       var_98.Tag = CStr(var_90.Value)
  loc_107C409:     Else
  loc_107C416:       Set var_8C = Me.Txt
  loc_107C41C:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107C424:       var_90.Text = vbNullString
  loc_107C43D:       Set var_8C = Me.Txt
  loc_107C443:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107C44B:       var_90.Tag = vbNullString
  loc_107C457:     End If
  loc_107C45A:   Else
  loc_107C462:     If (var_86 = CInt(2)) Then
  loc_107C472:       Set var_8C = Me.Txt
  loc_107C478:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_107C497:       If (var_90.Text <> vbNullString) Then
  loc_107C4B8:         var_A0 = Me.ListView.SelectedItem.Text
  loc_107C4CA:         Set var_94 = Me.Txt
  loc_107C4D0:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_107C4D8:         var_98.Text = var_A0
  loc_107C4EE:       End If
  loc_107C4EE:     End If
  loc_107C4EE:   End If
  loc_107C4EE: End If
  loc_107C4EE: Exit Sub
  loc_107C4EF: ' Referenced from: 107C2A0
  loc_107C4F7: Set var_8C = Err()
  loc_107C4FD: Call 0.Method_arg_2C (var_A0)
  loc_107C51E: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_107C531: Exit Sub
  loc_107C532: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A 'FDA23C
  'Data Table: 484AE4
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_F8 As Variant
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FDA08A: If (Cancel = &HD) Then
  loc_FDA09B:   Proc_303_0_FB9B68("	")
  loc_FDA0A3: End If
  loc_FDA0C2: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FDA0C5:   Exit Sub
  loc_FDA0C6: End If
  loc_FDA0F0: If ((CLng(Cancel) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FDA103:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FDA11D:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FDA138:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDA13D:   var_D4 = 0
  loc_FDA16F:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDA174:   var_19C = 0
  loc_FDA1AF:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FDA1B7:   Set var_1D0 = Me.GridSel
  loc_FDA1BD:   LateIdCallSt
  loc_FDA1F7:   var_86 = CInt((UBound(global_56, 1) + 1))
  loc_FDA209:   ReDim Preserve global_56(0 To CLng(var_86))
  loc_FDA231:   global_56(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FDA238: End If
  loc_FDA238: Exit Sub
  loc_FDA239: var_F8 = var_86
End Sub

Private Sub GridSel_UnknownEvent_E 'E5D7D4
  'Data Table: 484AE4
  loc_E5D7AF: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5D7B2:   Exit Sub
  loc_E5D7B3: End If
  loc_E5D7CA: global_52 = CInt(CLng(Me.GridSel.Row))
  loc_E5D7D3: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '10254F8
  'Data Table: 484AE4
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_10252F9: If ((CLng(Me.GridSel.Col) <> 0) Or (global_52 = 0)) Then
  loc_10252FC:   Exit Sub
  loc_10252FD: End If
  loc_1025359: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_102535C:   Exit Sub
  loc_102535D: End If
  loc_102538C: For var_BA = global_52 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_10253A5:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_10253C0:   Me.GridSel.Col = 0
  loc_10253D8:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_10253F2:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_10253FE:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1025403:   var_EC = 0
  loc_1025426:   var_160 = CVar(CLng(var_88)) 'Long
  loc_102542B:   var_180 = 0
  loc_1025466:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_102546E:   Set var_A0 = Me.GridSel
  loc_1025474:   LateIdCallSt
  loc_10254A6:   var_86 = CInt((UBound(global_56, 1) + 1))
  loc_10254B8:   ReDim Preserve global_56(0 To CLng(var_86))
  loc_10254E0:   global_56(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_10254EA: Next var_BA 'Integer
  loc_10254F4: global_52 = 0
  loc_10254F7: Exit Sub
End Sub

Private Sub CmdSave_UnknownEvent_9 'EF9408
  'Data Table: 484AE4
  Dim var_AC As Variant
  Dim var_86 As Integer
  Dim unk_484AEE As Connection15
  loc_EF932C: On Error Goto loc_EF93EC
  loc_EF9338: Set var_AC = Me.CmdSave
  loc_EF933E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_EF9353: Me.Label1.Caption = "Saving..."
  loc_EF9365: Me.Label1.Refresh
  loc_EF936F: var_86 = &HFF
  loc_EF937B: unk_484AEE.BeginTrans var_B0
  loc_EF93A9: Call Proc_340_30_10F18A8(global_56, CByte(Me.Check1.Value))
  loc_EF93BA: unk_484AEE.CommitTrans
  loc_EF93C1: var_86 = 0
  loc_EF93D1: Me.Label1.Caption = "Save Completed."
  loc_EF93E3: Me.Label1.Refresh
  loc_EF93EB: Exit Sub
  loc_EF93EC: ' Referenced from: EF932C
  loc_EF93F2: If (var_86 = &HFF) Then
  loc_EF93FB:   unk_484AEE.RollbackTrans
  loc_EF9400: End If
  loc_EF9400: Proc_6_60_E62BC4(var_86, var_C4)
  loc_EF9405: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_9 'F35164
  'Data Table: 484AE4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3505B: Me.DGRestType.Visible = False
  loc_F3507A: If (Me.RecordCount > 0) Then
  loc_F350B9:   Set var_B4 = Me.Txt
  loc_F350BF:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F350C7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F350FA:   var_B0 = Me.Fields.Item("Code")
  loc_F35119:   Set var_B4 = Me.Txt
  loc_F3511F:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F35127:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3513D: End If
  loc_F35148: Set var_A8 = Me.Txt
  loc_F3514E: Call 0.Method_DGRestType_UnknownEvent_90 (CInt(1))
  loc_F35156: var_B0.SetFocus
  loc_F35162: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_1F 'E72980
  'Data Table: 484AE4
  loc_E7293E: Proc_6_153_E91194(Me.DGRestType, arg_14)
  loc_E72955: Set var_8C = Me.FGPoint
  loc_E72971: Proc_6_138_106D6F8(Me.DGRestType, global_64, CInt(1))
  loc_E7297F: Exit Sub
End Sub

Private Sub CmdFill_UnknownEvent_9 'F2F30C
  'Data Table: 484AE4
  Dim var_88 As Variant
  loc_F2F1F8: Call Proc_340_31_EB6ECC()
  loc_F2F208: Set var_88 = Me.Txt
  loc_F2F20E: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(2))
  loc_F2F237: If (Proc_6_27_EA565C(var_8C, "Status") = 0) Then
  loc_F2F23A:   Exit Sub
  loc_F2F23B: End If
  loc_F2F244: Set var_88 = Me.CmdFill
  loc_F2F24A: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000D(False)
  loc_F2F25F: Me.Label1.Caption = "Processing..."
  loc_F2F271: Me.Label1.Refresh
  loc_F2F279: Call Proc_340_27_10C47D4(var_8C)
  loc_F2F27E: Call Proc_340_28_1163D28()
  loc_F2F296: Me.GridSel.Row = 1
  loc_F2F2B1: Me.GridSel.Col = 0
  loc_F2F2BD: Set var_88 = Me.GridSel
  loc_F2F2DB: Me.Label1.Caption = vbNullString
  loc_F2F2ED: Me.Label1.Refresh
  loc_F2F2FD: Set var_88 = Me.CmdFill
  loc_F2F303: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000D(True)
  loc_F2F30B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F60AD4
  'Data Table: 484AE4
  Dim var_88 As Variant
  Dim var_B4 As TextBox
  loc_F609A8: On Error Goto loc_F60AAC
  loc_F609AB: Call Proc_340_31_EB6ECC()
  loc_F609BD: Me.Label1.Caption = "Processing..."
  loc_F609CF: Me.Label1.Refresh
  loc_F609D7: Call Proc_340_27_10C47D4()
  loc_F609DC: Call Proc_340_28_1163D28()
  loc_F609F4: Me.GridSel.Row = 1
  loc_F60A0F: Me.GridSel.Col = 0
  loc_F60A1B: Set var_88 = Me.GridSel
  loc_F60A39: Me.Label1.Caption = vbNullString
  loc_F60A4B: Me.Label1.Refresh
  loc_F60A68: var_AC = "ADD"
  loc_F60A76: Call Proc_340_32_EAFE78(Proc_5_1_100CB50(var_AC, Me), global_100)
  loc_F60A81: Call Proc_340_33_EDECCC(GridSel.DispID_8001)
  loc_F60A91: Set var_88 = Me.Txt
  loc_F60A97: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2))
  loc_F60A9F: var_B4.SetFocus
  loc_F60AAB: Exit Sub
  loc_F60AAC: ' Referenced from: F609A8
  loc_F60AB2: Call 0.Method_arg_50 (var_AC)
  loc_F60AC7: Proc_183_57_104AA84(var_AC, "TopCtrl1_eAdd")
  loc_F60AD3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F60964
  'Data Table: 484AE4
  Dim var_88 As Variant
  Dim var_B4 As TextBox
  loc_F60838: On Error Goto loc_F60939
  loc_F6083B: Call Proc_340_31_EB6ECC()
  loc_F6084D: Me.Label1.Caption = "Processing..."
  loc_F6085F: Me.Label1.Refresh
  loc_F60867: Call Proc_340_27_10C47D4()
  loc_F6086C: Call Proc_340_28_1163D28()
  loc_F60884: Me.GridSel.Row = 1
  loc_F6089F: Me.GridSel.Col = 0
  loc_F608AB: Set var_88 = Me.GridSel
  loc_F608C9: Me.Label1.Caption = vbNullString
  loc_F608DB: Me.Label1.Refresh
  loc_F608F8: var_AC = "EDIT"
  loc_F60906: Call Proc_340_32_EAFE78(Proc_5_1_100CB50(var_AC, Me), global_100)
  loc_F6091E: Set var_88 = Me.Txt
  loc_F60924: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_B4)
  loc_F6092C: var_B4.Enabled = False
  loc_F60938: Exit Sub
  loc_F60939: ' Referenced from: F60838
  loc_F6093F: Call 0.Method_arg_50 (var_AC)
  loc_F60954: Proc_183_57_104AA84(var_AC, "TopCtrl1_eEdit")
  loc_F60960: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19B60
  'Data Table: 484AE4
  loc_E19B55: Me.Global.Unload Me
  loc_E19B5D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEEE34
  'Data Table: 484AE4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EEED74: On Error Goto loc_EEEE0C
  loc_EEED8E: If (Me.RecordCount <= 0) Then
  loc_EEED97:   var_B8 = "Information"
  loc_EEEDB2:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_EEEDC2:   Exit Sub
  loc_EEEDC3: End If
  loc_EEEDD1: MemVar_1F920E4 = "Select Type As SearchCode,Type From MemSelectCategory where LogSite_Code='" & MemVar_1F92078 & "' Group By Type"
  loc_EEEDDE: MemVar_1F92120 = Me
  loc_EEEDE5: var_10C = "2500"
  loc_EEEDEB: Proc_183_54_F1DE80(var_10C)
  loc_EEEE06: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEEE0B: Exit Sub
  loc_EEEE0C: ' Referenced from: EEED74
  loc_EEEE12: Call 0.Method_arg_50 (var_10C)
  loc_EEEE27: Proc_183_57_104AA84(var_10C, "TopCtrl1_eFind")
  loc_EEEE33: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E7C054
  'Data Table: 484AE4
  loc_E7BFFC: On Error Goto loc_E7C029
  loc_E7C01B: Proc_5_0_110649C(&HFF, Me)
  loc_E7C023: Call Proc_340_34_11E7D0C(global_100)
  loc_E7C028: Exit Sub
  loc_E7C029: ' Referenced from: E7BFFC
  loc_E7C02F: Call 0.Method_arg_50 (var_94)
  loc_E7C044: Proc_183_57_104AA84(var_94, "TopCtrl1_eFirst")
  loc_E7C050: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E7B76C
  'Data Table: 484AE4
  loc_E7B714: On Error Goto loc_E7B741
  loc_E7B733: Proc_5_0_110649C(&HFF, Me)
  loc_E7B73B: Call Proc_340_34_11E7D0C(global_100)
  loc_E7B740: Exit Sub
  loc_E7B741: ' Referenced from: E7B714
  loc_E7B747: Call 0.Method_arg_50 (var_94)
  loc_E7B75C: Proc_183_57_104AA84(var_94, "TopCtrl1_eLast")
  loc_E7B768: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E7B50C
  'Data Table: 484AE4
  loc_E7B4B4: On Error Goto loc_E7B4E1
  loc_E7B4D3: Proc_5_0_110649C(&HFF, Me)
  loc_E7B4DB: Call Proc_340_34_11E7D0C(global_100)
  loc_E7B4E0: Exit Sub
  loc_E7B4E1: ' Referenced from: E7B4B4
  loc_E7B4E7: Call 0.Method_arg_50 (var_94)
  loc_E7B4FC: Proc_183_57_104AA84(var_94, "TopCtrl1_eNext")
  loc_E7B508: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E7B17C
  'Data Table: 484AE4
  loc_E7B124: On Error Goto loc_E7B151
  loc_E7B143: Proc_5_0_110649C(&HFF, Me)
  loc_E7B14B: Call Proc_340_34_11E7D0C(global_100)
  loc_E7B150: Exit Sub
  loc_E7B151: ' Referenced from: E7B124
  loc_E7B157: Call 0.Method_arg_50 (var_94)
  loc_E7B16C: Proc_183_57_104AA84(var_94, "TopCtrl1_ePrev")
  loc_E7B178: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'FA3BAC
  'Data Table: 484AE4
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim unk_484AEE As Connection15
  Dim var_90 As TextBox
  loc_FA3A38: On Error Goto loc_FA3B90
  loc_FA3A46: Set var_8C = Me.Txt
  loc_FA3A4C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_FA3A54: var_98 = "Status"
  loc_FA3A5D: Set var_94 = var_90
  loc_FA3A75: If (Proc_6_27_EA565C(var_94, var_98) = 0) Then
  loc_FA3A78:   Exit Sub
  loc_FA3A79: End If
  loc_FA3A86: Me.Label1.Caption = "Saving..."
  loc_FA3A98: Me.Label1.Refresh
  loc_FA3AAE: unk_484AEE.BeginTrans var_9C
  loc_FA3AD1: Set var_8C = Me.Txt
  loc_FA3AD7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_90, var_98, "Delete From MemSelectCategory Where Type='", var_CC)
  loc_FA3ADF: -1 = var_90.Text
  loc_FA3B06: unk_484AEE.Execute var_94 & var_98 & "' And LogSite_Code='" & MemVar_1F92078 & "'", &HFF, var_90
  loc_FA3B4D: Call Proc_340_30_10F18A8(global_56, CByte(Me.Check1.Value))
  loc_FA3B5E: unk_484AEE.CommitTrans
  loc_FA3B65: var_86 = 0
  loc_FA3B75: Me.Label1.Caption = "Save Completed."
  loc_FA3B87: Me.Label1.Refresh
  loc_FA3B8F: Exit Sub
  loc_FA3B90: ' Referenced from: FA3A38
  loc_FA3B96: If (var_86 = &HFF) Then
  loc_FA3B9F:   unk_484AEE.RollbackTrans
  loc_FA3BA4: End If
  loc_FA3BA4: Proc_6_60_E62BC4(var_86)
  loc_FA3BA9: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E2DEB4
  'Data Table: 484AE4
  loc_E2DEA8: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_E2DEAB:   Call DGRestType_UnknownEvent_9()
  loc_E2DEB0: End If
  loc_E2DEB0: Exit Sub
End Sub

Private Sub Form_Load() 'F6544C
  'Data Table: 484AE4
  Dim var_94 As String
  Dim unk_484AEE As Connection15
  Dim unk_484B26 As Connection15
  loc_F65324: On Error Goto loc_F65446
  loc_F65350: var_94 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where Code<>'" & MemVar_1F92078 & "RS' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_F65359: unk_484AEE.Execute var_94, var_B4, -1
  loc_F6538C: CVarUnk
  loc_F65391: VerifyVarObj
  loc_F6539D: LateIdStAd
  loc_F653CF: unk_484B26.Execute "Select Distinct Type From MemSelectCategory where LogSite_Code='" & MemVar_1F92078 & "'", var_B4, -1
  loc_F65401: Set var_B8 = Me
  loc_F65418: Call Proc_340_32_EAFE78(Proc_5_1_100CB50("INI", var_B8, Me.DGRestType, var_B8), var_B8)
  loc_F65423: Call Proc_340_27_10C47D4(var_B8)
  loc_F6542F: Call 0.Method_arg_7C (CDbl(0))
  loc_F6543B: Call 0.Method_arg_74 (CDbl(0))
  loc_F65440: Call Proc_340_34_11E7D0C(var_B8)
  loc_F65445: Exit Sub
  loc_F65446: ' Referenced from: F65324
  loc_F65446: Proc_6_60_E62BC4()
  loc_F6544B: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E28584
  'Data Table: 484AE4
  Dim var_101 As Double
  loc_E28567: Set global_60 = Nothing
  loc_E28579: Set global_64 = Nothing
  loc_E28580: Exit Sub
  loc_E28581: var_101 = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E26DCC
  'Data Table: 484AE4
  loc_E26DA4: On Error Goto loc_E26DC3
  loc_E26DBB: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E26DC3: ' Referenced from: E26DA4
  loc_E26DC3: Proc_6_60_E62BC4(Shift)
  loc_E26DC8: Exit Sub
End Sub

Public Sub Proc_340_27_10C47D4
  'Data Table: 484AE4
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_10C44F6: Me.GridSel.Rows = 1
  loc_10C450A: Me.GridSel.Cols = 3
  loc_10C450F: var_98 = 0
  loc_10C451B: var_BC = CVar(CLng(0)) 'Long
  loc_10C4520: var_DC = "O"
  loc_10C4529: LateIdCallSt
  loc_10C4534: var_98 = CVar(CLng(0)) 'Long
  loc_10C4539: var_BC = &H258
  loc_10C4545: LateIdCallSt
  loc_10C454D: var_98 = 0
  loc_10C4559: var_BC = CVar(CLng(1)) 'Long
  loc_10C455E: var_DC = "Member Category"
  loc_10C4567: LateIdCallSt
  loc_10C4572: var_98 = CVar(CLng(1)) 'Long
  loc_10C457D: var_BC = CVar(CInt(1)) 'Integer
  loc_10C4584: LateIdCallSt
  loc_10C458F: var_98 = CVar(CLng(1)) 'Long
  loc_10C459A: var_BC = CVar(CInt(1)) 'Integer
  loc_10C45A1: LateIdCallSt
  loc_10C45AC: var_98 = CVar(CLng(1)) 'Long
  loc_10C45B1: var_BC = &H1194
  loc_10C45BD: LateIdCallSt
  loc_10C45C5: var_98 = 0
  loc_10C45D1: var_BC = CVar(CLng(2)) 'Long
  loc_10C45D6: var_DC = "Mem Code"
  loc_10C45DF: LateIdCallSt
  loc_10C45EA: var_98 = CVar(CLng(2)) 'Long
  loc_10C45F5: var_BC = CVar(CInt(7)) 'Integer
  loc_10C45FC: LateIdCallSt
  loc_10C4607: var_98 = CVar(CLng(2)) 'Long
  loc_10C4612: var_BC = CVar(CInt(7)) 'Integer
  loc_10C4619: LateIdCallSt
  loc_10C4624: var_98 = CVar(CLng(2)) 'Long
  loc_10C4629: var_BC = 0
  loc_10C4635: LateIdCallSt
  loc_10C463D: var_98 = vbNullString
  loc_10C4647: Set var_AC = Me.GridSel
  loc_10C466B: Me.GridSel.FixedRows = 1
  loc_10C4675: Set var_88 = Nothing 
  loc_10C4689: ReDim Preserve global_56(0 To 0)
  loc_10C46A0: global_56(0) = 0
  loc_10C46B4: Me.GridSel.Height = CVar(CDbl(6000))
  loc_10C46CF: Me.GridSel.Width = CVar(CDbl(5500))
  loc_10C46D7: var_98 = 0
  loc_10C4708: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H1E))
  loc_10C4717: var_98 = 0
  loc_10C4748: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &H1E))
  loc_10C4779: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&HF))
  loc_10C47AA: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&HF))
  loc_10C47C9: Me.Check1.Value = CInt(0)
  loc_10C47D1: Exit Sub
End Sub

Public Sub Proc_340_28_1163D28
  'Data Table: 484AE4
  Dim var_A0 As Variant
  Dim var_C8 As String
  Dim var_CC As String
  Dim unk_484AEE As Connection15
  Dim var_D0 As Variant
  Dim var_DC As String
  Dim var_90 As Recordset15
  Dim var_C4 As Variant
  Dim var_E8 As MSHFlexGrid
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_134 As Variant
  loc_11639B3: Me.GridSel.Row = 1
  loc_11639C5: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11639DE: If (CStr() = "Add") Then
  loc_11639F5:   var_C8 = "Select Code,Name From MemCatMast WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_1163A05:   unk_484AEE.Execute var_C8 & "' or LOGSITE_CODE='HO') Order by Name", var_C4, -1
  loc_1163A10:   Set var_90 = Me.TopCtrl1
  loc_1163A23: Else
  loc_1163A47:   Call 0.Method_Proc_340_28_1163D280 (CInt(2), var_D0, var_C8, "Select M.Code,M.Name,IsNull(MS.Type,'') Type From MemCatMast M Left Join (Select MemCode,Type  From MemSelectCategory Where Type='")
  loc_1163A4F:   var_C4 = var_D0.Text
  loc_1163A58:   var_CC = -1 & var_C8
  loc_1163A6D:   var_DC = var_C8 & "' or LOGSITE_CODE='HO') Order by Name" & "' And LogSite_Code='" & MemVar_1F92078 & "')MS On M.Code=MS.MemCode Where M.LogSite_Code='"
  loc_1163A84:   unk_484AEE.Execute var_DC & MemVar_1F92078 & "' Order By M.Name", var_E8, Me.Txt
  loc_1163A8F:   Set var_90 = var_E8
  loc_1163AAF: End If
  loc_1163AC3: If (var_90.RecordCount > 0) Then
  loc_1163AC6:   ' Referenced from: 1163CF9
  loc_1163AD5:   If Not(var_90.EOF) Then
  loc_1163ADC:     Set var_F4 = Me.GridSel
  loc_1163ADF:     var_A0 = vbNullString
  loc_1163B2E:     var_164 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1163B36:     var_184 = CVar(CLng(0)) 'Long
  loc_1163B6C:     var_1A4 = CVar(CStr(IIf((Proc_6_38_E68A98(CVar(var_90.Fields.Item("Type")), GridSel.DispID_10000) <> vbNullString), "ü", vbNullString))) 'String
  loc_1163B73:     LateIdCallSt
  loc_1163BE2:     var_134 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Name")), CVar(CLng(1)), CVar(CLng(Me.GridSel.Row)), var_F4)) 'String
  loc_1163BE9:     LateIdCallSt
  loc_1163C49:     var_134 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Code")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_F4, var_134)) 'String
  loc_1163C50:     LateIdCallSt
  loc_1163C6A:     Set var_F4 = Nothing 
  loc_1163C80:     Me.GridSel.Col = CVar(CLng(0))
  loc_1163C98:     Me.GridSel.CellFontName = "WINGDINGS"
  loc_1163CB2:     Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1163CD3:     var_A0 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_1163CE2:     Me.GridSel.Row = CVar(CDbl(&HE))
  loc_1163CF4:     var_90.MoveNext
  loc_1163CF9:     GoTo loc_1163AC6
  loc_1163CFC:   End If
  loc_1163D01:   Set var_90 = Nothing
  loc_1163D04: End If
  loc_1163D17: Me.GridSel.FixedRows = 1
  loc_1163D24: Set var_90 = Nothing
  loc_1163D27: Exit Sub
End Sub

Public Sub Proc_340_29_F3856C(arg_C) 'F3856C
  'Data Table: 484AE4
  Dim var_90 As TextBox
  Dim var_9C As String
  Dim unk_484AEE As Connection15
  loc_F384B8: Set var_8C = Me.Txt
  loc_F384BE: Call 0.Method_Proc_340_29_F3856C0 (CInt(2), var_90, var_94, "Insert Into MemSelectCategory(MemCode,Type,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & arg_C & "','")
  loc_F384C6: var_170 = var_90.Text
  loc_F384CF: var_9C = -1 & var_94
  loc_F38503: Proc_183_7_EB0C44(var_CC, Date)
  loc_F38535: unk_484AEE.Execute CStr(CVar(var_9C & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") & var_CC & ",'A','" & CVar(MemVar_1F92078) & "')"), var_174, 
  loc_F3856B: Exit Sub
End Sub

Public Sub Proc_340_30_10F18A8(arg_C, arg_10) '10F18A8
  'Data Table: 484AE4
  Dim var_96 As Integer
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_14C As Variant
  loc_10F1592: On Error Goto loc_10F189A
  loc_10F1597: var_96 = 0
  loc_10F15A3: If (CInt(arg_10) = 1) Then
  loc_10F15CB:   For var_B4 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_98 = var_B4 'Integer
  loc_10F15D4:     var_9A = var_98
  loc_10F15DB:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F15E0:     var_E4 = 2
  loc_10F160F:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_10F1616:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F161B:       var_E4 = 2
  loc_10F163E:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_10F1646:       var_128 = CVar(CLng(0)) 'Long
  loc_10F1655:       var_14C = Me.GridSel.TextMatrix)
  loc_10F166C:       Call Proc_340_29_F3856C(CStr(Me.GridSel.TextMatrix)))
  loc_10F1688:       var_96 = &HFF
  loc_10F168B:     End If
  loc_10F168E:   Next var_B4 'Integer
  loc_10F1696: Else
  loc_10F169E:   CRefVarAry
  loc_10F16A6:   For var_154 = 0 To CInt(UBound(arg_C, 1)):   var_98 = var_154 'Integer
  loc_10F16C7:     If (arg_C(var_98) = 0) Then
  loc_10F16CA:       GoTo loc_10F17D2
  loc_10F16CD:     End If
  loc_10F16DE:     var_9A = CInt(arg_C(var_98))
  loc_10F16E8:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F16F0:     var_E4 = CVar(CLng(0)) 'Long
  loc_10F171B:     If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_10F1722:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F1727:       var_E4 = 2
  loc_10F1756:       If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_10F175D:         var_C4 = CVar(CLng(var_9A)) 'Long
  loc_10F1762:         var_E4 = 2
  loc_10F1785:         var_108 = CVar(CLng(var_9A)) 'Long
  loc_10F178D:         var_128 = CVar(CLng(0)) 'Long
  loc_10F179C:         var_14C = Me.GridSel.TextMatrix)
  loc_10F17B3:         Call Proc_340_29_F3856C(CStr(Me.GridSel.TextMatrix)))
  loc_10F17CF:         var_96 = &HFF
  loc_10F17D2:         ' Referenced from:   10F16CA
  loc_10F17D2:       End If
  loc_10F17D2:     End If
  loc_10F17D5:   Next var_154 'Integer
  loc_10F17DA: End If
  loc_10F17EA: If ((var_96 = 0) And (CInt(arg_10) = 0)) Then
  loc_10F17ED:   var_C4 = 0
  loc_10F17F6:   var_E4 = 1
  loc_10F1809:   var_B0 = Me.GridSel.TextMatrix)
  loc_10F1831:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_164, var_174, var_184)
  loc_10F185C:   Me.GridSel.Row = 1
  loc_10F1864:   var_C4 = 0
  loc_10F1877:   Me.GridSel.Col = var_C4
  loc_10F1883:   Set var_A0 = Me.GridSel
  loc_10F1894: End If
  loc_10F1894: Proc_340_30_10F18A8 = GridSel.DispID_8001
  loc_10F189A: ' Referenced from: 10F1592
  loc_10F189A: Proc_6_60_E62BC4(var_B0, var_E4)
  loc_10F189F: Proc_340_30_10F18A8 = var_C4
End Sub

Public Sub Proc_340_31_EB6ECC
  'Data Table: 484AE4
  loc_EB6E48: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EB6E5A:   Me.DGRestType.Visible = False
  loc_EB6E62: End If
  loc_EB6E7E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB6E90:   Me.FGPoint.Visible = False
  loc_EB6E98: End If
  loc_EB6EB3: If (Me.FrmList.Visible = &HFF) Then
  loc_EB6EC2:   Me.FrmList.Visible = False
  loc_EB6ECA: End If
  loc_EB6ECA: Exit Sub
  loc_EB6ECB: () = 
End Sub

Public Sub Proc_340_32_EAFE78(arg_C) 'EAFE78
  'Data Table: 484AE4
  Dim var_98 As TextBox
  loc_EAFDEC: On Error Goto loc_EAFE4D
  loc_EAFDFD: Set var_8C = Me.Txt
  loc_EAFE03: Call 0.Method_Proc_340_32_EAFE78C (var_8E, var_86)
  loc_EAFE13: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAFE29:   Set var_8C = Me.Txt
  loc_EAFE2F:   Call 0.Method_Proc_340_32_EAFE780 (CInt(var_86), var_98)
  loc_EAFE37:   var_98.Enabled = arg_C
  loc_EAFE46: Next var_92 'Byte
  loc_EAFE4C: Exit Sub
  loc_EAFE4D: ' Referenced from: EAFDEC
  loc_EAFE53: Call 0.Method_arg_50 (var_9C)
  loc_EAFE5B: var_A4 = "Disp_Text"
  loc_EAFE68: Proc_183_57_104AA84(var_9C)
  loc_EAFE74: Exit Sub
End Sub

Public Sub Proc_340_33_EDECCC
  'Data Table: 484AE4
  Dim var_98 As TextBox
  loc_EDEC18: On Error Goto loc_EDECA3
  loc_EDEC29: Set var_8C = Me.Txt
  loc_EDEC2F: Call 0.Method_Proc_340_33_EDECCCC (var_8E, var_86)
  loc_EDEC3F: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EDEC55:   Set var_8C = Me.Txt
  loc_EDEC5B:   Call 0.Method_Proc_340_33_EDECCC0 (CInt(var_86), var_98)
  loc_EDEC63:   var_98.Text = vbNullString
  loc_EDEC7F:   Set var_8C = Me.Txt
  loc_EDEC85:   Call 0.Method_Proc_340_33_EDECCC0 (CInt(var_86), var_98)
  loc_EDEC8D:   var_98.Tag = vbNullString
  loc_EDEC9C: Next var_92 'Byte
  loc_EDECA2: Exit Sub
  loc_EDECA3: ' Referenced from: EDEC18
  loc_EDECA9: Call 0.Method_arg_50 (var_9C)
  loc_EDECB1: var_A4 = "BlankText"
  loc_EDECBE: Proc_183_57_104AA84(var_9C)
  loc_EDECCA: Exit Sub
End Sub

Public Sub Proc_340_34_11E7D0C
  'Data Table: 484AE4
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_128 As Variant
  Dim var_13C As String
  Dim unk_484AEE As Connection15
  Dim var_88 As Recordset15
  Dim var_164 As TextBox
  Dim var_160 As MSHFlexGrid
  Dim var_17C As Variant
  Dim var_15C As Variant
  loc_11E78A4: On Error Goto loc_11E7CE4
  loc_11E78AD: Proc_183_45_E5C118(global_100)
  loc_11E78C9: If (Me.RecordCount <= 0) Then
  loc_11E78CC:   Call Proc_340_33_EDECCC()
  loc_11E78D4: Else
  loc_11E791C:   var_F8 = "Select Distinct Type,U_AE,U_EntDt From MemSelectCategory where Type='" & Me.Fields.Item("Type").Value & "' And LogSite_Code='" 
  loc_11E793D:   unk_484AEE.Execute CStr(var_F8 & CVar(MemVar_1F92078) & "'"), var_15C, -1
  loc_11E7948:   Set var_8C = var_160
  loc_11E7979:   Me.GridSel.Row = 1
  loc_11E79C0:   var_D8 = "Select M.Code,M.Name,MS.Type From MemCatMast M Inner Join MemSelectCategory MS On M.Code=MS.MemCode where MS.Type='" & Me.Fields.Item("Type").Value 
  loc_11E79EA:   unk_484AEE.Execute CStr(var_D8 & "' And MS.LogSite_Code='" & CVar(MemVar_1F92078) & "' Order By M.Name"), var_15C, -1
  loc_11E79F5:   Set var_88 = var_160
  loc_11E7A27:   If (var_88.RecordCount > 0) Then
  loc_11E7A60:     Set var_160 = Me.Txt
  loc_11E7A66:     Call 0.Method_Proc_340_34_11E7D0C0 (CInt(2), var_164)
  loc_11E7A6E:     var_164.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Type")), var_160)
  loc_11E7A82:     ' Referenced from:   11E7CB5
  loc_11E7A91:     If Not(var_88.EOF) Then
  loc_11E7A98:       Set var_16C = Me.GridSel
  loc_11E7A9B:       var_A4 = vbNullString
  loc_11E7AEA:       var_128 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_11E7AF2:       var_17C = CVar(CLng(0)) 'Long
  loc_11E7B10:       var_13C = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Type")), GridSel.DispID_10000)
  loc_11E7B2F:       LateIdCallSt
  loc_11E7B9E:       var_F8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")), CVar(CLng(1)), CVar(CLng(Me.GridSel.Row)), var_16C, CVar(CStr(IIf((var_13C <> vbNullString), "ü", vbNullString))))) 'String
  loc_11E7BA5:       LateIdCallSt
  loc_11E7C05:       var_F8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Code")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_16C, var_F8)) 'String
  loc_11E7C0C:       LateIdCallSt
  loc_11E7C26:       Set var_16C = Nothing 
  loc_11E7C3C:       Me.GridSel.Col = CVar(CLng(0))
  loc_11E7C54:       Me.GridSel.CellFontName = "WINGDINGS"
  loc_11E7C6E:       Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_11E7C8F:       var_A4 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_11E7C9E:       Me.GridSel.Row = CVar(CDbl(&HE))
  loc_11E7CB0:       var_88.MoveNext
  loc_11E7CB5:       GoTo loc_11E7A82
  loc_11E7CB8:     End If
  loc_11E7CBD:     Set var_88 = Nothing
  loc_11E7CC0:   End If
  loc_11E7CD3:   Me.GridSel.FixedRows = 1
  loc_11E7CE0:   Set var_88 = Nothing
  loc_11E7CE3: End If
  loc_11E7CE3: Exit Sub
  loc_11E7CE4: ' Referenced from: 11E78A4
  loc_11E7CEA: Call 0.Method_arg_50 (var_13C, var_16C, var_F8, var_17C)
  loc_11E7CFF: Proc_183_57_104AA84(var_13C, "MoveRec", var_128)
  loc_11E7D0B: Exit Sub
End Sub
