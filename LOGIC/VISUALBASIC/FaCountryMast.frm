VERSION 5.00
Begin VB.Form FaCountryMast
  Caption = "Country Master"
  BackColor = &HFFC0C0&
  ForeColor = &HC00000&
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  FillColor = &HC00000&
  'Icon = n/a
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12705
  ClientHeight = 9030
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12705
    Height = 450
    TabIndex = 14
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4455
    Top = 2430
    Width = 3285
    Height = 285
    TabIndex = 3
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
    Left = 5595
    Top = 2865
    Width = 4410
    Height = 3150
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 2820
    Top = 3270
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 60
      Top = 45
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 9
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4455
    Top = 2115
    Width = 1170
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 7
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
    Left = 4455
    Top = 1800
    Width = 1170
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
    Left = 4455
    Top = 1485
    Width = 4245
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
    Left = 6870
    Top = 6150
    Width = 2790
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
    Left = 3495
    Top = 6150
    Width = 2880
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 11
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
    Caption = "Nationality"
    Index = 1
    ForeColor = &HC00000&
    Left = 3090
    Top = 2445
    Width = 1020
    Height = 240
    TabIndex = 10
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
    Caption = "Country Type"
    Index = 3
    ForeColor = &HC00000&
    Left = 3090
    Top = 2115
    Width = 1260
    Height = 240
    TabIndex = 6
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
    Left = 3090
    Top = 1800
    Width = 1125
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
    Caption = "Country Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 3090
    Top = 1485
    Width = 1350
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
End

Attribute VB_Name = "FaCountryMast"

Private global_60 As Variant
Private global_92 As Long

