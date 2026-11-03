VERSION 5.00
Begin VB.Form FrmVenueFeat
  Caption = "VenueFeature"
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
  ClientWidth = 10440
  ClientHeight = 5610
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3315
    Top = 1950
    Width = 1005
    Height = 285
    Text = "Active"
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 20
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10440
    Height = 450
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3315
    Top = 1635
    Width = 4215
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 20
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
    Left = 9870
    Top = 3990
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin MSFlexGrid FGPoint
    Left = 10185
    Top = 2250
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 4
  End
  Begin Label LbStatus
    Caption = "Status"
    Index = 1
    ForeColor = &HFF0000&
    Left = 1965
    Top = 1950
    Width = 585
    Height = 240
    TabIndex = 9
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 420
    Width = 180
    Height = 540
    TabIndex = 8
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 135
    Top = 8805
    Width = 2430
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
    Left = 150
    Top = 8475
    Width = 2520
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
  Begin Label LblName
    Caption = "Venu Feature"
    Index = 0
    ForeColor = &HFF0000&
    Left = 1965
    Top = 1635
    Width = 1290
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

Attribute VB_Name = "FrmVenueFeat"


Private Sub TopCtrl1_UnknownEvent_A 'ED44D4
  'Data Table: 44E534
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_ED4420: On Error Goto loc_ED44CE
  loc_ED4446: Call Proc_238_28_E7959C(Proc_5_1_100CB50("ADD", Me))
  loc_ED4451: Call Proc_238_27_EAFA7C(global_52)
  loc_ED4461: Set var_8C = Me.Txt
  loc_ED4467: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED446F: var_94.SetFocus
  loc_ED4489: Set var_8C = Me.Txt
  loc_ED448F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_ED4497: var_94.Text = "Active"
  loc_ED44B0: Me.LblUser.Caption = vbNullString
  loc_ED44C5: Me.LblLDt.Caption = vbNullString
  loc_ED44CD: Exit Sub
  loc_ED44CE: ' Referenced from: ED4420
  loc_ED44CE: Proc_6_60_E62BC4(var_94)
  loc_ED44D3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC40AC
  'Data Table: 44E534
  loc_EC4014: On Error Goto loc_EC40A4
  loc_EC404E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC405D:   Set var_110 = Me
  loc_EC4074:   Call Proc_238_28_E7959C(Proc_5_1_100CB50("INI", var_110))
  loc_EC407F:   Call Proc_238_29_E86A88(global_52)
  loc_EC4084:   Call Proc_238_30_120D704()
  loc_EC408C: Else
  loc_EC4092:   Call 0.Method_arg_1E8 (var_110)
  loc_EC409A:   Call var_110.SetFocus
  loc_EC40A3: End If
  loc_EC40A3: Exit Sub
  loc_EC40A4: ' Referenced from: EC4014
  loc_EC40A4: Proc_6_60_E62BC4()
  loc_EC40A9: Exit Sub
