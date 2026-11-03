VERSION 5.00
Begin VB.Form SundryVType
  Caption = "Voucher Wise Sundry Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MaxButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11595
  ClientHeight = 7185
  LockControls = -1  'True
  Begin DataGrid DGVType
    Left = 3675
    Top = 3300
    Width = 5625
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin DataGrid DGPostAC
    Left = 2805
    Top = 3675
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 1815
    Top = 765
    Width = 1425
    Height = 255
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
  Begin DataGrid DGSundry
    Left = 3720
    Top = 4005
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 1815
    Top = 493
    Width = 3510
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 30
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
    Left = 1065
    Top = 2460
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11595
    Height = 375
    TabIndex = 0
  End
  Begin MSHFlexGrid FGrid
    Left = 45
    Top = 1125
    Width = 8790
    Height = 4275
    TabIndex = 4
  End
  Begin Label LblDepart
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &H0&
    Left = 7890
    Top = 450
    Width = 3885
    Height = 510
    TabIndex = 10
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 20.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "App.Date"
    Index = 1
    ForeColor = &H0&
    Left = 225
    Top = 765
    Width = 780
    Height = 240
    TabIndex = 8
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
    Caption = "Voucher Type"
    Index = 0
    ForeColor = &H0&
    Left = 225
    Top = 495
    Width = 1185
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
End

Attribute VB_Name = "SundryVType"

Private MasterFormExit As Integer
Private global_68 As Integer
Private global_70 As Integer

