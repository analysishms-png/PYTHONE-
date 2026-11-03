VERSION 5.00
Begin VB.Form UserMast
  Caption = "User Master"
  BackColor = &HFFC0C0&
  ForeColor = &H0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 105
  ClientTop = 600
  ClientWidth = 9870
  ClientHeight = 7200
  LockControls = -1  'True
  WhatsThisHelp = -1  'True
  PaletteMode = 1
  Begin TextBox TXT
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4800
    Top = 2820
    Width = 1455
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    PasswordChar = "#"
    MaxLength = 8
  End
  Begin MainCtrl topCtrl1
    Left = 0
    Top = 0
    Width = 9870
    Height = 450
    TabIndex = 18
  End
  Begin TextBox TXT
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4785
    Top = 4065
    Width = 510
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin TextBox TXT
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4800
    Top = 2505
    Width = 1455
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin TextBox TXT
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4800
    Top = 3450
    Width = 1455
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    PasswordChar = "#"
    MaxLength = 8
  End
  Begin TextBox TXT
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4800
    Top = 3135
    Width = 1455
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    PasswordChar = "#"
    MaxLength = 8
  End
  Begin TextBox TXT
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4800
    Top = 3765
    Width = 510
    Height = 285
    Enabled = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin TextBox TXT
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4800
    Top = 2190
    Width = 2070
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
  Begin CommonDialog CDLG
  End
  Begin Label Label
    Caption = "Old Password"
    Index = 8
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 3000
    Top = 2820
    Width = 1305
    Height = 240
    TabIndex = 19
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Shape Shape1
    BorderColor = &HC00000&
    Left = 4785
    Top = 4395
    Width = 4335
    Height = 435
    BorderWidth = 2
  End
  Begin Label Label1
    Index = 14
    BackColor = &H8080FF&
    ForeColor = &H0&
    Left = 4800
    Top = 4395
    Width = 4290
    Height = 405
    TabIndex = 17
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Color Selection"
    Index = 13
    ForeColor = &HC0&
    Left = 3045
    Top = 4530
    Width = 1470
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 15
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
  Begin Label Label
    Caption = "(Y)es/(N)o"
    Index = 7
    BackColor = &H80000005&
    ForeColor = &H80&
    Left = 5325
    Top = 4080
    Width = 885
    Height = 240
    TabIndex = 14
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "Active"
    Index = 6
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 3000
    Top = 4095
    Width = 585
    Height = 240
    TabIndex = 13
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "(Y)es/(N)o"
    Index = 5
    BackColor = &H80000005&
    ForeColor = &H80&
    Left = 5325
    Top = 3780
    Width = 885
    Height = 240
    TabIndex = 12
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "Short Name"
    Index = 4
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 2985
    Top = 2505
    Width = 1125
    Height = 240
    TabIndex = 11
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "Confirm Password"
    Index = 3
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 3000
    Top = 3450
    Width = 1725
    Height = 240
    TabIndex = 10
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "Password"
    Index = 2
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 3000
    Top = 3135
    Width = 915
    Height = 240
    TabIndex = 9
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "Supervisor"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 3000
    Top = 3765
    Width = 1020
    Height = 240
    TabIndex = 8
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "User Name"
    Index = 0
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 3000
    Top = 2190
    Width = 1035
    Height = 240
    TabIndex = 7
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "UserMast"