loc_EC40AA: End Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1143E7C
  'Data Table: 44E534
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_44E540 As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  Dim var_43F8 As String
  loc_1143B1C: On Error Goto loc_1143E23
  loc_1143B2D: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_1143B30:   Exit Sub
  loc_1143B31: End If
  loc_1143B63: var_D4 = "Venue Master"
  loc_1143BAB: If (Proc_6_108_1010FEC(MemVar_1F92044, "VenueFeatures", "Feature", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_1143BAE:   Exit Sub
  loc_1143BAF: End If
  loc_1143BE6: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_1143BEB:   var_96 = 0
  loc_1143BF7:   unk_44E540.BeginTrans var_D0
  loc_1143BFE:   var_96 = &HFF
  loc_1143C12:   var_94 = Me.Bookmark 'Variant
  loc_1143C5E:   var_118 = "Delete From FeatureMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_1143C6C:   unk_44E540.Execute CStr(var_118), var_138, -1
  loc_1143CB7:   var_168 = 0
  loc_1143CCA:   var_160 = 0
  loc_1143CD5:   var_15C = 0
  loc_1143CE8:   var_154 = 0
  loc_1143CF3:   var_150 = 0
  loc_1143D06:   var_148 = 0
  loc_1143D46:   var_B4 = "FeatureMast"
  loc_1143D4F:   Proc_154_5_10E33A4(MemVar_1F92044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1143D7D:   unk_44E540.CommitTrans
  loc_1143D84:   var_96 = 0
  loc_1143D92:   Me.Requery -1
  loc_1143DA2:   Me.Requery -1
  loc_1143DC2:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1143DCF:     Me.Bookmark = var_94
  loc_1143DD7:   Else
  loc_1143DEB:     If (Me.EOF = 0) Then
  loc_1143DF4:       Me.MoveLast
  loc_1143DF9:     End If
  loc_1143DF9:   End If
  loc_1143DF9:   Call Proc_238_30_120D704(var_96, var_148, 0, var_150, var_154)
  loc_1143E1A:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_1143E22: End If
  loc_1143E22: Exit Sub
  loc_1143E23: ' Referenced from: 1143B1C
  loc_1143E29: If (var_96 = &HFF) Then
  loc_1143E32:   unk_44E540.RollbackTrans
  loc_1143E37: End If
  loc_1143E3F: Set var_9C = Err()
  loc_1143E45: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_1143E66: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_1143E79: Exit Sub
  loc_1143E7A: var_43F8 = var_160
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EEE4D8
  'Data Table: 44E534
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EEE408: On Error Goto loc_EEE4D0
  loc_EEE419: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_EEE41C:   Exit Sub
  loc_EEE41D: End If
  loc_EEE440: Call Proc_238_28_E7959C(Proc_5_1_100CB50("EDIT", Me))
  loc_EEE459: Set var_8C = Me.Txt
  loc_EEE45F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EEE472: global_64 = var_94.Text
  loc_EEE48B: Set var_8C = Me.Txt
  loc_EEE491: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EEE499: var_94.SetFocus
  loc_EEE4B2: Me.LblUser.Caption = vbNullString
  loc_EEE4C7: Me.LblLDt.Caption = vbNullString
  loc_EEE4CF: Exit Sub
  loc_EEE4D0: ' Referenced from: EEE408
  loc_EEE4D0: Proc_6_60_E62BC4(global_52)
  loc_EEE4D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18AC0
  'Data Table: 44E534
  loc_E18AB5: Me.Global.Unload Me
  loc_E18ABD: Exit Sub
  loc_E18ABE: CopyBytes -17408
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F28170
  'Data Table: 44E534
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F28070: On Error Goto loc_F28108
  loc_F2807C: var_88 = Me.RecordCount
  loc_F2808A: If (var_88 <= 0) Then
  loc_F28093:   var_B8 = "Information"
  loc_F280AE:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F280BE:   Exit Sub
  loc_F280BF: End If
  loc_F280C6: var_10C = "Select FeatureMast.Code As SearchCode,FeatureMast.Name,FeatureMast.Status FROM FeatureMast Where LogSite_Code in ('" & MemVar_1F92078
  loc_F280CD: MemVar_1F920E4 = var_10C & "','HO') Order by FeatureMast.Name"
  loc_F280DA: MemVar_1F92120 = Me
  loc_F280E1: var_10C = "4000,1300"
  loc_F280E7: Proc_6_126_F1BCC0(var_10C)
  loc_F28102: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F28107: Exit Sub
  loc_F28108: ' Referenced from: F28070
  loc_F28110: Set var_110 = Err()
  loc_F28116: Call 0.Method_arg_1C (var_88)
  loc_F28127: If (var_88 <> 0) Then
  loc_F28132:   Set var_110 = Err()
  loc_F28138:   Call 0.Method_arg_2C (var_10C)
  loc_F28159:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F2816C: End If
  loc_F2816C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3BF58
  'Data Table: 44E534
  loc_E3BF48: Proc_5_0_110649C(&HFF, Me)
  loc_E3BF50: Call Proc_238_30_120D704(global_52)
  loc_E3BF55: Exit Sub
  loc_E3BF56: var_4388 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3BFB8
  'Data Table: 44E534
  loc_E3BFA8: Proc_5_0_110649C(&HFF, Me)
  loc_E3BFB0: Call Proc_238_30_120D704(global_52)
  loc_E3BFB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E388F8
  'Data Table: 44E534
  loc_E388E8: Proc_5_0_110649C(&HFF, Me)
  loc_E388F0: Call Proc_238_30_120D704(global_52)
  loc_E388F5: Exit Sub
  loc_E388F6: Set var_4400 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E38E98
  'Data Table: 44E534
  loc_E38E88: Proc_5_0_110649C(&HFF, Me)
  loc_E38E90: Call Proc_238_30_120D704(global_52)
  loc_E38E95: Exit Sub
  loc_E38E96: Set var_4400 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10869C8
  'Data Table: 44E534
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_44E540 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1086730: On Error Goto loc_108697C
  loc_1086757: unk_44E540.Execute "select * FROM FeatureMast Where LogSite_Code in ('" & MemVar_1F92078 & "','HO')order by Name", var_C4, -1
  loc_1086762: Set var_88 = var_C8
  loc_1086778: var_CC = var_88.RecordCount
  loc_1086786: If (var_CC = 0) Then
  loc_10867A2:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_10867B2:   Exit Sub
  loc_10867B3: End If
  loc_10867C2: var_A4 = MemVar_1F920B4 & "\VenueFeat.ttx"
  loc_10867C9: Set var_C8 = var_88 
  loc_10867D5: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_10867DF: Set var_88 = var_C8
  loc_10867E5: var_B4 = CVar(var_12E) 'Integer
  loc_10867E8: var_98 = var_B4 'Variant
  loc_1086804: var_A0 = MemVar_1F920B4 & "\VenueFeat.RPT"
  loc_108680D: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1086818: MemVar_1F921E4 = var_C8
  loc_1086833: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108683B: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1086847: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1086860:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1086868:   Call 0.Method_arg_20 (var_138)
  loc_1086870:   Call 0.Method_arg_30 (var_A0)
  loc_10868B6:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10868CC:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10868D4:     Call 0.Method_arg_20 (var_138)
  loc_10868DC:     Call 0.Method_arg_38 ("'Venue Feature'")
  loc_10868E8:   End If
  loc_10868EB: Next var_132 'Integer
  loc_1086909: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1086911: Call 0.Method_arg_2C (var_DC)
  loc_108691F: Call 0.Method_arg_150 (var_FC)
  loc_108692A: Call 0.Method_arg_50 (var_A0)
  loc_1086934: Set var_138 = Nothing
  loc_108694E: Set var_C8 = MemVar_1F921E4 
  loc_108695A: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_1086965: MemVar_1F921E4 = var_C8
  loc_1086978: Set var_88 = Nothing
  loc_108697B: Exit Sub
  loc_108697C: ' Referenced from: 1086730
  loc_1086984: Set var_C8 = Err()
  loc_108698A: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1086995: Call 0.Method_arg_50 (var_A4)
  loc_10869B1: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_10869C4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E09BBC
  'Data Table: 44E534
  Dim Me As Recordset15
  loc_E09BB3: Me.Requery -1
  loc_E09BB8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '124B38C
  'Data Table: 44E534
  Dim var_9C As String
  Dim var_D0 As Variant
  Dim unk_44E540 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F0 As Variant
  Dim var_C0 As Variant
  Dim var_100 As Variant
  Dim Me As Recordset15
  Dim var_10C As String
  Dim var_110 As String
  Dim var_11C As String
  Dim var_114 As TextBox
  Dim var_E0 As Variant
  Dim var_108 As String
  Dim var_118 As String
  Dim var_B0 As Variant
  loc_124AE84: On Error Goto loc_124B339
  loc_124AE8B: var_86 = CByte(0) 'Byte
  loc_124AE9A: Set var_90 = Me.Txt
  loc_124AEA0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_124AEC9: If (Proc_6_27_EA565C(var_94, "Name") = 0) Then
  loc_124AED3:   Call Txt_GotFocus()
  loc_124AED8:   Exit Sub
  loc_124AED9: End If
  loc_124AEDC: Call Proc_238_32_108B970(var_9E, CInt(0))
  loc_124AEE7: If (var_9E = &HFF) Then
  loc_124AEEA:   Exit Sub
  loc_124AEEB: End If
  loc_124AEEF: Set var_90 = Me.TopCtrl1
  loc_124AEF5: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_124AF0E: If (CStr() = "Add") Then
  loc_124AF17:   var_D0 = 0
  loc_124AF36:   unk_44E540.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From FeatureMast", var_B0, -1
  loc_124AF3E:   var_90 = var_90.Fields
  loc_124AF46:   var_D0 = var_94.Item(var_94)
  loc_124AF4E:   var_98 = var_98.Value
  loc_124AF81:   var_F0 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_124AFAF:   var_100 = (1 + Format(CStr(var_E0), "000"))
  loc_124AFBA:   global_60 = CStr(var_100)
  loc_124AFCF: Else
  loc_124AFEC:   var_94 = Me.Fields.Item("Code")
  loc_124AFF4:   var_B0 = var_94.Value
  loc_124B003:   global_60 = CStr(var_B0)
  loc_124B014: End If
  loc_124B01D: unk_44E540.BeginTrans var_104
  loc_124B026: var_86 = CByte(1) 'Byte
  loc_124B02E: Set var_90 = Me.TopCtrl1
  loc_124B034: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_124B04D: If (CStr(var_F0) = "Add") Then
  loc_124B067:   var_9C = "Insert Into FeatureMast(Code,Name,Status,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_60
  loc_124B06E:   var_10C = var_9C & "','"
  loc_124B07F:   Set var_90 = Me.Txt
  loc_124B085:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_108, var_10C)
  loc_124B08D:   var_194 = var_94.Text
  loc_124B096:   var_110 = -1 & var_108
  loc_124B09D:   var_11C = var_110 & "','"
  loc_124B0AE:   Set var_98 = Me.Txt
  loc_124B0B4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_118)
  loc_124B0BC:   var_11C = var_114.Text
  loc_124B0E8:   var_E0 = CVar(var_198 & var_118 & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") 'String
  loc_124B0F6:   Proc_183_7_EB0C44(var_B0, MemVar_1F920EC)
  loc_124B128:   unk_44E540.Execute CStr(var_E0 & var_B0 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_E0, 
  loc_124B169: Else
  loc_124B187:   Set var_90 = Me.Txt
  loc_124B18D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE FeatureMast SET Name='")
  loc_124B195:   var_194 = var_94.Text
  loc_124B19E:   var_108 = -1 & var_9C
  loc_124B1A5:   var_110 = var_108 & "',Status='"
  loc_124B1B6:   Set var_98 = Me.Txt
  loc_124B1BC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_10C)
  loc_124B1C4:   var_110 = var_114.Text
  loc_124B1F0:   var_E0 = CVar(var_198 & var_10C & "',SITE_CODE='" & MemVar_1F92070 & "',U_name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_124B1F6:   var_C0 = MemVar_1F920EC
  loc_124B1FE:   Proc_183_7_EB0C44(var_B0, var_C0)
  loc_124B206:   var_F0 = var_E0 & var_B0 
  loc_124B20F:   var_100 = var_F0 & " ,U_AE='E' WHERE Code='" 
  loc_124B233:   unk_44E540.Execute CStr(var_100 & CVar(global_60) & "'"), , 
  loc_124B26D: End If
  loc_124B273: unk_44E540.CommitTrans
  loc_124B27C: var_86 = CByte(0) 'Byte
  loc_124B28B: Me.Requery -1
  loc_124B29B: Me.Requery -1
  loc_124B2C8: Me.Find "Code='" & global_60 & "'", 0, 1
  loc_124B2D8: Set var_90 = Me.TopCtrl1
  loc_124B2DE: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_124B2F7: If (CStr() = "Add") Then
  loc_124B2FA:   Call TopCtrl1_UnknownEvent_A()
  loc_124B2FF:   Exit Sub
  loc_124B300: End If
  loc_124B315: var_9C = "INI"
  loc_124B323: Call Proc_238_28_E7959C(Proc_5_1_100CB50(var_9C, Me))
  loc_124B32E: Call Proc_238_29_E86A88(global_52)
  loc_124B333: Call Proc_238_30_120D704()
  loc_124B338: Exit Sub
  loc_124B339: ' Referenced from: 124AE84
  loc_124B342: If (CInt(var_86) = 1) Then
  loc_124B34B:   unk_44E540.RollbackTrans
  loc_124B350: End If
  loc_124B358: Set var_90 = Err()
  loc_124B35E: Call 0.Method_arg_2C (var_9C)
  loc_124B377: MsgBox(CVar(var_9C), &H10, var_E0, var_F0, var_100)
  loc_124B38A: Exit Sub
End Sub

Private Sub Form_Load() '107CDF4
  'Data Table: 44E534
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_D8 As Variant
  Dim var_C8 As String
  Dim unk_44E540 As Connection15
  loc_107CB64: On Error Goto loc_107CDAD
  loc_107CB6E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_107CB82: Me.LblUser.Left = CDbl(13500)
  loc_107CB99: Me.LblUser.Top = CDbl(7800)
  loc_107CBB0: Me.LblLDt.Top = CDbl(8160)
  loc_107CBC7: Me.LblLDt.Left = CDbl(13500)
  loc_107CBDD: Set var_8C = Me.Txt
  loc_107CBE3: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107CC02: Me.DGHelp.Left = CVar(var_90.Left)
  loc_107CC1E: Set var_B8 = Me.Txt
  loc_107CC24: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_107CC3F: Set var_8C = Me.Txt
  loc_107CC45: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_107CC5D: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_107CC6C: Me.DGHelp.Top = CVar(var_90.Left)
  loc_107CC88: Set var_8C = Me.TopCtrl1
  loc_107CC8E: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_107CC9C: Call 0.Method_arg_50 (var_C8)
  loc_107CCA4: var_D8 = CVar(var_C8) 'String
  loc_107CCB2: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D8)
  loc_107CCE1: unk_44E540.Execute "SELECT Code,Name FROM FeatureMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107CD10: CVarUnk
  loc_107CD15: VerifyVarObj
  loc_107CD21: LateIdStAd
  loc_107CD53: unk_44E540.Execute "SELECT * FROM FeatureMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_107CD8E: var_C8 = "INI"
  loc_107CD9C: Call Proc_238_28_E7959C(Proc_5_1_100CB50(var_C8, Me, Me.DGHelp, Me), Me)
  loc_107CDA7: Call Proc_238_30_120D704(Me.TopCtrl1)
  loc_107CDAC: Exit Sub
  loc_107CDAD: ' Referenced from: 107CB64
  loc_107CDB5: Set var_8C = Err()
  loc_107CDBB: Call 0.Method_arg_2C (var_C8)
  loc_107CDDC: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_107CDEF: Exit Sub
  loc_107CDF0: Exit Sub
End Sub

Private Sub Form_Resize() 'ED43D8
  'Data Table: 44E534
  Dim var_8C As Label
  loc_ED4336: Call 0.Method_arg_50 (var_88)
  loc_ED4348: Me.LblFormCaption.Caption = var_88
  loc_ED4361: Me.LblFormCaption.Left = CDbl(0)
  loc_ED436D: Set var_A0 = Me.TopCtrl1
  loc_ED4373: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED4380: Set var_8C = Me.TopCtrl1
  loc_ED4386: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED43A0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED43BB: Call 0.Method_arg_100 (var_B8)
  loc_ED43CD: Me.LblFormCaption.Width = var_B8
  loc_ED43D5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E27A04
  'Data Table: 44E534
  loc_E279E7: Set global_52 = Nothing
  loc_E279F9: Set global_56 = Nothing
  loc_E27A00: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E89740
  'Data Table: 44E534
  loc_E896DC: On Error Goto loc_E896FC
  loc_E896F3: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E896FB: Exit Sub
  loc_E896FC: ' Referenced from: E896DC
  loc_E89704: Set var_88 = Err()
  loc_E8970A: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8972B: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8973E: Exit Sub
  loc_E8973F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EAA12C
  'Data Table: 44E534
  Dim Me As Recordset15
  loc_EAA0AA: Set var_88 = Me.Txt
  loc_EAA0B0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EAA0BE: Proc_6_74_E226B0(var_8C)
  loc_EAA0CA: Call Proc_238_29_E86A88(var_8C)
  loc_EAA0DD: If (Index = CInt(0)) Then
  loc_EAA0F7:   If (Me.RecordCount > 0) Then
  loc_EAA105:     Set var_8C = Me.FGPoint
  loc_EAA11D:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_EAA12B:   End If
  loc_EAA12B: End If
  loc_EAA12B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FC2224
  'Data Table: 44E534
  Dim Me As Recordset15
  loc_FC2086: If (CLng(Shift) = &H1B) Then
  loc_FC2089:   Call Proc_238_29_E86A88()
  loc_FC208E:   Exit Sub
  loc_FC208F: End If
  loc_FC209D: If (KeyCode = CInt(0)) Then
  loc_FC20BD:   Set var_9C = Me.FGPoint
  loc_FC20EF:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_FC215C:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FC2163:     Set var_9C = Me.DGHelp
  loc_FC2182:     Proc_6_138_106D6F8(var_9C, global_56, KeyCode, Me.FGPoint, 0)
  loc_FC2190:   End If
  loc_FC2190: End If
  loc_FC21AC: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FC21CD:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_FC21D3:     Call Proc_238_31_E8FF3C(KeyCode, 1, var_9C)
  loc_FC21DB:   Else
  loc_FC21F0:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FC21F9:       Proc_6_75_E527CC(Shift, arg_14)
  loc_FC2201:     Else
  loc_FC2214:       If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FC221D:         Proc_6_76_E52838(Shift, arg_14)
  loc_FC2222:       End If
  loc_FC2222:     End If
  loc_FC2222:   End If
  loc_FC2222: End If
  loc_FC2222: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EFE1B0
  'Data Table: 44E534
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_EFE0E6: If (KeyAscii = CInt(1)) Then
  loc_EFE112:   If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_EFE122:     Set var_CC = Me.Txt
  loc_EFE128:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFE130:     var_D0.Text = "Active"
  loc_EFE13F:   Else
  loc_EFE146:     var_98 = Chr(CLng(arg_10))
  loc_EFE168:     If (Ucase(var_98) = "N") Then
  loc_EFE178:       Set var_CC = Me.Txt
  loc_EFE17E:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFE186:       var_D0.Text = "Non Active"
  loc_EFE192:     End If
  loc_EFE192:   End If
  loc_EFE194:   arg_10 = 0
  loc_EFE197: End If
  loc_EFE19D: Proc_6_133_E7EF78(var_98, arg_10)
  loc_EFE1A6: arg_10 = CInt(var_98)
  loc_EFE1AC: Exit Sub
  loc_EFE1AD: CExtInstUnk
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC37F0
  'Data Table: 44E534
  loc_EC3762: If (KeyCode = CInt(0)) Then
  loc_EC3781:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC378E:     var_A4 = "Name"
  loc_EC37AD:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_56)
  loc_EC37DF:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC37ED:   End If
  loc_EC37ED: End If
  loc_EC37ED: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4842C
  'Data Table: 44E534
  loc_E4840A: Set var_88 = Me.Txt
  loc_E48410: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4841E: Proc_6_73_E22704(var_8C)
  loc_E4842A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F02B88
  'Data Table: 44E534
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As TextBox
  loc_F02AB3: var_86 = Cancel
  loc_F02ABE: If (var_86 = CInt(0)) Then
  loc_F02AC4:   Call Proc_238_32_108B970(var_88)
  loc_F02ACF:   If (var_88 = &HFF) Then
  loc_F02AD4:     arg_10 = &HFF
  loc_F02AD7:     Exit Sub
  loc_F02AD8:   End If
  loc_F02ADB: Else
  loc_F02AE3:   If (var_86 = CInt(1)) Then
  loc_F02AF0:     Set var_8C = Me.Txt
  loc_F02AF6:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F02B31:     If (Ucase(Left(CVar(var_90), 1)) = "Active") Then
  loc_F02B41:       Set var_8C = Me.Txt
  loc_F02B47:       Call 0.Method_Txt_Validate0 (Cancel, var_90, "Active")
  loc_F02B4F:       var_90.Text = arg_10
  loc_F02B5E:     Else
  loc_F02B6B:       Set var_8C = Me.Txt
  loc_F02B71:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F02B79:       var_90.Text = "Non Active"
  loc_F02B85:     End If
  loc_F02B85:   End If
  loc_F02B85: End If
  loc_F02B85: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3BEF4
  'Data Table: 44E534
  loc_E3BEE8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3BEEB:   Call DGHelp_UnknownEvent_9()
  loc_E3BEF0: End If
  loc_E3BEF0: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE2DBC
  'Data Table: 44E534
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE2D13: Me.DGHelp.Visible = False
  loc_EE2D32: If (Me.RecordCount > 0) Then
  loc_EE2D52:   var_B0 = Me.Fields.Item("Name")
  loc_EE2D71:   Set var_B4 = Me.Txt
  loc_EE2D77:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE2D7F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE2D95: End If
  loc_EE2DA0: Set var_A8 = Me.Txt
  loc_EE2DA6: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE2DAE: var_B0.SetFocus
  loc_EE2DBA: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E728EC
  'Data Table: 44E534
  loc_E728AA: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E728C1: Set var_8C = Me.FGPoint
  loc_E728DD: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0))
  loc_E728EB: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBF104
  'Data Table: 44E534
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBF07A: On Error Goto loc_EBF0BF
  loc_EBF083: Me.MoveFirst
  loc_EBF09D: var_8C = "code='" & MyValue
  loc_EBF0AD: Me.Find var_8C & "'", 0, 1
  loc_EBF0B9: Call Proc_238_30_120D704(var_A0)
  loc_EBF0BE: Exit Sub
  loc_EBF0BF: ' Referenced from: EBF07A
  loc_EBF0C7: Set var_A4 = Err()
  loc_EBF0CD: Call 0.Method_arg_2C (var_8C)
  loc_EBF0EE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBF101: Exit Sub
  loc_EBF102: Exit Sub
