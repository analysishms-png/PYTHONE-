VERSION 5.00
Begin VB.Form SchemeMast
  Caption = "Scheme Master"
  BackColor = &HFFC0C0&
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
  ClientWidth = 13800
  ClientHeight = 7890
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13800
    Height = 450
    TabIndex = 28
  End
  Begin TextBox txt
    Index = 2
    ForeColor = &HC00000&
    Left = 3810
    Top = 2235
    Width = 1395
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox txt
    Index = 7
    ForeColor = &HC00000&
    Left = 3810
    Top = 3180
    Width = 780
    Height = 285
    TabIndex = 7
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
  Begin TextBox txt
    Index = 0
    ForeColor = &HC00000&
    Left = 3810
    Top = 1605
    Width = 4215
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin TextBox txt
    Index = 6
    ForeColor = &HC00000&
    Left = 4215
    Top = 2865
    Width = 375
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 4
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
  Begin TextBox txt
    Index = 5
    ForeColor = &HC00000&
    Left = 3810
    Top = 2865
    Width = 375
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 4
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
  Begin TextBox txt
    Index = 4
    ForeColor = &HC00000&
    Left = 4215
    Top = 2550
    Width = 375
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 4
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
  Begin TextBox txt
    Index = 3
    ForeColor = &HC00000&
    Left = 3810
    Top = 2550
    Width = 375
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 4
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
  Begin TextBox txt
    Index = 1
    ForeColor = &HC00000&
    Left = 3810
    Top = 1920
    Width = 1395
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin Frame framWeek
    Caption = "Days"
    BackColor = &HFF80FF&
    ForeColor = &HC0&
    Left = 5535
    Top = 2025
    Width = 3510
    Height = 1920
    TabIndex = 8
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    Begin CheckBox chkday
      Caption = "Sunday"
      Index = 1
      BackColor = &HFFFFFF&
      ForeColor = &H404000&
      Left = 195
      Top = 330
      Width = 1305
      Height = 255
      TabIndex = 9
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Monday"
      Index = 2
      BackColor = &HC0FFC0&
      ForeColor = &H404000&
      Left = 1755
      Top = 330
      Width = 1440
      Height = 255
      TabIndex = 10
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Tuesday"
      Index = 3
      BackColor = &HC0C0FF&
      ForeColor = &H404000&
      Left = 195
      Top = 660
      Width = 1320
      Height = 255
      TabIndex = 11
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Wednesday"
      Index = 4
      BackColor = &HFFFFC0&
      ForeColor = &H404000&
      Left = 1755
      Top = 660
      Width = 1455
      Height = 255
      TabIndex = 12
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Thursday"
      Index = 5
      BackColor = &HC0E0FF&
      ForeColor = &H404000&
      Left = 210
      Top = 960
      Width = 1305
      Height = 255
      TabIndex = 13
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Friday"
      Index = 6
      BackColor = &HFFC0FF&
      ForeColor = &H404000&
      Left = 1755
      Top = 990
      Width = 1455
      Height = 255
      TabIndex = 14
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Saturday"
      Index = 7
      BackColor = &HC0FFFF&
      ForeColor = &H404000&
      Left = 195
      Top = 1305
      Width = 1320
      Height = 255
      TabIndex = 15
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin MSFlexGrid FGPoint
    Left = 8685
    Top = 4050
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 23
  End
  Begin DataGrid DGHelp
    Left = 9030
    Top = 4245
    Width = 4230
    Height = 1035
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 27
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
    Left = 6375
    Top = 5700
    Width = 2790
    Height = 285
    TabIndex = 25
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
  Begin Label Label1
    Caption = "End Date :"
    Index = 2
    ForeColor = &HC00000&
    Left = 2310
    Top = 2250
    Width = 975
    Height = 240
    TabIndex = 22
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
  Begin Label Label2
    Caption = "Yes/No"
    ForeColor = &HC0&
    Left = 4635
    Top = 3225
    Width = 645
    Height = 240
    TabIndex = 21
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
  Begin Label Label1
    Caption = "Active :"
    Index = 5
    ForeColor = &HC00000&
    Left = 2310
    Top = 3210
    Width = 705
    Height = 240
    TabIndex = 20
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
  Begin Label Label1
    Caption = "Scheme Name:"
    Index = 0
    ForeColor = &HC00000&
    Left = 2310
    Top = 1620
    Width = 1455
    Height = 240
    TabIndex = 19
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
  Begin Label Label1
    Caption = "To Time :"
    Index = 4
    ForeColor = &HC00000&
    Left = 2310
    Top = 2895
    Width = 900
    Height = 240
    TabIndex = 18
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
  Begin Label Label1
    Caption = "From Time:"
    Index = 3
    ForeColor = &HC00000&
    Left = 2310
    Top = 2580
    Width = 1095
    Height = 240
    TabIndex = 17
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
  Begin Label Label1
    Caption = "Start Date :"
    Index = 1
    ForeColor = &HC00000&
    Left = 2310
    Top = 1935
    Width = 1065
    Height = 240
    TabIndex = 16
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 2985
    Top = 5700
    Width = 2880
    Height = 255
    TabIndex = 26
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
End

Attribute VB_Name = "SchemeMast"


