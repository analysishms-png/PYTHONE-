VERSION 5.00
Begin VB.Form FaStateMast
  Caption = "State Master"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8910
  ClientHeight = 7125
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8910
    Height = 450
    TabIndex = 12
  End
  Begin CommandButton CmdRef
    Caption = "..."
    Left = 7875
    Top = 2475
    Width = 330
    Height = 300
    TabIndex = 8
    TabStop = 0   'False
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "To Print Settlement Details"
  End
  Begin DataGrid DGHelp
    Left = 9345
    Top = 3480
    Width = 4230
    Height = 3060
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
End
Begin DataGrid DGCName
  Left = 8640
  Top = 2565
  Width = 4230
  Height = 2670
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 7
End
Begin TextBox Txt
  Index = 2
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3990
  Top = 2475
  Width = 3870
  Height = 285
  TabIndex = 2
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
Begin TextBox Txt
  Index = 1
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3990
  Top = 2160
  Width = 2108
  Height = 285
  TabIndex = 1
  BorderStyle = 0 'None
  MaxLength = 6
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
Begin TextBox Txt
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3990
  Top = 1845
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
  Left = 6150
  Top = 5250
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
  Left = 2775
  Top = 5250
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
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 360
  Width = 180
  Height = 540
  TabIndex = 9
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
  Caption = "Country Name"
  Index = 3
  ForeColor = &HC00000&
  Left = 2595
  Top = 2460
  Width = 1350
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
  Caption = "Short Name"
  Index = 2
  ForeColor = &HC00000&
  Left = 2595
  Top = 2160
  Width = 1125
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
  Caption = "State Name"
  Index = 0
  ForeColor = &HC00000&
  Left = 2595
  Top = 1845
  Width = 1110
  Height = 240
  TabIndex = 3
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

Attribute VB_Name = "FaStateMast"

Private global_76 As Long