End Sub

Public Sub Proc_238_27_EAFA7C
  'Data Table: 44E534
  Dim var_98 As TextBox
  loc_EAF9EE: global_64 = vbNullString
  loc_EAFA00: Set var_8C = Me.Txt
  loc_EAFA06: Call 0.Method_Proc_238_27_EAFA7CC (var_8E, var_86)
  loc_EAFA16: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAFA2C:   Set var_8C = Me.Txt
  loc_EAFA32:   Call 0.Method_Proc_238_27_EAFA7C0 (CInt(var_86), var_98)
  loc_EAFA3A:   var_98.Text = vbNullString
  loc_EAFA56:   Set var_8C = Me.Txt
  loc_EAFA5C:   Call 0.Method_Proc_238_27_EAFA7C0 (CInt(var_86), var_98)
  loc_EAFA64:   var_98.Tag = vbNullString
  loc_EAFA73: Next var_92 'Byte
  loc_EAFA79: Exit Sub
End Sub

Public Sub Proc_238_28_E7959C(arg_C) 'E7959C
  'Data Table: 44E534
  Dim var_98 As TextBox
  loc_E7954A: Set var_8C = Me.Txt
  loc_E79550: Call 0.Method_Proc_238_28_E7959CC (var_8E, var_86)
  loc_E79560: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79576:   Set var_8C = Me.Txt
  loc_E7957C:   Call 0.Method_Proc_238_28_E7959C0 (CInt(var_86), var_98)
  loc_E79584:   var_98.Enabled = arg_C
  loc_E79593: Next var_92 'Byte
  loc_E79599: Exit Sub
  loc_E7959A: Set var_4390 = 
