VERSION 5.00
Begin VB.Form TelCallCodeMast
  Caption = "Call Code Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8805
  ClientHeight = 4830
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
    Width = 8805
    Height = 510
    TabIndex = 11
  End
  Begin DataGrid DGHelp
    Left = 5280
    Top = 540
    Width = 2550
    Height = 2000
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2355
    Top = 825
    Width = 1890
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 2355
    Top = 1635
    Width = 780
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 2355
    Top = 1365
    Width = 4020
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 2355
    Top = 1095
    Width = 4020
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin MSFlexGrid FGPoint
    Left = 195
    Top = 2550
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGCallType
    Left = 3360
    Top = 2580
    Width = 3645
    Height = 1995
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin Label LblName
    Caption = "STD Code"
    Index = 0
    ForeColor = &H0&
    Left = 690
    Top = 840
    Width = 855
    Height = 240
    TabIndex = 7
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblLedgerAc
    Caption = "Pulse In Seconds"
    Index = 0
    ForeColor = &H0&
    Left = 690
    Top = 1665
    Width = 1455
    Height = 240
    TabIndex = 6
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Description"
    Index = 2
    ForeColor = &H0&
    Left = 690
    Top = 1395
    Width = 945
    Height = 240
    TabIndex = 5
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblLedgerAc
    Caption = "Call Type"
    Index = 2
    ForeColor = &H0&
    Left = 690
    Top = 1125
    Width = 795
    Height = 240
    TabIndex = 4
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
End

Attribute VB_Name = "TelCallCodeMast"


