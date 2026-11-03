VERSION 5.00
Begin VB.Form frmUnitMast
  Caption = "Unit Master"
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3285
    Top = 2580
    Width = 1440
    Height = 285
    TabIndex = 3
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
  Begin Frame FrmList
    Left = 12360
    Top = 2070
    Width = 1935
    Height = 1785
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 15
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 2
    End
  End
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 450
    TabIndex = 4
  End
  Begin DataGrid DGHelp
    Left = 9240
    Top = 840
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MSFlexGrid FGPoint
    Left = 9570
    Top = 5100
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 6
  End
  Begin DataGrid DGRest
    Left = 8040
    Top = 3120
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin DataGrid DGBarCode
    Left = 8640
    Top = 1320
    Width = 3855
    Height = 2820
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin Label LblName
    Caption = "Active"
    Index = 1
    ForeColor = &HC00000&
    Left = 2160
    Top = 2580
    Width = 585
    Height = 240
    TabIndex = 13
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
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 12
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
    Left = 4440
    Top = 5760
    Width = 2790
    Height = 285
    TabIndex = 11
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
    Left = 1065
    Top = 5760
    Width = 2880
    Height = 255
    TabIndex = 10
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
    Caption = "Unit"
    Index = 0
    ForeColor = &HC00000&
    Left = 2160
    Top = 2265
    Width = 375
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
End

Attribute VB_Name = "frmUnitMast"


Private Sub DGHelp_UnknownEvent_9 'F3D564
  'Data Table: 471738
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3D45B: Me.DGHelp.Visible = False
  loc_F3D47A: If (Me.RecordCount > 0) Then
  loc_F3D4B9:   Set var_B4 = Me.Txt
  loc_F3D4BF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3D4C7:   var_B8.Text = CStr(Me.Fields.Item("Unit").Value)
  loc_F3D4FA:   var_B0 = Me.Fields.Item("Active")
  loc_F3D519:   Set var_B4 = Me.Txt
  loc_F3D51F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3D527:   var_B8.Text = CStr(var_B0.Value)
  loc_F3D53D: End If
  loc_F3D548: Set var_A8 = Me.Txt
  loc_F3D54E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1))
  loc_F3D556: var_B0.SetFocus
  loc_F3D562: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E70074
  'Data Table: 471738
  loc_E70032: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E70049: Set var_8C = Me.FGPoint
  loc_E70065: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(1))
  loc_E70073: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E311B4
  'Data Table: 471738
  loc_E311A8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E311AB:   Call DGHelp_UnknownEvent_9()
  loc_E311B0: End If
  loc_E311B0: Exit Sub
End Sub

Private Sub Form_Load() '108FDA4
  'Data Table: 471738
  Dim var_88 As Label
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As String
  Dim unk_47174C As Connection15
  Dim var_E0 As Variant
  loc_108FB10: On Error Goto loc_108FD5D
  loc_108FB22: Me.LblUser.Left = CDbl(13500)
  loc_108FB39: Me.LblUser.Top = CDbl(7800)
  loc_108FB50: Me.LblLDt.Top = CDbl(8160)
  loc_108FB67: Me.LblLDt.Left = CDbl(13500)
  loc_108FB76: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_108FB89: Set var_88 = Me.Txt
  loc_108FB8F: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_108FBAE: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_108FBCA: Set var_B4 = Me.Txt
  loc_108FBD0: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_108FBF1: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_108FC09: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_108FC18: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_108FC3E: var_C4 = "SELECT Name as Unit, Status as Active,Site_code,LOGSITE_CODE,U_AE,U_Name,U_EntDt from UnitMast WHERE (Site_code='" & MemVar_1F92070
  loc_108FC5C: unk_47174C.Execute var_C4 & "' and LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_E0, -1
  loc_108FC8F: CVarUnk
  loc_108FC94: VerifyVarObj
  loc_108FCA0: LateIdStAd
  loc_108FCC2: var_C4 = "SELECT Name as Unit, Status as Active,Site_code,LOGSITE_CODE,U_AE,U_Name,U_EntDt from UnitMast WHERE (Site_code='" & MemVar_1F92070
  loc_108FCE0: unk_47174C.Execute var_C4 & "' and LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_E0, -1
  loc_108FD16: Set var_88 = Me
  loc_108FD1F: var_C4 = "INI"
  loc_108FD2D: Call Proc_298_27_E702C8(Proc_5_1_100CB50(var_C4, var_88, Me.DGHelp, var_88), var_88)
  loc_108FD41: Call 0.Method_arg_160 (var_88, Me.Txt)
  loc_108FD4F: Call 0.Method_arg_164 (var_88)
  loc_108FD57: Call Proc_298_29_11E8B84(var_88)
  loc_108FD5C: Exit Sub
  loc_108FD5D: ' Referenced from: 108FB10
  loc_108FD65: Set var_88 = Err()
  loc_108FD6B: Call 0.Method_arg_2C (var_C4)
  loc_108FD8C: MsgBox(CVar(var_C4), &H40, "Information", var_104, var_124)
  loc_108FD9F: Exit Sub
  loc_108FDA0: Exit Sub