End Sub

Public Sub Proc_238_29_E86A88
  'Data Table: 44E534
  loc_E86A34: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E86A46:   Me.DGHelp.Visible = False
  loc_E86A4E: End If
  loc_E86A6A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E86A7C:   Me.FGPoint.Visible = False
  loc_E86A84: End If
  loc_E86A84: Exit Sub
End Sub

Public Sub Proc_238_30_120D704
  'Data Table: 44E534
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim unk_44E540 As Connection15
  Dim var_88 As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As TextBox
  loc_120D274: On Error Goto loc_120D6BF
  loc_120D27D: Proc_183_45_E5C118(global_52)
  loc_120D299: If (Me.RecordCount <= 0) Then
  loc_120D29C:   Call Proc_238_27_EAFA7C()
  loc_120D2A4: Else
  loc_120D2FA:   unk_44E540.Execute CStr("Select U_Name,U_AE,U_EntDt From FeatureMast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1
  loc_120D305:   Set var_88 = var_11C
  loc_120D359:   var_11C = var_88.Fields
  loc_120D3C2:   var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_11C.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_120D407:   Me.LblUser.Caption = CStr(var_11C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_120D481:   var_120 = var_88.Fields.Item("U_AE")
  loc_120D49A:   var_118 = "entdt :   "
  loc_120D4A5:   var_F4 = "Last Update :   "
  loc_120D4E2:   var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_120)) = "E"), var_F4, var_118))
  loc_120D527:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_120D593:   global_60 = CStr(Me.Fields.Item("Name").Value)
  loc_120D5DE:   Set var_11C = Me.Txt
  loc_120D5E4:   Call 0.Method_Proc_238_30_120D7040 (0, var_120)
  loc_120D5EC:   var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_120D63C:   Set var_11C = Me.Txt
  loc_120D642:   Call 0.Method_Proc_238_30_120D7040 (0, var_120)
  loc_120D64A:   var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_120D68B:   var_F8 = Proc_6_38_E68A98(CVar(Me.Fields.Item("Status")))
  loc_120D697:   Set var_11C = Me.Txt
  loc_120D69D:   Call 0.Method_Proc_238_30_120D7040 (1, var_120)
  loc_120D6A5:   var_120.Text = var_F8
  loc_120D6B9: End If
  loc_120D6B9: Call Proc_238_29_E86A88()
  loc_120D6BE: Exit Sub
  loc_120D6BF: ' Referenced from: 120D274
  loc_120D6C7: Set var_90 = Err()
  loc_120D6CD: Call 0.Method_arg_2C (var_F8)
  loc_120D6EE: MsgBox(CVar(var_F8), &H40, "Information", var_F4, var_118)
  loc_120D701: Exit Sub
