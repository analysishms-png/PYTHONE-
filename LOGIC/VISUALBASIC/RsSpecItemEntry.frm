VERSION 5.00
Begin VB.Form RsSpecItemEntry
  Caption = " Special Item Entry"
  BackColor = &HC9E2F5&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  MaxButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 7410
  ClientHeight = 5190
  LockControls = -1  'True
  WhatsThisHelp = -1  'True
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    Left = 2430
    Top = 2460
    Width = 630
    Height = 255
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 8
    BackColor = &HFFFFFF&
    Left = 2430
    Top = 1920
    Width = 630
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 7
    BackColor = &HFFFFFF&
    Left = 2430
    Top = 2190
    Width = 630
    Height = 255
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin CommandButton Cmd
    Caption = "&Save "
    Index = 1
    BackColor = &H80FFFF&
    Left = 2430
    Top = 3360
    Width = 1335
    Height = 525
    Enabled = 0   'False
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
    Style = 1
  End
  Begin CommandButton Cmd
    Caption = "E&xit"
    Index = 0
    BackColor = &H80FFFF&
    Left = 3780
    Top = 3360
    Width = 1335
    Height = 525
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
    Style = 1
  End
End
Begin DataGrid DGHelp
  Left = 1050
  Top = 4530
  Width = 4230
  Height = 2355
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 14
End
Begin DataGrid DGItemCat
  Left = 2415
  Top = 3765
  Width = 4980
  Height = 2460
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 18
End
Begin TextBox Txt
  Index = 3
  BackColor = &HFFFFFF&
  Left = 2430
  Top = 840
  Width = 1275
  Height = 255
  TabIndex = 1
  BorderStyle = 0 'None
  MaxLength = 6
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
  Index = 4
  BackColor = &HFFFFFF&
  Left = 2430
  Top = 2730
  Width = 1275
  Height = 255
  TabIndex = 8
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
Begin TextBox Txt
  Index = 6
  BackColor = &HFFFFFF&
  Left = 2430
  Top = 570
  Width = 3855
  Height = 255
  TabIndex = 0
  BorderStyle = 0 'None
  MaxLength = 35
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
  Index = 5
  BackColor = &HFFFFFF&
  Left = 2430
  Top = 1650
  Width = 3855
  Height = 255
  TabIndex = 4
  BorderStyle = 0 'None
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
  Index = 2
  BackColor = &HFFFFFF&
  Left = 2430
  Top = 3000
  Width = 3855
  Height = 255
  TabIndex = 9
  BorderStyle = 0 'None
  MaxLength = 35
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
  Left = 2430
  Top = 1110
  Width = 3855
  Height = 255
  TabIndex = 2
  BorderStyle = 0 'None
  MaxLength = 35
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
  Left = 2430
  Top = 1380
  Width = 1275
  Height = 255
  TabIndex = 3
  BorderStyle = 0 'None
  MaxLength = 6
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
Begin TopCtrl TopCtrl1
  Left = 0
  Top = 4815
  Width = 7410
  Height = 375
  Visible = 0   'False
  TabIndex = 12
End
End

Attribute VB_Name = "RsSpecItemEntry"

Private global_84 As Integer

Private Sub DGHelp_UnknownEvent_9 'F48DA4
  'Data Table: 459BF0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F48C9B: Me.DGHelp.Visible = False
  loc_F48CBA: If (Me.RecordCount > 0) Then
  loc_F48CF9:   Set var_B4 = Me.Txt
  loc_F48CFF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F48D07:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F48D3A:   var_B0 = Me.Fields.Item("Name")
  loc_F48D59:   Set var_B4 = Me.Txt
  loc_F48D5F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F48D67:   var_B8.Text = CStr(var_B0.Value)
  loc_F48D7D: End If
  loc_F48D88: Set var_A8 = Me.Txt
  loc_F48D8E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F48D96: var_B0.SetFocus
  loc_F48DA2: Exit Sub
End Sub