End Sub

Private Sub Form_Resize() 'ED8578
  'Data Table: 471738
  Dim var_8C As Label
  loc_ED84D6: Call 0.Method_arg_50 (var_88)
  loc_ED84E8: Me.LblFormCaption.Caption = var_88
  loc_ED8501: Me.LblFormCaption.Left = CDbl(0)
  loc_ED850D: Set var_A0 = Me.TopCtrl1
  loc_ED8513: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_80010006()
  loc_ED8520: Set var_8C = Me.TopCtrl1
  loc_ED8526: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_80010004()
  loc_ED8540: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED855B: Call 0.Method_arg_100 (var_B8)
  loc_ED856D: Me.LblFormCaption.Width = var_B8
  loc_ED8575: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E28C58
  'Data Table: 471738
  loc_E28C3B: Set global_52 = Nothing
  loc_E28C4D: Set global_56 = Nothing
  loc_E28C54: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8AB68
  'Data Table: 471738
  loc_E8AB04: On Error Goto loc_E8AB24
  loc_E8AB1B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8AB23: Exit Sub
  loc_E8AB24: ' Referenced from: E8AB04
  loc_E8AB2C: Set var_88 = Err()
  loc_E8AB32: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8AB53: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8AB66: Exit Sub
  loc_E8AB67: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1007E28
  'Data Table: 471738
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_1007C36: Set var_88 = Me.Txt
  loc_1007C3C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1007C4A: Proc_6_74_E226B0(var_8C)
  loc_1007C56: Call Proc_298_31_E858D0(var_8C)
  loc_1007C5E: var_92 = Index
  loc_1007C69: If (var_92 = CInt(1)) Then
  loc_1007C83:   If (Me.RecordCount > 0) Then
  loc_1007C91:     Set var_8C = Me.FGPoint
  loc_1007CA9:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_1007CB7:   End If
  loc_1007D05:   Set var_88 = Me.Txt
  loc_1007D0B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1007D13:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1007D2B:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1007D3B:     Set var_88 = Me.Txt
  loc_1007D41:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1007D49:     var_8C.Tag = vbNullString
  loc_1007D55:     Exit Sub
  loc_1007D56:   End If
  loc_1007D63:   Set var_88 = Me.Txt
  loc_1007D69:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1007D71:   var_A0 = var_8C.Text
  loc_1007D83:   var_B0 = "Unit"
  loc_1007DBE:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1007DC7:     Me.MoveFirst
  loc_1007DEA:     Set var_88 = Me.Txt
  loc_1007DF0:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Unit='")
  loc_1007DF8:     0 = var_8C.Text
  loc_1007E11:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_1007E26:   End If
  loc_1007E26: End If
  loc_1007E26: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FC33B8
  'Data Table: 471738
  Dim Me As Recordset15
  loc_FC321A: If (CLng(Shift) = &H1B) Then
  loc_FC321D:   Call Proc_298_31_E858D0()
  loc_FC3222:   Exit Sub
  loc_FC3223: End If
  loc_FC3231: If (KeyCode = CInt(1)) Then
  loc_FC3251:   Set var_9C = Me.FGPoint
  loc_FC3283:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(1), global_56, Shift)
  loc_FC32F0:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FC32F7:     Set var_9C = Me.DGHelp
  loc_FC3316:     Proc_6_138_106D6F8(var_9C, global_56, KeyCode, Me.FGPoint, 0)
  loc_FC3324:   End If
  loc_FC3324: End If
  loc_FC3340: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FC3361:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(2))) Then
  loc_FC3367:     Call Proc_298_32_E928B8(KeyCode, 1, var_9C)
  loc_FC336F:   Else
  loc_FC3384:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FC338D:       Proc_6_75_E527CC(Shift, arg_14)
  loc_FC3395:     Else
  loc_FC33A8:       If ((CLng(Shift) = &H26) And (KeyCode <> CInt(1))) Then
  loc_FC33B1:         Proc_6_76_E52838(Shift, arg_14)
  loc_FC33B6:       End If
  loc_FC33B6:     End If
  loc_FC33B6:   End If
  loc_FC33B6: End If
  loc_FC33B6: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EFEBAC
  'Data Table: 471738
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_EFEAE2: If (KeyAscii = CInt(2)) Then
  loc_EFEB0E:   If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_EFEB1E:     Set var_CC = Me.Txt
  loc_EFEB24:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFEB2C:     var_D0.Text = "Active"
  loc_EFEB3B:   Else
  loc_EFEB42:     var_98 = Chr(CLng(arg_10))
  loc_EFEB64:     If (Ucase(var_98) = "N") Then
  loc_EFEB74:       Set var_CC = Me.Txt
  loc_EFEB7A:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFEB82:       var_D0.Text = "Non Active"
  loc_EFEB8E:     End If
  loc_EFEB8E:   End If
  loc_EFEB90:   arg_10 = 0
  loc_EFEB93: End If
  loc_EFEB99: Proc_6_133_E7EF78(var_98, arg_10)
  loc_EFEBA2: arg_10 = CInt(var_98)
  loc_EFEBA8: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC5770
  'Data Table: 471738
  loc_EC56E2: If (KeyCode = CInt(2)) Then
  loc_EC5701:   If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_EC570E:     var_A4 = "Unit"
  loc_EC572D:     Proc_6_80_FF0AC0(Me.Txt, CInt(1), global_56)
  loc_EC575F:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC576D:   End If
  loc_EC576D: End If
  loc_EC576D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4AA5C
  'Data Table: 471738
  loc_E4AA3A: Set var_88 = Me.Txt
  loc_E4AA40: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4AA4E: Proc_6_73_E22704(var_8C)
  loc_E4AA5A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F00548
  'Data Table: 471738
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As TextBox
  loc_F00473: var_86 = Cancel
  loc_F0047E: If (var_86 = CInt(1)) Then
  loc_F00484:   Call Proc_298_30_108C540(var_88)
  loc_F0048F:   If (var_88 = &HFF) Then
  loc_F00494:     arg_10 = &HFF
  loc_F00497:     Exit Sub
  loc_F00498:   End If
  loc_F0049B: Else
  loc_F004A3:   If (var_86 = CInt(2)) Then
  loc_F004B0:     Set var_8C = Me.Txt
  loc_F004B6:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F004F1:     If (Ucase(Left(CVar(var_90), 1)) = "A") Then
  loc_F00501:       Set var_8C = Me.Txt
  loc_F00507:       Call 0.Method_Txt_Validate0 (Cancel, var_90, "Active")
  loc_F0050F:       var_90.Text = arg_10
  loc_F0051E:     Else
  loc_F0052B:       Set var_8C = Me.Txt
  loc_F00531:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F00539:       var_90.Text = "Non Active"
  loc_F00545:     End If
  loc_F00545:   End If
  loc_F00545: End If
  loc_F00545: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EA9A24
  'Data Table: 471738
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EA9998: On Error Goto loc_EA9A1E
  loc_EA99BE: Call Proc_298_27_E702C8(Proc_5_1_100CB50("ADD", Me))
  loc_EA99C9: Call Proc_298_28_EA9ED8(global_52)
  loc_EA99D9: Set var_8C = Me.Txt
  loc_EA99DF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_EA99E7: var_94.SetFocus
  loc_EA9A00: Me.LblUser.Caption = vbNullString
  loc_EA9A15: Me.LblLDt.Caption = vbNullString
  loc_EA9A1D: Exit Sub
  loc_EA9A1E: ' Referenced from: EA9998
  loc_EA9A1E: Proc_6_60_E62BC4(var_94)
  loc_EA9A23: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC584C
  'Data Table: 471738
  loc_EC57B4: On Error Goto loc_EC5844
  loc_EC57EE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC57FD:   Set var_110 = Me
  loc_EC5814:   Call Proc_298_27_E702C8(Proc_5_1_100CB50("INI", var_110))
  loc_EC581F:   Call Proc_298_31_E858D0(global_52)
  loc_EC5824:   Call Proc_298_29_11E8B84()
  loc_EC582C: Else
  loc_EC5832:   Call 0.Method_arg_1E8 (var_110)
  loc_EC583A:   Call var_110.SetFocus
  loc_EC5843: End If
  loc_EC5843: Exit Sub
  loc_EC5844: ' Referenced from: EC57B4
  loc_EC5844: Proc_6_60_E62BC4()
  loc_EC5849: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11D1ED4
  'Data Table: 471738
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim unk_47174C As Connection15
  Dim var_114 As Variant
  Dim var_B0 As String
  loc_11D1A90: On Error Goto loc_11D1E84
  loc_11D1AA1: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_11D1AA4:   Exit Sub
  loc_11D1AA5: End If
  loc_11D1AD7: var_D0 = "Entry"
  loc_11D1B1F: If (Proc_6_108_1010FEC(MemVar_1F92044, "Stock", "Unit", CStr(Me.Fields.Item("Unit").Value)) = 0) Then
  loc_11D1B22:   Exit Sub
  loc_11D1B23: End If
  loc_11D1B55: var_D0 = "Entry"
  loc_11D1B9D: If (Proc_6_108_1010FEC(MemVar_1F92044, "Stock", "RecdUnit", CStr(Me.Fields.Item("Unit").Value), 0) = 0) Then
  loc_11D1BA0:   Exit Sub
  loc_11D1BA1: End If
  loc_11D1C1B: If (Proc_6_108_1010FEC(MemVar_1F92044, "POrder1", "Unit", CStr(Me.Fields.Item("Unit").Value), 0, "Purchase Order") = 0) Then
  loc_11D1C1E:   Exit Sub
  loc_11D1C1F: End If
  loc_11D1C56: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_11D1C62:   unk_47174C.BeginTrans var_CC
  loc_11D1C78:   var_94 = Me.Bookmark 'Variant
  loc_11D1CC4:   var_114 = "Delete From UnitMast Where Name='" & Me.Fields.Item("Unit").Value & "'" 
  loc_11D1CD2:   unk_47174C.Execute CStr(var_114), var_134, -1
  loc_11D1D1D:   var_164 = 0
  loc_11D1D30:   var_15C = 0
  loc_11D1D3B:   var_158 = 0
  loc_11D1D4E:   var_150 = 0
  loc_11D1D59:   var_14C = 0
  loc_11D1D6C:   var_144 = 0
  loc_11D1DAC:   var_B0 = "UniMast"
  loc_11D1DB5:   Proc_154_5_10E33A4(MemVar_1F92044, var_B0, "NAme", &HC8, CStr(Me.Fields.Item("Unit").Value), 0, 0, 0)
  loc_11D1DE3:   unk_47174C.CommitTrans
  loc_11D1DF3:   Me.Requery -1
  loc_11D1E03:   Me.Requery -1
  loc_11D1E23:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11D1E30:     Me.Bookmark = var_94
  loc_11D1E38:   Else
  loc_11D1E4C:     If (Me.EOF = 0) Then
  loc_11D1E55:       Me.MoveLast
  loc_11D1E5A:     End If
  loc_11D1E5A:   End If
  loc_11D1E5A:   Call Proc_298_29_11E8B84(var_144, 0, var_14C, var_150)
  loc_11D1E7B:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_11D1E83: End If
  loc_11D1E83: Exit Sub
  loc_11D1E84: ' Referenced from: 11D1A90
  loc_11D1E8A: unk_47174C.RollbackTrans
  loc_11D1E97: Set var_98 = Err()
  loc_11D1E9D: Call 0.Method_arg_2C (var_B0, 0, var_158)
  loc_11D1EBE: MsgBox(CVar(var_B0), &H30, " Deletion Error ", var_114, var_134)
  loc_11D1ED1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EEFF04
  'Data Table: 471738
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EEFE34: On Error Goto loc_EEFEFC
  loc_EEFE45: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_EEFE48:   Exit Sub
  loc_EEFE49: End If
  loc_EEFE6C: Call Proc_298_27_E702C8(Proc_5_1_100CB50("EDIT", Me))
  loc_EEFE85: Set var_8C = Me.Txt
  loc_EEFE8B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_EEFE9E: global_64 = var_94.Text
  loc_EEFEB9: Me.LblUser.Caption = vbNullString
  loc_EEFECE: Me.LblLDt.Caption = vbNullString
  loc_EEFEE1: Set var_8C = Me.Txt
  loc_EEFEE7: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_EEFEEF: var_94.SetFocus
  loc_EEFEFB: Exit Sub
  loc_EEFEFC: ' Referenced from: EEFE34
  loc_EEFEFC: Proc_6_60_E62BC4(global_52)
  loc_EEFF01: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15C70
  'Data Table: 471738
  loc_E15C65: Me.Global.Unload Me
  loc_E15C6D: Exit Sub
  loc_E15C6E: Set var_3F90 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F17338
  'Data Table: 471738
  Dim Me As Recordset15
  loc_F17248: On Error Goto loc_F172D2
  loc_F17254: var_88 = Me.RecordCount
  loc_F17262: If (var_88 <= 0) Then
  loc_F17286:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F17296:   Exit Sub
  loc_F17297: End If
  loc_F1729A: MemVar_1F920E4 = "SELECT Name AS SEARCHCODE,Name,Status From UnitMast ORDER BY Name"
  loc_F172A4: MemVar_1F92120 = Me
  loc_F172AB: var_10C = "3900,1000"
  loc_F172B1: Proc_6_126_F1BCC0(var_10C)
  loc_F172CC: Call 0.Method_arg_2B0 (1)
  loc_F172D1: Exit Sub
  loc_F172D2: ' Referenced from: F17248
  loc_F172DA: Set var_110 = Err()
  loc_F172E0: Call 0.Method_arg_1C (var_88)
  loc_F172F1: If (var_88 <> 0) Then
  loc_F172FC:   Set var_110 = Err()
  loc_F17302:   Call 0.Method_arg_2C (var_10C)
  loc_F17323:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F17336: End If
  loc_F17336: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E30F78
  'Data Table: 471738
  loc_E30F68: Proc_5_0_110649C(&HFF, Me)
  loc_E30F70: Call Proc_298_29_11E8B84(global_52)
  loc_E30F75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E30C78
  'Data Table: 471738
  loc_E30C68: Proc_5_0_110649C(&HFF, Me)
  loc_E30C70: Call Proc_298_29_11E8B84(global_52)
  loc_E30C75: Exit Sub
  loc_E30C76: var_3FF8 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E30CD8
  'Data Table: 471738
  loc_E30CC8: Proc_5_0_110649C(&HFF, Me)
  loc_E30CD0: Call Proc_298_29_11E8B84(global_52)
  loc_E30CD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E30F18
  'Data Table: 471738
  loc_E30F08: Proc_5_0_110649C(&HFF, Me)
  loc_E30F10: Call Proc_298_29_11E8B84(global_52)
  loc_E30F15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '107547C
  'Data Table: 471738
  Dim unk_47174C As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_10751FC: On Error Goto loc_1075433
  loc_1075215: unk_47174C.Execute "select Name,Status,U_Name,U_AE,U_Entdt FROM UnitMast  ORDER BY Name", var_BC, -1
  loc_1075220: Set var_88 = var_C0
  loc_107522F: var_C4 = var_88.RecordCount
  loc_107523D: If (var_C4 = 0) Then
  loc_1075259:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_1075269:   Exit Sub
  loc_107526A: End If
  loc_1075279: var_12C = MemVar_1F920B4 & "\Unit.ttx"
  loc_1075280: Set var_C0 = var_88 
  loc_107528C: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_1075296: Set var_88 = var_C0
  loc_107529C: var_AC = CVar(var_12E) 'Integer
  loc_107529F: var_98 = var_AC 'Variant
  loc_10752BB: var_128 = MemVar_1F920B4 & "\Unit.RPT"
  loc_10752C4: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_10752CF: MemVar_1F921E4 = var_C0
  loc_10752EA: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_10752F2: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10752FE: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_1075317:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_107531F:   Call 0.Method_arg_20 (var_138)
  loc_1075327:   Call 0.Method_arg_30 (var_128)
  loc_107536D:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_1075383:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_107538B:     Call 0.Method_arg_20 (var_138)
  loc_1075393:     Call 0.Method_arg_38 ("'Unit Master'")
  loc_107539F:   End If
  loc_10753A2: Next var_132 'Integer
  loc_10753C0: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_10753C8: Call 0.Method_arg_2C (var_D4)
  loc_10753D6: Call 0.Method_arg_150 (var_F4)
  loc_10753E1: Call 0.Method_arg_50 (var_128)
  loc_10753EB: Set var_138 = Nothing
  loc_1075405: Set var_C0 = MemVar_1F921E4 
  loc_1075411: Proc_6_99_1483714(var_C0, 0, var_128)
  loc_107541C: MemVar_1F921E4 = var_C0
  loc_107542F: Set var_88 = Nothing
  loc_1075432: Exit Sub
  loc_1075433: ' Referenced from: 10751FC
  loc_107543B: Set var_C0 = Err()
  loc_1075441: Call 0.Method_arg_2C (var_128, &HFF)
  loc_107544C: Call 0.Method_arg_50 (var_12C)
  loc_1075468: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_107547B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E09958
  'Data Table: 471738
  Dim Me As Recordset15
  loc_E0994F: Me.Requery -1
  loc_E09954: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '11F3194
  'Data Table: 471738
  Dim unk_47174C As Connection15
  Dim var_9C As String
  Dim var_94 As TextBox
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_108 As TextBox
  Dim var_13C As Variant
  Dim var_14C As String
  Dim var_20C As Variant
  Dim var_24C As Variant
  Dim Me As Recordset15
  loc_11F2D48: On Error Goto loc_11F3141
  loc_11F2D4F: var_86 = CByte(0) 'Byte
  loc_11F2D5E: Set var_90 = Me.Txt
  loc_11F2D64: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_11F2D8D: If (Proc_6_27_EA565C(var_94, "Unit") = 0) Then
  loc_11F2D97:   Call Txt_GotFocus(CInt(1))
  loc_11F2D9C:   Exit Sub
  loc_11F2D9D: End If
  loc_11F2DA0: Call Proc_298_30_108C540(var_9E)
  loc_11F2DAB: If (var_9E = &HFF) Then
  loc_11F2DAE:   Exit Sub
  loc_11F2DAF: End If
  loc_11F2DB8: unk_47174C.BeginTrans var_A4
  loc_11F2DC1: var_86 = CByte(1) 'Byte
  loc_11F2DC9: Set var_90 = Me.TopCtrl1
  loc_11F2DCF: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_94)
  loc_11F2DD7: var_9C = CStr()
  loc_11F2DE8: If (var_9C = "Add") Then
  loc_11F2E0B:   Set var_90 = Me.Txt
  loc_11F2E11:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_9C, "Insert Into UnitMast(Name,Status,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('")
  loc_11F2E19:   var_290 = var_94.Text
  loc_11F2E2F:   var_E4 = -1 & Trim(CVar(var_9C)) 
  loc_11F2E38:   var_104 = var_E4 & "','" 
  loc_11F2E4A:   Set var_98 = Me.Txt
  loc_11F2E50:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_108, var_10C)
  loc_11F2E58:   var_104 = var_108.Text
  loc_11F2EAF:   Proc_6_7_F25D88(var_1FC, Date)
  loc_11F2ECA:   var_24C = var_294 & Trim(CVar(var_10C)) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_1FC & ",'A','" & CVar(MemVar_1F92078) 
  loc_11F2EE1:   unk_47174C.Execute CStr(var_24C & "' )"), , 
  loc_11F2F22: Else
  loc_11F2F3F:   Set var_90 = Me.Txt
  loc_11F2F45:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, "UPDATE UnitMast SET Name='")
  loc_11F2F74:   Set var_98 = Me.Txt
  loc_11F2F7A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_108, var_290 & Trim(CVar(var_94)) & "',Status='")
  loc_11F2F91:   var_13C = -1 & Trim(CVar(var_108)) 
  loc_11F2F95:   var_14C = "',SITE_CODE='"
  loc_11F2FD2:   Proc_6_7_F25D88(var_1FC, Date)
  loc_11F2FDA:   var_20C = var_294 & Trim(CVar(var_10C)) & var_14C & CVar(MemVar_1F92070) & "',U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_1FC 
  loc_11F3007:   unk_47174C.Execute CStr(var_20C & " ,U_AE='E' WHERE Name='" & CVar(global_64) & "'"), var_294, 
  loc_11F3041: End If
  loc_11F3047: unk_47174C.CommitTrans
  loc_11F3050: var_86 = CByte(0) 'Byte
  loc_11F305F: Me.Requery -1
  loc_11F306F: Me.Requery -1
  loc_11F3092: Set var_90 = Me.Txt
  loc_11F3098: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, "Unit='")
  loc_11F30A7: var_C4 = Trim(CVar(var_94))
  loc_11F30AF: var_E4 = 0 & var_C4 
  loc_11F30B8: var_104 = var_E4 & "'" 
  loc_11F30C6: Me.Find CStr(var_104), 1, var_14C
  loc_11F30E0: Set var_90 = Me.TopCtrl1
  loc_11F30E6: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_11F30FF: If (CStr() = "Add") Then
  loc_11F3102:   Call TopCtrl1_UnknownEvent_A()
  loc_11F3107:   Exit Sub
  loc_11F3108: End If
  loc_11F311D: var_9C = "INI"
  loc_11F312B: Call Proc_298_27_E702C8(Proc_5_1_100CB50(var_9C, Me))
  loc_11F3136: Call Proc_298_31_E858D0(global_52)
  loc_11F313B: Call Proc_298_29_11E8B84()
  loc_11F3140: Exit Sub
  loc_11F3141: ' Referenced from: 11F2D48
  loc_11F314A: If (CInt(var_86) = 1) Then
  loc_11F3153:   unk_47174C.RollbackTrans
  loc_11F3158: End If
  loc_11F3160: Set var_90 = Err()
  loc_11F3166: Call 0.Method_arg_2C (var_9C)
  loc_11F317F: MsgBox(CVar(var_9C), &H10, var_C4, var_E4, var_104)
  loc_11F3192: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC4F84
  'Data Table: 471738
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC4EFA: On Error Goto loc_EC4F3F
  loc_EC4F03: Me.MoveFirst
  loc_EC4F1D: var_8C = "Unit='" & MyValue
  loc_EC4F2D: Me.Find var_8C & "'", 0, 1
  loc_EC4F39: Call Proc_298_29_11E8B84(var_A0)
  loc_EC4F3E: Exit Sub
  loc_EC4F3F: ' Referenced from: EC4EFA
  loc_EC4F47: Set var_A4 = Err()
  loc_EC4F4D: Call 0.Method_arg_2C (var_8C)
  loc_EC4F6E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC4F81: Exit Sub
  loc_EC4F82: Exit Sub
