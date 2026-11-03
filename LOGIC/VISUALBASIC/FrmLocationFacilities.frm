VERSION 5.00
Begin VB.Form FrmLocationFacilities
  Caption = "Location Facilities"
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
  ClientWidth = 8955
  ClientHeight = 7545
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8955
    Height = 420
    TabIndex = 11
  End
  Begin Frame FrmList
    Left = 1200
    Top = 4005
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 10
    End
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
    TabIndex = 5
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1815
    Top = 660
    Width = 3510
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1815
    Top = 930
    Width = 1425
    Height = 255
    TabIndex = 1
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
    Left = 5850
    Top = 6075
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGVType
    Left = 2535
    Top = 6285
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin MSHFlexGrid FGrid
    Left = 255
    Top = 1800
    Width = 7500
    Height = 4275
    TabIndex = 2
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 375
    Top = 7650
    Width = 3375
    Height = 285
    TabIndex = 13
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
    Left = 375
    Top = 7935
    Width = 3330
    Height = 255
    TabIndex = 12
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
    Caption = "Location Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 225
    Top = 660
    Width = 1260
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
    Caption = "App.Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 225
    Top = 930
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
  Begin Label LblDepart
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 3345
    Top = 1215
    Width = 7605
    Height = 510
    TabIndex = 6
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 20.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmLocationFacilities"

Private MasterFormExit As Integer
Private global_92 As Integer
Private global_94 As Integer

