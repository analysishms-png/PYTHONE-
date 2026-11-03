VERSION 5.00
Begin VB.Form FrmGuestStat
  Caption = "Guest Status Master"
  BackColor = &HFFC0C0&
  ForeColor = &HFF0000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HFF0000&
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11235
  ClientHeight = 7995
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11235
    Height = 450
    TabIndex = 7
  End
  Begin MSFlexGrid FGPoint
    Left = 8340
    Top = 3375
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 3
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3375
    Top = 1965
    Width = 4215
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 20
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
  Begin DataGrid DGHelp
    Left = 7920
    Top = 3885
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5340
    Top = 5025
    Width = 2790
    Height = 285
    TabIndex = 6
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
    Left = 1965
    Top = 5025
    Width = 2880
    Height = 255
    TabIndex = 5
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
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 4
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
    Caption = "Status Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 2115
    Top = 1965
    Width = 1200
    Height = 240
    TabIndex = 1
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

Attribute VB_Name = "FrmGuestStat"


Private Sub TopCtrl1_UnknownEvent_A 'EAA384
  'Data Table: 442DB4
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EAA2F8: On Error Goto loc_EAA37E
  loc_EAA308: Me.LblUser.Caption = vbNullString
  loc_EAA31D: Me.LblLDt.Caption = vbNullString
  loc_EAA348: Call Proc_13_27_E7A9CC(Proc_5_1_100CB50("ADD", Me))
  loc_EAA353: Call Proc_13_28_EAE42C(global_52)
  loc_EAA363: Set var_88 = Me.Txt
  loc_EAA369: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EAA371: var_94.SetFocus
  loc_EAA37D: Exit Sub
  loc_EAA37E: ' Referenced from: EAA2F8
  loc_EAA37E: Proc_6_60_E62BC4(var_94)
  loc_EAA383: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBAF80
  'Data Table: 442DB4
  loc_EBAEEC: On Error Goto loc_EBAF77
  loc_EBAF26: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBAF35:   Set var_110 = Me
  loc_EBAF4C:   Call Proc_13_27_E7A9CC(Proc_5_1_100CB50("INI", var_110))
  loc_EBAF57:   Call Proc_13_29_11D6154(global_52)
  loc_EBAF5F: Else
  loc_EBAF65:   Call 0.Method_arg_1E8 (var_110)
  loc_EBAF6D:   Call var_110.SetFocus
  loc_EBAF76: End If
  loc_EBAF76: Exit Sub
  loc_EBAF77: ' Referenced from: EBAEEC
  loc_EBAF77: Proc_6_60_E62BC4()
  loc_EBAF7C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11436C4
  'Data Table: 442DB4
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_442DC5 As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_1143364: On Error Goto loc_114366B
  loc_1143375: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_1143378:   Exit Sub
  loc_1143379: End If
  loc_11433AB: var_D4 = "Guest Status"
  loc_11433F3: If (Proc_6_108_1010FEC(MemVar_1F92044, "GuestProf", "GuestStatus", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_11433F6:   Exit Sub
  loc_11433F7: End If
  loc_114342E: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_1143433:   var_96 = 0
  loc_114343F:   unk_442DC5.BeginTrans var_D0
  loc_1143446:   var_96 = &HFF
  loc_114345A:   var_94 = Me.Bookmark 'Variant
  loc_11434A6:   var_118 = "Delete From GuestStat Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_11434B4:   unk_442DC5.Execute CStr(var_118), var_138, -1
  loc_11434FF:   var_168 = 0
  loc_1143512:   var_160 = 0
  loc_114351D:   var_15C = 0
  loc_1143530:   var_154 = 0
  loc_114353B:   var_150 = 0
  loc_114354E:   var_148 = 0
  loc_114358E:   var_B4 = "GuestStat"
  loc_1143597:   Proc_154_5_10E33A4(MemVar_1F92044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_11435C5:   unk_442DC5.CommitTrans
  loc_11435CC:   var_96 = 0
  loc_11435DA:   Me.Requery -1
  loc_11435EA:   Me.Requery -1
  loc_114360A:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1143617:     Me.Bookmark = var_94
  loc_114361F:   Else
  loc_1143633:     If (Me.EOF = 0) Then
  loc_114363C:       Me.MoveLast
  loc_1143641:     End If
  loc_1143641:   End If
  loc_1143641:   Call Proc_13_29_11D6154(var_96, var_148, 0, var_150, var_154)
  loc_1143662:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_114366A: End If
  loc_114366A: Exit Sub
  loc_114366B: ' Referenced from: 1143364
  loc_1143671: If (var_96 = &HFF) Then
  loc_114367A:   unk_442DC5.RollbackTrans
  loc_114367F: End If
  loc_1143687: Set var_9C = Err()
  loc_114368D: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_11436AE: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_11436C1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF1A3C
  'Data Table: 442DB4
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EF196C: On Error Goto loc_EF1A34
  loc_EF197C: Me.LblUser.Caption = vbNullString
  loc_EF1991: Me.LblLDt.Caption = vbNullString
  loc_EF19A7: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_EF19AA:   Exit Sub
  loc_EF19AB: End If
  loc_EF19CE: Call Proc_13_27_E7A9CC(Proc_5_1_100CB50("EDIT", Me))
  loc_EF19E7: Set var_88 = Me.Txt
  loc_EF19ED: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF1A00: global_64 = var_94.Text
  loc_EF1A19: Set var_88 = Me.Txt
  loc_EF1A1F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF1A27: var_94.SetFocus
  loc_EF1A33: Exit Sub
  loc_EF1A34: ' Referenced from: EF196C
  loc_EF1A34: Proc_6_60_E62BC4(global_52)
  loc_EF1A39: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E165A4
  'Data Table: 442DB4
  loc_E16599: Me.Global.Unload Me
  loc_E165A1: Exit Sub
  loc_E165A2: Set arg_3C70 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F22E28
  'Data Table: 442DB4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F22D28: On Error Goto loc_F22DC0
  loc_F22D34: var_88 = Me.RecordCount
  loc_F22D42: If (var_88 <= 0) Then
  loc_F22D4B:   var_B8 = "Information"
  loc_F22D66:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F22D76:   Exit Sub
  loc_F22D77: End If
  loc_F22D85: MemVar_1F920E4 = "Select GuestStat.Code As SearchCode,GuestStat.Name FROM GuestStat Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by GuestStat.Name"
  loc_F22D92: MemVar_1F92120 = Me
  loc_F22D99: var_10C = "4000"
  loc_F22D9F: Proc_6_126_F1BCC0(var_10C)
  loc_F22DBA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F22DBF: Exit Sub
  loc_F22DC0: ' Referenced from: F22D28
  loc_F22DC8: Set var_110 = Err()
  loc_F22DCE: Call 0.Method_arg_1C (var_88)
  loc_F22DDF: If (var_88 <> 0) Then
  loc_F22DEA:   Set var_110 = Err()
  loc_F22DF0:   Call 0.Method_arg_2C (var_10C)
  loc_F22E11:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F22E24: End If
  loc_F22E24: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E301F8
  'Data Table: 442DB4
  loc_E301E8: Proc_5_0_110649C(&HFF, Me)
  loc_E301F0: Call Proc_13_29_11D6154(global_52)
  loc_E301F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E30078
  'Data Table: 442DB4
  loc_E30068: Proc_5_0_110649C(&HFF, Me)
  loc_E30070: Call Proc_13_29_11D6154(global_52)
  loc_E30075: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E300D8
  'Data Table: 442DB4
  loc_E300C8: Proc_5_0_110649C(&HFF, Me)
  loc_E300D0: Call Proc_13_29_11D6154(global_52)
  loc_E300D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E30138
  'Data Table: 442DB4
  loc_E30128: Proc_5_0_110649C(&HFF, Me)
  loc_E30130: Call Proc_13_29_11D6154(global_52)
  loc_E30135: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10825DC
  'Data Table: 442DB4
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_442DC5 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1082344: On Error Goto loc_1082590
  loc_108236B: unk_442DC5.Execute "select * FROM GuestStat Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_1082376: Set var_88 = var_C8
  loc_108238C: var_CC = var_88.RecordCount
  loc_108239A: If (var_CC = 0) Then
  loc_10823B6:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_10823C6:   Exit Sub
  loc_10823C7: End If
  loc_10823D6: var_A4 = MemVar_1F920B4 & "\GuestStat.ttx"
  loc_10823DD: Set var_C8 = var_88 
  loc_10823E9: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_10823F3: Set var_88 = var_C8
  loc_10823F9: var_B4 = CVar(var_12E) 'Integer
  loc_10823FC: var_98 = var_B4 'Variant
  loc_1082418: var_A0 = MemVar_1F920B4 & "\GuestStat.RPT"
  loc_1082421: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108242C: MemVar_1F921E4 = var_C8
  loc_1082447: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108244F: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108245B: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1082474:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108247C:   Call 0.Method_arg_20 (var_138)
  loc_1082484:   Call 0.Method_arg_30 (var_A0)
  loc_10824CA:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10824E0:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10824E8:     Call 0.Method_arg_20 (var_138)
  loc_10824F0:     Call 0.Method_arg_38 ("'Guest Status Master'")
  loc_10824FC:   End If
  loc_10824FF: Next var_132 'Integer
  loc_108251D: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1082525: Call 0.Method_arg_2C (var_DC)
  loc_1082533: Call 0.Method_arg_150 (var_FC)
  loc_108253E: Call 0.Method_arg_50 (var_A0)
  loc_1082548: Set var_138 = Nothing
  loc_1082562: Set var_C8 = MemVar_1F921E4 
  loc_108256E: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_1082579: MemVar_1F921E4 = var_C8
  loc_108258C: Set var_88 = Nothing
  loc_108258F: Exit Sub
  loc_1082590: ' Referenced from: 1082344
  loc_1082598: Set var_C8 = Err()
  loc_108259E: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10825A9: Call 0.Method_arg_50 (var_A4)
  loc_10825C5: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_10825D8: Exit Sub
  loc_10825D9: ThisVCallR8
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E09AF0
  'Data Table: 442DB4
  Dim Me As Recordset15
  loc_E09AE7: Me.Requery -1
  loc_E09AEC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '121A508
  'Data Table: 442DB4
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_442DC5 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_B0 As Variant
  loc_121A058: On Error Goto loc_121A4B4
  loc_121A05F: var_86 = CByte(0) 'Byte
  loc_121A06E: Set var_90 = Me.Txt
  loc_121A074: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_121A09D: If (Proc_6_27_EA565C(var_94, "Name") = 0) Then
  loc_121A0A7:   Call Txt_GotFocus()
  loc_121A0AC:   Exit Sub
  loc_121A0AD: End If
  loc_121A0B0: Call Proc_13_30_1089BE8(var_9E, CInt(0))
  loc_121A0BB: If (var_9E = &HFF) Then
  loc_121A0BE:   Exit Sub
  loc_121A0BF: End If
  loc_121A0C3: Set var_90 = Me.TopCtrl1
  loc_121A0C9: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_94)
  loc_121A0E2: If (CStr() = "Add") Then
  loc_121A0EB:   var_D4 = 0
  loc_121A108:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From GuestStat WHERE SITE_CODE='" & MemVar_1F92070
  loc_121A10F:   var_B4 = CStr() & "'"
  loc_121A118:   unk_442DC5.Execute var_B4, var_B0, -1
  loc_121A120:   var_90 = var_90.Fields
  loc_121A128:   var_D4 = var_94.Item(var_94)
  loc_121A130:   var_98 = var_98.Value
  loc_121A169:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_121A18F:   var_E4 = Format(CStr(var_E4), "000")
  loc_121A197:   var_108 = (1 + var_E4)
  loc_121A1A2:   global_60 = CStr(var_108)
  loc_121A1B7: Else
  loc_121A1D4:   var_94 = Me.Fields.Item("Code")
  loc_121A1EB:   global_60 = CStr(var_94.Value)
  loc_121A1FC: End If
  loc_121A205: unk_442DC5.BeginTrans var_10C
  loc_121A20E: var_86 = CByte(1) 'Byte
  loc_121A216: Set var_90 = Me.TopCtrl1
  loc_121A21C: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(1)
  loc_121A235: If (CStr(var_F8) = "Add") Then
  loc_121A24F:   var_9C = "Insert Into GuestStat(Code,Name,Site_Code,U_Name,U_EntDt,U_AE,logSite_Code) Values('" & global_60
  loc_121A267:   Set var_90 = Me.Txt
  loc_121A26D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_9C & "','")
  loc_121A275:   var_184 = var_94.Text
  loc_121A27E:   var_110 = -1 & var_B4
  loc_121A2B2:   Proc_6_7_F25D88(var_E4, Date, CVar(var_110 & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',"))
  loc_121A2E4:   unk_442DC5.Execute CStr(var_98 & var_E4 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_E4, 
  loc_121A31D: Else
  loc_121A33B:   Set var_90 = Me.Txt
  loc_121A341:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE GuestStat SET Name='")
  loc_121A349:   var_184 = var_94.Text
  loc_121A352:   var_B4 = -1 & var_9C
  loc_121A375:   var_F8 = CVar(var_B4 & "',SITE_CODE='" & MemVar_1F92070 & "',U_name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_121A386:   Proc_6_7_F25D88(var_E4, Date)
  loc_121A38E:   var_108 = var_F8 & var_E4 
  loc_121A392:   var_C4 = " ,U_AE='E' WHERE Code='"
  loc_121A3BB:   unk_442DC5.Execute CStr(var_108 & var_C4 & CVar(global_60) & "'"), var_98, 
  loc_121A3ED: End If
  loc_121A3F3: unk_442DC5.CommitTrans
  loc_121A3FC: var_86 = CByte(0) 'Byte
  loc_121A40B: Me.Requery -1
  loc_121A41B: Me.Requery -1
  loc_121A448: Me.Find "Code='" & global_60 & "'", 0, 1
  loc_121A458: Set var_90 = Me.TopCtrl1
  loc_121A45E: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_C4)
  loc_121A477: If (CStr() = "Add") Then
  loc_121A47A:   Call TopCtrl1_UnknownEvent_A()
  loc_121A47F:   Exit Sub
  loc_121A480: End If
  loc_121A495: var_9C = "INI"
  loc_121A4A3: Call Proc_13_27_E7A9CC(Proc_5_1_100CB50(var_9C, Me))
  loc_121A4AE: Call Proc_13_29_11D6154(global_52)
  loc_121A4B3: Exit Sub
  loc_121A4B4: ' Referenced from: 121A058
  loc_121A4BD: If (CInt(var_86) = 1) Then
  loc_121A4C6:   unk_442DC5.RollbackTrans
  loc_121A4CB: End If
  loc_121A4D3: Set var_90 = Err()
  loc_121A4D9: Call 0.Method_arg_2C (var_9C)
  loc_121A4F2: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_121A505: Exit Sub
  loc_121A506: CExtInstUnk
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EAACE4
  'Data Table: 442DB4
  Dim Me As Recordset15
  loc_EAAC62: Set var_88 = Me.Txt
  loc_EAAC68: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EAAC76: Proc_6_74_E226B0(var_8C)
  loc_EAAC82: Call Proc_13_31_E83758(var_8C)
  loc_EAAC95: If (Index = CInt(0)) Then
  loc_EAACAF:   If (Me.RecordCount > 0) Then
  loc_EAACBD:     Set var_8C = Me.FGPoint
  loc_EAACD5:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_EAACE3:   End If
  loc_EAACE3: End If
  loc_EAACE3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FD4CD0
  'Data Table: 442DB4
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As TextBox
  loc_FD4B16: If (CLng(Shift) = &H1B) Then
  loc_FD4B19:   Call Proc_13_31_E83758()
  loc_FD4B1E:   Exit Sub
  loc_FD4B1F: End If
  loc_FD4B2D: If (KeyCode = CInt(0)) Then
  loc_FD4B4D:   Set var_9C = Me.FGPoint
  loc_FD4B7F:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_FD4BEC:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FD4BF3:     Set var_9C = Me.DGHelp
  loc_FD4BFA:     Set var_90 = Me.FGPoint
  loc_FD4C12:     Proc_6_138_106D6F8(var_9C, global_56, KeyCode, var_90, 0)
  loc_FD4C20:   End If
  loc_FD4C20: End If
  loc_FD4C3C: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FD4C5D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_FD4C66:     Call Txt_Validate(KeyCode)
  loc_FD4C71:     If (var_86 = &HFF) Then
  loc_FD4C7F:       Set var_8C = Me.Txt
  loc_FD4C85:       Call 0.Method_Txt_KeyDown0 (CInt(0), var_90, var_86, 1)
  loc_FD4C8D:       var_90.SetFocus
  loc_FD4C99:       Exit Sub
  loc_FD4C9A:     End If
  loc_FD4CA1:     Call Proc_13_32_E91724(CInt(0), var_9C)
  loc_FD4CA6:     Exit Sub
  loc_FD4CAA:   Else
  loc_FD4CBF:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FD4CC8:       Proc_6_75_E527CC(Shift, arg_14)
  loc_FD4CCD:     End If
  loc_FD4CCD:   End If
  loc_FD4CCD: End If
  loc_FD4CCD: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E16558
  'Data Table: 442DB4
  Dim arg_10 As Integer
  loc_E16546: Proc_6_133_E7EF78(var_94)
  loc_E1654F: arg_10 = CInt(var_94)
  loc_E16555: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC0290
  'Data Table: 442DB4
  loc_EC0202: If (KeyCode = CInt(0)) Then
  loc_EC0221:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC022E:     var_A4 = "Name"
  loc_EC024D:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_56)
  loc_EC027F:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC028D:   End If
  loc_EC028D: End If
  loc_EC028D: Exit Sub
  loc_EC028E: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4BCA4
  'Data Table: 442DB4
  loc_E4BC82: Set var_88 = Me.Txt
  loc_E4BC88: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4BC96: Proc_6_73_E22704(var_8C)
  loc_E4BCA2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E29CE4
  'Data Table: 442DB4
  Dim arg_10 As Integer
  loc_E29CC6: If (Cancel = CInt(0)) Then
  loc_E29CCC:   Call Proc_13_30_1089BE8(var_88)
  loc_E29CD7:   If (var_88 = &HFF) Then
  loc_E29CDC:     arg_10 = &HFF
  loc_E29CDF:     Exit Sub
  loc_E29CE0:   End If
  loc_E29CE0: End If
  loc_E29CE0: Exit Sub
End Sub

Private Sub Form_Load() '104B56C
  'Data Table: 442DB4
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_442DC5 As Connection15
  Dim var_DC As Variant
  loc_104B31C: On Error Goto loc_104B526
  loc_104B32E: Me.LblUser.Left = CDbl(13500)
  loc_104B345: Me.LblUser.Top = CDbl(7800)
  loc_104B35C: Me.LblLDt.Top = CDbl(8160)
  loc_104B373: Me.LblLDt.Left = CDbl(13500)
  loc_104B382: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_104B395: Set var_8C = Me.Txt
  loc_104B39B: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_104B3BA: Me.DGHelp.Left = CVar(var_90.Left)
  loc_104B3D6: Set var_B8 = Me.Txt
  loc_104B3DC: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_104B3FD: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_104B415: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_104B424: Me.DGHelp.Top = CVar(var_90.Left)
  loc_104B45A: unk_442DC5.Execute "SELECT Code,Name FROM GuestStat WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_104B489: CVarUnk
  loc_104B48E: VerifyVarObj
  loc_104B49A: LateIdStAd
  loc_104B4CC: unk_442DC5.Execute "SELECT * FROM GuestStat WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_104B507: var_C8 = "INI"
  loc_104B515: Call Proc_13_27_E7A9CC(Proc_5_1_100CB50(var_C8, Me, Me.DGHelp, Me), Me)
  loc_104B520: Call Proc_13_29_11D6154(Me.Txt)
  loc_104B525: Exit Sub
  loc_104B526: ' Referenced from: 104B31C
  loc_104B52E: Set var_8C = Err()
  loc_104B534: Call 0.Method_arg_2C (var_C8)
  loc_104B555: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_104B568: Exit Sub
  loc_104B569: Exit Sub
End Sub

Private Sub Form_Resize() 'ED60E8
  'Data Table: 442DB4
  Dim var_8C As Label
  loc_ED6046: Call 0.Method_arg_50 (var_88)
  loc_ED6058: Me.LblFormCaption.Caption = var_88
  loc_ED6071: Me.LblFormCaption.Left = CDbl(0)
  loc_ED607D: Set var_A0 = Me.TopCtrl1
  loc_ED6083: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010006()
  loc_ED6090: Set var_8C = Me.TopCtrl1
  loc_ED6096: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004()
  loc_ED60B0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED60CB: Call 0.Method_arg_100 (var_B8)
  loc_ED60DD: Me.LblFormCaption.Width = var_B8
  loc_ED60E5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E28E80
  'Data Table: 442DB4
  loc_E28E63: Set global_52 = Nothing
  loc_E28E75: Set global_56 = Nothing
  loc_E28E7C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8B174
  'Data Table: 442DB4
  loc_E8B110: On Error Goto loc_E8B130
  loc_E8B127: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8B12F: Exit Sub
  loc_E8B130: ' Referenced from: E8B110
  loc_E8B138: Set var_88 = Err()
  loc_E8B13E: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8B15F: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8B172: Exit Sub
  loc_E8B173: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E30314
  'Data Table: 442DB4
  loc_E30308: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3030B:   Call DGHelp_UnknownEvent_9()
  loc_E30310: End If
  loc_E30310: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE63BC
  'Data Table: 442DB4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE6313: Me.DGHelp.Visible = False
  loc_EE6332: If (Me.RecordCount > 0) Then
  loc_EE6352:   var_B0 = Me.Fields.Item("Name")
  loc_EE6371:   Set var_B4 = Me.Txt
  loc_EE6377:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE637F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE6395: End If
  loc_EE63A0: Set var_A8 = Me.Txt
  loc_EE63A6: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE63AE: var_B0.SetFocus
  loc_EE63BA: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA8510
  'Data Table: 442DB4
  Dim var_A8 As Variant
  loc_EA8490: Set var_88 = Me.DGHelp
  loc_EA84BA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA84C2: Set var_BC = Me.DGHelp
  loc_EA84FE: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0), Me.FGPoint)
  loc_EA850C: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC01A4
  'Data Table: 442DB4
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC011A: On Error Goto loc_EC015F
  loc_EC0123: Me.MoveFirst
  loc_EC013D: var_8C = "code='" & MyValue
  loc_EC014D: Me.Find var_8C & "'", 0, 1
  loc_EC0159: Call Proc_13_29_11D6154(var_A0)
  loc_EC015E: Exit Sub
  loc_EC015F: ' Referenced from: EC011A
  loc_EC0167: Set var_A4 = Err()
  loc_EC016D: Call 0.Method_arg_2C (var_8C)
  loc_EC018E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC01A1: Exit Sub
  loc_EC01A2: Exit Sub
End Sub

Public Sub Proc_13_27_E7A9CC(arg_C) 'E7A9CC
  'Data Table: 442DB4
  Dim var_98 As TextBox
  loc_E7A97A: Set var_8C = Me.Txt
  loc_E7A980: Call 0.Method_Proc_13_27_E7A9CCC (var_8E, var_86)
  loc_E7A990: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A9A6:   Set var_8C = Me.Txt
  loc_E7A9AC:   Call 0.Method_Proc_13_27_E7A9CC0 (CInt(var_86), var_98)
  loc_E7A9B4:   var_98.Enabled = arg_C
  loc_E7A9C3: Next var_92 'Byte
  loc_E7A9C9: Exit Sub
End Sub

Public Sub Proc_13_28_EAE42C
  'Data Table: 442DB4
  Dim var_98 As TextBox
  loc_EAE39E: global_64 = vbNullString
  loc_EAE3B0: Set var_8C = Me.Txt
  loc_EAE3B6: Call 0.Method_Proc_13_28_EAE42CC (var_8E, var_86)
  loc_EAE3C6: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAE3DC:   Set var_8C = Me.Txt
  loc_EAE3E2:   Call 0.Method_Proc_13_28_EAE42C0 (CInt(var_86), var_98)
  loc_EAE3EA:   var_98.Text = vbNullString
  loc_EAE406:   Set var_8C = Me.Txt
  loc_EAE40C:   Call 0.Method_Proc_13_28_EAE42C0 (CInt(var_86), var_98)
  loc_EAE414:   var_98.Tag = vbNullString
  loc_EAE423: Next var_92 'Byte
  loc_EAE429: Exit Sub
End Sub

Public Sub Proc_13_29_11D6154
  'Data Table: 442DB4
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_442DC5 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_11C As TextBox
  loc_11D5D1C: On Error Goto loc_11D610E
  loc_11D5D25: Proc_183_45_E5C118(global_52)
  loc_11D5D80: unk_442DC5.Execute CStr("Select U_Name,U_AE,U_EntDt From gueststat where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_11D5D8B: Set var_88 = var_118
  loc_11D5DDF: var_118 = var_88.Fields
  loc_11D5E48: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_11D5E8D: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_11D5F07: var_11C = var_88.Fields.Item("U_AE")
  loc_11D5F20: var_114 = "entdt : "
  loc_11D5F2B: var_F0 = "Last Update : "
  loc_11D5F68: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), var_F0, var_114))
  loc_11D5FAD: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_11D5FFC: If (Me.RecordCount <= 0) Then
  loc_11D5FFF:   Call Proc_13_28_EAE42C()
  loc_11D6007: Else
  loc_11D603B:   global_60 = CStr(Me.Fields.Item("Name").Value)
  loc_11D6086:   Set var_118 = Me.Txt
  loc_11D608C:   Call 0.Method_Proc_13_29_11D61540 (0, var_11C)
  loc_11D6094:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11D60D8:   var_F4 = CStr(Me.Fields.Item("Code").Value)
  loc_11D60E4:   Set var_118 = Me.Txt
  loc_11D60EA:   Call 0.Method_Proc_13_29_11D61540 (0, var_11C)
  loc_11D60F2:   var_11C.Tag = var_F4
  loc_11D6108: End If
  loc_11D6108: Call Proc_13_31_E83758()
  loc_11D610D: Exit Sub
  loc_11D610E: ' Referenced from: 11D5D1C
  loc_11D6116: Set var_8C = Err()
  loc_11D611C: Call 0.Method_arg_2C (var_F4)
  loc_11D613D: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_11D6150: Exit Sub