Private Sub TopCtrl1_UnknownEvent_11 'E7F29C
  'Data Table: 489B20
  Dim var_94 As TextBox
  loc_E7F238: On Error Goto loc_E7F294
  loc_E7F25E: Call Proc_53_52_E7C224(Proc_5_1_100CB50("ADD", Me))
  loc_E7F269: Call Proc_53_50_F2BBBC(global_72)
  loc_E7F279: Set var_8C = Me.Txt
  loc_E7F27F: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0))
  loc_E7F287: var_94.SetFocus
  loc_E7F293: Exit Sub
  loc_E7F294: ' Referenced from: E7F238
  loc_E7F294: Proc_6_60_E62BC4(var_94)
  loc_E7F299: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E18D6C
  'Data Table: 489B20
  loc_E18D61: Me.Global.Unload Me
  loc_E18D69: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3C8B8
  'Data Table: 489B20
  loc_E3C8A8: Proc_5_0_110649C(&HFF, Me)
  loc_E3C8B0: Call Proc_53_51_13DB39C(global_72)
  loc_E3C8B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E39438
  'Data Table: 489B20
  loc_E39428: Proc_5_0_110649C(&HFF, Me)
  loc_E39430: Call Proc_53_51_13DB39C(global_72)
  loc_E39435: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E39498
  'Data Table: 489B20
  loc_E39488: Proc_5_0_110649C(&HFF, Me)
  loc_E39490: Call Proc_53_51_13DB39C(global_72)
  loc_E39495: Exit Sub
  loc_E39496: Set var_5800 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E398B8
  'Data Table: 489B20
  loc_E398A8: Proc_5_0_110649C(&HFF, Me)
  loc_E398B0: Call Proc_53_51_13DB39C(global_72)
  loc_E398B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '14EBF40
  'Data Table: 489B20
  Dim var_EC As Variant
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_CC As Variant
  Dim var_12C As Variant
  Dim var_15C As Variant
  Dim unk_489B43 As Connection15
  Dim var_A0 As Variant
  Dim var_19C As Variant
  Dim var_11C As Variant
  Dim var_23C As MSHFlexGrid
  Dim var_18C As Variant
  Dim var_1F0 As Variant
  Dim var_240 As MSHFlexGrid
  Dim var_2A4 As Variant
  Dim var_2C4 As Variant
  Dim var_358 As Variant
  Dim var_378 As Variant
  Dim var_3EC As Variant
  Dim var_40C As Variant
  Dim var_490 As Variant
  Dim var_4B0 As Variant
  Dim var_534 As Variant
  Dim var_554 As Variant
  Dim var_5CC As Variant
  Dim var_5EC As Variant
  Dim var_684 As Variant
  Dim var_6A4 As Variant
  Dim var_718 As Variant
  Dim var_738 As Variant
  Dim var_7AC As Variant
  Dim var_7CC As Variant
  Dim var_884 As Variant
  Dim var_918 As Variant
  Dim var_A28 As Variant
  Dim var_A48 As Variant
  Dim var_A8 As String
  Dim var_224 As String
  Dim var_13C As Variant
  Dim var_1BC As Variant
  Dim var_210 As Variant
  Dim var_3BC As Variant
  Dim var_59C As Variant
  Dim var_77C As Variant
  Dim var_968 As Variant
  Dim var_AC0 As String
  Dim var_238 As TextBox
  Dim Me As Recordset15
  loc_14EB294: On Error Goto loc_14EBEEB
  loc_14EB29B: var_86 = CByte(0) 'Byte
  loc_14EB2AA: Set var_9C = Me.Txt
  loc_14EB2B0: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_14EB2D9: If (Proc_6_27_EA565C(var_A0, "Voucher Type") = 0) Then
  loc_14EB2E3:   Call Txt_GotFocus()
  loc_14EB2E8:   Exit Sub
  loc_14EB2E9: End If
  loc_14EB2F4: Set var_9C = Me.Txt
  loc_14EB2FA: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A0)
  loc_14EB302: var_A8 = "App. Date"
  loc_14EB323: If (Proc_6_27_EA565C(var_A0, var_A8) = 0) Then
  loc_14EB32D:   Call Txt_GotFocus()
  loc_14EB332:   Exit Sub
  loc_14EB333: End If
  loc_14EB336: Call Proc_53_46_FCA7C8(var_AA, CInt(1))
  loc_14EB341: If (var_AA = &HFF) Then
  loc_14EB344:   Exit Sub
  loc_14EB345: End If
  loc_14EB366: var_DC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14EB370: For var_10C = 1 To var_DC: var_98 = var_10C 'Variant
  loc_14EB37B:   var_CC = CVar(CLng(var_98)) 'Long
  loc_14EB383:   var_EC = CVar(CLng(3)) 'Long
  loc_14EB3BF:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_14EB3C7:     var_CC = CVar(CLng(var_98)) 'Long
  loc_14EB3CF:     var_EC = CVar(CLng(1)) 'Long
  loc_14EB40B:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_14EB413:       var_CC = CVar(CLng(var_98)) 'Long
  loc_14EB41B:       var_EC = CVar(CLng(3)) 'Long
  loc_14EB462:       MsgBox("Fill S.NO For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_19C, var_1BC)
  loc_14EB47F:       Set var_9C = Me.FGrid
  loc_14EB490:       Exit Sub
  loc_14EB491:     End If
  loc_14EB496:     var_CC = CVar(CLng(var_98)) 'Long
  loc_14EB49E:     var_EC = CVar(CLng(4)) 'Long
  loc_14EB4DA:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_14EB4E2:       var_CC = CVar(CLng(var_98)) 'Long
  loc_14EB4EA:       var_EC = CVar(CLng(3)) 'Long
  loc_14EB531:       MsgBox("Fill Disp. Name For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_19C, var_1BC)
  loc_14EB54E:       Set var_9C = Me.FGrid
  loc_14EB55F:       Exit Sub
  loc_14EB560:     End If
  loc_14EB565:     var_CC = CVar(CLng(var_98)) 'Long
  loc_14EB56D:     var_EC = CVar(CLng(6)) 'Long
  loc_14EB5A9:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_14EB5B1:       var_CC = CVar(CLng(var_98)) 'Long
  loc_14EB5B9:       var_EC = CVar(CLng(3)) 'Long
  loc_14EB600:       MsgBox("Fill Per/Amt For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_19C, var_1BC)
  loc_14EB61D:       Set var_9C = Me.FGrid
  loc_14EB62E:       Exit Sub
  loc_14EB62F:     End If
  loc_14EB634:     var_CC = CVar(CLng(var_98)) 'Long
  loc_14EB63C:     var_EC = CVar(CLng(&HB)) 'Long
  loc_14EB678:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_14EB680:       var_CC = CVar(CLng(var_98)) 'Long
  loc_14EB688:       var_EC = CVar(CLng(3)) 'Long
  loc_14EB6CF:       MsgBox("Fill Cal.Sign For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_19C, var_1BC)
  loc_14EB6EC:       Set var_9C = Me.FGrid
  loc_14EB6FD:       Exit Sub
  loc_14EB6FE:     End If
  loc_14EB6FE:   End If
  loc_14EB701: Next var_10C 'Variant
  loc_14EB710: unk_489B43.BeginTrans var_1C0
  loc_14EB719: var_86 = CByte(1) 'Byte
  loc_14EB73E: var_DC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14EB748: For var_1E0 = 1 To var_DC: var_98 = var_1E0 'Variant
  loc_14EB753:   var_CC = CVar(CLng(var_98)) 'Long
  loc_14EB775:   var_12C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14EB7A3:   Set var_A0 = Me.FGrid
  loc_14EB7E8:   If CBool(CVar(CLng(1)) And (Trim(CVar(CStr(var_A0.TextMatrix)))) <> vbNullString)) Then
  loc_14EB7F9:     Set var_9C = Me.Txt
  loc_14EB7FF:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0, var_22C, CVar(CLng(var_98)))
  loc_14EB807:     (Trim(var_12C) <> vbNullString) = var_A0.Tag
  loc_14EB81D:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_238, CVar(CLng(2)))
  loc_14EB82C:     Proc_6_7_F25D88(var_12C, CVar(var_238))
  loc_14EB836:     var_DC = CVar(CLng(var_98)) 'Long
  loc_14EB83E:     var_11C = CVar(CLng(2)) 'Long
  loc_14EB85E:     var_18C = CVar(CLng(var_98)) 'Long
  loc_14EB866:     var_1F0 = CVar(CLng(1)) 'Long
  loc_14EB86F:     Set var_240 = Me.FGrid
  loc_14EB890:     var_2A4 = CVar(CLng(var_98)) 'Long
  loc_14EB898:     var_2C4 = CVar(CLng(4)) 'Long
  loc_14EB8B8:     var_358 = CVar(CLng(var_98)) 'Long
  loc_14EB8C0:     var_378 = CVar(CLng(5)) 'Long
  loc_14EB8E0:     var_3EC = CVar(CLng(var_98)) 'Long
  loc_14EB8E8:     var_40C = CVar(CLng(6)) 'Long
  loc_14EB91C:     var_490 = CVar(CLng(var_98)) 'Long
  loc_14EB924:     var_4B0 = CVar(CLng(8)) 'Long
  loc_14EB958:     var_534 = CVar(CLng(var_98)) 'Long
  loc_14EB960:     var_554 = CVar(CLng(7)) 'Long
  loc_14EB98A:     var_5CC = CVar(CLng(var_98)) 'Long
  loc_14EB992:     var_5EC = CVar(CLng(9)) 'Long
  loc_14EB9BC:     var_684 = CVar(CLng(var_98)) 'Long
  loc_14EB9C4:     var_6A4 = CVar(CLng(&HF)) 'Long
  loc_14EB9E4:     var_718 = CVar(CLng(var_98)) 'Long
  loc_14EB9EC:     var_738 = CVar(CLng(&HA)) 'Long
  loc_14EBA0C:     var_7AC = CVar(CLng(var_98)) 'Long
  loc_14EBA14:     var_7CC = CVar(CLng(&HB)) 'Long
  loc_14EBA4B:     var_884 = Me.FGrid.TextMatrix)
  loc_14EBA73:     var_918 = Me.FGrid.TextMatrix)
  loc_14EBAA1:     Proc_6_7_F25D88(var_9E8, Date, var_918, CVar(CLng(&HC)), CVar(CLng(var_98)), var_884, CVar(CLng(&HE)), CVar(CLng(var_98)))
  loc_14EBAAB:     var_A28 = CVar(CLng(var_98)) 'Long
  loc_14EBAB3:     var_A48 = CVar(CLng(&H10)) 'Long
  loc_14EBAF6:     var_A8 = "Insert Into SundryType (V_Type,AppDate,SundryCode,SNo,DispName," & "CalcFormula,PerOrAmt,RoundOff,SValue,Limit,"
  loc_14EBAFD:     var_224 = var_A8 & "PostAc,Nature,CalcSign,SysYN,Grp,"
  loc_14EBB33:     var_210 = CVar(var_224 & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',") & var_12C & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14EBB78:     var_3BC = var_210 & "'," & CVar(Val(CStr(var_240.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14EBBAC:     var_59C = var_3BC & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_14EBBF1:     var_77C = var_59C & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14EBC32:     var_968 = var_77C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_884)) & "','" & Left(CVar(CStr(var_918)), 1) & "'," 
  loc_14EBC72:     var_AC0 = CStr(var_968 & "'" & CVar(MemVar_1F920C8) & "'," & var_9E8 & ",'A','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "')")
  loc_14EBC7C:     unk_489B43.Execute var_AC0, var_AE0, -1
  loc_14EBD52:   End If
  loc_14EBD55: Next var_1E0 'Variant
  loc_14EBD61: unk_489B43.CommitTrans
  loc_14EBD6A: var_86 = CByte(0) 'Byte
  loc_14EBD79: Set var_23C = Me.Txt
  loc_14EBD7F: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1))
  loc_14EBD92: Set var_9C = Me.Txt
  loc_14EBD98: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0)
  loc_14EBDA8: var_12C = CVar(var_A0.Tag) 'String
  loc_14EBDBE: Set var_A4 = Me.Txt
  loc_14EBDC4: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_238, var_224)
  loc_14EBDCC: 5 = var_238.Tag
  loc_14EBDD9: var_BC = Space((var_12C - Len(var_224)))
  loc_14EBDE1: var_13C = (var_240 + CVar(var_238))
  loc_14EBDE5: var_CC = "**"
  loc_14EBDEA: var_15C = (CVar(var_224 & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',") + var_CC)
  loc_14EBE15: var_210 = (1 + Format(CVar(var_240), "dd/mm/yyyy"))
  loc_14EBE56: Me.Requery -1
  loc_14EBE83: Me.Find "SearchCode ='" & CStr(var_210) & "'", 0, 1
  loc_14EBE93: Set var_9C = Me.TopCtrl1
  loc_14EBE99: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_CC)
  loc_14EBEAE: If (1 = "Add") Then
  loc_14EBEB1:   Call TopCtrl1_UnknownEvent_11()
  loc_14EBEB6:   Exit Sub
  loc_14EBEB7: End If
  loc_14EBECC: var_A8 = "INI"
  loc_14EBEDA: Call Proc_53_52_E7C224(Proc_5_1_100CB50(var_A8, Me), global_72)
  loc_14EBEE5: Call Proc_53_51_13DB39C(CVar("SearchCode ='" & CStr(var_210) & "'" & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',") & var_12C)
  loc_14EBEEA: Exit Sub
  loc_14EBEEB: ' Referenced from: 14EB294
  loc_14EBEF4: If (CInt(var_86) = 1) Then
  loc_14EBEFD:   unk_489B43.RollbackTrans
  loc_14EBF02: End If
  loc_14EBF0A: Set var_9C = Err()
  loc_14EBF10: Call 0.Method_arg_2C (var_A8)
  loc_14EBF29: MsgBox(CVar(var_A8), &H10, var_12C, CVar("SearchCode ='" & CStr(var_210) & "'" & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',"), CVar("SearchCode ='" & CStr(var_210) & "'" & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',") & var_12C)
  loc_14EBF3C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EE7C00
  'Data Table: 489B20
  loc_EE7B44: On Error Goto loc_EE7BF9
  loc_EE7B7E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EE7BA4:   Call Proc_53_52_E7C224(Proc_5_1_100CB50("INI", Me))
  loc_EE7BB7:   Set var_10C = Me.TopCtrl1
  loc_EE7BBD:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C(True)
  loc_EE7BCE:   Set var_10C = Me.TopCtrl1
  loc_EE7BD4:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000B(False)
  loc_EE7BE5:   Set var_10C = Me.TopCtrl1
  loc_EE7BEB:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000A(False)
  loc_EE7BF3:   Call Proc_53_51_13DB39C(global_72)
  loc_EE7BF8: End If
  loc_EE7BF8: Exit Sub
  loc_EE7BF9: ' Referenced from: EE7B44
  loc_EE7BF9: Proc_6_60_E62BC4()
  loc_EE7BFE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EB581C
  'Data Table: 489B20
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB578C: On Error Goto loc_EB5816
  loc_EB57A6: If (Me.RecordCount <= 0) Then
  loc_EB57AF:   var_B8 = "Information"
  loc_EB57CA:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB57DA:   Exit Sub
  loc_EB57DB: End If
  loc_EB57DE: MemVar_1F920E4 = "Select (SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,VT.Description,Convert(Varchar(11),SP.AppDate,103) As AppDate,SP.SNo,SM.Name As SundryName,SP.DispName,SP.CalcFormula,SG.Name As PostAcName From (((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join ViewSubGroup SG On SP.PostAc=SG.SubCode) Order by SP.AppDate,VT.Description"
  loc_EB57E8: MemVar_1F92120 = Me
  loc_EB57F5: Proc_6_126_F1BCC0("2000,1000,1000,2000,2000,2000,2000")
  loc_EB5810: Call 0.Method_arg_2B0 (1)
  loc_EB5815: Exit Sub
  loc_EB5816: ' Referenced from: EB578C
  loc_EB5816: Proc_6_60_E62BC4(var_B8)
  loc_EB581B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E45830
  'Data Table: 489B20
  Dim Me As Recordset15
  loc_E45807: Me.Requery -1
  loc_E45817: Me.Requery -1
  loc_E45827: Me.Requery -1
  loc_E4582C: Exit Sub
End Sub

Private Sub Form_Load() '111C1E8
  'Data Table: 489B20
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_88 As MSHFlexGrid
  loc_111BE88: On Error Goto loc_111C1E1
  loc_111BEA3: Proc_6_23_DFBA28(Me, 7590)
  loc_111BEB5: Set var_88 = Me.TopCtrl1
  loc_111BEBB: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_111BEC9: Call 0.Method_arg_50 (var_B0)
  loc_111BED9: Set var_88 = Me.TopCtrl1
  loc_111BEDF: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000F(CVar(var_B0))
  loc_111BEE8: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_111BF01: Set global_76 = New 
  loc_111BF13: Me.TopCtrl1.CursorLocation = 3
  loc_111BF2F: var_9C = "Select VT.V_Type As Code,VT.Description As Name,D.Name As Department From Voucher_Type VT Left Join Depart D On VT.RestCode=D.Code Where VT.NCat IN ('RSBIL','PBR','PBC','PRR','PRC','HSBIL') Order by Description"
  loc_111BF3B: Me.Open var_9C, CVar(MemVar_1F92044), 3
  loc_111BF49: CVarUnk
  loc_111BF4E: VerifyVarObj
  loc_111BF54: Set var_88 = Me.DGVType
  loc_111BF5A: LateIdStAd
  loc_111BF84: Me.DGVType.CursorLocation = 3
  loc_111BFAC: Me.Open "Select Code,Name,Nature,CalcSign,SysYN From SundryMast Order By Name", CVar(MemVar_1F92044), 3
  loc_111BFBA: CVarUnk
  loc_111BFBF: VerifyVarObj
  loc_111BFC5: Set var_88 = Me.DGSundry
  loc_111BFCB: LateIdStAd
  loc_111BFF5: Me.DGSundry.CursorLocation = 3
  loc_111C011: var_9C = "Select SubCode As Code,Name From ViewSubGroup Where Nature IN ('Expenditure','Revenue') or MainGrCodeS='030001' Order By Name"
  loc_111C02B: CVarUnk
  loc_111C030: VerifyVarObj
  loc_111C036: Set var_88 = Me.DGPostAC
  loc_111C03C: LateIdStAd
  loc_111C066: Me.DGPostAC.CursorLocation = 3
  loc_111C082: var_9C = "Select DISTINCT (SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode From SundryType SP Order By (SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))"
  loc_111C08E: r_9C, CVar(MemVar_1F92044), 3 var_9C, CVar(MemVar_1F92044), 3
  loc_111C0B6: Call Proc_53_52_E7C224(Proc_5_1_100CB50("INI", Me, New, 1, -1, Me, New, 1), -1, Me, New)
  loc_111C0C9: Set var_88 = Me.TopCtrl1
  loc_111C0CF: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C(True)
  loc_111C0E0: Set var_88 = Me.TopCtrl1
  loc_111C0E6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000B(False)
  loc_111C0FD: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000A(False)
  loc_111C105: Call Proc_53_45_12DF484(1, -1)
  loc_111C10A: Call Proc_53_51_13DB39C(Me.TopCtrl1)
  loc_111C115: Call 0.Method_Me0 (var_E4)
  loc_111C121: var_9C = CVar((var_E4 - CDbl(&H7D))) 'Single
  loc_111C12A: Set var_88 = Me.TopCtrl1
  loc_111C130: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010005(False)
  loc_111C14A: Me.FGrid.Left = CVar(CDbl(0))
  loc_111C158: Call 0.Method_Me0 (var_E4)
  loc_111C164: var_9C = CVar((var_E4 - CDbl(&H7D))) 'Single
  loc_111C173: Me.FGrid.Width = CVar(CDbl(0))
  loc_111C18E: Me.FGrid.Top = CVar(CDbl(1340))
  loc_111C1A0: var_C0 = Me.FGrid.Top
  loc_111C1AF: Call 0.Method_Me8 (var_E4, var_C0)
  loc_111C1C2: var_9C = CVar(((var_E4 - CDbl(400)) - CDbl(var_C0))) 'Single
  loc_111C1D1: Me.FGrid.Height = CVar(CDbl(1340))
  loc_111C1E0: Exit Sub
  loc_111C1E1: ' Referenced from: 111BE88
  loc_111C1E1: Proc_6_60_E62BC4(global_76)
  loc_111C1E6: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E66024
  'Data Table: 489B20
  loc_E65FDB: Set global_76 = Nothing
  loc_E65FED: Set global_72 = Nothing
  loc_E65FFF: Set global_80 = Nothing
  loc_E66011: Set global_84 = Nothing
  loc_E6601D: MasterFormExit = 0
  loc_E66020: Exit Sub
End Sub

Private Sub Form_Activate() 'E478D0
  'Data Table: 489B20
  loc_E478A0: On Error Goto loc_E478CA
  loc_E478A7: Set var_88 = Me.TopCtrl1
  loc_E478AD: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030010()
  loc_E478C2: If (CLng(CInt()) = &H2D) Then
  loc_E478C5:   Call TopCtrl1_UnknownEvent_1D()
  loc_E478CA:   ' Referenced from: E478A0
  loc_E478CA: End If
  loc_E478CA: Proc_6_60_E62BC4()
  loc_E478CF: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E256A4
  'Data Table: 489B20
  loc_E25689: If (MasterFormExit = &HFF) Then
  loc_E25699:   Me.Global.Unload Me
  loc_E256A1: End If
  loc_E256A1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27FC4
  'Data Table: 489B20
  loc_E27F9C: On Error Goto loc_E27FBC
  loc_E27FB3: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E27FBB: Exit Sub
  loc_E27FBC: ' Referenced from: E27F9C
  loc_E27FBC: Proc_6_60_E62BC4(Shift)
  loc_E27FC1: Exit Sub
End Sub

Private Sub DGSundry_UnknownEvent_9 '10866E4
  'Data Table: 489B20
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_17C As Variant
  loc_108644B: Me.DGSundry.Visible = False
  loc_108646A: If (Me.RecordCount > 0) Then
  loc_1086480:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1086488:   var_E4 = CVar(CLng(2)) 'Long
  loc_10864BB:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10864C3:   Set var_128 = Me.FGrid
  loc_10864C9:   LateIdCallSt
  loc_10864F8:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1086500:   var_E4 = CVar(CLng(3)) 'Long
  loc_1086533:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1086541:   LateIdCallSt
  loc_10865A8:   var_114 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_114, CVar(CLng(&HA)))) 'String
  loc_10865B6:   LateIdCallSt
  loc_108661B:   var_114 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_114)) 'String
  loc_1086623:   Set var_128 = Me.FGrid
  loc_1086629:   LateIdCallSt
  loc_1086656:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_108665E:   var_E4 = CVar(CLng(&HE)) 'Long
  loc_1086680:   var_B0 = Me.Fields.Item("SysYN")
  loc_1086691:   var_114 = CVar(CStr(var_B0.Value)) 'String
  loc_1086699:   Set var_128 = Me.FGrid
  loc_108669F:   LateIdCallSt
  loc_10866BB: End If
  loc_10866C6: Set var_A8 = Me.TxtGrid
  loc_10866CC: Call 0.Method_DGSundry_UnknownEvent_90 (CInt(3), var_B0, var_128, var_114, var_E4, var_A4, var_128)
  loc_10866D4: var_B0.SetFocus
  loc_10866E0: Exit Sub
  loc_10866E1: var_17C = CVar(var_114) 'String
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FB91D4
  'Data Table: 489B20
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FB9042: Set var_88 = Me.Txt
  loc_FB9048: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FB9056: Proc_6_74_E226B0(var_8C)
  loc_FB9062: Call Proc_53_53_EBA7D4(var_8C)
  loc_FB906A: var_92 = Index
  loc_FB9075: If (var_92 = CInt(0)) Then
  loc_FB90C6:   Set var_88 = Me.Txt
  loc_FB90CC:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FB90D4:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FB90EC:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_FB90EF:     Exit Sub
  loc_FB90F0:   End If
  loc_FB90FD:   Set var_88 = Me.Txt
  loc_FB9103:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FB910B:   var_A0 = var_8C.Text
  loc_FB9113:   var_D4 = CVar(var_A0) 'String
  loc_FB9158:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FB9161:     Me.MoveFirst
  loc_FB9186:     Set var_88 = Me.Txt
  loc_FB918C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name=")
  loc_FB9194:     0 = var_8C.Text
  loc_FB91A2:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0))
  loc_FB91B8:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_FB91D0:   End If
  loc_FB91D0: End If
  loc_FB91D0: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F6FA00
  'Data Table: 489B20
  Dim var_98 As DataGrid
  loc_F6F8DE: If (CLng(Shift) = &H1B) Then
  loc_F6F8E1:   Call Proc_53_53_EBA7D4()
  loc_F6F8E6:   Exit Sub
  loc_F6F8E7: End If
  loc_F6F8F5: If (KeyCode = CInt(0)) Then
  loc_F6F910:   Set var_9C = Nothing
  loc_F6F91B:   Set var_98 = Nothing
  loc_F6F949:   Proc_6_69_134A198(Me.DGVType, Me.Txt, KeyCode, global_76, Shift, 0)
  loc_F6F95D: End If
  loc_F6F98E: Set var_98 = Me.DGPostAC
  loc_F6F9B3: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_F6F9CB:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F6F9D4:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_F6F9D9:   End If
  loc_F6F9EE:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F6F9F7:     Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_F6F9FC:   End If
  loc_F6F9FC: End If
  loc_F6F9FC: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E05E40
  'Data Table: 489B20
  Dim var_86 As Integer
  loc_E05E33: Proc_6_58_E054C0(arg_10)
  loc_E05E3B: var_86 = KeyAscii
  loc_E05E3E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA5408
  'Data Table: 489B20
  loc_EA539A: If (KeyCode = CInt(0)) Then
  loc_EA53B9:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EA53CD:     var_A4 = "Name"
  loc_EA53F1:     Proc_6_68_129FB34(Me.DGVType, Me.Txt, KeyCode, global_76)
  loc_EA5404:   End If
  loc_EA5404: End If
  loc_EA5404: Exit Sub
  loc_EA5405: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4835C
  'Data Table: 489B20
  loc_E4833A: Set var_88 = Me.Txt
  loc_E48340: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4834E: Proc_6_73_E22704(var_8C)
  loc_E4835A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '110D678
  'Data Table: 489B20
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_94 As Label
  Dim var_C8 As TextBox
  loc_110D333: var_86 = Cancel
  loc_110D33E: If (var_86 = CInt(0)) Then
  loc_110D34C:   Set var_8C = Me.Txt
  loc_110D352:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_110D35A:   var_98 = "Voucher Type"
  loc_110D37B:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_110D389:     Set var_8C = Me.Txt
  loc_110D38F:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_110D397:     var_90.SetFocus
  loc_110D3A5:     arg_10 = &HFF
  loc_110D3A8:     Exit Sub
  loc_110D3A9:   End If
  loc_110D3F7:   Set var_8C = Me.Txt
  loc_110D3FD:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_110D405:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_110D41D:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_110D42D:     Set var_8C = Me.Txt
  loc_110D433:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_110D43B:     var_90.Text = vbNullString
  loc_110D454:     Set var_8C = Me.Txt
  loc_110D45A:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_110D462:     var_90.Tag = vbNullString
  loc_110D47B:     Me.LblDepart.Caption = vbNullString
  loc_110D486:   Else
  loc_110D4C1:     Set var_94 = Me.Txt
  loc_110D4C7:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_110D4CF:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_110D520:     Set var_94 = Me.Txt
  loc_110D526:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_110D52E:     var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_110D55E:     var_90 = Me.Fields.Item("Department")
  loc_110D57C:     Me.LblDepart.Caption = Proc_6_38_E68A98(CVar(var_90))
  loc_110D58E:     Call Proc_53_55_13239C0(var_86)
  loc_110D593:   End If
  loc_110D596: Else
  loc_110D59E:   If (var_86 = CInt(1)) Then
  loc_110D5AC:     Set var_8C = Me.Txt
  loc_110D5B2:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_110D5DB:     If (Proc_6_27_EA565C(var_90, "App. Date") = 0) Then
  loc_110D5E9:       Set var_8C = Me.Txt
  loc_110D5EF:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_110D5F7:       var_90.SetFocus
  loc_110D605:       arg_10 = &HFF
  loc_110D608:       Exit Sub
  loc_110D609:     End If
  loc_110D613:     Set var_8C = Me.Txt
  loc_110D619:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_110D639:     Set var_B4 = Me.Txt
  loc_110D63F:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_110D647:     var_C8.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_110D66C:     Me.FGrid.Col = CVar(CLng(1))
  loc_110D674:   End If
  loc_110D674: End If
  loc_110D674: Exit Sub