End Sub

Public Sub Proc_298_27_E702C8(arg_C) 'E702C8
  'Data Table: 471738
  Dim var_98 As TextBox
  loc_E7027A: Set var_8C = Me.Txt
  loc_E70280: Call 0.Method_Proc_298_27_E702C8C (var_8E, var_86)
  loc_E7028D: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_E702A3:   Set var_8C = Me.Txt
  loc_E702A9:   Call 0.Method_Proc_298_27_E702C80 (CInt(var_86), var_98)
  loc_E702B1:   var_98.Enabled = arg_C
  loc_E702C0: Next var_92 'Byte
  loc_E702C6: Exit Sub
End Sub

Public Sub Proc_298_28_EA9ED8
  'Data Table: 471738
  Dim var_98 As TextBox
  Dim var_201 As Integer
  loc_EA9E4E: global_64 = vbNullString
  loc_EA9E60: Set var_8C = Me.Txt
  loc_EA9E66: Call 0.Method_Proc_298_28_EA9ED8C (var_8E, var_86)
  loc_EA9E73: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_EA9E89:   Set var_8C = Me.Txt
  loc_EA9E8F:   Call 0.Method_Proc_298_28_EA9ED80 (CInt(var_86), var_98)
  loc_EA9E97:   var_98.Text = vbNullString
  loc_EA9EA6: Next var_92 'Byte
  loc_EA9EBA: Set var_8C = Me.Txt
  loc_EA9EC0: Call 0.Method_Proc_298_28_EA9ED80 (CInt(2), var_98)
  loc_EA9EC8: var_98.Text = "Active"
  loc_EA9ED4: Exit Sub
  loc_EA9ED5: var_201 = 
