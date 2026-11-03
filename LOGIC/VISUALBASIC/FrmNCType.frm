VERSION 5.00
Begin VB.Form FrmNCType
  Caption = "NC Type"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3285
    Top = 2265
    Width = 4680
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
    Left = 12360
    Top = 2070
    Width = 1935
    Height = 1785
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 15
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 4
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3285
    Top = 2580
    Width = 3480
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 30
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
    Width = 4680
    Height = 450
    TabIndex = 2
  End
  Begin MSFlexGrid FGPoint
    Left = 9570
    Top = 5100
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 5
  End
  Begin DataGrid DGHelp
    Left = 4575
    Top = 3240
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin Label LblName
    Caption = "NC Type"
    Index = 0
    ForeColor = &HC00000&
    Left = 2160
    Top = 2265
    Width = 795
    Height = 240
    TabIndex = 10
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
    Caption = "NC Per."
    Index = 1
    ForeColor = &HC00000&
    Left = 2160
    Top = 2580
    Width = 720
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 1065
    Top = 5760
    Width = 2880
    Height = 255
    TabIndex = 8
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4440
    Top = 5760
    Width = 2790
    Height = 285
    TabIndex = 7
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 6
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

Attribute VB_Name = "FrmNCType"


Private Sub FGPoint_UnknownEvent_9 'E35834
  'Data Table: 458170
  loc_E35828: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3582B:   Call DGHelp_UnknownEvent_9()
  loc_E35830: End If
  loc_E35830: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F3C7A4
  'Data Table: 458170
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3C69B: Me.DGHelp.Visible = False
  loc_F3C6BA: If (Me.RecordCount > 0) Then
  loc_F3C6F9:   Set var_B4 = Me.Txt
  loc_F3C6FF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3C707:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3C73A:   var_B0 = Me.Fields.Item("per")
  loc_F3C759:   Set var_B4 = Me.Txt
  loc_F3C75F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3C767:   var_B8.Text = CStr(var_B0.Value)
  loc_F3C77D: End If
  loc_F3C788: Set var_A8 = Me.Txt
  loc_F3C78E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1))
  loc_F3C796: var_B0.SetFocus
  loc_F3C7A2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6EE88
  'Data Table: 458170
  loc_E6EE46: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E6EE5D: Set var_8C = Me.FGPoint
  loc_E6EE79: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(1))
  loc_E6EE87: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1009570
  'Data Table: 458170
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_100937E: Set var_88 = Me.Txt
  loc_1009384: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1009392: Proc_6_74_E226B0(var_8C)
  loc_100939E: Call Proc_297_31_E86F20(var_8C)
  loc_10093A6: var_92 = Index
  loc_10093B1: If (var_92 = CInt(1)) Then
  loc_10093CB:   If (Me.RecordCount > 0) Then
  loc_10093D9:     Set var_8C = Me.FGPoint
  loc_10093F1:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_10093FF:   End If
  loc_100944D:   Set var_88 = Me.Txt
  loc_1009453:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_100945B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1009473:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1009483:     Set var_88 = Me.Txt
  loc_1009489:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1009491:     var_8C.Tag = vbNullString
  loc_100949D:     Exit Sub
  loc_100949E:   End If
  loc_10094AB:   Set var_88 = Me.Txt
  loc_10094B1:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10094B9:   var_A0 = var_8C.Text
  loc_10094CB:   var_B0 = "Name"
  loc_1009506:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_100950F:     Me.MoveFirst
  loc_1009532:     Set var_88 = Me.Txt
  loc_1009538:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_1009540:     0 = var_8C.Text
  loc_1009559:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_100956E:   End If
  loc_100956E: End If
  loc_100956E: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '101F294
  'Data Table: 458170
  Dim Me As Recordset15
  loc_101F086: If (CLng(Shift) = &H1B) Then
  loc_101F089:   Call Proc_297_31_E86F20()
  loc_101F08E:   Exit Sub
  loc_101F08F: End If
  loc_101F09D: If (KeyCode = CInt(1)) Then
  loc_101F0C2:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_101F0E2:     Set var_A0 = Me.FGPoint
  loc_101F114:     Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(1), global_56, Shift)
  loc_101F128:   End If
  loc_101F181:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_101F1A7:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_101F1B5:   End If
  loc_101F1B5: End If
  loc_101F1D1: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_101F1E7:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(2))) Then
  loc_101F1F0:     Proc_6_76_E52838(Shift, arg_14, 1)
  loc_101F1F5:   End If
  loc_101F213:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(2))) Then
  loc_101F21C:     Call Txt_Validate(KeyCode)
  loc_101F227:     If (var_86 = 0) Then
  loc_101F261:       If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_130) = 6) Then
  loc_101F264:         Call TopCtrl1_UnknownEvent_16()
  loc_101F269:       End If
  loc_101F269:       Exit Sub
  loc_101F26A:     End If
  loc_101F26D:   Else
  loc_101F282:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_101F28B:       Proc_6_75_E527CC(Shift, arg_14, var_86)
  loc_101F290:     End If
  loc_101F290:   End If
  loc_101F290: End If
  loc_101F290: Exit Sub
  loc_101F291: ThisVCallI2
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E4F24C
  'Data Table: 458170
  Dim arg_10 As Integer
  Dim var_800 As Double
  loc_E4F21E: Proc_6_133_E7EF78(var_94)
  loc_E4F233: If (CInt(var_94) = &HD) Then
  loc_E4F238:   arg_10 = 0
  loc_E4F23B: End If
  loc_E4F23E: Proc_6_58_E054C0(arg_10, arg_10)
  loc_E4F249: Exit Sub
  loc_E4F24A: var_800 = KeyAscii
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFF954
  'Data Table: 458170
  Dim var_86 As Integer
  loc_DFF94F: var_86 = KeyCode
  loc_DFF952: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F6BC
  'Data Table: 458170
  loc_E4F69A: Set var_88 = Me.Txt
  loc_E4F6A0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F6AE: Proc_6_73_E22704(var_8C)
  loc_E4F6BA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E2824C
  'Data Table: 458170
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E28223: var_86 = Cancel
  loc_E2822E: If (var_86 = CInt(1)) Then
  loc_E28234:   Call Proc_297_30_108A1D0(var_88)
  loc_E2823F:   If (var_88 = &HFF) Then
  loc_E28244:     arg_10 = &HFF
  loc_E28247:     Exit Sub
  loc_E28248:   End If
  loc_E28248: End If
  loc_E28248: Exit Sub
  loc_E28249: Get , , var_86 'get arg_10 bytes