Private Sub Form_Load() '1144294
  'Data Table: 4A88E0
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_88 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  loc_1143EF8: On Error Goto loc_114428C
  loc_1143F11: Proc_6_23_DFBA28(Me, 0)
  loc_1143F23: Set var_88 = Me.TopCtrl1
  loc_1143F29: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1143F37: Call 0.Method_arg_50 (var_B0)
  loc_1143F47: Set var_88 = Me.TopCtrl1
  loc_1143F4D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B0))
  loc_1143F5F: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1143F77: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1143F8E: Me.LblUser.Left = CDbl(13500)
  loc_1143FA5: Me.LblUser.Top = CDbl(7800)
  loc_1143FBC: Me.LblLDt.Top = CDbl(8160)
  loc_1143FD3: Me.LblLDt.Left = CDbl(13500)
  loc_1143FE5: Set global_100 = New 
  loc_1143FF7: Me.Recordset15.CursorLocation = 3
  loc_1144021: var_C0 = CVar("Select Code,Name From LocationMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_114402B: Me.Open var_C0, CVar(MemVar_1F92044), 3
  loc_114403F: CVarUnk
  loc_1144044: VerifyVarObj
  loc_114404A: Set var_88 = Me.DGVType
  loc_1144050: LateIdStAd
  loc_1144068: Set global_104 = New 
  loc_114407A: Me.DGVType.CursorLocation = 3
  loc_11440A4: var_C0 = CVar("Select Code,Name,UnitRate,ChargeType From FacilityMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_11440AE: Me.Open var_C0, CVar(MemVar_1F92044), 3
  loc_11440C2: CVarUnk
  loc_11440C7: VerifyVarObj
  loc_11440CD: Set var_88 = Me.DGSundry
  loc_11440D3: LateIdStAd
  loc_11440EB: Set global_96 = New 
  loc_11440FD: Me.DGSundry.CursorLocation = 3
  loc_114410A: If (MemVar_1F923AC = "A") Then
  loc_114412B:   var_B0 = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Format(LF.AppDate,'dd/mm/yyyy')) AS SearchCode,site_code,logsite_code From LocationFacility LF Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_1144132:   var_C0 = CVar("Select Code,Name,UnitRate,ChargeType From FacilityMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Format(LF.AppDate,'dd/mm/yyyy'))") 'String
  loc_114413C:   Me.Open var_C0, CVar(MemVar_1F92044), 3
  loc_114414A: Else
  loc_1144152:   If (MemVar_1F923AC = "S") Then
  loc_1144173:     var_B0 = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From LocationFacility LF Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_114417A:     var_C0 = CVar("Select Code,Name,UnitRate,ChargeType From FacilityMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103))") 'String
  loc_1144184:     Me.Open var_C0, CVar(MemVar_1F92044), 3
  loc_114418F:   End If
  loc_114418F: End If
  loc_11441B2: Call Proc_325_58_E7B054(Proc_5_1_100CB50("INI", Me, global_96, 1, -1, 1, -1, Me), global_104, 1, -1)
  loc_11441C5: Set var_88 = Me.TopCtrl1
  loc_11441CB: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_11441DC: Set var_88 = Me.TopCtrl1
  loc_11441E2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_11441F9: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_1144201: Call Proc_325_52_1136420(Me.TopCtrl1, global_100)
  loc_1144206: Call Proc_325_57_1384C6C(1)
  loc_114421E: Me.FGrid.Left = CVar(CDbl(800))
  loc_1144239: Me.FGrid.Top = CVar(CDbl(1800))
  loc_114424B: var_C0 = Me.FGrid.Top
  loc_114425A: Call 0.Method_Me8 (var_C4, var_C0)
  loc_114426D: var_9C = CVar(((var_C4 - CDbl(2400)) - CDbl(var_C0))) 'Single
  loc_114427C: Me.FGrid.Height = CVar(CDbl(1800))
  loc_114428B: Exit Sub
  loc_114428C: ' Referenced from: 1143EF8
  loc_114428C: Proc_6_60_E62BC4(-1)
  loc_1144291: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E68224
  'Data Table: 4A88E0
  loc_E681DB: Set global_100 = Nothing
  loc_E681ED: Set global_96 = Nothing
  loc_E681FF: Set global_104 = Nothing
  loc_E68211: Set global_108 = Nothing
  loc_E6821D: MasterFormExit = 0
  loc_E68220: Exit Sub
End Sub

Private Sub Form_Activate() 'E4AAC8
  'Data Table: 4A88E0
  loc_E4AA98: On Error Goto loc_E4AAC2
  loc_E4AA9F: Set var_88 = Me.TopCtrl1
  loc_E4AAA5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4AABA: If (CLng(CInt()) = &H2D) Then
  loc_E4AABD:   Call TopCtrl1_UnknownEvent_15()
  loc_E4AAC2:   ' Referenced from: E4AA98
  loc_E4AAC2: End If
  loc_E4AAC2: Proc_6_60_E62BC4()
  loc_E4AAC7: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2446C
  'Data Table: 4A88E0
  Dim arg_68FF As Integer
  loc_E24451: If (MasterFormExit = &HFF) Then
  loc_E24461:   Me.Global.Unload Me
  loc_E24469: End If
  loc_E24469: Exit Sub
  loc_E2446A: arg_68FF = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27610
  'Data Table: 4A88E0
  loc_E275E8: On Error Goto loc_E27608
  loc_E275FF: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E27607: Exit Sub
  loc_E27608: ' Referenced from: E275E8
  loc_E27608: Proc_6_60_E62BC4(Shift)
  loc_E2760D: Exit Sub
  loc_E2760E: CExtInstUnk
End Sub

Private Sub DGSundry_UnknownEvent_9 '1075FFC
  'Data Table: 4A88E0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_128 As TextBox
  loc_1075D7B: Me.DGSundry.Visible = False
  loc_1075D9A: If (Me.RecordCount > 0) Then
  loc_1075DB0:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1075DB8:   var_E4 = CVar(CLng(1)) 'Long
  loc_1075DEB:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1075DF3:   Set var_128 = Me.FGrid
  loc_1075DF9:   LateIdCallSt
  loc_1075E6B:   Set var_128 = Me.FGrid
  loc_1075E71:   LateIdCallSt
  loc_1075EC7:   Set var_B4 = Me.TxtGrid
  loc_1075ECD:   Call 0.Method_DGSundry_UnknownEvent_90 (0, var_128, CStr(Me.Fields.Item("Name").Value), var_128, CVar(CStr(Me.Fields.Item("Name").Value)), CVar(CLng(2)))
  loc_1075ED5:   var_128.Text = CVar(CLng(Me.FGrid.Row))
  loc_1075F36:   var_114 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("UnitRate")), CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_128)) 'String
  loc_1075F3E:   Set var_128 = Me.FGrid
  loc_1075F44:   LateIdCallSt
  loc_1075F71:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1075F79:   var_E4 = CVar(CLng(6)) 'Long
  loc_1075F9B:   var_B0 = Me.Fields.Item("ChargeType")
  loc_1075FAC:   var_114 = CVar(CStr(var_B0.Value)) 'String
  loc_1075FB4:   Set var_128 = Me.FGrid
  loc_1075FBA:   LateIdCallSt
  loc_1075FD6: End If
  loc_1075FDF: Set var_A8 = Me.TxtGrid
  loc_1075FE5: Call 0.Method_DGSundry_UnknownEvent_90 (0, var_B0, var_128, var_114, var_E4, var_A4)
  loc_1075FED: var_B0.SetFocus
  loc_1075FF9: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E5289C
  'Data Table: 4A88E0
  loc_E52876: Set var_88 = Me.Txt
  loc_E5287C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E5288A: Proc_6_74_E226B0(var_8C)
  loc_E52896: Call Proc_325_59_EB8744(var_8C)
  loc_E5289B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F6BFA0
  'Data Table: 4A88E0
  Dim var_98 As Frame
  Dim var_C0 As Variant
  loc_F6BE7E: If (CLng(Shift) = &H1B) Then
  loc_F6BE81:   Call Proc_325_59_EB8744()
  loc_F6BE86:   Exit Sub
  loc_F6BE87: End If
  loc_F6BE95: If (KeyCode = CInt(0)) Then
  loc_F6BEB0:   Set var_9C = Nothing
  loc_F6BEBB:   Set var_98 = Nothing
  loc_F6BEE9:   Proc_6_69_134A198(Me.DGVType, Me.Txt, KeyCode, global_100, Shift, 0)
  loc_F6BEFD: End If
  loc_F6BF31: Set var_98 = Me.FrmList
  loc_F6BF53: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) And (var_98.Visible = 0)) Then
  loc_F6BF6B:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F6BF74:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_F6BF79:   End If
  loc_F6BF8E:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F6BF97:     Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_F6BF9C:   End If
  loc_F6BF9C: End If
  loc_F6BF9C: Exit Sub
  loc_F6BF9D: var_C0 = CVar(0) 'String
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E03140
  'Data Table: 4A88E0
  Dim var_86 As Integer
  loc_E03133: Proc_6_58_E054C0(arg_10)
  loc_E0313B: var_86 = KeyAscii
  loc_E0313E: Exit Sub
  loc_E0313F: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA4D24
  'Data Table: 4A88E0
  loc_EA4CB6: If (KeyCode = CInt(0)) Then
  loc_EA4CD5:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EA4CE9:     var_A4 = "Name"
  loc_EA4D0D:     Proc_6_68_129FB34(Me.DGVType, Me.Txt, KeyCode, global_100)
  loc_EA4D20:   End If
  loc_EA4D20: End If
  loc_EA4D20: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A57C
  'Data Table: 4A88E0
  loc_E4A55A: Set var_88 = Me.Txt
  loc_E4A560: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A56E: Proc_6_73_E22704(var_8C)
  loc_E4A57A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '111C934
  'Data Table: 4A88E0
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_94 As Label
  Dim var_C8 As TextBox
  loc_111C5DB: var_86 = Cancel
  loc_111C5E6: If (var_86 = CInt(0)) Then
  loc_111C5F4:   Set var_8C = Me.Txt
  loc_111C5FA:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_111C602:   var_98 = "Location Name"
  loc_111C623:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_111C631:     Set var_8C = Me.Txt
  loc_111C637:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_111C63F:     var_90.SetFocus
  loc_111C64D:     arg_10 = &HFF
  loc_111C650:     Exit Sub
  loc_111C651:   End If
  loc_111C69F:   Set var_8C = Me.Txt
  loc_111C6A5:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_111C6AD:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_111C6C5:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_111C6D5:     Set var_8C = Me.Txt
  loc_111C6DB:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_111C6E3:     var_90.Text = vbNullString
  loc_111C6FC:     Set var_8C = Me.Txt
  loc_111C702:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_111C70A:     var_90.Tag = vbNullString
  loc_111C723:     Me.LblDepart.Caption = vbNullString
  loc_111C72E:   Else
  loc_111C769:     Set var_94 = Me.Txt
  loc_111C76F:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_111C777:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_111C7C8:     Set var_94 = Me.Txt
  loc_111C7CE:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_111C7D6:     var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_111C806:     var_90 = Me.Fields.Item("Name")
  loc_111C824:     Me.LblDepart.Caption = Proc_6_38_E68A98(CVar(var_90))
  loc_111C836:   End If
  loc_111C839: Else
  loc_111C841:   If (var_86 = CInt(1)) Then
  loc_111C84F:     Set var_8C = Me.Txt
  loc_111C855:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_111C87E:     If (Proc_6_27_EA565C(var_90, "App. Date") = 0) Then
  loc_111C88C:       Set var_8C = Me.Txt
  loc_111C892:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_111C89A:       var_90.SetFocus
  loc_111C8A8:       arg_10 = &HFF
  loc_111C8AB:       Exit Sub
  loc_111C8AC:     End If
  loc_111C8B6:     Set var_8C = Me.Txt
  loc_111C8BC:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_111C8DC:     Set var_B4 = Me.Txt
  loc_111C8E2:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_111C8EA:     var_C8.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_111C910:     Me.FGrid.Row = 1
  loc_111C92B:     Me.FGrid.Col = 2
  loc_111C933:   End If
  loc_111C933: End If
  loc_111C933: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'F35004
  'Data Table: 4A88E0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F34EFB: Me.DGVType.Visible = False
  loc_F34F1A: If (Me.RecordCount > 0) Then
  loc_F34F59:   Set var_B4 = Me.Txt
  loc_F34F5F:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F34F67:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F34F9A:   var_B0 = Me.Fields.Item("Code")
  loc_F34FB9:   Set var_B4 = Me.Txt
  loc_F34FBF:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F34FC7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F34FDD: End If
  loc_F34FE8: Set var_A8 = Me.Txt
  loc_F34FEE: Call 0.Method_DGVType_UnknownEvent_90 (CInt(0))
  loc_F34FF6: var_B0.SetFocus
  loc_F35002: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F53B7C
  'Data Table: 4A88E0
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F53A9E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F53AA5:   Set var_A8 = Me.ListView
  loc_F53AEF:   Set var_C0 = Me.TxtGrid
  loc_F53AF5:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F53AFD:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F53B1D: End If
  loc_F53B29: Me.FrmList.Visible = False
  loc_F53B59: Set var_9C = Me.TxtGrid
  loc_F53B5F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F53B67: var_A8.SetFocus
  loc_F53B7B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E7FA1C
  'Data Table: 4A88E0
  Dim var_94 As TextBox
  loc_E7F9B8: On Error Goto loc_E7FA14
  loc_E7F9DE: Call Proc_325_58_E7B054(Proc_5_1_100CB50("ADD", Me))
  loc_E7F9E9: Call Proc_325_56_F2AAE0(global_96)
  loc_E7F9F9: Set var_8C = Me.Txt
  loc_E7F9FF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_E7FA07: var_94.SetFocus
  loc_E7FA13: Exit Sub
  loc_E7FA14: ' Referenced from: E7F9B8
  loc_E7FA14: Proc_6_60_E62BC4(var_94)
  loc_E7FA19: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EE8830
  'Data Table: 4A88E0
  loc_EE8774: On Error Goto loc_EE8829
  loc_EE87AE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EE87D4:   Call Proc_325_58_E7B054(Proc_5_1_100CB50("INI", Me))
  loc_EE87E7:   Set var_10C = Me.TopCtrl1
  loc_EE87ED:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_EE87FE:   Set var_10C = Me.TopCtrl1
  loc_EE8804:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_EE8815:   Set var_10C = Me.TopCtrl1
  loc_EE881B:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_EE8823:   Call Proc_325_57_1384C6C(global_96)
  loc_EE8828: End If
  loc_EE8828: Exit Sub
  loc_EE8829: ' Referenced from: EE8774
  loc_EE8829: Proc_6_60_E62BC4()
  loc_EE882E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16804
  'Data Table: 4A88E0
  loc_E167F9: Me.Global.Unload Me
  loc_E16801: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EF3B0C
  'Data Table: 4A88E0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EF3A40: On Error Goto loc_EF3B06
  loc_EF3A5A: If (Me.RecordCount <= 0) Then
  loc_EF3A63:   var_B8 = "Information"
  loc_EF3A7E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EF3A8E:   Exit Sub
  loc_EF3A8F: End If
  loc_EF3A97: If (MemVar_1F923AC = "A") Then
  loc_EF3AA1:   var_10C = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Format(LF.AppDate,'dd/mm/yyyy')) AS Code,LM.Name As LocationName,Format(LF.AppDate,'dd/mm/yyyy') From (LocationFacility LF Left Join LocationMast LM On LF.LcCode=LM.Code) Where (LF.LOGSITE_CODE='" & MemVar_1F92078
  loc_EF3AA8:   MemVar_1F920E4 = var_10C & "' or LF.LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Format(LF.AppDate,'dd/mm/yyyy'))"
  loc_EF3AB2: Else
  loc_EF3ABA:   If (MemVar_1F923AC = "S") Then
  loc_EF3AC4:     var_10C = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103)) AS Code,LM.Name As LocationName,Convert(Varchar(11),LF.AppDate,103) From (LocationFacility LF Left Join LocationMast LM On LF.LcCode=LM.Code) Where (LF.LOGSITE_CODE='" & MemVar_1F92078
  loc_EF3ACB:     MemVar_1F920E4 = var_10C & "' or LF.LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103))"
  loc_EF3AD2:   End If
  loc_EF3AD2: End If
  loc_EF3AD8: MemVar_1F92120 = Me
  loc_EF3AE5: Proc_6_126_F1BCC0("4500,1500", MemVar_1F920E4)
  loc_EF3B00: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EF3B05: Exit Sub
  loc_EF3B06: ' Referenced from: EF3A40
  loc_EF3B06: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EF3B0B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E31B18
  'Data Table: 4A88E0
  Dim arg_68FF As Double
  loc_E31B08: Proc_5_0_110649C(&HFF, Me)
  loc_E31B10: Call Proc_325_57_1384C6C(global_96)
  loc_E31B15: Exit Sub
  loc_E31B16: arg_68FF = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E31ED8
  'Data Table: 4A88E0
  Dim arg_68FF As Double
  loc_E31EC8: Proc_5_0_110649C(&HFF, Me)
  loc_E31ED0: Call Proc_325_57_1384C6C(global_96)
  loc_E31ED5: Exit Sub
  loc_E31ED6: arg_68FF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E32298
  'Data Table: 4A88E0
  Dim arg_68FF As Double
  loc_E32288: Proc_5_0_110649C(&HFF, Me)
  loc_E32290: Call Proc_325_57_1384C6C(global_96)
  loc_E32295: Exit Sub
  loc_E32296: arg_68FF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E322F8
  'Data Table: 4A88E0
  loc_E322E8: Proc_5_0_110649C(&HFF, Me)
  loc_E322F0: Call Proc_325_57_1384C6C(global_96)
  loc_E322F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E2265C
  'Data Table: 4A88E0
  Dim Me As Recordset15
  loc_E22643: Me.Requery -1
  loc_E22653: Me.Requery -1
  loc_E22658: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13E8AB8
  'Data Table: 4A88E0
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_98 As String
  Dim var_130 As Variant
  Dim unk_4A88FE As Connection15
  Dim var_90 As TextBox
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_1A8 As MSHFlexGrid
  Dim var_170 As Variant
  Dim var_1EC As MSHFlexGrid
  Dim var_550 As Double
  Dim var_294 As Variant
  Dim var_328 As Variant
  Dim var_19C As String
  Dim var_110 As Variant
  Dim var_190 As Variant
  Dim var_1B8 As Variant
  Dim var_2B4 As Variant
  Dim var_450 As Variant
  Dim var_1A4 As TextBox
  Dim Me As Recordset15
  loc_13E815C: On Error Goto loc_13E8A63
  loc_13E8163: var_86 = CByte(0) 'Byte
  loc_13E8172: Set var_8C = Me.Txt
  loc_13E8178: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_13E81A1: If (Proc_6_27_EA565C(var_90, "Voucher Type") = 0) Then
  loc_13E81AB:   Call Txt_GotFocus(CInt(0))
  loc_13E81B0:   Exit Sub
  loc_13E81B1: End If
  loc_13E81BC: Set var_8C = Me.Txt
  loc_13E81C2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_90)
  loc_13E81EB: If (Proc_6_27_EA565C(var_90, "App. Date") = 0) Then
  loc_13E81F5:   Call Txt_GotFocus(CInt(1))
  loc_13E81FA:   Exit Sub
  loc_13E81FB: End If
  loc_13E81FE: Call Proc_325_53_FC91F4(var_9A)
  loc_13E8209: If (var_9A = &HFF) Then
  loc_13E820C:   Exit Sub
  loc_13E820D: End If
  loc_13E8232: For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B0 'Integer
  loc_13E8263:   If ((var_88 > 0) And (CLng(var_88) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_13E826A:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E8272:     var_E0 = CVar(CLng(1)) 'Long
  loc_13E828C:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13E8292:     var_110 = Trim(var_100)
  loc_13E82AE:     If (var_110 = vbNullString) Then
  loc_13E82CA:       MsgBox("Define Facility ", &H40, var_100, var_110, var_130)
  loc_13E82DA:       Exit Sub
  loc_13E82DB:     End If
  loc_13E82DB:   End If
  loc_13E82DF:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E82E7:   var_E0 = CVar(CLng(2)) 'Long
  loc_13E8323:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_13E832A:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E8332:     var_E0 = CVar(CLng(3)) 'Long
  loc_13E835A:     var_98 = CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_13E8377:     If (CDbl(Val(var_98)) = CDbl(0)) Then
  loc_13E837E:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E8386:       var_E0 = CVar(CLng(2)) 'Long
  loc_13E83CD:       MsgBox("Fill Unit Rate For Facility " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_13E83EA:       Set var_8C = Me.FGrid
  loc_13E83FB:       Exit Sub
  loc_13E83FC:     End If
  loc_13E8400:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E8408:     var_E0 = CVar(CLng(4)) 'Long
  loc_13E8444:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_13E844B:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E8453:       var_E0 = CVar(CLng(2)) 'Long
  loc_13E849A:       MsgBox("Fill Due On For Facility " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_13E84B7:       Set var_8C = Me.FGrid
  loc_13E84C8:       Exit Sub
  loc_13E84C9:     End If
  loc_13E84CD:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E84D5:     var_E0 = CVar(CLng(5)) 'Long
  loc_13E8511:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_13E8518:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E8520:       var_E0 = CVar(CLng(2)) 'Long
  loc_13E8567:       MsgBox("Fill StartMonth On For Facility " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_13E8584:       Set var_8C = Me.FGrid
  loc_13E8595:       Exit Sub
  loc_13E8596:     End If
  loc_13E8596:   End If
  loc_13E8599: Next var_B0 'Integer
  loc_13E85A7: unk_4A88FE.BeginTrans var_194
  loc_13E85B0: var_86 = CByte(1) 'Byte
  loc_13E85D9: For var_198 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_198 'Integer
  loc_13E85E3:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_13E85EB:   var_E0 = CVar(CLng(1)) 'Long
  loc_13E8605:   var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13E8627:   If CBool(Trim(var_100) <> vbNullString) Then
  loc_13E8638:     Set var_8C = Me.Txt
  loc_13E863E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_90, var_98)
  loc_13E8646:     var_E0 = var_90.Tag
  loc_13E8656:     Set var_94 = Me.Txt
  loc_13E865C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1A4)
  loc_13E866B:     Proc_6_7_F25D88(var_100, CVar(var_1A4))
  loc_13E8674:     var_D0 = CVar(CLng(var_88)) 'Long
  loc_13E867C:     var_F0 = CVar(CLng(1)) 'Long
  loc_13E86AC:     Set var_1EC = Me.FGrid
  loc_13E86C5:     var_550 = Val(CStr(var_1EC.TextMatrix)))
  loc_13E86E3:     var_294 = Me.FGrid.TextMatrix)
  loc_13E870A:     var_328 = Me.FGrid.TextMatrix)
  loc_13E871A:     Set var_36C = Me.TopCtrl1
  loc_13E8720:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_328)
  loc_13E8762:     Proc_6_8_EB0DE4(var_470, CVar(Proc_6_14_EF349C(CVar(CLng(5)), CVar(CLng(var_88)), var_294, CVar(CLng(4)), CVar(CLng(var_88)), var_550)), CVar(CLng(3)), CVar(CLng(var_88)))
  loc_13E877B:     var_19C = "Insert Into LocationFacility (LcCode,AppDate,FcCode,UnitRate,DueOn,StartMonth,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_13E87CB:     var_2B4 = CVar(var_19C & var_98 & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(var_550) & ",'" & CVar(CStr(var_294)) 
  loc_13E880B:     var_450 = var_2B4 & "','" & CVar(CStr(var_328)) & "','" & IIf((CStr(var_37C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F920C8) & "'," 
  loc_13E884F:     unk_4A88FE.Execute CStr(var_450 & var_470 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_544, -1
  loc_13E88C7:   End If
  loc_13E88CA: Next var_198 'Integer
  loc_13E88D5: unk_4A88FE.CommitTrans
  loc_13E88DE: var_86 = CByte(0) 'Byte
  loc_13E88ED: Set var_1A8 = Me.Txt
  loc_13E88F3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_13E8906: Set var_8C = Me.Txt
  loc_13E890C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_90)
  loc_13E891C: var_100 = CVar(var_90.Tag) 'String
  loc_13E8932: Set var_94 = Me.Txt
  loc_13E8938: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A4, var_19C)
  loc_13E8940: 6 = var_1A4.Tag
  loc_13E894D: var_AC = Space((var_100 - Len(var_19C)))
  loc_13E8955: var_110 = (var_1EC + CVar(var_1A4))
  loc_13E8959: var_C0 = "**"
  loc_13E895E: var_130 = (CVar(var_19C & var_90.Tag & "',") + var_C0)
  loc_13E8989: var_1B8 = (1 + Format(CVar(var_1EC), "dd/mm/yyyy"))
  loc_13E89CA: Me.Requery -1
  loc_13E89F7: Me.Find "SearchCode ='" & CStr(CVar(var_19C & var_90.Tag & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'", 0, 1
  loc_13E8A07: Set var_8C = Me.TopCtrl1
  loc_13E8A0D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_13E8A26: If (CStr(1) = "Add") Then
  loc_13E8A29:   Call TopCtrl1_UnknownEvent_A()
  loc_13E8A2E:   Exit Sub
  loc_13E8A2F: End If
  loc_13E8A44: var_98 = "INI"
  loc_13E8A52: Call Proc_325_58_E7B054(Proc_5_1_100CB50(var_98, Me), global_96)
  loc_13E8A5D: Call Proc_325_57_1384C6C(CVar("SearchCode ='" & CStr(CVar(var_19C & var_90.Tag & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'" & var_98 & "',") & var_100)
  loc_13E8A62: Exit Sub
  loc_13E8A63: ' Referenced from: 13E815C
  loc_13E8A6C: If (CInt(var_86) = 1) Then
  loc_13E8A75:   unk_4A88FE.RollbackTrans
  loc_13E8A7A: End If
  loc_13E8A82: Set var_8C = Err()
  loc_13E8A88: Call 0.Method_arg_2C (var_98)
  loc_13E8AA1: MsgBox(CVar(var_98), &H10, var_100, CVar("SearchCode ='" & CStr(CVar(var_19C & var_90.Tag & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'" & var_98 & "',"), CVar("SearchCode ='" & CStr(CVar(var_19C & var_90.Tag & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'" & var_98 & "',") & var_100)
  loc_13E8AB4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E86740
  'Data Table: 4A88E0
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E866E3: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E866F6: Set var_A8 = Me.TxtGrid
  loc_E866FC: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E86704: var_AC.Visible = False
  loc_E8671E: Set var_A8 = Me.TxtGrid
  loc_E86724: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E8672C: var_AC.MaxLength = 0
  loc_E86738: Call Proc_325_59_EB8744()
  loc_E8673D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67340
  'Data Table: 4A88E0
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E672FC: Set var_88 = Me.TxtGrid
  loc_E67302: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6731C: If (var_8C.Visible = 0) Then
  loc_E67335:   Me.FGrid.BackColorSel = CVar(CLng(global_84))
  loc_E6733D: End If
  loc_E6733D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1EFF0
  'Data Table: 4A88E0
  loc_E1EFE7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EFEF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0016C
  'Data Table: 4A88E0
  loc_E00164: Call Proc_325_54_E43498()
  loc_E00169: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '11F1958
  'Data Table: 4A88E0
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_11F14C4: Set var_88 = Me.TopCtrl1
  loc_11F14CA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11F150F: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_11F1518:   Call Form_KeyDown(Cancel, arg_10)
  loc_11F151D: End If
  loc_11F1521: Set var_88 = Me.TopCtrl1
  loc_11F1527: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11F1540: If (CStr() = "Browse") Then
  loc_11F1543:   Exit Sub
  loc_11F1544: End If
  loc_11F1561: var_C4 = Me.FGrid.Rows
  loc_11F15B8: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_11F15CE:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11F15DE:   var_9C = "+{Tab}"
  loc_11F15E4:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_11F15EE:   Cancel = 0
  loc_11F15F4: Else
  loc_11F15FE:   var_B0 = Me.FGrid.Rows
  loc_11F164B:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_11F1661:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11F1677:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_11F1681:     Cancel = 0
  loc_11F16BB:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_11F16BE:       Call TopCtrl1_UnknownEvent_16()
  loc_11F16C3:     End If
  loc_11F16C3:   End If
  loc_11F16C3: End If
  loc_11F16C9: global_92 = Cancel
  loc_11F16EF: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11F1713: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_11F1729:   var_11C = CLng(Me.FGrid.Col)
  loc_11F1739:   If (var_11C = CLng(2)) Then
  loc_11F174F:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F1757:     var_F8 = CVar(CLng(2)) 'Long
  loc_11F175C:     var_12C = vbNullString
  loc_11F1766:     Set var_A0 = Me.FGrid
  loc_11F176C:     LateIdCallSt
  loc_11F1791:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F1799:     var_F8 = CVar(CLng(1)) 'Long
  loc_11F179E:     var_12C = vbNullString
  loc_11F17A8:     Set var_A0 = Me.FGrid
  loc_11F17AE:     LateIdCallSt
  loc_11F17D3:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F17DB:     var_F8 = CVar(CLng(3)) 'Long
  loc_11F17E0:     var_12C = vbNullString
  loc_11F17EA:     Set var_A0 = Me.FGrid
  loc_11F17F0:     LateIdCallSt
  loc_11F1815:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F181D:     var_F8 = CVar(CLng(4)) 'Long
  loc_11F1822:     var_12C = vbNullString
  loc_11F182C:     Set var_A0 = Me.FGrid
  loc_11F1832:     LateIdCallSt
  loc_11F1857:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F185F:     var_F8 = CVar(CLng(5)) 'Long
  loc_11F1864:     var_12C = vbNullString
  loc_11F186E:     Set var_A0 = Me.FGrid
  loc_11F1874:     LateIdCallSt
  loc_11F1899:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F18A1:     var_F8 = CVar(CLng(6)) 'Long
  loc_11F18A6:     var_12C = vbNullString
  loc_11F18B0:     Set var_A0 = Me.FGrid
  loc_11F18B6:     LateIdCallSt
  loc_11F18CB:   Else
  loc_11F18D2:     If Not (var_11C = CLng(3)) Then
  loc_11F18DC:       If Not (var_11C = CLng(4)) Then
  loc_11F18E6:         If (var_11C = CLng(5)) Then
  loc_11F18E9:         End If
  loc_11F18E9:       End If
  loc_11F18FC:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F1914:       var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11F1919:       var_12C = vbNullString
  loc_11F1923:       Set var_B4 = Me.FGrid
  loc_11F1929:       LateIdCallSt
  loc_11F1941:     End If
  loc_11F1941:   End If
  loc_11F1941: End If
  loc_11F1947: If (Cancel = &HD) Then
  loc_11F194F:   global_94 = 0
  loc_11F1952: End If
  loc_11F1954: Cancel = 0
  loc_11F1957: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10EB0
  'Data Table: 4A88E0
  loc_E10EA1: Call FGrid_UnknownEvent_C()
  loc_E10EAB: global_94 = 0
  loc_E10EAE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1115BEC
  'Data Table: 4A88E0
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_11158A0: Set var_88 = Me.TopCtrl1
  loc_11158A6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11158BF: If (CStr() = "Browse") Then
  loc_11158C2:   Exit Sub
  loc_11158C3: End If
  loc_11158C7: Set var_88 = Me.TopCtrl1
  loc_11158CD: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11158E6: If (CStr() = "Browse") Then
  loc_11158E9:   Exit Sub
  loc_11158EA: End If
  loc_11158FD: var_A0 = CLng(Me.FGrid.Col)
  loc_111590D: If Not (var_A0 = CLng(2)) Then
  loc_1115917:   If Not (var_A0 = CLng(4)) Then
  loc_1115921:     If (var_A0 = CLng(5)) Then
  loc_1115924:     End If
  loc_1115924:   End If
  loc_1115928:   Set var_C4 = Me.FGrid
  loc_111594C:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1115979:   Set var_B4 = var_C4
  loc_111598B:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_11159B3:   Set var_88 = Me.TxtGrid
  loc_11159B9:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_11159C1:   0 = var_B4.Text
  loc_11159DA:   If (Len(var_9C) <= 1) Then
  loc_11159E9:     Set var_88 = Me.TxtGrid
  loc_11159EF:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_11159F7:     var_CA = var_B4.Text
  loc_1115A08:     Set var_B8 = Me.TxtGrid
  loc_1115A0E:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1115A16:     var_C4.Text = var_9C
  loc_1115A29:   End If
  loc_1115A35:   Set var_88 = Me.TxtGrid
  loc_1115A3B:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1115A55:   Set var_B8 = Me.TxtGrid
  loc_1115A5B:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1115A63:   var_C4.SelStart = Len(var_B4.Text)
  loc_1115A79: Else
  loc_1115A80:   If (var_A0 = CLng(3)) Then
  loc_1115A87:     Set var_C4 = Me.FGrid
  loc_1115AAB:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1115AD8:     Set var_B4 = var_C4
  loc_1115AEA:     Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_1115B12:     Set var_88 = Me.TxtGrid
  loc_1115B18:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1115B20:     0 = var_B4.Text
  loc_1115B39:     If (Len(var_9C) <= 1) Then
  loc_1115B48:       Set var_88 = Me.TxtGrid
  loc_1115B4E:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1115B56:       var_CA = var_B4.Text
  loc_1115B67:       Set var_B8 = Me.TxtGrid
  loc_1115B6D:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1115B75:       var_C4.Text = var_9C
  loc_1115B88:     End If
  loc_1115B94:     Set var_88 = Me.TxtGrid
  loc_1115B9A:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1115BB4:     Set var_B8 = Me.TxtGrid
  loc_1115BBA:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1115BC2:     var_C4.SelStart = Len(var_B4.Text)
  loc_1115BD5:   End If
  loc_1115BD5: End If
  loc_1115BDF: If (CLng(Cancel) <> &HD) Then
  loc_1115BE7:   global_94 = &HFF
  loc_1115BEA: End If
  loc_1115BEA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1F040
  'Data Table: 4A88E0
  loc_E1F037: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1F03F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1EFA0
  'Data Table: 4A88E0
  loc_E1EF97: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EF9F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E4330C
  'Data Table: 4A88E0
  Dim var_8C As TextBox
  loc_E432E0: Call Proc_325_59_EB8744()
  loc_E432F0: Set var_88 = Me.TxtGrid
  loc_E432F6: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E432FE: var_8C.Visible = False
  loc_E4330A: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1271F2C
  'Data Table: 4A88E0
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Variant
  Dim var_104 As TextBox
  Dim var_158 As String
  loc_12719A0: Call Proc_325_59_EB8744()
  loc_12719B8: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12719D3: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12719DC: Set var_BC = Me.FGrid
  loc_1271A12: Set var_104 = Me.TxtGrid
  loc_1271A18: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_1271A20: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_1271A51: var_110 = CLng(Me.FGrid.Col)
  loc_1271A61: If (var_110 = CLng(2)) Then
  loc_1271A73:   Set var_A8 = Me.TxtGrid
  loc_1271A79:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H23)
  loc_1271A81:   var_BC.MaxLength = var_110
  loc_1271ACE:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1271AD1:     Exit Sub
  loc_1271AD2:   End If
  loc_1271AE5:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1271AED:   var_DC = CVar(CLng(2)) 'Long
  loc_1271B20:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1271B29:     Me.MoveFirst
  loc_1271B41:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1271B49:     var_DC = CVar(CLng(1)) 'Long
  loc_1271B52:     Set var_BC = Me.FGrid
  loc_1271B69:     Proc_6_17_EAA2B0(var_128, CVar(CStr(var_BC.TextMatrix))), var_DC, var_94)
  loc_1271B92:     Me.Find CStr("Code=" & var_128), 0, 1
  loc_1271BC2:     If (Me.EOF = &HFF) Then
  loc_1271BCB:       Me.MoveFirst
  loc_1271BD0:     End If
  loc_1271BD0:   End If
  loc_1271BD3: Else
  loc_1271BDA:   If (var_110 = CLng(3)) Then
  loc_1271BEC:     Set var_A8 = Me.TxtGrid
  loc_1271BF2:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_158)
  loc_1271BFA:     var_BC.MaxLength = var_DC
  loc_1271C0F:     If (global_94 = 0) Then
  loc_1271C1A:       var_10C = "{Home}+{End}"
  loc_1271C20:       Proc_303_0_FB9B68(CStr("Code=" & var_128), 0)
  loc_1271C28:     End If
  loc_1271C2B:   Else
  loc_1271C32:     If (var_110 = CLng(4)) Then
  loc_1271C44:       Set var_A8 = Me.TxtGrid
  loc_1271C4A:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HF)
  loc_1271C52:       var_BC.MaxLength = var_94
  loc_1271C6B:       ReDim var_15C(0 To 4)
  loc_1271C82:       var_15C(0) = "Monthly"
  loc_1271C91:       var_15C(1) = "Bi Monthly"
  loc_1271CA0:       var_15C(2) = "Quarterly"
  loc_1271CAF:       var_15C(3) = "Half Yearly"
  loc_1271CBE:       var_15C(4) = "Annual"
  loc_1271CD5:       global_64 = Array(var_15C)
  loc_1271CE0:       Set var_104 = Me.ListView
  loc_1271CFB:       Set var_BC = Me.TxtGrid
  loc_1271D15:       Set global_80 = Proc_6_66_EFF8FC(var_104, var_BC, Index, global_64)
  loc_1271D33:       Set var_A8 = Me.TxtGrid
  loc_1271D39:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, CStr("Code=" & var_128))
  loc_1271D41:       5 = var_BC.Text
  loc_1271D53:       Set var_F0 = Me.TxtGrid
  loc_1271D59:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, CStr("Code=" & var_128))
  loc_1271D61:       var_104.Tag = global_64
  loc_1271D77:     Else
  loc_1271D7E:       If (var_110 = CLng(5)) Then
  loc_1271D90:         Set var_A8 = Me.TxtGrid
  loc_1271D96:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_1271D9E:         var_BC.MaxLength = 3
  loc_1271DB7:         ReDim var_15C(0 To &HB)
  loc_1271DCE:         var_15C(0) = "Jan"
  loc_1271DDD:         var_15C(1) = "Feb"
  loc_1271DEC:         var_15C(2) = "Mar"
  loc_1271DFB:         var_15C(3) = "Apr"
  loc_1271E0A:         var_15C(4) = "May"
  loc_1271E19:         var_15C(5) = "Jun"
  loc_1271E28:         var_15C(6) = "Jul"
  loc_1271E37:         var_15C(7) = "Aug"
  loc_1271E46:         var_15C(8) = "Sep"
  loc_1271E55:         var_15C(9) = "Oct"
  loc_1271E64:         var_15C(&HA) = "Nov"
  loc_1271E73:         var_15C(&HB) = "Dec"
  loc_1271E8A:         global_64 = Array(var_15C)
  loc_1271E95:         Set var_104 = Me.ListView
  loc_1271EB0:         Set var_BC = Me.TxtGrid
  loc_1271ECA:         Set global_80 = Proc_6_66_EFF8FC(var_104, var_BC, Index, global_64)
  loc_1271EE8:         Set var_A8 = Me.TxtGrid
  loc_1271EEE:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, CStr("Code=" & var_128))
  loc_1271EF6:         &HC = var_BC.Text
  loc_1271F08:         Set var_F0 = Me.TxtGrid
  loc_1271F0E:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, CStr("Code=" & var_128))
  loc_1271F16:         var_104.Tag = global_64
  loc_1271F29:       End If
  loc_1271F29:     End If
  loc_1271F29:   End If
  loc_1271F29: End If
  loc_1271F29: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12C9270
  'Data Table: 4A88E0
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C0 As Variant
  Dim var_94 As DataGrid
  Dim var_D8 As DataGrid
  Dim var_E4 As TextBox
  Dim var_F4 As TextBox
  loc_12C8C14: On Error Goto loc_12C926A
  loc_12C8C21: If (CLng(Shift) = &H1B) Then
  loc_12C8C31:   Set var_88 = Me.TxtGrid
  loc_12C8C37:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_12C8C51:   Set var_94 = Me.TxtGrid
  loc_12C8C57:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_12C8C5F:   var_98.Text = var_8C.Tag
  loc_12C8C7B:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12C8C80:   Call Proc_325_59_EB8744(arg_14)
  loc_12C8C89:   Set var_88 = Me.FGrid
  loc_12C8CA6:   Set var_88 = Me.TxtGrid
  loc_12C8CAC:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_12C8CB4:   var_8C.Visible = False
  loc_12C8CC0:   Exit Sub
  loc_12C8CC1: End If
  loc_12C8CE4: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_12C8CF3:   Set var_88 = Me.TxtGrid
  loc_12C8CF9:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B0)
  loc_12C8D01:   var_AC = var_8C.Left
  loc_12C8D18:   Me.DGSundry.Left = CVar(var_B0)
  loc_12C8D32:   Set var_94 = Me.TxtGrid
  loc_12C8D38:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_12C8D40:   var_D4 = var_98.Height
  loc_12C8D51:   Set var_88 = Me.TxtGrid
  loc_12C8D57:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_12C8D5F:   var_B0 = var_8C.Top
  loc_12C8D6B:   var_C0 = CVar((var_B0 + var_D4)) 'Single
  loc_12C8D7A:   Me.DGSundry.Top = CVar(var_B0)
  loc_12C8D97:   Set var_E4 = Me.TxtGrid
  loc_12C8DA4:   Set var_98 = Nothing
  loc_12C8DDD:   Proc_6_69_134A198(Me.DGSundry, var_E4, KeyCode, global_104, Shift, &HFF)
  loc_12C8DFB:   If (CLng(Shift) = &HD) Then
  loc_12C8E04:     Call Proc_325_55_133B254(KeyCode, var_DA, 1, Nothing)
  loc_12C8E0F:     If (var_DA = &HFF) Then
  loc_12C8E55:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 6)
  loc_12C8E65:     End If
  loc_12C8E65:   End If
  loc_12C8E68: Else
  loc_12C8E6F:   If (var_AC = CLng(3)) Then
  loc_12C8EB2:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_12C8EBB:       Call Proc_325_55_133B254(KeyCode, var_DA, 0, 3)
  loc_12C8EC6:       If (var_DA = &HFF) Then
  loc_12C8EFD:         Set var_8C = Me.TxtGrid
  loc_12C8F0C:         Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_94, 6, 0)
  loc_12C8F1C:       End If
  loc_12C8F1C:     End If
  loc_12C8F1F:   Else
  loc_12C8F26:     If (var_AC = CLng(4)) Then
  loc_12C8F38:       Set var_88 = Me.TxtGrid
  loc_12C8F3E:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, &HF, 4, 0)
  loc_12C8F46:       var_8C.MaxLength = 0
  loc_12C8F74:       Set var_88 = Me.TxtGrid
  loc_12C8F7A:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, var_B0)
  loc_12C8F82:       var_98 = var_8C.Left
  loc_12C8F94:       Set var_94 = Me.TxtGrid
  loc_12C8F9A:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98, var_D4)
  loc_12C8FA2:       0 = var_98.Top
  loc_12C8FB4:       Set var_D8 = Me.TxtGrid
  loc_12C8FBA:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E4)
  loc_12C8FD4:       Set var_F0 = Me.TxtGrid
  loc_12C8FDA:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F4)
  loc_12C8FE2:       var_F8 = var_F4.Width
  loc_12C902A:       Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12C9058:       If (CLng(Shift) = &HD) Then
  loc_12C9061:         Call Proc_325_55_133B254(KeyCode, var_DA, CInt(var_B0), CInt((var_D4 + var_E4.Height)))
  loc_12C906C:         If (var_DA = &HFF) Then
  loc_12C907A:           Set var_98 = Me.TxtGrid
  loc_12C90A3:           Set var_8C = var_98
  loc_12C90B2:           Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_94, 6)
  loc_12C90C2:         End If
  loc_12C90C2:       End If
  loc_12C90C5:     Else
  loc_12C90CC:       If (var_AC = CLng(5)) Then
  loc_12C90DE:         Set var_88 = Me.TxtGrid
  loc_12C90E4:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 3, 0, 5)
  loc_12C90EC:         var_8C.MaxLength = 0
  loc_12C911A:         Set var_88 = Me.TxtGrid
  loc_12C9120:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, var_B0)
  loc_12C9128:         CInt(var_F8) = var_8C.Left
  loc_12C913A:         Set var_94 = Me.TxtGrid
  loc_12C9140:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98, var_D4)
  loc_12C9148:         1300 = var_98.Top
  loc_12C915A:         Set var_D8 = Me.TxtGrid
  loc_12C9160:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E4)
  loc_12C917A:         Set var_F0 = Me.TxtGrid
  loc_12C9180:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F4)
  loc_12C9188:         var_F8 = var_F4.Width
  loc_12C91D0:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12C91FE:         If (CLng(Shift) = &HD) Then
  loc_12C9207:           Call Proc_325_55_133B254(KeyCode, var_DA, CInt(var_B0), CInt((var_D4 + var_E4.Height)))
  loc_12C9212:           If (var_DA = &HFF) Then
  loc_12C925A:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, CByte(7))
  loc_12C926A:           End If
  loc_12C926A:         End If
  loc_12C926A:       End If
  loc_12C926A:       ' Referenced from: 12C8C14
  loc_12C926A:     End If
  loc_12C926A:   End If
  loc_12C926A: End If
  loc_12C926A: Proc_6_60_E62BC4(0, 0, 0)
  loc_12C926F: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F000CC
  'Data Table: 4A88E0
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_EFFFF3: Proc_6_58_E054C0(arg_10)
  loc_F00004: If (KeyAscii = 0) Then
  loc_F0001A:   var_A0 = CLng(Me.FGrid.Col)
  loc_F0002A:   If (var_A0 = CLng(2)) Then
  loc_F00049:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_F00050:       Set var_AC = Me.TxtGrid
  loc_F0005B:       var_A4 = "Name"
  loc_F00076:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_104, arg_10)
  loc_F00085:     End If
  loc_F00088:   Else
  loc_F0008F:     If (var_A0 = CLng(3)) Then
  loc_F0009C:       Set var_8C = Me.TxtGrid
  loc_F000A2:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F000BD:       Proc_6_42_129A86C(var_AC, arg_10, 8, 2)
  loc_F000C9:     End If
  loc_F000C9:   End If
  loc_F000C9: End If
  loc_F000C9: Exit Sub
  loc_F000CA: 0 = arg_6803
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F7C7C0
  'Data Table: 4A88E0
  Dim var_9C As Long
  loc_F7C678: On Error Goto loc_F7C7BA
  loc_F7C68E: var_9C = CLng(Me.FGrid.Col)
  loc_F7C69E: If (var_9C = CLng(2)) Then
  loc_F7C6C4:   If ((Shift <> &HD) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_F7C6D2:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_F7C6E6:     var_A4 = "Name"
  loc_F7C701:     Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_104, Shift)
  loc_F7C710:   End If
  loc_F7C713: Else
  loc_F7C71A:   If Not (var_9C = CLng(4)) Then
  loc_F7C724:     If (var_9C = CLng(5)) Then
  loc_F7C727:     End If
  loc_F7C749:     If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F7C75A:       Call TxtGrid_KeyDown(KeyCode, global_92)
  loc_F7C75F:     End If
  loc_F7C77A:     If (Me.FrmList.Visible = &HFF) Then
  loc_F7C7A9:       Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, KeyCode, Shift, global_80)
  loc_F7C7B9:     End If
  loc_F7C7B9:   End If
  loc_F7C7B9: End If
  loc_F7C7B9: Exit Sub
  loc_F7C7BA: ' Referenced from: F7C678
  loc_F7C7BA: Proc_6_60_E62BC4(0, var_A4, &HFF)
  loc_F7C7BF: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E2250C
  'Data Table: 4A88E0
  Dim arg_10 As Integer
  loc_E224F4: If (Cancel = 0) Then
  loc_E224FD:   Call Proc_325_55_133B254(Cancel, var_88)
  loc_E22506:   arg_10 = Not(var_88)
  loc_E22509: End If
  loc_E22509: Exit Sub