Private Sub TopCtrl1_UnknownEvent_A 'EED20C
  'Data Table: 45B6B4
  Dim var_88 As Label
  Dim var_98 As TextBox
  loc_EED148: On Error Goto loc_EED1E2
  loc_EED158: Me.LblUser.Caption = vbNullString
  loc_EED16D: Me.LblLDt.Caption = vbNullString
  loc_EED18A: var_8C = "ADD"
  loc_EED198: Call Proc_197_29_E78464(Proc_5_1_100CB50(var_8C, Me))
  loc_EED1A3: Call Proc_197_30_EB4940(global_52)
  loc_EED1B9: If (OpenMode = 2) Then
  loc_EED1C7:   Set var_88 = Me.Txt
  loc_EED1CD:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EED1D5:   var_98.SetFocus
  loc_EED1E1: End If
  loc_EED1E1: Exit Sub
  loc_EED1E2: ' Referenced from: EED148
  loc_EED1E8: Call 0.Method_arg_50 (var_8C)
  loc_EED1FD: Proc_183_57_104AA84(var_8C, "TopCtrl1_eAdd")
  loc_EED209: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EED518
  'Data Table: 45B6B4
  loc_EED460: On Error Goto loc_EED4F0
  loc_EED49A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EED4A9:   Set var_110 = Me
  loc_EED4B2:   var_10C = "INI"
  loc_EED4C0:   Call Proc_197_29_E78464(Proc_5_1_100CB50(var_10C, var_110))
  loc_EED4CB:   Call Proc_197_34_E84FA0(global_52)
  loc_EED4D0:   Call Proc_197_31_12546F4()
  loc_EED4D8: Else
  loc_EED4DE:   Call 0.Method_arg_1E8 (var_110)
  loc_EED4E6:   Call var_110.SetFocus
  loc_EED4EF: End If
  loc_EED4EF: Exit Sub
  loc_EED4F0: ' Referenced from: EED460
  loc_EED4F6: Call 0.Method_arg_50 (var_10C)
  loc_EED4FE: var_11C = "TopCtrl1_eCancel"
  loc_EED50B: Proc_183_57_104AA84(var_10C)
  loc_EED517: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1126780
  'Data Table: 45B6B4
  Dim Me As Variant
  Dim var_96 As Integer
  Dim unk_45B6C7 As Connection15
  Dim var_114 As Variant
  Dim var_B4 As String
  Dim var_C8 As Variant
  loc_1126440: On Error Goto loc_1126741
  loc_1126451: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_1126454:   Exit Sub
  loc_1126455: End If
  loc_112647A: var_C8 = Me.Fields.Item("SCode").Value
  loc_1126482: var_D4 = "City Master"
  loc_11264CA: If (Proc_183_53_FE2130(MemVar_1F921DC, "City", "State") = 0) Then
  loc_11264CD:   Exit Sub
  loc_11264CE: End If
  loc_1126505: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_112650A:   var_96 = 0
  loc_1126516:   unk_45B6C7.BeginTrans var_D0
  loc_112651D:   var_96 = &HFF
  loc_112658F:   unk_45B6C7.Execute CStr("Delete From State Where Code='" & Me.Fields.Item("SCode").Value & "'"), var_134, -1
  loc_11265DA:   var_164 = 0
  loc_11265ED:   var_15C = 0
  loc_11265F8:   var_158 = 0
  loc_112660B:   var_150 = 0
  loc_1126616:   var_14C = 0
  loc_1126629:   var_144 = 0
  loc_1126669:   var_B4 = "State"
  loc_1126672:   Proc_154_5_10E33A4(MemVar_1F921DC, var_B4, "Code", &HC8, CStr(Me.Fields.Item("SCode").Value), 0, 0, 0)
  loc_11266A0:   unk_45B6C7.CommitTrans
  loc_11266A7:   var_96 = 0
  loc_11266B5:   Me.Requery -1
  loc_11266C5:   Me.Requery -1
  loc_11266E1:   If (Me.RecordCount > 0) Then
  loc_11266FB:     If (Me.AbsolutePosition > 1) Then
  loc_1126706:       var_C8 = (CVar(Me.AbsolutePosition) - 1)
  loc_1126712:       Me.AbsolutePosition = CLng(Me.Fields.Item("SCode").Value)
  loc_1126717:     End If
  loc_1126717:   End If
  loc_1126717:   Call Proc_197_31_12546F4(var_96, var_144, 0, var_14C, var_150)
  loc_1126738:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_1126740: End If
  loc_1126740: Exit Sub
  loc_1126741: ' Referenced from: 1126440
  loc_1126747: If (var_96 = &HFF) Then
  loc_1126750:   unk_45B6C7.RollbackTrans
  loc_1126755: End If
  loc_112675B: Call 0.Method_arg_50 (var_B4, 0, var_158)
  loc_1126770: Proc_183_57_104AA84(var_B4, "TopCtrl1_eDel")
  loc_112677C: Exit Sub
  loc_112677D: MeFF = var_15C
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F5E5BC
  'Data Table: 45B6B4
  Dim var_88 As Label
  Dim var_94 As TextBox
  Dim arg_3CB0 As Boolean
  loc_F5E494: On Error Goto loc_F5E591
  loc_F5E4A4: Me.LblUser.Caption = vbNullString
  loc_F5E4B9: Me.LblLDt.Caption = vbNullString
  loc_F5E4CF: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F5E4D2:   Exit Sub
  loc_F5E4D3: End If
  loc_F5E4F6: Call Proc_197_29_E78464(Proc_5_1_100CB50("EDIT", Me))
  loc_F5E50F: Set var_88 = Me.Txt
  loc_F5E515: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F5E528: global_68 = var_94.Text
  loc_F5E544: Set var_88 = Me.Txt
  loc_F5E54A: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F5E552: var_8C = var_94.Text
  loc_F5E55D: global_72 = var_8C
  loc_F5E576: Set var_88 = Me.Txt
  loc_F5E57C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F5E584: var_94.SetFocus
  loc_F5E590: Exit Sub
  loc_F5E591: ' Referenced from: F5E494
  loc_F5E597: Call 0.Method_arg_50 (var_8C)
  loc_F5E5AC: Proc_183_57_104AA84(var_8C, "TopCtrl1_eEdit")
  loc_F5E5B8: Exit Sub
  loc_F5E5B9: arg_3CB0 = global_52
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19C90
  'Data Table: 45B6B4
  loc_E19C85: Me.Global.Unload Me
  loc_E19C8D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEE2B0
  'Data Table: 45B6B4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EEE1F0: On Error Goto loc_EEE288
  loc_EEE20A: If (Me.RecordCount <= 0) Then
  loc_EEE213:   var_B8 = "Information"
  loc_EEE22E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_EEE23E:   Exit Sub
  loc_EEE23F: End If
  loc_EEE246: var_10C = "Select State.Code As SearchCode,State.Name,State.ShortName,Country.Name as CountryName FROM State LEFT JOIN Country ON State.Country=Country.Code WHERE (STATE.LOGSITE_CODE='" & MemVar_1F92078
  loc_EEE24D: MemVar_1F920E4 = var_10C & "' OR STATE.LOGSITE_CODE='HO') ORDER BY State.Name"
  loc_EEE25A: MemVar_1F92120 = Me
  loc_EEE261: var_10C = "3500,800,1500"
  loc_EEE267: Proc_183_54_F1DE80(var_10C)
  loc_EEE282: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEE287: Exit Sub
  loc_EEE288: ' Referenced from: EEE1F0
  loc_EEE28E: Call 0.Method_arg_50 (var_10C)
  loc_EEE2A3: Proc_183_57_104AA84(var_10C, "TopCtrl1_eFind")
  loc_EEE2AF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E346F8
  'Data Table: 45B6B4
  loc_E346E8: Proc_5_0_110649C(&HFF, Me)
  loc_E346F0: Call Proc_197_31_12546F4(global_52)
  loc_E346F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3A218
  'Data Table: 45B6B4
  loc_E3A208: Proc_5_0_110649C(&HFF, Me)
  loc_E3A210: Call Proc_197_31_12546F4(global_52)
  loc_E3A215: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3A278
  'Data Table: 45B6B4
  loc_E3A268: Proc_5_0_110649C(&HFF, Me)
  loc_E3A270: Call Proc_197_31_12546F4(global_52)
  loc_E3A275: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3A458
  'Data Table: 45B6B4
  loc_E3A448: Proc_5_0_110649C(&HFF, Me)
  loc_E3A450: Call Proc_197_31_12546F4(global_52)
  loc_E3A455: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '104B010
  'Data Table: 45B6B4
  Dim var_A0 As String
  Dim unk_45B6C7 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  loc_104ADC4: On Error Goto loc_104AFE8
  loc_104ADDB: var_A0 = "SELECT State.Code as SCode, State.Name as SName, State.ShortName as SShortName,Country.Name AS CCountry FROM State LEFT JOIN Country ON State.Country=Country.Code WHERE (STATE.LOGSITE_CODE='" & MemVar_1F92078
  loc_104ADEB: unk_45B6C7.Execute var_A0 & "' OR STATE.LOGSITE_CODE='HO') ORDER BY State.Name", var_C4, -1
  loc_104ADF6: Set var_88 = var_C8
  loc_104AE0C: var_CC = var_88.RecordCount
  loc_104AE1A: If (var_CC = 0) Then
  loc_104AE36:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_104AE46:   Exit Sub
  loc_104AE47: End If
  loc_104AE5D: Set var_C8 = var_88 
  loc_104AE69: var_12E = CreateFieldDefFile(var_C8, MemVar_1F920B4 & "\State.ttx")
  loc_104AE73: Set var_88 = var_C8
  loc_104AE79: var_B4 = CVar(var_12E) 'Integer
  loc_104AE7C: var_98 = var_B4 'Variant
  loc_104AE98: var_A0 = MemVar_1F920B4 & "\State.RPT"
  loc_104AEA1: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_104AEAC: MemVar_1F921E4 = var_C8
  loc_104AEC7: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_104AECF: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_104AEDB: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_104AEF4:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_104AEFC:   Call 0.Method_arg_20 (var_138)
  loc_104AF04:   Call 0.Method_arg_30 (var_A0)
  loc_104AF4A:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_104AF60:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_104AF68:     Call 0.Method_arg_20 (var_138)
  loc_104AF70:     Call 0.Method_arg_38 ("'State Master'")
  loc_104AF7C:   End If
  loc_104AF7F: Next var_132 'Integer
  loc_104AF9D: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_104AFA5: Call 0.Method_arg_2C (var_DC)
  loc_104AFB3: Call 0.Method_arg_150 (var_FC)
  loc_104AFBE: Call 0.Method_arg_50 (var_A0)
  loc_104AFD7: Proc_183_10_14991A4(MemVar_1F921E4, 0)
  loc_104AFE4: Set var_88 = Nothing
  loc_104AFE7: Exit Sub
  loc_104AFE8: ' Referenced from: 104ADC4
  loc_104AFEE: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_104B003: Proc_183_57_104AA84(var_A0, "TopCtrl1_ePrn")
  loc_104B00F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E20DC0
  'Data Table: 45B6B4
  Dim Me As Recordset15
  loc_E20DA7: Me.Requery -1
  loc_E20DB7: Me.Requery -1
  loc_E20DBC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12D1420
  'Data Table: 45B6B4
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_45B6C7 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_11C As String
  Dim var_114 As TextBox
  Dim var_130 As String
  Dim var_128 As TextBox
  Dim var_164 As Variant
  Dim var_118 As String
  Dim var_12C As String
  Dim var_1A8 As Variant
  loc_12D0DF0: On Error Goto loc_12D13E0
  loc_12D0DF7: var_86 = CByte(0) 'Byte
  loc_12D0E06: Set var_90 = Me.Txt
  loc_12D0E0C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_12D0E35: If (Proc_183_19_E8DAFC(var_94, "Name") = 0) Then
  loc_12D0E3F:   Call Txt_GotFocus()
  loc_12D0E44:   Exit Sub
  loc_12D0E45: End If
  loc_12D0E50: Set var_90 = Me.Txt
  loc_12D0E56: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_12D0E7F: If (Proc_183_19_E8DAFC(var_94, "Short Name") = 0) Then
  loc_12D0E89:   Call Txt_GotFocus()
  loc_12D0E8E:   Exit Sub
  loc_12D0E8F: End If
  loc_12D0E9A: Set var_90 = Me.Txt
  loc_12D0EA0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, CInt(1))
  loc_12D0EC9: If (Proc_183_19_E8DAFC(var_94, "Country") = 0) Then
  loc_12D0ED3:   Call Txt_GotFocus()
  loc_12D0ED8:   Exit Sub
  loc_12D0ED9: End If
  loc_12D0EDC: Call Proc_197_32_108FAA8(var_9E, CInt(2))
  loc_12D0EE7: If (var_9E = &HFF) Then
  loc_12D0EEA:   Exit Sub
  loc_12D0EEB: End If
  loc_12D0EEF: Set var_90 = Me.TopCtrl1
  loc_12D0EF5: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(CInt(0))
  loc_12D0F0E: If (CStr(var_94) = "Add") Then
  loc_12D0F17:   var_D4 = 0
  loc_12D0F34:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From State WHERE SITE_CODE='" & MemVar_1F92070
  loc_12D0F3B:   var_B4 = CStr(var_94) & "'"
  loc_12D0F44:   unk_45B6C7.Execute var_B4, var_B0, -1
  loc_12D0F4C:   var_90 = var_90.Fields
  loc_12D0F54:   var_D4 = var_94.Item(var_94)
  loc_12D0F5C:   var_98 = var_98.Value
  loc_12D0F95:   var_F8 = CVar(Proc_183_15_EAC900(MemVar_1F92070, 2)) 'String
  loc_12D0FBB:   var_E4 = Format(CStr(var_E4), "0000")
  loc_12D0FC3:   var_108 = (1 + var_E4)
  loc_12D0FCE:   global_64 = CStr(var_108)
  loc_12D0FE3: Else
  loc_12D1000:   var_94 = Me.Fields.Item("SCode")
  loc_12D1017:   global_64 = CStr(var_94.Value)
  loc_12D1028: End If
  loc_12D1031: unk_45B6C7.BeginTrans var_10C
  loc_12D103A: var_86 = CByte(1) 'Byte
  loc_12D1042: Set var_90 = Me.TopCtrl1
  loc_12D1048: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(1)
  loc_12D1061: If (CStr(var_F8) = "Add") Then
  loc_12D107B:   var_9C = "Insert Into State(Code,Name,ShortName,Country,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_64
  loc_12D1082:   var_E8 = var_9C & "','"
  loc_12D1093:   Set var_90 = Me.Txt
  loc_12D1099:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_E8)
  loc_12D10A1:   var_1A8 = var_94.Text
  loc_12D10AA:   var_110 = -1 & var_B4
  loc_12D10B1:   var_11C = var_110 & "','"
  loc_12D10C2:   Set var_98 = Me.Txt
  loc_12D10C8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_118)
  loc_12D10D0:   var_11C = var_114.Text
  loc_12D10E0:   var_130 = var_1AC & var_118 & "','"
  loc_12D10F1:   Set var_124 = Me.Txt
  loc_12D10F7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_128, var_12C)
  loc_12D10FF:   var_130 = var_128.Tag
  loc_12D113C:   Proc_183_7_EB0C44(var_E4, Date)
  loc_12D1157:   var_164 = CVar(var_E4 & var_12C & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") & var_E4 & ",'A','" & CVar(MemVar_1F92078) 
  loc_12D116E:   unk_45B6C7.Execute CStr(var_164 & "')"), , 
  loc_12D11BB: Else
  loc_12D11D9:   Set var_90 = Me.Txt
  loc_12D11DF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE State SET Name='")
  loc_12D11E7:   var_1EC = var_94.Text
  loc_12D11F0:   var_B4 = -1 & var_9C
  loc_12D11F7:   var_110 = var_B4 & "',ShortName = '"
  loc_12D1208:   Set var_98 = Me.Txt
  loc_12D120E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_E8)
  loc_12D1216:   var_110 = var_114.Text
  loc_12D1237:   Set var_124 = Me.Txt
  loc_12D123D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_128)
  loc_12D1271:   var_F8 = CVar(var_1AC & var_E8 & "',Country='" & var_128.Tag & "',SITE_CODE='" & MemVar_1F92070 & "',U_name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_12D1282:   Proc_183_7_EB0C44(var_E4, Date)
  loc_12D128E:   var_C4 = " ,U_AE='E',LOGSITE_CODE='"
  loc_12D12CA:   unk_45B6C7.Execute CStr(var_F8 & var_E4 & var_C4 & CVar(MemVar_1F92078) & "' WHERE Code='" & CVar(global_64) & "'"), , 
  loc_12D1314: End If
  loc_12D131A: unk_45B6C7.CommitTrans
  loc_12D1323: var_86 = CByte(0) 'Byte
  loc_12D1332: Me.Requery -1
  loc_12D1342: Me.Requery -1
  loc_12D136F: Me.Find "SCode='" & global_64 & "'", 0, 1
  loc_12D137F: Set var_90 = Me.TopCtrl1
  loc_12D1385: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_C4)
  loc_12D139E: If (CStr() = "Add") Then
  loc_12D13A1:   Call TopCtrl1_UnknownEvent_A()
  loc_12D13A6:   Exit Sub
  loc_12D13A7: End If
  loc_12D13BC: var_9C = "INI"
  loc_12D13CA: Call Proc_197_29_E78464(Proc_5_1_100CB50(var_9C, Me))
  loc_12D13D5: Call Proc_197_34_E84FA0(global_52)
  loc_12D13DA: Call Proc_197_31_12546F4()
  loc_12D13DF: Exit Sub
  loc_12D13E0: ' Referenced from: 12D0DF0
  loc_12D13E9: If (CInt(var_86) = 1) Then
  loc_12D13F2:   unk_45B6C7.RollbackTrans
  loc_12D13F7: End If
  loc_12D13FD: Call 0.Method_arg_50 (var_9C)
  loc_12D1405: var_E8 = "TopCtrl1_eSave"
  loc_12D1412: Proc_183_57_104AA84(var_9C)
  loc_12D141E: Exit Sub
