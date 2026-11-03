VERSION 5.00
Begin VB.Form TravelAgencyPost
  Caption = "Travel Agency Posting"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11670
  ClientHeight = 7185
  LockControls = -1  'True
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin CommandButton CmdFill
    Caption = "&Fill"
    Left = 7140
    Top = 630
    Width = 1125
    Height = 780
    TabIndex = 6
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
  Begin DataGrid DGTravel
    Left = 5985
    Top = 2775
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 0
    Left = 6540
    Top = 645
    Width = 420
    Height = 255
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 21
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
  Begin TextBox Txt
    Index = 1
    Left = 1560
    Top = 630
    Width = 1155
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 8
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 2865
    Top = 4545
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    Left = 1560
    Top = 900
    Width = 3990
    Height = 240
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin TextBox Txt
    Index = 5
    Left = 4260
    Top = 1155
    Width = 1290
    Height = 240
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 2
    Left = 4305
    Top = 645
    Width = 1245
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 4
    Left = 1560
    Top = 1155
    Width = 1290
    Height = 240
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11670
    Height = 375
    TabIndex = 0
  End
  Begin MSHFlexGrid FGrid
    Left = -45
    Top = 1635
    Width = 11700
    Height = 4830
    TabIndex = 10
  End
  Begin Label Label1
    Caption = "DOC ID"
    Index = 7
    ForeColor = &H0&
    Left = 5775
    Top = 660
    Width = 615
    Height = 240
    Visible = 0   'False
    TabIndex = 17
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Sr.No"
    Index = 1
    ForeColor = &H0&
    Left = 285
    Top = 630
    Width = 480
    Height = 240
    TabIndex = 16
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 2775
    Top = 630
    Width = 690
    Height = 240
    TabIndex = 15
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
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
  Begin Label LblName
    Caption = "Date"
    Index = 2
    ForeColor = &H0&
    Left = 3540
    Top = 630
    Width = 390
    Height = 240
    TabIndex = 14
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Travel Agency"
    Index = 5
    ForeColor = &H0&
    Left = 285
    Top = 900
    Width = 1215
    Height = 240
    TabIndex = 13
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "To Date"
    Index = 4
    ForeColor = &H0&
    Left = 3540
    Top = 1200
    Width = 675
    Height = 240
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "From Date"
    Index = 1
    ForeColor = &H0&
    Left = 285
    Top = 1185
    Width = 900
    Height = 240
    TabIndex = 11
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "TravelAgencyPost"

Private global_64 As Integer
Private global_72 As Integer
Private global_74 As Integer