Private Sub Cmd_Click() 'EC0980
  'Data Table: 459BF0
  Dim var_88 As Variant
  loc_EC08F4: On Error Goto loc_EC090D
  loc_EC0904: Me.Global.Unload Me
  loc_EC090C: Exit Sub
  loc_EC090D: ' Referenced from: EC08F4
  loc_EC0915: Set var_88 = Err()
  loc_EC091B: Call 0.Method_arg_1C (var_8C)
  loc_EC0928: Set var_94 = Err()
  loc_EC092E: Call 0.Method_arg_2C (var_98)
  loc_EC095F: MsgBox(CVar(CStr(var_8C) & " : " & var_98), &H10, "Message ", var_EC, var_10C)
  loc_EC097F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1372E84
  'Data Table: 459BF0
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_B4 As Variant
  loc_137261A: Set var_88 = Me.Txt
  loc_1372620: Call 0.Method_Txt_GotFocus0 (Index)
  loc_137262E: Proc_6_74_E226B0(var_8C)
  loc_137263A: Call Proc_74_25_EF9630(var_8C)
  loc_137263F: On Error Goto loc_1372E3E
  loc_1372645: var_92 = Index
  loc_1372650: If (var_92 = CInt(5)) Then
  loc_13726A1:   Set var_88 = Me.Txt
  loc_13726A7:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13726AF:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13726C7:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_13726CA:     Exit Sub
  loc_13726CB:   End If
  loc_13726D8:   Set var_88 = Me.Txt
  loc_13726DE:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13726E6:   var_A0 = var_8C.Text
  loc_13726F8:   var_B0 = "Name"
  loc_137270F:   var_B4 = Me.Fields.Item(var_B0)
  loc_1372733:   If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_137273C:     Me.MoveFirst
  loc_137275F:     Set var_88 = Me.Txt
  loc_1372765:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_137276D:     0 = var_8C.Text
  loc_1372786:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_137279B:   End If
  loc_137279E: Else
  loc_13727A6:   If Not (var_92 = CInt(7)) Then
  loc_13727B1:     If Not (var_92 = CInt(8)) Then
  loc_13727BC:       If (var_92 = CInt(9)) Then
  loc_13727BF:       End If
  loc_13727BF:     End If
  loc_13727CE:     Set var_88 = Me.Txt
  loc_13727D4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13727DC:     var_8C.SelStart = 0
  loc_13727F5:     Set var_88 = Me.Txt
  loc_13727FB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1372816:     Set var_90 = Me.Txt
  loc_137281C:     Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_1372824:     var_B4.SelLength = Len(var_8C.Text)
  loc_1372844:     Set var_88 = Me.Txt
  loc_137284A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1372864:     Set var_90 = Me.Txt
  loc_137286A:     Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_1372872:     var_B4.Tag = var_8C.Text
  loc_1372888:   Else
  loc_1372890:     If (var_92 = CInt(2)) Then
  loc_13728A1:       Set var_88 = Me.Txt
  loc_13728A7:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_13728C6:       (CVar(var_8C.Left)).Left = 
  loc_13728E2:       Set var_90 = Me.Txt
  loc_13728E8:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_B4)
  loc_1372903:       Set var_88 = Me.Txt
  loc_1372909:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_1372921:       var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_1372930:       (CVar(var_8C.Left)).Top = 
  loc_1372951:       Me.Filter = 0
  loc_1372962:       Me.Filter = "RestType='Kitchen'"
  loc_13729B5:       Set var_88 = Me.Txt
  loc_13729BB:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13729DB:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_13729DE:         Exit Sub
  loc_13729DF:       End If
  loc_13729EC:       Set var_88 = Me.Txt
  loc_13729F2:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13729FA:       var_A0 = var_8C.Text
  loc_1372A0C:       var_B0 = "Name"
  loc_1372A23:       var_B4 = Me.Fields.Item(var_B0)
  loc_1372A47:       If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_1372A50:         Me.MoveFirst
  loc_1372A73:         Set var_88 = Me.Txt
  loc_1372A79:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1372A81:         0 = var_8C.Text
  loc_1372A9A:         Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1372AAF:       End If
  loc_1372AB2:     Else
  loc_1372ABA:       If (var_92 = CInt(6)) Then
  loc_1372ACB:         Set var_88 = Me.Txt
  loc_1372AD1:         Call 0.Method_Txt_GotFocus0 (CInt(6), var_8C)
  loc_1372AF0:         (CVar(var_8C.Left)).Left = 
  loc_1372B0C:         Set var_90 = Me.Txt
  loc_1372B12:         Call 0.Method_Txt_GotFocus0 (CInt(6), var_B4)
  loc_1372B2D:         Set var_88 = Me.Txt
  loc_1372B33:         Call 0.Method_Txt_GotFocus0 (CInt(6), var_8C)
  loc_1372B4B:         var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_1372B5A:         (CVar(var_8C.Left)).Top = 
  loc_1372B7B:         Me.Filter = 0
  loc_1372B8C:         Me.Filter = "RestType<>'Kitchen'"
  loc_1372BDF:         Set var_88 = Me.Txt
  loc_1372BE5:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1372C05:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1372C08:           Exit Sub
  loc_1372C09:         End If
  loc_1372C16:         Set var_88 = Me.Txt
  loc_1372C1C:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1372C24:         var_A0 = var_8C.Text
  loc_1372C36:         var_B0 = "Name"
  loc_1372C71:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1372C7A:           Me.MoveFirst
  loc_1372C9D:           Set var_88 = Me.Txt
  loc_1372CA3:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1372CAB:           0 = var_8C.Text
  loc_1372CC4:           Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1372CD9:         End If
  loc_1372CDC:       Else
  loc_1372CE4:         If (var_92 = CInt(0)) Then
  loc_1372CE7:           GoTo loc_1372E3D
  loc_1372CEA:         End If
  loc_1372CF2:         If (var_92 = CInt(1)) Then
  loc_1372D43:           Set var_88 = Me.Txt
  loc_1372D49:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1372D69:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1372D6C:             Exit Sub
  loc_1372D6D:           End If
  loc_1372D7A:           Set var_88 = Me.Txt
  loc_1372D80:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1372D88:           var_A0 = var_8C.Text
  loc_1372D9A:           var_B0 = "Name"
  loc_1372DD5:           If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1372DDE:             Me.MoveFirst
  loc_1372E01:             Set var_88 = Me.Txt
  loc_1372E07:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1372E0F:             0 = var_8C.Text
  loc_1372E28:             Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1372E3D:             ' Referenced from:         1372CE7
  loc_1372E3D:           End If
  loc_1372E3D:         End If
  loc_1372E3D:       End If
  loc_1372E3D:     End If
  loc_1372E3D:   End If
  loc_1372E3D: End If
  loc_1372E3D: Exit Sub
  loc_1372E3E: ' Referenced from: 137263F
  loc_1372E46: Set var_88 = Err()
  loc_1372E4C: Call 0.Method_arg_2C (var_A0)
  loc_1372E6D: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_124)
  loc_1372E80: Exit Sub
  loc_1372E81: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '107E558
  'Data Table: 459BF0
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_107E2CE: If (CLng(Shift) = &H1B) Then
  loc_107E2D1:   Call Proc_74_25_EF9630()
  loc_107E2D6:   Exit Sub
  loc_107E2D7: End If
  loc_107E2DA: var_86 = KeyCode
  loc_107E2E5: If (var_86 = CInt(0)) Then
  loc_107E2E8:   GoTo loc_107E456
  loc_107E2EB: End If
  loc_107E2F3: If (var_86 = CInt(5)) Then
  loc_107E30E:   Set var_9C = Nothing
  loc_107E319:   Set var_98 = Nothing
  loc_107E347:   Proc_6_69_134A198(Me.DGItemCat, Me.Txt, KeyCode, global_64, Shift, 0)
  loc_107E35E: Else
  loc_107E366:   If Not (var_86 = CInt(6)) Then
  loc_107E371:     If (var_86 = CInt(2)) Then
  loc_107E374:     End If
  loc_107E38C:     Set var_9C = Nothing
  loc_107E397:     Set var_98 = Nothing
  loc_107E3C5:     Proc_6_69_134A198(var_98(1), Me.Txt, KeyCode, global_60, Shift, 0, 1)
  loc_107E3DC:   Else
  loc_107E3E4:     If (var_86 = CInt(1)) Then
  loc_107E3FB:       If (Me.EOF = 0) Then
  loc_107E416:         Set var_98 = Nothing
  loc_107E444:         Proc_6_79_11ACE04(var_9C(var_98)(var_98), Me.Txt, KeyCode, global_68, Shift, 0, 1)
  loc_107E456:       End If
  loc_107E456:     End If
  loc_107E456:     ' Referenced from: 107E2E8
  loc_107E456:   End If
  loc_107E456: End If
  loc_107E49E: Set var_9C = Me.DGItemCat
  loc_107E4C7: If ((var_9C And (CBool(0((0 And (CBool(var_98((CBool(Me.DGHelp.Visible) = 0)).Visible) = 0))).Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_107E4DF:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_107E4E2:   End If
  loc_107E500:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(2))) Then
  loc_107E508:     Call Cmd_Click()
  loc_107E510:   Else
  loc_107E525:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_107E52E:       Proc_6_75_E527CC(Shift, arg_14, 1)
  loc_107E536:     Else
  loc_107E549:       If ((CLng(Shift) = &H26) And (KeyCode <> CInt(6))) Then
  loc_107E552:         Proc_6_76_E52838(Shift, arg_14)
  loc_107E557:       End If
  loc_107E557:     End If
  loc_107E557:   End If
  loc_107E557: End If
  loc_107E557: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10406B0
  'Data Table: 459BF0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  Dim var_CC As Variant
  Dim var_94 As Variant
  loc_104045F: Proc_6_58_E054C0(arg_10)
  loc_104046A: Proc_6_133_E7EF78(var_94)
  loc_1040473: arg_10 = CInt(var_94)
  loc_104047C: var_96 = KeyAscii
  loc_1040487: If Not (var_96 = CInt(7)) Then
  loc_1040492:   If Not (var_96 = CInt(8)) Then
  loc_104049D:     If (var_96 = CInt(9)) Then
  loc_10404A0:     End If
  loc_10404A0:   End If
  loc_10404C9:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_10404D9:     Set var_CC = Me.Txt
  loc_10404DF:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_10404E7:     var_D0.Text = var_96
  loc_10404F6:   Else
  loc_104051F:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_104052F:       Set var_CC = Me.Txt
  loc_1040535:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "No")
  loc_104053D:       var_D0.Text = arg_10
  loc_1040549:     End If
  loc_1040549:   End If
  loc_104054B:   arg_10 = 0
  loc_1040551: Else
  loc_1040559:   If (var_96 = CInt(3)) Then
  loc_1040566:     Set var_CC = Me.Txt
  loc_104056C:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_1040587:     Proc_6_42_129A86C(var_D0, arg_10, 4)
  loc_1040596:   Else
  loc_104059E:     If Not (var_96 = CInt(6)) Then
  loc_10405A9:       If (var_96 = CInt(2)) Then
  loc_10405AC:       End If
  loc_10405C8:       If (CBool(arg_10(0).Visible) = &HFF) Then
  loc_10405DA:         var_DC = "Name"
  loc_10405F5:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10)
  loc_1040604:       End If
  loc_1040607:     Else
  loc_104060F:       If (var_96 = CInt(5)) Then
  loc_104062E:         If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_1040635:           Set var_D0 = Me.Txt
  loc_104065B:           Proc_6_89_146F1AC(var_D0, KeyAscii, global_64, arg_10, "Name")
  loc_104066A:         End If
  loc_104066D:       Else
  loc_1040675:         If (var_96 = CInt(4)) Then
  loc_1040682:           Set var_CC = Me.Txt
  loc_1040688:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, 0)
  loc_10406A3:           Proc_6_42_129A86C(var_D0, arg_10, 8, 2)
  loc_10406AF:         End If
  loc_10406AF:       End If
  loc_10406AF:     End If
  loc_10406AF:   End If
  loc_10406AF: End If
  loc_10406AF: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E91B64
  'Data Table: 459BF0
  Dim var_86 As Integer
  loc_E91AF3: var_86 = KeyCode
  loc_E91AFE: If (var_86 = CInt(0)) Then
  loc_E91B01:   GoTo loc_E91B62
  loc_E91B04: End If
  loc_E91B0C: If (var_86 = CInt(1)) Then
  loc_E91B2B:   If (CBool((var_86).Visible) = &HFF) Then
  loc_E91B38:     var_A0 = "Name"
  loc_E91B53:     Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_68)
  loc_E91B62:     ' Referenced from: E91B01
  loc_E91B62:   End If
  loc_E91B62: End If
  loc_E91B62: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46A2C
  'Data Table: 459BF0
  loc_E46A0A: Set var_88 = Me.Txt
  loc_E46A10: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46A1E: Proc_6_73_E22704(var_8C)
  loc_E46A2A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '134E474
  'Data Table: 459BF0
  Dim var_8A As Integer
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_F0 As String
  Dim var_EC As TextBox
  Dim Me As Recordset15
  Dim var_E8 As Fields15
  Dim var_C4 As Variant
  Dim var_90 As Fields15
  Dim var_10C As String
  Dim unk_459C05 As Connection15
  loc_134DC74: On Error Goto loc_134E42E
  loc_134DC7A: var_8A = Cancel
  loc_134DC85: If Not (var_8A = CInt(7)) Then
  loc_134DC90:   If Not (var_8A = CInt(8)) Then
  loc_134DC9B:     If (var_8A = CInt(9)) Then
  loc_134DC9E:     End If
  loc_134DC9E:   End If
  loc_134DCA8:   Set var_90 = Me.Txt
  loc_134DCAE:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_134DCE9:   If (Ucase(Left(CVar(var_94), 1)) = "Y") Then
  loc_134DCF9:     Set var_90 = Me.Txt
  loc_134DCFF:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_134DD07:     var_94.Text = "Yes"
  loc_134DD16:   Else
  loc_134DD23:     Set var_90 = Me.Txt
  loc_134DD29:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_134DD31:     var_94.Text = "No"
  loc_134DD3D:   End If
  loc_134DD40: Else
  loc_134DD48:   If (var_8A = CInt(4)) Then
  loc_134DD55:     Set var_90 = Me.Txt
  loc_134DD5B:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_134DD87:     var_F0 = CStr(Format(CVar(var_94), "0.00"))
  loc_134DD95:     Set var_E8 = Me.Txt
  loc_134DD9B:     Call 0.Method_Txt_Validate0 (Cancel, var_EC, var_F0)
  loc_134DDA3:     var_EC.Text = 1
  loc_134DDC0:   Else
  loc_134DDC8:     If (var_8A = CInt(0)) Then
  loc_134DDCB:       GoTo loc_134E42D
  loc_134DDCE:     End If
  loc_134DDD6:     If (var_8A = CInt(1)) Then
  loc_134DE27:       Set var_90 = Me.Txt
  loc_134DE2D:       Call 0.Method_Txt_Validate0 (Cancel, var_94, var_F0)
  loc_134DE35:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_134DE4D:       If (1 Or (var_F0 = vbNullString)) Then
  loc_134DE50:         Exit Sub
  loc_134DE51:       End If
  loc_134DE5B:       Set var_90 = Me.Txt
  loc_134DE61:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_134DE92:       var_EC = Me.Fields.Item("Name")
  loc_134DE9A:       var_C4 = CVar(var_EC) 'Address
  loc_134DEA1:       var_E4 = Ucase(var_C4)
  loc_134DEBD:       If (Ucase(CVar(var_94)) = var_E4) Then
  loc_134DEFB:         Set var_E8 = Me.Txt
  loc_134DF01:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_134DF09:         var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_134DF3C:         var_94 = Me.Fields.Item("Code")
  loc_134DF4D:         var_F0 = CStr(var_94.Value)
  loc_134DF5A:         Set var_E8 = Me.Txt
  loc_134DF60:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_134DF68:         var_EC.Tag = var_F0
  loc_134DF7E:       End If
  loc_134DF81:     Else
  loc_134DF89:       If (var_8A = CInt(5)) Then
  loc_134DFDA:         Set var_90 = Me.Txt
  loc_134DFE0:         Call 0.Method_Txt_Validate0 (Cancel, var_94, var_F0)
  loc_134DFE8:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_134E000:         If (var_8A Or (var_F0 = vbNullString)) Then
  loc_134E003:           Exit Sub
  loc_134E004:         End If
  loc_134E03F:         Set var_E8 = Me.Txt
  loc_134E045:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_134E04D:         var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_134E080:         var_94 = Me.Fields.Item("Code")
  loc_134E09E:         Set var_E8 = Me.Txt
  loc_134E0A4:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_134E0AC:         var_EC.Tag = CStr(var_94.Value)
  loc_134E0C5:       Else
  loc_134E0CD:         If (var_8A = CInt(6)) Then
  loc_134E0DB:           Set var_90 = Me.Txt
  loc_134E0E1:           Call 0.Method_Txt_Validate0 (CInt(6))
  loc_134E0E9:           var_F0 = "Restaurant"
  loc_134E10A:           If (Proc_183_19_E8DAFC(var_94, var_F0) = 0) Then
  loc_134E114:             Call Txt_GotFocus(CInt(6))
  loc_134E119:             Exit Sub
  loc_134E11A:           End If
  loc_134E168:           Set var_90 = Me.Txt
  loc_134E16E:           Call 0.Method_Txt_Validate0 (Cancel, var_94, var_F0)
  loc_134E176:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_134E18E:           If (var_94 Or (var_F0 = vbNullString)) Then
  loc_134E191:             Exit Sub
  loc_134E192:           End If
  loc_134E1CD:           Set var_E8 = Me.Txt
  loc_134E1D3:           Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_134E1DB:           var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_134E20E:           var_94 = Me.Fields.Item("Code")
  loc_134E21F:           var_F0 = CStr(var_94.Value)
  loc_134E22C:           Set var_E8 = Me.Txt
  loc_134E232:           Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_134E23A:           var_EC.Tag = var_F0
  loc_134E26E:           Set var_90 = Me.Txt
  loc_134E274:           Call 0.Method_Txt_Validate0 (CInt(6), var_94, var_F0, "SELECT Code,Name FROM ItemMast Where DispCode=9999 and RestCode='")
  loc_134E27C:           var_A4 = var_94.Tag
  loc_134E285:           var_10C = -1 & var_F0
  loc_134E295:           unk_459C05.Execute var_10C & "' ORDER BY Name", var_E8, 
  loc_134E2A6:           Set global_56 = var_E8
  loc_134E2CA:           CVarUnk
  loc_134E2CF:           VerifyVarObj
  loc_134E2D5:           Set var_90 = Me.DGHelp
  loc_134E2DB:           LateIdStAd
  loc_134E2EC:         Else
  loc_134E2F4:           If (var_8A = CInt(2)) Then
  loc_134E34B:             Call 0.Method_Txt_Validate0 (Cancel, var_94, var_F0)
  loc_134E353:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_134E36B:             If (Me.Txt Or (var_F0 = vbNullString)) Then
  loc_134E36E:               Exit Sub
  loc_134E36F:             End If
  loc_134E3AA:             Set var_E8 = Me.Txt
  loc_134E3B0:             Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_134E3B8:             var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_134E3FC:             var_F0 = CStr(Me.Fields.Item("Code").Value)
  loc_134E409:             Set var_E8 = Me.Txt
  loc_134E40F:             Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_134E417:             var_EC.Tag = var_F0
  loc_134E42D:           End If
  loc_134E42D:         End If
  loc_134E42D:       End If
  loc_134E42D:       ' Referenced from:     134DDCB
  loc_134E42D:     End If
  loc_134E42D:   End If
  loc_134E42D: End If
  loc_134E42D: Exit Sub
  loc_134E42E: ' Referenced from: 134DC74
  loc_134E436: Set var_90 = Err()
  loc_134E43C: Call 0.Method_arg_2C (var_F0)
  loc_134E45D: MsgBox(CVar(var_F0), &H40, "Information", var_C4, var_E4)
  loc_134E470: Exit Sub
  loc_134E471: Exit Sub