End Sub

Public Function MasterFormExitGet() '4A95E0
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4A95EF
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '4A95FE
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '4A960D
  SearchCode = Value
End Sub

Public Function global_60Get() '4A961C
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4A962B
  global_60 = Value
End Sub

Public Function global_64Get() '4A963A
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '4A9649
  global_64 = Value
End Sub

Public Sub global_64Set(Value) '4A9658
  global_64 = Value
End Sub

Public Function global_80Get() '4A9667
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '4A9676
  global_80 = Value
End Sub

Public Sub global_80Set(Value) '4A9685
  global_80 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E95300
  'Data Table: 4A88E0
  Dim Me As Recordset15
  loc_E9528E: On Error Goto loc_E952F7
  loc_E95297: Me.MoveFirst
  loc_E952C1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E952E9: Proc_5_0_110649C(&HFF, Me, global_96)
  loc_E952F1: Call Proc_325_57_1384C6C(0)
  loc_E952F6: Exit Sub
  loc_E952F7: ' Referenced from: E9528E
  loc_E952F7: Proc_6_60_E62BC4(var_A0)
  loc_E952FC: Exit Sub
End Sub

Public Sub Proc_325_52_1136420
  'Data Table: 4A88E0
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_11360A0: On Error Goto loc_1136419
  loc_11360B1: Set var_88 = Me.Txt
  loc_11360B7: Call 0.Method_Proc_325_52_11364200 (CInt(0), var_8C)
  loc_11360D6: Me.DGVType.Left = CVar(var_8C.Left)
  loc_11360F2: Set var_B4 = Me.Txt
  loc_11360F8: Call 0.Method_Proc_325_52_11364200 (CInt(0), var_B8)
  loc_1136113: Set var_88 = Me.Txt
  loc_1136119: Call 0.Method_Proc_325_52_11364200 (CInt(0), var_8C)
  loc_1136131: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1136140: Me.DGVType.Top = CVar(var_8C.Left)
  loc_1136156: Set var_C4 = Me.FGrid
  loc_1136165: var_C4.Height = CVar(CDbl(4250))
  loc_1136176: var_C4.Width = CVar(CDbl(8500))
  loc_1136187: var_C4.Cols = 7
  loc_1136198: var_C4.Rows = 2
  loc_11361B1: global_84 = CStr(CLng(var_C4.BackColor))
  loc_11361BB: var_A0 = 0
  loc_11361C4: var_E8 = &H64
  loc_11361D0: LateIdCallSt
  loc_11361DB: var_A0 = CVar(CLng(1)) 'Long
  loc_11361E0: var_E8 = 0
  loc_11361EC: LateIdCallSt
  loc_11361F7: var_A0 = CVar(CLng(2)) 'Long
  loc_11361FC: var_E8 = &HBB8
  loc_1136208: LateIdCallSt
  loc_1136210: var_A0 = 0
  loc_113621C: var_E8 = CVar(CLng(2)) 'Long
  loc_1136221: var_108 = "Facility Name"
  loc_113622A: LateIdCallSt
  loc_1136235: var_A0 = CVar(CLng(2)) 'Long
  loc_1136240: var_E8 = CVar(CInt(1)) 'Integer
  loc_1136247: LateIdCallSt
  loc_1136252: var_A0 = CVar(CLng(3)) 'Long
  loc_1136257: var_E8 = &H4B0
  loc_1136263: LateIdCallSt
  loc_113626B: var_A0 = 0
  loc_1136277: var_E8 = CVar(CLng(3)) 'Long
  loc_113627C: var_108 = "Unit Rate"
  loc_1136285: LateIdCallSt
  loc_1136290: var_A0 = CVar(CLng(3)) 'Long
  loc_113629B: var_E8 = CVar(CInt(7)) 'Integer
  loc_11362A2: LateIdCallSt
  loc_11362AD: var_A0 = CVar(CLng(3)) 'Long
  loc_11362B8: var_E8 = CVar(CInt(7)) 'Integer
  loc_11362BF: LateIdCallSt
  loc_11362CA: var_A0 = CVar(CLng(4)) 'Long
  loc_11362CF: var_E8 = &H4B0
  loc_11362DB: LateIdCallSt
  loc_11362E3: var_A0 = 0
  loc_11362EF: var_E8 = CVar(CLng(4)) 'Long
  loc_11362F4: var_108 = "DueOn"
  loc_11362FD: LateIdCallSt
  loc_1136308: var_A0 = CVar(CLng(4)) 'Long
  loc_1136313: var_E8 = CVar(CInt(1)) 'Integer
  loc_113631A: LateIdCallSt
  loc_1136325: var_A0 = CVar(CLng(4)) 'Long
  loc_1136330: var_E8 = CVar(CInt(1)) 'Integer
  loc_1136337: LateIdCallSt
  loc_1136342: var_A0 = CVar(CLng(5)) 'Long
  loc_1136347: var_E8 = &H514
  loc_1136353: LateIdCallSt
  loc_113635B: var_A0 = 0
  loc_1136367: var_E8 = CVar(CLng(5)) 'Long
  loc_113636C: var_108 = "StartMonth"
  loc_1136375: LateIdCallSt
  loc_1136380: var_A0 = CVar(CLng(5)) 'Long
  loc_113638B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1136392: LateIdCallSt
  loc_113639D: var_A0 = CVar(CLng(5)) 'Long
  loc_11363A8: var_E8 = CVar(CInt(1)) 'Integer
  loc_11363AF: LateIdCallSt
  loc_11363BA: var_A0 = CVar(CLng(6)) 'Long
  loc_11363BF: var_E8 = &H514
  loc_11363CB: LateIdCallSt
  loc_11363D3: var_A0 = 0
  loc_11363DF: var_E8 = CVar(CLng(6)) 'Long
  loc_11363E4: var_108 = "Charge Type"
  loc_11363ED: LateIdCallSt
  loc_11363F8: var_A0 = CVar(CLng(6)) 'Long
  loc_1136403: var_E8 = CVar(CInt(1)) 'Integer
  loc_113640A: LateIdCallSt
  loc_1136414: Set var_C4 = Nothing 
  loc_1136418: Exit Sub
  loc_1136419: ' Referenced from: 11360A0
  loc_1136419: Proc_6_60_E62BC4(var_C4, var_E8, var_A0, var_C4, var_108, var_E8, var_A0, var_C4)
  loc_113641E: Exit Sub