Private Sub TopCtrl1_UnknownEvent_11 'EB1130
  'Data Table: 47CDE4
  Dim var_94 As TextBox
  loc_EB109C: On Error Goto loc_EB1128
  loc_EB10C2: Call Proc_78_41_E7920C(Proc_5_1_100CB50("ADD", Me))
  loc_EB10CD: Call Proc_78_39_F1C2FC(global_52)
  loc_EB10E5: Set var_8C = Me.Txt
  loc_EB10EB: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2), var_94)
  loc_EB10F3: var_94.Text = CStr(MemVar_1F920EC)
  loc_EB110D: Set var_8C = Me.Txt
  loc_EB1113: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2))
  loc_EB111B: var_94.SetFocus
  loc_EB1127: Exit Sub
  loc_EB1128: ' Referenced from: EB109C
  loc_EB1128: Proc_6_60_E62BC4(var_94)
  loc_EB112D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E80E34
  'Data Table: 47CDE4
  loc_E80DD8: On Error Goto loc_E80DEE
  loc_E80DE9: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_E80DEC:   Exit Sub
  loc_E80DED: End If
  loc_E80DED: Exit Sub
  loc_E80DEE: ' Referenced from: E80DD8
  loc_E80DF6: Set var_88 = Err()
  loc_E80DFC: Call 0.Method_arg_2C (var_8C)
  loc_E80E1D: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_DC, var_FC)
  loc_E80E30: Exit Sub
  loc_E80E31: StAryRecMove
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '12513BC
  'Data Table: 47CDE4
  Dim var_96 As Integer
  Dim unk_47CDF6 As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_130 As String
  Dim var_B8 As Variant
  loc_1250E8C: On Error Goto loc_1251362
  loc_1250E9D: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_1250EA0:   Exit Sub
  loc_1250EA1: End If
  loc_1250ED8: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_1250EE9:   unk_47CDF6.BeginTrans var_11C
  loc_1250EFF:   var_94 = Me.Bookmark 'Variant
  loc_1250F21:   Set var_120 = Me.Txt
  loc_1250F27:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124, var_128, "Delete From Travel1 Where DocID='")
  loc_1250F2F:   var_B8 = var_124.Text
  loc_1250F38:   var_12C = -1 & var_128
  loc_1250F48:   unk_47CDF6.Execute var_12C & "'", var_134, &HFF
  loc_1250F70:   Set var_120 = Me.Txt
  loc_1250F76:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124)
  loc_1250F88:   var_168 = 0
  loc_1250F9B:   var_160 = 0
  loc_1250FA6:   var_15C = 0
  loc_1250FD7:   var_148 = 0
  loc_1251016:   var_128 = "Travel1"
  loc_125101F:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "DocID", &HC8, var_124.Text, 0, 0, 0)
  loc_1251062:   Set var_120 = Me.Txt
  loc_1251068:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124, var_128, "Delete From Travel2 Where DocID='", var_B8, -1, var_134)
  loc_1251070:   var_148 = var_124.Text
  loc_1251080:   var_130 = 0 & var_128 & "'"
  loc_1251089:   unk_47CDF6.Execute var_130, 0, 0
  loc_12510B1:   Set var_120 = Me.Txt
  loc_12510B7:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124, var_130)
  loc_12510BF:   0 = var_124.Text
  loc_12510C9:   var_168 = 0
  loc_12510DC:   var_160 = 0
  loc_12510E7:   var_15C = 0
  loc_1251118:   var_148 = 0
  loc_1251157:   var_128 = "Travel2"
  loc_1251160:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "DocID", &HC8, var_130, 0, 0, 0)
  loc_12511A3:   Set var_120 = Me.Txt
  loc_12511A9:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124, var_128, "Delete From Ledger Where DocID='", var_B8, -1, var_134)
  loc_12511B1:   var_148 = var_124.Text
  loc_12511C1:   var_130 = 0 & var_128 & "'"
  loc_12511CA:   unk_47CDF6.Execute var_130, 0, 0
  loc_12511F2:   Set var_120 = Me.Txt
  loc_12511F8:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124, var_130)
  loc_1251200:   0 = var_124.Text
  loc_125120A:   var_168 = 0
  loc_125121D:   var_160 = 0
  loc_1251228:   var_15C = 0
  loc_125123B:   var_154 = 0
  loc_1251246:   var_150 = 0
  loc_1251259:   var_148 = 0
  loc_1251298:   var_128 = "Ledger"
  loc_12512A1:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "DocID", &HC8, var_130, 0, 0, 0)
  loc_12512CC:   unk_47CDF6.CommitTrans
  loc_12512D3:   var_96 = 0
  loc_12512E1:   Me.Requery -1
  loc_1251301:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_125130E:     Me.Bookmark = var_94
  loc_1251316:   Else
  loc_125132A:     If (Me.EOF = 0) Then
  loc_1251333:       Me.MoveLast
  loc_1251338:     End If
  loc_1251338:   End If
  loc_1251338:   Call Proc_78_40_137D738(var_96, var_148, 0, var_150, var_154)
  loc_1251359:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_1251361: End If
  loc_1251361: Exit Sub
  loc_1251362: ' Referenced from: 1250E8C
  loc_1251368: If (var_96 = &HFF) Then
  loc_1251371:   unk_47CDF6.RollbackTrans
  loc_1251376: End If
  loc_125137E: Set var_120 = Err()
  loc_1251384: Call 0.Method_arg_2C (var_128, 0, var_15C)
  loc_12513A5: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_12513B8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E17E94
  'Data Table: 47CDE4
  loc_E17E89: Me.Global.Unload Me
  loc_E17E91: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E35358
  'Data Table: 47CDE4
  loc_E35348: Proc_5_0_110649C(&HFF, Me)
  loc_E35350: Call Proc_78_40_137D738(global_52)
  loc_E35355: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E35238
  'Data Table: 47CDE4
  loc_E35228: Proc_5_0_110649C(&HFF, Me)
  loc_E35230: Call Proc_78_40_137D738(global_52)
  loc_E35235: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E35298
  'Data Table: 47CDE4
  loc_E35288: Proc_5_0_110649C(&HFF, Me)
  loc_E35290: Call Proc_78_40_137D738(global_52)
  loc_E35295: Exit Sub
  loc_E35296: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E352F8
  'Data Table: 47CDE4
  loc_E352E8: Proc_5_0_110649C(&HFF, Me)
  loc_E352F0: Call Proc_78_40_137D738(global_52)
  loc_E352F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '15CC4F4
  'Data Table: 47CDE4
  Dim var_86 As Integer
  Dim unk_47CDF6 As Connection15
  Dim var_A0 As Double
  Dim var_A8 As Variant
  Dim var_BC As String
  Dim var_C0 As String
  Dim var_D0 As Variant
  Dim var_100 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_14C As String
  Dim var_AC As Variant
  Dim var_174 As String
  Dim var_16C As Variant
  Dim var_178 As String
  Dim var_17C As String
  Dim var_120 As Variant
  Dim var_E0 As Variant
  Dim var_140 As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1BC As Variant
  Dim var_110 As Variant
  Dim var_234 As Variant
  Dim var_23C As Variant
  Dim var_260 As Variant
  Dim var_2B0 As Variant
  Dim var_2C0 As Variant
  Dim var_320 As Variant
  Dim var_350 As Variant
  Dim var_380 As Variant
  Dim var_390 As Variant
  Dim var_6D8 As Double
  Dim var_168 As Variant
  Dim var_180 As TextBox
  Dim var_6E0 As Double
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_3D0 As Variant
  Dim var_1F0 As MSHFlexGrid
  Dim var_214 As Variant
  Dim var_414 As Variant
  Dim var_434 As Variant
  Dim var_1F4 As Variant
  Dim var_478 As Variant
  Dim var_498 As Variant
  Dim var_238 As MSHFlexGrid
  Dim var_700 As Double
  Dim var_708 As Double
  Dim var_3B8 As String
  Dim var_300 As Variant
  Dim var_240 As String
  Dim var_8C As Recordset15
  loc_15CB2D0: On Error Goto loc_15CC4D8
  loc_15CB2DE: Set var_A4 = Me.Txt
  loc_15CB2E4: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2))
  loc_15CB30D: If (Proc_6_27_EA565C(var_A8, "Date") = 0) Then
  loc_15CB310:   Exit Sub
  loc_15CB311: End If
  loc_15CB31C: Set var_A4 = Me.Txt
  loc_15CB322: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A8)
  loc_15CB32A: var_B0 = "Vr No"
  loc_15CB333: Set var_AC = var_A8
  loc_15CB34B: If (Proc_6_27_EA565C(var_AC, var_B0) = 0) Then
  loc_15CB34E:   Exit Sub
  loc_15CB34F: End If
  loc_15CB352: Call Proc_78_44_10A40E4(var_B2)
  loc_15CB35D: If (var_B2 = 0) Then
  loc_15CB360:   Exit Sub
  loc_15CB361: End If
  loc_15CB36F: unk_47CDF6.BeginTrans var_B8
  loc_15CB398: Set var_A4 = Me.Txt
  loc_15CB39E: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_B0, "Delete From Travel1 Where DocID='", var_E0)
  loc_15CB3A6: -1 = var_A8.Text
  loc_15CB3BF: unk_47CDF6.Execute var_AC & var_B0 & "'", CDbl(0), &HFF
  loc_15CB3F7: Set var_A4 = Me.Txt
  loc_15CB3FD: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_B0, "Delete From Travel2 Where DocID='")
  loc_15CB405: var_E0 = var_A8.Text
  loc_15CB40E: var_BC = -1 & var_B0
  loc_15CB41E: unk_47CDF6.Execute var_AC & var_B0 & "'", var_AC, var_A8
  loc_15CB456: Set var_A4 = Me.Txt
  loc_15CB45C: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_B0, "Delete From Ledger Where DocID='")
  loc_15CB464: var_E0 = var_A8.Text
  loc_15CB46D: var_BC = -1 & var_B0
  loc_15CB47D: unk_47CDF6.Execute var_AC & var_B0 & "'", var_AC, 
  loc_15CB4B4: Proc_6_17_EAA2B0(var_E0, MemVar_1F92078, "Select CommissionAc From Enviro Where CommissionAc IS NOT NULL AND CommissionAc<>'' AND LOGSITE_CODE=")
  loc_15CB4CA: unk_47CDF6.Execute CStr(var_120 & var_E0), -1, var_A4
  loc_15CB4DB: Set global_80 = var_A4
  loc_15CB509: If (Me.RecordCount > 0) Then
  loc_15CB529:   var_A8 = Me.Fields.Item("CommissionAc")
  loc_15CB540:   global_76 = CStr(var_A8.Value)
  loc_15CB551: End If
  loc_15CB55C: If (global_76 = vbNullString) Then
  loc_15CB56A:   var_100 = "Information"
  loc_15CB580:   MsgBox("Please Set CommissionAC in Enviro", &H40, var_100, var_120, var_140)
  loc_15CB590:   Exit Sub
  loc_15CB591: End If
  loc_15CB59F: var_BC = "Insert Into Travel1(DocID,VType,VPrefix,Site_Code,VNo,VDate," & "FromDate,ToDate,TravelAgency," & "U_Name,U_EntDt,U_AE,LogSite_Code) "
  loc_15CB5B7: Set var_A4 = Me.Txt
  loc_15CB5BD: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8)
  loc_15CB5C5: var_C0 = var_A8.Text
  loc_15CB625: Set var_168 = Me.Txt
  loc_15CB62B: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_16C)
  loc_15CB646: var_17C = var_BC & " Values('" & var_C0 & "','" & global_60 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070 & "'," & CStr(Val(var_16C.Text))
  loc_15CB65B: Set var_180 = Me.Txt
  loc_15CB661: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_184)
  loc_15CB669: var_E0 = CVar(var_184) 'Address
  loc_15CB670: Proc_6_7_F25D88(var_100, var_E0)
  loc_15CB699: Set var_1A8 = Me.Txt
  loc_15CB69F: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_1AC)
  loc_15CB6AE: Proc_6_7_F25D88(var_1CC, CVar(var_1AC))
  loc_15CB6CE: Set var_1F0 = Me.Txt
  loc_15CB6D4: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_1F4)
  loc_15CB6E3: Proc_6_7_F25D88(var_214, CVar(var_1F4))
  loc_15CB706: Set var_238 = Me.Txt
  loc_15CB70C: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_23C)
  loc_15CB714: var_240 = var_23C.Tag
  loc_15CB73B: var_2C0 = CVar(var_17C & ",") & var_100 & "," & vbNullString & var_1CC & "," & var_214 & ",'" & CVar(var_240) & "'," & "'" & CVar(MemVar_1F920C8) 
  loc_15CB756: Proc_6_7_F25D88(var_300, Date)
  loc_15CB81F: unk_47CDF6.Execute CStr(var_2C0 & "'," & var_300 & ",'" & "A" & "','" & CVar(MemVar_1F92078) & "')"), var_E0, -1
  loc_15CB84F: For var_3B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_96 = var_3B4 'Integer
  loc_15CB859:   var_D0 = CVar(CLng(var_96)) 'Long
  loc_15CB861:   var_110 = CVar(CLng(2)) 'Long
  loc_15CB881:   var_120 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_15CB8A8:   Set var_A8 = Me.FGrid
  loc_15CB8E2:   If CBool(CVar(CLng(8)) And (CStr(var_A8.TextMatrix)) = "Y")) Then
  loc_15CB8F3:     Set var_A4 = Me.Txt
  loc_15CB8F9:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_C0, CVar(CLng(var_96)), (var_120 <> vbNullString))
  loc_15CB901:     var_110 = var_A8.Text
  loc_15CB90A:     var_D0 = CVar(CLng(var_96)) 'Long
  loc_15CB934:     var_6D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15CB93E:     Set var_168 = Me.LblVPrefix
  loc_15CB957:     Set var_16C = Me.Txt
  loc_15CB95D:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_180, var_240, var_6D8, CVar(CLng(0)))
  loc_15CB972:     var_6E0 = Val(var_240)
  loc_15CB980:     Set var_184 = Me.Txt
  loc_15CB986:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_1A8, var_6E0)
  loc_15CB98E:     var_100 = CVar(var_1A8) 'Address
  loc_15CB995:     Proc_6_7_F25D88(var_120, var_100, var_180.Text)
  loc_15CB99E:     var_2B0 = CVar(CLng(var_96)) 'Long
  loc_15CB9A6:     var_320 = CVar(CLng(1)) 'Long
  loc_15CB9AF:     Set var_1AC = Me.FGrid
  loc_15CB9C5:     var_380 = CVar(CLng(var_96)) 'Long
  loc_15CB9CD:     var_3D0 = CVar(CLng(3)) 'Long
  loc_15CB9DC:     var_214 = Me.FGrid.TextMatrix)
  loc_15CB9F6:     var_414 = CVar(CLng(var_96)) 'Long
  loc_15CB9FE:     var_434 = CVar(CLng(4)) 'Long
  loc_15CBA07:     Set var_1F4 = Me.FGrid
  loc_15CBA27:     var_478 = CVar(CLng(var_96)) 'Long
  loc_15CBA2F:     var_498 = CVar(CLng(5)) 'Long
  loc_15CBA82:     var_700 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15CBAB3:     var_708 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15CBAC4:     Proc_6_7_F25D88(var_5F8, Date, var_708, CVar(CLng(6)), CVar(CLng(var_96)), var_700, CVar(CLng(7)), CVar(CLng(var_96)))
  loc_15CBAE4:     var_BC = "Insert Into Travel2(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate," & "Guest,NoDays,RoomRate,Total,Commission,CommPer," & "U_Name,U_EntDt,U_AE,LogSite_Code) Values ("
  loc_15CBB39:     var_3B8 = var_BC & "'" & var_C0 & "'," & CStr(var_6D8) & ",'" & global_60 & "','" & var_168.Caption & "','" & MemVar_1F92070 & "',"
  loc_15CBB64:     var_1BC = CVar(var_3B8 & CStr(var_6E0) & ",") & var_120 & "," & "'" 
  loc_15CBB97:     var_260 = var_1BC & CVar(CStr(var_1AC.TextMatrix))) & "'," & CVar(Val(CStr(var_214))) & "," & CVar(Val(CStr(var_1F4.TextMatrix)))) 
  loc_15CBBBF:     var_300 = var_260 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_700) 
  loc_15CBBE5:     var_390 = var_300 & "," & CVar(var_708) & "," & "'" 
  loc_15CBC3B:     unk_47CDF6.Execute CStr(var_390 & CVar(MemVar_1F920C8) & "'," & var_5F8 & ",'" & "A" & "','" & CVar(MemVar_1F92078) & "')"), var_6CC, -1
  loc_15CBCE9:     var_D0 = CVar(CLng(var_96)) 'Long
  loc_15CBCF1:     var_110 = CVar(CLng(7)) 'Long
  loc_15CBD1D:     var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_15CBD29:   End If
  loc_15CBD2C: Next var_3B4 'Integer
  loc_15CBD3F: Set var_A4 = Me.Txt
  loc_15CBD45: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8)
  loc_15CBD4D: var_B0 = var_A8.Text
  loc_15CBD60: Set var_AC = Me.Txt
  loc_15CBD66: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_168)
  loc_15CBD9B: Set var_180 = Me.Txt
  loc_15CBDA1: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_184)
  loc_15CBDB0: Proc_6_7_F25D88(var_100, CVar(var_184))
  loc_15CBDC3: Set var_1A8 = Me.Txt
  loc_15CBDC9: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_1AC)
  loc_15CBDD1: var_178 = var_1AC.Tag
  loc_15CBDD9: var_1A4 = CVar(var_178) 'String
  loc_15CBDDF: Proc_6_17_EAA2B0(var_1BC, var_1A4)
  loc_15CBDF2: Proc_6_17_EAA2B0(var_214, global_76)
  loc_15CBE05: Set var_1F0 = Me.Txt
  loc_15CBE0B: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_1F4)
  loc_15CBE1B: Proc_6_104_ED5D18(var_300)
  loc_15CBE34: var_BC = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,LogSite_COde) " & " VALUES ('"
  loc_15CBE7B: var_174 = var_BC & var_B0 & "',1,'" & global_60 & "'," & CStr(Val(var_168.Text)) & ",'" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070
  loc_15CBEC5: var_234 = CVar(var_174 & "',") & var_100 & "," & var_1BC & "," & CVar(CDbl(0)) & ",0," & var_214 & ",'Travel Agency Posting From Date " 
  loc_15CBF18: var_350 = var_234 & CVar(var_1F4.Text) & " To Date " & 5 & "','" & CVar(MemVar_1F920C8) & "'," & var_300 & ",'A','" & CVar(MemVar_1F92078) 
  loc_15CBF2F: unk_47CDF6.Execute CStr(var_350 & "')"), var_390, -1
  loc_15CBFB5: Set var_A4 = Me.Txt
  loc_15CBFBB: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_B0)
  loc_15CBFD6: Set var_AC = Me.Txt
  loc_15CBFDC: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_168)
  loc_15CBFE4: var_14C = var_168.Text
  loc_15CBFF1: var_6D8 = Val(var_14C)
  loc_15CC011: Set var_180 = Me.Txt
  loc_15CC017: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_184)
  loc_15CC026: Proc_6_7_F25D88(var_100, CVar(var_184))
  loc_15CC039: Proc_6_17_EAA2B0(var_1A4, global_76)
  loc_15CC04C: Set var_1A8 = Me.Txt
  loc_15CC052: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_1AC, var_178)
  loc_15CC05A: var_6D8 = var_1AC.Tag
  loc_15CC068: Proc_6_17_EAA2B0(var_214, CVar(var_178))
  loc_15CC07B: Set var_1F0 = Me.Txt
  loc_15CC081: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_1F4)
  loc_15CC091: Proc_6_104_ED5D18(var_300)
  loc_15CC0AA: var_BC = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,LogSIte_Code) " & " VALUES ('"
  loc_15CC0F8: var_120 = CVar(var_BC & var_B0 & "',2,'" & global_60 & "'," & CStr(var_6D8) & ",'" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070 & "',") 'String
  loc_15CC145: var_260 = var_120 & var_100 & "," & var_1A4 & ",0," & CVar(CDbl(0)) & "," & var_214 & ",'Travel Agency Posting From Date " & CVar(var_1F4.Text) 
  loc_15CC1A5: unk_47CDF6.Execute CStr(var_260 & " To Date " & 5 & "','" & CVar(MemVar_1F920C8) & "'," & var_300 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_390, -1
  loc_15CC221: Set var_A4 = Me.TopCtrl1
  loc_15CC227: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_A8.Text)
  loc_15CC23C: If (var_6D8 = "Add") Then
  loc_15CC253:   var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_15CC279:   var_120 = CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_15CC28A:   Set var_A4 = Me.Txt
  loc_15CC290:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_A8, var_14C, var_120)
  loc_15CC298:   var_1A4 = var_A8.Text
  loc_15CC2A6:   Proc_6_7_F25D88(var_100, CVar(var_14C))
  loc_15CC2AE:   var_140 = -1 & var_100 
  loc_15CC2B7:   var_194 = var_120 & var_100 & " Order By VP.Date_From DESC" 
  loc_15CC2C5:   unk_47CDF6.Execute CStr(var_194), var_AC, 
  loc_15CC2D0:   Set var_8C = var_AC
  loc_15CC30E:   If (var_8C.RecordCount > 0) Then
  loc_15CC31F:     Set var_A4 = Me.Txt
  loc_15CC325:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A8)
  loc_15CC32D:     var_B0 = var_A8.Text
  loc_15CC33A:     var_6D8 = Val(var_B0)
  loc_15CC340:     var_D0 = "Date_From"
  loc_15CC363:     Proc_6_7_F25D88(var_100, CVar(var_8C.Fields.Item(var_D0)))
  loc_15CC396:     var_14C = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_6D8) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_15CC3C9:     unk_47CDF6.Execute CStr(CVar(var_14C & MemVar_1F92078 & "') and V_Type='" & global_60 & "' and Date_From=") & var_100), var_194, -1
  loc_15CC3FD:   End If
  loc_15CC3FD: End If
  loc_15CC403: unk_47CDF6.CommitTrans
  loc_15CC416: Set var_A4 = Me.Txt
  loc_15CC41C: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A8, var_B0)
  loc_15CC424: var_16C = var_A8.Text
  loc_15CC438: var_86 = 0
  loc_15CC446: Me.Requery -1
  loc_15CC470: Me.Find "SearchCode ='" & "SearchCode ='" & var_B0 & "'", 0, 1
  loc_15CC480: Set var_A4 = Me.TopCtrl1
  loc_15CC486: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_D0)
  loc_15CC49B: If (var_86 = "Add") Then
  loc_15CC49E:   Call TopCtrl1_UnknownEvent_11()
  loc_15CC4A3:   Exit Sub
  loc_15CC4A4: End If
  loc_15CC4C7: Call Proc_78_41_E7920C(Proc_5_1_100CB50("INI", Me), global_52)
  loc_15CC4D2: Call Proc_78_40_137D738(var_6D8)
  loc_15CC4D7: Exit Sub
  loc_15CC4D8: ' Referenced from: 15CB2D0
  loc_15CC4DE: If (var_86 = &HFF) Then
  loc_15CC4E7:   unk_47CDF6.RollbackTrans
  loc_15CC4EC: End If
  loc_15CC4EC: Proc_6_60_E62BC4()
  loc_15CC4F1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'E9A9C8
  'Data Table: 47CDE4
  loc_E9A950: On Error Goto loc_E9A9C1
  loc_E9A98A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9A9B0:   Call Proc_78_41_E7920C(Proc_5_1_100CB50("INI", Me))
  loc_E9A9BB:   Call Proc_78_40_137D738(global_52)
  loc_E9A9C0: End If
  loc_E9A9C0: Exit Sub
  loc_E9A9C1: ' Referenced from: E9A950
  loc_E9A9C1: Proc_6_60_E62BC4()
  loc_E9A9C6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EC79DC
  'Data Table: 47CDE4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EC793C: On Error Goto loc_EC79D4
  loc_EC7956: If (Me.RecordCount <= 0) Then
  loc_EC795F:   var_B8 = "Information"
  loc_EC797A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC798A:   Exit Sub
  loc_EC798B: End If
  loc_EC7992: var_10C = "Select DocID as SearchCode,VNo,VDate,SG.NAME AS TRAVELAGENCY,FromDate,ToDate From Travel1 T1 Inner Join SubGroup SG ON T1.TRAVELAGENCY=SG.SUBCODE Where (T1.LOGSITE_CODE='" & MemVar_1F92078
  loc_EC7999: MemVar_1F920E4 = var_10C & "' or T1.LOGSITE_CODE='HO') Order by DocID,VNo"
  loc_EC79A9: Proc_6_126_F1BCC0("1000,1200,3500,1500,1500,1500,1500")
  loc_EC79B7: MemVar_1F92120 = Me
  loc_EC79CE: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC79D3: Exit Sub
  loc_EC79D4: ' Referenced from: EC793C
  loc_EC79D4: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC79D9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E21DD4
  'Data Table: 47CDE4
  Dim Me As Recordset15
  loc_E21DBB: Me.Requery -1
  loc_E21DCB: Me.Requery -1
  loc_E21DD0: Exit Sub