End Sub

Private Sub CmdRef_Click() 'F617C4
  'Data Table: 45B6B4
  Dim Me As Recordset15
  Dim var_C8 As TextBox
  loc_F6169C: Set var_88 = Me.TopCtrl1
  loc_F616A2: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_F616BB: If (CStr() = "Browse") Then
  loc_F616BE:   Exit Sub
  loc_F616BF: End If
  loc_F616C9: Set var_A0 = New FaCountryMast
  loc_F616DB: var_A0.OpenMode = 1
  loc_F616E5: var_A0.Caption = "Country Master"
  loc_F616F0: Call 0.Method_arg_70 (var_C4)
  loc_F616FB: Form.Left = var_C4
  loc_F61706: Call 0.Method_arg_78 (var_C4)
  loc_F61717: Form.Top = (var_C4 + CDbl(1500))
  loc_F61724: Form.Height = CDbl(6000)
  loc_F61739: Form.Show 1, var_C0
  loc_F61749: Me.Requery -1
  loc_F6175C: Set var_88 = Me.Txt
  loc_F61762: Call 0.Method_CmdRef_Click0 (CInt(2), var_C8)
  loc_F6176A: var_C8.Text = vbNullString
  loc_F61784: Set var_88 = Me.Txt
  loc_F6178A: Call 0.Method_CmdRef_Click0 (CInt(2), var_C8)
  loc_F61792: var_C8.Tag = vbNullString
  loc_F617A9: Set var_88 = Me.Txt
  loc_F617AF: Call 0.Method_CmdRef_Click0 (CInt(2))
  loc_F617B7: var_C8.SetFocus
  loc_F617C3: Exit Sub
