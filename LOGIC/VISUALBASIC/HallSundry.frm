VERSION 5.00
Begin VB.Form HallSundry
  Caption = "Outlet Bill Sundry Setting"
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
  ClientWidth = 11625
  ClientHeight = 7155
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11625
    Height = 450
    TabIndex = 14
  End
  Begin TextBox txtPassword
    Left = 2625
    Top = 7380
    Width = 1365
    Height = 285
    TabIndex = 9
    PasswordChar = "#"
  End
  Begin Frame Frame1
    Left = 11040
    Top = 1815
    Width = 555
    Height = 2040
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Begin CommandButton CmdUp
      Caption = "�"
      BackColor = &H808080&
      Left = 90
      Top = 270
      Width = 390
      Height = 630
      TabIndex = 8
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton CmdDown
      Caption = "�"
      BackColor = &H808080&
      Left = 83
      Top = 1125
      Width = 390
      Height = 630
      TabIndex = 7
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin DataGrid DGSundry
    Left = 11520
    Top = 1290
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGRevenue
    Left = 11550
    Top = 600
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2265
    Top = 1275
    Width = 1425
    Height = 255
    TabIndex = 0
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1065
    Top = 2460
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 315
    Top = 1605
    Width = 13290
    Height = 4740
    TabIndex = 2
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 13
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
    Top = 8760
    Width = 2430
    Height = 285
    TabIndex = 12
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
    Top = 8430
    Width = 2520
    Height = 255
    TabIndex = 11
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
    Caption = "Password"
    Index = 2
    ForeColor = &H80&
    Left = 1605
    Top = 7410
    Width = 915
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
    Caption = "Applicable Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 690
    Top = 1245
    Width = 1515
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

Attribute VB_Name = "HallSundry"

Private global_72 As Integer
Private global_74 As Integer
Private MasterFormExit As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '11E2140
  'Data Table: 4BC9B4
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_11E1CC8: Call Proc_119_60_E843D0()
  loc_11E1CE0: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11E1CFB: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E1D04: Set var_BC = Me.FGrid
  loc_11E1D3A: Set var_104 = Me.TxtGrid
  loc_11E1D40: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_11E1D48: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_11E1D79: var_110 = CLng(Me.FGrid.Col)
  loc_11E1D89: If (var_110 = CLng(3)) Then
  loc_11E1D9B:   Set var_A8 = Me.TxtGrid
  loc_11E1DA1:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E1DA9:   var_BC.MaxLength = var_110
  loc_11E1DF6:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E1DF9:     Exit Sub
  loc_11E1DFA:   End If
  loc_11E1E0D:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E1E15:   var_DC = CVar(CLng(3)) 'Long
  loc_11E1E48:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E1E51:     Me.MoveFirst
  loc_11E1E69:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E1E71:     var_DC = CVar(CLng(2)) 'Long
  loc_11E1E7A:     Set var_BC = Me.FGrid
  loc_11E1E91:     Proc_6_17_EAA2B0(var_128, CVar(CStr(var_BC.TextMatrix))), var_DC, var_94)
  loc_11E1EBA:     Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E1EEA:     If (Me.EOF = &HFF) Then
  loc_11E1EF3:       Me.MoveFirst
  loc_11E1EF8:     End If
  loc_11E1EF8:   End If
  loc_11E1EFB: Else
  loc_11E1F02:   If Not (var_110 = CLng(7)) Then
  loc_11E1F0C:     If (var_110 = CLng(9)) Then
  loc_11E1F0F:     End If
  loc_11E1F1E:     Set var_A8 = Me.TxtGrid
  loc_11E1F24:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_158)
  loc_11E1F2C:     var_BC.MaxLength = var_DC
  loc_11E1F41:     If (global_74 = 0) Then
  loc_11E1F4C:       var_10C = "{Home}+{End}"
  loc_11E1F52:       Proc_303_0_FB9B68(CStr("Code=" & var_128), 0)
  loc_11E1F5A:     End If
  loc_11E1F5D:   Else
  loc_11E1F64:     If (var_110 = CLng(4)) Then
  loc_11E1F76:       Set var_A8 = Me.TxtGrid
  loc_11E1F7C:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E1F84:       var_BC.MaxLength = var_94
  loc_11E1F93:     Else
  loc_11E1F9A:       If (var_110 = CLng(5)) Then
  loc_11E1FAC:         Set var_A8 = Me.TxtGrid
  loc_11E1FB2:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E1FBA:         var_BC.MaxLength = &H32
  loc_11E1FC9:       Else
  loc_11E1FD0:         If (var_110 = CLng(&HD)) Then
  loc_11E1FE2:           Set var_A8 = Me.TxtGrid
  loc_11E1FE8:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E1FF0:           var_BC.MaxLength = &H32
  loc_11E203D:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E2040:             Exit Sub
  loc_11E2041:           End If
  loc_11E2054:           var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E205C:           var_DC = CVar(CLng(&HD)) 'Long
  loc_11E208F:           If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E2098:             Me.MoveFirst
  loc_11E20D8:             Proc_6_17_EAA2B0(var_128, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_11E2101:             Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E2131:             If (Me.EOF = &HFF) Then
  loc_11E213A:               Me.MoveFirst
  loc_11E213F:             End If
  loc_11E213F:           End If
  loc_11E213F:         End If
  loc_11E213F:       End If
  loc_11E213F:     End If
  loc_11E213F:   End If
  loc_11E213F: End If
  loc_11E213F: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13BAD8C
  'Data Table: 4BC9B4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C8 As Variant
  Dim var_94 As DataGrid
  loc_13BA41C: On Error Goto loc_13BAD86
  loc_13BA429: If (CLng(Shift) = &H1B) Then
  loc_13BA439:   Set var_88 = Me.TxtGrid
  loc_13BA43F:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13BA459:   Set var_94 = Me.TxtGrid
  loc_13BA45F:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_13BA467:   var_98.Text = var_8C.Tag
  loc_13BA483:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13BA488:   Call Proc_119_60_E843D0(arg_14)
  loc_13BA491:   Set var_88 = Me.FGrid
  loc_13BA4AE:   Set var_88 = Me.TxtGrid
  loc_13BA4B4:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13BA4BC:   var_8C.Visible = False
  loc_13BA4C8:   Exit Sub
  loc_13BA4C9: End If
  loc_13BA4DC: var_AC = CLng(Me.FGrid.Col)
  loc_13BA4EC: If (var_AC = CLng(1)) Then
  loc_13BA4F9:   If (CLng(Shift) = &HD) Then
  loc_13BA502:     Call Proc_119_56_15060D8(KeyCode, var_AE)
  loc_13BA50D:     If (var_AE = &HFF) Then
  loc_13BA51B:       Set var_98 = Me.TxtGrid
  loc_13BA544:       Set var_8C = var_98
  loc_13BA553:       Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_74, &HF)
  loc_13BA563:     End If
  loc_13BA563:   End If
  loc_13BA566: Else
  loc_13BA56D:   If (var_AC = CLng(3)) Then
  loc_13BA57C:     Set var_88 = Me.TxtGrid
  loc_13BA582:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0)
  loc_13BA58A:     3 = var_8C.Left
  loc_13BA5A1:     Me.DGSundry.Left = CVar(var_B8)
  loc_13BA5BB:     Set var_94 = Me.TxtGrid
  loc_13BA5C1:     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13BA5C9:     0 = var_98.Height
  loc_13BA5DA:     Set var_88 = Me.TxtGrid
  loc_13BA5E0:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13BA5E8:     var_AC = var_8C.Top
  loc_13BA5F4:     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13BA603:     Me.DGSundry.Top = CVar(var_B8)
  loc_13BA62D:     Set var_98 = Nothing
  loc_13BA666:     Proc_6_69_134A198(Me.DGSundry, Me.TxtGrid, KeyCode, global_84, Shift, &HFF)
  loc_13BA684:     If (CLng(Shift) = &HD) Then
  loc_13BA68D:       Call Proc_119_56_15060D8(KeyCode, var_AE, 1, Nothing)
  loc_13BA698:       If (var_AE = &HFF) Then
  loc_13BA6DE:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF)
  loc_13BA6EE:       End If
  loc_13BA6EE:     End If
  loc_13BA6F1:   Else
  loc_13BA6F8:     If (var_AC = CLng(4)) Then
  loc_13BA73B:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BA744:         Call Proc_119_56_15060D8(KeyCode, var_AE, 0, 4)
  loc_13BA74F:         If (var_AE = &HFF) Then
  loc_13BA795:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BA7A5:         End If
  loc_13BA7A5:       End If
  loc_13BA7A8:     Else
  loc_13BA7AF:       If (var_AC = CLng(5)) Then
  loc_13BA7F2:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BA7FB:           Call Proc_119_56_15060D8(KeyCode, var_AE, 5, 0)
  loc_13BA806:           If (var_AE = &HFF) Then
  loc_13BA84C:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BA85C:           End If
  loc_13BA85C:         End If
  loc_13BA85F:       Else
  loc_13BA866:         If (var_AC = CLng(6)) Then
  loc_13BA8A9:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BA8B2:             Call Proc_119_56_15060D8(KeyCode, var_AE, 6, 0)
  loc_13BA8BD:             If (var_AE = &HFF) Then
  loc_13BA903:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BA913:             End If
  loc_13BA913:           End If
  loc_13BA916:         Else
  loc_13BA91D:           If (var_AC = CLng(7)) Then
  loc_13BA960:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BA969:               Call Proc_119_56_15060D8(KeyCode, var_AE, 7, 0)
  loc_13BA974:               If (var_AE = &HFF) Then
  loc_13BA9BA:                 Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BA9CA:               End If
  loc_13BA9CA:             End If
  loc_13BA9CD:           Else
  loc_13BA9D4:             If Not (var_AC = CLng(8)) Then
  loc_13BA9DE:               If (var_AC = CLng(&H10)) Then
  loc_13BA9E1:               End If
  loc_13BAA21:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BAA2A:                 Call Proc_119_56_15060D8(KeyCode, var_AE, &HC, 0)
  loc_13BAA35:                 If (var_AE = &HFF) Then
  loc_13BAA7B:                   Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BAA8B:                 End If
  loc_13BAA8B:               End If
  loc_13BAA8E:             Else
  loc_13BAA95:               If (var_AC = CLng(9)) Then
  loc_13BAAD8:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BAAE1:                   Call Proc_119_56_15060D8(KeyCode, var_AE, 9, 0)
  loc_13BAAEC:                   If (var_AE = &HFF) Then
  loc_13BAB32:                     Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BAB42:                   End If
  loc_13BAB42:                 End If
  loc_13BAB45:               Else
  loc_13BAB4C:                 If (var_AC = CLng(&HC)) Then
  loc_13BAB8F:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BAB98:                     Call Proc_119_56_15060D8(KeyCode, var_AE, &HC, 0)
  loc_13BABA3:                     If (var_AE = &HFF) Then
  loc_13BABB1:                       Set var_98 = Me.TxtGrid
  loc_13BABDA:                       Set var_8C = var_98
  loc_13BABE9:                       Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_74, &HF, 0)
  loc_13BABF9:                     End If
  loc_13BABF9:                   End If
  loc_13BABFC:                 Else
  loc_13BAC03:                   If (var_AC = CLng(&HD)) Then
  loc_13BAC12:                     Set var_88 = Me.TxtGrid
  loc_13BAC18:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0, 0)
  loc_13BAC20:                     0 = var_8C.Left
  loc_13BAC37:                     Me.DGRevenue.Left = CVar(var_B8)
  loc_13BAC51:                     Set var_94 = Me.TxtGrid
  loc_13BAC57:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13BAC5F:                     var_98 = var_98.Height
  loc_13BAC70:                     Set var_88 = Me.TxtGrid
  loc_13BAC76:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13BAC7E:                     0 = var_8C.Top
  loc_13BAC8A:                     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13BAC99:                     Me.DGRevenue.Top = CVar(var_B8)
  loc_13BACC3:                     Set var_98 = Nothing
  loc_13BACFC:                     Proc_6_69_134A198(Me.DGRevenue, Me.TxtGrid, KeyCode, global_88, Shift, &HFF)
  loc_13BAD1A:                     If (CLng(Shift) = &HD) Then
  loc_13BAD23:                       Call Proc_119_56_15060D8(KeyCode, var_AE, 1, Nothing)
  loc_13BAD2E:                       If (var_AE = &HFF) Then
  loc_13BAD76:                         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF)
  loc_13BAD86:                       End If
  loc_13BAD86:                     End If
  loc_13BAD86:                   End If
  loc_13BAD86:                 End If
  loc_13BAD86:               End If
  loc_13BAD86:             End If
  loc_13BAD86:           End If
  loc_13BAD86:         End If
  loc_13BAD86:       End If
  loc_13BAD86:       ' Referenced from: 13BA41C
  loc_13BAD86:     End If
  loc_13BAD86:   End If
  loc_13BAD86: End If
  loc_13BAD86: Proc_6_60_E62BC4(CByte(1), 0, 0)
  loc_13BAD8B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '116C74C
  'Data Table: 4BC9B4
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B4 As Integer
  Dim arg_10 As Integer
  Dim var_AC As TextBox
  loc_116C383: Proc_6_58_E054C0(arg_10)
  loc_116C394: If (KeyAscii = 0) Then
  loc_116C3AA:   var_A0 = CLng(Me.FGrid.Col)
  loc_116C3BA:   If (var_A0 = CLng(3)) Then
  loc_116C3D9:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_116C3E0:       Set var_AC = Me.TxtGrid
  loc_116C3EB:       var_A4 = "Name"
  loc_116C406:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_84, arg_10)
  loc_116C415:     End If
  loc_116C418:   Else
  loc_116C41F:     If Not (var_A0 = CLng(9)) Then
  loc_116C429:       If (var_A0 = CLng(7)) Then
  loc_116C42C:       End If
  loc_116C436:       Set var_8C = Me.TxtGrid
  loc_116C43C:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_116C457:       Proc_6_42_129A86C(var_AC, arg_10, 8, 2)
  loc_116C466:     Else
  loc_116C46D:       If (var_A0 = CLng(5)) Then
  loc_116C473:         var_B4 = arg_10
  loc_116C47F:         If Not (&H39 > var_B4 > &H31) Then
  loc_116C488:           If Not (var_B4 = &H2B) Then
  loc_116C491:             If Not (var_B4 = &H2D) Then
  loc_116C49A:               If Not (var_B4 = 8) Then
  loc_116C4A3:                 If (var_B4 = &H30) Then
  loc_116C4A6:                 End If
  loc_116C4A6:               End If
  loc_116C4A6:             End If
  loc_116C4A6:           End If
  loc_116C4A9:         Else
  loc_116C4AB:           arg_10 = 0
  loc_116C4AE:         End If
  loc_116C4B1:       Else
  loc_116C4B8:         If (var_A0 = CLng(6)) Then
  loc_116C4C8:           If ((arg_10 = &H50) Or (arg_10 = &H70)) Then
  loc_116C4D8:             Set var_8C = Me.TxtGrid
  loc_116C4DE:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Per", arg_10)
  loc_116C4E6:             var_AC.Text = var_B4
  loc_116C4F4:             arg_10 = 0
  loc_116C4FA:           Else
  loc_116C507:             If ((arg_10 = &H41) Or (arg_10 = &H5A)) Then
  loc_116C517:               Set var_8C = Me.TxtGrid
  loc_116C51D:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Amt", arg_10)
  loc_116C525:               var_AC.Text = 0
  loc_116C533:               arg_10 = 0
  loc_116C539:             Else
  loc_116C546:               Set var_8C = Me.TxtGrid
  loc_116C54C:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_116C554:               var_AC.Text = arg_10
  loc_116C562:               arg_10 = 0
  loc_116C565:             End If
  loc_116C565:           End If
  loc_116C568:         Else
  loc_116C56F:           If Not (var_A0 = CLng(8)) Then
  loc_116C579:             If (var_A0 = CLng(&HC)) Then
  loc_116C57C:             End If
  loc_116C589:             If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_116C599:               Set var_8C = Me.TxtGrid
  loc_116C59F:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_116C5A7:               var_AC.Text = arg_10
  loc_116C5B5:               arg_10 = 0
  loc_116C5BB:             Else
  loc_116C5C8:               If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_116C5D8:                 Set var_8C = Me.TxtGrid
  loc_116C5DE:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_116C5E6:                 var_AC.Text = arg_10
  loc_116C5F4:                 arg_10 = 0
  loc_116C5FA:               Else
  loc_116C607:                 Set var_8C = Me.TxtGrid
  loc_116C60D:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_116C615:                 var_AC.Text = arg_10
  loc_116C623:                 arg_10 = 0
  loc_116C626:               End If
  loc_116C626:             End If
  loc_116C629:           Else
  loc_116C630:             If (var_A0 = CLng(&H10)) Then
  loc_116C65C:               If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_116C66C:                 Set var_8C = Me.TxtGrid
  loc_116C672:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Auto")
  loc_116C67A:                 var_AC.Text = arg_10
  loc_116C688:                 arg_10 = 0
  loc_116C68E:               Else
  loc_116C6B7:                 If (Ucase(Chr(CLng(arg_10))) = "M") Then
  loc_116C6C7:                   Set var_8C = Me.TxtGrid
  loc_116C6CD:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Manual")
  loc_116C6D5:                   var_AC.Text = arg_10
  loc_116C6E3:                   arg_10 = 0
  loc_116C6E6:                 End If
  loc_116C6E6:               End If
  loc_116C6E9:             Else
  loc_116C6F0:               If (var_A0 = CLng(&HD)) Then
  loc_116C70F:                 If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_116C73C:                   Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_88, arg_10, "Name")
  loc_116C74B:                 End If
  loc_116C74B:               End If
  loc_116C74B:             End If
  loc_116C74B:           End If
  loc_116C74B:         End If
  loc_116C74B:       End If
  loc_116C74B:     End If
  loc_116C74B:   End If
  loc_116C74B: End If
  loc_116C74B: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FBAEF8
  'Data Table: 4BC9B4
  Dim var_9C As Long
  Dim var_AA As Integer
  Dim Shift As Integer
  loc_FBAD48: On Error Goto loc_FBAEF1
  loc_FBAD5E: var_9C = CLng(Me.FGrid.Col)
  loc_FBAD6E: If (var_9C = CLng(3)) Then
  loc_FBAD94:   If ((Shift <> &HD) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_FBADA2:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FBADB6:     var_A4 = "Name"
  loc_FBADD1:     Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_84, Shift)
  loc_FBADE0:   End If
  loc_FBADE3: Else
  loc_FBADEA:   If Not (var_9C = CLng(6)) Then
  loc_FBADF4:     If Not (var_9C = CLng(8)) Then
  loc_FBADFE:       If Not (var_9C = CLng(&HC)) Then
  loc_FBAE08:         If Not (var_9C = CLng(5)) Then
  loc_FBAE12:           If (var_9C = CLng(&H10)) Then
  loc_FBAE15:           End If
  loc_FBAE15:         End If
  loc_FBAE15:       End If
  loc_FBAE15:     End If
  loc_FBAE1B:     If (Shift <> &HD) Then
  loc_FBAE24:       Call TxtGrid_KeyPress(KeyCode)
  loc_FBAE29:     End If
  loc_FBAE2C:   Else
  loc_FBAE33:     If (var_9C = CLng(&HD)) Then
  loc_FBAE59:       If ((Shift <> &HD) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_FBAE67:         Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FBAE96:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_88, Shift, "Name", &HFF)
  loc_FBAEA5:       End If
  loc_FBAEA8:     Else
  loc_FBAEAF:       If (var_9C = CLng(5)) Then
  loc_FBAEB5:         var_AA = Shift
  loc_FBAEC1:         If Not (&H39 > var_AA > &H31) Then
  loc_FBAECA:           If Not (var_AA = &H2B) Then
  loc_FBAED3:             If Not (var_AA = &H2D) Then
  loc_FBAEDC:               If Not (var_AA = 8) Then
  loc_FBAEE5:                 If (var_AA = &H30) Then
  loc_FBAEE8:                 End If
  loc_FBAEE8:               End If
  loc_FBAEE8:             End If
  loc_FBAEE8:           End If
  loc_FBAEEB:         Else
  loc_FBAEED:           Shift = 0
  loc_FBAEF0:         End If
  loc_FBAEF0:       End If
  loc_FBAEF0:     End If
  loc_FBAEF0:   End If
  loc_FBAEF0: End If
  loc_FBAEF0: Exit Sub
  loc_FBAEF1: ' Referenced from: FBAD48
  loc_FBAEF1: Proc_6_60_E62BC4(Shift, var_AA, 0, Shift)
  loc_FBAEF6: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20928
  'Data Table: 4BC9B4
  Dim arg_10 As Integer
  loc_E20910: If (Cancel = 0) Then
  loc_E20919:   Call Proc_119_56_15060D8(Cancel, var_88)
  loc_E20922:   arg_10 = Not(var_88)
  loc_E20925: End If
  loc_E20925: Exit Sub