End Sub

Private Sub Form_Load() '11341E0
  'Data Table: 47CDE4
  Dim var_98 As TextBox
  Dim var_AC As Variant
  Dim var_C0 As DataGrid
  Dim var_C4 As TextBox
  Dim var_CC As DataGrid
  Dim var_E0 As Variant
  Dim Me As Recordset15
  Dim unk_47CDF6 As Connection15
  loc_1133E6C: On Error Goto loc_11341D7
  loc_1133E7B: Set var_8C = Me.Txt
  loc_1133E81: Call 0.Method_Form_LoadC (var_8E, var_86)
  loc_1133E8F: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_1133EA4:   Set var_8C = Me.Txt
  loc_1133EAA:   Call 0.Method_Form_Load0 (var_86, var_98)
  loc_1133EB2:   var_98.BackColor = -2147483643
  loc_1133ECD:   Set var_8C = Me.Txt
  loc_1133ED3:   Call 0.Method_Form_Load0 (var_86, var_98)
  loc_1133EDB:   var_98.ForeColor = &HC00000
  loc_1133EF6:   Set var_8C = Me.Txt
  loc_1133EFC:   Call 0.Method_Form_Load0 (var_86, var_98)
  loc_1133F04:   var_98.BackColor = -2147483643
  loc_1133F1F:   Set var_8C = Me.Txt
  loc_1133F25:   Call 0.Method_Form_Load0 (var_86, var_98)
  loc_1133F2D:   var_98.ForeColor = &HC00000
  loc_1133F3C: Next var_92 'Integer
  loc_1133F4F: Set var_8C = Me.Txt
  loc_1133F55: Call 0.Method_Form_Load0 (CInt(3), var_98)
  loc_1133F74: Me.DGTravel.Left = CVar(var_98.Left)
  loc_1133F90: Set var_C0 = Me.Txt
  loc_1133F96: Call 0.Method_Form_Load0 (CInt(3), var_C4)
  loc_1133FB1: Set var_8C = Me.Txt
  loc_1133FB7: Call 0.Method_Form_Load0 (CInt(3), var_98)
  loc_1133FCF: var_AC = CVar(((var_98.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_1133FD8: Set var_CC = Me.DGTravel
  loc_1133FDE: var_CC.Top = CVar(var_98.Left)
  loc_1133FFA: Set global_56 = New 
  loc_113400C: Me.var_CC.CursorLocation = 3
  loc_1134036: var_E0 = CVar("Select SubCode As Code,Name From Subgroup where ActiveYN=1 And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and CompanyType like ('Travel Agency') Order by Name") 'String
  loc_1134054: CVarUnk
  loc_1134059: VerifyVarObj
  loc_113405F: Set var_8C = Me.DGTravel
  loc_1134065: LateIdStAd
  loc_113407D: Set global_52 = New 
  loc_113408F: Me.DGTravel.CursorLocation = 3
  loc_11340B9: var_E0 = CVar("Select DocID as SearchCode,DocID,Site_Code,LogSite_Code From Travel1 Where LOGSITE_CODE='" & MemVar_1F92078 & "' Order by DocID") 'String
  loc_11340C3: r_E0, CVar(MemVar_1F92044), 2 var_E0, CVar(MemVar_1F92044), 2
  loc_11340D4: global_60 = "PRAP"
  loc_11340F5: Proc_6_17_EAA2B0(var_E0, MemVar_1F92078, "Select CommissionAc From Enviro Where CommissionAc IS NOT NULL AND CommissionAc<>'' AND LOGSITE_CODE=", var_110, -1, var_8C)
  loc_113410B: unk_47CDF6.Execute CStr(3 & var_E0), -1, var_8C
  loc_113411C: Set global_80 = var_8C
  loc_113414A: If (Me.RecordCount <= 0) Then
  loc_113416E:   MsgBox("Please Set CommissionAC in Enviro", &H40, "Information", var_110, var_130)
  loc_113417E: End If
  loc_11341A1: Call Proc_78_41_E7920C(Proc_5_1_100CB50("INI", Me, global_52), global_56)
  loc_11341C4: Proc_6_23_DFBA28(Me, 7590, 9200)
  loc_11341CC: Call Proc_78_43_116820C(3)
  loc_11341D1: Call Proc_78_40_137D738(-1)
  loc_11341D6: Exit Sub
  loc_11341D7: ' Referenced from: 1133E6C
  loc_11341D7: Proc_6_60_E62BC4()
  loc_11341DC: Exit Sub
  loc_11341DE: CExtInstUnk
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E56698
  'Data Table: 47CDE4
  loc_E56663: Set global_56 = Nothing
  loc_E56675: Set global_80 = Nothing
  loc_E56687: Set global_52 = Nothing
  loc_E56693: global_64 = 0
  loc_E56696: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A01C
  'Data Table: 47CDE4
  loc_E29FF4: On Error Goto loc_E2A014
  loc_E2A00B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2A013: Exit Sub
  loc_E2A014: ' Referenced from: E29FF4
  loc_E2A014: Proc_6_60_E62BC4(Shift)
  loc_E2A019: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F07F90
  'Data Table: 47CDE4
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F07EBC: Call Proc_78_42_E53A9C()
  loc_F07ED4: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F07EDD: Set var_9C = Me.FGrid
  loc_F07F13: Set var_104 = Me.TxtGrid
  loc_F07F19: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F07F21: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_F07F52: var_110 = CLng(Me.FGrid.Col)
  loc_F07F62: If (var_110 = CLng(6)) Then
  loc_F07F74:   Set var_88 = Me.TxtGrid
  loc_F07F7A:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C, 5)
  loc_F07F82:   var_9C.MaxLength = var_110
  loc_F07F8E: End If
  loc_F07F8E: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'FA6338
  'Data Table: 47CDE4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  loc_FA61B4: On Error Goto loc_FA6331
  loc_FA61C1: If (CLng(Shift) = &H1B) Then
  loc_FA61D1:   Set var_88 = Me.TxtGrid
  loc_FA61D7:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_FA61F1:   Set var_94 = Me.TxtGrid
  loc_FA61F7:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_FA61FF:   var_98.Text = var_8C.Tag
  loc_FA621B:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_FA6220:   Call Proc_78_42_E53A9C(arg_14)
  loc_FA6229:   Set var_88 = Me.FGrid
  loc_FA6246:   Set var_88 = Me.TxtGrid
  loc_FA624C:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_FA6254:   var_8C.Visible = False
  loc_FA6260:   Exit Sub
  loc_FA6261: End If
  loc_FA6284: If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_FA62C7:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_FA62D0:     Call Proc_78_38_FFCF58(KeyCode, var_AE)
  loc_FA62DB:     If (var_AE = &HFF) Then
  loc_FA6321:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, 8)
  loc_FA6331:       ' Referenced from: FA61B4
  loc_FA6331:     End If
  loc_FA6331:   End If
  loc_FA6331: End If
  loc_FA6331: Proc_6_60_E62BC4(0, 0, 0)
  loc_FA6336: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E96A00
  'Data Table: 47CDE4
  Dim var_8C As MSHFlexGrid
  loc_E9698B: Proc_6_58_E054C0(arg_10)
  loc_E9699C: If (KeyAscii = 0) Then
  loc_E969C2:   If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_E969CF:     Set var_8C = Me.TxtGrid
  loc_E969D5:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_E969F0:     Proc_6_42_129A86C(var_A4, arg_10, 2)
  loc_E969FC:   End If
  loc_E969FC: End If
  loc_E969FC: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E34DB4
  'Data Table: 47CDE4
  Dim var_9C As Long
  loc_E34D8C: On Error Goto loc_E34DAC
  loc_E34DA2: var_9C = CLng(Me.FGrid.Col)
  loc_E34DAB: Exit Sub
  loc_E34DAC: ' Referenced from: E34D8C
  loc_E34DAC: Proc_6_60_E62BC4(var_9C)
  loc_E34DB1: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21F24
  'Data Table: 47CDE4
  Dim arg_10 As Integer
  loc_E21F0C: If (Cancel = 0) Then
  loc_E21F15:   Call Proc_78_38_FFCF58(Cancel, var_88)
  loc_E21F1E:   arg_10 = Not(var_88)
  loc_E21F21: End If
  loc_E21F21: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FF20D0
  'Data Table: 47CDE4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D8 As Variant
  loc_FF1EFA: Set var_88 = Me.Txt
  loc_FF1F00: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FF1F0E: Proc_6_74_E226B0(var_8C)
  loc_FF1F1A: Call Proc_78_42_E53A9C(var_8C)
  loc_FF1F22: var_92 = Index
  loc_FF1F2D: If Not (var_92 = CInt(1)) Then
  loc_FF1F38:   If Not (var_92 = CInt(2)) Then
  loc_FF1F43:     If Not (var_92 = CInt(4)) Then
  loc_FF1F4E:       If (var_92 = CInt(5)) Then
  loc_FF1F51:       End If
  loc_FF1F51:     End If
  loc_FF1F51:   End If
  loc_FF1F59:   var_98 = "{Home}+{End}"
  loc_FF1F5F:   Proc_303_0_FB9B68(var_98, 0)
  loc_FF1F6A: Else
  loc_FF1F72:   If (var_92 = CInt(3)) Then
  loc_FF1FC3:     Set var_88 = Me.Txt
  loc_FF1FC9:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_FF1FD1:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FF1FE9:     If (var_92 Or (var_98 = vbNullString)) Then
  loc_FF1FEC:       Exit Sub
  loc_FF1FED:     End If
  loc_FF1FFA:     Set var_88 = Me.Txt
  loc_FF2000:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FF2008:     var_98 = var_8C.Text
  loc_FF2010:     var_D8 = CVar(var_98) 'String
  loc_FF2055:     If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_FF205E:       Me.MoveFirst
  loc_FF2083:       Set var_88 = Me.Txt
  loc_FF2089:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name =")
  loc_FF2091:       0 = var_8C.Text
  loc_FF209F:       Proc_6_17_EAA2B0(var_D8, CVar(var_98))
  loc_FF20B5:       Me.Find CStr(1 & var_D8), var_FC, 
  loc_FF20CD:     End If
  loc_FF20CD:   End If
  loc_FF20CD: End If
  loc_FF20CD: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F7E710
  'Data Table: 47CDE4
  Dim var_8C As DataGrid
  loc_F7E5DE: If (CLng(Shift) = &H1B) Then
  loc_F7E5E1:   Call Proc_78_42_E53A9C()
  loc_F7E5E6:   Exit Sub
  loc_F7E5E7: End If
  loc_F7E5F5: If (KeyCode = CInt(3)) Then
  loc_F7E610:   Set var_9C = Nothing
  loc_F7E61B:   Set var_98 = Nothing
  loc_F7E649:   Proc_6_69_134A198(Me.DGTravel, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_F7E65D: End If
  loc_F7E679: If (CBool(Me.DGTravel.Visible) = 0) Then
  loc_F7E691:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F7E69A:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_F7E69F:   End If
  loc_F7E6A3:   Set var_8C = Me.TopCtrl1
  loc_F7E6A9:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_9C)
  loc_F7E6E8:   If CBool((0 = "Add") And (KeyCode <> CInt(1)) And (KeyCode <> CInt(2))) Then
  loc_F7E700:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F7E709:       Proc_6_76_E52838(Shift, arg_14)
  loc_F7E70E:     End If
  loc_F7E70E:   End If
  loc_F7E70E: End If
  loc_F7E70E: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE1CE4
  'Data Table: 47CDE4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_EE1C2F: Proc_6_58_E054C0(arg_10)
  loc_EE1C37: var_86 = KeyAscii
  loc_EE1C42: If (var_86 = CInt(1)) Then
  loc_EE1C4F:   Set var_8C = Me.Txt
  loc_EE1C55:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_EE1C70:   Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_EE1C7F: Else
  loc_EE1C87:   If (var_86 = CInt(3)) Then
  loc_EE1CA6:     If (CBool(Me.DGTravel.Visible) = &HFF) Then
  loc_EE1CB8:       var_AC = "Name"
  loc_EE1CD3:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_56, arg_10)
  loc_EE1CE2:     End If
  loc_EE1CE2:   End If
  loc_EE1CE2: End If
  loc_EE1CE2: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4FB9C
  'Data Table: 47CDE4
  loc_E4FB7A: Set var_88 = Me.Txt
  loc_E4FB80: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4FB8E: Proc_6_73_E22704(var_8C)
  loc_E4FB9A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1364200
  'Data Table: 47CDE4
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim unk_47CDF6 As Connection15
  Dim var_94 As Recordset15
  Dim var_124 As Variant
  Dim var_128 As Variant
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_98 As String
  Dim Me As Recordset15
  Dim var_8C As Fields15
  loc_13639BB: var_86 = Cancel
  loc_13639C6: If (var_86 = CInt(1)) Then
  loc_13639D4:   Set var_8C = Me.Txt
  loc_13639DA:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_13639E2:   var_98 = "Vr No"
  loc_1363A03:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_1363A11:     Set var_8C = Me.Txt
  loc_1363A17:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_1363A1F:     var_90.SetFocus
  loc_1363A2D:     arg_10 = &HFF
  loc_1363A30:     Exit Sub
  loc_1363A31:   End If
  loc_1363A3F:   Set var_8C = Me.Txt
  loc_1363A45:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_1363A4D:   arg_10 = var_90.Text
  loc_1363A65:   If (CDbl(var_98) = CDbl(0)) Then
  loc_1363A7B:     var_B8 = "Vr. No. Can Not Be 0"
  loc_1363A81:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_1363A9B:     Set var_8C = Me.Txt
  loc_1363AA1:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363AA9:     var_90.SetFocus
  loc_1363AB7:     arg_10 = &HFF
  loc_1363ABA:     Exit Sub
  loc_1363ABB:   End If
  loc_1363ABF:   Set var_8C = Me.TopCtrl1
  loc_1363AC5:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(arg_10)
  loc_1363ADA:   If (var_86 = "Add") Then
  loc_1363AE3:     Call Proc_78_45_115D0B8(MemVar_1F92044)
  loc_1363AF6:     Set var_8C = Me.Txt
  loc_1363AFC:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1363B04:     var_90.Text = var_98
  loc_1363B13:   End If
  loc_1363B17:   Set var_8C = Me.TopCtrl1
  loc_1363B1D:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_98)
  loc_1363B32:   If ( = "Add") Then
  loc_1363B62:     Set var_8C = Me.Txt
  loc_1363B68:     Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98, "Select Count(*) From Travel1 Where DocID='", var_B8, -1)
  loc_1363B89:     unk_47CDF6.Execute var_124 & var_98 & "'", 0, var_128
  loc_1363B99:      = var_124.Item()
  loc_1363BA1:      = var_128.Value
  loc_1363BCE:     If (var_90.Text.Fields > 0) Then
  loc_1363BD7:       Call 0.Method_arg_50 (var_98)
  loc_1363BF8:       MsgBox("Duplicate Vr. No.", &H40, CVar(var_98), var_F8, var_118)
  loc_1363C0E:       Call Proc_78_45_115D0B8(MemVar_1F92044)
  loc_1363C1E:       If (var_98 = vbNullString) Then
  loc_1363C2B:         Set var_8C = Me.Txt
  loc_1363C31:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363C39:         var_90.SetFocus
  loc_1363C47:         arg_10 = &HFF
  loc_1363C4A:         Exit Sub
  loc_1363C4B:       End If
  loc_1363C51:       Call Proc_78_45_115D0B8(MemVar_1F92044, var_98)
  loc_1363C64:       Set var_8C = Me.Txt
  loc_1363C6A:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1363C72:       var_90.Text = arg_10
  loc_1363C83:       arg_10 = &HFF
  loc_1363C86:       Exit Sub
  loc_1363C87:     End If
  loc_1363C87:   End If
  loc_1363C8A: Else
  loc_1363C92:   If (var_86 = CInt(2)) Then
  loc_1363CA3:     Set var_8C = Me.Txt
  loc_1363CA9:     Call 0.Method_Txt_Validate0 (CInt(2), var_90, var_98)
  loc_1363CB1:     arg_10 = var_90.Text
  loc_1363CC7:     var_F8 = Len(Trim(CVar(var_98)))
  loc_1363CE1:     If (var_F8 = 0) Then
  loc_1363CF7:       Set var_8C = Me.Txt
  loc_1363CFD:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_1363D05:       var_90.Text = CStr(MemVar_1F920EC)
  loc_1363D17:     Else
  loc_1363D21:       Set var_8C = Me.Txt
  loc_1363D27:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363D3A:       var_98 = Proc_6_33_1512840(var_90)
  loc_1363D47:       Set var_124 = Me.Txt
  loc_1363D4D:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1363D55:       var_128.Text = var_98
  loc_1363D68:     End If
  loc_1363D6C:     Set var_8C = Me.TopCtrl1
  loc_1363D72:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_98)
  loc_1363D87:     If ( = "Add") Then
  loc_1363D90:       Call Proc_78_45_115D0B8(MemVar_1F92044)
  loc_1363DA0:       If (var_98 = vbNullString) Then
  loc_1363DAD:         Set var_8C = Me.Txt
  loc_1363DB3:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363DBB:         var_90.SetFocus
  loc_1363DC9:         arg_10 = &HFF
  loc_1363DCC:         Exit Sub
  loc_1363DCD:       End If
  loc_1363DD3:       Call Proc_78_45_115D0B8(MemVar_1F92044, var_98)
  loc_1363DE6:       Set var_8C = Me.Txt
  loc_1363DEC:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1363DF4:       var_90.Text = arg_10
  loc_1363E03:     End If
  loc_1363E06:   Else
  loc_1363E0E:     If (var_86 = CInt(4)) Then
  loc_1363E1E:       Set var_8C = Me.Txt
  loc_1363E24:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363E43:       If (var_90.Text <> vbNullString) Then
  loc_1363E50:         Set var_8C = Me.Txt
  loc_1363E56:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363E76:         Set var_124 = Me.Txt
  loc_1363E7C:         Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1363E84:         var_128.Text = Proc_6_33_1512840(var_90)
  loc_1363E9A:       Else
  loc_1363EAC:         Set var_8C = Me.Txt
  loc_1363EB2:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363EBA:         var_90.Text = CStr(MemVar_1F920EC)
  loc_1363EC9:       End If
  loc_1363ECC:     Else
  loc_1363ED4:       If (var_86 = CInt(3)) Then
  loc_1363EE2:         Set var_8C = Me.Txt
  loc_1363EE8:         Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_1363EF0:         var_98 = "Travel Agency"
  loc_1363F11:         If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_1363F16:           arg_10 = &HFF
  loc_1363F19:           Exit Sub
  loc_1363F1A:         End If
  loc_1363F68:         Set var_8C = Me.Txt
  loc_1363F6E:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_1363F76:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1363F8E:         If (arg_10 Or (var_98 = vbNullString)) Then
  loc_1363F9E:           Set var_8C = Me.Txt
  loc_1363FA4:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363FAC:           var_90.Text = vbNullString
  loc_1363FC5:           Set var_8C = Me.Txt
  loc_1363FCB:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363FD3:           var_90.Tag = vbNullString
  loc_1363FE2:         Else
  loc_136401D:           Set var_94 = Me.Txt
  loc_1364023:           Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_136402B:           var_124.Text = CStr(Me.Fields.Item("Name").Value)
  loc_136405E:           var_90 = Me.Fields.Item("Code")
  loc_136407C:           Set var_94 = Me.Txt
  loc_1364082:           Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_136408A:           var_124.Tag = CStr(var_90.Value)
  loc_13640A0:         End If
  loc_13640A3:       Else
  loc_13640AB:         If (var_86 = CInt(5)) Then
  loc_13640BB:           Set var_8C = Me.Txt
  loc_13640C1:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13640E0:           If (var_90.Text <> vbNullString) Then
  loc_13640ED:             Set var_8C = Me.Txt
  loc_13640F3:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1364113:             Set var_124 = Me.Txt
  loc_1364119:             Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1364121:             var_128.Text = Proc_6_33_1512840(var_90)
  loc_1364137:           Else
  loc_1364149:             Set var_8C = Me.Txt
  loc_136414F:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1364157:             var_90.Text = CStr(MemVar_1F920EC)
  loc_1364166:           End If
  loc_1364174:           Set var_94 = Me.Txt
  loc_136417A:           Call 0.Method_Txt_Validate0 (CInt(4), var_124)
  loc_1364195:           Set var_8C = Me.Txt
  loc_136419B:           Call 0.Method_Txt_Validate0 (CInt(5), var_90)
  loc_13641C5:           If (CDate(var_90.Text) < CDate(var_124.Text)) Then
  loc_13641E9:             MsgBox("From Date can not be greater than To Date", &H40, "Information", var_F8, var_118)
  loc_13641FB:             arg_10 = &HFF
  loc_13641FE:             Exit Sub
  loc_13641FF:           End If
  loc_13641FF:         End If
  loc_13641FF:       End If
  loc_13641FF:     End If
  loc_13641FF:   End If
  loc_13641FF: End If
  loc_13641FF: Exit Sub