End Sub

Private Sub Form_Load() '10C8848
  'Data Table: 458170
  Dim var_88 As Label
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim unk_458185 As Connection15
  loc_10C856C: On Error Goto loc_10C8802
  loc_10C857E: Me.LblUser.Left = CDbl(13500)
  loc_10C8595: Me.LblUser.Top = CDbl(7800)
  loc_10C85AC: Me.LblLDt.Top = CDbl(8160)
  loc_10C85C3: Me.LblLDt.Left = CDbl(13500)
  loc_10C85D2: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10C85E5: Set var_88 = Me.Txt
  loc_10C85EB: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_10C860A: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_10C8626: Set var_B4 = Me.Txt
  loc_10C862C: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_10C8647: Set var_88 = Me.Txt
  loc_10C864D: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_10C8665: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_10C8674: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_10C8690: Set var_88 = Me.TopCtrl1
  loc_10C8696: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_10C86A4: Call 0.Method_arg_50 (var_C4)
  loc_10C86AC: var_D4 = CVar(var_C4) 'String
  loc_10C86BA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D4)
  loc_10C86E0: var_D8 = "SELECT NCType As Code,NCType As Name,NCPer as Per,SITE_CODE,LogSite_Code FROM NCTypeMast WHERE SITE_CODE='" & MemVar_1F92070 & "' And (LOGSITE_CODE='"
  loc_10C86F7: unk_458185.Execute var_D8 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY NCType", var_D4, -1
  loc_10C872A: CVarUnk
  loc_10C872F: VerifyVarObj
  loc_10C873B: LateIdStAd
  loc_10C875D: var_C4 = "SELECT NCType As Code,NCType,NCPer as Per,SITE_CODE,LOGSITE_CODE,U_AE,U_EntDt,U_Name FROM NCTypeMast WHERE SITE_CODE='" & MemVar_1F92070
  loc_10C877B: unk_458185.Execute var_C4 & "' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY NCType", var_D4, -1
  loc_10C87B1: Set var_88 = Me
  loc_10C87BA: var_C4 = "INI"
  loc_10C87C8: Call Proc_297_27_E6ECD0(Proc_5_1_100CB50(var_C4, var_88, Me.DGHelp, var_88), var_88)
  loc_10C87D8: Call Proc_297_27_E6ECD0(0, Me.TopCtrl1)
  loc_10C87E6: Call 0.Method_arg_160 (var_88)
  loc_10C87F4: Call 0.Method_arg_164 (var_88)
  loc_10C87FC: Call Proc_297_29_1199404(var_88)
  loc_10C8801: Exit Sub
  loc_10C8802: ' Referenced from: 10C856C
  loc_10C880A: Set var_88 = Err()
  loc_10C8810: Call 0.Method_arg_2C (var_C4)
  loc_10C8831: MsgBox(CVar(var_C4), &H40, "Information", var_104, var_124)
  loc_10C8844: Exit Sub
  loc_10C8845: Exit Sub