End Sub

Private Sub CmdUp_Click() '10F2624
  'Data Table: 4BC9B4
  Dim var_DC As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  loc_10F2397: If (CLng(Me.FGrid.Row) = (CLng(Me.FGrid.Rows) - 1)) Then
  loc_10F239A:   Exit Sub
  loc_10F239B: End If
  loc_10F23BA: If (CLng(Me.FGrid.Row) = 0) Then
  loc_10F23BD:   Exit Sub
  loc_10F23BE: End If
  loc_10F23DD: If (CLng(Me.FGrid.Row) = 1) Then
  loc_10F23E0:   Exit Sub
  loc_10F23E1: End If
  loc_10F2400: If (CLng(Me.FGrid.Row) = 2) Then
  loc_10F2403:   Exit Sub
  loc_10F2404: End If
  loc_10F2418: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_10F2446: For var_F0 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_F0 'Integer
  loc_10F2450:   var_100 = CVar(CLng(var_86)) 'Long
  loc_10F2459:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F247D:   var_A0(CLng(var_C2)) = CStr(Me.FGrid.TextMatrix))
  loc_10F248A: Next var_F0 'Integer
  loc_10F24B4: For var_138 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_138 'Integer
  loc_10F24CD:   var_15C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F24D6:   var_17C = CVar(CLng(var_C2)) 'Long
  loc_10F24F4:   var_100 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_10F24FD:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F2517:   var_19C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_10F251F:   Set var_1B0 = Me.FGrid
  loc_10F2525:   LateIdCallSt
  loc_10F2546: Next var_138 'Integer
  loc_10F2570: For var_1B4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_1B4 'Integer
  loc_10F258F:   var_100 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_10F2598:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F25AD:   Set var_DC = Me.FGrid
  loc_10F25B3:   LateIdCallSt
  loc_10F25C8: Next var_1B4 'Integer
  loc_10F25D4: var_100 = CVar(CLng((var_86 - 1))) 'Long
  loc_10F25E3: Me.FGrid.Row = var_100
  loc_10F260D: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_10F261C: Call Proc_119_51_E7F340()
  loc_10F2621: Exit Sub
End Sub