Private Sub DGHelp_UnknownEvent_9 'F4CB84
  'Data Table: 445DA4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4CA7B: Me.DGHelp.Visible = False
  loc_F4CA9A: If (Me.RecordCount > 0) Then
  loc_F4CAD9:   Set var_B4 = Me.Txt
  loc_F4CADF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4CAE7:   var_B8.Tag = CStr(Me.Fields.Item("STDCode").Value)
  loc_F4CB1A:   var_B0 = Me.Fields.Item("STDCode")
  loc_F4CB39:   Set var_B4 = Me.Txt
  loc_F4CB3F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4CB47:   var_B8.Text = CStr(var_B0.Value)
  loc_F4CB5D: End If
  loc_F4CB68: Set var_A8 = Me.Txt
  loc_F4CB6E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F4CB76: var_B0.SetFocus
  loc_F4CB82: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E769AC
  'Data Table: 445DA4
  loc_E7696A: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E76981: Set var_8C = Me.FGPoint
  loc_E7699D: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0))
  loc_E769AB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ECDD7C
  'Data Table: 445DA4
  Dim var_94 As TextBox
  loc_ECDCDC: On Error Goto loc_ECDD38
  loc_ECDCDF: Call Proc_91_31_E79894()
  loc_ECDCF9: var_88 = "ADD"
  loc_ECDD07: Call Proc_91_30_E799C4(Proc_5_1_100CB50(var_88, Me))
  loc_ECDD1D: Set var_8C = Me.Txt
  loc_ECDD23: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_ECDD2B: var_94.SetFocus
  loc_ECDD37: Exit Sub
  loc_ECDD38: ' Referenced from: ECDCDC
  loc_ECDD40: Set var_8C = Err()
  loc_ECDD46: Call 0.Method_arg_2C (var_88)
  loc_ECDD67: MsgBox(CVar(var_88), &H40, "Information", var_E4, var_104)
  loc_ECDD7A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBF2CC
  'Data Table: 445DA4
  loc_EBF234: On Error Goto loc_EBF2C4
  loc_EBF26E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBF27D:   Set var_110 = Me
  loc_EBF294:   Call Proc_91_30_E799C4(Proc_5_1_100CB50("INI", var_110))
  loc_EBF29F:   Call Proc_91_32_1047584(global_52)
  loc_EBF2A7: Else
  loc_EBF2AD:   Call 0.Method_arg_1E8 (var_110)
  loc_EBF2B5:   Call var_110.SetFocus
  loc_EBF2BE: End If
  loc_EBF2BE: Call Proc_91_34_EBC0C0()
  loc_EBF2C3: Exit Sub
  loc_EBF2C4: ' Referenced from: EBF234
  loc_EBF2C4: Proc_6_60_E62BC4()
  loc_EBF2C9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10E8220
  'Data Table: 445DA4
  Dim var_96 As Integer
  Dim unk_445DB7 As Connection15
  Dim Me As Recordset15
  Dim var_124 As Fields15
  Dim var_FC As Variant
  Dim var_12C As String
  loc_10E7F38: On Error Goto loc_10E81C9
  loc_10E7F49: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_10E7F4C:   Exit Sub
  loc_10E7F4D: End If
  loc_10E7F84: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_FC, var_11C) = 6) Then
  loc_10E7F89:   var_96 = 0
  loc_10E7F95:   unk_445DB7.BeginTrans var_120
  loc_10E7F9C:   var_96 = &HFF
  loc_10E7FB0:   var_94 = Me.Bookmark 'Variant
  loc_10E7FFC:   var_FC = "Delete From TelCallCode Where STDCODE='" & Me.Fields.Item("STDCode").Value & "'" 
  loc_10E800A:   unk_445DB7.Execute CStr(var_FC), var_11C, -1
  loc_10E8055:   var_168 = 0
  loc_10E8068:   var_160 = 0
  loc_10E8073:   var_15C = 0
  loc_10E8086:   var_154 = 0
  loc_10E8091:   var_150 = 0
  loc_10E80A4:   var_148 = 0
  loc_10E80E4:   var_12C = "TelCallCode"
  loc_10E80ED:   Proc_154_5_10E33A4(MemVar_1F92044, var_12C, "STDCode", &HC8, CStr(Me.Fields.Item("STDCode").Value), 0, 0, 0)
  loc_10E811B:   unk_445DB7.CommitTrans
  loc_10E8122:   var_96 = 0
  loc_10E8130:   Me.Requery -1
  loc_10E8140:   Me.Requery -1
  loc_10E8160:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10E816D:     Me.Bookmark = var_94
  loc_10E8175:   Else
  loc_10E8189:     If (Me.EOF = 0) Then
  loc_10E8192:       Me.MoveLast
  loc_10E8197:     End If
  loc_10E8197:   End If
  loc_10E8197:   Call Proc_91_32_1047584(var_96, var_148, 0, var_150, var_154)
  loc_10E81B8:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_10E81C0: End If
  loc_10E81C5: Set var_9C = Nothing
  loc_10E81C8: Exit Sub
  loc_10E81C9: ' Referenced from: 10E7F38
  loc_10E81CF: If (var_96 = &HFF) Then
  loc_10E81D8:   unk_445DB7.RollbackTrans
  loc_10E81DD: End If
  loc_10E81E5: Set var_124 = Err()
  loc_10E81EB: Call 0.Method_arg_2C (var_12C, 0, var_15C)
  loc_10E820C: MsgBox(CVar(var_12C), &H30, " Deletion Error ", var_FC, var_11C)
  loc_10E821F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F22A4C
  'Data Table: 445DA4
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F22950: On Error Goto loc_F22A07
  loc_F22961: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F22964:   Exit Sub
  loc_F22965: End If
  loc_F2297C: If (Me.RecordCount > 0) Then
  loc_F22994:   var_8C = "EDIT"
  loc_F229A2:   Call Proc_91_30_E799C4(Proc_5_1_100CB50(var_8C, Me))
  loc_F229B8:   Set var_90 = Me.Txt
  loc_F229BE:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F229C6:   var_98.SetFocus
  loc_F229D5: Else
  loc_F229F6:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F22A06: End If
  loc_F22A06: Exit Sub
  loc_F22A07: ' Referenced from: F22950
  loc_F22A0F: Set var_90 = Err()
  loc_F22A15: Call 0.Method_arg_2C (var_8C)
  loc_F22A36: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F22A49: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17138
  'Data Table: 445DA4
  loc_E1712D: Me.Global.Unload Me
  loc_E17135: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F18E08
  'Data Table: 445DA4
  Dim Me As Recordset15
  loc_F18D18: On Error Goto loc_F18DA2
  loc_F18D24: var_88 = Me.RecordCount
  loc_F18D32: If (var_88 <= 0) Then
  loc_F18D56:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F18D66:   Exit Sub
  loc_F18D67: End If
  loc_F18D6A: MemVar_1F920E4 = "Select TelCallCode.STDCode As SearchCode,CAST(TelCallCode.STDCode AS VARCHAR(11)) AS STDCODE ,TelCallType.CallType ,TelCallCode.description ,CAST(TelCallCode.pulseinsec AS VARCHAR(5))  FROM TelCallCode INNER JOIN TelCallType ON TelCallCode.CallTypeCode=TelCallType.Code Order by TelCallCode.STDCode"
  loc_F18D74: MemVar_1F92120 = Me
  loc_F18D7B: var_10C = "3000,1000,2000,1000"
  loc_F18D81: Proc_6_126_F1BCC0(var_10C)
  loc_F18D9C: Call 0.Method_arg_2B0 (1)
  loc_F18DA1: Exit Sub
  loc_F18DA2: ' Referenced from: F18D18
  loc_F18DAA: Set var_110 = Err()
  loc_F18DB0: Call 0.Method_arg_1C (var_88)
  loc_F18DC1: If (var_88 <> 0) Then
  loc_F18DCC:   Set var_110 = Err()
  loc_F18DD2:   Call 0.Method_arg_2C (var_10C)
  loc_F18DF3:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F18E06: End If
  loc_F18E06: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2F478
  'Data Table: 445DA4
  loc_E2F468: Proc_5_0_110649C(&HFF, Me)
  loc_E2F470: Call Proc_91_32_1047584(global_52)
  loc_E2F475: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2F358
  'Data Table: 445DA4
  loc_E2F348: Proc_5_0_110649C(&HFF, Me)
  loc_E2F350: Call Proc_91_32_1047584(global_52)
  loc_E2F355: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2F3B8
  'Data Table: 445DA4
  loc_E2F3A8: Proc_5_0_110649C(&HFF, Me)
  loc_E2F3B0: Call Proc_91_32_1047584(global_52)
  loc_E2F3B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2F418
  'Data Table: 445DA4
  loc_E2F408: Proc_5_0_110649C(&HFF, Me)
  loc_E2F410: Call Proc_91_32_1047584(global_52)
  loc_E2F415: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1072104
  'Data Table: 445DA4
  Dim unk_445DB7 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_1071E84: On Error Goto loc_10720BB
  loc_1071E9D: unk_445DB7.Execute "SELECT TCC.*,TCT.CallType FROM TelCallCode AS TCC LEFT JOIN TelCallType AS TCT ON TCC.CallTypeCode=TCT.Code ORDER BY TCT.CallType,TCC.STDCode,TCC.Description", var_BC, -1
  loc_1071EA8: Set var_88 = var_C0
  loc_1071EB7: var_C4 = var_88.RecordCount
  loc_1071EC5: If (var_C4 = 0) Then
  loc_1071EE1:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_1071EF1:   Exit Sub
  loc_1071EF2: End If
  loc_1071F01: var_12C = MemVar_1F920B4 & "\CallCodeMast.ttx"
  loc_1071F08: Set var_C0 = var_88 
  loc_1071F14: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_1071F1E: Set var_88 = var_C0
  loc_1071F24: var_AC = CVar(var_12E) 'Integer
  loc_1071F27: var_98 = var_AC 'Variant
  loc_1071F43: var_128 = MemVar_1F920B4 & "\CallCodeMast.RPT"
  loc_1071F4C: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_1071F57: MemVar_1F921E4 = var_C0
  loc_1071F72: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_1071F7A: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1071F86: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_1071F9F:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1071FA7:   Call 0.Method_arg_20 (var_138)
  loc_1071FAF:   Call 0.Method_arg_30 (var_128)
  loc_1071FF5:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_107200B:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1072013:     Call 0.Method_arg_20 (var_138)
  loc_107201B:     Call 0.Method_arg_38 ("'Call Code Master'")
  loc_1072027:   End If
  loc_107202A: Next var_132 'Integer
  loc_1072048: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_1072050: Call 0.Method_arg_2C (var_D4)
  loc_107205E: Call 0.Method_arg_150 (var_F4)
  loc_1072069: Call 0.Method_arg_50 (var_128)
  loc_1072073: Set var_138 = Nothing
  loc_107208D: Set var_C0 = MemVar_1F921E4 
  loc_1072099: Proc_6_99_1483714(var_C0, 0, var_128)
  loc_10720A4: MemVar_1F921E4 = var_C0
  loc_10720B7: Set var_88 = Nothing
  loc_10720BA: Exit Sub
  loc_10720BB: ' Referenced from: 1071E84
  loc_10720C3: Set var_C0 = Err()
  loc_10720C9: Call 0.Method_arg_2C (var_128, &HFF)
  loc_10720D4: Call 0.Method_arg_50 (var_12C)
  loc_10720F0: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_1072103: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E22314
  'Data Table: 445DA4
  Dim Me As Recordset15
  loc_E222FB: Me.Requery -1
  loc_E2230B: Me.Requery -1
  loc_E22310: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '127E4AC
  'Data Table: 445DA4
  Dim unk_445DB7 As Connection15
  Dim var_A0 As String
  Dim var_98 As TextBox
  Dim var_C0 As TextBox
  Dim var_D4 As TextBox
  Dim var_E8 As TextBox
  Dim var_200 As Double
  Dim var_BC As String
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_140 As String
  Dim var_150 As Variant
  Dim var_1D0 As Variant
  Dim var_244 As TextBox
  Dim var_1F4 As Variant
  Dim var_240 As Variant
  Dim Me As Recordset15
  loc_127DF80: On Error Goto loc_127E459
  loc_127DF87: var_86 = CByte(0) 'Byte
  loc_127DF96: Set var_94 = Me.Txt
  loc_127DF9C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_127DFC5: If (Proc_183_19_E8DAFC(var_98, "STD Code") = 0) Then
  loc_127DFCF:   Call Txt_GotFocus()
  loc_127DFD4:   Exit Sub
  loc_127DFD5: End If
  loc_127DFDE: unk_445DB7.BeginTrans var_A8
  loc_127DFE7: var_86 = CByte(1) 'Byte
  loc_127DFEF: Set var_94 = Me.TopCtrl1
  loc_127DFF5: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CInt(0))
  loc_127E00E: If (CStr(var_98) = "Add") Then
  loc_127E01F:   Set var_94 = Me.Txt
  loc_127E025:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_127E02D:   var_A0 = var_98.Text
  loc_127E040:   Set var_9C = Me.Txt
  loc_127E046:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_C0)
  loc_127E061:   Set var_D0 = Me.Txt
  loc_127E067:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_D4)
  loc_127E082:   Set var_E4 = Me.Txt
  loc_127E088:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_E8)
  loc_127E09D:   var_200 = Val(var_E8.Text)
  loc_127E0AE:   Proc_6_7_F25D88(var_110, Date)
  loc_127E0C7:   var_BC = "Insert Into TelCallCode(STDCode,CallTypeCode,Description,PulseInSec,U_Name,U_EntDt,U_AE,SITE_CODE,LOGSITE_CODE) Values('" & var_A0
  loc_127E115:   var_140 = ",'A','"
  loc_127E11A:   var_150 = CVar(var_BC & "','" & var_C0.Tag & "','" & var_D4.Text & "'," & CStr(var_200) & ",'" & MemVar_1F920C8 & "',") & var_110 & var_140 
  loc_127E140:   var_1D0 = var_150 & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_127E14E:   unk_445DB7.Execute CStr(var_1D0), var_1F4, -1
  loc_127E1A3: Else
  loc_127E1B1:   Set var_94 = Me.Txt
  loc_127E1B7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_127E1BF:   var_1F8 = var_98.Text
  loc_127E1D2:   Set var_9C = Me.Txt
  loc_127E1D8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_C0)
  loc_127E1F3:   Set var_D0 = Me.Txt
  loc_127E1F9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_D4)
  loc_127E214:   Set var_E4 = Me.Txt
  loc_127E21A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_E8)
  loc_127E236:   Proc_6_39_E7C810(var_110, CVar(Val(var_E8.Text)))
  loc_127E249:   Proc_6_7_F25D88(var_1D0, Date)
  loc_127E25C:   Set var_1F8 = Me.Txt
  loc_127E262:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_244)
  loc_127E2A6:   var_120 = CVar("UPDATE TelCallCode SET STDCode='" & var_A0 & "',CallTypeCode='" & var_C0.Tag & "',Description='" & var_D4.Text & "',PulseInSec=") 'String
  loc_127E2AC:   var_130 = var_120 & var_110 
  loc_127E2EB:   var_240 = var_130 & ",U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_1D0 & ",U_AE='E',SITE_CODE='" & CVar(MemVar_1F92070) & "' WHERE StdCode='" 
  loc_127E30C:   unk_445DB7.Execute CStr(var_240 & CVar(var_244.Text) & "'"), var_2A4, -1
  loc_127E366: End If
  loc_127E36C: unk_445DB7.CommitTrans
  loc_127E375: var_86 = CByte(0) 'Byte
  loc_127E384: Me.Requery -1
  loc_127E394: Me.Requery -1
  loc_127E3B8: Set var_94 = Me.Txt
  loc_127E3BE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0, "StdCode='", 0)
  loc_127E3C6: 1 = var_98.Text
  loc_127E3DF: Me.Find var_140 & var_A0 & "'", var_2A8, var_200
  loc_127E3F8: Set var_94 = Me.TopCtrl1
  loc_127E3FE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_127E417: If (CStr() = "Add") Then
  loc_127E41A:   Call TopCtrl1_UnknownEvent_A()
  loc_127E41F:   Exit Sub
  loc_127E420: End If
  loc_127E435: var_A0 = "INI"
  loc_127E443: Call Proc_91_30_E799C4(Proc_5_1_100CB50(var_A0, Me))
  loc_127E44E: Call Proc_91_34_EBC0C0(global_52)
  loc_127E453: Call Proc_91_32_1047584()
  loc_127E458: Exit Sub
  loc_127E459: ' Referenced from: 127DF80
  loc_127E462: If (CInt(var_86) = 1) Then
  loc_127E46B:   unk_445DB7.RollbackTrans
  loc_127E470: End If
  loc_127E478: Set var_94 = Err()
  loc_127E47E: Call 0.Method_arg_2C (var_A0)
  loc_127E497: MsgBox(CVar(var_A0), &H10, var_110, var_120, var_130)
  loc_127E4AA: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E63594
  'Data Table: 445DA4
  loc_E63564: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E63567:   Call DGHelp_UnknownEvent_9()
  loc_E6356C: End If
  loc_E63588: If (CBool(Me.DGCallType.Visible) = &HFF) Then
  loc_E6358B:   Call DGCallType_UnknownEvent_9()
  loc_E63590: End If
  loc_E63590: Exit Sub
