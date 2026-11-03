VERSION 5.00
Begin VB.Form TelCallTypeMast
  Caption = "Call Type Mast"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8790
  ClientHeight = 4035
  Begin DataGrid DGHelp
    Left = 3735
    Top = 2145
    Width = 3810
    Height = 1995
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin DataGrid DGLedgerAc
    Left = 585
    Top = 2370
    Width = 4650
    Height = 1995
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2355
    Top = 825
    Width = 3165
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 25
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
    Index = 3
    BackColor = &HFFFFFF&
    Left = 2355
    Top = 1635
    Width = 3990
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 35
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
    BackColor = &HFFFFFF&
    Left = 2355
    Top = 1365
    Width = 3990
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 25
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
    BackColor = &HFFFFFF&
    Left = 2355
    Top = 1095
    Width = 1005
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 5
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
  Begin MSFlexGrid FGPoint
    Left = 870
    Top = 2085
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGTaxStru
    Left = 2295
    Top = 1890
    Width = 4650
    Height = 1995
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8790
    Height = 510
    TabIndex = 12
  End
  Begin Label LblName
    Caption = "Call Type"
    Index = 0
    ForeColor = &H0&
    Left = 825
    Top = 825
    Width = 795
    Height = 240
    TabIndex = 7
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
  Begin Label LblLedgerAc
    Caption = "Tax Structure"
    Index = 0
    ForeColor = &H0&
    Left = 810
    Top = 1635
    Width = 1170
    Height = 240
    TabIndex = 6
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
    Caption = "A/C Name"
    Index = 2
    ForeColor = &H0&
    Left = 810
    Top = 1365
    Width = 870
    Height = 240
    TabIndex = 5
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
  Begin Label LblLedgerAc
    Caption = "Short Name"
    Index = 2
    ForeColor = &H0&
    Left = 810
    Top = 1095
    Width = 1020
    Height = 240
    TabIndex = 4
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

Attribute VB_Name = "TelCallTypeMast"


