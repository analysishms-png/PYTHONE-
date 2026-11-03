VERSION 5.00
Begin VB.Form frmSessionMast
  Caption = "Session Master"
  BackColor = &HFFC0C0&
  ForeColor = &H800000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  FillColor = &H800000&
  'Icon = n/a
  LinkTopic = "Form7"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 7650
  ClientHeight = 7710
  Moveable = 0   'False
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7650
    Height = 450
    TabIndex = 10
  End
  Begin DataGrid DGhelp
    Left = 6855
    Top = 3075
    Width = 4215
    Height = 1965
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin MaskEdBox TxtMask
    Index = 1
    Left = 3585
    Top = 2520
    Width = 675
    Height = 285
    TabIndex = 3
  End
  Begin MaskEdBox TxtMask
    Index = 0
    Left = 3585
    Top = 2205
    Width = 675
    Height = 285
    TabIndex = 2
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3585
    Top = 1890
    Width = 4215
    Height = 285
    TabIndex = 0
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5265
    Top = 5355
    Width = 2790
    Height = 285
    TabIndex = 9
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
    Left = 1890
    Top = 5355
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 45
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 7
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
    Caption = "To Time"
    Index = 2
    ForeColor = &HC00000&
    Left = 2400
    Top = 2535
    Width = 780
    Height = 240
    TabIndex = 5
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
    Caption = "From Time"
    Index = 1
    ForeColor = &HC00000&
    Left = 2400
    Top = 2220
    Width = 1035
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
  Begin Label LblName
    Caption = "Description"
    Index = 0
    ForeColor = &HC00000&
    Left = 2400
    Top = 1890
    Width = 1065
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

Attribute VB_Name = "frmSessionMast"