End Sub

Private Sub DGPostAC_UnknownEvent_9 'F7E8B0
  'Data Table: 489B20
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  loc_F7E777: Me.DGPostAC.Visible = False
  loc_F7E796: If (Me.RecordCount > 0) Then
  loc_F7E7AC:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F7E7B4:   var_E4 = CVar(CLng(&HF)) 'Long
  loc_F7E7E7:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_F7E7EF:   Set var_128 = Me.FGrid
  loc_F7E7F5:   LateIdCallSt
  loc_F7E824:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F7E82C:   var_E4 = CVar(CLng(&HD)) 'Long
  loc_F7E84E:   var_B0 = Me.Fields.Item("Name")
  loc_F7E85F:   var_114 = CVar(CStr(var_B0.Value)) 'String
  loc_F7E867:   Set var_128 = Me.FGrid
  loc_F7E86D:   LateIdCallSt
  loc_F7E889: End If
  loc_F7E894: Set var_A8 = Me.TxtGrid
  loc_F7E89A: Call 0.Method_DGPostAC_UnknownEvent_90 (CInt(&HD), var_B0, var_128, var_114, var_E4)
  loc_F7E8A2: var_B0.SetFocus
  loc_F7E8AE: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11E3490
  'Data Table: 489B20
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_11E3018: Call Proc_53_53_EBA7D4()
  loc_11E3030: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11E304B: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E3054: Set var_BC = Me.FGrid
  loc_11E308A: Set var_104 = Me.TxtGrid
  loc_11E3090: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_11E3098: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_11E30C9: var_110 = CLng(Me.FGrid.Col)
  loc_11E30D9: If (var_110 = CLng(3)) Then
  loc_11E30EB:   Set var_A8 = Me.TxtGrid
  loc_11E30F1:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E30F9:   var_BC.MaxLength = var_110
  loc_11E3146:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E3149:     Exit Sub
  loc_11E314A:   End If
  loc_11E315D:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E3165:   var_DC = CVar(CLng(3)) 'Long
  loc_11E3198:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E31A1:     Me.MoveFirst
  loc_11E31B9:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E31C1:     var_DC = CVar(CLng(2)) 'Long
  loc_11E31CA:     Set var_BC = Me.FGrid
  loc_11E31E1:     Proc_6_17_EAA2B0(var_128, CVar(CStr(var_BC.TextMatrix))), var_DC, var_94)
  loc_11E320A:     Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E323A:     If (Me.EOF = &HFF) Then
  loc_11E3243:       Me.MoveFirst
  loc_11E3248:     End If
  loc_11E3248:   End If
  loc_11E324B: Else
  loc_11E3252:   If Not (var_110 = CLng(7)) Then
  loc_11E325C:     If (var_110 = CLng(9)) Then
  loc_11E325F:     End If
  loc_11E326E:     Set var_A8 = Me.TxtGrid
  loc_11E3274:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_158)
  loc_11E327C:     var_BC.MaxLength = var_DC
  loc_11E3291:     If (global_70 = 0) Then
  loc_11E329C:       var_10C = "{Home}+{End}"
  loc_11E32A2:       Proc_303_0_FB9B68(CStr("Code=" & var_128), 0)
  loc_11E32AA:     End If
  loc_11E32AD:   Else
  loc_11E32B4:     If (var_110 = CLng(4)) Then
  loc_11E32C6:       Set var_A8 = Me.TxtGrid
  loc_11E32CC:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E32D4:       var_BC.MaxLength = var_94
  loc_11E32E3:     Else
  loc_11E32EA:       If (var_110 = CLng(5)) Then
  loc_11E32FC:         Set var_A8 = Me.TxtGrid
  loc_11E3302:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E330A:         var_BC.MaxLength = &H32
  loc_11E3319:       Else
  loc_11E3320:         If (var_110 = CLng(&HD)) Then
  loc_11E3332:           Set var_A8 = Me.TxtGrid
  loc_11E3338:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E3340:           var_BC.MaxLength = &H32
  loc_11E338D:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E3390:             Exit Sub
  loc_11E3391:           End If
  loc_11E33A4:           var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E33AC:           var_DC = CVar(CLng(&HD)) 'Long
  loc_11E33DF:           If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E33E8:             Me.MoveFirst
  loc_11E3428:             Proc_6_17_EAA2B0(var_128, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_11E3451:             Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E3481:             If (Me.EOF = &HFF) Then
  loc_11E348A:               Me.MoveFirst
  loc_11E348F:             End If
  loc_11E348F:           End If
  loc_11E348F:         End If
  loc_11E348F:       End If
  loc_11E348F:     End If
  loc_11E348F:   End If
  loc_11E348F: End If
  loc_11E348F: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13B904C
  'Data Table: 489B20
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C8 As Variant
  Dim var_94 As DataGrid
  loc_13B86DC: On Error Goto loc_13B9046
  loc_13B86E9: If (CLng(Shift) = &H1B) Then
  loc_13B86F9:   Set var_88 = Me.TxtGrid
  loc_13B86FF:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13B8719:   Set var_94 = Me.TxtGrid
  loc_13B871F:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_13B8727:   var_98.Text = var_8C.Tag
  loc_13B8743:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13B8748:   Call Proc_53_53_EBA7D4(arg_14)
  loc_13B8751:   Set var_88 = Me.FGrid
  loc_13B876E:   Set var_88 = Me.TxtGrid
  loc_13B8774:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13B877C:   var_8C.Visible = False
  loc_13B8788:   Exit Sub
  loc_13B8789: End If
  loc_13B879C: var_AC = CLng(Me.FGrid.Col)
  loc_13B87AC: If (var_AC = CLng(1)) Then
  loc_13B87B9:   If (CLng(Shift) = &HD) Then
  loc_13B87C2:     Call Proc_53_49_14EDDF0(KeyCode, var_AE)
  loc_13B87CD:     If (var_AE = &HFF) Then
  loc_13B87DB:       Set var_98 = Me.TxtGrid
  loc_13B8804:       Set var_8C = var_98
  loc_13B8813:       Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_70, &HF)
  loc_13B8823:     End If
  loc_13B8823:   End If
  loc_13B8826: Else
  loc_13B882D:   If (var_AC = CLng(3)) Then
  loc_13B883C:     Set var_88 = Me.TxtGrid
  loc_13B8842:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0)
  loc_13B884A:     3 = var_8C.Left
  loc_13B8861:     Me.DGSundry.Left = CVar(var_B8)
  loc_13B887B:     Set var_94 = Me.TxtGrid
  loc_13B8881:     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13B8889:     0 = var_98.Height
  loc_13B889A:     Set var_88 = Me.TxtGrid
  loc_13B88A0:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13B88A8:     var_AC = var_8C.Top
  loc_13B88B4:     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13B88C3:     Me.DGSundry.Top = CVar(var_B8)
  loc_13B88ED:     Set var_98 = Nothing
  loc_13B8926:     Proc_6_69_134A198(Me.DGSundry, Me.TxtGrid, KeyCode, global_80, Shift, &HFF)
  loc_13B8944:     If (CLng(Shift) = &HD) Then
  loc_13B894D:       Call Proc_53_49_14EDDF0(KeyCode, var_AE, 1, Nothing)
  loc_13B8958:       If (var_AE = &HFF) Then
  loc_13B899E:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF)
  loc_13B89AE:       End If
  loc_13B89AE:     End If
  loc_13B89B1:   Else
  loc_13B89B8:     If (var_AC = CLng(4)) Then
  loc_13B89FB:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B8A04:         Call Proc_53_49_14EDDF0(KeyCode, var_AE, 0, 4)
  loc_13B8A0F:         If (var_AE = &HFF) Then
  loc_13B8A55:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B8A65:         End If
  loc_13B8A65:       End If
  loc_13B8A68:     Else
  loc_13B8A6F:       If (var_AC = CLng(5)) Then
  loc_13B8AB2:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B8ABB:           Call Proc_53_49_14EDDF0(KeyCode, var_AE, 5, 0)
  loc_13B8AC6:           If (var_AE = &HFF) Then
  loc_13B8B0C:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B8B1C:           End If
  loc_13B8B1C:         End If
  loc_13B8B1F:       Else
  loc_13B8B26:         If (var_AC = CLng(6)) Then
  loc_13B8B69:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B8B72:             Call Proc_53_49_14EDDF0(KeyCode, var_AE, 6, 0)
  loc_13B8B7D:             If (var_AE = &HFF) Then
  loc_13B8BC3:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B8BD3:             End If
  loc_13B8BD3:           End If
  loc_13B8BD6:         Else
  loc_13B8BDD:           If (var_AC = CLng(7)) Then
  loc_13B8C20:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B8C29:               Call Proc_53_49_14EDDF0(KeyCode, var_AE, 7, 0)
  loc_13B8C34:               If (var_AE = &HFF) Then
  loc_13B8C7A:                 Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B8C8A:               End If
  loc_13B8C8A:             End If
  loc_13B8C8D:           Else
  loc_13B8C94:             If Not (var_AC = CLng(8)) Then
  loc_13B8C9E:               If (var_AC = CLng(&H10)) Then
  loc_13B8CA1:               End If
  loc_13B8CE1:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B8CEA:                 Call Proc_53_49_14EDDF0(KeyCode, var_AE, 8, 0)
  loc_13B8CF5:                 If (var_AE = &HFF) Then
  loc_13B8D3B:                   Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B8D4B:                 End If
  loc_13B8D4B:               End If
  loc_13B8D4E:             Else
  loc_13B8D55:               If (var_AC = CLng(9)) Then
  loc_13B8D98:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B8DA1:                   Call Proc_53_49_14EDDF0(KeyCode, var_AE, 9, 0)
  loc_13B8DAC:                   If (var_AE = &HFF) Then
  loc_13B8DF2:                     Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B8E02:                   End If
  loc_13B8E02:                 End If
  loc_13B8E05:               Else
  loc_13B8E0C:                 If (var_AC = CLng(&HC)) Then
  loc_13B8E4F:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B8E58:                     Call Proc_53_49_14EDDF0(KeyCode, var_AE, &HC, 0)
  loc_13B8E63:                     If (var_AE = &HFF) Then
  loc_13B8E71:                       Set var_98 = Me.TxtGrid
  loc_13B8E9A:                       Set var_8C = var_98
  loc_13B8EA9:                       Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_70, &HF, 0)
  loc_13B8EB9:                     End If
  loc_13B8EB9:                   End If
  loc_13B8EBC:                 Else
  loc_13B8EC3:                   If (var_AC = CLng(&HD)) Then
  loc_13B8ED2:                     Set var_88 = Me.TxtGrid
  loc_13B8ED8:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0, 0)
  loc_13B8EE0:                     0 = var_8C.Left
  loc_13B8EF7:                     Me.DGPostAC.Left = CVar(var_B8)
  loc_13B8F11:                     Set var_94 = Me.TxtGrid
  loc_13B8F17:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13B8F1F:                     var_98 = var_98.Height
  loc_13B8F30:                     Set var_88 = Me.TxtGrid
  loc_13B8F36:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13B8F3E:                     0 = var_8C.Top
  loc_13B8F4A:                     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13B8F59:                     Me.DGPostAC.Top = CVar(var_B8)
  loc_13B8F83:                     Set var_98 = Nothing
  loc_13B8FBC:                     Proc_6_69_134A198(Me.DGPostAC, Me.TxtGrid, KeyCode, global_84, Shift, &HFF)
  loc_13B8FDA:                     If (CLng(Shift) = &HD) Then
  loc_13B8FE3:                       Call Proc_53_49_14EDDF0(KeyCode, var_AE, 1, Nothing)
  loc_13B8FEE:                       If (var_AE = &HFF) Then
  loc_13B9036:                         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF)
  loc_13B9046:                       End If
  loc_13B9046:                     End If
  loc_13B9046:                   End If
  loc_13B9046:                 End If
  loc_13B9046:               End If
  loc_13B9046:             End If
  loc_13B9046:           End If
  loc_13B9046:         End If
  loc_13B9046:       End If
  loc_13B9046:       ' Referenced from: 13B86DC
  loc_13B9046:     End If
  loc_13B9046:   End If
  loc_13B9046: End If
  loc_13B9046: Proc_6_60_E62BC4(CByte(1), 0, 0)
  loc_13B904B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '116C334
  'Data Table: 489B20
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B4 As Integer
  Dim arg_10 As Integer
  Dim var_AC As TextBox
  loc_116BF6B: Proc_6_58_E054C0(arg_10)
  loc_116BF7C: If (KeyAscii = 0) Then
  loc_116BF92:   var_A0 = CLng(Me.FGrid.Col)
  loc_116BFA2:   If (var_A0 = CLng(3)) Then
  loc_116BFC1:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_116BFC8:       Set var_AC = Me.TxtGrid
  loc_116BFD3:       var_A4 = "Name"
  loc_116BFEE:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_80, arg_10)
  loc_116BFFD:     End If
  loc_116C000:   Else
  loc_116C007:     If Not (var_A0 = CLng(9)) Then
  loc_116C011:       If (var_A0 = CLng(7)) Then
  loc_116C014:       End If
  loc_116C01E:       Set var_8C = Me.TxtGrid
  loc_116C024:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_116C03F:       Proc_6_42_129A86C(var_AC, arg_10, 8, 2)
  loc_116C04E:     Else
  loc_116C055:       If (var_A0 = CLng(5)) Then
  loc_116C05B:         var_B4 = arg_10
  loc_116C067:         If Not (&H39 > var_B4 > &H31) Then
  loc_116C070:           If Not (var_B4 = &H2B) Then
  loc_116C079:             If Not (var_B4 = &H2D) Then
  loc_116C082:               If Not (var_B4 = 8) Then
  loc_116C08B:                 If (var_B4 = &H30) Then
  loc_116C08E:                 End If
  loc_116C08E:               End If
  loc_116C08E:             End If
  loc_116C08E:           End If
  loc_116C091:         Else
  loc_116C093:           arg_10 = 0
  loc_116C096:         End If
  loc_116C099:       Else
  loc_116C0A0:         If (var_A0 = CLng(6)) Then
  loc_116C0B0:           If ((arg_10 = &H50) Or (arg_10 = &H70)) Then
  loc_116C0C0:             Set var_8C = Me.TxtGrid
  loc_116C0C6:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Per", arg_10)
  loc_116C0CE:             var_AC.Text = var_B4
  loc_116C0DC:             arg_10 = 0
  loc_116C0E2:           Else
  loc_116C0EF:             If ((arg_10 = &H41) Or (arg_10 = &H5A)) Then
  loc_116C0FF:               Set var_8C = Me.TxtGrid
  loc_116C105:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Amt", arg_10)
  loc_116C10D:               var_AC.Text = 0
  loc_116C11B:               arg_10 = 0
  loc_116C121:             Else
  loc_116C12E:               Set var_8C = Me.TxtGrid
  loc_116C134:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_116C13C:               var_AC.Text = arg_10
  loc_116C14A:               arg_10 = 0
  loc_116C14D:             End If
  loc_116C14D:           End If
  loc_116C150:         Else
  loc_116C157:           If Not (var_A0 = CLng(8)) Then
  loc_116C161:             If (var_A0 = CLng(&HC)) Then
  loc_116C164:             End If
  loc_116C171:             If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_116C181:               Set var_8C = Me.TxtGrid
  loc_116C187:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_116C18F:               var_AC.Text = arg_10
  loc_116C19D:               arg_10 = 0
  loc_116C1A3:             Else
  loc_116C1B0:               If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_116C1C0:                 Set var_8C = Me.TxtGrid
  loc_116C1C6:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_116C1CE:                 var_AC.Text = arg_10
  loc_116C1DC:                 arg_10 = 0
  loc_116C1E2:               Else
  loc_116C1EF:                 Set var_8C = Me.TxtGrid
  loc_116C1F5:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_116C1FD:                 var_AC.Text = arg_10
  loc_116C20B:                 arg_10 = 0
  loc_116C20E:               End If
  loc_116C20E:             End If
  loc_116C211:           Else
  loc_116C218:             If (var_A0 = CLng(&H10)) Then
  loc_116C244:               If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_116C254:                 Set var_8C = Me.TxtGrid
  loc_116C25A:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Auto")
  loc_116C262:                 var_AC.Text = arg_10
  loc_116C270:                 arg_10 = 0
  loc_116C276:               Else
  loc_116C29F:                 If (Ucase(Chr(CLng(arg_10))) = "M") Then
  loc_116C2AF:                   Set var_8C = Me.TxtGrid
  loc_116C2B5:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Manual")
  loc_116C2BD:                   var_AC.Text = arg_10
  loc_116C2CB:                   arg_10 = 0
  loc_116C2CE:                 End If
  loc_116C2CE:               End If
  loc_116C2D1:             Else
  loc_116C2D8:               If (var_A0 = CLng(&HD)) Then
  loc_116C2F7:                 If (CBool(Me.DGPostAC.Visible) = &HFF) Then
  loc_116C324:                   Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_84, arg_10, "Name")
  loc_116C333:                 End If
  loc_116C333:               End If
  loc_116C333:             End If
  loc_116C333:           End If
  loc_116C333:         End If
  loc_116C333:       End If
  loc_116C333:     End If
  loc_116C333:   End If
  loc_116C333: End If
  loc_116C333: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FB93D8
  'Data Table: 489B20
  Dim var_9C As Long
  Dim var_AA As Integer
  Dim Shift As Integer
  loc_FB9228: On Error Goto loc_FB93D1
  loc_FB923E: var_9C = CLng(Me.FGrid.Col)
  loc_FB924E: If (var_9C = CLng(3)) Then
  loc_FB9274:   If ((Shift <> &HD) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_FB9282:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FB9296:     var_A4 = "Name"
  loc_FB92B1:     Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_80, Shift)
  loc_FB92C0:   End If
  loc_FB92C3: Else
  loc_FB92CA:   If Not (var_9C = CLng(6)) Then
  loc_FB92D4:     If Not (var_9C = CLng(8)) Then
  loc_FB92DE:       If Not (var_9C = CLng(&HC)) Then
  loc_FB92E8:         If Not (var_9C = CLng(5)) Then
  loc_FB92F2:           If (var_9C = CLng(&H10)) Then
  loc_FB92F5:           End If
  loc_FB92F5:         End If
  loc_FB92F5:       End If
  loc_FB92F5:     End If
  loc_FB92FB:     If (Shift <> &HD) Then
  loc_FB9304:       Call TxtGrid_KeyPress(KeyCode)
  loc_FB9309:     End If
  loc_FB930C:   Else
  loc_FB9313:     If (var_9C = CLng(&HD)) Then
  loc_FB9339:       If ((Shift <> &HD) And (CBool(Me.DGPostAC.Visible) = 0)) Then
  loc_FB9347:         Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FB9376:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_84, Shift, "Name", &HFF)
  loc_FB9385:       End If
  loc_FB9388:     Else
  loc_FB938F:       If (var_9C = CLng(5)) Then
  loc_FB9395:         var_AA = Shift
  loc_FB93A1:         If Not (&H39 > var_AA > &H31) Then
  loc_FB93AA:           If Not (var_AA = &H2B) Then
  loc_FB93B3:             If Not (var_AA = &H2D) Then
  loc_FB93BC:               If Not (var_AA = 8) Then
  loc_FB93C5:                 If (var_AA = &H30) Then
  loc_FB93C8:                 End If
  loc_FB93C8:               End If
  loc_FB93C8:             End If
  loc_FB93C8:           End If
  loc_FB93CB:         Else
  loc_FB93CD:           Shift = 0
  loc_FB93D0:         End If
  loc_FB93D0:       End If
  loc_FB93D0:     End If
  loc_FB93D0:   End If
  loc_FB93D0: End If
  loc_FB93D0: Exit Sub
  loc_FB93D1: ' Referenced from: FB9228
  loc_FB93D1: Proc_6_60_E62BC4(Shift, var_AA, 0, Shift)
  loc_FB93D6: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20784
  'Data Table: 489B20
  Dim arg_10 As Integer
  loc_E2076C: If (Cancel = 0) Then
  loc_E20775:   Call Proc_53_49_14EDDF0(Cancel, var_88)
  loc_E2077E:   arg_10 = Not(var_88)
  loc_E20781: End If
  loc_E20781: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'F3DAE4
  'Data Table: 489B20
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3D9DB: Me.DGVType.Visible = False
  loc_F3D9FA: If (Me.RecordCount > 0) Then
  loc_F3DA39:   Set var_B4 = Me.Txt
  loc_F3DA3F:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3DA47:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3DA7A:   var_B0 = Me.Fields.Item("Code")
  loc_F3DA99:   Set var_B4 = Me.Txt
  loc_F3DA9F:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3DAA7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3DABD: End If
  loc_F3DAC8: Set var_A8 = Me.Txt
  loc_F3DACE: Call 0.Method_DGVType_UnknownEvent_90 (CInt(0))
  loc_F3DAD6: var_B0.SetFocus
  loc_F3DAE2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E86C80
  'Data Table: 489B20
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E86C23: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E86C36: Set var_A8 = Me.TxtGrid
  loc_E86C3C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E86C44: var_AC.Visible = False
  loc_E86C5E: Set var_A8 = Me.TxtGrid
  loc_E86C64: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E86C6C: var_AC.MaxLength = 0
  loc_E86C78: Call Proc_53_53_EBA7D4()
  loc_E86C7D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68088
  'Data Table: 489B20
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68044: Set var_88 = Me.TxtGrid
  loc_E6804A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E68064: If (var_8C.Visible = 0) Then
  loc_E6807D:   Me.FGrid.BackColorSel = CVar(CLng(global_60))
  loc_E68085: End If
  loc_E68085: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1D830
  'Data Table: 489B20
  loc_E1D827: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D82F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF75C
  'Data Table: 489B20
  loc_DFF754: Call Proc_53_48_E3BE30()
  loc_DFF759: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1235C10
  'Data Table: 489B20
  Dim var_98 As Variant
  Dim var_D8 As Variant
  Dim var_E0 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim Cancel As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_12356E8: Set var_88 = Me.TopCtrl1
  loc_12356EE: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_123573E: If CBool(( = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1235747:   Call Form_KeyDown(Cancel, arg_10)
  loc_123574C: End If
  loc_1235750: Set var_88 = Me.TopCtrl1
  loc_1235756: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_123576B: If ( = "Browse") Then
  loc_123576E:   Exit Sub
  loc_123576F: End If
  loc_123578C: var_D8 = Me.FGrid.Rows
  loc_12357E3: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_D8) - 1))))) Then
  loc_12357F9:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1235809:   var_DC = "+{Tab}"
  loc_123580F:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_1235819:   Cancel = 0
  loc_123581F: Else
  loc_1235829:   var_B8 = Me.FGrid.Rows
  loc_1235876:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_123588C:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12358A2:     Proc_303_0_FB9B68("{Tab}", 0, var_B8)
  loc_12358AC:     Cancel = 0
  loc_12358E6:     If (MsgBox("Save Record ?", 4, "Save Data", var_D8, var_118) = 6) Then
  loc_12358E9:       Call TopCtrl1_UnknownEvent_19()
  loc_12358EE:     End If
  loc_12358EE:   End If
  loc_12358EE: End If
  loc_12358F4: global_68 = Cancel
  loc_123591A: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_123593E: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1235954:   var_11C = CLng(Me.FGrid.Col)
  loc_1235964:   If (var_11C = CLng(3)) Then
  loc_123597A:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1235982:     var_F8 = CVar(CLng(3)) 'Long
  loc_1235987:     var_12C = vbNullString
  loc_1235991:     Set var_E0 = Me.FGrid
  loc_1235997:     LateIdCallSt
  loc_12359BC:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12359C4:     var_F8 = CVar(CLng(2)) 'Long
  loc_12359C9:     var_12C = vbNullString
  loc_12359D3:     Set var_E0 = Me.FGrid
  loc_12359D9:     LateIdCallSt
  loc_12359FE:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1235A06:     var_F8 = CVar(CLng(&HA)) 'Long
  loc_1235A0B:     var_12C = vbNullString
  loc_1235A15:     Set var_E0 = Me.FGrid
  loc_1235A1B:     LateIdCallSt
  loc_1235A40:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1235A48:     var_F8 = CVar(CLng(&HB)) 'Long
  loc_1235A4D:     var_12C = vbNullString
  loc_1235A57:     Set var_E0 = Me.FGrid
  loc_1235A5D:     LateIdCallSt
  loc_1235A82:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1235A8A:     var_F8 = CVar(CLng(&HE)) 'Long
  loc_1235A8F:     var_12C = vbNullString
  loc_1235A99:     Set var_E0 = Me.FGrid
  loc_1235A9F:     LateIdCallSt
  loc_1235AB4:   Else
  loc_1235ABB:     If Not (var_11C = CLng(1)) Then
  loc_1235AC5:       If Not (var_11C = CLng(4)) Then
  loc_1235ACF:         If Not (var_11C = CLng(5)) Then
  loc_1235AD9:           If Not (var_11C = CLng(6)) Then
  loc_1235AE3:             If Not (var_11C = CLng(7)) Then
  loc_1235AED:               If Not (var_11C = CLng(8)) Then
  loc_1235AF7:                 If Not (var_11C = CLng(9)) Then
  loc_1235B01:                   If Not (var_11C = CLng(&HC)) Then
  loc_1235B0B:                     If (var_11C = CLng(&H10)) Then
  loc_1235B0E:                     End If
  loc_1235B0E:                   End If
  loc_1235B0E:                 End If
  loc_1235B0E:               End If
  loc_1235B0E:             End If
  loc_1235B0E:           End If
  loc_1235B0E:         End If
  loc_1235B0E:       End If
  loc_1235B21:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1235B39:       var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1235B3E:       var_12C = vbNullString
  loc_1235B48:       Set var_E4 = Me.FGrid
  loc_1235B4E:       LateIdCallSt
  loc_1235B69:     Else
  loc_1235B70:       If (var_11C = CLng(&HD)) Then
  loc_1235B86:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1235B8E:         var_F8 = CVar(CLng(&HD)) 'Long
  loc_1235B93:         var_12C = vbNullString
  loc_1235B9D:         Set var_E0 = Me.FGrid
  loc_1235BA3:         LateIdCallSt
  loc_1235BC8:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1235BD0:         var_F8 = CVar(CLng(&HF)) 'Long
  loc_1235BD5:         var_12C = vbNullString
  loc_1235BDF:         Set var_E0 = Me.FGrid
  loc_1235BE5:         LateIdCallSt
  loc_1235BF7:       End If
  loc_1235BF7:     End If
  loc_1235BF7:   End If
  loc_1235BF7: End If
  loc_1235BFD: If (Cancel = &HD) Then
  loc_1235C05:   global_70 = 0
  loc_1235C08: End If
  loc_1235C0A: Cancel = 0
  loc_1235C0D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E12BF0
  'Data Table: 489B20
  loc_E12BE1: Call FGrid_UnknownEvent_C()
  loc_E12BEB: global_70 = 0
  loc_E12BEE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1183768
  'Data Table: 489B20
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Long
  Dim var_C0 As String
  Dim var_DA As Integer
  Dim var_C4 As TextBox
  Dim var_D4 As TextBox
  loc_118338C: Set var_88 = Me.TopCtrl1
  loc_1183392: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_11833A7: If ( = "Browse") Then
  loc_11833AA:   Exit Sub
  loc_11833AB: End If
  loc_11833AF: Set var_88 = Me.TopCtrl1
  loc_11833B5: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_11833CA: If ( = "Browse") Then
  loc_11833CD:   Exit Sub
  loc_11833CE: End If
  loc_11833E1: var_BC = CLng(Me.FGrid.Col)
  loc_11833F1: If Not (var_BC = CLng(3)) Then
  loc_11833FB:   If Not (var_BC = CLng(4)) Then
  loc_1183405:     If Not (var_BC = CLng(&HD)) Then
  loc_118340F:       If Not (var_BC = CLng(6)) Then
  loc_1183419:         If Not (var_BC = CLng(8)) Then
  loc_1183423:           If Not (var_BC = CLng(&HC)) Then
  loc_118342D:             If (var_BC = CLng(&H10)) Then
  loc_1183430:             End If
  loc_1183430:           End If
  loc_1183430:         End If
  loc_1183430:       End If
  loc_1183430:     End If
  loc_1183430:   End If
  loc_1183434:   Set var_D4 = Me.FGrid
  loc_1183458:   var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1183485:   Set var_C4 = var_D4
  loc_1183497:   Proc_6_63_110ABA4(Me, var_C4, Me.TxtGrid, 0, 0)
  loc_11834BF:   Set var_88 = Me.TxtGrid
  loc_11834C5:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, Asc(var_C0))
  loc_11834CD:   0 = var_C4.Text
  loc_11834E6:   If (Len(var_C0) <= 1) Then
  loc_11834F5:     Set var_88 = Me.TxtGrid
  loc_11834FB:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_1183503:     var_DA = var_C4.Text
  loc_1183514:     Set var_C8 = Me.TxtGrid
  loc_118351A:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_1183522:     var_D4.Text = var_C0
  loc_1183535:   End If
  loc_1183541:   Set var_88 = Me.TxtGrid
  loc_1183547:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1183561:   Set var_C8 = Me.TxtGrid
  loc_1183567:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_118356F:   var_D4.SelStart = Len(var_C4.Text)
  loc_1183585: Else
  loc_118358C:   If (var_BC = CLng(5)) Then
  loc_11835CD:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_11835E2:   Else
  loc_11835E9:     If Not (var_BC = CLng(1)) Then
  loc_11835F3:       If Not (var_BC = CLng(9)) Then
  loc_11835FD:         If (var_BC = CLng(7)) Then
  loc_1183600:         End If
  loc_1183600:       End If
  loc_1183604:       Set var_D4 = Me.FGrid
  loc_1183628:       var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1183631:       var_DA = Asc(var_C0)
  loc_1183655:       Set var_C4 = var_D4
  loc_1183667:       Proc_6_63_110ABA4(Me, var_C4, Me.TxtGrid, 0, &HFF, var_DA)
  loc_118368F:       Set var_88 = Me.TxtGrid
  loc_1183695:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, 0, var_DA)
  loc_118369D:       0 = var_C4.Text
  loc_11836B6:       If (Len(var_C0) <= 1) Then
  loc_11836C5:         Set var_88 = Me.TxtGrid
  loc_11836CB:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_11836D3:         Cancel = var_C4.Text
  loc_11836E4:         Set var_C8 = Me.TxtGrid
  loc_11836EA:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4, var_C0)
  loc_11836F2:         var_D4.Text = 0
  loc_1183705:       End If
  loc_1183711:       Set var_88 = Me.TxtGrid
  loc_1183717:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1183731:       Set var_C8 = Me.TxtGrid
  loc_1183737:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_118373F:       var_D4.SelStart = Len(var_C4.Text)
  loc_1183752:     End If
  loc_1183752:   End If
  loc_1183752: End If
  loc_118375C: If (CLng(Cancel) <> &HD) Then
  loc_1183764:   global_70 = &HFF
  loc_1183767: End If
  loc_1183767: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'E6350C
  'Data Table: 489B20
  Dim var_88 As MSHFlexGrid
  loc_E634C8: Set var_88 = Me.TopCtrl1
  loc_E634CE: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E634E3: If ( = "Browse") Then
  loc_E634E6:   Exit Sub
  loc_E634E7: End If
  loc_E63504: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_E63507:   Exit Sub
  loc_E63508: End If
  loc_E63508: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1D6F0
  'Data Table: 489B20
  loc_E1D6E7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1D6EF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1D7E0
  'Data Table: 489B20
  loc_E1D7D7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D7DF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E426F0
  'Data Table: 489B20
  Dim var_8C As TextBox
  loc_E426C4: Call Proc_53_53_EBA7D4()
  loc_E426D4: Set var_88 = Me.TxtGrid
  loc_E426DA: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E426E2: var_8C.Visible = False
  loc_E426EE: Exit Sub
