VERSION 5.00
Begin VB.Form FrmForeignExMast
  Caption = "Foreign Exchange Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8910
  ClientHeight = 5730
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8910
    Height = 440
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 2085
    Top = 840
    Width = 1290
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2085
    Top = 570
    Width = 3135
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
  Begin DataGrid DGHelp
    Left = 1080
    Top = 1515
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 0
  End
  Begin MSFlexGrid FGPoint
    Left = 5610
    Top = 1350
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 1
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 795
    Top = 4980
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4170
    Top = 4980
    Width = 2790
    Height = 285
    TabIndex = 7
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
  Begin Label LblLedgerAc
    Caption = "Rate"
    Index = 2
    ForeColor = &H0&
    Left = 1035
    Top = 840
    Width = 390
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
  Begin Label LblName
    Caption = "Name"
    Index = 0
    ForeColor = &H0&
    Left = 1050
    Top = 570
    Width = 495
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

Attribute VB_Name = "FrmForeignExMast"


Private Sub TopCtrl1_UnknownEvent_A 'EFB05C
  'Data Table: 4469BC
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFAF90: On Error Goto loc_EFB016
  loc_EFAF93: Call Proc_321_28_E7992C()
  loc_EFAFA5: Me.LblUser.Caption = vbNullString
  loc_EFAFBA: Me.LblLDt.Caption = vbNullString
  loc_EFAFD7: var_8C = "ADD"
  loc_EFAFE5: Call Proc_321_27_E7B0EC(Proc_5_1_100CB50(var_8C, Me))
  loc_EFAFFB: Set var_88 = Me.Txt
  loc_EFB001: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EFB009: var_94.SetFocus
  loc_EFB015: Exit Sub
  loc_EFB016: ' Referenced from: EFAF90
  loc_EFB01E: Set var_88 = Err()
  loc_EFB024: Call 0.Method_arg_2C (var_8C)
  loc_EFB045: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFB058: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC274C
  'Data Table: 4469BC
  loc_EC26B4: On Error Goto loc_EC2744
  loc_EC26EE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC26F1:   Call Proc_321_31_E86B30()
  loc_EC2702:   Set var_110 = Me
  loc_EC2719:   Call Proc_321_27_E7B0EC(Proc_5_1_100CB50("INI", var_110))
  loc_EC2724:   Call Proc_321_29_11F80A8(global_52)
  loc_EC272C: Else
  loc_EC2732:   Call 0.Method_arg_1E8 (var_110)
  loc_EC273A:   Call var_110.SetFocus
  loc_EC2743: End If
  loc_EC2743: Exit Sub
  loc_EC2744: ' Referenced from: EC26B4
  loc_EC2744: Proc_6_60_E62BC4()
  loc_EC2749: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10E04FC
  'Data Table: 4469BC
  Dim var_96 As Integer
  Dim unk_4469CE As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10E021C: On Error Goto loc_10E04A5
  loc_10E022D: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_10E0230:   Exit Sub
  loc_10E0231: End If
  loc_10E0268: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10E026D:   var_96 = 0
  loc_10E0279:   unk_4469CE.BeginTrans var_11C
  loc_10E0280:   var_96 = &HFF
  loc_10E0294:   var_94 = Me.Bookmark 'Variant
  loc_10E02E0:   var_F8 = "Delete From ForEx Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10E02EE:   unk_4469CE.Execute CStr(var_F8), var_118, -1
  loc_10E0339:   var_164 = 0
  loc_10E034C:   var_15C = 0
  loc_10E0357:   var_158 = 0
  loc_10E036A:   var_150 = 0
  loc_10E0375:   var_14C = 0
  loc_10E0388:   var_144 = 0
  loc_10E03C8:   var_128 = "ForEx"
  loc_10E03D1:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_10E03FF:   unk_4469CE.CommitTrans
  loc_10E0406:   var_96 = 0
  loc_10E0414:   Me.Requery -1
  loc_10E0424:   Me.Requery -1
  loc_10E0444:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10E0451:     Me.Bookmark = var_94
  loc_10E0459:   Else
  loc_10E046D:     If (Me.EOF = 0) Then
  loc_10E0476:       Me.MoveLast
  loc_10E047B:     End If
  loc_10E047B:   End If
  loc_10E047B:   Call Proc_321_29_11F80A8(var_96, var_144, 0, var_14C, var_150)
  loc_10E049C:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_10E04A4: End If
  loc_10E04A4: Exit Sub
  loc_10E04A5: ' Referenced from: 10E021C
  loc_10E04AB: If (var_96 = &HFF) Then
  loc_10E04B4:   unk_4469CE.RollbackTrans
  loc_10E04B9: End If
  loc_10E04C1: Set var_120 = Err()
  loc_10E04C7: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10E04E8: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10E04FB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F25724
  'Data Table: 4469BC
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F25628: On Error Goto loc_F256DF
  loc_F25639: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F2563C:   Exit Sub
  loc_F2563D: End If
  loc_F25654: If (Me.RecordCount > 0) Then
  loc_F2566C:   var_8C = "EDIT"
  loc_F2567A:   Call Proc_321_27_E7B0EC(Proc_5_1_100CB50(var_8C, Me))
  loc_F25690:   Set var_90 = Me.Txt
  loc_F25696:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F2569E:   var_98.SetFocus
  loc_F256AD: Else
  loc_F256CE:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F256DE: End If
  loc_F256DE: Exit Sub
  loc_F256DF: ' Referenced from: F25628
  loc_F256E7: Set var_90 = Err()
  loc_F256ED: Call 0.Method_arg_2C (var_8C)
  loc_F2570E: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F25721: Exit Sub
  loc_F25722: End Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E14FAC
  'Data Table: 4469BC
  Dim TopCtrl1_UnknownEvent_E4FF As Double
  loc_E14FA1: Me.Global.Unload Me
  loc_E14FA9: Exit Sub
  loc_E14FAA: TopCtrl1_UnknownEvent_E4FF = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F658AC
  'Data Table: 4469BC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F65780: On Error Goto loc_F65846
  loc_F6578C: var_88 = Me.RecordCount
  loc_F6579A: If (var_88 <= 0) Then
  loc_F657A3:   var_B8 = "Information"
  loc_F657BE:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F657CE:   Exit Sub
  loc_F657CF: End If
  loc_F657D7: If (MemVar_1F923AC = "A") Then
  loc_F657E8:   MemVar_1F920E4 = "Select Code As SearchCode,Name,Rate FROM ForEx WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_F657F2: Else
  loc_F657FA:   If (MemVar_1F923AC = "S") Then
  loc_F6580B:     MemVar_1F920E4 = "Select Code As SearchCode,Name,cast(Rate as Varchar(11)) as Rate FROM ForEx WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_F65812:   End If
  loc_F65812: End If
  loc_F65815: var_10C = "3000,1000"
  loc_F6581B: Proc_6_126_F1BCC0(var_10C, MemVar_1F920E4)
  loc_F65829: MemVar_1F92120 = Me
  loc_F65840: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F65845: Exit Sub
  loc_F65846: ' Referenced from: F65780
  loc_F6584E: Set var_110 = Err()
  loc_F65854: Call 0.Method_arg_1C (var_88)
  loc_F65865: If (var_88 <> 0) Then
  loc_F65870:   Set var_110 = Err()
  loc_F65876:   Call 0.Method_arg_2C (var_10C)
  loc_F65897:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F658AA: End If
  loc_F658AA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2BC38
  'Data Table: 4469BC
  loc_E2BC28: Proc_5_0_110649C(&HFF, Me)
  loc_E2BC30: Call Proc_321_29_11F80A8(global_52)
  loc_E2BC35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2BB18
  'Data Table: 4469BC
  loc_E2BB08: Proc_5_0_110649C(&HFF, Me)
  loc_E2BB10: Call Proc_321_29_11F80A8(global_52)
  loc_E2BB15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2BB78
  'Data Table: 4469BC
  loc_E2BB68: Proc_5_0_110649C(&HFF, Me)
  loc_E2BB70: Call Proc_321_29_11F80A8(global_52)
  loc_E2BB75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2D7F8
  'Data Table: 4469BC
  loc_E2D7E8: Proc_5_0_110649C(&HFF, Me)
  loc_E2D7F0: Call Proc_321_29_11F80A8(global_52)
  loc_E2D7F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '108ADB4
  'Data Table: 4469BC
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4469CE As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_108AB1C: On Error Goto loc_108AD68
  loc_108AB43: unk_4469CE.Execute "Select * from ForEx WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_108AB4E: Set var_88 = var_C8
  loc_108AB64: var_CC = var_88.RecordCount
  loc_108AB72: If (var_CC = 0) Then
  loc_108AB8E:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108AB9E:   Exit Sub
  loc_108AB9F: End If
  loc_108ABAE: var_A4 = MemVar_1F920B4 & "\ForeignExMast.ttx"
  loc_108ABB5: Set var_C8 = var_88 
  loc_108ABC1: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108ABCB: Set var_88 = var_C8
  loc_108ABD1: var_B4 = CVar(var_12E) 'Integer
  loc_108ABD4: var_98 = var_B4 'Variant
  loc_108ABF0: var_A0 = MemVar_1F920B4 & "\ForeignExMast.RPT"
  loc_108ABF9: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108AC04: MemVar_1F921E4 = var_C8
  loc_108AC1F: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108AC27: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108AC33: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108AC4C:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108AC54:   Call 0.Method_arg_20 (var_138)
  loc_108AC5C:   Call 0.Method_arg_30 (var_A0)
  loc_108ACA2:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108ACB8:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108ACC0:     Call 0.Method_arg_20 (var_138)
  loc_108ACC8:     Call 0.Method_arg_38 ("'Forex Master'")
  loc_108ACD4:   End If
  loc_108ACD7: Next var_132 'Integer
  loc_108ACF5: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_108ACFD: Call 0.Method_arg_2C (var_DC)
  loc_108AD0B: Call 0.Method_arg_150 (var_FC)
  loc_108AD16: Call 0.Method_arg_50 (var_A0)
  loc_108AD20: Set var_138 = Nothing
  loc_108AD3A: Set var_C8 = MemVar_1F921E4 
  loc_108AD46: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_108AD51: MemVar_1F921E4 = var_C8
  loc_108AD64: Set var_88 = Nothing
  loc_108AD67: Exit Sub
  loc_108AD68: ' Referenced from: 108AB1C
  loc_108AD70: Set var_C8 = Err()
  loc_108AD76: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108AD81: Call 0.Method_arg_50 (var_A4)
  loc_108AD9D: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108ADB0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A508
  'Data Table: 4469BC
  Dim Me As Recordset15
  loc_E0A4FF: Me.Requery -1
  loc_E0A504: Exit Sub
  loc_E0A505: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12DE610
  'Data Table: 4469BC
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_4469CE As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_114 As TextBox
  Dim var_288 As Double
  Dim var_B0 As Variant
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_1F8 As Variant
  Dim var_238 As Variant
  Dim var_1E8 As Variant
  loc_12DDFA4: On Error Goto loc_12DE5BC
  loc_12DDFAB: var_86 = CByte(0) 'Byte
  loc_12DDFBA: Set var_90 = Me.Txt
  loc_12DDFC0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_12DDFE9: If (Proc_183_19_E8DAFC(var_94, "Name") = 0) Then
  loc_12DDFF3:   Call Txt_GotFocus()
  loc_12DDFF8:   Exit Sub
  loc_12DDFF9: End If
  loc_12DE004: Set var_90 = Me.Txt
  loc_12DE00A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_12DE033: If (Proc_183_19_E8DAFC(var_94, "Rate") = 0) Then
  loc_12DE03D:   Call Txt_GotFocus()
  loc_12DE042:   Exit Sub
  loc_12DE043: End If
  loc_12DE047: Set var_90 = Me.TopCtrl1
  loc_12DE04D: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(1))
  loc_12DE066: If (CStr(CInt(0)) = "Add") Then
  loc_12DE071:   If (MemVar_1F923AC = "A") Then
  loc_12DE07A:     var_D4 = 0
  loc_12DE097:     var_9C = "Select iif(IsNull(Max(val(MID(Code,3)))),1,Max(val(MID(Code,3)))+1)AS MyCode From ForEx WHERE SITE_CODE='" & MemVar_1F92070
  loc_12DE0A7:     unk_4469CE.Execute CStr(CInt(0)) & "'", var_B0, -1
  loc_12DE0AF:     var_90 = var_90.Fields
  loc_12DE0B7:     var_D4 = var_94.Item(var_94)
  loc_12DE0BF:     var_98 = var_98.Value
  loc_12DE0CE:     global_64 = CStr(var_E4)
  loc_12DE0EE:   Else
  loc_12DE0F6:     If (MemVar_1F923AC = "S") Then
  loc_12DE0FF:       var_D4 = 0
  loc_12DE11C:       var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From ForEx WHERE SITE_CODE='" & MemVar_1F92070
  loc_12DE123:       var_B4 = CStr(CInt(0)) & "'"
  loc_12DE12C:       unk_4469CE.Execute var_B4, var_B0, -1
  loc_12DE134:       var_90 = var_90.Fields
  loc_12DE13C:       var_D4 = var_94.Item(var_94)
  loc_12DE144:       var_98 = var_98.Value
  loc_12DE153:       global_64 = CStr(var_E4)
  loc_12DE170:     End If
  loc_12DE170:   End If
  loc_12DE17D:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2, var_E4)) 'String
  loc_12DE1AB:   var_108 = (1 + Format(global_64, "000"))
  loc_12DE1B6:   global_64 = CStr(var_108)
  loc_12DE1CB: Else
  loc_12DE1D1:   var_C4 = "Code"
  loc_12DE1E8:   var_94 = Me.Fields.Item(var_C4)
  loc_12DE1FF:   global_64 = CStr(var_94.Value)
  loc_12DE210: End If
  loc_12DE219: unk_4469CE.BeginTrans var_10C
  loc_12DE222: var_86 = CByte(1) 'Byte
  loc_12DE22A: Set var_90 = Me.TopCtrl1
  loc_12DE230: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_12DE249: If (CStr(var_F8) = "Add") Then
  loc_12DE25A:   Set var_90 = Me.Txt
  loc_12DE260:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4)
  loc_12DE268:   var_E4 = var_94.Text
  loc_12DE27B:   Set var_98 = Me.Txt
  loc_12DE281:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114)
  loc_12DE289:   var_118 = var_114.Text
  loc_12DE2CB:   Proc_6_7_F25D88(var_1E8, Date, 1)
  loc_12DE2E7:   var_9C = "Insert Into ForEx(Code,Name,Rate,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_64
  loc_12DE328:   var_1A8 = CVar(var_9C & "','" & var_B4 & "',") & Format(CVar(Val(var_118)), "0.000") & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_12DE331:   var_1C8 = var_1A8 & "'," 
  loc_12DE34B:   var_238 = var_1C8 & var_1E8 & ",'A','" & CVar(MemVar_1F92078) 
  loc_12DE362:   unk_4469CE.Execute CStr(var_238 & "')"), var_27C, -1
  loc_12DE3AB: Else
  loc_12DE3B9:   Set var_90 = Me.Txt
  loc_12DE3BF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, var_280)
  loc_12DE3C7:   1 = var_94.Text
  loc_12DE3DA:   Set var_98 = Me.Txt
  loc_12DE3E0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_118)
  loc_12DE3E8:   var_288 = var_114.Text
  loc_12DE3F5:   var_288 = Val(var_118)
  loc_12DE407:   var_E4 = "0.000"
  loc_12DE417:   var_F8 = Format(CVar(var_288), var_E4)
  loc_12DE42A:   Proc_6_7_F25D88(var_1C8, Date, 1)
  loc_12DE458:   var_108 = CVar("UPDATE ForEx SET Name='" & var_9C & "',SITE_CODE='" & MemVar_1F92070 & "',Rate=") 'String
  loc_12DE497:   var_1F8 = var_108 & var_F8 & ",U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_1C8 & " ,U_AE='E' WHERE Code='" & CVar(global_64) 
  loc_12DE4AE:   unk_4469CE.Execute CStr(var_1F8 & "'"), var_238, -1
  loc_12DE4F0: End If
  loc_12DE4F6: unk_4469CE.CommitTrans
  loc_12DE4FF: var_86 = CByte(0) 'Byte
  loc_12DE50E: Me.Requery -1
  loc_12DE51E: Me.Requery -1
  loc_12DE54B: Me.Find "Code='" & global_64 & "'", 0, 1
  loc_12DE55B: Set var_90 = Me.TopCtrl1
  loc_12DE561: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_12DE57A: If (CStr(var_280) = "Add") Then
  loc_12DE57D:   Call TopCtrl1_UnknownEvent_A()
  loc_12DE582:   Exit Sub
  loc_12DE583: End If
  loc_12DE598: var_9C = "INI"
  loc_12DE5A6: Call Proc_321_27_E7B0EC(Proc_5_1_100CB50(var_9C, Me, global_52), 1)
  loc_12DE5B1: Call Proc_321_31_E86B30(var_288)
  loc_12DE5B6: Call Proc_321_29_11F80A8(var_94)
  loc_12DE5BB: Exit Sub
  loc_12DE5BC: ' Referenced from: 12DDFA4
  loc_12DE5C5: If (CInt(var_86) = 1) Then
  loc_12DE5CE:   unk_4469CE.RollbackTrans
  loc_12DE5D3: End If
  loc_12DE5DB: Set var_90 = Err()
  loc_12DE5E1: Call 0.Method_arg_2C (var_9C)
  loc_12DE5FA: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_12DE60D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'F0765C
  'Data Table: 4469BC
  Dim Me As Recordset15
  loc_F07588: On Error Goto loc_F07617
  loc_F07595: Set var_88 = Me.Txt
  loc_F0759B: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F075A9: Proc_6_74_E226B0(var_8C)
  loc_F075B5: Call Proc_321_31_E86B30(var_8C)
  loc_F075C8: If (Index = CInt(0)) Then
  loc_F075E2:   If (Me.RecordCount > 0) Then
  loc_F075F0:     Set var_8C = Me.FGPoint
  loc_F07608:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_F07616:   End If
  loc_F07616: End If
  loc_F07616: Exit Sub
  loc_F07617: ' Referenced from: F07588
  loc_F0761F: Set var_88 = Err()
  loc_F07625: Call 0.Method_arg_2C (var_9C, var_8C)
  loc_F07646: MsgBox(CVar(var_9C), &H40, "Information", var_EC, var_10C)
  loc_F07659: Exit Sub
  loc_F0765A: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '101C1E4
  'Data Table: 4469BC
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As TextBox
  loc_101BFDA: If (CLng(Shift) = &H1B) Then
  loc_101BFDD:   Call Proc_321_31_E86B30()
  loc_101BFE2:   Exit Sub
  loc_101BFE3: End If
  loc_101BFF1: If (KeyCode = CInt(0)) Then
  loc_101C011:   Set var_9C = Me.FGPoint
  loc_101C043:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_101C0B0:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_101C0B7:     Set var_9C = Me.DGHelp
  loc_101C0BE:     Set var_90 = Me.FGPoint
  loc_101C0D6:     Proc_6_138_106D6F8(var_9C, global_56, KeyCode, var_90, 0)
  loc_101C0E4:   End If
  loc_101C0E4: End If
  loc_101C100: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_101C121:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(1))) Then
  loc_101C127:     Call Proc_321_30_10EC638(var_92, 1, var_9C)
  loc_101C132:     If (var_92 = &HFF) Then
  loc_101C142:       Set var_8C = Me.Txt
  loc_101C148:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_101C150:       var_90.Text = 0
  loc_101C15C:       Exit Sub
  loc_101C15D:     End If
  loc_101C194:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_130) = 6) Then
  loc_101C197:       Call TopCtrl1_UnknownEvent_16()
  loc_101C19C:     End If
  loc_101C19C:     Exit Sub
  loc_101C19D:   End If
  loc_101C1B2:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_101C1BB:     Proc_6_75_E527CC(Shift, arg_14)
  loc_101C1C0:   End If
  loc_101C1D3:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_101C1DC:     Proc_6_76_E52838(Shift, arg_14)
  loc_101C1E1:   End If
  loc_101C1E1: End If
  loc_101C1E1: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E86FC0
  'Data Table: 4469BC
  Dim arg_10 As Integer
  loc_E86F5E: Proc_6_133_E7EF78(var_94)
  loc_E86F67: arg_10 = CInt(var_94)
  loc_E86F70: Proc_6_58_E054C0(arg_10, arg_10)
  loc_E86F83: If (KeyAscii = CInt(1)) Then
  loc_E86F90:   Set var_9C = Me.Txt
  loc_E86F96:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_E86FB1:   Proc_6_42_129A86C(var_A0, arg_10, 5)
  loc_E86FBD: End If
  loc_E86FBD: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC2910
  'Data Table: 4469BC
  loc_EC2882: If (KeyCode = CInt(0)) Then
  loc_EC28A1:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC28AE:     var_A4 = "Name"
  loc_EC28CD:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_56)
  loc_EC28FF:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC290D:   End If
  loc_EC290D: End If
  loc_EC290D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B214
  'Data Table: 4469BC
  loc_E4B1F2: Set var_88 = Me.Txt
  loc_E4B1F8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B206: Proc_6_73_E22704(var_8C)
  loc_E4B212: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'EFF00C
  'Data Table: 4469BC
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As TextBox
  Dim var_EC As TextBox
  loc_EFEF47: var_86 = Cancel
  loc_EFEF52: If (var_86 = CInt(0)) Then
  loc_EFEF58:   Call Proc_321_30_10EC638(var_88)
  loc_EFEF63:   If (var_88 = &HFF) Then
  loc_EFEF68:     arg_10 = &HFF
  loc_EFEF6B:     Exit Sub
  loc_EFEF6C:   End If
  loc_EFEF6F: Else
  loc_EFEF77:   If (var_86 = CInt(1)) Then
  loc_EFEF87:     Set var_8C = Me.Txt
  loc_EFEF8D:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_EFEF95:     arg_10 = var_90.Text
  loc_EFEFDA:     Set var_E8 = Me.Txt
  loc_EFEFE0:     Call 0.Method_Txt_Validate0 (Cancel, var_EC, CStr(Format(CVar(Val(var_94)), "0.000")), 1)
  loc_EFEFE8:     var_EC.Text = 1
  loc_EFF008:   End If
  loc_EFF008: End If
  loc_EFF008: Exit Sub
