VERSION 5.00
Begin VB.Form FrmRoomFeatureMast
  Caption = "Room Features Master"
  BackColor = &HFFC0C0&
  ForeColor = &HC00000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HC00000&
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11550
  ClientHeight = 7200
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11550
    Height = 450
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3705
    Top = 1935
    Width = 4365
    Height = 285
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
  Begin DataGrid DGHelp
    Left = 6405
    Top = 5595
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin MSFlexGrid FGPoint
    Left = 7410
    Top = 4635
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 3
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5685
    Top = 4410
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
    Left = 2310
    Top = 4410
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
    Top = 360
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
    Caption = "Room Feature "
    Index = 0
    ForeColor = &HC00000&
    Left = 2325
    Top = 1935
    Width = 1410
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

Attribute VB_Name = "FrmRoomFeatureMast"


Private Sub TopCtrl1_UnknownEvent_A 'EFD35C
  'Data Table: 4475D4
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFD290: On Error Goto loc_EFD316
  loc_EFD2A0: Me.LblUser.Caption = vbNullString
  loc_EFD2B5: Me.LblLDt.Caption = vbNullString
  loc_EFD2BD: Call Proc_18_28_E7A2AC()
  loc_EFD2D7: var_8C = "ADD"
  loc_EFD2E5: Call Proc_18_27_E7B47C(Proc_5_1_100CB50(var_8C, Me))
  loc_EFD2FB: Set var_88 = Me.Txt
  loc_EFD301: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EFD309: var_94.SetFocus
  loc_EFD315: Exit Sub
  loc_EFD316: ' Referenced from: EFD290
  loc_EFD31E: Set var_88 = Err()
  loc_EFD324: Call 0.Method_arg_2C (var_8C)
  loc_EFD345: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFD358: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC1B0C
  'Data Table: 4475D4
  loc_EC1A74: On Error Goto loc_EC1B04
  loc_EC1AAE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC1AB1:   Call Proc_18_31_E856D8()
  loc_EC1AC2:   Set var_110 = Me
  loc_EC1AD9:   Call Proc_18_27_E7B47C(Proc_5_1_100CB50("INI", var_110))
  loc_EC1AE4:   Call Proc_18_29_11D4984(global_52)
  loc_EC1AEC: Else
  loc_EC1AF2:   Call 0.Method_arg_1E8 (var_110)
  loc_EC1AFA:   Call var_110.SetFocus
  loc_EC1B03: End If
  loc_EC1B03: Exit Sub
  loc_EC1B04: ' Referenced from: EC1A74
  loc_EC1B04: Proc_6_60_E62BC4()
  loc_EC1B09: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '112DBA8
  'Data Table: 4475D4
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim unk_4475E6 As Connection15
  Dim var_114 As Variant
  Dim var_B0 As String
  loc_112D860: On Error Goto loc_112DB58
  loc_112D871: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_112D874:   Exit Sub
  loc_112D875: End If
  loc_112D8A7: var_D0 = "Room Master"
  loc_112D8EF: If (Proc_6_108_1010FEC(MemVar_1F92044, "RoomMast1", "RoomFeat", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_112D8F2:   Exit Sub
  loc_112D8F3: End If
  loc_112D92A: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_112D936:   unk_4475E6.BeginTrans var_CC
  loc_112D94C:   var_94 = Me.Bookmark 'Variant
  loc_112D998:   var_114 = "Delete From RoomFeature Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_112D9A6:   unk_4475E6.Execute CStr(var_114), var_134, -1
  loc_112D9F1:   var_164 = 0
  loc_112DA04:   var_15C = 0
  loc_112DA0F:   var_158 = 0
  loc_112DA22:   var_150 = 0
  loc_112DA2D:   var_14C = 0
  loc_112DA40:   var_144 = 0
  loc_112DA80:   var_B0 = "RoomFeature"
  loc_112DA89:   Proc_154_5_10E33A4(MemVar_1F92044, var_B0, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_112DAB7:   unk_4475E6.CommitTrans
  loc_112DAC7:   Me.Requery -1
  loc_112DAD7:   Me.Requery -1
  loc_112DAF7:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_112DB04:     Me.Bookmark = var_94
  loc_112DB0C:   Else
  loc_112DB20:     If (Me.EOF = 0) Then
  loc_112DB29:       Me.MoveLast
  loc_112DB2E:     End If
  loc_112DB2E:   End If
  loc_112DB2E:   Call Proc_18_29_11D4984(var_144, 0, var_14C, var_150)
  loc_112DB4F:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_112DB57: End If
  loc_112DB57: Exit Sub
  loc_112DB58: ' Referenced from: 112D860
  loc_112DB5E: unk_4475E6.RollbackTrans
  loc_112DB6B: Set var_98 = Err()
  loc_112DB71: Call 0.Method_arg_2C (var_B0, 0, var_158)
  loc_112DB92: MsgBox(CVar(var_B0), &H30, " Deletion Error ", var_114, var_134)
  loc_112DBA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F6330C
  'Data Table: 4475D4
  Dim var_88 As Label
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F631E8: On Error Goto loc_F632C9
  loc_F631F8: Me.LblUser.Caption = vbNullString
  loc_F6320D: Me.LblLDt.Caption = vbNullString
  loc_F63223: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F63226:   Exit Sub
  loc_F63227: End If
  loc_F6323E: If (Me.RecordCount > 0) Then
  loc_F63256:   var_90 = "EDIT"
  loc_F63264:   Call Proc_18_27_E7B47C(Proc_5_1_100CB50(var_90, Me))
  loc_F6327A:   Set var_88 = Me.Txt
  loc_F63280:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F63288:   var_98.SetFocus
  loc_F63297: Else
  loc_F632B8:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F632C8: End If
  loc_F632C8: Exit Sub
  loc_F632C9: ' Referenced from: F631E8
  loc_F632D1: Set var_88 = Err()
  loc_F632D7: Call 0.Method_arg_2C (var_90)
  loc_F632F8: MsgBox(CVar(var_90), &H30, " Editing Error ", var_F8, var_118)
  loc_F6330B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E156CC
  'Data Table: 4475D4
  loc_E156C1: Me.Global.Unload Me
  loc_E156C9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F270C8
  'Data Table: 4475D4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F26FC8: On Error Goto loc_F27060
  loc_F26FD4: var_88 = Me.RecordCount
  loc_F26FE2: If (var_88 <= 0) Then
  loc_F26FEB:   var_B8 = "Information"
  loc_F27006:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F27016:   Exit Sub
  loc_F27017: End If
  loc_F27025: MemVar_1F920E4 = "Select Code As SearchCode,Name FROM RoomFeature where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_F2702F: var_10C = "3000"
  loc_F27035: Proc_6_126_F1BCC0(var_10C)
  loc_F27043: MemVar_1F92120 = Me
  loc_F2705A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F2705F: Exit Sub
  loc_F27060: ' Referenced from: F26FC8
  loc_F27068: Set var_110 = Err()
  loc_F2706E: Call 0.Method_arg_1C (var_88)
  loc_F2707F: If (var_88 <> 0) Then
  loc_F2708A:   Set var_110 = Err()
  loc_F27090:   Call 0.Method_arg_2C (var_10C)
  loc_F270B1:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F270C4: End If
  loc_F270C4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2D438
  'Data Table: 4475D4
  loc_E2D428: Proc_5_0_110649C(&HFF, Me)
  loc_E2D430: Call Proc_18_29_11D4984(global_52)
  loc_E2D435: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2D258
  'Data Table: 4475D4
  loc_E2D248: Proc_5_0_110649C(&HFF, Me)
  loc_E2D250: Call Proc_18_29_11D4984(global_52)
  loc_E2D255: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2D2B8
  'Data Table: 4475D4
  loc_E2D2A8: Proc_5_0_110649C(&HFF, Me)
  loc_E2D2B0: Call Proc_18_29_11D4984(global_52)
  loc_E2D2B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2D318
  'Data Table: 4475D4
  loc_E2D308: Proc_5_0_110649C(&HFF, Me)
  loc_E2D310: Call Proc_18_29_11D4984(global_52)
  loc_E2D315: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1083D7C
  'Data Table: 4475D4
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4475E6 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1083AE4: On Error Goto loc_1083D30
  loc_1083B0B: unk_4475E6.Execute "SELECT * from RoomFeature where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_1083B16: Set var_88 = var_C8
  loc_1083B2C: var_CC = var_88.RecordCount
  loc_1083B3A: If (var_CC = 0) Then
  loc_1083B56:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1083B66:   Exit Sub
  loc_1083B67: End If
  loc_1083B76: var_A4 = MemVar_1F920B4 & "\RoomFeatureMast.ttx"
  loc_1083B7D: Set var_C8 = var_88 
  loc_1083B89: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1083B93: Set var_88 = var_C8
  loc_1083B99: var_B4 = CVar(var_12E) 'Integer
  loc_1083B9C: var_98 = var_B4 'Variant
  loc_1083BB8: var_A0 = MemVar_1F920B4 & "\RoomFeatureMast.RPT"
  loc_1083BC1: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1083BCC: MemVar_1F921E4 = var_C8
  loc_1083BE7: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1083BEF: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1083BFB: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1083C14:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1083C1C:   Call 0.Method_arg_20 (var_138)
  loc_1083C24:   Call 0.Method_arg_30 (var_A0)
  loc_1083C6A:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1083C80:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1083C88:     Call 0.Method_arg_20 (var_138)
  loc_1083C90:     Call 0.Method_arg_38 ("'Room Features Master'")
  loc_1083C9C:   End If
  loc_1083C9F: Next var_132 'Integer
  loc_1083CBD: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1083CC5: Call 0.Method_arg_2C (var_DC)
  loc_1083CD3: Call 0.Method_arg_150 (var_FC)
  loc_1083CDE: Call 0.Method_arg_50 (var_A0)
  loc_1083CE8: Set var_138 = Nothing
  loc_1083D02: Set var_C8 = MemVar_1F921E4 
  loc_1083D0E: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_1083D19: MemVar_1F921E4 = var_C8
  loc_1083D2C: Set var_88 = Nothing
  loc_1083D2F: Exit Sub
  loc_1083D30: ' Referenced from: 1083AE4
  loc_1083D38: Set var_C8 = Err()
  loc_1083D3E: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1083D49: Call 0.Method_arg_50 (var_A4)
  loc_1083D65: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1083D78: Exit Sub
  loc_1083D79: If var_138 Then Exit Sub
  loc_1083D79: End If
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0AA9C
  'Data Table: 4475D4
  Dim Me As Recordset15
  loc_E0AA93: Me.Requery -1
  loc_E0AA98: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '120FAE0
  'Data Table: 4475D4
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_4475E6 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_B0 As Variant
  loc_120F644: On Error Goto loc_120FA8E
  loc_120F64B: var_86 = CByte(0) 'Byte
  loc_120F65A: Set var_90 = Me.Txt
  loc_120F660: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_120F689: If (Proc_183_19_E8DAFC(var_94, "Name") = 0) Then
  loc_120F693:   Call Txt_GotFocus()
  loc_120F698:   Exit Sub
  loc_120F699: End If
  loc_120F69D: Set var_90 = Me.TopCtrl1
  loc_120F6A3: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(CInt(0))
  loc_120F6BC: If (CStr(var_94) = "Add") Then
  loc_120F6C5:   var_D4 = 0
  loc_120F6E2:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From RoomFeature WHERE SITE_CODE='" & MemVar_1F92070
  loc_120F6E9:   var_B4 = CStr(var_94) & "'"
  loc_120F6F2:   unk_4475E6.Execute var_B4, var_B0, -1
  loc_120F6FA:   var_90 = var_90.Fields
  loc_120F702:   var_D4 = var_94.Item(var_94)
  loc_120F70A:   var_98 = var_98.Value
  loc_120F743:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_120F769:   var_E4 = Format(CStr(var_E4), "000")
  loc_120F771:   var_108 = (1 + var_E4)
  loc_120F77C:   global_64 = CStr(var_108)
  loc_120F791: Else
  loc_120F7AE:   var_94 = Me.Fields.Item("Code")
  loc_120F7C5:   global_64 = CStr(var_94.Value)
  loc_120F7D6: End If
  loc_120F7DF: unk_4475E6.BeginTrans var_10C
  loc_120F7E8: var_86 = CByte(1) 'Byte
  loc_120F7F0: Set var_90 = Me.TopCtrl1
  loc_120F7F6: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(1)
  loc_120F80F: If (CStr(var_F8) = "Add") Then
  loc_120F829:   var_9C = "Insert Into RoomFeature(Code,Name,Site_Code,U_Name,U_EntDt,U_AE,Logsite_Code) Values('" & global_64
  loc_120F841:   Set var_90 = Me.Txt
  loc_120F847:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_9C & "','")
  loc_120F84F:   var_184 = var_94.Text
  loc_120F858:   var_110 = -1 & var_B4
  loc_120F88C:   Proc_6_7_F25D88(var_E4, Date, CVar(var_110 & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',"))
  loc_120F8BE:   unk_4475E6.Execute CStr(var_98 & var_E4 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_E4, 
  loc_120F8F7: Else
  loc_120F915:   Set var_90 = Me.Txt
  loc_120F91B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE RoomFeature SET Name='")
  loc_120F923:   var_184 = var_94.Text
  loc_120F92C:   var_B4 = -1 & var_9C
  loc_120F94F:   var_F8 = CVar(var_B4 & "',SITE_CODE='" & MemVar_1F92070 & "',U_name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_120F960:   Proc_6_7_F25D88(var_E4, Date)
  loc_120F968:   var_108 = var_F8 & var_E4 
  loc_120F96C:   var_C4 = " ,U_AE='E' WHERE Code='"
  loc_120F995:   unk_4475E6.Execute CStr(var_108 & var_C4 & CVar(global_64) & "'"), var_98, 
  loc_120F9C7: End If
  loc_120F9CD: unk_4475E6.CommitTrans
  loc_120F9D6: var_86 = CByte(0) 'Byte
  loc_120F9E5: Me.Requery -1
  loc_120F9F5: Me.Requery -1
  loc_120FA22: Me.Find "Code='" & global_64 & "'", 0, 1
  loc_120FA32: Set var_90 = Me.TopCtrl1
  loc_120FA38: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_C4)
  loc_120FA51: If (CStr() = "Add") Then
  loc_120FA54:   Call TopCtrl1_UnknownEvent_A()
  loc_120FA59:   Exit Sub
  loc_120FA5A: End If
  loc_120FA6F: var_9C = "INI"
  loc_120FA7D: Call Proc_18_27_E7B47C(Proc_5_1_100CB50(var_9C, Me))
  loc_120FA88: Call Proc_18_29_11D4984(global_52)
  loc_120FA8D: Exit Sub
  loc_120FA8E: ' Referenced from: 120F644
  loc_120FA97: If (CInt(var_86) = 1) Then
  loc_120FAA0:   unk_4475E6.RollbackTrans
  loc_120FAA5: End If
  loc_120FAAD: Set var_90 = Err()
  loc_120FAB3: Call 0.Method_arg_2C (var_9C)
  loc_120FACC: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_120FADF: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'F078A4
  'Data Table: 4475D4
  Dim Me As Recordset15
  loc_F077DA: Set var_88 = Me.Txt
  loc_F077E0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F077EE: Proc_6_74_E226B0(var_8C)
  loc_F077FA: Call Proc_18_31_E856D8(var_8C)
  loc_F077FF: On Error Goto loc_F0785F
  loc_F07810: If (Index = CInt(0)) Then
  loc_F0782A:   If (Me.RecordCount > 0) Then
  loc_F07838:     Set var_8C = Me.FGPoint
  loc_F07850:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_F0785E:   End If
  loc_F0785E: End If
  loc_F0785E: Exit Sub
  loc_F0785F: ' Referenced from: F077FF
  loc_F07867: Set var_88 = Err()
  loc_F0786D: Call 0.Method_arg_2C (var_9C, var_8C)
  loc_F0788E: MsgBox(CVar(var_9C), &H40, "Information", var_EC, var_10C)
  loc_F078A1: Exit Sub
  loc_F078A2: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '101C928
  'Data Table: 4475D4
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As TextBox
  loc_101C71E: If (CLng(Shift) = &H1B) Then
  loc_101C721:   Call Proc_18_31_E856D8()
  loc_101C726:   Exit Sub
  loc_101C727: End If
  loc_101C735: If (KeyCode = CInt(0)) Then
  loc_101C755:   Set var_9C = Me.FGPoint
  loc_101C787:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_101C7F4:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_101C7FB:     Set var_9C = Me.DGHelp
  loc_101C802:     Set var_90 = Me.FGPoint
  loc_101C81A:     Proc_6_138_106D6F8(var_9C, global_56, KeyCode, var_90, 0)
  loc_101C828:   End If
  loc_101C828: End If
  loc_101C844: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_101C865:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_101C86B:     Call Proc_18_30_1083A74(var_92, 1, var_9C)
  loc_101C876:     If (var_92 = &HFF) Then
  loc_101C886:       Set var_8C = Me.Txt
  loc_101C88C:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_101C894:       var_90.Text = 0
  loc_101C8A0:       Exit Sub
  loc_101C8A1:     End If
  loc_101C8D8:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_130) = 6) Then
  loc_101C8DB:       Call TopCtrl1_UnknownEvent_16()
  loc_101C8E0:     End If
  loc_101C8E0:     Exit Sub
  loc_101C8E1:   End If
  loc_101C8F6:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_101C8FF:     Proc_6_75_E527CC(Shift, arg_14)
  loc_101C904:   End If
  loc_101C917:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_101C920:     Proc_6_76_E52838(Shift, arg_14)
  loc_101C925:   End If
  loc_101C925: End If
  loc_101C925: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E22D90
  'Data Table: 4475D4
  loc_E22D76: Proc_6_133_E7EF78(var_94)
  loc_E22D88: Proc_6_58_E054C0(CInt(var_94), CInt(var_94))
  loc_E22D8D: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC1BF0
  'Data Table: 4475D4
  loc_EC1B62: If (KeyCode = CInt(0)) Then
  loc_EC1B81:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC1B8E:     var_A4 = "Name"
  loc_EC1BAD:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_56)
  loc_EC1BDF:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC1BED:   End If
  loc_EC1BED: End If
  loc_EC1BED: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4FA64
  'Data Table: 4475D4
  loc_E4FA42: Set var_88 = Me.Txt
  loc_E4FA48: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4FA56: Proc_6_73_E22704(var_8C)
  loc_E4FA62: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E29FC4
  'Data Table: 4475D4
  Dim arg_10 As Integer
  loc_E29FA6: If (Cancel = CInt(0)) Then
  loc_E29FAC:   Call Proc_18_30_1083A74(var_88)
  loc_E29FB7:   If (var_88 = &HFF) Then
  loc_E29FBC:     arg_10 = &HFF
  loc_E29FBF:     Exit Sub
  loc_E29FC0:   End If
  loc_E29FC0: End If
  loc_E29FC0: Exit Sub
End Sub

Private Sub Form_Load() 'FBD9DC
  'Data Table: 4475D4
  Dim var_8C As Label
  Dim var_90 As String
  Dim unk_4475E6 As Connection15
  Dim var_B4 As Variant
  loc_FBD838: On Error Goto loc_FBD998
  loc_FBD84A: Me.LblUser.Left = CDbl(13500)
  loc_FBD861: Me.LblUser.Top = CDbl(7800)
  loc_FBD878: Me.LblLDt.Top = CDbl(8160)
  loc_FBD889: Set var_8C = Me.LblLDt
  loc_FBD88F: var_8C.Left = CDbl(13500)
  loc_FBD89E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_FBD8A3: Call Proc_18_33_EDC70C()
  loc_FBD8CC: unk_4475E6.Execute "SELECT Code,Name FROM RoomFeature WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_FBD8FB: CVarUnk
  loc_FBD900: VerifyVarObj
  loc_FBD90C: LateIdStAd
  loc_FBD93E: unk_4475E6.Execute "SELECT * FROM RoomFeature WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name", var_B4, -1
  loc_FBD979: var_90 = "INI"
  loc_FBD987: Call Proc_18_27_E7B47C(Proc_5_1_100CB50(var_90, Me, Me.DGHelp, Me), Me)
  loc_FBD992: Call Proc_18_29_11D4984(Me)
  loc_FBD997: Exit Sub
  loc_FBD998: ' Referenced from: FBD838
  loc_FBD9A0: Set var_8C = Err()
  loc_FBD9A6: Call 0.Method_arg_2C (var_90)
  loc_FBD9C7: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_FBD9DA: Exit Sub
  loc_FBD9DB: Exit Sub
End Sub

Private Sub Form_Resize() 'ED8938
  'Data Table: 4475D4
  Dim var_8C As Label
  loc_ED8896: Call 0.Method_arg_50 (var_88)
  loc_ED88A8: Me.LblFormCaption.Caption = var_88
  loc_ED88C1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED88CD: Set var_A0 = Me.TopCtrl1
  loc_ED88D3: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010006()
  loc_ED88E0: Set var_8C = Me.TopCtrl1
  loc_ED88E6: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004()
  loc_ED8900: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED891B: Call 0.Method_arg_100 (var_B8)
  loc_ED892D: Me.LblFormCaption.Width = var_B8
  loc_ED8935: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E29F08
  'Data Table: 4475D4
  loc_E29EEB: Set global_52 = Nothing
  loc_E29EFD: Set global_56 = Nothing
  loc_E29F04: Exit Sub
  loc_E29F05: Set var_8C = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29E50
  'Data Table: 4475D4
  loc_E29E28: On Error Goto loc_E29E47
  loc_E29E3F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E29E47: ' Referenced from: E29E28
  loc_E29E47: Proc_6_60_E62BC4(Shift)
  loc_E29E4C: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E2D554
  'Data Table: 4475D4
  loc_E2D548: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E2D54B:   Call DGHelp_UnknownEvent_9()
  loc_E2D550: End If
  loc_E2D550: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE5DBC
  'Data Table: 4475D4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE5D13: Me.DGHelp.Visible = False
  loc_EE5D32: If (Me.RecordCount > 0) Then
  loc_EE5D52:   var_B0 = Me.Fields.Item("Name")
  loc_EE5D71:   Set var_B4 = Me.Txt
  loc_EE5D77:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE5D7F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE5D95: End If
  loc_EE5DA0: Set var_A8 = Me.Txt
  loc_EE5DA6: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE5DAE: var_B0.SetFocus
  loc_EE5DBA: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E563D8
  'Data Table: 4475D4
  loc_E563AB: Set var_90 = Me.FGPoint
  loc_E563C7: Proc_6_138_106D6F8(Me.DGHelp, global_56)
  loc_E563D5: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC1944
  'Data Table: 4475D4
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC18BA: On Error Goto loc_EC18FF
  loc_EC18C3: Me.MoveFirst
  loc_EC18DD: var_8C = "code='" & MyValue
  loc_EC18ED: Me.Find var_8C & "'", 0, 1
  loc_EC18F9: Call Proc_18_29_11D4984(var_A0)
  loc_EC18FE: Exit Sub
  loc_EC18FF: ' Referenced from: EC18BA
  loc_EC1907: Set var_A4 = Err()
  loc_EC190D: Call 0.Method_arg_2C (var_8C)
  loc_EC192E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC1941: Exit Sub
  loc_EC1942: Exit Sub
End Sub

Public Sub Proc_18_27_E7B47C(arg_C) 'E7B47C
  'Data Table: 4475D4
  Dim var_98 As TextBox
  loc_E7B42A: Set var_8C = Me.Txt
  loc_E7B430: Call 0.Method_Proc_18_27_E7B47CC (var_8E, var_86)
  loc_E7B440: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7B456:   Set var_8C = Me.Txt
  loc_E7B45C:   Call 0.Method_Proc_18_27_E7B47C0 (CInt(var_86), var_98)
  loc_E7B464:   var_98.Enabled = arg_C
  loc_E7B473: Next var_92 'Byte
  loc_E7B479: Exit Sub
End Sub

Public Sub Proc_18_28_E7A2AC
  'Data Table: 4475D4
  Dim var_98 As TextBox
  loc_E7A25A: Set var_8C = Me.Txt
  loc_E7A260: Call 0.Method_Proc_18_28_E7A2ACC (var_8E, var_86)
  loc_E7A270: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A286:   Set var_8C = Me.Txt
  loc_E7A28C:   Call 0.Method_Proc_18_28_E7A2AC0 (CInt(var_86), var_98)
  loc_E7A294:   var_98.Text = vbNullString
  loc_E7A2A3: Next var_92 'Byte
  loc_E7A2A9: Exit Sub
End Sub

Public Sub Proc_18_29_11D4984
  'Data Table: 4475D4
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_4475E6 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_11C As TextBox
  loc_11D4550: On Error Goto loc_11D4941
  loc_11D4559: Proc_183_45_E5C118(global_52)
  loc_11D45B4: unk_4475E6.Execute CStr("Select U_Name,U_AE,U_EntDt From RoomFeature where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_11D45BF: Set var_88 = var_118
  loc_11D4613: var_118 = var_88.Fields
  loc_11D467C: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_11D46C1: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_11D473B: var_11C = var_88.Fields.Item("U_AE")
  loc_11D4754: var_114 = "entdt : "
  loc_11D475F: var_F0 = "Last Update : "
  loc_11D479C: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), var_F0, var_114))
  loc_11D47E1: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_11D4830: If (Me.RecordCount <= 0) Then
  loc_11D4833:   Call Proc_18_28_E7A2AC()
  loc_11D483B: Else
  loc_11D486F:   global_64 = CStr(Me.Fields.Item("Name").Value)
  loc_11D48BC:   Set var_118 = Me.Txt
  loc_11D48C2:   Call 0.Method_Proc_18_29_11D49840 (CInt(0), var_11C)
  loc_11D48CA:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11D490E:   var_F4 = CStr(Me.Fields.Item("Code").Value)
  loc_11D491C:   Set var_118 = Me.Txt
  loc_11D4922:   Call 0.Method_Proc_18_29_11D49840 (CInt(0), var_11C)
  loc_11D492A:   var_11C.Tag = var_F4
  loc_11D4940: End If
  loc_11D4940: Exit Sub
  loc_11D4941: ' Referenced from: 11D4550
  loc_11D4949: Set var_8C = Err()
  loc_11D494F: Call 0.Method_arg_2C (var_F4)
  loc_11D4970: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_11D4983: Exit Sub