Private Sub TopCtrl1_UnknownEvent_A 'EEBD6C
  'Data Table: 452568
  Dim var_88 As Label
  Dim var_98 As TextBox
  loc_EEBCA8: On Error Goto loc_EEBD42
  loc_EEBCB8: Me.LblUser.Caption = vbNullString
  loc_EEBCCD: Me.LblLDt.Caption = vbNullString
  loc_EEBCEA: var_8C = "ADD"
  loc_EEBCF8: Call Proc_196_28_E7AFBC(Proc_5_1_100CB50(var_8C, Me))
  loc_EEBD03: Call Proc_196_29_EB2B70(global_52)
  loc_EEBD19: If (OpenMode = 2) Then
  loc_EEBD27:   Set var_88 = Me.Txt
  loc_EEBD2D:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EEBD35:   var_98.SetFocus
  loc_EEBD41: End If
  loc_EEBD41: Exit Sub
  loc_EEBD42: ' Referenced from: EEBCA8
  loc_EEBD48: Call 0.Method_arg_50 (var_8C)
  loc_EEBD5D: Proc_183_57_104AA84(var_8C, "TopCtrl1_eAdd")
  loc_EEBD69: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EECAC8
  'Data Table: 452568
  loc_EECA10: On Error Goto loc_EECAA0
  loc_EECA4A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EECA59:   Set var_110 = Me
  loc_EECA62:   var_10C = "INI"
  loc_EECA70:   Call Proc_196_28_E7AFBC(Proc_5_1_100CB50(var_10C, var_110))
  loc_EECA7B:   Call Proc_196_30_125A288(global_52)
  loc_EECA80:   Call Proc_196_33_E82DA8()
  loc_EECA88: Else
  loc_EECA8E:   Call 0.Method_arg_1E8 (var_110)
  loc_EECA96:   Call var_110.SetFocus
  loc_EECA9F: End If
  loc_EECA9F: Exit Sub
  loc_EECAA0: ' Referenced from: EECA10
  loc_EECAA6: Call 0.Method_arg_50 (var_10C)
  loc_EECAAE: var_11C = "TopCtrl1_eCancel"
  loc_EECABB: Proc_183_57_104AA84(var_10C)
  loc_EECAC7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '118548C
  'Data Table: 452568
  Dim Me As Recordset15
  Dim unk_452575 As Connection15
  Dim var_96 As Integer
  Dim var_114 As Variant
  Dim var_B4 As String
  Dim var_C8 As Variant
  loc_11850D8: On Error Goto loc_118544D
  loc_11850E9: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_11850EC:   Exit Sub
  loc_11850ED: End If
  loc_1185112: var_C8 = Me.Fields.Item("Code").Value
  loc_118511A: var_D4 = "State Master"
  loc_1185162: If (Proc_183_53_FE2130(MemVar_1F921DC, "State", "Country") = 0) Then
  loc_1185165:   Exit Sub
  loc_1185166: End If
  loc_1185193: var_D4 = "Guest Profile"
  loc_11851DB: If (Proc_183_53_FE2130(MemVar_1F921DC, "GuestProfFor", "Nationality", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_11851DE:   Exit Sub
  loc_11851DF: End If
  loc_1185216: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_1185222:   unk_452575.BeginTrans var_D0
  loc_1185229:   var_96 = &HFF
  loc_118529B:   unk_452575.Execute CStr("Delete From Country Where Code='" & Me.Fields.Item("Code").Value & "'"), var_134, -1
  loc_11852E6:   var_164 = 0
  loc_11852F9:   var_15C = 0
  loc_1185304:   var_158 = 0
  loc_1185317:   var_150 = 0
  loc_1185322:   var_14C = 0
  loc_1185335:   var_144 = 0
  loc_1185375:   var_B4 = "Country"
  loc_118537E:   Proc_154_5_10E33A4(MemVar_1F921DC, var_B4, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_11853AC:   unk_452575.CommitTrans
  loc_11853B3:   var_96 = 0
  loc_11853C1:   Me.Requery -1
  loc_11853D1:   Me.Requery -1
  loc_11853ED:   If (Me.RecordCount > 0) Then
  loc_1185407:     If (Me.AbsolutePosition > 1) Then
  loc_1185412:       var_C8 = (CVar(Me.AbsolutePosition) - 1)
  loc_118541E:       Me.AbsolutePosition = CLng(Me.Fields.Item("Code").Value)
  loc_1185423:     End If
  loc_1185423:   End If
  loc_1185423:   Call Proc_196_30_125A288(var_96, var_144, 0, var_14C, var_150)
  loc_1185444:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_118544C: End If
  loc_118544C: Exit Sub
  loc_118544D: ' Referenced from: 11850D8
  loc_1185453: If (var_96 = &HFF) Then
  loc_118545C:   unk_452575.RollbackTrans
  loc_1185461: End If
  loc_1185467: Call 0.Method_arg_50 (var_B4, 0, var_158)
  loc_118547C: Proc_183_57_104AA84(var_B4, "TopCtrl1_eDel")
  loc_1185488: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F5E450
  'Data Table: 452568
  Dim var_88 As Label
  Dim var_94 As TextBox
  Dim var_F50 As Boolean
  loc_F5E328: On Error Goto loc_F5E425
  loc_F5E338: Me.LblUser.Caption = vbNullString
  loc_F5E34D: Me.LblLDt.Caption = vbNullString
  loc_F5E363: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F5E366:   Exit Sub
  loc_F5E367: End If
  loc_F5E38A: Call Proc_196_28_E7AFBC(Proc_5_1_100CB50("EDIT", Me))
  loc_F5E3A3: Set var_88 = Me.Txt
  loc_F5E3A9: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F5E3BC: global_84 = var_94.Text
  loc_F5E3D8: Set var_88 = Me.Txt
  loc_F5E3DE: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F5E3E6: var_8C = var_94.Text
  loc_F5E3F1: global_88 = var_8C
  loc_F5E40A: Set var_88 = Me.Txt
  loc_F5E410: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F5E418: var_94.SetFocus
  loc_F5E424: Exit Sub
  loc_F5E425: ' Referenced from: F5E328
  loc_F5E42B: Call 0.Method_arg_50 (var_8C)
  loc_F5E440: Proc_183_57_104AA84(var_8C, "TopCtrl1_eEdit")
  loc_F5E44C: Exit Sub
  loc_F5E44D: var_F50 = global_52
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19EA4
  'Data Table: 452568
  loc_E19E99: Me.Global.Unload Me
  loc_E19EA1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEE8F8
  'Data Table: 452568
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EEE838: On Error Goto loc_EEE8D0
  loc_EEE852: If (Me.RecordCount <= 0) Then
  loc_EEE85B:   var_B8 = "Information"
  loc_EEE876:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_EEE886:   Exit Sub
  loc_EEE887: End If
  loc_EEE88E: var_10C = "Select Country.Code As SearchCode,Country.Name,Country.ShortName,Country.Type,Country.Nationality FROM Country WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_EEE895: MemVar_1F920E4 = var_10C & "' OR LOGSITE_CODE='HO') Order by Country.Name"
  loc_EEE8A2: MemVar_1F92120 = Me
  loc_EEE8A9: var_10C = "3500,1000,1000,2000"
  loc_EEE8AF: Proc_183_54_F1DE80(var_10C)
  loc_EEE8CA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEE8CF: Exit Sub
  loc_EEE8D0: ' Referenced from: EEE838
  loc_EEE8D6: Call 0.Method_arg_50 (var_10C)
  loc_EEE8EB: Proc_183_57_104AA84(var_10C, "TopCtrl1_eFind")
  loc_EEE8F7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E35478
  'Data Table: 452568
  loc_E35468: Proc_5_0_110649C(&HFF, Me)
  loc_E35470: Call Proc_196_30_125A288(global_52)
  loc_E35475: Exit Sub
  loc_E35476: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3AA58
  'Data Table: 452568
  loc_E3AA48: Proc_5_0_110649C(&HFF, Me)
  loc_E3AA50: Call Proc_196_30_125A288(global_52)
  loc_E3AA55: Exit Sub
  loc_E3AA56: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3AAB8
  'Data Table: 452568
  loc_E3AAA8: Proc_5_0_110649C(&HFF, Me)
  loc_E3AAB0: Call Proc_196_30_125A288(global_52)
  loc_E3AAB5: Exit Sub
  loc_E3AAB6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3AB18
  'Data Table: 452568
  loc_E3AB08: Proc_5_0_110649C(&HFF, Me)
  loc_E3AB10: Call Proc_196_30_125A288(global_52)
  loc_E3AB15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '104C570
  'Data Table: 452568
  Dim var_A0 As String
  Dim unk_452575 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  loc_104C324: On Error Goto loc_104C548
  loc_104C34B: unk_452575.Execute "select * FROM Country WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_104C356: Set var_88 = var_C8
  loc_104C36C: var_CC = var_88.RecordCount
  loc_104C37A: If (var_CC = 0) Then
  loc_104C396:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_104C3A6:   Exit Sub
  loc_104C3A7: End If
  loc_104C3BD: Set var_C8 = var_88 
  loc_104C3C9: var_12E = CreateFieldDefFile(var_C8, MemVar_1F920B4 & "\Country.ttx")
  loc_104C3D3: Set var_88 = var_C8
  loc_104C3D9: var_B4 = CVar(var_12E) 'Integer
  loc_104C3DC: var_98 = var_B4 'Variant
  loc_104C3F8: var_A0 = MemVar_1F920B4 & "\Country.RPT"
  loc_104C401: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_104C40C: MemVar_1F921E4 = var_C8
  loc_104C427: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_104C42F: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_104C43B: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_104C454:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_104C45C:   Call 0.Method_arg_20 (var_138)
  loc_104C464:   Call 0.Method_arg_30 (var_A0)
  loc_104C4AA:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_104C4C0:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_104C4C8:     Call 0.Method_arg_20 (var_138)
  loc_104C4D0:     Call 0.Method_arg_38 ("'Country Master'")
  loc_104C4DC:   End If
  loc_104C4DF: Next var_132 'Integer
  loc_104C4FD: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_104C505: Call 0.Method_arg_2C (var_DC)
  loc_104C513: Call 0.Method_arg_150 (var_FC)
  loc_104C51E: Call 0.Method_arg_50 (var_A0)
  loc_104C537: Proc_183_10_14991A4(MemVar_1F921E4, 0)
  loc_104C544: Set var_88 = Nothing
  loc_104C547: Exit Sub
  loc_104C548: ' Referenced from: 104C324
  loc_104C54E: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_104C563: Proc_183_57_104AA84(var_A0, "TopCtrl1_ePrn")
  loc_104C56F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A10C
  'Data Table: 452568
  Dim Me As Recordset15
  Dim .global_88 As Single
  loc_E0A103: Me.Requery -1
  loc_E0A108: Exit Sub
  loc_E0A109: .global_88 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1303708
  'Data Table: 452568
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_452575 As Connection15
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
  Dim var_13C As TextBox
  Dim var_14C As String
  Dim var_168 As Variant
  Dim var_118 As String
  Dim var_12C As String
  Dim var_1BC As Variant
  Dim arg_2A00 As Double
  loc_1303064: On Error Goto loc_13036C6
  loc_130306B: var_86 = CByte(0) 'Byte
  loc_130307A: Set var_90 = Me.Txt
  loc_1303080: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_13030A9: If (Proc_183_19_E8DAFC(var_94, "Name") = 0) Then
  loc_13030B3:   Call Txt_GotFocus()
  loc_13030B8:   Exit Sub
  loc_13030B9: End If
  loc_13030C4: Set var_90 = Me.Txt
  loc_13030CA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_13030F3: If (Proc_183_19_E8DAFC(var_94, "Short Name") = 0) Then
  loc_13030FD:   Call Txt_GotFocus()
  loc_1303102:   Exit Sub
  loc_1303103: End If
  loc_130310E: Set var_90 = Me.Txt
  loc_1303114: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, CInt(1))
  loc_130313D: If (Proc_183_19_E8DAFC(var_94, "Type") = 0) Then
  loc_1303147:   Call Txt_GotFocus()
  loc_130314C:   Exit Sub
  loc_130314D: End If
  loc_1303150: Call Proc_196_31_108DCF8(var_9E, CInt(2))
  loc_130315B: If (var_9E = &HFF) Then
  loc_130315E:   Exit Sub
  loc_130315F: End If
  loc_1303163: Set var_90 = Me.TopCtrl1
  loc_1303169: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(CInt(0))
  loc_1303182: If (CStr(var_94) = "Add") Then
  loc_130318B:   var_D4 = 0
  loc_13031A8:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From Country WHERE SITE_CODE='" & MemVar_1F92070
  loc_13031AF:   var_B4 = CStr(var_94) & "'"
  loc_13031B8:   unk_452575.Execute var_B4, var_B0, -1
  loc_13031C0:   var_90 = var_90.Fields
  loc_13031C8:   var_D4 = var_94.Item(var_94)
  loc_13031D0:   var_98 = var_98.Value
  loc_1303209:   var_F8 = CVar(Proc_183_15_EAC900(MemVar_1F92070, 2)) 'String
  loc_130322F:   var_E4 = Format(CStr(var_E4), "0000")
  loc_1303237:   var_108 = (1 + var_E4)
  loc_1303242:   global_80 = CStr(var_108)
  loc_1303257: Else
  loc_1303274:   var_94 = Me.Fields.Item("Code")
  loc_130328B:   global_80 = CStr(var_94.Value)
  loc_130329C: End If
  loc_13032A5: unk_452575.BeginTrans var_10C
  loc_13032AE: var_86 = CByte(1) 'Byte
  loc_13032B6: Set var_90 = Me.TopCtrl1
  loc_13032BC: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(1)
  loc_13032D5: If (CStr(var_F8) = "Add") Then
  loc_13032EF:   var_9C = "Insert Into Country(Code,Name,ShortName,Type,Nationality,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_80
  loc_13032F6:   var_E8 = var_9C & "','"
  loc_1303307:   Set var_90 = Me.Txt
  loc_130330D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_E8)
  loc_1303315:   var_1BC = var_94.Text
  loc_130331E:   var_110 = -1 & var_B4
  loc_1303325:   var_11C = var_110 & "','"
  loc_1303336:   Set var_98 = Me.Txt
  loc_130333C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_118)
  loc_1303344:   var_11C = var_114.Text
  loc_1303354:   var_130 = var_1C0 & var_118 & "','"
  loc_1303365:   Set var_124 = Me.Txt
  loc_130336B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_128, var_12C)
  loc_1303373:   var_130 = var_128.Text
  loc_1303394:   Set var_138 = Me.Txt
  loc_130339A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_13C)
  loc_13033DF:   Proc_183_7_EB0C44(var_E4, Date)
  loc_13033F0:   var_168 = CVar(var_E4 & var_12C & "','" & var_13C.Text & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") & var_E4 & ",'A','" 
  loc_1303411:   unk_452575.Execute CStr(var_168 & CVar(MemVar_1F92078) & "')"), , 
  loc_1303468: Else
  loc_1303486:   Set var_90 = Me.Txt
  loc_130348C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE Country SET Name='")
  loc_1303494:   var_200 = var_94.Text
  loc_130349D:   var_B4 = -1 & var_9C
  loc_13034A4:   var_110 = var_B4 & "',ShortName = '"
  loc_13034B5:   Set var_98 = Me.Txt
  loc_13034BB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_E8)
  loc_13034C3:   var_110 = var_114.Text
  loc_13034E4:   Set var_124 = Me.Txt
  loc_13034EA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_128)
  loc_1303513:   Set var_138 = Me.Txt
  loc_1303519:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_13C)
  loc_130353F:   var_14C = var_1C0 & var_E8 & "',Type='" & var_128.Text & "',Nationality='" & var_13C.Text & "',SITE_CODE='" & MemVar_1F92070 & "',U_name='"
  loc_130355E:   Proc_183_7_EB0C44(var_E4, Date)
  loc_130356A:   var_C4 = ",U_AE='E',LOGSITE_CODE='"
  loc_130358F:   var_1BC = CVar(var_14C & MemVar_1F920C8 & "',U_EntDt=") & var_E4 & var_C4 & CVar(MemVar_1F92078) & "' WHERE Code='" & CVar(global_80) 
  loc_13035A6:   unk_452575.Execute CStr(var_1BC & "'"), , 
  loc_13035FA: End If
  loc_1303600: unk_452575.CommitTrans
  loc_1303609: var_86 = CByte(0) 'Byte
  loc_1303618: Me.Requery -1
  loc_1303628: Me.Requery -1
  loc_1303655: Me.Find "Code='" & global_80 & "'", 0, 1
  loc_1303665: Set var_90 = Me.TopCtrl1
  loc_130366B: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_C4)
  loc_1303684: If (CStr() = "Add") Then
  loc_1303687:   Call TopCtrl1_UnknownEvent_A()
  loc_130368C:   Exit Sub
  loc_130368D: End If
  loc_13036A2: var_9C = "INI"
  loc_13036B0: Call Proc_196_28_E7AFBC(Proc_5_1_100CB50(var_9C, Me))
  loc_13036BB: Call Proc_196_33_E82DA8(global_52)
  loc_13036C0: Call Proc_196_30_125A288()
  loc_13036C5: Exit Sub
  loc_13036C6: ' Referenced from: 1303064
  loc_13036CF: If (CInt(var_86) = 1) Then
  loc_13036D8:   unk_452575.RollbackTrans
  loc_13036DD: End If
  loc_13036E3: Call 0.Method_arg_50 (var_9C)
  loc_13036F8: Proc_183_57_104AA84(var_9C)
  loc_1303704: Exit Sub
  loc_1303705: arg_2A00 = "TopCtrl1_eSave"
