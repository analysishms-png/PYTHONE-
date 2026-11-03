VERSION 5.00
Begin VB.Form frmPrintModule
  Caption = "Printing Parameters"
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
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 7605
  ClientHeight = 3045
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7605
    Height = 450
    TabIndex = 11
  End
  Begin MSFlexGrid FGPoint
    Left = 8070
    Top = 1695
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 9
  End
  Begin DataGrid DGRest
    Left = 8985
    Top = 2160
    Width = 4230
    Height = 1950
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin DataGrid DGHelp
    Left = 8145
    Top = 1215
    Width = 6720
    Height = 1590
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4005
    Top = 3105
    Width = 4950
    Height = 285
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4005
    Top = 2790
    Width = 1035
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 10
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
    Left = 4005
    Top = 3420
    Width = 4965
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 10
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
    Caption = "(F)OM / (P)OS"
    Index = 16
    ForeColor = &HC00000&
    Left = 5055
    Top = 2805
    Width = 1275
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
    Caption = "Module Description"
    Index = 1
    ForeColor = &HC00000&
    Left = 1935
    Top = 3450
    Width = 1830
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
    Caption = "Department Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1935
    Top = 3120
    Width = 1725
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
    Caption = "Module Type"
    Index = 2
    ForeColor = &HC00000&
    Left = 1935
    Top = 2775
    Width = 1230
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

Attribute VB_Name = "frmPrintModule"


