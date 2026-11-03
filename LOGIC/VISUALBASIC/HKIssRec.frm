VERSION 5.00
Begin VB.Form HKIssRec
  Caption = "Issue/Receive Entry"
  BackColor = &HE1E1E1&
  ForeColor = &H40&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 10455
  ClientHeight = 5475
  LockControls = -1  'True
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin TextBox Txt
    Index = 3
    Left = 1185
    Top = 750
    Width = 3345
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin DataGrid DGItem
    Left = 0
    Top = 4785
    Width = 6000
    Height = 3450
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 4
    Left = 7140
    Top = 750
    Width = 2940
    Height = 225
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 40
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
    Index = 0
    Left = 1185
    Top = 490
    Width = 2865
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 30
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
    Left = 7140
    Top = 490
    Width = 1200
    Height = 240
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 8
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
    Left = 8835
    Top = 490
    Width = 1245
    Height = 240
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 12
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFC0&
    ForeColor = &H80000012&
    Left = 1050
    Top = 2985
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
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
  Begin DataGrid DGRoom
    Left = 630
    Top = 4515
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MSHFlexGrid FGrid
    Left = 75
    Top = 1215
    Width = 10275
    Height = 2805
    TabIndex = 3
  End
  Begin DataGrid DGVType
    Left = 1275
    Top = 4125
    Width = 4215
    Height = 3645
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11835
    Height = 375
    TabIndex = 0
  End
  Begin DataGrid DGDepart
    Left = 6045
    Top = 4230
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 16
  End
  Begin Label Label1
    Caption = "Department"
    Index = 0
    ForeColor = &H404040&
    Left = 105
    Top = 765
    Width = 990
    Height = 210
    TabIndex = 14
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Vr. No."
    Index = 3
    ForeColor = &H404040&
    Left = 5790
    Top = 510
    Width = 585
    Height = 210
    TabIndex = 11
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "V.Type "
    Index = 4
    ForeColor = &H404040&
    Left = 105
    Top = 505
    Width = 660
    Height = 210
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Date"
    Index = 1
    ForeColor = &H404040&
    Left = 8400
    Top = 510
    Width = 390
    Height = 210
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H404040&
    Left = 6405
    Top = 495
    Width = 645
    Height = 240
    TabIndex = 8
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "DocID"
    Index = 12
    ForeColor = &H404040&
    Left = 6495
    Top = 750
    Width = 555
    Height = 210
    TabIndex = 7
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "HKIssRec"

Private global_80 As Integer
Private global_82 As Integer
Private MasterFormExit As Integer
Private global_120 As Integer