End Sub

Public Function MasterFormExitGet() '48A6A8
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '48A6B7
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '48A6C6
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '48A6D5
  SearchCode = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E971E8
  'Data Table: 489B20
  Dim Me As Recordset15
  loc_E97176: On Error Goto loc_E971DF
  loc_E9717F: Me.MoveFirst
  loc_E971A9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E971D1: Proc_5_0_110649C(&HFF, Me, global_72)
  loc_E971D9: Call Proc_53_51_13DB39C(0)
  loc_E971DE: Exit Sub
  loc_E971DF: ' Referenced from: E97176
  loc_E971DF: Proc_6_60_E62BC4(var_A0)
  loc_E971E4: Exit Sub
End Sub

Public Sub Proc_53_45_12DF484
  'Data Table: 489B20
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_12DEDC4: On Error Goto loc_12DF47D
  loc_12DEDD5: Set var_88 = Me.Txt
  loc_12DEDDB: Call 0.Method_Proc_53_45_12DF4840 (CInt(0), var_8C)
  loc_12DEDFA: Me.DGVType.Left = CVar(var_8C.Left)
  loc_12DEE16: Set var_B4 = Me.Txt
  loc_12DEE1C: Call 0.Method_Proc_53_45_12DF4840 (CInt(0), var_B8)
  loc_12DEE37: Set var_88 = Me.Txt
  loc_12DEE3D: Call 0.Method_Proc_53_45_12DF4840 (CInt(0), var_8C)
  loc_12DEE45: var_90 = var_8C.Top
  loc_12DEE55: var_A0 = CVar(((var_90 + var_B8.Height) + CDbl(&H19))) 'Single
  loc_12DEE64: Me.DGVType.Top = CVar(var_8C.Left)
  loc_12DEE7C: Call 0.Method_Me0 (var_90)
  loc_12DEE88: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_12DEE97: Me.FGrid.Width = CVar(var_8C.Left)
  loc_12DEEA5: Call 0.Method_Me8 (var_90)
  loc_12DEEB1: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_12DEEC0: Me.FGrid.Height = CVar(var_8C.Left)
  loc_12DEECC: Set var_C4 = Me.FGrid
  loc_12DEEDB: var_C4.Cols = &H11
  loc_12DEEEC: var_C4.Rows = 1
  loc_12DEF05: global_60 = CStr(CLng(var_C4.BackColor))
  loc_12DEF0F: var_A0 = 0
  loc_12DEF18: var_E8 = &H64
  loc_12DEF24: LateIdCallSt
  loc_12DEF2F: var_A0 = CVar(CLng(1)) 'Long
  loc_12DEF34: var_E8 = &H2EE
  loc_12DEF40: LateIdCallSt
  loc_12DEF48: var_A0 = 0
  loc_12DEF54: var_E8 = CVar(CLng(1)) 'Long
  loc_12DEF59: var_108 = "S.No"
  loc_12DEF62: LateIdCallSt
  loc_12DEF6D: var_A0 = CVar(CLng(1)) 'Long
  loc_12DEF78: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DEF7F: LateIdCallSt
  loc_12DEF8A: var_A0 = CVar(CLng(2)) 'Long
  loc_12DEF8F: var_E8 = 0
  loc_12DEF9B: LateIdCallSt
  loc_12DEFA6: var_A0 = CVar(CLng(3)) 'Long
  loc_12DEFAB: var_E8 = &H7D0
  loc_12DEFB7: LateIdCallSt
  loc_12DEFBF: var_A0 = 0
  loc_12DEFCB: var_E8 = CVar(CLng(3)) 'Long
  loc_12DEFD0: var_108 = "Sundry Name"
  loc_12DEFD9: LateIdCallSt
  loc_12DEFE4: var_A0 = CVar(CLng(3)) 'Long
  loc_12DEFEF: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DEFF6: LateIdCallSt
  loc_12DF001: var_A0 = CVar(CLng(4)) 'Long
  loc_12DF006: var_E8 = &H7D0
  loc_12DF012: LateIdCallSt
  loc_12DF01A: var_A0 = 0
  loc_12DF026: var_E8 = CVar(CLng(4)) 'Long
  loc_12DF02B: var_108 = "Disp. Name"
  loc_12DF034: LateIdCallSt
  loc_12DF03F: var_A0 = CVar(CLng(4)) 'Long
  loc_12DF04A: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF051: LateIdCallSt
  loc_12DF05C: var_A0 = CVar(CLng(5)) 'Long
  loc_12DF061: var_E8 = &H9C4
  loc_12DF06D: LateIdCallSt
  loc_12DF075: var_A0 = 0
  loc_12DF081: var_E8 = CVar(CLng(5)) 'Long
  loc_12DF086: var_108 = "Cal. Formula"
  loc_12DF08F: LateIdCallSt
  loc_12DF09A: var_A0 = CVar(CLng(5)) 'Long
  loc_12DF0A5: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF0AC: LateIdCallSt
  loc_12DF0B7: var_A0 = CVar(CLng(5)) 'Long
  loc_12DF0C2: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF0C9: LateIdCallSt
  loc_12DF0D4: var_A0 = CVar(CLng(6)) 'Long
  loc_12DF0D9: var_E8 = &H3E8
  loc_12DF0E5: LateIdCallSt
  loc_12DF0ED: var_A0 = 0
  loc_12DF0F9: var_E8 = CVar(CLng(6)) 'Long
  loc_12DF0FE: var_108 = "Per/Amt"
  loc_12DF107: LateIdCallSt
  loc_12DF112: var_A0 = CVar(CLng(6)) 'Long
  loc_12DF11D: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF124: LateIdCallSt
  loc_12DF12F: var_A0 = CVar(CLng(7)) 'Long
  loc_12DF134: var_E8 = &H4B0
  loc_12DF140: LateIdCallSt
  loc_12DF148: var_A0 = 0
  loc_12DF154: var_E8 = CVar(CLng(7)) 'Long
  loc_12DF159: var_108 = "Value"
  loc_12DF162: LateIdCallSt
  loc_12DF16D: var_A0 = CVar(CLng(7)) 'Long
  loc_12DF178: var_E8 = CVar(CInt(7)) 'Integer
  loc_12DF17F: LateIdCallSt
  loc_12DF18A: var_A0 = CVar(CLng(7)) 'Long
  loc_12DF195: var_E8 = CVar(CInt(7)) 'Integer
  loc_12DF19C: LateIdCallSt
  loc_12DF1A7: var_A0 = CVar(CLng(8)) 'Long
  loc_12DF1AC: var_E8 = &H3E8
  loc_12DF1B8: LateIdCallSt
  loc_12DF1C0: var_A0 = 0
  loc_12DF1CC: var_E8 = CVar(CLng(8)) 'Long
  loc_12DF1D1: var_108 = "Round Off"
  loc_12DF1DA: LateIdCallSt
  loc_12DF1E5: var_A0 = CVar(CLng(8)) 'Long
  loc_12DF1F0: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF1F7: LateIdCallSt
  loc_12DF202: var_A0 = CVar(CLng(&H10)) 'Long
  loc_12DF207: var_E8 = &H3E8
  loc_12DF213: LateIdCallSt
  loc_12DF21B: var_A0 = 0
  loc_12DF227: var_E8 = CVar(CLng(&H10)) 'Long
  loc_12DF22C: var_108 = "Auto/manual"
  loc_12DF235: LateIdCallSt
  loc_12DF240: var_A0 = CVar(CLng(&H10)) 'Long
  loc_12DF24B: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF252: LateIdCallSt
  loc_12DF25D: var_A0 = CVar(CLng(9)) 'Long
  loc_12DF262: var_E8 = &H4B0
  loc_12DF26E: LateIdCallSt
  loc_12DF276: var_A0 = 0
  loc_12DF282: var_E8 = CVar(CLng(9)) 'Long
  loc_12DF287: var_108 = "Limit"
  loc_12DF290: LateIdCallSt
  loc_12DF29B: var_A0 = CVar(CLng(9)) 'Long
  loc_12DF2A6: var_E8 = CVar(CInt(7)) 'Integer
  loc_12DF2AD: LateIdCallSt
  loc_12DF2B8: var_A0 = CVar(CLng(9)) 'Long
  loc_12DF2C3: var_E8 = CVar(CInt(7)) 'Integer
  loc_12DF2CA: LateIdCallSt
  loc_12DF2D5: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12DF2DA: var_E8 = &H7D0
  loc_12DF2E6: LateIdCallSt
  loc_12DF2EE: var_A0 = 0
  loc_12DF2FA: var_E8 = CVar(CLng(&HA)) 'Long
  loc_12DF2FF: var_108 = "Nature"
  loc_12DF308: LateIdCallSt
  loc_12DF313: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12DF31E: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF325: LateIdCallSt
  loc_12DF330: var_A0 = CVar(CLng(&HB)) 'Long
  loc_12DF335: var_E8 = &H384
  loc_12DF341: LateIdCallSt
  loc_12DF349: var_A0 = 0
  loc_12DF355: var_E8 = CVar(CLng(&HB)) 'Long
  loc_12DF35A: var_108 = "Calc. Sign"
  loc_12DF363: LateIdCallSt
  loc_12DF36E: var_A0 = CVar(CLng(&HB)) 'Long
  loc_12DF379: var_E8 = CVar(CInt(4)) 'Integer
  loc_12DF380: LateIdCallSt
  loc_12DF38B: var_A0 = CVar(CLng(&HE)) 'Long
  loc_12DF390: var_E8 = 0
  loc_12DF39C: LateIdCallSt
  loc_12DF3A7: var_A0 = CVar(CLng(&HC)) 'Long
  loc_12DF3AC: var_E8 = &H3E8
  loc_12DF3B8: LateIdCallSt
  loc_12DF3C0: var_A0 = 0
  loc_12DF3CC: var_E8 = CVar(CLng(&HC)) 'Long
  loc_12DF3D1: var_108 = "Sub Total"
  loc_12DF3DA: LateIdCallSt
  loc_12DF3E5: var_A0 = CVar(CLng(&HC)) 'Long
  loc_12DF3F0: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF3F7: LateIdCallSt
  loc_12DF402: var_A0 = CVar(CLng(&HD)) 'Long
  loc_12DF407: var_E8 = &HA8C
  loc_12DF413: LateIdCallSt
  loc_12DF41B: var_A0 = 0
  loc_12DF427: var_E8 = CVar(CLng(&HD)) 'Long
  loc_12DF42C: var_108 = "Post A/C"
  loc_12DF435: LateIdCallSt
  loc_12DF440: var_A0 = CVar(CLng(&HD)) 'Long
  loc_12DF44B: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DF452: LateIdCallSt
  loc_12DF45D: var_A0 = CVar(CLng(&HF)) 'Long
  loc_12DF462: var_E8 = 0
  loc_12DF46E: LateIdCallSt
  loc_12DF478: Set var_C4 = Nothing 
  loc_12DF47C: Exit Sub
  loc_12DF47D: ' Referenced from: 12DEDC4
  loc_12DF47D: Proc_6_60_E62BC4(var_C4, var_E8, var_A0, var_C4, var_E8, var_A0, var_C4, var_108)
  loc_12DF482: Exit Sub