End Sub

Private Sub DGCName_UnknownEvent_9 'F120E4
  'Data Table: 45B6B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F12000: On Error Goto loc_F120BA
  loc_F12012: Me.DGCName.Visible = False
  loc_F12031: If (Me.RecordCount > 0) Then
  loc_F12051:   var_B0 = Me.Fields.Item("Name")
  loc_F12062:   var_CC = CStr(var_B0.Value)
  loc_F12070:   Set var_B4 = Me.Txt
  loc_F12076:   Call 0.Method_DGCName_UnknownEvent_90 (CInt(2), var_B8)
  loc_F1207E:   var_B8.Text = var_CC
  loc_F12094: End If
  loc_F1209F: Set var_A8 = Me.Txt
  loc_F120A5: Call 0.Method_DGCName_UnknownEvent_90 (CInt(2))
  loc_F120AD: var_B0.SetFocus
  loc_F120B9: Exit Sub
  loc_F120BA: ' Referenced from: F12000
  loc_F120C0: Call 0.Method_arg_50 (var_CC)
  loc_F120D5: Proc_183_57_104AA84(var_CC, "DGCName_Click")
  loc_F120E1: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FD08C0
  'Data Table: 45B6B4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_EC As String
  loc_FD070C: On Error Goto loc_FD0898
  loc_FD0719: Set var_88 = Me.Txt
  loc_FD071F: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FD072D: Proc_183_28_E20B20(var_8C)
  loc_FD0739: Call Proc_197_34_E84FA0(var_8C)
  loc_FD0741: var_92 = Index
  loc_FD074C: If (var_92 = CInt(2)) Then
  loc_FD079D:   Set var_88 = Me.Txt
  loc_FD07A3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FD07AB:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FD07C3:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_FD07C6:     Exit Sub
  loc_FD07C7:   End If
  loc_FD07D4:   Set var_88 = Me.Txt
  loc_FD07DA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FD07E2:   var_A0 = var_8C.Text
  loc_FD07F4:   var_B0 = "Name"
  loc_FD082F:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FD0838:     Me.MoveFirst
  loc_FD085B:     Set var_88 = Me.Txt
  loc_FD0861:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FD0869:     0 = var_8C.Text
  loc_FD0882:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_FD0897:   End If
  loc_FD0897: End If
  loc_FD0897: Exit Sub
  loc_FD0898: ' Referenced from: FD070C
  loc_FD089E: Call 0.Method_arg_50 (var_A0)
  loc_FD08A6: var_EC = "Txt_GotFocus"
  loc_FD08B3: Proc_183_57_104AA84(var_A0)
  loc_FD08BF: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FE4598
  'Data Table: 45B6B4
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_FE43C8: On Error Goto loc_FE456D
  loc_FE43D5: If (CLng(Shift) = &H1B) Then
  loc_FE43D8:   Call Proc_197_34_E84FA0()
  loc_FE43DD:   Exit Sub
  loc_FE43DE: End If
  loc_FE43E1: var_88 = KeyCode
  loc_FE43EC: If (var_88 = CInt(0)) Then
  loc_FE4406:   If (Me.RecordCount > 0) Then
  loc_FE4443:     Proc_183_31_100809C(Me.DGHelp, Me.Txt, CInt(0), global_56)
  loc_FE4453:   End If
  loc_FE4456: Else
  loc_FE445E:   If (var_88 = CInt(2)) Then
  loc_FE4497:     Proc_183_34_1305540(Me.DGCName, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_FE44A7:   End If
  loc_FE44A7: End If
  loc_FE44E2: If ((CBool(Me.DGCName.Visible) = 0) And (CBool(Me.DGHelp.Visible) = 0)) Then
  loc_FE44F8:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FE4501:     Proc_183_30_E53180(Shift, arg_14, 1, Shift)
  loc_FE4506:   End If
  loc_FE4524:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(2))) Then
  loc_FE452D:     Call Txt_Validate(KeyCode)
  loc_FE4538:     If (var_86 = 0) Then
  loc_FE4541:       Call Proc_197_35_E92048(KeyCode, var_86, 0)
  loc_FE4546:     End If
  loc_FE4549:   Else
  loc_FE455E:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FE4567:       Proc_183_29_E52C04(Shift, arg_14)
  loc_FE456C:     End If
  loc_FE456C:   End If
  loc_FE456C: End If
  loc_FE456C: Exit Sub
  loc_FE456D: ' Referenced from: FE43C8
  loc_FE4573: Call 0.Method_arg_50 (var_C8, 1)
  loc_FE4588: Proc_183_57_104AA84(var_C8, "Txt_KeyDown")
  loc_FE4594: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE0E1C
  'Data Table: 45B6B4
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EE0D68: On Error Goto loc_EE0DF2
  loc_EE0D71: Proc_183_52_E7F478(var_94)
  loc_EE0D7A: arg_10 = CInt(var_94)
  loc_EE0D83: Proc_183_46_E070C0(arg_10, arg_10)
  loc_EE0D96: If (KeyAscii = CInt(2)) Then
  loc_EE0DB5:   If (CBool(Me.DGCName.Visible) = &HFF) Then
  loc_EE0DC7:     var_A0 = "Name"
  loc_EE0DE2:     Proc_183_41_1459C78(Me.Txt, KeyAscii, global_60, arg_10)
  loc_EE0DF1:   End If
  loc_EE0DF1: End If
  loc_EE0DF1: Exit Sub
  loc_EE0DF2: ' Referenced from: EE0D68
  loc_EE0DF8: Call 0.Method_arg_50 (var_A0, var_A0, 0)
  loc_EE0E0D: Proc_183_57_104AA84(var_A0, "TXT_KeyPress")
  loc_EE0E19: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F4175C
  'Data Table: 45B6B4
  Dim var_86 As Integer
  loc_F4164C: On Error Goto loc_F41731
  loc_F41652: var_86 = KeyCode
  loc_F4165D: If (var_86 = CInt(0)) Then
  loc_F4167C:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F41689:     var_A4 = "Name"
  loc_F416A8:     Proc_183_32_FE7F70(Me.Txt, CInt(0), global_56)
  loc_F416B7:   End If
  loc_F416BA: Else
  loc_F416C2:   If (var_86 = CInt(2)) Then
  loc_F416E1:     If (CBool(Me.DGCName.Visible) = &HFF) Then
  loc_F416F5:       var_A4 = "Name"
  loc_F4171D:       Proc_183_33_12A1B28(Me.DGCName, Me.Txt, CInt(2), global_60, Shift)
  loc_F41730:     End If
  loc_F41730:   End If
  loc_F41730: End If
  loc_F41730: Exit Sub
  loc_F41731: ' Referenced from: F4164C
  loc_F41737: Call 0.Method_arg_50 (var_A4, var_A4, Shift)
  loc_F4174C: Proc_183_57_104AA84(var_A4, "Txt_KeyUp")
  loc_F41758: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4BF7C
  'Data Table: 45B6B4
  loc_E4BF5A: Set var_88 = Me.Txt
  loc_E4BF60: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4BF6E: Proc_183_27_E22608(var_8C)
  loc_E4BF7A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FD571C
  'Data Table: 45B6B4
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_FD555C: On Error Goto loc_FD56F1
  loc_FD5562: var_86 = Cancel
  loc_FD556D: If (var_86 = CInt(0)) Then
  loc_FD5573:   Call Proc_197_32_108FAA8(var_88)
  loc_FD557E:   If (var_88 = &HFF) Then
  loc_FD5583:     arg_10 = &HFF
  loc_FD5586:     Exit Sub
  loc_FD5587:   End If
  loc_FD558A: Else
  loc_FD5592:   If (var_86 = CInt(1)) Then
  loc_FD5598:     Call Proc_197_33_106F8FC(var_88, arg_10)
  loc_FD55A3:     If (var_88 = &HFF) Then
  loc_FD55A8:       arg_10 = &HFF
  loc_FD55AB:       Exit Sub
  loc_FD55AC:     End If
  loc_FD55AF:   Else
  loc_FD55B7:     If (var_86 = CInt(2)) Then
  loc_FD5608:       Set var_94 = Me.Txt
  loc_FD560E:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_FD5616:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_FD562E:       If (arg_10 Or (var_9C = vbNullString)) Then
  loc_FD5631:         Exit Sub
  loc_FD5632:       End If
  loc_FD566D:       Set var_B0 = Me.Txt
  loc_FD5673:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_FD567B:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD56BF:       var_9C = CStr(Me.Fields.Item("Code").Value)
  loc_FD56CC:       Set var_B0 = Me.Txt
  loc_FD56D2:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_FD56DA:       var_B4.Tag = var_9C
  loc_FD56F0:     End If
  loc_FD56F0:   End If
  loc_FD56F0: End If
  loc_FD56F0: Exit Sub
  loc_FD56F1: ' Referenced from: FD555C
  loc_FD56F7: Call 0.Method_arg_50 (var_9C)
  loc_FD570C: Proc_183_57_104AA84(var_9C, "Txt_Validate")
  loc_FD5718: Exit Sub