End Sub

Public Sub Proc_18_30_1083A74
  'Data Table: 4475D4
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4475E6 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1083807: If (Me.RecordCount = 0) Then
  loc_108380A:   Proc_18_30_1083A74 = 
  loc_1083810: End If
  loc_1083814: Set var_90 = Me.TopCtrl1
  loc_108381A: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1083833: If (CStr() = "Add") Then
  loc_1083871:   Set var_90 = Me.Txt
  loc_1083877:   Call 0.Method_Proc_18_30_1083A740 (CInt(0), var_A8, var_AC, "Select Count(*) From RoomFeature Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1083898:   unk_4475E6.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_10838A8:    = var_D0.Item()
  loc_10838B0:    = var_E4.Value
  loc_10838E1:   If (var_A8.Text.Fields > 0) Then
  loc_10838FF:     var_A0 = "Duplicate Feature Name"
  loc_1083905:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1083920:     Set var_90 = Me.Txt
  loc_1083926:     Call 0.Method_Proc_18_30_1083A740 (CInt(0))
  loc_108392E:     var_A8.SetFocus
  loc_108393F:     Proc_18_30_1083A74 = &HFF
  loc_1083945:   End If
  loc_1083948: Else
  loc_1083983:   Set var_90 = Me.Txt
  loc_1083989:   Call 0.Method_Proc_18_30_1083A740 (CInt(0), var_A8, var_AC, "Select Count(*) From RoomFeature Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10839BB:   unk_4475E6.Execute var_D0 & var_AC & "' And Name<>'" & global_64 & "'", 0, var_E4
  loc_10839CB:    = var_D0.Item(var_A8)
  loc_10839D3:    = var_E4.Value
  loc_1083A08:   If (var_A8.Text.Fields > 0) Then
  loc_1083A2C:     MsgBox("Duplicate Feature Name", &H40, "Information", var_114, var_134)
  loc_1083A47:     Set var_90 = Me.Txt
  loc_1083A4D:     Call 0.Method_Proc_18_30_1083A740 (CInt(0))
  loc_1083A55:     var_A8.SetFocus
  loc_1083A66:     Proc_18_30_1083A74 = &HFF
  loc_1083A6C:   End If
  loc_1083A6C: End If
  loc_1083A6C: Proc_18_30_1083A74 = var_A8
  loc_1083A72: If  Then Exit Sub
  loc_1083A72: End If
End Sub

Public Sub Proc_18_31_E856D8
  'Data Table: 4475D4
  Dim arg_2A00 As Integer
  loc_E85684: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E85696:   Me.DGHelp.Visible = False
  loc_E8569E: End If
  loc_E856BA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E856CC:   Me.FGPoint.Visible = False
  loc_E856D4: End If
  loc_E856D4: Exit Sub
  loc_E856D5: arg_2A00 = 
End Sub

Public Sub Proc_18_32_EE1108(arg_C) 'EE1108
  'Data Table: 4475D4
  Dim var_8C As TextBox
  loc_EE105C: Call Proc_18_31_E856D8()
  loc_EE106C: Set var_88 = Me.Txt
  loc_EE1072: Call 0.Method_Proc_18_32_EE11080 (CInt(0))
  loc_EE109B: If (Proc_6_27_EA565C(var_8C, "Feature Name") = 0) Then
  loc_EE109E:   Exit Sub
  loc_EE109F: End If
  loc_EE10D6: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE10D9:   Call TopCtrl1_UnknownEvent_16()
  loc_EE10E1: Else
  loc_EE10EB:   Set var_88 = Me.Txt
  loc_EE10F1:   Call 0.Method_Proc_18_32_EE11080 (arg_C, var_8C)
  loc_EE10F9:   var_8C.SetFocus
  loc_EE1105: End If
  loc_EE1105: Exit Sub
End Sub

Public Sub Proc_18_33_EDC70C
  'Data Table: 4475D4
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_EDC66A: Set var_88 = Me.Txt
  loc_EDC670: Call 0.Method_Proc_18_33_EDC70C0 (CInt(0), var_8C)
  loc_EDC68F: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_EDC6AB: Set var_B4 = Me.Txt
  loc_EDC6B1: Call 0.Method_Proc_18_33_EDC70C0 (CInt(0), var_B8)
  loc_EDC6CC: Set var_88 = Me.Txt
  loc_EDC6D2: Call 0.Method_Proc_18_33_EDC70C0 (CInt(0), var_8C)
  loc_EDC6EA: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_EDC6F9: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_EDC70B: Exit Sub
End Sub