End Sub

Private Sub Form_Load() '1260AAC
  'Data Table: 459BF0
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_459C05 As Connection15
  Dim var_BC As Variant
  Dim var_A8 As Variant
  Dim var_F0 As DataGrid
  Dim var_F4 As TextBox
  Dim var_B8 As Variant
  loc_1260548: On Error Goto loc_1260A67
  loc_126055D: Set var_8C = Me
  loc_1260563: Proc_6_23_DFBA28(var_8C, 5190)
  loc_126056B: Call Proc_74_26_FB2C74(7430)
  loc_1260575: global_84 = &HFF
  loc_1260593: var_98 = "SELECT Code,Name,ItemGroup FROM ItemMast Where LogSite_Code in ('HO','" & MemVar_1F92078 & "') and DispCode=9999 ORDER BY Name"
  loc_126059C: unk_459C05.Execute var_98, var_B8, -1
  loc_12605AD: Set global_56 = var_8C
  loc_12605CB: CVarUnk
  loc_12605D0: VerifyVarObj
  loc_12605DC: LateIdStAd
  loc_1260605: var_98 = "SELECT Code,Name,RestType FROM Depart Where LogSite_Code in ('" & MemVar_1F92078 & "') and RestType IN ('Other','Hall','Restaurant','Room Service','Kitchen') ORDER BY Name"
  loc_126060E: unk_459C05.Execute var_98, var_B8, -1
  loc_126063D: CVarUnk
  loc_1260642: VerifyVarObj
  loc_126064E: LateIdStAd
  loc_1260670: var_94 = "SELECT ItemCatMast.Code, ItemCatMast.Name, Depart.Name as OutletName FROM ItemCatMast INNER JOIN Depart ON ItemCatMast.RestCode = Depart.Code Where Depart.LogSite_Code in ('HO','" & MemVar_1F92078
  loc_1260696: unk_459C05.Execute var_94 & "') and RestCode='" & pRestCode & "' ORDER BY ItemCatMast.Name", var_B8, -1
  loc_12606A7: Set global_64 = var_8C(Me.DGHelp)
  loc_12606CB: CVarUnk
  loc_12606D0: VerifyVarObj
  loc_12606DC: LateIdStAd
  loc_126070E: unk_459C05.Execute "SELECT Name as Code,Name FROM UnitMast Where LogSite_Code in ('HO','" & MemVar_1F92078 & "') ORDER BY Name", var_B8, -1
  loc_126073D: CVarUnk
  loc_1260742: VerifyVarObj
  loc_1260748: Set var_8C = var_8C(Me.DGItemCat)
  loc_126074E: LateIdStAd
  loc_1260764: If (MemVar_1F923AC = "A") Then
  loc_126077B:   var_94 = "SELECT (I.RestCode+I.Code) AS SEARCHCODE,I.Code,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,IG.Name as ItemGrpName,I.TYPE,DispCode,R.Name as RestName,I.RestCode,I.kitchen,K.Name as KitchenName FROM ((((ItemMast I Inner join ItemGrp IG on IG.Code=I.ItemGroup) Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code))Inner Join Depart R on R.Code=I.RestCode) Inner Join Depart K on K.Code=I.Kitchen Where I.LogSite_Code in ('" & MemVar_1F92078
  loc_1260782:   var_98 = "SELECT Name as Code,Name FROM UnitMast Where LogSite_Code in ('HO','" & MemVar_1F92078 & "') and IG.Type IN ('Finish','Semi Finish') And I.DispCode=9999 ORDER BY R.Name,I.Name"
  loc_126078B:   unk_459C05.Execute var_98, var_B8, -1
  loc_126079C:   Set global_52 = var_8C
  loc_12607B4: Else
  loc_12607C8:   var_94 = "SELECT (I.RestCode+I.Code) AS SEARCHCODE,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,IG.Name as ItemGrpName,I.TYPE,DispCode,R.Name as RestName,I.RestCode,I.kitchen,K.Name as KitchenName FROM ((((ItemMast I Inner join ItemGrp IG on IG.Code=I.ItemGroup) Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code))Inner Join Depart R on R.Code=I.RestCode)Inner Join Depart K on K.Code=I.Kitchen Where I.LogSite_Code in ('" & MemVar_1F92078
  loc_12607CF:   var_98 = "SELECT Name as Code,Name FROM UnitMast Where LogSite_Code in ('HO','" & MemVar_1F92078 & "') and  IG.Type IN ('Finish','Semi Finish') And I.DispCode=9999 ORDER BY R.Name,I.Name"
  loc_12607D8:   unk_459C05.Execute var_98, var_B8, -1
  loc_12607E9:   Set global_52 = var_8C
  loc_12607FE: End If
  loc_1260804: global_80 = "Finish"
  loc_1260819: Call 0.Method_Form_Load0 (1, var_BC, &HFF, Me.Cmd, Me.Cmd, Me.Cmd, Me.Cmd)
  loc_1260821: var_BC.Enabled = global_64
  loc_1260837: Set var_8C = Me.TopCtrl1
  loc_126083D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E("Add")
  loc_1260846: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_0(var_8C)
  loc_1260851: Call Proc_74_22_EAE02C(var_8C, global_56)
  loc_1260869: If (pRestCode <> vbNullString) Then
  loc_1260888:   Call 0.Method_Form_Load0 (CInt(6), var_BC, pRestCode)
  loc_1260890:   var_BC.Tag = Me.Txt
  loc_12608A2:   var_94 = PRestName
  loc_12608B5:   Set var_8C = Me.Txt
  loc_12608BB:   Call 0.Method_Form_Load0 (CInt(6), var_BC)
  loc_12608C3:   var_BC.Text = var_94
  loc_12608D2: End If
  loc_12608DF: Set var_8C = Me.Txt
  loc_12608E5: Call 0.Method_Form_Load0 (CInt(3), var_BC)
  loc_12608ED: var_BC.Enabled = False
  loc_1260906: Set var_8C = Me.Txt
  loc_126090C: Call 0.Method_Form_Load0 (CInt(6), var_BC)
  loc_1260914: var_BC.Enabled = False
  loc_126092E: Set var_8C = Me.Txt
  loc_1260934: Call 0.Method_Form_Load0 (CInt(8), var_BC)
  loc_126093C: var_BC.Text = "Yes"
  loc_1260956: Set var_8C = Me.Txt
  loc_126095C: Call 0.Method_Form_Load0 (CInt(7), var_BC)
  loc_1260964: var_BC.Text = "No"
  loc_126097E: Set var_8C = Me.Txt
  loc_1260984: Call 0.Method_Form_Load0 (CInt(9), var_BC)
  loc_126098C: var_BC.Text = "No"
  loc_12609A1: Call 0.Method_arg_160 (var_8C)
  loc_12609AF: Call 0.Method_arg_164 (var_8C)
  loc_12609C5: Set var_8C = Me.PictShortCuts
  loc_12609CB: Call 0.Method_Form_Load0 (CInt(5), var_BC)
  loc_12609EA: Me.DGItemCat.Left = CVar(MDIForm1.PictShortCuts.Left)
  loc_1260A06: Set var_F0 = Me.Txt
  loc_1260A0C: Call 0.Method_Form_Load0 (CInt(5), var_F4)
  loc_1260A27: Set var_8C = Me.Txt
  loc_1260A2D: Call 0.Method_Form_Load0 (CInt(5), var_BC)
  loc_1260A45: var_A8 = CVar(((var_BC.Top + var_F4.Height) + CDbl(&H1E))) 'Single
  loc_1260A54: Me.DGItemCat.Top = CVar(MDIForm1.PictShortCuts.Left)
  loc_1260A66: Exit Sub
  loc_1260A67: ' Referenced from: 1260548
  loc_1260A6F: Set var_8C = Err()
  loc_1260A75: Call 0.Method_arg_2C (var_94)
  loc_1260A96: MsgBox(CVar(var_94), &H40, "Information", var_10C, var_12C)
  loc_1260AA9: Exit Sub
  loc_1260AAA: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6C1F8
  'Data Table: 459BF0
  loc_E6C1A5: If (global_84 = &HFF) Then
  loc_E6C1A8:   Call Proc_74_20_15972E4()
  loc_E6C1AD: End If
  loc_E6C1B8: Set global_52 = Nothing
  loc_E6C1CA: Set global_56 = Nothing
  loc_E6C1DC: Set global_60 = Nothing
  loc_E6C1EE: Set global_64 = Nothing
  loc_E6C1F5: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E46E44
  'Data Table: 459BF0
  loc_E46E10: On Error Goto loc_E46E3D
  loc_E46E1D: If (CLng(KeyCode) = &H1B) Then
  loc_E46E25:   global_84 = 0
  loc_E46E35:   Me.Global.Unload Me
  loc_E46E3D:   ' Referenced from: E46E10
  loc_E46E3D: End If
  loc_E46E3D: Proc_6_60_E62BC4(global_84)
  loc_E46E42: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'F52964
  'Data Table: 459BF0
  Dim var_94 As TextBox
  loc_F5284C: On Error Goto loc_F52920
  loc_F5284F: Call Proc_74_22_EAE02C()
  loc_F52869: var_88 = "ADD"
  loc_F52877: Call Proc_74_21_E76CA4(Proc_5_1_100CB50(var_88, Me))
  loc_F52890: Set var_8C = Me.Txt
  loc_F52896: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(8), var_94)
  loc_F5289E: var_94.Text = "Yes"
  loc_F528B8: Set var_8C = Me.Txt
  loc_F528BE: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(7), var_94)
  loc_F528C6: var_94.Text = "No"
  loc_F528E0: Set var_8C = Me.Txt
  loc_F528E6: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(9), var_94)
  loc_F528EE: var_94.Text = "No"
  loc_F52905: Set var_8C = Me.Txt
  loc_F5290B: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(6), var_94)
  loc_F52913: var_94.SetFocus
  loc_F5291F: Exit Sub
  loc_F52920: ' Referenced from: F5284C
  loc_F52928: Set var_8C = Err()
  loc_F5292E: Call 0.Method_arg_2C (var_88)
  loc_F5294F: MsgBox(CVar(var_88), &H40, "Information", var_E4, var_104)
  loc_F52962: Exit Sub
  loc_F52963: global_52() = 