End Sub

Public Sub Proc_13_30_1089BE8
  'Data Table: 442DB4
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_442DC5 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108997B: If (Me.RecordCount = 0) Then
  loc_108997E:   Proc_13_30_1089BE8 = 
  loc_1089984: End If
  loc_1089988: Set var_90 = Me.TopCtrl1
  loc_108998E: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_10899A7: If (CStr() = "Add") Then
  loc_10899E5:   Set var_90 = Me.Txt
  loc_10899EB:   Call 0.Method_Proc_13_30_1089BE80 (CInt(0), var_A8, var_AC, "Select Count(*) From GuestStat Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1089A0C:   unk_442DC5.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1089A1C:    = var_D0.Item()
  loc_1089A24:    = var_E4.Value
  loc_1089A55:   If (var_A8.Text.Fields > 0) Then
  loc_1089A73:     var_A0 = "Duplicate Name"
  loc_1089A79:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1089A94:     Set var_90 = Me.Txt
  loc_1089A9A:     Call 0.Method_Proc_13_30_1089BE80 (CInt(0))
  loc_1089AA2:     var_A8.SetFocus
  loc_1089AB3:     Proc_13_30_1089BE8 = &HFF
  loc_1089AB9:   End If
  loc_1089ABC: Else
  loc_1089AF7:   Set var_90 = Me.Txt
  loc_1089AFD:   Call 0.Method_Proc_13_30_1089BE80 (CInt(0), var_A8, var_AC, "Select Count(*) From GuestStat Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1089B2F:   unk_442DC5.Execute var_D0 & var_AC & "' And Name<>'" & global_64 & "'", 0, var_E4
  loc_1089B3F:    = var_D0.Item(var_A8)
  loc_1089B47:    = var_E4.Value
  loc_1089B7C:   If (var_A8.Text.Fields > 0) Then
  loc_1089BA0:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1089BBB:     Set var_90 = Me.Txt
  loc_1089BC1:     Call 0.Method_Proc_13_30_1089BE80 (CInt(0))
  loc_1089BC9:     var_A8.SetFocus
  loc_1089BDA:     Proc_13_30_1089BE8 = &HFF
  loc_1089BE0:   End If
  loc_1089BE0: End If
  loc_1089BE0: Proc_13_30_1089BE8 = var_A8
End Sub

Public Sub Proc_13_31_E83758
  'Data Table: 442DB4
  loc_E83704: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E83716:   Me.DGHelp.Visible = False
  loc_E8371E: End If
  loc_E8373A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E8374C:   Me.FGPoint.Visible = False
  loc_E83754: End If
  loc_E83754: Exit Sub
  loc_E83755: Set var_8C = 
End Sub

Public Sub Proc_13_32_E91724(arg_C) 'E91724
  'Data Table: 442DB4
  Dim var_10C As TextBox
  loc_E916B8: Call Proc_13_31_E83758()
  loc_E916F4: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E916F7:   Call TopCtrl1_UnknownEvent_16()
  loc_E916FF: Else
  loc_E91709:   Set var_108 = Me.Txt
  loc_E9170F:   Call 0.Method_Proc_13_32_E917240 (arg_C)
  loc_E91717:   var_10C.SetFocus
  loc_E91723: End If
  loc_E91723: Exit Sub
End Sub