Private Sub CmdDown_Click() '1094B20
  'Data Table: 4BC9B4
  Dim var_C0 As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  loc_10948BF: If (CLng(Me.FGrid.Row) = 1) Then
  loc_10948C2:   Exit Sub
  loc_10948C3: End If
  loc_10948FE: If (CLng(Me.FGrid.Row) = (CLng(Me.FGrid.Rows) - 2)) Then
  loc_1094901:   Exit Sub
  loc_1094902: End If
  loc_1094916: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_1094944: For var_D4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_D4 'Integer
  loc_109494E:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_1094957:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_109497B:   var_A0(CLng(var_A6)) = CStr(Me.FGrid.TextMatrix))
  loc_1094988: Next var_D4 'Integer
  loc_10949B2: For var_11C = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_11C 'Integer
  loc_10949CB:   var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10949D4:   var_160 = CVar(CLng(var_A6)) 'Long
  loc_10949F2:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_10949FB:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_1094A15:   var_180 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1094A1D:   Set var_194 = Me.FGrid
  loc_1094A23:   LateIdCallSt
  loc_1094A44: Next var_11C 'Integer
  loc_1094A6E: For var_198 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_198 'Integer
  loc_1094A8D:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_1094A96:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_1094AAB:   Set var_C0 = Me.FGrid
  loc_1094AB1:   LateIdCallSt
  loc_1094AC6: Next var_198 'Integer
  loc_1094AD2: var_E4 = CVar(CLng((var_86 + 1))) 'Long
  loc_1094AE1: Me.FGrid.Row = var_E4
  loc_1094B0B: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_1094B1A: Call Proc_119_51_E7F340()
  loc_1094B1F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E52908
  'Data Table: 4BC9B4
  loc_E528E2: Set var_88 = Me.Txt
  loc_E528E8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E528F6: Proc_6_74_E226B0(var_8C)
  loc_E52902: Call Proc_119_60_E843D0(var_8C)
  loc_E52907: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'EB78E4
  'Data Table: 4BC9B4
  loc_EB7856: If (CLng(Shift) = &H1B) Then
  loc_EB7859:   Call Proc_119_60_E843D0()
  loc_EB785E:   Exit Sub
  loc_EB785F: End If
  loc_EB789A: If ((CBool(Me.DGSundry.Visible) = 0) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_EB78B2:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EB78BB:     Proc_6_75_E527CC(Shift)
  loc_EB78C0:   End If
  loc_EB78D5:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EB78DE:     Proc_6_76_E52838(Shift, arg_14)
  loc_EB78E3:   End If
  loc_EB78E3: End If
  loc_EB78E3: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E04480
  'Data Table: 4BC9B4
  Dim var_86 As Integer
  loc_E04473: Proc_6_58_E054C0(arg_10)
  loc_E0447B: var_86 = KeyAscii
  loc_E0447E: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46DD4
  'Data Table: 4BC9B4
  loc_E46DB2: Set var_88 = Me.Txt
  loc_E46DB8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46DC6: Proc_6_73_E22704(var_8C)
  loc_E46DD2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F131C4
  'Data Table: 4BC9B4
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_A0 As TextBox
  Dim var_8C As MSHFlexGrid
  loc_F130DB: var_86 = Cancel
  loc_F130E6: If (var_86 = CInt(0)) Then
  loc_F130F4:   Set var_8C = Me.Txt
  loc_F130FA:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_F13123:   If (Proc_6_27_EA565C(var_90, "App. Date") = 0) Then
  loc_F13131:     Set var_8C = Me.Txt
  loc_F13137:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_F1313F:     var_90.SetFocus
  loc_F1314D:     arg_10 = &HFF
  loc_F13150:     Exit Sub
  loc_F13151:   End If
  loc_F1315B:   Set var_8C = Me.Txt
  loc_F13161:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F13181:   Set var_9C = Me.Txt
  loc_F13187:   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_F1318F:   var_A0.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_F131B4:   Me.FGrid.Col = CVar(CLng(1))
  loc_F131BC:   Call Proc_119_62_12D3710(var_86)
  loc_F131C1: End If
  loc_F131C1: Exit Sub
End Sub

Private Sub DGSundry_UnknownEvent_9 '10765BC
  'Data Table: 4BC9B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_128 As TextBox
  loc_107633B: Me.DGSundry.Visible = False
  loc_107635A: If (Me.RecordCount > 0) Then
  loc_1076370:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1076378:   var_E4 = CVar(CLng(2)) 'Long
  loc_10763AB:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10763B3:   Set var_128 = Me.FGrid
  loc_10763B9:   LateIdCallSt
  loc_107642B:   Set var_128 = Me.FGrid
  loc_1076431:   LateIdCallSt
  loc_1076487:   Set var_B4 = Me.TxtGrid
  loc_107648D:   Call 0.Method_DGSundry_UnknownEvent_90 (0, var_128, CStr(Me.Fields.Item("Name").Value), var_128, CVar(CStr(Me.Fields.Item("Name").Value)), CVar(CLng(3)))
  loc_1076495:   var_128.Text = CVar(CLng(Me.FGrid.Row))
  loc_10764F6:   var_114 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_128)) 'String
  loc_10764FE:   Set var_128 = Me.FGrid
  loc_1076504:   LateIdCallSt
  loc_1076531:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1076539:   var_E4 = CVar(CLng(&HE)) 'Long
  loc_107655B:   var_B0 = Me.Fields.Item("SysYN")
  loc_107656C:   var_114 = CVar(CStr(var_B0.Value)) 'String
  loc_1076574:   Set var_128 = Me.FGrid
  loc_107657A:   LateIdCallSt
  loc_1076596: End If
  loc_107659F: Set var_A8 = Me.TxtGrid
  loc_10765A5: Call 0.Method_DGSundry_UnknownEvent_90 (0, var_B0, var_128, var_114, var_E4, var_A4)
  loc_10765AD: var_B0.SetFocus
  loc_10765B9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E84BB0
  'Data Table: 4BC9B4
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E84B53: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E84B66: Set var_A8 = Me.TxtGrid
  loc_E84B6C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E84B74: var_AC.Visible = False
  loc_E84B8E: Set var_A8 = Me.TxtGrid
  loc_E84B94: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E84B9C: var_AC.MaxLength = 0
  loc_E84BA8: Call Proc_119_60_E843D0()
  loc_E84BAD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69C28
  'Data Table: 4BC9B4
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E69BE4: Set var_88 = Me.TxtGrid
  loc_E69BEA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E69C04: If (var_8C.Visible = 0) Then
  loc_E69C1D:   Me.FGrid.BackColorSel = CVar(CLng(global_64))
  loc_E69C25: End If
  loc_E69C25: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1C930
  'Data Table: 4BC9B4
  loc_E1C927: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1C92F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE144
  'Data Table: 4BC9B4
  loc_DFE13C: Call Proc_119_55_E45054()
  loc_DFE141: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1232AD4
  'Data Table: 4BC9B4
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
  loc_12325B4: Set var_88 = Me.TopCtrl1
  loc_12325BA: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12325FF: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1232608:   Call Form_KeyDown(Cancel, arg_10)
  loc_123260D: End If
  loc_1232611: Set var_88 = Me.TopCtrl1
  loc_1232617: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1232630: If (CStr() = "Browse") Then
  loc_1232633:   Exit Sub
  loc_1232634: End If
  loc_1232651: var_C4 = Me.FGrid.Rows
  loc_12326A8: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_12326BE:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12326CE:   var_9C = "+{Tab}"
  loc_12326D4:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_12326DE:   Cancel = 0
  loc_12326E4: Else
  loc_12326EE:   var_B0 = Me.FGrid.Rows
  loc_123273B:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1232751:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1232767:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_1232771:     Cancel = 0
  loc_12327AB:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_12327AE:       Call TopCtrl1_UnknownEvent_16()
  loc_12327B3:     End If
  loc_12327B3:   End If
  loc_12327B3: End If
  loc_12327B9: global_72 = Cancel
  loc_12327DF: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1232803: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1232819:   var_11C = CLng(Me.FGrid.Col)
  loc_1232829:   If (var_11C = CLng(3)) Then
  loc_123283F:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1232847:     var_F8 = CVar(CLng(3)) 'Long
  loc_123284C:     var_12C = vbNullString
  loc_1232856:     Set var_A0 = Me.FGrid
  loc_123285C:     LateIdCallSt
  loc_1232881:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1232889:     var_F8 = CVar(CLng(2)) 'Long
  loc_123288E:     var_12C = vbNullString
  loc_1232898:     Set var_A0 = Me.FGrid
  loc_123289E:     LateIdCallSt
  loc_12328C3:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12328CB:     var_F8 = CVar(CLng(&HA)) 'Long
  loc_12328D0:     var_12C = vbNullString
  loc_12328DA:     Set var_A0 = Me.FGrid
  loc_12328E0:     LateIdCallSt
  loc_1232905:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123290D:     var_F8 = CVar(CLng(&HE)) 'Long
  loc_1232912:     var_12C = vbNullString
  loc_123291C:     Set var_A0 = Me.FGrid
  loc_1232922:     LateIdCallSt
  loc_1232937:   Else
  loc_123293E:     If Not (var_11C = CLng(1)) Then
  loc_1232948:       If Not (var_11C = CLng(4)) Then
  loc_1232952:         If Not (var_11C = CLng(5)) Then
  loc_123295C:           If Not (var_11C = CLng(6)) Then
  loc_1232966:             If Not (var_11C = CLng(7)) Then
  loc_1232970:               If Not (var_11C = CLng(8)) Then
  loc_123297A:                 If Not (var_11C = CLng(9)) Then
  loc_1232984:                   If Not (var_11C = CLng(&HC)) Then
  loc_123298E:                     If (var_11C = CLng(&H10)) Then
  loc_1232991:                     End If
  loc_1232991:                   End If
  loc_1232991:                 End If
  loc_1232991:               End If
  loc_1232991:             End If
  loc_1232991:           End If
  loc_1232991:         End If
  loc_1232991:       End If
  loc_12329A4:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12329BC:       var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12329C1:       var_12C = vbNullString
  loc_12329CB:       Set var_B4 = Me.FGrid
  loc_12329D1:       LateIdCallSt
  loc_12329EC:     Else
  loc_12329F3:       If (var_11C = CLng(&HD)) Then
  loc_1232A09:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1232A11:         var_F8 = CVar(CLng(&HF)) 'Long
  loc_1232A16:         var_12C = vbNullString
  loc_1232A20:         Set var_A0 = Me.FGrid
  loc_1232A26:         LateIdCallSt
  loc_1232A4B:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1232A53:         var_F8 = CVar(CLng(&HD)) 'Long
  loc_1232A58:         var_12C = vbNullString
  loc_1232A62:         Set var_A0 = Me.FGrid
  loc_1232A68:         LateIdCallSt
  loc_1232A8D:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1232A95:         var_F8 = CVar(CLng(&HB)) 'Long
  loc_1232A9A:         var_12C = vbNullString
  loc_1232AA4:         Set var_A0 = Me.FGrid
  loc_1232AAA:         LateIdCallSt
  loc_1232ABC:       End If
  loc_1232ABC:     End If
  loc_1232ABC:   End If
  loc_1232ABC: End If
  loc_1232AC2: If (Cancel = &HD) Then
  loc_1232ACA:   global_74 = 0
  loc_1232ACD: End If
  loc_1232ACF: Cancel = 0
  loc_1232AD2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0BF18
  'Data Table: 4BC9B4
  loc_E0BF09: Call FGrid_UnknownEvent_C()
  loc_E0BF16: Exit Sub
  loc_E0BF17: End Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1188FA0
  'Data Table: 4BC9B4
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1188BBC: Set var_88 = Me.TopCtrl1
  loc_1188BC2: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1188BDB: If (CStr() = "Browse") Then
  loc_1188BDE:   Exit Sub
  loc_1188BDF: End If
  loc_1188BE3: Set var_88 = Me.TopCtrl1
  loc_1188BE9: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1188C02: If (CStr() = "Browse") Then
  loc_1188C05:   Exit Sub
  loc_1188C06: End If
  loc_1188C19: var_A0 = CLng(Me.FGrid.Col)
  loc_1188C29: If Not (var_A0 = CLng(3)) Then
  loc_1188C33:   If Not (var_A0 = CLng(4)) Then
  loc_1188C3D:     If Not (var_A0 = CLng(&HD)) Then
  loc_1188C47:       If Not (var_A0 = CLng(6)) Then
  loc_1188C51:         If Not (var_A0 = CLng(8)) Then
  loc_1188C5B:           If Not (var_A0 = CLng(&HC)) Then
  loc_1188C65:             If (var_A0 = CLng(&H10)) Then
  loc_1188C68:             End If
  loc_1188C68:           End If
  loc_1188C68:         End If
  loc_1188C68:       End If
  loc_1188C68:     End If
  loc_1188C68:   End If
  loc_1188C6C:   Set var_C4 = Me.FGrid
  loc_1188C90:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1188CBD:   Set var_B4 = var_C4
  loc_1188CCF:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1188CF7:   Set var_88 = Me.TxtGrid
  loc_1188CFD:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1188D05:   0 = var_B4.Text
  loc_1188D1E:   If (Len(var_9C) <= 1) Then
  loc_1188D2D:     Set var_88 = Me.TxtGrid
  loc_1188D33:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1188D3B:     var_CA = var_B4.Text
  loc_1188D4C:     Set var_B8 = Me.TxtGrid
  loc_1188D52:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1188D5A:     var_C4.Text = var_9C
  loc_1188D6D:   End If
  loc_1188D79:   Set var_88 = Me.TxtGrid
  loc_1188D7F:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1188D99:   Set var_B8 = Me.TxtGrid
  loc_1188D9F:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1188DA7:   var_C4.SelStart = Len(var_B4.Text)
  loc_1188DBD: Else
  loc_1188DC4:   If (var_A0 = CLng(5)) Then
  loc_1188E05:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1188E1A:   Else
  loc_1188E21:     If Not (var_A0 = CLng(1)) Then
  loc_1188E2B:       If Not (var_A0 = CLng(9)) Then
  loc_1188E35:         If (var_A0 = CLng(7)) Then
  loc_1188E38:         End If
  loc_1188E38:       End If
  loc_1188E3C:       Set var_C4 = Me.FGrid
  loc_1188E60:       var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1188E69:       var_CA = Asc(var_9C)
  loc_1188E8D:       Set var_B4 = var_C4
  loc_1188E9F:       Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF, var_CA)
  loc_1188EC7:       Set var_88 = Me.TxtGrid
  loc_1188ECD:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, 0, var_CA)
  loc_1188ED5:       0 = var_B4.Text
  loc_1188EEE:       If (Len(var_9C) <= 1) Then
  loc_1188EFD:         Set var_88 = Me.TxtGrid
  loc_1188F03:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1188F0B:         Cancel = var_B4.Text
  loc_1188F1C:         Set var_B8 = Me.TxtGrid
  loc_1188F22:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_9C)
  loc_1188F2A:         var_C4.Text = 0
  loc_1188F3D:       End If
  loc_1188F49:       Set var_88 = Me.TxtGrid
  loc_1188F4F:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1188F69:       Set var_B8 = Me.TxtGrid
  loc_1188F6F:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1188F77:       var_C4.SelStart = Len(var_B4.Text)
  loc_1188F8A:     End If
  loc_1188F8A:   End If
  loc_1188F8A: End If
  loc_1188F94: If (CLng(Cancel) <> &HD) Then
  loc_1188F9C:   global_74 = &HFF
  loc_1188F9F: End If
  loc_1188F9F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '104016C
  'Data Table: 4BC9B4
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_114 As MSHFlexGrid
  loc_103FF20: Set var_8C = Me.TopCtrl1
  loc_103FF26: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103FF3F: If (CStr() = "Browse") Then
  loc_103FF42:   Exit Sub
  loc_103FF43: End If
  loc_103FF47: Set var_8C = Me.TopCtrl1
  loc_103FF4D: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103FF66: If (CStr() = "Edit") Then
  loc_103FF69:   Exit Sub
  loc_103FF6A: End If
  loc_103FF87: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_103FF8A:   Exit Sub
  loc_103FF8B: End If
  loc_103FF9C: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_103FFBE:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_103FFF8:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_104001A:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1040030:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1040038:         var_E0 = CVar(CLng(1)) 'Long
  loc_104008B:         Set var_114 = Me.FGrid
  loc_10400A3:         Call Proc_119_51_E7F340(FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)), CInt(Val(CStr(Me.FGrid.TextMatrix)))))
  loc_10400AB:       Else
  loc_10400BE:         Me.FGrid.Rows = 1
  loc_10400E4:         var_9C = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(1)))) 'String
  loc_10400EC:         Set var_114 = Me.FGrid
  loc_1040119:         Me.FGrid.FixedRows = 1
  loc_1040121:       End If
  loc_1040121:     End If
  loc_1040124:   Else
  loc_1040145:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_1040155:   End If
  loc_1040159:   Set var_8C = Me.FGrid
  loc_104016A: End If
  loc_104016A: Exit Sub
  loc_104016B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1C9D0
  'Data Table: 4BC9B4
  loc_E1C9C7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1C9CF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1C980
  'Data Table: 4BC9B4
  loc_E1C977: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1C97F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E45120
  'Data Table: 4BC9B4
  Dim var_8C As TextBox
  loc_E450F4: Call Proc_119_60_E843D0()
  loc_E45104: Set var_88 = Me.TxtGrid
  loc_E4510A: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E45112: var_8C.Visible = False
  loc_E4511E: Exit Sub
End Sub

Private Sub txtPassword_KeyDown(KeyCode As Integer, Shift As Integer) 'E59488
  'Data Table: 4BC9B4
  loc_E59455: If ((CLng(KeyCode) = &H28) Or (CLng(KeyCode) = &HD)) Then
  loc_E5945E:   Proc_6_75_E527CC(KeyCode)
  loc_E59463: End If
  loc_E59478: If ((CLng(KeyCode) = &H26) Or (CLng(KeyCode) = &HD)) Then
  loc_E59481:   Proc_6_76_E52838(KeyCode, Shift)
  loc_E59486: End If
  loc_E59486: Exit Sub