Private Sub Txt_GotFocus(Index As Integer) 'EB7C34
  'Data Table: 436470
  Dim var_92 As Integer
  loc_EB7BAC: On Error Goto loc_EB7BF9
  loc_EB7BB5: Call 0.Method_arg_1C4 (vbNullString)
  loc_EB7BBA: Call Grid_Hide()
  loc_EB7BC9: Set var_88 = Me.TXT
  loc_EB7BCF: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EB7BDD: Proc_183_28_E20B20(var_8C)
  loc_EB7BEC: var_92 = Index
  loc_EB7BF5: If (var_92 = 1) Then
  loc_EB7BF8: End If
  loc_EB7BF8: Exit Sub
  loc_EB7BF9: ' Referenced from: EB7BAC
  loc_EB7C01: Set var_88 = Err()
  loc_EB7C07: Call 0.Method_arg_2C (var_98, var_92)
  loc_EB7C20: MsgBox(CVar(var_98), &H10, var_C8, var_E8, var_108)
  loc_EB7C33: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1009C6C
  'Data Table: 436470
  Dim var_E8 As Variant
  Dim var_110 As TextBox
  loc_1009A70: On Error Goto loc_1009C2E
  loc_1009A7F: If (KeyCode = 6) Then
  loc_1009A82: End If
  loc_1009A9E: If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = 5)) Then
  loc_1009AD8:   If (MsgBox("Save Record ?", 4, "Save Data", var_E8, var_108) = 6) Then
  loc_1009AE5:     Set var_10C = Me.TXT
  loc_1009AEB:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_110)
  loc_1009AF9:     Proc_6_73_E22704(var_110)
  loc_1009B05:     Call TopCtrl1_UnknownEvent_16()
  loc_1009B0A:   End If
  loc_1009B0D: Else
  loc_1009B29:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = 6)) Then
  loc_1009B35:     Set var_10C = Me.TXT
  loc_1009B3B:     Call 0.Method_Txt_KeyDown0 (2, var_110)
  loc_1009B4A:     var_C8 = Ucase(CVar(var_110))
  loc_1009B5B:     Set var_114 = Me.TXT
  loc_1009B61:     Call 0.Method_Txt_KeyDown0 (6, var_118)
  loc_1009B69:     var_E8 = CVar(var_118) 'Address
  loc_1009B70:     var_108 = Ucase(var_E8)
  loc_1009B8C:     If (var_C8 = var_108) Then
  loc_1009B9A:       Set var_10C = Me.TXT
  loc_1009BA0:       Call 0.Method_Txt_KeyDown0 (2, var_110)
  loc_1009BA8:       var_110.Enabled = True
  loc_1009BBF:       Set var_10C = Me.TXT
  loc_1009BC5:       Call 0.Method_Txt_KeyDown0 (3, var_110)
  loc_1009BCD:       var_110.Enabled = True
  loc_1009BD9:     End If
  loc_1009BDF:     Proc_183_29_E52C04(Shift, arg_14)
  loc_1009BE7:   Else
  loc_1009BFC:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1009C05:       Proc_183_29_E52C04(Shift, arg_14)
  loc_1009C0A:     End If
  loc_1009C0A:   End If
  loc_1009C0A: End If
  loc_1009C14: If (CLng(Shift) = &H26) Then
  loc_1009C1D:   Proc_183_30_E53180(Shift, arg_14)
  loc_1009C22: End If
  loc_1009C28: Call 0.Method_arg_1C4 (vbNullString)
  loc_1009C2D: Exit Sub
  loc_1009C2E: ' Referenced from: 1009A70
  loc_1009C36: Set var_10C = Err()
  loc_1009C3C: Call 0.Method_arg_2C (var_12C)
  loc_1009C55: MsgBox(CVar(var_12C), &H10, var_C8, var_E8, var_108)
  loc_1009C68: Exit Sub
  loc_1009C69: DOC
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '109B498
  'Data Table: 436470
  Dim var_86 As Integer
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_109B1DB: Proc_6_58_E054C0(arg_10)
  loc_109B1E3: var_86 = KeyAscii
  loc_109B1EC: If (var_86 = 1) Then
  loc_109B218:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_109B228:     Set var_CC = Me.TXT
  loc_109B22E:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_109B236:     var_D0.Text = "Yes"
  loc_109B245:   Else
  loc_109B26E:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_109B27E:       Set var_CC = Me.TXT
  loc_109B284:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_109B28C:       var_D0.Text = "No"
  loc_109B298:     End If
  loc_109B298:   End If
  loc_109B29A:   arg_10 = 0
  loc_109B2A0: Else
  loc_109B2A6:   If (var_86 = 5) Then
  loc_109B2B5:     Set var_CC = Me.TXT
  loc_109B2BB:     Call 0.Method_Txt_KeyPress0 (0, var_D0, var_D4)
  loc_109B2C3:     arg_10 = var_D0.Text
  loc_109B2DA:     If (var_D4 <> "SA") Then
  loc_109B306:       If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_109B316:         Set var_CC = Me.TXT
  loc_109B31C:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_109B324:         var_D0.Text = "Yes"
  loc_109B333:       Else
  loc_109B35C:         If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_109B36C:           Set var_CC = Me.TXT
  loc_109B372:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_109B37A:           var_D0.Text = "No"
  loc_109B386:         End If
  loc_109B386:       End If
  loc_109B389:     Else
  loc_109B395:       Set var_CC = Me.TXT
  loc_109B39B:       Call 0.Method_Txt_KeyPress0 (0, var_D0)
  loc_109B3BA:       If (var_D0.Text = "SA") Then
  loc_109B3E6:         If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_109B3F6:           Set var_CC = Me.TXT
  loc_109B3FC:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_109B404:           var_D0.Text = "Yes"
  loc_109B413:         Else
  loc_109B43C:           If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_109B44C:             Set var_CC = Me.TXT
  loc_109B452:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_109B45A:             var_D0.Text = "Yes"
  loc_109B469:           Else
  loc_109B476:             Set var_CC = Me.TXT
  loc_109B47C:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_109B484:             var_D0.Text = "Yes"
  loc_109B490:           End If
  loc_109B490:         End If
  loc_109B490:       End If
  loc_109B490:     End If
  loc_109B492:     arg_10 = 0
  loc_109B495:   End If
  loc_109B495: End If
  loc_109B495: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E76E5C
  'Data Table: 436470
  loc_E76E0C: On Error Goto loc_E76E1F
  loc_E76E1B: If (KeyCode = 1) Then
  loc_E76E1E: End If
  loc_E76E1E: Exit Sub
  loc_E76E1F: ' Referenced from: E76E0C
  loc_E76E27: Set var_8C = Err()
  loc_E76E2D: Call 0.Method_arg_2C (var_90)
  loc_E76E46: MsgBox(CVar(var_90), &H10, var_C0, var_E0, var_100)
  loc_E76E59: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E97ED8
  'Data Table: 436470
  loc_E97E6C: On Error Goto loc_E97E9A
  loc_E97E79: Set var_88 = Me.TXT
  loc_E97E7F: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E97E8D: Proc_183_27_E22608(var_8C)
  loc_E97E99: Exit Sub
  loc_E97E9A: ' Referenced from: E97E6C
  loc_E97EA2: Set var_88 = Err()
  loc_E97EA8: Call 0.Method_arg_2C (var_94)
  loc_E97EC1: MsgBox(CVar(var_94), &H10, var_C4, var_E4, var_104)
  loc_E97ED4: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '11519B4
  'Data Table: 436470
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_90 As Variant
  Dim var_CC As String
  Dim unk_436489 As Connection15
  Dim var_C4 As Recordset15
  Dim var_144 As Field20
  Dim var_110 As String
  Dim arg_10 As Integer
  loc_1151628: On Error Goto loc_1151978
  loc_115162E: var_86 = Cancel
  loc_1151637: If (var_86 = 0) Then
  loc_1151645:   If (CurrMode = "Edit") Then
  loc_1151652:     Set var_8C = Me.TXT
  loc_1151658:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1151672:     var_C0 = Ucase(Trim(CVar(var_90)))
  loc_1151687:     Set var_C4 = Me.TXT
  loc_115168D:     Call 0.Method_Txt_Validate0 (Cancel, var_C8, var_CC)
  loc_1151695:     var_C0 = var_C8.Tag
  loc_11516A3:     var_EC = Trim(CVar(var_CC))
  loc_11516AE:     var_FC = Ucase(var_EC)
  loc_11516D0:     If (var_86 = var_FC) Then
  loc_11516D3:       Exit Sub
  loc_11516D4:     End If
  loc_11516D4:   End If
  loc_11516EB:   If ((CurrMode <> "Display") And (CurrMode <> "Find")) Then
  loc_11516FA:     Set var_8C = Me.TXT
  loc_1151700:     Call 0.Method_Txt_Validate0 (0, var_90)
  loc_115171C:     Set var_C4 = Me.TXT
  loc_1151722:     Call 0.Method_Txt_Validate0 (0, var_C8)
  loc_1151746:     If (var_90.Text <> var_C8.Tag) Then
  loc_1151773:       Set var_8C = Me.TXT
  loc_1151779:       Call 0.Method_Txt_Validate0 (0, var_90, "select count(*) FROM userMAST WHERE USER_NAME = ", var_EC, -1)
  loc_1151788:       var_B0 = Trim(CVar(var_90))
  loc_1151793:       Proc_183_9_EAA760(var_C0, var_B0, var_C4, var_C8)
  loc_115179B:       var_DC = 0 & var_C0 
  loc_115179F:       var_CC = CStr(var_DC)
  loc_11517A9:       unk_436489.Execute var_CC, var_144, var_FC
  loc_11517B1:        = var_C4.Fields
  loc_11517B9:        = var_C8.Item()
  loc_11517C1:        = var_144.Value
  loc_11517EE:       If (var_FC > 0) Then
  loc_115180E:         Set var_8C = Me.Label
  loc_1151814:         Call 0.Method_Txt_Validate0 (0, var_90, var_CC, "* ")
  loc_115181C:         0 = var_90.Caption
  loc_115182F:         MsgBox(CVar(var_B0 & var_CC & " Already Exist *"), var_C0, var_DC, , )
  loc_115185A:         Set var_8C = Me.TXT
  loc_1151860:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1151868:         var_90.Text = vbNullString
  loc_1151876:         arg_10 = &HFF
  loc_1151879:         Exit Sub
  loc_115187A:       End If
  loc_115187A:     End If
  loc_115187A:   End If
  loc_115187D: Else
  loc_1151883:   If (var_86 = 1) Then
  loc_1151886:     GoTo loc_1151977
  loc_1151889:   End If
  loc_115188F:   If (var_86 = 3) Then
  loc_115189F:     Set var_8C = Me.TXT
  loc_11518A5:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11518AD:     var_110 = var_90.Text
  loc_11518C1:     Set var_C4 = Me.TXT
  loc_11518C7:     Call 0.Method_Txt_Validate0 (2, var_C8, var_CC)
  loc_11518CF:     var_110 = var_C8.Text
  loc_11518EB:     If (arg_10 <> var_CC) Then
  loc_115190B:       Set var_8C = Me.Label
  loc_1151911:       Call 0.Method_Txt_Validate0 (0, var_90, var_CC, "* ")
  loc_1151919:       0 = var_90.Caption
  loc_115192C:       MsgBox(CVar(var_B0 & var_CC & " Already Exist *"), var_C0, var_DC, , )
  loc_1151957:       Set var_8C = Me.TXT
  loc_115195D:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1151965:       var_90.Text = vbNullString
  loc_1151973:       arg_10 = &HFF
  loc_1151976:       Exit Sub
  loc_1151977:       ' Referenced from:   1151886
  loc_1151977:     End If
  loc_1151977:   End If
  loc_1151977: End If
  loc_1151977: Exit Sub
  loc_1151978: ' Referenced from: 1151628
  loc_1151980: Set var_8C = Err()
  loc_1151986: Call 0.Method_arg_2C (var_CC)
  loc_115199F: MsgBox(CVar(var_CC), &H10, var_B0, var_C0, var_DC)
  loc_11519B2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F52268
  'Data Table: 436470
  Dim var_94 As TextBox
  Dim var_9C As TextBox
  loc_F52158: On Error Goto loc_F5222D
  loc_F5217E: Call Proc_153_34_FA2D74(Proc_5_1_100CB50("ADD", Me))
  loc_F52194: Set var_8C = Me.TXT
  loc_F5219A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (6, var_94)
  loc_F521A2: var_94.Enabled = False
  loc_F521AE: Call Proc_153_33_F6192C(global_64)
  loc_F521BF: Set var_8C = Me.TXT
  loc_F521C5: Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_94)
  loc_F521CD: var_88 = var_94.Text
  loc_F521DE: Set var_98 = Me.TXT
  loc_F521E4: Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_9C)
  loc_F521EC: var_9C.Tag = var_88
  loc_F52204: Call Txt_GotFocus(0)
  loc_F52212: Set var_8C = Me.TXT
  loc_F52218: Call 0.Method_TopCtrl1_UnknownEvent_A0 (0)
  loc_F52220: var_94.SetFocus
  loc_F5222C: Exit Sub
  loc_F5222D: ' Referenced from: F52158
  loc_F52235: Set var_8C = Err()
  loc_F5223B: Call 0.Method_arg_2C (var_88)
  loc_F52254: MsgBox(CVar(var_88), &H10, var_CC, var_EC, var_10C)
  loc_F52267: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EDA4B8
  'Data Table: 436470
  loc_EDA40C: On Error Goto loc_EDA47D
  loc_EDA41A: var_C4 = "Confirmation"
  loc_EDA446: If (MsgBox("Are You Sure To Cancel Changes", 4, var_C4, var_E4, var_104) = 6) Then
  loc_EDA45E:   var_108 = "INI"
  loc_EDA46C:   Call Proc_153_34_FA2D74(Proc_5_1_100CB50(var_108, Me))
  loc_EDA477:   Call Proc_153_32_12A6E80(global_64)
  loc_EDA47C: End If
  loc_EDA47C: Exit Sub
  loc_EDA47D: ' Referenced from: EDA40C
  loc_EDA485: Set var_10C = Err()
  loc_EDA48B: Call 0.Method_arg_2C (var_108)
  loc_EDA4A4: MsgBox(CVar(var_108), &H10, var_C4, var_E4, var_104)
  loc_EDA4B7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10D85F8
  'Data Table: 436470
  Dim Me As Recordset15
  Dim unk_436489 As Connection15
  Dim var_120 As TextBox
  Dim var_128 As String
  Dim var_B8 As Variant
  loc_10D8300: On Error Goto loc_10D8585
  loc_10D830C: var_98 = Me.RecordCount
  loc_10D831A: If (var_98 > 0) Then
  loc_10D8354:   If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_10D8368:     var_94 = Me.Bookmark 'Variant
  loc_10D8375:     unk_436489.BeginTrans var_98
  loc_10D8396:     Set var_11C = Me.TXT
  loc_10D839C:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (0, var_120, var_124, "delete from user1 where user_name='")
  loc_10D83A4:     var_B8 = var_120.Text
  loc_10D83AD:     var_128 = -1 & var_124
  loc_10D83BD:     unk_436489.Execute var_128 & "'", var_130, 
  loc_10D83F3:     Set var_11C = Me.TXT
  loc_10D83F9:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (0, var_120, var_124, "delete from user2 where user_name='")
  loc_10D8401:     var_B8 = var_120.Text
  loc_10D840A:     var_128 = -1 & var_124
  loc_10D841A:     unk_436489.Execute var_128 & "'", var_130, 
  loc_10D8450:     Set var_11C = Me.TXT
  loc_10D8456:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (0, var_120, var_124, "delete from menuhelp1 where username='")
  loc_10D845E:     var_B8 = var_120.Text
  loc_10D8467:     var_128 = -1 & var_124
  loc_10D8477:     unk_436489.Execute var_128 & "'", var_130, 
  loc_10D84AD:     Set var_11C = Me.TXT
  loc_10D84B3:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (0, var_120, var_124, "delete from userMAST where user_name='")
  loc_10D84BB:     var_B8 = var_120.Text
  loc_10D84C4:     var_128 = -1 & var_124
  loc_10D84D4:     unk_436489.Execute var_128 & "'", var_130, 
  loc_10D84F4:     unk_436489.CommitTrans
  loc_10D8504:     Me.Requery -1
  loc_10D8512:     var_98 = Me.RecordCount
  loc_10D8524:     If (CVar(var_98) >= var_94) Then
  loc_10D8531:       Me.Bookmark = var_94
  loc_10D8539:     Else
  loc_10D854D:       If (Me.EOF = 0) Then
  loc_10D8556:         Me.MoveLast
  loc_10D855B:       End If
  loc_10D855B:     End If
  loc_10D855B:     Call Proc_153_32_12A6E80()
  loc_10D857C:     Proc_5_0_110649C(&HFF, Me)
  loc_10D8584:   End If
  loc_10D8584: End If
  loc_10D8584: Exit Sub
  loc_10D8585: ' Referenced from: 10D8300
  loc_10D858D: Set var_11C = Err()
  loc_10D8593: Call 0.Method_arg_1C (var_98, global_64)
  loc_10D85A4: If (var_98 <> 0) Then
  loc_10D85AD:   unk_436489.RollbackTrans
  loc_10D85B2: End If
  loc_10D85BA: Set var_11C = Err()
  loc_10D85C0: Call 0.Method_arg_2C (var_124)
  loc_10D85E1: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F8, var_118)
  loc_10D85F4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FED624
  'Data Table: 436470
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim var_B0 As TextBox
  loc_FED454: On Error Goto loc_FED5DE
  loc_FED46E: If (Me.RecordCount > 0) Then
  loc_FED494:   Call Proc_153_34_FA2D74(Proc_5_1_100CB50("EDIT", Me))
  loc_FED4AB:   Set var_A0 = Me.TXT
  loc_FED4B1:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_A8)
  loc_FED4B9:   var_9C = var_A8.Text
  loc_FED4CA:   Set var_AC = Me.TXT
  loc_FED4D0:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_B0)
  loc_FED4D8:   var_B0.Tag = var_9C
  loc_FED4F0:   Set var_88 = Nothing
  loc_FED511:   If (Ucase(MemVar_1F920C8) = "SA") Then
  loc_FED51F:     Set var_A0 = Me.TXT
  loc_FED525:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (6, var_A8)
  loc_FED52D:     var_A8.Enabled = False
  loc_FED53C:   Else
  loc_FED547:     Set var_A0 = Me.TXT
  loc_FED54D:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (2, var_A8)
  loc_FED555:     var_A8.Enabled = False
  loc_FED56C:     Set var_A0 = Me.TXT
  loc_FED572:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (3, var_A8)
  loc_FED57A:     var_A8.Enabled = False
  loc_FED586:   End If
  loc_FED58F:   Set var_A0 = Me.TXT
  loc_FED595:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_A8)
  loc_FED59D:   var_A8.SetFocus
  loc_FED5AC: Else
  loc_FED5CD:   MsgBox("There Is No Record To Edit.", &H40, "Information", var_110, var_130)
  loc_FED5DD: End If
  loc_FED5DD: Exit Sub
  loc_FED5DE: ' Referenced from: FED454
  loc_FED5E6: Set var_A0 = Err()
  loc_FED5EC: Call 0.Method_arg_2C (var_9C)
  loc_FED60D: MsgBox(CVar(var_9C), &H30, " Editing Error ", var_110, var_130)
  loc_FED620: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E8C654
  'Data Table: 436470
  Dim var_88 As Variant
  loc_E8C5EC: On Error Goto loc_E8C617
  loc_E8C5FA: Set global_64 = Nothing
  loc_E8C60E: Me.Global.Unload Me
  loc_E8C616: Exit Sub
  loc_E8C617: ' Referenced from: E8C5EC
  loc_E8C61F: Set var_88 = Err()
  loc_E8C625: Call 0.Method_arg_2C (var_8C)
  loc_E8C63E: MsgBox(CVar(var_8C), &H10, var_BC, var_DC, var_FC)
  loc_E8C651: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F588E0
  'Data Table: 436470
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F587C0: On Error Goto loc_F5889F
  loc_F587DA: If (Me.RecordCount <= 0) Then
  loc_F587FE:   MsgBox("No Records To Search.", &H40, "Information", var_E8, var_108)
  loc_F5880E:   Exit Sub
  loc_F5880F: End If
  loc_F58822: var_B8 = "SA"
  loc_F5882D: If (Ucase(MemVar_1F920C8) = var_B8) Then
  loc_F58833:   MemVar_1F920E4 = "select user_name as searchcode,User_Name+SPACE(20-LEN(User_Name)) AS UserName,Label FROM USERMAST ORDER BY USER_NAME"
  loc_F5883A: Else
  loc_F58840:   If (MemVar_1F920B8 = 1) Then
  loc_F58846:     MemVar_1F920E4 = "select user_name as searchcode,User_Name+SPACE(20-LEN(User_Name)) AS UserName,Label FROM USERMAST where User_name <>'SA'ORDER BY USER_NAME"
  loc_F5884D:   Else
  loc_F58853:     If (MemVar_1F920B8 = 0) Then
  loc_F5885D:       var_10C = "select user_name as searchcode,User_Name+SPACE(20-LEN(User_Name)) AS UserName,Label FROM USERMAST where User_name='" & MemVar_1F920C8
  loc_F58864:       MemVar_1F920E4 = var_10C & "' ORDER BY USER_NAME"
  loc_F5886B:     End If
  loc_F5886B:   End If
  loc_F5886B: End If
  loc_F58871: MemVar_1F92120 = Me
  loc_F5887E: Proc_6_126_F1BCC0("3000,500")
  loc_F58899: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F5889E: Exit Sub
  loc_F5889F: ' Referenced from: F587C0
  loc_F588CA: MsgBox(Err().Name, &H40, "Information", var_E8, var_108)
  loc_F588DD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2D078
  'Data Table: 436470
  loc_E2D068: Proc_5_0_110649C(&HFF, Me)
  loc_E2D070: Call Proc_153_32_12A6E80(global_64)
  loc_E2D075: Exit Sub
  loc_E2D076: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2CEF8
  'Data Table: 436470
  loc_E2CEE8: Proc_5_0_110649C(&HFF, Me)
  loc_E2CEF0: Call Proc_153_32_12A6E80(global_64)
  loc_E2CEF5: Exit Sub
  loc_E2CEF6: Set var_788 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2CF58
  'Data Table: 436470
  loc_E2CF48: Proc_5_0_110649C(&HFF, Me)
  loc_E2CF50: Call Proc_153_32_12A6E80(global_64)
  loc_E2CF55: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2CCB8
  'Data Table: 436470
  loc_E2CCA8: Proc_5_0_110649C(&HFF, Me)
  loc_E2CCB0: Call Proc_153_32_12A6E80(global_64)
  loc_E2CCB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '107322C
  'Data Table: 436470
  Dim unk_436489 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_1072FAC: On Error Goto loc_10731E3
  loc_1072FC5: unk_436489.Execute "SELECT *,User_Name as Name,Label as Label,ActiveYN as Active FROM UserMast ", var_BC, -1
  loc_1072FD0: Set var_88 = var_C0
  loc_1072FDF: var_C4 = var_88.RecordCount
  loc_1072FED: If (var_C4 = 0) Then
  loc_1073009:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_1073019:   Exit Sub
  loc_107301A: End If
  loc_1073029: var_12C = MemVar_1F920B4 & "\userMast.ttx"
  loc_1073030: Set var_C0 = var_88 
  loc_107303C: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_1073046: Set var_88 = var_C0
  loc_107304C: var_AC = CVar(var_12E) 'Integer
  loc_107304F: var_98 = var_AC 'Variant
  loc_107306B: var_128 = MemVar_1F920B4 & "\UserMast.RPT"
  loc_1073074: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_107307F: MemVar_1F921E4 = var_C0
  loc_107309A: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_10730A2: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10730AE: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_10730C7:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10730CF:   Call 0.Method_arg_20 (var_138)
  loc_10730D7:   Call 0.Method_arg_30 (var_128)
  loc_107311D:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_1073133:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_107313B:     Call 0.Method_arg_20 (var_138)
  loc_1073143:     Call 0.Method_arg_38 ("'User Master'")
  loc_107314F:   End If
  loc_1073152: Next var_132 'Integer
  loc_1073170: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_1073178: Call 0.Method_arg_2C (var_D4)
  loc_1073186: Call 0.Method_arg_150 (var_F4)
  loc_1073191: Call 0.Method_arg_50 (var_128)
  loc_107319B: Set var_138 = Nothing
  loc_10731B5: Set var_C0 = MemVar_1F921E4 
  loc_10731C1: Proc_6_99_1483714(var_C0, 0, var_128)
  loc_10731CC: MemVar_1F921E4 = var_C0
  loc_10731DF: Set var_88 = Nothing
  loc_10731E2: Exit Sub
  loc_10731E3: ' Referenced from: 1072FAC
  loc_10731EB: Set var_C0 = Err()
  loc_10731F1: Call 0.Method_arg_2C (var_128, &HFF)
  loc_10731FC: Call 0.Method_arg_50 (var_12C)
  loc_1073218: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_107322B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0AA14
  'Data Table: 436470
  Dim Me As Recordset15
  loc_E0AA0B: Me.Requery -1
  loc_E0AA10: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1439100
  'Data Table: 436470
  Dim var_AC As Variant
  Dim var_A4 As TextBox
  Dim var_E8 As Variant
  Dim var_C8 As String
  Dim unk_436489 As Connection15
  Dim var_B4 As String
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_190 As TextBox
  Dim var_294 As Variant
  Dim var_340 As Variant
  Dim var_108 As Variant
  Dim var_F8 As String
  Dim var_128 As Variant
  Dim var_214 As Variant
  Dim var_28C As Variant
  Dim var_338 As Variant
  Dim var_3AC As TextBox
  Dim var_3A4 As Variant
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_14386C0: On Error Goto loc_143909D
  loc_14386C7: var_92 = CByte(0) 'Byte
  loc_14386D4: Set var_A0 = Me.TXT
  loc_14386DA: Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_14386EB: Set var_A8 = Me.Label
  loc_14386F1: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_AC)
  loc_1438724: If (Proc_183_19_E8DAFC(var_A4, var_AC.Caption) = 0) Then
  loc_1438727:   Exit Sub
  loc_1438728: End If
  loc_1438731: Set var_A0 = Me.TXT
  loc_1438737: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_A4)
  loc_1438748: Set var_A8 = Me.Label
  loc_143874E: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_AC)
  loc_1438781: If (Proc_183_19_E8DAFC(var_A4, var_AC.Caption) = 0) Then
  loc_1438784:   Exit Sub
  loc_1438785: End If
  loc_143878E: Set var_A0 = Me.TXT
  loc_1438794: Call 0.Method_TopCtrl1_UnknownEvent_160 (4, var_A4)
  loc_14387A5: Set var_A8 = Me.Label
  loc_14387AB: Call 0.Method_TopCtrl1_UnknownEvent_160 (4, var_AC)
  loc_14387B3: var_B4 = var_AC.Caption
  loc_14387DE: If (Proc_183_19_E8DAFC(var_A4, var_B4) = 0) Then
  loc_14387E1:   Exit Sub
  loc_14387E2: End If
  loc_14387EE: Set var_A0 = Me.TXT
  loc_14387F4: Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_A4)
  loc_14387FC: var_B8 = var_A4.Text
  loc_1438810: Set var_A8 = Me.TXT
  loc_1438816: Call 0.Method_TopCtrl1_UnknownEvent_160 (3, var_AC, var_B4)
  loc_143881E: var_B8 = var_AC.Text
  loc_143883A: If (var_A4 <> var_B4) Then
  loc_1438843:   Call 0.Method_arg_50 (var_B4)
  loc_1438851:   var_E8 = CVar(var_B4) 'String
  loc_1438864:   MsgBox("Password Not Confirmed", &H10, var_E8, var_108, var_128)
  loc_1438874:   Exit Sub
  loc_1438875: End If
  loc_143887E: unk_436489.BeginTrans var_12C
  loc_1438887: var_92 = CByte(1) 'Byte
  loc_143888F: Set var_A0 = Me.topCtrl1
  loc_1438895: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14388AE: If (CStr() = "Add") Then
  loc_14388BA:   Set var_A0 = Me.TXT
  loc_14388C0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_14388CF:   Proc_183_9_EAA760(var_E8, CVar(var_A4))
  loc_14388E3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_AC)
  loc_14388EB:   var_13C = CVar(var_AC) 'Address
  loc_1438902:   Call Proc_153_30_EEEF40(CStr(RTrim(var_13C)), var_B8)
  loc_1438910:   Proc_183_9_EAA760(var_16C, CVar(var_B8))
  loc_1438921:   Set var_B0 = Me.TXT
  loc_1438927:   Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_190)
  loc_1438944:   var_1C4 = "1"
  loc_1438964:   Proc_183_9_EAA760(var_204, IIf((var_190.Text = "Yes"), var_1C4, "0"))
  loc_1438972:   Set var_238 = Me.TXT
  loc_1438978:   Call 0.Method_TopCtrl1_UnknownEvent_160 (4, var_23C)
  loc_1438987:   Proc_183_9_EAA760(var_25C, CVar(var_23C))
  loc_1438998:   Set var_290 = Me.TXT
  loc_143899E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (5, var_294)
  loc_14389DB:   Proc_183_9_EAA760(var_308, IIf((var_294.Text = "Yes"), "Y", "N"))
  loc_14389EC:   Set var_33C = Me.Label1
  loc_14389F2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HE, var_340)
  loc_1438A34:   var_214 = "INSERT INTO USERMAST (user_name,PASSWD,Label,shortname,ActiveYN,backcolor) VALUES (" & var_E8 & "," & var_16C & "," & var_204 
  loc_1438A5D:   var_338 = var_214 & "," & var_25C & "," & var_308 & "," 
  loc_1438A7F:   unk_436489.Execute CStr(var_338 & CVar(var_340.BackColor) & ")"), var_3A4, -1
  loc_1438B02:   Set var_A0 = Me.TXT
  loc_1438B08:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, "Insert into userpermission (username,CompCode,Site_Code,LogSite_Code) values (", var_204)
  loc_1438B17:   Proc_183_9_EAA760(var_E8, CVar(var_A4), -1)
  loc_1438B37:   Proc_6_17_EAA2B0(var_13C, MemVar_1F92128, Me.TXT & var_E8 & ",")
  loc_1438B57:   Proc_6_17_EAA2B0(var_16C, MemVar_1F92070)
  loc_1438B77:   Proc_6_17_EAA2B0(var_1C4, MemVar_1F92078)
  loc_1438B96:   unk_436489.Execute CStr(var_3A8 & var_13C & "," & var_16C & "," & var_1C4 & ")"), var_A4, 
  loc_1438BC7: Else
  loc_1438BCB:   Set var_A0 = Me.topCtrl1
  loc_1438BD1:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1438BEA:   If (CStr() = "Edit") Then
  loc_1438BF6:     Set var_A0 = Me.TXT
  loc_1438BFC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_1438C0B:     Proc_183_9_EAA760(var_E8, CVar(var_A4))
  loc_1438C19:     Set var_A8 = Me.TXT
  loc_1438C1F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_AC)
  loc_1438C3E:     Call Proc_153_30_EEEF40(CStr(RTrim(CVar(var_AC))), var_B8)
  loc_1438C46:     var_15C = CVar(var_B8) 'String
  loc_1438C4C:     Proc_183_9_EAA760(var_16C, var_15C)
  loc_1438C5D:     Set var_B0 = Me.TXT
  loc_1438C63:     Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_190)
  loc_1438CA0:     Proc_183_9_EAA760(var_204, IIf((var_190.Text = "Yes"), "1", "0"))
  loc_1438CAE:     Set var_238 = Me.TXT
  loc_1438CB4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (4, var_23C)
  loc_1438CC3:     Proc_183_9_EAA760(var_25C, CVar(var_23C))
  loc_1438CD4:     Set var_290 = Me.Label1
  loc_1438CDA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (&HE, var_294)
  loc_1438CF3:     Set var_33C = Me.TXT
  loc_1438CF9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (5, var_340)
  loc_1438D36:     Proc_183_9_EAA760(var_338, IIf((var_340.Text = "Yes"), "Y", "N"))
  loc_1438D47:     Set var_3A8 = Me.TXT
  loc_1438D4D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_3AC)
  loc_1438DA8:     var_28C = "UPDATE USERMAST SET user_name=" & var_E8 & ",PASSWD=" & var_16C & ",Label=" & var_204 & ",shortname=" & var_25C & ",BackColor=" 
  loc_1438DED:     unk_436489.Execute CStr(var_28C & CVar(var_294.BackColor) & ",ActiveYN=" & var_338 & " where user_name='" & CVar(var_3AC.Text) & "'"), var_3F0, -1
  loc_1438E5F:   End If
  loc_1438E5F: End If
  loc_1438E7A: Set var_A0 = Me.TXT
  loc_1438E80: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, "DELETE FROM User2 WHERE User_Name=", var_15C)
  loc_1438E8F: Proc_183_9_EAA760(var_E8, CVar(var_A4), -1)
  loc_1438EC1: unk_436489.Execute CStr(var_A8 & var_E8 & " AND Comp_Code='" & CVar(MemVar_1F92128) & "'"), var_3F4, var_A4
  loc_1438EEE: var_C8 = "INSERT INTO User2 (User_Name,Comp_Code,Param_Str) VALUES ("
  loc_1438EFC: Set var_A0 = Me.TXT
  loc_1438F02: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, var_C8)
  loc_1438F11: Proc_183_9_EAA760(var_E8, CVar(var_A4), var_15C)
  loc_1438F19: var_108 = -1 & var_E8 
  loc_1438F1D: var_F8 = ",'"
  loc_1438F22: var_128 = var_A8 & var_E8 & var_F8 
  loc_1438F43: unk_436489.Execute CStr(var_128 & CVar(MemVar_1F92128) & "','*')"), var_A8, 
  loc_1438F69: unk_436489.CommitTrans
  loc_1438F72: var_92 = CByte(0) 'Byte
  loc_1438F81: Me.Requery -1
  loc_1438F8A: Set var_A0 = Me.topCtrl1
  loc_1438F90: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1438F98: var_B4 = CStr()
  loc_1438FA9: If (var_B4 = "Add") Then
  loc_1438FC9:   Set var_A0 = Me.TXT
  loc_1438FCF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, var_B4, "SearchCode ='")
  loc_1438FD7:   0 = var_A4.Text
  loc_1438FE0:   var_B8 = 1 & var_B4
  loc_1438FF0:   Me.Find var_B8 & "'", var_C8, 
  loc_1439005:   Call TopCtrl1_UnknownEvent_A()
  loc_143900A:   Exit Sub
  loc_143900E: Else
  loc_143902A:   Set var_A0 = Me.TXT
  loc_1439030:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, "User_Name=")
  loc_143903F:   Proc_183_9_EAA760(var_E8, CVar(var_A4), 0)
  loc_1439047:   var_108 = 1 & var_E8 
  loc_1439055:   Me.Find CStr(var_108), var_F8, 
  loc_1439069: End If
  loc_143907E: var_B4 = "INI"
  loc_143908C: Call Proc_153_34_FA2D74(Proc_5_1_100CB50(var_B4, Me))
  loc_1439097: Call Proc_153_32_12A6E80(global_64)
  loc_143909C: Exit Sub
  loc_143909D: ' Referenced from: 14386C0
  loc_14390A6: If (CInt(var_92) = 1) Then
  loc_14390AF:   unk_436489.RollbackTrans
  loc_14390B4: End If
  loc_14390BC: Set var_A0 = Err()
  loc_14390C2: Call 0.Method_arg_2C (var_B4)
  loc_14390CD: Call 0.Method_arg_50 (var_B8)
  loc_14390E9: MsgBox(CVar(var_B4), &H10, CVar(var_B8), var_108, var_128)
  loc_14390FC: Exit Sub