Private Sub Txt_GotFocus(Index As Integer) '11CA8A0
  'Data Table: 44D8A4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_A0 As String
  loc_11CA44A: Set var_88 = Me.Txt
  loc_11CA450: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11CA45E: Proc_6_74_E226B0(var_8C)
  loc_11CA46A: Call Proc_99_33_EB9CA8(var_8C)
  loc_11CA472: var_92 = Index
  loc_11CA47D: If (var_92 = CInt(0)) Then
  loc_11CA497:   If (Me.RecordCount > 0) Then
  loc_11CA4A5:     Set var_8C = Me.FGPoint
  loc_11CA4BD:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_11CA4CB:   End If
  loc_11CA519:   Set var_88 = Me.Txt
  loc_11CA51F:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11CA527:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_11CA53F:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_11CA54F:     Set var_88 = Me.Txt
  loc_11CA555:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11CA55D:     var_8C.Tag = vbNullString
  loc_11CA569:     Exit Sub
  loc_11CA56A:   End If
  loc_11CA577:   Set var_88 = Me.Txt
  loc_11CA57D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11CA585:   var_A0 = var_8C.Text
  loc_11CA597:   var_B0 = "Name"
  loc_11CA5D2:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_11CA5DB:     Me.MoveFirst
  loc_11CA5FE:     Set var_88 = Me.Txt
  loc_11CA604:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_11CA60C:     0 = var_8C.Text
  loc_11CA625:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_11CA63A:   End If
  loc_11CA63D: Else
  loc_11CA645:   If (var_92 = CInt(1)) Then
  loc_11CA653:     Set var_88 = Me.Txt
  loc_11CA659:     Call 0.Method_Txt_GotFocus0 (CInt(2))
  loc_11CA682:     If (Trim(CVar(var_8C)) = "FOM") Then
  loc_11CA6A4:       Me.Filter = CVar("Code='" & MemVar_1F92078 & "FOM" & "'")
  loc_11CA6B6:     Else
  loc_11CA6BD:       var_A0 = "Code<>'" & MemVar_1F92078
  loc_11CA6D5:       Me.Filter = CVar(var_A0 & "FOM" & "'")
  loc_11CA6E4:     End If
  loc_11CA6FB:     If (Me.RecordCount > 0) Then
  loc_11CA709:       Set var_8C = Me.FGPoint
  loc_11CA721:       Proc_6_137_1193554(Me.DGRest, global_68, Index)
  loc_11CA72F:     End If
  loc_11CA77D:     Set var_88 = Me.Txt
  loc_11CA783:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11CA78B:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_11CA7A3:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_11CA7B3:       Set var_88 = Me.Txt
  loc_11CA7B9:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11CA7C1:       var_8C.Tag = vbNullString
  loc_11CA7CD:       Exit Sub
  loc_11CA7CE:     End If
  loc_11CA7DB:     Set var_88 = Me.Txt
  loc_11CA7E1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11CA7E9:     var_A0 = var_8C.Text
  loc_11CA7FB:     var_B0 = "Name"
  loc_11CA836:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_11CA83F:       Me.MoveFirst
  loc_11CA862:       Set var_88 = Me.Txt
  loc_11CA868:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_11CA870:       0 = var_8C.Text
  loc_11CA889:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_11CA89E:     End If
  loc_11CA89E:   End If
  loc_11CA89E: End If
  loc_11CA89E: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10C6B34
  'Data Table: 44D8A4
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_10C6856: If (CLng(Shift) = &H1B) Then
  loc_10C6859:   Call Proc_99_33_EB9CA8()
  loc_10C685E:   Exit Sub
  loc_10C685F: End If
  loc_10C6862: var_88 = KeyCode
  loc_10C686D: If (var_88 = CInt(0)) Then
  loc_10C688D:   Set var_9C = Me.FGPoint
  loc_10C6898:   Set var_98 = Nothing
  loc_10C68C6:   Proc_6_69_134A198(Me.DGHelp, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_10C6935:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10C695B:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 1)
  loc_10C6969:   End If
  loc_10C696C: Else
  loc_10C6974:   If (var_88 = CInt(1)) Then
  loc_10C6994:     Set var_9C = Me.FGPoint
  loc_10C699F:     Set var_98 = Nothing
  loc_10C69CD:     Proc_6_69_134A198(Me.DGRest, Me.Txt, KeyCode, global_68, Shift, 0, 1)
  loc_10C6A3C:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10C6A43:       Set var_98 = Me.DGRest
  loc_10C6A62:       Proc_6_138_106D6F8(var_98, global_68, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_10C6A70:     End If
  loc_10C6A70:   End If
  loc_10C6A70: End If
  loc_10C6AAB: If ((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGRest.Visible) = 0)) Then
  loc_10C6AC1:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(1))) Then
  loc_10C6ACA:     Proc_6_76_E52838(Shift, arg_14, 0, var_98)
  loc_10C6ACF:   End If
  loc_10C6AED:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_10C6AF6:     Proc_6_75_E527CC(Shift, arg_14, var_9C)
  loc_10C6AFB:   End If
  loc_10C6B19:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_10C6B24:     Call Txt_Validate(KeyCode)
  loc_10C6B2C:     Call Proc_99_34_E906F8(KeyCode, 0)
  loc_10C6B31:   End If
  loc_10C6B31: End If
  loc_10C6B31: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10176DC
  'Data Table: 44D8A4
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_10174C6: Proc_6_133_E7EF78(var_94)
  loc_10174DB: If (CInt(var_94) = &HD) Then
  loc_10174E0:   arg_10 = 0
  loc_10174E3: End If
  loc_10174E6: Proc_6_58_E054C0(arg_10, arg_10)
  loc_10174EE: var_96 = KeyAscii
  loc_10174F9: If (var_96 = CInt(1)) Then
  loc_1017518:   If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_1017545:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_1017577:     Proc_6_138_106D6F8(Me.DGRest, global_68, KeyAscii, Me.FGPoint)
  loc_1017585:   End If
  loc_1017588: Else
  loc_1017590:   If (var_96 = CInt(0)) Then
  loc_10175AF:     If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_10175DC:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_56, arg_10, "Name")
  loc_10175F6:       Set var_A8 = Me.FGPoint
  loc_101760E:       Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyAscii, var_A8, 0)
  loc_101761C:     End If
  loc_101761F:   Else
  loc_1017627:     If (var_96 = CInt(2)) Then
  loc_1017653:       If (Ucase(Chr(CLng(arg_10))) = "F") Then
  loc_1017663:         Set var_9C = Me.Txt
  loc_1017669:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "FOM", 0)
  loc_1017671:         var_A8.Text = var_96
  loc_1017680:       Else
  loc_10176A9:         If (Ucase(Chr(CLng(arg_10))) = "P") Then
  loc_10176B9:           Set var_9C = Me.Txt
  loc_10176BF:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "POS")
  loc_10176C7:           var_A8.Text = arg_10
  loc_10176D3:         End If
  loc_10176D3:       End If
  loc_10176D5:       arg_10 = 0
  loc_10176D8:     End If
  loc_10176D8:   End If
  loc_10176D8: End If
  loc_10176D8: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E8EC
  'Data Table: 44D8A4
  loc_E4E8CA: Set var_88 = Me.Txt
  loc_E4E8D0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E8DE: Proc_6_73_E22704(var_8C)
  loc_E4E8EA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1225868
  'Data Table: 44D8A4
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim var_E4 As Variant
  Dim unk_44D8C0 As Connection15
  loc_1225377: var_86 = Cancel
  loc_1225382: If (var_86 = CInt(0)) Then
  loc_1225388:   Call Proc_99_32_10D2274(var_88)
  loc_1225393:   If (var_88 = &HFF) Then
  loc_1225398:     arg_10 = &HFF
  loc_122539B:     Exit Sub
  loc_122539C:   End If
  loc_12253EA:   Set var_94 = Me.Txt
  loc_12253F0:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_12253F8:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1225410:   If (arg_10 Or (var_9C = vbNullString)) Then
  loc_1225420:     Set var_94 = Me.Txt
  loc_1225426:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_122542E:     var_98.Tag = vbNullString
  loc_122543A:     Exit Sub
  loc_122543B:   End If
  loc_1225477:   Set var_B0 = Me.Txt
  loc_122547D:   Call 0.Method_Txt_Validate0 (CInt(0), var_B4)
  loc_1225485:   var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12254B8:   var_98 = Me.Fields.Item("Code")
  loc_12254C9:   var_9C = CStr(var_98.Value)
  loc_12254D7:   Set var_B0 = Me.Txt
  loc_12254DD:   Call 0.Method_Txt_Validate0 (CInt(0), var_B4)
  loc_12254E5:   var_B4.Tag = var_9C
  loc_12254FE: Else
  loc_1225506:   If (var_86 = CInt(1)) Then
  loc_1225557:     Set var_94 = Me.Txt
  loc_122555D:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1225565:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_122557D:     If (var_86 Or (var_9C = vbNullString)) Then
  loc_122558D:       Set var_94 = Me.Txt
  loc_1225593:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_122559B:       var_98.Tag = vbNullString
  loc_12255A7:       Exit Sub
  loc_12255A8:     End If
  loc_12255E3:     Set var_B0 = Me.Txt
  loc_12255E9:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_12255F1:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1225642:     Set var_B0 = Me.Txt
  loc_1225648:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1225650:     var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1225683:     var_98 = Me.Fields.Item("ShortName")
  loc_122569A:     global_120 = CStr(var_98.Value)
  loc_12256AE:   Else
  loc_12256B6:     If (var_86 = CInt(2)) Then
  loc_12256C3:       Set var_94 = Me.Txt
  loc_12256C9:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_1225704:       If (Ucase(Left(CVar(var_98), 1)) = "F") Then
  loc_1225714:         Set var_94 = Me.Txt
  loc_122571A:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1225722:         var_98.Text = "FOM"
  loc_1225731:       Else
  loc_122573B:         Set var_94 = Me.Txt
  loc_1225741:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_122577C:         If (Ucase(Left(CVar(var_98), 1)) = "P") Then
  loc_122578C:           Set var_94 = Me.Txt
  loc_1225792:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_122579A:           var_98.Text = "POS"
  loc_12257A6:         End If
  loc_12257A6:       End If
  loc_12257C3:       Set var_94 = Me.Txt
  loc_12257C9:       Call 0.Method_Txt_Validate0 (CInt(2), var_98, "SELECT ModuleName as Code, ModuleDescription as Name FROM PrintFormats WHERE MOduleName='", var_164)
  loc_12257E0:       var_E4 = -1 & Trim(CVar(var_98)) 
  loc_122580A:       unk_44D8C0.Execute CStr(Ucase(Left(CVar(var_98), 1)) & "' AND SITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_B0, var_98
  loc_122581B:       Set global_56 = var_B0
  loc_1225845:       CVarUnk
  loc_122584A:       VerifyVarObj
  loc_1225850:       Set var_94 = Me.DGHelp
  loc_1225856:       LateIdStAd
  loc_1225864:     End If
  loc_1225864:   End If
  loc_1225864: End If
  loc_1225864: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E7E25C
  'Data Table: 44D8A4
  Dim var_94 As TextBox
  loc_E7E1F8: On Error Goto loc_E7E254
  loc_E7E21E: Call Proc_99_29_E7C6E4(Proc_5_1_100CB50("ADD", Me))
  loc_E7E229: Call Proc_99_30_EB29C8(global_52)
  loc_E7E239: Set var_8C = Me.Txt
  loc_E7E23F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2))
  loc_E7E247: var_94.SetFocus
  loc_E7E253: Exit Sub
  loc_E7E254: ' Referenced from: E7E1F8
  loc_E7E254: Proc_6_60_E62BC4(var_94)
  loc_E7E259: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBF56C
  'Data Table: 44D8A4
  loc_EBF4D4: On Error Goto loc_EBF564
  loc_EBF50E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBF51D:   Set var_110 = Me
  loc_EBF534:   Call Proc_99_29_E7C6E4(Proc_5_1_100CB50("INI", var_110))
  loc_EBF53F:   Call Proc_99_33_EB9CA8(global_52)
  loc_EBF544:   Call Proc_99_31_1046060()
  loc_EBF54C: Else
  loc_EBF552:   Call 0.Method_arg_1E8 (var_110)
  loc_EBF55A:   Call var_110.SetFocus
  loc_EBF563: End If
  loc_EBF563: Exit Sub
  loc_EBF564: ' Referenced from: EBF4D4
  loc_EBF564: Proc_6_60_E62BC4()
  loc_EBF569: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1123EB4
  'Data Table: 44D8A4
  Dim var_9C As String
  Dim var_A4 As Variant
  Dim var_B0 As String
  Dim unk_44D8C0 As Connection15
  Dim var_98 As Recordset15
  Dim var_A0 As Fields15
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_A8 As String
  Dim Me As Recordset15
  Dim var_D4 As Variant
  loc_1123B6C: On Error Goto loc_1123E66
  loc_1123B9B: Set var_A0 = Me.Txt
  loc_1123BA1: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_A4, var_A8, "Select Code From PrintMast Where SITE_CODE='" & MemVar_1F92078 & "' AND Code='")
  loc_1123BA9: var_D4 = var_A4.Tag
  loc_1123BB2: var_B0 = -1 & var_A8
  loc_1123BC2: unk_44D8C0.Execute var_B0 & "'", var_D8, 
  loc_1123BCD: Set var_98 = var_D8
  loc_1123BEF: var_DC = var_98.RecordCount
  loc_1123BFD: If (var_DC > 0) Then
  loc_1123C48:   var_FC = CVar("Select Count(*) from PrinterSetup Where SITE_CODE='" & MemVar_1F92078 & "' AND ModCode='") & var_98.Fields.Item(0).Value 
  loc_1123C51:   var_11C = var_FC & "'" 
  loc_1123C5F:   unk_44D8C0.Execute CStr(var_11C), var_13C, -1
  loc_1123CC6:   If (var_D8.Fields.Item(0).Value > 0) Then
  loc_1123CEA:     MsgBox("Related Record Exist, Entry Can't Be Deleted", &H40, "Validation Check", var_FC, var_11C)
  loc_1123CFA:     Exit Sub
  loc_1123CFB:   End If
  loc_1123CFB: End If
  loc_1123D32: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_FC, var_11C) = 6) Then
  loc_1123D3E:   unk_44D8C0.BeginTrans var_DC
  loc_1123D54:   var_94 = Me.Bookmark 'Variant
  loc_1123DA0:   var_FC = "Delete From PrintMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_1123DA4:   var_9C = CStr(var_FC)
  loc_1123DAE:   unk_44D8C0.Execute var_9C, var_11C, -1
  loc_1123DD0:   unk_44D8C0.CommitTrans
  loc_1123DD5:   Call Proc_99_28_11E1C50(var_D8)
  loc_1123DE5:   Me.Requery -1
  loc_1123E05:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1123E12:     Me.Bookmark = var_94
  loc_1123E1A:   Else
  loc_1123E2E:     If (Me.EOF = 0) Then
  loc_1123E37:       Me.MoveLast
  loc_1123E3C:     End If
  loc_1123E3C:   End If
  loc_1123E3C:   Call Proc_99_31_1046060(var_D8)
  loc_1123E5D:   Proc_5_0_110649C(&HFF, Me)
  loc_1123E65: End If
  loc_1123E65: Exit Sub
  loc_1123E66: ' Referenced from: 1123B6C
  loc_1123E6C: unk_44D8C0.RollbackTrans
  loc_1123E79: Set var_A0 = Err()
  loc_1123E7F: Call 0.Method_arg_2C (var_9C, global_52)
  loc_1123EA0: MsgBox(CVar(var_9C), &H30, " Deletion Error ", var_FC, var_11C)
  loc_1123EB3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EDE60C
  'Data Table: 44D8A4
  Dim var_94 As TextBox
  loc_EDE550: On Error Goto loc_EDE603
  loc_EDE576: Call Proc_99_29_E7C6E4(Proc_5_1_100CB50("EDIT", Me))
  loc_EDE58F: Set var_8C = Me.Txt
  loc_EDE595: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EDE5A8: global_96 = var_94.Text
  loc_EDE5C3: Set var_8C = Me.Txt
  loc_EDE5C9: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_EDE5D1: var_94.Enabled = False
  loc_EDE5E8: Set var_8C = Me.Txt
  loc_EDE5EE: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EDE5F6: var_94.SetFocus
  loc_EDE602: Exit Sub
  loc_EDE603: ' Referenced from: EDE550
  loc_EDE603: Proc_6_60_E62BC4(global_52)
  loc_EDE608: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16C2C
  'Data Table: 44D8A4
  loc_E16C21: Me.Global.Unload Me
  loc_E16C29: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F23868
  'Data Table: 44D8A4
  Dim Me As Recordset15
  Dim var_10C As Variant
  loc_F23768: On Error Goto loc_F23803
  loc_F23774: var_88 = Me.RecordCount
  loc_F23782: If (var_88 <= 0) Then
  loc_F237A6:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F237B6:   Exit Sub
  loc_F237B7: End If
  loc_F237BD: MemVar_1F92120 = Me
  loc_F237D1: FAFind.FindRecSet = global_52
  loc_F237DC: var_110 = "700,4200,800,0,0,0,2000"
  loc_F237E2: Proc_6_126_F1BCC0(var_110)
  loc_F237FD: Call 0.Method_arg_2B0 (1)
  loc_F23802: Exit Sub
  loc_F23803: ' Referenced from: F23768
  loc_F2380B: Set var_10C = Err()
  loc_F23811: Call 0.Method_arg_1C (var_88)
  loc_F23822: If (var_88 <> 0) Then
  loc_F2382D:   Set var_10C = Err()
  loc_F23833:   Call 0.Method_arg_2C (var_110)
  loc_F23854:   MsgBox(CVar(var_110), &H40, "Validation", var_E8, var_108)
  loc_F23867: End If
  loc_F23867: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E31518
  'Data Table: 44D8A4
  loc_E31508: Proc_5_0_110649C(&HFF, Me)
  loc_E31510: Call Proc_99_31_1046060(global_52)
  loc_E31515: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E31278
  'Data Table: 44D8A4
  loc_E31268: Proc_5_0_110649C(&HFF, Me)
  loc_E31270: Call Proc_99_31_1046060(global_52)
  loc_E31275: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E312D8
  'Data Table: 44D8A4
  loc_E312C8: Proc_5_0_110649C(&HFF, Me)
  loc_E312D0: Call Proc_99_31_1046060(global_52)
  loc_E312D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E31338
  'Data Table: 44D8A4
  loc_E31328: Proc_5_0_110649C(&HFF, Me)
  loc_E31330: Call Proc_99_31_1046060(global_52)
  loc_E31335: Exit Sub
  loc_E31336: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E227AC
  'Data Table: 44D8A4
  Dim Me As Recordset15
  loc_E22793: Me.Requery -1
  loc_E227A3: Me.Requery -1
  loc_E227A8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '126B3E8
  'Data Table: 44D8A4
  Dim var_AC As String
  Dim var_E0 As Variant
  Dim unk_44D8C0 As Connection15
  Dim var_A0 As Variant
  Dim var_A4 As Variant
  Dim var_A8 As Field20
  Dim var_D0 As String
  Dim Me As Recordset15
  Dim var_F8 As String
  Dim var_10C As Variant
  Dim var_C0 As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_130 As TextBox
  Dim var_154 As Variant
  Dim var_1BC As Variant
  Dim var_18C As Variant
  Dim var_FC As String
  loc_126AEB4: On Error Goto loc_126B393
  loc_126AEBB: var_86 = CByte(0) 'Byte
  loc_126AECA: Set var_A0 = Me.Txt
  loc_126AED0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_126AEF9: If (Proc_6_27_EA565C(var_A4, "Name") = 0) Then
  loc_126AF03:   Call Txt_GotFocus(CInt(0))
  loc_126AF08:   Exit Sub
  loc_126AF09: End If
  loc_126AF14: Set var_A0 = Me.Txt
  loc_126AF1A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_126AF43: If (Proc_6_27_EA565C(var_A4, "Outlet Name") = 0) Then
  loc_126AF4D:   Call Txt_GotFocus(CInt(1))
  loc_126AF52:   Exit Sub
  loc_126AF53: End If
  loc_126AF56: Call Proc_99_32_10D2274(var_AE)
  loc_126AF61: If (var_AE = &HFF) Then
  loc_126AF64:   Exit Sub
  loc_126AF65: End If
  loc_126AF69: Set var_A0 = Me.TopCtrl1
  loc_126AF6F: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A4)
  loc_126AF88: If (CStr() = "Add") Then
  loc_126AF91:   var_E0 = 0
  loc_126AFB0:   unk_44D8C0.Execute "Select iif(IsNull(Max(val(Code))),1,Max(val(Code))+1)AS MyCode From Printmast", var_C0, -1
  loc_126AFB8:   var_A0 = var_A0.Fields
  loc_126AFC0:   var_E0 = var_A4.Item(var_A4)
  loc_126AFC8:   var_A8 = var_A8.Value
  loc_126AFD7:   global_92 = CStr(var_F0)
  loc_126AFF1: Else
  loc_126B00E:   var_A4 = Me.Fields.Item("Code")
  loc_126B025:   global_92 = CStr(var_A4.Value)
  loc_126B036: End If
  loc_126B03F: unk_44D8C0.BeginTrans var_F4
  loc_126B048: var_86 = CByte(1) 'Byte
  loc_126B050: Set var_A0 = Me.TopCtrl1
  loc_126B056: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_F0)
  loc_126B06F: If (CStr() = "Add") Then
  loc_126B086:   var_AC = "Insert Into PrintMast(Code,MOduleDescription,RestCode,ModType,Site_Code,U_EntDt,U_AE)" & " Values('"
  loc_126B0A8:   Set var_A0 = Me.Txt
  loc_126B0AE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_FC, CVar(var_AC & global_92 & "',"))
  loc_126B0B6:   var_270 = var_A4.Text
  loc_126B0C4:   Proc_6_17_EAA2B0(var_F0, CVar(var_FC))
  loc_126B0CC:   var_11C = -1 & var_F0 
  loc_126B0D5:   var_12C = var_11C & ",'" 
  loc_126B0E7:   Set var_A8 = Me.Txt
  loc_126B0ED:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_130, var_134)
  loc_126B0F5:   var_12C = var_130.Tag
  loc_126B100:   var_154 = var_274 & CVar(var_134) 
  loc_126B118:   Set var_168 = Me.Txt
  loc_126B11E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_16C)
  loc_126B12D:   Proc_6_17_EAA2B0(var_18C, CVar(var_16C))
  loc_126B163:   Proc_6_7_F25D88(var_21C, Date)
  loc_126B182:   unk_44D8C0.Execute CStr(var_154 & "'," & var_18C & ",'" & CVar(MemVar_1F92070) & "'," & var_21C & ",'A')"), , 
  loc_126B1CB: Else
  loc_126B1E9:   Set var_A0 = Me.Txt
  loc_126B1EF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4, var_AC, "UPDATE PrintMast SET RestCode='")
  loc_126B1F7:   var_1BC = var_A4.Tag
  loc_126B200:   var_F8 = -1 & var_AC
  loc_126B207:   var_10C = CVar(var_AC & global_92 & "',ModuleDescription=") 'String
  loc_126B215:   Set var_A8 = Me.Txt
  loc_126B21B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_130)
  loc_126B22A:   Proc_6_17_EAA2B0(var_F0, CVar(var_130))
  loc_126B232:   var_11C = var_10C & var_F0 
  loc_126B236:   var_D0 = ",ModType="
  loc_126B24A:   Set var_168 = Me.Txt
  loc_126B250:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_16C)
  loc_126B25F:   Proc_6_17_EAA2B0(var_154, CVar(var_16C))
  loc_126B294:   unk_44D8C0.Execute CStr(var_11C & var_D0 & var_154 & " WHERE Code='" & CVar(global_92) & "'"), var_274, 
  loc_126B2CA: End If
  loc_126B2D0: unk_44D8C0.CommitTrans
  loc_126B2D9: var_86 = CByte(0) 'Byte
  loc_126B2DD: Call Proc_99_28_11E1C50()
  loc_126B2ED: Me.Requery -1
  loc_126B31A: Me.Find "Code='" & global_92 & "'", 0, 1
  loc_126B32A: Set var_A0 = Me.TopCtrl1
  loc_126B330: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D0)
  loc_126B349: If (CStr() = "Add") Then
  loc_126B34C:   Call TopCtrl1_UnknownEvent_A()
  loc_126B351:   Exit Sub
  loc_126B352: End If
  loc_126B367: var_AC = "INI"
  loc_126B375: Call Proc_99_29_E7C6E4(Proc_5_1_100CB50(var_AC, Me))
  loc_126B380: Call Proc_99_33_EB9CA8(global_52)
  loc_126B385: Call Proc_99_31_1046060()
  loc_126B38F: Set var_94 = Nothing
  loc_126B392: Exit Sub
  loc_126B393: ' Referenced from: 126AEB4
  loc_126B39C: If (CInt(var_86) = 1) Then
  loc_126B3A5:   unk_44D8C0.RollbackTrans
  loc_126B3AA: End If
  loc_126B3B2: Set var_A0 = Err()
  loc_126B3B8: Call 0.Method_arg_2C (var_AC)
  loc_126B3D1: MsgBox(CVar(var_AC), &H10, var_F0, var_10C, var_11C)
  loc_126B3E4: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F382E4
  'Data Table: 44D8A4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F381DB: Me.DGRest.Visible = False
  loc_F381FA: If (Me.RecordCount > 0) Then
  loc_F38239:   Set var_B4 = Me.Txt
  loc_F3823F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F38247:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3827A:   var_B0 = Me.Fields.Item("Code")
  loc_F38299:   Set var_B4 = Me.Txt
  loc_F3829F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F382A7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F382BD: End If
  loc_F382C8: Set var_A8 = Me.Txt
  loc_F382CE: Call 0.Method_DGRest_UnknownEvent_90 (CInt(1))
  loc_F382D6: var_B0.SetFocus
  loc_F382E2: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'EA7CA4
  'Data Table: 44D8A4
  Dim var_A8 As Variant
  loc_EA7C24: Set var_88 = Me.DGRest
  loc_EA7C4E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7C56: Set var_BC = Me.DGRest
  loc_EA7C92: Proc_6_138_106D6F8(Me.DGRest, global_68, CInt(1), Me.FGPoint)
  loc_EA7CA0: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E62DD8
  'Data Table: 44D8A4
  loc_E62DA8: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E62DAB:   Call DGRest_UnknownEvent_9()
  loc_E62DB0: End If
  loc_E62DCC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E62DCF:   Call DGHelp_UnknownEvent_9()
  loc_E62DD4: End If
  loc_E62DD4: Exit Sub
