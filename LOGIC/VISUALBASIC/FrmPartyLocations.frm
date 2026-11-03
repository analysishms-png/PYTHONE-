VERSION 5.00
Begin VB.Form FrmPartyLocations
  Caption = "Party Locations"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6480
  ClientHeight = 6555
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 6480
    Height = 420
    TabIndex = 8
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1395
    Top = 870
    Width = 1485
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1395
    Top = 600
    Width = 4500
    Height = 255
    TabIndex = 0
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
    BackColor = &HFFC0C0&
    ForeColor = &H80000012&
    Left = 1065
    Top = 2460
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGSundry
    Left = 6360
    Top = 2400
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin DataGrid DGVType
    Left = 5805
    Top = 1620
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MSHFlexGrid FGrid
    Left = 1395
    Top = 1395
    Width = 5145
    Height = 4275
    TabIndex = 2
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 270
    Top = 6945
    Width = 3375
    Height = 285
    TabIndex = 10
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
    Left = 270
    Top = 7230
    Width = 3330
    Height = 255
    TabIndex = 9
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
  Begin Label LblName
    Caption = "App Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 225
    Top = 870
    Width = 780
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
  Begin Label LblName
    Caption = "Party Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 225
    Top = 600
    Width = 990
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
End

Attribute VB_Name = "FrmPartyLocations"

Private MasterFormExit As Integer
Private global_92 As Integer
Private global_94 As Integer