End Sub

Private Sub Form_Load() '106C058
  'Data Table: 452568
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_452575 As Connection15
  loc_106BDD8: On Error Goto loc_106C02D
  loc_106BDE2: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_106BDF6: Me.LblUser.Left = CDbl(13500)
  loc_106BE0D: Me.LblUser.Top = CDbl(7800)
  loc_106BE24: Me.LblLDt.Top = CDbl(8160)
  loc_106BE3B: Me.LblLDt.Left = CDbl(13500)
  loc_106BE4B: Call 0.Method_MeC (CDbl(6000))
  loc_106BE58: Call 0.Method_Me4 (CDbl(17000))
  loc_106BE6B: Set var_8C = Me.Txt
  loc_106BE71: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_106BE90: Me.DGHelp.Left = CVar(var_90.Left)
  loc_106BEAC: Set var_B8 = Me.Txt
  loc_106BEB2: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_106BED3: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_106BEEB: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_106BEFA: Me.DGHelp.Top = CVar(var_90.Left)
  loc_106BF30: unk_452575.Execute "SELECT Code,Name FROM Country WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_106BF5F: CVarUnk
  loc_106BF64: VerifyVarObj
  loc_106BF70: LateIdStAd
  loc_106BFA2: unk_452575.Execute "SELECT * FROM Country WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_106BFDD: var_C8 = "INI"
  loc_106BFEB: Call Proc_196_28_E7AFBC(Proc_5_1_100CB50(var_C8, Me, Me.DGHelp, Me), Me)
  loc_106BFF6: Call Proc_196_30_125A288(Me.Txt)
  loc_106C00C: If (OpenMode = 1) Then
  loc_106C019:   Set var_8C = Me.TopCtrl1
  loc_106C01F:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B("AE*P")
  loc_106C027:   Call TopCtrl1_UnknownEvent_A()
  loc_106C02C: End If
  loc_106C02C: Exit Sub
  loc_106C02D: ' Referenced from: 106BDD8
  loc_106C033: Call 0.Method_arg_50 (var_C8)
  loc_106C048: Proc_183_57_104AA84(var_C8, "Form_Load")
  loc_106C054: Exit Sub