End Sub

Public Sub Proc_53_46_FCA7C8
  'Data Table: 489B20
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_489B43 As Connection15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  loc_FCA663: If (Me.RecordCount = 0) Then
  loc_FCA666:   Proc_53_46_FCA7C8 = 
  loc_FCA66C: End If
  loc_FCA6A7: Set var_94 = Me.Txt
  loc_FCA6AD: Call 0.Method_Proc_53_46_FCA7C80 (CInt(0), var_98, var_9C, "Select Count(*) From SundryType Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (V_Type='", var_130, -1)
  loc_FCA6C5: var_DC = CVar(var_138 & var_9C & "' And AppDate=") 'String
  loc_FCA6D3: Set var_A8 = Me.Txt
  loc_FCA6D9: Call 0.Method_Proc_53_46_FCA7C80 (CInt(1), var_AC, var_DC)
  loc_FCA6E8: Proc_6_7_F25D88(var_CC, CVar(var_AC), 0)
  loc_FCA6F0: var_EC = var_14C & var_CC 
  loc_FCA707: unk_489B43.Execute CStr(var_EC & ")"), var_15C, 
  loc_FCA70F:  = var_98.Tag.Fields
  loc_FCA717:  = var_138.Item()
  loc_FCA71F:  = var_14C.Value
  loc_FCA75C: If (var_15C > 0) Then
  loc_FCA780:   MsgBox("Duplicate Entry", &H40, "Information", var_DC, var_EC)
  loc_FCA79B:   Set var_94 = Me.Txt
  loc_FCA7A1:   Call 0.Method_Proc_53_46_FCA7C80 (CInt(0))
  loc_FCA7A9:   var_98.SetFocus
  loc_FCA7BA:   Proc_53_46_FCA7C8 = &HFF
  loc_FCA7C0: End If
  loc_FCA7C0: Proc_53_46_FCA7C8 = var_98