End Sub

Private Sub CmdFill_Click() 'E53480
  'Data Table: 47CDE4
  loc_E53444: Call Proc_78_36_1441A70()
  loc_E5345C: Me.FGrid.Row = 1
  loc_E53476: Me.FGrid.Col = CVar(CLng(6))
  loc_E5347E: Exit Sub
End Sub

Private Sub DGTravel_UnknownEvent_9 'F42104
  'Data Table: 47CDE4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F41FFB: Me.DGTravel.Visible = False
  loc_F4201A: If (Me.RecordCount > 0) Then
  loc_F42059:   Set var_B4 = Me.Txt
  loc_F4205F:   Call 0.Method_DGTravel_UnknownEvent_90 (CInt(3), var_B8)
  loc_F42067:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4209A:   var_B0 = Me.Fields.Item("Name")
  loc_F420B9:   Set var_B4 = Me.Txt
  loc_F420BF:   Call 0.Method_DGTravel_UnknownEvent_90 (CInt(3), var_B8)
  loc_F420C7:   var_B8.Text = CStr(var_B0.Value)
  loc_F420DD: End If
  loc_F420E8: Set var_A8 = Me.Txt
  loc_F420EE: Call 0.Method_DGTravel_UnknownEvent_90 (CInt(3))
  loc_F420F6: var_B0.SetFocus
  loc_F42102: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E77624
  'Data Table: 47CDE4
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E775CF: Set var_88 = Me.TxtGrid
  loc_E775D5: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E775DD: var_8C.Visible = False
  loc_E775E9: Call Proc_78_42_E53A9C()
  loc_E77601: Me.FGrid.Row = 1
  loc_E7761B: Me.FGrid.Col = CVar(CLng(6))
  loc_E77623: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE09C
  'Data Table: 47CDE4
  loc_DFE094: Call Proc_78_37_DFD490()
  loc_DFE099: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '10E63B0
  'Data Table: 47CDE4
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_9C As String
  Dim arg_C As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  Dim var_150 As Variant
  loc_10E6114: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10E611F:   var_9C = "+{Tab}"
  loc_10E6125:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_10E612F:   arg_C = 0
  loc_10E6135: Else
  loc_10E613F:   var_B0 = Me.FGrid.Rows
  loc_10E618C:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_10E6194:     Call Proc_78_46_F0CC9C(0, var_B0, arg_C)
  loc_10E6199:   End If
  loc_10E6199: End If
  loc_10E619F: global_72 = arg_C
  loc_10E61C5: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10E61E9: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_10E61FF:   var_DC = CLng(Me.FGrid.Col)
  loc_10E620F:   If (var_DC = CLng(6)) Then
  loc_10E6225:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E623D:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10E6242:     var_11C = vbNullString
  loc_10E624C:     Set var_B4 = Me.FGrid
  loc_10E6252:     LateIdCallSt
  loc_10E626D:   Else
  loc_10E6274:     If (var_DC = CLng(8)) Then
  loc_10E628A:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E62A2:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10E62A7:       var_11C = vbNullString
  loc_10E62B1:       Set var_B4 = Me.FGrid
  loc_10E62B7:       LateIdCallSt
  loc_10E62CF:     End If
  loc_10E62CF:   End If
  loc_10E62CF: End If
  loc_10E62F8: If (Ucase(Chr(CLng(arg_C))) = "Y") Then
  loc_10E631E:   If (CLng(Me.FGrid.Col) = CLng(8)) Then
  loc_10E6334:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E634C:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10E636C:     var_150 = CVar(CStr(Ucase(Chr(CLng(arg_C))))) 'String
  loc_10E6374:     Set var_B4 = Me.FGrid
  loc_10E637A:     LateIdCallSt
  loc_10E6398:   End If
  loc_10E6398: End If
  loc_10E639E: If (arg_C = &HD) Then
  loc_10E63A6:   global_74 = 0
  loc_10E63A9: End If
  loc_10E63AB: arg_C = 0
  loc_10E63AE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0E240
  'Data Table: 47CDE4
  loc_E0E231: Call FGrid_UnknownEvent_C()
  loc_E0E23B: global_74 = 0
  loc_E0E23E: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'F8F028
  'Data Table: 47CDE4
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As TextBox
  Dim var_B0 As TextBox
  loc_F8EEEF: If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_F8EEF6:   Set var_B0 = Me.FGrid
  loc_F8EF1E:   Set var_A0 = var_B0
  loc_F8EF30:   Proc_6_63_110ABA4(Me, var_A0, Me.TxtGrid, 0)
  loc_F8EF4E:   Set var_88 = Me.TxtGrid
  loc_F8EF54:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0, var_B8, &HFF)
  loc_F8EF5C:   Index = var_A0.Text
  loc_F8EF75:   If (Len(var_B8) <= 1) Then
  loc_F8EF84:     Set var_88 = Me.TxtGrid
  loc_F8EF8A:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0, var_B8)
  loc_F8EF92:     0 = var_A0.Text
  loc_F8EFA3:     Set var_A4 = Me.TxtGrid
  loc_F8EFA9:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B0)
  loc_F8EFB1:     var_B0.Text = var_B8
  loc_F8EFC4:   End If
  loc_F8EFD0:   Set var_88 = Me.TxtGrid
  loc_F8EFD6:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0)
  loc_F8EFF0:   Set var_A4 = Me.TxtGrid
  loc_F8EFF6:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B0)
  loc_F8EFFE:   var_B0.SelStart = Len(var_A0.Text)
  loc_F8F011: End If
  loc_F8F01B: If (CLng(Index) <> &HD) Then
  loc_F8F023:   global_74 = &HFF
  loc_F8F026: End If
  loc_F8F026: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'E2A12C
  'Data Table: 47CDE4
  loc_E2A125: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_E2A128:   Exit Sub
  loc_E2A129: End If
  loc_E2A129: Exit Sub
  loc_E2A12A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9C040
  'Data Table: 47CDE4
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9BFE3: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9BFFB: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9C023: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9C03E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'DFDB5C
  'Data Table: 47CDE4
  loc_DFDB54: Call Proc_78_42_E53A9C()
  loc_DFDB59: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E95750
  'Data Table: 47CDE4
  Dim Me As Recordset15
  loc_E956DE: On Error Goto loc_E95747
  loc_E956E7: Me.MoveFirst
  loc_E95711: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95739: Proc_5_0_110649C(&HFF, Me, global_52)
  loc_E95741: Call Proc_78_40_137D738(0)
  loc_E95746: Exit Sub
  loc_E95747: ' Referenced from: E956DE
  loc_E95747: Proc_6_60_E62BC4(var_A0)
  loc_E9574C: Exit Sub
  loc_E9574D: GoTo loc_E95767