Private Sub TopCtrl1_UnknownEvent_A 'E7FC9C
  'Data Table: 488AF8
  Dim var_94 As TextBox
  loc_E7FC38: On Error Goto loc_E7FC94
  loc_E7FC5E: Call Proc_326_58_E7B9D4(Proc_5_1_100CB50("ADD", Me))
  loc_E7FC69: Call Proc_326_56_F19F20(global_96)
  loc_E7FC79: Set var_8C = Me.Txt
  loc_E7FC7F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_E7FC87: var_94.SetFocus
  loc_E7FC93: Exit Sub
  loc_E7FC94: ' Referenced from: E7FC38
  loc_E7FC94: Proc_6_60_E62BC4(var_94)
  loc_E7FC99: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EE77F0
  'Data Table: 488AF8
  loc_EE7734: On Error Goto loc_EE77E9
  loc_EE776E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EE7794:   Call Proc_326_58_E7B9D4(Proc_5_1_100CB50("INI", Me))
  loc_EE77A7:   Set var_10C = Me.TopCtrl1
  loc_EE77AD:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030019(True)
  loc_EE77BE:   Set var_10C = Me.TopCtrl1
  loc_EE77C4:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030016(False)
  loc_EE77D5:   Set var_10C = Me.TopCtrl1
  loc_EE77DB:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030017(False)
  loc_EE77E3:   Call Proc_326_57_12F9C3C(global_96)
  loc_EE77E8: End If
  loc_EE77E8: Exit Sub
  loc_EE77E9: ' Referenced from: EE7734
  loc_EE77E9: Proc_6_60_E62BC4()
  loc_EE77EE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17300
  'Data Table: 488AF8
  loc_E172F5: Me.Global.Unload Me
  loc_E172FD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EF27EC
  'Data Table: 488AF8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EF2720: On Error Goto loc_EF27E6
  loc_EF273A: If (Me.RecordCount <= 0) Then
  loc_EF2743:   var_B8 = "Information"
  loc_EF275E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EF276E:   Exit Sub
  loc_EF276F: End If
  loc_EF2777: If (MemVar_1F923AC = "A") Then
  loc_EF2781:   var_10C = "Select DISTINCT (PL.PrCode+Space(8-len(PL.PrCode))+'**'+Format(PL.AppDate,'dd/mm/yyyy')) AS Code,S.Name As PartyName,Format(PL.AppDate,'dd/mm/yyyy') From (PartyLocation PL Left Join SubGroup S On PL.PrCode=S.SubCode) Where (PL.LOGSITE_CODE='" & MemVar_1F92078
  loc_EF2788:   MemVar_1F920E4 = var_10C & "' or PL.LOGSITE_CODE='HO') Order By (PL.PrCode+Space(8-len(PL.PrCode))+'**'+Format(PL.AppDate,'dd/mm/yyyy'))"
  loc_EF2792: Else
  loc_EF279A:   If (MemVar_1F923AC = "S") Then
  loc_EF27A4:     var_10C = "Select DISTINCT (PL.PrCode+Space(8-len(PL.PrCode))+'**'+Convert(Varchar(11),PL.AppDate,103)) AS Code,S.Name As PartyName,Convert(Varchar(11),PL.AppDate,103) From (PartyLocation PL Left Join SubGroup S On PL.PrCode=S.SubCode) Where (PL.LOGSITE_CODE='" & MemVar_1F92078
  loc_EF27AB:     MemVar_1F920E4 = var_10C & "' or PL.LOGSITE_CODE='HO') Order By (PL.PrCode+Space(8-len(PL.PrCode))+'**'+Convert(Varchar(11),PL.AppDate,103))"
  loc_EF27B2:   End If
  loc_EF27B2: End If
  loc_EF27B8: MemVar_1F92120 = Me
  loc_EF27C5: Proc_6_126_F1BCC0("3500,1500", MemVar_1F920E4)
  loc_EF27E0: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EF27E5: Exit Sub
  loc_EF27E6: ' Referenced from: EF2720
  loc_EF27E6: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EF27EB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E323B8
  'Data Table: 488AF8
  loc_E323A8: Proc_5_0_110649C(&HFF, Me)
  loc_E323B0: Call Proc_326_57_12F9C3C(global_96)
  loc_E323B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E32418
  'Data Table: 488AF8
  loc_E32408: Proc_5_0_110649C(&HFF, Me)
  loc_E32410: Call Proc_326_57_12F9C3C(global_96)
  loc_E32415: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E32478
  'Data Table: 488AF8
  loc_E32468: Proc_5_0_110649C(&HFF, Me)
  loc_E32470: Call Proc_326_57_12F9C3C(global_96)
  loc_E32475: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E32598
  'Data Table: 488AF8
  loc_E32588: Proc_5_0_110649C(&HFF, Me)
  loc_E32590: Call Proc_326_57_12F9C3C(global_96)
  loc_E32595: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '107D3C4
  'Data Table: 488AF8
  Dim var_A0 As String
  Dim unk_488B0F As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_136 As Integer
  Dim var_CC As Variant
  loc_107D13C: On Error Goto loc_107D39A
  loc_107D153: var_A0 = "select PL.PrCode, S.Name, PL.LcCode, L.Name as Location, PL.AppDate from ((PartyLocation PL Left Join Subgroup S on PL.PrCode=S.Subcode) Left Join LocationMast L on PL.LcCode=L.Code) Where PL.LogSite_Code='" & MemVar_1F92078
  loc_107D171: unk_488B0F.Execute var_A0 & "' and PL.Site_Code='" & MemVar_1F92070 & "' Order By L.Name", var_CC, -1
  loc_107D17C: Set var_88 = var_D0
  loc_107D196: var_D4 = var_88.RecordCount
  loc_107D1A4: If (var_D4 = 0) Then
  loc_107D1C0:   MsgBox("No Record Present For Printing", 0, var_F4, var_114, var_134)
  loc_107D1D0:   Exit Sub
  loc_107D1D1: End If
  loc_107D1E7: Set var_D0 = var_88 
  loc_107D1F3: var_136 = CreateFieldDefFile(var_D0, MemVar_1F920B4 & "\PartyLocation.ttx")
  loc_107D1FD: Set var_88 = var_D0
  loc_107D203: var_BC = CVar(var_136) 'Integer
  loc_107D206: var_98 = var_BC 'Variant
  loc_107D222: var_A0 = MemVar_1F920B4 & "\PartyLocation.RPT"
  loc_107D22B: Call 0.Method_arg_1C (var_A0, var_BC, var_D0)
  loc_107D236: MemVar_1F921E4 = var_D0
  loc_107D251: Call 0.Method_arg_90 (var_D0, var_D4, var_9A, 1)
  loc_107D259: Call 0.Method_arg_24 (var_136, &HFF)
  loc_107D265: For var_13A =  To CInt(var_D4): var_D0 = var_13A 'Integer
  loc_107D27E:   Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_107D286:   Call 0.Method_arg_20 (var_140)
  loc_107D28E:   Call 0.Method_arg_30 (var_A0)
  loc_107D2D4:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_107D2EA:     Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_107D2F2:     Call 0.Method_arg_20 (var_140)
  loc_107D2FA:     Call 0.Method_arg_38 ("'Party Locations'")
  loc_107D306:   End If
  loc_107D309: Next var_13A 'Integer
  loc_107D327: Call 0.Method_arg_64 (var_D0, CVar(var_88))
  loc_107D32F: Call 0.Method_arg_2C (var_E4)
  loc_107D33D: Call 0.Method_arg_150 (var_104)
  loc_107D348: Call 0.Method_arg_50 (var_A0)
  loc_107D352: Set var_140 = Nothing
  loc_107D36C: Set var_D0 = MemVar_1F921E4 
  loc_107D378: Proc_6_99_1483714(var_D0, 0, var_A0)
  loc_107D383: MemVar_1F921E4 = var_D0
  loc_107D396: Set var_88 = Nothing
  loc_107D399: Exit Sub
  loc_107D39A: ' Referenced from: 107D13C
  loc_107D3A0: Call 0.Method_arg_50 (var_A0, &HFF)
  loc_107D3B5: Proc_183_57_104AA84(var_A0, "TopCtrl1_ePrn")
  loc_107D3C1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E21D80
  'Data Table: 488AF8
  Dim Me As Recordset15
  loc_E21D67: Me.Requery -1
  loc_E21D77: Me.Requery -1
  loc_E21D7C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13A7824
  'Data Table: 488AF8
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_124 As String
  Dim var_98 As TextBox
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_194 As Variant
  Dim var_198 As String
  Dim unk_488B0F As Connection15
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_1CC As String
  Dim var_114 As Variant
  Dim var_D4 As Variant
  Dim var_1D8 As MSHFlexGrid
  Dim var_1B8 As Variant
  Dim var_23C As Variant
  Dim var_36C As Variant
  Dim var_1BC As TextBox
  Dim Me As Recordset15
  loc_13A6F78: On Error Goto loc_13A77CF
  loc_13A6F7F: var_86 = CByte(0) 'Byte
  loc_13A6F8E: Set var_90 = Me.Txt
  loc_13A6F94: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_13A6FBD: If (Proc_6_27_EA565C(var_94, "Party Name") = 0) Then
  loc_13A6FC7:   Call Txt_GotFocus()
  loc_13A6FCC:   Exit Sub
  loc_13A6FCD: End If
  loc_13A6FD8: Set var_90 = Me.Txt
  loc_13A6FDE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_13A6FE6: var_9C = "App. Date"
  loc_13A6FEF: Set var_98 = var_94
  loc_13A7007: If (Proc_6_27_EA565C(var_98, var_9C) = 0) Then
  loc_13A7011:   Call Txt_GotFocus()
  loc_13A7016:   Exit Sub
  loc_13A7017: End If
  loc_13A701A: Call Proc_326_53_FC9DDC(var_9E, CInt(1))
  loc_13A7025: If (var_9E = &HFF) Then
  loc_13A7028:   Exit Sub
  loc_13A7029: End If
  loc_13A704E: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B4 'Integer
  loc_13A707F:   If ((var_88 > 0) And (CLng(var_88) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_13A7086:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_13A708E:     var_E4 = CVar(CLng(1)) 'Long
  loc_13A70A8:     var_104 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13A70AE:     var_114 = Trim(var_104)
  loc_13A70CA:     If (var_114 = vbNullString) Then
  loc_13A70E6:       MsgBox("Define Location ", &H40, var_104, var_114, var_134)
  loc_13A70F6:       Exit Sub
  loc_13A70F7:     End If
  loc_13A7136:     Set var_94 = Me.Txt
  loc_13A713C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_9C, CVar(CLng(1)), CVar(CLng(var_88)))
  loc_13A7144:     var_E4 = var_98.Tag
  loc_13A7156:     var_124 = "Select S.Name As PartyName From (PartyLocation PL Left Join SubGroup S On PL.PrCode=S.SubCode) where PL.ActiveYN='Y' And LcCode='"
  loc_13A715E:     var_134 = var_124 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_13A7167:     var_154 = var_134 & "' And PL.PrCode Not In('" 
  loc_13A716E:     var_164 = CVar(var_9C) 'String
  loc_13A7188:     unk_488B0F.Execute CStr(var_154 & var_164 & "')"), var_1B8, -1
  loc_13A7193:     Set var_8C = var_1BC
  loc_13A71CD:     If (var_8C.RecordCount > 0) Then
  loc_13A71EB:       var_B0 = Me.FGrid.TextMatrix)
  loc_13A7206:       var_94 = var_8C.Fields
  loc_13A720E:       var_98 = var_94.Item("PartyName")
  loc_13A7216:       var_104 = CVar(var_98) 'Address
  loc_13A7234:       var_9C = CStr(var_B0)
  loc_13A724C:       var_1CC = var_9C & " Already Asigned to " & Proc_6_38_E68A98(var_104, var_B0, CVar(CLng(2)), CVar(CLng(var_88)), var_1BC) & vbCrLf
  loc_13A7253:       var_114 = CVar(var_1CC & "Please Define New Entry For The Party First") 'String
  loc_13A7256:       MsgBox(var_114, &H40, var_134, var_154, var_164)
  loc_13A7280:       Exit Sub
  loc_13A7281:     End If
  loc_13A7281:   End If
  loc_13A7284: Next var_B4 'Integer
  loc_13A72A7: Set var_90 = Me.Txt
  loc_13A72AD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "Select * From PartyLocation where ActiveYN='Y' And PrCode='")
  loc_13A72B5: var_B0 = var_94.Tag
  loc_13A72BE: var_198 = -1 & var_9C
  loc_13A72CE: unk_488B0F.Execute var_9C & " Already Asigned to " & "'", var_98, 
  loc_13A72F7: var_1C0 = var_98.RecordCount
  loc_13A7305: If (var_1C0 > 0) Then
  loc_13A7316:   Set var_90 = Me.Txt
  loc_13A731C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94)
  loc_13A7324:   var_9C = var_94.Text
  loc_13A7375:   If (MsgBox(CVar("R u Going To Make New Entry For " & var_9C & vbCrLf & "The Previous One Will be Uneffective"), &H141, var_104, var_114, var_134) = 2) Then
  loc_13A7378:     Exit Sub
  loc_13A7379:   End If
  loc_13A7379: End If
  loc_13A7382: unk_488B0F.BeginTrans var_1C0
  loc_13A738B: var_86 = CByte(1) 'Byte
  loc_13A73AD: Set var_90 = Me.Txt
  loc_13A73B3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "Update PartyLocation Set ActiveYN='N' where ActiveYN='Y' And PrCode='")
  loc_13A73BB: var_B0 = var_94.Tag
  loc_13A73C4: var_198 = -1 & var_9C
  loc_13A73D4: unk_488B0F.Execute "R u Going To Make New Entry For " & var_9C & "'", var_98, 
  loc_13A7413: For var_1D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_1D4 'Integer
  loc_13A741D:   var_C4 = CVar(CLng(var_88)) 'Long
  loc_13A7425:   var_E4 = CVar(CLng(1)) 'Long
  loc_13A743F:   var_104 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13A7461:   If CBool(Trim(var_104) <> vbNullString) Then
  loc_13A7472:     Set var_90 = Me.Txt
  loc_13A7478:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C)
  loc_13A7480:     var_E4 = var_94.Tag
  loc_13A7490:     Set var_98 = Me.Txt
  loc_13A7496:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1BC)
  loc_13A74A5:     Proc_6_7_F25D88(var_104, CVar(var_1BC))
  loc_13A74AE:     var_D4 = CVar(CLng(var_88)) 'Long
  loc_13A74C5:     var_164 = Me.FGrid.TextMatrix)
  loc_13A74D5:     Set var_1DC = Me.TopCtrl1
  loc_13A74DB:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_164)
  loc_13A7520:     Proc_6_7_F25D88(var_2BC, Date, CVar(CLng(1)))
  loc_13A7539:     var_198 = "Insert Into PartyLocation(PrCode,AppDate,LcCode,ActiveYN,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_13A7571:     var_23C = CVar(var_198 & var_9C & "',") & var_104 & ",'" & CVar(CStr(var_164)) & "','Y','" & IIf((CStr(var_1EC) = "Add"), "A", "E") 
  loc_13A75C3:     var_36C = var_23C & "','" & CVar(MemVar_1F920C8) & "'," & var_2BC & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_13A75D1:     unk_488B0F.Execute CStr(var_36C), var_38C, -1
  loc_13A762B:   End If
  loc_13A762E: Next var_1D4 'Integer
  loc_13A7639: unk_488B0F.CommitTrans
  loc_13A7642: var_86 = CByte(0) 'Byte
  loc_13A7651: Set var_1D8 = Me.Txt
  loc_13A7657: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_13A766A: Set var_90 = Me.Txt
  loc_13A7670: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94)
  loc_13A7680: var_104 = CVar(var_94.Tag) 'String
  loc_13A7696: Set var_98 = Me.Txt
  loc_13A769C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC, var_198)
  loc_13A76A4: 8 = var_1BC.Tag
  loc_13A76B1: var_B0 = Space((var_104 - Len(var_198)))
  loc_13A76B9: var_114 = (var_1DC + CVar(var_1BC))
  loc_13A76BD: var_C4 = "**"
  loc_13A76C2: var_134 = (CVar(var_198 & var_94.Tag & "',") + var_C4)
  loc_13A76ED: var_194 = (1 + Format(CVar(var_1DC), "dd/mm/yyyy"))
  loc_13A772E: Me.Requery -1
  loc_13A775B: Me.Find "SearchCode ='" & CStr(CVar(var_198 & var_94.Tag & "',") & var_104 & ",'" & CVar(CStr("dd/mm/yyyy"))) & "'", 0, 1
  loc_13A776B: Set var_90 = Me.TopCtrl1
  loc_13A7771: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_C4)
  loc_13A778A: If (CStr(1) = "Add") Then
  loc_13A778D:   Call TopCtrl1_UnknownEvent_A()
  loc_13A7792:   Exit Sub
  loc_13A7793: End If
  loc_13A77A8: var_9C = "INI"
  loc_13A77B6: Call Proc_326_58_E7B9D4(Proc_5_1_100CB50(var_9C, Me), global_96)
  loc_13A77C1: Call Proc_326_57_12F9C3C(CVar("SearchCode ='" & CStr(CVar(var_198 & var_94.Tag & "',") & var_104 & ",'" & CVar(CStr("dd/mm/yyyy"))) & "'" & var_9C & "',") & var_104)
  loc_13A77CB: Set var_8C = Nothing
  loc_13A77CE: Exit Sub
  loc_13A77CF: ' Referenced from: 13A6F78
  loc_13A77D8: If (CInt(var_86) = 1) Then
  loc_13A77E1:   unk_488B0F.RollbackTrans
  loc_13A77E6: End If
  loc_13A77EE: Set var_90 = Err()
  loc_13A77F4: Call 0.Method_arg_2C (var_9C)
  loc_13A780D: MsgBox(CVar(var_9C), &H10, var_104, CVar("SearchCode ='" & CStr(CVar(var_198 & var_94.Tag & "',") & var_104 & ",'" & CVar(CStr("dd/mm/yyyy"))) & "'" & var_9C & "',"), CVar("SearchCode ='" & CStr(CVar(var_198 & var_94.Tag & "',") & var_104 & ",'" & CVar(CStr("dd/mm/yyyy"))) & "'" & var_9C & "',") & var_104)
  loc_13A7820: Exit Sub
