VERSION 5.00
Begin VB.Form FaNarrMast
  Caption = "Narration Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaNarrMast.frx":0
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 7365
  ClientHeight = 9480
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7365
    Height = 450
    TabIndex = 7
  End
  Begin DataGrid DGMaster
    Left = 1875
    Top = 2115
    Width = 6600
    Height = 7005
    TabIndex = 3
  End
End
Begin DataGrid DGHelp
  Left = 8295
  Top = 2670
  Width = 4230
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 1
End
Begin TextBox Txt
  Index = 0
  ForeColor = &HC00000&
  Left = 1950
  Top = 1350
  Width = 4980
  Height = 735
  TabIndex = 0
  BorderStyle = 0 'None
  MultiLine = -1  'True
  ScrollBars = 2
  MaxLength = 255
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
Begin Label LblUser
  Caption = "User"
  ForeColor = &HFF0000&
  Left = 8910
  Top = 6330
  Width = 2880
  Height = 255
  TabIndex = 6
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
Begin Label LblLDt
  Caption = "Last Update"
  ForeColor = &HFF0000&
  Left = 8955
  Top = 6930
  Width = 2790
  Height = 285
  TabIndex = 5
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
Begin Label Label1
  Caption = "Narration"
  Index = 0
  ForeColor = &HC00000&
  Left = 960
  Top = 1320
  Width = 885
  Height = 240
  TabIndex = 2
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

Attribute VB_Name = "FaNarrMast"