End Sub

Private Sub Form_Load() 'FFD1BC
  'Data Table: 445DA4
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_445DB7 As Connection15
  Dim var_B8 As Variant
  loc_FFCFC8: On Error Goto loc_FFD176
  loc_FFCFDD: Set var_8C = Me
  loc_FFCFE3: Proc_6_23_DFBA28(var_8C, 4500)
  loc_FFCFEB: Call Proc_91_35_F89F90(7215)
  loc_FFD00B: var_98 = "SELECT StdCode,StdCode FROM TelCallCode WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY TelCallCode.STDCODE"
  loc_FFD014: unk_445DB7.Execute var_98, var_B8, -1
  loc_FFD043: CVarUnk
  loc_FFD048: VerifyVarObj
  loc_FFD054: LateIdStAd
  loc_FFD07D: var_98 = "SELECT Code as Code,CallType FROM TelCallType WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY CallType"
  loc_FFD086: unk_445DB7.Execute var_98, var_B8, -1
  loc_FFD0B5: CVarUnk
  loc_FFD0BA: VerifyVarObj
  loc_FFD0C0: Set var_8C = Me.DGCallType
  loc_FFD0C6: LateIdStAd
  loc_FFD0E8: var_94 = "SELECT TCC.*,TCT.CallType as CallType FROM TelCallCode as TCC LEFT JOIN TelCallType as TCT ON TCC.CallTypeCode=TCT.Code WHERE (TCC.LOGSITE_CODE='" & MemVar_1F92078
  loc_FFD0F8: unk_445DB7.Execute var_94 & "' or TCC.LOGSITE_CODE='HO')", var_B8, -1
  loc_FFD11E: Call Proc_91_29_F2CB78(var_8C, var_8C, Me.DGHelp, var_8C)
  loc_FFD12F: Set var_8C = Me
  loc_FFD138: var_94 = "INI"
  loc_FFD146: Call Proc_91_30_E799C4(Proc_5_1_100CB50(var_94, var_8C, var_8C), var_8C)
  loc_FFD15A: Call 0.Method_arg_160 (var_8C, var_8C)
  loc_FFD168: Call 0.Method_arg_164 (var_8C)
  loc_FFD170: Call Proc_91_32_1047584(var_8C)
  loc_FFD175: Exit Sub
  loc_FFD176: ' Referenced from: FFCFC8
  loc_FFD17E: Set var_8C = Err()
  loc_FFD184: Call 0.Method_arg_2C (var_94)
  loc_FFD1A5: MsgBox(CVar(var_94), &H40, "Information", var_EC, var_10C)
  loc_FFD1B8: Exit Sub
  loc_FFD1B9: Exit Sub