End Sub

Private Sub Form_Load() '110330C
  'Data Table: 44D8A4
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim unk_44D8C0 As Connection15
  Dim unk_44D8C8 As Connection15
  loc_1102FE0: On Error Goto loc_11032C8
  loc_1102FEA: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1102FFD: Set var_88 = Me.Txt
  loc_1103003: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_1103022: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_110303E: Set var_B4 = Me.Txt
  loc_1103044: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_110305F: Set var_88 = Me.Txt
  loc_1103065: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_110307D: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_110308C: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_11030A8: Set var_88 = Me.TopCtrl1
  loc_11030AE: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AED*")
  loc_11030BC: Call 0.Method_arg_50 (var_C4)
  loc_11030C4: var_D4 = CVar(var_C4) 'String
  loc_11030CC: Set var_88 = Me.TopCtrl1
  loc_11030D2: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D4)
  loc_11030EB: Set var_88 = Me.Txt
  loc_11030F1: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_1103110: Me.DGRest.Left = CVar(var_8C.Left)
  loc_110312C: Set var_B4 = Me.Txt
  loc_1103132: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_1103153: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_110316B: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_110317A: Me.DGRest.Top = CVar(var_8C.Left)
  loc_11031B0: unk_44D8C0.Execute "SELECT ModuleName as Code, ModuleDescription as Name FROM  PrintFormats WHERE SITE_CODE='" & MemVar_1F92078 & "'", var_D4, -1
  loc_11031DF: CVarUnk
  loc_11031E4: VerifyVarObj
  loc_11031EA: Set var_88 = Me.DGHelp
  loc_11031F0: LateIdStAd
  loc_11031FE: Call Proc_99_28_11E1C50(var_88, Me.Txt)
  loc_110321E: var_D8 = "Select Code,Name,ShortName From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND RestType in ('FOM','Outlet','Room Service') Order by Name"
  loc_1103227: unk_44D8C8.Execute var_D8, var_D4, -1
  loc_1103256: CVarUnk
  loc_110325B: VerifyVarObj
  loc_1103261: Set var_88 = Me.DGRest
  loc_1103267: LateIdStAd
  loc_1103281: Set var_88 = Me
  loc_110328A: var_C4 = "INI"
  loc_1103298: Call Proc_99_29_E7C6E4(Proc_5_1_100CB50(var_C4, var_88, global_52, var_88), var_88)
  loc_11032AC: Call 0.Method_arg_160 (var_88, var_88)
  loc_11032BA: Call 0.Method_arg_164 (var_88)
  loc_11032C2: Call Proc_99_31_1046060(var_88)
  loc_11032C7: Exit Sub
  loc_11032C8: ' Referenced from: 1102FE0
  loc_11032D0: Set var_88 = Err()
  loc_11032D6: Call 0.Method_arg_2C (var_C4)
  loc_11032F7: MsgBox(CVar(var_C4), &H40, "Information", var_FC, var_11C)
  loc_110330A: Exit Sub
  loc_110330B: Exit Sub