End Sub

Private Sub Form_Load() '1106F54
  'Data Table: 488AF8
  Dim var_C0 As Variant
  Dim var_88 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  loc_1106C04: On Error Goto loc_1106F4E
  loc_1106C1D: Proc_6_23_DFBA28(Me, 0)
  loc_1106C2F: Set var_88 = Me.TopCtrl1
  loc_1106C35: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B("AEDP")
  loc_1106C43: Call 0.Method_arg_50 (var_B0)
  loc_1106C53: Set var_88 = Me.TopCtrl1
  loc_1106C59: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030007(CVar(var_B0))
  loc_1106C6B: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1106C83: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1106C9A: Me.LblUser.Left = CDbl(13500)
  loc_1106CB1: Me.LblUser.Top = CDbl(7800)
  loc_1106CC8: Me.LblLDt.Top = CDbl(8160)
  loc_1106CDF: Me.LblLDt.Left = CDbl(13500)
  loc_1106CF1: Set global_100 = New 
  loc_1106D03: Me.Recordset15.CursorLocation = 3
  loc_1106D2D: var_C0 = CVar("Select SubCode As Code,Name From SubGroup Where Nature='Customer' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1106D37: Me.Open var_C0, CVar(MemVar_1F92044), 3
  loc_1106D4B: CVarUnk
  loc_1106D50: VerifyVarObj
  loc_1106D56: Set var_88 = Me.DGVType
  loc_1106D5C: LateIdStAd
  loc_1106D74: Set global_104 = New 
  loc_1106D86: Me.DGVType.CursorLocation = 3
  loc_1106DB0: var_C0 = CVar("Select Code,Name From LocationMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_1106DBA: Me.Open var_C0, CVar(MemVar_1F92044), 3
  loc_1106DCE: CVarUnk
  loc_1106DD3: VerifyVarObj
  loc_1106DD9: Set var_88 = Me.DGSundry
  loc_1106DDF: LateIdStAd
  loc_1106DF7: Set global_96 = New 
  loc_1106E09: Me.DGSundry.CursorLocation = 3
  loc_1106E16: If (MemVar_1F923AC = "A") Then
  loc_1106E37:   var_B0 = "Select DISTINCT (PL.PrCode+Space(8-len(PL.PrCode))+'**'+Format(PL.AppDate,'dd/mm/yyyy')) AS SearchCode,site_code,logsite_code From PartyLocation PL Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_1106E3E:   var_C0 = CVar("Select Code,Name From LocationMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By (PL.PrCode+Space(8-len(PL.PrCode))+'**'+Format(PL.AppDate,'dd/mm/yyyy'))") 'String
  loc_1106E48:   Me.Open var_C0, CVar(MemVar_1F92044), 3
  loc_1106E56: Else
  loc_1106E5E:   If (MemVar_1F923AC = "S") Then
  loc_1106E7F:     var_B0 = "Select DISTINCT (PL.PrCode+Space(8-len(PL.PrCode))+'**'+Convert(Varchar(11),PL.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From PartyLocation PL Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_1106E86:     var_C0 = CVar("Select Code,Name From LocationMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By (PL.PrCode+Space(8-len(PL.PrCode))+'**'+Convert(Varchar(11),PL.AppDate,103))") 'String
  loc_1106E90:     Me.Open var_C0, CVar(MemVar_1F92044), 3
  loc_1106E9B:   End If
  loc_1106E9B: End If
  loc_1106EBE: Call Proc_326_58_E7B9D4(Proc_5_1_100CB50("INI", Me, global_96, 1, -1, 1, -1, Me), global_104, 1, -1)
  loc_1106ED1: Set var_88 = Me.TopCtrl1
  loc_1106ED7: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030019(True)
  loc_1106EE8: Set var_88 = Me.TopCtrl1
  loc_1106EEE: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030016(False)
  loc_1106F05: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030017(False)
  loc_1106F0D: Call Proc_326_52_FD0CE0(Me.TopCtrl1, global_100)
  loc_1106F12: Call Proc_326_57_12F9C3C(1)
  loc_1106F2A: Me.FGrid.Left = CVar(CDbl(1400))
  loc_1106F45: Me.FGrid.Top = CVar(CDbl(1500))
  loc_1106F4D: Exit Sub
  loc_1106F4E: ' Referenced from: 1106C04
  loc_1106F4E: Proc_6_60_E62BC4(-1)
  loc_1106F53: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E66354
  'Data Table: 488AF8
  loc_E6630B: Set global_100 = Nothing
  loc_E6631D: Set global_96 = Nothing
  loc_E6632F: Set global_104 = Nothing
  loc_E66341: Set global_108 = Nothing
  loc_E6634D: MasterFormExit = 0
  loc_E66350: Exit Sub
End Sub

Private Sub Form_Activate() 'E4AF40
  'Data Table: 488AF8
  loc_E4AF10: On Error Goto loc_E4AF3A
  loc_E4AF17: Set var_88 = Me.TopCtrl1
  loc_E4AF1D: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030000()
  loc_E4AF32: If (CLng(CInt()) = &H2D) Then
  loc_E4AF35:   Call TopCtrl1_UnknownEvent_15()
  loc_E4AF3A:   ' Referenced from: E4AF10
  loc_E4AF3A: End If
  loc_E4AF3A: Proc_6_60_E62BC4()
  loc_E4AF3F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E240A4
  'Data Table: 488AF8
  loc_E24089: If (MasterFormExit = &HFF) Then
  loc_E24099:   Me.Global.Unload Me
  loc_E240A1: End If
  loc_E240A1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E26E28
  'Data Table: 488AF8
  loc_E26E00: On Error Goto loc_E26E20
  loc_E26E17: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E26E1F: Exit Sub
  loc_E26E20: ' Referenced from: E26E00
  loc_E26E20: Proc_6_60_E62BC4(Shift)
  loc_E26E25: Exit Sub
  loc_E26E26: var_7FF8 = 0
End Sub

Private Sub DGSundry_UnknownEvent_9 'FBC078
  'Data Table: 488AF8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_128 As TextBox
  loc_FBBEE3: Me.DGSundry.Visible = False
  loc_FBBF02: If (Me.RecordCount > 0) Then
  loc_FBBF18:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FBBF20:   var_E4 = CVar(CLng(1)) 'Long
  loc_FBBF53:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_FBBF5B:   Set var_128 = Me.FGrid
  loc_FBBF61:   LateIdCallSt
  loc_FBBFD3:   Set var_128 = Me.FGrid
  loc_FBBFD9:   LateIdCallSt
  loc_FBC012:   var_B0 = Me.Fields.Item("Name")
  loc_FBC02F:   Set var_B4 = Me.TxtGrid
  loc_FBC035:   Call 0.Method_DGSundry_UnknownEvent_90 (0, var_128, CStr(var_B0.Value), var_128, CVar(CStr(Me.Fields.Item("Name").Value)), CVar(CLng(2)))
  loc_FBC03D:   var_128.Text = CVar(CLng(Me.FGrid.Row))
  loc_FBC053: End If
  loc_FBC05C: Set var_A8 = Me.TxtGrid
  loc_FBC062: Call 0.Method_DGSundry_UnknownEvent_90 (0, var_B0, var_128)
  loc_FBC06A: var_B0.SetFocus
  loc_FBC076: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E52D40
  'Data Table: 488AF8
  loc_E52D1A: Set var_88 = Me.Txt
  loc_E52D20: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E52D2E: Proc_6_74_E226B0(var_8C)
  loc_E52D3A: Call Proc_326_59_E845C8(var_8C)
  loc_E52D3F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F465BC
  'Data Table: 488AF8
  loc_F464B6: If (CLng(Shift) = &H1B) Then
  loc_F464B9:   Call Proc_326_59_E845C8()
  loc_F464BE:   Exit Sub
  loc_F464BF: End If
  loc_F464CD: If (KeyCode = CInt(0)) Then
  loc_F464E8:   Set var_9C = Nothing
  loc_F464F3:   Set var_98 = Nothing
  loc_F46521:   Proc_6_69_134A198(Me.DGVType, Me.Txt, KeyCode, global_100, Shift, 0)
  loc_F46535: End If
  loc_F46570: If ((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_F46588:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F46591:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_F46596:   End If
  loc_F465AB:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F465B4:     Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_F465B9:   End If
  loc_F465B9: End If
  loc_F465B9: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E06A40
  'Data Table: 488AF8
  Dim var_86 As Integer
  loc_E06A33: Proc_6_58_E054C0(arg_10)
  loc_E06A3B: var_86 = KeyAscii
  loc_E06A3E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA40E4
  'Data Table: 488AF8
  loc_EA4076: If (KeyCode = CInt(0)) Then
  loc_EA4095:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EA40A9:     var_A4 = "Name"
  loc_EA40CD:     Proc_6_68_129FB34(Me.DGVType, Me.Txt, KeyCode, global_100)
  loc_EA40E0:   End If
  loc_EA40E0: End If
  loc_EA40E0: Exit Sub
  loc_EA40E1: StAryRecCopy
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4BA34
  'Data Table: 488AF8
  loc_E4BA12: Set var_88 = Me.Txt
  loc_E4BA18: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4BA26: Proc_6_73_E22704(var_8C)
  loc_E4BA32: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10D0EDC
  'Data Table: 488AF8
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_C8 As TextBox
  loc_10D0BDF: var_86 = Cancel
  loc_10D0BEA: If (var_86 = CInt(0)) Then
  loc_10D0BF8:   Set var_8C = Me.Txt
  loc_10D0BFE:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_10D0C06:   var_98 = "Party Name"
  loc_10D0C27:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_10D0C35:     Set var_8C = Me.Txt
  loc_10D0C3B:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_10D0C43:     var_90.SetFocus
  loc_10D0C51:     arg_10 = &HFF
  loc_10D0C54:     Exit Sub
  loc_10D0C55:   End If
  loc_10D0CA3:   Set var_8C = Me.Txt
  loc_10D0CA9:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_10D0CB1:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_10D0CC9:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_10D0CD9:     Set var_8C = Me.Txt
  loc_10D0CDF:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D0CE7:     var_90.Text = vbNullString
  loc_10D0D00:     Set var_8C = Me.Txt
  loc_10D0D06:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D0D0E:     var_90.Tag = vbNullString
  loc_10D0D1D:   Else
  loc_10D0D58:     Set var_94 = Me.Txt
  loc_10D0D5E:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10D0D66:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10D0D99:     var_90 = Me.Fields.Item("Code")
  loc_10D0DB7:     Set var_94 = Me.Txt
  loc_10D0DBD:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10D0DC5:     var_B4.Tag = CStr(var_90.Value)
  loc_10D0DDB:   End If
  loc_10D0DDE: Else
  loc_10D0DE6:   If (var_86 = CInt(1)) Then
  loc_10D0DF4:     Set var_8C = Me.Txt
  loc_10D0DFA:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_10D0E23:     If (Proc_6_27_EA565C(var_90, "App. Date") = 0) Then
  loc_10D0E31:       Set var_8C = Me.Txt
  loc_10D0E37:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_10D0E3F:       var_90.SetFocus
  loc_10D0E4D:       arg_10 = &HFF
  loc_10D0E50:       Exit Sub
  loc_10D0E51:     End If
  loc_10D0E5B:     Set var_8C = Me.Txt
  loc_10D0E61:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D0E81:     Set var_B4 = Me.Txt
  loc_10D0E87:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_10D0E8F:     var_C8.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_10D0EB5:     Me.FGrid.Row = 1
  loc_10D0ED0:     Me.FGrid.Col = 2
  loc_10D0ED8:   End If
  loc_10D0ED8: End If
  loc_10D0ED8: Exit Sub
  loc_10D0ED9: CExtInstUnk
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1035368
  'Data Table: 488AF8
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_1035134: Call Proc_326_59_E845C8()
  loc_103514C: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1035167: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1035170: Set var_BC = Me.FGrid
  loc_10351A6: Set var_104 = Me.TxtGrid
  loc_10351AC: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_10351B4: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_10351E5: var_110 = CLng(Me.FGrid.Col)
  loc_10351F5: If (var_110 = CLng(2)) Then
  loc_1035207:   Set var_A8 = Me.TxtGrid
  loc_103520D:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H23)
  loc_1035215:   var_BC.MaxLength = var_110
  loc_1035262:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1035265:     Exit Sub
  loc_1035266:   End If
  loc_1035279:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1035281:   var_DC = CVar(CLng(2)) 'Long
  loc_10352B4:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_10352BD:     Me.MoveFirst
  loc_10352FD:     Proc_6_17_EAA2B0(var_128, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)))
  loc_1035326:     Me.Find CStr("Code=" & var_128), 0, 1
  loc_1035356:     If (Me.EOF = &HFF) Then
  loc_103535F:       Me.MoveFirst
  loc_1035364:     End If
  loc_1035364:   End If
  loc_1035364: End If
  loc_1035364: Exit Sub
  loc_1035365: StAryRecCopy
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '104A018
  'Data Table: 488AF8
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C0 As Variant
  Dim var_94 As DataGrid
  loc_1049DBC: On Error Goto loc_104A00F
  loc_1049DC9: If (CLng(Shift) = &H1B) Then
  loc_1049DD9:   Set var_88 = Me.TxtGrid
  loc_1049DDF:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1049DF9:   Set var_94 = Me.TxtGrid
  loc_1049DFF:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_1049E07:   var_98.Text = var_8C.Tag
  loc_1049E23:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1049E28:   Call Proc_326_59_E845C8(arg_14)
  loc_1049E31:   Set var_88 = Me.FGrid
  loc_1049E4E:   Set var_88 = Me.TxtGrid
  loc_1049E54:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1049E5C:   var_8C.Visible = False
  loc_1049E68:   Exit Sub
  loc_1049E69: End If
  loc_1049E8C: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_1049E9B:   Set var_88 = Me.TxtGrid
  loc_1049EA1:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B0)
  loc_1049EA9:   var_AC = var_8C.Left
  loc_1049EC0:   Me.DGSundry.Left = CVar(var_B0)
  loc_1049EDA:   Set var_94 = Me.TxtGrid
  loc_1049EE0:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_1049EF9:   Set var_88 = Me.TxtGrid
  loc_1049EFF:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_1049F13:   var_C0 = CVar((var_8C.Top + var_98.Height)) 'Single
  loc_1049F22:   Me.DGSundry.Top = CVar(var_8C.Top)
  loc_1049F4C:   Set var_98 = Nothing
  loc_1049F85:   Proc_6_69_134A198(Me.DGSundry, Me.TxtGrid, KeyCode, global_104, Shift, &HFF)
  loc_1049FA3:   If (CLng(Shift) = &HD) Then
  loc_1049FAC:     Call Proc_326_55_1094E50(KeyCode, var_DA, 1, Nothing)
  loc_1049FB7:     If (var_DA = &HFF) Then
  loc_1049FFF:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, CByte(3))
  loc_104A00F:       ' Referenced from: 1049DBC
  loc_104A00F:     End If
  loc_104A00F:   End If
  loc_104A00F: End If
  loc_104A00F: Proc_6_60_E62BC4(0, 0, 0)
  loc_104A014: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EB822C
  'Data Table: 488AF8
  loc_EB8197: Proc_6_58_E054C0(arg_10)
  loc_EB81A8: If (KeyAscii = 0) Then
  loc_EB81CE:   If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_EB81ED:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_EB81FF:       var_A4 = "Name"
  loc_EB821A:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_104, arg_10)
  loc_EB8229:     End If
  loc_EB8229:   End If
  loc_EB8229: End If
  loc_EB8229: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EC2594
  'Data Table: 488AF8
  loc_EC24F4: On Error Goto loc_EC258D
  loc_EC251A: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_EC2540:   If ((Shift <> &HD) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_EC254E:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_EC2562:     var_A4 = "Name"
  loc_EC257D:     Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_104, Shift)
  loc_EC258C:   End If
  loc_EC258C: End If
  loc_EC258C: Exit Sub
  loc_EC258D: ' Referenced from: EC24F4
  loc_EC258D: Proc_6_60_E62BC4(var_A4, &HFF)
  loc_EC2592: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21A8C
  'Data Table: 488AF8
  Dim arg_10 As Integer
  loc_E21A74: If (Cancel = 0) Then
  loc_E21A7D:   Call Proc_326_55_1094E50(Cancel, var_88)
  loc_E21A86:   arg_10 = Not(var_88)
  loc_E21A89: End If
  loc_E21A89: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'F4A924
  'Data Table: 488AF8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4A81B: Me.DGVType.Visible = False
  loc_F4A83A: If (Me.RecordCount > 0) Then
  loc_F4A879:   Set var_B4 = Me.Txt
  loc_F4A87F:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4A887:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4A8BA:   var_B0 = Me.Fields.Item("Code")
  loc_F4A8D9:   Set var_B4 = Me.Txt
  loc_F4A8DF:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4A8E7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4A8FD: End If
  loc_F4A908: Set var_A8 = Me.Txt
  loc_F4A90E: Call 0.Method_DGVType_UnknownEvent_90 (CInt(0))
  loc_F4A916: var_B0.SetFocus
  loc_F4A922: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E85C18
  'Data Table: 488AF8
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E85BBB: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E85BCE: Set var_A8 = Me.TxtGrid
  loc_E85BD4: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E85BDC: var_AC.Visible = False
  loc_E85BF6: Set var_A8 = Me.TxtGrid
  loc_E85BFC: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E85C04: var_AC.MaxLength = 0
  loc_E85C10: Call Proc_326_59_E845C8()
  loc_E85C15: Exit Sub
  loc_E85C16: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E66F88
  'Data Table: 488AF8
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E66F44: Set var_88 = Me.TxtGrid
  loc_E66F4A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E66F64: If (var_8C.Visible = 0) Then
  loc_E66F7D:   Me.FGrid.BackColorSel = CVar(CLng(global_84))
  loc_E66F85: End If
  loc_E66F85: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1F9A0
  'Data Table: 488AF8
  loc_E1F997: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F99F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFDAB4
  'Data Table: 488AF8
  loc_DFDAAC: Call Proc_326_54_E43D30()
  loc_DFDAB1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '11072CC
  'Data Table: 488AF8
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_1106F94: Set var_88 = Me.TopCtrl1
  loc_1106F9A: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1106FDF: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1106FE8:   Call Form_KeyDown(Cancel, arg_10)
  loc_1106FED: End If
  loc_1106FF1: Set var_88 = Me.TopCtrl1
  loc_1106FF7: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1107010: If (CStr() = "Browse") Then
  loc_1107013:   Exit Sub
  loc_1107014: End If
  loc_1107031: var_C4 = Me.FGrid.Rows
  loc_1107088: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_110709E:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11070AE:   var_9C = "+{Tab}"
  loc_11070B4:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_11070BE:   Cancel = 0
  loc_11070C4: Else
  loc_11070CE:   var_B0 = Me.FGrid.Rows
  loc_110711B:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1107131:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1107147:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_1107151:     Cancel = 0
  loc_110715F:     var_B0 = "Save Data"
  loc_110718B:     If (MsgBox("Save Record ?", 4, var_B0, var_C4, var_118) = 6) Then
  loc_11071A7:       MsgBox(vbNullString, 0, var_B0, var_C4, var_118)
  loc_11071B7:     End If
  loc_11071B7:   End If
  loc_11071B7: End If
  loc_11071BD: global_92 = Cancel
  loc_11071E3: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1107207: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_110722D:   If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_1107243:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110724B:     var_F8 = CVar(CLng(2)) 'Long
  loc_1107250:     var_12C = vbNullString
  loc_110725A:     Set var_A0 = Me.FGrid
  loc_1107260:     LateIdCallSt
  loc_1107285:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110728D:     var_F8 = CVar(CLng(1)) 'Long
  loc_1107292:     var_12C = vbNullString
  loc_110729C:     Set var_A0 = Me.FGrid
  loc_11072A2:     LateIdCallSt
  loc_11072B4:   End If
  loc_11072B4: End If
  loc_11072BA: If (Cancel = &HD) Then
  loc_11072C2:   global_94 = 0
  loc_11072C5: End If
  loc_11072C7: Cancel = 0
  loc_11072CA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0FA70
  'Data Table: 488AF8
  loc_E0FA61: Call FGrid_UnknownEvent_C()
  loc_E0FA6B: global_94 = 0
  loc_E0FA6E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'FECB54
  'Data Table: 488AF8
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_FEC97C: Set var_88 = Me.TopCtrl1
  loc_FEC982: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_FEC99B: If (CStr() = "Browse") Then
  loc_FEC99E:   Exit Sub
  loc_FEC99F: End If
  loc_FEC9A3: Set var_88 = Me.TopCtrl1
  loc_FEC9A9: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_FEC9C2: If (CStr() = "Browse") Then
  loc_FEC9C5:   Exit Sub
  loc_FEC9C6: End If
  loc_FEC9E9: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FEC9F0:   Set var_C4 = Me.FGrid
  loc_FECA14:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_FECA41:   Set var_B4 = var_C4
  loc_FECA53:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_FECA7B:   Set var_88 = Me.TxtGrid
  loc_FECA81:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_FECA89:   0 = var_B4.Text
  loc_FECAA2:   If (Len(var_9C) <= 1) Then
  loc_FECAB1:     Set var_88 = Me.TxtGrid
  loc_FECAB7:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_FECABF:     var_CA = var_B4.Text
  loc_FECAD0:     Set var_B8 = Me.TxtGrid
  loc_FECAD6:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_FECADE:     var_C4.Text = var_9C
  loc_FECAF1:   End If
  loc_FECAFD:   Set var_88 = Me.TxtGrid
  loc_FECB03:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_FECB1D:   Set var_B8 = Me.TxtGrid
  loc_FECB23:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_FECB2B:   var_C4.SelStart = Len(var_B4.Text)
  loc_FECB3E: End If
  loc_FECB48: If (CLng(Cancel) <> &HD) Then
  loc_FECB50:   global_94 = &HFF
  loc_FECB53: End If
  loc_FECB53: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1FC20
  'Data Table: 488AF8
  loc_E1FC17: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1FC1F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1F630
  'Data Table: 488AF8
  loc_E1F627: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F62F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E43A14
  'Data Table: 488AF8
  Dim var_8C As TextBox
  loc_E439E8: Call Proc_326_59_E845C8()
  loc_E439F8: Set var_88 = Me.TxtGrid
  loc_E439FE: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E43A06: var_8C.Visible = False
  loc_E43A12: Exit Sub