End Sub

Public Sub Proc_325_53_FC91F4
  'Data Table: 4A88E0
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_4A88FE As Connection15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  loc_FC908F: If (Me.RecordCount = 0) Then
  loc_FC9092:   Proc_325_53_FC91F4 = 
  loc_FC9098: End If
  loc_FC90D3: Set var_94 = Me.Txt
  loc_FC90D9: Call 0.Method_Proc_325_53_FC91F40 (CInt(0), var_98, var_9C, "Select Count(*) From LocationFacility Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (LcCode='", var_130, -1)
  loc_FC90F1: var_DC = CVar(var_138 & var_9C & "' And AppDate=") 'String
  loc_FC90FF: Set var_A8 = Me.Txt
  loc_FC9105: Call 0.Method_Proc_325_53_FC91F40 (CInt(1), var_AC, var_DC)
  loc_FC9114: Proc_6_7_F25D88(var_CC, CVar(var_AC), 0)
  loc_FC911C: var_EC = var_14C & var_CC 
  loc_FC9133: unk_4A88FE.Execute CStr(var_EC & ")"), var_15C, 
  loc_FC913B:  = var_98.Tag.Fields
  loc_FC9143:  = var_138.Item()
  loc_FC914B:  = var_14C.Value
  loc_FC9188: If (var_15C > 0) Then
  loc_FC91AC:   MsgBox("Duplicate Entry", &H40, "Information", var_DC, var_EC)
  loc_FC91C7:   Set var_94 = Me.Txt
  loc_FC91CD:   Call 0.Method_Proc_325_53_FC91F40 (CInt(0))
  loc_FC91D5:   var_98.SetFocus
  loc_FC91E6:   Proc_325_53_FC91F4 = &HFF
  loc_FC91EC: End If
  loc_FC91EC: Proc_325_53_FC91F4 = var_98
