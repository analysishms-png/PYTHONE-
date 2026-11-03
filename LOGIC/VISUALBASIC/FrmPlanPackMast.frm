VERSION 5.00
Begin VB.Form FrmPlanPackMast
  Caption = "Plan Defination Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = False
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 7470
  ClientHeight = 5925
  LockControls = -1  'True
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MainCtrl topCtrl1
    Left = 0
    Top = 0
    Width = 7470
    Height = 450
    TabIndex = 14
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &H8000000E&
    ForeColor = &HFF0000&
    Left = 2985
    Top = 1140
    Width = 870
    Height = 240
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 25
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
    Caption = "Percentage Basis"
    ForeColor = &H80000008&
    Left = 4455
    Top = 885
    Width = 2070
    Height = 270
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
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
    BackColor = &H8000000E&
    ForeColor = &HFF0000&
    Left = 2985
    Top = 885
    Width = 1425
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin MSFlexGrid FGPoint
    Left = 9240
    Top = 2055
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 9
  End
  Begin DataGrid DGHelp
    Left = 7605
    Top = 3390
    Width = 3495
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGRev
    Left = 7770
    Top = 2670
    Width = 3855
    Height = 3375
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 3885
    Top = 5580
    Width = 2010
    Height = 240
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 25
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &H80000012&
    Left = 2130
    Top = 3030
    Width = 915
    Height = 240
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Index = 0
    BackColor = &H8000000E&
    ForeColor = &HFF0000&
    Left = 2985
    Top = 630
    Width = 3500
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin MSHFlexGrid FGrid
    Left = 1530
    Top = 1500
    Width = 5295
    Height = 3765
    TabIndex = 2
  End
  Begin Label Label1
    Caption = "Room Percent"
    Index = 3
    ForeColor = &HC00000&
    Left = 1335
    Top = 1155
    Width = 1350
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
  Begin Label Label1
    Caption = "Applicable Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 1335
    Top = 900
    Width = 1515
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
  Begin Label Label1
    Caption = "Total"
    Index = 0
    ForeColor = &HC00000&
    Left = 3240
    Top = 5580
    Width = 480
    Height = 240
    Visible = 0   'False
    TabIndex = 6
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
    Caption = "Plan Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 1335
    Top = 645
    Width = 1050
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

Attribute VB_Name = "FrmPlanPackMast"

Private MasterFormExit As Integer
Private global_76 As Integer
Private global_78 As Integer