End Sub

Private Sub Form_Resize() 'ED64A8
  'Data Table: 458170
  Dim var_8C As Label
  loc_ED6406: Call 0.Method_arg_50 (var_88)
  loc_ED6418: Me.LblFormCaption.Caption = var_88
  loc_ED6431: Me.LblFormCaption.Left = CDbl(0)
  loc_ED643D: Set var_A0 = Me.TopCtrl1
  loc_ED6443: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED6450: Set var_8C = Me.TopCtrl1
  loc_ED6456: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED6470: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED648B: Call 0.Method_arg_100 (var_B8)
  loc_ED649D: Me.LblFormCaption.Width = var_B8
  loc_ED64A5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2835C
  'Data Table: 458170
  loc_E2833F: Set global_52 = Nothing
  loc_E28351: Set global_56 = Nothing
  loc_E28358: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8B378
  'Data Table: 458170
  loc_E8B314: On Error Goto loc_E8B334
  loc_E8B32B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8B333: Exit Sub
  loc_E8B334: ' Referenced from: E8B314
  loc_E8B33C: Set var_88 = Err()
  loc_E8B342: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8B363: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8B376: Exit Sub
  loc_E8B377: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EABE14
  'Data Table: 458170
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EABD88: On Error Goto loc_EABE0E
  loc_EABDAE: Call Proc_297_27_E6ECD0(Proc_5_1_100CB50("ADD", Me))
  loc_EABDB9: Call Proc_297_28_E7E120(global_52)
  loc_EABDC9: Set var_8C = Me.Txt
  loc_EABDCF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_EABDD7: var_94.SetFocus
  loc_EABDF0: Me.LblUser.Caption = vbNullString
  loc_EABE05: Me.LblLDt.Caption = vbNullString
  loc_EABE0D: Exit Sub
  loc_EABE0E: ' Referenced from: EABD88
  loc_EABE0E: Proc_6_60_E62BC4(var_94)
  loc_EABE13: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC46CC
  'Data Table: 458170
  loc_EC4634: On Error Goto loc_EC46C4
  loc_EC466E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC467D:   Set var_10C = Me
  loc_EC4694:   Call Proc_297_27_E6ECD0(Proc_5_1_100CB50("INI", var_10C))
  loc_EC469F:   Call Proc_297_31_E86F20(global_52)
  loc_EC46A4:   Call Proc_297_29_1199404()
  loc_EC46AC: Else
  loc_EC46B2:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC46BA:   Call var_10C.SetFocus
  loc_EC46C3: End If
  loc_EC46C3: Exit Sub
  loc_EC46C4: ' Referenced from: EC4634
  loc_EC46C4: Proc_6_60_E62BC4()
  loc_EC46C9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1192844
  'Data Table: 458170
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim unk_458185 As Connection15
  Dim var_114 As Variant
  Dim var_B0 As String
  loc_119248C: On Error Goto loc_11927F5
  loc_119249D: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_11924A0:   Exit Sub
  loc_11924A1: End If
  loc_11924D3: var_D0 = "Kot Entry"
  loc_119251B: If (Proc_6_108_1010FEC(MemVar_1F92044, "Kot", "NCType", CStr(Me.Fields.Item("NCType").Value)) = 0) Then
  loc_119251E:   Exit Sub
  loc_119251F: End If
  loc_1192556: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_1192562:   unk_458185.BeginTrans var_CC
  loc_1192578:   var_94 = Me.Bookmark 'Variant
  loc_11925C4:   var_114 = "Delete From NCTypeMast Where NCType='" & Me.Fields.Item("NCType").Value & "' And Site_Code='" 
  loc_11925ED:   var_134 = Me.Fields.Item("Site_Code").Value
  loc_119260C:   unk_458185.Execute CStr(var_114 & var_134 & "'"), var_18C, -1
  loc_119268B:   var_1BC = 0
  loc_119269E:   var_1B4 = 0
  loc_11926A9:   var_1B0 = 0
  loc_11926BC:   var_1A8 = 0
  loc_11926C7:   var_1A4 = 0
  loc_11926DA:   var_19C = 0
  loc_1192715:   var_B0 = "NCTypeMast"
  loc_119271E:   Proc_154_5_10E33A4(MemVar_1F92044, var_B0, "NCType", &HC8, CStr(Me.Fields.Item("NCType").Value), "Site_Code", &HC8, CStr(Me.Fields.Item("Site_Code").Value))
  loc_1192754:   unk_458185.CommitTrans
  loc_1192764:   Me.Requery -1
  loc_1192774:   Me.Requery -1
  loc_1192794:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11927A1:     Me.Bookmark = var_94
  loc_11927A9:   Else
  loc_11927BD:     If (Me.EOF = 0) Then
  loc_11927C6:       Me.MoveLast
  loc_11927CB:     End If
  loc_11927CB:   End If
  loc_11927CB:   Call Proc_297_29_1199404(var_19C, 0, var_1A4, var_1A8)
  loc_11927EC:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_11927F4: End If
  loc_11927F4: Exit Sub
  loc_11927F5: ' Referenced from: 119248C
  loc_11927FB: unk_458185.RollbackTrans
  loc_1192808: Set var_98 = Err()
  loc_119280E: Call 0.Method_arg_2C (var_B0, 0, var_1B0)
  loc_119282F: MsgBox(CVar(var_B0), &H30, " Deletion Error ", var_114, var_134)
  loc_1192842: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF12E8
  'Data Table: 458170
  Dim var_94 As TextBox
  Dim var_8C As Label
  Dim var_701 As Integer
  loc_EF1218: On Error Goto loc_EF12E0
  loc_EF1229: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_EF122C:   Exit Sub
  loc_EF122D: End If
  loc_EF1250: Call Proc_297_27_E6ECD0(Proc_5_1_100CB50("EDIT", Me))
  loc_EF1269: Set var_8C = Me.Txt
  loc_EF126F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_EF1282: global_64 = var_94.Text
  loc_EF129D: Me.LblUser.Caption = vbNullString
  loc_EF12B2: Me.LblLDt.Caption = vbNullString
  loc_EF12C5: Set var_8C = Me.Txt
  loc_EF12CB: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_EF12D3: var_94.SetFocus
  loc_EF12DF: Exit Sub
  loc_EF12E0: ' Referenced from: EF1218
  loc_EF12E0: Proc_6_60_E62BC4(global_52)
  loc_EF12E5: Exit Sub
  loc_EF12E6: var_701 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B910
  'Data Table: 458170
  loc_E1B905: Me.Global.Unload Me
  loc_E1B90D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F52534
  'Data Table: 458170
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_110 As String
  Dim MemVar_1F920E4 As String
  loc_F52420: On Error Goto loc_F524CC
  loc_F5242C: var_88 = Me.RecordCount
  loc_F5243A: If (var_88 <= 0) Then
  loc_F52443:   var_B8 = "Information"
  loc_F5245E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F5246E:   Exit Sub
  loc_F5246F: End If
  loc_F5247D: var_110 = "Select NCType As SEARCHCODE,NCType,NCPer FROM NCTypeMast WHERE SITE_CODE='" & MemVar_1F92070 & "' And LOGSITE_CODE IN ('HO','"
  loc_F5248B: MemVar_1F920E4 = var_110 & MemVar_1F92078 & "') ORDER BY NCType"
  loc_F5249E: MemVar_1F92120 = Me
  loc_F524A5: var_10C = "3900,1000"
  loc_F524AB: Proc_6_126_F1BCC0(var_10C)
  loc_F524C6: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F524CB: Exit Sub
  loc_F524CC: ' Referenced from: F52420
  loc_F524D4: Set var_118 = Err()
  loc_F524DA: Call 0.Method_arg_1C (var_88)
  loc_F524EB: If (var_88 <> 0) Then
  loc_F524F6:   Set var_118 = Err()
  loc_F524FC:   Call 0.Method_arg_2C (var_10C)
  loc_F5251D:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F52530: End If
  loc_F52530: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E35BF8
  'Data Table: 458170
  loc_E35BE8: Proc_5_0_110649C(&HFF, Me)
  loc_E35BF0: Call Proc_297_29_1199404(global_52)
  loc_E35BF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E35EF8
  'Data Table: 458170
  loc_E35EE8: Proc_5_0_110649C(&HFF, Me)
  loc_E35EF0: Call Proc_297_29_1199404(global_52)
  loc_E35EF5: Exit Sub
  loc_E35EF6: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E35D78
  'Data Table: 458170
  loc_E35D68: Proc_5_0_110649C(&HFF, Me)
  loc_E35D70: Call Proc_297_29_1199404(global_52)
  loc_E35D75: Exit Sub
  loc_E35D76: var_7F8 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E35D18
  'Data Table: 458170
  loc_E35D08: Proc_5_0_110649C(&HFF, Me)
  loc_E35D10: Call Proc_297_29_1199404(global_52)
  loc_E35D15: Exit Sub
  loc_E35D16: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1074BE8
  'Data Table: 458170
  Dim unk_458185 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_1074968: On Error Goto loc_1074B9F
  loc_1074981: unk_458185.Execute "Select Nctype,NCPer,U_Name,U_AE,U_Entdt FROM NCTypeMast ORDER BY NCType", var_BC, -1
  loc_107498C: Set var_88 = var_C0
  loc_107499B: var_C4 = var_88.RecordCount
  loc_10749A9: If (var_C4 = 0) Then
  loc_10749C5:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_10749D5:   Exit Sub
  loc_10749D6: End If
  loc_10749E5: var_12C = MemVar_1F920B4 & "\NCType.ttx"
  loc_10749EC: Set var_C0 = var_88 
  loc_10749F8: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_1074A02: Set var_88 = var_C0
  loc_1074A08: var_AC = CVar(var_12E) 'Integer
  loc_1074A0B: var_98 = var_AC 'Variant
  loc_1074A27: var_128 = MemVar_1F920B4 & "\NCType.RPT"
  loc_1074A30: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_1074A3B: MemVar_1F921E4 = var_C0
  loc_1074A56: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_1074A5E: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1074A6A: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_1074A83:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1074A8B:   Call 0.Method_arg_20 (var_138)
  loc_1074A93:   Call 0.Method_arg_30 (var_128)
  loc_1074AD9:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_1074AEF:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1074AF7:     Call 0.Method_arg_20 (var_138)
  loc_1074AFF:     Call 0.Method_arg_38 ("'NC Type'")
  loc_1074B0B:   End If
  loc_1074B0E: Next var_132 'Integer
  loc_1074B2C: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_1074B34: Call 0.Method_arg_2C (var_D4)
  loc_1074B42: Call 0.Method_arg_150 (var_F4)
  loc_1074B4D: Call 0.Method_arg_50 (var_128)
  loc_1074B57: Set var_138 = Nothing
  loc_1074B71: Set var_C0 = MemVar_1F921E4 
  loc_1074B7D: Proc_6_99_1483714(var_C0, 0, var_128)
  loc_1074B88: MemVar_1F921E4 = var_C0
  loc_1074B9B: Set var_88 = Nothing
  loc_1074B9E: Exit Sub
  loc_1074B9F: ' Referenced from: 1074968
  loc_1074BA7: Set var_C0 = Err()
  loc_1074BAD: Call 0.Method_arg_2C (var_128, &HFF)
  loc_1074BB8: Call 0.Method_arg_50 (var_12C)
  loc_1074BD4: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_1074BE7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B2D8
  'Data Table: 458170
  Dim Me As Recordset15
  loc_E0B2CF: Me.Requery -1
  loc_E0B2D4: Exit Sub
  loc_E0B2D5: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1247B68
  'Data Table: 458170
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_94 As Variant
  Dim unk_458185 As Connection15
  Dim var_190 As Double
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_194 As TextBox
  Dim var_188 As Variant
  Dim var_284 As Variant
  loc_1247690: On Error Goto loc_1247B15
  loc_1247697: var_86 = CByte(0) 'Byte
  loc_12476A6: Set var_90 = Me.Txt
  loc_12476AC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_12476D5: If (Proc_6_27_EA565C(var_94, "NCType") = 0) Then
  loc_12476DF:   Call Txt_GotFocus(CInt(1))
  loc_12476E4:   Exit Sub
  loc_12476E5: End If
  loc_12476E8: Call Proc_297_30_108A1D0(var_9E)
  loc_12476F3: If (var_9E = &HFF) Then
  loc_12476F6:   Exit Sub
  loc_12476F7: End If
  loc_12476FB: Set var_90 = Me.TopCtrl1
  loc_1247701: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_124771A: If (CStr() = "Add") Then
  loc_1247728:   Set var_90 = Me.Txt
  loc_124772E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_124773D:   var_C0 = Trim(CVar(var_94))
  loc_124774C:   global_60 = CStr(var_C0)
  loc_1247760: Else
  loc_124777D:   var_94 = Me.Fields.Item("Code")
  loc_1247794:   global_60 = CStr(var_94.Value)
  loc_12477A5: End If
  loc_12477AE: unk_458185.BeginTrans var_D4
  loc_12477B7: var_86 = CByte(1) 'Byte
  loc_12477BF: Set var_90 = Me.TopCtrl1
  loc_12477C5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_12477DE: If (CStr() = "Add") Then
  loc_12477EF:   Set var_90 = Me.Txt
  loc_12477F5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94)
  loc_124780A:   var_190 = Val(var_94.Text)
  loc_1247812:   var_B0 = CVar(Proc_6_14_EF349C(var_190)) 'String
  loc_1247818:   Proc_6_8_EB0DE4(var_C0)
  loc_1247834:   var_9C = "Insert Into NCTypeMast(NCType,NCPer,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_60
  loc_1247883:   var_144 = CVar(var_9C & "'," & CStr(var_190) & ",'" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") & var_C0 & ",'A','" & CVar(MemVar_1F92078) 
  loc_124789A:   unk_458185.Execute CStr(var_144 & "')"), var_188, -1
  loc_12478D5: Else
  loc_12478E0:   Set var_90 = Me.Txt
  loc_12478E6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_1247908:   Set var_98 = Me.Txt
  loc_124790E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_194, var_9C)
  loc_1247916:   var_98 = var_194.Text
  loc_1247923:   var_190 = Val(var_9C)
  loc_1247931:   Proc_6_8_EB0DE4(var_214, CVar(Proc_6_14_EF349C(var_190)))
  loc_124795B:   var_154 = CVar(var_190) 'Double
  loc_124797B:   var_188 = "UPDATE NCTypeMast SET NCType='" & Trim(CVar(var_94)) & "',NCPer=" & var_154 & ",LOGSITE_CODE='" & CVar(MemVar_1F92078) & "',U_name='" 
  loc_12479B4:   var_284 = var_188 & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_214 & " ,U_AE='E' WHERE NCType='" & CVar(global_60) & "' And SITE_CODE='" 
  loc_12479D5:   unk_458185.Execute CStr(var_284 & CVar(MemVar_1F92070) & "'"), var_2E4, -1
  loc_1247A15: End If
  loc_1247A1B: unk_458185.CommitTrans
  loc_1247A24: var_86 = CByte(0) 'Byte
  loc_1247A33: Me.Requery -1
  loc_1247A43: Me.Requery -1
  loc_1247A66: Set var_90 = Me.Txt
  loc_1247A6C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, "code='", 0)
  loc_1247A74: var_B0 = CVar(var_94) 'Address
  loc_1247A7B: var_C0 = Trim(var_B0)
  loc_1247A83: var_104 = 1 & var_C0 
  loc_1247A8C: var_114 = var_104 & "'" 
  loc_1247A9A: Me.Find CStr(var_114), var_154, var_2E8
  loc_1247AB4: Set var_90 = Me.TopCtrl1
  loc_1247ABA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_B0)
  loc_1247AD3: If (CStr() = "Add") Then
  loc_1247AD6:   Call TopCtrl1_UnknownEvent_A()
  loc_1247ADB:   Exit Sub
  loc_1247ADC: End If
  loc_1247AF1: var_9C = "INI"
  loc_1247AFF: Call Proc_297_27_E6ECD0(Proc_5_1_100CB50(var_9C, Me))
  loc_1247B0A: Call Proc_297_31_E86F20(global_52)
  loc_1247B0F: Call Proc_297_29_1199404()
  loc_1247B14: Exit Sub
  loc_1247B15: ' Referenced from: 1247690
  loc_1247B1E: If (CInt(var_86) = 1) Then
  loc_1247B27:   unk_458185.RollbackTrans
  loc_1247B2C: End If
  loc_1247B34: Set var_90 = Err()
  loc_1247B3A: Call 0.Method_arg_2C (var_9C)
  loc_1247B53: MsgBox(CVar(var_9C), &H10, var_C0, var_104, var_114)
  loc_1247B66: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC4884
  'Data Table: 458170
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC47FA: On Error Goto loc_EC483F
  loc_EC4803: Me.MoveFirst
  loc_EC481D: var_8C = "code='" & MyValue
  loc_EC482D: Me.Find var_8C & "'", 0, 1
  loc_EC4839: Call Proc_297_29_1199404(var_A0)
  loc_EC483E: Exit Sub
  loc_EC483F: ' Referenced from: EC47FA
  loc_EC4847: Set var_A4 = Err()
  loc_EC484D: Call 0.Method_arg_2C (var_8C)
  loc_EC486E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC4881: Exit Sub
  loc_EC4882: Exit Sub