Private Sub TopCtrl1_UnknownEvent_A 'ECD9CC
  'Data Table: 4623F8
  Dim var_94 As TextBox
  loc_ECD92C: On Error Goto loc_ECD988
  loc_ECD92F: Call Proc_92_33_E7B2B4()
  loc_ECD949: var_88 = "ADD"
  loc_ECD957: Call Proc_92_32_E7B3E4(Proc_5_1_100CB50(var_88, Me))
  loc_ECD96D: Set var_8C = Me.Txt
  loc_ECD973: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_ECD97B: var_94.SetFocus
  loc_ECD987: Exit Sub
  loc_ECD988: ' Referenced from: ECD92C
  loc_ECD990: Set var_8C = Err()
  loc_ECD996: Call 0.Method_arg_2C (var_88)
  loc_ECD9B7: MsgBox(CVar(var_88), &H40, "Information", var_E4, var_104)
  loc_ECD9CA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC47AC
  'Data Table: 4623F8
  loc_EC4714: On Error Goto loc_EC47A4
  loc_EC474E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC475D:   Set var_110 = Me
  loc_EC4774:   Call Proc_92_32_E7B3E4(Proc_5_1_100CB50("INI", var_110))
  loc_EC477F:   Call Proc_92_34_1111730(global_52)
  loc_EC4787: Else
  loc_EC478D:   Call 0.Method_arg_1E8 (var_110)
  loc_EC4795:   Call var_110.SetFocus
  loc_EC479E: End If
  loc_EC479E: Call Proc_92_37_EF7C50()
  loc_EC47A3: Exit Sub
  loc_EC47A4: ' Referenced from: EC4714
  loc_EC47A4: Proc_6_60_E62BC4()
  loc_EC47A9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12CB45C
  'Data Table: 4623F8
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_108 As String
  Dim unk_46240B As Connection15
  Dim var_9C As Recordset15
  Dim var_144 As Integer
  Dim var_12C As Recordset15
  Dim var_134 As Fields15
  Dim var_148 As Field20
  Dim var_96 As Integer
  loc_12CAE18: On Error Goto loc_12CB404
  loc_12CAE29: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_12CAE2C:   Exit Sub
  loc_12CAE2D: End If
  loc_12CAE6C: var_E4 = "select SysYN From RevMast Where Code='" & Me.Fields.Item("Code").Value 
  loc_12CAE75: var_104 = var_E4 & "'" 
  loc_12CAE83: unk_46240B.Execute CStr(var_104), var_128, -1
  loc_12CAE8E: Set var_9C = var_12C
  loc_12CAEAE: var_130 = var_9C.RecordCount
  loc_12CAEBC: If (var_130 > 0) Then
  loc_12CAEFB:   If (var_9C.Fields.Item("SysYN").Value = "Y") Then
  loc_12CAF17:     MsgBox("SYSTEM ENTRY CAN'T BE DELETED", 0, var_E4, var_104, var_128)
  loc_12CAF27:     Exit Sub
  loc_12CAF28:   End If
  loc_12CAF28: End If
  loc_12CAF2E: var_144 = 0
  loc_12CAF7F: var_104 = "SELECT Count(*) FROM TelCallCode WHERE CallTypeCode='" & Me.Fields.Item("Code").Value & "'" 
  loc_12CAF8D: unk_46240B.Execute CStr(var_104), var_128, -1
  loc_12CAF95: var_12C = var_12C.Fields
  loc_12CAF9D: var_144 = var_134.Item(var_134)
  loc_12CAFA5: var_148 = var_148.Value
  loc_12CAFD2: If (var_158 > 0) Then
  loc_12CAFF6:   MsgBox(" This call Type is present in Call Codes Master,you can't Delete it.", &H40, "Information", var_104, var_128)
  loc_12CB006:   Exit Sub
  loc_12CB007: End If
  loc_12CB03E: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_104, var_128) = 6) Then
  loc_12CB043:   var_96 = 0
  loc_12CB04F:   unk_46240B.BeginTrans var_130
  loc_12CB056:   var_96 = &HFF
  loc_12CB06A:   var_94 = Me.Bookmark 'Variant
  loc_12CB0C4:   unk_46240B.Execute CStr("Delete From RevMast Where Code='" & Me.Fields.Item("Code").Value & "'"), var_128, -1
  loc_12CB10F:   var_1B0 = 0
  loc_12CB122:   var_1A8 = 0
  loc_12CB12D:   var_1A4 = 0
  loc_12CB140:   var_19C = 0
  loc_12CB14B:   var_198 = 0
  loc_12CB15E:   var_190 = 0
  loc_12CB1A7:   Proc_154_5_10E33A4(MemVar_1F92044, "RevMast", "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_12CB217:   var_104 = "Delete From TelCallType Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_12CB225:   unk_46240B.Execute CStr(var_104), var_128, -1
  loc_12CB270:   var_1B0 = 0
  loc_12CB283:   var_1A8 = 0
  loc_12CB28E:   var_1A4 = 0
  loc_12CB2A1:   var_19C = 0
  loc_12CB2AC:   var_198 = 0
  loc_12CB2BF:   var_190 = 0
  loc_12CB2FF:   var_108 = "TelCallType"
  loc_12CB308:   Proc_154_5_10E33A4(MemVar_1F92044, var_108, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_12CB336:   unk_46240B.CommitTrans
  loc_12CB33D:   var_96 = 0
  loc_12CB34B:   Me.Requery -1
  loc_12CB35B:   Me.Requery -1
  loc_12CB36B:   Me.Requery -1
  loc_12CB37B:   Me.Requery -1
  loc_12CB39B:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12CB3A8:     Me.Bookmark = var_94
  loc_12CB3B0:   Else
  loc_12CB3C4:     If (Me.EOF = 0) Then
  loc_12CB3CD:       Me.MoveLast
  loc_12CB3D2:     End If
  loc_12CB3D2:   End If
  loc_12CB3D2:   Call Proc_92_34_1111730(var_96, var_190, 0, var_198, var_19C)
  loc_12CB3F3:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_12CB3FB: End If
  loc_12CB400: Set var_9C = Nothing
  loc_12CB403: Exit Sub
  loc_12CB404: ' Referenced from: 12CAE18
  loc_12CB40A: If (var_96 = &HFF) Then
  loc_12CB413:   unk_46240B.RollbackTrans
  loc_12CB418: End If
  loc_12CB420: Set var_A0 = Err()
  loc_12CB426: Call 0.Method_arg_2C (var_108, 0, var_1A4)
  loc_12CB447: MsgBox(CVar(var_108), &H30, " Deletion Error ", var_104, var_128)
  loc_12CB45A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F27B04
  'Data Table: 4623F8
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F27A08: On Error Goto loc_F27ABF
  loc_F27A19: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F27A1C:   Exit Sub
  loc_F27A1D: End If
  loc_F27A34: If (Me.RecordCount > 0) Then
  loc_F27A4C:   var_8C = "EDIT"
  loc_F27A5A:   Call Proc_92_32_E7B3E4(Proc_5_1_100CB50(var_8C, Me))
  loc_F27A70:   Set var_90 = Me.Txt
  loc_F27A76:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F27A7E:   var_98.SetFocus
  loc_F27A8D: Else
  loc_F27AAE:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F27ABE: End If
  loc_F27ABE: Exit Sub
  loc_F27ABF: ' Referenced from: F27A08
  loc_F27AC7: Set var_90 = Err()
  loc_F27ACD: Call 0.Method_arg_2C (var_8C)
  loc_F27AEE: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F27B01: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1994C
  'Data Table: 4623F8
  loc_E19941: Me.Global.Unload Me
  loc_E19949: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F279C0
  'Data Table: 4623F8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F278C0: On Error Goto loc_F27958
  loc_F278CC: var_88 = Me.RecordCount
  loc_F278DA: If (var_88 <= 0) Then
  loc_F278E3:   var_B8 = "Information"
  loc_F278FE:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F2790E:   Exit Sub
  loc_F2790F: End If
  loc_F27916: var_10C = "Select TelCallType.Code As SearchCode,TelCallType.CallType ,TelCallType.ShortName FROM TelCallType WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_F2791D: MemVar_1F920E4 = var_10C & "' or LOGSITE_CODE='HO') Order by TelCallType.CallType"
  loc_F27927: var_10C = "3000,1000"
  loc_F2792D: Proc_6_126_F1BCC0(var_10C)
  loc_F2793B: MemVar_1F92120 = Me
  loc_F27952: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F27957: Exit Sub
  loc_F27958: ' Referenced from: F278C0
  loc_F27960: Set var_110 = Err()
  loc_F27966: Call 0.Method_arg_1C (var_88)
  loc_F27977: If (var_88 <> 0) Then
  loc_F27982:   Set var_110 = Err()
  loc_F27988:   Call 0.Method_arg_2C (var_10C)
  loc_F279A9:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F279BC: End If
  loc_F279BC: Exit Sub
  loc_F279BE: ArrayRebase1Var
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2C9B8
  'Data Table: 4623F8
  loc_E2C9A8: Proc_5_0_110649C(&HFF, Me)
  loc_E2C9B0: Call Proc_92_34_1111730(global_52)
  loc_E2C9B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2B8D8
  'Data Table: 4623F8
  loc_E2B8C8: Proc_5_0_110649C(&HFF, Me)
  loc_E2B8D0: Call Proc_92_34_1111730(global_52)
  loc_E2B8D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2B938
  'Data Table: 4623F8
  loc_E2B928: Proc_5_0_110649C(&HFF, Me)
  loc_E2B930: Call Proc_92_34_1111730(global_52)
  loc_E2B935: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2C7D8
  'Data Table: 4623F8
  loc_E2C7C8: Proc_5_0_110649C(&HFF, Me)
  loc_E2C7D0: Call Proc_92_34_1111730(global_52)
  loc_E2C7D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '108BC78
  'Data Table: 4623F8
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_46240B As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  Dim var_7FE4 As Variant
  loc_108B9E0: On Error Goto loc_108BC2C
  loc_108B9F7: var_A0 = "Select TelCallType.Code As SearchCode,TelCallType.CallType as [Call Type],TelCallType.ShortName as [Short Name] FROM TelCallType WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_108BA07: unk_46240B.Execute var_A0 & "' or LOGSITE_CODE='HO') Order by TelCallType.CallType", var_C4, -1
  loc_108BA12: Set var_88 = var_C8
  loc_108BA28: var_CC = var_88.RecordCount
  loc_108BA36: If (var_CC = 0) Then
  loc_108BA52:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108BA62:   Exit Sub
  loc_108BA63: End If
  loc_108BA72: var_A4 = MemVar_1F920B4 & "\CallTypeMast.ttx"
  loc_108BA79: Set var_C8 = var_88 
  loc_108BA85: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108BA8F: Set var_88 = var_C8
  loc_108BA95: var_B4 = CVar(var_12E) 'Integer
  loc_108BA98: var_98 = var_B4 'Variant
  loc_108BAB4: var_A0 = MemVar_1F920B4 & "\CallTypeMast.RPT"
  loc_108BABD: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108BAC8: MemVar_1F921E4 = var_C8
  loc_108BAE3: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108BAEB: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108BAF7: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108BB10:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108BB18:   Call 0.Method_arg_20 (var_138)
  loc_108BB20:   Call 0.Method_arg_30 (var_A0)
  loc_108BB66:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108BB7C:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108BB84:     Call 0.Method_arg_20 (var_138)
  loc_108BB8C:     Call 0.Method_arg_38 ("'Call Type Master'")
  loc_108BB98:   End If
  loc_108BB9B: Next var_132 'Integer
  loc_108BBB9: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_108BBC1: Call 0.Method_arg_2C (var_DC)
  loc_108BBCF: Call 0.Method_arg_150 (var_FC)
  loc_108BBDA: Call 0.Method_arg_50 (var_A0)
  loc_108BBE4: Set var_138 = Nothing
  loc_108BBFE: Set var_C8 = MemVar_1F921E4 
  loc_108BC0A: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_108BC15: MemVar_1F921E4 = var_C8
  loc_108BC28: Set var_88 = Nothing
  loc_108BC2B: Exit Sub
  loc_108BC2C: ' Referenced from: 108B9E0
  loc_108BC34: Set var_C8 = Err()
  loc_108BC3A: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108BC45: Call 0.Method_arg_50 (var_A4)
  loc_108BC61: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108BC74: Exit Sub
  loc_108BC75: var_7FE4 = var_138 
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E42824
  'Data Table: 4623F8
  Dim Me As Recordset15
  loc_E427FB: Me.Requery -1
  loc_E4280B: Me.Requery -1
  loc_E4281B: Me.Requery -1
  loc_E42820: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '141F510
  'Data Table: 4623F8
  Dim var_A0 As String
  Dim var_D8 As Variant
  Dim var_B8 As String
  Dim unk_46240B As Connection15
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_9C As Field20
  Dim var_EC As String
  Dim var_FC As Variant
  Dim var_C8 As Variant
  Dim var_10C As Variant
  Dim Me As Recordset15
  Dim var_114 As String
  Dim var_120 As String
  Dim var_118 As TextBox
  Dim var_134 As String
  Dim var_12C As TextBox
  Dim var_140 As TextBox
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_11C As String
  Dim var_130 As String
  Dim var_B4 As Variant
  loc_141EAE8: On Error Goto loc_141F4BE
  loc_141EAEF: var_86 = CByte(0) 'Byte
  loc_141EAFE: Set var_94 = Me.Txt
  loc_141EB04: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_141EB2D: If (Proc_183_19_E8DAFC(var_98, "Call Type") = 0) Then
  loc_141EB37:   Call Txt_GotFocus()
  loc_141EB3C:   Exit Sub
  loc_141EB3D: End If
  loc_141EB48: Set var_94 = Me.Txt
  loc_141EB4E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_141EB77: If (Proc_183_19_E8DAFC(var_98, "Short Name") = 0) Then
  loc_141EB81:   Call Txt_GotFocus()
  loc_141EB86:   Exit Sub
  loc_141EB87: End If
  loc_141EB92: Set var_94 = Me.Txt
  loc_141EB98: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, CInt(1))
  loc_141EBC1: If (Proc_183_19_E8DAFC(var_98, "Ledger Name") = 0) Then
  loc_141EBCB:   Call Txt_GotFocus()
  loc_141EBD0:   Exit Sub
  loc_141EBD1: End If
  loc_141EBDC: Set var_94 = Me.Txt
  loc_141EBE2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98, CInt(2))
  loc_141EC0B: If (Proc_183_19_E8DAFC(var_98, "Tax Stucture Name") = 0) Then
  loc_141EC15:   Call Txt_GotFocus()
  loc_141EC1A:   Exit Sub
  loc_141EC1B: End If
  loc_141EC1F: Set var_94 = Me.TopCtrl1
  loc_141EC25: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CInt(3))
  loc_141EC3E: If (CStr(CInt(0)) = "Add") Then
  loc_141EC47:   var_D8 = 0
  loc_141EC64:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From RevMast Where SITE_CODE='" & MemVar_1F92070
  loc_141EC6B:   var_B8 = CStr(CInt(0)) & "' AND SysYn<>'Y'"
  loc_141EC74:   unk_46240B.Execute var_B8, var_B4, -1
  loc_141EC7C:   var_94 = var_94.Fields
  loc_141EC84:   var_D8 = var_98.Item(var_98)
  loc_141EC8C:   var_9C = var_9C.Value
  loc_141ECC5:   var_FC = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_141ECEB:   var_E8 = Format(CStr(var_E8), "000")
  loc_141ECF3:   var_10C = (1 + var_E8)
  loc_141ECFE:   global_72 = CStr(var_10C)
  loc_141ED13: Else
  loc_141ED30:   var_98 = Me.Fields.Item("Code")
  loc_141ED47:   global_72 = CStr(var_98.Value)
  loc_141ED58: End If
  loc_141ED61: unk_46240B.BeginTrans var_110
  loc_141ED6A: var_86 = CByte(1) 'Byte
  loc_141ED72: Set var_94 = Me.TopCtrl1
  loc_141ED78: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_141ED91: If (CStr(var_FC) = "Add") Then
  loc_141EDAB:   var_A0 = "Insert Into RevMast(Code,Name,ShortName,ACCode,TaxStru,SysYN,AppMode,FieldType,U_Name,U_EntDt,U_AE,FlagType,FlagAmr,DeskCode,Type,Site_Code,LOGSITE_CODE) Values('" & global_72
  loc_141EDC3:   Set var_94 = Me.Txt
  loc_141EDC9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_B8, var_A0 & "','", var_238)
  loc_141EDD1:   -1 = var_98.Text
  loc_141EDE1:   var_120 = var_23C & var_B8 & "','"
  loc_141EDF2:   Set var_9C = Me.Txt
  loc_141EDF8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118, var_11C)
  loc_141EE00:   var_120 = var_118.Text
  loc_141EE10:   var_134 = var_E8 & var_11C & "','"
  loc_141EE21:   Set var_128 = Me.Txt
  loc_141EE27:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C, var_130)
  loc_141EE2F:   var_134 = var_12C.Tag
  loc_141EE50:   Set var_13C = Me.Txt
  loc_141EE56:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_141EE8D:   Proc_6_7_F25D88(var_E8, Date)
  loc_141EE9E:   var_164 = CVar(var_98 & var_130 & "','" & var_140.Tag & "','N','Amount','C','" & MemVar_1F920C8 & "',") & var_E8 & ",'A','FOM','Detail','" 
  loc_141EEE5:   unk_46240B.Execute CStr(var_164 & CVar(MemVar_1F92078) & "FOM','Cr','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_141EF54:   var_A0 = "Insert Into TelCallType(Code,CallType,ShortName,ACCode,TaxStru,U_Name,U_EntDt,U_AE,sITE_cODE,LOGSITE_CODE) Values('" & global_72
  loc_141EF5B:   var_EC = var_A0 & "','"
  loc_141EF6C:   Set var_94 = Me.Txt
  loc_141EF72:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_B8, var_EC)
  loc_141EF7A:   var_1F4 = var_98.Text
  loc_141EF83:   var_114 = -1 & var_B8
  loc_141EF8A:   var_120 = var_23C & var_B8 & "','"
  loc_141EF9B:   Set var_9C = Me.Txt
  loc_141EFA1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118, var_11C)
  loc_141EFA9:   var_120 = var_118.Text
  loc_141EFCA:   Set var_128 = Me.Txt
  loc_141EFD0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_141EFF9:   Set var_13C = Me.Txt
  loc_141EFFF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_141F036:   Proc_6_7_F25D88(var_E8, Date)
  loc_141F051:   var_174 = CVar(var_23C & var_11C & "','" & var_12C.Tag & "','" & var_140.Tag & "','" & MemVar_1F920C8 & "',") & var_E8 & ",'A','" & CVar(MemVar_1F92070) 
  loc_141F07B:   unk_46240B.Execute CStr(var_174 & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_141F0D2: Else
  loc_141F0F0:   Set var_94 = Me.Txt
  loc_141F0F6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0, "UPDATE RevMast SET Name='")
  loc_141F0FE:   var_1F4 = var_98.Text
  loc_141F107:   var_B8 = -1 & var_A0
  loc_141F10E:   var_114 = var_B8 & "',ShortName='"
  loc_141F11F:   Set var_9C = Me.Txt
  loc_141F125:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118, var_EC)
  loc_141F12D:   var_114 = var_118.Text
  loc_141F14E:   Set var_128 = Me.Txt
  loc_141F154:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_141F17D:   Set var_13C = Me.Txt
  loc_141F183:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_141F1A9:   var_FC = CVar(var_23C & var_EC & "',ACCode='" & var_12C.Tag & "',TaxStru='" & var_140.Tag & "',U_name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_141F1BA:   Proc_6_7_F25D88(var_E8, Date)
  loc_141F1F4:   var_1D4 = var_FC & var_E8 & ",U_AE='E',FIELDTYPE='C',SITE_CODE='" & CVar(MemVar_1F92070) & "' WHERE Code='" & CVar(global_72) & "'" 
  loc_141F202:   unk_46240B.Execute CStr(var_1D4), , 
  loc_141F270:   Set var_94 = Me.Txt
  loc_141F276:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0, "UPDATE TelCallType SET CallType='")
  loc_141F27E:   var_1F4 = var_98.Text
  loc_141F287:   var_B8 = -1 & var_A0
  loc_141F28E:   var_114 = var_B8 & "',ShortName='"
  loc_141F29F:   Set var_9C = Me.Txt
  loc_141F2A5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118, var_EC)
  loc_141F2AD:   var_114 = var_118.Text
  loc_141F2CE:   Set var_128 = Me.Txt
  loc_141F2D4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_141F2FD:   Set var_13C = Me.Txt
  loc_141F303:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_141F329:   var_FC = CVar(var_23C & var_EC & "',ACCode='" & var_12C.Tag & "',TaxStru='" & var_140.Tag & "',U_name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_141F33A:   Proc_6_7_F25D88(var_E8, Date)
  loc_141F342:   var_10C = var_FC & var_E8 
  loc_141F346:   var_C8 = ",U_AE='E',SITE_CODE='"
  loc_141F382:   unk_46240B.Execute CStr(var_10C & var_C8 & CVar(MemVar_1F92070) & "' WHERE Code='" & CVar(global_72) & "'"), , 
  loc_141F3D2: End If
  loc_141F3D8: unk_46240B.CommitTrans
  loc_141F3E1: var_86 = CByte(0) 'Byte
  loc_141F3F0: Me.Requery -1
  loc_141F400: Me.Requery -1
  loc_141F410: Me.Requery -1
  loc_141F420: Me.Requery -1
  loc_141F44D: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_141F45D: Set var_94 = Me.TopCtrl1
  loc_141F463: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_C8)
  loc_141F47C: If (CStr() = "Add") Then
  loc_141F47F:   Call TopCtrl1_UnknownEvent_A()
  loc_141F484:   Exit Sub
  loc_141F485: End If
  loc_141F49A: var_A0 = "INI"
  loc_141F4A8: Call Proc_92_32_E7B3E4(Proc_5_1_100CB50(var_A0, Me))
  loc_141F4B3: Call Proc_92_37_EF7C50(global_52)
  loc_141F4B8: Call Proc_92_34_1111730()
  loc_141F4BD: Exit Sub
  loc_141F4BE: ' Referenced from: 141EAE8
  loc_141F4C7: If (CInt(var_86) = 1) Then
  loc_141F4D0:   unk_46240B.RollbackTrans
  loc_141F4D5: End If
  loc_141F4DD: Set var_94 = Err()
  loc_141F4E3: Call 0.Method_arg_2C (var_A0)
  loc_141F4FC: MsgBox(CVar(var_A0), &H10, var_E8, var_FC, var_10C)
  loc_141F50F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11A6FF4
  'Data Table: 4623F8
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_11A6BE6: Set var_88 = Me.Txt
  loc_11A6BEC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11A6BFA: Proc_6_74_E226B0(var_8C)
  loc_11A6C06: Call Proc_92_37_EF7C50(var_8C)
  loc_11A6C0B: On Error Goto loc_11A6FAD
  loc_11A6C11: var_92 = Index
  loc_11A6C1C: If (var_92 = CInt(0)) Then
  loc_11A6C36:   If (Me.RecordCount > 0) Then
  loc_11A6C44:     Set var_8C = Me.FGPoint
  loc_11A6C5C:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_11A6C6A:   End If
  loc_11A6C6D: Else
  loc_11A6C75:   If (var_92 = CInt(2)) Then
  loc_11A6C8F:     If (Me.RecordCount > 0) Then
  loc_11A6C9D:       Set var_8C = Me.FGPoint
  loc_11A6CB5:       Proc_6_137_1193554(Me.DGLedgerAc, global_60, Index)
  loc_11A6CC3:     End If
  loc_11A6D11:     Set var_88 = Me.Txt
  loc_11A6D17:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_11A6D1F:     var_8C = var_8C.Text
  loc_11A6D37:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_11A6D3A:       Exit Sub
  loc_11A6D3B:     End If
  loc_11A6D48:     Set var_88 = Me.Txt
  loc_11A6D4E:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11A6D56:     var_A0 = var_8C.Text
  loc_11A6D68:     var_B0 = "Name"
  loc_11A6DA3:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_11A6DAC:       Me.MoveFirst
  loc_11A6DCF:       Set var_88 = Me.Txt
  loc_11A6DD5:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_11A6DDD:       0 = var_8C.Text
  loc_11A6DF6:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_11A6E0B:     End If
  loc_11A6E0E:   Else
  loc_11A6E16:     If (var_92 = CInt(3)) Then
  loc_11A6E30:       If (Me.RecordCount > 0) Then
  loc_11A6E3E:         Set var_8C = Me.FGPoint
  loc_11A6E56:         Proc_6_137_1193554(Me.DGTaxStru, global_64)
  loc_11A6E64:       End If
  loc_11A6EB2:       Set var_88 = Me.Txt
  loc_11A6EB8:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11A6EC0:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_11A6ED8:       If (Index Or (var_A0 = vbNullString)) Then
  loc_11A6EDB:         Exit Sub
  loc_11A6EDC:       End If
  loc_11A6EE9:       Set var_88 = Me.Txt
  loc_11A6EEF:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11A6EF7:       var_A0 = var_8C.Text
  loc_11A6F09:       var_B0 = "Name"
  loc_11A6F44:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_11A6F4D:         Me.MoveFirst
  loc_11A6F70:         Set var_88 = Me.Txt
  loc_11A6F76:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_11A6F7E:         0 = var_8C.Text
  loc_11A6F97:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_11A6FAC:       End If
  loc_11A6FAC:     End If
  loc_11A6FAC:   End If
  loc_11A6FAC: End If
  loc_11A6FAC: Exit Sub
  loc_11A6FAD: ' Referenced from: 11A6C0B
  loc_11A6FB5: Set var_88 = Err()
  loc_11A6FBB: Call 0.Method_arg_2C (var_A0)
  loc_11A6FDC: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_11C)
  loc_11A6FEF: Exit Sub
  loc_11A6FF0: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11B087C
  'Data Table: 4623F8
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  Dim var_E4 As Variant
  loc_11B045E: If (CLng(Shift) = &H1B) Then
  loc_11B0461:   Call Proc_92_37_EF7C50()
  loc_11B0466:   Exit Sub
  loc_11B0467: End If
  loc_11B046A: var_86 = KeyCode
  loc_11B0475: If (var_86 = CInt(0)) Then
  loc_11B0495:   Set var_98 = Me.FGPoint
  loc_11B04C3:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, KeyCode, global_56, Shift)
  loc_11B0530:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11B0556:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_11B0564:   End If
  loc_11B0567: Else
  loc_11B056F:   If (var_86 = CInt(2)) Then
  loc_11B059A:     Set var_98 = Nothing
  loc_11B05CC:     Proc_6_69_134A198(Me.DGLedgerAc, Me.Txt, CInt(2), global_60, Shift, 0, 1)
  loc_11B063B:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11B0642:       Set var_98 = Me.DGLedgerAc
  loc_11B0661:       Proc_6_138_106D6F8(var_98, global_60, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_11B066F:     End If
  loc_11B0672:   Else
  loc_11B067A:     If (var_86 = CInt(3)) Then
  loc_11B06D7:       Proc_6_69_134A198(Me.DGTaxStru, Me.Txt, CInt(3), global_64, Shift, 0, 1, Nothing)
  loc_11B0746:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11B076C:         Proc_6_138_106D6F8(Me.DGTaxStru, global_64, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_11B077A:       End If
  loc_11B077A:     End If
  loc_11B077A:   End If
  loc_11B077A: End If
  loc_11B07AB: Set var_98 = Me.DGTaxStru
  loc_11B07B1: var_E4 = var_98.Visible
  loc_11B07D0: If (((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGLedgerAc.Visible) = 0)) And (CBool(var_E4) = 0)) Then
  loc_11B07F1:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_11B082B:     If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_134) = 6) Then
  loc_11B082E:       Call TopCtrl1_UnknownEvent_16()
  loc_11B0833:     End If
  loc_11B0833:     Exit Sub
  loc_11B0834:   End If
  loc_11B0849:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11B0852:     Proc_6_75_E527CC(Shift, arg_14, 0, 1)
  loc_11B0857:   End If
  loc_11B086A:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_11B0873:     Proc_6_76_E52838(Shift, arg_14, var_98)
  loc_11B0878:   End If
  loc_11B0878: End If
  loc_11B0878: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F7ED74
  'Data Table: 4623F8
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_F7EC2A: Proc_6_133_E7EF78(var_94)
  loc_F7EC33: arg_10 = CInt(var_94)
  loc_F7EC3C: Proc_6_58_E054C0(arg_10, arg_10)
  loc_F7EC44: var_96 = KeyAscii
  loc_F7EC4F: If (var_96 = CInt(2)) Then
  loc_F7EC6E:   If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_F7EC80:     var_A0 = "Name"
  loc_F7EC9B:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10)
  loc_F7ECCD:     Proc_6_138_106D6F8(Me.DGLedgerAc, global_60, KeyAscii, Me.FGPoint)
  loc_F7ECDB:   End If
  loc_F7ECDE: Else
  loc_F7ECE6:   If (var_96 = CInt(3)) Then
  loc_F7ED05:     If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_F7ED32:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_F7ED64:       Proc_6_138_106D6F8(Me.DGTaxStru, global_64, KeyAscii, Me.FGPoint, 0)
  loc_F7ED72:     End If
  loc_F7ED72:   End If
  loc_F7ED72: End If
  loc_F7ED72: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'ED92A0
  'Data Table: 4623F8
  Dim Me As Recordset15
  loc_ED91FE: If (KeyCode = CInt(0)) Then
  loc_ED921D:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_ED9237:     If (Me.RecordCount > 0) Then
  loc_ED9244:       var_A4 = "CallType"
  loc_ED925F:       Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_56)
  loc_ED9291:       Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_ED929F:     End If
  loc_ED929F:   End If
  loc_ED929F: End If
  loc_ED929F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E484FC
  'Data Table: 4623F8
  loc_E484DA: Set var_88 = Me.Txt
  loc_E484E0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E484EE: Proc_6_73_E22704(var_8C)
  loc_E484FA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '110FA60
  'Data Table: 4623F8
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_110F71C: On Error Goto loc_110FA1C
  loc_110F722: var_86 = Cancel
  loc_110F72D: If (var_86 = CInt(0)) Then
  loc_110F733:   Call Proc_92_35_10B2A10(var_88)
  loc_110F73E:   If (var_88 = &HFF) Then
  loc_110F743:     arg_10 = &HFF
  loc_110F746:     Exit Sub
  loc_110F747:   End If
  loc_110F74A: Else
  loc_110F752:   If (var_86 = CInt(1)) Then
  loc_110F758:     Call Proc_92_36_106C310(var_88, arg_10)
  loc_110F763:     If (var_88 = &HFF) Then
  loc_110F768:       arg_10 = &HFF
  loc_110F76B:       Exit Sub
  loc_110F76C:     End If
  loc_110F76F:   Else
  loc_110F777:     If (var_86 = CInt(2)) Then
  loc_110F7C8:       Set var_94 = Me.Txt
  loc_110F7CE:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_110F7D6:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_110F7EE:       If (arg_10 Or (var_9C = vbNullString)) Then
  loc_110F7F1:         Exit Sub
  loc_110F7F2:       End If
  loc_110F82D:       Set var_B0 = Me.Txt
  loc_110F833:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_110F83B:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_110F86E:       var_98 = Me.Fields.Item("Code")
  loc_110F87F:       var_9C = CStr(var_98.Value)
  loc_110F88C:       Set var_B0 = Me.Txt
  loc_110F892:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_110F89A:       var_B4.Tag = var_9C
  loc_110F8B3:     Else
  loc_110F8BB:       If (var_86 = CInt(3)) Then
  loc_110F90C:         Set var_94 = Me.Txt
  loc_110F912:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_110F91A:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_110F932:         If (var_86 Or (var_9C = vbNullString)) Then
  loc_110F942:           Set var_94 = Me.Txt
  loc_110F948:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_110F950:           var_98.Tag = vbNullString
  loc_110F95C:           Exit Sub
  loc_110F95D:         End If
  loc_110F998:         Set var_B0 = Me.Txt
  loc_110F99E:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_110F9A6:         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_110F9EA:         var_9C = CStr(Me.Fields.Item("Code").Value)
  loc_110F9F7:         Set var_B0 = Me.Txt
  loc_110F9FD:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_110FA05:         var_B4.Tag = var_9C
  loc_110FA1B:       End If
  loc_110FA1B:     End If
  loc_110FA1B:   End If
  loc_110FA1B: End If
  loc_110FA1B: Exit Sub
  loc_110FA1C: ' Referenced from: 110F71C
  loc_110FA24: Set var_94 = Err()
  loc_110FA2A: Call 0.Method_arg_2C (var_9C)
  loc_110FA4B: MsgBox(CVar(var_9C), &H40, "Information", var_F4, var_114)
  loc_110FA5E: Exit Sub
  loc_110FA5F: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_9 'F48404
  'Data Table: 4623F8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F482FB: Me.DGLedgerAc.Visible = False
  loc_F4831A: If (Me.RecordCount > 0) Then
  loc_F48359:   Set var_B4 = Me.Txt
  loc_F4835F:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_F48367:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4839A:   var_B0 = Me.Fields.Item("Name")
  loc_F483B9:   Set var_B4 = Me.Txt
  loc_F483BF:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_F483C7:   var_B8.Text = CStr(var_B0.Value)
  loc_F483DD: End If
  loc_F483E8: Set var_A8 = Me.Txt
  loc_F483EE: Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(2))
  loc_F483F6: var_B0.SetFocus
  loc_F48402: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_1F 'E74668
  'Data Table: 4623F8
  loc_E74626: Proc_6_153_E91194(Me.DGLedgerAc, arg_14)
  loc_E7463D: Set var_8C = Me.FGPoint
  loc_E74659: Proc_6_138_106D6F8(Me.DGLedgerAc, global_60, CInt(2))
  loc_E74667: Exit Sub