End Sub

Private Sub Form_Load() 'FBDFB8
  'Data Table: 4469BC
  Dim var_8C As Label
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_4469CE As Connection15
  Dim var_B4 As Variant
  loc_FBDE14: On Error Goto loc_FBDF74
  loc_FBDE1E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_FBDE32: Me.LblUser.Left = CDbl(13500)
  loc_FBDE49: Me.LblUser.Top = CDbl(7800)
  loc_FBDE60: Me.LblLDt.Top = CDbl(8160)
  loc_FBDE71: Set var_8C = Me.LblLDt
  loc_FBDE77: var_8C.Left = CDbl(13500)
  loc_FBDE7F: Call Proc_321_32_EDB5E4()
  loc_FBDEA8: unk_4469CE.Execute "SELECT Code,Name FROM ForEx WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_FBDED7: CVarUnk
  loc_FBDEDC: VerifyVarObj
  loc_FBDEE8: LateIdStAd
  loc_FBDF11: var_94 = "SELECT E.*,E.Code as SearchCode FROM ForEx E WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') order by Name"
  loc_FBDF1A: unk_4469CE.Execute var_94, var_B4, -1
  loc_FBDF55: var_90 = "INI"
  loc_FBDF63: Call Proc_321_27_E7B0EC(Proc_5_1_100CB50(var_90, Me, Me.DGHelp, Me), Me)
  loc_FBDF6E: Call Proc_321_29_11F80A8(Me)
  loc_FBDF73: Exit Sub
  loc_FBDF74: ' Referenced from: FBDE14
  loc_FBDF7C: Set var_8C = Err()
  loc_FBDF82: Call 0.Method_arg_2C (var_90)
  loc_FBDFA3: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_FBDFB6: Exit Sub
  loc_FBDFB7: Exit Sub