Private Sub TopCtrl1_UnknownEvent_A 'EA8C14
  'Data Table: 449A70
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EA8B88: On Error Goto loc_EA8C0E
  loc_EA8B98: Me.LblUser.Caption = vbNullString
  loc_EA8BAD: Me.LblLDt.Caption = vbNullString
  loc_EA8BD8: Call Proc_80_31_E97E34(Proc_5_1_100CB50("ADD", Me))
  loc_EA8BE3: Call Proc_80_32_ECD630(global_52)
  loc_EA8BF3: Set var_88 = Me.Txt
  loc_EA8BF9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EA8C01: var_94.SetFocus
  loc_EA8C0D: Exit Sub
  loc_EA8C0E: ' Referenced from: EA8B88
  loc_EA8C0E: Proc_6_60_E62BC4(var_94)
  loc_EA8C13: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC132C
  'Data Table: 449A70
  loc_EC1294: On Error Goto loc_EC1324
  loc_EC12CE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC12DD:   Set var_110 = Me
  loc_EC12F4:   Call Proc_80_31_E97E34(Proc_5_1_100CB50("INI", var_110))
  loc_EC12FF:   Call Proc_80_35_E550EC(global_52)
  loc_EC1304:   Call Proc_80_33_1276CA0()
  loc_EC130C: Else
  loc_EC1312:   Call 0.Method_arg_1E8 (var_110)
  loc_EC131A:   Call var_110.SetFocus
  loc_EC1323: End If
  loc_EC1323: Exit Sub
  loc_EC1324: ' Referenced from: EC1294
  loc_EC1324: Proc_6_60_E62BC4()
  loc_EC1329: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10DDCAC
  'Data Table: 449A70
  Dim var_96 As Integer
  Dim unk_449A7F As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10DD9CC: On Error Goto loc_10DDC55
  loc_10DD9DD: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_10DD9E0:   Exit Sub
  loc_10DD9E1: End If
  loc_10DDA18: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10DDA1D:   var_96 = 0
  loc_10DDA29:   unk_449A7F.BeginTrans var_11C
  loc_10DDA30:   var_96 = &HFF
  loc_10DDA44:   var_94 = Me.Bookmark 'Variant
  loc_10DDA90:   var_F8 = "Delete From SESSIONMAST Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10DDA9E:   unk_449A7F.Execute CStr(var_F8), var_118, -1
  loc_10DDAE9:   var_164 = 0
  loc_10DDAFC:   var_15C = 0
  loc_10DDB07:   var_158 = 0
  loc_10DDB1A:   var_150 = 0
  loc_10DDB25:   var_14C = 0
  loc_10DDB38:   var_144 = 0
  loc_10DDB78:   var_128 = "SessionMast"
  loc_10DDB81:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_10DDBAF:   unk_449A7F.CommitTrans
  loc_10DDBB6:   var_96 = 0
  loc_10DDBC4:   Me.Requery -1
  loc_10DDBD4:   Me.Requery -1
  loc_10DDBF4:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10DDC01:     Me.Bookmark = var_94
  loc_10DDC09:   Else
  loc_10DDC1D:     If (Me.EOF = 0) Then
  loc_10DDC26:       Me.MoveLast
  loc_10DDC2B:     End If
  loc_10DDC2B:   End If
  loc_10DDC2B:   Call Proc_80_33_1276CA0(var_96, var_144, 0, var_14C, var_150)
  loc_10DDC4C:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_10DDC54: End If
  loc_10DDC54: Exit Sub
  loc_10DDC55: ' Referenced from: 10DD9CC
  loc_10DDC5B: If (var_96 = &HFF) Then
  loc_10DDC64:   unk_449A7F.RollbackTrans
  loc_10DDC69: End If
  loc_10DDC71: Set var_120 = Err()
  loc_10DDC77: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10DDC98: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10DDCAB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF0DAC
  'Data Table: 449A70
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EF0CDC: On Error Goto loc_EF0DA4
  loc_EF0CED: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_EF0CF0:   Exit Sub
  loc_EF0CF1: End If
  loc_EF0D14: Call Proc_80_31_E97E34(Proc_5_1_100CB50("EDIT", Me))
  loc_EF0D2D: Set var_8C = Me.Txt
  loc_EF0D33: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF0D46: global_64 = var_94.Text
  loc_EF0D5F: Set var_8C = Me.Txt
  loc_EF0D65: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF0D6D: var_94.SetFocus
  loc_EF0D86: Me.LblUser.Caption = vbNullString
  loc_EF0D9B: Me.LblLDt.Caption = vbNullString
  loc_EF0DA3: Exit Sub
  loc_EF0DA4: ' Referenced from: EF0CDC
  loc_EF0DA4: Proc_6_60_E62BC4(global_52)
  loc_EF0DA9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E167B8
  'Data Table: 449A70
  loc_E167AD: Me.Global.Unload Me
  loc_E167B5: Exit Sub
  loc_E167B6: Set var_790 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F16AB0
  'Data Table: 449A70
  Dim Me As Recordset15
  loc_F169C0: On Error Goto loc_F16A4A
  loc_F169CC: var_88 = Me.RecordCount
  loc_F169DA: If (var_88 <= 0) Then
  loc_F169FE:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F16A0E:   Exit Sub
  loc_F16A0F: End If
  loc_F16A12: MemVar_1F920E4 = "Select Code As SearchCode,Name,CAST(FROMTIME AS VARCHAR) AS FrTime,CAST(TOTIME AS VARCHAR) AS TTime FROM SESSIONMAST ORDER BY Name"
  loc_F16A1C: MemVar_1F92120 = Me
  loc_F16A23: var_10C = "1900,1500,1500"
  loc_F16A29: Proc_6_126_F1BCC0(var_10C)
  loc_F16A44: Call 0.Method_arg_2B0 (1)
  loc_F16A49: Exit Sub
  loc_F16A4A: ' Referenced from: F169C0
  loc_F16A52: Set var_110 = Err()
  loc_F16A58: Call 0.Method_arg_1C (var_88)
  loc_F16A69: If (var_88 <> 0) Then
  loc_F16A74:   Set var_110 = Err()
  loc_F16A7A:   Call 0.Method_arg_2C (var_10C)
  loc_F16A9B:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F16AAE: End If
  loc_F16AAE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E31DB8
  'Data Table: 449A70
  loc_E31DA8: Proc_5_0_110649C(&HFF, Me)
  loc_E31DB0: Call Proc_80_33_1276CA0(global_52)
  loc_E31DB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E31BD8
  'Data Table: 449A70
  loc_E31BC8: Proc_5_0_110649C(&HFF, Me)
  loc_E31BD0: Call Proc_80_33_1276CA0(global_52)
  loc_E31BD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E31C38
  'Data Table: 449A70
  loc_E31C28: Proc_5_0_110649C(&HFF, Me)
  loc_E31C30: Call Proc_80_33_1276CA0(global_52)
  loc_E31C35: Exit Sub
  loc_E31C36: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E31D58
  'Data Table: 449A70
  loc_E31D48: Proc_5_0_110649C(&HFF, Me)
  loc_E31D50: Call Proc_80_33_1276CA0(global_52)
  loc_E31D55: Exit Sub
  loc_E31D56: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1074EC4
  'Data Table: 449A70
  Dim unk_449A7F As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_1074C44: On Error Goto loc_1074E7B
  loc_1074C5D: unk_449A7F.Execute "SELECT * FROM SESSIONMAST ORDER BY Name", var_BC, -1
  loc_1074C68: Set var_88 = var_C0
  loc_1074C77: var_C4 = var_88.RecordCount
  loc_1074C85: If (var_C4 = 0) Then
  loc_1074CA1:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_1074CB1:   Exit Sub
  loc_1074CB2: End If
  loc_1074CC1: var_12C = MemVar_1F920B4 & "\SessionMast.ttx"
  loc_1074CC8: Set var_C0 = var_88 
  loc_1074CD4: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_1074CDE: Set var_88 = var_C0
  loc_1074CE4: var_AC = CVar(var_12E) 'Integer
  loc_1074CE7: var_98 = var_AC 'Variant
  loc_1074D03: var_128 = MemVar_1F920B4 & "\SessionMast.RPT"
  loc_1074D0C: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_1074D17: MemVar_1F921E4 = var_C0
  loc_1074D32: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_1074D3A: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1074D46: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_1074D5F:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1074D67:   Call 0.Method_arg_20 (var_138)
  loc_1074D6F:   Call 0.Method_arg_30 (var_128)
  loc_1074DB5:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_1074DCB:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1074DD3:     Call 0.Method_arg_20 (var_138)
  loc_1074DDB:     Call 0.Method_arg_38 ("'Session Master'")
  loc_1074DE7:   End If
  loc_1074DEA: Next var_132 'Integer
  loc_1074E08: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_1074E10: Call 0.Method_arg_2C (var_D4)
  loc_1074E1E: Call 0.Method_arg_150 (var_F4)
  loc_1074E29: Call 0.Method_arg_50 (var_128)
  loc_1074E33: Set var_138 = Nothing
  loc_1074E4D: Set var_C0 = MemVar_1F921E4 
  loc_1074E59: Proc_6_99_1483714(var_C0, 0, var_128)
  loc_1074E64: MemVar_1F921E4 = var_C0
  loc_1074E77: Set var_88 = Nothing
  loc_1074E7A: Exit Sub
  loc_1074E7B: ' Referenced from: 1074C44
  loc_1074E83: Set var_C0 = Err()
  loc_1074E89: Call 0.Method_arg_2C (var_128, &HFF)
  loc_1074E94: Call 0.Method_arg_50 (var_12C)
  loc_1074EB0: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_1074EC3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0AEDC
  'Data Table: 449A70
  Dim Me As Recordset15
  loc_E0AED3: Me.Requery -1
  loc_E0AED8: Exit Sub
  loc_E0AED9: ThisVCallHidden
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12FB1EC
  'Data Table: 449A70
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim unk_449A7F As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_114 As MaskEdBox
  Dim var_B0 As Variant
  Dim var_12C As MaskEdBox
  Dim var_E4 As Variant
  Dim var_120 As String
  Dim var_11C As String
  Dim var_154 As Variant
  Dim var_184 As Variant
  Dim var_208 As Variant
  loc_12FAB7C: On Error Goto loc_12FB19A
  loc_12FAB83: var_86 = CByte(0) 'Byte
  loc_12FAB92: Set var_90 = Me.Txt
  loc_12FAB98: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_12FABC1: If (Proc_183_19_E8DAFC(var_94, "Description") = 0) Then
  loc_12FABCB:   Call Txt_GotFocus()
  loc_12FABD0:   Exit Sub
  loc_12FABD1: End If
  loc_12FABD4: Call Proc_80_34_1086CA8(var_9E, CInt(0))
  loc_12FABDF: If (var_9E = &HFF) Then
  loc_12FABE2:   Exit Sub
  loc_12FABE3: End If
  loc_12FABE7: Set var_90 = Me.TopCtrl1
  loc_12FABED: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_94)
  loc_12FAC06: If (CStr() = "Add") Then
  loc_12FAC0F:   var_D4 = 0
  loc_12FAC2C:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From SESSIONMAST WHERE SITE_CODE='" & MemVar_1F92070
  loc_12FAC3C:   unk_449A7F.Execute CStr() & "'", var_B0, -1
  loc_12FAC44:   var_90 = var_90.Fields
  loc_12FAC4C:   var_D4 = var_94.Item(var_94)
  loc_12FAC54:   var_98 = var_98.Value
  loc_12FAC8D:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_12FACBB:   var_108 = (1 + Format(CStr(var_E4), "000"))
  loc_12FACC6:   global_60 = CStr(var_108)
  loc_12FACDB: Else
  loc_12FACF8:   var_94 = Me.Fields.Item("Code")
  loc_12FAD0F:   global_60 = CStr(var_94.Value)
  loc_12FAD20: End If
  loc_12FAD29: unk_449A7F.BeginTrans var_10C
  loc_12FAD32: var_86 = CByte(1) 'Byte
  loc_12FAD3A: Set var_90 = Me.TopCtrl1
  loc_12FAD40: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(1)
  loc_12FAD59: If (CStr(var_F8) = "Add") Then
  loc_12FAD6A:   Set var_90 = Me.Txt
  loc_12FAD70:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94)
  loc_12FAD88:   Set var_98 = Me.TxtMask
  loc_12FAD8E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_114)
  loc_12FADC0:   var_210 = Replace(CStr(var_114.defaultText), ":", ".", 1, -1, 0)
  loc_12FADCE:   Set var_128 = Me.TxtMask
  loc_12FADD4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_12C)
  loc_12FADDC:   var_E4 = var_12C.defaultText
  loc_12FAE06:   var_214 = Replace(CStr(var_E4), ":", ".", 1, -1, 0)
  loc_12FAE17:   Proc_6_7_F25D88(var_108, Date, var_E4)
  loc_12FAE3A:   var_E8 = "Insert Into SessionMast(Code,Name,FromTime,ToTime,U_Name,U_EntDt,U_AE,SITE_CODE,LOGSITE_CODE) Values ('" & global_60 & "','"
  loc_12FAE91:   var_184 = CVar(var_E8 & var_94.Text & "','" & var_210 & "','" & var_214 & "','" & MemVar_1F920C8 & "',") & var_108 & ",'A','" & CVar(MemVar_1F92070) 
  loc_12FAEBB:   unk_449A7F.Execute CStr(var_184 & "','" & CVar(MemVar_1F92078) & "')"), var_208, -1
  loc_12FAF14: Else
  loc_12FAF1F:   Set var_90 = Me.Txt
  loc_12FAF25:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_20C)
  loc_12FAF2D:   var_B0 = CVar(var_94) 'Address
  loc_12FAF34:   var_E4 = Trim(var_B0)
  loc_12FAF44:   Set var_98 = Me.TxtMask
  loc_12FAF4A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_114)
  loc_12FAF52:   var_154 = var_114.defaultText
  loc_12FAF7C:   var_11C = Replace(CStr(var_154), ":", ".", 1, -1, 0)
  loc_12FAF8A:   Set var_128 = Me.TxtMask
  loc_12FAF90:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_12C, var_154)
  loc_12FAF98:   var_184 = var_12C.defaultText
  loc_12FAFC2:   var_120 = Replace(CStr(var_184), ":", ".", 1, -1, 0)
  loc_12FAFD3:   Proc_6_7_F25D88(var_254, Date, var_184)
  loc_12FAFE5:   var_C4 = "UPDATE SESSIONMAST SET Name='"
  loc_12FAFED:   var_F8 = var_C4 & var_E4 
  loc_12FAFF6:   var_108 = var_F8 & "',FromTime='" 
  loc_12FB035:   var_208 = var_108 & CVar(var_210) & "',ToTime='" & CVar(CStr(var_184) & var_94.Text & "','") & "',U_Name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" 
  loc_12FB07C:   unk_449A7F.Execute CStr(var_208 & var_254 & ",U_AE='E',SITE_CODE='" & CVar(MemVar_1F92070) & "' WHERE Code='" & CVar(global_60) & "'"), var_324, -1
  loc_12FB0CE: End If
  loc_12FB0D4: unk_449A7F.CommitTrans
  loc_12FB0DD: var_86 = CByte(0) 'Byte
  loc_12FB0EC: Me.Requery -1
  loc_12FB0FC: Me.Requery -1
  loc_12FB129: Me.Find "Code='" & global_60 & "'", 0, 1
  loc_12FB139: Set var_90 = Me.TopCtrl1
  loc_12FB13F: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_C4)
  loc_12FB158: If (CStr(var_20C) = "Add") Then
  loc_12FB15B:   Call TopCtrl1_UnknownEvent_A()
  loc_12FB160:   Exit Sub
  loc_12FB161: End If
  loc_12FB176: var_9C = "INI"
  loc_12FB184: Call Proc_80_31_E97E34(Proc_5_1_100CB50(var_9C, Me, global_52), var_B0)
  loc_12FB18F: Call Proc_80_35_E550EC(var_E4)
  loc_12FB194: Call Proc_80_33_1276CA0()
  loc_12FB199: Exit Sub
  loc_12FB19A: ' Referenced from: 12FAB7C
  loc_12FB1A3: If (CInt(var_86) = 1) Then
  loc_12FB1AC:   unk_449A7F.RollbackTrans
  loc_12FB1B1: End If
  loc_12FB1B9: Set var_90 = Err()
  loc_12FB1BF: Call 0.Method_arg_2C (var_9C)
  loc_12FB1D8: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_12FB1EB: Exit Sub