End Sub

Private Sub Form_Load() '1050E04
  'Data Table: 4623F8
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_46240B As Connection15
  Dim var_B8 As Variant
  loc_1050BA0: On Error Goto loc_1050DC0
  loc_1050BB5: Set var_8C = Me
  loc_1050BBB: Proc_6_23_DFBA28(var_8C, 4500)
  loc_1050BC3: Call Proc_92_38_FFFD10(8000)
  loc_1050BEC: unk_46240B.Execute "SELECT Code,CallType FROM TelCallType WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY CallType", var_B8, -1
  loc_1050C1B: CVarUnk
  loc_1050C20: VerifyVarObj
  loc_1050C2C: LateIdStAd
  loc_1050C55: var_98 = "SELECT SubCode as Code,Name FROM SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_1050C5E: unk_46240B.Execute var_98, var_B8, -1
  loc_1050C8D: CVarUnk
  loc_1050C92: VerifyVarObj
  loc_1050C9E: LateIdStAd
  loc_1050CD0: unk_46240B.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B8, -1
  loc_1050CFF: CVarUnk
  loc_1050D04: VerifyVarObj
  loc_1050D0A: Set var_8C = Me.DGTaxStru
  loc_1050D10: LateIdStAd
  loc_1050D32: var_94 = "SELECT distinct R.*,R.Code as SearchCode,S.SubCode as LedgerCode ,S.Name as LedgerName,T.Code as TaxCode,T.Name as TaxName FROM ((TelCallType R Left Join TaxStru T on T.Code=R.TaxStru) Left join Subgroup S on S.SubCode=R.ACCode) WHERE (R.LOGSITE_CODE='" & MemVar_1F92078
  loc_1050D42: unk_46240B.Execute var_94 & "' or R.LOGSITE_CODE='HO')", var_B8, -1
  loc_1050D68: Call Proc_92_31_EE1AEC(var_8C, var_8C, Me.DGLedgerAc, var_8C, var_8C)
  loc_1050D79: Set var_8C = Me
  loc_1050D82: var_94 = "INI"
  loc_1050D90: Call Proc_92_32_E7B3E4(Proc_5_1_100CB50(var_94, var_8C, var_8C, Me.DGHelp), var_8C, var_8C)
  loc_1050DA4: Call 0.Method_arg_160 (var_8C, var_8C)
  loc_1050DB2: Call 0.Method_arg_164 (var_8C)
  loc_1050DBA: Call Proc_92_34_1111730(var_8C)
  loc_1050DBF: Exit Sub
  loc_1050DC0: ' Referenced from: 1050BA0
  loc_1050DC8: Set var_8C = Err()
  loc_1050DCE: Call 0.Method_arg_2C (var_94)
  loc_1050DEF: MsgBox(CVar(var_94), &H40, "Information", var_EC, var_10C)
  loc_1050E02: Exit Sub
  loc_1050E03: Exit Sub