End Sub

Private Sub Form_Load() '11679D8
  'Data Table: 45B6B4
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_45B6C7 As Connection15
  loc_1167620: On Error Goto loc_11679B0
  loc_116762A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_116763E: Me.LblUser.Left = CDbl(13500)
  loc_1167655: Me.LblUser.Top = CDbl(7800)
  loc_116766C: Me.LblLDt.Top = CDbl(8160)
  loc_1167683: Me.LblLDt.Left = CDbl(13500)
  loc_1167693: Call 0.Method_arg_7C (CDbl(1450))
  loc_11676A0: Call 0.Method_arg_74 (CDbl(1625))
  loc_11676AD: Call 0.Method_MeC (CDbl(9200))
  loc_11676BA: Call 0.Method_Me4 (CDbl(17000))
  loc_11676CD: Set var_8C = Me.Txt
  loc_11676D3: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_11676F2: Me.DGHelp.Left = CVar(var_90.Left)
  loc_116770E: Set var_B8 = Me.Txt
  loc_1167714: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_116772F: Set var_8C = Me.Txt
  loc_1167735: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_116774D: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_116775C: Me.DGHelp.Top = CVar(var_90.Left)
  loc_116777C: Set var_8C = Me.Txt
  loc_1167782: Call 0.Method_Form_Load0 (CInt(2), var_90)
  loc_11677A1: Me.DGCName.Left = CVar(var_90.Left)
  loc_11677BD: Set var_B8 = Me.Txt
  loc_11677C3: Call 0.Method_Form_Load0 (CInt(2), var_BC)
  loc_11677E4: Call 0.Method_Form_Load0 (CInt(2), var_90)
  loc_11677FC: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_116780B: Me.DGCName.Top = CVar(var_90.Left)
  loc_1167841: unk_45B6C7.Execute "SELECT Code,Name FROM State WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_1167870: CVarUnk
  loc_1167875: VerifyVarObj
  loc_1167881: LateIdStAd
  loc_11678B3: unk_45B6C7.Execute "Select Code,Name from Country WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') order by Name", var_DC, -1
  loc_11678E2: CVarUnk
  loc_11678E7: VerifyVarObj
  loc_11678F3: LateIdStAd
  loc_1167915: var_C8 = "SELECT State.Code as SCode,State.Name as SName,State.ShortName as SShortName,State.Site_Code as SSite_Code,State.U_Name as SU_Name,State.U_EntDt as SU_EntDt,State.U_AE as SU_AE,Country.Name AS CCountry,STATE.LOGSITE_CODE,STATE.SITE_CODE FROM State LEFT JOIN Country ON State.Country=Country.Code WHERE (STATE.LOGSITE_CODE='" & MemVar_1F92078
  loc_1167925: unk_45B6C7.Execute var_C8 & "' OR STATE.LOGSITE_CODE='HO') ORDER BY State.Name", var_DC, -1
  loc_1167957: Set var_8C = Me
  loc_1167960: var_C8 = "INI"
  loc_116796E: Call Proc_197_29_E78464(Proc_5_1_100CB50(var_C8, var_8C, Me.DGCName, var_8C, var_8C), Me.DGHelp, var_8C)
  loc_1167979: Call Proc_197_31_12546F4(var_8C, Me.Txt)
  loc_116798F: If (OpenMode = 1) Then
  loc_116799C:   Set var_8C = Me.TopCtrl1
  loc_11679A2:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B("AE*P")
  loc_11679AA:   Call TopCtrl1_UnknownEvent_A()
  loc_11679AF: End If
  loc_11679AF: Exit Sub
  loc_11679B0: ' Referenced from: 1167620
  loc_11679B6: Call 0.Method_arg_50 (var_C8)
  loc_11679CB: Proc_183_57_104AA84(var_C8, "Form_Load")
  loc_11679D7: Exit Sub