End Sub

Private Sub TxtMask_UnknownEvent_0 'E97F94
  'Data Table: 449A70
  loc_E97F28: On Error Goto loc_E97F56
  loc_E97F35: Set var_88 = Me.TxtMask
  loc_E97F3B: Call 0.Method_TxtMask_UnknownEvent_00 (Cancel)
  loc_E97F49: Proc_6_74_E226B0(var_8C)
  loc_E97F55: Exit Sub
  loc_E97F56: ' Referenced from: E97F28
  loc_E97F5E: Set var_88 = Err()
  loc_E97F64: Call 0.Method_arg_2C (var_94)
  loc_E97F7D: MsgBox(CVar(var_94), &H10, var_C4, var_E4, var_104)
  loc_E97F90: Exit Sub
End Sub

Private Sub TxtMask_UnknownEvent_1 'E98630
  'Data Table: 449A70
  loc_E985C4: On Error Goto loc_E985F2
  loc_E985D1: Set var_88 = Me.TxtMask
  loc_E985D7: Call 0.Method_TxtMask_UnknownEvent_10 (Cancel)
  loc_E985E5: Proc_6_73_E22704(var_8C)
  loc_E985F1: Exit Sub
  loc_E985F2: ' Referenced from: E985C4
  loc_E985FA: Set var_88 = Err()
  loc_E98600: Call 0.Method_arg_2C (var_94)
  loc_E98619: MsgBox(CVar(var_94), &H10, var_C4, var_E4, var_104)
  loc_E9862C: Exit Sub
  loc_E9862D: StAryRecMove