End Sub

Private Sub Form_Load() '114277C
  'Data Table: 436470
  Dim var_D4 As String
  Dim unk_436489 As Connection15
  Dim var_90 As Variant
  Dim var_B0 As Variant
  loc_11423F4: On Error Goto loc_114273E
  loc_11423FE: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_114240F: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_1142420: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_1142431: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_1142442: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_1142453: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_1142464: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_1142475: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_1142486: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_1142497: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_11424A8: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_11424C2: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_11424D0: Set var_8C = MemVar_1F92044
  loc_11424DF: Call 0.Method_Form_Load8 (var_8C)
  loc_11424F5: Me.Recordset20.Clone
  loc_114250F: Call 0.Method_Form_LoadC (var_8C, -1)
  loc_1142529: Me.Recordset20.Clone
  loc_1142534: Set var_90 = var_8C
  loc_1142543: Call 0.Method_arg_50 (var_90, -1)
  loc_114255A: var_B0 = Ucase(MemVar_1F920C8)
  loc_114256D: If (var_B0 = "SA") Then
  loc_1142586:   Me.Connection15.Execute "select user_name as searchcode,User_Name,PASSWD,SHORTNAME,Label,ActiveYN,backcolor FROM USERMAST ORDER BY USER_NAME", var_B0, -1
  loc_1142597:   Set global_64 = var_8C
  loc_11425A8: Else
  loc_11425BC:   var_D4 = "select user_name as searchcode,User_Name,PASSWD,SHORTNAME,Label,ActiveYN,backcolor FROM USERMAST where user_name='" & MemVar_1F920C8
  loc_11425CC:   unk_436489.Execute var_D4 & "' ORDER BY USER_NAME", var_B0, -1
  loc_11425DD:   Set global_64 = var_8C
  loc_11425F2: End If
  loc_11425F8: If (MemVar_1F920B8 <> 1) Then
  loc_1142606:   Set var_8C = Me.TXT
  loc_114260C:   Call 0.Method_Form_Load0 (5, var_90, 0, var_8C)
  loc_1142614:   var_90.Visible = var_8C
  loc_1142631:   Call 0.Method_Form_Load0 (1, var_90, 0)
  loc_1142639:   var_90.Visible = Me.TXT
  loc_1142650:   Set var_8C = Me.Label
  loc_1142656:   Call 0.Method_Form_Load0 (6, var_90)
  loc_114265E:   var_90.Visible = False
  loc_1142675:   Set var_8C = Me.Label
  loc_114267B:   Call 0.Method_Form_Load0 (7, var_90)
  loc_1142683:   var_90.Visible = False
  loc_114269A:   Set var_8C = Me.Label
  loc_11426A0:   Call 0.Method_Form_Load0 (1, var_90)
  loc_11426A8:   var_90.Visible = False
  loc_11426BF:   Set var_8C = Me.Label
  loc_11426C5:   Call 0.Method_Form_Load0 (5, var_90)
  loc_11426CD:   var_90.Visible = False
  loc_11426D9: End If
  loc_11426FB: Proc_183_1_F5B310(Me, CStr(-2147483643))
  loc_1142716: Set var_8C = Me
  loc_114271F: var_D4 = "INI"
  loc_114272D: Call Proc_153_34_FA2D74(Proc_5_1_100CB50(var_D4, var_8C, global_64), CStr(&HC00000))
  loc_1142738: Call Proc_153_32_12A6E80(var_8C)
  loc_114273D: Exit Sub
  loc_114273E: ' Referenced from: 11423F4
  loc_1142746: Set var_8C = Err()
  loc_114274C: Call 0.Method_arg_2C (var_D4)
  loc_1142765: MsgBox(CVar(var_D4), &H10, var_D0, var_EC, var_10C)
  loc_1142778: Exit Sub