End Sub

Public Function MasterFormExitGet() '489620
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '48962F
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '48963E
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '48964D
  SearchCode = Value
End Sub

Public Function global_60Get() '48965C
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '48966B
  global_60 = Value
End Sub

Public Function global_64Get() '48967A
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '489689
  global_64 = Value
End Sub

Public Sub global_64Set(Value) '489698
  global_64 = Value
End Sub

Public Function global_80Get() '4896A7
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '4896B6
  global_80 = Value
End Sub

Public Sub global_80Set(Value) '4896C5
  global_80 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E96720
  'Data Table: 488AF8
  Dim Me As Recordset15
  loc_E966AE: On Error Goto loc_E96717
  loc_E966B7: Me.MoveFirst
  loc_E966E1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96709: Proc_5_0_110649C(&HFF, Me, global_96)
  loc_E96711: Call Proc_326_57_12F9C3C(0)
  loc_E96716: Exit Sub
  loc_E96717: ' Referenced from: E966AE
  loc_E96717: Proc_6_60_E62BC4(var_A0)
  loc_E9671C: Exit Sub
End Sub

Public Sub Proc_326_52_FD0CE0
  'Data Table: 488AF8
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_FD0B24: On Error Goto loc_FD0CDA
  loc_FD0B35: Set var_88 = Me.Txt
  loc_FD0B3B: Call 0.Method_Proc_326_52_FD0CE00 (CInt(0), var_8C)
  loc_FD0B5A: Me.DGVType.Left = CVar(var_8C.Left)
  loc_FD0B76: Set var_B4 = Me.Txt
  loc_FD0B7C: Call 0.Method_Proc_326_52_FD0CE00 (CInt(0), var_B8)
  loc_FD0B97: Set var_88 = Me.Txt
  loc_FD0B9D: Call 0.Method_Proc_326_52_FD0CE00 (CInt(0), var_8C)
  loc_FD0BB5: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_FD0BC4: Me.DGVType.Top = CVar(var_8C.Left)
  loc_FD0BDA: Set var_C4 = Me.FGrid
  loc_FD0BE9: var_C4.Height = CVar(CDbl(4250))
  loc_FD0BFA: var_C4.Width = CVar(CDbl(5500))
  loc_FD0C0B: var_C4.Cols = 3
  loc_FD0C1C: var_C4.Rows = 2
  loc_FD0C35: global_84 = CStr(CLng(var_C4.BackColor))
  loc_FD0C3F: var_A0 = 0
  loc_FD0C48: var_E8 = &H64
  loc_FD0C54: LateIdCallSt
  loc_FD0C5F: var_A0 = CVar(CLng(1)) 'Long
  loc_FD0C64: var_E8 = 0
  loc_FD0C70: LateIdCallSt
  loc_FD0C7B: var_A0 = CVar(CLng(2)) 'Long
  loc_FD0C80: var_E8 = &HDAC
  loc_FD0C8C: LateIdCallSt
  loc_FD0C94: var_A0 = 0
  loc_FD0CA0: var_E8 = CVar(CLng(2)) 'Long
  loc_FD0CA5: var_108 = "Location Name"
  loc_FD0CAE: LateIdCallSt
  loc_FD0CB9: var_A0 = CVar(CLng(2)) 'Long
  loc_FD0CC4: var_E8 = CVar(CInt(1)) 'Integer
  loc_FD0CCB: LateIdCallSt
  loc_FD0CD5: Set var_C4 = Nothing 
  loc_FD0CD9: Exit Sub
  loc_FD0CDA: ' Referenced from: FD0B24
  loc_FD0CDA: Proc_6_60_E62BC4(var_C4, var_E8, var_A0, var_C4, var_108, var_E8, var_A0, var_C4)
  loc_FD0CDF: Exit Sub