Private Sub TopCtrl1_UnknownEvent_A 'E7EC5C
  'Data Table: 48DC98
  Dim var_94 As TextBox
  loc_E7EBF8: On Error Goto loc_E7EC54
  loc_E7EC1E: Call Proc_21_47_EB5F9C(Proc_5_1_100CB50("ADD", Me))
  loc_E7EC29: Call Proc_21_46_F2AD78(global_64)
  loc_E7EC39: Set var_8C = Me.Txt
  loc_E7EC3F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_E7EC47: var_94.SetFocus
  loc_E7EC53: Exit Sub
  loc_E7EC54: ' Referenced from: E7EBF8
  loc_E7EC54: Proc_6_60_E62BC4(var_94)
  loc_E7EC59: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC124C
  'Data Table: 48DC98
  loc_EC11B4: On Error Goto loc_EC1244
  loc_EC11EE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC11F1:   Call Proc_21_45_EBD9AC()
  loc_EC1202:   Set var_10C = Me
  loc_EC1219:   Call Proc_21_47_EB5F9C(Proc_5_1_100CB50("INI", var_10C))
  loc_EC1224:   Call Proc_21_50_145493C(global_64)
  loc_EC122C: Else
  loc_EC1232:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC123A:   Call var_10C.SetFocus
  loc_EC1243: End If
  loc_EC1243: Exit Sub
  loc_EC1244: ' Referenced from: EC11B4
  loc_EC1244: Proc_6_60_E62BC4()
  loc_EC1249: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11C6FF4
  'Data Table: 48DC98
  Dim var_98 As Integer
  Dim unk_48DCA7 As Connection15
  Dim Me As Recordset15
  Dim var_128 As Fields15
  Dim var_100 As Variant
  Dim var_130 As String
  loc_11C6BC8: On Error Goto loc_11C6F9D
  loc_11C6BD9: If (Proc_183_56_FE8818(global_64) = &HFF) Then
  loc_11C6BDC:   Exit Sub
  loc_11C6BDD: End If
  loc_11C6C14: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_100, var_120) = 6) Then
  loc_11C6C19:   var_98 = &HFF
  loc_11C6C25:   unk_48DCA7.BeginTrans var_124
  loc_11C6C3B:   var_94 = Me.Bookmark 'Variant
  loc_11C6C95:   unk_48DCA7.Execute CStr("Delete From PlanMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_11C6CE0:   var_16C = 0
  loc_11C6CF3:   var_164 = 0
  loc_11C6CFE:   var_160 = 0
  loc_11C6D11:   var_158 = 0
  loc_11C6D1C:   var_154 = 0
  loc_11C6D2F:   var_14C = 0
  loc_11C6D78:   Proc_154_5_10E33A4(MemVar_1F92044, "PlanMast", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11C6DE8:   var_100 = "Delete from Plan1 where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_11C6DF6:   unk_48DCA7.Execute CStr(var_100), var_120, -1
  loc_11C6E41:   var_16C = 0
  loc_11C6E54:   var_164 = 0
  loc_11C6E5F:   var_160 = 0
  loc_11C6E72:   var_158 = 0
  loc_11C6E7D:   var_154 = 0
  loc_11C6E90:   var_14C = 0
  loc_11C6ED0:   var_130 = "PlanMast"
  loc_11C6ED9:   Proc_154_5_10E33A4(MemVar_1F92044, var_130, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11C6F07:   unk_48DCA7.CommitTrans
  loc_11C6F0E:   var_98 = 0
  loc_11C6F1C:   Me.Requery -1
  loc_11C6F3C:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11C6F49:     Me.Bookmark = var_94
  loc_11C6F51:   Else
  loc_11C6F65:     If (Me.EOF = 0) Then
  loc_11C6F6E:       Me.MoveLast
  loc_11C6F73:     End If
  loc_11C6F73:   End If
  loc_11C6F73:   Call Proc_21_50_145493C(var_98, var_14C, 0, var_154, var_158)
  loc_11C6F94:   Proc_5_0_110649C(&HFF, Me, global_64, 0)
  loc_11C6F9C: End If
  loc_11C6F9C: Exit Sub
  loc_11C6F9D: ' Referenced from: 11C6BC8
  loc_11C6FA3: If (var_98 = &HFF) Then
  loc_11C6FAC:   unk_48DCA7.RollbackTrans
  loc_11C6FB1: End If
  loc_11C6FB9: Set var_128 = Err()
  loc_11C6FBF: Call 0.Method_arg_2C (var_130, 0, var_160)
  loc_11C6FE0: MsgBox(CVar(var_130), &H10, " Deletion Message", var_100, var_120)
  loc_11C6FF3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F765F4
  'Data Table: 48DC98
  Dim var_94 As TextBox
  loc_F764B0: On Error Goto loc_F765EE
  loc_F764C1: If (Proc_183_55_FE7900(global_64) = &HFF) Then
  loc_F764C4:   Exit Sub
  loc_F764C5: End If
  loc_F764E8: Call Proc_21_47_EB5F9C(Proc_5_1_100CB50("EDIT", Me))
  loc_F76501: Set var_8C = Me.Txt
  loc_F76507: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F7651A: global_68 = var_94.Text
  loc_F76536: Set var_8C = Me.Txt
  loc_F7653C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F7654F: global_72 = var_94.Text
  loc_F76575: Call Proc_21_52_F2923C(Me.FGrid, 0)
  loc_F76587: Set var_94 = Me.FGrid
  loc_F765AE: Set var_8C = Me.Txt
  loc_F765B4: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94, 0, FGrid.DispID_10000)
  loc_F765BC: var_94.Enabled = CVar(CStr(var_96))
  loc_F765D3: Set var_8C = Me.Txt
  loc_F765D9: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F765E1: var_94.SetFocus
  loc_F765ED: Exit Sub
  loc_F765EE: ' Referenced from: F764B0
  loc_F765EE: Proc_6_60_E62BC4(var_96)
  loc_F765F3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15E84
  'Data Table: 48DC98
  loc_E15E79: Me.Global.Unload Me
  loc_E15E81: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC6D64
  'Data Table: 48DC98
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F920E4 As String
  loc_EC6CC4: On Error Goto loc_EC6D5C
  loc_EC6CDE: If (Me.RecordCount <= 0) Then
  loc_EC6CE7:   var_B8 = "Information"
  loc_EC6D02:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC6D12:   Exit Sub
  loc_EC6D13: End If
  loc_EC6D21: MemVar_1F920E4 = "Select Code As SearchCode,Name ,Total from PlanMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By Name"
  loc_EC6D31: Proc_6_126_F1BCC0("3000,2000")
  loc_EC6D3F: MemVar_1F92120 = Me
  loc_EC6D56: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC6D5B: Exit Sub
  loc_EC6D5C: ' Referenced from: EC6CC4
  loc_EC6D5C: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC6D61: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2E578
  'Data Table: 48DC98
  Dim arg_20FF As Double
  loc_E2E568: Proc_5_0_110649C(&HFF, Me)
  loc_E2E570: Call Proc_21_50_145493C(global_64)
  loc_E2E575: Exit Sub
  loc_E2E576: arg_20FF = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2E518
  'Data Table: 48DC98
  loc_E2E508: Proc_5_0_110649C(&HFF, Me)
  loc_E2E510: Call Proc_21_50_145493C(global_64)
  loc_E2E515: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2E4B8
  'Data Table: 48DC98
  loc_E2E4A8: Proc_5_0_110649C(&HFF, Me)
  loc_E2E4B0: Call Proc_21_50_145493C(global_64)
  loc_E2E4B5: Exit Sub
  loc_E2E4B6: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2E458
  'Data Table: 48DC98
  loc_E2E448: Proc_5_0_110649C(&HFF, Me)
  loc_E2E450: Call Proc_21_50_145493C(global_64)
  loc_E2E455: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E22A4C
  'Data Table: 48DC98
  Dim Me As Recordset15
  loc_E22A33: Me.Requery -1
  loc_E22A43: Me.Requery -1
  loc_E22A48: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '154C874
  'Data Table: 48DC98
  Dim var_98 As Variant
  Dim var_F8 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_108 As Variant
  Dim var_8A As Integer
  Dim unk_48DCA7 As Connection15
  Dim var_A4 As String
  Dim var_134 As String
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_E8 As Variant
  Dim var_140 As Variant
  Dim var_1B8 As Variant
  Dim var_1D8 As Variant
  Dim var_118 As Variant
  Dim var_240 As Variant
  Dim var_15C As String
  Dim var_16C As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_2A0 As Variant
  Dim var_2B0 As Variant
  Dim var_2C0 As Variant
  Dim Me As Recordset15
  Dim var_170 As Variant
  Dim var_30C As Variant
  Dim var_144 As String
  Dim var_194 As Variant
  Dim var_2E4 As Variant
  Dim var_2F8 As Variant
  Dim var_C8 As Variant
  Dim var_35C As Variant
  Dim var_394 As Variant
  Dim var_3B8 As Variant
  Dim var_3D8 As Variant
  Dim var_404 As Variant
  Dim var_424 As Variant
  Dim var_174 As MSHFlexGrid
  Dim var_450 As Variant
  Dim var_470 As Variant
  Dim var_49C As Variant
  Dim var_4BC As Variant
  Dim var_22C As MSHFlexGrid
  Dim var_4EC As Variant
  Dim var_50C As Variant
  Dim var_230 As MSHFlexGrid
  Dim var_53C As Variant
  Dim var_55C As Variant
  Dim var_2E8 As MSHFlexGrid
  Dim var_828 As Double
  Dim var_830 As Double
  Dim var_370 As MSHFlexGrid
  Dim var_1F8 As Variant
  Dim var_838 As Double
  Dim var_840 As Double
  Dim var_848 As Double
  Dim var_48C As String
  Dim var_57C As String
  Dim var_680 As String
  Dim var_250 As Variant
  Dim var_36C As Variant
  Dim var_7A8 As Variant
  loc_154B9C4: On Error Goto loc_154C856
  loc_154B9D2: Set var_98 = Me.Txt
  loc_154B9D8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_154BA01: If (Proc_6_27_EA565C(var_9C, "Plan Name") = 0) Then
  loc_154BA04:   Exit Sub
  loc_154BA05: End If
  loc_154BA10: Set var_98 = Me.Txt
  loc_154BA16: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C)
  loc_154BA27: Set var_A0 = var_9C
  loc_154BA3F: If (Proc_6_27_EA565C(var_A0, "Applicable Date") = 0) Then
  loc_154BA42:   Exit Sub
  loc_154BA43: End If
  loc_154BA6A: Set var_9C = Me.Txt
  loc_154BA70: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A0)
  loc_154BA7F: var_C8 = Trim(CVar(var_A0))
  loc_154BA91: var_108 = (Me.Check1.Value = 1) And (var_C8 = vbNullString)
  loc_154BAA7: If CBool(var_108) Then
  loc_154BABD:   var_B8 = "Room Rate Percent is invalid"
  loc_154BAC3:   MsgBox(var_B8, &H40, var_C8, var_E8, var_108)
  loc_154BAD3:   Exit Sub
  loc_154BAD4: End If
  loc_154BAEF: Call Proc_21_55_F58FE4(var_12A, (Me.Check1.Value = 1))
  loc_154BAFE: If (var_9C And (var_12A = 0)) Then
  loc_154BB01:   Exit Sub
  loc_154BB02: End If
  loc_154BB0A: Call Proc_21_53_F58E80(var_B8)
  loc_154BB1B: unk_48DCA7.BeginTrans var_130
  loc_154BB24: Set var_98 = Me.topCtrl1
  loc_154BB2A: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(&HFF)
  loc_154BB43: If (CStr() = "Add") Then
  loc_154BB4C:   var_F8 = 0
  loc_154BB69:   var_A4 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From PlanMast WHERE SITE_CODE='" & MemVar_1F92070
  loc_154BB70:   var_134 = CStr() & "'"
  loc_154BB79:   unk_48DCA7.Execute var_134, var_B8, -1
  loc_154BB81:   var_98 = var_98.Fields
  loc_154BB89:   var_F8 = var_9C.Item(var_9C)
  loc_154BB91:   var_A0 = var_A0.Value
  loc_154BBCA:   var_E8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_154BBF0:   var_C8 = Format(CStr(var_C8), "000")
  loc_154BBF8:   var_108 = (1 + var_C8)
  loc_154BC23:   Set var_98 = Me.Txt
  loc_154BC29:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_134)
  loc_154BC31:   1 = var_9C.Text
  loc_154BC44:   Set var_A0 = Me.Txt
  loc_154BC4A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_140, var_144)
  loc_154BC52:   var_E8 = var_140.Text
  loc_154BC65:   Proc_6_7_F25D88(var_C8, Date)
  loc_154BC75:   Set var_170 = Me.Txt
  loc_154BC7B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_174)
  loc_154BC8A:   Proc_6_7_F25D88(var_194, CVar(var_174))
  loc_154BC96:   Set var_1B8 = Me.Check1
  loc_154BCC4:   var_1F8 = IIf((var_1B8.Value = 1), "Yes", "No")
  loc_154BCD4:   Set var_22C = Me.Txt
  loc_154BCDA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_230)
  loc_154BCE9:   Proc_6_39_E7C810(var_250, CVar(var_230))
  loc_154BD05:   var_A4 = "Insert Into PlanMast (Code,Name,Total,Site_Code,U_Name,U_EntDt,U_AE,App_Date,Plan_Package,ActiveYN,PercentApp,RoomPer,LogSite_Code) Values ('" & CStr(var_108)
  loc_154BD53:   var_16C = CVar(var_A4 & "','" & var_134 & "'," & var_144 & ",'" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") & var_C8 & ",'A'," 
  loc_154BD96:   var_2C0 = var_16C & var_194 & ",'Plan','Yes','" & var_1F8 & "'," & var_250 & ",'" & CVar(MemVar_1F92078) & "')" 
  loc_154BDA4:   unk_48DCA7.Execute CStr(var_2C0), var_2E4, -1
  loc_154BE09: Else
  loc_154BE26:   var_9C = Me.Fields.Item("SearchCode")
  loc_154BE37:   var_A4 = CStr(var_9C.Value)
  loc_154BE3D:   global_80 = var_A4
  loc_154BE5C:   Set var_98 = Me.Txt
  loc_154BE62:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4)
  loc_154BE6A:   var_2E8 = var_9C.Text
  loc_154BE7D:   Set var_A0 = Me.Txt
  loc_154BE83:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_140)
  loc_154BEA7:   var_C8 = "No"
  loc_154BEB2:   var_B8 = "Yes"
  loc_154BED5:   Set var_174 = Me.Txt
  loc_154BEDB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B8)
  loc_154BEEA:   Proc_6_39_E7C810(var_1F8, CVar(var_1B8))
  loc_154BEF2:   var_240 = Date
  loc_154BEFD:   Proc_6_7_F25D88(var_250, var_240)
  loc_154BF0D:   Set var_22C = Me.Txt
  loc_154BF13:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_230)
  loc_154BF1B:   var_2A0 = CVar(var_230) 'Address
  loc_154BF22:   Proc_6_7_F25D88(var_2C0, var_2A0)
  loc_154BF35:   Set var_2E8 = Me.Txt
  loc_154BF3B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_30C)
  loc_154BF77:   var_16C = CVar("Update PlanMast Set Name='" & var_A4 & "',Total=" & var_140.Text & ",PercentApp='") & IIf((Me.Check1.Value = 1), var_B8, var_C8) 
  loc_154BF8A:   var_194 = var_16C & "',Site_Code='" & CVar(MemVar_1F92070) 
  loc_154BFC6:   var_280 = var_194 & "',U_Name='" & CVar(MemVar_1F920C8) & "',RoomPer=" & var_1F8 & ",U_EntDt=" & var_250 & ",U_AE='E' WHERE aPP_DATE=" 
  loc_154BFF7:   unk_48DCA7.Execute CStr(var_280 & var_2C0 & " AND CODE='" & CVar(var_30C.Tag) & "'"), var_36C, -1
  loc_154C05B: End If
  loc_154C06C: Set var_98 = Me.Txt
  loc_154C072: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, global_80)
  loc_154C07A: var_9C.Tag = var_370
  loc_154C08C: var_F8 = 0
  loc_154C0BC: unk_48DCA7.Execute "Select Count(*) From Plan1 Where Code='" & global_80 & "'", var_B8, -1
  loc_154C0C4: var_98 = var_98.Fields
  loc_154C0CC: var_F8 = var_9C.Item(var_9C)
  loc_154C0FB: If (var_C8 > 0) Then
  loc_154C11B:   Set var_98 = Me.Txt
  loc_154C121:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C, "DELETE FROM Plan1 WHERE aPP_DATE=", var_194)
  loc_154C130:   Proc_6_7_F25D88(var_C8, CVar(var_9C), -1)
  loc_154C165:   unk_48DCA7.Execute CStr(var_A0.Value.Value.Value.Value.Value & var_C8 & " AND Code='" & CVar(global_80) & "'"), var_C8, var_C8
  loc_154C185: End If
  loc_154C1AD: For var_374 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_92 = var_374 'Byte
  loc_154C1B8:   var_D8 = CVar(CLng(var_92)) 'Long
  loc_154C1C0:   var_118 = CVar(CLng(1)) 'Long
  loc_154C1EB:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_154C1F3:     var_D8 = CVar(CLng(var_92)) 'Long
  loc_154C1FB:     var_118 = CVar(CLng(&H10)) 'Long
  loc_154C21B:     var_1D8 = CVar(CLng(var_92)) 'Long
  loc_154C223:     var_270 = CVar(CLng(2)) 'Long
  loc_154C22C:     Set var_9C = Me.FGrid
  loc_154C243:     var_2B0 = CVar(CLng(var_92)) 'Long
  loc_154C24B:     var_2F8 = CVar(CLng(5)) 'Long
  loc_154C26B:     var_35C = CVar(CLng(var_92)) 'Long
  loc_154C273:     var_394 = CVar(CLng(3)) 'Long
  loc_154C293:     var_3B8 = CVar(CLng(var_92)) 'Long
  loc_154C29B:     var_3D8 = CVar(CLng(&HB)) 'Long
  loc_154C2BB:     var_404 = CVar(CLng(var_92)) 'Long
  loc_154C2C3:     var_424 = CVar(CLng(&HC)) 'Long
  loc_154C2E3:     var_450 = CVar(CLng(var_92)) 'Long
  loc_154C2EB:     var_470 = CVar(CLng(&HD)) 'Long
  loc_154C30B:     var_49C = CVar(CLng(var_92)) 'Long
  loc_154C313:     var_4BC = CVar(CLng(&HE)) 'Long
  loc_154C33D:     var_4EC = CVar(CLng(var_92)) 'Long
  loc_154C345:     var_50C = CVar(CLng(6)) 'Long
  loc_154C36F:     var_53C = CVar(CLng(var_92)) 'Long
  loc_154C377:     var_55C = CVar(CLng(7)) 'Long
  loc_154C399:     var_828 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_154C3CB:     var_830 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_154C3FD:     var_838 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_154C42F:     var_840 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_154C440:     Proc_6_7_F25D88(var_240, Date, var_840, CVar(CLng(&HA)), CVar(CLng(var_92)), var_838, CVar(CLng(9)), CVar(CLng(var_92)))
  loc_154C449:     Set var_694 = Me.topCtrl1
  loc_154C44F:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_830)
  loc_154C4B5:     var_848 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_154C4C3:     Set var_754 = Me.Txt
  loc_154C4C9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_758, var_848, CVar(CLng(&H11)), CVar(CLng(var_92)), CVar(CLng(8)))
  loc_154C4D8:     Proc_6_7_F25D88(var_778, CVar(var_758), CVar(CLng(var_92)), var_828)
  loc_154C4F4:     var_A4 = "INSERT INTO Plan1 (Code,ChrgCode,RevCode,TaxInc,TaxStru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,child,ExtraAdult,ExtraChild,NoOfDays,Site_Code,U_Name,U_EntDT,U_AE,PlanPer,App_Date,LogSite_Code)VALUES ('" & global_80
  loc_154C531:     var_15C = var_A4 & "','" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(var_9C.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix)) & "','"
  loc_154C572:     var_48C = var_15C & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix))
  loc_154C5AB:     var_57C = var_48C & "'," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CStr(var_828)
  loc_154C600:     var_680 = var_57C & "," & CStr(var_830) & "," & CStr(var_838) & "," & CStr(var_840) & ",'" & MemVar_1F92070 & "','" & MemVar_1F920C8
  loc_154C64A:     var_7A8 = CVar(var_680 & "',") & var_240 & ",'" & IIf((CStr(var_2A0) = "Add"), "A", "E") & "'," & CVar(var_848) & "," & var_778 & ",'" 
  loc_154C66B:     unk_48DCA7.Execute CStr(var_7A8 & CVar(MemVar_1F92078) & "')"), var_80C, -1
  loc_154C74B:   End If
  loc_154C74E: Next var_374 'Byte
  loc_154C75A: unk_48DCA7.CommitTrans
  loc_154C761: var_8A = 0
  loc_154C772: Set var_98 = Me.Txt
  loc_154C778: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_154C794: var_8A = 0
  loc_154C7A2: Me.Requery -1
  loc_154C7B2: Me.Requery -1
  loc_154C7BD: Me.MoveFirst
  loc_154C7E7: Me.Find "SearchCode='" & var_9C.Tag & "'", 0, 1
  loc_154C7F7: Set var_98 = Me.topCtrl1
  loc_154C7FD: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_D8)
  loc_154C816: If (CStr(var_8A) = "Add") Then
  loc_154C819:   Call TopCtrl1_UnknownEvent_A()
  loc_154C81E:   Exit Sub
  loc_154C81F: End If
  loc_154C842: Call Proc_21_47_EB5F9C(Proc_5_1_100CB50("INI", Me), global_64)
  loc_154C852: Set var_88 = Nothing
  loc_154C855: Exit Sub
  loc_154C856: ' Referenced from: 154B9C4
  loc_154C85C: If (var_8A = &HFF) Then
  loc_154C865:   unk_48DCA7.RollbackTrans
  loc_154C86A: End If
  loc_154C86A: Proc_6_60_E62BC4(var_8A)
  loc_154C86F: Exit Sub
  loc_154C870: Exit Sub
End Sub