End Sub

Private Sub Form_Resize() 'ED7D08
  'Data Table: 436470
  Dim var_8C As Label
  loc_ED7C66: Call 0.Method_arg_50 (var_88)
  loc_ED7C78: Me.LblFormCaption.Caption = var_88
  loc_ED7C91: Me.LblFormCaption.Left = CDbl(0)
  loc_ED7C9D: Set var_A0 = Me.topCtrl1
  loc_ED7CA3: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED7CB0: Set var_8C = Me.topCtrl1
  loc_ED7CB6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED7CD0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED7CEB: Call 0.Method_arg_100 (var_B8)
  loc_ED7CFD: Me.LblFormCaption.Width = var_B8
  loc_ED7D05: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EED628
  'Data Table: 436470
  Dim var_C8 As Variant
  Dim var_CC As String
  Dim unk_436489 As Connection15
  Dim var_A8 As Variant
  loc_EED568: On Error Goto loc_EED5EA
  loc_EED576: Set global_96 = Nothing
  loc_EED583: If (Cancel = 0) Then
  loc_EED591:   Set global_64 = Nothing
  loc_EED598: End If
  loc_EED5B5: Proc_183_9_EAA760(var_A8, MemVar_1F920C8, "select name as form_name,user1.* from user1 left join USER_module on USER_module.srno=user1.srno where user_name=")
  loc_EED5BD: var_C8 = var_EC & var_A8 
  loc_EED5C1: var_CC = CStr(var_C8)
  loc_EED5CB: unk_436489.Execute var_CC, -1, var_88
  loc_EED5D6: MemVar_1F92068 = var_88
  loc_EED5E9: Exit Sub
  loc_EED5EA: ' Referenced from: EED568
  loc_EED5F2: Set var_88 = Err()
  loc_EED5F8: Call 0.Method_arg_2C (var_CC)
  loc_EED611: MsgBox(CVar(var_CC), &H10, var_C8, var_EC, var_FC)
  loc_EED624: Exit Sub