End Sub

Public Sub Proc_298_29_11E8B84
  'Data Table: 471738
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim unk_47174C As Connection15
  Dim var_11C As Fields15
  Dim var_120 As TextBox
  loc_11E8734: On Error Goto loc_11E8B40
  loc_11E874E: If (Me.RecordCount > 0) Then
  loc_11E87A7:   unk_47174C.Execute CStr("Select Name,Status U_Name,U_AE,U_EntDt From UnitMast where Name='" & Me.Fields.Item("Unit").Value & "'  "), var_118, -1
  loc_11E87B2:   Set var_88 = var_11C
  loc_11E880C:   var_11C = Me.Fields
  loc_11E8875:   var_184 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_11E88BD:   Me.LblUser.Caption = CStr(var_11C & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_Name")), var_184)))
  loc_11E893D:   var_120 = Me.Fields.Item("U_AE")
  loc_11E8956:   var_118 = "entdt : "
  loc_11E8961:   var_F4 = "Last Update : "
  loc_11E899E:   var_184 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_120)) = "E"), var_F4, var_118))
  loc_11E89E6:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_EntDt")))))
  loc_11E8A1E: End If
  loc_11E8A24: Proc_183_45_E5C118(global_52)
  loc_11E8A40: If (Me.RecordCount <= 0) Then
  loc_11E8A43:   Call Proc_298_28_EA9ED8()
  loc_11E8A4B: Else
  loc_11E8A7C:   global_60 = Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")))
  loc_11E8AC2:   Set var_11C = Me.Txt
  loc_11E8AC8:   Call 0.Method_Proc_298_29_11E8B840 (CInt(1), var_120)
  loc_11E8AD0:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")))
  loc_11E8B0F:   var_F8 = Proc_6_38_E68A98(CVar(Me.Fields.Item("Active")))
  loc_11E8B1D:   Set var_11C = Me.Txt
  loc_11E8B23:   Call 0.Method_Proc_298_29_11E8B840 (CInt(2), var_120)
  loc_11E8B2B:   var_120.Text = var_F8
  loc_11E8B3F: End If
  loc_11E8B3F: Exit Sub
  loc_11E8B40: ' Referenced from: 11E8734
  loc_11E8B48: Set var_90 = Err()
  loc_11E8B4E: Call 0.Method_arg_2C (var_F8)
  loc_11E8B6F: MsgBox(CVar(var_F8), &H40, "Information", var_F4, var_118)
  loc_11E8B82: Exit Sub