Private Sub Form_Load() '10C7EA4
  'Data Table: 48DC98
  Dim var_94 As Variant
  Dim var_BC As Variant
  Dim var_A8 As Variant
  Dim var_C0 As TextBox
  Dim var_C8 As DataGrid
  Dim var_CC As TextBox
  Dim var_AC As String
  Dim Me As Recordset15
  loc_10C7BB4: On Error Goto loc_10C7E9C
  loc_10C7BC1: Set var_A8 = Me.topCtrl1
  loc_10C7BC7: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B("AEDP")
  loc_10C7BD5: Call 0.Method_arg_50 (var_AC)
  loc_10C7BE5: Set var_A8 = Me.topCtrl1
  loc_10C7BEB: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030007(CVar(var_AC))
  loc_10C7BFD: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10C7C15: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B0))
  loc_10C7C2B: Set var_A8 = Me.Txt
  loc_10C7C31: Call 0.Method_Form_Load0 (CInt(0), var_C0)
  loc_10C7C50: Me.DGHelp.Left = CVar(var_C0.Left)
  loc_10C7C6C: Set var_C8 = Me.Txt
  loc_10C7C72: Call 0.Method_Form_Load0 (CInt(0), var_CC)
  loc_10C7C8D: Set var_A8 = Me.Txt
  loc_10C7C93: Call 0.Method_Form_Load0 (CInt(0), var_C0)
  loc_10C7CAB: var_94 = CVar(((var_C0.Top + var_CC.Height) + CDbl(&H1E))) 'Single
  loc_10C7CBA: Me.DGHelp.Top = CVar(var_C0.Left)
  loc_10C7CDF: Me.DGRev.Left = CVar(CDbl(3720))
  loc_10C7CF4: Set var_A8 = Me.DGRev
  loc_10C7CFA: var_A8.Top = CVar(CDbl(1185))
  loc_10C7D02: Call Proc_21_49_13310A4()
  loc_10C7D23: Me.var_A8.CursorLocation = 3
  loc_10C7D4D: var_BC = CVar("Select *,Code as SearchCode From PlanMast WHERE Plan_Package='Plan' and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10C7D57: Me.Open var_BC, CVar(MemVar_1F92044), 3
  loc_10C7D7E: Me.Recordset15.CursorLocation = 3
  loc_10C7DA1: var_AC = "Select Code,Name,Sname,Revcode,TaxInc,Taxstru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,Child,ExtraAdult,ExtraChild From FixedCharge where (LOGSITE_CODE='" & MemVar_1F92078
  loc_10C7DC6: CVarUnk
  loc_10C7DCB: VerifyVarObj
  loc_10C7DD1: Set var_A8 = Me.DGRev
  loc_10C7DD7: LateIdStAd
  loc_10C7E01: Me.DGRev.CursorLocation = 3
  loc_10C7E2B: var_BC = CVar("Select Code,Name From PlanMast WHERE Plan_Package='Plan' and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10C7E35: ar("Select Code,Name From PlanMast WHERE Plan_Package='Plan' and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F92044), 3 var_BC, CVar(MemVar_1F92044), 3
  loc_10C7E49: CVarUnk
  loc_10C7E4E: VerifyVarObj
  loc_10C7E54: Set var_A8 = Me.DGHelp
  loc_10C7E5A: LateIdStAd
  loc_10C7E8B: Call Proc_21_47_EB5F9C(Proc_5_1_100CB50("INI", Me, New, Me, New, 1, -1), Me, New, 1)
  loc_10C7E96: Call Proc_21_50_145493C(-1, 1)
  loc_10C7E9B: Exit Sub
  loc_10C7E9C: ' Referenced from: 10C7BB4
  loc_10C7E9C: Proc_6_60_E62BC4(-1)
  loc_10C7EA1: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E57CCC
  'Data Table: 48DC98
  loc_E57C97: Set global_64 = Nothing
  loc_E57CA9: Set global_56 = Nothing
  loc_E57CBB: Set global_60 = Nothing
  loc_E57CC7: MasterFormExit = 0
  loc_E57CCA: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E59224
  'Data Table: 48DC98
  loc_E591EC: Set var_88 = Me.topCtrl1
  loc_E591F2: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_E59215: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5921D:   Call Form_Unload(&HFF)
  loc_E59222: End If
  loc_E59222: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2E758
  'Data Table: 48DC98
  loc_E2E72C: On Error Goto loc_E2E750
  loc_E2E747: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2E74F: Exit Sub
  loc_E2E750: ' Referenced from: E2E72C
  loc_E2E750: Proc_6_60_E62BC4(Shift)
  loc_E2E755: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10C9888
  'Data Table: 48DC98
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_108 As TextBox
  Dim Me As Recordset15
  Dim var_128 As String
  Dim var_104 As Field20
  loc_10C95AC: On Error Goto loc_10C9882
  loc_10C95AF: Call Proc_21_45_EBD9AC()
  loc_10C95C7: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C95D0: Set var_9C = Me.FGrid
  loc_10C9605: Set var_104 = Me.TxtGrid
  loc_10C960B: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_10C9613: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_10C9640: Set var_88 = Me.TxtGrid
  loc_10C9646: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_10C964E: var_9C.MaxLength = 0
  loc_10C966D: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10C9698: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_10C96B2:   If (Me.RecordCount > 0) Then
  loc_10C96C0:     Set var_9C = Me.FGPoint
  loc_10C96D8:     Proc_6_137_1193554(Me.DGRev, global_60, Index)
  loc_10C96E6:   End If
  loc_10C96EF:   var_114 = Me.RecordCount
  loc_10C9706:   var_116 = Me.EOF
  loc_10C971A:   var_118 = Me.BOF
  loc_10C973A:   var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C9776:   If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_10C9779:     Exit Sub
  loc_10C977A:   End If
  loc_10C978D:   var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C9795:   var_DC = CVar(CLng(1)) 'Long
  loc_10C97B9:   var_128 = "Name"
  loc_10C97F8:   If CBool(CVar(CStr(Me.FGrid.TextMatrix))) <> Me.Fields.Item(var_128).Value) Then
  loc_10C9801:     Me.MoveFirst
  loc_10C9819:     var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C9821:     var_DC = CVar(CLng(1)) 'Long
  loc_10C9830:     var_AC = Me.FGrid.TextMatrix)
  loc_10C9865:     Me.Find "Name ='" & CStr(var_AC) & "'", 0, 1
  loc_10C9881:   End If
  loc_10C9881: End If
  loc_10C9881: Exit Sub
  loc_10C9882: ' Referenced from: 10C95AC
  loc_10C9882: Proc_6_60_E62BC4(var_128, var_AC, var_DC, var_BC, var_DC, var_BC)
  loc_10C9887: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1283438
  'Data Table: 48DC98
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As Variant
  Dim var_B0 As Long
  Dim Me As Recordset15
  loc_1282E7B: var_86 = Shift
  loc_1282E7E: On Error Goto loc_1283431
  loc_1282E8B: If (CLng(Shift) = &H1B) Then
  loc_1282E9A:   Set var_8C = Me.TxtGrid
  loc_1282EA0:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_1282EB9:   Set var_98 = Me.TxtGrid
  loc_1282EBF:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_1282EC7:   var_9C.Text = var_90.Tag
  loc_1282EDE:   Set var_8C = Me.FGrid
  loc_1282EFA:   Set var_8C = Me.TxtGrid
  loc_1282F00:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_1282F08:   var_90.Visible = FGrid.DispID_8001
  loc_1282F14:   Exit Sub
  loc_1282F15: End If
  loc_1282F28: var_B0 = CLng(Me.FGrid.Col)
  loc_1282F38: If (var_B0 = CLng(6)) Then
  loc_1282F7B:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_78 = &HFF))) Then
  loc_1282F8B:     Call Proc_21_51_142E8EC(0, 0, var_B6)
  loc_1282F96:     If (var_B6 = &HFF) Then
  loc_1282FE3:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_78, CByte((CInt(6) + 1)))
  loc_1282FF3:     End If
  loc_1282FF3:   End If
  loc_1282FF6: Else
  loc_1282FFD:   If (var_B0 = CLng(1)) Then
  loc_1283056:     Proc_6_69_134A198(Me.DGRev, Me.TxtGrid, KeyCode, global_60, Shift, &HFF, 1, Nothing)
  loc_12830C5:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12830EB:       Proc_6_138_106D6F8(Me.DGRev, global_60, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_12830F9:     End If
  loc_1283103:     If (CLng(Shift) = &HD) Then
  loc_1283113:       Call Proc_21_51_142E8EC(0, 0, var_B6, 0)
  loc_128311E:       If (var_B6 = &HFF) Then
  loc_128313C:         If (Me.Check1.Value = 1) Then
  loc_1283189:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_78, CByte((CInt(6) + 1)), 0)
  loc_128319C:         Else
  loc_12831DF:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_78, 1, 0, 0)
  loc_12831EF:         End If
  loc_12831EF:       End If
  loc_12831EF:     End If
  loc_12831F2:   Else
  loc_12831F9:     If (var_B0 = CLng(5)) Then
  loc_128323C:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_78 = &HFF))) Then
  loc_128324C:         Call Proc_21_51_142E8EC(0, 0, var_B6, 0, &H11)
  loc_1283257:         If (var_B6 = &HFF) Then
  loc_12832A4:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_78, CByte((CInt(5) + 3)), 0)
  loc_12832B4:         End If
  loc_12832B4:       End If
  loc_12832B7:     Else
  loc_12832BE:       If (var_B0 = CLng(&HA)) Then
  loc_1283301:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_78 = &HFF))) Then
  loc_1283311:           Call Proc_21_51_142E8EC(0, 0, var_B6, 0, 0)
  loc_128331C:           If (var_B6 = &HFF) Then
  loc_1283362:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_78, &H11, 0)
  loc_1283372:           End If
  loc_1283372:         End If
  loc_1283375:       Else
  loc_128337C:         If (var_B0 = CLng(&H11)) Then
  loc_12833BF:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_78 = &HFF))) Then
  loc_12833CF:             Call Proc_21_51_142E8EC(0, 0, var_B6, 0, 0)
  loc_12833DA:             If (var_B6 = &HFF) Then
  loc_1283420:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_78, &H11, 0)
  loc_1283430:             End If
  loc_1283430:           End If
  loc_1283430:         End If
  loc_1283430:       End If
  loc_1283430:     End If
  loc_1283430:   End If
  loc_1283430: End If
  loc_1283430: Exit Sub
  loc_1283431: ' Referenced from: 1282E7E
  loc_1283431: Proc_6_60_E62BC4(0, 0, 0, 0)
  loc_1283436: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F84358
  'Data Table: 48DC98
  Dim var_88 As Variant
  Dim var_9C As Long
  loc_F84200: On Error Goto loc_F84350
  loc_F84206: Proc_6_58_E054C0(arg_10)
  loc_F8421E: var_9C = CLng(Me.FGrid.Col)
  loc_F8422E: If (var_9C = CLng(1)) Then
  loc_F8424D:   If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_F8425F:     var_A0 = "Name"
  loc_F8427A:     Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_60, arg_10)
  loc_F84294:     Set var_A8 = Me.FGPoint
  loc_F842AC:     Proc_6_138_106D6F8(Me.DGRev, global_60, KeyAscii, var_A8)
  loc_F842BA:   End If
  loc_F842BD: Else
  loc_F842C4:   If (var_9C = CLng(6)) Then
  loc_F842D1:     Set var_88 = Me.TxtGrid
  loc_F842D7:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_F842F2:     Proc_6_42_129A86C(var_A8, arg_10, 8)
  loc_F84301:   Else
  loc_F84308:     If (var_9C = CLng(&HA)) Then
  loc_F84315:       Set var_88 = Me.TxtGrid
  loc_F8431B:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, 2)
  loc_F84336:       Proc_6_42_129A86C(var_A8, arg_10, 2)
  loc_F84345:     Else
  loc_F8434C:       If (var_9C = CLng(5)) Then
  loc_F8434F:       End If
  loc_F8434F:     End If
  loc_F8434F:   End If
  loc_F8434F: End If
  loc_F8434F: Exit Sub
  loc_F84350: ' Referenced from: F84200
  loc_F84350: Proc_6_60_E62BC4(0, 0)
  loc_F84355: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F905A8
  'Data Table: 48DC98
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_114 As Variant
  Dim arg_20A0 As Variant
  loc_F90454: On Error Goto loc_F9059F
  loc_F9045A: var_86 = KeyCode
  loc_F90463: If (var_86 = 0) Then
  loc_F90479:   var_A0 = CLng(Me.FGrid.Col)
  loc_F90489:   If (var_A0 = CLng(1)) Then
  loc_F904AF:     If ((Shift <> &HD) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_F904C0:       Call TxtGrid_KeyDown(KeyCode, global_76)
  loc_F904C9:       Set var_AC = Me.TxtGrid
  loc_F904D4:       var_A8 = "Name"
  loc_F904EF:       Proc_6_89_146F1AC(var_AC, KeyCode, global_60, Shift, var_A8)
  loc_F904FE:     End If
  loc_F90501:   Else
  loc_F90508:     If Not (var_A0 = CLng(6)) Then
  loc_F90512:       If (var_A0 = CLng(&H11)) Then
  loc_F90515:       End If
  loc_F90552:       Set var_8C = Me.TxtGrid
  loc_F90558:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_F90560:       &HFF = var_AC.Text
  loc_F9056F:       var_114 = CVar(CStr(Val(var_A8))) 'String
  loc_F90577:       Set var_128 = Me.FGrid
  loc_F9057D:       LateIdCallSt
  loc_F9059E:     End If
  loc_F9059E:   End If
  loc_F9059E: End If
  loc_F9059E: Exit Sub
  loc_F9059F: ' Referenced from: F90454
  loc_F9059F: Proc_6_60_E62BC4(var_128, var_114, 0)
  loc_F905A4: Exit Sub
  loc_F905A5: arg_20A0 = InStr(, , var_86, var_A0)
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22AA0
  'Data Table: 48DC98
  Dim arg_10 As Integer
  loc_E22A7C: On Error Goto loc_E22A97
  loc_E22A8A: Call Proc_21_51_142E8EC(Cancel, &HFF)
  loc_E22A93: arg_10 = Not(var_88)
  loc_E22A96: Exit Sub
  loc_E22A97: ' Referenced from: E22A7C
  loc_E22A97: Proc_6_60_E62BC4(arg_10)
  loc_E22A9C: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EA8764
  'Data Table: 48DC98
  Dim var_92 As Integer
  Dim Me As Recordset15
  loc_EA86E2: Set var_88 = Me.Txt
  loc_EA86E8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EA86F6: Proc_6_74_E226B0(var_8C)
  loc_EA8705: var_92 = Index
  loc_EA8710: If (var_92 = CInt(0)) Then
  loc_EA872A:   If (Me.RecordCount > 0) Then
  loc_EA8738:     Set var_8C = Me.FGPoint
  loc_EA8750:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_EA875E:   End If
  loc_EA875E: End If
  loc_EA875E: Call Proc_21_45_EBD9AC(var_8C, var_92)
  loc_EA8763: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1001F80
  'Data Table: 48DC98
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As DataGrid
  Dim var_94 As DataGrid
  loc_1001D94: If (CLng(Shift) = &H1B) Then
  loc_1001D97:   Call Proc_21_45_EBD9AC(Shift)
  loc_1001D9C:   Exit Sub
  loc_1001D9D: End If
  loc_1001DA0: var_88 = KeyCode
  loc_1001DAB: If (var_88 = CInt(0)) Then
  loc_1001DD0:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_1001DF0:     Set var_9C = Me.FGPoint
  loc_1001E1E:     Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, KeyCode, global_56, Shift)
  loc_1001E32:   End If
  loc_1001E8B:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1001E99:     Set var_94 = Me.FGPoint
  loc_1001EB1:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, var_94, 0)
  loc_1001EBF:   End If
  loc_1001EC2: Else
  loc_1001ECA:   If (var_88 = CInt(3)) Then
  loc_1001ED8:     Set var_90 = Me.Txt
  loc_1001EDE:     Call 0.Method_Txt_KeyDown0 (CInt(3), var_94, 1)
  loc_1001EF3:     Set var_9C = var_94
  loc_1001EF9:     Proc_6_41_FA0BA4(var_9C, Shift, 2, 2)
  loc_1001F05:   End If
  loc_1001F05: End If
  loc_1001F40: If ((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_1001F58:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1001F61:     Proc_6_75_E527CC(Shift, arg_14, var_9C)
  loc_1001F66:   End If
  loc_1001F70:   If (CLng(Shift) = &H26) Then
  loc_1001F79:     Proc_6_76_E52838(Shift, arg_14)
  loc_1001F7E:   End If
  loc_1001F7E: End If
  loc_1001F7E: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E948F0
  'Data Table: 48DC98
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_E9487E: Proc_6_133_E7EF78(var_94)
  loc_E94893: If (CInt(var_94) = &HD) Then
  loc_E94898:   arg_10 = 0
  loc_E9489B: End If
  loc_E9489E: Proc_6_58_E054C0(arg_10, arg_10)
  loc_E948A6: var_96 = KeyAscii
  loc_E948B1: If (var_96 = CInt(3)) Then
  loc_E948BF:   Set var_9C = Me.Txt
  loc_E948C5:   Call 0.Method_Txt_KeyPress0 (CInt(3), var_A0, var_96)
  loc_E948E0:   Proc_6_42_129A86C(var_A0, arg_10, 2)
  loc_E948EC: End If
  loc_E948EC: Exit Sub
  loc_E948ED: GoTo loc_E94907
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EDC33C
  'Data Table: 48DC98
  Dim Me As Recordset15
  loc_EDC29A: If (KeyCode = CInt(0)) Then
  loc_EDC2D1:   If ((CBool(Me.DGHelp.Visible) = &HFF) And (Me.RecordCount > 0)) Then
  loc_EDC2DE:     var_A4 = "Name"
  loc_EDC2F9:     Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_56)
  loc_EDC32B:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EDC339:   End If
  loc_EDC339: End If
  loc_EDC339: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D914
  'Data Table: 48DC98
  loc_E4D8F2: Set var_88 = Me.Txt
  loc_E4D8F8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D906: Proc_6_73_E22704(var_8C)
  loc_E4D912: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12D8394
  'Data Table: 48DC98
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_94 As TextBox
  Dim var_98 As String
  Dim var_D4 As Variant
  Dim var_A8 As Variant
  Dim var_E4 As Variant
  Dim unk_48DCA7 As Connection15
  Dim var_12C As Variant
  Dim var_130 As Fields15
  Dim var_144 As Field20
  Dim arg_10 As Integer
  Dim var_154 As Variant
  Dim var_B0 As Recordset15
  Dim var_B4 As Fields15
  loc_12D7D1B: var_88 = Cancel
  loc_12D7D26: If (var_88 = CInt(0)) Then
  loc_12D7D40:   If (Me.RecordCount = 0) Then
  loc_12D7D43:     Exit Sub
  loc_12D7D44:   End If
  loc_12D7D52:   Set var_90 = Me.Txt
  loc_12D7D58:   Call 0.Method_Txt_Validate0 (CInt(2), var_94)
  loc_12D7D77:   If (var_94.Text <> vbNullString) Then
  loc_12D7D7E:     Set var_90 = Me.topCtrl1
  loc_12D7D84:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_88)
  loc_12D7D8C:     var_98 = CStr()
  loc_12D7D9D:     If (var_98 = "Add") Then
  loc_12D7DCD:       Set var_90 = Me.Txt
  loc_12D7DD3:       Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_98, "Select Count(*) From PlanMast Where Name='", var_128, -1)
  loc_12D7DDB:       var_12C = var_94.Text
  loc_12D7DEB:       var_D4 = CVar(var_130 & var_98 & "' and App_Date=") 'String
  loc_12D7DF9:       Set var_B0 = Me.Txt
  loc_12D7DFF:       Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_D4)
  loc_12D7E0E:       Proc_6_7_F25D88(var_C4, CVar(var_B4), 0)
  loc_12D7E16:       var_E4 = var_144 & var_C4 
  loc_12D7E2D:       unk_48DCA7.Execute CStr(var_E4 & vbNullString), var_154, 
  loc_12D7E35:        = var_12C.Fields
  loc_12D7E3D:        = var_130.Item()
  loc_12D7E45:        = var_144.Value
  loc_12D7E7E:       If (var_154 > 0) Then
  loc_12D7E8C:         var_C4 = "Information"
  loc_12D7EA2:         MsgBox("Duplicate Name", &H40, var_C4, var_D4, var_E4)
  loc_12D7EBD:         Set var_90 = Me.Txt
  loc_12D7EC3:         Call 0.Method_Txt_Validate0 (CInt(0))
  loc_12D7ECB:         var_94.SetFocus
  loc_12D7ED9:         arg_10 = &HFF
  loc_12D7EDC:         Exit Sub
  loc_12D7EDD:       End If
  loc_12D7EE0:     Else
  loc_12D7F0D:       Set var_90 = Me.Txt
  loc_12D7F13:       Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_98, "Select Count(*) From PlanMast Where Name='", var_174, -1, var_12C)
  loc_12D7F1B:       var_130 = var_94.Text
  loc_12D7F3C:       var_D4 = CVar(0 & var_98 & "' And Name<>'" & global_68 & "' And App_Date=") 'String
  loc_12D7F4A:       Set var_B0 = Me.Txt
  loc_12D7F50:       Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_D4, var_144)
  loc_12D7F5F:       Proc_6_7_F25D88(var_C4, CVar(var_B4), var_18C)
  loc_12D7F67:       var_E4 = arg_10 & var_C4 
  loc_12D7F82:       Proc_6_7_F25D88(var_128, global_72)
  loc_12D7F8A:       var_154 = var_E4 & " And App_date<>" & var_128 
  loc_12D7F98:       unk_48DCA7.Execute CStr(var_154), var_94, 
  loc_12D7FA0:        = var_12C.Fields
  loc_12D7FA8:        = var_130.Item()
  loc_12D7FB0:        = var_144.Value
  loc_12D7FF1:       If (var_18C > 0) Then
  loc_12D7FFF:         var_C4 = "Information"
  loc_12D8015:         MsgBox("Duplicate Name", &H40, var_C4, var_D4, var_E4)
  loc_12D8030:         Set var_90 = Me.Txt
  loc_12D8036:         Call 0.Method_Txt_Validate0 (CInt(0))
  loc_12D803E:         var_94.SetFocus
  loc_12D804C:         arg_10 = &HFF
  loc_12D804F:         Exit Sub
  loc_12D8050:       End If
  loc_12D8050:     End If
  loc_12D8050:   End If
  loc_12D8053: Else
  loc_12D805B:   If (var_88 = CInt(2)) Then
  loc_12D8068:     Set var_90 = Me.Txt
  loc_12D806E:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_12D808E:     Set var_B4 = Me.Txt
  loc_12D8094:     Call 0.Method_Txt_Validate0 (Cancel, var_12C)
  loc_12D809C:     var_12C.Text = Proc_6_33_1512840(var_94, arg_10)
  loc_12D80BC:     Set var_90 = Me.Txt
  loc_12D80C2:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_12D80CA:     var_98 = var_94.Text
  loc_12D80E1:     If (var_98 = vbNullString) Then
  loc_12D80E6:       arg_10 = &HFF
  loc_12D80E9:       Exit Sub
  loc_12D80EA:     End If
  loc_12D80F8:     Set var_90 = Me.Txt
  loc_12D80FE:     Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_98)
  loc_12D8106:     arg_10 = var_94.Text
  loc_12D811D:     If (var_98 <> vbNullString) Then
  loc_12D8124:       Set var_90 = Me.topCtrl1
  loc_12D812A:       Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_94)
  loc_12D8132:       var_98 = CStr()
  loc_12D8143:       If (var_98 = "Add") Then
  loc_12D8173:         Set var_90 = Me.Txt
  loc_12D8179:         Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_98, "Select Count(*) From PlanMast Where Name='", var_128, -1)
  loc_12D8181:         var_12C = var_94.Text
  loc_12D8191:         var_D4 = CVar(var_130 & var_98 & "' and App_date=") 'String
  loc_12D819F:         Set var_B0 = Me.Txt
  loc_12D81A5:         Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_D4)
  loc_12D81B4:         Proc_6_7_F25D88(var_C4, CVar(var_B4), 0)
  loc_12D81BC:         var_E4 = var_144 & var_C4 
  loc_12D81D3:         unk_48DCA7.Execute CStr(var_E4 & vbNullString), var_154, 
  loc_12D81DB:          = var_12C.Fields
  loc_12D81E3:          = var_130.Item()
  loc_12D81EB:          = var_144.Value
  loc_12D8224:         If (var_154 > 0) Then
  loc_12D8232:           var_C4 = "Information"
  loc_12D8242:           var_A8 = "Duplicate Name"
  loc_12D8248:           MsgBox(var_A8, &H40, var_C4, var_D4, var_E4)
  loc_12D8263:           Set var_90 = Me.Txt
  loc_12D8269:           Call 0.Method_Txt_Validate0 (CInt(0))
  loc_12D8271:           var_94.SetFocus
  loc_12D827F:           arg_10 = &HFF
  loc_12D8282:           Exit Sub
  loc_12D8283:         End If
  loc_12D8286:       Else
  loc_12D82B3:         Set var_90 = Me.Txt
  loc_12D82B9:         Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_98, "Select Count(*) From PlanMast Where Name='", var_A8, -1, var_B0)
  loc_12D82EB:         unk_48DCA7.Execute 0 & var_98 & "' And Name<>'" & global_68 & "'", var_12C, var_C4
  loc_12D82F3:         arg_10 = var_B0.Fields
  loc_12D82FB:          = var_94.Text.Item(var_94)
  loc_12D8303:          = var_12C.Value
  loc_12D8334:         If (var_C4 > 0) Then
  loc_12D8358:           MsgBox("Duplicate Name", &H40, "Information", var_D4, var_E4)
  loc_12D8373:           Set var_90 = Me.Txt
  loc_12D8379:           Call 0.Method_Txt_Validate0 (CInt(0))
  loc_12D8381:           var_94.SetFocus
  loc_12D838F:           arg_10 = &HFF
  loc_12D8392:           Exit Sub
  loc_12D8393:         End If
  loc_12D8393:       End If
  loc_12D8393:     End If
  loc_12D8393:   End If
  loc_12D8393: End If
  loc_12D8393: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E62E5C
  'Data Table: 48DC98
  loc_E62E2C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E62E2F:   Call DGHelp_UnknownEvent_9()
  loc_E62E34: End If
  loc_E62E50: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_E62E53:   Call DGRev_UnknownEvent_9()
  loc_E62E58: End If
  loc_E62E58: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F3F924
  'Data Table: 48DC98
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3F81B: Me.DGHelp.Visible = False
  loc_F3F83A: If (Me.RecordCount > 0) Then
  loc_F3F879:   Set var_B4 = Me.Txt
  loc_F3F87F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3F887:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3F8BA:   var_B0 = Me.Fields.Item("Name")
  loc_F3F8D9:   Set var_B4 = Me.Txt
  loc_F3F8DF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3F8E7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3F8FD: End If
  loc_F3F908: Set var_A8 = Me.Txt
  loc_F3F90E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F3F916: var_B0.SetFocus
  loc_F3F922: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA6E18
  'Data Table: 48DC98
  Dim var_A8 As Variant
  loc_EA6D98: Set var_88 = Me.DGHelp
  loc_EA6DC2: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6DCA: Set var_BC = Me.DGHelp
  loc_EA6E06: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0), Me.FGPoint)
  loc_EA6E14: Exit Sub