End Sub

Private Sub DGRest_UnknownEvent_9 'F9DFDC
  'Data Table: 459BF0
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As TextBox
  Dim var_D0 As TextBox
  loc_F9DE7F: (False).Visible = 
  loc_F9DE9E: If (Me.RecordCount > 0) Then
  loc_F9DEF0:   Set var_CC = Me.Txt
  loc_F9DEF6:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(CStr(Me.Fields.Item("Code").Value)(var_D0).Tag)))
  loc_F9DEFE:   var_D0.Tag = 
  loc_F9DF56:   Set var_B4 = CStr(Me.Fields.Item("Name").Value)(var_D0)
  loc_F9DF6D:   Set var_CC = Me.Txt
  loc_F9DF73:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(var_B4.Tag)))
  loc_F9DF7B:   var_D0.Text = 
  loc_F9DF9B: End If
  loc_F9DFB9: Set var_B0 = Me.Txt
  loc_F9DFBF: Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr((var_B4).Tag)))
  loc_F9DFC7: var_B4.SetFocus
  loc_F9DFDB: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_9 'F48C44
  'Data Table: 459BF0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F48B3B: Me.DGItemCat.Visible = False
  loc_F48B5A: If (Me.RecordCount > 0) Then
  loc_F48B99:   Set var_B4 = Me.Txt
  loc_F48B9F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(5), var_B8)
  loc_F48BA7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F48BDA:   var_B0 = Me.Fields.Item("Name")
  loc_F48BF9:   Set var_B4 = Me.Txt
  loc_F48BFF:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(5), var_B8)
  loc_F48C07:   var_B8.Text = CStr(var_B0.Value)
  loc_F48C1D: End If
  loc_F48C28: Set var_A8 = Me.Txt
  loc_F48C2E: Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(5))
  loc_F48C36: var_B0.SetFocus
  loc_F48C42: Exit Sub
  loc_F48C43: var_B0() = 