End Sub

Private Sub TxtMask_UnknownEvent_8 'F19B6C
  'Data Table: 449A70
  Dim var_86 As Integer
  Dim var_90 As MaskEdBox
  Dim var_A4 As String
  Dim arg_10 As Integer
  loc_F19A80: On Error Goto loc_F19B2E
  loc_F19A86: var_86 = Cancel
  loc_F19A91: If Not (var_86 = CInt(0)) Then
  loc_F19A9C:   If (var_86 = CInt(1)) Then
  loc_F19A9F:   End If
  loc_F19AA9:   Set var_8C = Me.TxtMask
  loc_F19AAF:   Call 0.Method_TxtMask_UnknownEvent_80 (Cancel, var_90)
  loc_F19ABF:   var_A4 = CStr(var_90.defaultText)
  loc_F19AD4:   If (var_A4 > "24:00") Then
  loc_F19AF0:     MsgBox("Invalid Time", 0, var_D4, var_F4, var_114)
  loc_F19B02:     arg_10 = &HFF
  loc_F19B0F:     Set var_8C = Me.TxtMask
  loc_F19B15:     Call 0.Method_TxtMask_UnknownEvent_80 (Cancel, var_90)
  loc_F19B2C:     Exit Sub
  loc_F19B2D:   End If
  loc_F19B2D: End If
  loc_F19B2D: Exit Sub
  loc_F19B2E: ' Referenced from: F19A80
  loc_F19B36: Set var_8C = Err()
  loc_F19B3C: Call 0.Method_arg_2C (var_A4, TxtMask.DispID_8001)
  loc_F19B55: MsgBox(CVar(var_A4), &H10, var_D4, var_F4, var_114)
  loc_F19B68: Exit Sub
  loc_F19B69: CExtInstUnk