End Sub

Public Sub Proc_78_36_1441A70
  'Data Table: 47CDE4
  Dim var_A0 As Variant
  Dim var_AC As String
  Dim var_E0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_158 As Variant
  Dim unk_47CDF6 As Connection15
  Dim var_88 As Variant
  Dim var_96 As Integer
  Dim var_94 As Recordset15
  Dim var_17C As Variant
  Dim var_1A8 As Variant
  Dim var_D0 As Variant
  Dim var_A4 As Fields15
  Dim var_B0 As Field20
  Dim var_114 As Fields15
  Dim var_118 As Field20
  Dim var_1B8 As Variant
  Dim var_1EC As Variant
  Dim var_190 As Fields15
  Dim var_20C As Variant
  Dim var_198 As MSHFlexGrid
  Dim var_A8 As String
  Dim var_138 As Variant
  loc_1440F8C: Set var_88 = Err()
  loc_1440F92: Call 0.Method_arg_1C (var_8C)
  loc_1440F9E: OnGoto
  loc_1440FAF: Set var_88 = Me.Txt
  loc_1440FB5: Call 0.Method_Proc_78_36_1441A700 (arg_14FC)
  loc_1440FDE: If (Proc_6_27_EA565C(var_A0, "From Date") = 0) Then
  loc_1440FE1:   Exit Sub
  loc_1440FE2: End If
  loc_1440FED: Set var_88 = Me.Txt
  loc_1440FF3: Call 0.Method_Proc_78_36_1441A700 (CInt(5), var_A0)
  loc_144101C: If (Proc_6_27_EA565C(var_A0, "To Date") = 0) Then
  loc_144101F:   Exit Sub
  loc_1441020: End If
  loc_144102B: Set var_88 = Me.Txt
  loc_1441031: Call 0.Method_Proc_78_36_1441A700 (CInt(3), var_A0)
  loc_144105A: If (Proc_6_27_EA565C(var_A0, "Travel Agency") = 0) Then
  loc_144105D:   Exit Sub
  loc_144105E: End If
  loc_1441069: Set var_88 = Me.Txt
  loc_144106F: Call 0.Method_Proc_78_36_1441A700 (CInt(1), var_A0)
  loc_1441098: If (Proc_6_27_EA565C(var_A0, "Sr. No.") = 0) Then
  loc_144109B:   Exit Sub
  loc_144109C: End If
  loc_14410A7: Set var_88 = Me.Txt
  loc_14410AD: Call 0.Method_Proc_78_36_1441A700 (CInt(2), var_A0)
  loc_14410B5: var_A8 = "Vr. Date"
  loc_14410D6: If (Proc_6_27_EA565C(var_A0, var_A8) = 0) Then
  loc_14410D9:   Exit Sub
  loc_14410DA: End If
  loc_14410E7: Call Proc_78_47_FDB538(New, var_88)
  loc_14410EF: Set var_9C = var_88
  loc_1441110: Set var_88 = Me.Txt
  loc_1441116: Call 0.Method_Proc_78_36_1441A700 (CInt(3), var_A0, var_A8, "SELECT SG.Commission, B.TravelAgent, B.NoDays, RoomOcc.RoomRate , B.GuestProf, GF.Name AS GuestName, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.DepDate, RoomOcc.DepTime, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime,RoomOcc.Type  FROM ((GuestFolio AS B LEFT JOIN GuestProf AS GF ON B.GuestProf = GF.Code) LEFT JOIN SubGroup AS SG ON B.TravelAgent = SG.SubCode) RIGHT JOIN RoomOcc ON B.DocId = RoomOcc.DocId WHERE B.TravelAgent='")
  loc_144111E: var_18C = var_A0.Tag
  loc_1441127: var_AC = -1 & var_A8
  loc_144113C: Set var_A4 = Me.Txt
  loc_1441142: Call 0.Method_Proc_78_36_1441A700 (CInt(4), var_B0, CVar(var_AC & "' AND B.VDate>="))
  loc_1441151: Proc_6_7_F25D88(var_D0, CVar(var_B0))
  loc_1441171: Set var_114 = Me.Txt
  loc_1441177: Call 0.Method_Proc_78_36_1441A700 (CInt(5), var_118)
  loc_1441186: Proc_6_7_F25D88(var_138, CVar(var_118))
  loc_14411A5: unk_47CDF6.Execute CStr(var_190 & var_D0 & " AND B.VDate<=" & var_138 & vbNullString), CInt(var_8C), 
  loc_14411B0: Set var_94 = var_190
  loc_14411F3: Me.FGrid.Rows = 1
  loc_14411FD: var_96 = 1
  loc_1441214: If (var_94.RecordCount > 0) Then
  loc_1441217:   ' Referenced from: 1441913
  loc_1441226:   If Not(var_94.EOF) Then
  loc_1441229:     var_100 = vbNullString
  loc_1441233:     Set var_88 = Me.FGrid
  loc_1441248:     Set var_198 = Me.FGrid
  loc_144124F:     var_100 = CVar(CLng(var_96)) 'Long
  loc_1441257:     var_17C = CVar(CLng(0)) 'Long
  loc_1441261:     var_C0 = CVar(CStr(var_96)) 'String
  loc_1441268:     LateIdCallSt
  loc_1441277:     var_158 = CVar(CLng(var_96)) 'Long
  loc_144127F:     var_1A8 = CVar(CLng(1)) 'Long
  loc_14412AF:     var_D0 = CVar(CStr(var_94.Fields.Item("GuestProf").Value)) 'String
  loc_14412B6:     LateIdCallSt
  loc_14412D0:     var_158 = CVar(CLng(var_96)) 'Long
  loc_14412D8:     var_1A8 = CVar(CLng(2)) 'Long
  loc_1441308:     var_D0 = CVar(CStr(var_94.Fields.Item("GuestName").Value)) 'String
  loc_144130F:     LateIdCallSt
  loc_1441361:     If (var_94.Fields.Item("Type").Value = "O") Then
  loc_14413F0:       var_1A8 = "ChkOutTime"
  loc_1441433:       Proc_6_122_14E77A8(CDate(var_94.Fields.Item("ChkInDate").Value), CStr(var_94.Fields.Item("ChkInTime").Value), CDate(var_94.Fields.Item("ChkOutDate").Value), CStr(var_94.Fields.Item(var_1A8).Value), CVar(CLng(3)), CVar(CLng(var_96)), var_198, var_94.Fields.Item("ChkInTime").Value)
  loc_144143A:       var_110 = CVar(CStr(var_1A8)) 'String
  loc_1441441:       LateIdCallSt
  loc_1441473:     Else
  loc_14414AF:       If (var_94.Fields.Item("Type").Value = "C") Then
  loc_1441581:         Proc_6_122_14E77A8(CDate(var_94.Fields.Item("ChkInDate").Value), CStr(var_94.Fields.Item("ChkInTime").Value), CDate(var_94.Fields.Item("ChkOutDate").Value), CStr(var_94.Fields.Item("ChkOutTime").Value), CVar(CLng(3)), CVar(CLng(var_96)), var_198)
  loc_144158C:         var_110 = CVar(CStr((var_110 - CDbl(1)))) 'String
  loc_1441593:         LateIdCallSt
  loc_14415C5:       Else
  loc_1441694:         Proc_6_122_14E77A8(CDate(var_94.Fields.Item("ChkInDate").Value), CStr(var_94.Fields.Item("ChkInTime").Value), CDate(var_94.Fields.Item("DepDate").Value), CStr(var_94.Fields.Item("DepTime").Value), CVar(CLng(3)), CVar(CLng(var_96)), var_198)
  loc_144169B:         var_110 = CVar(CStr(var_110)) 'String
  loc_14416A2:         LateIdCallSt
  loc_14416D1:       End If
  loc_14416D1:     End If
  loc_14416D5:     var_158 = CVar(CLng(var_96)) 'Long
  loc_14416DD:     var_1A8 = CVar(CLng(4)) 'Long
  loc_144170D:     var_D0 = CVar(CStr(var_94.Fields.Item("RoomRate").Value)) 'String
  loc_1441714:     LateIdCallSt
  loc_144172E:     var_1EC = CVar(CLng(var_96)) 'Long
  loc_1441736:     var_20C = CVar(CLng(5)) 'Long
  loc_144173F:     var_100 = CVar(CLng(var_96)) 'Long
  loc_1441747:     var_17C = CVar(CLng(3)) 'Long
  loc_1441795:     var_F0 = CVar(CStr((CVar(Val(CStr(var_198.TextMatrix)))) * var_94.Fields.Item("RoomRate").Value))) 'String
  loc_144179C:     LateIdCallSt
  loc_14417BB:     var_158 = CVar(CLng(var_96)) 'Long
  loc_14417C3:     var_1A8 = CVar(CLng(6)) 'Long
  loc_14417F3:     var_D0 = CVar(CStr(var_94.Fields.Item("Commission").Value)) 'String
  loc_14417FA:     LateIdCallSt
  loc_1441814:     var_1B8 = CVar(CLng(var_96)) 'Long
  loc_144181C:     var_1EC = CVar(CLng(7)) 'Long
  loc_1441875:     var_E0 = (var_94.Fields.Item("NoDays").Value * var_94.Fields.Item("RoomRate").Value)
  loc_144189B:     var_F0 = var_94.Fields.Item("Commission").Value
  loc_14418B1:     var_138 = CVar(CStr((var_E0 * (var_F0 / 100)))) 'String
  loc_14418B8:     LateIdCallSt
  loc_14418DE:     var_100 = CVar(CLng(var_96)) 'Long
  loc_14418E6:     var_17C = CVar(CLng(8)) 'Long
  loc_14418EB:     var_1B8 = vbNullString
  loc_14418F4:     LateIdCallSt
  loc_14418FE:     Set var_198 = Nothing 
  loc_1441908:     var_96 = (var_96 + 1)
  loc_144190E:     var_94.MoveNext
  loc_1441913:     GoTo loc_1441217
  loc_1441916:   End If
  loc_1441916: End If
  loc_144191C: var_8C = var_94.RecordCount
  loc_144192A: If (var_8C > 0) Then
  loc_1441940:   Me.FGrid.FixedRows = 1
  loc_1441948: End If
  loc_144194E: If (var_96 = 1) Then
  loc_1441964:   Me.FGrid.Rows = 1
  loc_1441981:   var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1441989:   Set var_A0 = Me.FGrid
  loc_14419B8:   Me.FGrid.FixedRows = 1
  loc_14419CE:   var_100 = "* Nothig To Examine *"
  loc_14419D9:   MsgBox(var_100, 0, var_D0, var_E0, var_F0)
  loc_14419E9: End If
  loc_14419EE: Set var_94 = Nothing
  loc_14419F6: Set var_9C = Nothing
  loc_14419F9: Exit Sub
  loc_1441A02: Set var_88 = Err()
  loc_1441A08: Call 0.Method_arg_1C (var_8C, FGrid.DispID_10000, var_D0, var_96, var_198, var_1B8)
  loc_1441A15: Set var_A0 = Err()
  loc_1441A1B: Call 0.Method_arg_2C (var_AC, var_17C, var_100, var_198)
  loc_1441A4C: MsgBox(CVar(CStr(var_8C) & " : " & var_AC), &H10, "Message ", var_E0, var_F0)
  loc_1441A6C: Exit Sub