Private Sub DGHelp_UnknownEvent_9 'F482A4
  'Data Table: 4631E0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4819B: Me.DGHelp.Visible = False
  loc_F481BA: If (Me.RecordCount > 0) Then
  loc_F481F9:   Set var_B4 = Me.txt
  loc_F481FF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F48207:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4823A:   var_B0 = Me.Fields.Item("Name")
  loc_F48259:   Set var_B4 = Me.txt
  loc_F4825F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F48267:   var_B8.Text = CStr(var_B0.Value)
  loc_F4827D: End If
  loc_F48288: Set var_A8 = Me.txt
  loc_F4828E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F48296: var_B0.SetFocus
  loc_F482A2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EB5DE8
  'Data Table: 4631E0
  Dim var_A8 As Variant
  loc_EB5D5C: Set var_88 = Me.DGHelp
  loc_EB5D86: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EB5D8E: Set var_BC = Me.DGHelp
  loc_EB5DAE: Call 0.Method_DGHelp_UnknownEvent_1F8 (var_C0, DGHelp.DispID_1B)
  loc_EB5DB7: Set var_BC = Me.FGPoint
  loc_EB5DD4: Proc_6_138_106D6F8(Me.DGHelp, global_64, CInt(var_C0))
  loc_EB5DE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ED25E4
  'Data Table: 4631E0
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_ED2530: On Error Goto loc_ED25DE
  loc_ED2556: Call Proc_215_25_E87B18(Proc_5_1_100CB50("ADD", Me))
  loc_ED2561: Call Proc_215_26_EF2E58(global_52)
  loc_ED2574: Set var_8C = Me.txt
  loc_ED257A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_94)
  loc_ED2582: var_94.Text = "Yes"
  loc_ED2599: Set var_8C = Me.txt
  loc_ED259F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED25A7: var_94.SetFocus
  loc_ED25C0: Me.LblUser.Caption = vbNullString
  loc_ED25D5: Me.LblLDt.Caption = vbNullString
  loc_ED25DD: Exit Sub
  loc_ED25DE: ' Referenced from: ED2530
  loc_ED25DE: Proc_6_60_E62BC4(var_94)
  loc_ED25E3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBD62C
  'Data Table: 4631E0
  loc_EBD598: On Error Goto loc_EBD623
  loc_EBD5D2: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBD5E1:   Set var_110 = Me
  loc_EBD5F8:   Call Proc_215_25_E87B18(Proc_5_1_100CB50("INI", var_110))
  loc_EBD603:   Call Proc_215_27_1375A94(global_52)
  loc_EBD60B: Else
  loc_EBD611:   Call 0.Method_arg_1E8 (var_110)
  loc_EBD619:   Call var_110.SetFocus
  loc_EBD622: End If
  loc_EBD622: Exit Sub
  loc_EBD623: ' Referenced from: EBD598
  loc_EBD623: Proc_6_60_E62BC4()
  loc_EBD628: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11BC390
  'Data Table: 4631E0
  Dim var_9C As TextBox
  Dim var_A4 As String
  Dim unk_4631F6 As Connection15
  Dim var_D4 As Recordset15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  Dim var_FC As Variant
  Dim var_A0 As String
  Dim var_D0 As Variant
  Dim Me As Recordset15
  loc_11BBF78: On Error Goto loc_11BC340
  loc_11BBF89: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_11BBF8C:   Exit Sub
  loc_11BBF8D: End If
  loc_11BBFBA: Set var_98 = Me.txt
  loc_11BBFC0: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_9C, var_A0, "Select Count(*) From Stock WHERE IsNull(DelFlag,'') Not In ('D','Y') And IsNull(FreeSno,0)<>0 And IsNull(SchemeCode,'') ='", var_D0, -1)
  loc_11BBFD1: var_A4 = var_D8 & var_A0
  loc_11BBFEF: unk_4631F6.Execute var_A4 & "' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')", 0, var_EC
  loc_11BBFF7: var_FC = var_9C.Tag.Fields
  loc_11BBFFF:  = var_D8.Item()
  loc_11BC007:  = var_EC.Value
  loc_11BC012: Proc_6_39_E7C810(var_10C)
  loc_11BC045: If (var_10C > 0) Then
  loc_11BC04E:   Call 0.Method_arg_50 (var_A4)
  loc_11BC06B:   var_A0 = "Related Entry Exists In Stock." & vbCrLf
  loc_11BC072:   var_D0 = CVar(var_A0 & "Record Can't Be Deleted!") 'String
  loc_11BC075:   MsgBox(var_D0, &H10, CVar(var_A4), var_10C, var_12C)
  loc_11BC088:   Exit Sub
  loc_11BC089: End If
  loc_11BC0B6: Set var_98 = Me.txt
  loc_11BC0BC: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_9C, var_A0, "Select Count(*) From SchemeItemDetail WHERE IsNull(SchemeCode,'') ='", var_D0, -1)
  loc_11BC0C4: var_D4 = var_9C.Tag
  loc_11BC0CD: var_A4 = var_D8 & var_A0
  loc_11BC0EB: unk_4631F6.Execute var_A4 & "' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')", 0, var_EC
  loc_11BC0FB:  = var_D8.Item(var_D4.Fields)
  loc_11BC103:  = var_EC.Value
  loc_11BC10E: Proc_6_39_E7C810(var_10C)
  loc_11BC141: If (var_10C > 0) Then
  loc_11BC14A:   Call 0.Method_arg_50 (var_A4)
  loc_11BC158:   var_FC = CVar(var_A4) 'String
  loc_11BC167:   var_A0 = "Related Entry Exists In Scheme Item Detail." & vbCrLf
  loc_11BC171:   MsgBox(CVar(var_A0 & "Record Can't Be Deleted!"), &H10, var_FC, var_10C, var_12C)
  loc_11BC184:   Exit Sub
  loc_11BC185: End If
  loc_11BC18E: unk_4631F6.BeginTrans var_130
  loc_11BC1A4: var_94 = Me.Bookmark 'Variant
  loc_11BC1C6: Set var_98 = Me.txt
  loc_11BC1CC: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_9C, var_A0, "Delete from SchemeMast WHERE Code ='")
  loc_11BC1D4: var_D0 = var_9C.Tag
  loc_11BC1DD: var_A4 = -1 & var_A0
  loc_11BC1FB: unk_4631F6.Execute var_A4 & "' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ", var_D4, var_FC
  loc_11BC227: Set var_98 = Me.txt
  loc_11BC22D: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_9C)
  loc_11BC235: var_A0 = var_9C.Tag
  loc_11BC23F: var_15C = 0
  loc_11BC252: var_154 = 0
  loc_11BC25D: var_150 = 0
  loc_11BC2D6: Proc_154_5_10E33A4(MemVar_1F92044, "SchemeMast", "Code", 2, var_A0, 0, 0, 0)
  loc_11BC301: unk_4631F6.CommitTrans
  loc_11BC311: Me.Requery -1
  loc_11BC316: Call Proc_215_27_1375A94(0, 0, 0, 0)
  loc_11BC337: Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_11BC33F: Exit Sub
  loc_11BC340: ' Referenced from: 11BBF78
  loc_11BC346: unk_4631F6.RollbackTrans
  loc_11BC353: Set var_98 = Err()
  loc_11BC359: Call 0.Method_arg_2C (var_A0, 0, var_150)
  loc_11BC37A: MsgBox(CVar(var_A0), &H30, " Deletion Error ", var_10C, var_12C)
  loc_11BC38D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'ECE04C
  'Data Table: 4631E0
  Dim var_9C As TextBox
  Dim var_94 As Label
  loc_ECDFA0: On Error Goto loc_ECE043
  loc_ECDFB1: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_ECDFB4:   Exit Sub
  loc_ECDFB5: End If
  loc_ECDFD8: Call Proc_215_25_E87B18(Proc_5_1_100CB50("EDIT", Me))
  loc_ECDFF1: Set var_94 = Me.txt
  loc_ECDFF7: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_9C)
  loc_ECE00A: global_60 = var_9C.Tag
  loc_ECE025: Me.LblUser.Caption = vbNullString
  loc_ECE03A: Me.LblLDt.Caption = vbNullString
  loc_ECE042: Exit Sub
  loc_ECE043: ' Referenced from: ECDFA0
  loc_ECE043: Proc_6_60_E62BC4(global_52)
  loc_ECE048: Exit Sub
  loc_ECE049: Put , , 
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E158E0
  'Data Table: 4631E0
  loc_E158D5: Me.Global.Unload Me
  loc_E158DD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F26CF0
  'Data Table: 4631E0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F26BF0: On Error Goto loc_F26C88
  loc_F26BFC: var_88 = Me.RecordCount
  loc_F26C0A: If (var_88 <= 0) Then
  loc_F26C13:   var_B8 = "Information"
  loc_F26C2E:   MsgBox("No Records Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F26C3E:   Exit Sub
  loc_F26C3F: End If
  loc_F26C46: var_10C = "SELECT Code As SearchCode, Name as SchemeName ,Convert(Varchar(11),StartDate,103) As StartDate,Convert(Varchar(11),EndDate,103) As EndDate, FromTime , ToTime  , Days As Days, Active FROM SchemeMast WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_F26C4D: MemVar_1F920E4 = var_10C & "' or LOGSITE_CODE='HO')  Order By StartDate"
  loc_F26C5A: MemVar_1F92120 = Me
  loc_F26C61: var_10C = "2000,1100,1100,1050,900,900,800"
  loc_F26C67: Proc_6_126_F1BCC0(var_10C)
  loc_F26C82: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F26C87: Exit Sub
  loc_F26C88: ' Referenced from: F26BF0
  loc_F26C90: Set var_110 = Err()
  loc_F26C96: Call 0.Method_arg_1C (var_88)
  loc_F26CA7: If (var_88 <> 0) Then
  loc_F26CB2:   Set var_110 = Err()
  loc_F26CB8:   Call 0.Method_arg_2C (var_10C)
  loc_F26CD9:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F26CEC: End If
  loc_F26CEC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E30018
  'Data Table: 4631E0
  loc_E30008: Proc_5_0_110649C(&HFF, Me)
  loc_E30010: Call Proc_215_27_1375A94(global_52)
  loc_E30015: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E303D8
  'Data Table: 4631E0
  loc_E303C8: Proc_5_0_110649C(&HFF, Me)
  loc_E303D0: Call Proc_215_27_1375A94(global_52)
  loc_E303D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E302B8
  'Data Table: 4631E0
  loc_E302A8: Proc_5_0_110649C(&HFF, Me)
  loc_E302B0: Call Proc_215_27_1375A94(global_52)
  loc_E302B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E30258
  'Data Table: 4631E0
  Dim arg_68FF As Variant
  loc_E30248: Proc_5_0_110649C(&HFF, Me)
  loc_E30250: Call Proc_215_27_1375A94(global_52)
  loc_E30255: Exit Sub
  loc_E30256: arg_68FF = CVar(2) 'Integer
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E157B0
  'Data Table: 4631E0
  loc_E1579C: Set var_88 = Me.DGHelp
  loc_E157AD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1519430
  'Data Table: 4631E0
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_130 As Variant
  Dim var_A0 As Long
  Dim unk_4631F6 As Connection15
  Dim var_138 As String
  Dim var_13C As String
  Dim var_12C As Variant
  Dim var_140 As Field20
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim Me As Recordset15
  Dim var_C4 As Variant
  Dim var_158 As TextBox
  Dim var_16C As Variant
  Dim var_1A4 As TextBox
  Dim var_1B8 As Variant
  Dim var_1F0 As TextBox
  Dim var_1FC As TextBox
  Dim var_204 As String
  Dim var_26C As TextBox
  Dim var_278 As TextBox
  Dim var_280 As String
  Dim var_2F8 As TextBox
  Dim var_1D8 As Variant
  Dim var_244 As Variant
  Dim var_2F0 As Variant
  Dim var_3AC As Variant
  Dim var_42C As Variant
  Dim var_4DC As Variant
  Dim var_1F4 As String
  Dim var_270 As String
  Dim var_17C As Variant
  Dim var_1C8 As Variant
  Dim var_234 As Variant
  Dim var_35C As Variant
  Dim var_46C As Variant
  Dim var_500 As Variant
  Dim var_2B0 As Variant
  loc_15185F0: On Error Goto loc_15193DE
  loc_15185F3: Call Proc_215_28_E428E8()
  loc_15185FC: var_86 = CByte(0) 'Byte
  loc_1518603: Call Proc_215_31_E71704(var_A2)
  loc_151860E: If (var_A2 = 0) Then
  loc_151861C:   var_E4 = "Days Required"
  loc_151862C:   var_C4 = "Choose atleast One Day for Scheme !"
  loc_1518632:   MsgBox(var_C4, &H40, var_E4, var_104, var_124)
  loc_1518642:   Exit Sub
  loc_1518646: Else
  loc_1518651:   For var_128 = CByte(1) To CByte(7):   var_9A = var_128 'Byte
  loc_1518667:     Set var_12C = Me.chkday
  loc_151866D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_9A), var_130)
  loc_151868B:     If (CLng(var_130.Value) = 1) Then
  loc_151869D:       var_A0 = ((var_A0 * &HA) + CLng(var_9A))
  loc_15186A0:     End If
  loc_15186A3:   Next var_128 'Byte
  loc_15186A9: End If
  loc_15186B2: unk_4631F6.BeginTrans var_134
  loc_15186BB: var_86 = CByte(1) 'Byte
  loc_15186C3: Set var_12C = Me.TopCtrl1
  loc_15186C9: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_15186E2: If (CStr() = "Add") Then
  loc_15186EB:   var_D4 = 0
  loc_1518708:   var_138 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From SchemeMast Where SITE_CODE='" & MemVar_1F92070
  loc_1518718:   unk_4631F6.Execute CStr() & "'", var_C4, -1
  loc_1518720:   var_12C = var_12C.Fields
  loc_1518728:   var_D4 = var_130.Item(var_130)
  loc_1518730:   var_140 = var_140.Value
  loc_1518769:   var_104 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1518797:   var_124 = (1 + Format(CStr(var_E4), "0000"))
  loc_15187A2:   global_80 = CStr(var_124)
  loc_15187B7: Else
  loc_15187D4:   var_130 = Me.Fields.Item("Code")
  loc_15187EB:   global_80 = CStr(var_130.Value)
  loc_15187FC: End If
  loc_1518800: Set var_12C = Me.TopCtrl1
  loc_1518806: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_151881F: If (CStr(var_104) = "Add") Then
  loc_1518830:   Set var_12C = Me.txt
  loc_1518836:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_130)
  loc_151885F:   Set var_140 = Me.txt
  loc_1518865:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_158)
  loc_1518875:   var_16C = CVar(var_158.Text) 'String
  loc_151887B:   Proc_6_7_F25D88(var_17C, var_16C)
  loc_151888E:   Set var_1A0 = Me.txt
  loc_1518894:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1A4)
  loc_15188A4:   var_1B8 = CVar(var_1A4.Text) 'String
  loc_15188AA:   Proc_6_7_F25D88(var_1C8, var_1B8)
  loc_15188BD:   Set var_1EC = Me.txt
  loc_15188C3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1F0)
  loc_15188DE:   Set var_1F8 = Me.txt
  loc_15188E4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1FC)
  loc_15188EC:   var_200 = var_1FC.Text
  loc_151890D:   var_204 = var_1F0.Text & ":"
  loc_151892D:   Set var_268 = Me.txt
  loc_1518933:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_26C, var_270)
  loc_151893B:   1 = var_26C.Text
  loc_151894E:   Set var_274 = Me.txt
  loc_1518954:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_278, var_27C)
  loc_151895C:   1 = var_278.Text
  loc_151899D:   Set var_2F4 = Me.txt
  loc_15189A3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2F8, var_2FC)
  loc_15189AB:   1 = var_2F8.Text
  loc_15189DD:   var_45C = Date
  loc_15189E8:   Proc_6_7_F25D88(var_46C, var_45C)
  loc_1518A01:   var_138 = "Insert into Schememast(Code,Name,Startdate,EndDate,FromTime,ToTime,Active, " & "Days,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_1518A0B:   var_13C = var_138 & global_80
  loc_1518A48:   var_244 = CVar(var_13C & "','") & Trim(CVar(var_130.Text)) & "'," & var_17C & "," & var_1C8 & ",'" & Format(CVar(var_204 & var_200), "HH:nn") 
  loc_1518A7C:   var_3AC = var_244 & "','" & Format(CVar(var_270 & ":" & var_27C), "HH:nn") & "','" & IIf((var_2FC = "Yes"), "Y", "N") & "'," & CVar(var_A0) 
  loc_1518ACE:   var_4DC = var_3AC & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_46C & ",'A','" & CVar(MemVar_1F92078) & "')" 
  loc_1518ADC:   unk_4631F6.Execute CStr(var_4DC), var_500, -1
  loc_1518B77: Else
  loc_1518B85:   Set var_12C = Me.txt
  loc_1518B8B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_130, var_138)
  loc_1518B93:   var_504 = var_130.Text
  loc_1518BA1:   var_E4 = Trim(CVar(var_138))
  loc_1518BB4:   Set var_140 = Me.txt
  loc_1518BBA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_158, var_13C)
  loc_1518BC2:   1 = var_158.Text
  loc_1518BD0:   Proc_6_7_F25D88(var_16C, CVar(var_13C))
  loc_1518BE3:   Set var_1A0 = Me.txt
  loc_1518BE9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1A4)
  loc_1518BFF:   Proc_6_7_F25D88(var_1B8, CVar(var_1A4.Text))
  loc_1518C12:   Set var_1EC = Me.txt
  loc_1518C18:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1F0)
  loc_1518C33:   Set var_1F8 = Me.txt
  loc_1518C39:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1FC)
  loc_1518C62:   var_1F4 = var_1F0.Text & ":"
  loc_1518C82:   Set var_268 = Me.txt
  loc_1518C88:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_26C, var_200)
  loc_1518C90:   1 = var_26C.Text
  loc_1518CA3:   Set var_274 = Me.txt
  loc_1518CA9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_278, var_204)
  loc_1518CB1:   1 = var_278.Text
  loc_1518CF2:   Set var_2F4 = Me.txt
  loc_1518CF8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2F8, var_27C)
  loc_1518D00:   1 = var_2F8.Text
  loc_1518D15:   var_2F0 = "Y"
  loc_1518D3D:   Proc_6_7_F25D88(var_45C, Date)
  loc_1518D87:   var_234 = "UpDate Schememast Set Name='" & var_E4 & "',Startdate=" & var_16C & ",EndDate=" & var_1B8 & ",FromTime='" & Format(CVar(var_1F4 & var_1FC.Text), "HH:nn") 
  loc_1518DA7:   var_35C = var_234 & "',ToTime='" & Format(CVar(var_200 & ":" & var_204), "HH:nn") & "',Active='" & IIf((var_27C = "Yes"), var_2F0, "N") 
  loc_1518DEA:   var_42C = var_35C & "',Days=" & CVar(var_A0) & ",Site_Code='" & CVar(MemVar_1F92070) & "',U_Name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" 
  loc_1518E27:   var_280 = CStr(var_42C & var_45C & ",U_AE='E',LogSite_Code='" & CVar(MemVar_1F92078) & "' Where Code='" & CVar(global_60) & "'")
  loc_1518E31:   unk_4631F6.Execute var_280, var_544, -1
  loc_1518ED5:   Set var_12C = Me.txt
  loc_1518EDB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_130, var_138)
  loc_1518EE3:   var_504 = var_130.Text
  loc_1518EF1:   Proc_6_7_F25D88(var_E4, CVar(var_138))
  loc_1518F04:   Set var_140 = Me.txt
  loc_1518F0A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_158, var_13C)
  loc_1518F12:   1 = var_158.Text
  loc_1518F20:   Proc_6_7_F25D88(var_16C, CVar(var_13C))
  loc_1518F33:   Set var_1A0 = Me.txt
  loc_1518F39:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1A4)
  loc_1518F54:   Set var_1EC = Me.txt
  loc_1518F5A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1F0)
  loc_1518FA3:   Set var_1F8 = Me.txt
  loc_1518FA9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1FC, var_1F4)
  loc_1518FB1:   1 = var_1FC.Text
  loc_1518FC4:   Set var_268 = Me.txt
  loc_1518FCA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_26C, var_200)
  loc_1518FD2:   1 = var_26C.Text
  loc_151903A:   var_1D8 = "Update SchemeItemDetail Set AppDate=" & var_E4 & ",EndDate=" & var_16C & ",FromTime='" & Format(CVar(var_1A4.Text & ":" & var_1F0.Text), "HH:nn") 
  loc_1519067:   var_2B0 = var_1D8 & "',ToTime='" & Format(CVar(var_1F4 & ":" & var_200), "HH:nn") & "',Days=" & CVar(var_A0) & " Where SchemeCode='" 
  loc_151908B:   unk_4631F6.Execute CStr(var_2B0 & CVar(global_60) & "'"), var_2F0, -1
  loc_15190FD:   Set var_12C = Me.txt
  loc_1519103:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_130, var_138, var_274)
  loc_151910B:   1 = var_130.Text
  loc_1519119:   Proc_6_7_F25D88(var_E4, CVar(var_138))
  loc_151912C:   Set var_140 = Me.txt
  loc_1519132:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_158, var_13C)
  loc_151913A:   1 = var_158.Text
  loc_1519148:   Proc_6_7_F25D88(var_16C, CVar(var_13C))
  loc_151915B:   Set var_1A0 = Me.txt
  loc_1519161:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1A4)
  loc_151917C:   Set var_1EC = Me.txt
  loc_1519182:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1F0)
  loc_15191CB:   Set var_1F8 = Me.txt
  loc_15191D1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1FC, var_1F4)
  loc_15191D9:   1 = var_1FC.Text
  loc_15191EC:   Set var_268 = Me.txt
  loc_15191F2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_26C, var_200)
  loc_15191FA:   1 = var_26C.Text
  loc_151923A:   var_B4 = "Update SchemeOutletDiscount Set AppDate="
  loc_1519242:   var_104 = var_B4 & var_E4 
  loc_151924B:   var_124 = var_104 & ",EndDate=" 
  loc_1519272:   var_244 = var_124 & var_16C & ",FromTime='" & Format(CVar(var_1A4.Text & ":" & var_1F0.Text), "HH:nn") & "',ToTime='" & Format(CVar(var_1F4 & ":" & var_200), "HH:nn") 
  loc_15192B3:   unk_4631F6.Execute CStr(var_244 & "',Days=" & CVar(var_A0) & " Where SchemeCode='" & CVar(global_60) & "'"), var_2F0, -1
  loc_1519317: End If
  loc_151931D: unk_4631F6.CommitTrans
  loc_1519326: var_86 = CByte(0) 'Byte
  loc_1519335: Me.Requery -1
  loc_1519345: Me.Requery -1
  loc_1519372: Me.Find "Code='" & global_80 & "'", 0, 1
  loc_1519382: Set var_12C = Me.TopCtrl1
  loc_1519388: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_B4)
  loc_15193A1: If (CStr(var_274) = "Add") Then
  loc_15193A4:   Call TopCtrl1_UnknownEvent_A()
  loc_15193A9:   Exit Sub
  loc_15193AA: End If
  loc_15193BF: var_138 = "INI"
  loc_15193CD: Call Proc_215_25_E87B18(Proc_5_1_100CB50(var_138, Me, global_52), 1)
  loc_15193D8: Call Proc_215_27_1375A94(1)
  loc_15193DD: Exit Sub
  loc_15193DE: ' Referenced from: 15185F0
  loc_15193E7: If (CInt(var_86) = 1) Then
  loc_15193F0:   unk_4631F6.RollbackTrans
  loc_15193F5: End If
  loc_15193FD: Set var_12C = Err()
  loc_1519403: Call 0.Method_arg_2C (var_138)
  loc_151941C: MsgBox(CVar(var_138), &H10, var_E4, var_104, var_124)
  loc_151942F: Exit Sub