End Sub

Private Sub TxtMask_UnknownEvent_B 'F3336C
  'Data Table: 449A70
  Dim var_88 As Integer
  Dim var_8C As DataGrid
  loc_F33258: On Error Goto loc_F33331
  loc_F33265: If (CLng(arg_10) = &H1B) Then
  loc_F33268:   Call Proc_80_35_E550EC()
  loc_F3326D:   Exit Sub
  loc_F3326E: End If
  loc_F33271: var_88 = Cancel
  loc_F3327C: If Not (var_88 = CInt(0)) Then
  loc_F33287:   If (var_88 = CInt(1)) Then
  loc_F3328A:   End If
  loc_F3328A: End If
  loc_F332A6: If (CBool(Me.DGhelp.Visible) = 0) Then
  loc_F332BC:   If ((CLng(arg_10) = &H26) And (Cancel <> CInt(0))) Then
  loc_F332C5:     Proc_6_76_E52838(arg_10, arg_14)
  loc_F332CA:   End If
  loc_F332E8:   If (((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) And (Cancel = CInt(1))) Then
  loc_F332F1:     Call TxtMask_UnknownEvent_8()
  loc_F332FC:     If (var_86 = 0) Then
  loc_F33305:       Call Proc_80_36_E92318(Cancel, Cancel)
  loc_F3330A:     End If
  loc_F3330D:   Else
  loc_F33322:     If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_F3332B:       Proc_6_75_E527CC(arg_10, arg_14)
  loc_F33330:     End If
  loc_F33330:   End If
  loc_F33330: End If
  loc_F33330: Exit Sub
  loc_F33331: ' Referenced from: F33258
  loc_F33339: Set var_8C = Err()
  loc_F3333F: Call 0.Method_arg_2C (var_A4, var_86)
  loc_F33358: MsgBox(CVar(var_A4), &H10, var_C4, var_E4, var_104)
  loc_F3336B: Exit Sub
End Sub

Private Sub TxtMask_UnknownEvent_C 'E6BA04
  'Data Table: 449A70
  loc_E6B9BC: On Error Goto loc_E6B9C8
  loc_E6B9C2: Proc_6_58_E054C0(arg_10)
  loc_E6B9C7: Exit Sub
  loc_E6B9C8: ' Referenced from: E6B9BC
  loc_E6B9D0: Set var_88 = Err()
  loc_E6B9D6: Call 0.Method_arg_2C (var_8C)
  loc_E6B9EF: MsgBox(CVar(var_8C), &H10, var_BC, var_DC, var_FC)
  loc_E6BA02: Exit Sub
End Sub

Private Sub TxtMask_UnknownEvent_D 'E6B8E4
  'Data Table: 449A70
  Dim var_86 As Integer
  loc_E6B89C: On Error Goto loc_E6B8A6
  loc_E6B8A2: var_86 = Cancel
  loc_E6B8A5: Exit Sub
  loc_E6B8A6: ' Referenced from: E6B89C
  loc_E6B8AE: Set var_8C = Err()
  loc_E6B8B4: Call 0.Method_arg_2C (var_90)
  loc_E6B8CD: MsgBox(CVar(var_90), &H10, var_C0, var_E0, var_100)
  loc_E6B8E0: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E58E70
  'Data Table: 449A70
  Dim var_92 As Integer
  loc_E58E42: Set var_88 = Me.Txt
  loc_E58E48: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E58E56: Proc_6_74_E226B0(var_8C)
  loc_E58E62: Call Proc_80_35_E550EC(var_8C)
  loc_E58E6A: var_92 = Index
  loc_E58E6D: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F0B2DC
  'Data Table: 449A70
  loc_F0B202: If (CLng(Shift) = &H1B) Then
  loc_F0B205:   Call Proc_80_35_E550EC()
  loc_F0B20A:   Exit Sub
  loc_F0B20B: End If
  loc_F0B219: If (KeyCode = CInt(0)) Then
  loc_F0B234:   Set var_9C = Nothing
  loc_F0B266:   Proc_6_79_11ACE04(Me.DGhelp, Me.Txt, CInt(0), global_56, Shift)
  loc_F0B278: End If
  loc_F0B294: If (CBool(Me.DGhelp.Visible) = 0) Then
  loc_F0B2AA:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_F0B2B3:     Proc_6_76_E52838(Shift, arg_14, 0, 1)
  loc_F0B2B8:   End If
  loc_F0B2CD:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F0B2D6:     Proc_6_75_E527CC(Shift, arg_14, var_9C)
  loc_F0B2DB:   End If
  loc_F0B2DB: End If
  loc_F0B2DB: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E240FC
  'Data Table: 449A70
  Dim var_96 As Integer
  loc_E240DE: Proc_6_133_E7EF78(var_94)
  loc_E240F0: Proc_6_58_E054C0(CInt(var_94), CInt(var_94))
  loc_E240F8: var_96 = KeyAscii
  loc_E240FB: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E8BA38
  'Data Table: 449A70
  loc_E8B9DA: If (KeyCode = CInt(0)) Then
  loc_E8B9F9:   If (CBool(Me.DGhelp.Visible) = &HFF) Then
  loc_E8BA06:     var_A4 = "Name"
  loc_E8BA25:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_56)
  loc_E8BA34:   End If
  loc_E8BA34: End If
  loc_E8BA34: Exit Sub
  loc_E8BA35: VCallR4
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B27C
  'Data Table: 449A70
  loc_E4B25A: Set var_88 = Me.Txt
  loc_E4B260: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B26E: Proc_6_73_E22704(var_8C)
  loc_E4B27A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E276CC
  'Data Table: 449A70
  Dim arg_10 As Integer
  loc_E276AE: If (Cancel = CInt(0)) Then
  loc_E276B4:   Call Proc_80_34_1086CA8(var_88)
  loc_E276BF:   If (var_88 = &HFF) Then
  loc_E276C4:     arg_10 = &HFF
  loc_E276C7:     Exit Sub
  loc_E276C8:   End If
  loc_E276C8: End If
  loc_E276C8: Exit Sub