End Sub

Private Sub Form_Resize() 'DFD5FC
  'Data Table: 4623F8
  loc_DFD5F8: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5F2B8
  'Data Table: 4623F8
  loc_E5F277: Set global_52 = Nothing
  loc_E5F289: Set global_56 = Nothing
  loc_E5F29B: Set global_60 = Nothing
  loc_E5F2AD: Set global_64 = Nothing
  loc_E5F2B4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E277DC
  'Data Table: 4623F8
  loc_E277B4: On Error Goto loc_E277D3
  loc_E277CB: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E277D3: ' Referenced from: E277B4
  loc_E277D3: Proc_6_60_E62BC4(Shift)
  loc_E277D8: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E85D68
  'Data Table: 4623F8
  loc_E85D14: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E85D17:   Call DGHelp_UnknownEvent_9()
  loc_E85D1C: End If
  loc_E85D38: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_E85D3B:   Call DGTaxStru_UnknownEvent_9()
  loc_E85D40: End If
  loc_E85D5C: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_E85D5F:   Call DGLedgerAc_UnknownEvent_9()
  loc_E85D64: End If
  loc_E85D64: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F3C4E4
  'Data Table: 4623F8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3C3DB: Me.DGTaxStru.Visible = False
  loc_F3C3FA: If (Me.RecordCount > 0) Then
  loc_F3C439:   Set var_B4 = Me.Txt
  loc_F3C43F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3C447:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3C47A:   var_B0 = Me.Fields.Item("Name")
  loc_F3C499:   Set var_B4 = Me.Txt
  loc_F3C49F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3C4A7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3C4BD: End If
  loc_F3C4C8: Set var_A8 = Me.Txt
  loc_F3C4CE: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3))
  loc_F3C4D6: var_B0.SetFocus
  loc_F3C4E2: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'E74790
  'Data Table: 4623F8
  loc_E7474E: Proc_6_153_E91194(Me.DGTaxStru, arg_14)
  loc_E74765: Set var_8C = Me.FGPoint
  loc_E74781: Proc_6_138_106D6F8(Me.DGTaxStru, global_64, CInt(3))
  loc_E7478F: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F3BF64
  'Data Table: 4623F8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3BE5B: Me.DGHelp.Visible = False
  loc_F3BE7A: If (Me.RecordCount > 0) Then
  loc_F3BEB9:   Set var_B4 = Me.Txt
  loc_F3BEBF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3BEC7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3BEFA:   var_B0 = Me.Fields.Item("CallType")
  loc_F3BF19:   Set var_B4 = Me.Txt
  loc_F3BF1F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3BF27:   var_B8.Text = CStr(var_B0.Value)
  loc_F3BF3D: End If
  loc_F3BF48: Set var_A8 = Me.Txt
  loc_F3BF4E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F3BF56: var_B0.SetFocus
  loc_F3BF62: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E74540
  'Data Table: 4623F8
  loc_E744FE: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E74515: Set var_8C = Me.FGPoint
  loc_E74531: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0))
  loc_E7453F: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC4A44
  'Data Table: 4623F8
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC49BA: On Error Goto loc_EC49FF
  loc_EC49C3: Me.MoveFirst
  loc_EC49DD: var_8C = "code='" & MyValue
  loc_EC49ED: Me.Find var_8C & "'", 0, 1
  loc_EC49F9: Call Proc_92_34_1111730(var_A0)
  loc_EC49FE: Exit Sub
  loc_EC49FF: ' Referenced from: EC49BA
  loc_EC4A07: Set var_A4 = Err()
  loc_EC4A0D: Call 0.Method_arg_2C (var_8C)
  loc_EC4A2E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC4A41: Exit Sub
  loc_EC4A42: Exit Sub