End Sub

Private Sub Form_Resize() 'ED4E28
  'Data Table: 452568
  Dim var_8C As Label
  loc_ED4D86: Call 0.Method_arg_50 (var_88)
  loc_ED4D98: Me.LblFormCaption.Caption = var_88
  loc_ED4DB1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED4DBD: Set var_A0 = Me.TopCtrl1
  loc_ED4DC3: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010006()
  loc_ED4DD0: Set var_8C = Me.TopCtrl1
  loc_ED4DD6: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004()
  loc_ED4DF0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED4E0B: Call 0.Method_arg_100 (var_B8)
  loc_ED4E1D: Me.LblFormCaption.Width = var_B8
  loc_ED4E25: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2ACB0
  'Data Table: 452568
  loc_E2AC93: Set global_52 = Nothing
  loc_E2ACA5: Set global_56 = Nothing
  loc_E2ACAC: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E69648
  'Data Table: 452568
  loc_E69600: On Error Goto loc_E6961E
  loc_E69615: Proc_183_40_F30B0C(Me, KeyCode)
  loc_E6961D: Exit Sub
  loc_E6961E: ' Referenced from: E69600
  loc_E69624: Call 0.Method_arg_50 (var_8C)
  loc_E69639: Proc_183_57_104AA84(var_8C, "Form_KeyDown")
  loc_E69645: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F82CDC
  'Data Table: 452568
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_C4 As TextBox
  Dim var_A4 As String
  loc_F82B9C: On Error Goto loc_F82CB3
  loc_F82BD5: If (Me.ListView.ListItems.Count > 0) Then
  loc_F82BDC:   Set var_A8 = Me.ListView
  loc_F82C26:   Set var_C0 = Me.Txt
  loc_F82C2C:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F82C34:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F82C54: End If
  loc_F82C60: Me.FrmList.Visible = False
  loc_F82C7A: var_A4 = CStr(Me.ListView.Tag)
  loc_F82C82: var_CC = Val(var_A4)
  loc_F82C90: Set var_9C = Me.Txt
  loc_F82C96: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_CC), var_A8)
  loc_F82C9E: var_A8.SetFocus
  loc_F82CB2: Exit Sub
  loc_F82CB3: ' Referenced from: F82B9C
  loc_F82CB9: Call 0.Method_arg_50 (var_A4, var_CC)
  loc_F82CCE: Proc_183_57_104AA84(var_A4, "ListView_Click")
  loc_F82CDA: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'F99888
  'Data Table: 452568
  Dim var_8C As TextBox
  Dim var_D0 As TextBox
  loc_F99730: On Error Goto loc_F9985D
  loc_F9973D: Set var_88 = Me.Txt
  loc_F99743: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F99751: Proc_183_28_E20B20(var_8C)
  loc_F9975D: Call Proc_196_33_E82DA8(var_8C)
  loc_F99770: If (Index = CInt(2)) Then
  loc_F99780:   ReDim var_98(0 To 1)
  loc_F99797:   var_98(0) = "India"
  loc_F997A6:   var_98(1) = "Foreign"
  loc_F997BD:   global_60 = Array(var_98)
  loc_F997C8:   Set var_D0 = Me.ListView
  loc_F997E3:   Set var_8C = Me.Txt
  loc_F997FD:   Set global_76 = Proc_183_37_EFE3E8(var_D0, var_8C, Index, global_60)
  loc_F9981B:   Set var_88 = Me.Txt
  loc_F99821:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_F99829:   2 = var_8C.Text
  loc_F9983B:   Set var_90 = Me.Txt
  loc_F99841:   Call 0.Method_Txt_GotFocus0 (Index, var_D0, var_D8)
  loc_F99849:   var_D0.Tag = global_60
  loc_F9985C: End If
  loc_F9985C: Exit Sub
  loc_F9985D: ' Referenced from: F99730
  loc_F99863: Call 0.Method_arg_50 (var_D8)
  loc_F99878: Proc_183_57_104AA84(var_D8, "Txt_GotFocus")
  loc_F99884: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10B3CE0
  'Data Table: 452568
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_A0 As TextBox
  Dim var_B0 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As ListView
  loc_10B3A40: On Error Goto loc_10B3CB6
  loc_10B3A4D: If (CLng(Shift) = &H1B) Then
  loc_10B3A50:   Call Proc_196_33_E82DA8()
  loc_10B3A55:   Exit Sub
  loc_10B3A56: End If
  loc_10B3A59: var_88 = KeyCode
  loc_10B3A64: If (var_88 = CInt(0)) Then
  loc_10B3A72:   Set var_A0 = Me.Txt
  loc_10B3A92:   Set var_90 = var_A0
  loc_10B3AA1:   Proc_183_31_100809C(Me.DGHelp, var_90, CInt(0), global_56)
  loc_10B3AB4: Else
  loc_10B3ABC:   If (var_88 = CInt(2)) Then
  loc_10B3AE1:     Set var_8C = Me.Txt
  loc_10B3AE7:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_A4, Shift)
  loc_10B3AEF:     0 = var_90.Left
  loc_10B3B01:     Set var_9C = Me.Txt
  loc_10B3B07:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_A8)
  loc_10B3B0F:     1 = var_A0.Top
  loc_10B3B21:     Set var_AC = Me.Txt
  loc_10B3B27:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0)
  loc_10B3B2F:     var_B4 = var_B0.Height
  loc_10B3B41:     Set var_B8 = Me.Txt
  loc_10B3B47:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_10B3B4F:     var_C0 = var_BC.Width
  loc_10B3B97:     Proc_183_36_114886C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_10B3BBB:   End If
  loc_10B3BBB: End If
  loc_10B3BF6: If ((CBool(Me.ListView.Visible) = 0) And (CBool(Me.DGHelp.Visible) = 0)) Then
  loc_10B3C0C:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_10B3C15:     Proc_183_30_E53180(Shift, arg_14, CInt(var_A4), CInt((var_A8 + var_B4)))
  loc_10B3C1A:   End If
  loc_10B3C38:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_10B3C41:     Call Txt_Validate(KeyCode)
  loc_10B3C4C:     If (var_86 = 0) Then
  loc_10B3C86:       If (MsgBox("Save Record ?", 4, "Save Data", var_13C, var_15C) = 6) Then
  loc_10B3C89:         Call TopCtrl1_UnknownEvent_16()
  loc_10B3C8E:       End If
  loc_10B3C8E:       Exit Sub
  loc_10B3C8F:     End If
  loc_10B3C92:   Else
  loc_10B3CA7:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10B3CB0:       Proc_183_29_E52C04(Shift, arg_14, var_86)
  loc_10B3CB5:     End If
  loc_10B3CB5:   End If
  loc_10B3CB5: End If
  loc_10B3CB5: Exit Sub
  loc_10B3CB6: ' Referenced from: 10B3A40
  loc_10B3CBC: Call 0.Method_arg_50 (var_160, CInt(var_C0))
  loc_10B3CD1: Proc_183_57_104AA84(var_160, "Txt_KeyDown")
  loc_10B3CDD: Exit Sub
  loc_10B3CDE: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E19E0C
  'Data Table: 452568
  Dim arg_10 As Integer
  loc_E19DFA: Proc_183_52_E7F478(var_94)
  loc_E19E03: arg_10 = CInt(var_94)
  loc_E19E09: Exit Sub
  loc_E19E0A: Error
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F2AEB4
  'Data Table: 452568
  Dim var_86 As Integer
  loc_F2ADB8: On Error Goto loc_F2AE8C
  loc_F2ADBE: var_86 = KeyCode
  loc_F2ADC9: If (var_86 = CInt(0)) Then
  loc_F2ADE8:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F2ADF5:     var_A4 = "Name"
  loc_F2AE14:     Proc_183_32_FE7F70(Me.Txt, CInt(0), global_56)
  loc_F2AE23:   End If
  loc_F2AE26: Else
  loc_F2AE2E:   If (var_86 = CInt(2)) Then
  loc_F2AE4C:     If (Me.FrmList.Visible = &HFF) Then
  loc_F2AE7B:       Proc_183_35_F29A04(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F2AE8B:     End If
  loc_F2AE8B:   End If
  loc_F2AE8B: End If
  loc_F2AE8B: Exit Sub
  loc_F2AE8C: ' Referenced from: F2ADB8
  loc_F2AE92: Call 0.Method_arg_50 (var_A4, global_76, Shift)
  loc_F2AEA7: Proc_183_57_104AA84(var_A4, "Txt_KeyUp")
  loc_F2AEB3: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49F64
  'Data Table: 452568
  loc_E49F42: Set var_88 = Me.Txt
  loc_E49F48: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49F56: Proc_183_27_E22608(var_8C)
  loc_E49F62: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F4881C
  'Data Table: 452568
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim var_8C As ListView
  Dim var_AC As TextBox
  loc_F4870C: On Error Goto loc_F487F4
  loc_F48712: var_86 = Cancel
  loc_F4871D: If (var_86 = CInt(0)) Then
  loc_F48723:   Call Proc_196_31_108DCF8(var_88)
  loc_F4872E:   If (var_88 = &HFF) Then
  loc_F48733:     arg_10 = &HFF
  loc_F48736:     Exit Sub
  loc_F48737:   End If
  loc_F4873A: Else
  loc_F48742:   If (var_86 = CInt(1)) Then
  loc_F48748:     Call Proc_196_32_106FBD4(var_88, arg_10)
  loc_F48753:     If (var_88 = &HFF) Then
  loc_F48758:       arg_10 = &HFF
  loc_F4875B:       Exit Sub
  loc_F4875C:     End If
  loc_F4875F:   Else
  loc_F48767:     If (var_86 = CInt(2)) Then
  loc_F48777:       Set var_8C = Me.Txt
  loc_F4877D:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_F48785:       arg_10 = var_90.Text
  loc_F4879C:       If (var_94 <> vbNullString) Then
  loc_F487BD:         var_94 = Me.ListView.SelectedItem.Text
  loc_F487CF:         Set var_A8 = Me.Txt
  loc_F487D5:         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_F487DD:         var_AC.Text = var_94
  loc_F487F3:       End If
  loc_F487F3:     End If
  loc_F487F3:   End If
  loc_F487F3: End If
  loc_F487F3: Exit Sub
  loc_F487F4: ' Referenced from: F4870C
  loc_F487FA: Call 0.Method_arg_50 (var_94)
  loc_F4880F: Proc_183_57_104AA84(var_94, "Txt_Validate")
  loc_F4881B: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F149CC
  'Data Table: 452568
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F148E8: On Error Goto loc_F149A2
  loc_F148FA: Me.DGHelp.Visible = False
  loc_F14919: If (Me.RecordCount > 0) Then
  loc_F14939:   var_B0 = Me.Fields.Item("Name")
  loc_F1494A:   var_CC = CStr(var_B0.Value)
  loc_F14958:   Set var_B4 = Me.Txt
  loc_F1495E:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F14966:   var_B8.Text = var_CC
  loc_F1497C: End If
  loc_F14987: Set var_A8 = Me.Txt
  loc_F1498D: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F14995: var_B0.SetFocus
  loc_F149A1: Exit Sub
  loc_F149A2: ' Referenced from: F148E8
  loc_F149A8: Call 0.Method_arg_50 (var_CC)
  loc_F149BD: Proc_183_57_104AA84(var_CC, "DGHelp_Click")
  loc_F149C9: Exit Sub
End Sub

Public Property Get OpenMode() 'E04600
  'Data Table: 452568
  loc_E045F9: OpenMode = global_92
  loc_E045FF: () = 
End Sub

Public Property Let OpenMode(vNewValue) 'E01BBC
  'Data Table: 452568
  loc_E01BB6: global_92 = vNewValue
  loc_E01BB9: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E91510
  'Data Table: 452568
  Dim Me As Recordset15
  Dim var_8C As String
  loc_E914A2: On Error Goto loc_E914E7
  loc_E914AB: Me.MoveFirst
  loc_E914C5: var_8C = "code='" & MyValue
  loc_E914D5: Me.Find var_8C & "'", 0, 1
  loc_E914E1: Call Proc_196_30_125A288(var_A0)
  loc_E914E6: Exit Sub
  loc_E914E7: ' Referenced from: E914A2
  loc_E914ED: Call 0.Method_arg_50 (var_8C)
  loc_E914F5: var_A4 = "SEARCHBACK"
  loc_E91502: Proc_183_57_104AA84(var_8C)
  loc_E9150E: Exit Sub
End Sub

Public Sub Proc_196_28_E7AFBC(arg_C) 'E7AFBC
  'Data Table: 452568
  Dim var_98 As TextBox
  loc_E7AF6A: Set var_8C = Me.Txt
  loc_E7AF70: Call 0.Method_Proc_196_28_E7AFBCC (var_8E, var_86)
  loc_E7AF80: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7AF96:   Set var_8C = Me.Txt
  loc_E7AF9C:   Call 0.Method_Proc_196_28_E7AFBC0 (CInt(var_86), var_98)
  loc_E7AFA4:   var_98.Enabled = arg_C
  loc_E7AFB3: Next var_92 'Byte
  loc_E7AFB9: Exit Sub
  loc_E7AFBA: Set var_1000 = 
End Sub

Public Sub Proc_196_29_EB2B70
  'Data Table: 452568
  Dim var_98 As TextBox
  loc_EB2ADA: global_84 = vbNullString
  loc_EB2AE4: global_88 = vbNullString
  loc_EB2AF6: Set var_8C = Me.Txt
  loc_EB2AFC: Call 0.Method_Proc_196_29_EB2B70C (var_8E, var_86)
  loc_EB2B0C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB2B22:   Set var_8C = Me.Txt
  loc_EB2B28:   Call 0.Method_Proc_196_29_EB2B700 (CInt(var_86), var_98)
  loc_EB2B30:   var_98.Text = vbNullString
  loc_EB2B4C:   Set var_8C = Me.Txt
  loc_EB2B52:   Call 0.Method_Proc_196_29_EB2B700 (CInt(var_86), var_98)
  loc_EB2B5A:   var_98.Tag = vbNullString
  loc_EB2B69: Next var_92 'Byte
  loc_EB2B6F: Exit Sub
End Sub

Public Sub Proc_196_30_125A288
  'Data Table: 452568
  Dim Me As Recordset15
  Dim var_F4 As String
  Dim unk_45258E As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_1CC As String
  Dim var_11C As TextBox
  loc_1259D54: On Error Goto loc_125A260
  loc_1259D5D: Proc_183_45_E5C118(global_52)
  loc_1259DB8: unk_45258E.Execute CStr("Select U_Name,U_AE,U_EntDt From country where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_1259DC3: Set var_88 = var_118
  loc_1259E17: var_118 = var_88.Fields
  loc_1259E80: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1259EC5: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_1259F3F: var_11C = var_88.Fields.Item("U_AE")
  loc_1259FA0: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_1259FE5: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_125A034: If (Me.RecordCount <= 0) Then
  loc_125A037:   Call Proc_196_29_EB2B70()
  loc_125A03F: Else
  loc_125A073:   global_80 = CStr(Me.Fields.Item("Name").Value)
  loc_125A0C0:   Set var_118 = Me.Txt
  loc_125A0C6:   Call 0.Method_Proc_196_30_125A2880 (CInt(0), var_11C)
  loc_125A0CE:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_125A120:   Set var_118 = Me.Txt
  loc_125A126:   Call 0.Method_Proc_196_30_125A2880 (CInt(0), var_11C)
  loc_125A12E:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_125A180:   Set var_118 = Me.Txt
  loc_125A186:   Call 0.Method_Proc_196_30_125A2880 (CInt(1), var_11C)
  loc_125A18E:   var_11C.Text = CStr(Me.Fields.Item("ShortName").Value)
  loc_125A1E0:   Set var_118 = Me.Txt
  loc_125A1E6:   Call 0.Method_Proc_196_30_125A2880 (CInt(2), var_11C)
  loc_125A1EE:   var_11C.Text = CStr(Me.Fields.Item("Type").Value)
  loc_125A22F:   var_F4 = Proc_6_38_E68A98(CVar(Me.Fields.Item("Nationality")))
  loc_125A23D:   Set var_118 = Me.Txt
  loc_125A243:   Call 0.Method_Proc_196_30_125A2880 (CInt(3), var_11C)
  loc_125A24B:   var_11C.Text = var_F4
  loc_125A25F: End If
  loc_125A25F: Exit Sub
  loc_125A260: ' Referenced from: 1259D54
  loc_125A266: Call 0.Method_arg_50 (var_F4)
  loc_125A26E: var_1CC = "MoveRec"
  loc_125A27B: Proc_183_57_104AA84(var_F4)
  loc_125A287: Exit Sub
End Sub

Public Sub Proc_196_31_108DCF8
  'Data Table: 452568
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_452575 As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_108DA68: On Error Goto loc_108DCC9
  loc_108DA82: If (Me.RecordCount = 0) Then
  loc_108DA85:   Proc_196_31_108DCF8 = 
  loc_108DA8B: End If
  loc_108DA8F: Set var_90 = Me.TopCtrl1
  loc_108DA95: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_108DA9D: var_A4 = CStr()
  loc_108DAAE: If (var_A4 = "Add") Then
  loc_108DADE:   Set var_90 = Me.Txt
  loc_108DAE4:   Call 0.Method_Proc_196_31_108DCF80 (CInt(0), var_A8, var_A4, "Select Count(*) From Country Where Name='", var_A0, -1)
  loc_108DB05:   unk_452575.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_108DB15:    = var_C8.Item()
  loc_108DB1D:    = var_DC.Value
  loc_108DB4A:   If (var_A8.Text.Fields > 0) Then
  loc_108DB68:     var_A0 = "Duplicate Name"
  loc_108DB6E:     MsgBox(var_A0, &H40, "Information", var_10C, var_12C)
  loc_108DB89:     Set var_90 = Me.Txt
  loc_108DB8F:     Call 0.Method_Proc_196_31_108DCF80 (CInt(0))
  loc_108DB97:     var_A8.SetFocus
  loc_108DBA8:     Proc_196_31_108DCF8 = &HFF
  loc_108DBAE:   End If
  loc_108DBB1: Else
  loc_108DBDE:   Set var_90 = Me.Txt
  loc_108DBE4:   Call 0.Method_Proc_196_31_108DCF80 (CInt(0), var_A8, var_A4, "Select Count(*) From Country Where Name='", var_A0, -1)
  loc_108DC16:   unk_452575.Execute var_C8 & var_A4 & "' And Name<>'" & global_84 & "'", 0, var_DC
  loc_108DC26:    = var_C8.Item(var_A8)
  loc_108DC2E:    = var_DC.Value
  loc_108DC5F:   If (var_A8.Text.Fields > 0) Then
  loc_108DC83:     MsgBox("Duplicate Name", &H40, "Information", var_10C, var_12C)
  loc_108DC9E:     Set var_90 = Me.Txt
  loc_108DCA4:     Call 0.Method_Proc_196_31_108DCF80 (CInt(0))
  loc_108DCAC:     var_A8.SetFocus
  loc_108DCBD:     Proc_196_31_108DCF8 = &HFF
  loc_108DCC3:   End If
  loc_108DCC3: End If
  loc_108DCC3: Proc_196_31_108DCF8 = var_A8
  loc_108DCC9: ' Referenced from: 108DA68
  loc_108DCCF: Call 0.Method_arg_50 (var_A4)
  loc_108DCE4: Proc_183_57_104AA84(var_A4)
  loc_108DCF0: Proc_196_31_108DCF8 = "ValidateName"
End Sub

Public Sub Proc_196_32_106FBD4
  'Data Table: 452568
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_452575 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_106F964: On Error Goto loc_106FBA5
  loc_106F96B: Set var_8C = Me.TopCtrl1
  loc_106F971: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_106F979: var_A0 = CStr()
  loc_106F98A: If (var_A0 = "Add") Then
  loc_106F9BA:   Set var_8C = Me.Txt
  loc_106F9C0:   Call 0.Method_Proc_196_32_106FBD40 (CInt(1), var_A4, var_A0, "Select Count(*) From Country Where ShortName='", var_9C, -1)
  loc_106F9E1:   unk_452575.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_106F9F1:    = var_C4.Item()
  loc_106F9F9:    = var_D8.Value
  loc_106FA26:   If (var_A4.Text.Fields > 0) Then
  loc_106FA44:     var_9C = "Duplicate Short Name"
  loc_106FA4A:     MsgBox(var_9C, &H40, "Information", var_108, var_128)
  loc_106FA65:     Set var_8C = Me.Txt
  loc_106FA6B:     Call 0.Method_Proc_196_32_106FBD40 (CInt(1))
  loc_106FA73:     var_A4.SetFocus
  loc_106FA84:     Proc_196_32_106FBD4 = &HFF
  loc_106FA8A:   End If
  loc_106FA8D: Else
  loc_106FABA:   Set var_8C = Me.Txt
  loc_106FAC0:   Call 0.Method_Proc_196_32_106FBD40 (CInt(1), var_A4, var_A0, "Select Count(*) From Country Where ShortName='", var_9C, -1)
  loc_106FAF2:   unk_452575.Execute var_C4 & var_A0 & "' And ShortName<>'" & global_88 & "'", 0, var_D8
  loc_106FB02:    = var_C4.Item(var_A4)
  loc_106FB0A:    = var_D8.Value
  loc_106FB3B:   If (var_A4.Text.Fields > 0) Then
  loc_106FB5F:     MsgBox("Duplicate Short Name", &H40, "Information", var_108, var_128)
  loc_106FB7A:     Set var_8C = Me.Txt
  loc_106FB80:     Call 0.Method_Proc_196_32_106FBD40 (CInt(1))
  loc_106FB88:     var_A4.SetFocus
  loc_106FB99:     Proc_196_32_106FBD4 = &HFF
  loc_106FB9F:   End If
  loc_106FB9F: End If
  loc_106FB9F: Proc_196_32_106FBD4 = var_A4
  loc_106FBA5: ' Referenced from: 106F964
  loc_106FBAB: Call 0.Method_arg_50 (var_A0)
  loc_106FBC0: Proc_183_57_104AA84(var_A0)
  loc_106FBCC: Proc_196_32_106FBD4 = "ValidateSName"
End Sub

Public Sub Proc_196_33_E82DA8
  'Data Table: 452568
  loc_E82D58: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E82D6A:   Me.DGHelp.Visible = False
  loc_E82D72: End If
  loc_E82D8D: If (Me.FrmList.Visible = &HFF) Then
  loc_E82D9C:   Me.FrmList.Visible = False
  loc_E82DA4: End If
  loc_E82DA4: Exit Sub
End Sub