End Sub

Private Sub txtPassword_Validate(Cancel As Boolean) 'E76D34
  'Data Table: 4BC9B4
  loc_E76CFE: If (Trim(CVar(Me.txtPassword)) = "india") Then
  loc_E76D09:   Set var_D8 = Me.TopCtrl1
  loc_E76D0F:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_E76D1A: Else
  loc_E76D23:   Set var_D8 = Me.TopCtrl1
  loc_E76D29:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_E76D31: End If
  loc_E76D31: Exit Sub
End Sub

Private Sub Form_Load() '11708DC
  'Data Table: 4BC9B4
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_CC As String
  Dim unk_4BC9DD As Connection15
  Dim var_88 As Recordset15
  Dim arg_3CFF As Integer
  loc_1170510: On Error Goto loc_11708D4
  loc_117051A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1170532: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1170549: Me.LblUser.Left = CDbl(13500)
  loc_1170560: Me.LblUser.Top = CDbl(7800)
  loc_1170577: Me.LblLDt.Top = CDbl(8160)
  loc_117058E: Me.LblLDt.Left = CDbl(13500)
  loc_11705A0: Set var_AC = Me.TopCtrl1
  loc_11705A6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_11705B4: Call 0.Method_arg_50 (var_B0)
  loc_11705C4: Set var_AC = Me.TopCtrl1
  loc_11705CA: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B0))
  loc_11705DF: Set global_84 = New 
  loc_11705F1: Me.TopCtrl1.CursorLocation = 3
  loc_117061B: var_C0 = CVar("Select Code,Name,Nature,SysYN From SundryMast Where LogSite_Code in ('" & MemVar_1F92078 & "','HO') Order By Name") 'String
  loc_1170625: Me.Open var_C0, CVar(MemVar_1F92044), 3
  loc_1170639: CVarUnk
  loc_117063E: VerifyVarObj
  loc_1170644: Set var_AC = Me.DGSundry
  loc_117064A: LateIdStAd
  loc_1170662: Set global_88 = New 
  loc_1170674: Me.DGSundry.CursorLocation = 3
  loc_117069E: var_C0 = CVar("Select Code,Name,DeskCode,Type From RevMast Where LogSite_Code in ('" & MemVar_1F92078 & "','HO') And (FlagType ='POS' or FlagType  Is Null or FlagType='')  Order By Name") 'String
  loc_11706A8: Me.Open var_C0, CVar(MemVar_1F92044), 3
  loc_11706BC: CVarUnk
  loc_11706C1: VerifyVarObj
  loc_11706CD: LateIdStAd
  loc_1170707: var_CC = "Select V_Type From Voucher_Type Where LogSite_Code in ('" & MemVar_1F92078 & "','HO') And RestCode='" & global_60 & "' And NCat IN ('BBILL')"
  loc_1170710: unk_4BC9DD.Execute var_CC, var_C0, -1
  loc_117071B: Set var_88 = Me.DGRevenue
  loc_1170743: If (var_88.RecordCount > 0) Then
  loc_1170749:   var_88.MoveFirst
  loc_117077F:   global_92 = CStr(var_88.Fields.Item("V_Type").Value)
  loc_1170790: End If
  loc_11707AC: Me.CursorLocation = 3
  loc_11707CF: var_B0 = "Select DISTINCT (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode From SundryType SP Where SP.LogSite_Code in ('" & MemVar_1F92078
  loc_11707E7: var_C0 = CVar(CStr(var_88.Fields.Item("V_Type").Value) & "','HO')  and V_Type in ('" & global_92 & "') Order By (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))") 'String
  loc_11707F1: Me.Open var_88.Fields.Item("V_Type").Value, CVar(MemVar_1F92044), 3
  loc_1170825: Call Proc_119_59_E8C3A8(Proc_5_1_100CB50("INI", Me, New, 1, -1, Me, Me), global_88, 1, -1)
  loc_1170838: Set var_AC = Me.TopCtrl1
  loc_117083E: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_117084F: Set var_AC = Me.TopCtrl1
  loc_1170855: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_117086C: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_1170874: Call Proc_119_50_1275AFC(Me.TopCtrl1, global_84)
  loc_1170879: Call Proc_119_58_144316C(1)
  loc_1170891: Me.FGrid.Left = CVar(CDbl(400))
  loc_11708AC: Me.FGrid.Height = CVar(CDbl(5500))
  loc_11708BD: Set var_AC = Me.TopCtrl1
  loc_11708C3: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_11708D0: Set var_88 = Nothing
  loc_11708D3: Exit Sub
  loc_11708D4: ' Referenced from: 1170510
  loc_11708D4: Proc_6_60_E62BC4(-1)
  loc_11708D9: Exit Sub
  loc_11708DA: arg_3CFF = 
End Sub

Private Sub Form_Resize() 'ED8848
  'Data Table: 4BC9B4
  Dim var_8C As Label
  loc_ED87A6: Call 0.Method_arg_50 (var_88)
  loc_ED87B8: Me.LblFormCaption.Caption = var_88
  loc_ED87D1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED87DD: Set var_A0 = Me.TopCtrl1
  loc_ED87E3: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED87F0: Set var_8C = Me.TopCtrl1
  loc_ED87F6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED8810: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED882B: Call 0.Method_arg_100 (var_B8)
  loc_ED883D: Me.LblFormCaption.Width = var_B8
  loc_ED8845: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E66B4C
  'Data Table: 4BC9B4
  loc_E66B03: Set global_80 = Nothing
  loc_E66B15: Set global_76 = Nothing
  loc_E66B27: Set global_84 = Nothing
  loc_E66B39: Set global_88 = Nothing
  loc_E66B45: MasterFormExit = 0
  loc_E66B48: Exit Sub
End Sub