Private Sub DGRoom_UnknownEvent_9 '10428F4
  'Data Table: 4ABF1C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_10426A0: On Error Goto loc_10428ED
  loc_10426B2: Me.DGRoom.Visible = False
  loc_10426D1: If (Me.RecordCount > 0) Then
  loc_104270E:   Set var_B4 = Me.TxtGrid
  loc_1042714:   Call 0.Method_DGRoom_UnknownEvent_90 (0, var_B8)
  loc_104271C:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_1042745:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104274D:   var_EC = CVar(CLng(1)) 'Long
  loc_1042780:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1042788:   Set var_B8 = Me.FGrid
  loc_104278E:   LateIdCallSt
  loc_10427BD:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10427C5:   var_EC = CVar(CLng(8)) 'Long
  loc_10427F8:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1042800:   Set var_B8 = Me.FGrid
  loc_1042806:   LateIdCallSt
  loc_1042835:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104283D:   var_EC = CVar(CLng(9)) 'Long
  loc_104285F:   var_B0 = Me.Fields.Item("RoomCat")
  loc_1042870:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_1042878:   Set var_B8 = Me.FGrid
  loc_104287E:   LateIdCallSt
  loc_104289A: End If
  loc_10428A6: Set var_A8 = Me.TxtGrid
  loc_10428AC: Call 0.Method_DGRoom_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC, var_A4)
  loc_10428B4: var_B8 = var_B0.Visible
  loc_10428C6: If (var_12E = &HFF) Then
  loc_10428D2:   Set var_A8 = Me.TxtGrid
  loc_10428D8:   Call 0.Method_DGRoom_UnknownEvent_90 (0, var_B0, var_11C, var_EC)
  loc_10428E0:   var_B0.SetFocus
  loc_10428EC: End If
  loc_10428EC: Exit Sub
  loc_10428ED: ' Referenced from: 10426A0
  loc_10428ED: Proc_6_60_E62BC4(var_A4, var_B8)
  loc_10428F2: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'FD1308
  'Data Table: 4ABF1C
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD114C: On Error Goto loc_FD1300
  loc_FD115E: Me.DGVType.Visible = False
  loc_FD117D: If (Me.RecordCount > 0) Then
  loc_FD11CF:   Set var_CC = Me.Txt
  loc_FD11D5:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD11DD:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD1235:   Set var_B4 = Me.DGVType
  loc_FD124C:   Set var_CC = Me.Txt
  loc_FD1252:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD125A:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD12AE:   global_124 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD12BF: End If
  loc_FD12DD: Set var_B0 = Me.Txt
  loc_FD12E3: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD12EB: var_B4.SetFocus
  loc_FD12FF: Exit Sub
  loc_FD1300: ' Referenced from: FD114C
  loc_FD1300: Proc_6_60_E62BC4(var_B4)
  loc_FD1305: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'FA4838
  'Data Table: 4ABF1C
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FA46C0: On Error Goto loc_FA482F
  loc_FA46D2: Me.DGDepart.Visible = False
  loc_FA46F1: If (Me.RecordCount > 0) Then
  loc_FA4743:   Set var_CC = Me.Txt
  loc_FA4749:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(CStr(Me.DGDepart.Tag)), var_D0)
  loc_FA4751:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FA47A9:   Set var_B4 = Me.DGDepart
  loc_FA47C0:   Set var_CC = Me.Txt
  loc_FA47C6:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FA47CE:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA47EE: End If
  loc_FA480C: Set var_B0 = Me.Txt
  loc_FA4812: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(CStr(Me.DGDepart.Tag)))
  loc_FA481A: var_B4.SetFocus
  loc_FA482E: Exit Sub
  loc_FA482F: ' Referenced from: FA46C0
  loc_FA482F: Proc_6_60_E62BC4(var_B4)
  loc_FA4834: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10F1F94
  'Data Table: 4ABF1C
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_10F1C7E: Set var_88 = Me.Txt
  loc_10F1C84: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10F1C92: Proc_6_74_E226B0(var_8C)
  loc_10F1C9E: Call Proc_36_51_EF7188(var_8C)
  loc_10F1CA6: var_92 = Index
  loc_10F1CB1: If (var_92 = CInt(0)) Then
  loc_10F1CC7:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_10F1D20:   Set var_88 = Me.Txt
  loc_10F1D26:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_10F1D2E:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10F1D46:   If (var_92 Or (var_C0 = vbNullString)) Then
  loc_10F1D49:     Exit Sub
  loc_10F1D4A:   End If
  loc_10F1D57:   Set var_88 = Me.Txt
  loc_10F1D5D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F1D65:   var_C0 = var_8C.Text
  loc_10F1D6D:   var_D4 = CVar(var_C0) 'String
  loc_10F1DB2:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_10F1DBB:     Me.MoveFirst
  loc_10F1DE0:     Set var_88 = Me.Txt
  loc_10F1DE6:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_10F1DEE:     0 = var_8C.Text
  loc_10F1DFC:     Proc_6_17_EAA2B0(var_D4, CVar(var_C0))
  loc_10F1E12:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_10F1E2A:   End If
  loc_10F1E2D: Else
  loc_10F1E35:   If (var_92 = CInt(3)) Then
  loc_10F1E86:     Set var_88 = Me.Txt
  loc_10F1E8C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F1EAC:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_10F1EAF:       Exit Sub
  loc_10F1EB0:     End If
  loc_10F1EBD:     Set var_88 = Me.Txt
  loc_10F1EC3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F1ECB:     var_C0 = var_8C.Text
  loc_10F1ED3:     var_D4 = CVar(var_C0) 'String
  loc_10F1F18:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_10F1F21:       Me.MoveFirst
  loc_10F1F46:       Set var_88 = Me.Txt
  loc_10F1F4C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_10F1F54:       0 = var_8C.Text
  loc_10F1F62:       Proc_6_17_EAA2B0(var_D4, CVar(var_C0))
  loc_10F1F78:       Me.Find CStr(1 & var_D4), var_F8, 
  loc_10F1F90:     End If
  loc_10F1F90:   End If
  loc_10F1F90: End If
  loc_10F1F90: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '105C7B8
  'Data Table: 4ABF1C
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_105C556: If (CLng(Shift) = &H1B) Then
  loc_105C559:   Call Proc_36_51_EF7188()
  loc_105C55E:   Exit Sub
  loc_105C55F: End If
  loc_105C562: var_86 = KeyCode
  loc_105C56D: If (var_86 = CInt(0)) Then
  loc_105C588:   Set var_9C = Nothing
  loc_105C593:   Set var_98 = Nothing
  loc_105C5C1:   Proc_6_69_134A198(Me.DGVType, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_105C5D8: Else
  loc_105C5E0:   If (var_86 = CInt(3)) Then
  loc_105C5FB:     Set var_9C = Nothing
  loc_105C634:     Proc_6_69_134A198(Me.DGDepart, Me.Txt, KeyCode, global_68, Shift, 0, 1, Nothing)
  loc_105C648:   End If
  loc_105C648: End If
  loc_105C679: Set var_98 = Me.DGRoom
  loc_105C690: Set var_9C = Me.DGDepart
  loc_105C6B9: If ((((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGItem.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_105C6D1:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_105C6DA:     Proc_6_75_E527CC(Shift, arg_14, var_9C, 0, 1)
  loc_105C6DF:   End If
  loc_105C6E3:   Set var_8C = Me.TopCtrl1
  loc_105C6E9:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_98)
  loc_105C716:   If CBool((var_9C = "Add") And (KeyCode <> CInt(0))) Then
  loc_105C72E:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_105C737:       Proc_6_76_E52838(Shift, arg_14)
  loc_105C73C:     End If
  loc_105C73F:   Else
  loc_105C743:     Set var_8C = Me.TopCtrl1
  loc_105C749:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E(0)
  loc_105C776:     If CBool((var_86 = "Edit") And (KeyCode <> CInt(2))) Then
  loc_105C78E:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_105C797:         Proc_6_76_E52838(Shift)
  loc_105C79C:       End If
  loc_105C79C:     End If
  loc_105C79C:   End If
  loc_105C7B1:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_105C7B4:   End If
  loc_105C7B4: End If
  loc_105C7B4: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F7646C
  'Data Table: 4ABF1C
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F76328: On Error Goto loc_F76466
  loc_F7632E: Proc_6_58_E054C0(arg_10)
  loc_F76336: var_86 = KeyAscii
  loc_F76341: If (var_86 = CInt(0)) Then
  loc_F76360:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F76376:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_F76385:     Set var_B8 = Me.Txt
  loc_F76390:     var_B0 = "Name"
  loc_F763AB:     Proc_6_89_146F1AC(var_B8, KeyAscii, global_56, arg_10)
  loc_F763BA:   End If
  loc_F763BD: Else
  loc_F763C5:   If (var_86 = CInt(1)) Then
  loc_F763D2:     Set var_8C = Me.Txt
  loc_F763D8:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_F763F3:     Proc_6_42_129A86C(var_B8, arg_10, 8)
  loc_F76402:   Else
  loc_F7640A:     If (var_86 = CInt(3)) Then
  loc_F76429:       If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_F76456:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_F76465:       End If
  loc_F76465:     End If
  loc_F76465:   End If
  loc_F76465: End If
  loc_F76465: Exit Sub
  loc_F76466: ' Referenced from: F76328
  loc_F76466: Proc_6_60_E62BC4(0, 0)
  loc_F7646B: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFF36C
  'Data Table: 4ABF1C
  Dim var_86 As Integer
  loc_DFF367: var_86 = KeyCode
  loc_DFF36A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E45ECC
  'Data Table: 4ABF1C
  loc_E45EAA: Set var_88 = Me.Txt
  loc_E45EB0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E45EBE: Proc_6_73_E22704(var_8C)
  loc_E45ECA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '146CC54
  'Data Table: 4ABF1C
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A0 As String
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_10C As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_160 As TextBox
  Dim var_184 As Variant
  Dim var_18C As TextBox
  Dim var_1B0 As Variant
  Dim var_130 As String
  Dim unk_4ABF3A As Connection15
  Dim var_9C As Variant
  Dim var_15C As Variant
  Dim var_CC As Variant
  loc_146C094: On Error Goto loc_146CC4B
  loc_146C09A: var_8E = Cancel
  loc_146C0A5: If (var_8E = CInt(0)) Then
  loc_146C0B3:   Set var_94 = Me.Txt
  loc_146C0B9:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_146C0C1:   var_A0 = "Voucher Type"
  loc_146C0E2:   If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_146C0F0:     Set var_94 = Me.Txt
  loc_146C0F6:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_146C0FE:     var_98.SetFocus
  loc_146C10C:     arg_10 = &HFF
  loc_146C10F:     Exit Sub
  loc_146C110:   End If
  loc_146C15E:   Set var_94 = Me.Txt
  loc_146C164:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_146C16C:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_146C184:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_146C194:     Set var_94 = Me.Txt
  loc_146C19A:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146C1A2:     var_98.Text = vbNullString
  loc_146C1BB:     Set var_94 = Me.Txt
  loc_146C1C1:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146C1C9:     var_98.Tag = vbNullString
  loc_146C1DB:     global_124 = vbNullString
  loc_146C1E2:   Else
  loc_146C21D:     Set var_9C = Me.Txt
  loc_146C223:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_146C22B:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_146C27C:     Set var_9C = Me.Txt
  loc_146C282:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_146C28A:     var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_146C2BD:     var_98 = Me.Fields.Item("NCat")
  loc_146C2CE:     var_A0 = CStr(var_98.Value)
  loc_146C2D4:     global_124 = var_A0
  loc_146C2E9:     Set var_94 = Me.TopCtrl1
  loc_146C2EF:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_8E)
  loc_146C304:     If ( = "Add") Then
  loc_146C312:       If (global_88 = "Automatic") Then
  loc_146C322:         Set var_94 = Me.Txt
  loc_146C328:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_146C330:         var_98.Enabled = False
  loc_146C33F:       Else
  loc_146C34C:         Set var_94 = Me.Txt
  loc_146C352:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_146C35A:         var_98.Enabled = True
  loc_146C371:         Set var_94 = Me.Txt
  loc_146C377:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_146C37F:         var_98.SetFocus
  loc_146C38B:       End If
  loc_146C38B:     End If
  loc_146C38B:   End If
  loc_146C38F:   Set var_94 = Me.TopCtrl1
  loc_146C395:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_98)
  loc_146C3AA:   If ( = "Add") Then
  loc_146C3B3:     Call Proc_36_53_1109998(MemVar_1F92044)
  loc_146C3C6:     Set var_94 = Me.Txt
  loc_146C3CC:     Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_146C3D4:     var_98.Text = var_A0
  loc_146C3E3:   End If
  loc_146C3E6: Else
  loc_146C3EE:   If (var_8E = CInt(1)) Then
  loc_146C3FC:     Set var_94 = Me.Txt
  loc_146C402:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_146C40A:     var_A0 = "Vr. No"
  loc_146C42B:     If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_146C439:       Set var_94 = Me.Txt
  loc_146C43F:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_146C447:       var_98.SetFocus
  loc_146C455:       arg_10 = &HFF
  loc_146C458:       Exit Sub
  loc_146C459:     End If
  loc_146C467:     Set var_94 = Me.Txt
  loc_146C46D:     Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A0)
  loc_146C475:     arg_10 = var_98.Text
  loc_146C48D:     If (CDbl(var_A0) = CDbl(0)) Then
  loc_146C4A9:       MsgBox("Vr. No Can Not Be 0", 0, var_DC, var_10C, var_12C)
  loc_146C4C3:       Set var_94 = Me.Txt
  loc_146C4C9:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146C4D1:       var_98.SetFocus
  loc_146C4DF:       arg_10 = &HFF
  loc_146C4E2:       Exit Sub
  loc_146C4E3:     End If
  loc_146C4E7:     Set var_94 = Me.TopCtrl1
  loc_146C4ED:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E(arg_10)
  loc_146C502:     If (var_A0 = "Add") Then
  loc_146C515:       var_A0 = Proc_6_45_EAD428(MemVar_1F92070, 2)
  loc_146C52A:       Set var_94 = Me.Txt
  loc_146C530:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_146C557:       Set var_9C = Me.Txt
  loc_146C55D:       Call 0.Method_Txt_Validate0 (CInt(0), var_BC, var_138)
  loc_146C565:       5 = var_BC.Tag
  loc_146C572:       var_CC = Space((CVar(MemVar_1F9206C & var_A0 & var_98.Tag) - Len(var_138)))
  loc_146C57A:       var_10C = ( + "Vr. No Can Not Be 0")
  loc_146C58E:       var_12C = Space((5 - Len(global_116)))
  loc_146C596:       var_148 = (var_10C + var_12C)
  loc_146C5A3:       var_158 = (var_148 + CVar(global_116))
  loc_146C5BA:       Set var_15C = Me.Txt
  loc_146C5C0:       Call 0.Method_Txt_Validate0 (CInt(1), var_160, var_164)
  loc_146C5C8:       8 = var_160.Text
  loc_146C5D5:       var_174 = Space((var_158 - Len(var_164)))
  loc_146C5DD:       var_184 = ( + var_174)
  loc_146C5EF:       Set var_188 = Me.Txt
  loc_146C5F5:       Call 0.Method_Txt_Validate0 (CInt(1), var_18C)
  loc_146C608:       var_1B0 = (var_184 + CVar(var_18C.Text))
  loc_146C661:       Set var_94 = Me.Txt
  loc_146C667:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_146C66F:       var_98.Text = CStr(var_1B0)
  loc_146C68B:       Me.LblVPrefix.Caption = global_116
  loc_146C693:     End If
  loc_146C697:     Set var_94 = Me.TopCtrl1
  loc_146C69D:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_146C6B2:     If ( = "Add") Then
  loc_146C6E2:       Set var_94 = Me.Txt
  loc_146C6E8:       Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0, "Select Count(*) From STOCK Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_146C6F9:       var_130 = var_BC & var_A0
  loc_146C709:       unk_4ABF3A.Execute var_130 & "'", 0, var_15C
  loc_146C719:        = var_BC.Item()
  loc_146C721:        = var_15C.Value
  loc_146C74E:       If (var_98.Text.Fields > 0) Then
  loc_146C757:         Call 0.Method_arg_50 (var_A0)
  loc_146C778:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_A0), var_10C, var_12C)
  loc_146C78E:         Call Proc_36_53_1109998(MemVar_1F92044)
  loc_146C79E:         If (var_A0 = vbNullString) Then
  loc_146C7AB:           Set var_94 = Me.Txt
  loc_146C7B1:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146C7B9:           var_98.SetFocus
  loc_146C7C7:           arg_10 = &HFF
  loc_146C7CA:           Exit Sub
  loc_146C7CB:         End If
  loc_146C7D1:         Call Proc_36_53_1109998(MemVar_1F92044, var_A0)
  loc_146C7E4:         Set var_94 = Me.Txt
  loc_146C7EA:         Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0)
  loc_146C7F2:         var_98.Text = arg_10
  loc_146C803:         arg_10 = &HFF
  loc_146C806:         Exit Sub
  loc_146C807:       End If
  loc_146C807:     End If
  loc_146C80A:   Else
  loc_146C812:     If (var_8E = CInt(2)) Then
  loc_146C823:       Set var_94 = Me.Txt
  loc_146C829:       Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_A0)
  loc_146C831:       arg_10 = var_98.Text
  loc_146C847:       var_10C = Len(Trim(CVar(var_A0)))
  loc_146C861:       If (var_10C = 0) Then
  loc_146C877:         Set var_94 = Me.Txt
  loc_146C87D:         Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_146C885:         var_98.Text = CStr(MemVar_1F920EC)
  loc_146C897:       Else
  loc_146C8A1:         Set var_94 = Me.Txt
  loc_146C8A7:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146C8C7:         Set var_BC = Me.Txt
  loc_146C8CD:         Call 0.Method_Txt_Validate0 (Cancel, var_15C)
  loc_146C8D5:         var_15C.Text = Proc_6_33_1512840(var_98)
  loc_146C8E8:       End If
  loc_146C8F5:       Set var_94 = Me.Txt
  loc_146C8FB:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146C903:       var_A0 = var_98.Text
  loc_146C91E:       Set var_9C = Me.Txt
  loc_146C924:       Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_130)
  loc_146C92C:       (CDate(var_A0) >= MemVar_1F920F4) = var_BC.Text
  loc_146C94E:       If Not((var_A0 And (CDate(var_130) <= MemVar_1F920FC))) Then
  loc_146C972:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_10C, var_12C)
  loc_146C98C:         Set var_94 = Me.Txt
  loc_146C992:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_146C99A:         var_98.SetFocus
  loc_146C9A8:         arg_10 = &HFF
  loc_146C9AB:         Exit Sub
  loc_146C9AC:       End If
  loc_146C9B0:       Set var_94 = Me.TopCtrl1
  loc_146C9B6:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E(arg_10)
  loc_146C9D5:       Set var_98 = Me.Txt
  loc_146C9DB:       Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_146C9E3:       var_A0 = var_9C.Text
  loc_146CA0D:       If CBool((var_98 = "Add") And (var_A0 = vbNullString)) Then
  loc_146CA16:         Call Proc_36_53_1109998(MemVar_1F92044)
  loc_146CA29:         Set var_94 = Me.Txt
  loc_146CA2F:         Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_146CA37:         var_98.Text = var_A0
  loc_146CA46:       End If
  loc_146CA49:     Else
  loc_146CA51:       If (var_8E = CInt(3)) Then
  loc_146CA5F:         Set var_94 = Me.Txt
  loc_146CA65:         Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_146CA6D:         var_A0 = "Depart"
  loc_146CA8E:         If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_146CA9C:           Set var_94 = Me.Txt
  loc_146CAA2:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_146CAAA:           var_98.SetFocus
  loc_146CAB8:           arg_10 = &HFF
  loc_146CABB:           Exit Sub
  loc_146CABC:         End If
  loc_146CB0A:         Set var_94 = Me.Txt
  loc_146CB10:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_146CB18:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_146CB30:         If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_146CB40:           Set var_94 = Me.Txt
  loc_146CB46:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146CB4E:           var_98.Text = vbNullString
  loc_146CB67:           Set var_94 = Me.Txt
  loc_146CB6D:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146CB75:           var_98.Tag = vbNullString
  loc_146CB84:         Else
  loc_146CBBF:           Set var_9C = Me.Txt
  loc_146CBC5:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_146CBCD:           var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_146CC11:           var_A0 = CStr(Me.Fields.Item("Code").Value)
  loc_146CC1E:           Set var_9C = Me.Txt
  loc_146CC24:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_146CC2C:           var_BC.Tag = var_A0
  loc_146CC42:         End If
  loc_146CC42:       End If
  loc_146CC42:     End If
  loc_146CC42:   End If
  loc_146CC42: End If
  loc_146CC47: Set var_88 = Nothing
  loc_146CC4A: Exit Sub
  loc_146CC4B: ' Referenced from: 146C094
  loc_146CC4B: Proc_6_60_E62BC4(var_A0)
  loc_146CC50: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA774C
  'Data Table: 4ABF1C
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA76E7: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_104)) Then
  loc_EA76FD:   Me.FGrid.Col = 1
  loc_EA7705: End If
  loc_EA7718: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA772B: Set var_88 = Me.TxtGrid
  loc_EA7731: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA7739: var_BC.Visible = False
  loc_EA7745: Call Proc_36_51_EF7188()
  loc_EA774A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69100
  'Data Table: 4ABF1C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E690BC: Set var_88 = Me.TxtGrid
  loc_E690C2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E690DC: If (var_8C.Visible = 0) Then
  loc_E690F5:   Me.FGrid.BackColorSel = CVar(CLng(global_104))
  loc_E690FD: End If
  loc_E690FD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF804
  'Data Table: 4ABF1C
  loc_DFF7FC: Call Proc_36_45_E38CB0()
  loc_DFF801: Exit Sub
  loc_DFF802: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '11B0408
  'Data Table: 4ABF1C
  Dim var_98 As Variant
  Dim var_E0 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_11AFFD4: Set var_88 = Me.TopCtrl1
  loc_11AFFDA: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_11B002A: If CBool(( = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_11B0033:   Call Form_KeyDown(Cancel, arg_10)
  loc_11B0038: End If
  loc_11B003C: Set var_88 = Me.TopCtrl1
  loc_11B0042: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_11B0057: If ( = "Browse") Then
  loc_11B005A:   Exit Sub
  loc_11B005B: End If
  loc_11B00CF: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_11B00E8:   Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_11B00F8:   var_DC = "+{Tab}"
  loc_11B00FE:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_11B0108:   Cancel = 0
  loc_11B010E: Else
  loc_11B0118:   var_B8 = Me.FGrid.Rows
  loc_11B0165:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_11B017E:     Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_11B018B:     Call Proc_36_52_F0B07C(0, var_B8, Cancel)
  loc_11B0190:   End If
  loc_11B0190: End If
  loc_11B0196: global_80 = Cancel
  loc_11B01BC: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11B01E0: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_11B01F6:   var_EC = CLng(Me.FGrid.Col)
  loc_11B0206:   If (var_EC = CLng(1)) Then
  loc_11B021C:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B0234:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11B0239:     var_11C = vbNullString
  loc_11B0243:     Set var_E4 = Me.FGrid
  loc_11B0249:     LateIdCallSt
  loc_11B0274:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B027C:     var_FC = CVar(CLng(8)) 'Long
  loc_11B0281:     var_11C = vbNullString
  loc_11B028B:     Set var_E0 = Me.FGrid
  loc_11B0291:     LateIdCallSt
  loc_11B02A6:   Else
  loc_11B02AD:     If (var_EC = CLng(2)) Then
  loc_11B02C3:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B02DB:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11B02E0:       var_11C = vbNullString
  loc_11B02EA:       Set var_E4 = Me.FGrid
  loc_11B02F0:       LateIdCallSt
  loc_11B031B:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B0323:       var_FC = CVar(CLng(7)) 'Long
  loc_11B0328:       var_11C = vbNullString
  loc_11B0332:       Set var_E0 = Me.FGrid
  loc_11B0338:       LateIdCallSt
  loc_11B035D:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B0365:       var_FC = CVar(CLng(4)) 'Long
  loc_11B036A:       var_11C = vbNullString
  loc_11B0374:       Set var_E0 = Me.FGrid
  loc_11B037A:       LateIdCallSt
  loc_11B038F:     Else
  loc_11B0396:       If (var_EC = CLng(4)) Then
  loc_11B03AC:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B03C4:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11B03C9:         var_11C = vbNullString
  loc_11B03D3:         Set var_E4 = Me.FGrid
  loc_11B03D9:         LateIdCallSt
  loc_11B03F1:       End If
  loc_11B03F1:     End If
  loc_11B03F1:   End If
  loc_11B03F1: End If
  loc_11B03F7: If (Cancel = &HD) Then
  loc_11B03FF:   global_82 = 0
  loc_11B0402: End If
  loc_11B0404: Cancel = 0
  loc_11B0407: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0E4C8
  'Data Table: 4ABF1C
  loc_E0E4B9: Call FGrid_UnknownEvent_C()
  loc_E0E4C3: global_82 = 0
  loc_E0E4C6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '112AAEC
  'Data Table: 4ABF1C
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Long
  Dim var_C0 As String
  Dim var_DA As Integer
  Dim var_C4 As TextBox
  Dim var_D4 As TextBox
  loc_112A780: Set var_88 = Me.TopCtrl1
  loc_112A786: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_112A79B: If ( = "Browse") Then
  loc_112A79E:   Exit Sub
  loc_112A79F: End If
  loc_112A7B2: var_BC = CLng(Me.FGrid.Col)
  loc_112A7C2: If (var_BC = CLng(1)) Then
  loc_112A7C9:   Set var_D4 = Me.FGrid
  loc_112A7ED:   var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_112A81A:   Set var_C4 = var_D4
  loc_112A82C:   Proc_6_63_110ABA4(Me, var_C4, Me.TxtGrid, 0, 0)
  loc_112A854:   Set var_88 = Me.TxtGrid
  loc_112A85A:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, Asc(var_C0))
  loc_112A862:   0 = var_C4.Text
  loc_112A87B:   If (Len(var_C0) <= 1) Then
  loc_112A88A:     Set var_88 = Me.TxtGrid
  loc_112A890:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_112A898:     var_DA = var_C4.Text
  loc_112A8A9:     Set var_C8 = Me.TxtGrid
  loc_112A8AF:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_112A8B7:     var_D4.Text = var_C0
  loc_112A8CA:   End If
  loc_112A8D6:   Set var_88 = Me.TxtGrid
  loc_112A8DC:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_112A8F6:   Set var_C8 = Me.TxtGrid
  loc_112A8FC:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_112A904:   var_D4.SelStart = Len(var_C4.Text)
  loc_112A91A: Else
  loc_112A921:   If (var_BC = CLng(2)) Then
  loc_112A928:     Set var_D4 = Me.FGrid
  loc_112A94C:     var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_112A979:     Set var_C4 = var_D4
  loc_112A98B:     Proc_6_63_110ABA4(Me, var_C4, Me.TxtGrid, 0, 0)
  loc_112A9B3:     Set var_88 = Me.TxtGrid
  loc_112A9B9:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, Asc(var_C0))
  loc_112A9C1:     0 = var_C4.Text
  loc_112A9DA:     If (Len(var_C0) <= 1) Then
  loc_112A9E9:       Set var_88 = Me.TxtGrid
  loc_112A9EF:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_112A9F7:       var_DA = var_C4.Text
  loc_112AA08:       Set var_C8 = Me.TxtGrid
  loc_112AA0E:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_112AA16:       var_D4.Text = var_C0
  loc_112AA29:     End If
  loc_112AA35:     Set var_88 = Me.TxtGrid
  loc_112AA3B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_112AA55:     Set var_C8 = Me.TxtGrid
  loc_112AA5B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_112AA63:     var_D4.SelStart = Len(var_C4.Text)
  loc_112AA79:   Else
  loc_112AA80:     If (var_BC = CLng(4)) Then
  loc_112AAC1:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_112AAD3:     End If
  loc_112AAD3:   End If
  loc_112AAD3: End If
  loc_112AADD: If (CLng(Cancel) <> &HD) Then
  loc_112AAE5:   global_82 = &HFF
  loc_112AAE8: End If
  loc_112AAE8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FE7B2C
  'Data Table: 4ABF1C
  Dim var_A0 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  loc_FE7958: Set var_90 = Me.TopCtrl1
  loc_FE795E: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_FE7973: If ( = "Browse") Then
  loc_FE7976:   Exit Sub
  loc_FE7977: End If
  loc_FE7994: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FE7997:   Exit Sub
  loc_FE7998: End If
  loc_FE79A9: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FE79CB:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FE7A05:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FE7A27:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FE7A3D:         var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE7A46:         Set var_114 = Me.FGrid
  loc_FE7A61:       Else
  loc_FE7A74:         Me.FGrid.Rows = 1
  loc_FE7A9A:         var_B0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_FE7AA2:         Set var_114 = Me.FGrid
  loc_FE7ACF:         Me.FGrid.FixedRows = 1
  loc_FE7AD7:       End If
  loc_FE7AD7:     End If
  loc_FE7ADA:   Else
  loc_FE7AFB:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_FE7B0B:   End If
  loc_FE7B0F:   Set var_90 = Me.FGrid
  loc_FE7B20: End If
  loc_FE7B25: Set var_8C = Nothing
  loc_FE7B28: Exit Sub
  loc_FE7B29: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3FA68
  'Data Table: 4ABF1C
  Dim var_8C As TextBox
  loc_E3FA3C: Call Proc_36_51_EF7188()
  loc_E3FA4C: Set var_88 = Me.TxtGrid
  loc_E3FA52: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3FA5A: var_8C.Visible = False
  loc_E3FA66: Exit Sub