End Sub

Private Sub Form_Resize() 'DFC380
  'Data Table: 445DA4
  loc_DFC37C: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5303C
  'Data Table: 445DA4
  loc_E5300F: Set global_52 = Nothing
  loc_E53021: Set global_56 = Nothing
  loc_E53033: Set global_60 = Nothing
  loc_E5303A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28BFC
  'Data Table: 445DA4
  loc_E28BD4: On Error Goto loc_E28BF3
  loc_E28BEB: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E28BF3: ' Referenced from: E28BD4
  loc_E28BF3: Proc_6_60_E62BC4(Shift)
  loc_E28BF8: Exit Sub
End Sub

Private Sub DGCallType_UnknownEvent_9 'F4B844
  'Data Table: 445DA4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4B73B: Me.DGCallType.Visible = False
  loc_F4B75A: If (Me.RecordCount > 0) Then
  loc_F4B799:   Set var_B4 = Me.Txt
  loc_F4B79F:   Call 0.Method_DGCallType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4B7A7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4B7DA:   var_B0 = Me.Fields.Item("CallType")
  loc_F4B7F9:   Set var_B4 = Me.Txt
  loc_F4B7FF:   Call 0.Method_DGCallType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4B807:   var_B8.Text = CStr(var_B0.Value)
  loc_F4B81D: End If
  loc_F4B828: Set var_A8 = Me.Txt
  loc_F4B82E: Call 0.Method_DGCallType_UnknownEvent_90 (CInt(1))
  loc_F4B836: var_B0.SetFocus
  loc_F4B842: Exit Sub