Private Sub Form_Activate() 'E494D8
  'Data Table: 4BC9B4
  loc_E494A8: On Error Goto loc_E494D2
  loc_E494AF: Set var_88 = Me.TopCtrl1
  loc_E494B5: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E494CA: If (CLng(CInt()) = &H2D) Then
  loc_E494CD:   Call TopCtrl1_UnknownEvent_15()
  loc_E494D2:   ' Referenced from: E494A8
  loc_E494D2: End If
  loc_E494D2: Proc_6_60_E62BC4()
  loc_E494D7: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2493C
  'Data Table: 4BC9B4
  loc_E24921: If (MasterFormExit = &HFF) Then
  loc_E24931:   Me.Global.Unload Me
  loc_E24939: End If
  loc_E24939: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28978
  'Data Table: 4BC9B4
  loc_E28950: On Error Goto loc_E28970
  loc_E28967: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2896F: Exit Sub
  loc_E28970: ' Referenced from: E28950
  loc_E28970: Proc_6_60_E62BC4(Shift)
  loc_E28975: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EA90C4
  'Data Table: 4BC9B4
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EA9038: On Error Goto loc_EA90BE
  loc_EA905E: Call Proc_119_59_E8C3A8(Proc_5_1_100CB50("ADD", Me))
  loc_EA9069: Call Proc_119_57_F18930(global_76)
  loc_EA9079: Set var_8C = Me.Txt
  loc_EA907F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EA9087: var_94.SetFocus
  loc_EA90A0: Me.LblUser.Caption = vbNullString
  loc_EA90B5: Me.LblLDt.Caption = vbNullString
  loc_EA90BD: Exit Sub
  loc_EA90BE: ' Referenced from: EA9038
  loc_EA90BE: Proc_6_60_E62BC4(var_94)
  loc_EA90C3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EE8420
  'Data Table: 4BC9B4
  loc_EE8364: On Error Goto loc_EE8419
  loc_EE839E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EE83C4:   Call Proc_119_59_E8C3A8(Proc_5_1_100CB50("INI", Me))
  loc_EE83D7:   Set var_10C = Me.TopCtrl1
  loc_EE83DD:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_EE83EE:   Set var_10C = Me.TopCtrl1
  loc_EE83F4:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_EE8405:   Set var_10C = Me.TopCtrl1
  loc_EE840B:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_EE8413:   Call Proc_119_58_144316C(global_76)
  loc_EE8418: End If
  loc_EE8418: Exit Sub
  loc_EE8419: ' Referenced from: EE8364
  loc_EE8419: Proc_6_60_E62BC4()
  loc_EE841E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1BE68
  'Data Table: 4BC9B4
  loc_E1BE5D: Me.Global.Unload Me
  loc_E1BE65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB4A08
  'Data Table: 4BC9B4
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB4978: On Error Goto loc_EB4A02
  loc_EB4992: If (Me.RecordCount <= 0) Then
  loc_EB499B:   var_B8 = "Information"
  loc_EB49B6:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB49C6:   Exit Sub
  loc_EB49C7: End If
  loc_EB49CA: MemVar_1F920E4 = "Select (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,VT.Description,Convert(Varchar(11),SP.AppDate,103) As AppDate,SP.SNo,SM.Name As SundryName,SP.DispName,SP.CalcFormula,RM.Name As Revenue From (((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) where SP.V_Type='IDC' Order by SP.AppDate,VT.Description"
  loc_EB49D4: MemVar_1F92120 = Me
  loc_EB49E1: Proc_6_126_F1BCC0("2000,1000,1000,2000,2000,2000,2000")
  loc_EB49FC: Call 0.Method_arg_2B0 (1)
  loc_EB4A01: Exit Sub
  loc_EB4A02: ' Referenced from: EB4978
  loc_EB4A02: Proc_6_60_E62BC4(var_B8)
  loc_EB4A07: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3CF78
  'Data Table: 4BC9B4
  loc_E3CF68: Proc_5_0_110649C(&HFF, Me)
  loc_E3CF70: Call Proc_119_58_144316C(global_76)
  loc_E3CF75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3D038
  'Data Table: 4BC9B4
  Dim arg_3CFF As Double
  loc_E3D028: Proc_5_0_110649C(&HFF, Me)
  loc_E3D030: Call Proc_119_58_144316C(global_76)
  loc_E3D035: Exit Sub
  loc_E3D036: arg_3CFF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3DC38
  'Data Table: 4BC9B4
  loc_E3DC28: Proc_5_0_110649C(&HFF, Me)
  loc_E3DC30: Call Proc_119_58_144316C(global_76)
  loc_E3DC35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3CE58
  'Data Table: 4BC9B4
  loc_E3CE48: Proc_5_0_110649C(&HFF, Me)
  loc_E3CE50: Call Proc_119_58_144316C(global_76)
  loc_E3CE55: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E20148
  'Data Table: 4BC9B4
  Dim Me As Recordset15
  loc_E2012F: Me.Requery -1
  loc_E2013F: Me.Requery -1
  loc_E20144: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1509C58
  'Data Table: 4BC9B4
  Dim var_8A As Variant
  Dim var_90 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_130 As Variant
  Dim unk_4BC9DD As Connection15
  Dim var_94 As Variant
  Dim var_170 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_98 As Variant
  Dim var_160 As Variant
  Dim var_1A8 As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_304 As Variant
  Dim var_324 As Variant
  Dim var_398 As Variant
  Dim var_3B8 As Variant
  Dim var_43C As Variant
  Dim var_45C As Variant
  Dim var_4E0 As Variant
  Dim var_500 As Variant
  Dim var_578 As Variant
  Dim var_598 As Variant
  Dim var_630 As Variant
  Dim var_650 As Variant
  Dim var_6C4 As Variant
  Dim var_6E4 As Variant
  Dim var_758 As Variant
  Dim var_778 As Variant
  Dim var_830 As Variant
  Dim var_8C4 As Variant
  Dim var_9D4 As Variant
  Dim var_9F4 As Variant
  Dim var_9C As Variant
  Dim var_1E8 As String
  Dim var_110 As Variant
  Dim var_190 As Variant
  Dim var_240 As Variant
  Dim var_40C As Variant
  Dim var_5E0 As Variant
  Dim var_7BC As Variant
  Dim var_9A4 As Variant
  Dim Me As Recordset15
  loc_1508EDC: On Error Goto loc_1509C05
  loc_1508EE3: var_86 = CByte(0) 'Byte
  loc_1508EEA: Call Proc_119_63_E7CA88(var_8C)
  loc_1508EF5: If (var_8C = 0) Then
  loc_1508EF8:   Exit Sub
  loc_1508EF9: End If
  loc_1508F04: Set var_90 = Me.Txt
  loc_1508F0A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1508F33: If (Proc_6_27_EA565C(var_94, "App. Date") = 0) Then
  loc_1508F3D:   Call Txt_GotFocus(CInt(0))
  loc_1508F42:   Exit Sub
  loc_1508F43: End If
  loc_1508F46: Call Proc_119_53_F9288C(var_8C)
  loc_1508F51: If (var_8C = &HFF) Then
  loc_1508F54:   Exit Sub
  loc_1508F55: End If
  loc_1508F7F: For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B0 'Integer
  loc_1508F89:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1508F91:   var_E0 = CVar(CLng(1)) 'Long
  loc_1508FCD:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1508FD4:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1508FDC:     var_E0 = CVar(CLng(1)) 'Long
  loc_1509019:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> CVar(1)) Then
  loc_1509020:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1509028:       var_E0 = CVar(CLng(1)) 'Long
  loc_150906B:       var_130 = "Arrange S.No. and Cal. Formulas" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_150906F:       MsgBox(var_130, &H40, "Information", var_170, var_190)
  loc_150908C:       Set var_90 = Me.FGrid
  loc_150909D:       Exit Sub
  loc_150909E:     End If
  loc_15090A4:     var_8A = (var_8A + 1)
  loc_15090A7:   End If
  loc_15090D2:   If ((var_88 > 1) And (CLng(var_88) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_15090D9:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_15090E1:     var_E0 = CVar(CLng(&HF)) 'Long
  loc_15090FB:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1509101:     var_110 = Trim(var_100)
  loc_150911D:     If (var_110 = vbNullString) Then
  loc_1509139:       MsgBox("Define revenue ", &H40, var_100, var_110, var_130)
  loc_1509149:       Exit Sub
  loc_150914A:     End If
  loc_150914A:   End If
  loc_150914E:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1509156:   var_E0 = CVar(CLng(3)) 'Long
  loc_1509192:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1509199:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_15091A1:     var_E0 = CVar(CLng(1)) 'Long
  loc_15091DD:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_15091E4:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_15091EC:       var_E0 = CVar(CLng(3)) 'Long
  loc_1509233:       MsgBox("Fill S.NO For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_1509250:       Set var_90 = Me.FGrid
  loc_1509261:       Exit Sub
  loc_1509262:     End If
  loc_1509266:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_150926E:     var_E0 = CVar(CLng(4)) 'Long
  loc_15092AA:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_15092B1:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_15092B9:       var_E0 = CVar(CLng(3)) 'Long
  loc_1509300:       MsgBox("Fill Disp. Name For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_150931D:       Set var_90 = Me.FGrid
  loc_150932E:       Exit Sub
  loc_150932F:     End If
  loc_1509333:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_150933B:     var_E0 = CVar(CLng(6)) 'Long
  loc_1509377:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_150937E:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1509386:       var_E0 = CVar(CLng(3)) 'Long
  loc_15093CD:       MsgBox("Fill Per/Amt For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_15093EA:       Set var_90 = Me.FGrid
  loc_15093FB:       Exit Sub
  loc_15093FC:     End If
  loc_15093FC:   End If
  loc_15093FF: Next var_B0 'Integer
  loc_150940D: unk_4BC9DD.BeginTrans var_194
  loc_1509416: var_86 = CByte(1) 'Byte
  loc_150943F: For var_198 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_198 'Integer
  loc_1509449:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1509451:   var_E0 = CVar(CLng(2)) 'Long
  loc_1509471:   var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1509479:   var_120 = vbNullString
  loc_1509487:   var_140 = CVar(CLng(var_88)) 'Long
  loc_1509498:   Set var_94 = Me.FGrid
  loc_15094DD:   If CBool(CVar(CLng(1)) And (Trim(CVar(CStr(var_94.TextMatrix)))) <> vbNullString)) Then
  loc_15094E4:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_15094EC:     var_E0 = CVar(CLng(&HB)) 'Long
  loc_1509506:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1509528:     If (Trim(var_100) = vbNullString) Then
  loc_150952F:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1509537:       var_E0 = CVar(CLng(&HB)) 'Long
  loc_150953C:       var_120 = "+"
  loc_1509546:       Set var_90 = Me.FGrid
  loc_150954C:       LateIdCallSt
  loc_1509557:     End If
  loc_1509562:     Set var_90 = Me.Txt
  loc_1509568:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_90, vbNullString, var_E0, var_C0, var_E0)
  loc_1509570:     var_AC = CVar(var_94) 'Address
  loc_1509577:     Proc_6_7_F25D88(var_100, var_AC, var_C0, var_140)
  loc_1509580:     var_D0 = CVar(CLng(var_88)) 'Long
  loc_1509588:     var_F0 = CVar(CLng(2)) 'Long
  loc_1509591:     Set var_98 = Me.FGrid
  loc_15095A7:     var_160 = CVar(CLng(var_88)) 'Long
  loc_15095AF:     var_1A8 = CVar(CLng(1)) 'Long
  loc_15095D8:     var_250 = CVar(CLng(var_88)) 'Long
  loc_15095E0:     var_270 = CVar(CLng(4)) 'Long
  loc_15095FF:     var_304 = CVar(CLng(var_88)) 'Long
  loc_1509607:     var_324 = CVar(CLng(5)) 'Long
  loc_1509626:     var_398 = CVar(CLng(var_88)) 'Long
  loc_150962E:     var_3B8 = CVar(CLng(6)) 'Long
  loc_1509661:     var_43C = CVar(CLng(var_88)) 'Long
  loc_1509669:     var_45C = CVar(CLng(8)) 'Long
  loc_150969C:     var_4E0 = CVar(CLng(var_88)) 'Long
  loc_15096A4:     var_500 = CVar(CLng(7)) 'Long
  loc_15096CD:     var_578 = CVar(CLng(var_88)) 'Long
  loc_15096D5:     var_598 = CVar(CLng(9)) 'Long
  loc_15096FE:     var_630 = CVar(CLng(var_88)) 'Long
  loc_1509706:     var_650 = CVar(CLng(&HF)) 'Long
  loc_1509725:     var_6C4 = CVar(CLng(var_88)) 'Long
  loc_150972D:     var_6E4 = CVar(CLng(&HA)) 'Long
  loc_150974C:     var_758 = CVar(CLng(var_88)) 'Long
  loc_1509754:     var_778 = CVar(CLng(&HB)) 'Long
  loc_150978A:     var_830 = Me.FGrid.TextMatrix)
  loc_15097B1:     var_8C4 = Me.FGrid.TextMatrix)
  loc_15097DC:     Proc_6_7_F25D88(var_994, MemVar_1F920EC, var_8C4, CVar(CLng(&HC)), CVar(CLng(var_88)), var_830, CVar(CLng(&HE)), CVar(CLng(var_88)))
  loc_15097E5:     var_9D4 = CVar(CLng(var_88)) 'Long
  loc_15097ED:     var_9F4 = CVar(CLng(&H10)) 'Long
  loc_1509830:     var_9C = "Insert Into SundryType (V_Type,AppDate,SundryCode,SNo,DispName," & "CalcFormula,PerOrAmt,RoundOff,SValue,Limit,"
  loc_150984F:     var_1E8 = var_9C & "RevCode,Nature,CalcSign,SysYN,Grp," & "U_Name,U_EntDt,U_AE,AutoManual,SiteCode,LogSite_Code) " & " Values ('" & global_92
  loc_150988D:     var_240 = CVar(var_1E8 & "',") & var_100 & ",'" & CVar(CStr(var_98.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" 
  loc_15098C5:     var_40C = var_240 & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) 
  loc_15098FD:     var_5E0 = var_40C & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1509942:     var_7BC = var_5E0 & "," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1509992:     var_9A4 = var_7BC & "','" & CVar(CStr(var_830)) & "','" & Left(CVar(CStr(var_8C4)), 1) & "'," & "'" & CVar(MemVar_1F920C8) & "'," & var_994 
  loc_15099C8:     var_AC8 = var_9A4 & ",'A','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) 
  loc_15099DF:     unk_4BC9DD.Execute CStr(var_AC8 & "')"), var_B0C, -1
  loc_1509AB5:   End If
  loc_1509AB8: Next var_198 'Integer
  loc_1509AC3: unk_4BC9DD.CommitTrans
  loc_1509ACC: var_86 = CByte(0) 'Byte
  loc_1509ADB: Set var_90 = Me.Txt
  loc_1509AE1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1509AEC: var_C0 = CVar(global_92) 'String
  loc_1509AFF: var_AC = Space((6 - Len(global_92)))
  loc_1509B07: var_100 = (var_C0 + var_AC)
  loc_1509B10: var_110 = (var_100 + "**")
  loc_1509B2C: var_130 = CVar(var_94) 'Address
  loc_1509B3B: var_190 = (1 + Format(var_130, "dd/mm/yyyy"))
  loc_1509B6C: Me.Requery -1
  loc_1509B99: Me.Find "SearchCode ='" & CStr(CVar(CStr(var_98.TextMatrix)))) & "'", 0, 1
  loc_1509BA9: Set var_90 = Me.TopCtrl1
  loc_1509BAF: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_1509BC8: If (CStr(1) = "Add") Then
  loc_1509BCB:   Call TopCtrl1_UnknownEvent_A()
  loc_1509BD0:   Exit Sub
  loc_1509BD1: End If
  loc_1509BE6: var_9C = "INI"
  loc_1509BF4: Call Proc_119_59_E8C3A8(Proc_5_1_100CB50(var_9C, Me, global_76), CVar(var_1E8 & "',"))
  loc_1509BFF: Call Proc_119_58_144316C(var_94)
  loc_1509C04: Exit Sub
  loc_1509C05: ' Referenced from: 1508EDC
  loc_1509C0E: If (CInt(var_86) = 1) Then
  loc_1509C17:   unk_4BC9DD.RollbackTrans
  loc_1509C1C: End If
  loc_1509C24: Set var_90 = Err()
  loc_1509C2A: Call 0.Method_arg_2C (var_9C)
  loc_1509C43: MsgBox(CVar(var_9C), &H10, var_100, CVar(var_1E8 & "',"), var_130)
  loc_1509C56: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_9 '103CA80
  'Data Table: 4BC9B4
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_103C83F: Me.DGRevenue.Visible = False
  loc_103C85E: If (Me.RecordCount > 0) Then
  loc_103C874:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103C87C:   var_E4 = CVar(CLng(&HF)) 'Long
  loc_103C8AF:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_103C8B7:   Set var_128 = Me.FGrid
  loc_103C8BD:   LateIdCallSt
  loc_103C8EC:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103C8F4:   var_E4 = CVar(CLng(&HD)) 'Long
  loc_103C927:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_103C92F:   Set var_128 = Me.FGrid
  loc_103C935:   LateIdCallSt
  loc_103C990:   If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_103C9A6:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103C9AE:     var_D4 = CVar(CLng(&HB)) 'Long
  loc_103C9B3:     var_F4 = "+"
  loc_103C9BD:     Set var_B0 = Me.FGrid
  loc_103C9C3:     LateIdCallSt
  loc_103C9D8:   Else
  loc_103CA17:     If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_103CA2D:       var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103CA35:       var_D4 = CVar(CLng(&HB)) 'Long
  loc_103CA3A:       var_F4 = "-"
  loc_103CA44:       Set var_B0 = Me.FGrid
  loc_103CA4A:       LateIdCallSt
  loc_103CA5C:     End If
  loc_103CA5C:   End If
  loc_103CA5C: End If
  loc_103CA65: Set var_A8 = Me.TxtGrid
  loc_103CA6B: Call 0.Method_DGRevenue_UnknownEvent_90 (0, var_B0, var_B0, var_F4, var_D4, var_94, var_B0)
  loc_103CA73: var_B0.SetFocus
  loc_103CA7F: Exit Sub
End Sub

Public Function MasterFormExitGet() '4BD830
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4BD83F
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '4BD84E
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '4BD85D
  SearchCode = Value
End Sub

Public Function global_60Get() '4BD86C
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4BD87B
  global_60 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E939D8
  'Data Table: 4BC9B4
  Dim Me As Recordset15
  loc_E93966: On Error Goto loc_E939CF
  loc_E9396F: Me.MoveFirst
  loc_E93999: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E939C1: Proc_5_0_110649C(&HFF, Me, global_76)
  loc_E939C9: Call Proc_119_58_144316C(0)
  loc_E939CE: Exit Sub
  loc_E939CF: ' Referenced from: E93966
  loc_E939CF: Proc_6_60_E62BC4(var_A0)
  loc_E939D4: Exit Sub
End Sub

Public Sub Proc_119_50_1275AFC
  'Data Table: 4BC9B4
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_127553C: On Error Goto loc_1275AF4
  loc_1275543: Set var_88 = Me.FGrid
  loc_1275552: var_88.Cols = &H11
  loc_1275563: var_88.Rows = 1
  loc_127557C: global_64 = CStr(CLng(var_88.BackColor))
  loc_1275586: var_98 = 0
  loc_127558F: var_CC = &H64
  loc_127559B: LateIdCallSt
  loc_12755A6: var_98 = CVar(CLng(1)) 'Long
  loc_12755AB: var_CC = &H1C2
  loc_12755B7: LateIdCallSt
  loc_12755BF: var_98 = 0
  loc_12755CB: var_CC = CVar(CLng(1)) 'Long
  loc_12755D0: var_EC = "Sn."
  loc_12755D9: LateIdCallSt
  loc_12755E4: var_98 = CVar(CLng(1)) 'Long
  loc_12755EF: var_CC = CVar(CInt(1)) 'Integer
  loc_12755F6: LateIdCallSt
  loc_1275601: var_98 = CVar(CLng(2)) 'Long
  loc_1275606: var_CC = 0
  loc_1275612: LateIdCallSt
  loc_127561D: var_98 = CVar(CLng(3)) 'Long
  loc_1275622: var_CC = &H7D0
  loc_127562E: LateIdCallSt
  loc_1275636: var_98 = 0
  loc_1275642: var_CC = CVar(CLng(3)) 'Long
  loc_1275647: var_EC = "Sundry Name"
  loc_1275650: LateIdCallSt
  loc_127565B: var_98 = CVar(CLng(3)) 'Long
  loc_1275666: var_CC = CVar(CInt(1)) 'Integer
  loc_127566D: LateIdCallSt
  loc_1275678: var_98 = CVar(CLng(4)) 'Long
  loc_127567D: var_CC = &H7D0
  loc_1275689: LateIdCallSt
  loc_1275691: var_98 = 0
  loc_127569D: var_CC = CVar(CLng(4)) 'Long
  loc_12756A2: var_EC = "Display Name"
  loc_12756AB: LateIdCallSt
  loc_12756B6: var_98 = CVar(CLng(4)) 'Long
  loc_12756C1: var_CC = CVar(CInt(1)) 'Integer
  loc_12756C8: LateIdCallSt
  loc_12756D3: var_98 = CVar(CLng(5)) 'Long
  loc_12756D8: var_CC = &H7D0
  loc_12756E4: LateIdCallSt
  loc_12756EC: var_98 = 0
  loc_12756F8: var_CC = CVar(CLng(5)) 'Long
  loc_12756FD: var_EC = "Cal. Formula"
  loc_1275706: LateIdCallSt
  loc_1275711: var_98 = CVar(CLng(5)) 'Long
  loc_127571C: var_CC = CVar(CInt(1)) 'Integer
  loc_1275723: LateIdCallSt
  loc_127572E: var_98 = CVar(CLng(5)) 'Long
  loc_1275739: var_CC = CVar(CInt(1)) 'Integer
  loc_1275740: LateIdCallSt
  loc_127574B: var_98 = CVar(CLng(6)) 'Long
  loc_1275750: var_CC = &H226
  loc_127575C: LateIdCallSt
  loc_1275764: var_98 = 0
  loc_1275770: var_CC = CVar(CLng(6)) 'Long
  loc_1275775: var_EC = "P/A"
  loc_127577E: LateIdCallSt
  loc_1275789: var_98 = CVar(CLng(6)) 'Long
  loc_1275794: var_CC = CVar(CInt(1)) 'Integer
  loc_127579B: LateIdCallSt
  loc_12757A6: var_98 = CVar(CLng(7)) 'Long
  loc_12757AB: var_CC = &H320
  loc_12757B7: LateIdCallSt
  loc_12757BF: var_98 = 0
  loc_12757CB: var_CC = CVar(CLng(7)) 'Long
  loc_12757D0: var_EC = "Value"
  loc_12757D9: LateIdCallSt
  loc_12757E4: var_98 = CVar(CLng(7)) 'Long
  loc_12757EF: var_CC = CVar(CInt(7)) 'Integer
  loc_12757F6: LateIdCallSt
  loc_1275801: var_98 = CVar(CLng(7)) 'Long
  loc_127580C: var_CC = CVar(CInt(7)) 'Integer
  loc_1275813: LateIdCallSt
  loc_127581E: var_98 = CVar(CLng(8)) 'Long
  loc_1275823: var_CC = 0
  loc_127582F: LateIdCallSt
  loc_1275837: var_98 = 0
  loc_1275843: var_CC = CVar(CLng(8)) 'Long
  loc_1275848: var_EC = "ROff"
  loc_1275851: LateIdCallSt
  loc_127585C: var_98 = CVar(CLng(8)) 'Long
  loc_1275867: var_CC = CVar(CInt(1)) 'Integer
  loc_127586E: LateIdCallSt
  loc_1275879: var_98 = CVar(CLng(&H10)) 'Long
  loc_127587E: var_CC = &H320
  loc_127588A: LateIdCallSt
  loc_1275892: var_98 = 0
  loc_127589E: var_CC = CVar(CLng(&H10)) 'Long
  loc_12758A3: var_EC = "A/M"
  loc_12758AC: LateIdCallSt
  loc_12758B7: var_98 = CVar(CLng(&H10)) 'Long
  loc_12758C2: var_CC = CVar(CInt(1)) 'Integer
  loc_12758C9: LateIdCallSt
  loc_12758D4: var_98 = CVar(CLng(9)) 'Long
  loc_12758D9: var_CC = 0
  loc_12758E5: LateIdCallSt
  loc_12758ED: var_98 = 0
  loc_12758F9: var_CC = CVar(CLng(9)) 'Long
  loc_12758FE: var_EC = "Limit"
  loc_1275907: LateIdCallSt
  loc_1275912: var_98 = CVar(CLng(9)) 'Long
  loc_127591D: var_CC = CVar(CInt(7)) 'Integer
  loc_1275924: LateIdCallSt
  loc_127592F: var_98 = CVar(CLng(9)) 'Long
  loc_127593A: var_CC = CVar(CInt(7)) 'Integer
  loc_1275941: LateIdCallSt
  loc_127594C: var_98 = CVar(CLng(&HA)) 'Long
  loc_1275951: var_CC = 0
  loc_127595D: LateIdCallSt
  loc_1275965: var_98 = 0
  loc_1275971: var_CC = CVar(CLng(&HA)) 'Long
  loc_1275976: var_EC = "Nature"
  loc_127597F: LateIdCallSt
  loc_127598A: var_98 = CVar(CLng(&HA)) 'Long
  loc_1275995: var_CC = CVar(CInt(1)) 'Integer
  loc_127599C: LateIdCallSt
  loc_12759A7: var_98 = CVar(CLng(&HB)) 'Long
  loc_12759AC: var_CC = 0
  loc_12759B8: LateIdCallSt
  loc_12759C0: var_98 = 0
  loc_12759CC: var_CC = CVar(CLng(&HB)) 'Long
  loc_12759D1: var_EC = "+/-"
  loc_12759DA: LateIdCallSt
  loc_12759E5: var_98 = CVar(CLng(&HB)) 'Long
  loc_12759F0: var_CC = CVar(CInt(4)) 'Integer
  loc_12759F7: LateIdCallSt
  loc_1275A02: var_98 = CVar(CLng(&HE)) 'Long
  loc_1275A07: var_CC = 0
  loc_1275A13: LateIdCallSt
  loc_1275A1E: var_98 = CVar(CLng(&HC)) 'Long
  loc_1275A23: var_CC = &H258
  loc_1275A2F: LateIdCallSt
  loc_1275A37: var_98 = 0
  loc_1275A43: var_CC = CVar(CLng(&HC)) 'Long
  loc_1275A48: var_EC = "Bold"
  loc_1275A51: LateIdCallSt
  loc_1275A5C: var_98 = CVar(CLng(&HC)) 'Long
  loc_1275A67: var_CC = CVar(CInt(1)) 'Integer
  loc_1275A6E: LateIdCallSt
  loc_1275A79: var_98 = CVar(CLng(&HD)) 'Long
  loc_1275A7E: var_CC = &HBB8
  loc_1275A8A: LateIdCallSt
  loc_1275A92: var_98 = 0
  loc_1275A9E: var_CC = CVar(CLng(&HD)) 'Long
  loc_1275AA3: var_EC = "Revenue Charge"
  loc_1275AAC: LateIdCallSt
  loc_1275AB7: var_98 = CVar(CLng(&HD)) 'Long
  loc_1275AC2: var_CC = CVar(CInt(1)) 'Integer
  loc_1275AC9: LateIdCallSt
  loc_1275AD4: var_98 = CVar(CLng(&HF)) 'Long
  loc_1275AD9: var_CC = 0
  loc_1275AE5: LateIdCallSt
  loc_1275AEF: Set var_88 = Nothing 
  loc_1275AF3: Exit Sub
  loc_1275AF4: ' Referenced from: 127553C
  loc_1275AF4: Proc_6_60_E62BC4(var_88, var_CC, var_98, var_88, var_CC, var_98, var_88, var_EC)
  loc_1275AF9: Exit Sub
End Sub

Public Sub Proc_119_51_E7F340
  'Data Table: 4BC9B4
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_E7F2FD: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_E7F307:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_E7F30F:   var_D0 = CVar(CLng(1)) 'Long
  loc_E7F319:   var_9C = CVar(CStr(var_86)) 'String
  loc_E7F321:   Set var_8C = Me.FGrid
  loc_E7F327:   LateIdCallSt
  loc_E7F338: Next var_A0 'Integer
  loc_E7F33D: Exit Sub
End Sub

Public Sub Proc_119_52_DFC3B4
  'Data Table: 4BC9B4
  loc_DFC3B0: Exit Sub
End Sub

Public Sub Proc_119_53_F9288C
  'Data Table: 4BC9B4
  Dim var_94 As String
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim unk_4BC9DD As Connection15
  Dim var_124 As Recordset15
  Dim var_128 As Fields15
  Dim var_13C As Field20
  Dim var_9C As TextBox
  loc_F92788: var_94 = "Select Count(*) From SundryType Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (V_Type='" & global_92
  loc_F9278F: var_CC = CVar(var_94 & "' And AppDate=") 'String
  loc_F9279D: Set var_98 = Me.Txt
  loc_F927A3: Call 0.Method_Proc_119_53_F9288C0 (CInt(0), var_9C, var_CC, var_120, -1)
  loc_F927B2: Proc_6_7_F25D88(var_BC, CVar(var_9C), var_124, var_128)
  loc_F927BA: var_DC = 0 & var_BC 
  loc_F927D1: unk_4BC9DD.Execute CStr(var_DC & ")"), var_13C, var_14C
  loc_F927D9:  = var_124.Fields
  loc_F927E1:  = var_128.Item()
  loc_F927E9:  = var_13C.Value
  loc_F92820: If (var_14C > 0) Then
  loc_F92844:   MsgBox("Duplicate Entry", &H40, "Information", var_CC, var_DC)
  loc_F9285F:   Set var_98 = Me.Txt
  loc_F92865:   Call 0.Method_Proc_119_53_F9288C0 (CInt(0))
  loc_F9286D:   var_9C.SetFocus
  loc_F9287E:   Proc_119_53_F9288C = &HFF
  loc_F92884: End If
  loc_F92884: Proc_119_53_F9288C = var_9C
End Sub

Public Sub Proc_119_54_115A4EC(arg_C, arg_10) '115A4EC
  'Data Table: 4BC9B4
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
  loc_115A150: var_B4 = CVar(CLng(arg_C)) 'Long
  loc_115A159: var_D4 = CVar(CLng(arg_10)) 'Long
  loc_115A173: var_98 = CStr(Me.FGrid.TextMatrix))
  loc_115A194: var_C4 = "+"
  loc_115A1AE: var_118 = Left(var_98, 1)
  loc_115A1B6: var_E4 = "-"
  loc_115A1CD: If CBool((Left(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_115A1EE:   MsgBox("Invalid Operator at Starting position of furmula", 0, var_108, var_118, var_128)
  loc_115A1FE:   Proc_119_54_115A4EC = &HFF
  loc_115A204: End If
  loc_115A21C: var_C4 = "+"
  loc_115A236: var_118 = Right(var_98, 1)
  loc_115A23E: var_E4 = "-"
  loc_115A255: If CBool((Right(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_115A276:   MsgBox("Invalid Operator at Ending position of furmula", 0, var_108, var_118, var_128)
  loc_115A286:   Proc_119_54_115A4EC = &HFF
  loc_115A28C: End If
  loc_115A28E: var_86 = 0
  loc_115A291: ' Referenced from: 115A4E0
  loc_115A29B: If (Len(var_98) > 0) Then
  loc_115A2A0:   var_A2 = 0
  loc_115A2B5:   var_108 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_115A2CB:   var_F8 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_115A2E7:   var_B4 = (InStr(1, var_98, "-", 0) = 0)
  loc_115A305:   var_138 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_115A31B:   var_128 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_115A337:   var_E4 = (InStr(1, var_98, "+", 0) = 0)
  loc_115A33E:   var_168 = IIf(var_E4, var_128, (Right(var_98, 1) = var_C4) Or (IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108) = var_E4))
  loc_115A36E:   var_178 = (InStr(1, var_98, "+", 0) >= InStr(1, var_98, "-", 0))
  loc_115A375:   var_188 = IIf(var_178, IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108), var_168)
  loc_115A37E:   var_9A = CInt(var_188)
  loc_115A39E:   If (var_9A = 0) Then
  loc_115A3A4:     var_A0 = var_98
  loc_115A3AA:   Else
  loc_115A3BC:     var_F8 = Left(var_98, CLng((var_9A - 1)))
  loc_115A3C5:     var_A0 = CStr("Invalid Operator at Ending position of furmula")
  loc_115A3CB:   End If
  loc_115A3D6:   For var_18C = 1 To (arg_C - 1): var_88 = var_18C 'Integer
  loc_115A3DF:     var_148 = CVar(var_A0) 'String
  loc_115A3E7:     var_B4 = CVar(CLng(var_88)) 'Long
  loc_115A425:     If (CVar(CLng(1)) = Trim(CVar(CStr(Me.FGrid.TextMatrix))))) Then
  loc_115A42A:       var_A2 = &HFF
  loc_115A42D:       Exit For
  loc_115A430:     End If
  loc_115A433:   Next var_18C 'Integer
  loc_115A438:   ' Referenced from: 115A42D
  loc_115A43E:   If (var_A2 = 0) Then
  loc_115A44C:     var_F8 = Trim(var_A0)
  loc_115A46F:     var_108 = ("Invalid Row Reference " + var_F8)
  loc_115A478:     var_118 = (CVar(CStr(Me.FGrid.TextMatrix))) + vbCrLf)
  loc_115A481:     var_128 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + "Please Enter Correct No.")
  loc_115A485:     MsgBox(var_128, &H40, "Validation", var_168, var_188)
  loc_115A4A0:     Proc_119_54_115A4EC = &HFF
  loc_115A4A6:   End If
  loc_115A4AC:   If (var_9A = 0) Then
  loc_115A4B2:     var_98 = vbNullString
  loc_115A4B8:   Else
  loc_115A4CD:     var_108 = Mid(var_98, CLng((var_9A + 1)), var_F8)
  loc_115A4D6:     var_98 = CStr(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_115A4E0:   End If
  loc_115A4E0:   GoTo loc_115A291
  loc_115A4E3: End If
  loc_115A4E3: Proc_119_54_115A4EC = 
End Sub

Public Sub Proc_119_55_E45054
  'Data Table: 4BC9B4
  loc_E45030: Set var_88 = Me.TopCtrl1
  loc_E45036: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4504F: If (CStr() = "Browse") Then
  loc_E45052:   Exit Sub
  loc_E45053: End If
  loc_E45053: Exit Sub
End Sub

Public Sub Proc_119_56_15060D8(arg_C) '15060D8
  'Data Table: 4BC9B4
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
  loc_1505217: var_A0 = CLng(Me.FGrid.Col)
  loc_1505227: If (var_A0 = CLng(3)) Then
  loc_150524A:   var_A6 = Me.EOF
  loc_1505278:   Set var_8C = Me.TxtGrid
  loc_150527E:   Call 0.Method_Proc_119_56_15060D80 (arg_C, var_AC, var_B0)
  loc_1505286:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_150529E:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_15052B4:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15052BC:     var_E0 = CVar(CLng(3)) 'Long
  loc_15052C1:     var_100 = vbNullString
  loc_15052CB:     Set var_AC = Me.FGrid
  loc_15052D1:     LateIdCallSt
  loc_15052F6:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15052FE:     var_E0 = CVar(CLng(2)) 'Long
  loc_1505303:     var_100 = vbNullString
  loc_150530D:     Set var_AC = Me.FGrid
  loc_1505313:     LateIdCallSt
  loc_1505338:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1505340:     var_E0 = CVar(CLng(&HA)) 'Long
  loc_1505345:     var_100 = vbNullString
  loc_150534F:     Set var_AC = Me.FGrid
  loc_1505355:     LateIdCallSt
  loc_150537A:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1505382:     var_E0 = CVar(CLng(&HE)) 'Long
  loc_1505387:     var_100 = vbNullString
  loc_1505391:     Set var_AC = Me.FGrid
  loc_1505397:     LateIdCallSt
  loc_15053AC:   Else
  loc_15053AF:     Call Proc_119_61_FBC650(var_A6, var_AC, var_100, var_E0, var_C0, var_AC, var_100, var_E0)
  loc_15053BA:     If (var_A6 = 0) Then
  loc_15053C2:       Proc_119_56_15060D8 = 0
  loc_15053C8:     End If
  loc_15053DB:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15053E3:     var_F0 = CVar(CLng(3)) 'Long
  loc_1505416:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_150541E:     Set var_138 = Me.FGrid
  loc_1505424:     LateIdCallSt
  loc_1505453:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_150545B:     var_F0 = CVar(CLng(2)) 'Long
  loc_150548E:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1505496:     Set var_138 = Me.FGrid
  loc_150549C:     LateIdCallSt
  loc_15054CB:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15054D3:     var_F0 = CVar(CLng(4)) 'Long
  loc_1505506:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1505514:     LateIdCallSt
  loc_150557B:     var_134 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_1505583:     Set var_138 = Me.FGrid
  loc_1505589:     LateIdCallSt
  loc_15055B6:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15055BE:     var_F0 = CVar(CLng(&HE)) 'Long
  loc_15055F1:     var_134 = CVar(CStr(Me.Fields.Item("SysYN").Value)) 'String
  loc_15055F9:     Set var_138 = Me.FGrid
  loc_15055FF:     LateIdCallSt
  loc_150561B:   End If
  loc_150562E:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1505636:   var_E0 = CVar(CLng(&H10)) 'Long
  loc_150563B:   var_100 = "Manual"
  loc_1505645:   Set var_AC = Me.FGrid
  loc_150564B:   LateIdCallSt
  loc_1505676:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_150567B:   var_E0 = 1
  loc_1505688:   Set var_AC = Me.FGrid
  loc_1505699:   var_B0 = CStr(var_AC.TextMatrix))
  loc_15056B2:   If (var_B0 <> vbNullString) Then
  loc_15056B5:     var_C0 = vbNullString
  loc_15056BF:     Set var_8C = Me.FGrid
  loc_15056D0:   End If
  loc_15056D3: Else
  loc_15056DA:   If Not (var_A0 = CLng(1)) Then
  loc_15056E4:     If (var_A0 = CLng(4)) Then
  loc_15056E7:     End If
  loc_1505723:     Set var_8C = Me.TxtGrid
  loc_1505729:     Call 0.Method_Proc_119_56_15060D80 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)))
  loc_1505731:     var_E0 = var_AC.Text
  loc_1505739:     var_134 = CVar(var_B0) 'String
  loc_1505741:     Set var_13C = Me.FGrid
  loc_1505747:     LateIdCallSt
  loc_1505768:   Else
  loc_150576F:     If (var_A0 = CLng(5)) Then
  loc_15057AF:       Set var_8C = Me.TxtGrid
  loc_15057B5:       Call 0.Method_Proc_119_56_15060D80 (arg_C, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_13C, var_134)
  loc_15057BD:       var_C0 = var_AC.Text
  loc_15057C5:       var_134 = CVar(var_B0) 'String
  loc_15057CD:       Set var_13C = Me.FGrid
  loc_15057D3:       LateIdCallSt
  loc_1505810:       If (CLng(Me.FGrid.Row) = 1) Then
  loc_1505826:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_150582F:         Set var_AC = Me.FGrid
  loc_150583E:         var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1505843:         var_100 = vbNullString
  loc_150584D:         Set var_114 = Me.FGrid
  loc_1505853:         LateIdCallSt
  loc_1505870:         Proc_119_56_15060D8 = &HFF
  loc_1505876:       End If
  loc_1505883:       Set var_8C = Me.TxtGrid
  loc_1505889:       Call 0.Method_Proc_119_56_15060D80 (arg_C, var_AC, var_B0, var_114, var_100, var_E0, var_C0)
  loc_1505891:       var_13C = var_AC.Text
  loc_15058A8:       If (var_B0 <> vbNullString) Then
  loc_15058E6:         Call Proc_119_54_115A4EC(CInt(CLng(Me.FGrid.Row)), CInt(CLng(Me.FGrid.Col)))
  loc_15058FF:         If (var_13E = &HFF) Then
  loc_1505904:           var_86 = 0
  loc_150591A:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1505923:           Set var_AC = Me.FGrid
  loc_1505932:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1505937:           var_100 = vbNullString
  loc_1505947:           LateIdCallSt
  loc_150595F:           Proc_119_56_15060D8 = Me.FGrid
  loc_1505965:         End If
  loc_1505965:       End If
  loc_1505968:     Else
  loc_150596F:       If Not (var_A0 = CLng(8)) Then
  loc_1505979:         If (var_A0 = CLng(&HC)) Then
  loc_150597C:         End If
  loc_15059B8:         Set var_8C = Me.TxtGrid
  loc_15059BE:         Call 0.Method_Proc_119_56_15060D80 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_100, CVar(CLng(Me.FGrid.Col)))
  loc_15059C6:         var_C0 = var_AC.Text
  loc_15059DC:         LateIdCallSt
  loc_1505A07:         Set var_8C = Me.TxtGrid
  loc_1505A0D:         Call 0.Method_Proc_119_56_15060D80 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0), var_86)
  loc_1505A15:         var_13E = var_AC.Text
  loc_1505A2C:         If (var_B0 = vbNullString) Then
  loc_1505A42:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1505A4B:           Set var_AC = Me.FGrid
  loc_1505A5A:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1505A5F:           var_100 = "No"
  loc_1505A69:           Set var_114 = Me.FGrid
  loc_1505A6F:           LateIdCallSt
  loc_1505A87:         End If
  loc_1505A8A:       Else
  loc_1505A91:         If (var_A0 = CLng(&H10)) Then
  loc_1505A98:           Set var_114 = Me.FGrid
  loc_1505AD0:           Set var_8C = Me.TxtGrid
  loc_1505AD6:           Call 0.Method_Proc_119_56_15060D80 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_1505ADE:           var_E0 = var_AC.Text
  loc_1505AF4:           LateIdCallSt
  loc_1505B1F:           Set var_8C = Me.TxtGrid
  loc_1505B25:           Call 0.Method_Proc_119_56_15060D80 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1505B2D:           var_C0 = var_AC.Text
  loc_1505B44:           If (var_B0 = vbNullString) Then
  loc_1505B5A:             var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1505B63:             Set var_AC = Me.FGrid
  loc_1505B72:             var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1505B77:             var_100 = "Manual"
  loc_1505B81:             Set var_114 = Me.FGrid
  loc_1505B87:             LateIdCallSt
  loc_1505B9F:           End If
  loc_1505BA2:         Else
  loc_1505BA9:           If (var_A0 = CLng(6)) Then
  loc_1505BB0:             Set var_114 = Me.FGrid
  loc_1505BE8:             Set var_8C = Me.TxtGrid
  loc_1505BEE:             Call 0.Method_Proc_119_56_15060D80 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_1505BF6:             var_E0 = var_AC.Text
  loc_1505C0C:             LateIdCallSt
  loc_1505C37:             Set var_8C = Me.TxtGrid
  loc_1505C3D:             Call 0.Method_Proc_119_56_15060D80 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1505C45:             var_C0 = var_AC.Text
  loc_1505C5C:             If (var_B0 = vbNullString) Then
  loc_1505C72:               var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1505C7B:               Set var_AC = Me.FGrid
  loc_1505C8A:               var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1505C8F:               var_100 = "Amt"
  loc_1505C99:               Set var_114 = Me.FGrid
  loc_1505C9F:               LateIdCallSt
  loc_1505CB7:             End If
  loc_1505CBA:           Else
  loc_1505CC1:             If Not (var_A0 = CLng(9)) Then
  loc_1505CCB:               If (var_A0 = CLng(7)) Then
  loc_1505CCE:               End If
  loc_1505CDA:               Set var_8C = Me.TxtGrid
  loc_1505CE0:               Call 0.Method_Proc_119_56_15060D80 (0, var_AC, var_B0, var_114, var_100, var_E0)
  loc_1505CE8:               var_C0 = var_AC.Text
  loc_1505D0B:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1505D23:               var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1505D50:               var_170 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_1505D58:               Set var_13C = Me.FGrid
  loc_1505D5E:               LateIdCallSt
  loc_1505D88:             Else
  loc_1505D8F:               If (var_A0 = CLng(&HD)) Then
  loc_1505DE0:                 Set var_8C = Me.TxtGrid
  loc_1505DE6:                 Call 0.Method_Proc_119_56_15060D80 (arg_C, var_AC, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_13C, var_170, 1)
  loc_1505DEE:                 1 = var_AC.Text
  loc_1505E06:                 If (var_100 Or (var_B0 = vbNullString)) Then
  loc_1505E1C:                   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1505E24:                   var_E0 = CVar(CLng(&HF)) 'Long
  loc_1505E29:                   var_100 = vbNullString
  loc_1505E33:                   Set var_AC = Me.FGrid
  loc_1505E39:                   LateIdCallSt
  loc_1505E5E:                   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1505E66:                   var_E0 = CVar(CLng(&HD)) 'Long
  loc_1505E6B:                   var_100 = vbNullString
  loc_1505E75:                   Set var_AC = Me.FGrid
  loc_1505E7B:                   LateIdCallSt
  loc_1505EA0:                   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1505EA8:                   var_E0 = CVar(CLng(&HB)) 'Long
  loc_1505EAD:                   var_100 = vbNullString
  loc_1505EB7:                   Set var_AC = Me.FGrid
  loc_1505EBD:                   LateIdCallSt
  loc_1505ED2:                 Else
  loc_1505EE5:                   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1505EED:                   var_F0 = CVar(CLng(&HF)) 'Long
  loc_1505F20:                   var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1505F28:                   Set var_138 = Me.FGrid
  loc_1505F2E:                   LateIdCallSt
  loc_1505F5D:                   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1505F65:                   var_F0 = CVar(CLng(&HD)) 'Long
  loc_1505F98:                   var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1505FA0:                   Set var_138 = Me.FGrid
  loc_1505FA6:                   LateIdCallSt
  loc_1506001:                   If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_1506017:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_150601F:                     var_E0 = CVar(CLng(&HB)) 'Long
  loc_1506024:                     var_100 = "+"
  loc_150602E:                     Set var_AC = Me.FGrid
  loc_1506034:                     LateIdCallSt
  loc_1506049:                   Else
  loc_1506088:                     If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_150609E:                       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15060A6:                       var_E0 = CVar(CLng(&HB)) 'Long
  loc_15060AB:                       var_100 = "-"
  loc_15060B5:                       Set var_AC = Me.FGrid
  loc_15060BB:                       LateIdCallSt
  loc_15060CD:                     End If
  loc_15060CD:                   End If
  loc_15060CD:                 End If
  loc_15060CD:               End If
  loc_15060CD:             End If
  loc_15060CD:           End If
  loc_15060CD:         End If
  loc_15060CD:       End If
  loc_15060CD:     End If
  loc_15060CD:   End If
  loc_15060CD: End If
  loc_15060D2: Proc_119_56_15060D8 = &HFF