End Sub

Private Sub Form_Load() '1279CC4
  'Data Table: 4ABF1C
  Dim var_C4 As Variant
  Dim var_88 As String
  Dim unk_4ABF3A As Connection15
  Dim var_B0 As Recordset15
  Dim var_B4 As Fields15
  Dim var_C8 As Field20
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim Me As Recordset15
  loc_1279728: On Error Goto loc_1279CBD
  loc_1279731: global_132 = MemVar_1F921B8
  loc_127973B: global_136 = MemVar_1F921BC
  loc_1279745: global_140 = MemVar_1F921C0
  loc_127974F: var_C4 = 0
  loc_127976F: var_88 = "Select 'I'+ShortName From Depart Where Code='" & global_132
  loc_127977F: unk_4ABF3A.Execute var_88 & "'", var_AC, -1
  loc_1279787: var_B0 = var_B0.Fields
  loc_127978F: var_C4 = var_B4.Item(var_B4)
  loc_1279797: var_C8 = var_C8.Value
  loc_12797C9: var_C4 = 0
  loc_12797E9: var_88 = "Select 'R'+ShortName From Depart Where Code='" & global_132
  loc_12797F9: unk_4ABF3A.Execute var_88 & "'", var_AC, -1
  loc_1279801: var_B0 = var_B0.Fields
  loc_1279809: var_C4 = var_B4.Item(var_B4)
  loc_1279811: var_C8 = var_C8.Value
  loc_1279865: global_100 = "('" & CStr(var_D8) & "','" & CStr(var_D8) & "')"
  loc_127987E: Set global_56 = New 
  loc_1279890: Me.Recordset15.CursorLocation = 3
  loc_12798BD: var_AC = CVar("Select V_Type As Code,Description As Name,NCat From Voucher_Type Where  V_tYPE IN " & global_100 & " Order by Description") 'String
  loc_12798C7: Me.Open var_AC, CVar(MemVar_1F92044), 3
  loc_12798DB: CVarUnk
  loc_12798E0: VerifyVarObj
  loc_12798E6: Set var_B0 = Me.DGVType
  loc_12798EC: LateIdStAd
  loc_1279904: Set global_60 = New 
  loc_1279916: Me.DGVType.CursorLocation = 3
  loc_1279932: var_9C = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,I.LPurRate From ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code WHERE I.TYPE IN ('Store Item','Consumables') AND IG.TYPE IN ('Store Item','Consumables') And I.ItemType='Store' Order by I.Name"
  loc_127993E: Me.Open var_9C, CVar(MemVar_1F92044), 3
  loc_127994C: CVarUnk
  loc_1279951: VerifyVarObj
  loc_1279957: Set var_B0 = Me.DGItem
  loc_127995D: LateIdStAd
  loc_1279975: Set global_68 = New 
  loc_1279987: Me.DGItem.CursorLocation = 3
  loc_12799A3: var_9C = "SELECT D.Code, GodownMast.Name FROM Depart AS D RIGHT JOIN GodownMast ON D.Code = GodownMast.Code where resttype='House Keeping'"
  loc_12799AF: Me.Open var_9C, CVar(MemVar_1F92044), 3
  loc_12799BD: CVarUnk
  loc_12799C2: VerifyVarObj
  loc_12799C8: Set var_B0 = Me.DGDepart
  loc_12799CE: LateIdStAd
  loc_12799F8: Me.DGDepart.CursorLocation = 3
  loc_1279A2E: CVarUnk
  loc_1279A33: VerifyVarObj
  loc_1279A3F: LateIdStAd
  loc_1279A57: Set global_72 = New 
  loc_1279A69: Me.DGRoom.CursorLocation = 3
  loc_1279A8F: var_88 = "Select Distinct S.DocId as SearchCode,S.DocID From STOCK S left join Voucher_Type V On V.V_Type=S.Vtype WHERE v.V_tYPE IN " & global_100
  loc_1279A96: var_AC = CVar(var_88 & " Order by Docid") 'String
  loc_1279AA0: elect R.Code ,R.Name As Name,RoomCat From RoomMast R WHERE TYPE IN ('RO') Order by R.Name", CVar(MemVar_1F92044), 3 var_AC, CVar(MemVar_1F92044), 3
  loc_1279AD0: Call 0.Method_arg_50 (var_88, "SELECT COUNT(*) FROM LASTVOU WHERE ENAME='", var_AC, -1, Me.DGRoom, var_B4, 0, var_C8)
  loc_1279AF7: unk_4ABF3A.Execute var_D8 & var_88 & "' AND UNAME='" & MemVar_1F920C8 & "'", 1, -1
  loc_1279AFF: var_B0 = var_B0.Fields
  loc_1279B07: 1 = var_B4.Item(New)
  loc_1279B0F: -1 = var_C8.Value
  loc_1279B3C: If (var_D8 > 0) Then
  loc_1279B77:   Call 0.Method_arg_50 (var_88, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_AC, -1, var_B0, var_B4, 0)
  loc_1279B9E:   unk_4ABF3A.Execute var_C8 & var_88 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_D8, "SearchCode='"
  loc_1279BA6:   0 = var_B0.Fields
  loc_1279BAE:   var_138 = var_B4.Item(1)
  loc_1279BB6:    = var_C8.Value
  loc_1279BD5:   Me.Find CStr(var_D8 & "'"), , 
  loc_1279BFD: End If
  loc_1279C14: If (Me.RecordCount > 0) Then
  loc_1279C2B:   If (Me.EOF = &HFF) Then
  loc_1279C34:     Me.MoveLast
  loc_1279C39:   End If
  loc_1279C39: End If
  loc_1279C5C: Call Proc_36_50_E9E458(Proc_5_1_100CB50("INI", Me))
  loc_1279C79: Set var_B0 = Me
  loc_1279C7F: Proc_6_23_DFBA28(var_B0, 4950)
  loc_1279C90: Call 0.Method_arg_160 (var_B0, 10575)
  loc_1279C9E: Call 0.Method_arg_164 (var_B0)
  loc_1279CA6: Call Proc_36_44_11F8FBC(global_72)
  loc_1279CAB: Call Proc_36_47_1450E28()
  loc_1279CB7: Call 0.Method_arg_64 (CLng(MemVar_1F921C0))
  loc_1279CBC: Exit Sub
  loc_1279CBD: ' Referenced from: 1279728
  loc_1279CBD: Proc_6_60_E62BC4()
  loc_1279CC2: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E66CE4
  'Data Table: 4ABF1C
  loc_E66C9B: Set global_64 = Nothing
  loc_E66CAD: Set global_60 = Nothing
  loc_E66CBF: Set global_56 = Nothing
  loc_E66CD1: Set global_68 = Nothing
  loc_E66CDD: MasterFormExit = 0
  loc_E66CE0: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25C7C
  'Data Table: 4ABF1C
  loc_E25C61: If (MasterFormExit = &HFF) Then
  loc_E25C71:   Me.Global.Unload Me
  loc_E25C79: End If
  loc_E25C79: Exit Sub
  loc_E25C7A: Get , ,  'get  bytes
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E3A638
  'Data Table: 4ABF1C
  loc_E3A60C: On Error Goto loc_E3A630
  loc_E3A627: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3A62F: Exit Sub
  loc_E3A630: ' Referenced from: E3A60C
  loc_E3A630: Proc_6_60_E62BC4(Shift)
  loc_E3A635: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'FB8A1C
  'Data Table: 4ABF1C
  Dim var_98 As Variant
  Dim unk_4ABF3A As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_C4 As TextBox
  loc_FB8878: On Error Goto loc_FB8A14
  loc_FB889E: Call Proc_36_50_E9E458(Proc_5_1_100CB50("ADD", Me))
  loc_FB88A9: Call Proc_36_49_F30054(global_72)
  loc_FB88C7: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2), var_98)
  loc_FB88CF: var_98.Text = CStr(MemVar_1F920EC)
  loc_FB88FE: unk_4ABF3A.Execute "Select Description,V_Type From Voucher_Type Where V_tYPE IN " & global_100, var_B8, -1
  loc_FB8909: Set var_88 = Me.Txt
  loc_FB8929: If (var_88.RecordCount > 0) Then
  loc_FB8965:   Set var_C0 = Me.Txt
  loc_FB896B:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_C4)
  loc_FB8973:   var_C4.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_FB89A3:   var_98 = var_88.Fields.Item("V_Type")
  loc_FB89C2:   Set var_C0 = Me.Txt
  loc_FB89C8:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_C4)
  loc_FB89D0:   var_C4.Tag = CStr(var_98.Value)
  loc_FB89E6: End If
  loc_FB89F1: Set var_90 = Me.Txt
  loc_FB89F7: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_98)
  loc_FB89FF: var_98.SetFocus
  loc_FB8A10: Set var_88 = Nothing
  loc_FB8A13: Exit Sub
  loc_FB8A14: ' Referenced from: FB8878
  loc_FB8A14: Proc_6_60_E62BC4(var_90)
  loc_FB8A19: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'EDC804
  'Data Table: 4ABF1C
  Dim var_98 As TextBox
  loc_EDC750: On Error Goto loc_EDC7FD
  loc_EDC776: Call Proc_36_50_E9E458(Proc_5_1_100CB50("EDIT", Me))
  loc_EDC78E: Set var_90 = Me.Txt
  loc_EDC794: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_98)
  loc_EDC79C: var_98.Enabled = False
  loc_EDC7B5: Set var_90 = Me.Txt
  loc_EDC7BB: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(1), var_98)
  loc_EDC7C3: var_98.Enabled = False
  loc_EDC7DA: Set var_90 = Me.Txt
  loc_EDC7E0: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(2), var_98)
  loc_EDC7E8: var_98.SetFocus
  loc_EDC7F4: Exit Sub
  loc_EDC7FA: Set var_88 = Nothing
  loc_EDC7FD: ' Referenced from: EDC750
  loc_EDC7FD: Proc_6_60_E62BC4(global_72)
  loc_EDC802: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '10B2D34
  'Data Table: 4ABF1C
  Dim unk_4ABF3A As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_10B2A8C: On Error Goto loc_10B2CE4
  loc_10B2AC6: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_10B2AD2:   unk_4ABF3A.BeginTrans var_118
  loc_10B2AE8:   var_94 = Me.Bookmark 'Variant
  loc_10B2B34:   var_F4 = "Delete From STOCK Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10B2B42:   unk_4ABF3A.Execute CStr(var_F4), var_114, -1
  loc_10B2B8D:   var_160 = 0
  loc_10B2BA0:   var_158 = 0
  loc_10B2BAB:   var_154 = 0
  loc_10B2BBE:   var_14C = 0
  loc_10B2BC9:   var_148 = 0
  loc_10B2BDC:   var_140 = 0
  loc_10B2C1C:   var_124 = "STOCK"
  loc_10B2C25:   Proc_154_5_10E33A4(MemVar_1F92044, var_124, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10B2C53:   unk_4ABF3A.CommitTrans
  loc_10B2C63:   Me.Requery -1
  loc_10B2C83:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10B2C90:     Me.Bookmark = var_94
  loc_10B2C98:   Else
  loc_10B2CAC:     If (Me.EOF = 0) Then
  loc_10B2CB5:       Me.MoveLast
  loc_10B2CBA:     End If
  loc_10B2CBA:   End If
  loc_10B2CBA:   Call Proc_36_47_1450E28(var_140, 0, var_148, var_14C)
  loc_10B2CDB:   Proc_5_0_110649C(&HFF, Me, global_72, 0)
  loc_10B2CE3: End If
  loc_10B2CE3: Exit Sub
  loc_10B2CE4: ' Referenced from: 10B2A8C
  loc_10B2CEA: unk_4ABF3A.RollbackTrans
  loc_10B2CF7: Set var_11C = Err()
  loc_10B2CFD: Call 0.Method_arg_2C (var_124, 0, var_154)
  loc_10B2D1E: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_10B2D31: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E1B1A4
  'Data Table: 4ABF1C
  loc_E1B199: Me.Global.Unload Me
  loc_E1B1A1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3C9D8
  'Data Table: 4ABF1C
  Dim var_5B01 As Double
  loc_E3C9C8: Proc_5_0_110649C(&HFF, Me)
  loc_E3C9D0: Call Proc_36_47_1450E28(global_72)
  loc_E3C9D5: Exit Sub
  loc_E3C9D6: var_5B01 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E3C6D8
  'Data Table: 4ABF1C
  Dim var_5B01 As Double
  loc_E3C6C8: Proc_5_0_110649C(&HFF, Me)
  loc_E3C6D0: Call Proc_36_47_1450E28(global_72)
  loc_E3C6D5: Exit Sub
  loc_E3C6D6: var_5B01 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E39D98
  'Data Table: 4ABF1C
  Dim var_5B01 As Double
  loc_E39D88: Proc_5_0_110649C(&HFF, Me)
  loc_E39D90: Call Proc_36_47_1450E28(global_72)
  loc_E39D95: Exit Sub
  loc_E39D96: var_5B01 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E39CD8
  'Data Table: 4ABF1C
  Dim var_5B01 As Double
  loc_E39CC8: Proc_5_0_110649C(&HFF, Me)
  loc_E39CD0: Call Proc_36_47_1450E28(global_72)
  loc_E39CD5: Exit Sub
  loc_E39CD6: var_5B01 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '1674CE4
  'Data Table: 4ABF1C
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_A4 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_A8 As Variant
  Dim var_150 As String
  Dim var_154 As String
  Dim unk_4ABF3A As Connection15
  Dim var_AC As Variant
  Dim var_158 As Variant
  Dim var_15C As Variant
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_88 As Recordset15
  Dim var_8A As Variant
  Dim var_1D4 As Variant
  Dim var_14C As Double
  Dim var_1EC As TextBox
  Dim var_270 As TextBox
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_308 As Variant
  Dim var_328 As Variant
  Dim var_39C As Variant
  Dim var_3BC As Variant
  Dim var_434 As Variant
  Dim var_454 As Variant
  Dim var_478 As Variant
  Dim var_4C8 As Variant
  Dim var_4E8 As Variant
  Dim var_50C As Variant
  Dim var_55C As Variant
  Dim var_57C As Variant
  Dim var_938 As Double
  Dim var_940 As Double
  Dim var_948 As Double
  Dim var_878 As Variant
  Dim var_898 As Variant
  Dim var_950 As Double
  Dim var_1D8 As String
  Dim var_1DC As String
  Dim var_1E0 As String
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_210 As Variant
  Dim var_248 As Variant
  Dim var_2D8 As Variant
  Dim var_36C As Variant
  Dim var_498 As Variant
  Dim var_52C As Variant
  Dim var_714 As Variant
  Dim var_784 As Variant
  Dim var_8E0 As Variant
  Dim var_1F0 As String
  loc_16736B0: On Error Goto loc_1674CC8
  loc_16736BE: Set var_A4 = Me.Txt
  loc_16736C4: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2))
  loc_16736ED: If (Proc_6_27_EA565C(var_A8, "Voucher Date") = 0) Then
  loc_16736F0:   Exit Sub
  loc_16736F1: End If
  loc_16736FC: Set var_A4 = Me.Txt
  loc_1673702: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A8)
  loc_167372B: If (Proc_6_27_EA565C(var_A8, "Voucher No") = 0) Then
  loc_167372E:   Exit Sub
  loc_167372F: End If
  loc_167373A: Set var_A4 = Me.Txt
  loc_1673740: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_A8)
  loc_1673769: If (Proc_6_27_EA565C(var_A8, "Department") = 0) Then
  loc_167376C:   Exit Sub
  loc_167376D: End If
  loc_167376D: var_C0 = 1
  loc_1673776: var_E0 = 1
  loc_1673794: var_110 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_167379A: var_120 = Trim(var_110)
  loc_16737B6: If (var_120 = vbNullString) Then
  loc_16737D2:   MsgBox("Fill Room", 0, var_110, var_120, var_140)
  loc_16737F5:   Me.FGrid.Row = 1
  loc_1673801:   Set var_A4 = Me.FGrid
  loc_1673825:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_167382D:   Exit Sub
  loc_167382E: End If
  loc_167382E: var_C0 = 1
  loc_1673837: var_E0 = 2
  loc_1673855: var_110 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_167385B: var_120 = Trim(var_110)
  loc_1673877: If (var_120 = vbNullString) Then
  loc_1673893:   MsgBox("Fill Item Name ", 0, var_110, var_120, var_140)
  loc_16738B6:   Me.FGrid.Row = 1
  loc_16738C2:   Set var_A4 = Me.FGrid
  loc_16738E6:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_16738EE:   Exit Sub
  loc_16738EF: End If
  loc_16738EF: var_C0 = 1
  loc_16738F8: var_E0 = 3
  loc_1673916: var_110 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_167391C: var_120 = Trim(var_110)
  loc_1673938: If (var_120 = vbNullString) Then
  loc_167394E:   var_100 = "Item Detail Required "
  loc_1673954:   MsgBox(var_100, 0, var_110, var_120, var_140)
  loc_1673977:   Me.FGrid.Row = 1
  loc_1673983:   Set var_A4 = Me.FGrid
  loc_1673998:   var_C0 = CVar(CLng("14737632")) 'Long
  loc_16739A7:   Me.FGrid.CellBackColor = var_C0
  loc_16739AF:   Exit Sub
  loc_16739B0: End If
  loc_16739B3: Call Proc_36_48_1087B74(var_142, FGrid.DispID_8001, var_E0, var_C0, FGrid.DispID_8001, var_E0)
  loc_16739BE: If (var_142 = 0) Then
  loc_16739C1:   Exit Sub
  loc_16739C2: End If
  loc_16739CD: Set var_A4 = Me.TxtGrid
  loc_16739D3: Call 0.Method_TopCtrl1_UnknownEvent_190 (0, var_A8, 0, var_C0)
  loc_16739DB: var_A8.Visible = FGrid.DispID_8001
  loc_16739E7: Call Proc_36_51_EF7188(var_E0, var_C0)
  loc_16739FA: Set var_A4 = Me.Txt
  loc_1673A00: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_A8)
  loc_1673A08: var_B0 = var_A8.Text
  loc_1673A28: If (Proc_6_91_EF2D40(CDate(var_B0)) = 0) Then
  loc_1673A36:   Set var_A4 = Me.Txt
  loc_1673A3C:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_A8)
  loc_1673A44:   var_A8.SetFocus
  loc_1673A50:   Exit Sub
  loc_1673A51: End If
  loc_1673A55: Set var_A4 = Me.TopCtrl1
  loc_1673A5B: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_A8)
  loc_1673A70: If ( = "Add") Then
  loc_1673AA0:   Set var_A4 = Me.Txt
  loc_1673AA6:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A8, var_B0, "Select Count(*) From STOCK Where DocID='", var_100, -1)
  loc_1673AAE:   var_AC = var_A8.Text
  loc_1673AC7:   unk_4ABF3A.Execute var_158 & var_B0 & "'", 0, var_15C
  loc_1673AD7:    = var_158.Item()
  loc_1673ADF:    = var_15C.Value
  loc_1673B0C:   If (var_AC.Fields > 0) Then
  loc_1673B15:     Call Proc_36_53_1109998(MemVar_1F92044)
  loc_1673B28:     Set var_A4 = Me.Txt
  loc_1673B2E:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A8)
  loc_1673B36:     var_A8.Text = var_B0
  loc_1673B45:     Exit Sub
  loc_1673B46:   End If
  loc_1673B49: Else
  loc_1673B66:   var_A8 = Me.Fields.Item("DocID")
  loc_1673B77:   var_B0 = CStr(var_A8.Value)
  loc_1673B7D:   global_108 = var_B0
  loc_1673B8E: End If
  loc_1673BAC: Set var_A4 = Me.Txt
  loc_1673BB2: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_B0, "SELECT NCAT FROM VOUCHER_tYPE WHERE V_TYPE='")
  loc_1673BBA: var_100 = var_A8.Tag
  loc_1673BC3: var_150 = -1 & var_B0
  loc_1673BD3: unk_4ABF3A.Execute var_158 & var_B0 & "'", var_AC, var_B0
  loc_1673BDE: Set var_88 = var_AC
  loc_1673BFC: var_160 = var_88.RecordCount
  loc_1673C0A: If (var_160 > 0) Then
  loc_1673C27:   var_A8 = var_88.Fields.Item("NCat")
  loc_1673C38:   var_A0 = CStr(var_A8.Value)
  loc_1673C45: End If
  loc_1673C47: var_8A = &HFF
  loc_1673C53: unk_4ABF3A.BeginTrans var_160
  loc_1673C76: Set var_A4 = Me.Txt
  loc_1673C7C: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A8, var_B0, "Delete From STOCK Where DocID='")
  loc_1673C84: var_100 = var_A8.Text
  loc_1673C8D: var_150 = -1 & var_B0
  loc_1673C94: var_154 = var_158 & var_B0 & "'"
  loc_1673C9D: unk_4ABF3A.Execute var_154, var_AC, var_8A
  loc_1673CDC: For var_164 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_164 'Integer
  loc_1673CE6:   var_C0 = CVar(CLng(var_92)) 'Long
  loc_1673CEE:   var_E0 = CVar(CLng(7)) 'Long
  loc_1673D08:   var_110 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1673D35:   Set var_A8 = Me.FGrid
  loc_1673D46:   var_B0 = CStr(var_A8.TextMatrix))
  loc_1673D74:   If CBool(CVar(CLng(4)) And (CDbl(Val(var_B0)) <> CDbl(0))) Then
  loc_1673D7F:     If (var_A0 = "HKISS") Then
  loc_1673D90:       Set var_A4 = Me.Txt
  loc_1673D96:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A8, var_B0, CVar(CLng(var_92)))
  loc_1673D9E:       (Trim(var_110) <> vbNullString) = var_A8.Text
  loc_1673DB1:       Set var_AC = Me.Txt
  loc_1673DB7:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_158, var_154)
  loc_1673DBF:       var_E0 = var_158.Text
  loc_1673DCC:       var_14C = Val(var_154)
  loc_1673DDA:       Set var_15C = Me.Txt
  loc_1673DE0:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_1E4, var_14C)
  loc_1673DEF:       Proc_6_7_F25D88(var_110, CVar(var_1E4))
  loc_1673E02:       Set var_1E8 = Me.Txt
  loc_1673E08:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1EC, var_1F0)
  loc_1673E10:       var_C0 = var_1EC.Tag
  loc_1673E35:       Set var_26C = Me.Txt
  loc_1673E3B:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_270)
  loc_1673E4C:       var_184 = CVar(CLng(var_92)) 'Long
  loc_1673E54:       var_1A4 = CVar(CLng(9)) 'Long
  loc_1673E73:       var_308 = CVar(CLng(var_92)) 'Long
  loc_1673E7B:       var_328 = CVar(CLng(8)) 'Long
  loc_1673E9A:       var_39C = CVar(CLng(var_92)) 'Long
  loc_1673EA2:       var_3BC = CVar(CLng(0)) 'Long
  loc_1673ECB:       var_434 = CVar(CLng(var_92)) 'Long
  loc_1673ED3:       var_454 = CVar(CLng(7)) 'Long
  loc_1673EF2:       var_4C8 = CVar(CLng(var_92)) 'Long
  loc_1673EFA:       var_4E8 = CVar(CLng(3)) 'Long
  loc_1673F09:       var_50C = Me.FGrid.TextMatrix)
  loc_1673F19:       var_55C = CVar(CLng(var_92)) 'Long
  loc_1673F21:       var_57C = CVar(CLng(4)) 'Long
  loc_1673F43:       var_938 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1673F74:       var_940 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1673FA5:       var_948 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1673FB6:       Proc_6_7_F25D88(var_774, Date, var_948, CVar(CLng(6)), CVar(CLng(var_92)), var_940, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_1673FBF:       Set var_7A8 = Me.TopCtrl1
  loc_1673FC5:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_938)
  loc_1674004:       var_878 = CVar(CLng(var_92)) 'Long
  loc_167400C:       var_898 = CVar(CLng(6)) 'Long
  loc_167402E:       var_950 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1674045:       var_150 = "Insert Into Stock (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Sno,Item,Unit,QtyIss,RAte,Amount,U_Name,U_EntDt,U_AE,TOTAL) Values ('" & var_B0
  loc_1674094:       var_248 = CVar(var_150 & "'," & CStr(var_14C) & ",") & var_110 & ",'" & CVar(var_1F0) & "','" & CVar(Me.LblVPrefix.Caption) & "','" 
  loc_16740D9:       var_36C = var_248 & CVar(MemVar_1F92070) & "','" & CVar(var_270.Tag) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','RO','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1674115:       var_52C = var_36C & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_50C)) 
  loc_1674174:       var_784 = var_52C & "'," & CVar(var_938) & "," & CVar(var_940) & "," & CVar(var_948) & ",'" & CVar(MemVar_1F920C8) & "'," & var_774 
  loc_16741AF:       unk_4ABF3A.Execute CStr(var_784 & ",'" & IIf((var_7C8 = "Add"), "A", "E") & "'," & CVar(var_950) & ")"), var_924, -1
  loc_167427C:     Else
  loc_167428A:       Set var_A4 = Me.Txt
  loc_1674290:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A8, var_B0, var_928, var_950, var_898, var_878)
  loc_1674298:       var_57C = var_A8.Text
  loc_16742AB:       Set var_AC = Me.Txt
  loc_16742B1:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_158, var_154, var_55C, var_50C)
  loc_16742B9:       var_4E8 = var_158.Text
  loc_16742C6:       var_14C = Val(var_154)
  loc_16742D4:       Set var_15C = Me.Txt
  loc_16742DA:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_1E4, var_14C)
  loc_16742E9:       Proc_6_7_F25D88(var_110, CVar(var_1E4), var_4C8)
  loc_16742FC:       Set var_1E8 = Me.Txt
  loc_1674302:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1EC, var_1F0)
  loc_167430A:       var_478 = var_1EC.Tag
  loc_167432F:       Set var_26C = Me.Txt
  loc_1674335:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_270)
  loc_1674346:       var_184 = CVar(CLng(var_92)) 'Long
  loc_167434E:       var_1A4 = CVar(CLng(9)) 'Long
  loc_167436D:       var_308 = CVar(CLng(var_92)) 'Long
  loc_1674375:       var_328 = CVar(CLng(8)) 'Long
  loc_1674394:       var_39C = CVar(CLng(var_92)) 'Long
  loc_167439C:       var_3BC = CVar(CLng(0)) 'Long
  loc_16743C5:       var_434 = CVar(CLng(var_92)) 'Long
  loc_16743CD:       var_454 = CVar(CLng(7)) 'Long
  loc_16743EC:       var_4C8 = CVar(CLng(var_92)) 'Long
  loc_16743F4:       var_4E8 = CVar(CLng(3)) 'Long
  loc_1674413:       var_55C = CVar(CLng(var_92)) 'Long
  loc_167441B:       var_57C = CVar(CLng(4)) 'Long
  loc_167443D:       var_938 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_167446E:       var_940 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_167449F:       var_948 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16744B0:       Proc_6_7_F25D88(var_774, Date, var_948, CVar(CLng(6)), CVar(CLng(var_92)), var_940, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_16744B9:       Set var_7A8 = Me.TopCtrl1
  loc_16744BF:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_938)
  loc_16744FE:       var_878 = CVar(CLng(var_92)) 'Long
  loc_1674506:       var_898 = CVar(CLng(6)) 'Long
  loc_167453F:       var_150 = "Insert Into Stock (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Sno,Item,Unit,Qtyrec,Rate,Amount,U_Name,U_EntDt,U_AE,TOTAL) Values ('" & var_B0
  loc_1674546:       var_1D8 = var_150 & "',"
  loc_167457B:       var_210 = CVar(var_1D8 & CStr(var_14C) & ",") & var_110 & ",'" & CVar(var_1F0) & "','" 
  loc_16745BF:       var_2D8 = var_210 & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F92070) & "','" & CVar(var_270.Tag) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_16745FB:       var_498 = var_2D8 & "','RO','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1674654:       var_714 = var_498 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(var_938) & "," & CVar(var_940) & "," & CVar(var_948) & ",'" 
  loc_1674692:       var_8E0 = var_714 & CVar(MemVar_1F920C8) & "'," & var_774 & ",'" & IIf((var_7C8 = "Add"), "A", "E") & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_16746A9:       unk_4ABF3A.Execute CStr(var_8E0 & ")"), var_924, -1
  loc_1674773:     End If
  loc_1674773:   End If
  loc_1674776: Next var_164 'Integer
  loc_167477F: Set var_A4 = Me.TopCtrl1
  loc_1674785: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_167479A: If ( = "Add") Then
  loc_16747B1:   var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_16747D7:   Set var_A4 = Me.Txt
  loc_16747DD:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_1D8, var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='")
  loc_16747E5:   var_1D4 = var_A8.Tag
  loc_16747EE:   var_1E0 = -1 & var_1D8
  loc_16747F5:   var_120 = CVar(var_1D8 & CStr(var_14C) & "' And VP.Date_From<=") 'String
  loc_1674806:   Set var_AC = Me.Txt
  loc_167480C:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_158, var_1F0)
  loc_1674814:   var_120 = var_158.Text
  loc_1674822:   Proc_6_7_F25D88(var_110, CVar(var_1F0))
  loc_1674841:   unk_4ABF3A.Execute CStr(var_15C & var_110 & " Order By VP.Date_From DESC"), , 
  loc_167484C:   Set var_88 = var_15C
  loc_1674890:   If (var_88.RecordCount > 0) Then
  loc_16748A1:     Set var_A4 = Me.Txt
  loc_16748A7:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A8)
  loc_16748BC:     var_14C = Val(var_A8.Text)
  loc_16748D1:     var_AC = var_88.Fields
  loc_16748E1:     var_100 = var_AC.Item("V_Type").Value
  loc_167490C:     Proc_6_7_F25D88(var_1D4, CVar(var_88.Fields.Item("Date_From")))
  loc_1674926:     var_150 = CStr(var_14C)
  loc_1674946:     var_1F0 = "Update Voucher_Prefix Set Start_Srl_No=" & var_150 & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_1674971:     unk_4ABF3A.Execute CStr(CVar(var_1F0 & "') and V_Type='") & var_100 & "' and Date_From=" & var_1D4), var_210, -1
  loc_16749AB:   End If
  loc_16749AB: End If
  loc_16749AF: Set var_A4 = Me.TopCtrl1
  loc_16749B5: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_1E8)
  loc_16749CA: If (var_14C = "Add") Then
  loc_16749F0:   var_B0 = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F920C8
  loc_1674A00:   Call 0.Method_arg_50 (var_150, var_B0 & "' AND ENAME='", var_100, -1, var_A4)
  loc_1674A10:   var_1DC = var_A8 & var_150 & "' "
  loc_1674A19:   unk_4ABF3A.Execute var_1DC, 0, var_AC
  loc_1674A21:   var_110 = var_A4.Fields
  loc_1674A29:    = var_A8.Item()
  loc_1674A31:    = var_AC.Value
  loc_1674A5E:   If (var_110 > 0) Then
  loc_1674A7F:     Set var_A4 = Me.Txt
  loc_1674A85:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A8, var_B0, "UPDATE LASTVOU  SET DOCID='")
  loc_1674A8D:     var_100 = var_A8.Text
  loc_1674A96:     var_150 = -1 & var_B0
  loc_1674AB4:     Call 0.Method_arg_50 (var_1DC, var_150 & "' WHERE UNAME='" & MemVar_1F920C8 & "' AND ENAME='")
  loc_1674ACD:     unk_4ABF3A.Execute var_AC & var_1DC & "'  ", , 
  loc_1674AF4:   Else
  loc_1674B18:     Call 0.Method_arg_50 (var_150, "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "','", var_210)
  loc_1674B21:     var_1D8 = -1 & var_150
  loc_1674B28:     var_1E0 = var_150 & "' WHERE UNAME='" & MemVar_1F920C8 & "','"
  loc_1674B39:     Set var_A4 = Me.Txt
  loc_1674B3F:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A8, var_1DC)
  loc_1674B47:     var_1E0 = var_A8.Text
  loc_1674B76:     Proc_6_7_F25D88(var_110, Date)
  loc_1674B82:     var_C0 = ",'A','"
  loc_1674BA8:     unk_4ABF3A.Execute CStr(CVar(var_AC & var_1DC & "','" & MemVar_1F92070 & "',") & var_110 & var_C0 & CVar(MemVar_1F92078) & "')"), , 
  loc_1674BE0:   End If
  loc_1674BE0: End If
  loc_1674BE6: unk_4ABF3A.CommitTrans
  loc_1674BED: var_8A = 0
  loc_1674BFE: Set var_A4 = Me.Txt
  loc_1674C04: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_A8)
  loc_1674C20: var_8A = 0
  loc_1674C2E: Me.Requery -1
  loc_1674C58: Me.Find "SearchCode ='" & var_A8.Text & "'", 0, 1
  loc_1674C68: Set var_A4 = Me.TopCtrl1
  loc_1674C6E: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_C0)
  loc_1674C83: If (var_8A = "Add") Then
  loc_1674C86:   Call TopCtrl1_UnknownEvent_11()
  loc_1674C8B:   Exit Sub
  loc_1674C8C: End If
  loc_1674CAF: Call Proc_36_50_E9E458(Proc_5_1_100CB50("INI", Me), global_72)
  loc_1674CBA: Call Proc_36_47_1450E28(var_8A)
  loc_1674CC4: Set var_88 = Nothing
  loc_1674CC7: Exit Sub
  loc_1674CC8: ' Referenced from: 16736B0
  loc_1674CCE: If (var_8A = &HFF) Then
  loc_1674CD7:   unk_4ABF3A.RollbackTrans
  loc_1674CDC: End If
  loc_1674CDC: Proc_6_60_E62BC4()
  loc_1674CE1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EA0908
  'Data Table: 4ABF1C
  loc_EA0890: On Error Goto loc_EA0901
  loc_EA08CA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA08F0:   Call Proc_36_50_E9E458(Proc_5_1_100CB50("INI", Me))
  loc_EA08FB:   Call Proc_36_47_1450E28(global_72)
  loc_EA0900: End If
  loc_EA0900: Exit Sub
  loc_EA0901: ' Referenced from: EA0890
  loc_EA0901: Proc_6_60_E62BC4()
  loc_EA0906: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EB3E70
  'Data Table: 4ABF1C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EB3DE0: On Error Goto loc_EB3E6A
  loc_EB3DFA: If (Me.RecordCount <= 0) Then
  loc_EB3E03:   var_B8 = "Information"
  loc_EB3E1E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB3E2E:   Exit Sub
  loc_EB3E2F: End If
  loc_EB3E39: var_10C = "Select Distinct Docid as SearchCode,V.Description As VType,S.VNo as VrNo ,S.VDate as V_Date,R.Name as Department From ((STOCK S Left Join Voucher_Type V On S.VType= V.V_Type)Left Join Depart R On S.RestCode= R.Code) Where V.V_tYPE IN " & global_100
  loc_EB3E40: MemVar_1F920E4 = var_10C & " Order By S.Docid"
  loc_EB3E4D: MemVar_1F92120 = Me
  loc_EB3E64: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EB3E69: Exit Sub
  loc_EB3E6A: ' Referenced from: EB3DE0
  loc_EB3E6A: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EB3E6F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1C 'DFBE04
  'Data Table: 4ABF1C
  loc_DFBE00: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E56F38
  'Data Table: 4ABF1C
  Dim Me As Recordset15
  loc_E56EFF: Me.Requery -1
  loc_E56F0F: Me.Requery -1
  loc_E56F1F: Me.Requery -1
  loc_E56F2F: Me.Requery -1
  loc_E56F34: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '114A79C
  'Data Table: 4ABF1C
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_114A416: Set var_88 = Me.TxtGrid
  loc_114A41C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_114A42A: Proc_6_74_E226B0(var_8C)
  loc_114A436: Call Proc_36_51_EF7188(var_8C)
  loc_114A447: If (Index = 0) Then
  loc_114A460:   Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_114A47B:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114A4BA:   Set var_108 = Me.TxtGrid
  loc_114A4C0:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_114A4C8:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_114A4F9:   var_114 = CLng(Me.FGrid.Col)
  loc_114A509:   If (var_114 = CLng(1)) Then
  loc_114A54D:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_114A550:       Exit Sub
  loc_114A551:     End If
  loc_114A557:     Me.MoveFirst
  loc_114A56F:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114A577:     var_E4 = CVar(CLng(1)) 'Long
  loc_114A5BB:     Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_114A5EB:     If (Me.EOF = &HFF) Then
  loc_114A5F4:       Me.MoveFirst
  loc_114A5F9:     End If
  loc_114A602:     CVarUnk
  loc_114A607:     VerifyVarObj
  loc_114A60D:     Set var_88 = Me.DGRoom
  loc_114A613:     LateIdStAd
  loc_114A624:   Else
  loc_114A62B:     If (var_114 = CLng(2)) Then
  loc_114A66F:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_114A672:         Exit Sub
  loc_114A673:       End If
  loc_114A679:       Me.MoveFirst
  loc_114A691:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114A699:       var_E4 = CVar(CLng(7)) 'Long
  loc_114A6A2:       Set var_8C = Me.FGrid
  loc_114A6A8:       var_D4 = var_8C.TextMatrix)
  loc_114A6DD:       Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_114A70D:       If (Me.EOF = &HFF) Then
  loc_114A716:         Me.MoveFirst
  loc_114A71B:       End If
  loc_114A724:       CVarUnk
  loc_114A729:       VerifyVarObj
  loc_114A72F:       Set var_88 = Me.DGItem
  loc_114A735:       LateIdStAd
  loc_114A746:     Else
  loc_114A74D:       If (var_114 = CLng(4)) Then
  loc_114A75F:         Set var_88 = Me.TxtGrid
  loc_114A765:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, var_88, global_60, var_134, var_D4)
  loc_114A76D:         var_8C.MaxLength = var_E4
  loc_114A782:         If (global_82 = 0) Then
  loc_114A78D:           var_110 = "{Home}+{End}"
  loc_114A793:           Proc_303_0_FB9B68(CStr(var_D4), 0, var_A4, var_88)
  loc_114A79B:         End If
  loc_114A79B:       End If
  loc_114A79B:     End If
  loc_114A79B:   End If
  loc_114A79B: End If
  loc_114A79B: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '123C49C
  'Data Table: 4ABF1C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_DC As Variant
  Dim var_98 As DataGrid
  loc_123BF70: If (KeyCode = 0) Then
  loc_123BF7D:   If (CLng(Shift) = &H1B) Then
  loc_123BF8D:     Set var_8C = Me.TxtGrid
  loc_123BF93:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_123BFAD:     Set var_98 = Me.TxtGrid
  loc_123BFB3:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_123BFBB:     var_9C.Text = var_90.Tag
  loc_123BFD7:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_123BFDC:     Call Proc_36_51_EF7188(arg_14)
  loc_123BFE5:     Set var_8C = Me.FGrid
  loc_123C002:     Set var_8C = Me.TxtGrid
  loc_123C008:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_123C010:     var_90.Visible = FGrid.DispID_8001
  loc_123C01C:     Exit Sub
  loc_123C01D:   End If
  loc_123C040:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_123C05B:     Set var_9C = Nothing
  loc_123C094:     Proc_6_69_134A198(Me.DGRoom, Me.TxtGrid, KeyCode, global_64, Shift, &HFF)
  loc_123C0B2:     If (CLng(Shift) = &HD) Then
  loc_123C0BB:       Call Proc_36_46_1394CC4(KeyCode, var_B2, 1, Nothing)
  loc_123C0C6:       If (var_B2 = &HFF) Then
  loc_123C0D4:         Set var_9C = Me.TxtGrid
  loc_123C0FD:         Set var_90 = var_9C
  loc_123C10C:         Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_82, 4, 0)
  loc_123C11C:       End If
  loc_123C11C:     End If
  loc_123C129:     Set var_98 = Me.TxtGrid
  loc_123C12F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_CC, 0, 0)
  loc_123C137:     var_9C = var_9C.Height
  loc_123C149:     Set var_8C = Me.TxtGrid
  loc_123C14F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_C8)
  loc_123C157:     0 = var_90.Top
  loc_123C163:     var_DC = CVar((var_C8 + var_CC)) 'Single
  loc_123C172:     Me.DGRoom.Top = var_DC
  loc_123C191:     Set var_8C = Me.TxtGrid
  loc_123C197:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_C8)
  loc_123C19F:     var_B0 = var_90.Left
  loc_123C1B6:     Me.DGRoom.Left = CVar(var_C8)
  loc_123C1C7:   Else
  loc_123C1CE:     If (var_B0 = CLng(2)) Then
  loc_123C1E9:       Set var_9C = Nothing
  loc_123C222:       Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF)
  loc_123C240:       If (CLng(Shift) = &HD) Then
  loc_123C249:         Call Proc_36_46_1394CC4(KeyCode, var_B2, 1, Nothing)
  loc_123C254:         If (var_B2 = &HFF) Then
  loc_123C262:           Set var_9C = Me.TxtGrid
  loc_123C28B:           Set var_90 = var_9C
  loc_123C29A:           Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_82, 4)
  loc_123C2AA:         End If
  loc_123C2AA:       End If
  loc_123C2B7:       Set var_98 = Me.TxtGrid
  loc_123C2BD:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_CC, 0, 4)
  loc_123C2C5:       0 = var_9C.Height
  loc_123C2D7:       Set var_8C = Me.TxtGrid
  loc_123C2DD:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_C8)
  loc_123C2E5:       var_9C = var_90.Top
  loc_123C2F1:       var_DC = CVar((var_C8 + var_CC)) 'Single
  loc_123C300:       Me.DGItem.Top = CVar(var_C8)
  loc_123C31F:       Set var_8C = Me.TxtGrid
  loc_123C325:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_C8)
  loc_123C32D:       0 = var_90.Left
  loc_123C344:       Me.DGItem.Left = CVar(var_C8)
  loc_123C355:     Else
  loc_123C35C:       If (var_B0 = CLng(3)) Then
  loc_123C369:         If (CLng(Shift) = &HD) Then
  loc_123C372:           Call Proc_36_46_1394CC4(KeyCode, var_B2)
  loc_123C37D:           If (var_B2 = &HFF) Then
  loc_123C3CA:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82)
  loc_123C3DA:           End If
  loc_123C3DA:         End If
  loc_123C3DD:       Else
  loc_123C3E4:         If (var_B0 = CLng(4)) Then
  loc_123C427:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_82 = &HFF))) Then
  loc_123C430:             Call Proc_36_46_1394CC4(KeyCode, var_B2, CByte((CInt(4) + 1)), 0)
  loc_123C43B:             If (var_B2 = &HFF) Then
  loc_123C488:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82, CByte((CInt(4) + 1)))
  loc_123C498:             End If
  loc_123C498:           End If
  loc_123C498:         End If
  loc_123C498:       End If
  loc_123C498:     End If
  loc_123C498:   End If
  loc_123C498: End If
  loc_123C498: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F7049C
  'Data Table: 4ABF1C
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F7035F: Proc_6_58_E054C0(arg_10)
  loc_F70370: If (KeyAscii = 0) Then
  loc_F70386:   var_A0 = CLng(Me.FGrid.Col)
  loc_F70396:   If (var_A0 = CLng(1)) Then
  loc_F703B5:     If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F703C7:       var_A4 = "Name"
  loc_F703E2:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_64, arg_10)
  loc_F703F1:     End If
  loc_F703F4:   Else
  loc_F703FB:     If (var_A0 = CLng(2)) Then
  loc_F7041A:       If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F70421:         Set var_AC = Me.TxtGrid
  loc_F7042C:         var_A4 = "Name"
  loc_F70447:         Proc_6_89_146F1AC(var_AC, KeyAscii, global_60, arg_10, var_A4)
  loc_F70456:       End If
  loc_F70459:     Else
  loc_F70460:       If (var_A0 = CLng(4)) Then
  loc_F7046D:         Set var_8C = Me.TxtGrid
  loc_F70473:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0, var_A4)
  loc_F7048E:         Proc_6_42_129A86C(var_AC, arg_10, 8, 3)
  loc_F7049A:       End If
  loc_F7049A:     End If
  loc_F7049A:   End If
  loc_F7049A: End If
  loc_F7049A: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F62798
  'Data Table: 4ABF1C
  Dim var_A0 As Long
  loc_F62668: On Error Goto loc_F62792
  loc_F62677: If (KeyCode = 0) Then
  loc_F6268D:   var_A0 = CLng(Me.FGrid.Col)
  loc_F6269D:   If (var_A0 = CLng(1)) Then
  loc_F626C3:     If ((Shift <> &HD) And (CBool(Me.DGRoom.Visible) = 0)) Then
  loc_F626D4:       Call TxtGrid_KeyDown(KeyCode, global_80)
  loc_F62703:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_64, Shift, "Name")
  loc_F62712:     End If
  loc_F62715:   Else
  loc_F6271C:     If (var_A0 = CLng(2)) Then
  loc_F62742:       If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F62753:         Call TxtGrid_KeyDown(KeyCode, global_80)
  loc_F62782:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_60, Shift, "Name", &HFF)
  loc_F62791:       End If
  loc_F62791:     End If
  loc_F62791:   End If
  loc_F62791: End If
  loc_F62791: Exit Sub
  loc_F62792: ' Referenced from: F62668
  loc_F62792: Proc_6_60_E62BC4(0, &HFF, 0)
  loc_F62797: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20688
  'Data Table: 4ABF1C
  Dim arg_10 As Integer
  loc_E20670: If (Cancel = 0) Then
  loc_E20679:   Call Proc_36_46_1394CC4(Cancel, var_88)
  loc_E20682:   arg_10 = Not(var_88)
  loc_E20685: End If
  loc_E20685: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10A8B08
  'Data Table: 4ABF1C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_10C As Variant
  Dim var_13C As Variant
  loc_10A8853: Me.DGItem.Visible = False
  loc_10A8872: If (Me.RecordCount > 0) Then
  loc_10A88AF:   Set var_B4 = Me.TxtGrid
  loc_10A88B5:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10A88BD:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_10A88E6:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A88EE:   var_EC = CVar(CLng(2)) 'Long
  loc_10A8921:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10A8929:   Set var_B8 = Me.FGrid
  loc_10A892F:   LateIdCallSt
  loc_10A895E:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A8966:   var_EC = CVar(CLng(7)) 'Long
  loc_10A8999:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10A89A7:   LateIdCallSt
  loc_10A89CD:   var_10C = Me.FGrid.Row
  loc_10A8A0E:   var_11C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")), CVar(CLng(3)), CVar(CLng(var_10C)), Me.FGrid, var_11C, CVar(CLng(3)))) 'String
  loc_10A8A1C:   LateIdCallSt
  loc_10A8A40:   var_11C = Me.FGrid.Row
  loc_10A8A70:   var_B0 = Me.Fields.Item("LPurRate")
  loc_10A8A7F:   Proc_6_39_E7C810(var_10C, CVar(var_B0), CVar(CLng(5)), CVar(CLng(var_11C)), Me.FGrid, var_11C)
  loc_10A8A88:   var_13C = CVar(CStr(var_10C)) 'String
  loc_10A8A90:   Set var_B8 = Me.FGrid
  loc_10A8A96:   LateIdCallSt
  loc_10A8AB2: End If
  loc_10A8ABE: Set var_A8 = Me.TxtGrid
  loc_10A8AC4: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_13E, var_B8, var_13C)
  loc_10A8ACC: var_A4 = var_B0.Visible
  loc_10A8ADE: If (var_13E = &HFF) Then
  loc_10A8AEA:   Set var_A8 = Me.TxtGrid
  loc_10A8AF0:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8)
  loc_10A8AF8:   var_B0.SetFocus
  loc_10A8B04: End If
  loc_10A8B04: Exit Sub