End Sub

Public Sub Proc_92_31_EE1AEC
  'Data Table: 4623F8
  Dim var_88 As Recordset15
  Dim var_AC As TextBox
  loc_EE1A3A: Set var_88 = global_52 
  loc_EE1A73: Set var_A8 = Me.Txt
  loc_EE1A79: Call 0.Method_Proc_92_31_EE1AEC0 (CInt(0), var_AC)
  loc_EE1A81: var_AC.MaxLength = var_88.Fields.Item("CallType").DefinedSize
  loc_EE1AC6: Set var_A8 = Me.Txt
  loc_EE1ACC: Call 0.Method_Proc_92_31_EE1AEC0 (CInt(1), var_AC)
  loc_EE1AD4: var_AC.MaxLength = var_88.Fields.Item("ShortName").DefinedSize
  loc_EE1AE6: Set var_88 = Nothing 
  loc_EE1AEA: Exit Sub
  loc_EE1AEB:  = 
End Sub

Public Sub Proc_92_32_E7B3E4(arg_C) 'E7B3E4
  'Data Table: 4623F8
  Dim var_98 As TextBox
  loc_E7B392: Set var_8C = Me.Txt
  loc_E7B398: Call 0.Method_Proc_92_32_E7B3E4C (var_8E, var_86)
  loc_E7B3A8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7B3BE:   Set var_8C = Me.Txt
  loc_E7B3C4:   Call 0.Method_Proc_92_32_E7B3E40 (CInt(var_86), var_98)
  loc_E7B3CC:   var_98.Enabled = arg_C
  loc_E7B3DB: Next var_92 'Byte
  loc_E7B3E1: Exit Sub
  loc_E7B3E2: Set var_8000 = 