End Sub

Private Sub Form_Load() '104C01C
  'Data Table: 449A70
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_449A7F As Connection15
  Dim var_DC As Variant
  loc_104BDCC: On Error Goto loc_104BFD6
  loc_104BDDE: Me.LblUser.Left = CDbl(13500)
  loc_104BDF5: Me.LblUser.Top = CDbl(7800)
  loc_104BE0C: Me.LblLDt.Top = CDbl(8160)
  loc_104BE23: Me.LblLDt.Left = CDbl(13500)
  loc_104BE32: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_104BE45: Set var_8C = Me.Txt
  loc_104BE4B: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_104BE6A: Me.DGhelp.Left = CVar(var_90.Left)
  loc_104BE86: Set var_B8 = Me.Txt
  loc_104BE8C: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_104BEAD: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_104BEC5: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_104BED4: Me.DGhelp.Top = CVar(var_90.Left)
  loc_104BF0A: unk_449A7F.Execute "SELECT Code,Name FROM SESSIONMAST WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_104BF39: CVarUnk
  loc_104BF3E: VerifyVarObj
  loc_104BF4A: LateIdStAd
  loc_104BF7C: unk_449A7F.Execute "SELECT * FROM SESSIONMAST WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_104BFB7: var_C8 = "INI"
  loc_104BFC5: Call Proc_80_31_E97E34(Proc_5_1_100CB50(var_C8, Me, Me.DGhelp, Me), Me)
  loc_104BFD0: Call Proc_80_33_1276CA0(Me.Txt)
  loc_104BFD5: Exit Sub
  loc_104BFD6: ' Referenced from: 104BDCC
  loc_104BFDE: Set var_8C = Err()
  loc_104BFE4: Call 0.Method_arg_2C (var_C8)
  loc_104C005: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_104C018: Exit Sub
  loc_104C019: Exit Sub
End Sub