End Sub

Private Sub DGCallType_UnknownEvent_1F 'E76228
  'Data Table: 445DA4
  loc_E761E6: Proc_6_153_E91194(Me.DGCallType, arg_14)
  loc_E761FD: Set var_8C = Me.FGPoint
  loc_E76219: Proc_6_138_106D6F8(Me.DGCallType, global_60, CInt(2))
  loc_E76227: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1069E88
  'Data Table: 445DA4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_1069C1E: Set var_88 = Me.Txt
  loc_1069C24: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1069C32: Proc_6_74_E226B0(var_8C)
  loc_1069C3E: Call Proc_91_34_EBC0C0(var_8C)
  loc_1069C43: On Error Goto loc_1069E44
  loc_1069C49: var_92 = Index
  loc_1069C54: If (var_92 = CInt(0)) Then
  loc_1069C6E:   If (Me.RecordCount > 0) Then
  loc_1069C7C:     Set var_8C = Me.FGPoint
  loc_1069C94:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_1069CA2:   End If
  loc_1069CA5: Else
  loc_1069CAD:   If (var_92 = CInt(1)) Then
  loc_1069CC7:     If (Me.RecordCount > 0) Then
  loc_1069CD5:       Set var_8C = Me.FGPoint
  loc_1069CED:       Proc_6_137_1193554(Me.DGCallType, global_60, Index)
  loc_1069CFB:     End If
  loc_1069D49:     Set var_88 = Me.Txt
  loc_1069D4F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1069D57:     var_8C = var_8C.Text
  loc_1069D6F:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1069D72:       Exit Sub
  loc_1069D73:     End If
  loc_1069D80:     Set var_88 = Me.Txt
  loc_1069D86:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1069D8E:     var_A0 = var_8C.Text
  loc_1069DA0:     var_B0 = "CallType"
  loc_1069DDB:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1069DE4:       Me.MoveFirst
  loc_1069E07:       Set var_88 = Me.Txt
  loc_1069E0D:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "CallType ='")
  loc_1069E15:       0 = var_8C.Text
  loc_1069E2E:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_1069E43:     End If
  loc_1069E43:   End If
  loc_1069E43: End If
  loc_1069E43: Exit Sub
  loc_1069E44: ' Referenced from: 1069C43
  loc_1069E4C: Set var_88 = Err()
  loc_1069E52: Call 0.Method_arg_2C (var_A0)
  loc_1069E73: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_11C)
  loc_1069E86: Exit Sub
  loc_1069E87: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10DC208
  'Data Table: 445DA4
  Dim var_86 As Integer
  Dim Me As Recordset15
  loc_10DBF16: If (CLng(Shift) = &H1B) Then
  loc_10DBF19:   Call Proc_91_34_EBC0C0()
  loc_10DBF1E:   Exit Sub
  loc_10DBF1F: End If
  loc_10DBF22: var_86 = KeyCode
  loc_10DBF2D: If (var_86 = CInt(0)) Then
  loc_10DBF4D:   Set var_98 = Me.FGPoint
  loc_10DBF7B:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, KeyCode, global_56, Shift)
  loc_10DBFE8:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10DC00E:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_10DC01C:   End If
  loc_10DC01F: Else
  loc_10DC027:   If (var_86 = CInt(1)) Then
  loc_10DC052:     Set var_98 = Nothing
  loc_10DC080:     Proc_6_69_134A198(Me.DGCallType, Me.Txt, KeyCode, global_60, Shift, 0, 1)
  loc_10DC0EF:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10DC0F6:       Set var_98 = Me.DGCallType
  loc_10DC115:       Proc_6_138_106D6F8(var_98, global_60, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_10DC123:     End If
  loc_10DC123:   End If
  loc_10DC123: End If
  loc_10DC15E: If ((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGCallType.Visible) = 0)) Then
  loc_10DC17F:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_10DC1B9:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_130) = 6) Then
  loc_10DC1BC:       Call TopCtrl1_UnknownEvent_16()
  loc_10DC1C1:     End If
  loc_10DC1C1:     Exit Sub
  loc_10DC1C2:   End If
  loc_10DC1D7:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10DC1E0:     Proc_6_75_E527CC(Shift, arg_14, 0, 1)
  loc_10DC1E5:   End If
  loc_10DC1F8:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_10DC201:     Proc_6_76_E52838(Shift, arg_14, var_98)
  loc_10DC206:   End If
  loc_10DC206: End If
  loc_10DC206: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F75FD4
  'Data Table: 445DA4
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F75E96: Proc_6_133_E7EF78(var_94)
  loc_F75E9F: arg_10 = CInt(var_94)
  loc_F75EA8: Proc_6_58_E054C0(arg_10, arg_10)
  loc_F75EB0: var_96 = KeyAscii
  loc_F75EBB: If (var_96 = CInt(0)) Then
  loc_F75EC8:   Set var_9C = Me.Txt
  loc_F75ECE:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_F75EE9:   Proc_6_42_129A86C(var_A0, arg_10, &HA)
  loc_F75EF8: Else
  loc_F75F00:   If (var_96 = CInt(1)) Then
  loc_F75F1F:     If (CBool(Me.DGCallType.Visible) = &HFF) Then
  loc_F75F4C:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10, "CallType")
  loc_F75F66:       Set var_A0 = Me.FGPoint
  loc_F75F7E:       Proc_6_138_106D6F8(Me.DGCallType, global_60, KeyAscii, var_A0)
  loc_F75F8C:     End If
  loc_F75F8F:   Else
  loc_F75F97:     If (var_96 = CInt(3)) Then
  loc_F75FA4:       Set var_9C = Me.Txt
  loc_F75FAA:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 0)
  loc_F75FC5:       Proc_6_42_129A86C(var_A0, arg_10, 4, 2)
  loc_F75FD1:     End If
  loc_F75FD1:   End If
  loc_F75FD1: End If
  loc_F75FD1: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EBBFD8
  'Data Table: 445DA4
  loc_EBBF4E: If (KeyCode = CInt(0)) Then
  loc_EBBF6D:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBBF7A:     var_A0 = "STDCode"
  loc_EBBF95:     Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_56)
  loc_EBBFC7:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EBBFD5:   End If
  loc_EBBFD5: End If
  loc_EBBFD5: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47E7C
  'Data Table: 445DA4
  loc_E47E5A: Set var_88 = Me.Txt
  loc_E47E60: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47E6E: Proc_6_73_E22704(var_8C)
  loc_E47E7A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E93BF8
  'Data Table: 445DA4
  Dim arg_10 As Integer
  loc_E93B88: On Error Goto loc_E93BB4
  loc_E93B99: If (Cancel = CInt(0)) Then
  loc_E93B9F:   Call Proc_91_33_10B3058(var_88)
  loc_E93BAA:   If (var_88 = &HFF) Then
  loc_E93BAF:     arg_10 = &HFF
  loc_E93BB2:     Exit Sub
  loc_E93BB3:   End If
  loc_E93BB3: End If
  loc_E93BB3: Exit Sub
  loc_E93BB4: ' Referenced from: E93B88
  loc_E93BBC: Set var_8C = Err()
  loc_E93BC2: Call 0.Method_arg_2C (var_90, arg_10)
  loc_E93BE3: MsgBox(CVar(var_90), &H40, "Information", var_E0, var_100)
  loc_E93BF6: Exit Sub
  loc_E93BF7: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBF484
  'Data Table: 445DA4
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBF3FA: On Error Goto loc_EBF43F
  loc_EBF403: Me.MoveFirst
  loc_EBF41D: var_8C = "STDcode='" & MyValue
  loc_EBF42D: Me.Find var_8C & "'", 0, 1
  loc_EBF439: Call Proc_91_32_1047584(var_A0)
  loc_EBF43E: Exit Sub
  loc_EBF43F: ' Referenced from: EBF3FA
  loc_EBF447: Set var_A4 = Err()
  loc_EBF44D: Call 0.Method_arg_2C (var_8C)
  loc_EBF46E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBF481: Exit Sub
  loc_EBF482: Exit Sub