End Sub

Private Sub Form_Load() '10A2234
  'Data Table: 4631E0
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_C4 As TextBox
  Dim var_CC As DataGrid
  Dim var_D0 As TextBox
  Dim unk_4631F6 As Connection15
  loc_10A1F80: On Error Goto loc_10A21F0
  loc_10A1F92: Me.LblUser.Left = CDbl(13500)
  loc_10A1FA9: Me.LblUser.Top = CDbl(7800)
  loc_10A1FC0: Me.LblLDt.Top = CDbl(8160)
  loc_10A1FD7: Me.LblLDt.Left = CDbl(13500)
  loc_10A1FE6: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10A1FF9: Me.framWeek.BackColor = CLng(MemVar_1F921B0)
  loc_10A200B: Set var_8C = Me.TopCtrl1
  loc_10A2011: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_10A201F: Call 0.Method_arg_50 (var_B0)
  loc_10A202F: Set var_8C = Me.TopCtrl1
  loc_10A2035: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(CVar(var_B0))
  loc_10A204A: Set global_64 = New 
  loc_10A205C: Me.TopCtrl1.CursorLocation = 3
  loc_10A2086: var_C0 = CVar("SELECT Code, Name  FROM SchemeMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_10A2090: Me.Open var_C0, CVar(MemVar_1F92044), 2
  loc_10A20A4: CVarUnk
  loc_10A20A9: VerifyVarObj
  loc_10A20AF: Set var_8C = Me.DGHelp
  loc_10A20B5: LateIdStAd
  loc_10A20D7: Call 0.Method_Form_Load0 (CInt(0), var_C4, var_C8, Me.txt)
  loc_10A20DF: global_64 = var_C4.Left
  loc_10A20F6: Me.DGHelp.Left = CVar(var_C8)
  loc_10A2112: Set var_CC = Me.txt
  loc_10A2118: Call 0.Method_Form_Load0 (CInt(0), var_D0, var_D4)
  loc_10A2120: 3 = var_D0.Height
  loc_10A2139: Call 0.Method_Form_Load0 (CInt(0), var_C4)
  loc_10A2151: var_9C = CVar(((var_C4.Top + var_D4) + CDbl(&H1E))) 'Single
  loc_10A2160: Me.DGHelp.Top = CVar(var_C4.Top)
  loc_10A2186: var_B0 = "SELECT Code, Name as SchemeName ,StartDate,EndDate, FromTime , ToTime  , Days As DayCode, Active , Site_Code, LOGSITE_CODE  FROM SchemeMast WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_10A2196: unk_4631F6.Execute var_B0 & "' or LOGSITE_CODE='HO') ", var_C0, -1
  loc_10A21D1: var_B0 = "INI"
  loc_10A21DF: Call Proc_215_25_E87B18(Proc_5_1_100CB50(var_B0, Me, Me.txt), Me)
  loc_10A21EA: Call Proc_215_27_1375A94(-1)
  loc_10A21EF: Exit Sub
  loc_10A21F0: ' Referenced from: 10A1F80
  loc_10A21F8: Set var_8C = Err()
  loc_10A21FE: Call 0.Method_arg_2C (var_B0)
  loc_10A221F: MsgBox(CVar(var_B0), &H40, "Information", var_100, var_120)
  loc_10A2232: Exit Sub
  loc_10A2233: Exit Sub
End Sub

Private Sub Form_Resize() 'ED1C78
  'Data Table: 4631E0
  Dim var_8C As Label
  loc_ED1BD6: Call 0.Method_arg_50 (var_88)
  loc_ED1BE8: Me.LblFormCaption.Caption = var_88
  loc_ED1C01: Me.LblFormCaption.Left = CDbl(0)
  loc_ED1C0D: Set var_A0 = Me.TopCtrl1
  loc_ED1C13: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED1C20: Set var_8C = Me.TopCtrl1
  loc_ED1C26: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED1C40: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED1C5B: Call 0.Method_arg_100 (var_B8)
  loc_ED1C6D: Me.LblFormCaption.Width = var_B8
  loc_ED1C75: Exit Sub
  loc_ED1C76: DOC
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2A1E8
  'Data Table: 4631E0
  loc_E2A1CB: Set global_64 = Nothing
  loc_E2A1DD: Set global_52 = Nothing
  loc_E2A1E4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E89BF4
  'Data Table: 4631E0
  loc_E89B90: On Error Goto loc_E89BB0
  loc_E89BA7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E89BAF: Exit Sub
  loc_E89BB0: ' Referenced from: E89B90
  loc_E89BB8: Set var_88 = Err()
  loc_E89BBE: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E89BDF: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E89BF2: Exit Sub
  loc_E89BF3: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FEC4C8
  'Data Table: 4631E0
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_FEC2FE: Set var_88 = Me.txt
  loc_FEC304: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FEC312: Proc_6_74_E226B0(var_8C)
  loc_FEC31E: Call Proc_215_28_E428E8(var_8C)
  loc_FEC326: var_92 = Index
  loc_FEC331: If (var_92 = CInt(0)) Then
  loc_FEC34B:   If (Me.RecordCount > 0) Then
  loc_FEC359:     Set var_8C = Me.FGPoint
  loc_FEC371:     Proc_6_137_1193554(Me.DGHelp, global_64, Index)
  loc_FEC37F:   End If
  loc_FEC3CD:   Set var_88 = Me.txt
  loc_FEC3D3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FEC3DB:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FEC3F3:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FEC3F6:     Exit Sub
  loc_FEC3F7:   End If
  loc_FEC404:   Set var_88 = Me.txt
  loc_FEC40A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FEC412:   var_A0 = var_8C.Text
  loc_FEC424:   var_B0 = "Name"
  loc_FEC45F:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FEC468:     Me.MoveFirst
  loc_FEC48B:     Set var_88 = Me.txt
  loc_FEC491:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FEC499:     0 = var_8C.Text
  loc_FEC4B2:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_FEC4C7:   End If
  loc_FEC4C7: End If
  loc_FEC4C7: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FB4AC8
  'Data Table: 4631E0
  Dim Me As Recordset15
  loc_FB4936: If (CLng(Shift) = &H1B) Then
  loc_FB4939:   Call Proc_215_28_E428E8()
  loc_FB493E:   Exit Sub
  loc_FB493F: End If
  loc_FB494D: If (KeyCode = CInt(0)) Then
  loc_FB4972:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_FB4992:     Set var_9C = Me.FGPoint
  loc_FB49C0:     Proc_6_79_11ACE04(Me.DGHelp, Me.txt, KeyCode, global_64, Shift)
  loc_FB49D4:   End If
  loc_FB4A2D:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FB4A34:     Set var_9C = Me.DGHelp
  loc_FB4A53:     Proc_6_138_106D6F8(var_9C, global_64, KeyCode, Me.FGPoint, 0)
  loc_FB4A61:   End If
  loc_FB4A61: End If
  loc_FB4A7D: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FB4A93:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FB4A9C:     Proc_6_76_E52838(Shift, arg_14, 1)
  loc_FB4AA1:   End If
  loc_FB4AB6:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FB4ABF:     Proc_6_75_E527CC(Shift, arg_14, var_9C)
  loc_FB4AC4:   End If
  loc_FB4AC4: End If
  loc_FB4AC4: Exit Sub
  loc_FB4AC5: CExtInstUnk
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FC3B8C
  'Data Table: 4631E0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  loc_FC39E3: Proc_6_58_E054C0(arg_10)
  loc_FC39EE: Proc_6_133_E7EF78(var_94)
  loc_FC3A03: If (CInt(var_94) = &HD) Then
  loc_FC3A08:   arg_10 = 0
  loc_FC3A0B: End If
  loc_FC3A0E: var_96 = KeyAscii
  loc_FC3A19: If (var_96 = CInt(0)) Then
  loc_FC3A38:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FC3A46:     Set var_A0 = Me.FGPoint
  loc_FC3A5E:     Proc_6_138_106D6F8(Me.DGHelp, global_64, KeyAscii, var_A0)
  loc_FC3A6C:   End If
  loc_FC3A6F: Else
  loc_FC3A77:   If Not (var_96 = CInt(3)) Then
  loc_FC3A82:     If Not (var_96 = CInt(4)) Then
  loc_FC3A8D:       If Not (var_96 = CInt(5)) Then
  loc_FC3A98:         If (var_96 = CInt(6)) Then
  loc_FC3A9B:         End If
  loc_FC3A9B:       End If
  loc_FC3A9B:     End If
  loc_FC3AA5:     Set var_9C = Me.txt
  loc_FC3AAB:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_FC3AC6:     Proc_6_42_129A86C(var_A0, arg_10, 2, 0)
  loc_FC3AD5:   Else
  loc_FC3ADD:     If (var_96 = CInt(7)) Then
  loc_FC3B06:       If (Ucase(CVar(Chr$(CLng(arg_10)))) = "Y") Then
  loc_FC3B16:         Set var_9C = Me.txt
  loc_FC3B1C:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_FC3B24:         var_A0.Text = arg_10
  loc_FC3B33:       Else
  loc_FC3B59:         If (Ucase(CVar(Chr$(CLng(arg_10)))) = "N") Then
  loc_FC3B69:           Set var_9C = Me.txt
  loc_FC3B6F:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "No")
  loc_FC3B77:           var_A0.Text = arg_10
  loc_FC3B83:         End If
  loc_FC3B83:       End If
  loc_FC3B85:       arg_10 = 0
  loc_FC3B88:     End If
  loc_FC3B88:   End If
  loc_FC3B88: End If
  loc_FC3B88: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E134
  'Data Table: 4631E0
  loc_E4E112: Set var_88 = Me.txt
  loc_E4E118: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E126: Proc_6_73_E22704(var_8C)
  loc_E4E132: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13DC810
  'Data Table: 4631E0
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_94 As String
  Dim var_A0 As TextBox
  Dim var_9C As TextBox
  Dim arg_10 As Integer
  Dim var_100 As Double
  Dim var_F8 As String
  loc_13DBE37: var_86 = Cancel
  loc_13DBE42: If Not (var_86 = CInt(1)) Then
  loc_13DBE4D:   If (var_86 = CInt(2)) Then
  loc_13DBE50:   End If
  loc_13DBE5D:   Set var_8C = Me.txt
  loc_13DBE63:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DBE82:   If (var_90.Text <> vbNullString) Then
  loc_13DBE8F:     Set var_8C = Me.txt
  loc_13DBE95:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DBEB5:     Set var_9C = Me.txt
  loc_13DBEBB:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_13DBEC3:     var_A0.Text = Proc_6_33_1512840(var_90)
  loc_13DBED9:   Else
  loc_13DBEEB:     Set var_8C = Me.txt
  loc_13DBEF1:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DBEF9:     var_90.Text = CStr(MemVar_1F920EC)
  loc_13DBF08:   End If
  loc_13DBF0B: Else
  loc_13DBF13:   If (var_86 = CInt(0)) Then
  loc_13DBF21:     Set var_8C = Me.txt
  loc_13DBF27:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_13DBF4D:     Set var_98 = Me.txt
  loc_13DBF53:     Call 0.Method_Txt_Validate0 (CInt(0), var_9C)
  loc_13DBF5B:     var_9C.Text = CStr(Trim(CVar(var_90)))
  loc_13DBF76:     Call Proc_215_29_1084644(var_C2)
  loc_13DBF81:     If (var_C2 = &HFF) Then
  loc_13DBF86:       arg_10 = &HFF
  loc_13DBF89:       Exit Sub
  loc_13DBF8A:     End If
  loc_13DBF95:     Set var_8C = Me.txt
  loc_13DBF9B:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_13DBFA3:     var_94 = "Name"
  loc_13DBFC4:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_13DBFC9:       arg_10 = &HFF
  loc_13DBFCC:       Exit Sub
  loc_13DBFCD:     End If
  loc_13DBFD0:   Else
  loc_13DBFD8:     If (var_86 = CInt(3)) Then
  loc_13DBFE8:       Set var_8C = Me.txt
  loc_13DBFEE:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13DBFF6:       arg_10 = var_90.Text
  loc_13DC00D:       If (var_94 = vbNullString) Then
  loc_13DC03B:         var_94 = CStr(Format(Time, "HH"))
  loc_13DC049:         Set var_8C = Me.txt
  loc_13DC04F:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94, 1)
  loc_13DC057:         var_90.Text = 1
  loc_13DC06F:       End If
  loc_13DC07C:       Set var_8C = Me.txt
  loc_13DC082:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13DC08A:       arg_10 = var_90.Text
  loc_13DC0CF:       Set var_98 = Me.txt
  loc_13DC0D5:       Call 0.Method_Txt_Validate0 (Cancel, var_9C, CStr(Format(CVar(Val(var_94)), "00")), 1)
  loc_13DC0DD:       var_9C.Text = 1
  loc_13DC10A:       Set var_8C = Me.txt
  loc_13DC110:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13DC118:       var_100 = var_90.Text
  loc_13DC134:       If (CDbl(Val(var_94)) > CDbl(&H17)) Then
  loc_13DC144:         Set var_8C = Me.txt
  loc_13DC14A:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DC152:         var_90.Text = "24"
  loc_13DC15E:       End If
  loc_13DC16B:       Set var_8C = Me.txt
  loc_13DC171:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DC195:       If (CDbl(Val(var_90.Text)) = CDbl(&H18)) Then
  loc_13DC1A6:         Set var_8C = Me.txt
  loc_13DC1AC:         Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_13DC1B4:         var_90.Text = "00"
  loc_13DC1C0:       End If
  loc_13DC1C3:     Else
  loc_13DC1CB:       If (var_86 = CInt(5)) Then
  loc_13DC1DB:         Set var_8C = Me.txt
  loc_13DC1E1:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DC200:         If (var_90.Text = vbNullString) Then
  loc_13DC22E:           var_94 = CStr(Format(Time, "HH"))
  loc_13DC23C:           Set var_8C = Me.txt
  loc_13DC242:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13DC24A:           var_90.Text = 1
  loc_13DC262:         End If
  loc_13DC26F:         Set var_8C = Me.txt
  loc_13DC275:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13DC27D:         1 = var_90.Text
  loc_13DC2C2:         Set var_98 = Me.txt
  loc_13DC2C8:         Call 0.Method_Txt_Validate0 (Cancel, var_9C, CStr(Format(CVar(Val(var_94)), "00")), 1)
  loc_13DC2D0:         var_9C.Text = 1
  loc_13DC2FD:         Set var_8C = Me.txt
  loc_13DC303:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13DC30B:         var_100 = var_90.Text
  loc_13DC327:         If (CDbl(Val(var_94)) > CDbl(&H17)) Then
  loc_13DC337:           Set var_8C = Me.txt
  loc_13DC33D:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DC345:           var_90.Text = "24"
  loc_13DC351:         End If
  loc_13DC35E:         Set var_8C = Me.txt
  loc_13DC364:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DC388:         If (CDbl(Val(var_90.Text)) = CDbl(&H18)) Then
  loc_13DC399:           Set var_8C = Me.txt
  loc_13DC39F:           Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_13DC3A7:           var_90.Text = "00"
  loc_13DC3B3:         End If
  loc_13DC3B6:       Else
  loc_13DC3BE:         If (var_86 = CInt(4)) Then
  loc_13DC3CE:           Set var_8C = Me.txt
  loc_13DC3D4:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DC3F3:           If (var_90.Text = vbNullString) Then
  loc_13DC421:             var_94 = CStr(Format(Time, "NN"))
  loc_13DC42F:             Set var_8C = Me.txt
  loc_13DC435:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13DC43D:             var_90.Text = 1
  loc_13DC455:           End If
  loc_13DC462:           Set var_8C = Me.txt
  loc_13DC468:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13DC470:           1 = var_90.Text
  loc_13DC4A7:           var_F8 = CStr(Format(CVar(Val(var_94)), "00"))
  loc_13DC4B5:           Set var_98 = Me.txt
  loc_13DC4BB:           Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_F8, 1)
  loc_13DC4F1:           Set var_8C = Me.txt
  loc_13DC4F7:           Call 0.Method_Txt_Validate0 (CInt(3), var_90, var_94)
  loc_13DC4FF:           var_100 = var_90.Text
  loc_13DC51E:           Set var_98 = Me.txt
  loc_13DC524:           Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_F8)
  loc_13DC52C:           (CDbl(Val(var_94)) < CDbl(&H18)) = 1
  loc_13DC551:           If (var_86 And (CDbl(Val(var_F8)) > CDbl(&H3B))) Then
  loc_13DC561:             Set var_8C = Me.txt
  loc_13DC567:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DC56F:             var_90.Text = "59"
  loc_13DC57E:           Else
  loc_13DC58C:             Set var_8C = Me.txt
  loc_13DC592:             Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_13DC5B6:             If (CDbl(Val(var_90.Text)) = CDbl(&H18)) Then
  loc_13DC5C6:               Set var_8C = Me.txt
  loc_13DC5CC:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DC5D4:               var_90.Text = "00"
  loc_13DC5E0:             End If
  loc_13DC5E0:           End If
  loc_13DC5E3:         Else
  loc_13DC5EB:           If (var_86 = CInt(6)) Then
  loc_13DC5FB:             Set var_8C = Me.txt
  loc_13DC601:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DC620:             If (var_90.Text = vbNullString) Then
  loc_13DC65C:               Set var_8C = Me.txt
  loc_13DC662:               Call 0.Method_Txt_Validate0 (Cancel, var_90, CStr(Format(Time, "NN")))
  loc_13DC66A:               var_90.Text = 1
  loc_13DC682:             End If
  loc_13DC68F:             Set var_8C = Me.txt
  loc_13DC695:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DC69D:             var_94 = var_90.Text
  loc_13DC6D4:             var_F8 = CStr(Format(CVar(Val(var_94)), "00"))
  loc_13DC6E2:             Set var_98 = Me.txt
  loc_13DC6E8:             Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_F8, 1)
  loc_13DC71E:             Set var_8C = Me.txt
  loc_13DC724:             Call 0.Method_Txt_Validate0 (CInt(5), var_90, var_94)
  loc_13DC72C:             var_100 = var_90.Text
  loc_13DC74B:             Set var_98 = Me.txt
  loc_13DC751:             Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_F8)
  loc_13DC759:             (CDbl(Val(var_94)) < CDbl(&H18)) = 1
  loc_13DC77E:             If (1 And (CDbl(Val(var_F8)) > CDbl(&H3B))) Then
  loc_13DC78E:               Set var_8C = Me.txt
  loc_13DC794:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DC79C:               var_90.Text = "59"
  loc_13DC7AB:             Else
  loc_13DC7B9:               Set var_8C = Me.txt
  loc_13DC7BF:               Call 0.Method_Txt_Validate0 (CInt(5), var_90)
  loc_13DC7E3:               If (CDbl(Val(var_90.Text)) = CDbl(&H18)) Then
  loc_13DC7F3:                 Set var_8C = Me.txt
  loc_13DC7F9:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13DC801:                 var_90.Text = "00"
  loc_13DC80D:               End If
  loc_13DC80D:             End If
  loc_13DC80D:           End If
  loc_13DC80D:         End If
  loc_13DC80D:       End If
  loc_13DC80D:     End If
  loc_13DC80D:   End If
  loc_13DC80D: End If
  loc_13DC80D: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E2FE94
  'Data Table: 4631E0
  loc_E2FE88: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E2FE8B:   Call DGHelp_UnknownEvent_9()
  loc_E2FE90: End If
  loc_E2FE90: Exit Sub
  loc_E2FE91: var_92 = 