End Sub

Private Sub Form_Activate() 'E8C2EC
  'Data Table: 436470
  loc_E8C288: On Error Goto loc_E8C2B0
  loc_E8C291: Call 0.Method_arg_1C0 (var_88)
  loc_E8C2A1: If (var_88 <> "INI") Then
  loc_E8C2AA:   Call 0.Method_arg_1C4 (vbNullString)
  loc_E8C2AF: End If
  loc_E8C2AF: Exit Sub
  loc_E8C2B0: ' Referenced from: E8C288
  loc_E8C2B8: Set var_8C = Err()
  loc_E8C2BE: Call 0.Method_arg_2C (var_88)
  loc_E8C2D7: MsgBox(CVar(var_88), &H10, var_BC, var_DC, var_FC)
  loc_E8C2EA: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8B8D8
  'Data Table: 436470
  loc_E8B874: On Error Goto loc_E8B892
  loc_E8B889: Proc_183_40_F30B0C(Me, KeyCode)
  loc_E8B891: Exit Sub
  loc_E8B892: ' Referenced from: E8B874
  loc_E8B89A: Set var_8C = Err()
  loc_E8B8A0: Call 0.Method_arg_2C (var_90)
  loc_E8B8C1: MsgBox(CVar(var_90), &H40, "Information", var_E0, var_100)
  loc_E8B8D4: Exit Sub
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'E1A4E4
  'Data Table: 436470
  Dim KeyAscii As Integer
  loc_E1A4D8: If (KeyAscii = CInt(&HD)) Then
  loc_E1A4DD:   KeyAscii = 0
  loc_E1A4E0: End If
  loc_E1A4E0: Exit Sub