End Sub

Public Sub Proc_91_29_F2CB78
  'Data Table: 445DA4
  Dim var_88 As Recordset15
  Dim var_AC As TextBox
  loc_F2CA72: Set var_88 = global_52 
  loc_F2CAAB: Set var_A8 = Me.Txt
  loc_F2CAB1: Call 0.Method_Proc_91_29_F2CB780 (CInt(0), var_AC)
  loc_F2CAB9: var_AC.MaxLength = var_88.Fields.Item("STDCode").DefinedSize
  loc_F2CAFE: Set var_A8 = Me.Txt
  loc_F2CB04: Call 0.Method_Proc_91_29_F2CB780 (CInt(2), var_AC)
  loc_F2CB0C: var_AC.MaxLength = var_88.Fields.Item("Description").DefinedSize
  loc_F2CB51: Set var_A8 = Me.Txt
  loc_F2CB57: Call 0.Method_Proc_91_29_F2CB780 (CInt(3), var_AC)
  loc_F2CB5F: var_AC.MaxLength = var_88.Fields.Item("PulseInSec").DefinedSize
  loc_F2CB71: Set var_88 = Nothing 
  loc_F2CB75: Exit Sub
End Sub

Public Sub Proc_91_30_E799C4(arg_C) 'E799C4
  'Data Table: 445DA4
  Dim var_98 As TextBox
  loc_E79972: Set var_8C = Me.Txt
  loc_E79978: Call 0.Method_Proc_91_30_E799C4C (var_8E, var_86)
  loc_E79988: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7999E:   Set var_8C = Me.Txt
  loc_E799A4:   Call 0.Method_Proc_91_30_E799C40 (CInt(var_86), var_98)
  loc_E799AC:   var_98.Enabled = arg_C
  loc_E799BB: Next var_92 'Byte
  loc_E799C1: Exit Sub