Private Sub Form_Resize() 'ED3028
  'Data Table: 449A70
  Dim var_8C As Label
  loc_ED2F86: Call 0.Method_arg_50 (var_88)
  loc_ED2F98: Me.LblFormCaption.Caption = var_88
  loc_ED2FB1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED2FBD: Set var_A0 = Me.TopCtrl1
  loc_ED2FC3: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010006()
  loc_ED2FD0: Set var_8C = Me.TopCtrl1
  loc_ED2FD6: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004()
  loc_ED2FF0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED300B: Call 0.Method_arg_100 (var_B8)
  loc_ED301D: Me.LblFormCaption.Width = var_B8
  loc_ED3025: Exit Sub
  loc_ED3026: CopyBytes -1793
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E274FC
  'Data Table: 449A70
  loc_E274DF: Set global_52 = Nothing
  loc_E274F1: Set global_56 = Nothing
  loc_E274F8: Exit Sub
  loc_E274F9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8C194
  'Data Table: 449A70
  loc_E8C130: On Error Goto loc_E8C150
  loc_E8C147: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8C14F: Exit Sub
  loc_E8C150: ' Referenced from: E8C130
  loc_E8C158: Set var_88 = Err()
  loc_E8C15E: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8C17F: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8C192: Exit Sub
  loc_E8C193: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE64BC
  'Data Table: 449A70
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE6413: Me.DGhelp.Visible = False
  loc_EE6432: If (Me.RecordCount > 0) Then
  loc_EE6452:   var_B0 = Me.Fields.Item("Name")
  loc_EE6471:   Set var_B4 = Me.Txt
  loc_EE6477:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE647F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE6495: End If
  loc_EE64A0: Set var_A8 = Me.Txt
  loc_EE64A6: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE64AE: var_B0.SetFocus
  loc_EE64BA: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC6104
  'Data Table: 449A70
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC607A: On Error Goto loc_EC60BF
  loc_EC6083: Me.MoveFirst
  loc_EC609D: var_8C = "Code='" & MyValue
  loc_EC60AD: Me.Find var_8C & "'", 0, 1
  loc_EC60B9: Call Proc_80_33_1276CA0(var_A0)
  loc_EC60BE: Exit Sub
  loc_EC60BF: ' Referenced from: EC607A
  loc_EC60C7: Set var_A4 = Err()
  loc_EC60CD: Call 0.Method_arg_2C (var_8C)
  loc_EC60EE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC6101: Exit Sub
  loc_EC6102: Exit Sub
End Sub

Public Sub Proc_80_31_E97E34(arg_C) 'E97E34
  'Data Table: 449A70
  Dim var_8C As Variant
  loc_E97DBE: Set var_88 = Me.Txt
  loc_E97DC4: Call 0.Method_Proc_80_31_E97E340 (CInt(0), var_8C)
  loc_E97DCC: var_8C.Enabled = arg_C
  loc_E97DEA: Set var_88 = Me.TxtMask
  loc_E97DF0: Call 0.Method_Proc_80_31_E97E340 (CInt(0), var_8C)
  loc_E97DF8: var_8C.Enabled = arg_C
  loc_E97E16: Set var_88 = Me.TxtMask
  loc_E97E1C: Call 0.Method_Proc_80_31_E97E340 (CInt(1), var_8C)
  loc_E97E24: var_8C.Enabled = arg_C
  loc_E97E30: Exit Sub
End Sub

Public Sub Proc_80_32_ECD630
  'Data Table: 449A70
  Dim var_8C As Variant
  loc_ECD582: global_64 = vbNullString
  loc_ECD594: Set var_88 = Me.Txt
  loc_ECD59A: Call 0.Method_Proc_80_32_ECD6300 (CInt(0), var_8C)
  loc_ECD5A2: var_8C.Text = vbNullString
  loc_ECD5BC: Set var_88 = Me.Txt
  loc_ECD5C2: Call 0.Method_Proc_80_32_ECD6300 (CInt(0), var_8C)
  loc_ECD5CA: var_8C.Tag = vbNullString
  loc_ECD5E7: Set var_88 = Me.TxtMask
  loc_ECD5ED: Call 0.Method_Proc_80_32_ECD6300 (CInt(0), var_8C)
  loc_ECD5F5: var_8C.defaultText = "__:__"
  loc_ECD612: Set var_88 = Me.TxtMask
  loc_ECD618: Call 0.Method_Proc_80_32_ECD6300 (CInt(1), var_8C)
  loc_ECD620: var_8C.defaultText = "__:__"
  loc_ECD62C: Exit Sub
End Sub