End Sub

Private Sub Check1_Click() 'F1C584
  'Data Table: 48DC98
  Dim var_88 As CheckBox
  Dim var_9C As Variant
  Dim var_D0 As Variant
  loc_F1C497: If (Me.Check1.Value = 1) Then
  loc_F1C49D:   var_9C = CVar(CLng(&H11)) 'Long
  loc_F1C4AF:   Set var_88 = Me.FGrid
  loc_F1C4B5:   LateIdCallSt
  loc_F1C4D1:   Call 0.Method_Check1_Click0 (3, var_D0, &HFF)
  loc_F1C4D9:   var_D0.Visible = Me.Label1
  loc_F1C4F2:   Set var_88 = Me.Txt
  loc_F1C4F8:   Call 0.Method_Check1_Click0 (CInt(3), var_D0, &HFF)
  loc_F1C500:   var_D0.Visible = &H3E8
  loc_F1C50F: Else
  loc_F1C524:   Set var_88 = Me.FGrid
  loc_F1C52A:   LateIdCallSt
  loc_F1C546:   Call 0.Method_Check1_Click0 (3, var_D0, 0, Me.Label1)
  loc_F1C54E:   var_D0.Visible = 0
  loc_F1C567:   Set var_88 = Me.Txt
  loc_F1C56D:   Call 0.Method_Check1_Click0 (CInt(3), var_D0, 0)
  loc_F1C575:   var_D0.Visible = CVar(CLng(&H11))
  loc_F1C581: End If
  loc_F1C581: Exit Sub
End Sub