End Sub

Public Function MasterFormExitGet() '4ACC6C
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4ACC7B
  MasterFormExit = Value
End Sub

Public Sub FindMove(mDocId) 'E76A44
  'Data Table: 4ABF1C
  Dim Me As Recordset15
  loc_E769EE: Me.MoveFirst
  loc_E76A18: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E76A38: If (Me.EOF = 0) Then
  loc_E76A3B:   Call Proc_36_47_1450E28(var_9C)
  loc_E76A40: End If
  loc_E76A40: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E96CE0
  'Data Table: 4ABF1C
  Dim Me As Recordset15
  loc_E96C6E: On Error Goto loc_E96CD7
  loc_E96C77: Me.MoveFirst
  loc_E96CA1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96CC9: Proc_5_0_110649C(&HFF, Me, global_72)
  loc_E96CD1: Call Proc_36_47_1450E28(0)
  loc_E96CD6: Exit Sub
  loc_E96CD7: ' Referenced from: E96C6E
  loc_E96CD7: Proc_6_60_E62BC4(var_A0)
  loc_E96CDC: Exit Sub
End Sub

Public Sub Proc_36_44_11F8FBC
  'Data Table: 4ABF1C
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_11F8B2A: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_11F8B45: Me.FGrid.Top = CVar(CDbl(1500))
  loc_11F8B60: Me.FGrid.Height = CVar(CDbl(2800))
  loc_11F8B7B: Me.FGrid.Width = CVar(CDbl(10275))
  loc_11F8B96: Me.DGItem.Left = CVar(CDbl(6000))
  loc_11F8BB1: Me.DGItem.Top = CVar(CDbl(1000))
  loc_11F8BCC: Me.DGRoom.Left = CVar(CDbl(3000))
  loc_11F8BE7: Me.DGRoom.Top = CVar(CDbl(1000))
  loc_11F8BFD: Set var_A8 = Me.Txt
  loc_11F8C03: Call 0.Method_Proc_36_44_11F8FBC0 (CInt(3), var_AC)
  loc_11F8C22: Me.DGDepart.Left = CVar(var_AC.Left)
  loc_11F8C3E: Set var_B4 = Me.Txt
  loc_11F8C44: Call 0.Method_Proc_36_44_11F8FBC0 (CInt(3), var_B8)
  loc_11F8C5F: Set var_A8 = Me.Txt
  loc_11F8C65: Call 0.Method_Proc_36_44_11F8FBC0 (CInt(3), var_AC)
  loc_11F8C7D: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_11F8C8C: Me.DGDepart.Top = CVar(var_AC.Left)
  loc_11F8CAC: Set var_A8 = Me.Txt
  loc_11F8CB2: Call 0.Method_Proc_36_44_11F8FBC0 (CInt(0), var_AC)
  loc_11F8CD1: Me.DGVType.Left = CVar(var_AC.Left)
  loc_11F8CED: Set var_B4 = Me.Txt
  loc_11F8CF3: Call 0.Method_Proc_36_44_11F8FBC0 (CInt(0), var_B8)
  loc_11F8D0E: Set var_A8 = Me.Txt
  loc_11F8D14: Call 0.Method_Proc_36_44_11F8FBC0 (CInt(0), var_AC)
  loc_11F8D2C: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_11F8D3B: Me.DGVType.Top = CVar(var_AC.Left)
  loc_11F8D51: Set var_C4 = Me.FGrid
  loc_11F8D68: global_104 = CStr(CLng(var_C4.BackColor))
  loc_11F8D7E: var_C4.Cols = &HA
  loc_11F8D86: var_94 = CVar(CLng(0)) 'Long
  loc_11F8D8B: var_E8 = &HFA
  loc_11F8D97: LateIdCallSt
  loc_11F8D9F: var_94 = 0
  loc_11F8DAB: var_E8 = CVar(CLng(1)) 'Long
  loc_11F8DB0: var_108 = "Room No"
  loc_11F8DB9: LateIdCallSt
  loc_11F8DC4: var_94 = CVar(CLng(1)) 'Long
  loc_11F8DCF: var_E8 = CVar(CInt(1)) 'Integer
  loc_11F8DD6: LateIdCallSt
  loc_11F8DE1: var_94 = CVar(CLng(1)) 'Long
  loc_11F8DE6: var_E8 = &HDC5
  loc_11F8DF2: LateIdCallSt
  loc_11F8DFA: var_94 = 0
  loc_11F8E06: var_E8 = CVar(CLng(2)) 'Long
  loc_11F8E0B: var_108 = "Item Name"
  loc_11F8E14: LateIdCallSt
  loc_11F8E1F: var_94 = CVar(CLng(2)) 'Long
  loc_11F8E2A: var_E8 = CVar(CInt(1)) 'Integer
  loc_11F8E31: LateIdCallSt
  loc_11F8E3C: var_94 = CVar(CLng(2)) 'Long
  loc_11F8E41: var_E8 = &HE4C
  loc_11F8E4D: LateIdCallSt
  loc_11F8E55: var_94 = 0
  loc_11F8E61: var_E8 = CVar(CLng(3)) 'Long
  loc_11F8E66: var_108 = "Unit"
  loc_11F8E6F: LateIdCallSt
  loc_11F8E7A: var_94 = CVar(CLng(3)) 'Long
  loc_11F8E85: var_E8 = CVar(CInt(1)) 'Integer
  loc_11F8E8C: LateIdCallSt
  loc_11F8E97: var_94 = CVar(CLng(3)) 'Long
  loc_11F8E9C: var_E8 = &H578
  loc_11F8EA8: LateIdCallSt
  loc_11F8EB0: var_94 = 0
  loc_11F8EBC: var_E8 = CVar(CLng(4)) 'Long
  loc_11F8EC1: var_108 = "Qty"
  loc_11F8ECA: LateIdCallSt
  loc_11F8ED5: var_94 = CVar(CLng(4)) 'Long
  loc_11F8EE0: var_E8 = CVar(CInt(7)) 'Integer
  loc_11F8EE7: LateIdCallSt
  loc_11F8EF2: var_94 = CVar(CLng(4)) 'Long
  loc_11F8EFD: var_E8 = CVar(CInt(7)) 'Integer
  loc_11F8F04: LateIdCallSt
  loc_11F8F0F: var_94 = CVar(CLng(4)) 'Long
  loc_11F8F14: var_E8 = &H578
  loc_11F8F20: LateIdCallSt
  loc_11F8F2B: var_94 = CVar(CLng(5)) 'Long
  loc_11F8F30: var_E8 = 0
  loc_11F8F3C: LateIdCallSt
  loc_11F8F47: var_94 = CVar(CLng(6)) 'Long
  loc_11F8F4C: var_E8 = 0
  loc_11F8F58: LateIdCallSt
  loc_11F8F63: var_94 = CVar(CLng(7)) 'Long
  loc_11F8F68: var_E8 = 0
  loc_11F8F74: LateIdCallSt
  loc_11F8F7F: var_94 = CVar(CLng(8)) 'Long
  loc_11F8F84: var_E8 = 0
  loc_11F8F90: LateIdCallSt
  loc_11F8F9B: var_94 = CVar(CLng(9)) 'Long
  loc_11F8FA0: var_E8 = 0
  loc_11F8FAC: LateIdCallSt
  loc_11F8FB6: Set var_C4 = Nothing 
  loc_11F8FBA: Exit Sub