End Sub

Public Sub Proc_297_27_E6ECD0(arg_C) 'E6ECD0
  'Data Table: 458170
  Dim var_98 As TextBox
  loc_E6EC82: Set var_8C = Me.Txt
  loc_E6EC88: Call 0.Method_Proc_297_27_E6ECD0C (var_8E, var_86)
  loc_E6EC95: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_E6ECAB:   Set var_8C = Me.Txt
  loc_E6ECB1:   Call 0.Method_Proc_297_27_E6ECD00 (CInt(var_86), var_98)
  loc_E6ECB9:   var_98.Enabled = arg_C
  loc_E6ECC8: Next var_92 'Byte
  loc_E6ECCE: Exit Sub
End Sub

Public Sub Proc_297_28_E7E120
  'Data Table: 458170
  Dim var_98 As TextBox
  loc_E7E0BE: global_64 = vbNullString
  loc_E7E0D0: Set var_8C = Me.Txt
  loc_E7E0D6: Call 0.Method_Proc_297_28_E7E120C (var_8E, var_86)
  loc_E7E0E3: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_E7E0F9:   Set var_8C = Me.Txt
  loc_E7E0FF:   Call 0.Method_Proc_297_28_E7E1200 (CInt(var_86), var_98)
  loc_E7E107:   var_98.Text = vbNullString
  loc_E7E116: Next var_92 'Byte
  loc_E7E11C: Exit Sub