End Sub

Public Sub Proc_78_37_DFD490
  'Data Table: 47CDE4
  loc_DFD48C: Exit Sub
  loc_DFD48D:  = arg_2100
End Sub

Public Sub Proc_78_38_FFCF58
  'Data Table: 47CDE4
  Dim var_8C As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_154 As Variant
  Dim var_124 As MSHFlexGrid
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_A8 As String
  Dim var_1DC As Variant
  loc_FFCDA7: If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_FFCDB6:   Set var_8C = Me.TxtGrid
  loc_FFCDBC:   Call 0.Method_Proc_78_38_FFCF580 (0, var_A4)
  loc_FFCDC4:   var_A8 = var_A4.Text
  loc_FFCDDB:   If (var_A8 <> vbNullString) Then
  loc_FFCDF1:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FFCE09:     var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FFCE1A:     Set var_8C = Me.TxtGrid
  loc_FFCE20:     Call 0.Method_Proc_78_38_FFCF580 (0, var_A4, var_A8)
  loc_FFCE28:     var_F0 = var_A4.Text
  loc_FFCE30:     var_110 = CVar(var_A8) 'String
  loc_FFCE38:     Set var_124 = Me.FGrid
  loc_FFCE3E:     LateIdCallSt
  loc_FFCE6F:     var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FFCE87:     var_154 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FFCEB5:     var_19C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FFCEBD:     var_1BC = CVar(CLng(7)) 'Long
  loc_FFCED5:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FFCEDD:     var_F0 = CVar(CLng(5)) 'Long
  loc_FFCF0C:     var_1DC = CVar(CStr(((CDbl(CStr(Me.FGrid.TextMatrix))) * CDbl(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64)))) 'String
  loc_FFCF14:     Set var_1F0 = Me.FGrid
  loc_FFCF1A:     LateIdCallSt
  loc_FFCF4B:   End If
  loc_FFCF4B: End If
  loc_FFCF50: Proc_78_38_FFCF58 = &HFF
End Sub