End Sub

Private Sub Form_Resize() 'ED4B58
  'Data Table: 44D8A4
  Dim var_8C As Label
  loc_ED4AB6: Call 0.Method_arg_50 (var_88)
  loc_ED4AC8: Me.LblFormCaption.Caption = var_88
  loc_ED4AE1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED4AED: Set var_A0 = Me.TopCtrl1
  loc_ED4AF3: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED4B00: Set var_8C = Me.TopCtrl1
  loc_ED4B06: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED4B20: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED4B3B: Call 0.Method_arg_100 (var_B8)
  loc_ED4B4D: Me.LblFormCaption.Width = var_B8
  loc_ED4B55: Exit Sub
  loc_ED4B56:  = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6B6B8
  'Data Table: 44D8A4
  loc_E6B667: Set global_52 = Nothing
  loc_E6B679: Set global_60 = Nothing
  loc_E6B68B: Set global_64 = Nothing
  loc_E6B69D: Set global_68 = Nothing
  loc_E6B6AF: Set global_56 = Nothing
  loc_E6B6B6: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E89F50
  'Data Table: 44D8A4
  loc_E89EEC: On Error Goto loc_E89F0C
  loc_E89F03: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E89F0B: Exit Sub
  loc_E89F0C: ' Referenced from: E89EEC
  loc_E89F14: Set var_88 = Err()
  loc_E89F1A: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E89F3B: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E89F4E: Exit Sub
  loc_E89F4F: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F390A4
  'Data Table: 44D8A4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F38F9B: Me.DGHelp.Visible = False
  loc_F38FBA: If (Me.RecordCount > 0) Then
  loc_F38FF9:   Set var_B4 = Me.Txt
  loc_F38FFF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F39007:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3903A:   var_B0 = Me.Fields.Item("Code")
  loc_F39059:   Set var_B4 = Me.Txt
  loc_F3905F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F39067:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3907D: End If
  loc_F39088: Set var_A8 = Me.Txt
  loc_F3908E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F39096: var_B0.SetFocus
  loc_F390A2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA72B0
  'Data Table: 44D8A4
  Dim var_A8 As Variant
  loc_EA7230: Set var_88 = Me.DGHelp
  loc_EA725A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7262: Set var_BC = Me.DGHelp
  loc_EA729E: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0), Me.FGPoint)
  loc_EA72AC: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EE79F0
  'Data Table: 44D8A4
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EE7942: On Error Goto loc_EE79AB
  loc_EE794B: Me.MoveFirst
  loc_EE7965: var_8C = "code='" & MyValue
  loc_EE7975: Me.Find var_8C & "'", 0, 1
  loc_EE799D: Proc_5_0_110649C(&HFF, Me, global_52)
  loc_EE79A5: Call Proc_99_31_1046060(0)
  loc_EE79AA: Exit Sub
  loc_EE79AB: ' Referenced from: EE7942
  loc_EE79B3: Set var_A8 = Err()
  loc_EE79B9: Call 0.Method_arg_2C (var_8C)
  loc_EE79DA: MsgBox(CVar(var_8C), &H40, "Information", var_EC, var_10C)
  loc_EE79ED: Exit Sub
  loc_EE79EE: Exit Sub