End Sub

Public Sub Proc_36_45_E38CB0
  'Data Table: 4ABF1C
  loc_E38C90: Set var_88 = Me.TopCtrl1
  loc_E38C96: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E38CAB: If ( = "Browse") Then
  loc_E38CAE:   Exit Sub
  loc_E38CAF: End If
  loc_E38CAF: Exit Sub
End Sub

Public Sub Proc_36_46_1394CC4(arg_C) '1394CC4
  'Data Table: 4ABF1C
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_140 As Variant
  Dim var_130 As Variant
  Dim var_BC As String
  Dim var_154 As Variant
  Dim var_144 As MSHFlexGrid
  Dim var_174 As Variant
  Dim var_178 As String
  Dim var_92 As Integer
  loc_1394408: If (arg_C = 0) Then
  loc_139441E:   var_AC = CLng(Me.FGrid.Col)
  loc_139442E:   If (var_AC = CLng(1)) Then
  loc_139447F:     Set var_98 = Me.TxtGrid
  loc_1394485:     Call 0.Method_Proc_36_46_1394CC40 (arg_C, var_B8, var_BC)
  loc_139448D:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_13944A5:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_13944BB:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13944C3:       var_EC = CVar(CLng(1)) 'Long
  loc_13944C8:       var_10C = vbNullString
  loc_13944D2:       Set var_B8 = Me.FGrid
  loc_13944D8:       LateIdCallSt
  loc_13944FD:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1394505:       var_EC = CVar(CLng(8)) 'Long
  loc_139450A:       var_10C = vbNullString
  loc_1394514:       Set var_B8 = Me.FGrid
  loc_139451A:       LateIdCallSt
  loc_139453F:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1394547:       var_EC = CVar(CLng(9)) 'Long
  loc_139454C:       var_10C = vbNullString
  loc_1394556:       Set var_B8 = Me.FGrid
  loc_139455C:       LateIdCallSt
  loc_1394571:     Else
  loc_1394584:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139458C:       var_FC = CVar(CLng(1)) 'Long
  loc_13945BF:       var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_13945C7:       Set var_144 = Me.FGrid
  loc_13945CD:       LateIdCallSt
  loc_13945FC:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1394604:       var_FC = CVar(CLng(8)) 'Long
  loc_1394637:       var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_139463F:       Set var_144 = Me.FGrid
  loc_1394645:       LateIdCallSt
  loc_1394674:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139467C:       var_FC = CVar(CLng(9)) 'Long
  loc_139469E:       var_B8 = Me.Fields.Item("RoomCat")
  loc_13946AF:       var_140 = CVar(CStr(var_B8.Value)) 'String
  loc_13946B7:       Set var_144 = Me.FGrid
  loc_13946BD:       LateIdCallSt
  loc_13946D9:     End If
  loc_13946DC:   Else
  loc_13946E3:     If (var_AC = CLng(2)) Then
  loc_1394706:       var_B2 = Me.EOF
  loc_1394734:       Set var_98 = Me.TxtGrid
  loc_139473A:       Call 0.Method_Proc_36_46_1394CC40 (arg_C, var_B8, var_BC, ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))), var_144, var_140, var_FC)
  loc_1394742:       var_DC = var_B8.Text
  loc_139475A:       If (var_144 Or (var_BC = vbNullString)) Then
  loc_1394770:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1394778:         var_EC = CVar(CLng(2)) 'Long
  loc_139477D:         var_10C = vbNullString
  loc_1394787:         Set var_B8 = Me.FGrid
  loc_139478D:         LateIdCallSt
  loc_13947B2:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13947BA:         var_EC = CVar(CLng(7)) 'Long
  loc_13947BF:         var_10C = vbNullString
  loc_13947C9:         Set var_B8 = Me.FGrid
  loc_13947CF:         LateIdCallSt
  loc_13947F4:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13947FC:         var_EC = CVar(CLng(3)) 'Long
  loc_1394801:         var_10C = vbNullString
  loc_139480B:         Set var_B8 = Me.FGrid
  loc_1394811:         LateIdCallSt
  loc_1394836:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139483E:         var_EC = CVar(CLng(5)) 'Long
  loc_1394843:         var_10C = vbNullString
  loc_139484D:         Set var_B8 = Me.FGrid
  loc_1394853:         LateIdCallSt
  loc_1394868:       Else
  loc_139486B:         Call Proc_36_55_FC0E94(var_B2, var_B8, var_10C, var_EC, var_CC, var_B8, var_10C, var_EC)
  loc_1394876:         If (var_B2 = 0) Then
  loc_139487E:           Proc_36_46_1394CC4 = 0
  loc_1394884:         End If
  loc_139489D:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13948A5:         var_EC = CVar(CLng(7)) 'Long
  loc_13948BF:         var_BC = CStr(Me.FGrid.TextMatrix))
  loc_13948DD:         var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13948E5:         var_154 = CVar(CLng(7)) 'Long
  loc_13948FF:         var_178 = CStr(Me.FGrid.TextMatrix))
  loc_139496A:         If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(7)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1394981:           var_92 = CInt(CLng(Me.FGrid.Row))
  loc_139499D:           var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13949A5:           var_FC = CVar(CLng(2)) 'Long
  loc_13949D8:           var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_13949E0:           Set var_144 = Me.FGrid
  loc_13949E6:           LateIdCallSt
  loc_1394A15:           var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1394A1D:           var_FC = CVar(CLng(7)) 'Long
  loc_1394A50:           var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1394A58:           Set var_144 = Me.FGrid
  loc_1394A5E:           LateIdCallSt
  loc_1394A8D:           var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1394A95:           var_FC = CVar(CLng(3)) 'Long
  loc_1394ABF:           var_130 = Me.Fields.Item("Unit").Value
  loc_1394AC8:           var_140 = CVar(CStr(var_130)) 'String
  loc_1394AD0:           Set var_144 = Me.FGrid
  loc_1394AD6:           LateIdCallSt
  loc_1394AF6:           var_CC = CVar(CLng(var_92)) 'Long
  loc_1394B08:           var_A8 = CVar(CStr(var_92)) 'String
  loc_1394B10:           Set var_98 = Me.FGrid
  loc_1394B16:           LateIdCallSt
  loc_1394B2E:           var_140 = Me.FGrid.Row
  loc_1394B37:           var_DC = CVar(CLng(var_140)) 'Long
  loc_1394B3F:           var_FC = CVar(CLng(5)) 'Long
  loc_1394B47:           var_CC = "LPurRate"
  loc_1394B56:           var_98 = Me.Fields
  loc_1394B5E:           var_B8 = var_98.Item(var_CC)
  loc_1394B6D:           Proc_6_39_E7C810(var_130, CVar(var_B8), var_FC, var_DC, var_98, CVar(var_B8), CVar(CLng(0)))
  loc_1394B76:           var_174 = CVar(CStr(var_130)) 'String
  loc_1394B7E:           Set var_144 = Me.FGrid
  loc_1394B84:           LateIdCallSt
  loc_1394BA0:         End If
  loc_1394BA0:       End If
  loc_1394BA0:       Call Proc_36_56_F70164(var_144, var_174, var_CC, var_144, var_140)
  loc_1394BA8:     Else
  loc_1394BAF:       If (var_AC = CLng(4)) Then
  loc_1394BBC:         Set var_98 = Me.TxtGrid
  loc_1394BC2:         Call 0.Method_Proc_36_46_1394CC40 (arg_C, var_B8, var_FC)
  loc_1394BDA:         If Not(IsNumeric(CVar(var_B8))) Then
  loc_1394BE1:           var_BC = CStr(0)
  loc_1394BEE:           Set var_98 = Me.TxtGrid
  loc_1394BF4:           Call 0.Method_Proc_36_46_1394CC40 (arg_C, var_B8, var_BC)
  loc_1394BFC:           var_B8.Text = var_DC
  loc_1394C0B:         End If
  loc_1394C18:         Set var_98 = Me.TxtGrid
  loc_1394C1E:         Call 0.Method_Proc_36_46_1394CC40 (arg_C, var_B8, var_BC)
  loc_1394C26:         var_144 = var_B8.Text
  loc_1394C3E:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1394C56:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1394C90:         LateIdCallSt
  loc_1394CB4:         Call Proc_36_56_F70164(Me.FGrid, CVar(CStr(Format(CVar(var_BC), "0.000"))), 1, 1)
  loc_1394CB9:       End If
  loc_1394CB9:     End If
  loc_1394CB9:   End If
  loc_1394CB9: End If
  loc_1394CBE: Proc_36_46_1394CC4 = &HFF