Public Sub Proc_78_39_F1C2FC
  'Data Table: 47CDE4
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  loc_F1C20A: Set var_8C = Me.Txt
  loc_F1C210: Call 0.Method_Proc_78_39_F1C2FCC (var_8E, var_86)
  loc_F1C220: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1C236:   Set var_8C = Me.Txt
  loc_F1C23C:   Call 0.Method_Proc_78_39_F1C2FC0 (CInt(var_86), var_98)
  loc_F1C244:   var_98.Text = vbNullString
  loc_F1C260:   Set var_8C = Me.Txt
  loc_F1C266:   Call 0.Method_Proc_78_39_F1C2FC0 (CInt(var_86), var_98)
  loc_F1C26E:   var_98.Tag = vbNullString
  loc_F1C27D: Next var_92 'Byte
  loc_F1C296: Me.FGrid.Rows = 1
  loc_F1C2BC: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_F1C2C4: Set var_98 = Me.FGrid
  loc_F1C2F1: Me.FGrid.FixedRows = 1
  loc_F1C2F9: Exit Sub
End Sub

Public Sub Proc_78_40_137D738
  'Data Table: 47CDE4
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_47CDF6 As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As TextBox
  Dim var_124 As Label
  Dim var_8C As Recordset15
  Dim var_8E As Integer
  Dim var_110 As Variant
  Dim var_144 As Variant
  Dim var_120 As Variant
  Dim var_174 As Variant
  loc_137CEAC: On Error Goto loc_137D730
  loc_137CEC6: If (Me.RecordCount > 0) Then
  loc_137CF08:   var_DC = "SELECT T1.*,SG.Name AS TravelAgencyName FROM Travel1 T1 LEFT JOIN SUBGROUP SG ON T1.TravelAgency=SG.SUBCode Where DocID='" & Me.Fields.Item("DocID").Value 
  loc_137CF1F:   unk_47CDF6.Execute CStr(var_DC & "'"), var_120, -1
  loc_137CF47:   Set var_128 = var_124 
  loc_137CF84:   Set var_124 = Me.Txt
  loc_137CF8A:   Call 0.Method_Proc_78_40_137D7380 (CInt(0), var_12C)
  loc_137CF92:   var_12C.Text = CStr(var_128.Fields.Item("DocID").Value)
  loc_137CFE0:   Me.LblVPrefix.Caption = CStr(var_128.Fields.Item("vPrefix").Value)
  loc_137D046:   Set var_124 = Me.Txt
  loc_137D04C:   Call 0.Method_Proc_78_40_137D7380 (CInt(2), var_12C, CStr(Format(CVar(var_128.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_137D054:   var_12C.Text = 1
  loc_137D0A7:   Set var_124 = Me.Txt
  loc_137D0AD:   Call 0.Method_Proc_78_40_137D7380 (CInt(1), var_12C, CStr(var_128.Fields.Item("VNo").Value))
  loc_137D0B5:   var_12C.Text = 1
  loc_137D104:   Set var_124 = Me.Txt
  loc_137D10A:   Call 0.Method_Proc_78_40_137D7380 (CInt(3), var_12C)
  loc_137D112:   var_12C.Tag = CStr(var_128.Fields.Item("TravelAgency").Value)
  loc_137D161:   Set var_124 = Me.Txt
  loc_137D167:   Call 0.Method_Proc_78_40_137D7380 (CInt(3), var_12C)
  loc_137D16F:   var_12C.Text = CStr(var_128.Fields.Item("TravelAgencyName").Value)
  loc_137D1D7:   Set var_124 = Me.Txt
  loc_137D1DD:   Call 0.Method_Proc_78_40_137D7380 (CInt(4), var_12C, CStr(Format(CVar(var_128.Fields.Item("FromDate")), "DD/MMM/YYY")))
  loc_137D1E5:   var_12C.Text = 1
  loc_137D257:   Call 0.Method_Proc_78_40_137D7380 (CInt(5), var_12C, CStr(Format(CVar(var_128.Fields.Item("ToDate")), "DD/MMM/YYYY")), 1)
  loc_137D25F:   var_12C.Text = 1
  loc_137D27B:   Set var_128 = Nothing 
  loc_137D2BE:   var_DC = "Select T2.*,GF.Name As GuestName From Travel2 T2 Left Join GuestProf GF ON T2.Guest=GF.Code where T2.DocId='" & Me.Fields.Item("SearchCode").Value 
  loc_137D2D5:   unk_47CDF6.Execute CStr(var_DC & "'"), var_120, -1
  loc_137D2E0:   Set var_8C = Me.Txt
  loc_137D30E:   If (var_8C.RecordCount > 0) Then
  loc_137D313:     var_8E = 1
  loc_137D329:     Me.FGrid.Rows = 1
  loc_137D331:     ' Referenced from: 137D6DC
  loc_137D340:     If Not(var_8C.EOF) Then
  loc_137D343:       var_A8 = vbNullString
  loc_137D34D:       Set var_98 = Me.FGrid
  loc_137D362:       Set var_134 = Me.FGrid
  loc_137D369:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_137D371:       var_110 = CVar(CLng(0)) 'Long
  loc_137D3A1:       var_DC = CVar(CStr(var_8C.Fields.Item("SNo").Value)) 'String
  loc_137D3A8:       LateIdCallSt
  loc_137D3F7:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Guest")), CVar(CLng(1)), CVar(CLng(var_8E)), var_134, var_DC, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_137D3FE:       LateIdCallSt
  loc_137D449:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("GuestName")), CVar(CLng(2)), CVar(CLng(var_8E)), var_134, var_DC, FGrid.DispID_10000)) 'String
  loc_137D450:       LateIdCallSt
  loc_137D49B:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("NoDays")), CVar(CLng(3)), CVar(CLng(var_8E)), var_134, var_DC)) 'String
  loc_137D4A2:       LateIdCallSt
  loc_137D4D4:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_137D4F0:       var_DC = "0.00"
  loc_137D510:       LateIdCallSt
  loc_137D54C:       Proc_6_39_E7C810(var_DC, CVar(var_8C.Fields.Item("Total")), var_134, CVar(CStr(Format(CVar(var_8C.Fields.Item("RoomRate")), var_DC))), 1, 1, CVar(CLng(4)))
  loc_137D555:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_137D58D:       LateIdCallSt
  loc_137D5CB:       Proc_6_39_E7C810(var_DC, CVar(var_8C.Fields.Item("CommPer")), var_134, CVar(CStr(Format(var_DC, "0.00"))), 1, 1, CVar(CLng(5)))
  loc_137D5D4:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_137D60C:       LateIdCallSt
  loc_137D64A:       Proc_6_39_E7C810(var_DC, CVar(var_8C.Fields.Item("Commission")), var_134, CVar(CStr(Format(var_DC, "0.00"))), 1, 1, CVar(CLng(6)))
  loc_137D653:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_137D65B:       var_144 = CVar(CLng(7)) 'Long
  loc_137D684:       var_174 = CVar(CStr(Format(var_DC, "0.00"))) 'String
  loc_137D68B:       LateIdCallSt
  loc_137D6A7:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_137D6AF:       var_EC = CVar(CLng(8)) 'Long
  loc_137D6B4:       var_144 = "Y"
  loc_137D6BD:       LateIdCallSt
  loc_137D6C7:       Set var_134 = Nothing 
  loc_137D6D1:       var_8E = (var_8E + 1)
  loc_137D6D7:       var_8C.MoveNext
  loc_137D6DC:       GoTo loc_137D331
  loc_137D6DF:     End If
  loc_137D6DF:   End If
  loc_137D6DF:   var_A8 = 0
  loc_137D6E9:   Set var_98 = Me.FGrid
  loc_137D6F7:   var_A8 = 1
  loc_137D70A:   Me.FGrid.FixedRows = var_A8
  loc_137D715: Else
  loc_137D715:   Call Proc_78_39_F1C2FC(FGrid.DispID_2E, var_A8, var_8E, var_134, var_144, var_EC, var_A8)
  loc_137D71A: End If
  loc_137D71A: Call Proc_78_42_E53A9C(var_134, var_174, 1)
  loc_137D724: Set var_88 = Nothing
  loc_137D72C: Set var_8C = Nothing
  loc_137D72F: Exit Sub
  loc_137D730: ' Referenced from: 137CEAC
  loc_137D730: Proc_6_60_E62BC4(1, var_144)
  loc_137D735: Exit Sub
End Sub

Public Sub Proc_78_41_E7920C(arg_C) 'E7920C
  'Data Table: 47CDE4
  Dim var_98 As TextBox
  loc_E791BA: Set var_8C = Me.Txt
  loc_E791C0: Call 0.Method_Proc_78_41_E7920CC (var_8E, var_86)
  loc_E791D0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E791E6:   Set var_8C = Me.Txt
  loc_E791EC:   Call 0.Method_Proc_78_41_E7920C0 (CInt(var_86), var_98)
  loc_E791F4:   var_98.Enabled = arg_C
  loc_E79203: Next var_92 'Byte
  loc_E79209: Exit Sub
End Sub

Public Sub Proc_78_42_E53A9C
  'Data Table: 47CDE4
  loc_E53A80: If (CBool(Me.DGTravel.Visible) = &HFF) Then
  loc_E53A92:   Me.DGTravel.Visible = False
  loc_E53A9A: End If
  loc_E53A9A: Exit Sub
End Sub