Public Sub Proc_80_33_1276CA0
  'Data Table: 449A70
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_449A7F As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_11C As Variant
  Dim var_114 As Variant
  loc_1276730: On Error Goto loc_1276C5B
  loc_1276789: unk_449A7F.Execute CStr("Select U_Name,U_AE,U_EntDt From sessionMast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_1276794: Set var_88 = var_118
  loc_12767E8: var_118 = var_88.Fields
  loc_1276851: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1276896: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_1276910: var_11C = var_88.Fields.Item("U_AE")
  loc_1276971: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_12769B6: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_12769F4: Proc_183_45_E5C118(global_52)
  loc_1276A10: If (Me.RecordCount <= 0) Then
  loc_1276A13:   Call Proc_80_32_ECD630()
  loc_1276A1B: Else
  loc_1276A4F:   global_60 = CStr(Me.Fields.Item("Code").Value)
  loc_1276A9C:   Set var_118 = Me.Txt
  loc_1276AA2:   Call 0.Method_Proc_80_33_1276CA00 (CInt(0), var_11C)
  loc_1276AAA:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1276AFC:   Set var_118 = Me.Txt
  loc_1276B02:   Call 0.Method_Proc_80_33_1276CA00 (CInt(0), var_11C)
  loc_1276B0A:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1276B84:   var_114 = CVar(Replace(CStr(Format(CVar(Me.Fields.Item("FromTime")), "00.00")), ".", ":", 1, -1, 0)) 'String
  loc_1276B93:   Set var_118 = Me.TxtMask
  loc_1276B99:   Call 0.Method_Proc_80_33_1276CA00 (CInt(0), var_11C, "entdt : ")
  loc_1276BA1:   var_11C.defaultText = 1
  loc_1276BFB:   var_F0 = Format(CVar(Me.Fields.Item("ToTime")), "00.00")
  loc_1276C18:   var_F4 = CStr(var_F0)
  loc_1276C21:   var_114 = CVar(Replace(var_F4, ".", ":", 1, -1, 0)) 'String
  loc_1276C30:   Set var_118 = Me.TxtMask
  loc_1276C36:   Call 0.Method_Proc_80_33_1276CA00 (CInt(1), var_11C, "entdt : ")
  loc_1276C3E:   var_11C.defaultText = 1
  loc_1276C5A: End If
  loc_1276C5A: Exit Sub
  loc_1276C5B: ' Referenced from: 1276730
  loc_1276C63: Set var_8C = Err()
  loc_1276C69: Call 0.Method_arg_2C (var_F4, 1)
  loc_1276C8A: MsgBox(CVar(var_F4), &H40, "Information", var_F0, "entdt : ")
  loc_1276C9D: Exit Sub
End Sub

Public Sub Proc_80_34_1086CA8
  'Data Table: 449A70
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_449A7F As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1086A3B: If (Me.RecordCount = 0) Then
  loc_1086A3E:   Proc_80_34_1086CA8 = 
  loc_1086A44: End If
  loc_1086A48: Set var_90 = Me.TopCtrl1
  loc_1086A4E: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1086A67: If (CStr() = "Add") Then
  loc_1086AA5:   Set var_90 = Me.Txt
  loc_1086AAB:   Call 0.Method_Proc_80_34_1086CA80 (CInt(0), var_A8, var_AC, "Select Count(*) From sessionmast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Name='", var_A0, -1)
  loc_1086ACC:   unk_449A7F.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1086ADC:    = var_D0.Item()
  loc_1086AE4:    = var_E4.Value
  loc_1086B15:   If (var_A8.Text.Fields > 0) Then
  loc_1086B33:     var_A0 = "Duplicate Name"
  loc_1086B39:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1086B54:     Set var_90 = Me.Txt
  loc_1086B5A:     Call 0.Method_Proc_80_34_1086CA80 (CInt(0))
  loc_1086B62:     var_A8.SetFocus
  loc_1086B73:     Proc_80_34_1086CA8 = &HFF
  loc_1086B79:   End If
  loc_1086B7C: Else
  loc_1086BB7:   Set var_90 = Me.Txt
  loc_1086BBD:   Call 0.Method_Proc_80_34_1086CA80 (CInt(0), var_A8, var_AC, "Select Count(*) From sessionmast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Name='", var_A0, -1)
  loc_1086BEF:   unk_449A7F.Execute var_D0 & var_AC & "' And Name<>'" & global_64 & "'", 0, var_E4
  loc_1086BFF:    = var_D0.Item(var_A8)
  loc_1086C07:    = var_E4.Value
  loc_1086C3C:   If (var_A8.Text.Fields > 0) Then
  loc_1086C60:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1086C7B:     Set var_90 = Me.Txt
  loc_1086C81:     Call 0.Method_Proc_80_34_1086CA80 (CInt(0))
  loc_1086C89:     var_A8.SetFocus
  loc_1086C9A:     Proc_80_34_1086CA8 = &HFF
  loc_1086CA0:   End If
  loc_1086CA0: End If
  loc_1086CA0: Proc_80_34_1086CA8 = var_A8
End Sub

Public Sub Proc_80_35_E550EC
  'Data Table: 449A70
  loc_E550D0: If (CBool(Me.DGhelp.Visible) = &HFF) Then
  loc_E550E2:   Me.DGhelp.Visible = False
  loc_E550EA: End If
  loc_E550EA: Exit Sub
End Sub

Public Sub Proc_80_36_E92318
  'Data Table: 449A70
  Dim var_10C As TextBox
  loc_E922AC: Call Proc_80_35_E550EC()
  loc_E922E8: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E922EB:   Call TopCtrl1_UnknownEvent_16()
  loc_E922F3: Else
  loc_E922FC:   Set var_108 = Me.Txt
  loc_E92302:   Call 0.Method_Proc_80_36_E923180 (0)
  loc_E9230A:   var_10C.SetFocus
  loc_E92316: End If
  loc_E92316: Exit Sub
End Sub