End Sub

Public Sub Proc_326_53_FC9DDC
  'Data Table: 488AF8
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_488B0F As Connection15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  Dim var_7F01 As Variant
  loc_FC9C77: If (Me.RecordCount = 0) Then
  loc_FC9C7A:   Proc_326_53_FC9DDC = 
  loc_FC9C80: End If
  loc_FC9CBB: Set var_94 = Me.Txt
  loc_FC9CC1: Call 0.Method_Proc_326_53_FC9DDC0 (CInt(0), var_98, var_9C, "Select Count(*) From PartyLocation Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (PrCode='", var_130, -1)
  loc_FC9CD9: var_DC = CVar(var_138 & var_9C & "' And AppDate=") 'String
  loc_FC9CE7: Set var_A8 = Me.Txt
  loc_FC9CED: Call 0.Method_Proc_326_53_FC9DDC0 (CInt(1), var_AC, var_DC)
  loc_FC9CFC: Proc_6_7_F25D88(var_CC, CVar(var_AC), 0)
  loc_FC9D04: var_EC = var_14C & var_CC 
  loc_FC9D1B: unk_488B0F.Execute CStr(var_EC & ")"), var_15C, 
  loc_FC9D23:  = var_98.Tag.Fields
  loc_FC9D2B:  = var_138.Item()
  loc_FC9D33:  = var_14C.Value
  loc_FC9D70: If (var_15C > 0) Then
  loc_FC9D94:   MsgBox("Duplicate Entry", &H40, "Information", var_DC, var_EC)
  loc_FC9DAF:   Set var_94 = Me.Txt
  loc_FC9DB5:   Call 0.Method_Proc_326_53_FC9DDC0 (CInt(0))
  loc_FC9DBD:   var_98.SetFocus
  loc_FC9DCE:   Proc_326_53_FC9DDC = &HFF
  loc_FC9DD4: End If
  loc_FC9DD4: Proc_326_53_FC9DDC = var_98
  loc_FC9DDA: var_7F01 = CVar() 'Integer