End Sub

Public Sub Proc_119_57_F18930
  'Data Table: 4BC9B4
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F18846: Set var_8C = Me.Txt
  loc_F1884C: Call 0.Method_Proc_119_57_F18930C (var_8E, var_86)
  loc_F1885C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F18872:   Set var_8C = Me.Txt
  loc_F18878:   Call 0.Method_Proc_119_57_F189300 (CInt(var_86), var_98)
  loc_F18880:   var_98.Text = vbNullString
  loc_F1889C:   Set var_8C = Me.Txt
  loc_F188A2:   Call 0.Method_Proc_119_57_F189300 (CInt(var_86), var_98)
  loc_F188AA:   var_98.Tag = vbNullString
  loc_F188B9: Next var_92 'Byte
  loc_F188D2: Me.FGrid.Rows = 1
  loc_F188EF: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F188F7: Set var_98 = Me.FGrid
  loc_F18926: Me.FGrid.FixedRows = 1
  loc_F1892E: Exit Sub
End Sub

Public Sub Proc_119_58_144316C
  'Data Table: 4BC9B4
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_4BC9DD As Connection15
  Dim var_88 As Recordset15
  Dim var_124 As Fields15
  Dim var_148 As Variant
  Dim var_138 As Variant
  Dim var_168 As Variant
  Dim var_128 As TextBox
  Dim var_8A As Integer
  Dim var_120 As Variant
  loc_144267C: On Error Goto loc_1443163
  loc_1442696: If (Me.RecordCount > 0) Then
  loc_1442699:   Call Proc_119_57_F18930()
  loc_14426B2:   var_94 = "Select VT.Description,SP.*,SM.Name As SundryName,RM.Name As RevName From (((SundryType SP Inner Join Voucher_type VT On (SP.V_Type=VT.V_Type And SP.LogSite_Code=VT.LogSite_Code)) Inner Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Where SP.Logsite_Code='" & MemVar_1F92078
  loc_14426B9:   var_CC = CVar(var_94 & "' and SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)='") 'String
  loc_1442700:   unk_4BC9DD.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "' Order By SP.SNo"), var_120, -1
  loc_144270B:   Set var_88 = var_124
  loc_144273F:   If (var_88.RecordCount > 0) Then
  loc_144277C:     var_124 = var_88.Fields
  loc_14427E5:     var_188 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_144282A:     Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_188)))
  loc_14428A4:     var_128 = var_88.Fields.Item("U_AE")
  loc_1442905:     var_188 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_128)) = "E"), "Last Update : ", "entdt : "))
  loc_144294A:     Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_14429D4:     Set var_124 = Me.Txt
  loc_14429DA:     Call 0.Method_Proc_119_58_144316C0 (CInt(0), var_128, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/mm/yyyy")))
  loc_14429E2:     var_128.Text = 1
  loc_14429FE:     var_8A = 1
  loc_1442A14:     Me.FGrid.Rows = 1
  loc_1442A1C:     ' Referenced from: 14430DA
  loc_1442A2B:     If Not(var_88.EOF) Then
  loc_1442A2E:       var_A8 = vbNullString
  loc_1442A38:       Set var_98 = Me.FGrid
  loc_1442A4D:       Set var_1E8 = Me.FGrid
  loc_1442A54:       var_EC = CVar(CLng(var_8A)) 'Long
  loc_1442A5C:       var_138 = CVar(CLng(1)) 'Long
  loc_1442A8C:       var_CC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1442A93:       LateIdCallSt
  loc_1442AE2:       var_CC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1E8, var_CC, CVar(CLng(2)))) 'String
  loc_1442AE9:       LateIdCallSt
  loc_1442B34:       var_CC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1E8, var_CC)) 'String
  loc_1442B3B:       LateIdCallSt
  loc_1442B86:       var_CC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1E8, var_CC)) 'String
  loc_1442B8D:       LateIdCallSt
  loc_1442BA3:       var_EC = CVar(CLng(var_8A)) 'Long
  loc_1442BDF:       LateIdCallSt
  loc_1442C19:       var_100 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PerOrAmt")), var_1E8, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_EC, var_1E8, var_CC)), var_EC)
  loc_1442C20:       var_148 = CVar(CLng(var_8A)) 'Long
  loc_1442C28:       var_168 = CVar(CLng(6)) 'Long
  loc_1442C5E:       var_120 = CVar(CStr(IIf((var_100 = "P"), "Per", "Amt"))) 'String
  loc_1442C65:       LateIdCallSt
  loc_1442CE2:       LateIdCallSt
  loc_1442D20:       var_100 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoundOff")), var_1E8, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_1442D27:       var_148 = CVar(CLng(var_8A)) 'Long
  loc_1442D2F:       var_168 = CVar(CLng(8)) 'Long
  loc_1442D65:       var_120 = CVar(CStr(IIf((var_100 = "Y"), "Yes", "No"))) 'String
  loc_1442D6C:       LateIdCallSt
  loc_1442DE9:       LateIdCallSt
  loc_1442E38:       var_CC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_1442E3F:       LateIdCallSt
  loc_1442E8A:       var_CC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_1E8, var_CC, CVar(CLng(9)))) 'String
  loc_1442E91:       LateIdCallSt
  loc_1442EE3:       LateIdCallSt
  loc_1442F1D:       var_100 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP")), var_1E8, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_1E8, var_CC)), CVar(CLng(var_8A)))
  loc_1442F69:       LateIdCallSt
  loc_1442FC3:       var_CC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(&HF)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(IIf((var_100 = "Y"), "Yes", "No"))), CVar(CLng(&HC)))) 'String
  loc_1442FCA:       LateIdCallSt
  loc_1443015:       var_CC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevName")), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_1E8, var_CC)) 'String
  loc_144301C:       LateIdCallSt
  loc_144305D:       var_148 = CVar(CLng(var_8A)) 'Long
  loc_1443065:       var_168 = CVar(CLng(&H10)) 'Long
  loc_1443092:       var_FC = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("AutoManual")), var_1E8, "Auto", CVar(CLng(var_8A))) = "A"), "Auto", "Manual")
  loc_144309B:       var_120 = CVar(CStr(var_FC)) 'String
  loc_14430A2:       LateIdCallSt
  loc_14430C5:       Set var_1E8 = Nothing 
  loc_14430CF:       var_8A = (var_8A + 1)
  loc_14430D5:       var_88.MoveNext
  loc_14430DA:       GoTo loc_1442A1C
  loc_14430DD:     End If
  loc_14430DD:   End If
  loc_14430DD:   var_A8 = 0
  loc_14430E7:   Set var_98 = Me.FGrid
  loc_1443114:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1443117:     var_A8 = "1"
  loc_1443121:     Set var_98 = Me.FGrid
  loc_1443132:   End If
  loc_1443132:   var_A8 = 1
  loc_1443145:   Me.FGrid.FixedRows = var_A8
  loc_1443150: Else
  loc_1443150:   Call Proc_119_57_F18930(FGrid.DispID_10000, var_A8, FGrid.DispID_2E, var_A8, var_8A, var_1E8, var_120)
  loc_1443155: End If
  loc_1443155: Call Proc_119_60_E843D0(var_168, var_148, var_1E8)
  loc_144315F: Set var_88 = Nothing
  loc_1443162: Exit Sub
  loc_1443163: ' Referenced from: 144267C
  loc_1443163: Proc_6_60_E62BC4(var_120, var_168)
  loc_1443168: Exit Sub