End Sub

Public Property Get PKOTForm() 'E1438C
  'Data Table: 459BF0
  loc_E14380: Set var_88 = global_88 
  loc_E14384: PKOTForm = 
End Sub

Public Property Let PKOTForm(vNewValue) 'E14224
  'Data Table: 459BF0
  Dim arg_7800 As String
  loc_E1421D: Set global_88 = vNewValue
  loc_E14221: Exit Sub
  loc_E14222: arg_7800 = 
End Sub

Public Property Get pRestCode() 'E0F0DC
  'Data Table: 459BF0
  loc_E0F0D0: var_88 = global_92
  loc_E0F0D3: pRestCode = 
  loc_E0F0D9: Set var_88 = 
End Sub

Public Property Let pRestCode(vNewValue) 'E140BC
  'Data Table: 459BF0
  loc_E140B4: global_92 = vNewValue
  loc_E140B8: Exit Sub
  loc_E140B9: Set var_88 = 
End Sub

Public Property Get PRestName() 'E14074
  'Data Table: 459BF0
  loc_E14068: var_88 = global_96
  loc_E1406B: PRestName = 
End Sub

Public Property Let PRestName(vNewValue) 'E1402C
  'Data Table: 459BF0
  Dim arg_7800 As String
  loc_E14024: global_96 = vNewValue
  loc_E14028: Exit Sub
  loc_E14029: Exit Sub
  loc_E1402A: arg_7800 = 
End Sub