End Sub

Public Sub Proc_326_54_E43D30
  'Data Table: 488AF8
  loc_E43D0C: Set var_88 = Me.TopCtrl1
  loc_E43D12: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_E43D2B: If (CStr() = "Browse") Then
  loc_E43D2E:   Exit Sub
  loc_E43D2F: End If
  loc_E43D2F: Exit Sub
End Sub

Public Sub Proc_326_55_1094E50(arg_C) '1094E50
  'Data Table: 488AF8
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As String
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_B0 As String
  loc_1094BB3: var_A0 = CLng(Me.FGrid.Col)
  loc_1094BC3: If (var_A0 = CLng(2)) Then
  loc_1094BE6:   var_A6 = Me.EOF
  loc_1094C14:   Set var_8C = Me.TxtGrid
  loc_1094C1A:   Call 0.Method_Proc_326_55_1094E500 (arg_C, var_AC, var_B0)
  loc_1094C22:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_1094C3A:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_1094C50:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1094C58:     var_E0 = CVar(CLng(2)) 'Long
  loc_1094C5D:     var_100 = vbNullString
  loc_1094C67:     Set var_AC = Me.FGrid
  loc_1094C6D:     LateIdCallSt
  loc_1094C92:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1094C9A:     var_E0 = CVar(CLng(1)) 'Long
  loc_1094C9F:     var_100 = vbNullString
  loc_1094CA9:     Set var_AC = Me.FGrid
  loc_1094CAF:     LateIdCallSt
  loc_1094CC4:   Else
  loc_1094CC7:     Call Proc_326_60_FC1470(var_A6, var_AC, var_100, var_E0, var_C0)
  loc_1094CD2:     If (var_A6 = 0) Then
  loc_1094CDA:       Proc_326_55_1094E50 = 0
  loc_1094CE0:     End If
  loc_1094CF3:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1094CFB:     var_F0 = CVar(CLng(2)) 'Long
  loc_1094D2E:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1094D36:     Set var_138 = Me.FGrid
  loc_1094D3C:     LateIdCallSt
  loc_1094D6B:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1094D73:     var_F0 = CVar(CLng(1)) 'Long
  loc_1094DA6:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1094DAE:     Set var_138 = Me.FGrid
  loc_1094DB4:     LateIdCallSt
  loc_1094DD0:   End If
  loc_1094DE9:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1094DEE:   var_E0 = 1
  loc_1094E25:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1094E28:     var_C0 = vbNullString
  loc_1094E32:     Set var_8C = Me.FGrid
  loc_1094E43:   End If
  loc_1094E43: End If
  loc_1094E48: Proc_326_55_1094E50 = &HFF