End Sub

Public Sub Proc_36_47_1450E28
  'Data Table: 4ABF1C
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_100 As String
  Dim unk_4ABF3A As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Variant
  Dim var_124 As Variant
  Dim var_138 As Field20
  Dim var_144 As TextBox
  Dim var_BC As Variant
  Dim var_8E As Integer
  Dim var_88 As Recordset15
  Dim var_110 As Variant
  Dim var_15C As Variant
  Dim var_120 As Variant
  loc_14502E0: On Error Goto loc_1450E20
  loc_14502FA: If (Me.RecordCount > 0) Then
  loc_1450353:   unk_4ABF3A.Execute CStr("Select S.* From STOCK S Where S.Docid='" & Me.Fields.Item("DocID").Value & "'"), var_120, -1
  loc_145037B:   Set var_128 = var_124 
  loc_14503B8:   Set var_124 = Me.Txt
  loc_14503BE:   Call 0.Method_Proc_36_47_1450E280 (CInt(4), var_12C)
  loc_14503C6:   var_12C.Text = CStr(var_128.Fields.Item("DocID").Value)
  loc_14503F6:   var_AC = var_128.Fields.Item("vType")
  loc_14503FE:   var_BC = var_AC.Value
  loc_1450407:   var_100 = CStr(var_BC)
  loc_1450415:   Set var_124 = Me.Txt
  loc_145041B:   Call 0.Method_Proc_36_47_1450E280 (CInt(0), var_12C)
  loc_1450423:   var_12C.Tag = var_100
  loc_1450466:   Set var_98 = Me.Txt
  loc_145046C:   Call 0.Method_Proc_36_47_1450E280 (CInt(0), var_AC, var_100, "Select NCAT From Voucher_Type Where V_Type='", var_BC, -1)
  loc_1450474:   var_124 = var_AC.Tag
  loc_145048D:   unk_4ABF3A.Execute var_12C & var_100 & "'", 0, var_138
  loc_145049D:    = var_12C.Item(var_124)
  loc_14504A5:    = var_138.Value
  loc_14504B4:   global_124 = CStr(var_124.Fields)
  loc_1450504:   Set var_98 = Me.Txt
  loc_145050A:   Call 0.Method_Proc_36_47_1450E280 (CInt(0), var_AC, var_100, "Select Description From Voucher_type Where V_Type='", var_BC, -1)
  loc_145052B:   unk_4ABF3A.Execute var_12C & var_100 & "'", 0, var_138
  loc_145053B:    = var_12C.Item()
  loc_1450543:    = var_138.Value
  loc_145055A:   Set var_140 = Me.Txt
  loc_1450560:   Call 0.Method_Proc_36_47_1450E280 (CInt(0), var_144)
  loc_1450568:   var_144.Text = CStr(var_AC.Tag.Fields)
  loc_14505C9:   Set var_124 = Me.Txt
  loc_14505CF:   Call 0.Method_Proc_36_47_1450E280 (CInt(1), var_12C)
  loc_14505D7:   var_12C.Text = CStr(var_128.Fields.Item("VNo").Value)
  loc_145063F:   Set var_124 = Me.Txt
  loc_1450645:   Call 0.Method_Proc_36_47_1450E280 (CInt(2), var_12C, CStr(Format(CVar(var_128.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_145064D:   var_12C.Text = 1
  loc_145069F:   Me.LblVPrefix.Caption = CStr(var_128.Fields.Item("vPrefix").Value)
  loc_14506DB:   var_100 = Proc_6_38_E68A98(CVar(var_128.Fields.Item("RestCode")))
  loc_14506E9:   Set var_124 = Me.Txt
  loc_14506EF:   Call 0.Method_Proc_36_47_1450E280 (CInt(3), var_12C)
  loc_14506F7:   var_12C.Tag = var_100
  loc_1450725:   var_AC = var_128.Fields.Item("RestCode")
  loc_145072D:   var_BC = var_AC.Value
  loc_1450747:   If CBool(var_BC <> vbNullString) Then
  loc_1450777:     Set var_98 = Me.Txt
  loc_145077D:     Call 0.Method_Proc_36_47_1450E280 (CInt(3), var_AC, var_100, "Select Name From Depart Where Code='", var_BC, -1)
  loc_1450785:     var_124 = var_AC.Tag
  loc_145079E:     unk_4ABF3A.Execute var_12C & var_100 & "' and (code is not null or code <> '')", 0, var_138
  loc_14507AE:      = var_12C.Item(1)
  loc_14507B6:      = var_138.Value
  loc_14507CD:     Set var_140 = Me.Txt
  loc_14507D3:     Call 0.Method_Proc_36_47_1450E280 (CInt(3), var_144)
  loc_14507DB:     var_144.Text = CStr(var_124.Fields)
  loc_1450803:   End If
  loc_1450805:   Set var_128 = Nothing 
  loc_1450818:   Me.FGrid.Redraw = False
  loc_1450833:   Me.FGrid.Rows = 1
  loc_145083D:   var_8E = 1
  loc_145084D:   var_CC = "Select S1.*,I.name as ItemName,R.NAME AS ROOM From (STOCK S1 Left Join ItemMast I On S1.Item=I.Code And I.ItemType='Store') Left Join ROOMMAST R On S1.ROOMNO=R.Code Where S1.DocId='"
  loc_1450896:   unk_4ABF3A.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_14508A1:   Set var_88 = var_124
  loc_14508CF:   If (var_88.RecordCount > 0) Then
  loc_14508D2:     ' Referenced from: 1450D57
  loc_14508E1:     If Not(var_88.EOF) Then
  loc_14508E4:       var_A8 = vbNullString
  loc_14508EE:       Set var_98 = Me.FGrid
  loc_1450903:       Set var_14C = Me.FGrid
  loc_145090A:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1450912:       var_110 = CVar(CLng(0)) 'Long
  loc_1450942:       var_DC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1450949:       LateIdCallSt
  loc_1450963:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_145096B:       var_110 = CVar(CLng(8)) 'Long
  loc_145099B:       var_DC = CVar(CStr(var_88.Fields.Item("RoomNo").Value)) 'String
  loc_14509A2:       LateIdCallSt
  loc_14509BC:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_14509C4:       var_110 = CVar(CLng(1)) 'Long
  loc_14509F4:       var_DC = CVar(CStr(var_88.Fields.Item("Room").Value)) 'String
  loc_14509FB:       LateIdCallSt
  loc_1450A15:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1450A1D:       var_110 = CVar(CLng(9)) 'Long
  loc_1450A4D:       var_DC = CVar(CStr(var_88.Fields.Item("RoomCat").Value)) 'String
  loc_1450A54:       LateIdCallSt
  loc_1450A6E:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1450A76:       var_110 = CVar(CLng(7)) 'Long
  loc_1450AA6:       var_DC = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_1450AAD:       LateIdCallSt
  loc_1450AFC:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(2)), CVar(CLng(var_8E)), var_14C, var_DC, CVar(CLng(2)), CVar(CLng(var_8E)))) 'String
  loc_1450B03:       LateIdCallSt
  loc_1450B20:       If (global_124 = "HKISS") Then
  loc_1450B43:         var_EC = CVar(CLng(var_8E)) 'Long
  loc_1450B4B:         var_15C = CVar(CLng(4)) 'Long
  loc_1450B78:         var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"))) 'String
  loc_1450B7F:         LateIdCallSt
  loc_1450B98:       Else
  loc_1450BB8:         var_EC = CVar(CLng(var_8E)) 'Long
  loc_1450BC0:         var_15C = CVar(CLng(4)) 'Long
  loc_1450BED:         var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyRec")), "0.000"))) 'String
  loc_1450BF4:         LateIdCallSt
  loc_1450C0A:       End If
  loc_1450C43:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(3)), CVar(CLng(var_8E)), var_14C, var_120, 1, 1)) 'String
  loc_1450C4A:       LateIdCallSt
  loc_1450C7C:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_1450C84:       var_15C = CVar(CLng(5)) 'Long
  loc_1450CB1:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_1450CB8:       LateIdCallSt
  loc_1450CEE:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_1450CF6:       var_15C = CVar(CLng(6)) 'Long
  loc_1450D23:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_1450D2A:       LateIdCallSt
  loc_1450D42:       Set var_14C = Nothing 
  loc_1450D4C:       var_8E = (var_8E + 1)
  loc_1450D52:       var_88.MoveNext
  loc_1450D57:       GoTo loc_14508D2
  loc_1450D5A:     End If
  loc_1450D6D:     Me.FGrid.FixedRows = 1
  loc_1450D75:   End If
  loc_1450D83:   Me.FGrid.Redraw = True
  loc_1450D91:   If (var_8E = 1) Then
  loc_1450DA7:     Me.FGrid.Rows = 1
  loc_1450DCD:     var_BC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_8E, var_14C, var_120, 1, 1, var_15C))) 'String
  loc_1450DD5:     Set var_AC = Me.FGrid
  loc_1450E02:     Me.FGrid.FixedRows = 1
  loc_1450E0A:   End If
  loc_1450E0D: Else
  loc_1450E0D:   Call Proc_36_49_F30054(FGrid.DispID_10000, var_BC, var_EC, var_14C, var_120)
  loc_1450E12: End If
  loc_1450E12: Call Proc_36_51_EF7188(1, 1)
  loc_1450E1C: Set var_88 = Nothing
  loc_1450E1F: Exit Sub
  loc_1450E20: ' Referenced from: 14502E0
  loc_1450E20: Proc_6_60_E62BC4(var_15C)
  loc_1450E25: Exit Sub