Private Sub DGRev_UnknownEvent_9 'F50EFC
  'Data Table: 48DC98
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F50DF7: If (Me.RecordCount > 0) Then
  loc_F50E1D:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_F50E3D:     var_B4 = Me.Fields.Item("Name")
  loc_F50E5A:     Set var_B8 = Me.TxtGrid
  loc_F50E60:     Call 0.Method_DGRev_UnknownEvent_90 (0, var_BC)
  loc_F50E68:     var_BC.Text = CStr(var_B4.Value)
  loc_F50E7E:   End If
  loc_F50E7E: End If
  loc_F50E8B: Call Proc_21_51_142E8EC(0, 0)
  loc_F50E9C: Set var_8C = Me.TxtGrid
  loc_F50EA2: Call 0.Method_DGRev_UnknownEvent_90 (0, var_B4, var_C2)
  loc_F50EAA: var_C6 = var_B4.Visible
  loc_F50EBC: If (var_C2 = &HFF) Then
  loc_F50EC8:   Set var_8C = Me.TxtGrid
  loc_F50ECE:   Call 0.Method_DGRev_UnknownEvent_90 (0, var_B4)
  loc_F50ED6:   var_B4.SetFocus
  loc_F50EE2: End If
  loc_F50EF1: Me.DGRev.Visible = False
  loc_F50EF9: Exit Sub
End Sub