End Sub

Public Sub Proc_53_47_115A0F0(arg_C, arg_10) '115A0F0
  'Data Table: 489B20
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F8 As Variant
  Dim var_C4 As String
  Dim var_E4 As Variant
  Dim var_138 As Variant
  Dim var_86 As Integer
  Dim var_A2 As Integer
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_178 As Boolean
  Dim var_9A As Integer
  Dim var_148 As Variant
  Dim var_118 As Variant
  loc_1159D54: var_B4 = CVar(CLng(arg_C)) 'Long
  loc_1159D5D: var_D4 = CVar(CLng(arg_10)) 'Long
  loc_1159D77: var_98 = CStr(Me.FGrid.TextMatrix))
  loc_1159D98: var_C4 = "+"
  loc_1159DB2: var_118 = Left(var_98, 1)
  loc_1159DBA: var_E4 = "-"
  loc_1159DD1: If CBool((Left(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_1159DF2:   MsgBox("Invalid Operator at Starting position of furmula", 0, var_108, var_118, var_128)
  loc_1159E02:   Proc_53_47_115A0F0 = &HFF
  loc_1159E08: End If
  loc_1159E20: var_C4 = "+"
  loc_1159E3A: var_118 = Right(var_98, 1)
  loc_1159E42: var_E4 = "-"
  loc_1159E59: If CBool((Right(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_1159E7A:   MsgBox("Invalid Operator at Ending position of furmula", 0, var_108, var_118, var_128)
  loc_1159E8A:   Proc_53_47_115A0F0 = &HFF
  loc_1159E90: End If
  loc_1159E92: var_86 = 0
  loc_1159E95: ' Referenced from: 115A0E4
  loc_1159E9F: If (Len(var_98) > 0) Then
  loc_1159EA4:   var_A2 = 0
  loc_1159EB9:   var_108 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_1159ECF:   var_F8 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_1159EEB:   var_B4 = (InStr(1, var_98, "-", 0) = 0)
  loc_1159F09:   var_138 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_1159F1F:   var_128 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_1159F3B:   var_E4 = (InStr(1, var_98, "+", 0) = 0)
  loc_1159F42:   var_168 = IIf(var_E4, var_128, (Right(var_98, 1) = var_C4) Or (IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108) = var_E4))
  loc_1159F72:   var_178 = (InStr(1, var_98, "+", 0) >= InStr(1, var_98, "-", 0))
  loc_1159F79:   var_188 = IIf(var_178, IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108), var_168)
  loc_1159F82:   var_9A = CInt(var_188)
  loc_1159FA2:   If (var_9A = 0) Then
  loc_1159FA8:     var_A0 = var_98
  loc_1159FAE:   Else
  loc_1159FC0:     var_F8 = Left(var_98, CLng((var_9A - 1)))
  loc_1159FC9:     var_A0 = CStr("Invalid Operator at Ending position of furmula")
  loc_1159FCF:   End If
  loc_1159FDA:   For var_18C = 1 To (arg_C - 1): var_88 = var_18C 'Integer
  loc_1159FE3:     var_148 = CVar(var_A0) 'String
  loc_1159FEB:     var_B4 = CVar(CLng(var_88)) 'Long
  loc_115A029:     If (CVar(CLng(1)) = Trim(CVar(CStr(Me.FGrid.TextMatrix))))) Then
  loc_115A02E:       var_A2 = &HFF
  loc_115A031:       Exit For
  loc_115A034:     End If
  loc_115A037:   Next var_18C 'Integer
  loc_115A03C:   ' Referenced from: 115A031
  loc_115A042:   If (var_A2 = 0) Then
  loc_115A050:     var_F8 = Trim(var_A0)
  loc_115A073:     var_108 = ("Invalid Row Reference " + var_F8)
  loc_115A07C:     var_118 = (CVar(CStr(Me.FGrid.TextMatrix))) + vbCrLf)
  loc_115A085:     var_128 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + "Please Enter Correct No.")
  loc_115A089:     MsgBox(var_128, &H40, "Validation", var_168, var_188)
  loc_115A0A4:     Proc_53_47_115A0F0 = &HFF
  loc_115A0AA:   End If
  loc_115A0B0:   If (var_9A = 0) Then
  loc_115A0B6:     var_98 = vbNullString
  loc_115A0BC:   Else
  loc_115A0D1:     var_108 = Mid(var_98, CLng((var_9A + 1)), var_F8)
  loc_115A0DA:     var_98 = CStr(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_115A0E4:   End If
  loc_115A0E4:   GoTo loc_1159E95
  loc_115A0E7: End If
  loc_115A0E7: Proc_53_47_115A0F0 = 
End Sub

Public Sub Proc_53_48_E3BE30
  'Data Table: 489B20
  loc_E3BE10: Set var_88 = Me.TopCtrl1
  loc_E3BE16: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E3BE2B: If ( = "Browse") Then
  loc_E3BE2E:   Exit Sub
  loc_E3BE2F: End If
  loc_E3BE2F: Exit Sub
End Sub

Public Sub Proc_53_49_14EDDF0(arg_C) '14EDDF0
  'Data Table: 489B20
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_86 As Integer
  Dim var_114 As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_B0 As String
  Dim var_138 As MSHFlexGrid
  Dim var_170 As Variant
  loc_14ECFC7: var_A0 = CLng(Me.FGrid.Col)
  loc_14ECFD7: If (var_A0 = CLng(3)) Then
  loc_14ECFFA:   var_A6 = Me.EOF
  loc_14ED028:   Set var_8C = Me.TxtGrid
  loc_14ED02E:   Call 0.Method_Proc_53_49_14EDDF00 (arg_C, var_AC, var_B0)
  loc_14ED036:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_14ED04E:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_14ED064:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED06C:     var_E0 = CVar(CLng(3)) 'Long
  loc_14ED071:     var_100 = vbNullString
  loc_14ED07B:     Set var_AC = Me.FGrid
  loc_14ED081:     LateIdCallSt
  loc_14ED0A6:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED0AE:     var_E0 = CVar(CLng(2)) 'Long
  loc_14ED0B3:     var_100 = vbNullString
  loc_14ED0BD:     Set var_AC = Me.FGrid
  loc_14ED0C3:     LateIdCallSt
  loc_14ED0E8:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED0F0:     var_E0 = CVar(CLng(&HA)) 'Long
  loc_14ED0F5:     var_100 = vbNullString
  loc_14ED0FF:     Set var_AC = Me.FGrid
  loc_14ED105:     LateIdCallSt
  loc_14ED12A:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED132:     var_E0 = CVar(CLng(&HB)) 'Long
  loc_14ED137:     var_100 = vbNullString
  loc_14ED141:     Set var_AC = Me.FGrid
  loc_14ED147:     LateIdCallSt
  loc_14ED16C:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED174:     var_E0 = CVar(CLng(&HE)) 'Long
  loc_14ED179:     var_100 = vbNullString
  loc_14ED183:     Set var_AC = Me.FGrid
  loc_14ED189:     LateIdCallSt
  loc_14ED19E:   Else
  loc_14ED1A1:     Call Proc_53_54_FBE784(var_A6, var_AC, var_100, var_E0, var_C0, var_AC, var_100, var_E0)
  loc_14ED1AC:     If (var_A6 = 0) Then
  loc_14ED1B4:       Proc_53_49_14EDDF0 = 0
  loc_14ED1BA:     End If
  loc_14ED1CD:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED1D5:     var_F0 = CVar(CLng(3)) 'Long
  loc_14ED208:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_14ED210:     Set var_138 = Me.FGrid
  loc_14ED216:     LateIdCallSt
  loc_14ED245:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED24D:     var_F0 = CVar(CLng(2)) 'Long
  loc_14ED280:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_14ED288:     Set var_138 = Me.FGrid
  loc_14ED28E:     LateIdCallSt
  loc_14ED2BD:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED2C5:     var_F0 = CVar(CLng(4)) 'Long
  loc_14ED2F8:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_14ED306:     LateIdCallSt
  loc_14ED36D:     var_134 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_14ED37B:     LateIdCallSt
  loc_14ED3E0:     var_134 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, Me.FGrid)) 'String
  loc_14ED3E8:     Set var_138 = Me.FGrid
  loc_14ED3EE:     LateIdCallSt
  loc_14ED41B:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED423:     var_F0 = CVar(CLng(&HE)) 'Long
  loc_14ED456:     var_134 = CVar(CStr(Me.Fields.Item("SysYN").Value)) 'String
  loc_14ED45E:     Set var_138 = Me.FGrid
  loc_14ED464:     LateIdCallSt
  loc_14ED480:   End If
  loc_14ED493:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED49B:   var_E0 = CVar(CLng(&H10)) 'Long
  loc_14ED4A0:   var_100 = "Manual"
  loc_14ED4AA:   Set var_AC = Me.FGrid
  loc_14ED4B0:   LateIdCallSt
  loc_14ED4DB:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14ED4E0:   var_E0 = 1
  loc_14ED4ED:   Set var_AC = Me.FGrid
  loc_14ED4FE:   var_B0 = CStr(var_AC.TextMatrix))
  loc_14ED517:   If (var_B0 <> vbNullString) Then
  loc_14ED51A:     var_C0 = vbNullString
  loc_14ED524:     Set var_8C = Me.FGrid
  loc_14ED535:   End If
  loc_14ED538: Else
  loc_14ED53F:   If Not (var_A0 = CLng(1)) Then
  loc_14ED549:     If (var_A0 = CLng(4)) Then
  loc_14ED54C:     End If
  loc_14ED588:     Set var_8C = Me.TxtGrid
  loc_14ED58E:     Call 0.Method_Proc_53_49_14EDDF00 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)))
  loc_14ED596:     var_E0 = var_AC.Text
  loc_14ED59E:     var_134 = CVar(var_B0) 'String
  loc_14ED5A6:     Set var_13C = Me.FGrid
  loc_14ED5AC:     LateIdCallSt
  loc_14ED5CD:   Else
  loc_14ED5D4:     If (var_A0 = CLng(5)) Then
  loc_14ED614:       Set var_8C = Me.TxtGrid
  loc_14ED61A:       Call 0.Method_Proc_53_49_14EDDF00 (arg_C, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_13C, var_134)
  loc_14ED622:       var_C0 = var_AC.Text
  loc_14ED62A:       var_134 = CVar(var_B0) 'String
  loc_14ED632:       Set var_13C = Me.FGrid
  loc_14ED638:       LateIdCallSt
  loc_14ED675:       If (CLng(Me.FGrid.Row) = 1) Then
  loc_14ED68B:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED694:         Set var_AC = Me.FGrid
  loc_14ED6A3:         var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_14ED6A8:         var_100 = vbNullString
  loc_14ED6B2:         Set var_114 = Me.FGrid
  loc_14ED6B8:         LateIdCallSt
  loc_14ED6D5:         Proc_53_49_14EDDF0 = &HFF
  loc_14ED6DB:       End If
  loc_14ED6E8:       Set var_8C = Me.TxtGrid
  loc_14ED6EE:       Call 0.Method_Proc_53_49_14EDDF00 (arg_C, var_AC, var_B0, var_114, var_100, var_E0, var_C0)
  loc_14ED6F6:       var_13C = var_AC.Text
  loc_14ED70D:       If (var_B0 <> vbNullString) Then
  loc_14ED74B:         Call Proc_53_47_115A0F0(CInt(CLng(Me.FGrid.Row)), CInt(CLng(Me.FGrid.Col)))
  loc_14ED764:         If (var_13E = &HFF) Then
  loc_14ED769:           var_86 = 0
  loc_14ED77F:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED788:           Set var_AC = Me.FGrid
  loc_14ED797:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_14ED79C:           var_100 = vbNullString
  loc_14ED7AC:           LateIdCallSt
  loc_14ED7C4:           Proc_53_49_14EDDF0 = Me.FGrid
  loc_14ED7CA:         End If
  loc_14ED7CA:       End If
  loc_14ED7CD:     Else
  loc_14ED7D4:       If Not (var_A0 = CLng(8)) Then
  loc_14ED7DE:         If (var_A0 = CLng(&HC)) Then
  loc_14ED7E1:         End If
  loc_14ED81D:         Set var_8C = Me.TxtGrid
  loc_14ED823:         Call 0.Method_Proc_53_49_14EDDF00 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_100, CVar(CLng(Me.FGrid.Col)))
  loc_14ED82B:         var_C0 = var_AC.Text
  loc_14ED841:         LateIdCallSt
  loc_14ED86C:         Set var_8C = Me.TxtGrid
  loc_14ED872:         Call 0.Method_Proc_53_49_14EDDF00 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0), var_86)
  loc_14ED87A:         var_13E = var_AC.Text
  loc_14ED891:         If (var_B0 = vbNullString) Then
  loc_14ED8A7:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED8B0:           Set var_AC = Me.FGrid
  loc_14ED8BF:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_14ED8C4:           var_100 = "No"
  loc_14ED8CE:           Set var_114 = Me.FGrid
  loc_14ED8D4:           LateIdCallSt
  loc_14ED8EC:         End If
  loc_14ED8EF:       Else
  loc_14ED8F6:         If (var_A0 = CLng(&H10)) Then
  loc_14ED8FD:           Set var_114 = Me.FGrid
  loc_14ED935:           Set var_8C = Me.TxtGrid
  loc_14ED93B:           Call 0.Method_Proc_53_49_14EDDF00 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_14ED943:           var_E0 = var_AC.Text
  loc_14ED959:           LateIdCallSt
  loc_14ED984:           Set var_8C = Me.TxtGrid
  loc_14ED98A:           Call 0.Method_Proc_53_49_14EDDF00 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_14ED992:           var_C0 = var_AC.Text
  loc_14ED9A9:           If (var_B0 = vbNullString) Then
  loc_14ED9BF:             var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14ED9C8:             Set var_AC = Me.FGrid
  loc_14ED9D7:             var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_14ED9DC:             var_100 = "Manual"
  loc_14ED9E6:             Set var_114 = Me.FGrid
  loc_14ED9EC:             LateIdCallSt
  loc_14EDA04:           End If
  loc_14EDA07:         Else
  loc_14EDA0E:           If (var_A0 = CLng(6)) Then
  loc_14EDA15:             Set var_114 = Me.FGrid
  loc_14EDA4D:             Set var_8C = Me.TxtGrid
  loc_14EDA53:             Call 0.Method_Proc_53_49_14EDDF00 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_14EDA5B:             var_E0 = var_AC.Text
  loc_14EDA71:             LateIdCallSt
  loc_14EDA9C:             Set var_8C = Me.TxtGrid
  loc_14EDAA2:             Call 0.Method_Proc_53_49_14EDDF00 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_14EDAAA:             var_C0 = var_AC.Text
  loc_14EDAC1:             If (var_B0 = vbNullString) Then
  loc_14EDAD7:               var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EDAE0:               Set var_AC = Me.FGrid
  loc_14EDAEF:               var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_14EDAF4:               var_100 = "Amt"
  loc_14EDAFE:               Set var_114 = Me.FGrid
  loc_14EDB04:               LateIdCallSt
  loc_14EDB1C:             End If
  loc_14EDB1F:           Else
  loc_14EDB26:             If Not (var_A0 = CLng(9)) Then
  loc_14EDB30:               If (var_A0 = CLng(7)) Then
  loc_14EDB33:               End If
  loc_14EDB3F:               Set var_8C = Me.TxtGrid
  loc_14EDB45:               Call 0.Method_Proc_53_49_14EDDF00 (0, var_AC, var_B0, var_114, var_100, var_E0)
  loc_14EDB4D:               var_C0 = var_AC.Text
  loc_14EDB70:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EDB88:               var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_14EDBB5:               var_170 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_14EDBBD:               Set var_13C = Me.FGrid
  loc_14EDBC3:               LateIdCallSt
  loc_14EDBED:             Else
  loc_14EDBF4:               If (var_A0 = CLng(&HD)) Then
  loc_14EDC45:                 Set var_8C = Me.TxtGrid
  loc_14EDC4B:                 Call 0.Method_Proc_53_49_14EDDF00 (arg_C, var_AC, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_13C, var_170, 1)
  loc_14EDC53:                 1 = var_AC.Text
  loc_14EDC6B:                 If (var_100 Or (var_B0 = vbNullString)) Then
  loc_14EDC81:                   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EDC89:                   var_E0 = CVar(CLng(&HF)) 'Long
  loc_14EDC8E:                   var_100 = vbNullString
  loc_14EDC98:                   Set var_AC = Me.FGrid
  loc_14EDC9E:                   LateIdCallSt
  loc_14EDCC3:                   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EDCCB:                   var_E0 = CVar(CLng(&HD)) 'Long
  loc_14EDCD0:                   var_100 = vbNullString
  loc_14EDCDA:                   Set var_AC = Me.FGrid
  loc_14EDCE0:                   LateIdCallSt
  loc_14EDCF5:                 Else
  loc_14EDD08:                   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EDD10:                   var_F0 = CVar(CLng(&HF)) 'Long
  loc_14EDD43:                   var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_14EDD4B:                   Set var_138 = Me.FGrid
  loc_14EDD51:                   LateIdCallSt
  loc_14EDD80:                   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EDD88:                   var_F0 = CVar(CLng(&HD)) 'Long
  loc_14EDDBB:                   var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_14EDDC3:                   Set var_138 = Me.FGrid
  loc_14EDDC9:                   LateIdCallSt
  loc_14EDDE5:                 End If
  loc_14EDDE5:               End If
  loc_14EDDE5:             End If
  loc_14EDDE5:           End If
  loc_14EDDE5:         End If
  loc_14EDDE5:       End If
  loc_14EDDE5:     End If
  loc_14EDDE5:   End If
  loc_14EDDE5: End If
  loc_14EDDEA: Proc_53_49_14EDDF0 = &HFF