End Sub

Private Sub Label1_Click(Index As Integer) 'E9805C
  'Data Table: 436470
  Dim var_88 As CommonDialog
  Dim arg_20 As Variant
  Dim var_A4 As Label
  loc_E97FE8: Set var_88 = Me.topCtrl1
  loc_E97FEE: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E98007: If (CStr() <> "Browse") Then
  loc_E98014:   arg_20 = Me.CDLG._Action
  loc_E9803C:   Set var_A0 = Me.Label1
  loc_E98042:   Call 0.Method_Label1_Click0 (Index, var_A4)
  loc_E9804A:   var_A4.BackColor = CLng(Me.CDLG.Color)
  loc_E9805B: End If
  loc_E9805B: Exit Sub
End Sub

Public Function CurrModeGet() '436BB8
  CurrModeGet = CurrMode
End Function

Public Sub CurrModePut(Value) '436BC7
  CurrMode = Value
End Sub

Public Sub Grid_Hide() 'E69F48
  'Data Table: 436470
  loc_E69F08: On Error Goto loc_E69F0C
  loc_E69F0B: Exit Sub
  loc_E69F0C: ' Referenced from: E69F08
  loc_E69F14: Set var_88 = Err()
  loc_E69F1A: Call 0.Method_arg_2C (var_8C)
  loc_E69F33: MsgBox(CVar(var_8C), &H10, var_BC, var_DC, var_FC)
  loc_E69F46: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'ED874C
  'Data Table: 436470
  Dim unk_436489 As Connection15
  Dim var_B0 As Variant
  loc_ED86B6: On Error Goto loc_ED8709
  loc_ED86DD: unk_436489.Execute "select * FROM USERMAST where user_name ='" & MyValue & "' ORDER BY USER_NAME", var_B0, -1
  loc_ED86EE: Set global_64 = var_B4
  loc_ED8703: Call Proc_153_32_12A6E80(var_B4)
  loc_ED8708: Exit Sub
  loc_ED8709: ' Referenced from: ED86B6
  loc_ED8734: MsgBox(Err().Name, &H40, "Information", var_E8, var_108)
  loc_ED8747: Exit Sub
  loc_ED8748: Exit Sub