End Sub

Public Sub Proc_119_59_E8C3A8(arg_C) 'E8C3A8
  'Data Table: 4BC9B4
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_E8C342: Set var_8C = Me.Txt
  loc_E8C348: Call 0.Method_Proc_119_59_E8C3A8C (var_8E, var_86)
  loc_E8C358: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E8C36E:   Set var_8C = Me.Txt
  loc_E8C374:   Call 0.Method_Proc_119_59_E8C3A80 (CInt(var_86), var_98)
  loc_E8C37C:   var_98.Enabled = arg_C
  loc_E8C38B: Next var_92 'Byte
  loc_E8C39E: Me.Frame1.Enabled = arg_C
  loc_E8C3A6: Exit Sub
End Sub

Public Sub Proc_119_60_E843D0
  'Data Table: 4BC9B4
  loc_E8437C: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_E8438E:   Me.DGRevenue.Visible = False
  loc_E84396: End If
  loc_E843B2: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_E843C4:   Me.DGSundry.Visible = False
  loc_E843CC: End If
  loc_E843CC: Exit Sub
End Sub

Public Sub Proc_119_61_FBC650
  'Data Table: 4BC9B4
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBC4D3: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_FBC4D8:   var_92 = 3 'Byte
  loc_FBC4DC: End If
  loc_FBC4E5: Set var_98 = Me.TxtGrid
  loc_FBC4EB: Call 0.Method_Proc_119_61_FBC6500 (0, var_B0)
  loc_FBC50E: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBC542: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBC566:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBC569:     GoTo loc_FBC63B
  loc_FBC56C:   End If
  loc_FBC570:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBC59A:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBC5A4:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBC5D9:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBC5FD:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBC616:     Set var_98 = Me.TxtGrid
  loc_FBC61C:     Call 0.Method_Proc_119_61_FBC6500 (0, var_B0, CVar(CLng(var_92)))
  loc_FBC624:     var_B0.SetFocus
  loc_FBC635:     Proc_119_61_FBC650 = 0
  loc_FBC63B:     ' Referenced from: FBC569
  loc_FBC63B:   End If
  loc_FBC63E: Next var_D4 'Integer
  loc_FBC648: Proc_119_61_FBC650 = &HFF