End Sub

Public Sub Proc_36_48_1087B74
  'Data Table: 4ABF1C
  Dim var_AC As Variant
  Dim var_D0 As TextBox
  Dim unk_4ABF3A As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_108 As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_D4 As String
  loc_10878F1: Set var_9C = Me.TopCtrl1
  loc_10878F7: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E(&HFF)
  loc_108790C: If ( = "Add") Then
  loc_108793C:   Set var_9C = Me.Txt
  loc_1087942:   Call 0.Method_Proc_36_48_1087B740 (CInt(4), var_D0, var_D4, "Select Count(*) From STOCK Where DocID='", var_BC, -1)
  loc_1087963:   unk_4ABF3A.Execute var_E4 & var_D4 & "'", 0, var_F8
  loc_1087973:    = var_E4.Item()
  loc_108797B:    = var_F8.Value
  loc_10879A8:   If (var_D0.Text.Fields > 0) Then
  loc_10879B1:     Call 0.Method_arg_50 (var_D4)
  loc_10879D2:     MsgBox("Duplicate Bill No.", &H40, CVar(var_D4), var_118, var_128)
  loc_10879E8:     Call Proc_36_53_1109998(MemVar_1F92044)
  loc_10879FB:     Set var_9C = Me.Txt
  loc_1087A01:     Call 0.Method_Proc_36_48_1087B740 (CInt(4), var_D0)
  loc_1087A09:     var_D0.Text = var_D4
  loc_1087A1D:     Proc_36_48_1087B74 = 0
  loc_1087A23:   End If
  loc_1087A23: End If
  loc_1087A48: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_1087A52:   var_AC = CVar(CLng(var_88)) 'Long
  loc_1087A5A:   var_108 = CVar(CLng(7)) 'Long
  loc_1087A7A:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1087A96:   If CBool(var_118 <> vbNullString) Then
  loc_1087A9D:     var_AC = CVar(CLng(var_88)) 'Long
  loc_1087AA5:     var_108 = CVar(CLng(4)) 'Long
  loc_1087AD5:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1087AFD:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1087B23:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1087B2F:       Set var_9C = Me.FGrid
  loc_1087B53:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1087B60:       Proc_36_48_1087B74 = 0
  loc_1087B66:     End If
  loc_1087B66:   End If
  loc_1087B69: Next var_12C 'Integer
  loc_1087B6E: Proc_36_48_1087B74 = 