End Sub

Public Sub SEARCHBACK(MyValue) 'EBF804
  'Data Table: 4631E0
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBF77A: On Error Goto loc_EBF7BF
  loc_EBF783: Me.MoveFirst
  loc_EBF79D: var_8C = "Code='" & MyValue
  loc_EBF7AD: Me.Find var_8C & "'", 0, 1
  loc_EBF7B9: Call Proc_215_27_1375A94(var_A0)
  loc_EBF7BE: Exit Sub
  loc_EBF7BF: ' Referenced from: EBF77A
  loc_EBF7C7: Set var_A4 = Err()
  loc_EBF7CD: Call 0.Method_arg_2C (var_8C)
  loc_EBF7EE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBF801: Exit Sub
  loc_EBF802: Exit Sub
End Sub

Public Sub Proc_215_25_E87B18(arg_C) 'E87B18
  'Data Table: 4631E0
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_E87AB2: Set var_8C = Me.txt
  loc_E87AB8: Call 0.Method_Proc_215_25_E87B18C (var_8E, var_86)
  loc_E87AC8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E87ADE:   Set var_8C = Me.txt
  loc_E87AE4:   Call 0.Method_Proc_215_25_E87B180 (CInt(var_86), var_98)
  loc_E87AEC:   var_98.Enabled = arg_C
  loc_E87AFB: Next var_92 'Byte
  loc_E87B0E: Me.framWeek.Enabled = arg_C
  loc_E87B16: Exit Sub