End Sub

Public Sub Proc_91_31_E79894
  'Data Table: 445DA4
  Dim var_98 As TextBox
  loc_E79842: Set var_8C = Me.Txt
  loc_E79848: Call 0.Method_Proc_91_31_E79894C (var_8E, var_86)
  loc_E79858: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7986E:   Set var_8C = Me.Txt
  loc_E79874:   Call 0.Method_Proc_91_31_E798940 (CInt(var_86), var_98)
  loc_E7987C:   var_98.Text = vbNullString
  loc_E7988B: Next var_92 'Byte
  loc_E79891: Exit Sub
  loc_E79892: BranchFVar 11519
End Sub

Public Sub Proc_91_32_1047584
  'Data Table: 445DA4
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_BC As String
  Dim var_A8 As TextBox
  Dim var_B8 As Variant
  loc_1047334: On Error Goto loc_1047541
  loc_104733D: Proc_183_45_E5C118(global_52)
  loc_1047359: If (Me.RecordCount <= 0) Then
  loc_104735C:   Call Proc_91_31_E79894()
  loc_1047364: Else
  loc_10473A0:   Set var_A4 = Me.Txt
  loc_10473A6:   Call 0.Method_Proc_91_32_10475840 (CInt(0), var_A8)
  loc_10473AE:   var_A8.Text = CStr(Me.Fields.Item("STDCode").Value)
  loc_1047400:   Set var_A4 = Me.Txt
  loc_1047406:   Call 0.Method_Proc_91_32_10475840 (CInt(0), var_A8)
  loc_104740E:   var_A8.Tag = CStr(Me.Fields.Item("STDCode").Value)
  loc_104745D:   Set var_A4 = Me.Txt
  loc_1047463:   Call 0.Method_Proc_91_32_10475840 (CInt(1), var_A8)
  loc_104746B:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CallType")))
  loc_10474B8:   Set var_A4 = Me.Txt
  loc_10474BE:   Call 0.Method_Proc_91_32_10475840 (CInt(2), var_A8)
  loc_10474C6:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Description")))
  loc_10474FC:   var_B8 = CVar(Me.Fields.Item("PulseInSec")) 'Address
  loc_1047503:   Proc_6_39_E7C810(var_CC)
  loc_104750B:   var_BC = CStr(var_CC)
  loc_104751A:   Set var_A4 = Me.Txt
  loc_1047520:   Call 0.Method_Proc_91_32_10475840 (CInt(3), var_A8)
  loc_1047528:   var_A8.Text = var_BC
  loc_1047540: End If
  loc_1047540: Exit Sub
  loc_1047541: ' Referenced from: 1047334
  loc_1047549: Set var_8C = Err()
  loc_104754F: Call 0.Method_arg_2C (var_BC)
  loc_1047570: MsgBox(CVar(var_BC), &H40, "Information", var_EC, var_10C)
  loc_1047583: Exit Sub
End Sub