End Sub

Private Sub Form_Resize() 'ED34D8
  'Data Table: 45B6B4
  Dim var_8C As Label
  loc_ED3436: Call 0.Method_arg_50 (var_88)
  loc_ED3448: Me.LblFormCaption.Caption = var_88
  loc_ED3461: Me.LblFormCaption.Left = CDbl(0)
  loc_ED346D: Set var_A0 = Me.TopCtrl1
  loc_ED3473: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010006()
  loc_ED3480: Set var_8C = Me.TopCtrl1
  loc_ED3486: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004()
  loc_ED34A0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED34BB: Call 0.Method_arg_100 (var_B8)
  loc_ED34CD: Me.LblFormCaption.Width = var_B8
  loc_ED34D5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E50CCC
  'Data Table: 45B6B4
  loc_E50C9F: Set global_52 = Nothing
  loc_E50CB1: Set global_56 = Nothing
  loc_E50CC3: Set global_60 = Nothing
  loc_E50CCA: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E65798
  'Data Table: 45B6B4
  loc_E65750: On Error Goto loc_E6576E
  loc_E65765: Proc_183_40_F30B0C(Me, KeyCode)
  loc_E6576D: Exit Sub
  loc_E6576E: ' Referenced from: E65750
  loc_E65774: Call 0.Method_arg_50 (var_8C)
  loc_E65789: Proc_183_57_104AA84(var_8C, "Form_KeyDown")
  loc_E65795: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F12218
  'Data Table: 45B6B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F12134: On Error Goto loc_F121EE
  loc_F12146: Me.DGHelp.Visible = False
  loc_F12165: If (Me.RecordCount > 0) Then
  loc_F12185:   var_B0 = Me.Fields.Item("Name")
  loc_F12196:   var_CC = CStr(var_B0.Value)
  loc_F121A4:   Set var_B4 = Me.Txt
  loc_F121AA:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F121B2:   var_B8.Text = var_CC
  loc_F121C8: End If
  loc_F121D3: Set var_A8 = Me.Txt
  loc_F121D9: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F121E1: var_B0.SetFocus
  loc_F121ED: Exit Sub
  loc_F121EE: ' Referenced from: F12134
  loc_F121F4: Call 0.Method_arg_50 (var_CC)
  loc_F12209: Proc_183_57_104AA84(var_CC, "DGHelp_Click")
  loc_F12215: Exit Sub