End Sub

Public Sub Proc_92_33_E7B2B4
  'Data Table: 4623F8
  Dim var_98 As TextBox
  loc_E7B262: Set var_8C = Me.Txt
  loc_E7B268: Call 0.Method_Proc_92_33_E7B2B4C (var_8E, var_86)
  loc_E7B278: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7B28E:   Set var_8C = Me.Txt
  loc_E7B294:   Call 0.Method_Proc_92_33_E7B2B40 (CInt(var_86), var_98)
  loc_E7B29C:   var_98.Text = vbNullString
  loc_E7B2AB: Next var_92 'Byte
  loc_E7B2B1: Exit Sub
  loc_E7B2B2: Set var_8000 = 
End Sub

Public Sub Proc_92_34_1111730
  'Data Table: 4623F8
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B4 As String
  Dim var_BC As TextBox
  loc_11113E8: On Error Goto loc_11116EA
  loc_11113F1: Proc_183_45_E5C118(global_52)
  loc_111140D: If (Me.RecordCount <= 0) Then
  loc_1111410:   Call Proc_92_33_E7B2B4()
  loc_1111418: Else
  loc_111144C:   global_72 = CStr(Me.Fields.Item("CallType").Value)
  loc_1111499:   Set var_B8 = Me.Txt
  loc_111149F:   Call 0.Method_Proc_92_34_11117300 (CInt(0), var_BC)
  loc_11114A7:   var_BC.Text = CStr(Me.Fields.Item("CallType").Value)
  loc_11114F9:   Set var_B8 = Me.Txt
  loc_11114FF:   Call 0.Method_Proc_92_34_11117300 (CInt(0), var_BC)
  loc_1111507:   var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1111559:   Set var_B8 = Me.Txt
  loc_111155F:   Call 0.Method_Proc_92_34_11117300 (CInt(1), var_BC)
  loc_1111567:   var_BC.Text = CStr(Me.Fields.Item("ShortName").Value)
  loc_11115B6:   Set var_B8 = Me.Txt
  loc_11115BC:   Call 0.Method_Proc_92_34_11117300 (CInt(2), var_BC)
  loc_11115C4:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LedgerName")))
  loc_1111611:   Set var_B8 = Me.Txt
  loc_1111617:   Call 0.Method_Proc_92_34_11117300 (CInt(2), var_BC)
  loc_111161F:   var_BC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("LedgerCode")))
  loc_111166C:   Set var_B8 = Me.Txt
  loc_1111672:   Call 0.Method_Proc_92_34_11117300 (CInt(3), var_BC)
  loc_111167A:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxName")))
  loc_11116B9:   var_B4 = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxCode")))
  loc_11116C7:   Set var_B8 = Me.Txt
  loc_11116CD:   Call 0.Method_Proc_92_34_11117300 (CInt(3), var_BC)
  loc_11116D5:   var_BC.Tag = var_B4
  loc_11116E9: End If
  loc_11116E9: Exit Sub
  loc_11116EA: ' Referenced from: 11113E8
  loc_11116F2: Set var_8C = Err()
  loc_11116F8: Call 0.Method_arg_2C (var_B4)
  loc_1111719: MsgBox(CVar(var_B4), &H40, "Information", var_EC, var_10C)
  loc_111172C: Exit Sub
  loc_111172D: ThisVCallI2