Public Sub Proc_74_20_15972E4
  'Data Table: 459BF0
  Dim var_E4 As Variant
  Dim var_9C As String
  Dim unk_459C05 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_118 As Variant
  Dim var_12C As TextBox
  Dim var_140 As TextBox
  Dim var_C0 As Variant
  Dim var_1A4 As TextBox
  Dim var_200 As Variant
  Dim var_110 As String
  Dim var_150 As String
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_1D8 As Variant
  Dim var_220 As Variant
  Dim var_128 As Field20
  Dim var_D0 As Variant
  Dim var_8C As Recordset15
  loc_15961EC: On Error Goto loc_1597290
  loc_15961F3: var_86 = CByte(0) 'Byte
  loc_1596202: Set var_90 = Me.Txt
  loc_1596208: Call 0.Method_Proc_74_20_15972E40 (CInt(0))
  loc_1596231: If (Proc_183_19_E8DAFC(var_94, "Name") = 0) Then
  loc_159623B:   Call Txt_GotFocus(CInt(0))
  loc_1596240:   Exit Sub
  loc_1596241: End If
  loc_159624C: Set var_90 = Me.Txt
  loc_1596252: Call 0.Method_Proc_74_20_15972E40 (CInt(1), var_94)
  loc_159627B: If (Proc_183_19_E8DAFC(var_94, "Unit") = 0) Then
  loc_1596285:   Call Txt_GotFocus(CInt(1))
  loc_159628A:   Exit Sub
  loc_159628B: End If
  loc_1596296: Set var_90 = Me.Txt
  loc_159629C: Call 0.Method_Proc_74_20_15972E40 (CInt(5), var_94)
  loc_15962C5: If (Proc_183_19_E8DAFC(var_94, "Item Category") = 0) Then
  loc_15962CF:   Call Txt_GotFocus(CInt(5))
  loc_15962D4:   Exit Sub
  loc_15962D5: End If
  loc_15962D9: Set var_90 = Me.TopCtrl1
  loc_15962DF: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_94)
  loc_15962F4: If ( = "Add") Then
  loc_15962FF:   If (MemVar_1F923AC = "A") Then
  loc_1596308:     var_E4 = 0
  loc_1596325:     var_9C = "Select iif(IsNull(Max(val(MID(Q.Code,3)))),1,Max(val(MID(Code,3)))+1)AS MyCode From (Select Code,Site_Code From Item Union Select Code,Site_Code From Itemmast)Q WHERE Q.SITE_CODE='" & MemVar_1F92070
  loc_1596335:     unk_459C05.Execute "Item Category" & "'", var_C0, -1
  loc_159633D:     var_90 = var_90.Fields
  loc_1596345:     var_E4 = var_94.Item(var_94)
  loc_159634D:     var_98 = var_98.Value
  loc_159635C:     global_76 = CStr(var_D0)
  loc_159637C:   Else
  loc_1596384:     If (MemVar_1F923AC = "S") Then
  loc_159638D:       var_E4 = 0
  loc_15963AA:       var_9C = "Select IsNull(Max(CAST(SUBSTRING(Q.Code,3,6) AS INT)),1)+1 AS MyCode From (Select Code,Site_Code From Item Union Select Code,Site_Code From Itemmast)Q WHERE Q.SITE_CODE='" & MemVar_1F92070
  loc_15963BA:       unk_459C05.Execute "Item Category" & "'", var_C0, -1
  loc_15963C2:       var_90 = var_90.Fields
  loc_15963CA:       var_E4 = var_94.Item(var_94)
  loc_15963D2:       var_98 = var_98.Value
  loc_15963DB:       var_E8 = CStr(var_D0)
  loc_15963E1:       global_76 = var_E8
  loc_15963FE:     End If
  loc_15963FE:   End If
  loc_159640B:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1596439:   var_108 = (1 + Format(global_76, "000000"))
  loc_1596444:   global_76 = CStr(var_108)
  loc_1596459: Else
  loc_1596476:   var_94 = Me.Fields.Item("Code")
  loc_159648D:   global_76 = CStr(var_94.Value)
  loc_159649E: End If
  loc_15964A7: unk_459C05.BeginTrans var_10C
  loc_15964B0: var_86 = CByte(1) 'Byte
  loc_15964B8: Set var_90 = Me.TopCtrl1
  loc_15964BE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(1)
  loc_15964D3: If (var_F8 = "Add") Then
  loc_15964E4:   Set var_90 = Me.Txt
  loc_15964EA:   Call 0.Method_Proc_74_20_15972E40 (CInt(0), var_94, var_E8)
  loc_15964F2:   var_D0 = var_94.Text
  loc_1596505:   Set var_98 = Me.Txt
  loc_159650B:   Call 0.Method_Proc_74_20_15972E40 (CInt(6), var_118)
  loc_1596526:   Set var_128 = Me.Txt
  loc_159652C:   Call 0.Method_Proc_74_20_15972E40 (CInt(1), var_12C)
  loc_1596547:   Set var_13C = Me.Txt
  loc_159654D:   Call 0.Method_Proc_74_20_15972E40 (CInt(5), var_140)
  loc_159655F:   var_C0 = CVar(Proc_6_14_EF349C(var_D0)) 'String
  loc_1596565:   Proc_6_8_EB0DE4(var_D0)
  loc_1596578:   Set var_1A0 = Me.Txt
  loc_159657E:   Call 0.Method_Proc_74_20_15972E40 (CInt(2), var_1A4)
  loc_1596596:   Set var_1EC = Me.Txt
  loc_159659C:   Call 0.Method_Proc_74_20_15972E40 (CInt(8), var_1F0)
  loc_15965C0:   Set var_244 = Me.Txt
  loc_15965C6:   Call 0.Method_Proc_74_20_15972E40 (CInt(7), var_248)
  loc_15965EA:   Set var_29C = Me.Txt
  loc_15965F0:   Call 0.Method_Proc_74_20_15972E40 (CInt(9), var_2A0)
  loc_159661D:   var_9C = "Insert Into ItemMast (Code,Name,RestCode,DispCode,Unit,ItemGroup,ItemCatCode,DirectYN,Site_Code,U_Name,U_EntDt,U_AE,Type,Kitchen,DiscApp,SChrgApp,RateIncTax,LogSite_Code) " & " Values ('"
  loc_1596666:   var_150 = var_9C & global_76 & "','" & var_E8 & "','" & var_118.Tag & "',9999,'" & var_12C.Text & "','9999','" & var_140.Tag & "','Y','"
  loc_15966B1:   var_1C8 = CVar(var_150 & MemVar_1F92078 & "','" & MemVar_1F920C8 & "',") & var_D0 & ",'A','" & CVar(global_80) & "','" & CVar(var_1A4.Tag) 
  loc_15966C1:   var_220 = var_1C8 & "','" & Left(CVar(var_1F0), 1) 
  loc_159670B:   unk_459C05.Execute CStr(var_220 & "','" & Left(CVar(var_248), 1) & "','" & Left(CVar(var_2A0), 1) & "','" & CVar(MemVar_1F92078) & "')"), var_354, -1
  loc_1596790: Else
  loc_15967AE:   Set var_90 = Me.Txt
  loc_15967B4:   Call 0.Method_Proc_74_20_15972E40 (CInt(1), var_94, var_9C, "UPDATE ItemMast SET Unit='", var_220)
  loc_15967BC:   -1 = var_94.Text
  loc_15967CC:   var_110 = var_13C & var_9C & "',ItemGroup='Finish',ItemCatCode='"
  loc_15967DD:   Set var_98 = Me.Txt
  loc_15967E3:   Call 0.Method_Proc_74_20_15972E40 (CInt(5), var_118, var_E8)
  loc_15967EB:   var_110 = var_118.Tag
  loc_159681F:   var_C0 = CVar(Proc_6_14_EF349C(CVar(var_358 & var_E8 & "',SITE_CODE='" & MemVar_1F92070 & "',U_name='" & MemVar_1F920C8 & "',U_EntDt="))) 'String
  loc_1596825:   Proc_6_8_EB0DE4(var_D0, var_C0)
  loc_159685E:   Set var_128 = Me.Txt
  loc_1596864:   Call 0.Method_Proc_74_20_15972E40 (CInt(2), var_12C)
  loc_159688D:   var_200 = var_C0 & var_D0 & " ,U_AE='E',TYPE='" & CVar(global_80) & "',Kitchen='" & CVar(var_12C.Tag) & "' WHERE Code='" & CVar(global_76) 
  loc_15968A4:   unk_459C05.Execute CStr(var_200 & "'"), , 
  loc_15968EE: End If
  loc_159691B: Set var_90 = Me.Txt
  loc_1596921: Call 0.Method_Proc_74_20_15972E40 (CInt(1), var_94, var_9C, "Select Count(*) From UnitMast Where Name='", var_C0, -1)
  loc_1596929: var_98 = var_94.Text
  loc_1596942: unk_459C05.Execute var_118 & var_9C & "'", 0, var_128
  loc_159694A: var_D0 = var_98.Fields
  loc_1596952:  = var_118.Item()
  loc_159695A:  = var_128.Value
  loc_1596987: If (var_D0 <= 0) Then
  loc_15969AF:   Set var_90 = Me.Txt
  loc_15969B5:   Call 0.Method_Proc_74_20_15972E40 (CInt(1), var_94, var_9C, "Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code)" & " Values('")
  loc_15969BD:   var_1B8 = var_94.Text
  loc_15969C6:   var_E8 = -1 & var_9C
  loc_15969F7:   Proc_6_8_EB0DE4(var_D0, CVar(Proc_6_14_EF349C(CVar(var_118 & var_9C & "'" & "','" & MemVar_1F92078 & "','" & MemVar_1F920C8 & "',"))))
  loc_1596A29:   unk_459C05.Execute CStr(var_98 & var_D0 & ",'A','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1596A5D: End If
  loc_1596A63: unk_459C05.CommitTrans
  loc_1596A6C: var_86 = CByte(0) 'Byte
  loc_1596A7B: Me.Requery -1
  loc_1596A8B: Me.Requery -1
  loc_1596A9B: Me.Requery -1
  loc_1596AAE: Set var_90 = Me.Txt
  loc_1596AB4: Call 0.Method_Proc_74_20_15972E40 (CInt(6), var_94)
  loc_1596B0B: Me.Find "SearchCode='" & var_94.Tag & global_76 & "'", 0, 1
  loc_1596B20: var_9C = Form.Name
  loc_1596B30: If (var_9C = "RSSaleBill") Then
  loc_1596B3E:   var_D0 = Me.FGrid.Row
  loc_1596B45:   var_E4 = &HD
  loc_1596B52:   var_1D8 = CVar(global_76) 'String
  loc_1596B61:   VarLateMemCallSt
  loc_1596B76:   var_C0 = Me.FGrid
  loc_1596B97:   Set var_90 = var_94(CInt(0))
  loc_1596B9D:   Call 0.Method_Proc_74_20_15972E40 (var_9C, 5, var_C0.Row, Me.FGrid)
  loc_1596BA5:   var_1D8 = var_C0.TextBox.Text
  loc_1596BAD:   var_F8 = CVar(var_9C) 'String
  loc_1596BBC:   VarLateMemCallSt
  loc_1596BDA:   var_C0 = Me.FGrid
  loc_1596BFB:   Set var_90 = var_94(CInt(3))
  loc_1596C01:   Call 0.Method_Proc_74_20_15972E40 (var_9C, 3, var_C0.Row, Me.FGrid)
  loc_1596C09:   var_F8 = var_C0.TextBox.Text
  loc_1596C11:   var_F8 = CVar(var_9C) 'String
  loc_1596C20:   VarLateMemCallSt
  loc_1596C3E:   var_C0 = Me.FGrid
  loc_1596C4A:   var_E4 = 7
  loc_1596C5F:   Set var_90 = var_94(CInt(1))
  loc_1596C65:   Call 0.Method_Proc_74_20_15972E40 (var_9C, var_E4, var_C0.Row, Me.FGrid)
  loc_1596C6D:   var_F8 = var_C0.TextBox.Text
  loc_1596C84:   VarLateMemCallSt
  loc_1596CA7:   Set var_90 = var_94(CInt(4))
  loc_1596CAD:   Call 0.Method_Proc_74_20_15972E40 (Me.FGrid, CVar(var_9C), var_E4)
  loc_1596CBD:   var_16C = Me.FGrid.Row
  loc_1596CC4:   var_18C = 9
  loc_1596CFE:   VarLateMemCallSt
  loc_1596D21:   Set var_90 = var_94(CInt(4))
  loc_1596D27:   Call 0.Method_Proc_74_20_15972E40 (Me.FGrid, Format(CVar(var_94), "0.00"), 1, 1)
  loc_1596D3E:   var_18C = &HA
  loc_1596D78:   VarLateMemCallSt
  loc_1596D96:   var_C0 = Me.FGrid
  loc_1596DB7:   Set var_90 = var_94(CInt(2))
  loc_1596DBD:   Call 0.Method_Proc_74_20_15972E40 (var_9C, &H1C, var_C0.Row, Me.FGrid, Format(CVar(var_94), "0.00"), 1)
  loc_1596DC5:   1 = var_C0.TextBox.Tag
  loc_1596DCD:   var_F8 = CVar(var_9C) 'String
  loc_1596DDC:   VarLateMemCallSt
  loc_1596E12:   Set var_90 = var_94(CInt(5))
  loc_1596E18:   Call 0.Method_Proc_74_20_15972E40 (var_9C, "Select TaxStru from ItemCatMast where Code='", var_C0, -1, var_98, Me.FGrid)
  loc_1596E20:   var_F8 = Me.TextBox.Tag
  loc_1596E39:   unk_459C05.Execute var_18C & var_9C & "'", Me.FGrid.Row, var_18C
  loc_1596E70:   If (var_98.RecordCount > 0) Then
  loc_1596E79:     var_F8 = Me.FGrid
  loc_1596E7E:     var_108 = var_F8.Row
  loc_1596E85:     var_18C = &H1A
  loc_1596EA3:     var_94 = var_F8.Recordset15.Fields.Item("TaxStru")
  loc_1596EB2:     var_D0 = Trim(CVar(var_94))
  loc_1596EC1:     var_16C = Me.FGrid
  loc_1596EC6:     VarLateMemCallSt
  loc_1596EDF:   Else
  loc_1596EEA:     var_D0 = Me.FGrid.Row
  loc_1596EF1:     var_E4 = &H1A
  loc_1596EF8:     var_1D8 = vbNullString
  loc_1596F04:     var_F8 = Me.FGrid
  loc_1596F09:     VarLateMemCallSt
  loc_1596F18:   End If
  loc_1596F1D:   Set var_8C = Nothing
  loc_1596F2E:   Set var_90 = var_94(CInt(8))
  loc_1596F34:   Call 0.Method_Proc_74_20_15972E40 (var_9C, var_F8, var_1D8, var_E4, var_D0, var_16C)
  loc_1596F3C:   var_D0 = Me.TextBox.Text
  loc_1596F87:   VarLateMemCallSt
  loc_1596FB1:   Set var_90 = var_94(CInt(7))
  loc_1596FB7:   Call 0.Method_Proc_74_20_15972E40 (var_9C, Me.FGrid, Left(Trim(CVar(var_9C)), 1), &H15, Me.FGrid.Row)
  loc_1596FBF:   var_18C = Me.TextBox.Text
  loc_1596FDD:   var_16C = Me.FGrid.Row
  loc_159700A:   VarLateMemCallSt
  loc_1597034:   Set var_90 = var_94(CInt(9))
  loc_159703A:   Call 0.Method_Proc_74_20_15972E40 (var_9C, Me.FGrid, Left(Trim(CVar(var_9C)), 1), &H1D)
  loc_1597042:   var_16C = Me.TextBox.Text
  loc_1597060:   var_16C = Me.FGrid.Row
  loc_1597067:   var_E4 = &H1E
  loc_1597079:   var_F8 = Left(Trim(CVar(var_9C)), 1)
  loc_1597088:   var_17C = Me.FGrid
  loc_159708D:   VarLateMemCallSt
  loc_15970AC: Else
  loc_15970B7:   var_D0 = Me.FGrid.Row
  loc_15970BE:   var_E4 = &HA
  loc_15970DA:   VarLateMemCallSt
  loc_15970EF:   var_C0 = Me.FGrid
  loc_1597110:   Set var_90 = var_94(CInt(0))
  loc_1597116:   Call 0.Method_Proc_74_20_15972E40 (var_9C, 4, var_C0.Row, Me.FGrid, CVar(global_76), 4)
  loc_159711E:   var_D0 = var_C0.TextBox.Text
  loc_1597135:   VarLateMemCallSt
  loc_1597153:   var_C0 = Me.FGrid
  loc_1597174:   Set var_90 = var_94(CInt(3))
  loc_159717A:   Call 0.Method_Proc_74_20_15972E40 (var_9C, 3, var_C0.Row, Me.FGrid, CVar(var_9C))
  loc_1597182:   var_17C = var_C0.TextBox.Text
  loc_1597199:   VarLateMemCallSt
  loc_15971B7:   var_C0 = Me.FGrid
  loc_15971C3:   var_E4 = 5
  loc_15971D8:   Set var_90 = var_94(CInt(1))
  loc_15971DE:   Call 0.Method_Proc_74_20_15972E40 (var_9C, var_E4, var_C0.Row, Me.FGrid, CVar(var_9C))
  loc_15971E6:   var_F8 = var_C0.TextBox.Text
  loc_15971FD:   VarLateMemCallSt
  loc_1597220:   Set var_90 = var_94(CInt(4))
  loc_1597226:   Call 0.Method_Proc_74_20_15972E40 (Me.FGrid, CVar(var_9C), var_E4)
  loc_1597231:   var_108 = Me.FGrid
  loc_1597236:   var_16C = var_108.Row
  loc_159723D:   var_18C = 8
  loc_1597253:   var_D0 = "0.00"
  loc_1597263:   var_F8 = Format(CVar(var_94), var_D0)
  loc_1597272:   var_17C = Me.FGrid
  loc_1597277:   VarLateMemCallSt
  loc_159728F: End If
  loc_159728F: Exit Sub
  loc_1597290: ' Referenced from: 15961EC
  loc_1597299: If (CInt(var_86) = 1) Then
  loc_15972A2:   Me.Connection15.RollbackTrans
  loc_15972A7: End If
  loc_15972AF: Set var_90 = Err()
  loc_15972B5: Call 0.Method_arg_2C (var_9C, var_17C, var_F8, 1, 1)
  loc_15972CE: MsgBox(CVar(var_9C), &H10, var_D0, var_F8, var_108)
  loc_15972E1: Exit Sub
End Sub

Public Sub Proc_74_21_E76CA4(arg_C) 'E76CA4
  'Data Table: 459BF0
  Dim var_98 As TextBox
  loc_E76C52: Set var_8C = Me.Txt
  loc_E76C58: Call 0.Method_Proc_74_21_E76CA4C (var_8E, var_86)
  loc_E76C68: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E76C7E:   Set var_8C = Me.Txt
  loc_E76C84:   Call 0.Method_Proc_74_21_E76CA40 (CInt(var_86), var_98)
  loc_E76C8C:   var_98.Enabled = arg_C
  loc_E76C9B: Next var_92 'Byte
  loc_E76CA1: Exit Sub
End Sub

Public Sub Proc_74_22_EAE02C
  'Data Table: 459BF0
  Dim var_98 As TextBox
  loc_EADFAA: Set var_8C = Me.Txt
  loc_EADFB0: Call 0.Method_Proc_74_22_EAE02CC (var_8E, var_86)
  loc_EADFC0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EADFD6:   Set var_8C = Me.Txt
  loc_EADFDC:   Call 0.Method_Proc_74_22_EAE02C0 (CInt(var_86), var_98)
  loc_EADFE4:   var_98.Text = vbNullString
  loc_EADFF3: Next var_92 'Byte
  loc_EAE00C: Set var_8C = Me.Txt
  loc_EAE012: Call 0.Method_Proc_74_22_EAE02C0 (CInt(3), var_98)
  loc_EAE01A: var_98.Text = CStr(9999)
  loc_EAE029: Exit Sub
  loc_EAE02A: Set arg_7874 = 
End Sub

Public Sub Proc_74_23_125861C
  'Data Table: 459BF0
  Dim Me As Recordset15
  Dim var_BC As TextBox
  loc_12580A8: On Error Goto loc_1258616
  loc_12580B1: Proc_183_45_E5C118(global_52)
  loc_12580CD: If (Me.RecordCount <= 0) Then
  loc_12580D0:   Call Proc_74_22_EAE02C()
  loc_12580D8: Else
  loc_125810C:   global_80 = CStr(Me.Fields.Item("Type").Value)
  loc_1258151:   global_76 = CStr(Me.Fields.Item("Name").Value)
  loc_125819E:   Set var_B8 = Me.Txt
  loc_12581A4:   Call 0.Method_Proc_74_23_125861C0 (CInt(0), var_BC)
  loc_12581AC:   var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12581FE:   Set var_B8 = Me.Txt
  loc_1258204:   Call 0.Method_Proc_74_23_125861C0 (CInt(0), var_BC)
  loc_125820C:   var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_125825E:   Set var_B8 = Me.Txt
  loc_1258264:   Call 0.Method_Proc_74_23_125861C0 (CInt(3), var_BC)
  loc_125826C:   var_BC.Text = CStr(Me.Fields.Item("DispCode").Value)
  loc_12582BB:   Set var_B8 = Me.Txt
  loc_12582C1:   Call 0.Method_Proc_74_23_125861C0 (CInt(8), var_BC)
  loc_12582C9:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")))
  loc_1258316:   Set var_B8 = Me.Txt
  loc_125831C:   Call 0.Method_Proc_74_23_125861C0 (CInt(7), var_BC)
  loc_1258324:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrApp")))
  loc_1258371:   Set var_B8 = Me.Txt
  loc_1258377:   Call 0.Method_Proc_74_23_125861C0 (CInt(9), var_BC)
  loc_125837F:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RateIncTax")))
  loc_12583CC:   Set var_B8 = Me.Txt
  loc_12583D2:   Call 0.Method_Proc_74_23_125861C0 (CInt(1), var_BC)
  loc_12583DA:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")))
  loc_1258427:   Set var_B8 = Me.Txt
  loc_125842D:   Call 0.Method_Proc_74_23_125861C0 (CInt(5), var_BC)
  loc_1258435:   var_BC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemCatCode")))
  loc_1258482:   Set var_B8 = Me.Txt
  loc_1258488:   Call 0.Method_Proc_74_23_125861C0 (CInt(5), var_BC)
  loc_1258490:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemCategory")))
  loc_12584DD:   Set var_B8 = Me.Txt
  loc_12584E3:   Call 0.Method_Proc_74_23_125861C0 (CInt(6), var_BC)
  loc_12584EB:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestName")))
  loc_1258538:   Set var_B8 = Me.Txt
  loc_125853E:   Call 0.Method_Proc_74_23_125861C0 (CInt(6), var_BC)
  loc_1258546:   var_BC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestCode")))
  loc_1258593:   Set var_B8 = Me.Txt
  loc_1258599:   Call 0.Method_Proc_74_23_125861C0 (CInt(2), var_BC)
  loc_12585A1:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("KitchenName")))
  loc_12585EE:   Set var_B8 = Me.Txt
  loc_12585F4:   Call 0.Method_Proc_74_23_125861C0 (CInt(2), var_BC)
  loc_12585FC:   var_BC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")))
  loc_1258610: End If
  loc_1258610: Call Proc_74_25_EF9630()
  loc_1258615: Exit Sub
  loc_1258616: ' Referenced from: 12580A8
  loc_1258616: Proc_6_60_E62BC4()
  loc_125861B: Exit Sub