End Sub

Public Sub Proc_119_62_12D3710
  'Data Table: 4BC9B4
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_8A As Integer
  Dim var_B8 As String
  Dim unk_4BC9DD As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_100 As Variant
  Dim var_E0 As Field20
  Dim var_120 As Variant
  Dim var_D0 As Variant
  Dim var_110 As Variant
  Dim var_160 As Variant
  Dim var_F0 As Variant
  Dim var_180 As Variant
  loc_12D3084: On Error Goto loc_12D3708
  loc_12D3094: Set var_B0 = Me.FGrid
  loc_12D309A: var_B0.Rows = 1
  loc_12D30A4: var_8A = 1
  loc_12D30C2: var_B8 = "SELECT SF.*,SM.Name as SundryName" & " FROM SundryTypeFix SF Inner JOIN SundryMast SM ON SF.SundryCode = SM.Code" & " Where SF.LogSite_Code='"
  loc_12D30D9: unk_4BC9DD.Execute var_B8 & MemVar_1F92078 & "' Order By SNo ", var_D0, -1
  loc_12D30E4: Set var_88 = var_B0
  loc_12D310C: If (var_88.RecordCount > 0) Then
  loc_12D310F:   ' Referenced from: 12D3664
  loc_12D311E:   If Not(var_88.EOF) Then
  loc_12D3121:     var_9C = vbNullString
  loc_12D312B:     Set var_B0 = Me.FGrid
  loc_12D3140:     Set var_DC = Me.FGrid
  loc_12D3147:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12D314F:     var_100 = CVar(CLng(1)) 'Long
  loc_12D317F:     var_120 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_12D3186:     LateIdCallSt
  loc_12D31D5:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_DC, var_120, CVar(CLng(2)))) 'String
  loc_12D31DC:     LateIdCallSt
  loc_12D3227:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_DC, var_120)) 'String
  loc_12D322E:     LateIdCallSt
  loc_12D3279:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_DC, var_120)) 'String
  loc_12D3280:     LateIdCallSt
  loc_12D3296:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12D32D2:     LateIdCallSt
  loc_12D330C:     var_B8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PerOrAmt")), var_DC, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_AC, var_DC, var_120)), var_AC)
  loc_12D3313:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12D331B:     var_160 = CVar(CLng(6)) 'Long
  loc_12D3351:     var_180 = CVar(CStr(IIf((var_B8 = "P"), "Per", "Amt"))) 'String
  loc_12D3358:     LateIdCallSt
  loc_12D33D5:     LateIdCallSt
  loc_12D3413:     var_B8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoundOff")), var_DC, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_12D341A:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12D3422:     var_160 = CVar(CLng(8)) 'Long
  loc_12D3458:     var_180 = CVar(CStr(IIf((var_B8 = "Y"), "Yes", "No"))) 'String
  loc_12D345F:     LateIdCallSt
  loc_12D34DC:     LateIdCallSt
  loc_12D352B:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_DC, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_12D3532:     LateIdCallSt
  loc_12D357D:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_DC, var_120, CVar(CLng(9)))) 'String
  loc_12D3584:     LateIdCallSt
  loc_12D35C5:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12D35CD:     var_160 = CVar(CLng(&HC)) 'Long
  loc_12D3603:     var_180 = CVar(CStr(IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP")), var_DC, "Yes", CVar(CLng(var_8A))) = "Y"), "Yes", "No"))) 'String
  loc_12D360A:     LateIdCallSt
  loc_12D362F:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_12D3637:     var_F0 = CVar(CLng(&H10)) 'Long
  loc_12D363C:     var_110 = "Manual"
  loc_12D3645:     LateIdCallSt
  loc_12D364F:     Set var_DC = Nothing 
  loc_12D3659:     var_8A = (var_8A + 1)
  loc_12D365F:     var_88.MoveNext
  loc_12D3664:     GoTo loc_12D310F
  loc_12D3667:   End If
  loc_12D367A:   Me.FGrid.FixedRows = 1
  loc_12D3682: End If
  loc_12D3688: If (var_8A = 1) Then
  loc_12D369E:   Me.FGrid.Rows = 1
  loc_12D36BB:   var_120 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_12D36C3:   Set var_E0 = Me.FGrid
  loc_12D36DF:   var_9C = 1
  loc_12D36F2:   Me.FGrid.FixedRows = var_9C
  loc_12D36FA: End If
  loc_12D36FA: Call Proc_119_60_E843D0(FGrid.DispID_10000, var_120, var_8A, var_DC, var_110, var_F0, var_9C)
  loc_12D3704: Set var_88 = Nothing
  loc_12D3707: Exit Sub
  loc_12D3708: ' Referenced from: 12D3084
  loc_12D3708: Proc_6_60_E62BC4(var_DC, var_180, var_160)
  loc_12D370D: Exit Sub
End Sub

Public Sub Proc_119_63_E7CA88
  'Data Table: 4BC9B4
  loc_E7CA49: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A0 'Integer
  loc_E7CA5C:   Call Proc_119_54_115A4EC(var_88, CInt(5))
  loc_E7CA67:   If (var_A4 = &HFF) Then
  loc_E7CA6F:     Proc_119_63_E7CA88 = 0
  loc_E7CA75:   End If
  loc_E7CA78: Next var_A0 'Integer
  loc_E7CA82: Proc_119_63_E7CA88 = &HFF
End Sub