End Sub

Public Sub Proc_92_35_10B2A10
  'Data Table: 4623F8
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_A8 As TextBox
  Dim var_B8 As String
  Dim unk_46240B As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_144 As Fields15
  Dim var_148 As Field20
  loc_10B277F: If (Me.RecordCount = 0) Then
  loc_10B2782:   Proc_92_35_10B2A10 = 
  loc_10B2788: End If
  loc_10B278C: Set var_90 = Me.TopCtrl1
  loc_10B2792: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10B27AB: If (CStr() = "Add") Then
  loc_10B27E9:   Set var_90 = Me.Txt
  loc_10B27EF:   Call 0.Method_Proc_92_35_10B2A100 (CInt(0), var_A8, var_AC, "Select Count(*) From TelCallType Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and CallType='", var_A0, -1)
  loc_10B2807:   var_B8 = var_D0 & var_AC & "'"
  loc_10B2810:   unk_46240B.Execute var_B8, 0, var_E4
  loc_10B2820:    = var_D0.Item()
  loc_10B2828:    = var_E4.Value
  loc_10B2859:   If (var_A8.Text.Fields > 0) Then
  loc_10B2867:     var_F4 = "Information"
  loc_10B2877:     var_A0 = "Duplicate Call Type"
  loc_10B287D:     MsgBox(var_A0, &H40, var_F4, var_114, var_134)
  loc_10B2898:     Set var_90 = Me.Txt
  loc_10B289E:     Call 0.Method_Proc_92_35_10B2A100 (CInt(0))
  loc_10B28A6:     var_A8.SetFocus
  loc_10B28B7:     Proc_92_35_10B2A10 = &HFF
  loc_10B28BD:   End If
  loc_10B28C0: Else
  loc_10B28C6:   var_E0 = 0
  loc_10B28FB:   Set var_90 = Me.Txt
  loc_10B2901:   Call 0.Method_Proc_92_35_10B2A100 (CInt(0), var_A8, var_AC, "Select Count(*) From TelCallType Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and CallType='", var_A0, -1)
  loc_10B292A:   Set var_CC = Me.Txt
  loc_10B2930:   Call 0.Method_Proc_92_35_10B2A100 (CInt(0), var_D0, var_B8, var_144 & var_AC & "' And CallType<>'")
  loc_10B2938:   var_E0 = var_D0.Text
  loc_10B2951:   unk_46240B.Execute var_148 & var_B8 & "'", var_F4, var_A8
  loc_10B2959:    = var_A8.Text.Fields
  loc_10B2961:    = var_144.Item()
  loc_10B2969:    = var_148.Value
  loc_10B29A4:   If (var_F4 > 0) Then
  loc_10B29C8:     MsgBox("Duplicate Call Type", &H40, "Information", var_114, var_134)
  loc_10B29E3:     Set var_90 = Me.Txt
  loc_10B29E9:     Call 0.Method_Proc_92_35_10B2A100 (CInt(0))
  loc_10B29F1:     var_A8.SetFocus
  loc_10B2A02:     Proc_92_35_10B2A10 = &HFF
  loc_10B2A08:   End If
  loc_10B2A08: End If
  loc_10B2A08: Proc_92_35_10B2A10 = var_A8
End Sub