End Sub

Public Sub Proc_36_49_F30054
  'Data Table: 4ABF1C
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  loc_F2FF4D: Me.LblVPrefix.Caption = vbNullString
  loc_F2FF63: Set var_8C = Me.Txt
  loc_F2FF69: Call 0.Method_Proc_36_49_F30054C (var_8E, var_86)
  loc_F2FF79: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F2FF8F:   Set var_8C = Me.Txt
  loc_F2FF95:   Call 0.Method_Proc_36_49_F300540 (CInt(var_86), var_98)
  loc_F2FF9D:   var_98.Text = vbNullString
  loc_F2FFB9:   Set var_8C = Me.Txt
  loc_F2FFBF:   Call 0.Method_Proc_36_49_F300540 (CInt(var_86), var_98)
  loc_F2FFC7:   var_98.Tag = vbNullString
  loc_F2FFD6: Next var_92 'Byte
  loc_F2FFEF: Me.FGrid.Rows = 1
  loc_F30015: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_F3001D: Set var_98 = Me.FGrid
  loc_F3004A: Me.FGrid.FixedRows = 1
  loc_F30052: Exit Sub
End Sub

Public Sub Proc_36_50_E9E458(arg_C) 'E9E458
  'Data Table: 4ABF1C
  Dim var_98 As TextBox
  loc_E9E3DE: Set var_8C = Me.Txt
  loc_E9E3E4: Call 0.Method_Proc_36_50_E9E458C (var_8E, var_86)
  loc_E9E3F4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9E40A:   Set var_8C = Me.Txt
  loc_E9E410:   Call 0.Method_Proc_36_50_E9E4580 (CInt(var_86), var_98)
  loc_E9E418:   var_98.Enabled = arg_C
  loc_E9E427: Next var_92 'Byte
  loc_E9E43A: Set var_8C = Me.Txt
  loc_E9E440: Call 0.Method_Proc_36_50_E9E4580 (CInt(4), var_98)
  loc_E9E448: var_98.Enabled = False
  loc_E9E454: Exit Sub
End Sub

Public Sub Proc_36_51_EF7188
  'Data Table: 4ABF1C
  loc_EF70C8: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EF70DA:   Me.DGVType.Visible = False
  loc_EF70E2: End If
  loc_EF70FE: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_EF7110:   Me.DGRoom.Visible = False
  loc_EF7118: End If
  loc_EF7134: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF7146:   Me.DGItem.Visible = False
  loc_EF714E: End If
  loc_EF716A: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EF717C:   Me.DGDepart.Visible = False
  loc_EF7184: End If
  loc_EF7184: Exit Sub
End Sub

Public Sub Proc_36_52_F0B07C
  'Data Table: 4ABF1C
  loc_F0AFA0: Call Proc_36_51_EF7188()
  loc_F0AFB0: Set var_88 = Me.Txt
  loc_F0AFB6: Call 0.Method_Proc_36_52_F0B07C0 (CInt(2))
  loc_F0AFDF: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F0AFE2:   Exit Sub
  loc_F0AFE3: End If
  loc_F0AFEE: Set var_88 = Me.Txt
  loc_F0AFF4: Call 0.Method_Proc_36_52_F0B07C0 (CInt(1), var_8C)
  loc_F0B01D: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F0B020:   Exit Sub
  loc_F0B021: End If
  loc_F0B058: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0B05B:   Call TopCtrl1_UnknownEvent_19()
  loc_F0B063: Else
  loc_F0B069:   Call 0.Method_arg_1E8 (var_88)
  loc_F0B071:   Call var_88.SetFocus
  loc_F0B07A: End If
  loc_F0B07A: Exit Sub
End Sub

Public Sub Proc_36_53_1109998
  'Data Table: 4ABF1C
  Dim var_98 As Variant
  Dim var_9C As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_11096A4: Set var_94 = Me.Txt
  loc_11096AA: Call 0.Method_Proc_36_53_11099980 (CInt(0), var_98)
  loc_11096BA: var_90 = var_98.Tag
  loc_11096D8: var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1109709: Set var_94 = Me.Txt
  loc_110970F: Call 0.Method_Proc_36_53_11099980 (CInt(2), var_98, CVar(var_9C & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_110971E: Proc_6_7_F25D88(var_CC, CVar(var_98), var_130)
  loc_1109726: var_EC = -1 & var_CC 
  loc_110973A: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_1109745: Set var_8C = var_134
  loc_1109781: If (var_8C.RecordCount > 0) Then
  loc_11097C0:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_11097F4:     global_116 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_110981F:     var_98 = var_8C.Fields.Item("start_srl_no")
  loc_1109834:     var_CC = (var_98.Value + 1)
  loc_110983C:     global_120 = CInt(var_CC)
  loc_110984D:   End If
  loc_110984D: End If
  loc_1109878: var_BC = Space((5 - Len(var_90)))
  loc_1109880: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_98.Value)
  loc_1109894: var_EC = Space((5 - Len(global_116)))
  loc_110989C: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_11098A9: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_116))
  loc_11098C2: var_14C = Space((8 - Len(CStr(global_120))))
  loc_11098CA: var_15C = (var_130 + var_14C)
  loc_11098D9: var_17C = (var_15C + CVar(CStr(global_120)))
  loc_11098E4: global_108 = CStr(var_17C)
  loc_110991A: Me.LblVPrefix.Caption = global_116
  loc_1109933: Set var_94 = Me.Txt
  loc_1109939: Call 0.Method_Proc_36_53_11099980 (CInt(4), var_98)
  loc_1109941: var_98.Text = global_108
  loc_1109963: Set var_94 = Me.Txt
  loc_1109969: Call 0.Method_Proc_36_53_11099980 (CInt(1), var_98)
  loc_1109971: var_98.Text = CStr(global_120)
  loc_1109986: var_88 = global_108
  loc_110998E: Set var_8C = Nothing
  loc_1109991: Proc_36_53_1109998 = global_120
End Sub

Public Sub Proc_36_54_10FAD7C(arg_C, arg_10, arg_14) '10FAD7C
  'Data Table: 4ABF1C
  Dim var_A0 As String
  Dim unk_4ABF3A As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10FAA8B: var_98 = arg_C
  loc_10FAA96: If (var_98 = "HKISS") Then
  loc_10FAABD:   unk_4ABF3A.Execute "Select Distinct DocId,VType,VNo From STOCK Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10FAAC8:   Set var_8C = var_C4
  loc_10FAADB:   var_94 = "Issue Entry"
  loc_10FAAE1: Else
  loc_10FAAE9:   If (var_98 = "HKREC") Then
  loc_10FAB10:     unk_4ABF3A.Execute "Select Distinct DocId,VType,VNo From STOCK Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10FAB1B:     Set var_8C = var_C4
  loc_10FAB2E:     var_94 = "Receive Entry"
  loc_10FAB34:   Else
  loc_10FAB39:     Proc_36_54_10FAD7C = &HFF
  loc_10FAB3F:   End If
  loc_10FAB3F: End If
  loc_10FAB53: If (var_8C.RecordCount > 0) Then
  loc_10FAB56:   ' Referenced from: 10FACCF
  loc_10FAB65:   If Not(var_8C.EOF) Then
  loc_10FAB70:     If (var_90 = vbNullString) Then
  loc_10FAB85:       var_C4 = var_8C.Fields
  loc_10FABAF:       var_A0 = Proc_6_45_EAD428(CStr(var_C4.Item("V_Type").Value), 6, "V.Type :-> ")
  loc_10FABBA:       var_10C = CVar(var_C4 & "Select Distinct DocId,VType,VNo From STOCK Where DocID='" & arg_10 & "'" & " V.No :-> ") 'String
  loc_10FABEC:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10FAC11:     Else
  loc_10FAC4D:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10FAC6D:       var_10C = CVar(var_120 & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10FAC9A:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10FAC9F:       var_90 = CStr(var_11C)
  loc_10FACC7:     End If
  loc_10FACCA:     var_8C.MoveNext
  loc_10FACCF:     GoTo loc_10FAB56
  loc_10FACD2:   End If
  loc_10FACD8:   Call 0.Method_arg_50 (var_138)
  loc_10FAD34:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This ," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10FAD37:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10FAD66:   Set var_8C = Nothing
  loc_10FAD69:   Proc_36_54_10FAD7C = 0
  loc_10FAD6F: End If
  loc_10FAD74: Proc_36_54_10FAD7C = &HFF
End Sub

Public Sub Proc_36_55_FC0E94
  'Data Table: 4ABF1C
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC0D17: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FC0D1C:   var_92 = 2 'Byte
  loc_FC0D20: End If
  loc_FC0D29: Set var_98 = Me.TxtGrid
  loc_FC0D2F: Call 0.Method_Proc_36_55_FC0E940 (0, var_B0)
  loc_FC0D52: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC0D86: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC0DAA:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC0DAD:     GoTo loc_FC0E7F
  loc_FC0DB0:   End If
  loc_FC0DB4:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC0DDE:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC0DE8:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC0E1D:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC0E41:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC0E5A:     Set var_98 = Me.TxtGrid
  loc_FC0E60:     Call 0.Method_Proc_36_55_FC0E940 (0, var_B0, CVar(CLng(var_92)))
  loc_FC0E68:     var_B0.SetFocus
  loc_FC0E79:     Proc_36_55_FC0E94 = 0
  loc_FC0E7F:     ' Referenced from: FC0DAD
  loc_FC0E7F:   End If
  loc_FC0E82: Next var_D4 'Integer
  loc_FC0E8C: Proc_36_55_FC0E94 = &HFF
End Sub

Public Sub Proc_36_56_F70164
  'Data Table: 4ABF1C
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  loc_F70067: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F7006F: var_C8 = CVar(CLng(5)) 'Long
  loc_F700A7: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F700AF: var_134 = CVar(CLng(4)) 'Long
  loc_F700E7: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F700EF: var_1F0 = CVar(CLng(6)) 'Long
  loc_F70120: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_F70128: Set var_224 = Me.FGrid
  loc_F7012E: LateIdCallSt
  loc_F70161: Exit Sub
End Sub