End Sub

Public Sub Proc_99_27_FBD02C(arg_C) 'FBD02C
  'Data Table: 44D8A4
  Dim var_8C As Recordset15
  loc_FBCE79: Set var_8C = arg_C 
  loc_FBCEA1: var_8C.Fields.Append "Code", &HC8, 5
  loc_FBCECD: var_8C.Fields.Append "ModType", &HC8, &H19
  loc_FBCEF9: var_8C.Fields.Append "ModuleDescription", &HC8, &H32
  loc_FBCF25: var_8C.Fields.Append "RestCode", &HC8, 6
  loc_FBCF51: var_8C.Fields.Append "Site_Code", &HC8, 2
  loc_FBCF7D: var_8C.Fields.Append "U_EntDt", 7, 0
  loc_FBCFA9: var_8C.Fields.Append "U_AE", &HC8, 1
  loc_FBCFD5: var_8C.Fields.Append "Restaurant", &HC8, &H32
  loc_FBCFE5: var_8C.CursorType = 3
  loc_FBCFF2: var_8C.LockType = 3
  loc_FBD011: var_8C.Open var_A0, var_B0, -1
  loc_FBD018: Set var_8C = Nothing 
  loc_FBD01F: Set var_88 = arg_C 
  loc_FBD023: Proc_99_27_FBD02C = -1