End Sub

Private Sub Form_Resize() 'DFC5F0
  'Data Table: 4469BC
  loc_DFC5EC: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2A974
  'Data Table: 4469BC
  loc_E2A957: Set global_52 = Nothing
  loc_E2A969: Set global_56 = Nothing
  loc_E2A970: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29B14
  'Data Table: 4469BC
  loc_E29AEC: On Error Goto loc_E29B0B
  loc_E29B03: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E29B0B: ' Referenced from: E29AEC
  loc_E29B0B: Proc_6_60_E62BC4(Shift)
  loc_E29B10: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E2E1B4
  'Data Table: 4469BC
  loc_E2E1A8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E2E1AB:   Call DGHelp_UnknownEvent_9()
  loc_E2E1B0: End If
  loc_E2E1B0: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE5BBC
  'Data Table: 4469BC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE5B13: Me.DGHelp.Visible = False
  loc_EE5B32: If (Me.RecordCount > 0) Then
  loc_EE5B52:   var_B0 = Me.Fields.Item("Name")
  loc_EE5B71:   Set var_B4 = Me.Txt
  loc_EE5B77:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE5B7F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE5B95: End If
  loc_EE5BA0: Set var_A8 = Me.Txt
  loc_EE5BA6: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE5BAE: var_B0.SetFocus
  loc_EE5BBA: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'F011AC
  'Data Table: 4469BC
  Dim var_9C As DataGrid
  Dim var_BC As Variant
  loc_F010D4: Set var_88 = Me.DGHelp
  loc_F010ED: Me.DGHelp.InsertColumnLabels DGHelp.DispID_1D, 
  loc_F01126: If (CDbl(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF)))) < CDbl(CLng(var_AC))) Then
  loc_F0112D:   Set var_88 = Me.DGHelp
  loc_F01157:   var_BC = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_F0115F:   Set var_9C = Me.DGHelp
  loc_F01174: End If
  loc_F0119B: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0), Me.FGPoint)
  loc_F011A9: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC2664
  'Data Table: 4469BC
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC25DA: On Error Goto loc_EC261F
  loc_EC25E3: Me.MoveFirst
  loc_EC25FD: var_8C = "code='" & MyValue
  loc_EC260D: Me.Find var_8C & "'", 0, 1
  loc_EC2619: Call Proc_321_29_11F80A8(var_A0)
  loc_EC261E: Exit Sub
  loc_EC261F: ' Referenced from: EC25DA
  loc_EC2627: Set var_A4 = Err()
  loc_EC262D: Call 0.Method_arg_2C (var_8C)
  loc_EC264E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC2661: Exit Sub
  loc_EC2662: Exit Sub