End Sub

Public Sub Proc_53_50_F2BBBC
  'Data Table: 489B20
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F2BABE: Set var_8C = Me.Txt
  loc_F2BAC4: Call 0.Method_Proc_53_50_F2BBBCC (var_8E, var_86)
  loc_F2BAD4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F2BAEA:   Set var_8C = Me.Txt
  loc_F2BAF0:   Call 0.Method_Proc_53_50_F2BBBC0 (CInt(var_86), var_98)
  loc_F2BAF8:   var_98.Text = vbNullString
  loc_F2BB14:   Set var_8C = Me.Txt
  loc_F2BB1A:   Call 0.Method_Proc_53_50_F2BBBC0 (CInt(var_86), var_98)
  loc_F2BB22:   var_98.Tag = vbNullString
  loc_F2BB31: Next var_92 'Byte
  loc_F2BB44: Me.LblDepart.Caption = vbNullString
  loc_F2BB5F: Me.FGrid.Rows = 1
  loc_F2BB7C: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F2BB84: Set var_98 = Me.FGrid
  loc_F2BBB3: Me.FGrid.FixedRows = 1
  loc_F2BBBB: Exit Sub
End Sub

Public Sub Proc_53_51_13DB39C
  'Data Table: 489B20
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_D8 As Variant
  Dim unk_489B43 As Connection15
  Dim var_88 As Recordset15
  Dim var_124 As TextBox
  Dim var_120 As Label
  Dim var_8A As Integer
  Dim var_10C As Variant
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_11C As Variant
  loc_13DA9CC: On Error Goto loc_13DB394
  loc_13DA9E6: If (Me.RecordCount > 0) Then
  loc_13DA9E9:   Call Proc_53_50_F2BBBC()
  loc_13DA9FB:   var_C8 = "Select VT.Description,SP.*,SM.Name As SundryName,SG.Name As PostAcName,D.Name As Department From ((((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join Depart D On VT.RestCode=D.Code) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join ViewSubGroup SG On SP.PostAc=SG.SubCode) Where SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)='"
  loc_13DAA44:   unk_489B43.Execute CStr(var_C8 & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_11C, -1
  loc_13DAA4F:   Set var_88 = var_120
  loc_13DAA7D:   If (var_88.RecordCount > 0) Then
  loc_13DAAB6:     Set var_120 = Me.Txt
  loc_13DAABC:     Call 0.Method_Proc_53_51_13DB39C0 (CInt(0), var_124)
  loc_13DAAC4:     var_124.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("V_Type")))
  loc_13DAB0E:     Set var_120 = Me.Txt
  loc_13DAB14:     Call 0.Method_Proc_53_51_13DB39C0 (CInt(0), var_124)
  loc_13DAB1C:     var_124.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Description")))
  loc_13DAB69:     If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("Department"))) = vbNullString) Then
  loc_13DAB6C:     End If
  loc_13DABA1:     Me.LblDepart.Caption = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Department")))
  loc_13DAC05:     Set var_120 = Me.Txt
  loc_13DAC0B:     Call 0.Method_Proc_53_51_13DB39C0 (CInt(1), var_124, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/mm/yyyy")))
  loc_13DAC13:     var_124.Text = 1
  loc_13DAC2F:     var_8A = 1
  loc_13DAC45:     Me.FGrid.Rows = 1
  loc_13DAC4D:     ' Referenced from: 13DB30B
  loc_13DAC5C:     If Not(var_88.EOF) Then
  loc_13DAC5F:       var_A4 = vbNullString
  loc_13DAC69:       Set var_94 = Me.FGrid
  loc_13DAC7E:       Set var_12C = Me.FGrid
  loc_13DAC85:       var_C8 = CVar(CLng(var_8A)) 'Long
  loc_13DAC8D:       var_10C = CVar(CLng(1)) 'Long
  loc_13DACBD:       var_D8 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_13DACC4:       LateIdCallSt
  loc_13DAD13:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(2)))) 'String
  loc_13DAD1A:       LateIdCallSt
  loc_13DAD65:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(var_8A)))) 'String
  loc_13DAD6C:       LateIdCallSt
  loc_13DADB7:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13DADBE:       LateIdCallSt
  loc_13DAE09:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13DAE10:       LateIdCallSt
  loc_13DAE51:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13DAE59:       var_15C = CVar(CLng(6)) 'Long
  loc_13DAE8F:       var_17C = CVar(CStr(IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("PerOrAmt")), var_12C, "Per", FGrid.DispID_10000) = "P"), "Per", "Amt"))) 'String
  loc_13DAE96:       LateIdCallSt
  loc_13DAF13:       LateIdCallSt
  loc_13DAF51:       var_190 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoundOff")), var_12C, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_13DAF58:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13DAF60:       var_15C = CVar(CLng(8)) 'Long
  loc_13DAF96:       var_17C = CVar(CStr(IIf((var_190 = "Y"), "Yes", "No"))) 'String
  loc_13DAF9D:       LateIdCallSt
  loc_13DB01A:       LateIdCallSt
  loc_13DB069:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_12C, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_13DB070:       LateIdCallSt
  loc_13DB0BB:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(9)))) 'String
  loc_13DB0C2:       LateIdCallSt
  loc_13DB114:       LateIdCallSt
  loc_13DB14E:       var_190 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP")), var_12C, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_12C, var_D8)), CVar(CLng(var_8A)))
  loc_13DB19A:       LateIdCallSt
  loc_13DB1F4:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PostAc")), CVar(CLng(&HF)), CVar(CLng(var_8A)), var_12C, CVar(CStr(IIf((var_190 = "Y"), "Yes", "No"))), CVar(CLng(&HC)))) 'String
  loc_13DB1FB:       LateIdCallSt
  loc_13DB246:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PostAcName")), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13DB24D:       LateIdCallSt
  loc_13DB28E:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13DB296:       var_15C = CVar(CLng(&H10)) 'Long
  loc_13DB2C3:       var_11C = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("AutoManual")), var_12C, "Auto", CVar(CLng(var_8A))) = "A"), "Auto", "Manual")
  loc_13DB2CC:       var_17C = CVar(CStr(var_11C)) 'String
  loc_13DB2D3:       LateIdCallSt
  loc_13DB2F6:       Set var_12C = Nothing 
  loc_13DB300:       var_8A = (var_8A + 1)
  loc_13DB306:       var_88.MoveNext
  loc_13DB30B:       GoTo loc_13DAC4D
  loc_13DB30E:     End If
  loc_13DB30E:   End If
  loc_13DB30E:   var_A4 = 0
  loc_13DB318:   Set var_94 = Me.FGrid
  loc_13DB345:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_13DB348:     var_A4 = "1"
  loc_13DB352:     Set var_94 = Me.FGrid
  loc_13DB363:   End If
  loc_13DB363:   var_A4 = 1
  loc_13DB376:   Me.FGrid.FixedRows = var_A4
  loc_13DB381: Else
  loc_13DB381:   Call Proc_53_50_F2BBBC(FGrid.DispID_10000, var_A4, FGrid.DispID_2E, var_A4, var_8A, var_12C, var_17C)
  loc_13DB386: End If
  loc_13DB386: Call Proc_53_53_EBA7D4(var_15C, var_13C, var_12C)
  loc_13DB390: Set var_88 = Nothing
  loc_13DB393: Exit Sub
  loc_13DB394: ' Referenced from: 13DA9CC
  loc_13DB394: Proc_6_60_E62BC4(var_17C, var_15C)
  loc_13DB399: Exit Sub