Public Sub Proc_92_36_106C310
  'Data Table: 4623F8
  Dim var_A4 As TextBox
  Dim unk_46240B As Connection15
  Dim var_CC As Fields15
  Dim var_E0 As Field20
  loc_106C0B0: Set var_8C = Me.TopCtrl1
  loc_106C0B6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_106C0CF: If (CStr() = "Add") Then
  loc_106C10D:   Set var_8C = Me.Txt
  loc_106C113:   Call 0.Method_Proc_92_36_106C3100 (CInt(1), var_A4, var_A8, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and ShortName='", var_9C, -1)
  loc_106C134:   unk_46240B.Execute var_CC & var_A8 & "'", 0, var_E0
  loc_106C144:    = var_CC.Item()
  loc_106C14C:    = var_E0.Value
  loc_106C17D:   If (var_A4.Text.Fields > 0) Then
  loc_106C19B:     var_9C = "Duplicate Short Name"
  loc_106C1A1:     MsgBox(var_9C, &H40, "Information", var_110, var_130)
  loc_106C1BC:     Set var_8C = Me.Txt
  loc_106C1C2:     Call 0.Method_Proc_92_36_106C3100 (CInt(1))
  loc_106C1CA:     var_A4.SetFocus
  loc_106C1DB:     Proc_92_36_106C310 = &HFF
  loc_106C1E1:   End If
  loc_106C1E4: Else
  loc_106C21F:   Set var_8C = Me.Txt
  loc_106C225:   Call 0.Method_Proc_92_36_106C3100 (CInt(1), var_A4, var_A8, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and ShortName='", var_9C, -1)
  loc_106C257:   unk_46240B.Execute var_CC & var_A8 & "' And ShortName<>'" & global_72 & "'", 0, var_E0
  loc_106C267:    = var_CC.Item(var_A4)
  loc_106C26F:    = var_E0.Value
  loc_106C2A4:   If (var_A4.Text.Fields > 0) Then
  loc_106C2C8:     MsgBox("Duplicate Short Name", &H40, "Information", var_110, var_130)
  loc_106C2E3:     Set var_8C = Me.Txt
  loc_106C2E9:     Call 0.Method_Proc_92_36_106C3100 (CInt(1))
  loc_106C2F1:     var_A4.SetFocus
  loc_106C302:     Proc_92_36_106C310 = &HFF
  loc_106C308:   End If
  loc_106C308: End If
  loc_106C308: Proc_92_36_106C310 = var_A4
End Sub

Public Sub Proc_92_37_EF7C50
  'Data Table: 4623F8
  loc_EF7B90: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF7BA2:   Me.DGHelp.Visible = False
  loc_EF7BAA: End If
  loc_EF7BC6: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_EF7BD8:   Me.DGLedgerAc.Visible = False
  loc_EF7BE0: End If
  loc_EF7BFC: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_EF7C0E:   Me.DGTaxStru.Visible = False
  loc_EF7C16: End If
  loc_EF7C32: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF7C44:   Me.FGPoint.Visible = False
  loc_EF7C4C: End If
  loc_EF7C4C: Exit Sub
  loc_EF7C4D: DOC
End Sub

Public Sub Proc_92_38_FFFD10
  'Data Table: 4623F8
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_88 As TextBox
  Dim var_BC As TextBox
  Dim var_C4 As TextBox
  Dim var_C8 As TextBox
  loc_FFFB14: Set var_88 = Me.DGHelp
  loc_FFFB25: Set var_8C = Me.Txt
  loc_FFFB2B: Call 0.Method_Proc_92_38_FFFD100 (CInt(0), var_90)
  loc_FFFB43: var_88.Left = CVar(var_90.Left)
  loc_FFFB5D: Set var_B8 = Me.Txt
  loc_FFFB63: Call 0.Method_Proc_92_38_FFFD100 (CInt(0), var_BC)
  loc_FFFB7E: Set var_8C = Me.Txt
  loc_FFFB84: Call 0.Method_Proc_92_38_FFFD100 (CInt(0), var_90)
  loc_FFFB9C: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H19))) 'Single
  loc_FFFBA4: var_88.Top = CVar(var_90.Left)
  loc_FFFBB6: Set var_88 = Nothing 
  loc_FFFBBE: Set var_C4 = Me.DGLedgerAc
  loc_FFFBCF: Set var_8C = Me.Txt
  loc_FFFBD5: Call 0.Method_Proc_92_38_FFFD100 (CInt(2), var_90)
  loc_FFFBED: var_C4.Left = CVar(var_90.Left)
  loc_FFFC07: Set var_B8 = Me.Txt
  loc_FFFC0D: Call 0.Method_Proc_92_38_FFFD100 (CInt(2), var_BC)
  loc_FFFC28: Set var_8C = Me.Txt
  loc_FFFC2E: Call 0.Method_Proc_92_38_FFFD100 (CInt(2), var_90)
  loc_FFFC46: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H19))) 'Single
  loc_FFFC4E: var_C4.Top = CVar(var_90.Left)
  loc_FFFC60: Set var_C4 = Nothing 
  loc_FFFC68: Set var_C8 = Me.DGTaxStru
  loc_FFFC79: Set var_8C = Me.Txt
  loc_FFFC7F: Call 0.Method_Proc_92_38_FFFD100 (CInt(3), var_90)
  loc_FFFC97: var_C8.Left = CVar(var_90.Left)
  loc_FFFCB1: Set var_B8 = Me.Txt
  loc_FFFCB7: Call 0.Method_Proc_92_38_FFFD100 (CInt(3), var_BC)
  loc_FFFCD2: Set var_8C = Me.Txt
  loc_FFFCD8: Call 0.Method_Proc_92_38_FFFD100 (CInt(3), var_90)
  loc_FFFCF0: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H19))) 'Single
  loc_FFFCF8: var_C8.Top = CVar(var_90.Left)
  loc_FFFD0A: Set var_C8 = Nothing 
  loc_FFFD0E: Exit Sub
End Sub

Public Sub Proc_92_39_1096930
  'Data Table: 4623F8
  Dim unk_46240B As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_90 As Recordset15
  Dim var_188 As Integer
  Dim var_114 As Variant
  Dim var_174 As Recordset15
  Dim var_178 As Fields15
  Dim var_18C As Field20
  loc_10966DC: unk_46240B.Execute CStr("Select taxcode from taxstru where code='" & Trim(arg_14) & "'"), var_114, -1
  loc_10966E7: Set var_88 = var_118
  loc_10966FB: ' Referenced from: 1096929
  loc_109670A: If Not(var_88.EOF) Then
  loc_1096772:   var_150 = "Select Code from taxstru where taxcode='" & var_88.Fields.Item("TaxCode").Value & "' and Code not in ('" & Trim(arg_14) & "')" 
  loc_1096780:   unk_46240B.Execute CStr(var_150), var_170, -1
  loc_109678B:   Set var_90 = var_174
  loc_10967AB:   ' Referenced from: 1096889
  loc_10967BA:   If Not(var_90.EOF) Then
  loc_10967C3:     var_188 = 0
  loc_1096824:     var_130 = "Select Count(*) from RevMast where TaxStru='" & var_90.Fields.Item("Code").Value & "' and DeskCode='" & CVar(arg_10) & "'" 
  loc_1096832:     unk_46240B.Execute CStr(var_130), var_150, -1
  loc_109683A:     var_174 = var_174.Fields
  loc_1096842:     var_188 = var_178.Item(var_178)
  loc_109684A:     var_18C = var_18C.Value
  loc_109687B:     If (var_170 > 0) Then
  loc_109687E:       GoTo loc_1096921
  loc_1096881:     End If
  loc_1096884:     var_90.MoveNext
  loc_1096889:     GoTo loc_10967AB
  loc_109688C:   End If
  loc_10968FF:   unk_46240B.Execute CStr("Delete From RevMast Where TaxCode='" & var_88.Fields.Item("TaxCode").Value & "' and DeskCode='" & Trim(arg_10) & "'"), var_170, -1
  loc_1096921:   ' Referenced from: 109687E
  loc_1096924:   var_88.MoveNext
  loc_1096929:   GoTo loc_10966FB
  loc_109692C: End If
  loc_109692C: Exit Sub
End Sub