End Sub

Public Sub Proc_297_29_1199404
  'Data Table: 458170
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_BC As Fields15
  Dim var_B8 As String
  Dim var_D0 As TextBox
  loc_1199038: On Error Goto loc_11993C0
  loc_1199041: Proc_183_45_E5C118(global_52)
  loc_119905D: If (Me.RecordCount <= 0) Then
  loc_1199060:   Call Proc_297_28_E7E120()
  loc_1199068: Else
  loc_1199111:   var_184 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_1199159:   Me.LblUser.Caption = CStr(var_184 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_Name")))))
  loc_11991D9:   var_D0 = Me.Fields.Item("U_AE")
  loc_11991F2:   var_134 = "entdt :   "
  loc_11991FD:   var_114 = "Last Update :   "
  loc_119923A:   var_184 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_D0)) = "E"), var_114, var_134))
  loc_1199282:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_EntDt")))))
  loc_11992EE:   global_60 = CStr(Me.Fields.Item("Code").Value)
  loc_119933B:   Set var_BC = Me.Txt
  loc_1199341:   Call 0.Method_Proc_297_29_11994040 (CInt(1), var_D0)
  loc_1199349:   var_D0.Text = CStr(Me.Fields.Item("NCType").Value)
  loc_119938D:   var_B8 = CStr(Me.Fields.Item("per").Value)
  loc_119939B:   Set var_BC = Me.Txt
  loc_11993A1:   Call 0.Method_Proc_297_29_11994040 (CInt(2), var_D0)
  loc_11993A9:   var_D0.Text = var_B8
  loc_11993BF: End If
  loc_11993BF: Exit Sub
  loc_11993C0: ' Referenced from: 1199038
  loc_11993C8: Set var_90 = Err()
  loc_11993CE: Call 0.Method_arg_2C (var_B8)
  loc_11993EF: MsgBox(CVar(var_B8), &H40, "Information", var_114, var_134)
  loc_1199402: Exit Sub