End Sub

Public Property Get OpenMode() 'E05340
  'Data Table: 45B6B4
  loc_E05339: OpenMode = global_76
End Sub

Public Property Let OpenMode(vNewValue) 'E0215C
  'Data Table: 45B6B4
  loc_E02156: global_76 = vNewValue
  loc_E02159: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E8EC48
  'Data Table: 45B6B4
  Dim Me As Recordset15
  Dim var_8C As String
  loc_E8EBDA: On Error Goto loc_E8EC1F
  loc_E8EBE3: Me.MoveFirst
  loc_E8EBFD: var_8C = "SCode='" & MyValue
  loc_E8EC0D: Me.Find var_8C & "'", 0, 1
  loc_E8EC19: Call Proc_197_31_12546F4(var_A0)
  loc_E8EC1E: Exit Sub
  loc_E8EC1F: ' Referenced from: E8EBDA
  loc_E8EC25: Call 0.Method_arg_50 (var_8C)
  loc_E8EC2D: var_A4 = "SEARCHBACK"
  loc_E8EC3A: Proc_183_57_104AA84(var_8C)
  loc_E8EC46: Exit Sub
End Sub

Public Sub Proc_197_29_E78464(arg_C) 'E78464
  'Data Table: 45B6B4
  Dim var_98 As TextBox
  loc_E78412: Set var_8C = Me.Txt
  loc_E78418: Call 0.Method_Proc_197_29_E78464C (var_8E, var_86)
  loc_E78428: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7843E:   Set var_8C = Me.Txt
  loc_E78444:   Call 0.Method_Proc_197_29_E784640 (CInt(var_86), var_98)
  loc_E7844C:   var_98.Enabled = arg_C
  loc_E7845B: Next var_92 'Byte
  loc_E78461: Exit Sub
End Sub

Public Sub Proc_197_30_EB4940
  'Data Table: 45B6B4
  Dim var_98 As TextBox
  loc_EB48AA: global_68 = vbNullString
  loc_EB48B4: global_72 = vbNullString
  loc_EB48C6: Set var_8C = Me.Txt
  loc_EB48CC: Call 0.Method_Proc_197_30_EB4940C (var_8E, var_86)
  loc_EB48DC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB48F2:   Set var_8C = Me.Txt
  loc_EB48F8:   Call 0.Method_Proc_197_30_EB49400 (CInt(var_86), var_98)
  loc_EB4900:   var_98.Text = vbNullString
  loc_EB491C:   Set var_8C = Me.Txt
  loc_EB4922:   Call 0.Method_Proc_197_30_EB49400 (CInt(var_86), var_98)
  loc_EB492A:   var_98.Tag = vbNullString
  loc_EB4939: Next var_92 'Byte
  loc_EB493F: Exit Sub
End Sub

Public Sub Proc_197_31_12546F4
  'Data Table: 45B6B4
  Dim Me As Recordset15
  Dim var_F4 As String
  Dim unk_45B6DD As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_184 As Fields15
  Dim var_11C As TextBox
  Dim var_198 As TextBox
  loc_12541CC: On Error Goto loc_12546CB
  loc_12541D5: Proc_183_45_E5C118(global_52)
  loc_1254230: unk_45B6DD.Execute CStr("Select U_Name,U_AE,U_EntDt From state where Code='" & Me.Fields.Item("SCode").Value & "'  "), var_114, -1
  loc_125423B: Set var_88 = var_118
  loc_125428F: var_118 = var_88.Fields
  loc_12542F8: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_125433D: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_12543B7: var_11C = var_88.Fields.Item("U_AE")
  loc_1254418: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_1254437: var_198 = var_88.Fields.Item("U_EntDt")
  loc_125445D: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_198))))
  loc_12544AC: If (Me.RecordCount <= 0) Then
  loc_12544AF:   Call Proc_197_30_EB4940()
  loc_12544B7: Else
  loc_12544EB:   global_64 = CStr(Me.Fields.Item("SName").Value)
  loc_1254538:   Set var_118 = Me.Txt
  loc_125453E:   Call 0.Method_Proc_197_31_12546F40 (CInt(0), var_11C)
  loc_1254546:   var_11C.Tag = CStr(Me.Fields.Item("SCode").Value)
  loc_1254598:   Set var_118 = Me.Txt
  loc_125459E:   Call 0.Method_Proc_197_31_12546F40 (CInt(0), var_11C)
  loc_12545A6:   var_11C.Text = CStr(Me.Fields.Item("SName").Value)
  loc_12545F8:   Set var_118 = Me.Txt
  loc_12545FE:   Call 0.Method_Proc_197_31_12546F40 (CInt(1), var_11C)
  loc_1254606:   var_11C.Text = CStr(Me.Fields.Item("SShortName").Value)
  loc_125468D:   var_F4 = CStr(IIf(IsNull(CVar(Me.Fields.Item("CCountry"))), vbNullString, CVar(Me.Fields.Item("CCountry"))))
  loc_125469C:   Set var_184 = Me.Txt
  loc_12546A2:   Call 0.Method_Proc_197_31_12546F40 (CInt(2), var_198)
  loc_12546AA:   var_198.Text = var_F4
  loc_12546CA: End If
  loc_12546CA: Exit Sub
  loc_12546CB: ' Referenced from: 12541CC
  loc_12546D1: Call 0.Method_arg_50 (var_F4)
  loc_12546E6: Proc_183_57_104AA84(var_F4, "MoveRec")
  loc_12546F2: Exit Sub
End Sub