End Sub

Public Sub Proc_153_30_EEEF40(arg_C) 'EEEF40
  'Data Table: 436470
  Dim var_90 As Integer
  Dim var_B0 As Integer
  Dim var_10C As Variant
  loc_EEEE85: Randomize(var_B0)
  loc_EEEEA6: var_90 = CInt(Int(((CDbl(&H63) * Rnd(var_B0)) + CDbl(1))))
  loc_EEEEB6: var_B0 = Chr(CLng((var_90 + &H1B)))
  loc_EEEECF: For var_B8 = 1 To CInt(Len(arg_C)): var_8E = var_B8 'Integer
  loc_EEEF0B:   var_EC = Chr(CLng(((Asc(CStr(Mid(arg_C, CLng(var_8E), 1))) + &H1B) + var_90)))
  loc_EEEF13:   var_10C = (CVar(CStr(1)) + var_EC)
  loc_EEEF18:   var_8C = CStr(var_10C)
  loc_EEEF2C: Next var_B8 'Integer
  loc_EEEF34: var_88 = var_8C
  loc_EEEF37: Proc_153_30_EEEF40 = 
End Sub

Public Sub Proc_153_31_EFE2C4(arg_C) 'EFE2C4
  'Data Table: 436470
  Dim var_90 As Integer
  Dim var_108 As Variant
  Dim arg_DFF As Double
  loc_EFE1FE: If (arg_C = vbNullString) Then
  loc_EFE204:   var_88 = vbNullString
  loc_EFE207:   Proc_153_31_EFE2C4 = 
  loc_EFE20D: End If
  loc_EFE231: var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EFE250: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EFE273:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EFE28F:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EFE297:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EFE29C:   var_8C = CStr(var_108)
  loc_EFE2B0: Next var_B8 'Integer
  loc_EFE2B8: var_88 = var_8C
  loc_EFE2BB: Proc_153_31_EFE2C4 = 
  loc_EFE2C1: arg_DFF = 
End Sub