End Sub

Public Sub Proc_215_26_EF2E58
  'Data Table: 4631E0
  Dim var_98 As Variant
  loc_EF2D86: global_60 = vbNullString
  loc_EF2D98: Set var_8C = Me.txt
  loc_EF2D9E: Call 0.Method_Proc_215_26_EF2E58C (var_8E, var_86)
  loc_EF2DAE: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EF2DC4:   Set var_8C = Me.txt
  loc_EF2DCA:   Call 0.Method_Proc_215_26_EF2E580 (CInt(var_86), var_98)
  loc_EF2DD2:   var_98.Text = vbNullString
  loc_EF2DEE:   Set var_8C = Me.txt
  loc_EF2DF4:   Call 0.Method_Proc_215_26_EF2E580 (CInt(var_86), var_98)
  loc_EF2DFC:   var_98.Tag = vbNullString
  loc_EF2E0B: Next var_92 'Byte
  loc_EF2E1C: For var_9C = CByte(1) To CByte(7): var_86 = var_9C 'Byte
  loc_EF2E31:   Set var_8C = Me.chkday
  loc_EF2E37:   Call 0.Method_Proc_215_26_EF2E580 (CInt(var_86), var_98)
  loc_EF2E3F:   var_98.Value = 0
  loc_EF2E4E: Next var_9C 'Byte
  loc_EF2E54: Exit Sub