End Sub

Public Sub Proc_99_28_11E1C50
  'Data Table: 44D8A4
  Dim var_90 As String
  Dim var_88 As Recordset15
  Dim var_BC As Recordset15
  Dim var_A4 As String
  Dim var_8C As Fields15
  Dim var_B4 As Variant
  Dim var_E8 As Variant
  Dim var_CC As String
  Dim var_D4 As Variant
  Dim var_D8 As Variant
  Dim unk_44D8C8 As Connection15
  Dim var_118 As Field20
  loc_11E1812: Call Proc_99_27_FBD02C(New)
  loc_11E181D: Set global_52 = var_8C
  loc_11E1848: Me.Connection15.Execute "SELECT * From PrintMast WHERE SITE_CODE='" & MemVar_1F92078 & "'", var_B4, -1
  loc_11E1853: Set var_88 = var_8C
  loc_11E1863: ' Referenced from: 11E1C44
  loc_11E1872: If Not(var_88.EOF) Then
  loc_11E187B:   Set var_BC = global_52 
  loc_11E188A:   var_BC.AddNew var_A4, var_CC
  loc_11E189E:   var_8C = var_88.Fields
  loc_11E18DA:   var_BC.Fields.Item("Code").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Item("Code")), var_8C))
  loc_11E193A:   var_BC.Fields.Item("ModType").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ModType"))))
  loc_11E199A:   var_BC.Fields.Item("ModuleDescription").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ModuleDescription"))))
  loc_11E19FA:   var_BC.Fields.Item("RestCode").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RestCode"))))
  loc_11E1A5A:   var_BC.Fields.Item("Site_Code").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Site_Code"))))
  loc_11E1AAA:   var_F8 = Format(CVar(var_88.Fields.Item("U_EntDt")), "dd/MMM/yyyy")
  loc_11E1AD2:   var_BC.Fields.Item("U_EntDt").Value = var_F8
  loc_11E1B11:   var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), 1)) 'String
  loc_11E1B18:   var_CC = "U_AE"
  loc_11E1B24:   var_D4 = var_BC.Fields
  loc_11E1B2C:   var_D8 = var_D4.Item(var_CC)
  loc_11E1B34:   var_D8.Value = var_E8
  loc_11E1B6B:   var_A4 = "RestCode"
  loc_11E1B77:   var_8C = var_88.Fields
  loc_11E1B90:   var_90 = Proc_6_38_E68A98(CVar(var_8C.Item(var_A4)), "Select Max(Name) From Depart Where Code='", var_E8, -1, var_D4, var_D8)
  loc_11E1BB2:   unk_44D8C8.Execute 0 & "SELECT * From PrintMast WHERE SITE_CODE='" & MemVar_1F92078 & "' And LogSite_Code='" & MemVar_1F92078 & "'", var_118, var_F8
  loc_11E1BBA:   1 = var_D4.Fields
  loc_11E1BC2:    = var_D8.Item(var_8C)
  loc_11E1BCA:    = var_118.Value
  loc_11E1BFA:   var_BC.Fields.Item("Restaurant").Value = CVar(Proc_6_38_E68A98(var_F8))
  loc_11E1C31:   var_BC.Update var_A4, var_CC
  loc_11E1C38:   Set var_BC = Nothing 
  loc_11E1C3F:   var_88.MoveNext
  loc_11E1C44:   GoTo loc_11E1863
  loc_11E1C47: End If
  loc_11E1C4C: Set var_88 = Nothing
  loc_11E1C4F: Exit Sub