Public Sub Proc_78_43_116820C
  'Data Table: 47CDE4
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_1167E4A: Me.FGrid.Left = CVar(CDbl(&H23))
  loc_1167E65: Me.FGrid.Top = CVar(CDbl(1900))
  loc_1167E80: Me.FGrid.Width = CVar(CDbl(8800))
  loc_1167E9B: Me.FGrid.Cols = 9
  loc_1167EA3: var_94 = CVar(CLng(0)) 'Long
  loc_1167EA8: var_BC = &H190
  loc_1167EB4: LateIdCallSt
  loc_1167EBF: var_94 = CVar(CLng(1)) 'Long
  loc_1167EC4: var_BC = 0
  loc_1167ED0: LateIdCallSt
  loc_1167ED8: var_94 = 0
  loc_1167EE4: var_BC = CVar(CLng(2)) 'Long
  loc_1167EE9: var_DC = "Name"
  loc_1167EF2: LateIdCallSt
  loc_1167EFD: var_94 = CVar(CLng(2)) 'Long
  loc_1167F08: var_BC = CVar(CInt(1)) 'Integer
  loc_1167F0F: LateIdCallSt
  loc_1167F1A: var_94 = CVar(CLng(2)) 'Long
  loc_1167F1F: var_BC = &H9C4
  loc_1167F2B: LateIdCallSt
  loc_1167F33: var_94 = 0
  loc_1167F3F: var_BC = CVar(CLng(3)) 'Long
  loc_1167F44: var_DC = "No.Days"
  loc_1167F4D: LateIdCallSt
  loc_1167F58: var_94 = CVar(CLng(3)) 'Long
  loc_1167F63: var_BC = CVar(CInt(1)) 'Integer
  loc_1167F6A: LateIdCallSt
  loc_1167F75: var_94 = CVar(CLng(3)) 'Long
  loc_1167F80: var_BC = CVar(CInt(1)) 'Integer
  loc_1167F87: LateIdCallSt
  loc_1167F92: var_94 = CVar(CLng(3)) 'Long
  loc_1167F97: var_BC = &H384
  loc_1167FA3: LateIdCallSt
  loc_1167FAB: var_94 = 0
  loc_1167FB7: var_BC = CVar(CLng(4)) 'Long
  loc_1167FBC: var_DC = "Room Rate"
  loc_1167FC5: LateIdCallSt
  loc_1167FD0: var_94 = CVar(CLng(4)) 'Long
  loc_1167FDB: var_BC = CVar(CInt(7)) 'Integer
  loc_1167FE2: LateIdCallSt
  loc_1167FED: var_94 = CVar(CLng(4)) 'Long
  loc_1167FF8: var_BC = CVar(CInt(7)) 'Integer
  loc_1167FFF: LateIdCallSt
  loc_116800A: var_94 = CVar(CLng(4)) 'Long
  loc_116800F: var_BC = &H44C
  loc_116801B: LateIdCallSt
  loc_1168023: var_94 = 0
  loc_116802F: var_BC = CVar(CLng(5)) 'Long
  loc_1168034: var_DC = "Total"
  loc_116803D: LateIdCallSt
  loc_1168048: var_94 = CVar(CLng(5)) 'Long
  loc_1168053: var_BC = CVar(CInt(7)) 'Integer
  loc_116805A: LateIdCallSt
  loc_1168065: var_94 = CVar(CLng(5)) 'Long
  loc_1168070: var_BC = CVar(CInt(7)) 'Integer
  loc_1168077: LateIdCallSt
  loc_1168082: var_94 = CVar(CLng(5)) 'Long
  loc_1168087: var_BC = &H3E8
  loc_1168093: LateIdCallSt
  loc_116809B: var_94 = 0
  loc_11680A7: var_BC = CVar(CLng(6)) 'Long
  loc_11680AC: var_DC = "Comm.%"
  loc_11680B5: LateIdCallSt
  loc_11680C0: var_94 = CVar(CLng(6)) 'Long
  loc_11680CB: var_BC = CVar(CInt(7)) 'Integer
  loc_11680D2: LateIdCallSt
  loc_11680DD: var_94 = CVar(CLng(6)) 'Long
  loc_11680E8: var_BC = CVar(CInt(7)) 'Integer
  loc_11680EF: LateIdCallSt
  loc_11680FA: var_94 = CVar(CLng(6)) 'Long
  loc_11680FF: var_BC = &H3E8
  loc_116810B: LateIdCallSt
  loc_1168113: var_94 = 0
  loc_116811F: var_BC = CVar(CLng(7)) 'Long
  loc_1168124: var_DC = "Commission"
  loc_116812D: LateIdCallSt
  loc_1168138: var_94 = CVar(CLng(7)) 'Long
  loc_1168143: var_BC = CVar(CInt(7)) 'Integer
  loc_116814A: LateIdCallSt
  loc_1168155: var_94 = CVar(CLng(7)) 'Long
  loc_1168160: var_BC = CVar(CInt(7)) 'Integer
  loc_1168167: LateIdCallSt
  loc_1168172: var_94 = CVar(CLng(7)) 'Long
  loc_1168177: var_BC = &H3E8
  loc_1168183: LateIdCallSt
  loc_116818B: var_94 = 0
  loc_1168197: var_BC = CVar(CLng(8)) 'Long
  loc_116819C: var_DC = "Post"
  loc_11681A5: LateIdCallSt
  loc_11681B0: var_94 = CVar(CLng(8)) 'Long
  loc_11681BB: var_BC = CVar(CInt(1)) 'Integer
  loc_11681C2: LateIdCallSt
  loc_11681CD: var_94 = CVar(CLng(8)) 'Long
  loc_11681D8: var_BC = CVar(CInt(1)) 'Integer
  loc_11681DF: LateIdCallSt
  loc_11681EA: var_94 = CVar(CLng(8)) 'Long
  loc_11681EF: var_BC = &H320
  loc_11681FB: LateIdCallSt
  loc_1168205: Set var_AC = Nothing 
  loc_1168209: Exit Sub
End Sub

Public Sub Proc_78_44_10A40E4
  'Data Table: 47CDE4
  Dim var_A0 As Variant
  Dim var_C4 As TextBox
  Dim unk_47CDF6 As Connection15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  Dim var_FC As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_C8 As String
  Dim var_8A As Integer
  loc_10A3E39: Set var_90 = Me.TopCtrl1
  loc_10A3E3F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(&HFF)
  loc_10A3E54: If ( = "Add") Then
  loc_10A3E84:   Set var_90 = Me.Txt
  loc_10A3E8A:   Call 0.Method_Proc_78_44_10A40E40 (CInt(0), var_C4, var_C8, "Select Count(*) From Travel1 Where DocID='", var_B0, -1)
  loc_10A3EAB:   unk_47CDF6.Execute var_D8 & var_C8 & "'", 0, var_EC
  loc_10A3EBB:    = var_D8.Item()
  loc_10A3EC3:    = var_EC.Value
  loc_10A3EF0:   If (var_C4.Text.Fields > 0) Then
  loc_10A3EF9:     Call 0.Method_arg_50 (var_C8)
  loc_10A3F1A:     MsgBox("Duplicate Serial No.", &H40, CVar(var_C8), var_10C, var_11C)
  loc_10A3F30:     Call Proc_78_45_115D0B8(MemVar_1F92044)
  loc_10A3F43:     Set var_90 = Me.Txt
  loc_10A3F49:     Call 0.Method_Proc_78_44_10A40E40 (CInt(0), var_C4)
  loc_10A3F51:     var_C4.Text = var_C8
  loc_10A3F65:     Proc_78_44_10A40E4 = 0
  loc_10A3F6B:   End If
  loc_10A3F90:   For var_120 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_120 'Integer
  loc_10A3F9A:     var_A0 = CVar(CLng(var_88)) 'Long
  loc_10A3FA2:     var_FC = CVar(CLng(8)) 'Long
  loc_10A3FCD:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_10A3FD2:       var_8A = 1
  loc_10A3FFB:       var_C8 = CStr(Me.FGrid.TextMatrix))
  loc_10A4011:       If (CDbl(Val(var_C8)) = CDbl(0)) Then
  loc_10A401A:         Call 0.Method_arg_50 (var_C8, CVar(CLng(6)), CVar(CLng(var_88)), var_8A)
  loc_10A403B:         MsgBox("Commission% is Zero", &H40, CVar(var_C8), var_10C, var_11C)
  loc_10A405E:         Me.FGrid.Row = CVar(CLng(var_88))
  loc_10A4078:         Me.FGrid.Col = CVar(CLng(6))
  loc_10A4085:         Proc_78_44_10A40E4 = 0
  loc_10A408B:       End If
  loc_10A408B:     End If
  loc_10A408E:   Next var_120 'Integer
  loc_10A4099:   If (var_8A = 0) Then
  loc_10A40A2:     Call 0.Method_arg_50 (var_C8)
  loc_10A40C3:     MsgBox("No Posting to Save.", &H40, CVar(var_C8), var_10C, var_11C)
  loc_10A40D8:     Proc_78_44_10A40E4 = 0
  loc_10A40DE:   End If
  loc_10A40DE: End If
  loc_10A40DE: Proc_78_44_10A40E4 = 
End Sub

Public Sub Proc_78_45_115D0B8
  'Data Table: 47CDE4
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_115CD50: var_90 = global_60
  loc_115CD67: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_115CD8A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115CD98: Set var_B4 = Me.Txt
  loc_115CD9E: Call 0.Method_Proc_78_45_115D0B80 (CInt(2), var_B8, var_E8)
  loc_115CDAD: Proc_6_7_F25D88(var_D8, CVar(var_B8), var_13C)
  loc_115CDB5: var_F8 = -1 & var_D8 
  loc_115CDC9: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115CDD4: Set var_8C = var_140
  loc_115CE10: If (var_8C.RecordCount <= 0) Then
  loc_115CE2C:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115CE3F:   var_88 = vbNullString
  loc_115CE42:   Proc_78_45_115D0B8 = 
  loc_115CE48: End If
  loc_115CE5C: If (var_8C.RecordCount > 0) Then
  loc_115CE9B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115CEB8:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115CEC9:     var_9C = CStr(var_B8.Value)
  loc_115CEE4:     Set var_B4 = Me.Txt
  loc_115CEEA:     Call 0.Method_Proc_78_45_115D0B80 (CInt(1), var_B8)
  loc_115CF00:     var_94 = CLng(Val(var_B8.Text))
  loc_115CF10:   Else
  loc_115CF3B:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115CF62:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115CF77:     var_D8 = (var_B8.Value + 1)
  loc_115CF7D:     var_94 = CLng(var_D8)
  loc_115CF8E:   End If
  loc_115CF8E: End If
  loc_115CFB9: var_C8 = Space((5 - Len(var_90)))
  loc_115CFC1: var_E8 = (CVar(var_94 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_B8.Value)
  loc_115CFCB: var_F8 = (var_E8 + CVar(var_9C))
  loc_115CFDC: var_118 = Space((5 - Len(var_9C)))
  loc_115CFE4: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115CFFA: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115D002: var_188 = (var_13C + var_178)
  loc_115D00E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115D013: var_98 = CStr(var_1A8)
  loc_115D043: Me.LblVPrefix.Caption = var_9C
  loc_115D059: Set var_B4 = Me.Txt
  loc_115D05F: Call 0.Method_Proc_78_45_115D0B80 (CInt(0), var_B8)
  loc_115D067: var_B8.Text = var_98
  loc_115D086: Set var_B4 = Me.Txt
  loc_115D08C: Call 0.Method_Proc_78_45_115D0B80 (CInt(1), var_B8)
  loc_115D094: var_B8.Text = CStr(var_94)
  loc_115D0A6: var_88 = var_98
  loc_115D0AE: Set var_8C = Nothing
  loc_115D0B1: Proc_78_45_115D0B8 = var_94
End Sub

Public Sub Proc_78_46_F0CC9C
  'Data Table: 47CDE4
  loc_F0CBC0: Call Proc_78_42_E53A9C()
  loc_F0CBD0: Set var_88 = Me.Txt
  loc_F0CBD6: Call 0.Method_Proc_78_46_F0CC9C0 (CInt(2))
  loc_F0CBFF: If (Proc_6_27_EA565C(var_8C, "Vr. Date") = 0) Then
  loc_F0CC02:   Exit Sub
  loc_F0CC03: End If
  loc_F0CC0E: Set var_88 = Me.Txt
  loc_F0CC14: Call 0.Method_Proc_78_46_F0CC9C0 (CInt(1), var_8C)
  loc_F0CC3D: If (Proc_6_27_EA565C(var_8C, "Sr. No.") = 0) Then
  loc_F0CC40:   Exit Sub
  loc_F0CC41: End If
  loc_F0CC78: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0CC7B:   Call TopCtrl1_UnknownEvent_19()
  loc_F0CC83: Else
  loc_F0CC87:   Call 0.Method_arg_1E8 (var_88)
  loc_F0CC8F:   Call var_88.SetFocus
  loc_F0CC98: End If
  loc_F0CC98: Exit Sub
End Sub

Public Sub Proc_78_47_FDB538(arg_C) 'FDB538
  'Data Table: 47CDE4
  Dim var_8C As Recordset15
  loc_FDB361: Set var_8C = arg_C 
  loc_FDB389: var_8C.Fields.Append "Sno", 3, 4
  loc_FDB3B5: var_8C.Fields.Append "GuestCode", &H81, &HA
  loc_FDB3E1: var_8C.Fields.Append "GuestName", &H81, &H32
  loc_FDB40D: var_8C.Fields.Append "Nodays", 3, 3
  loc_FDB439: var_8C.Fields.Append "RoomRate", 5, &H13
  loc_FDB465: var_8C.Fields.Append "Total", 5, &H13
  loc_FDB491: var_8C.Fields.Append "CommPer", 5, &H13
  loc_FDB4BD: var_8C.Fields.Append "CommAmt", 5, &H13
  loc_FDB4E9: var_8C.Fields.Append "Post", &H81, 3
  loc_FDB4F9: var_8C.CursorType = 3
  loc_FDB506: var_8C.LockType = 3
  loc_FDB525: var_8C.Open var_A0, var_B0, -1
  loc_FDB52C: Set var_8C = Nothing 
  loc_FDB530: Proc_78_47_FDB538 = -1
End Sub