End Sub

Public Sub Proc_74_24_1080570
  'Data Table: 459BF0
  Dim Me As Recordset15
  Dim var_C8 As TextBox
  Dim unk_459C05 As Connection15
  Dim var_E0 As Fields15
  Dim var_F4 As Field20
  loc_1080307: If (Me.RecordCount = 0) Then
  loc_108030A:   Proc_74_24_1080570 = 
  loc_1080310: End If
  loc_1080314: Set var_90 = Me.TopCtrl1
  loc_108031A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_108032F: If ( = "Add") Then
  loc_108036D:   Set var_90 = Me.Txt
  loc_1080373:   Call 0.Method_Proc_74_24_10805700 (CInt(0), var_C8, var_CC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1)
  loc_1080394:   unk_459C05.Execute var_E0 & var_CC & "' And Type IN ('Finish','Semi Finish') And DispCode=9999", 0, var_F4
  loc_10803A4:    = var_E0.Item()
  loc_10803AC:    = var_F4.Value
  loc_10803DD:   If (var_C8.Text.Fields > 0) Then
  loc_10803FB:     var_B0 = "Duplicate Name"
  loc_1080401:     MsgBox(var_B0, &H40, "Information", var_114, var_134)
  loc_108041C:     Set var_90 = Me.Txt
  loc_1080422:     Call 0.Method_Proc_74_24_10805700 (CInt(0))
  loc_108042A:     var_C8.SetFocus
  loc_108043B:     Proc_74_24_1080570 = &HFF
  loc_1080441:   End If
  loc_1080444: Else
  loc_108047F:   Set var_90 = Me.Txt
  loc_1080485:   Call 0.Method_Proc_74_24_10805700 (CInt(0), var_C8, var_CC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1)
  loc_10804B7:   unk_459C05.Execute var_E0 & var_CC & "' And Name<>'" & global_76 & "' And Type IN ('Finish','Semi Finish') And DispCode=9999", 0, var_F4
  loc_10804C7:    = var_E0.Item(var_C8)
  loc_10804CF:    = var_F4.Value
  loc_1080504:   If (var_C8.Text.Fields > 0) Then
  loc_1080528:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1080543:     Set var_90 = Me.Txt
  loc_1080549:     Call 0.Method_Proc_74_24_10805700 (CInt(0))
  loc_1080551:     var_C8.SetFocus
  loc_1080562:     Proc_74_24_1080570 = &HFF
  loc_1080568:   End If
  loc_1080568: End If
  loc_1080568: Proc_74_24_1080570 = var_C8