End Sub

Public Sub Proc_99_29_E7C6E4(arg_C) 'E7C6E4
  'Data Table: 44D8A4
  Dim var_98 As TextBox
  loc_E7C692: Set var_8C = Me.Txt
  loc_E7C698: Call 0.Method_Proc_99_29_E7C6E4C (var_8E, var_86)
  loc_E7C6A8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7C6BE:   Set var_8C = Me.Txt
  loc_E7C6C4:   Call 0.Method_Proc_99_29_E7C6E40 (CInt(var_86), var_98)
  loc_E7C6CC:   var_98.Enabled = arg_C
  loc_E7C6DB: Next var_92 'Byte
  loc_E7C6E1: Exit Sub
End Sub

Public Sub Proc_99_30_EB29C8
  'Data Table: 44D8A4
  Dim var_98 As TextBox
  loc_EB2932: global_96 = vbNullString
  loc_EB293C: global_120 = vbNullString
  loc_EB294E: Set var_8C = Me.Txt
  loc_EB2954: Call 0.Method_Proc_99_30_EB29C8C (var_8E, var_86)
  loc_EB2964: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB297A:   Set var_8C = Me.Txt
  loc_EB2980:   Call 0.Method_Proc_99_30_EB29C80 (CInt(var_86), var_98)
  loc_EB2988:   var_98.Text = vbNullString
  loc_EB29A4:   Set var_8C = Me.Txt
  loc_EB29AA:   Call 0.Method_Proc_99_30_EB29C80 (CInt(var_86), var_98)
  loc_EB29B2:   var_98.Tag = vbNullString
  loc_EB29C1: Next var_92 'Byte
  loc_EB29C7: Exit Sub
End Sub

Public Sub Proc_99_31_1046060
  'Data Table: 44D8A4
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_C0 As String
  Dim var_AC As TextBox
  loc_1045E14: On Error Goto loc_104601B
  loc_1045E1D: Proc_183_45_E5C118(global_52)
  loc_1045E39: If (Me.RecordCount <= 0) Then
  loc_1045E3C:   Call Proc_99_30_EB29C8()
  loc_1045E44: Else
  loc_1045E80:   Set var_A8 = Me.Txt
  loc_1045E86:   Call 0.Method_Proc_99_31_10460600 (CInt(2), var_AC)
  loc_1045E8E:   var_AC.Text = CStr(Me.Fields.Item("ModType").Value)
  loc_1045EE0:   Set var_A8 = Me.Txt
  loc_1045EE6:   Call 0.Method_Proc_99_31_10460600 (CInt(0), var_AC)
  loc_1045EEE:   var_AC.Text = CStr(Me.Fields.Item("ModuleDescription").Value)
  loc_1045F40:   Set var_A8 = Me.Txt
  loc_1045F46:   Call 0.Method_Proc_99_31_10460600 (CInt(0), var_AC)
  loc_1045F4E:   var_AC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1045F9D:   Set var_A8 = Me.Txt
  loc_1045FA3:   Call 0.Method_Proc_99_31_10460600 (CInt(1), var_AC)
  loc_1045FAB:   var_AC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Restaurant")))
  loc_1045FEA:   var_C0 = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestCode")))
  loc_1045FF8:   Set var_A8 = Me.Txt
  loc_1045FFE:   Call 0.Method_Proc_99_31_10460600 (CInt(1), var_AC)
  loc_1046006:   var_AC.Tag = var_C0
  loc_104601A: End If
  loc_104601A: Exit Sub
  loc_104601B: ' Referenced from: 1045E14
  loc_1046023: Set var_90 = Err()
  loc_1046029: Call 0.Method_arg_2C (var_C0)
  loc_104604A: MsgBox(CVar(var_C0), &H40, "Information", var_F0, var_110)
  loc_104605D: Exit Sub