End Sub

Public Sub Proc_238_31_E8FF3C(arg_C) 'E8FF3C
  'Data Table: 44E534
  Dim var_10C As TextBox
  loc_E8FED0: Call Proc_238_29_E86A88()
  loc_E8FF0C: If (MsgBox("Save Venu Feature ?", 4, "Save", var_E4, var_104) = 6) Then
  loc_E8FF0F:   Call TopCtrl1_UnknownEvent_16()
  loc_E8FF17: Else
  loc_E8FF21:   Set var_108 = Me.Txt
  loc_E8FF27:   Call 0.Method_Proc_238_31_E8FF3C0 (arg_C)
  loc_E8FF2F:   var_10C.SetFocus
  loc_E8FF3B: End If
  loc_E8FF3B: Exit Sub
End Sub

Public Sub Proc_238_32_108B970
  'Data Table: 44E534
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_44E540 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108B703: If (Me.RecordCount = 0) Then
  loc_108B706:   Proc_238_32_108B970 = 
  loc_108B70C: End If
  loc_108B710: Set var_90 = Me.TopCtrl1
  loc_108B716: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_108B72F: If (CStr() = "Add") Then
  loc_108B76D:   Set var_90 = Me.Txt
  loc_108B773:   Call 0.Method_Proc_238_32_108B9700 (CInt(0), var_A8, var_AC, "Select Count(*) From FeatureMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108B794:   unk_44E540.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_108B7A4:    = var_D0.Item()
  loc_108B7AC:    = var_E4.Value
  loc_108B7DD:   If (var_A8.Text.Fields > 0) Then
  loc_108B7FB:     var_A0 = "Duplicate Name"
  loc_108B801:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_108B81C:     Set var_90 = Me.Txt
  loc_108B822:     Call 0.Method_Proc_238_32_108B9700 (CInt(0))
  loc_108B82A:     var_A8.SetFocus
  loc_108B83B:     Proc_238_32_108B970 = &HFF
  loc_108B841:   End If
  loc_108B844: Else
  loc_108B87F:   Set var_90 = Me.Txt
  loc_108B885:   Call 0.Method_Proc_238_32_108B9700 (CInt(0), var_A8, var_AC, "Select Count(*) From FeatureMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108B8B7:   unk_44E540.Execute var_D0 & var_AC & "' And Name<>'" & global_64 & "'", 0, var_E4
  loc_108B8C7:    = var_D0.Item(var_A8)
  loc_108B8CF:    = var_E4.Value
  loc_108B904:   If (var_A8.Text.Fields > 0) Then
  loc_108B928:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108B943:     Set var_90 = Me.Txt
  loc_108B949:     Call 0.Method_Proc_238_32_108B9700 (CInt(0))
  loc_108B951:     var_A8.SetFocus
  loc_108B962:     Proc_238_32_108B970 = &HFF
  loc_108B968:   End If
  loc_108B968: End If
  loc_108B968: Proc_238_32_108B970 = var_A8
End Sub