End Sub

Public Sub Proc_298_30_108C540
  'Data Table: 471738
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_47174C As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108C2D3: If (Me.RecordCount = 0) Then
  loc_108C2D6:   Proc_298_30_108C540 = 
  loc_108C2DC: End If
  loc_108C2E0: Set var_90 = Me.TopCtrl1
  loc_108C2E6: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_108C2FF: If (CStr() = "Add") Then
  loc_108C33D:   Set var_90 = Me.Txt
  loc_108C343:   Call 0.Method_Proc_298_30_108C5400 (CInt(1), var_A8, var_AC, "Select Count(*) From UnitMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108C364:   unk_47174C.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_108C374:    = var_D0.Item()
  loc_108C37C:    = var_E4.Value
  loc_108C3AD:   If (var_A8.Text.Fields > 0) Then
  loc_108C3CB:     var_A0 = "Duplicate Name"
  loc_108C3D1:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_108C3EC:     Set var_90 = Me.Txt
  loc_108C3F2:     Call 0.Method_Proc_298_30_108C5400 (CInt(1))
  loc_108C3FA:     var_A8.SetFocus
  loc_108C40B:     Proc_298_30_108C540 = &HFF
  loc_108C411:   End If
  loc_108C414: Else
  loc_108C44F:   Set var_90 = Me.Txt
  loc_108C455:   Call 0.Method_Proc_298_30_108C5400 (CInt(1), var_A8, var_AC, "Select Count(*) From UnitMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (NAme='", var_A0, -1)
  loc_108C487:   unk_47174C.Execute var_D0 & var_AC & "' And Name<>'" & global_64 & "')", 0, var_E4
  loc_108C497:    = var_D0.Item(var_A8)
  loc_108C49F:    = var_E4.Value
  loc_108C4D4:   If (var_A8.Text.Fields > 0) Then
  loc_108C4F8:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108C513:     Set var_90 = Me.Txt
  loc_108C519:     Call 0.Method_Proc_298_30_108C5400 (CInt(1))
  loc_108C521:     var_A8.SetFocus
  loc_108C532:     Proc_298_30_108C540 = &HFF
  loc_108C538:   End If
  loc_108C538: End If
  loc_108C538: Proc_298_30_108C540 = var_A8
  loc_108C53E: var_3FF8 = 
End Sub

Public Sub Proc_298_31_E858D0
  'Data Table: 471738
  loc_E8587C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E8588E:   Me.DGHelp.Visible = False
  loc_E85896: End If
  loc_E858B2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E858C4:   Me.FGPoint.Visible = False
  loc_E858CC: End If
  loc_E858CC: Exit Sub
End Sub

Public Sub Proc_298_32_E928B8(arg_C) 'E928B8
  'Data Table: 471738
  Dim var_10C As TextBox
  loc_E9284C: Call Proc_298_31_E858D0()
  loc_E92888: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E9288B:   Call TopCtrl1_UnknownEvent_16()
  loc_E92893: Else
  loc_E9289D:   Set var_108 = Me.Txt
  loc_E928A3:   Call 0.Method_Proc_298_32_E928B80 (arg_C)
  loc_E928AB:   var_10C.SetFocus
  loc_E928B7: End If
  loc_E928B7: Exit Sub
End Sub