Private Sub DGRev_UnknownEvent_1F 'EA6D54
  'Data Table: 48DC98
  Dim var_A8 As Variant
  loc_EA6CD4: Set var_88 = Me.DGRev
  loc_EA6CFE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6D06: Set var_BC = Me.DGRev
  loc_EA6D42: Proc_6_138_106D6F8(Me.DGRev, global_60, CInt(1), Me.FGPoint)
  loc_EA6D50: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA54D8
  'Data Table: 48DC98
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA5473: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_88)) Then
  loc_EA5489:   Me.FGrid.Col = 1
  loc_EA5491: End If
  loc_EA54A4: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA54B7: Set var_88 = Me.TxtGrid
  loc_EA54BD: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA54C5: var_BC.Visible = False
  loc_EA54D1: Call Proc_21_45_EBD9AC()
  loc_EA54D6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1EE10
  'Data Table: 48DC98
  loc_E1EE07: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EE0F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6C6FC
  'Data Table: 48DC98
  Dim var_8C As TextBox
  loc_E6C6B7: Set var_88 = Me.TxtGrid
  loc_E6C6BD: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E6C6C5: var_8C.Visible = False
  loc_E6C6D5: Set var_88 = Me.topCtrl1
  loc_E6C6DB: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_E6C6F4: If (CStr() = "Browse") Then
  loc_E6C6F7:   Exit Sub
  loc_E6C6F8: End If
  loc_E6C6F8: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '12C7E34
  'Data Table: 48DC98
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_D4 As Variant
  Dim arg_C As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_12C77B8: On Error Goto loc_12C7E2C
  loc_12C77BF: Set var_88 = Me.topCtrl1
  loc_12C77C5: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_12C77DE: If (CStr() = "Browse") Then
  loc_12C77E1:   Exit Sub
  loc_12C77E2: End If
  loc_12C7856: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_12C786C:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12C787C:   var_9C = "+{Tab}"
  loc_12C7882:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_12C788C:   arg_C = 0
  loc_12C7892: Else
  loc_12C789C:   var_B0 = Me.FGrid.Rows
  loc_12C78E9:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_12C78FF:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12C790C:     Call Proc_21_48_ED73A0(0, var_B0, arg_C)
  loc_12C7911:   End If
  loc_12C7911: End If
  loc_12C7917: global_76 = arg_C
  loc_12C793D: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_12C7961: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_12C7977:   var_EC = CLng(Me.FGrid.Col)
  loc_12C7987:   If (var_EC = CLng(1)) Then
  loc_12C799D:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C79A5:     var_FC = CVar(CLng(1)) 'Long
  loc_12C79AA:     var_11C = vbNullString
  loc_12C79B4:     Set var_A0 = Me.FGrid
  loc_12C79BA:     LateIdCallSt
  loc_12C79DF:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C79E7:     var_FC = CVar(CLng(2)) 'Long
  loc_12C79EC:     var_11C = vbNullString
  loc_12C79F6:     Set var_A0 = Me.FGrid
  loc_12C79FC:     LateIdCallSt
  loc_12C7A21:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C7A29:     var_FC = CVar(CLng(3)) 'Long
  loc_12C7A2E:     var_11C = vbNullString
  loc_12C7A38:     Set var_A0 = Me.FGrid
  loc_12C7A3E:     LateIdCallSt
  loc_12C7A63:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C7A6B:     var_FC = CVar(CLng(6)) 'Long
  loc_12C7A70:     var_11C = vbNullString
  loc_12C7A7A:     Set var_A0 = Me.FGrid
  loc_12C7A80:     LateIdCallSt
  loc_12C7AA5:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C7AAD:     var_FC = CVar(CLng(7)) 'Long
  loc_12C7AB2:     var_11C = vbNullString
  loc_12C7ABC:     Set var_A0 = Me.FGrid
  loc_12C7AC2:     LateIdCallSt
  loc_12C7AE7:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C7AEF:     var_FC = CVar(CLng(8)) 'Long
  loc_12C7AF4:     var_11C = vbNullString
  loc_12C7AFE:     Set var_A0 = Me.FGrid
  loc_12C7B04:     LateIdCallSt
  loc_12C7B29:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C7B31:     var_FC = CVar(CLng(9)) 'Long
  loc_12C7B36:     var_11C = vbNullString
  loc_12C7B40:     Set var_A0 = Me.FGrid
  loc_12C7B46:     LateIdCallSt
  loc_12C7B6B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C7B73:     var_FC = CVar(CLng(&HE)) 'Long
  loc_12C7B78:     var_11C = vbNullString
  loc_12C7B82:     Set var_A0 = Me.FGrid
  loc_12C7B88:     LateIdCallSt
  loc_12C7BAD:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C7BB5:     var_FC = CVar(CLng(4)) 'Long
  loc_12C7BBA:     var_11C = vbNullString
  loc_12C7BC4:     Set var_A0 = Me.FGrid
  loc_12C7BCA:     LateIdCallSt
  loc_12C7BEF:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C7BF7:     var_FC = CVar(CLng(&HB)) 'Long
  loc_12C7BFC:     var_11C = vbNullString
  loc_12C7C06:     Set var_A0 = Me.FGrid
  loc_12C7C0C:     LateIdCallSt
  loc_12C7C31:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C7C39:     var_FC = CVar(CLng(&HC)) 'Long
  loc_12C7C3E:     var_11C = vbNullString
  loc_12C7C48:     Set var_A0 = Me.FGrid
  loc_12C7C4E:     LateIdCallSt
  loc_12C7C73:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C7C7B:     var_FC = CVar(CLng(&HD)) 'Long
  loc_12C7C80:     var_11C = vbNullString
  loc_12C7C8A:     Set var_A0 = Me.FGrid
  loc_12C7C90:     LateIdCallSt
  loc_12C7CB5:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C7CBD:     var_FC = CVar(CLng(5)) 'Long
  loc_12C7CC2:     var_11C = vbNullString
  loc_12C7CCC:     Set var_A0 = Me.FGrid
  loc_12C7CD2:     LateIdCallSt
  loc_12C7CF7:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C7CFF:     var_FC = CVar(CLng(&H11)) 'Long
  loc_12C7D04:     var_11C = vbNullString
  loc_12C7D0E:     Set var_A0 = Me.FGrid
  loc_12C7D14:     LateIdCallSt
  loc_12C7D29:   Else
  loc_12C7D30:     If (var_EC = CLng(6)) Then
  loc_12C7D3D:       var_98 = Me.FGrid.Row
  loc_12C7D4F:       Set var_A0 = Me.FGrid
  loc_12C7D73:       LateIdCallSt
  loc_12C7D8E:       Call Proc_21_53_F58E80(var_98, Me.FGrid, "0.00", CVar(CLng(var_A0.Col)), CVar(CLng(var_98)), var_A0, "0.00", CVar(CLng(var_A0.Col)))
  loc_12C7D99:     Else
  loc_12C7DA0:       If (var_EC = CLng(5)) Then
  loc_12C7DA3:         GoTo loc_12C7E15
  loc_12C7DA6:       End If
  loc_12C7DAD:       If (var_EC = CLng(&HF)) Then
  loc_12C7DB0:         GoTo loc_12C7E15
  loc_12C7DB3:       End If
  loc_12C7DBA:       If (var_EC = CLng(&HA)) Then
  loc_12C7DD0:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C7DE8:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12C7DED:         var_11C = "0"
  loc_12C7DF7:         Set var_B4 = Me.FGrid
  loc_12C7DFD:         LateIdCallSt
  loc_12C7E15:         ' Referenced from:     12C7DB0
  loc_12C7E15:         ' Referenced from:     12C7DA3
  loc_12C7E15:       End If
  loc_12C7E15:     End If
  loc_12C7E15:   End If
  loc_12C7E15: End If
  loc_12C7E1B: If (arg_C = &HD) Then
  loc_12C7E23:   global_78 = 0
  loc_12C7E26: End If
  loc_12C7E28: arg_C = 0
  loc_12C7E2B: Exit Sub
  loc_12C7E2C: ' Referenced from: 12C77B8
  loc_12C7E2C: Proc_6_60_E62BC4(arg_C, global_78, var_B4, var_11C, var_FC, var_D4, var_D4)
  loc_12C7E31: Exit Sub
  loc_12C7E32: Exit Sub
  loc_12C7E33: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'EF1C44
  'Data Table: 48DC98
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_EF1B84: On Error Goto loc_EF1C3D
  loc_EF1B8B: Set var_88 = Me.topCtrl1
  loc_EF1B91: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_EF1BAA: If (CStr() = "Browse") Then
  loc_EF1BAD:   Exit Sub
  loc_EF1BAE: End If
  loc_EF1BC1: var_A0 = CLng(Me.FGrid.Col)
  loc_EF1BD1: If Not (var_A0 = CLng(1)) Then
  loc_EF1BDB:   If (var_A0 = CLng(6)) Then
  loc_EF1BDE:   End If
  loc_EF1BF6:   var_9C = 0
  loc_EF1C1F:   Proc_6_61_1077428(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_EF1C34: End If
  loc_EF1C39: global_78 = 0
  loc_EF1C3C: Exit Sub
  loc_EF1C3D: ' Referenced from: EF1B84
  loc_EF1C3D: Proc_6_60_E62BC4(global_78, var_9C)
  loc_EF1C42: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '1030EA0
  'Data Table: 48DC98
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_1030C64: On Error Goto loc_1030E98
  loc_1030C6B: Set var_88 = Me.topCtrl1
  loc_1030C71: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1030C8A: If (CStr() = "Browse") Then
  loc_1030C8D:   Exit Sub
  loc_1030C8E: End If
  loc_1030CA1: var_A0 = CLng(Me.FGrid.Col)
  loc_1030CB1: If (var_A0 = CLng(1)) Then
  loc_1030CF2:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1030D07: Else
  loc_1030D0E:   If (var_A0 = CLng(6)) Then
  loc_1030D4F:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index)
  loc_1030D64:   Else
  loc_1030D6B:     If (var_A0 = CLng(5)) Then
  loc_1030DAC:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index)
  loc_1030DC1:     Else
  loc_1030DC8:       If Not (var_A0 = CLng(&HF)) Then
  loc_1030DD2:         If (var_A0 = CLng(&H11)) Then
  loc_1030DD5:         End If
  loc_1030E13:         Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index, 0)
  loc_1030E28:       Else
  loc_1030E2F:         If (var_A0 = CLng(&HA)) Then
  loc_1030E70:           Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index, 0)
  loc_1030E82:         End If
  loc_1030E82:       End If
  loc_1030E82:     End If
  loc_1030E82:   End If
  loc_1030E82: End If
  loc_1030E8C: If (CLng(Index) <> &HD) Then
  loc_1030E94:   global_78 = &HFF
  loc_1030E97: End If
  loc_1030E97: Exit Sub
  loc_1030E98: ' Referenced from: 1030C64
  loc_1030E98: Proc_6_60_E62BC4(global_78, 0, 0, 0)
  loc_1030E9D: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) 'FEBC24
  'Data Table: 48DC98
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_FEBA44: On Error Goto loc_FEBC1C
  loc_FEBA4B: Set var_8C = Me.topCtrl1
  loc_FEBA51: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_FEBA6A: If (CStr() = "Browse") Then
  loc_FEBA6D:   Exit Sub
  loc_FEBA6E: End If
  loc_FEBA8B: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FEBA8E:   Exit Sub
  loc_FEBA8F: End If
  loc_FEBAA0: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FEBAC2:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FEBAFC:     If (MsgBox("Delete for Sure?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FEBB1E:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FEBB34:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEBB3D:         Set var_114 = Me.FGrid
  loc_FEBB58:       Else
  loc_FEBB6B:         Me.FGrid.Rows = 1
  loc_FEBB88:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FEBB90:         Set var_114 = Me.FGrid
  loc_FEBBBF:         Me.FGrid.FixedRows = 1
  loc_FEBBC7:       End If
  loc_FEBBC7:     End If
  loc_FEBBCA:   Else
  loc_FEBBD5:     var_D0 = "Delete Module"
  loc_FEBBE5:     var_9C = "No Entries To Delete"
  loc_FEBBEB:     MsgBox(var_9C, &H10, var_D0, var_F0, var_110)
  loc_FEBBFB:   End If
  loc_FEBBFE:   Call Proc_21_53_F58E80(var_9C, FGrid.DispID_10000, var_D0)
  loc_FEBC0A:   Set var_8C = Me.FGrid
  loc_FEBC1B: End If
  loc_FEBC1B: Exit Sub
  loc_FEBC1C: ' Referenced from: FEBA44
  loc_FEBC1C: Proc_6_60_E62BC4(FGrid.DispID_8001, FGrid.DispID_10000)
  loc_FEBC21: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1EDC0
  'Data Table: 48DC98
  loc_E1EDB7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EDBF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3ED20
  'Data Table: 48DC98
  Dim var_8C As TextBox
  loc_E3ECFF: Set var_88 = Me.TxtGrid
  loc_E3ED05: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3ED0D: var_8C.Visible = False
  loc_E3ED19: Call Proc_21_45_EBD9AC()
  loc_E3ED1E: Exit Sub
End Sub

Public Function MasterFormExitGet() '48E834
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '48E843
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E94050
  'Data Table: 48DC98
  Dim Me As Recordset15
  loc_E93FDE: On Error Goto loc_E94047
  loc_E93FE7: Me.MoveFirst
  loc_E94011: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94039: Proc_5_0_110649C(&HFF, Me, global_64)
  loc_E94041: Call Proc_21_50_145493C(0)
  loc_E94046: Exit Sub
  loc_E94047: ' Referenced from: E93FDE
  loc_E94047: Proc_6_60_E62BC4(var_A0)
  loc_E9404C: Exit Sub
  loc_E9404D: GoTo loc_E94067
End Sub

Public Sub Proc_21_45_EBD9AC
  'Data Table: 48DC98
  loc_EBD924: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBD936:   Me.DGHelp.Visible = False
  loc_EBD93E: End If
  loc_EBD95A: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_EBD96C:   Me.DGRev.Visible = False
  loc_EBD974: End If
  loc_EBD990: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBD9A2:   Me.FGPoint.Visible = False
  loc_EBD9AA: End If
  loc_EBD9AA: Exit Sub
End Sub

Public Sub Proc_21_46_F2AD78
  'Data Table: 48DC98
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F2AC72: global_68 = vbNullString
  loc_F2AC7C: global_72 = vbNullString
  loc_F2AC8E: Set var_8C = Me.Txt
  loc_F2AC94: Call 0.Method_Proc_21_46_F2AD78C (var_8E, var_86)
  loc_F2ACA4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F2ACBA:   Set var_8C = Me.Txt
  loc_F2ACC0:   Call 0.Method_Proc_21_46_F2AD780 (CInt(var_86), var_98)
  loc_F2ACC8:   var_98.Text = vbNullString
  loc_F2ACE4:   Set var_8C = Me.Txt
  loc_F2ACEA:   Call 0.Method_Proc_21_46_F2AD780 (CInt(var_86), var_98)
  loc_F2ACF2:   var_98.Tag = vbNullString
  loc_F2AD01: Next var_92 'Byte
  loc_F2AD1A: Me.FGrid.Rows = 1
  loc_F2AD37: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F2AD3F: Set var_98 = Me.FGrid
  loc_F2AD6E: Me.FGrid.FixedRows = 1
  loc_F2AD76: Exit Sub
End Sub

Public Sub Proc_21_47_EB5F9C(arg_C) 'EB5F9C
  'Data Table: 48DC98
  Dim var_98 As TextBox
  Dim var_8C As CheckBox
  loc_EB5F0E: Set var_8C = Me.Txt
  loc_EB5F14: Call 0.Method_Proc_21_47_EB5F9CC (var_8E, var_86)
  loc_EB5F24: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB5F3A:   Set var_8C = Me.Txt
  loc_EB5F40:   Call 0.Method_Proc_21_47_EB5F9C0 (CInt(var_86), var_98)
  loc_EB5F48:   var_98.Enabled = arg_C
  loc_EB5F57: Next var_92 'Byte
  loc_EB5F6A: Me.Check1.Enabled = arg_C
  loc_EB5F7F: Set var_8C = Me.Txt
  loc_EB5F85: Call 0.Method_Proc_21_47_EB5F9C0 (CInt(1), var_98)
  loc_EB5F8D: var_98.Enabled = False
  loc_EB5F99: Exit Sub
  loc_EB5F9A: CopyBytes 8447
End Sub

Public Sub Proc_21_48_ED73A0
  'Data Table: 48DC98
  loc_ED7300: Call Proc_21_45_EBD9AC()
  loc_ED7310: Set var_88 = Me.Txt
  loc_ED7316: Call 0.Method_Proc_21_48_ED73A00 (CInt(0))
  loc_ED733F: If (Proc_6_27_EA565C(var_8C, "Name") = 0) Then
  loc_ED7342:   Exit Sub
  loc_ED7343: End If
  loc_ED737A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED737D:   Call TopCtrl1_UnknownEvent_16()
  loc_ED7385: Else
  loc_ED738B:   Call 0.Method_arg_1E8 (var_88)
  loc_ED7393:   Call var_88.SetFocus
  loc_ED739C: End If
  loc_ED739C: Exit Sub
End Sub

Public Sub Proc_21_49_13310A4
  'Data Table: 48DC98
  Dim var_94 As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_13308EF: Me.DGRev.Top = CVar(CDbl(1185))
  loc_133090A: Me.DGRev.Left = CVar(CDbl(3720))
  loc_133091F: global_88 = CStr(&HC9FCF7)
  loc_1330939: Me.FGrid.Cols = &H12
  loc_133093E: var_94 = 0
  loc_133094A: var_C0 = CVar(CLng(0)) 'Long
  loc_133094F: var_E0 = "No."
  loc_1330958: LateIdCallSt
  loc_1330963: var_94 = CVar(CLng(0)) 'Long
  loc_133096E: var_C0 = CVar(CInt(4)) 'Integer
  loc_1330975: LateIdCallSt
  loc_1330980: var_94 = CVar(CLng(0)) 'Long
  loc_133098B: var_C0 = CVar(CInt(4)) 'Integer
  loc_1330992: LateIdCallSt
  loc_133099D: var_94 = CVar(CLng(0)) 'Long
  loc_13309A2: var_C0 = &H1F4
  loc_13309AE: LateIdCallSt
  loc_13309B6: var_94 = 0
  loc_13309C2: var_C0 = CVar(CLng(1)) 'Long
  loc_13309C7: var_E0 = "Fixed Charge"
  loc_13309D0: LateIdCallSt
  loc_13309DB: var_94 = CVar(CLng(1)) 'Long
  loc_13309E6: var_C0 = CVar(CInt(1)) 'Integer
  loc_13309ED: LateIdCallSt
  loc_13309F8: var_94 = CVar(CLng(1)) 'Long
  loc_1330A03: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330A0A: LateIdCallSt
  loc_1330A15: var_94 = CVar(CLng(1)) 'Long
  loc_1330A1A: var_C0 = &H9C4
  loc_1330A26: LateIdCallSt
  loc_1330A31: var_94 = CVar(CLng(2)) 'Long
  loc_1330A36: var_C0 = 0
  loc_1330A42: LateIdCallSt
  loc_1330A4D: var_94 = CVar(CLng(&H10)) 'Long
  loc_1330A52: var_C0 = 0
  loc_1330A5E: LateIdCallSt
  loc_1330A66: var_94 = 0
  loc_1330A72: var_C0 = CVar(CLng(3)) 'Long
  loc_1330A77: var_E0 = "TaxStru"
  loc_1330A80: LateIdCallSt
  loc_1330A8B: var_94 = CVar(CLng(3)) 'Long
  loc_1330A96: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330A9D: LateIdCallSt
  loc_1330AA8: var_94 = CVar(CLng(3)) 'Long
  loc_1330AB3: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330ABA: LateIdCallSt
  loc_1330AC5: var_94 = CVar(CLng(3)) 'Long
  loc_1330ACA: var_C0 = 0
  loc_1330AD6: LateIdCallSt
  loc_1330AE1: var_94 = CVar(CLng(4)) 'Long
  loc_1330AE6: var_C0 = 0
  loc_1330AF2: LateIdCallSt
  loc_1330AFA: var_94 = 0
  loc_1330B06: var_C0 = CVar(CLng(5)) 'Long
  loc_1330B0B: var_E0 = "Tax App"
  loc_1330B14: LateIdCallSt
  loc_1330B1F: var_94 = CVar(CLng(5)) 'Long
  loc_1330B2A: var_C0 = CVar(CInt(4)) 'Integer
  loc_1330B31: LateIdCallSt
  loc_1330B3C: var_94 = CVar(CLng(5)) 'Long
  loc_1330B47: var_C0 = CVar(CInt(4)) 'Integer
  loc_1330B4E: LateIdCallSt
  loc_1330B59: var_94 = CVar(CLng(5)) 'Long
  loc_1330B5E: var_C0 = 0
  loc_1330B6A: LateIdCallSt
  loc_1330B72: var_94 = 0
  loc_1330B7E: var_C0 = CVar(CLng(6)) 'Long
  loc_1330B83: var_E0 = "Adult Rate"
  loc_1330B8C: LateIdCallSt
  loc_1330B97: var_94 = CVar(CLng(6)) 'Long
  loc_1330BA2: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330BA9: LateIdCallSt
  loc_1330BB4: var_94 = CVar(CLng(6)) 'Long
  loc_1330BBF: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330BC6: LateIdCallSt
  loc_1330BD1: var_94 = CVar(CLng(6)) 'Long
  loc_1330BD6: var_C0 = 0
  loc_1330BE2: LateIdCallSt
  loc_1330BEA: var_94 = 0
  loc_1330BF6: var_C0 = CVar(CLng(7)) 'Long
  loc_1330BFB: var_E0 = "Child Rate"
  loc_1330C04: LateIdCallSt
  loc_1330C0F: var_94 = CVar(CLng(7)) 'Long
  loc_1330C1A: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330C21: LateIdCallSt
  loc_1330C2C: var_94 = CVar(CLng(7)) 'Long
  loc_1330C37: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330C3E: LateIdCallSt
  loc_1330C49: var_94 = CVar(CLng(7)) 'Long
  loc_1330C4E: var_C0 = 0
  loc_1330C5A: LateIdCallSt
  loc_1330C62: var_94 = 0
  loc_1330C6E: var_C0 = CVar(CLng(8)) 'Long
  loc_1330C73: var_E0 = "Extra Adult"
  loc_1330C7C: LateIdCallSt
  loc_1330C87: var_94 = CVar(CLng(8)) 'Long
  loc_1330C92: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330C99: LateIdCallSt
  loc_1330CA4: var_94 = CVar(CLng(8)) 'Long
  loc_1330CAF: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330CB6: LateIdCallSt
  loc_1330CC1: var_94 = CVar(CLng(8)) 'Long
  loc_1330CC6: var_C0 = 0
  loc_1330CD2: LateIdCallSt
  loc_1330CDA: var_94 = 0
  loc_1330CE6: var_C0 = CVar(CLng(9)) 'Long
  loc_1330CEB: var_E0 = "Extra Child"
  loc_1330CF4: LateIdCallSt
  loc_1330CFF: var_94 = CVar(CLng(9)) 'Long
  loc_1330D0A: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330D11: LateIdCallSt
  loc_1330D1C: var_94 = CVar(CLng(9)) 'Long
  loc_1330D27: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330D2E: LateIdCallSt
  loc_1330D39: var_94 = CVar(CLng(9)) 'Long
  loc_1330D3E: var_C0 = 0
  loc_1330D4A: LateIdCallSt
  loc_1330D52: var_94 = 0
  loc_1330D5E: var_C0 = CVar(CLng(&HA)) 'Long
  loc_1330D63: var_E0 = "No of Days"
  loc_1330D6C: LateIdCallSt
  loc_1330D77: var_94 = CVar(CLng(&HA)) 'Long
  loc_1330D82: var_C0 = CVar(CInt(7)) 'Integer
  loc_1330D89: LateIdCallSt
  loc_1330D94: var_94 = CVar(CLng(&HA)) 'Long
  loc_1330D9F: var_C0 = CVar(CInt(7)) 'Integer
  loc_1330DA6: LateIdCallSt
  loc_1330DB1: var_94 = CVar(CLng(&HA)) 'Long
  loc_1330DB6: var_C0 = 0
  loc_1330DC2: LateIdCallSt
  loc_1330DCA: var_94 = 0
  loc_1330DD6: var_C0 = CVar(CLng(&HF)) 'Long
  loc_1330DDB: var_E0 = "Tax Amount"
  loc_1330DE4: LateIdCallSt
  loc_1330DEF: var_94 = CVar(CLng(&HF)) 'Long
  loc_1330DFA: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330E01: LateIdCallSt
  loc_1330E0C: var_94 = CVar(CLng(&HF)) 'Long
  loc_1330E17: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330E1E: LateIdCallSt
  loc_1330E29: var_94 = CVar(CLng(&HF)) 'Long
  loc_1330E2E: var_C0 = 0
  loc_1330E3A: LateIdCallSt
  loc_1330E42: var_94 = 0
  loc_1330E4E: var_C0 = CVar(CLng(&HB)) 'Long
  loc_1330E53: var_E0 = "Print Option"
  loc_1330E5C: LateIdCallSt
  loc_1330E67: var_94 = CVar(CLng(&HB)) 'Long
  loc_1330E72: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330E79: LateIdCallSt
  loc_1330E84: var_94 = CVar(CLng(&HB)) 'Long
  loc_1330E8F: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330E96: LateIdCallSt
  loc_1330EA1: var_94 = CVar(CLng(&HB)) 'Long
  loc_1330EA6: var_C0 = 0
  loc_1330EB2: LateIdCallSt
  loc_1330EBA: var_94 = 0
  loc_1330EC6: var_C0 = CVar(CLng(&HC)) 'Long
  loc_1330ECB: var_E0 = "Posting Method"
  loc_1330ED4: LateIdCallSt
  loc_1330EDF: var_94 = CVar(CLng(&HC)) 'Long
  loc_1330EEA: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330EF1: LateIdCallSt
  loc_1330EFC: var_94 = CVar(CLng(&HC)) 'Long
  loc_1330F07: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330F0E: LateIdCallSt
  loc_1330F19: var_94 = CVar(CLng(&HC)) 'Long
  loc_1330F1E: var_C0 = 0
  loc_1330F2A: LateIdCallSt
  loc_1330F32: var_94 = 0
  loc_1330F3E: var_C0 = CVar(CLng(&HD)) 'Long
  loc_1330F43: var_E0 = "Charge Type"
  loc_1330F4C: LateIdCallSt
  loc_1330F57: var_94 = CVar(CLng(&HD)) 'Long
  loc_1330F62: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330F69: LateIdCallSt
  loc_1330F74: var_94 = CVar(CLng(&HD)) 'Long
  loc_1330F7F: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330F86: LateIdCallSt
  loc_1330F91: var_94 = CVar(CLng(&HD)) 'Long
  loc_1330F96: var_C0 = 0
  loc_1330FA2: LateIdCallSt
  loc_1330FAA: var_94 = 0
  loc_1330FB6: var_C0 = CVar(CLng(&HE)) 'Long
  loc_1330FBB: var_E0 = "Flat Rate"
  loc_1330FC4: LateIdCallSt
  loc_1330FCF: var_94 = CVar(CLng(&HE)) 'Long
  loc_1330FDA: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330FE1: LateIdCallSt
  loc_1330FEC: var_94 = CVar(CLng(&HE)) 'Long
  loc_1330FF7: var_C0 = CVar(CInt(1)) 'Integer
  loc_1330FFE: LateIdCallSt
  loc_1331009: var_94 = CVar(CLng(&HE)) 'Long
  loc_133100E: var_C0 = 0
  loc_133101A: LateIdCallSt
  loc_1331022: var_94 = 0
  loc_133102E: var_C0 = CVar(CLng(&H11)) 'Long
  loc_1331033: var_E0 = "Percentage"
  loc_133103C: LateIdCallSt
  loc_1331047: var_94 = CVar(CLng(&H11)) 'Long
  loc_1331052: var_C0 = CVar(CInt(7)) 'Integer
  loc_1331059: LateIdCallSt
  loc_1331064: var_94 = CVar(CLng(&H11)) 'Long
  loc_133106F: var_C0 = CVar(CInt(7)) 'Integer
  loc_1331076: LateIdCallSt
  loc_1331081: var_94 = CVar(CLng(&H11)) 'Long
  loc_1331086: var_C0 = &H3E8
  loc_1331092: LateIdCallSt
  loc_133109C: Set var_B0 = Nothing 
  loc_13310A0: Exit Sub
End Sub

Public Sub Proc_21_50_145493C
  'Data Table: 48DC98
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim unk_48DCA7 As Connection15
  Dim var_8C As Recordset15
  Dim var_124 As Recordset15
  Dim var_B8 As Variant
  Dim var_128 As TextBox
  Dim var_86 As Integer
  Dim var_140 As Variant
  Dim var_160 As Variant
  loc_1453DCC: On Error Goto loc_1454935
  loc_1453DE6: If (Me.RecordCount > 0) Then
  loc_1453E28:   var_D8 = "Select * From PlanMast Where Code='" & Me.Fields.Item("SearchCode").Value 
  loc_1453E3F:   unk_48DCA7.Execute CStr(var_D8 & "'"), var_11C, -1
  loc_1453E4A:   Set var_8C = var_120
  loc_1453E78:   If (var_8C.RecordCount > 0) Then
  loc_1453E7E:     Set var_124 = var_8C 
  loc_1453EB8:     Set var_120 = Me.Txt
  loc_1453EBE:     Call 0.Method_Proc_21_50_145493C0 (CInt(0), var_128)
  loc_1453EC6:     var_128.Text = Proc_6_38_E68A98(CVar(var_124.Fields.Item("Name")))
  loc_1453EF1:     var_A8 = var_124.Fields.Item("Code")
  loc_1453F10:     Set var_120 = Me.Txt
  loc_1453F16:     Call 0.Method_Proc_21_50_145493C0 (CInt(0), var_128)
  loc_1453F1E:     var_128.Tag = Proc_6_38_E68A98(CVar(var_A8))
  loc_1453F40:     Set var_94 = Me.Txt
  loc_1453F46:     Call 0.Method_Proc_21_50_145493C0 (CInt(0), var_A8)
  loc_1453F59:     global_68 = var_A8.Text
  loc_1453F81:     var_A8 = var_8C.Fields.Item("PercentApp")
  loc_1453FA3:     If (var_A8.Value = "Yes") Then
  loc_1453FB2:       Me.Check1.Value = 1
  loc_1453FC5:       Set var_94 = Me.Label1
  loc_1453FCB:       Call 0.Method_Proc_21_50_145493C0 (3, var_A8)
  loc_1453FD3:       var_A8.Visible = True
  loc_1453FEC:       Set var_94 = Me.Txt
  loc_1453FF2:       Call 0.Method_Proc_21_50_145493C0 (CInt(3), var_A8)
  loc_1453FFA:       var_A8.Visible = True
  loc_145401D:       var_A8 = var_8C.Fields.Item("RoomPer")
  loc_145402C:       Proc_6_39_E7C810(var_D8, CVar(var_A8))
  loc_1454043:       Set var_120 = Me.Txt
  loc_1454049:       Call 0.Method_Proc_21_50_145493C0 (CInt(3), var_128)
  loc_1454051:       var_128.Text = CStr(var_D8)
  loc_145406C:     Else
  loc_1454078:       Me.Check1.Value = 0
  loc_145408B:       Set var_94 = Me.Label1
  loc_1454091:       Call 0.Method_Proc_21_50_145493C0 (3, var_A8)
  loc_1454099:       var_A8.Visible = False
  loc_14540B2:       Set var_94 = Me.Txt
  loc_14540B8:       Call 0.Method_Proc_21_50_145493C0 (CInt(3), var_A8)
  loc_14540C0:       var_A8.Visible = False
  loc_14540DA:       Set var_94 = Me.Txt
  loc_14540E0:       Call 0.Method_Proc_21_50_145493C0 (CInt(3), var_A8)
  loc_14540E8:       var_A8.Text = "0.00"
  loc_14540F4:     End If
  loc_145411A:     Proc_6_39_E7C810(var_D8, CVar(var_124.Fields.Item("Total")))
  loc_1454131:     Set var_120 = Me.Txt
  loc_1454137:     Call 0.Method_Proc_21_50_145493C0 (CInt(1), var_128)
  loc_145413F:     var_128.Text = CStr(var_D8)
  loc_1454171:     var_A8 = var_124.Fields.Item("App_Date")
  loc_1454196:     Call 0.Method_Proc_21_50_145493C0 (CInt(2), var_128)
  loc_145419E:     var_128.Text = CStr(var_A8.Value)
  loc_14541C2:     Set var_94 = Me.Txt
  loc_14541C8:     Call 0.Method_Proc_21_50_145493C0 (CInt(2), var_A8)
  loc_14541DB:     global_72 = var_A8.Text
  loc_14541EB:     Set var_124 = Nothing 
  loc_1454202:     Me.FGrid.Rows = 1
  loc_1454217:     var_C8 = "SELECT Plan1.*,FixedCharge.Name as RevName FROM Plan1 Left Join FixedCharge on Plan1.ChrgCode=FixedCharge.Code WHERE Plan1.Code='"
  loc_1454260:     unk_48DCA7.Execute CStr(var_C8 & Me.Fields.Item("SearchCode").Value & "' order by FixedCharge.Name"), var_11C, -1
  loc_145426B:     Set var_8C = Me.Txt
  loc_1454287:     var_86 = 1
  loc_145428A:     ' Referenced from: 14548AC
  loc_1454299:     If Not(var_8C.EOF) Then
  loc_145429C:       var_A4 = vbNullString
  loc_14542A6:       Set var_94 = Me.FGrid
  loc_14542BB:       Set var_130 = Me.FGrid
  loc_14542C2:       var_A4 = CVar(CLng(var_86)) 'Long
  loc_14542D4:       var_B8 = CVar(CStr(var_86)) 'String
  loc_14542DB:       LateIdCallSt
  loc_145431F:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RevName")), CVar(CLng(1)), CVar(CLng(var_86)), var_130, CVar(var_8C.Fields.Item("RevName")), CVar(CLng(0)))) 'String
  loc_1454326:       LateIdCallSt
  loc_145433B:       var_A4 = "Adult"
  loc_145435E:       Proc_6_39_E7C810(var_D8, CVar(var_8C.Fields.Item(var_A4)), var_130, var_D8, var_A4)
  loc_145439F:       LateIdCallSt
  loc_14543F0:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ChrgCode")), CVar(CLng(&H10)), CVar(CLng(var_86)), var_130, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)) 'String
  loc_14543F7:       LateIdCallSt
  loc_1454442:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RevCode")), CVar(CLng(2)), CVar(CLng(var_86)), var_130, var_D8, CVar(CLng(6)))) 'String
  loc_1454449:       LateIdCallSt
  loc_1454494:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Code")), CVar(CLng(4)), CVar(CLng(var_86)), var_130, var_D8)) 'String
  loc_145449B:       LateIdCallSt
  loc_14544D3:       Proc_6_39_E7C810(var_D8, CVar(var_8C.Fields.Item("Child")), var_130, var_D8, CVar(CLng(var_86)))
  loc_14544DC:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_14544E4:       var_140 = CVar(CLng(7)) 'Long
  loc_1454514:       LateIdCallSt
  loc_1454552:       Proc_6_39_E7C810(var_D8, CVar(var_8C.Fields.Item("ExtraAdult")), var_130, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)
  loc_145455B:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_1454593:       LateIdCallSt
  loc_14545D1:       Proc_6_39_E7C810(var_D8, CVar(var_8C.Fields.Item("ExtraChild")), var_130, CVar(CStr(Format(var_D8, "0.00"))), 1, 1, CVar(CLng(8)))
  loc_1454612:       LateIdCallSt
  loc_1454663:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("PostingMethod")), CVar(CLng(&HC)), CVar(CLng(var_86)), var_130, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)) 'String
  loc_145466A:       LateIdCallSt
  loc_14546B5:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ChargeType")), CVar(CLng(&HD)), CVar(CLng(var_86)), var_130, var_D8, CVar(CLng(9)))) 'String
  loc_14546BC:       LateIdCallSt
  loc_1454707:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("PrintOption")), CVar(CLng(&HB)), CVar(CLng(var_86)), var_130, var_D8)) 'String
  loc_145470E:       LateIdCallSt
  loc_1454759:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("TaxInc")), CVar(CLng(5)), CVar(CLng(var_86)), var_130, var_D8)) 'String
  loc_1454760:       LateIdCallSt
  loc_14547AB:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("TaxStru")), CVar(CLng(3)), CVar(CLng(var_86)), var_130, var_D8)) 'String
  loc_14547B2:       LateIdCallSt
  loc_14547FD:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("NoofDays")), CVar(CLng(&HA)), CVar(CLng(var_86)), var_130, var_D8)) 'String
  loc_1454804:       LateIdCallSt
  loc_145483C:       Proc_6_39_E7C810(var_D8, CVar(var_8C.Fields.Item("PlanPer")), var_130, var_D8, CVar(CLng(var_86)))
  loc_1454845:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_145484D:       var_140 = CVar(CLng(&H11)) 'Long
  loc_1454876:       var_160 = CVar(CStr(Format(var_D8, "0.00"))) 'String
  loc_145487D:       LateIdCallSt
  loc_1454897:       Set var_130 = Nothing 
  loc_14548A1:       var_86 = (var_86 + 1)
  loc_14548A7:       var_8C.MoveNext
  loc_14548AC:       GoTo loc_145428A
  loc_14548AF:     End If
  loc_14548AF:   End If
  loc_14548AF:   var_A4 = 0
  loc_14548B9:   Set var_94 = Me.FGrid
  loc_14548E6:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_14548E9:     var_A4 = "1"
  loc_14548F3:     Set var_94 = Me.FGrid
  loc_1454904:   End If
  loc_1454904:   var_A4 = 1
  loc_1454917:   Me.FGrid.FixedRows = var_A4
  loc_1454922: Else
  loc_1454922:   Call Proc_21_46_F2AD78(FGrid.DispID_10000, var_A4, FGrid.DispID_2E, var_A4, var_86, var_130, var_160)
  loc_1454927: End If
  loc_1454927: Call Proc_21_45_EBD9AC(1, 1, var_140)
  loc_1454931: Set var_8C = Nothing
  loc_1454934: Exit Sub
  loc_1454935: ' Referenced from: 1453DCC
  loc_1454935: Proc_6_60_E62BC4(var_E8, var_E8)
  loc_145493A: Exit Sub