End Sub

Public Sub Proc_215_27_1375A94
  'Data Table: 4631E0
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim var_F8 As Variant
  Dim var_FC As String
  Dim unk_4631F6 As Connection15
  Dim var_128 As TextBox
  Dim var_158 As Double
  Dim var_90 As Recordset15
  Dim var_120 As Fields15
  Dim var_1E4 As Variant
  loc_1375248: On Error Goto loc_1375A51
  loc_13752A1: unk_4631F6.Execute CStr("Select U_Name,U_AE,U_EntDt From schememast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_11C, -1
  loc_13752AC: Set var_90 = var_120
  loc_13752CC: Proc_183_45_E5C118(global_52)
  loc_13752E8: If (Me.RecordCount <= 0) Then
  loc_13752EB:   Call Proc_215_26_EF2E58(var_120)
  loc_13752F3: Else
  loc_137532F:   Set var_120 = Me.txt
  loc_1375335:   Call 0.Method_Proc_215_27_1375A940 (CInt(0), var_128)
  loc_137533D:   var_128.Text = CStr(Me.Fields.Item("SchemeName").Value)
  loc_137538F:   Set var_120 = Me.txt
  loc_1375395:   Call 0.Method_Proc_215_27_1375A940 (CInt(0), var_128)
  loc_137539D:   var_128.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1375408:   Set var_120 = Me.txt
  loc_137540E:   Call 0.Method_Proc_215_27_1375A940 (CInt(1), var_128, CStr(Format(CVar(Me.Fields.Item("StartDate")), "DD/MMM/YYYY")))
  loc_1375416:   var_128.Text = 1
  loc_1375485:   Set var_120 = Me.txt
  loc_137548B:   Call 0.Method_Proc_215_27_1375A940 (CInt(2), var_128, CStr(Format(CVar(Me.Fields.Item("EndDate")), "DD/MMM/YYYY")))
  loc_1375493:   var_128.Text = 1
  loc_13754F2:   Set var_120 = Me.txt
  loc_13754F8:   Call 0.Method_Proc_215_27_1375A940 (CInt(3), var_128, CStr(Left(CVar(Me.Fields.Item("FromTime")), 2)))
  loc_1375500:   var_128.Text = 1
  loc_137555D:   Set var_120 = Me.txt
  loc_1375563:   Call 0.Method_Proc_215_27_1375A940 (CInt(4), var_128)
  loc_137556B:   var_128.Text = CStr(Right(CVar(Me.Fields.Item("FromTime")), 2))
  loc_13755C8:   Set var_120 = Me.txt
  loc_13755CE:   Call 0.Method_Proc_215_27_1375A940 (CInt(5), var_128)
  loc_13755D6:   var_128.Text = CStr(Left(CVar(Me.Fields.Item("ToTime")), 2))
  loc_1375633:   Set var_120 = Me.txt
  loc_1375639:   Call 0.Method_Proc_215_27_1375A940 (CInt(6), var_128)
  loc_1375641:   var_128.Text = CStr(Right(CVar(Me.Fields.Item("ToTime")), 2))
  loc_13756C7:   Set var_120 = Me.txt
  loc_13756CD:   Call 0.Method_Proc_215_27_1375A940 (CInt(7), var_128)
  loc_13756D5:   var_128.Text = CStr(IIf((Me.Fields.Item("Active").Value = "Y"), "Yes", "No"))
  loc_137570F:   var_A8 = Me.Fields.Item("DAYcode")
  loc_1375727:   var_8C = CStr(Str(CVar(var_A8)))
  loc_137573F:   For var_14C = CByte(1) To CByte(7):   var_86 = var_14C 'Byte
  loc_1375754:     Set var_94 = Me.chkday
  loc_137575A:     Call 0.Method_Proc_215_27_1375A940 (CInt(var_86), var_A8, 0)
  loc_1375762:     var_A8.Value = CByte(1)
  loc_1375771:   Next var_14C 'Byte
  loc_137579A:   For var_150 = CByte(1) To CByte(Len(Trim(var_8C))):   var_86 = var_150 'Byte
  loc_13757D1:     var_158 = Val(CStr(Mid(Trim(var_8C), CLng(var_86), 1)))
  loc_13757E1:     Set var_94 = Me.chkday
  loc_13757E7:     Call 0.Method_Proc_215_27_1375A940 (CInt(var_158), var_A8, 1)
  loc_13757EF:     var_A8.Value = var_158
  loc_137580A:   Next var_150 'Byte
  loc_1375810: End If
  loc_13758B3: var_19C = IIf((Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_13758F8: Me.LblUser.Caption = CStr(var_19C & CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_Name")))))
  loc_137598B: var_11C = "entdt : "
  loc_1375996: var_F8 = "Last Update : "
  loc_13759C4: var_FC = Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_AE")))
  loc_1375A06: var_1E4 = IIf((var_FC = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_AE"))) = "E"), var_F8, var_11C)) & CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_EntDt")))) 
  loc_1375A18: Me.LblLDt.Caption = CStr(var_1E4)
  loc_1375A50: Exit Sub
  loc_1375A51: ' Referenced from: 1375248
  loc_1375A59: Set var_94 = Err()
  loc_1375A5F: Call 0.Method_arg_2C (var_FC)
  loc_1375A80: MsgBox(CVar(var_FC), &H40, "Information", var_F8, var_11C)
  loc_1375A93: Exit Sub
End Sub

Public Sub Proc_215_28_E428E8
  'Data Table: 4631E0
  loc_E428C7: Me.DGHelp.Visible = False
  loc_E428DE: Me.FGPoint.Visible = False
  loc_E428E6: Exit Sub
End Sub

Public Sub Proc_215_29_1084644
  'Data Table: 4631E0
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4631F6 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_10843D7: If (Me.RecordCount = 0) Then
  loc_10843DA:   Proc_215_29_1084644 = 
  loc_10843E0: End If
  loc_10843E4: Set var_90 = Me.TopCtrl1
  loc_10843EA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1084403: If (CStr() = "Add") Then
  loc_1084441:   Set var_90 = Me.txt
  loc_1084447:   Call 0.Method_Proc_215_29_10846440 (CInt(0), var_A8, var_AC, "Select Count(*) From SchemeMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Name='", var_A0, -1)
  loc_1084468:   unk_4631F6.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1084478:    = var_D0.Item()
  loc_1084480:    = var_E4.Value
  loc_10844B1:   If (var_A8.Text.Fields > 0) Then
  loc_10844CF:     var_A0 = "Duplicate Name"
  loc_10844D5:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_10844F0:     Set var_90 = Me.txt
  loc_10844F6:     Call 0.Method_Proc_215_29_10846440 (CInt(0))
  loc_10844FE:     var_A8.SetFocus
  loc_108450F:     Proc_215_29_1084644 = &HFF
  loc_1084515:   End If
  loc_1084518: Else
  loc_1084553:   Set var_90 = Me.txt
  loc_1084559:   Call 0.Method_Proc_215_29_10846440 (CInt(0), var_A8, var_AC, "Select Count(*) From SchemeMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Code='", var_A0, -1)
  loc_108458B:   unk_4631F6.Execute var_D0 & var_AC & "' And Code<>'" & global_60 & "'", 0, var_E4
  loc_108459B:    = var_D0.Item(var_A8)
  loc_10845A3:    = var_E4.Value
  loc_10845D8:   If (var_A8.Tag.Fields > 0) Then
  loc_10845FC:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1084617:     Set var_90 = Me.txt
  loc_108461D:     Call 0.Method_Proc_215_29_10846440 (CInt(0))
  loc_1084625:     var_A8.SetFocus
  loc_1084636:     Proc_215_29_1084644 = &HFF
  loc_108463C:   End If
  loc_108463C: End If
  loc_108463C: Proc_215_29_1084644 = var_A8
End Sub

Public Sub Proc_215_30_E8CE94(arg_C) 'E8CE94
  'Data Table: 4631E0
  Dim var_10C As TextBox
  loc_E8CE63: If (MsgBox("Save Data ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8CE66:   Call TopCtrl1_UnknownEvent_16()
  loc_E8CE6E: Else
  loc_E8CE78:   Set var_108 = Me.txt
  loc_E8CE7E:   Call 0.Method_Proc_215_30_E8CE940 (arg_C)
  loc_E8CE86:   var_10C.SetFocus
  loc_E8CE92: End If
  loc_E8CE92: Exit Sub
End Sub

Public Sub Proc_215_31_E71704
  'Data Table: 4631E0
  Dim var_94 As CheckBox
  loc_E716AF: For var_8C = 1 To 7: var_88 = var_8C 'Integer
  loc_E716C2:   Set var_90 = Me.chkday
  loc_E716C8:   Call 0.Method_Proc_215_31_E717040 (var_88, var_94)
  loc_E716E2:   If (var_94.Value = 1) Then
  loc_E716EA:     Proc_215_31_E71704 = &HFF
  loc_E716F0:   End If
  loc_E716F3: Next var_8C 'Integer
  loc_E716FD: Proc_215_31_E71704 = 0
End Sub