End Sub

Public Sub Proc_53_52_E7C224(arg_C) 'E7C224
  'Data Table: 489B20
  Dim var_98 As TextBox
  loc_E7C1D2: Set var_8C = Me.Txt
  loc_E7C1D8: Call 0.Method_Proc_53_52_E7C224C (var_8E, var_86)
  loc_E7C1E8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7C1FE:   Set var_8C = Me.Txt
  loc_E7C204:   Call 0.Method_Proc_53_52_E7C2240 (CInt(var_86), var_98)
  loc_E7C20C:   var_98.Enabled = arg_C
  loc_E7C21B: Next var_92 'Byte
  loc_E7C221: Exit Sub
End Sub

Public Sub Proc_53_53_EBA7D4
  'Data Table: 489B20
  loc_EBA74C: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EBA75E:   Me.DGVType.Visible = False
  loc_EBA766: End If
  loc_EBA782: If (CBool(Me.DGPostAC.Visible) = &HFF) Then
  loc_EBA794:   Me.DGPostAC.Visible = False
  loc_EBA79C: End If
  loc_EBA7B8: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_EBA7CA:   Me.DGSundry.Visible = False
  loc_EBA7D2: End If
  loc_EBA7D2: Exit Sub
End Sub

Public Sub Proc_53_54_FBE784
  'Data Table: 489B20
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBE607: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_FBE60C:   var_92 = 3 'Byte
  loc_FBE610: End If
  loc_FBE619: Set var_98 = Me.TxtGrid
  loc_FBE61F: Call 0.Method_Proc_53_54_FBE7840 (0, var_B0)
  loc_FBE642: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBE676: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBE69A:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBE69D:     GoTo loc_FBE76F
  loc_FBE6A0:   End If
  loc_FBE6A4:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBE6CE:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBE6D8:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBE70D:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBE731:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBE74A:     Set var_98 = Me.TxtGrid
  loc_FBE750:     Call 0.Method_Proc_53_54_FBE7840 (0, var_B0, CVar(CLng(var_92)))
  loc_FBE758:     var_B0.SetFocus
  loc_FBE769:     Proc_53_54_FBE784 = 0
  loc_FBE76F:     ' Referenced from: FBE69D
  loc_FBE76F:   End If
  loc_FBE772: Next var_D4 'Integer
  loc_FBE77C: Proc_53_54_FBE784 = &HFF
End Sub

Public Sub Proc_53_55_13239C0
  'Data Table: 489B20
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_8A As Integer
  Dim var_C4 As String
  Dim var_C8 As String
  Dim unk_489B43 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_F8 As Variant
  Dim var_D8 As Field20
  Dim var_118 As Variant
  Dim var_108 As Variant
  Dim var_158 As Variant
  Dim var_E8 As Variant
  Dim var_178 As Variant
  loc_1323238: On Error Goto loc_13239B8
  loc_132324E: Me.FGrid.Rows = 2
  loc_132325A: Set var_B0 = Me.FGrid
  loc_1323260: var_C0 = var_B0.Row
  loc_132326A: var_8A = CInt(CLng(var_C0))
  loc_1323287: var_C4 = "SELECT SF.*,SM.Name as SundryName,SG.Name As PostAcName" & " FROM ((SundryTypeFix SF LEFT JOIN SundryMast SM ON SF.SundryCode = SM.Code)"
  loc_1323297: unk_489B43.Execute var_C4 & " LEFT JOIN ViewSubGroup SG On SF.PostAc=SG.SubCode) Order By SNo ", var_C0, -1
  loc_13232A2: Set var_88 = var_B0
  loc_13232C6: If (var_88.RecordCount > 0) Then
  loc_13232C9:   ' Referenced from: 1323914
  loc_13232D8:   If Not(var_88.EOF) Then
  loc_13232DB:     var_9C = vbNullString
  loc_13232E5:     Set var_B0 = Me.FGrid
  loc_13232FA:     Set var_D4 = Me.FGrid
  loc_1323301:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_1323309:     var_F8 = CVar(CLng(1)) 'Long
  loc_1323339:     var_118 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1323340:     LateIdCallSt
  loc_132338F:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_D4, var_118, CVar(CLng(2)))) 'String
  loc_1323396:     LateIdCallSt
  loc_13233E1:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_D4, var_118)) 'String
  loc_13233E8:     LateIdCallSt
  loc_1323433:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_D4, var_118)) 'String
  loc_132343A:     LateIdCallSt
  loc_1323450:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_132348C:     LateIdCallSt
  loc_13234C6:     var_C8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PerOrAmt")), var_D4, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_AC, var_D4, var_118)), var_AC)
  loc_13234CD:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_13234D5:     var_158 = CVar(CLng(6)) 'Long
  loc_132350B:     var_178 = CVar(CStr(IIf((var_C8 = "P"), "Per", "Amt"))) 'String
  loc_1323512:     LateIdCallSt
  loc_132358F:     LateIdCallSt
  loc_13235CD:     var_C8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoundOff")), var_D4, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_13235D4:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_13235DC:     var_158 = CVar(CLng(8)) 'Long
  loc_1323612:     var_178 = CVar(CStr(IIf((var_C8 = "Y"), "Yes", "No"))) 'String
  loc_1323619:     LateIdCallSt
  loc_1323696:     LateIdCallSt
  loc_13236E5:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_D4, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_13236EC:     LateIdCallSt
  loc_1323737:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_D4, var_118, CVar(CLng(9)))) 'String
  loc_132373E:     LateIdCallSt
  loc_1323790:     LateIdCallSt
  loc_13237CA:     var_C8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP")), var_D4, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_D4, var_118)), CVar(CLng(var_8A)))
  loc_13237D1:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_1323816:     LateIdCallSt
  loc_1323870:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PostAc")), CVar(CLng(&HF)), CVar(CLng(var_8A)), var_D4, CVar(CStr(IIf((var_C8 = "Y"), "Yes", "No"))), CVar(CLng(&HC)))) 'String
  loc_1323877:     LateIdCallSt
  loc_13238C2:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PostAcName")), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_D4, var_118)) 'String
  loc_13238C9:     LateIdCallSt
  loc_13238DF:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_13238E7:     var_E8 = CVar(CLng(&H10)) 'Long
  loc_13238EC:     var_108 = "Manual"
  loc_13238F5:     LateIdCallSt
  loc_13238FF:     Set var_D4 = Nothing 
  loc_1323909:     var_8A = (var_8A + 1)
  loc_132390F:     var_88.MoveNext
  loc_1323914:     GoTo loc_13232C9
  loc_1323917:   End If
  loc_132392A:   Me.FGrid.FixedRows = 1
  loc_1323932: End If
  loc_1323938: If (var_8A = 1) Then
  loc_132394E:   Me.FGrid.Rows = 1
  loc_132396B:   var_118 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1323973:   Set var_D8 = Me.FGrid
  loc_132398F:   var_9C = 1
  loc_13239A2:   Me.FGrid.FixedRows = var_9C
  loc_13239AA: End If
  loc_13239AA: Call Proc_53_53_EBA7D4(FGrid.DispID_10000, var_118, var_8A, var_D4, var_108, var_E8, var_9C)
  loc_13239B4: Set var_88 = Nothing
  loc_13239B7: Exit Sub
  loc_13239B8: ' Referenced from: 1323238
  loc_13239B8: Proc_6_60_E62BC4(var_D4, var_118, var_108)
  loc_13239BD: Exit Sub
End Sub