Public Sub Proc_91_33_10B3058
  'Data Table: 445DA4
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_A8 As TextBox
  Dim var_B8 As String
  Dim unk_445DB7 As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_144 As Fields15
  Dim var_148 As Field20
  loc_10B2DC7: If (Me.RecordCount = 0) Then
  loc_10B2DCA:   Proc_91_33_10B3058 = 
  loc_10B2DD0: End If
  loc_10B2DD4: Set var_90 = Me.TopCtrl1
  loc_10B2DDA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10B2DF3: If (CStr() = "Add") Then
  loc_10B2E31:   Set var_90 = Me.Txt
  loc_10B2E37:   Call 0.Method_Proc_91_33_10B30580 (CInt(0), var_A8, var_AC, "Select Count(*) From TelCallCode Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and StdCode='", var_A0, -1)
  loc_10B2E4F:   var_B8 = var_D0 & var_AC & "'"
  loc_10B2E58:   unk_445DB7.Execute var_B8, 0, var_E4
  loc_10B2E68:    = var_D0.Item()
  loc_10B2E70:    = var_E4.Value
  loc_10B2EA1:   If (var_A8.Text.Fields > 0) Then
  loc_10B2EAF:     var_F4 = "Information"
  loc_10B2EBF:     var_A0 = "Duplicate STD Code"
  loc_10B2EC5:     MsgBox(var_A0, &H40, var_F4, var_114, var_134)
  loc_10B2EE0:     Set var_90 = Me.Txt
  loc_10B2EE6:     Call 0.Method_Proc_91_33_10B30580 (CInt(0))
  loc_10B2EEE:     var_A8.SetFocus
  loc_10B2EFF:     Proc_91_33_10B3058 = &HFF
  loc_10B2F05:   End If
  loc_10B2F08: Else
  loc_10B2F0E:   var_E0 = 0
  loc_10B2F43:   Set var_90 = Me.Txt
  loc_10B2F49:   Call 0.Method_Proc_91_33_10B30580 (CInt(0), var_A8, var_AC, "Select Count(*) From TelCallCode Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and StdCode='", var_A0, -1)
  loc_10B2F72:   Set var_CC = Me.Txt
  loc_10B2F78:   Call 0.Method_Proc_91_33_10B30580 (CInt(0), var_D0, var_B8, var_144 & var_AC & "' And STDCODE<>'")
  loc_10B2F80:   var_E0 = var_D0.Text
  loc_10B2F99:   unk_445DB7.Execute var_148 & var_B8 & "'", var_F4, var_A8
  loc_10B2FA1:    = var_A8.Text.Fields
  loc_10B2FA9:    = var_144.Item()
  loc_10B2FB1:    = var_148.Value
  loc_10B2FEC:   If (var_F4 > 0) Then
  loc_10B3010:     MsgBox("Duplicate Std Code", &H40, "Information", var_114, var_134)
  loc_10B302B:     Set var_90 = Me.Txt
  loc_10B3031:     Call 0.Method_Proc_91_33_10B30580 (CInt(0))
  loc_10B3039:     var_A8.SetFocus
  loc_10B304A:     Proc_91_33_10B3058 = &HFF
  loc_10B3050:   End If
  loc_10B3050: End If
  loc_10B3050: Proc_91_33_10B3058 = var_A8
End Sub

Public Sub Proc_91_34_EBC0C0
  'Data Table: 445DA4
  loc_EBC038: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBC04A:   Me.DGHelp.Visible = False
  loc_EBC052: End If
  loc_EBC06E: If (CBool(Me.DGCallType.Visible) = &HFF) Then
  loc_EBC080:   Me.DGCallType.Visible = False
  loc_EBC088: End If
  loc_EBC0A4: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBC0B6:   Me.FGPoint.Visible = False
  loc_EBC0BE: End If
  loc_EBC0BE: Exit Sub
End Sub

Public Sub Proc_91_35_F89F90
  'Data Table: 445DA4
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_88 As TextBox
  Dim var_BC As TextBox
  Dim var_C4 As TextBox
  loc_F89E3C: Set var_88 = Me.DGHelp
  loc_F89E4D: Set var_8C = Me.Txt
  loc_F89E53: Call 0.Method_Proc_91_35_F89F900 (CInt(0), var_90)
  loc_F89E6B: var_88.Left = CVar(var_90.Left)
  loc_F89E85: Set var_B8 = Me.Txt
  loc_F89E8B: Call 0.Method_Proc_91_35_F89F900 (CInt(0), var_BC)
  loc_F89EA6: Set var_8C = Me.Txt
  loc_F89EAC: Call 0.Method_Proc_91_35_F89F900 (CInt(0), var_90)
  loc_F89EC4: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H19))) 'Single
  loc_F89ECC: var_88.Top = CVar(var_90.Left)
  loc_F89EDE: Set var_88 = Nothing 
  loc_F89EE6: Set var_C4 = Me.DGCallType
  loc_F89EF7: Set var_8C = Me.Txt
  loc_F89EFD: Call 0.Method_Proc_91_35_F89F900 (CInt(1), var_90)
  loc_F89F15: var_C4.Left = CVar(var_90.Left)
  loc_F89F2F: Set var_B8 = Me.Txt
  loc_F89F35: Call 0.Method_Proc_91_35_F89F900 (CInt(1), var_BC)
  loc_F89F50: Set var_8C = Me.Txt
  loc_F89F56: Call 0.Method_Proc_91_35_F89F900 (CInt(1), var_90)
  loc_F89F6E: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H19))) 'Single
  loc_F89F76: var_C4.Top = CVar(var_90.Left)
  loc_F89F88: Set var_C4 = Nothing 
  loc_F89F8C: Exit Sub
  loc_F89F8D: GoTo loc_F8A0D8
End Sub