End Sub

Public Sub Proc_21_51_142E8EC(arg_C) '142E8EC
  'Data Table: 48DC98
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_120 As Variant
  Dim var_B0 As String
  Dim var_164 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_1A4 As Double
  Dim var_178 As MSHFlexGrid
  Dim var_198 As Variant
  loc_142DE2B: var_A0 = CLng(Me.FGrid.Col)
  loc_142DE3B: If (var_A0 = CLng(1)) Then
  loc_142DE5E:   var_A6 = Me.EOF
  loc_142DE8B:   Set var_8C = Me.TxtGrid
  loc_142DE91:   Call 0.Method_Proc_21_51_142E8EC0 (0, var_AC, var_B0)
  loc_142DE99:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_142DEB1:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_142DEC7:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142DECF:     var_E0 = CVar(CLng(1)) 'Long
  loc_142DED4:     var_100 = vbNullString
  loc_142DEDE:     Set var_AC = Me.FGrid
  loc_142DEE4:     LateIdCallSt
  loc_142DF09:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142DF11:     var_E0 = CVar(CLng(2)) 'Long
  loc_142DF16:     var_100 = vbNullString
  loc_142DF20:     Set var_AC = Me.FGrid
  loc_142DF26:     LateIdCallSt
  loc_142DF3B:   Else
  loc_142DF3E:     Call Proc_21_54_F7F220(var_A6, var_AC, var_100, var_E0, var_C0)
  loc_142DF49:     If (var_A6 = &HFF) Then
  loc_142DF51:       Proc_21_51_142E8EC = 0
  loc_142DF57:     End If
  loc_142DF6A:     var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142DF72:     var_144 = CVar(CLng(0)) 'Long
  loc_142DF90:     var_C0 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_142DF98:     var_E0 = CVar(CLng(0)) 'Long
  loc_142DFB2:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_142DFC0:     var_164 = CVar(CStr((Val(var_B0) + CDbl(1)))) 'String
  loc_142DFC8:     Set var_178 = Me.FGrid
  loc_142DFCE:     LateIdCallSt
  loc_142E002:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142E00A:     var_F0 = CVar(CLng(1)) 'Long
  loc_142E03D:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_142E045:     Set var_178 = Me.FGrid
  loc_142E04B:     LateIdCallSt
  loc_142E07A:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142E082:     var_F0 = CVar(CLng(2)) 'Long
  loc_142E0B5:     var_134 = CVar(CStr(Me.Fields.Item("RevCode").Value)) 'String
  loc_142E0BD:     Set var_178 = Me.FGrid
  loc_142E0C3:     LateIdCallSt
  loc_142E0F2:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142E0FA:     var_F0 = CVar(CLng(3)) 'Long
  loc_142E11C:     var_AC = Me.Fields.Item("TaxStru")
  loc_142E13B:     LateIdCallSt
  loc_142E185:     Set var_8C = Me.Txt
  loc_142E18B:     Call 0.Method_Proc_21_51_142E8EC0 (CInt(0), var_AC, var_B0, CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(var_AC.Value)))
  loc_142E193:     var_F0 = var_AC.Tag
  loc_142E19B:     var_120 = CVar(var_B0) 'String
  loc_142E1A3:     Set var_178 = Me.FGrid
  loc_142E1A9:     LateIdCallSt
  loc_142E1D6:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142E1DE:     var_F0 = CVar(CLng(5)) 'Long
  loc_142E211:     var_134 = CVar(CStr(Me.Fields.Item("TaxInc").Value)) 'String
  loc_142E219:     Set var_178 = Me.FGrid
  loc_142E21F:     LateIdCallSt
  loc_142E24E:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142E256:     var_F0 = CVar(CLng(6)) 'Long
  loc_142E289:     var_134 = CVar(CStr(Me.Fields.Item("Adult").Value)) 'String
  loc_142E291:     Set var_178 = Me.FGrid
  loc_142E297:     LateIdCallSt
  loc_142E2C6:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142E2CE:     var_F0 = CVar(CLng(7)) 'Long
  loc_142E301:     var_134 = CVar(CStr(Me.Fields.Item("Child").Value)) 'String
  loc_142E309:     Set var_178 = Me.FGrid
  loc_142E30F:     LateIdCallSt
  loc_142E33E:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142E346:     var_F0 = CVar(CLng(8)) 'Long
  loc_142E379:     var_134 = CVar(CStr(Me.Fields.Item("ExtraAdult").Value)) 'String
  loc_142E381:     Set var_178 = Me.FGrid
  loc_142E387:     LateIdCallSt
  loc_142E3B6:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142E3BE:     var_F0 = CVar(CLng(9)) 'Long
  loc_142E3F1:     var_134 = CVar(CStr(Me.Fields.Item("ExtraChild").Value)) 'String
  loc_142E3F9:     Set var_178 = Me.FGrid
  loc_142E3FF:     LateIdCallSt
  loc_142E42E:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142E436:     var_F0 = CVar(CLng(&HB)) 'Long
  loc_142E469:     var_134 = CVar(CStr(Me.Fields.Item("PrintOption").Value)) 'String
  loc_142E471:     Set var_178 = Me.FGrid
  loc_142E477:     LateIdCallSt
  loc_142E4A6:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142E4AE:     var_F0 = CVar(CLng(&HC)) 'Long
  loc_142E4E1:     var_134 = CVar(CStr(Me.Fields.Item("PostingMethod").Value)) 'String
  loc_142E4E9:     Set var_178 = Me.FGrid
  loc_142E4EF:     LateIdCallSt
  loc_142E51E:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142E526:     var_F0 = CVar(CLng(&HD)) 'Long
  loc_142E559:     var_134 = CVar(CStr(Me.Fields.Item("ChargeType").Value)) 'String
  loc_142E561:     Set var_178 = Me.FGrid
  loc_142E567:     LateIdCallSt
  loc_142E596:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142E59E:     var_F0 = CVar(CLng(&HE)) 'Long
  loc_142E5D1:     var_134 = CVar(CStr(Me.Fields.Item("FlatRate").Value)) 'String
  loc_142E5D9:     Set var_178 = Me.FGrid
  loc_142E5DF:     LateIdCallSt
  loc_142E60E:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142E616:     var_F0 = CVar(CLng(&H10)) 'Long
  loc_142E649:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_142E651:     Set var_178 = Me.FGrid
  loc_142E657:     LateIdCallSt
  loc_142E686:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142E68E:     var_E0 = CVar(CLng(&H11)) 'Long
  loc_142E693:     var_100 = "0.00"
  loc_142E69D:     Set var_AC = Me.FGrid
  loc_142E6A3:     LateIdCallSt
  loc_142E6B5:   End If
  loc_142E6B8: Else
  loc_142E6BF:   If (var_A0 = CLng(6)) Then
  loc_142E6CF:     Set var_8C = Me.TxtGrid
  loc_142E6D5:     Call 0.Method_Proc_21_51_142E8EC0 (arg_C, var_AC, var_B0, var_AC, var_100, var_E0, var_C0)
  loc_142E6DD:     var_178 = var_AC.Text
  loc_142E6EA:     var_1A4 = Val(var_B0)
  loc_142E735:     var_9C = CVar(var_1A4) 'Double
  loc_142E73C:     var_134 = Format(var_9C, "0.00")
  loc_142E753:     LateIdCallSt
  loc_142E77D:     Call Proc_21_53_F58E80(var_9C, Me.FGrid, CVar(CStr(var_134)), 1, 1, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_142E788:   Else
  loc_142E78F:     If (var_A0 = CLng(&H11)) Then
  loc_142E79F:       Set var_8C = Me.TxtGrid
  loc_142E7A5:       Call 0.Method_Proc_21_51_142E8EC0 (arg_C, var_AC, var_B0, var_1A4, var_134)
  loc_142E7AD:       var_F0 = var_AC.Text
  loc_142E7D0:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142E7E8:       var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_142E815:       var_198 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_142E81D:       Set var_19C = Me.FGrid
  loc_142E823:       LateIdCallSt
  loc_142E84D:     Else
  loc_142E854:       If (var_A0 = CLng(&HA)) Then
  loc_142E894:         Set var_8C = Me.TxtGrid
  loc_142E89A:         Call 0.Method_Proc_21_51_142E8EC0 (arg_C, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_19C, var_198)
  loc_142E8A2:         1 = var_AC.Text
  loc_142E8B1:         var_134 = CVar(CStr(Val(var_B0))) 'String
  loc_142E8B9:         Set var_19C = Me.FGrid
  loc_142E8BF:         LateIdCallSt
  loc_142E8E0:       End If
  loc_142E8E0:     End If
  loc_142E8E0:   End If
  loc_142E8E0: End If
  loc_142E8E5: Proc_21_51_142E8EC = &HFF
End Sub

Public Sub Proc_21_52_F2923C
  'Data Table: 48DC98
  Dim var_BC As Variant
  Dim var_8C As Integer
  Dim var_108 As Variant
  Dim var_86 As Integer
  loc_F29142: var_BC = (Me.rows - 1)
  loc_F2914A: For var_C0 = 1 To CInt(var_BC): var_88 = var_C0 'Integer
  loc_F29163:   var_BC = (Me.rows - 1)
  loc_F2916B:   For var_C4 = var_88 To CInt(var_BC): var_8A = var_C4 'Integer
  loc_F29194:     var_8C = CInt(Val(CStr(Me.TextMatrix)))
  loc_F291BF:     var_108 = CVar(Val(CStr(Me.TextMatrix))) 'Double
  loc_F291E9:     If (arg_10 > Me.TextMatrix) Then
  loc_F2920F:       var_8C = CInt(Val(CStr(Me.TextMatrix)))
  loc_F29218:       Exit For
  loc_F2921B:     End If
  loc_F2921E:   Next var_C4 'Integer
  loc_F29223:   ' Referenced from: F29218
  loc_F29226: Next var_C0 'Integer
  loc_F29231: var_86 = (var_8C + 1)
  loc_F29234: Proc_21_52_F2923C = var_86
End Sub

Public Sub Proc_21_53_F58E80
  'Data Table: 48DC98
  Dim var_A0 As Double
  Dim var_A4 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_118 As TextBox
  loc_F58D65: var_A0 = CDbl(0)
  loc_F58D90: For var_B8 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_96 = var_B8 'Byte
  loc_F58D9B:   var_C8 = CVar(CLng(var_96)) 'Long
  loc_F58DA3:   var_E8 = CVar(CLng(6)) 'Long
  loc_F58DCE:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_F58DD6:     var_C8 = CVar(CLng(var_96)) 'Long
  loc_F58DDE:     var_E8 = CVar(CLng(6)) 'Long
  loc_F58E0A:     var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F58E16:   End If
  loc_F58E19: Next var_B8 'Byte
  loc_F58E56: Set var_A4 = Me.Txt
  loc_F58E5C: Call 0.Method_Proc_21_53_F58E800 (CInt(1), var_118, CStr(Format(var_A0, "0.00")))
  loc_F58E64: var_118.Text = 1
  loc_F58E7A: Proc_21_53_F58E80 = 1
End Sub

Public Sub Proc_21_54_F7F220
  'Data Table: 48DC98
  Dim var_86 As Integer
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As String
  Dim var_E8 As MSHFlexGrid
  Dim var_FC As TextBox
  loc_F7F0E2: var_86 = 0
  loc_F7F10D: For var_A0 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A0 'Byte
  loc_F7F118:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_F7F120:   var_D0 = CVar(CLng(1)) 'Long
  loc_F7F13A:   var_E4 = CStr(Me.FGrid.TextMatrix))
  loc_F7F16D:   If ((var_E4 <> vbNullString) And (CLng(var_88) <> CLng(Me.FGrid.Row))) Then
  loc_F7F175:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_F7F17D:     var_D0 = CVar(CLng(1)) 'Long
  loc_F7F1A6:     Set var_E8 = Me.TxtGrid
  loc_F7F1AC:     Call 0.Method_Proc_21_54_F7F2200 (0, var_FC, var_E4, CStr(Me.FGrid.TextMatrix)), var_D0)
  loc_F7F1B4:     var_B0 = var_FC.Text
  loc_F7F1D1:     If (var_D0 = var_E4) Then
  loc_F7F1F5:       MsgBox("Duplicate Revenue", &H40, "Validation", var_110, var_120)
  loc_F7F20A:       Proc_21_54_F7F220 = &HFF
  loc_F7F210:     End If
  loc_F7F210:   End If
  loc_F7F213: Next var_A0 'Byte
  loc_F7F219: Proc_21_54_F7F220 = 