End Sub

Public Sub Proc_325_54_E43498
  'Data Table: 4A88E0
  loc_E43474: Set var_88 = Me.TopCtrl1
  loc_E4347A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E43493: If (CStr() = "Browse") Then
  loc_E43496:   Exit Sub
  loc_E43497: End If
  loc_E43497: Exit Sub
End Sub

Public Sub Proc_325_55_133B254(arg_C) '133B254
  'Data Table: 4A88E0
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_D0 As Variant
  Dim var_150 As Variant
  Dim var_164 As MSHFlexGrid
  Dim var_F0 As Variant
  Dim var_130 As Variant
  Dim var_178 As Variant
  Dim var_120 As Variant
  Dim var_B0 As String
  Dim var_168 As Variant
  loc_133AA9F: var_A0 = CLng(Me.FGrid.Col)
  loc_133AAAF: If (var_A0 = CLng(2)) Then
  loc_133AAD2:   var_A6 = Me.EOF
  loc_133AB00:   Set var_8C = Me.TxtGrid
  loc_133AB06:   Call 0.Method_Proc_325_55_133B2540 (arg_C, var_AC, var_B0)
  loc_133AB0E:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_133AB26:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_133AB3C:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133AB44:     var_E0 = CVar(CLng(2)) 'Long
  loc_133AB49:     var_100 = vbNullString
  loc_133AB53:     Set var_AC = Me.FGrid
  loc_133AB59:     LateIdCallSt
  loc_133AB7E:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133AB86:     var_E0 = CVar(CLng(1)) 'Long
  loc_133AB8B:     var_100 = vbNullString
  loc_133AB95:     Set var_AC = Me.FGrid
  loc_133AB9B:     LateIdCallSt
  loc_133ABC0:     var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133ABC8:     var_100 = CVar(CLng(3)) 'Long
  loc_133ABF9:     var_150 = CVar(CStr(Format(vbNullString, "0.00"))) 'String
  loc_133AC01:     Set var_AC = Me.FGrid
  loc_133AC07:     LateIdCallSt
  loc_133AC36:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133AC3E:     var_E0 = CVar(CLng(4)) 'Long
  loc_133AC43:     var_100 = vbNullString
  loc_133AC4D:     Set var_AC = Me.FGrid
  loc_133AC53:     LateIdCallSt
  loc_133AC78:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133AC80:     var_E0 = CVar(CLng(5)) 'Long
  loc_133AC85:     var_100 = vbNullString
  loc_133AC8F:     Set var_AC = Me.FGrid
  loc_133AC95:     LateIdCallSt
  loc_133ACBA:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133ACC2:     var_E0 = CVar(CLng(6)) 'Long
  loc_133ACC7:     var_100 = vbNullString
  loc_133ACD1:     Set var_AC = Me.FGrid
  loc_133ACD7:     LateIdCallSt
  loc_133ACEC:   Else
  loc_133ACEF:     Call Proc_325_60_FBB6B0(var_A6, var_AC, var_100, var_E0, var_C0, var_AC, var_100, var_E0)
  loc_133ACFA:     If (var_A6 = 0) Then
  loc_133AD02:       Proc_325_55_133B254 = 0
  loc_133AD08:     End If
  loc_133AD1B:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133AD23:     var_F0 = CVar(CLng(2)) 'Long
  loc_133AD56:     var_130 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_133AD5E:     Set var_168 = Me.FGrid
  loc_133AD64:     LateIdCallSt
  loc_133ADC5:     var_120 = Me.Fields.Item("Code").Value
  loc_133ADDC:     LateIdCallSt
  loc_133AE21:     Proc_6_39_E7C810(var_120, CVar(Me.Fields.Item("UnitRate")), Me.FGrid, CVar(CStr(var_120)), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), Me.FGrid)
  loc_133AE39:     var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133AE41:     var_100 = CVar(CLng(3)) 'Long
  loc_133AE6A:     var_178 = CVar(CStr(Format(var_120, "0.00"))) 'String
  loc_133AE72:     Set var_168 = Me.FGrid
  loc_133AE78:     LateIdCallSt
  loc_133AEAB:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133AEB3:     var_F0 = CVar(CLng(6)) 'Long
  loc_133AEE6:     var_130 = CVar(CStr(Me.Fields.Item("ChargeType").Value)) 'String
  loc_133AEEE:     Set var_168 = Me.FGrid
  loc_133AEF4:     LateIdCallSt
  loc_133AF10:   End If
  loc_133AF29:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_133AF2E:   var_E0 = 1
  loc_133AF3B:   Set var_AC = Me.FGrid
  loc_133AF4C:   var_B0 = CStr(var_AC.TextMatrix))
  loc_133AF65:   If (var_B0 <> vbNullString) Then
  loc_133AF68:     var_C0 = vbNullString
  loc_133AF72:     Set var_8C = Me.FGrid
  loc_133AF83:   End If
  loc_133AF86: Else
  loc_133AF8D:   If (var_A0 = CLng(4)) Then
  loc_133AF9D:     Set var_8C = Me.TxtGrid
  loc_133AFA3:     Call 0.Method_Proc_325_55_133B2540 (arg_C, var_AC, var_B0, FGrid.DispID_10000, var_C0, var_E0, var_C0)
  loc_133AFAB:     var_168 = var_AC.Text
  loc_133AFC2:     If (var_B0 <> vbNullString) Then
  loc_133AFDD:       Set var_AC = Me.ListView.SelectedItem
  loc_133AFE3:       var_B0 = var_AC.Text
  loc_133AFF5:       Set var_164 = Me.TxtGrid
  loc_133AFFB:       Call 0.Method_Proc_325_55_133B2540 (arg_C, var_168, var_B0, var_130, var_F0)
  loc_133B003:       var_168.Text = var_D0
  loc_133B019:     End If
  loc_133B02C:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133B046:     Set var_8C = Me.TxtGrid
  loc_133B04C:     Call 0.Method_Proc_325_55_133B2540 (arg_C, var_AC, var_B0, CVar(CLng(4)))
  loc_133B054:     var_C0 = var_AC.Text
  loc_133B05C:     var_120 = CVar(var_B0) 'String
  loc_133B064:     Set var_168 = Me.FGrid
  loc_133B06A:     LateIdCallSt
  loc_133B087:   Else
  loc_133B08E:     If (var_A0 = CLng(5)) Then
  loc_133B09E:       Set var_8C = Me.TxtGrid
  loc_133B0A4:       Call 0.Method_Proc_325_55_133B2540 (arg_C, var_AC, var_B0, var_168)
  loc_133B0AC:       var_120 = var_AC.Text
  loc_133B0C3:       If (var_B0 <> vbNullString) Then
  loc_133B0DE:         Set var_AC = Me.ListView.SelectedItem
  loc_133B0E4:         var_B0 = var_AC.Text
  loc_133B0F6:         Set var_164 = Me.TxtGrid
  loc_133B0FC:         Call 0.Method_Proc_325_55_133B2540 (arg_C, var_168, var_B0)
  loc_133B104:         var_168.Text = var_168
  loc_133B11A:       End If
  loc_133B12D:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133B147:       Set var_8C = Me.TxtGrid
  loc_133B14D:       Call 0.Method_Proc_325_55_133B2540 (arg_C, var_AC, var_B0, CVar(CLng(5)))
  loc_133B155:       var_C0 = var_AC.Text
  loc_133B15D:       var_120 = CVar(var_B0) 'String
  loc_133B165:       Set var_168 = Me.FGrid
  loc_133B16B:       LateIdCallSt
  loc_133B188:     Else
  loc_133B18F:       If (var_A0 = CLng(3)) Then
  loc_133B19E:         Set var_8C = Me.TxtGrid
  loc_133B1A4:         Call 0.Method_Proc_325_55_133B2540 (0, var_AC, var_B0, var_168)
  loc_133B1AC:         var_120 = var_AC.Text
  loc_133B1CF:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_133B1E7:         var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_133B214:         var_178 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_133B21C:         Set var_17C = Me.FGrid
  loc_133B222:         LateIdCallSt
  loc_133B249:       End If
  loc_133B249:     End If
  loc_133B249:   End If
  loc_133B249: End If
  loc_133B24E: Proc_325_55_133B254 = &HFF