End Sub

Public Sub Proc_297_30_108A1D0
  'Data Table: 458170
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_458185 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1089F63: If (Me.RecordCount = 0) Then
  loc_1089F66:   Proc_297_30_108A1D0 = 
  loc_1089F6C: End If
  loc_1089F70: Set var_90 = Me.TopCtrl1
  loc_1089F76: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1089F8F: If (CStr() = "Add") Then
  loc_1089FCD:   Set var_90 = Me.Txt
  loc_1089FD3:   Call 0.Method_Proc_297_30_108A1D00 (CInt(1), var_A8, var_AC, "Select Count(*) From NCTypeMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and NCTYPE='", var_A0, -1)
  loc_1089FF4:   unk_458185.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_108A004:    = var_D0.Item()
  loc_108A00C:    = var_E4.Value
  loc_108A03D:   If (var_A8.Text.Fields > 0) Then
  loc_108A05B:     var_A0 = "Duplicate Name"
  loc_108A061:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_108A07C:     Set var_90 = Me.Txt
  loc_108A082:     Call 0.Method_Proc_297_30_108A1D00 (CInt(1))
  loc_108A08A:     var_A8.SetFocus
  loc_108A09B:     Proc_297_30_108A1D0 = &HFF
  loc_108A0A1:   End If
  loc_108A0A4: Else
  loc_108A0DF:   Set var_90 = Me.Txt
  loc_108A0E5:   Call 0.Method_Proc_297_30_108A1D00 (CInt(1), var_A8, var_AC, "Select Count(*) From NCTypeMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (NCType='", var_A0, -1)
  loc_108A117:   unk_458185.Execute var_D0 & var_AC & "' And NCType<>'" & global_64 & "')", 0, var_E4
  loc_108A127:    = var_D0.Item(var_A8)
  loc_108A12F:    = var_E4.Value
  loc_108A164:   If (var_A8.Text.Fields > 0) Then
  loc_108A188:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108A1A3:     Set var_90 = Me.Txt
  loc_108A1A9:     Call 0.Method_Proc_297_30_108A1D00 (CInt(1))
  loc_108A1B1:     var_A8.SetFocus
  loc_108A1C2:     Proc_297_30_108A1D0 = &HFF
  loc_108A1C8:   End If
  loc_108A1C8: End If
  loc_108A1C8: Proc_297_30_108A1D0 = var_A8
End Sub

Public Sub Proc_297_31_E86F20
  'Data Table: 458170
  loc_E86ECC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E86EDE:   Me.DGHelp.Visible = False
  loc_E86EE6: End If
  loc_E86F02: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E86F14:   Me.FGPoint.Visible = False
  loc_E86F1C: End If
  loc_E86F1C: Exit Sub
End Sub

Public Sub Proc_297_32_E9101C(arg_C) 'E9101C
  'Data Table: 458170
  Dim var_10C As TextBox
  loc_E90FB0: Call Proc_297_31_E86F20()
  loc_E90FEC: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E90FEF:   Call TopCtrl1_UnknownEvent_16()
  loc_E90FF7: Else
  loc_E91001:   Set var_108 = Me.Txt
  loc_E91007:   Call 0.Method_Proc_297_32_E9101C0 (arg_C)
  loc_E9100F:   var_10C.SetFocus
  loc_E9101B: End If
  loc_E9101B: Exit Sub
End Sub