End Sub

Public Sub Proc_326_56_F19F20
  'Data Table: 488AF8
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F19E36: Set var_8C = Me.Txt
  loc_F19E3C: Call 0.Method_Proc_326_56_F19F20C (var_8E, var_86)
  loc_F19E4C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F19E62:   Set var_8C = Me.Txt
  loc_F19E68:   Call 0.Method_Proc_326_56_F19F200 (CInt(var_86), var_98)
  loc_F19E70:   var_98.Text = vbNullString
  loc_F19E8C:   Set var_8C = Me.Txt
  loc_F19E92:   Call 0.Method_Proc_326_56_F19F200 (CInt(var_86), var_98)
  loc_F19E9A:   var_98.Tag = vbNullString
  loc_F19EA9: Next var_92 'Byte
  loc_F19EC2: Me.FGrid.Rows = 1
  loc_F19EDF: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F19EE7: Set var_98 = Me.FGrid
  loc_F19F16: Me.FGrid.FixedRows = 1
  loc_F19F1E: Exit Sub
End Sub

Public Sub Proc_326_57_12F9C3C
  'Data Table: 488AF8
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim unk_488B0F As Connection15
  Dim var_88 As Recordset15
  Dim var_128 As TextBox
  Dim var_124 As Fields15
  Dim var_8A As Integer
  loc_12F9578: On Error Goto loc_12F9C36
  loc_12F9592: If (Me.RecordCount > 0) Then
  loc_12F9595:   Call Proc_326_56_F19F20()
  loc_12F95A2:   If (MemVar_1F923AC = "A") Then
  loc_12F95B9:     var_94 = "Select PL.*,S.Name As PartyName,LM.Name As Location From ((PartyLocation PL Left Join SubGroup S On PL.PrCode=S.SubCode) Left Join LocationMast LM On PL.LcCode=LM.Code) Where (PL.LOGSITE_CODE='" & MemVar_1F92078
  loc_12F95C0:     var_CC = CVar(var_94 & "' or PL.LOGSITE_CODE='HO') And PL.PrCode+Space(8-len(PL.PrCode))+'**'+Format(PL.AppDate,'dd/mm/yyyy')='") 'String
  loc_12F9607:     unk_488B0F.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_12F9612:     Set var_88 = var_124
  loc_12F9635:   Else
  loc_12F963D:     If (MemVar_1F923AC = "S") Then
  loc_12F9654:       var_94 = "Select PL.*,S.Name As PartyName,LM.Name As Location From ((PartyLocation PL Left Join SubGroup S On PL.PrCode=S.SubCode) Left Join LocationMast LM On PL.LcCode=LM.Code) Where (PL.LOGSITE_CODE='" & MemVar_1F92078
  loc_12F965B:       var_CC = CVar(var_94 & "' or PL.LOGSITE_CODE='HO') And PL.PrCode+Space(8-len(PL.PrCode))+'**'+Convert(Varchar(11),PL.AppDate,103)='") 'String
  loc_12F96A2:       unk_488B0F.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_12F96AD:       Set var_88 = var_124
  loc_12F96CD:     End If
  loc_12F96CD:   End If
  loc_12F96E1:   If (var_88.RecordCount > 0) Then
  loc_12F971A:     Set var_124 = Me.Txt
  loc_12F9720:     Call 0.Method_Proc_326_57_12F9C3C0 (CInt(0), var_128)
  loc_12F9728:     var_128.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PrCode")), var_124)
  loc_12F9772:     Set var_124 = Me.Txt
  loc_12F9778:     Call 0.Method_Proc_326_57_12F9C3C0 (CInt(0), var_128)
  loc_12F9780:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PartyName")))
  loc_12F97F4:     Set var_124 = Me.Txt
  loc_12F97FA:     Call 0.Method_Proc_326_57_12F9C3C0 (CInt(1), var_128, CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("AppDate")))), "dd/MMM/yyyy")))
  loc_12F9802:     var_128.Text = 1
  loc_12F985C:     var_124 = var_88.Fields
  loc_12F98C5:     var_188 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), 1) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_12F990A:     Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_188)))
  loc_12F99E5:     var_188 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_12F9A2A:     Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_12F9A9B:     If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("PartyName"))) = vbNullString) Then
  loc_12F9A9E:     End If
  loc_12F9AA0:     var_8A = 1
  loc_12F9AB6:     Me.FGrid.Rows = 1
  loc_12F9ABE:     ' Referenced from: 12F9BAD
  loc_12F9ACD:     If Not(var_88.EOF) Then
  loc_12F9AD0:       var_A8 = vbNullString
  loc_12F9ADA:       Set var_98 = Me.FGrid
  loc_12F9B2B:       var_CC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("lccode")), CVar(CLng(1)), CVar(CLng(var_8A)))) 'String
  loc_12F9B32:       LateIdCallSt
  loc_12F9B7D:       var_CC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Location")), CVar(CLng(2)), CVar(CLng(var_8A)), Me.FGrid)) 'String
  loc_12F9B84:       LateIdCallSt
  loc_12F9B98:       Set var_1E8 = Nothing 
  loc_12F9BA2:       var_8A = (var_8A + 1)
  loc_12F9BA8:       var_88.MoveNext
  loc_12F9BAD:       GoTo loc_12F9ABE
  loc_12F9BB0:     End If
  loc_12F9BB0:   End If
  loc_12F9BB0:   var_A8 = 0
  loc_12F9BBA:   Set var_98 = Me.FGrid
  loc_12F9BE7:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_12F9BEA:     var_A8 = "1"
  loc_12F9BF4:     Set var_98 = Me.FGrid
  loc_12F9C05:   End If
  loc_12F9C05:   var_A8 = 1
  loc_12F9C18:   Me.FGrid.FixedRows = var_A8
  loc_12F9C23: Else
  loc_12F9C23:   Call Proc_326_56_F19F20(FGrid.DispID_10000, var_A8, FGrid.DispID_2E, var_A8, var_8A, var_1E8)
  loc_12F9C28: End If
  loc_12F9C28: Call Proc_326_59_E845C8(var_CC, var_CC, FGrid.DispID_10000)
  loc_12F9C32: Set var_88 = Nothing
  loc_12F9C35: Exit Sub
  loc_12F9C36: ' Referenced from: 12F9578
  loc_12F9C36: Proc_6_60_E62BC4(var_A8)
  loc_12F9C3B: Exit Sub