End Sub

Public Sub Proc_321_27_E7B0EC(arg_C) 'E7B0EC
  'Data Table: 4469BC
  Dim var_98 As TextBox
  loc_E7B09A: Set var_8C = Me.Txt
  loc_E7B0A0: Call 0.Method_Proc_321_27_E7B0ECC (var_8E, var_86)
  loc_E7B0B0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7B0C6:   Set var_8C = Me.Txt
  loc_E7B0CC:   Call 0.Method_Proc_321_27_E7B0EC0 (CInt(var_86), var_98)
  loc_E7B0D4:   var_98.Enabled = arg_C
  loc_E7B0E3: Next var_92 'Byte
  loc_E7B0E9: Exit Sub
End Sub

Public Sub Proc_321_28_E7992C
  'Data Table: 4469BC
  Dim var_98 As TextBox
  Dim Proc_321_28_E7992C4FF As Double
  loc_E798DA: Set var_8C = Me.Txt
  loc_E798E0: Call 0.Method_Proc_321_28_E7992CC (var_8E, var_86)
  loc_E798F0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79906:   Set var_8C = Me.Txt
  loc_E7990C:   Call 0.Method_Proc_321_28_E7992C0 (CInt(var_86), var_98)
  loc_E79914:   var_98.Text = vbNullString
  loc_E79923: Next var_92 'Byte
  loc_E79929: Exit Sub
  loc_E7992A: Proc_321_28_E7992C4FF = 