Public Sub Proc_197_32_108FAA8
  'Data Table: 45B6B4
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_45B6C7 As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_108F818: On Error Goto loc_108FA79
  loc_108F832: If (Me.RecordCount = 0) Then
  loc_108F835:   Proc_197_32_108FAA8 = 
  loc_108F83B: End If
  loc_108F83F: Set var_90 = Me.TopCtrl1
  loc_108F845: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_108F84D: var_A4 = CStr()
  loc_108F85E: If (var_A4 = "Add") Then
  loc_108F88E:   Set var_90 = Me.Txt
  loc_108F894:   Call 0.Method_Proc_197_32_108FAA80 (CInt(0), var_A8, var_A4, "Select Count(*) From State Where Name='", var_A0, -1)
  loc_108F8B5:   unk_45B6C7.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_108F8C5:    = var_C8.Item()
  loc_108F8CD:    = var_DC.Value
  loc_108F8FA:   If (var_A8.Text.Fields > 0) Then
  loc_108F918:     var_A0 = "Duplicate Name"
  loc_108F91E:     MsgBox(var_A0, &H40, "Information", var_10C, var_12C)
  loc_108F939:     Set var_90 = Me.Txt
  loc_108F93F:     Call 0.Method_Proc_197_32_108FAA80 (CInt(0))
  loc_108F947:     var_A8.SetFocus
  loc_108F958:     Proc_197_32_108FAA8 = &HFF
  loc_108F95E:   End If
  loc_108F961: Else
  loc_108F98E:   Set var_90 = Me.Txt
  loc_108F994:   Call 0.Method_Proc_197_32_108FAA80 (CInt(0), var_A8, var_A4, "Select Count(*) From State Where Name='", var_A0, -1)
  loc_108F9C6:   unk_45B6C7.Execute var_C8 & var_A4 & "' And Name<>'" & global_68 & "'", 0, var_DC
  loc_108F9D6:    = var_C8.Item(var_A8)
  loc_108F9DE:    = var_DC.Value
  loc_108FA0F:   If (var_A8.Text.Fields > 0) Then
  loc_108FA33:     MsgBox("Duplicate Name", &H40, "Information", var_10C, var_12C)
  loc_108FA4E:     Set var_90 = Me.Txt
  loc_108FA54:     Call 0.Method_Proc_197_32_108FAA80 (CInt(0))
  loc_108FA5C:     var_A8.SetFocus
  loc_108FA6D:     Proc_197_32_108FAA8 = &HFF
  loc_108FA73:   End If
  loc_108FA73: End If
  loc_108FA73: Proc_197_32_108FAA8 = var_A8
  loc_108FA79: ' Referenced from: 108F818
  loc_108FA7F: Call 0.Method_arg_50 (var_A4)
  loc_108FA94: Proc_183_57_104AA84(var_A4)
  loc_108FAA0: Proc_197_32_108FAA8 = "ValidateName"
End Sub

Public Sub Proc_197_33_106F8FC
  'Data Table: 45B6B4
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_45B6C7 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_106F68C: On Error Goto loc_106F8CD
  loc_106F693: Set var_8C = Me.TopCtrl1
  loc_106F699: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_106F6A1: var_A0 = CStr()
  loc_106F6B2: If (var_A0 = "Add") Then
  loc_106F6E2:   Set var_8C = Me.Txt
  loc_106F6E8:   Call 0.Method_Proc_197_33_106F8FC0 (CInt(1), var_A4, var_A0, "Select Count(*) From State Where ShortName='", var_9C, -1)
  loc_106F709:   unk_45B6C7.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_106F719:    = var_C4.Item()
  loc_106F721:    = var_D8.Value
  loc_106F74E:   If (var_A4.Text.Fields > 0) Then
  loc_106F76C:     var_9C = "Duplicate Short Name"
  loc_106F772:     MsgBox(var_9C, &H40, "Information", var_108, var_128)
  loc_106F78D:     Set var_8C = Me.Txt
  loc_106F793:     Call 0.Method_Proc_197_33_106F8FC0 (CInt(1))
  loc_106F79B:     var_A4.SetFocus
  loc_106F7AC:     Proc_197_33_106F8FC = &HFF
  loc_106F7B2:   End If
  loc_106F7B5: Else
  loc_106F7E2:   Set var_8C = Me.Txt
  loc_106F7E8:   Call 0.Method_Proc_197_33_106F8FC0 (CInt(1), var_A4, var_A0, "Select Count(*) From State Where ShortName='", var_9C, -1)
  loc_106F81A:   unk_45B6C7.Execute var_C4 & var_A0 & "' And ShortName<>'" & global_72 & "'", 0, var_D8
  loc_106F82A:    = var_C4.Item(var_A4)
  loc_106F832:    = var_D8.Value
  loc_106F863:   If (var_A4.Text.Fields > 0) Then
  loc_106F887:     MsgBox("Duplicate Short Name", &H40, "Information", var_108, var_128)
  loc_106F8A2:     Set var_8C = Me.Txt
  loc_106F8A8:     Call 0.Method_Proc_197_33_106F8FC0 (CInt(1))
  loc_106F8B0:     var_A4.SetFocus
  loc_106F8C1:     Proc_197_33_106F8FC = &HFF
  loc_106F8C7:   End If
  loc_106F8C7: End If
  loc_106F8C7: Proc_197_33_106F8FC = var_A4
  loc_106F8CD: ' Referenced from: 106F68C
  loc_106F8D3: Call 0.Method_arg_50 (var_A0)
  loc_106F8E8: Proc_183_57_104AA84(var_A0)
  loc_106F8F4: Proc_197_33_106F8FC = "ValidateSName"
End Sub

Public Sub Proc_197_34_E84FA0
  'Data Table: 45B6B4
  Dim var_A8 As Variant
  loc_E84F4C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E84F5E:   Me.DGHelp.Visible = False
  loc_E84F66: End If
  loc_E84F82: If (CBool(Me.DGCName.Visible) = &HFF) Then
  loc_E84F94:   Me.DGCName.Visible = False
  loc_E84F9C: End If
  loc_E84F9C: Exit Sub
  loc_E84F9D: var_A8 = 
End Sub

Public Sub Proc_197_35_E92048(arg_C) 'E92048
  'Data Table: 45B6B4
  Dim var_10C As TextBox
  loc_E91FDC: Call Proc_197_34_E84FA0()
  loc_E92018: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E9201B:   Call TopCtrl1_UnknownEvent_16()
  loc_E92023: Else
  loc_E9202D:   Set var_108 = Me.Txt
  loc_E92033:   Call 0.Method_Proc_197_35_E920480 (arg_C)
  loc_E9203B:   var_10C.SetFocus
  loc_E92047: End If
  loc_E92047: Exit Sub
End Sub