Public Sub Proc_153_32_12A6E80
  'Data Table: 436470
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_C4 As String
  Dim var_C0 As Variant
  Dim var_A8 As Variant
  Dim var_D4 As String
  Dim var_1BE As Integer
  Dim var_BC As Fields15
  Dim var_E4 As Variant
  Dim var_1C0 As Integer
  Dim var_114 As Variant
  Dim var_1B8 As TextBox
  Dim var_F4 As Variant
  Dim var_88 As Recordset15
  loc_12A6890: On Error Goto loc_12A6E45
  loc_12A6897: Set var_88 = New 
  loc_12A68A0: Proc_183_45_E5C118(global_64)
  loc_12A68BC: If (Me.Recordset15.RecordCount <= 0) Then
  loc_12A68BF:   Call Proc_153_33_F6192C()
  loc_12A68C7: Else
  loc_12A68FE:   Set var_BC = Me.TXT
  loc_12A6904:   Call 0.Method_Proc_153_32_12A6E800 (0, var_C0)
  loc_12A690C:   var_C0.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("USER_NAME")))
  loc_12A6957:   Set var_BC = Me.TXT
  loc_12A695D:   Call 0.Method_Proc_153_32_12A6E800 (0, var_C0)
  loc_12A6965:   var_C0.Tag = Proc_183_2_E5A304(CVar(Me.Fields.Item("USER_NAME")))
  loc_12A69E5:   Set var_BC = Me.TXT
  loc_12A69EB:   Call 0.Method_Proc_153_32_12A6E800 (1, var_C0)
  loc_12A69F3:   var_C0.Text = CStr(IIf((Me.Fields.Item("Label").Value = "1"), "Yes", "No"))
  loc_12A6AC5:   Call Proc_153_31_EFE2C4(CStr(RTrim(IIf(IsNull(CVar(Me.Fields.Item("PASSWD"))), vbNullString, CVar(Me.Fields.Item("PASSWD"))))))
  loc_12A6AFA:   Set var_1B4 = Me.TXT
  loc_12A6B00:   Call 0.Method_Proc_153_32_12A6E800 (2, var_1B8, CStr(IIf(IsNull(CVar(Me.Fields.Item("PASSWD"))), vbNullString, CVar(var_160))))
  loc_12A6B08:   var_1B8.Text = var_160
  loc_12A6B65:   var_1BE = IsNull(CVar(Me.Fields.Item("PASSWD")))
  loc_12A6B82:   var_C0 = Me.Fields.Item("PASSWD")
  loc_12A6B8A:   var_E4 = CVar(var_C0) 'Address
  loc_12A6B93:   var_1C0 = IsNull(var_E4)
  loc_12A6BB8:   var_114 = CVar(Me.Fields.Item("PASSWD")) 'Address
  loc_12A6BEC:   Call Proc_153_31_EFE2C4(CStr(RTrim(IIf(var_1C0, vbNullString, var_114))))
  loc_12A6C21:   Set var_1B4 = Me.TXT
  loc_12A6C27:   Call 0.Method_Proc_153_32_12A6E800 (3, var_1B8, CStr(IIf(var_1BE, vbNullString, CVar(var_160))), var_160)
  loc_12A6C2F:   var_1B8.Text = var_1C0
  loc_12A6C98:   Set var_BC = Me.TXT
  loc_12A6C9E:   Call 0.Method_Proc_153_32_12A6E800 (4, var_C0, Proc_183_2_E5A304(CVar(Me.Fields.Item("ShortName")), var_1BE))
  loc_12A6CA6:   var_C0.Text = var_1C0
  loc_12A6CD4:   var_A8 = Me.Fields.Item("ActiveYN")
  loc_12A6CE5:   var_C4 = Proc_183_2_E5A304(CVar(var_A8))
  loc_12A6CF6:   If (var_C4 <> "N") Then
  loc_12A6D05:     Set var_94 = Me.TXT
  loc_12A6D0B:     Call 0.Method_Proc_153_32_12A6E800 (5, var_A8)
  loc_12A6D13:     var_A8.Text = "Yes"
  loc_12A6D22:   Else
  loc_12A6D2E:     Set var_94 = Me.TXT
  loc_12A6D34:     Call 0.Method_Proc_153_32_12A6E800 (5, var_A8)
  loc_12A6D3C:     var_A8.Text = "No"
  loc_12A6D48:   End If
  loc_12A6D54:   Set var_94 = Me.TXT
  loc_12A6D5A:   Call 0.Method_Proc_153_32_12A6E800 (6, var_A8)
  loc_12A6D62:   var_A8.Text = vbNullString
  loc_12A6D97:   Proc_6_39_E7C810(var_E4, CVar(Me.Fields.Item("BackColor")))
  loc_12A6DAA:   Set var_BC = Me.Label1
  loc_12A6DB0:   Call 0.Method_Proc_153_32_12A6E800 (&HE, var_C0)
  loc_12A6DB8:   var_C0.BackColor = CLng(var_E4)
  loc_12A6E0E:   var_D4 = "SHAPE {select ID,MAX(Module_Name) AS MainMenu from USER_MODULE GROUP BY ID} APPEND ({select ID,NAME,USER_module.srno,'Allow' = CASE WHEN right(param_str,1) = 'P' THEN 'ü' else ''  END , 'Ins' = CASE WHEN left(param_str,1) = 'A' THEN 'ü' else ''  END ,'Edit' = CASE WHEN substring(param_str,2,1) = 'E' THEN 'ü' else ''  END,'Del' = CASE WHEN substring(param_str,3,1) = 'D' THEN 'ü' else ''  END,flag,CODE,NAME from USER_MODULE left join user1 on user1.srno=USER_module.srno where user_name='"
  loc_12A6E16:   var_E4 = var_D4 & Me.Fields.Item("USER_NAME").Value 
  loc_12A6E1F:   var_F4 = var_E4 & "' or user_name is null} RELATE ID TO ID) AS AA" 
  loc_12A6E27:   var_88.Open var_F4, CVar(MemVar_1F92044), -1
  loc_12A6E3C: End If
  loc_12A6E41: Set var_88 = Nothing
  loc_12A6E44: Exit Sub
  loc_12A6E45: ' Referenced from: 12A6890
  loc_12A6E4D: Set var_94 = Err()
  loc_12A6E53: Call 0.Method_arg_2C (var_C4, -1)
  loc_12A6E6C: MsgBox(CVar(var_C4), &H10, var_E4, var_F4, var_114)
  loc_12A6E7F: Exit Sub
End Sub

Public Sub Proc_153_33_F6192C
  'Data Table: 436470
  Dim var_8C As TextBox
  loc_F61808: On Error Goto loc_F618F0
  loc_F61817: Set var_88 = Me.TXT
  loc_F6181D: Call 0.Method_Proc_153_33_F6192C0 (0, var_8C)
  loc_F61825: var_8C.Text = vbNullString
  loc_F6183D: Set var_88 = Me.TXT
  loc_F61843: Call 0.Method_Proc_153_33_F6192C0 (1, var_8C)
  loc_F6184B: var_8C.Text = vbNullString
  loc_F61863: Set var_88 = Me.TXT
  loc_F61869: Call 0.Method_Proc_153_33_F6192C0 (2, var_8C)
  loc_F61871: var_8C.Text = vbNullString
  loc_F61889: Set var_88 = Me.TXT
  loc_F6188F: Call 0.Method_Proc_153_33_F6192C0 (3, var_8C)
  loc_F61897: var_8C.Text = vbNullString
  loc_F618AF: Set var_88 = Me.TXT
  loc_F618B5: Call 0.Method_Proc_153_33_F6192C0 (4, var_8C)
  loc_F618BD: var_8C.Text = vbNullString
  loc_F618D5: Set var_88 = Me.TXT
  loc_F618DB: Call 0.Method_Proc_153_33_F6192C0 (6, var_8C)
  loc_F618E3: var_8C.Text = vbNullString
  loc_F618EF: Exit Sub
  loc_F618F0: ' Referenced from: F61808
  loc_F618F8: Set var_88 = Err()
  loc_F618FE: Call 0.Method_arg_2C (var_90)
  loc_F61917: MsgBox(CVar(var_90), &H10, var_C0, var_E0, var_100)
  loc_F6192A: Exit Sub
End Sub

Public Sub Proc_153_34_FA2D74(arg_C) 'FA2D74
  'Data Table: 436470
  Dim var_8C As TextBox
  loc_FA2BF8: On Error Goto loc_FA2D39
  loc_FA2C07: Set var_88 = Me.TXT
  loc_FA2C0D: Call 0.Method_Proc_153_34_FA2D740 (0, var_8C)
  loc_FA2C15: var_8C.Enabled = arg_C
  loc_FA2C2D: Set var_88 = Me.TXT
  loc_FA2C33: Call 0.Method_Proc_153_34_FA2D740 (1, var_8C)
  loc_FA2C3B: var_8C.Enabled = arg_C
  loc_FA2C53: Set var_88 = Me.TXT
  loc_FA2C59: Call 0.Method_Proc_153_34_FA2D740 (2, var_8C)
  loc_FA2C61: var_8C.Enabled = arg_C
  loc_FA2C79: Set var_88 = Me.TXT
  loc_FA2C7F: Call 0.Method_Proc_153_34_FA2D740 (3, var_8C)
  loc_FA2C87: var_8C.Enabled = arg_C
  loc_FA2C9F: Set var_88 = Me.TXT
  loc_FA2CA5: Call 0.Method_Proc_153_34_FA2D740 (4, var_8C)
  loc_FA2CAD: var_8C.Enabled = arg_C
  loc_FA2CC5: Set var_88 = Me.TXT
  loc_FA2CCB: Call 0.Method_Proc_153_34_FA2D740 (5, var_8C)
  loc_FA2CD3: var_8C.Enabled = arg_C
  loc_FA2CEB: Set var_88 = Me.TXT
  loc_FA2CF1: Call 0.Method_Proc_153_34_FA2D740 (6, var_8C)
  loc_FA2CF9: var_8C.Enabled = arg_C
  loc_FA2D10: If (CurrMode = "Find") Then
  loc_FA2D1E:   Set var_88 = Me.TXT
  loc_FA2D24:   Call 0.Method_Proc_153_34_FA2D740 (0, var_8C)
  loc_FA2D2C:   var_8C.Enabled = True
  loc_FA2D38: End If
  loc_FA2D38: Exit Sub
  loc_FA2D39: ' Referenced from: FA2BF8
  loc_FA2D41: Set var_88 = Err()
  loc_FA2D47: Call 0.Method_arg_2C (var_90)
  loc_FA2D60: MsgBox(CVar(var_90), &H10, var_C0, var_E0, var_100)
  loc_FA2D73: Exit Sub
End Sub