Private Sub DGMaster_UnknownEvent_22 'E521DC
  'Data Table: 448E2C
  loc_E521B0: Set var_88 = Me.TopCtrl1
  loc_E521B6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E521CF: If (CStr() <> "Browse") Then
  loc_E521D2:   Exit Sub
  loc_E521D3: End If
  loc_E521D3: Call Proc_202_28_1198FAC()
  loc_E521D8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EABA24
  'Data Table: 448E2C
  Dim var_94 As TextBox
  loc_EAB9A0: On Error Goto loc_EAB9FC
  loc_EAB9B8: var_88 = "ADD"
  loc_EAB9C6: Call Proc_202_29_ECED30(Proc_5_1_100CB50(var_88, Me))
  loc_EAB9D1: Call Proc_202_27_EACC44(global_60)
  loc_EAB9E1: Set var_8C = Me.Txt
  loc_EAB9E7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EAB9EF: var_94.SetFocus
  loc_EAB9FB: Exit Sub
  loc_EAB9FC: ' Referenced from: EAB9A0
  loc_EABA02: Call 0.Method_arg_50 (var_88)
  loc_EABA17: Proc_183_57_104AA84(var_88, "TopCtrl1_eAdd")
  loc_EABA23: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'ECEE10
  'Data Table: 448E2C
  loc_ECED74: On Error Goto loc_ECEDE5
  loc_ECEDAE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_ECEDC6:   var_10C = "INI"
  loc_ECEDD4:   Call Proc_202_29_ECED30(Proc_5_1_100CB50(var_10C, Me))
  loc_ECEDDF:   Call Proc_202_28_1198FAC(global_60)
  loc_ECEDE4: End If
  loc_ECEDE4: Exit Sub
  loc_ECEDE5: ' Referenced from: ECED74
  loc_ECEDEB: Call 0.Method_arg_50 (var_10C)
  loc_ECEDF3: var_11C = "TopCtrl1_eCancel"
  loc_ECEE00: Proc_183_57_104AA84(var_10C)
  loc_ECEE0C: Exit Sub
  loc_ECEE0E: Error
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10CE088
  'Data Table: 448E2C
  Dim unk_448E4B As Connection15
  Dim Me As Recordset15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10CDDBC: On Error Goto loc_10CE046
  loc_10CDDCD: If (Proc_183_56_FE8818(global_60) = &HFF) Then
  loc_10CDDD0:   Exit Sub
  loc_10CDDD1: End If
  loc_10CDE08: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_10CDE0F:   var_98 = CByte(1) 'Byte
  loc_10CDE1C:   unk_448E4B.BeginTrans var_11C
  loc_10CDE32:   var_94 = Me.Bookmark 'Variant
  loc_10CDE8C:   unk_448E4B.Execute CStr("Delete From NarrMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_10CDED7:   var_164 = 0
  loc_10CDEEA:   var_15C = 0
  loc_10CDEF5:   var_158 = 0
  loc_10CDF08:   var_150 = 0
  loc_10CDF13:   var_14C = 0
  loc_10CDF26:   var_144 = 0
  loc_10CDF66:   var_128 = "NarrMast"
  loc_10CDF6F:   Proc_154_5_10E33A4(MemVar_1F921DC, var_128, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10CDF9D:   unk_448E4B.CommitTrans
  loc_10CDFA6:   var_98 = CByte(0) 'Byte
  loc_10CDFB5:   Me.Requery -1
  loc_10CDFC5:   Me.Requery -1
  loc_10CDFE5:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10CDFF2:     Me.Bookmark = var_94
  loc_10CDFFA:   Else
  loc_10CE00E:     If (Me.EOF = 0) Then
  loc_10CE017:       Me.MoveLast
  loc_10CE01C:     End If
  loc_10CE01C:   End If
  loc_10CE01C:   Call Proc_202_28_1198FAC(var_144, 0, var_14C, var_150)
  loc_10CE03D:   Proc_5_0_110649C(&HFF, Me, global_60, 0)
  loc_10CE045: End If
  loc_10CE045: Exit Sub
  loc_10CE046: ' Referenced from: 10CDDBC
  loc_10CE04F: If (CInt(var_98) = 1) Then
  loc_10CE058:   unk_448E4B.RollbackTrans
  loc_10CE05D: End If
  loc_10CE063: Call 0.Method_arg_50 (var_128, 0, var_158)
  loc_10CE078: Proc_183_57_104AA84(var_128, "TopCtrl1_eDel")
  loc_10CE084: Exit Sub
  loc_10CE085: GoTo loc_10CDABC
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EEDA58
  'Data Table: 448E2C
  Dim var_94 As TextBox
  loc_EED990: On Error Goto loc_EEDA2E
  loc_EED9A1: If (Proc_183_55_FE7900(global_60) = &HFF) Then
  loc_EED9A4:   Exit Sub
  loc_EED9A5: End If
  loc_EED9C8: Call Proc_202_29_ECED30(Proc_5_1_100CB50("EDIT", Me))
  loc_EED9E1: Set var_8C = Me.Txt
  loc_EED9E7: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EED9EF: var_88 = var_94.Text
  loc_EED9FA: global_64 = var_88
  loc_EEDA13: Set var_8C = Me.Txt
  loc_EEDA19: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EEDA21: var_94.SetFocus
  loc_EEDA2D: Exit Sub
  loc_EEDA2E: ' Referenced from: EED990
  loc_EEDA34: Call 0.Method_arg_50 (var_88)
  loc_EEDA49: Proc_183_57_104AA84(var_88, "TopCtrl1_eEdit")
  loc_EEDA55: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A364
  'Data Table: 448E2C
  loc_E1A359: Me.Global.Unload Me
  loc_E1A361: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEE1A4
  'Data Table: 448E2C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EEE0E4: On Error Goto loc_EEE17C
  loc_EEE0FE: If (Me.RecordCount <= 0) Then
  loc_EEE107:   var_B8 = "Information"
  loc_EEE122:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EEE132:   Exit Sub
  loc_EEE133: End If
  loc_EEE141: MemVar_1F920E4 = "Select N.Code as SearchCode,N.Name FROM NarrMast N WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by N.Name"
  loc_EEE14E: MemVar_1F92120 = Me
  loc_EEE155: var_10C = "4000"
  loc_EEE15B: Proc_6_126_F1BCC0(var_10C)
  loc_EEE176: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEE17B: Exit Sub
  loc_EEE17C: ' Referenced from: EEE0E4
  loc_EEE182: Call 0.Method_arg_50 (var_10C)
  loc_EEE197: Proc_183_57_104AA84(var_10C, "TopCtrl1_eFind")
  loc_EEE1A3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E37638
  'Data Table: 448E2C
  loc_E37628: Proc_5_0_110649C(&HFF, Me)
  loc_E37630: Call Proc_202_28_1198FAC(global_60)
  loc_E37635: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E37578
  'Data Table: 448E2C
  Dim var_4B01 As Double
  loc_E37568: Proc_5_0_110649C(&HFF, Me)
  loc_E37570: Call Proc_202_28_1198FAC(global_60)
  loc_E37575: Exit Sub
  loc_E37576: var_4B01 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E374B8
  'Data Table: 448E2C
  Dim var_4B01 As Double
  loc_E374A8: Proc_5_0_110649C(&HFF, Me)
  loc_E374B0: Call Proc_202_28_1198FAC(global_60)
  loc_E374B5: Exit Sub
  loc_E374B6: var_4B01 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E37458
  'Data Table: 448E2C
  Dim var_4B01 As Double
  loc_E37448: Proc_5_0_110649C(&HFF, Me)
  loc_E37450: Call Proc_202_28_1198FAC(global_60)
  loc_E37455: Exit Sub
  loc_E37456: var_4B01 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'FEEC0C
  'Data Table: 448E2C
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim unk_448E4B As Connection15
  Dim var_C8 As Variant
  loc_FEEA34: On Error Goto loc_FEEBE1
  loc_FEEA40: var_A0 = Me.RecordCount
  loc_FEEA4E: If (var_A0 <= 0) Then
  loc_FEEA51:   Exit Sub
  loc_FEEA52: End If
  loc_FEEA66: var_A4 = "Select * FROM NarrMast WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_FEEA76: unk_448E4B.Execute var_A4 & "' OR LOGSITE_CODE='HO') Order by Name", var_C8, -1
  loc_FEEA81: Set var_98 = var_CC
  loc_FEEA9D: Call 0.Method_arg_12C (var_CC)
  loc_FEEAA8: MemVar_1F921E4 = var_CC
  loc_FEEAC0: Call 0.Method_arg_90 (var_CC, var_A0, var_9A)
  loc_FEEAC8: Call 0.Method_arg_24 (1)
  loc_FEEAD4: For var_D0 =  To CInt(var_A0): var_CC = var_D0 'Integer
  loc_FEEAED:   Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_FEEAF5:   Call 0.Method_arg_20 (var_D4)
  loc_FEEAFD:   Call 0.Method_arg_30 (var_A4)
  loc_FEEB43:   If (Ucase(CVar(var_A4)) = Ucase("Title")) Then
  loc_FEEB59:     Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_FEEB61:     Call 0.Method_arg_20 (var_D4)
  loc_FEEB69:     Call 0.Method_arg_38 ("'Narration List'")
  loc_FEEB75:   End If
  loc_FEEB78: Next var_D0 'Integer
  loc_FEEB96: Call 0.Method_arg_64 (var_CC, CVar(var_98))
  loc_FEEB9E: Call 0.Method_arg_2C (var_108)
  loc_FEEBAC: Call 0.Method_arg_150 (var_118)
  loc_FEEBB7: Call 0.Method_arg_50 (var_A4)
  loc_FEEBD0: Proc_183_10_14991A4(MemVar_1F921E4, 0)
  loc_FEEBDD: Set var_98 = Nothing
  loc_FEEBE0: Exit Sub
  loc_FEEBE1: ' Referenced from: FEEA34
  loc_FEEBE7: Call 0.Method_arg_50 (var_A4, var_A4)
  loc_FEEBFC: Proc_183_57_104AA84(var_A4, "TopCtrl1_ePrn")
  loc_FEEC08: Exit Sub
  loc_FEEC09: WMemLdRfVar
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A32C
  'Data Table: 448E2C
  Dim Me As Recordset15
  loc_E0A323: Me.Requery -1
  loc_E0A328: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13A19CC
  'Data Table: 448E2C
  Dim Me As Recordset15
  Dim var_A0 As String
  Dim var_98 As Variant
  Dim var_BC As String
  Dim unk_448E4B As Connection15
  Dim var_9C As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Field20
  Dim var_CC As Variant
  Dim var_88 As Recordset15
  Dim var_94 As Fields15
  Dim var_B4 As Variant
  Dim var_F4 As Variant
  Dim var_8E As Integer
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_144 As String
  Dim var_158 As String
  Dim var_198 As Variant
  Dim var_1DC As String
  Dim var_1FC As Variant
  loc_13A111C: On Error Goto loc_13A198A
  loc_13A111F: Call Proc_202_30_E5412C()
  loc_13A112F: Set var_94 = Me.Txt
  loc_13A1135: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_13A115E: If (Proc_183_19_E8DAFC(var_98, "Godown Name") = 0) Then
  loc_13A1161:   Exit Sub
  loc_13A1162: End If
  loc_13A116B: var_A4 = Me.RecordCount
  loc_13A1179: If (var_A4 <> 0) Then
  loc_13A1180:   Set var_94 = Me.TopCtrl1
  loc_13A1186:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_98)
  loc_13A118E:   var_A0 = CStr()
  loc_13A119F:   If (var_A0 = "Add") Then
  loc_13A11CF:     Set var_94 = Me.Txt
  loc_13A11D5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0, "Select Count(*) From NarrMast Where Name='", var_B4, -1)
  loc_13A11F6:     unk_448E4B.Execute var_D0 & var_A0 & "'", 0, var_E4
  loc_13A1206:      = var_D0.Item()
  loc_13A120E:      = var_E4.Value
  loc_13A123B:     If (var_98.Text.Fields > 0) Then
  loc_13A1259:       var_B4 = "Duplicate Godown Name"
  loc_13A125F:       MsgBox(var_B4, &H40, "Information", var_114, var_134)
  loc_13A127A:       Set var_94 = Me.Txt
  loc_13A1280:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_13A1288:       var_98.SetFocus
  loc_13A1294:       Exit Sub
  loc_13A1295:     End If
  loc_13A1298:   Else
  loc_13A12C5:     Set var_94 = Me.Txt
  loc_13A12CB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0, "Select Count(*) From NarrMast Where Name='", var_B4, -1)
  loc_13A12FD:     unk_448E4B.Execute var_D0 & var_A0 & "' And Name<>'" & global_64 & "'", 0, var_E4
  loc_13A130D:      = var_D0.Item(var_98)
  loc_13A1315:      = var_E4.Value
  loc_13A1346:     If (var_98.Text.Fields > 0) Then
  loc_13A1364:       var_B4 = "Duplicate Godown Name"
  loc_13A136A:       MsgBox(var_B4, &H40, "Information", var_114, var_134)
  loc_13A1385:       Set var_94 = Me.Txt
  loc_13A138B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_13A1393:       var_98.SetFocus
  loc_13A139F:       Exit Sub
  loc_13A13A0:     End If
  loc_13A13A0:   End If
  loc_13A13A0: End If
  loc_13A13A4: var_90 = CByte(1) 'Byte
  loc_13A13B1: unk_448E4B.BeginTrans var_A4
  loc_13A13C0: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_98)
  loc_13A13D9: If (CStr() = "Add") Then
  loc_13A13F0:   var_A0 = "Select Max(SubString(Code,3,Len(Code)-2)) As tCode From NarrMast Where Left(Code,2)='" & MemVar_1F92070
  loc_13A1400:   unk_448E4B.Execute CStr() & "'", var_B4, -1
  loc_13A140B:   Set var_88 = Me.TopCtrl1
  loc_13A142F:   If (var_88.RecordCount > 0) Then
  loc_13A1461:     If Not(IsNull(CVar(var_88.Fields.Item("TCode")))) Then
  loc_13A147E:       var_98 = var_88.Fields.Item("TCode")
  loc_13A1493:       var_F4 = (var_98.Value + 1)
  loc_13A1498:       var_8E = CInt("Information")
  loc_13A14AC:     Else
  loc_13A14AE:       var_8E = 1
  loc_13A14B1:     End If
  loc_13A14B4:   Else
  loc_13A14B6:     var_8E = 1
  loc_13A14B9:   End If
  loc_13A14C6:   var_114 = CVar(Proc_183_15_EAC900(MemVar_1F92070, 2, var_8E)) 'String
  loc_13A14F1:   var_134 = (1 + Format(var_8E, "0000"))
  loc_13A14F5:   var_A0 = CStr(var_134)
  loc_13A1504:   Set var_94 = Me.Txt
  loc_13A150A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0, 1)
  loc_13A1512:   var_98.Tag = var_114
  loc_13A153A:   Set var_94 = Me.Txt
  loc_13A1540:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_13A1548:   var_8E = var_98.Text
  loc_13A157B:   var_BC = Replace(var_A0, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_13A159F:   Set var_94 = Me.Txt
  loc_13A15A5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_13A15AD:   var_8E = var_98.Tag
  loc_13A15C0:   Set var_9C = Me.Txt
  loc_13A15C6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D0)
  loc_13A1601:   var_200 = Replace(var_D0.Text, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_13A1635:   var_204 = Replace(var_200, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_13A1643:   Proc_183_7_EB0C44(var_114, MemVar_1F920EC)
  loc_13A167B:   var_158 = "Insert Into NarrMast (Code,Name,U_Name,U_EntDt,U_AE,Site_COde,LogSite_Code) Values ('" & var_A0 & "','" & var_204 & "','" & MemVar_1F920C8
  loc_13A16C5:   unk_448E4B.Execute CStr(CVar(var_158 & "',") & var_114 & ",'A','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_1FC, -1
  loc_13A1712: Else
  loc_13A1720:   Set var_94 = Me.Txt
  loc_13A1726:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_13A172E:   var_E4 = var_98.Text
  loc_13A1761:   var_158 = Replace(var_A0, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_13A1795:   var_1DC = Replace(var_158, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_13A179B:   var_CC = MemVar_1F920EC
  loc_13A17A3:   Proc_183_7_EB0C44(var_114, var_CC)
  loc_13A17B6:   Set var_9C = Me.Txt
  loc_13A17BC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D0)
  loc_13A17E0:   var_144 = "Update NarrMast Set Name='" & CStr(CVar(var_158 & "',") & var_114 & ",'A','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')")
  loc_13A1817:   var_198 = CVar(var_144 & "',U_Name='" & MemVar_1F920C8 & "',U_EntDt=") & var_114 & ",U_AE='E',SITE_CODE='" & CVar(MemVar_1F92070) & "',LOGSITE_CODE='" 
  loc_13A184B:   unk_448E4B.Execute CStr(var_198 & CVar(MemVar_1F92078) & "' Where Code='" & CVar(var_D0.Tag) & "'"), var_244, -1
  loc_13A1895: End If
  loc_13A189B: unk_448E4B.CommitTrans
  loc_13A18A4: var_90 = CByte(0) 'Byte
  loc_13A18B6: Set var_94 = Me.Txt
  loc_13A18BC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_13A18C4: var_E4 = var_98.Tag
  loc_13A18E1: Me.Requery -1
  loc_13A18F1: Me.Requery -1
  loc_13A191B: Me.Find "SearchCode ='" & "SearchCode ='" & var_A0 & "'", 0, 1
  loc_13A1931: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_CC)
  loc_13A194A: If (CStr(Me.TopCtrl1) = "Add") Then
  loc_13A194D:   Call TopCtrl1_UnknownEvent_A()
  loc_13A1952:   Exit Sub
  loc_13A1953: End If
  loc_13A1968: var_A0 = "INI"
  loc_13A1976: Call Proc_202_29_ECED30(Proc_5_1_100CB50(var_A0, Me))
  loc_13A1986: Set var_88 = Nothing
  loc_13A1989: Exit Sub
  loc_13A198A: ' Referenced from: 13A111C
  loc_13A1993: If (CInt(var_90) = 1) Then
  loc_13A199C:   unk_448E4B.RollbackTrans
  loc_13A19A1: End If
  loc_13A19A7: Call 0.Method_arg_50 (var_A0)
  loc_13A19BC: Proc_183_57_104AA84(var_A0, "TopCtrl1_eSave")
  loc_13A19C8: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E52464
  'Data Table: 448E2C
  loc_E5243E: Set var_88 = Me.Txt
  loc_E52444: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E52452: Proc_183_28_E20B20(var_8C)
  loc_E5245E: Call Proc_202_30_E5412C(var_8C)
  loc_E52463: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'ECC014
  'Data Table: 448E2C
  loc_ECBF78: On Error Goto loc_ECBFEA
  loc_ECBF85: If (CLng(Shift) = &H1B) Then
  loc_ECBF88:   Call Proc_202_30_E5412C()
  loc_ECBF8D:   Exit Sub
  loc_ECBF8E: End If
  loc_ECBF9C: If (KeyCode = CInt(0)) Then
  loc_ECBFD9:   Proc_183_31_100809C(Me.DGHelp, Me.Txt, CInt(0), global_56)
  loc_ECBFE9: End If
  loc_ECBFE9: Exit Sub
  loc_ECBFEA: ' Referenced from: ECBF78
  loc_ECBFF0: Call 0.Method_arg_50 (var_A4, Shift, 0)
  loc_ECC005: Proc_183_57_104AA84(var_A4, "Txt_KeyDown")
  loc_ECC011: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E011A8
  'Data Table: 448E2C
  loc_E0119F: Proc_183_46_E070C0(arg_10)
  loc_E011A4: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EB9770
  'Data Table: 448E2C
  loc_EB96DC: On Error Goto loc_EB9748
  loc_EB96ED: If (KeyCode = CInt(0)) Then
  loc_EB970C:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EB9719:     var_A4 = "Name"
  loc_EB9738:     Proc_183_32_FE7F70(Me.Txt, CInt(0), global_56)
  loc_EB9747:   End If
  loc_EB9747: End If
  loc_EB9747: Exit Sub
  loc_EB9748: ' Referenced from: EB96DC
  loc_EB974E: Call 0.Method_arg_50 (var_A4, Shift)
  loc_EB9763: Proc_183_57_104AA84(var_A4, "Txt_KeyUp")
  loc_EB976F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48CB4
  'Data Table: 448E2C
  loc_E48C92: Set var_88 = Me.Txt
  loc_E48C98: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48CA6: Proc_183_27_E22608(var_8C)
  loc_E48CB2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10790E0
  'Data Table: 448E2C
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_448E4B As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_1078E64: On Error Goto loc_10790B8
  loc_1078E6A: var_86 = Cancel
  loc_1078E75: If (var_86 = CInt(0)) Then
  loc_1078E8F:   If (Me.RecordCount = 0) Then
  loc_1078E92:     Exit Sub
  loc_1078E93:   End If
  loc_1078E97:   Set var_90 = Me.TopCtrl1
  loc_1078E9D:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_86)
  loc_1078EA5:   var_A4 = CStr()
  loc_1078EB6:   If (var_A4 = "Add") Then
  loc_1078EE6:     Set var_90 = Me.Txt
  loc_1078EEC:     Call 0.Method_Txt_Validate0 (CInt(0), var_A8, var_A4, "Select Count(*) From NarrMast Where Name='", var_A0, -1)
  loc_1078F0D:     unk_448E4B.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_1078F1D:      = var_C8.Item()
  loc_1078F25:      = var_DC.Value
  loc_1078F52:     If (var_A8.Text.Fields > 0) Then
  loc_1078F70:       var_A0 = "Duplicate Godown Name"
  loc_1078F76:       MsgBox(var_A0, &H40, "Information", var_10C, var_12C)
  loc_1078F91:       Set var_90 = Me.Txt
  loc_1078F97:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_1078F9F:       var_A8.SetFocus
  loc_1078FAB:       Exit Sub
  loc_1078FAC:     End If
  loc_1078FAF:   Else
  loc_1078FDC:     Set var_90 = Me.Txt
  loc_1078FE2:     Call 0.Method_Txt_Validate0 (CInt(0), var_A8, var_A4, "Select Count(*) From NarrMast Where Name='", var_A0, -1)
  loc_1079014:     unk_448E4B.Execute var_C8 & var_A4 & "' And Name<>'" & global_64 & "'", 0, var_DC
  loc_1079024:      = var_C8.Item(var_A8)
  loc_107902C:      = var_DC.Value
  loc_107905D:     If (var_A8.Text.Fields > 0) Then
  loc_1079081:       MsgBox("Duplicate Godown Name", &H40, "Information", var_10C, var_12C)
  loc_107909C:       Set var_90 = Me.Txt
  loc_10790A2:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_10790AA:       var_A8.SetFocus
  loc_10790B6:       Exit Sub
  loc_10790B7:     End If
  loc_10790B7:   End If
  loc_10790B7: End If
  loc_10790B7: Exit Sub
  loc_10790B8: ' Referenced from: 1078E64
  loc_10790BE: Call 0.Method_arg_50 (var_A4)
  loc_10790D3: Proc_183_57_104AA84(var_A4, "Txt_Validate")
  loc_10790DF: Exit Sub
End Sub

Private Sub Form_Load() '11968E4
  'Data Table: 448E2C
  Dim var_8C As Label
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_CC As DataGrid
  Dim var_D0 As TextBox
  Dim var_C4 As TextBox
  Dim var_D8 As DataGrid
  Dim var_B0 As String
  Dim Me As Recordset15
  loc_11964E8: On Error Goto loc_11968BA
  loc_11964FA: Me.LblUser.Left = CDbl(13500)
  loc_1196511: Me.LblUser.Top = CDbl(7800)
  loc_1196528: Me.LblLDt.Top = CDbl(8160)
  loc_119653F: Me.LblLDt.Left = CDbl(13500)
  loc_119654E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_119655D: Set var_8C = Me.TopCtrl1
  loc_1196563: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_1196571: Call 0.Method_arg_50 (var_B0)
  loc_1196581: Set var_8C = Me.TopCtrl1
  loc_1196587: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(CVar(var_B0))
  loc_1196598: Call 0.Method_arg_50 (var_B0)
  loc_11965A8: Set var_8C = Me.TopCtrl1
  loc_11965AE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(CVar(var_B0))
  loc_11965C5: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_11965D6: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_11965E7: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_11965F8: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_1196609: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_119661A: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_119662B: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_119663C: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_119664D: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_119665E: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_1196678: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_1196686: Set var_8C = MemVar_1F92044
  loc_1196695: Call 0.Method_Form_Load8 (var_8C)
  loc_11966AB: Me.TopCtrl1.Clone
  loc_11966B6: Set var_C4 = var_8C
  loc_11966C5: Call 0.Method_arg_50 (var_C4, -1)
  loc_11966DF: Set var_8C = Me.Txt
  loc_11966E5: Call 0.Method_Form_Load0 (CInt(0), var_C4)
  loc_1196704: Me.DGHelp.Left = CVar(Me.Txt.Left)
  loc_1196720: Set var_CC = Me.Txt
  loc_1196726: Call 0.Method_Form_Load0 (CInt(0), var_D0)
  loc_1196741: Set var_8C = Me.Txt
  loc_1196747: Call 0.Method_Form_Load0 (CInt(0), var_C4)
  loc_119675F: var_9C = CVar(((var_C4.Top + var_D0.Height) + CDbl(&H1E))) 'Single
  loc_1196768: Set var_D8 = Me.DGHelp
  loc_119676E: var_D8.Top = CVar(Me.Txt.Left)
  loc_119679C: Me.var_D8.CursorLocation = 3
  loc_11967C6: var_C0 = CVar("Select Code,Name From NarrMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String
  loc_11967E4: CVarUnk
  loc_11967E9: VerifyVarObj
  loc_11967EF: Set var_8C = Me.DGHelp
  loc_11967F5: LateIdStAd
  loc_119681F: Me.DGHelp.CursorLocation = 3
  loc_1196849: var_C0 = CVar("Select N.*,N.Code as SearchCode From NarrMast N WHERE (LOGSITE_CODE='" & MemVar_1F92070 & "' OR LOGSITE_CODE='HO') Order by N.Name") 'String
  loc_1196853: r_C0, CVar(MemVar_1F921DC), 2 var_C0, CVar(MemVar_1F921DC), 2
  loc_1196867: CVarUnk
  loc_119686C: VerifyVarObj
  loc_1196872: Set var_8C = Me.DGMaster
  loc_1196878: LateIdStAd
  loc_119689B: var_B0 = "INI"
  loc_11968A9: Call Proc_202_29_ECED30(Proc_5_1_100CB50(var_B0, Me, New, Me, New, 3), -1, Me, New)
  loc_11968B4: Call Proc_202_28_1198FAC(3, -1)
  loc_11968B9: Exit Sub
  loc_11968BA: ' Referenced from: 11964E8
  loc_11968C0: Call 0.Method_arg_50 (var_B0)
  loc_11968D5: Proc_183_57_104AA84(var_B0, "Form_Load")
  loc_11968E1: Exit Sub
End Sub

Private Sub Form_Resize() 'ED4978
  'Data Table: 448E2C
  Dim var_8C As Label
  loc_ED48D6: Call 0.Method_arg_50 (var_88)
  loc_ED48E8: Me.LblFormCaption.Caption = var_88
  loc_ED4901: Me.LblFormCaption.Left = CDbl(0)
  loc_ED490D: Set var_A0 = Me.TopCtrl1
  loc_ED4913: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED4920: Set var_8C = Me.TopCtrl1
  loc_ED4926: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED4940: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED495B: Call 0.Method_arg_100 (var_B8)
  loc_ED496D: Me.LblFormCaption.Width = var_B8
  loc_ED4975: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E52400
  'Data Table: 448E2C
  loc_E523D3: Set global_60 = Nothing
  loc_E523E5: Set global_56 = Nothing
  loc_E523F7: Set global_68 = Nothing
  loc_E523FE: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E00ADC
  'Data Table: 448E2C
  loc_E00AD5: Call Form_Unload(&HFF)
  loc_E00ADA: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E69070
  'Data Table: 448E2C
  loc_E69028: On Error Goto loc_E69046
  loc_E6903D: Proc_183_40_F30B0C(Me, KeyCode)
  loc_E69045: Exit Sub
  loc_E69046: ' Referenced from: E69028
  loc_E6904C: Call 0.Method_arg_50 (var_8C)
  loc_E69061: Proc_183_57_104AA84(var_8C, "Form_KeyDown")
  loc_E6906D: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F7FD30
  'Data Table: 448E2C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F7FBEC: On Error Goto loc_F7FD06
  loc_F7FBFE: Me.DGHelp.Visible = False
  loc_F7FC1D: If (Me.RecordCount > 0) Then
  loc_F7FC5C:   Set var_B4 = Me.Txt
  loc_F7FC62:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F7FC6A:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F7FC9D:   var_B0 = Me.Fields.Item("Name")
  loc_F7FCAE:   var_CC = CStr(var_B0.Value)
  loc_F7FCBC:   Set var_B4 = Me.Txt
  loc_F7FCC2:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F7FCCA:   var_B8.Text = var_CC
  loc_F7FCE0: End If
  loc_F7FCEB: Set var_A8 = Me.Txt
  loc_F7FCF1: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F7FCF9: var_B0.SetFocus
  loc_F7FD05: Exit Sub
  loc_F7FD06: ' Referenced from: F7FBEC
  loc_F7FD0C: Call 0.Method_arg_50 (var_CC)
  loc_F7FD21: Proc_183_57_104AA84(var_CC, "DGHelp_Click")
  loc_F7FD2D: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EB8FB8
  'Data Table: 448E2C
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EB8F26: On Error Goto loc_EB8F8F
  loc_EB8F2F: Me.MoveFirst
  loc_EB8F49: var_8C = "SearchCode='" & MyValue
  loc_EB8F59: Me.Find var_8C & "'", 0, 1
  loc_EB8F81: Proc_5_0_110649C(&HFF, Me, global_60)
  loc_EB8F89: Call Proc_202_28_1198FAC(0)
  loc_EB8F8E: Exit Sub
  loc_EB8F8F: ' Referenced from: EB8F26
  loc_EB8F95: Call 0.Method_arg_50 (var_8C)
  loc_EB8FAA: Proc_183_57_104AA84(var_8C, "SEARCHBACK")
  loc_EB8FB6: Exit Sub
  loc_EB8FB7: Exit Sub
End Sub

Public Sub Proc_202_27_EACC44
  'Data Table: 448E2C
  Dim var_98 As TextBox
  loc_EACBB6: global_64 = vbNullString
  loc_EACBC8: Set var_8C = Me.Txt
  loc_EACBCE: Call 0.Method_Proc_202_27_EACC44C (var_8E, var_86)
  loc_EACBDE: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EACBF4:   Set var_8C = Me.Txt
  loc_EACBFA:   Call 0.Method_Proc_202_27_EACC440 (CInt(var_86), var_98)
  loc_EACC02:   var_98.Text = vbNullString
  loc_EACC1E:   Set var_8C = Me.Txt
  loc_EACC24:   Call 0.Method_Proc_202_27_EACC440 (CInt(var_86), var_98)
  loc_EACC2C:   var_98.Tag = vbNullString
  loc_EACC3B: Next var_92 'Byte
  loc_EACC41: Exit Sub
End Sub

Public Sub Proc_202_28_1198FAC
  'Data Table: 448E2C
  Dim Me As Recordset15
  Dim var_F4 As String
  Dim unk_448E4D As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_1CC As String
  Dim var_11C As TextBox
  loc_1198BE0: On Error Goto loc_1198F81
  loc_1198C39: unk_448E4D.Execute CStr("Select U_Name,U_AE,U_EntDt From NarrMast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_1198C44: Set var_88 = var_118
  loc_1198C98: var_118 = var_88.Fields
  loc_1198D01: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1198D46: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_1198DC0: var_11C = var_88.Fields.Item("U_AE")
  loc_1198E21: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_1198E66: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1198EB5: If (Me.RecordCount > 0) Then
  loc_1198EF4:   Set var_118 = Me.Txt
  loc_1198EFA:   Call 0.Method_Proc_202_28_1198FAC0 (CInt(0), var_11C)
  loc_1198F02:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1198F43:   var_F4 = Proc_183_2_E5A304(CVar(Me.Fields.Item("Name")))
  loc_1198F51:   Set var_118 = Me.Txt
  loc_1198F57:   Call 0.Method_Proc_202_28_1198FAC0 (CInt(0), var_11C)
  loc_1198F5F:   var_11C.Text = var_F4
  loc_1198F76: Else
  loc_1198F76:   Call Proc_202_27_EACC44()
  loc_1198F7B: End If
  loc_1198F7B: Call Proc_202_30_E5412C()
  loc_1198F80: Exit Sub
  loc_1198F81: ' Referenced from: 1198BE0
  loc_1198F87: Call 0.Method_arg_50 (var_F4)
  loc_1198F8F: var_1CC = "MoveRec"
  loc_1198F9C: Proc_183_57_104AA84(var_F4)
  loc_1198FA8: Exit Sub
End Sub

Public Sub Proc_202_29_ECED30(arg_C) 'ECED30
  'Data Table: 448E2C
  Dim var_98 As TextBox
  Dim var_8C As DataGrid
  loc_ECEC88: On Error Goto loc_ECED07
  loc_ECEC99: Set var_8C = Me.Txt
  loc_ECEC9F: Call 0.Method_Proc_202_29_ECED30C (var_8E, var_86)
  loc_ECECAF: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_ECECC5:   Set var_8C = Me.Txt
  loc_ECECCB:   Call 0.Method_Proc_202_29_ECED300 (CInt(var_86), var_98)
  loc_ECECD3:   var_98.Enabled = arg_C
  loc_ECECE2: Next var_92 'Byte
  loc_ECECFB: Me.DGMaster.Enabled = Not(arg_C)
  loc_ECED06: Exit Sub
  loc_ECED07: ' Referenced from: ECEC88
  loc_ECED0D: Call 0.Method_arg_50 (var_BC)
  loc_ECED15: var_C4 = "Disp_Text"
  loc_ECED22: Proc_183_57_104AA84(var_BC)
  loc_ECED2E: Exit Sub
End Sub

Public Sub Proc_202_30_E5412C
  'Data Table: 448E2C
  loc_E54110: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E54122:   Me.DGHelp.Visible = False
  loc_E5412A: End If
  loc_E5412A: Exit Sub
End Sub

Public Sub Proc_202_31_ECEC34(arg_C) 'ECEC34
  'Data Table: 448E2C
  Dim var_10C As TextBox
  loc_ECEB9C: On Error Goto loc_ECEC0B
  loc_ECEB9F: Call Proc_202_30_E5412C()
  loc_ECEBDB: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_ECEBDE:   Call TopCtrl1_UnknownEvent_16()
  loc_ECEBE6: Else
  loc_ECEBF0:   Set var_108 = Me.Txt
  loc_ECEBF6:   Call 0.Method_Proc_202_31_ECEC340 (arg_C)
  loc_ECEBFE:   var_10C.SetFocus
  loc_ECEC0A: End If
  loc_ECEC0A: Exit Sub
  loc_ECEC0B: ' Referenced from: ECEB9C
  loc_ECEC11: Call 0.Method_arg_50 (var_110)
  loc_ECEC26: Proc_183_57_104AA84(var_110, "SaveMsg")
  loc_ECEC32: Exit Sub
End Sub