End Sub

Public Sub Proc_325_56_F2AAE0
  'Data Table: 4A88E0
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F2A9E2: Set var_8C = Me.Txt
  loc_F2A9E8: Call 0.Method_Proc_325_56_F2AAE0C (var_8E, var_86)
  loc_F2A9F8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F2AA0E:   Set var_8C = Me.Txt
  loc_F2AA14:   Call 0.Method_Proc_325_56_F2AAE00 (CInt(var_86), var_98)
  loc_F2AA1C:   var_98.Text = vbNullString
  loc_F2AA38:   Set var_8C = Me.Txt
  loc_F2AA3E:   Call 0.Method_Proc_325_56_F2AAE00 (CInt(var_86), var_98)
  loc_F2AA46:   var_98.Tag = vbNullString
  loc_F2AA55: Next var_92 'Byte
  loc_F2AA68: Me.LblDepart.Caption = vbNullString
  loc_F2AA83: Me.FGrid.Rows = 1
  loc_F2AAA0: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F2AAA8: Set var_98 = Me.FGrid
  loc_F2AAD7: Me.FGrid.FixedRows = 1
  loc_F2AADF: Exit Sub
End Sub

Public Sub Proc_325_57_1384C6C
  'Data Table: 4A88E0
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Variant
  Dim unk_4A88FE As Connection15
  Dim var_88 As Recordset15
  Dim var_130 As TextBox
  Dim var_12C As Variant
  Dim var_118 As Variant
  Dim var_8A As Integer
  loc_13843E8: On Error Goto loc_1384C65
  loc_1384402: If (Me.RecordCount > 0) Then
  loc_1384405:   Call Proc_325_56_F2AAE0()
  loc_1384412:   If (MemVar_1F923AC = "A") Then
  loc_1384429:     var_94 = "Select LF.*,LM.Name As LcName,FM.Name As FcName,FM.ChargeType From ((LocationFacility LF Left Join LocationMast LM On LF.LcCode=LM.Code) Left Join FacilityMast FM On LF.FcCode=FM.Code) Where LF.LogSite_Code='" & MemVar_1F92078
  loc_138443E:     var_D4 = CVar(var_94 & "' and LF.Site_Code='" & MemVar_1F92070 & "' and LF.LcCode+Space(6-len(LF.LcCode))+'**'+Format(LF.AppDate,'dd/mm/yyyy')='") 'String
  loc_1384485:     unk_4A88FE.Execute CStr(var_D4 & Me.Fields.Item("SearchCode").Value & "' Order By LF.AppDate"), var_128, -1
  loc_1384490:     Set var_88 = var_12C
  loc_13844B7:   Else
  loc_13844BF:     If (MemVar_1F923AC = "S") Then
  loc_13844D6:       var_94 = "Select LF.*,LM.Name As LcName,FM.Name As FcName,FM.ChargeType From ((LocationFacility LF Left Join LocationMast LM On LF.LcCode=LM.Code) Left Join FacilityMast FM On LF.FcCode=FM.Code) Where LF.LogSite_Code='" & MemVar_1F92078
  loc_13844EB:       var_D4 = CVar(var_94 & "' and LF.Site_Code='" & MemVar_1F92070 & "' and LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103)='") 'String
  loc_1384532:       unk_4A88FE.Execute CStr(var_D4 & Me.Fields.Item("SearchCode").Value & "' Order By LF.AppDate"), var_128, -1
  loc_138453D:       Set var_88 = var_12C
  loc_1384561:     End If
  loc_1384561:   End If
  loc_1384575:   If (var_88.RecordCount > 0) Then
  loc_13845AE:     Set var_12C = Me.Txt
  loc_13845B4:     Call 0.Method_Proc_325_57_1384C6C0 (CInt(0), var_130)
  loc_13845BC:     var_130.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("lccode")), var_12C)
  loc_1384606:     Set var_12C = Me.Txt
  loc_138460C:     Call 0.Method_Proc_325_57_1384C6C0 (CInt(0), var_130)
  loc_1384614:     var_130.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("LcName")))
  loc_1384661:     If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("LcName"))) = vbNullString) Then
  loc_1384664:     End If
  loc_1384699:     Me.LblDepart.Caption = Proc_6_38_E68A98(CVar(var_88.Fields.Item("LcName")))
  loc_13846FD:     Set var_12C = Me.Txt
  loc_1384703:     Call 0.Method_Proc_325_57_1384C6C0 (CInt(1), var_130, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/MMM/yyyy")))
  loc_138470B:     var_130.Text = 1
  loc_138475F:     var_12C = var_88.Fields
  loc_13847C8:     var_190 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), 1) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_12C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_138480D:     Me.LblUser.Caption = CStr(var_12C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_13848E8:     var_190 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_138492D:     Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1384967:     var_8A = 1
  loc_138497D:     Me.FGrid.Rows = 1
  loc_1384985:     ' Referenced from: 1384BDC
  loc_1384994:     If Not(var_88.EOF) Then
  loc_1384997:       var_B0 = vbNullString
  loc_13849A1:       Set var_A0 = Me.FGrid
  loc_13849B6:       Set var_1E8 = Me.FGrid
  loc_13849F2:       var_D4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("fcCode")), CVar(CLng(1)), CVar(CLng(var_8A)))) 'String
  loc_13849F9:       LateIdCallSt
  loc_1384A44:       var_D4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FCname")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1E8)) 'String
  loc_1384A4B:       LateIdCallSt
  loc_1384A7D:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_1384AB9:       LateIdCallSt
  loc_1384B08:       var_D4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DueOn")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(Format(CVar(var_88.Fields.Item("UnitRate")), "0.00"))), 1, 1)) 'String
  loc_1384B0F:       LateIdCallSt
  loc_1384B5A:       var_D4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("StartMonth")), CVar(CLng(5)), CVar(CLng(var_8A)), var_1E8, var_D4, CVar(CLng(3)))) 'String
  loc_1384B61:       LateIdCallSt
  loc_1384BAC:       var_D4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChargeType")), CVar(CLng(6)), CVar(CLng(var_8A)), var_1E8, var_D4)) 'String
  loc_1384BB3:       LateIdCallSt
  loc_1384BC7:       Set var_1E8 = Nothing 
  loc_1384BD1:       var_8A = (var_8A + 1)
  loc_1384BD7:       var_88.MoveNext
  loc_1384BDC:       GoTo loc_1384985
  loc_1384BDF:     End If
  loc_1384BDF:   End If
  loc_1384BDF:   var_B0 = 0
  loc_1384BE9:   Set var_A0 = Me.FGrid
  loc_1384C16:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1384C19:     var_B0 = "1"
  loc_1384C23:     Set var_A0 = Me.FGrid
  loc_1384C34:   End If
  loc_1384C34:   var_B0 = 1
  loc_1384C47:   Me.FGrid.FixedRows = var_B0
  loc_1384C52: Else
  loc_1384C52:   Call Proc_325_56_F2AAE0(FGrid.DispID_10000, var_B0, FGrid.DispID_2E, var_B0, var_8A, var_1E8)
  loc_1384C57: End If
  loc_1384C57: Call Proc_325_59_EB8744(var_D4, var_118, var_1E8)
  loc_1384C61: Set var_88 = Nothing
  loc_1384C64: Exit Sub
  loc_1384C65: ' Referenced from: 13843E8
  loc_1384C65: Proc_6_60_E62BC4(var_D4, var_D4)
  loc_1384C6A: Exit Sub