End Sub

Public Sub Proc_74_25_EF9630
  'Data Table: 459BF0
  loc_EF9570: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF9582:   Me.DGHelp.Visible = False
  loc_EF958A: End If
  loc_EF95A6: If (CBool(().Visible) = &HFF) Then
  loc_EF95B8:   (False).Visible = 
  loc_EF95C0: End If
  loc_EF95DC: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_EF95EE:   Me.DGItemCat.Visible = False
  loc_EF95F6: End If
  loc_EF9612: If (CBool(().Visible) = &HFF) Then
  loc_EF9624:   (False).Visible = 
  loc_EF962C: End If
  loc_EF962C: Exit Sub
End Sub

Public Sub Proc_74_26_FB2C74
  'Data Table: 459BF0
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As TextBox
  Dim var_88 As DataGrid
  loc_FB2AD4: On Error Goto loc_FB2C6C
  loc_FB2AE5: Set var_88 = Me.Txt
  loc_FB2AEB: Call 0.Method_Proc_74_26_FB2C740 (CInt(0), var_8C)
  loc_FB2B0A: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_FB2B26: Set var_B4 = Me.Txt
  loc_FB2B2C: Call 0.Method_Proc_74_26_FB2C740 (CInt(0), var_B8)
  loc_FB2B47: Set var_88 = Me.Txt
  loc_FB2B4D: Call 0.Method_Proc_74_26_FB2C740 (CInt(0), var_8C)
  loc_FB2B65: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_FB2B74: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_FB2B99: (CVar(CDbl(7000))).Left = 
  loc_FB2BB4: (CVar(CDbl(2700))).Top = 
  loc_FB2BCA: Set var_88 = Me.Txt
  loc_FB2BD0: Call 0.Method_Proc_74_26_FB2C740 (CInt(1), var_8C)
  loc_FB2BEF: (CVar(var_8C.Left)).Left = 
  loc_FB2C0B: Set var_B4 = Me.Txt
  loc_FB2C11: Call 0.Method_Proc_74_26_FB2C740 (CInt(1), var_B8)
  loc_FB2C2C: Set var_88 = Me.Txt
  loc_FB2C32: Call 0.Method_Proc_74_26_FB2C740 (CInt(1), var_8C)
  loc_FB2C4A: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_FB2C59: (CVar(var_8C.Left)).Top = 
  loc_FB2C6B: Exit Sub
  loc_FB2C6C: ' Referenced from: FB2AD4
  loc_FB2C6C: Proc_6_60_E62BC4()
  loc_FB2C71: Exit Sub
End Sub

Public Sub Proc_74_27_E80D94
  'Data Table: 459BF0
  loc_E80D34: Call Proc_74_25_EF9630()
  loc_E80D70: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E80D73:   Call Proc_74_20_15972E4()
  loc_E80D7B: Else
  loc_E80D81:   Call 0.Method_arg_1E8 (var_108)
  loc_E80D89:   Call var_108.SetFocus
  loc_E80D92: End If
  loc_E80D92: Exit Sub
End Sub