End Sub

Public Sub Proc_99_32_10D2274
  'Data Table: 44D8A4
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_EC As Variant
  Dim var_A8 As TextBox
  Dim var_B4 As TextBox
  Dim unk_44D8C0 As Connection15
  Dim var_DC As Fields15
  Dim var_F0 As Field20
  loc_10D1FBB: If (Me.RecordCount = 0) Then
  loc_10D1FBE:   Proc_99_32_10D2274 = 
  loc_10D1FC4: End If
  loc_10D1FC8: Set var_90 = Me.TopCtrl1
  loc_10D1FCE: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10D1FD6: var_A4 = CStr()
  loc_10D1FE7: If (var_A4 = "Add") Then
  loc_10D1FF0:   var_EC = 0
  loc_10D2017:   Set var_90 = Me.Txt
  loc_10D201D:   Call 0.Method_Proc_99_32_10D22740 (CInt(1), var_A8, var_A4, "Select Count(*) From PrintMast Where restcode='", var_A0, -1)
  loc_10D2046:   Set var_B0 = Me.Txt
  loc_10D204C:   Call 0.Method_Proc_99_32_10D22740 (CInt(0), var_B4, var_B8, var_DC & var_A4 & "' and ModuleDescription='")
  loc_10D2054:   var_EC = var_B4.Text
  loc_10D206D:   unk_44D8C0.Execute var_F0 & var_B8 & "'", var_100, 
  loc_10D2075:    = var_A8.Tag.Fields
  loc_10D207D:    = var_DC.Item()
  loc_10D2085:    = var_F0.Value
  loc_10D20BC:   If (var_100 > 0) Then
  loc_10D20CA:     var_100 = "Information"
  loc_10D20DA:     var_A0 = "Duplicate Name"
  loc_10D20E0:     MsgBox(var_A0, &H40, var_100, var_120, var_140)
  loc_10D20FB:     Set var_90 = Me.Txt
  loc_10D2101:     Call 0.Method_Proc_99_32_10D22740 (CInt(0))
  loc_10D2109:     var_A8.SetFocus
  loc_10D211A:     Proc_99_32_10D2274 = &HFF
  loc_10D2120:   End If
  loc_10D2123: Else
  loc_10D2129:   var_EC = 0
  loc_10D2150:   Set var_90 = Me.Txt
  loc_10D2156:   Call 0.Method_Proc_99_32_10D22740 (CInt(1), var_A8, var_A4, "Select Count(*) From PrintMast Where restcode='", var_A0, -1)
  loc_10D217F:   Set var_B0 = Me.Txt
  loc_10D2185:   Call 0.Method_Proc_99_32_10D22740 (CInt(0), var_B4, var_B8, var_DC & var_A4 & "' and ModuleDescription='")
  loc_10D218D:   var_EC = var_B4.Text
  loc_10D21B7:   unk_44D8C0.Execute var_F0 & var_B8 & "' And ModuleDescription<>'" & global_96 & "'", var_100, var_A8
  loc_10D21BF:    = var_A8.Tag.Fields
  loc_10D21C7:    = var_DC.Item()
  loc_10D21CF:    = var_F0.Value
  loc_10D220A:   If (var_100 > 0) Then
  loc_10D222E:     MsgBox("Duplicate Name", &H40, "Information", var_120, var_140)
  loc_10D2249:     Set var_90 = Me.Txt
  loc_10D224F:     Call 0.Method_Proc_99_32_10D22740 (CInt(0))
  loc_10D2257:     var_A8.SetFocus
  loc_10D2268:     Proc_99_32_10D2274 = &HFF
  loc_10D226E:   End If
  loc_10D226E: End If
  loc_10D226E: Proc_99_32_10D2274 = var_A8
End Sub

Public Sub Proc_99_33_EB9CA8
  'Data Table: 44D8A4
  loc_EB9C20: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EB9C32:   Me.DGHelp.Visible = False
  loc_EB9C3A: End If
  loc_EB9C56: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EB9C68:   Me.DGRest.Visible = False
  loc_EB9C70: End If
  loc_EB9C8C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB9C9E:   Me.FGPoint.Visible = False
  loc_EB9CA6: End If
  loc_EB9CA6: Exit Sub
End Sub

Public Sub Proc_99_34_E906F8(arg_C) 'E906F8
  'Data Table: 44D8A4
  Dim var_10C As TextBox
  loc_E9068C: Call Proc_99_33_EB9CA8()
  loc_E906C8: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E906CB:   Call TopCtrl1_UnknownEvent_16()
  loc_E906D3: Else
  loc_E906DD:   Set var_108 = Me.Txt
  loc_E906E3:   Call 0.Method_Proc_99_34_E906F80 (arg_C)
  loc_E906EB:   var_10C.SetFocus
  loc_E906F7: End If
  loc_E906F7: Exit Sub
End Sub

Public Sub Proc_99_35_F53048(arg_C) 'F53048
  'Data Table: 44D8A4
  Dim var_124 As Integer
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim unk_44D8C0 As Connection15
  Dim var_110 As Recordset15
  Dim var_114 As Fields15
  Dim var_128 As Field20
  Dim var_148 As Variant
  loc_F52F5D: var_124 = 0
  loc_F52F73: var_B8 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From RevMast WHERE SUBSTRING(Code,2,1) ='"
  loc_F52F92: unk_44D8C0.Execute CStr(var_B8 & Left(arg_C, 1) & "'"), var_10C, -1
  loc_F52F9A: var_110 = var_110.Fields
  loc_F52FA2: var_124 = var_114.Item(var_114)
  loc_F52FAA: var_128 = var_128.Value
  loc_F52FFF: var_E8 = (Left(MemVar_1F92070, 1) + Left(arg_C, 1))
  loc_F5302B: var_148 = (1 + Format(CStr(var_138), "000"))
  loc_F53030: var_88 = CStr(var_148)
  loc_F53042: Proc_99_35_F53048 = 1
End Sub