End Sub

Public Sub Proc_321_29_11F80A8
  'Data Table: 4469BC
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B8 As Fields15
  Dim var_B4 As String
  Dim var_CC As TextBox
  loc_11F7C3C: On Error Goto loc_11F8063
  loc_11F7C45: Proc_183_45_E5C118(global_52)
  loc_11F7C61: If (Me.RecordCount <= 0) Then
  loc_11F7C64:   Call Proc_321_28_E7992C()
  loc_11F7C6C: Else
  loc_11F7D15:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_11F7D5D:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_Name")))))
  loc_11F7DDD:   var_CC = Me.Fields.Item("U_AE")
  loc_11F7E3E:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_CC)) = "E"), "Last Update :   ", "entdt :   "))
  loc_11F7E86:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_EntDt")))))
  loc_11F7EF2:   global_64 = CStr(Me.Fields.Item("Name").Value)
  loc_11F7F3F:   Set var_B8 = Me.Txt
  loc_11F7F45:   Call 0.Method_Proc_321_29_11F80A80 (CInt(0), var_CC)
  loc_11F7F4D:   var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11F7F9F:   Set var_B8 = Me.Txt
  loc_11F7FA5:   Call 0.Method_Proc_321_29_11F80A80 (CInt(0), var_CC)
  loc_11F7FAD:   var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_11F7FF1:   var_B4 = CStr(Me.Fields.Item("Rate").Value)
  loc_11F800B:   var_110 = "0.000"
  loc_11F801B:   var_130 = Format(CVar(Val(var_B4)), var_110)
  loc_11F8032:   Set var_B8 = Me.Txt
  loc_11F8038:   Call 0.Method_Proc_321_29_11F80A80 (CInt(1), var_CC, CStr(var_130))
  loc_11F8040:   var_CC.Text = 1
  loc_11F8062: End If
  loc_11F8062: Exit Sub
  loc_11F8063: ' Referenced from: 11F7C3C
  loc_11F806B: Set var_8C = Err()
  loc_11F8071: Call 0.Method_arg_2C (var_B4, 1)
  loc_11F8092: MsgBox(CVar(var_B4), &H40, "Information", var_110, var_130)
  loc_11F80A5: Exit Sub