End Sub

Public Sub Proc_326_58_E7B9D4(arg_C) 'E7B9D4
  'Data Table: 488AF8
  Dim var_98 As TextBox
  loc_E7B982: Set var_8C = Me.Txt
  loc_E7B988: Call 0.Method_Proc_326_58_E7B9D4C (var_8E, var_86)
  loc_E7B998: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7B9AE:   Set var_8C = Me.Txt
  loc_E7B9B4:   Call 0.Method_Proc_326_58_E7B9D40 (CInt(var_86), var_98)
  loc_E7B9BC:   var_98.Enabled = arg_C
  loc_E7B9CB: Next var_92 'Byte
  loc_E7B9D1: Exit Sub
End Sub

Public Sub Proc_326_59_E845C8
  'Data Table: 488AF8
  loc_E84574: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_E84586:   Me.DGVType.Visible = False
  loc_E8458E: End If
  loc_E845AA: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_E845BC:   Me.DGSundry.Visible = False
  loc_E845C4: End If
  loc_E845C4: Exit Sub
End Sub

Public Sub Proc_326_60_FC1470
  'Data Table: 488AF8
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC12F3: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FC12F8:   var_92 = 2 'Byte
  loc_FC12FC: End If
  loc_FC1305: Set var_98 = Me.TxtGrid
  loc_FC130B: Call 0.Method_Proc_326_60_FC14700 (0, var_B0)
  loc_FC132E: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC1362: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC1386:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC1389:     GoTo loc_FC145B
  loc_FC138C:   End If
  loc_FC1390:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC13BA:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC13C4:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC13F9:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC141D:     MsgBox("Duplicate Location Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC1436:     Set var_98 = Me.TxtGrid
  loc_FC143C:     Call 0.Method_Proc_326_60_FC14700 (0, var_B0, CVar(CLng(var_92)))
  loc_FC1444:     var_B0.SetFocus
  loc_FC1455:     Proc_326_60_FC1470 = 0
  loc_FC145B:     ' Referenced from: FC1389
  loc_FC145B:   End If
  loc_FC145E: Next var_D4 'Integer
  loc_FC1468: Proc_326_60_FC1470 = &HFF
End Sub