End Sub

Public Sub Proc_21_55_F58FE4
  'Data Table: 48DC98
  Dim var_94 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_90 As Double
  Dim var_FC As TextBox
  Dim var_86 As Integer
  loc_F58EED: For var_A8 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A8 'Integer
  loc_F58EF7:   var_B8 = CVar(CLng(var_88)) 'Long
  loc_F58EFF:   var_D8 = CVar(CLng(&H11)) 'Long
  loc_F58F2B:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F58F3A: Next var_A8 'Integer
  loc_F58F5A: If (Me.Check1.Value = 1) Then
  loc_F58F6B:   Set var_94 = Me.Txt
  loc_F58F71:   Call 0.Method_Proc_21_55_F58FE40 (CInt(3), var_FC)
  loc_F58F90:   var_90 = (var_90 + Val(var_FC.Text))
  loc_F58F9D: End If
  loc_F58FA4: If (var_90 = CDbl(&H64)) Then
  loc_F58FA9:   var_86 = &HFF
  loc_F58FAF: Else
  loc_F58FC8:   MsgBox("Please enter valid Percent Rate", 0, var_10C, var_11C, var_12C)
  loc_F58FDA:   var_86 = 0
  loc_F58FDD: End If
  loc_F58FDD: Proc_21_55_F58FE4 = var_86
End Sub