End Sub

Public Sub Proc_325_58_E7B054(arg_C) 'E7B054
  'Data Table: 4A88E0
  Dim var_98 As TextBox
  loc_E7B002: Set var_8C = Me.Txt
  loc_E7B008: Call 0.Method_Proc_325_58_E7B054C (var_8E, var_86)
  loc_E7B018: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7B02E:   Set var_8C = Me.Txt
  loc_E7B034:   Call 0.Method_Proc_325_58_E7B0540 (CInt(var_86), var_98)
  loc_E7B03C:   var_98.Enabled = arg_C
  loc_E7B04B: Next var_92 'Byte
  loc_E7B051: Exit Sub
End Sub

Public Sub Proc_325_59_EB8744
  'Data Table: 4A88E0
  loc_EB86C0: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EB86D2:   Me.DGVType.Visible = False
  loc_EB86DA: End If
  loc_EB86F6: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_EB8708:   Me.DGSundry.Visible = False
  loc_EB8710: End If
  loc_EB872B: If (Me.FrmList.Visible = &HFF) Then
  loc_EB873A:   Me.FrmList.Visible = False
  loc_EB8742: End If
  loc_EB8742: Exit Sub
End Sub

Public Sub Proc_325_60_FBB6B0
  'Data Table: 4A88E0
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBB533: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FBB538:   var_92 = 2 'Byte
  loc_FBB53C: End If
  loc_FBB545: Set var_98 = Me.TxtGrid
  loc_FBB54B: Call 0.Method_Proc_325_60_FBB6B00 (0, var_B0)
  loc_FBB56E: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBB5A2: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBB5C6:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBB5C9:     GoTo loc_FBB69B
  loc_FBB5CC:   End If
  loc_FBB5D0:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBB5FA:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBB604:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBB639:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBB65D:     MsgBox("Duplicate Facility Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBB676:     Set var_98 = Me.TxtGrid
  loc_FBB67C:     Call 0.Method_Proc_325_60_FBB6B00 (0, var_B0, CVar(CLng(var_92)))
  loc_FBB684:     var_B0.SetFocus
  loc_FBB695:     Proc_325_60_FBB6B0 = 0
  loc_FBB69B:     ' Referenced from: FBB5C9
  loc_FBB69B:   End If
  loc_FBB69E: Next var_D4 'Integer
  loc_FBB6A8: Proc_325_60_FBB6B0 = &HFF
End Sub