End Sub

Public Sub Proc_321_30_10EC638
  'Data Table: 4469BC
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4469CE As Connection15
  Dim var_D8 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_180 As Fields15
  Dim var_194 As Field20
  loc_10EC36F: If (Me.RecordCount = 0) Then
  loc_10EC372:   Proc_321_30_10EC638 = 
  loc_10EC378: End If
  loc_10EC37C: Set var_90 = Me.TopCtrl1
  loc_10EC382: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10EC39B: If (CStr() = "Add") Then
  loc_10EC3D9:   Set var_90 = Me.Txt
  loc_10EC3DF:   Call 0.Method_Proc_321_30_10EC6380 (CInt(0), var_A8, var_AC, "Select Count(*) From ForEx Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10EC40E:   unk_4469CE.Execute var_D8 & var_AC & "' and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')", 0, var_EC
  loc_10EC41E:    = var_D8.Item()
  loc_10EC426:    = var_EC.Value
  loc_10EC45B:   If (var_A8.Text.Fields > 0) Then
  loc_10EC47F:     MsgBox("Duplicate Name", &H40, "Information", var_11C, var_13C)
  loc_10EC49A:     Set var_90 = Me.Txt
  loc_10EC4A0:     Call 0.Method_Proc_321_30_10EC6380 (CInt(0))
  loc_10EC4A8:     var_A8.SetFocus
  loc_10EC4B9:     Proc_321_30_10EC638 = &HFF
  loc_10EC4BF:   End If
  loc_10EC4C2: Else
  loc_10EC4FD:   Set var_90 = Me.Txt
  loc_10EC503:   Call 0.Method_Proc_321_30_10EC6380 (CInt(0), var_A8, var_AC, "Select Count(*) From ForEx Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_17C, -1)
  loc_10EC54B:   var_11C = CVar(var_180 & var_AC & "' And Name<>'") & Me.Fields.Item("Name").Value 
  loc_10EC554:   var_13C = var_11C & "' and (LOGSITE_CODE='" 
  loc_10EC575:   unk_4469CE.Execute CStr(var_13C & CVar(MemVar_1F92078) & "' or LOGSITE_CODE='HO')"), 0, var_194
  loc_10EC585:    = var_180.Item(var_A8)
  loc_10EC58D:    = var_194.Value
  loc_10EC5CE:   If (var_A8.Text.Fields > 0) Then
  loc_10EC5F2:     MsgBox("Duplicate Name", &H40, "Information", var_11C, var_13C)
  loc_10EC60D:     Set var_90 = Me.Txt
  loc_10EC613:     Call 0.Method_Proc_321_30_10EC6380 (CInt(0))
  loc_10EC61B:     var_A8.SetFocus
  loc_10EC62C:     Proc_321_30_10EC638 = &HFF
  loc_10EC632:   End If
  loc_10EC632: End If
  loc_10EC632: Proc_321_30_10EC638 = var_A8
End Sub

Public Sub Proc_321_31_E86B30
  'Data Table: 4469BC
  loc_E86ADC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E86AEE:   Me.DGHelp.Visible = False
  loc_E86AF6: End If
  loc_E86B12: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E86B24:   Me.FGPoint.Visible = False
  loc_E86B2C: End If
  loc_E86B2C: Exit Sub
End Sub

Public Sub Proc_321_32_EDB5E4
  'Data Table: 4469BC
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_EDB542: Set var_88 = Me.Txt
  loc_EDB548: Call 0.Method_Proc_321_32_EDB5E40 (CInt(0), var_8C)
  loc_EDB567: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_EDB583: Set var_B4 = Me.Txt
  loc_EDB589: Call 0.Method_Proc_321_32_EDB5E40 (CInt(0), var_B8)
  loc_EDB5A4: Set var_88 = Me.Txt
  loc_EDB5AA: Call 0.Method_Proc_321_32_EDB5E40 (CInt(0), var_8C)
  loc_EDB5C2: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_EDB5D1: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_EDB5E3: Exit Sub
End Sub
