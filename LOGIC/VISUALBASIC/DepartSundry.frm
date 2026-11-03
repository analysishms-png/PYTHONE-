VERSION 5.00
Begin VB.Form DepartSundry
  Caption = "Outlet Bill Sundry Setting"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 11625
  ClientHeight = 7155
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11625
    Height = 450
    TabIndex = 22
  End
  Begin Frame PwdFrame
    Caption = "Change Password"
    BackColor = &HC0FFFF&
    ForeColor = &HC00000&
    Left = 6795
    Top = 6135
    Width = 3570
    Height = 1230
    Visible = 0   'False
    TabIndex = 17
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdChange
      Caption = "Change"
      Left = 855
      Top = 705
      Width = 780
      Height = 330
      Visible = 0   'False
      TabIndex = 14
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdCancel
      Caption = "Cancel"
      Left = 1845
      Top = 705
      Width = 780
      Height = 330
      Visible = 0   'False
      TabIndex = 15
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox Txt
      Index = 2
      ForeColor = &HC00000&
      Left = 1590
      Top = 285
      Width = 1245
      Height = 285
      TabIndex = 13
      PasswordChar = "*"
      MaxLength = 8
    End
    Begin Label Label1
      Caption = "New Password"
      BackColor = &HC0FFC0&
      ForeColor = &HC00000&
      Left = 255
      Top = 300
      Width = 1140
      Height = 285
      TabIndex = 18
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin TextBox txtPassword
    ForeColor = &HC00000&
    Left = 3090
    Top = 6135
    Width = 1365
    Height = 315
    TabIndex = 11
    PasswordChar = "#"
  End
  Begin Frame Frame1
    BackColor = &HFFC0C0&
    Left = 11805
    Top = 6690
    Width = 555
    Height = 2040
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Begin CommandButton CmdUp
      Caption = "�"
      BackColor = &HC0FFFF&
      Left = 90
      Top = 270
      Width = 390
      Height = 630
      TabIndex = 10
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
      BackColor = &HC0FFFF&
      Left = 83
      Top = 1125
      Width = 390
      Height = 630
      TabIndex = 9
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
    Left = 9945
    Top = 1815
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGRevenue
    Left = 9555
    Top = 1530
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin DataGrid DGVType
    Left = 9240
    Top = 1215
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2730
    Top = 1260
    Width = 1455
    Height = 285
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
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
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
    Left = 45
    Top = 1770
    Width = 10890
    Height = 3540
    TabIndex = 2
  End
  Begin CommandButton CmdPwd
    Caption = "Change Password"
    BackColor = &HC0FFFF&
    Left = 5040
    Top = 6135
    Width = 1725
    Height = 330
    TabIndex = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5100
    Top = 7575
    Width = 2790
    Height = 285
    TabIndex = 21
    Alignment = 2 'Center
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
    Left = 1725
    Top = 7575
    Width = 2880
    Height = 255
    TabIndex = 20
    Alignment = 2 'Center
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
    TabIndex = 19
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
    Caption = "Password"
    Index = 2
    ForeColor = &HC00000&
    Left = 2040
    Top = 6135
    Width = 915
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
  Begin Label LblDepart
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 5730
    Top = 1095
    Width = 3885
    Height = 510
    Visible = 0   'False
    TabIndex = 7
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Applicable From"
    Index = 1
    ForeColor = &HC00000&
    Left = 975
    Top = 1260
    Width = 1575
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
End

Attribute VB_Name = "DepartSundry"

Private global_68 As Integer
Private global_70 As Integer
Private MasterFormExit As Integer

Private Sub CmdChange_Click() '100B618
  'Data Table: 4EFEBC
  Dim var_88 As Variant
  Dim var_A0 As Variant
  Dim var_90 As TextBox
  Dim unk_4EFED5 As Connection15
  Dim var_124 As String
  Dim var_B0 As Variant
  loc_100B439: Me.txtPassword.Text = vbNullString
  loc_100B441: On Error Goto loc_100B5CD
  loc_100B44F: Set var_88 = Me.Txt
  loc_100B455: Call 0.Method_CmdChange_Click0 (CInt(2))
  loc_100B464: var_B0 = Trim(CVar(var_90))
  loc_100B47E: If (var_B0 = vbNullString) Then
  loc_100B49A:   MsgBox("Password Can't be blank ", &H40, var_B0, var_D0, var_110)
  loc_100B4B5:   Set var_88 = Me.Txt
  loc_100B4BB:   Call 0.Method_CmdChange_Click0 (CInt(2), var_90)
  loc_100B4C3:   var_90.SetFocus
  loc_100B4CF:   Exit Sub
  loc_100B4D0: End If
  loc_100B4EB: If (Me.PwdFrame.Visible = &HFF) Then
  loc_100B4FA:   Me.PwdFrame.Visible = False
  loc_100B51D:   If (Me.CmdPwd.Enabled = &HFF) Then
  loc_100B52C:     Me.CmdPwd.Enabled = False
  loc_100B534:   End If
  loc_100B534: End If
  loc_100B53D: unk_4EFED5.BeginTrans var_118
  loc_100B560: Set var_88 = Me.Txt
  loc_100B566: Call 0.Method_CmdChange_Click0 (CInt(2), var_90, var_11C, "Update Enviro set SundryPassword='")
  loc_100B56E: var_A0 = var_90.Text
  loc_100B57F: var_124 = Proc_96_18_EE9560(var_11C, -1)
  loc_100B5A1: unk_4EFED5.Execute var_138 & var_124 & "' where SiteCode='" & MemVar_1F92078 & "'", var_90, 
  loc_100B5C7: unk_4EFED5.CommitTrans
  loc_100B5CC: Exit Sub
  loc_100B5CD: ' Referenced from: 100B441
  loc_100B5D5: Set var_88 = Err()
  loc_100B5DB: Call 0.Method_arg_2C (var_11C)
  loc_100B5E6: Call 0.Method_arg_50 (var_120)
  loc_100B602: MsgBox(CVar(var_11C), &H40, CVar(var_120), var_D0, var_110)
  loc_100B615: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E51240
  'Data Table: 4EFEBC
  loc_E5121A: Set var_88 = Me.Txt
  loc_E51220: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E5122E: Proc_6_74_E226B0(var_8C)
  loc_E5123A: Call Proc_73_59_EBBF08(var_8C)
  loc_E5123F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'EE0054
  'Data Table: 4EFEBC
  loc_EDFFAA: If (CLng(Shift) = &H1B) Then
  loc_EDFFAD:   Call Proc_73_59_EBBF08()
  loc_EDFFB2:   Exit Sub
  loc_EDFFB3: End If
  loc_EE0009: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_EE0021:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EE002A:     Proc_6_75_E527CC(Shift)
  loc_EE002F:   End If
  loc_EE0044:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EE004D:     Proc_6_76_E52838(Shift, arg_14)
  loc_EE0052:   End If
  loc_EE0052: End If
  loc_EE0052: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E044C0
  'Data Table: 4EFEBC
  Dim var_86 As Integer
  loc_E044B3: Proc_6_58_E054C0(arg_10)
  loc_E044BB: var_86 = KeyAscii
  loc_E044BE: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47CDC
  'Data Table: 4EFEBC
  loc_E47CBA: Set var_88 = Me.Txt
  loc_E47CC0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47CCE: Proc_6_73_E22704(var_8C)
  loc_E47CDA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FCF43C
  'Data Table: 4EFEBC
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_A0 As TextBox
  Dim var_A4 As String
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_8C As MSHFlexGrid
  loc_FCF2A2: If (Cancel = CInt(1)) Then
  loc_FCF2B0:   Set var_8C = Me.Txt
  loc_FCF2B6:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_FCF2DF:   If (Proc_6_27_EA565C(var_90, "App. Date") = 0) Then
  loc_FCF2ED:     Set var_8C = Me.Txt
  loc_FCF2F3:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_FCF2FB:     var_90.SetFocus
  loc_FCF309:     arg_10 = &HFF
  loc_FCF30C:     Exit Sub
  loc_FCF30D:   End If
  loc_FCF317:   Set var_8C = Me.Txt
  loc_FCF31D:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FCF33D:   Set var_9C = Me.Txt
  loc_FCF343:   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_FCF34B:   var_A0.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_FCF37A:   Me.Recordset15.CursorLocation = 3
  loc_FCF3A4:   var_A4 = " SELECT DISTINCT RM.Code as Code,RM.Name as NAme,RM.Type FROM RevMast AS RM WHERE  (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and RM.FieldType='T'"
  loc_FCF3B9:   var_B0 = var_A4 & " Union " & " Select Distinct RM.Code as Code,RM.Name as NAme,RM.Type From RevMast RM Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_FCF3D8:   Me.Open CVar(var_B0 & "' or LOGSITE_CODE='HO') and RM.DeskCode='" & MemVar_1F92078 & "PURC' Order By Name"), CVar(MemVar_1F92044), 3
  loc_FCF3FA:   CVarUnk
  loc_FCF3FF:   VerifyVarObj
  loc_FCF40B:   LateIdStAd
  loc_FCF419:   Call Proc_73_61_12DCA10(Me.DGRevenue, New, 1)
  loc_FCF430:   Me.FGrid.Col = CVar(CLng(1))
  loc_FCF438: End If
  loc_FCF438: Exit Sub
  loc_FCF439: VarIndexSt
End Sub

Private Sub CmdDown_Click() '1095D20
  'Data Table: 4EFEBC
  Dim var_C0 As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  loc_1095ABF: If (CLng(Me.FGrid.Row) = 1) Then
  loc_1095AC2:   Exit Sub
  loc_1095AC3: End If
  loc_1095AFE: If (CLng(Me.FGrid.Row) = (CLng(Me.FGrid.Rows) - 2)) Then
  loc_1095B01:   Exit Sub
  loc_1095B02: End If
  loc_1095B16: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_1095B44: For var_D4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_D4 'Integer
  loc_1095B4E:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_1095B57:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_1095B7B:   var_A0(CLng(var_A6)) = CStr(Me.FGrid.TextMatrix))
  loc_1095B88: Next var_D4 'Integer
  loc_1095BB2: For var_11C = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_11C 'Integer
  loc_1095BCB:   var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1095BD4:   var_160 = CVar(CLng(var_A6)) 'Long
  loc_1095BF2:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_1095BFB:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_1095C15:   var_180 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1095C1D:   Set var_194 = Me.FGrid
  loc_1095C23:   LateIdCallSt
  loc_1095C44: Next var_11C 'Integer
  loc_1095C6E: For var_198 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_198 'Integer
  loc_1095C8D:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_1095C96:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_1095CAB:   Set var_C0 = Me.FGrid
  loc_1095CB1:   LateIdCallSt
  loc_1095CC6: Next var_198 'Integer
  loc_1095CD2: var_E4 = CVar(CLng((var_86 + 1))) 'Long
  loc_1095CE1: Me.FGrid.Row = var_E4
  loc_1095D0B: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_1095D1A: Call Proc_73_50_E7E1C0()
  loc_1095D1F: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11E4CB4
  'Data Table: 4EFEBC
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_11E483C: Call Proc_73_59_EBBF08()
  loc_11E4854: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11E486F: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E4878: Set var_BC = Me.FGrid
  loc_11E48AE: Set var_104 = Me.TxtGrid
  loc_11E48B4: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_11E48BC: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_11E48ED: var_110 = CLng(Me.FGrid.Col)
  loc_11E48FD: If (var_110 = CLng(3)) Then
  loc_11E490F:   Set var_A8 = Me.TxtGrid
  loc_11E4915:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E491D:   var_BC.MaxLength = var_110
  loc_11E496A:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E496D:     Exit Sub
  loc_11E496E:   End If
  loc_11E4981:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E4989:   var_DC = CVar(CLng(3)) 'Long
  loc_11E49BC:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E49C5:     Me.MoveFirst
  loc_11E49DD:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E49E5:     var_DC = CVar(CLng(2)) 'Long
  loc_11E49EE:     Set var_BC = Me.FGrid
  loc_11E4A05:     Proc_6_17_EAA2B0(var_128, CVar(CStr(var_BC.TextMatrix))), var_DC, var_94)
  loc_11E4A2E:     Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E4A5E:     If (Me.EOF = &HFF) Then
  loc_11E4A67:       Me.MoveFirst
  loc_11E4A6C:     End If
  loc_11E4A6C:   End If
  loc_11E4A6F: Else
  loc_11E4A76:   If Not (var_110 = CLng(7)) Then
  loc_11E4A80:     If (var_110 = CLng(9)) Then
  loc_11E4A83:     End If
  loc_11E4A92:     Set var_A8 = Me.TxtGrid
  loc_11E4A98:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_158)
  loc_11E4AA0:     var_BC.MaxLength = var_DC
  loc_11E4AB5:     If (global_70 = 0) Then
  loc_11E4AC0:       var_10C = "{Home}+{End}"
  loc_11E4AC6:       Proc_303_0_FB9B68(CStr("Code=" & var_128), 0)
  loc_11E4ACE:     End If
  loc_11E4AD1:   Else
  loc_11E4AD8:     If (var_110 = CLng(4)) Then
  loc_11E4AEA:       Set var_A8 = Me.TxtGrid
  loc_11E4AF0:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E4AF8:       var_BC.MaxLength = var_94
  loc_11E4B07:     Else
  loc_11E4B0E:       If (var_110 = CLng(5)) Then
  loc_11E4B20:         Set var_A8 = Me.TxtGrid
  loc_11E4B26:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E4B2E:         var_BC.MaxLength = &H32
  loc_11E4B3D:       Else
  loc_11E4B44:         If (var_110 = CLng(&HD)) Then
  loc_11E4B56:           Set var_A8 = Me.TxtGrid
  loc_11E4B5C:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E4B64:           var_BC.MaxLength = &H32
  loc_11E4BB1:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E4BB4:             Exit Sub
  loc_11E4BB5:           End If
  loc_11E4BC8:           var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E4BD0:           var_DC = CVar(CLng(&HD)) 'Long
  loc_11E4C03:           If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E4C0C:             Me.MoveFirst
  loc_11E4C4C:             Proc_6_17_EAA2B0(var_128, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_11E4C75:             Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E4CA5:             If (Me.EOF = &HFF) Then
  loc_11E4CAE:               Me.MoveFirst
  loc_11E4CB3:             End If
  loc_11E4CB3:           End If
  loc_11E4CB3:         End If
  loc_11E4CB3:       End If
  loc_11E4CB3:     End If
  loc_11E4CB3:   End If
  loc_11E4CB3: End If
  loc_11E4CB3: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13F66D8
  'Data Table: 4EFEBC
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C8 As Variant
  Dim var_94 As DataGrid
  loc_13F5CA8: On Error Goto loc_13F66D0
  loc_13F5CB5: If (CLng(Shift) = &H1B) Then
  loc_13F5CC5:   Set var_88 = Me.TxtGrid
  loc_13F5CCB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13F5CE5:   Set var_94 = Me.TxtGrid
  loc_13F5CEB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_13F5CF3:   var_98.Text = var_8C.Tag
  loc_13F5D0F:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13F5D14:   Call Proc_73_59_EBBF08(arg_14)
  loc_13F5D1D:   Set var_88 = Me.FGrid
  loc_13F5D3A:   Set var_88 = Me.TxtGrid
  loc_13F5D40:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13F5D48:   var_8C.Visible = False
  loc_13F5D54:   Exit Sub
  loc_13F5D55: End If
  loc_13F5D68: var_AC = CLng(Me.FGrid.Col)
  loc_13F5D78: If (var_AC = CLng(1)) Then
  loc_13F5D85:   If (CLng(Shift) = &HD) Then
  loc_13F5D8E:     Call Proc_73_55_153C388(KeyCode, var_AE)
  loc_13F5D99:     If (var_AE = &HFF) Then
  loc_13F5DA7:       Set var_98 = Me.TxtGrid
  loc_13F5DD0:       Set var_8C = var_98
  loc_13F5DDF:       Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_70, &HF)
  loc_13F5DEF:     End If
  loc_13F5DEF:   End If
  loc_13F5DF2: Else
  loc_13F5DF9:   If (var_AC = CLng(3)) Then
  loc_13F5E08:     Set var_88 = Me.TxtGrid
  loc_13F5E0E:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0)
  loc_13F5E16:     3 = var_8C.Left
  loc_13F5E2D:     Me.DGSundry.Left = CVar(var_B8)
  loc_13F5E47:     Set var_94 = Me.TxtGrid
  loc_13F5E4D:     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13F5E55:     0 = var_98.Height
  loc_13F5E66:     Set var_88 = Me.TxtGrid
  loc_13F5E6C:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13F5E74:     var_AC = var_8C.Top
  loc_13F5E80:     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13F5E8F:     Me.DGSundry.Top = CVar(var_B8)
  loc_13F5EB9:     Set var_98 = Nothing
  loc_13F5EF2:     Proc_6_69_134A198(Me.DGSundry, Me.TxtGrid, KeyCode, global_76, Shift, &HFF)
  loc_13F5F10:     If (CLng(Shift) = &HD) Then
  loc_13F5F19:       Call Proc_73_55_153C388(KeyCode, var_AE, 1, Nothing)
  loc_13F5F24:       If (var_AE = &HFF) Then
  loc_13F5F6A:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF)
  loc_13F5F7A:       End If
  loc_13F5F7A:     End If
  loc_13F5F7D:   Else
  loc_13F5F84:     If (var_AC = CLng(4)) Then
  loc_13F5FC7:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F5FD0:         Call Proc_73_55_153C388(KeyCode, var_AE, 0, 4)
  loc_13F5FDB:         If (var_AE = &HFF) Then
  loc_13F6021:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F6031:         End If
  loc_13F6031:       End If
  loc_13F6034:     Else
  loc_13F603B:       If (var_AC = CLng(5)) Then
  loc_13F607E:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F6087:           Call Proc_73_55_153C388(KeyCode, var_AE, 5, 0)
  loc_13F6092:           If (var_AE = &HFF) Then
  loc_13F60D8:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F60E8:           End If
  loc_13F60E8:         End If
  loc_13F60EB:       Else
  loc_13F60F2:         If (var_AC = CLng(6)) Then
  loc_13F6135:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F613E:             Call Proc_73_55_153C388(KeyCode, var_AE, 6, 0)
  loc_13F6149:             If (var_AE = &HFF) Then
  loc_13F618F:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F619F:             End If
  loc_13F619F:           End If
  loc_13F61A2:         Else
  loc_13F61A9:           If (var_AC = CLng(7)) Then
  loc_13F61EC:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F61F5:               Call Proc_73_55_153C388(KeyCode, var_AE, 7, 0)
  loc_13F6200:               If (var_AE = &HFF) Then
  loc_13F6246:                 Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F6256:               End If
  loc_13F6256:             End If
  loc_13F6259:           Else
  loc_13F6260:             If Not (var_AC = CLng(8)) Then
  loc_13F626A:               If (var_AC = CLng(&H10)) Then
  loc_13F626D:               End If
  loc_13F62AD:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F62B6:                 Call Proc_73_55_153C388(KeyCode, var_AE, &HC, 0)
  loc_13F62C1:                 If (var_AE = &HFF) Then
  loc_13F630E:                   Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, CByte((CInt(&H11) + 1)), 0)
  loc_13F631E:                 End If
  loc_13F631E:               End If
  loc_13F6321:             Else
  loc_13F6328:               If (var_AC = CLng(&H11)) Then
  loc_13F636B:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F6374:                   Call Proc_73_55_153C388(KeyCode, var_AE, 0, 0)
  loc_13F637F:                   If (var_AE = &HFF) Then
  loc_13F63C5:                     Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F63D5:                   End If
  loc_13F63D5:                 End If
  loc_13F63D8:               Else
  loc_13F63DF:                 If (var_AC = CLng(9)) Then
  loc_13F6422:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F642B:                     Call Proc_73_55_153C388(KeyCode, var_AE, 1, 0)
  loc_13F6436:                     If (var_AE = &HFF) Then
  loc_13F647C:                       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F648C:                     End If
  loc_13F648C:                   End If
  loc_13F648F:                 Else
  loc_13F6496:                   If (var_AC = CLng(&HC)) Then
  loc_13F64D9:                     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F64E2:                       Call Proc_73_55_153C388(KeyCode, var_AE, &HC, 0)
  loc_13F64ED:                       If (var_AE = &HFF) Then
  loc_13F64FB:                         Set var_98 = Me.TxtGrid
  loc_13F6524:                         Set var_8C = var_98
  loc_13F6533:                         Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_70, &HF, 0)
  loc_13F6543:                       End If
  loc_13F6543:                     End If
  loc_13F6546:                   Else
  loc_13F654D:                     If (var_AC = CLng(&HD)) Then
  loc_13F655C:                       Set var_88 = Me.TxtGrid
  loc_13F6562:                       Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0, 0)
  loc_13F656A:                       0 = var_8C.Left
  loc_13F6581:                       Me.DGRevenue.Left = CVar(var_B8)
  loc_13F659B:                       Set var_94 = Me.TxtGrid
  loc_13F65A1:                       Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13F65A9:                       var_98 = var_98.Height
  loc_13F65BA:                       Set var_88 = Me.TxtGrid
  loc_13F65C0:                       Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13F65C8:                       0 = var_8C.Top
  loc_13F65D4:                       var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13F65E3:                       Me.DGRevenue.Top = CVar(var_B8)
  loc_13F660D:                       Set var_98 = Nothing
  loc_13F6646:                       Proc_6_69_134A198(Me.DGRevenue, Me.TxtGrid, KeyCode, global_80, Shift, &HFF)
  loc_13F6664:                       If (CLng(Shift) = &HD) Then
  loc_13F666D:                         Call Proc_73_55_153C388(KeyCode, var_AE, 1, Nothing)
  loc_13F6678:                         If (var_AE = &HFF) Then
  loc_13F66C0:                           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &H11)
  loc_13F66D0:                         End If
  loc_13F66D0:                       End If
  loc_13F66D0:                     End If
  loc_13F66D0:                   End If
  loc_13F66D0:                 End If
  loc_13F66D0:               End If
  loc_13F66D0:             End If
  loc_13F66D0:           End If
  loc_13F66D0:         End If
  loc_13F66D0:       End If
  loc_13F66D0:       ' Referenced from: 13F5CA8
  loc_13F66D0:     End If
  loc_13F66D0:   End If
  loc_13F66D0: End If
  loc_13F66D0: Proc_6_60_E62BC4(CByte(1), 0, 0)
  loc_13F66D5: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '11E5670
  'Data Table: 4EFEBC
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B4 As Integer
  Dim arg_10 As Integer
  Dim var_AC As TextBox
  loc_11E51E7: Proc_6_58_E054C0(arg_10)
  loc_11E51F8: If (KeyAscii = 0) Then
  loc_11E520E:   var_A0 = CLng(Me.FGrid.Col)
  loc_11E521E:   If (var_A0 = CLng(3)) Then
  loc_11E523D:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_11E5244:       Set var_AC = Me.TxtGrid
  loc_11E524F:       var_A4 = "Name"
  loc_11E526A:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_76, arg_10)
  loc_11E5279:     End If
  loc_11E527C:   Else
  loc_11E5283:     If Not (var_A0 = CLng(9)) Then
  loc_11E528D:       If (var_A0 = CLng(7)) Then
  loc_11E5290:       End If
  loc_11E529A:       Set var_8C = Me.TxtGrid
  loc_11E52A0:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_11E52BB:       Proc_6_42_129A86C(var_AC, arg_10, 8, 2)
  loc_11E52CA:     Else
  loc_11E52D1:       If (var_A0 = CLng(5)) Then
  loc_11E52D7:         var_B4 = arg_10
  loc_11E52E3:         If Not (&H39 > var_B4 > &H31) Then
  loc_11E52EC:           If Not (var_B4 = &H2B) Then
  loc_11E52F5:             If Not (var_B4 = &H2D) Then
  loc_11E52FE:               If Not (var_B4 = 8) Then
  loc_11E5307:                 If (var_B4 = &H30) Then
  loc_11E530A:                 End If
  loc_11E530A:               End If
  loc_11E530A:             End If
  loc_11E530A:           End If
  loc_11E530D:         Else
  loc_11E530F:           arg_10 = 0
  loc_11E5312:         End If
  loc_11E5315:       Else
  loc_11E531C:         If (var_A0 = CLng(6)) Then
  loc_11E532C:           If ((arg_10 = &H50) Or (arg_10 = &H70)) Then
  loc_11E533C:             Set var_8C = Me.TxtGrid
  loc_11E5342:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Per", arg_10)
  loc_11E534A:             var_AC.Text = var_B4
  loc_11E5358:             arg_10 = 0
  loc_11E535E:           Else
  loc_11E536B:             If ((arg_10 = &H41) Or (arg_10 = &H5A)) Then
  loc_11E537B:               Set var_8C = Me.TxtGrid
  loc_11E5381:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Amt", arg_10)
  loc_11E5389:               var_AC.Text = 0
  loc_11E5397:               arg_10 = 0
  loc_11E539D:             Else
  loc_11E53AA:               Set var_8C = Me.TxtGrid
  loc_11E53B0:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_11E53B8:               var_AC.Text = arg_10
  loc_11E53C6:               arg_10 = 0
  loc_11E53C9:             End If
  loc_11E53C9:           End If
  loc_11E53CC:         Else
  loc_11E53D3:           If Not (var_A0 = CLng(8)) Then
  loc_11E53DD:             If (var_A0 = CLng(&HC)) Then
  loc_11E53E0:             End If
  loc_11E53ED:             If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_11E53FD:               Set var_8C = Me.TxtGrid
  loc_11E5403:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_11E540B:               var_AC.Text = arg_10
  loc_11E5419:               arg_10 = 0
  loc_11E541F:             Else
  loc_11E542C:               If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_11E543C:                 Set var_8C = Me.TxtGrid
  loc_11E5442:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_11E544A:                 var_AC.Text = arg_10
  loc_11E5458:                 arg_10 = 0
  loc_11E545E:               Else
  loc_11E546B:                 Set var_8C = Me.TxtGrid
  loc_11E5471:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_11E5479:                 var_AC.Text = arg_10
  loc_11E5487:                 arg_10 = 0
  loc_11E548A:               End If
  loc_11E548A:             End If
  loc_11E548D:           Else
  loc_11E5494:             If (var_A0 = CLng(&H10)) Then
  loc_11E54C0:               If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_11E54D0:                 Set var_8C = Me.TxtGrid
  loc_11E54D6:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Auto")
  loc_11E54DE:                 var_AC.Text = arg_10
  loc_11E54EC:                 arg_10 = 0
  loc_11E54F2:               Else
  loc_11E551B:                 If (Ucase(Chr(CLng(arg_10))) = "M") Then
  loc_11E552B:                   Set var_8C = Me.TxtGrid
  loc_11E5531:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Manual")
  loc_11E5539:                   var_AC.Text = arg_10
  loc_11E5547:                   arg_10 = 0
  loc_11E554A:                 End If
  loc_11E554A:               End If
  loc_11E554D:             Else
  loc_11E5554:               If (var_A0 = CLng(&H11)) Then
  loc_11E5580:                 If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_11E5590:                   Set var_8C = Me.TxtGrid
  loc_11E5596:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_11E559E:                   var_AC.Text = arg_10
  loc_11E55AC:                   arg_10 = 0
  loc_11E55B2:                 Else
  loc_11E55DB:                   If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_11E55EB:                     Set var_8C = Me.TxtGrid
  loc_11E55F1:                     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_11E55F9:                     var_AC.Text = arg_10
  loc_11E5607:                     arg_10 = 0
  loc_11E560A:                   End If
  loc_11E560A:                 End If
  loc_11E560D:               Else
  loc_11E5614:                 If (var_A0 = CLng(&HD)) Then
  loc_11E5633:                   If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_11E5660:                     Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_80, arg_10, "Name")
  loc_11E566F:                   End If
  loc_11E566F:                 End If
  loc_11E566F:               End If
  loc_11E566F:             End If
  loc_11E566F:           End If
  loc_11E566F:         End If
  loc_11E566F:       End If
  loc_11E566F:     End If
  loc_11E566F:   End If
  loc_11E566F: End If
  loc_11E566F: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FC8450
  'Data Table: 4EFEBC
  Dim var_9C As Long
  Dim var_AA As Integer
  Dim Shift As Integer
  loc_FC8294: On Error Goto loc_FC8447
  loc_FC82AA: var_9C = CLng(Me.FGrid.Col)
  loc_FC82BA: If (var_9C = CLng(3)) Then
  loc_FC82E0:   If ((Shift <> &HD) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_FC82EE:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FC8302:     var_A4 = "Name"
  loc_FC831D:     Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_76, Shift)
  loc_FC832C:   End If
  loc_FC832F: Else
  loc_FC8336:   If Not (var_9C = CLng(6)) Then
  loc_FC8340:     If Not (var_9C = CLng(8)) Then
  loc_FC834A:       If Not (var_9C = CLng(&HC)) Then
  loc_FC8354:         If Not (var_9C = CLng(5)) Then
  loc_FC835E:           If Not (var_9C = CLng(&H10)) Then
  loc_FC8368:             If (var_9C = CLng(&H11)) Then
  loc_FC836B:             End If
  loc_FC836B:           End If
  loc_FC836B:         End If
  loc_FC836B:       End If
  loc_FC836B:     End If
  loc_FC8371:     If (Shift <> &HD) Then
  loc_FC837A:       Call TxtGrid_KeyPress(KeyCode)
  loc_FC837F:     End If
  loc_FC8382:   Else
  loc_FC8389:     If (var_9C = CLng(&HD)) Then
  loc_FC83AF:       If ((Shift <> &HD) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_FC83BD:         Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FC83EC:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_80, Shift, "Name", &HFF)
  loc_FC83FB:       End If
  loc_FC83FE:     Else
  loc_FC8405:       If (var_9C = CLng(5)) Then
  loc_FC840B:         var_AA = Shift
  loc_FC8417:         If Not (&H39 > var_AA > &H31) Then
  loc_FC8420:           If Not (var_AA = &H2B) Then
  loc_FC8429:             If Not (var_AA = &H2D) Then
  loc_FC8432:               If Not (var_AA = 8) Then
  loc_FC843B:                 If (var_AA = &H30) Then
  loc_FC843E:                 End If
  loc_FC843E:               End If
  loc_FC843E:             End If
  loc_FC843E:           End If
  loc_FC8441:         Else
  loc_FC8443:           Shift = 0
  loc_FC8446:         End If
  loc_FC8446:       End If
  loc_FC8446:     End If
  loc_FC8446:   End If
  loc_FC8446: End If
  loc_FC8446: Exit Sub
  loc_FC8447: ' Referenced from: FC8294
  loc_FC8447: Proc_6_60_E62BC4(Shift, var_AA, 0, Shift)
  loc_FC844C: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E225B4
  'Data Table: 4EFEBC
  Dim arg_10 As Integer
  loc_E2259C: If (Cancel = 0) Then
  loc_E225A5:   Call Proc_73_55_153C388(Cancel, var_88)
  loc_E225AE:   arg_10 = Not(var_88)
  loc_E225B1: End If
  loc_E225B1: Exit Sub
End Sub

Private Sub DGSundry_UnknownEvent_9 '107713C
  'Data Table: 4EFEBC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_128 As TextBox
  loc_1076EBB: Me.DGSundry.Visible = False
  loc_1076EDA: If (Me.RecordCount > 0) Then
  loc_1076EF0:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1076EF8:   var_E4 = CVar(CLng(2)) 'Long
  loc_1076F2B:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1076F33:   Set var_128 = Me.FGrid
  loc_1076F39:   LateIdCallSt
  loc_1076FAB:   Set var_128 = Me.FGrid
  loc_1076FB1:   LateIdCallSt
  loc_1077007:   Set var_B4 = Me.TxtGrid
  loc_107700D:   Call 0.Method_DGSundry_UnknownEvent_90 (0, var_128, CStr(Me.Fields.Item("Name").Value), var_128, CVar(CStr(Me.Fields.Item("Name").Value)), CVar(CLng(3)))
  loc_1077015:   var_128.Text = CVar(CLng(Me.FGrid.Row))
  loc_1077076:   var_114 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_128)) 'String
  loc_107707E:   Set var_128 = Me.FGrid
  loc_1077084:   LateIdCallSt
  loc_10770B1:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10770B9:   var_E4 = CVar(CLng(&HE)) 'Long
  loc_10770DB:   var_B0 = Me.Fields.Item("SysYN")
  loc_10770EC:   var_114 = CVar(CStr(var_B0.Value)) 'String
  loc_10770F4:   Set var_128 = Me.FGrid
  loc_10770FA:   LateIdCallSt
  loc_1077116: End If
  loc_107711F: Set var_A8 = Me.TxtGrid
  loc_1077125: Call 0.Method_DGSundry_UnknownEvent_90 (0, var_B0, var_128, var_114, var_E4, var_A4)
  loc_107712D: var_B0.SetFocus
  loc_1077139: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_9 '103C2AC
  'Data Table: 4EFEBC
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_103C06B: Me.DGRevenue.Visible = False
  loc_103C08A: If (Me.RecordCount > 0) Then
  loc_103C0A0:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103C0A8:   var_E4 = CVar(CLng(&HF)) 'Long
  loc_103C0DB:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_103C0E3:   Set var_128 = Me.FGrid
  loc_103C0E9:   LateIdCallSt
  loc_103C118:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103C120:   var_E4 = CVar(CLng(&HD)) 'Long
  loc_103C153:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_103C15B:   Set var_128 = Me.FGrid
  loc_103C161:   LateIdCallSt
  loc_103C1BC:   If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_103C1D2:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103C1DA:     var_D4 = CVar(CLng(&HB)) 'Long
  loc_103C1DF:     var_F4 = "+"
  loc_103C1E9:     Set var_B0 = Me.FGrid
  loc_103C1EF:     LateIdCallSt
  loc_103C204:   Else
  loc_103C243:     If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_103C259:       var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103C261:       var_D4 = CVar(CLng(&HB)) 'Long
  loc_103C266:       var_F4 = "-"
  loc_103C270:       Set var_B0 = Me.FGrid
  loc_103C276:       LateIdCallSt
  loc_103C288:     End If
  loc_103C288:   End If
  loc_103C288: End If
  loc_103C291: Set var_A8 = Me.TxtGrid
  loc_103C297: Call 0.Method_DGRevenue_UnknownEvent_90 (0, var_B0, var_B0, var_F4, var_D4, var_94, var_B0)
  loc_103C29F: var_B0.SetFocus
  loc_103C2AB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E85978
  'Data Table: 4EFEBC
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E8591B: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E8592E: Set var_A8 = Me.TxtGrid
  loc_E85934: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E8593C: var_AC.Visible = False
  loc_E85956: Set var_A8 = Me.TxtGrid
  loc_E8595C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E85964: var_AC.MaxLength = 0
  loc_E85970: Call Proc_73_59_EBBF08()
  loc_E85975: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69430
  'Data Table: 4EFEBC
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E693EC: Set var_88 = Me.TxtGrid
  loc_E693F2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6940C: If (var_8C.Visible = 0) Then
  loc_E69425:   Me.FGrid.BackColorSel = CVar(CLng(global_60))
  loc_E6942D: End If
  loc_E6942D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1E000
  'Data Table: 4EFEBC
  loc_E1DFF7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1DFFF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFFAA4
  'Data Table: 4EFEBC
  loc_DFFA9C: Call Proc_73_54_E3E7A4()
  loc_DFFAA1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1237780
  'Data Table: 4EFEBC
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
  loc_1237254: Set var_88 = Me.TopCtrl1
  loc_123725A: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_123729F: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_12372A8:   Call Form_KeyDown(Cancel, arg_10)
  loc_12372AD: End If
  loc_12372B1: Set var_88 = Me.TopCtrl1
  loc_12372B7: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12372D0: If (CStr() = "Browse") Then
  loc_12372D3:   Exit Sub
  loc_12372D4: End If
  loc_12372F1: var_C4 = Me.FGrid.Rows
  loc_1237348: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_123735E:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_123736E:   var_9C = "+{Tab}"
  loc_1237374:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_123737E:   Cancel = 0
  loc_1237384: Else
  loc_123738E:   var_B0 = Me.FGrid.Rows
  loc_12373DB:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_12373F1:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1237407:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_1237411:     Cancel = 0
  loc_123744B:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_123744E:       Call TopCtrl1_UnknownEvent_16()
  loc_1237453:     End If
  loc_1237453:   End If
  loc_1237453: End If
  loc_1237459: global_68 = Cancel
  loc_123747F: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_12374A3: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_12374B9:   var_11C = CLng(Me.FGrid.Col)
  loc_12374C9:   If (var_11C = CLng(3)) Then
  loc_12374DF:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12374E7:     var_F8 = CVar(CLng(3)) 'Long
  loc_12374EC:     var_12C = vbNullString
  loc_12374F6:     Set var_A0 = Me.FGrid
  loc_12374FC:     LateIdCallSt
  loc_1237521:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1237529:     var_F8 = CVar(CLng(2)) 'Long
  loc_123752E:     var_12C = vbNullString
  loc_1237538:     Set var_A0 = Me.FGrid
  loc_123753E:     LateIdCallSt
  loc_1237563:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123756B:     var_F8 = CVar(CLng(&HA)) 'Long
  loc_1237570:     var_12C = vbNullString
  loc_123757A:     Set var_A0 = Me.FGrid
  loc_1237580:     LateIdCallSt
  loc_12375A5:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12375AD:     var_F8 = CVar(CLng(&HE)) 'Long
  loc_12375B2:     var_12C = vbNullString
  loc_12375BC:     Set var_A0 = Me.FGrid
  loc_12375C2:     LateIdCallSt
  loc_12375D7:   Else
  loc_12375DE:     If Not (var_11C = CLng(1)) Then
  loc_12375E8:       If Not (var_11C = CLng(4)) Then
  loc_12375F2:         If Not (var_11C = CLng(5)) Then
  loc_12375FC:           If Not (var_11C = CLng(6)) Then
  loc_1237606:             If Not (var_11C = CLng(7)) Then
  loc_1237610:               If Not (var_11C = CLng(8)) Then
  loc_123761A:                 If Not (var_11C = CLng(9)) Then
  loc_1237624:                   If Not (var_11C = CLng(&HC)) Then
  loc_123762E:                     If (var_11C = CLng(&H10)) Then
  loc_1237631:                     End If
  loc_1237631:                   End If
  loc_1237631:                 End If
  loc_1237631:               End If
  loc_1237631:             End If
  loc_1237631:           End If
  loc_1237631:         End If
  loc_1237631:       End If
  loc_1237644:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123765C:       var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1237661:       var_12C = vbNullString
  loc_123766B:       Set var_B4 = Me.FGrid
  loc_1237671:       LateIdCallSt
  loc_123768C:     Else
  loc_1237693:       If Not (var_11C = CLng(&HD)) Then
  loc_123769D:         If (var_11C = CLng(&H11)) Then
  loc_12376A0:         End If
  loc_12376B3:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12376BB:         var_F8 = CVar(CLng(&HF)) 'Long
  loc_12376C0:         var_12C = vbNullString
  loc_12376CA:         Set var_A0 = Me.FGrid
  loc_12376D0:         LateIdCallSt
  loc_12376F5:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12376FD:         var_F8 = CVar(CLng(&HD)) 'Long
  loc_1237702:         var_12C = vbNullString
  loc_123770C:         Set var_A0 = Me.FGrid
  loc_1237712:         LateIdCallSt
  loc_1237737:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123773F:         var_F8 = CVar(CLng(&HB)) 'Long
  loc_1237744:         var_12C = vbNullString
  loc_123774E:         Set var_A0 = Me.FGrid
  loc_1237754:         LateIdCallSt
  loc_1237766:       End If
  loc_1237766:     End If
  loc_1237766:   End If
  loc_1237766: End If
  loc_123776C: If (Cancel = &HD) Then
  loc_1237774:   global_70 = 0
  loc_1237777: End If
  loc_1237779: Cancel = 0
  loc_123777C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0F8C0
  'Data Table: 4EFEBC
  loc_E0F8B1: Call FGrid_UnknownEvent_C()
  loc_E0F8BB: global_70 = 0
  loc_E0F8BE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1190AA4
  'Data Table: 4EFEBC
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_11906B4: Set var_88 = Me.TopCtrl1
  loc_11906BA: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11906D3: If (CStr() = "Browse") Then
  loc_11906D6:   Exit Sub
  loc_11906D7: End If
  loc_11906DB: Set var_88 = Me.TopCtrl1
  loc_11906E1: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11906FA: If (CStr() = "Browse") Then
  loc_11906FD:   Exit Sub
  loc_11906FE: End If
  loc_1190711: var_A0 = CLng(Me.FGrid.Col)
  loc_1190721: If Not (var_A0 = CLng(3)) Then
  loc_119072B:   If Not (var_A0 = CLng(4)) Then
  loc_1190735:     If Not (var_A0 = CLng(&HD)) Then
  loc_119073F:       If Not (var_A0 = CLng(6)) Then
  loc_1190749:         If Not (var_A0 = CLng(8)) Then
  loc_1190753:           If Not (var_A0 = CLng(&HC)) Then
  loc_119075D:             If Not (var_A0 = CLng(&H10)) Then
  loc_1190767:               If (var_A0 = CLng(&H11)) Then
  loc_119076A:               End If
  loc_119076A:             End If
  loc_119076A:           End If
  loc_119076A:         End If
  loc_119076A:       End If
  loc_119076A:     End If
  loc_119076A:   End If
  loc_119076E:   Set var_C4 = Me.FGrid
  loc_1190792:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11907BF:   Set var_B4 = var_C4
  loc_11907D1:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_11907F9:   Set var_88 = Me.TxtGrid
  loc_11907FF:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1190807:   0 = var_B4.Text
  loc_1190820:   If (Len(var_9C) <= 1) Then
  loc_119082F:     Set var_88 = Me.TxtGrid
  loc_1190835:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_119083D:     var_CA = var_B4.Text
  loc_119084E:     Set var_B8 = Me.TxtGrid
  loc_1190854:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_119085C:     var_C4.Text = var_9C
  loc_119086F:   End If
  loc_119087B:   Set var_88 = Me.TxtGrid
  loc_1190881:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_119089B:   Set var_B8 = Me.TxtGrid
  loc_11908A1:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_11908A9:   var_C4.SelStart = Len(var_B4.Text)
  loc_11908BF: Else
  loc_11908C6:   If (var_A0 = CLng(5)) Then
  loc_1190907:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_119091C:   Else
  loc_1190923:     If Not (var_A0 = CLng(1)) Then
  loc_119092D:       If Not (var_A0 = CLng(9)) Then
  loc_1190937:         If (var_A0 = CLng(7)) Then
  loc_119093A:         End If
  loc_119093A:       End If
  loc_119093E:       Set var_C4 = Me.FGrid
  loc_1190962:       var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_119096B:       var_CA = Asc(var_9C)
  loc_119098F:       Set var_B4 = var_C4
  loc_11909A1:       Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF, var_CA)
  loc_11909C9:       Set var_88 = Me.TxtGrid
  loc_11909CF:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, 0, var_CA)
  loc_11909D7:       0 = var_B4.Text
  loc_11909F0:       If (Len(var_9C) <= 1) Then
  loc_11909FF:         Set var_88 = Me.TxtGrid
  loc_1190A05:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1190A0D:         Cancel = var_B4.Text
  loc_1190A1E:         Set var_B8 = Me.TxtGrid
  loc_1190A24:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_9C)
  loc_1190A2C:         var_C4.Text = 0
  loc_1190A3F:       End If
  loc_1190A4B:       Set var_88 = Me.TxtGrid
  loc_1190A51:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1190A6B:       Set var_B8 = Me.TxtGrid
  loc_1190A71:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1190A79:       var_C4.SelStart = Len(var_B4.Text)
  loc_1190A8C:     End If
  loc_1190A8C:   End If
  loc_1190A8C: End If
  loc_1190A96: If (CLng(Cancel) <> &HD) Then
  loc_1190A9E:   global_70 = &HFF
  loc_1190AA1: End If
  loc_1190AA1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '104A56C
  'Data Table: 4EFEBC
  Dim var_94 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_11C As MSHFlexGrid
  loc_104A318: Set var_94 = Me.TopCtrl1
  loc_104A31E: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104A337: If (CStr() = "Browse") Then
  loc_104A33A:   Exit Sub
  loc_104A33B: End If
  loc_104A33F: Set var_94 = Me.TopCtrl1
  loc_104A345: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104A35E: If (CStr() = "Edit") Then
  loc_104A361:   Exit Sub
  loc_104A362: End If
  loc_104A37F: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_104A382:   Exit Sub
  loc_104A383: End If
  loc_104A394: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_104A3B6:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_104A3F0:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_104A412:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_104A428:         var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104A430:         var_E8 = CVar(CLng(1)) 'Long
  loc_104A483:         Set var_11C = Me.FGrid
  loc_104A49B:         Call Proc_73_50_E7E1C0(FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)), CInt(Val(CStr(Me.FGrid.TextMatrix)))))
  loc_104A4A3:       Else
  loc_104A4B6:         Me.FGrid.Rows = 1
  loc_104A4DC:         var_A4 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(1)))) 'String
  loc_104A4E4:         Set var_11C = Me.FGrid
  loc_104A511:         Me.FGrid.FixedRows = 1
  loc_104A519:       End If
  loc_104A519:     End If
  loc_104A51C:   Else
  loc_104A53D:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F8, var_118)
  loc_104A54D:   End If
  loc_104A551:   Set var_94 = Me.FGrid
  loc_104A562: End If
  loc_104A567: Set var_8C = Nothing
  loc_104A56A: Exit Sub
  loc_104A56B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1C4D0
  'Data Table: 4EFEBC
  loc_E1C4C7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1C4CF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1CC00
  'Data Table: 4EFEBC
  loc_E1CBF7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1CBFF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3E4EC
  'Data Table: 4EFEBC
  Dim var_8C As TextBox
  loc_E3E4C0: Call Proc_73_59_EBBF08()
  loc_E3E4D0: Set var_88 = Me.TxtGrid
  loc_E3E4D6: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3E4DE: var_8C.Visible = False
  loc_E3E4EA: Exit Sub
End Sub

Private Sub cmdCancel_Click() 'E659C4
  'Data Table: 4EFEBC
  loc_E6597D: Me.txtPassword.Text = vbNullString
  loc_E65991: Me.PwdFrame.Visible = False
  loc_E659A5: Me.CmdCancel.Visible = False
  loc_E659B9: Me.CmdChange.Visible = False
  loc_E659C1: Exit Sub
End Sub

Private Sub Form_Load() '10FB83C
  'Data Table: 4EFEBC
  Dim var_88 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  loc_10FB4FC: On Error Goto loc_10FB836
  loc_10FB50E: Me.LblUser.Left = CDbl(13500)
  loc_10FB525: Me.LblUser.Top = CDbl(7800)
  loc_10FB53C: Me.LblLDt.Top = CDbl(8160)
  loc_10FB553: Me.LblLDt.Left = CDbl(13500)
  loc_10FB562: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10FB57A: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_10FB58C: Set var_88 = Me.TopCtrl1
  loc_10FB592: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_10FB5A0: Call 0.Method_arg_50 (var_AC)
  loc_10FB5B0: Set var_88 = Me.TopCtrl1
  loc_10FB5B6: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_10FB5CD: Me.CmdPwd.Enabled = False
  loc_10FB5F1: Me.Recordset15.CursorLocation = 3
  loc_10FB61B: var_BC = CVar("Select Code,Name,Nature,SysYN From SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_10FB625: Me.Open var_BC, CVar(MemVar_1F92044), 3
  loc_10FB639: CVarUnk
  loc_10FB63E: VerifyVarObj
  loc_10FB644: Set var_88 = Me.DGSundry
  loc_10FB64A: LateIdStAd
  loc_10FB674: Me.DGSundry.CursorLocation = 3
  loc_10FB69E: var_BC = CVar("Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND (FlagType ='PUR' or FlagType  Is Null) and FlagAMR is NULL Order By Name") 'String
  loc_10FB6BC: CVarUnk
  loc_10FB6C1: VerifyVarObj
  loc_10FB6C7: Set var_88 = Me.DGRevenue
  loc_10FB6CD: LateIdStAd
  loc_10FB6F7: Me.DGRevenue.CursorLocation = 3
  loc_10FB71A: var_AC = "Select DISTINCT (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,SITEcODE AS SITE_CODE,LOGSITE_CODE From SundryType SP Where V_Type ='" & MemVar_1F92078
  loc_10FB721: var_BC = CVar("Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "PURC' Order By (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))") 'String
  loc_10FB72B: r_BC, CVar(MemVar_1F92044), 3 var_BC, CVar(MemVar_1F92044), 3
  loc_10FB759: Call Proc_73_58_E8AED4(Proc_5_1_100CB50("INI", Me, New, 1, -1, Me, New), 1, -1, Me)
  loc_10FB76C: Set var_88 = Me.TopCtrl1
  loc_10FB772: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_10FB783: Set var_88 = Me.TopCtrl1
  loc_10FB789: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_10FB79A: Set var_88 = Me.TopCtrl1
  loc_10FB7A0: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_10FB7A8: Call Proc_73_49_12AFD4C(New, 1)
  loc_10FB7AD: Call Proc_73_57_1468EBC(-1)
  loc_10FB7C5: Me.FGrid.Left = CVar(CDbl(400))
  loc_10FB7E0: Me.FGrid.Top = CVar(CDbl(1750))
  loc_10FB7FB: Me.FGrid.Height = CVar(CDbl(4300))
  loc_10FB816: Me.FGrid.Width = CVar(CDbl(14000))
  loc_10FB827: Set var_88 = Me.TopCtrl1
  loc_10FB82D: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_10FB835: Exit Sub
  loc_10FB836: ' Referenced from: 10FB4FC
  loc_10FB836: Proc_6_60_E62BC4()
  loc_10FB83B: Exit Sub
End Sub

Private Sub Form_Resize() 'ED6E08
  'Data Table: 4EFEBC
  Dim var_8C As Label
  loc_ED6D66: Call 0.Method_arg_50 (var_88)
  loc_ED6D78: Me.LblFormCaption.Caption = var_88
  loc_ED6D91: Me.LblFormCaption.Left = CDbl(0)
  loc_ED6D9D: Set var_A0 = Me.TopCtrl1
  loc_ED6DA3: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED6DB0: Set var_8C = Me.TopCtrl1
  loc_ED6DB6: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED6DD0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED6DEB: Call 0.Method_arg_100 (var_B8)
  loc_ED6DFD: Me.LblFormCaption.Width = var_B8
  loc_ED6E05: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E56624
  'Data Table: 4EFEBC
  loc_E565EF: Set global_72 = Nothing
  loc_E56601: Set global_76 = Nothing
  loc_E56613: Set global_80 = Nothing
  loc_E5661F: MasterFormExit = 0
  loc_E56622: Exit Sub
End Sub

Private Sub Form_Activate() 'E47DB0
  'Data Table: 4EFEBC
  loc_E47D80: On Error Goto loc_E47DAA
  loc_E47D87: Set var_88 = Me.TopCtrl1
  loc_E47D8D: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E47DA2: If (CLng(CInt()) = &H2D) Then
  loc_E47DA5:   Call TopCtrl1_UnknownEvent_15()
  loc_E47DAA:   ' Referenced from: E47D80
  loc_E47DAA: End If
  loc_E47DAA: Proc_6_60_E62BC4()
  loc_E47DAF: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2677C
  'Data Table: 4EFEBC
  loc_E26761: If (MasterFormExit = &HFF) Then
  loc_E26771:   Me.Global.Unload Me
  loc_E26779: End If
  loc_E26779: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2AD68
  'Data Table: 4EFEBC
  loc_E2AD40: On Error Goto loc_E2AD60
  loc_E2AD57: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2AD5F: Exit Sub
  loc_E2AD60: ' Referenced from: E2AD40
  loc_E2AD60: Proc_6_60_E62BC4(Shift)
  loc_E2AD65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAB964
  'Data Table: 4EFEBC
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EAB8D8: On Error Goto loc_EAB95E
  loc_EAB8FE: Call Proc_73_58_E8AED4(Proc_5_1_100CB50("ADD", Me))
  loc_EAB909: Call Proc_73_56_F294D4(global_72)
  loc_EAB919: Set var_8C = Me.Txt
  loc_EAB91F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_EAB927: var_94.SetFocus
  loc_EAB940: Me.LblUser.Caption = vbNullString
  loc_EAB955: Me.LblLDt.Caption = vbNullString
  loc_EAB95D: Exit Sub
  loc_EAB95E: ' Referenced from: EAB8D8
  loc_EAB95E: Proc_6_60_E62BC4(var_94)
  loc_EAB963: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EE9A78
  'Data Table: 4EFEBC
  loc_EE99BC: On Error Goto loc_EE9A71
  loc_EE99F6: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EE9A1C:   Call Proc_73_58_E8AED4(Proc_5_1_100CB50("INI", Me))
  loc_EE9A2F:   Set var_10C = Me.TopCtrl1
  loc_EE9A35:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_EE9A46:   Set var_10C = Me.TopCtrl1
  loc_EE9A4C:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_EE9A5D:   Set var_10C = Me.TopCtrl1
  loc_EE9A63:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_EE9A6B:   Call Proc_73_57_1468EBC(global_72)
  loc_EE9A70: End If
  loc_EE9A70: Exit Sub
  loc_EE9A71: ' Referenced from: EE99BC
  loc_EE9A71: Proc_6_60_E62BC4()
  loc_EE9A76: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17F78
  'Data Table: 4EFEBC
  loc_E17F6D: Me.Global.Unload Me
  loc_E17F75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB4D58
  'Data Table: 4EFEBC
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB4CC8: On Error Goto loc_EB4D52
  loc_EB4CE2: If (Me.RecordCount <= 0) Then
  loc_EB4CEB:   var_B8 = "Information"
  loc_EB4D06:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB4D16:   Exit Sub
  loc_EB4D17: End If
  loc_EB4D1A: MemVar_1F920E4 = "Select (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,VT.Description,Convert(Varchar(11),SP.AppDate,103) As AppDate,SP.SNo,SM.Name As SundryName,SP.DispName,SP.CalcFormula,RM.Name As Revenue,PostYN From (((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Order by VT.Description,SP.AppDate,SP.SNo"
  loc_EB4D24: MemVar_1F92120 = Me
  loc_EB4D31: Proc_6_126_F1BCC0("2000,1100,500,2000,1800,2000,2000,1000")
  loc_EB4D4C: Call 0.Method_arg_2B0 (1)
  loc_EB4D51: Exit Sub
  loc_EB4D52: ' Referenced from: EB4CC8
  loc_EB4D52: Proc_6_60_E62BC4(var_B8)
  loc_EB4D57: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3E178
  'Data Table: 4EFEBC
  loc_E3E168: Proc_5_0_110649C(&HFF, Me)
  loc_E3E170: Call Proc_73_57_1468EBC(global_72)
  loc_E3E175: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3DFF8
  'Data Table: 4EFEBC
  loc_E3DFE8: Proc_5_0_110649C(&HFF, Me)
  loc_E3DFF0: Call Proc_73_57_1468EBC(global_72)
  loc_E3DFF5: Exit Sub
  loc_E3DFF6: Set TopCtrl1_UnknownEvent_11400 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3E058
  'Data Table: 4EFEBC
  loc_E3E048: Proc_5_0_110649C(&HFF, Me)
  loc_E3E050: Call Proc_73_57_1468EBC(global_72)
  loc_E3E055: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3E298
  'Data Table: 4EFEBC
  loc_E3E288: Proc_5_0_110649C(&HFF, Me)
  loc_E3E290: Call Proc_73_57_1468EBC(global_72)
  loc_E3E295: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E223BC
  'Data Table: 4EFEBC
  Dim Me As Recordset15
  loc_E223A3: Me.Requery -1
  loc_E223B3: Me.Requery -1
  loc_E223B8: Exit Sub
  loc_E223B9: StUdtVar
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '152608C
  'Data Table: 4EFEBC
  Dim var_8A As Variant
  Dim var_90 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_130 As Variant
  Dim var_94 As Variant
  Dim var_9C As Variant
  Dim unk_4EFED5 As Connection15
  Dim var_170 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_98 As MSHFlexGrid
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
  Dim var_AB8 As Variant
  Dim var_AD8 As Variant
  Dim var_1E4 As String
  Dim var_110 As Variant
  Dim var_190 As Variant
  Dim var_1C8 As Variant
  Dim var_220 As Variant
  Dim var_40C As Variant
  Dim var_5E0 As Variant
  Dim var_7BC As Variant
  Dim var_9A4 As Variant
  Dim var_B1C As Variant
  Dim Me As Recordset15
  loc_1525284: On Error Goto loc_1526039
  loc_152528B: var_86 = CByte(0) 'Byte
  loc_1525292: Call Proc_73_62_E7CB24(var_8C)
  loc_152529D: If (var_8C = 0) Then
  loc_15252A0:   Exit Sub
  loc_15252A1: End If
  loc_15252AC: Set var_90 = Me.Txt
  loc_15252B2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_15252DB: If (Proc_6_27_EA565C(var_94, "App. Date") = 0) Then
  loc_15252E5:   Call Txt_GotFocus(CInt(1))
  loc_15252EA:   Exit Sub
  loc_15252EB: End If
  loc_15252EE: Call Proc_73_52_F96F70(var_8C)
  loc_15252F9: If (var_8C = &HFF) Then
  loc_15252FC:   Exit Sub
  loc_15252FD: End If
  loc_1525327: For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B0 'Integer
  loc_1525331:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1525339:   var_E0 = CVar(CLng(1)) 'Long
  loc_1525375:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_152537C:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1525384:     var_E0 = CVar(CLng(1)) 'Long
  loc_15253C1:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> CVar(1)) Then
  loc_15253C8:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_15253D0:       var_E0 = CVar(CLng(1)) 'Long
  loc_1525413:       var_130 = "Arrange S.No. and Cal. Formulas" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1525417:       MsgBox(var_130, &H40, "Information", var_170, var_190)
  loc_1525434:       Set var_90 = Me.FGrid
  loc_1525445:       Exit Sub
  loc_1525446:     End If
  loc_152544C:     var_8A = (var_8A + 1)
  loc_152544F:   End If
  loc_1525463:   var_AC = Me.FGrid.Rows
  loc_1525478:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_15254B4:   If (CVar(CLng(&H11)) And (CStr(Me.FGrid.TextMatrix)) = "Yes")) Then
  loc_15254BB:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_15254C3:     var_E0 = CVar(CLng(&HF)) 'Long
  loc_15254DD:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15254E3:     var_110 = Trim(var_100)
  loc_15254FF:     If (var_110 = vbNullString) Then
  loc_152551B:       MsgBox("Define revenue ", &H40, var_100, var_110, var_130)
  loc_152552B:       Exit Sub
  loc_152552C:     End If
  loc_152552C:   End If
  loc_1525530:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1525538:   var_E0 = CVar(CLng(3)) 'Long
  loc_1525574:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_152557B:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1525583:     var_E0 = CVar(CLng(1)) 'Long
  loc_15255BF:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_15255C6:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_15255CE:       var_E0 = CVar(CLng(3)) 'Long
  loc_1525615:       MsgBox("Fill S.NO For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_1525632:       Set var_90 = Me.FGrid
  loc_1525643:       Exit Sub
  loc_1525644:     End If
  loc_1525648:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1525650:     var_E0 = CVar(CLng(4)) 'Long
  loc_152568C:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1525693:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_152569B:       var_E0 = CVar(CLng(3)) 'Long
  loc_15256E2:       MsgBox("Fill Disp. Name For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_15256FF:       Set var_90 = Me.FGrid
  loc_1525710:       Exit Sub
  loc_1525711:     End If
  loc_1525715:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_152571D:     var_E0 = CVar(CLng(6)) 'Long
  loc_1525759:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1525760:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1525768:       var_E0 = CVar(CLng(3)) 'Long
  loc_15257AF:       MsgBox("Fill Per/Amt For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_15257CC:       Set var_90 = Me.FGrid
  loc_15257DD:       Exit Sub
  loc_15257DE:     End If
  loc_15257DE:   End If
  loc_15257E1: Next var_B0 'Integer
  loc_15257EF: unk_4EFED5.BeginTrans var_194
  loc_15257F8: var_86 = CByte(1) 'Byte
  loc_1525821: For var_198 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_198 'Integer
  loc_152582B:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1525833:   var_E0 = CVar(CLng(2)) 'Long
  loc_1525853:   var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_152585B:   var_120 = vbNullString
  loc_1525869:   var_140 = CVar(CLng(var_88)) 'Long
  loc_152587A:   Set var_94 = Me.FGrid
  loc_15258BF:   If CBool(CVar(CLng(1)) And (Trim(CVar(CStr(var_94.TextMatrix)))) <> vbNullString)) Then
  loc_15258C6:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_15258CE:     var_E0 = CVar(CLng(&HB)) 'Long
  loc_15258E8:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_152590A:     If (Trim(var_100) = vbNullString) Then
  loc_1525911:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1525919:       var_E0 = CVar(CLng(&HB)) 'Long
  loc_152591E:       var_120 = "+"
  loc_1525928:       Set var_90 = Me.FGrid
  loc_152592E:       LateIdCallSt
  loc_1525939:     End If
  loc_1525944:     Set var_90 = Me.Txt
  loc_152594A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_90, vbNullString, var_E0, var_C0, var_E0)
  loc_1525959:     Proc_6_7_F25D88(var_100, CVar(var_94), var_C0, var_140)
  loc_1525962:     var_D0 = CVar(CLng(var_88)) 'Long
  loc_152596A:     var_F0 = CVar(CLng(2)) 'Long
  loc_1525973:     Set var_98 = Me.FGrid
  loc_1525989:     var_160 = CVar(CLng(var_88)) 'Long
  loc_1525991:     var_1A8 = CVar(CLng(1)) 'Long
  loc_15259BA:     var_250 = CVar(CLng(var_88)) 'Long
  loc_15259C2:     var_270 = CVar(CLng(4)) 'Long
  loc_15259E1:     var_304 = CVar(CLng(var_88)) 'Long
  loc_15259E9:     var_324 = CVar(CLng(5)) 'Long
  loc_1525A08:     var_398 = CVar(CLng(var_88)) 'Long
  loc_1525A10:     var_3B8 = CVar(CLng(6)) 'Long
  loc_1525A43:     var_43C = CVar(CLng(var_88)) 'Long
  loc_1525A4B:     var_45C = CVar(CLng(8)) 'Long
  loc_1525A7E:     var_4E0 = CVar(CLng(var_88)) 'Long
  loc_1525A86:     var_500 = CVar(CLng(7)) 'Long
  loc_1525AAF:     var_578 = CVar(CLng(var_88)) 'Long
  loc_1525AB7:     var_598 = CVar(CLng(9)) 'Long
  loc_1525AE0:     var_630 = CVar(CLng(var_88)) 'Long
  loc_1525AE8:     var_650 = CVar(CLng(&HF)) 'Long
  loc_1525B07:     var_6C4 = CVar(CLng(var_88)) 'Long
  loc_1525B0F:     var_6E4 = CVar(CLng(&HA)) 'Long
  loc_1525B2E:     var_758 = CVar(CLng(var_88)) 'Long
  loc_1525B36:     var_778 = CVar(CLng(&HB)) 'Long
  loc_1525B6C:     var_830 = Me.FGrid.TextMatrix)
  loc_1525B93:     var_8C4 = Me.FGrid.TextMatrix)
  loc_1525BC1:     Proc_6_7_F25D88(var_994, Date, var_8C4, CVar(CLng(&HC)), CVar(CLng(var_88)), var_830, CVar(CLng(&HE)), CVar(CLng(var_88)))
  loc_1525BCA:     var_9D4 = CVar(CLng(var_88)) 'Long
  loc_1525BD2:     var_9F4 = CVar(CLng(&H10)) 'Long
  loc_1525C05:     var_AB8 = CVar(CLng(var_88)) 'Long
  loc_1525C0D:     var_AD8 = CVar(CLng(&H11)) 'Long
  loc_1525C3C:     var_9C = "Insert Into SundryType (V_Type,AppDate,SundryCode,SNo,DispName," & "CalcFormula,PerOrAmt,RoundOff,SValue,Limit,"
  loc_1525C51:     var_1E4 = var_9C & "RevCode,Nature,CalcSign,SysYN,Grp," & "U_Name,U_EntDt,U_AE,AutoManual,SiteCode,PostYN,LogSite_Code) " & " Values ('"
  loc_1525C8D:     var_220 = CVar(var_1E4 & MemVar_1F92078 & "PURC',") & var_100 & ",'" & CVar(CStr(var_98.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1525CCE:     var_40C = var_220 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) 
  loc_1525D06:     var_5E0 = var_40C & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1525D4B:     var_7BC = var_5E0 & "," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1525D9B:     var_9A4 = var_7BC & "','" & CVar(CStr(var_830)) & "','" & Left(CVar(CStr(var_8C4)), 1) & "'," & "'" & CVar(MemVar_1F920C8) & "'," & var_994 
  loc_1525DD2:     var_B1C = var_9A4 & ",'A','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "','" & CVar(MemVar_1F92070) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1525DFC:     unk_4EFED5.Execute CStr(var_B1C & "','" & CVar(MemVar_1F92078) & "')"), var_BA0, -1
  loc_1525EDE:   End If
  loc_1525EE1: Next var_198 'Integer
  loc_1525EEC: unk_4EFED5.CommitTrans
  loc_1525EF5: var_86 = CByte(0) 'Byte
  loc_1525F04: Set var_90 = Me.Txt
  loc_1525F0A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1525F16: var_100 = CVar(MemVar_1F92078 & "PURC") 'String
  loc_1525F2D: var_AC = Space((6 - Len(MemVar_1F92078 & "PURC")))
  loc_1525F35: var_110 = (var_100 + CVar(var_94))
  loc_1525F39: var_C0 = "**"
  loc_1525F3E: var_130 = (CVar(var_1E4 & MemVar_1F92078 & "PURC',") + var_C0)
  loc_1525F69: var_1C8 = (1 + Format(CVar(var_94), "dd/mm/yyyy"))
  loc_1525FA0: Me.Requery -1
  loc_1525FCD: Me.Find "SearchCode ='" & CStr(CVar(var_1E4 & MemVar_1F92078 & "PURC',") & var_100 & ",'" & CVar(CStr(var_98.TextMatrix)))) & "'", 0, 1
  loc_1525FDD: Set var_90 = Me.TopCtrl1
  loc_1525FE3: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_1525FFC: If (CStr(1) = "Add") Then
  loc_1525FFF:   Call TopCtrl1_UnknownEvent_A()
  loc_1526004:   Exit Sub
  loc_1526005: End If
  loc_152601A: var_9C = "INI"
  loc_1526028: Call Proc_73_58_E8AED4(Proc_5_1_100CB50(var_9C, Me, global_72), CVar(var_1E4 & MemVar_1F92078 & "PURC',") & var_100)
  loc_1526033: Call Proc_73_57_1468EBC(var_94)
  loc_1526038: Exit Sub
  loc_1526039: ' Referenced from: 1525284
  loc_1526042: If (CInt(var_86) = 1) Then
  loc_152604B:   unk_4EFED5.RollbackTrans
  loc_1526050: End If
  loc_1526058: Set var_90 = Err()
  loc_152605E: Call 0.Method_arg_2C (var_9C)
  loc_1526077: MsgBox(CVar(var_9C), &H10, var_100, CVar(var_1E4 & MemVar_1F92078 & "PURC',"), CVar(var_1E4 & MemVar_1F92078 & "PURC',") & var_100)
  loc_152608A: Exit Sub
End Sub

Private Sub txtPassword_KeyDown(KeyCode As Integer, Shift As Integer) 'E59E60
  'Data Table: 4EFEBC
  loc_E59E2D: If ((CLng(KeyCode) = &H28) Or (CLng(KeyCode) = &HD)) Then
  loc_E59E36:   Proc_6_75_E527CC(KeyCode)
  loc_E59E3B: End If
  loc_E59E50: If ((CLng(KeyCode) = &H26) Or (CLng(KeyCode) = &HD)) Then
  loc_E59E59:   Proc_6_76_E52838(KeyCode, Shift)
  loc_E59E5E: End If
  loc_E59E5E: Exit Sub
End Sub

Private Sub txtPassword_Validate(Cancel As Boolean) 'F9C054
  'Data Table: 4EFEBC
  Dim unk_4EFED5 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_B4 As Variant
  loc_F9BF24: unk_4EFED5.Execute "Select SundryPassword from Enviro where LogSite_Code='" & MemVar_1F92078 & "'", var_B4, -1
  loc_F9BF2F: Set var_88 = var_B8
  loc_F9BF53: If (var_88.RecordCount > 0) Then
  loc_F9BF65:   var_B8 = var_88.Fields
  loc_F9BF7E:   var_8C = Proc_6_38_E68A98(CVar(var_B8.Item("SundryPassword")))
  loc_F9BF8A: Else
  loc_F9BF8D:   var_8C = vbNullString
  loc_F9BF90: End If
  loc_F9BFE3: If CBool(var_B8 Or ((Trim(CVar(Me.txtPassword)) = "aaster") = CVar(Proc_96_19_EF5154(var_8C, Trim(CVar(Me.txtPassword)))))) Then
  loc_F9BFF2:   Me.CmdPwd.Enabled = True
  loc_F9C002:   Set var_B8 = Me.TopCtrl1
  loc_F9C008:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_F9C013: Else
  loc_F9C020:   Me.txtPassword.Text = vbNullString
  loc_F9C031:   Set var_B8 = Me.TopCtrl1
  loc_F9C037:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_F9C04B:   Me.CmdPwd.Enabled = False
  loc_F9C053: End If
  loc_F9C053: Exit Sub
End Sub

Public Function MasterFormExitGet() '4F1158
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4F1167
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '4F1176
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '4F1185
  SearchCode = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E96AB8
  'Data Table: 4EFEBC
  Dim Me As Recordset15
  loc_E96A46: On Error Goto loc_E96AAF
  loc_E96A4F: Me.MoveFirst
  loc_E96A79: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96AA1: Proc_5_0_110649C(&HFF, Me, global_72)
  loc_E96AA9: Call Proc_73_57_1468EBC(0)
  loc_E96AAE: Exit Sub
  loc_E96AAF: ' Referenced from: E96A46
  loc_E96AAF: Proc_6_60_E62BC4(var_A0)
  loc_E96AB4: Exit Sub
End Sub

Public Sub Proc_73_49_12AFD4C
  'Data Table: 4EFEBC
  Dim var_98 As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_12AF708: On Error Goto loc_12AFD44
  loc_12AF711: Call 0.Method_Me8 (var_88)
  loc_12AF71D: var_98 = CVar((var_88 - CDbl(&H32))) 'Single
  loc_12AF72C: Me.FGrid.Height = var_98
  loc_12AF738: Set var_B0 = Me.FGrid
  loc_12AF747: var_B0.Cols = &H12
  loc_12AF758: var_B0.Rows = 1
  loc_12AF771: global_60 = CStr(CLng(var_B0.BackColor))
  loc_12AF77B: var_98 = 0
  loc_12AF784: var_D4 = &H64
  loc_12AF790: LateIdCallSt
  loc_12AF79B: var_98 = CVar(CLng(1)) 'Long
  loc_12AF7A0: var_D4 = &H1C2
  loc_12AF7AC: LateIdCallSt
  loc_12AF7B4: var_98 = 0
  loc_12AF7C0: var_D4 = CVar(CLng(1)) 'Long
  loc_12AF7C5: var_F4 = "Sn."
  loc_12AF7CE: LateIdCallSt
  loc_12AF7D9: var_98 = CVar(CLng(1)) 'Long
  loc_12AF7E4: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AF7EB: LateIdCallSt
  loc_12AF7F6: var_98 = CVar(CLng(2)) 'Long
  loc_12AF7FB: var_D4 = 0
  loc_12AF807: LateIdCallSt
  loc_12AF812: var_98 = CVar(CLng(3)) 'Long
  loc_12AF817: var_D4 = &H708
  loc_12AF823: LateIdCallSt
  loc_12AF82B: var_98 = 0
  loc_12AF837: var_D4 = CVar(CLng(3)) 'Long
  loc_12AF83C: var_F4 = "Sundry Name"
  loc_12AF845: LateIdCallSt
  loc_12AF850: var_98 = CVar(CLng(3)) 'Long
  loc_12AF85B: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AF862: LateIdCallSt
  loc_12AF86D: var_98 = CVar(CLng(4)) 'Long
  loc_12AF872: var_D4 = &H708
  loc_12AF87E: LateIdCallSt
  loc_12AF886: var_98 = 0
  loc_12AF892: var_D4 = CVar(CLng(4)) 'Long
  loc_12AF897: var_F4 = "Display Name"
  loc_12AF8A0: LateIdCallSt
  loc_12AF8AB: var_98 = CVar(CLng(4)) 'Long
  loc_12AF8B6: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AF8BD: LateIdCallSt
  loc_12AF8C8: var_98 = CVar(CLng(5)) 'Long
  loc_12AF8CD: var_D4 = &H9C4
  loc_12AF8D9: LateIdCallSt
  loc_12AF8E1: var_98 = 0
  loc_12AF8ED: var_D4 = CVar(CLng(5)) 'Long
  loc_12AF8F2: var_F4 = "Cal. Formula"
  loc_12AF8FB: LateIdCallSt
  loc_12AF906: var_98 = CVar(CLng(5)) 'Long
  loc_12AF911: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AF918: LateIdCallSt
  loc_12AF923: var_98 = CVar(CLng(5)) 'Long
  loc_12AF92E: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AF935: LateIdCallSt
  loc_12AF940: var_98 = CVar(CLng(6)) 'Long
  loc_12AF945: var_D4 = &H226
  loc_12AF951: LateIdCallSt
  loc_12AF959: var_98 = 0
  loc_12AF965: var_D4 = CVar(CLng(6)) 'Long
  loc_12AF96A: var_F4 = "P/A"
  loc_12AF973: LateIdCallSt
  loc_12AF97E: var_98 = CVar(CLng(6)) 'Long
  loc_12AF989: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AF990: LateIdCallSt
  loc_12AF99B: var_98 = CVar(CLng(7)) 'Long
  loc_12AF9A0: var_D4 = &H320
  loc_12AF9AC: LateIdCallSt
  loc_12AF9B4: var_98 = 0
  loc_12AF9C0: var_D4 = CVar(CLng(7)) 'Long
  loc_12AF9C5: var_F4 = "Value"
  loc_12AF9CE: LateIdCallSt
  loc_12AF9D9: var_98 = CVar(CLng(7)) 'Long
  loc_12AF9E4: var_D4 = CVar(CInt(7)) 'Integer
  loc_12AF9EB: LateIdCallSt
  loc_12AF9F6: var_98 = CVar(CLng(7)) 'Long
  loc_12AFA01: var_D4 = CVar(CInt(7)) 'Integer
  loc_12AFA08: LateIdCallSt
  loc_12AFA13: var_98 = CVar(CLng(8)) 'Long
  loc_12AFA18: var_D4 = 0
  loc_12AFA24: LateIdCallSt
  loc_12AFA2C: var_98 = 0
  loc_12AFA38: var_D4 = CVar(CLng(8)) 'Long
  loc_12AFA3D: var_F4 = "ROff"
  loc_12AFA46: LateIdCallSt
  loc_12AFA51: var_98 = CVar(CLng(8)) 'Long
  loc_12AFA5C: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AFA63: LateIdCallSt
  loc_12AFA6E: var_98 = CVar(CLng(&H10)) 'Long
  loc_12AFA73: var_D4 = &H2B2
  loc_12AFA7F: LateIdCallSt
  loc_12AFA87: var_98 = 0
  loc_12AFA93: var_D4 = CVar(CLng(&H10)) 'Long
  loc_12AFA98: var_F4 = "A/M"
  loc_12AFAA1: LateIdCallSt
  loc_12AFAAC: var_98 = CVar(CLng(&H10)) 'Long
  loc_12AFAB7: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AFABE: LateIdCallSt
  loc_12AFAC9: var_98 = CVar(CLng(9)) 'Long
  loc_12AFACE: var_D4 = 0
  loc_12AFADA: LateIdCallSt
  loc_12AFAE2: var_98 = 0
  loc_12AFAEE: var_D4 = CVar(CLng(9)) 'Long
  loc_12AFAF3: var_F4 = "Limit"
  loc_12AFAFC: LateIdCallSt
  loc_12AFB07: var_98 = CVar(CLng(9)) 'Long
  loc_12AFB12: var_D4 = CVar(CInt(7)) 'Integer
  loc_12AFB19: LateIdCallSt
  loc_12AFB24: var_98 = CVar(CLng(9)) 'Long
  loc_12AFB2F: var_D4 = CVar(CInt(7)) 'Integer
  loc_12AFB36: LateIdCallSt
  loc_12AFB41: var_98 = CVar(CLng(&HA)) 'Long
  loc_12AFB46: var_D4 = 0
  loc_12AFB52: LateIdCallSt
  loc_12AFB5A: var_98 = 0
  loc_12AFB66: var_D4 = CVar(CLng(&HA)) 'Long
  loc_12AFB6B: var_F4 = "Nature"
  loc_12AFB74: LateIdCallSt
  loc_12AFB7F: var_98 = CVar(CLng(&HA)) 'Long
  loc_12AFB8A: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AFB91: LateIdCallSt
  loc_12AFB9C: var_98 = CVar(CLng(&HB)) 'Long
  loc_12AFBA1: var_D4 = 0
  loc_12AFBAD: LateIdCallSt
  loc_12AFBB5: var_98 = 0
  loc_12AFBC1: var_D4 = CVar(CLng(&HB)) 'Long
  loc_12AFBC6: var_F4 = "+/-"
  loc_12AFBCF: LateIdCallSt
  loc_12AFBDA: var_98 = CVar(CLng(&HB)) 'Long
  loc_12AFBE5: var_D4 = CVar(CInt(4)) 'Integer
  loc_12AFBEC: LateIdCallSt
  loc_12AFBF7: var_98 = CVar(CLng(&HE)) 'Long
  loc_12AFBFC: var_D4 = 0
  loc_12AFC08: LateIdCallSt
  loc_12AFC13: var_98 = CVar(CLng(&HC)) 'Long
  loc_12AFC18: var_D4 = &H258
  loc_12AFC24: LateIdCallSt
  loc_12AFC2C: var_98 = 0
  loc_12AFC38: var_D4 = CVar(CLng(&HC)) 'Long
  loc_12AFC3D: var_F4 = "Bold"
  loc_12AFC46: LateIdCallSt
  loc_12AFC51: var_98 = CVar(CLng(&HC)) 'Long
  loc_12AFC5C: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AFC63: LateIdCallSt
  loc_12AFC6E: var_98 = CVar(CLng(&HD)) 'Long
  loc_12AFC73: var_D4 = &HC1C
  loc_12AFC7F: LateIdCallSt
  loc_12AFC87: var_98 = 0
  loc_12AFC93: var_D4 = CVar(CLng(&HD)) 'Long
  loc_12AFC98: var_F4 = "Revenue Charge"
  loc_12AFCA1: LateIdCallSt
  loc_12AFCAC: var_98 = CVar(CLng(&HD)) 'Long
  loc_12AFCB7: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AFCBE: LateIdCallSt
  loc_12AFCC9: var_98 = CVar(CLng(&HF)) 'Long
  loc_12AFCCE: var_D4 = 0
  loc_12AFCDA: LateIdCallSt
  loc_12AFCE5: var_98 = CVar(CLng(&H11)) 'Long
  loc_12AFCEA: var_D4 = &H258
  loc_12AFCF6: LateIdCallSt
  loc_12AFCFE: var_98 = 0
  loc_12AFD0A: var_D4 = CVar(CLng(&H11)) 'Long
  loc_12AFD0F: var_F4 = "Post"
  loc_12AFD18: LateIdCallSt
  loc_12AFD23: var_98 = CVar(CLng(&H11)) 'Long
  loc_12AFD2E: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AFD35: LateIdCallSt
  loc_12AFD3F: Set var_B0 = Nothing 
  loc_12AFD43: Exit Sub
  loc_12AFD44: ' Referenced from: 12AF708
  loc_12AFD44: Proc_6_60_E62BC4(var_B0, var_D4, var_98, var_B0, var_F4, var_D4, var_98, var_B0)
  loc_12AFD49: Exit Sub
End Sub

Public Sub Proc_73_50_E7E1C0
  'Data Table: 4EFEBC
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_E7E17D: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_E7E187:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_E7E18F:   var_D0 = CVar(CLng(1)) 'Long
  loc_E7E199:   var_9C = CVar(CStr(var_86)) 'String
  loc_E7E1A1:   Set var_8C = Me.FGrid
  loc_E7E1A7:   LateIdCallSt
  loc_E7E1B8: Next var_A0 'Integer
  loc_E7E1BD: Exit Sub
End Sub

Public Sub Proc_73_51_E18484
  'Data Table: 4EFEBC
  loc_E18478: Me.PwdFrame.Visible = False
  loc_E18480: Exit Sub
End Sub

Public Sub Proc_73_52_F96F70
  'Data Table: 4EFEBC
  Dim var_98 As String
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  Dim unk_4EFED5 As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Fields15
  Dim var_140 As Field20
  Dim var_A0 As TextBox
  loc_F96E6C: var_98 = "Select Count(*) From SundryType Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (V_Type='" & MemVar_1F92078 & "PURC"
  loc_F96E73: var_D0 = CVar(var_98 & "' And AppDate=") 'String
  loc_F96E81: Set var_9C = Me.Txt
  loc_F96E87: Call 0.Method_Proc_73_52_F96F700 (CInt(1), var_A0, var_D0, var_124, -1)
  loc_F96E96: Proc_6_7_F25D88(var_C0, CVar(var_A0), var_128, var_12C)
  loc_F96E9E: var_E0 = 0 & var_C0 
  loc_F96EB5: unk_4EFED5.Execute CStr(var_E0 & ")"), var_140, var_150
  loc_F96EBD:  = var_128.Fields
  loc_F96EC5:  = var_12C.Item()
  loc_F96ECD:  = var_140.Value
  loc_F96F06: If (var_150 > 0) Then
  loc_F96F2A:   MsgBox("Duplicate Entry", &H40, "Information", var_D0, var_E0)
  loc_F96F45:   Set var_9C = Me.Txt
  loc_F96F4B:   Call 0.Method_Proc_73_52_F96F700 (CInt(0))
  loc_F96F53:   var_A0.SetFocus
  loc_F96F64:   Proc_73_52_F96F70 = &HFF
  loc_F96F6A: End If
  loc_F96F6A: Proc_73_52_F96F70 = var_A0
End Sub

Public Sub Proc_73_53_115751C(arg_C, arg_10) '115751C
  'Data Table: 4EFEBC
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
  loc_1157180: var_B4 = CVar(CLng(arg_C)) 'Long
  loc_1157189: var_D4 = CVar(CLng(arg_10)) 'Long
  loc_11571A3: var_98 = CStr(Me.FGrid.TextMatrix))
  loc_11571C4: var_C4 = "+"
  loc_11571DE: var_118 = Left(var_98, 1)
  loc_11571E6: var_E4 = "-"
  loc_11571FD: If CBool((Left(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_115721E:   MsgBox("Invalid Operator at Starting position of furmula", 0, var_108, var_118, var_128)
  loc_115722E:   Proc_73_53_115751C = &HFF
  loc_1157234: End If
  loc_115724C: var_C4 = "+"
  loc_1157266: var_118 = Right(var_98, 1)
  loc_115726E: var_E4 = "-"
  loc_1157285: If CBool((Right(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_11572A6:   MsgBox("Invalid Operator at Ending position of furmula", 0, var_108, var_118, var_128)
  loc_11572B6:   Proc_73_53_115751C = &HFF
  loc_11572BC: End If
  loc_11572BE: var_86 = 0
  loc_11572C1: ' Referenced from: 1157510
  loc_11572CB: If (Len(var_98) > 0) Then
  loc_11572D0:   var_A2 = 0
  loc_11572E5:   var_108 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_11572FB:   var_F8 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_1157317:   var_B4 = (InStr(1, var_98, "-", 0) = 0)
  loc_1157335:   var_138 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_115734B:   var_128 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_1157367:   var_E4 = (InStr(1, var_98, "+", 0) = 0)
  loc_115736E:   var_168 = IIf(var_E4, var_128, (Right(var_98, 1) = var_C4) Or (IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108) = var_E4))
  loc_115739E:   var_178 = (InStr(1, var_98, "+", 0) >= InStr(1, var_98, "-", 0))
  loc_11573A5:   var_188 = IIf(var_178, IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108), var_168)
  loc_11573AE:   var_9A = CInt(var_188)
  loc_11573CE:   If (var_9A = 0) Then
  loc_11573D4:     var_A0 = var_98
  loc_11573DA:   Else
  loc_11573EC:     var_F8 = Left(var_98, CLng((var_9A - 1)))
  loc_11573F5:     var_A0 = CStr("Invalid Operator at Ending position of furmula")
  loc_11573FB:   End If
  loc_1157406:   For var_18C = 1 To (arg_C - 1): var_88 = var_18C 'Integer
  loc_115740F:     var_148 = CVar(var_A0) 'String
  loc_1157417:     var_B4 = CVar(CLng(var_88)) 'Long
  loc_1157455:     If (CVar(CLng(1)) = Trim(CVar(CStr(Me.FGrid.TextMatrix))))) Then
  loc_115745A:       var_A2 = &HFF
  loc_115745D:       Exit For
  loc_1157460:     End If
  loc_1157463:   Next var_18C 'Integer
  loc_1157468:   ' Referenced from: 115745D
  loc_115746E:   If (var_A2 = 0) Then
  loc_115747C:     var_F8 = Trim(var_A0)
  loc_115749F:     var_108 = ("Invalid Row Reference " + var_F8)
  loc_11574A8:     var_118 = (CVar(CStr(Me.FGrid.TextMatrix))) + vbCrLf)
  loc_11574B1:     var_128 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + "Please Enter Correct No.")
  loc_11574B5:     MsgBox(var_128, &H40, "Validation", var_168, var_188)
  loc_11574D0:     Proc_73_53_115751C = &HFF
  loc_11574D6:   End If
  loc_11574DC:   If (var_9A = 0) Then
  loc_11574E2:     var_98 = vbNullString
  loc_11574E8:   Else
  loc_11574FD:     var_108 = Mid(var_98, CLng((var_9A + 1)), var_F8)
  loc_1157506:     var_98 = CStr(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1157510:   End If
  loc_1157510:   GoTo loc_11572C1
  loc_1157513: End If
  loc_1157513: Proc_73_53_115751C = 
End Sub

Public Sub Proc_73_54_E3E7A4
  'Data Table: 4EFEBC
  loc_E3E780: Set var_88 = Me.TopCtrl1
  loc_E3E786: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E3E79F: If (CStr() = "Browse") Then
  loc_E3E7A2:   Exit Sub
  loc_E3E7A3: End If
  loc_E3E7A3: Exit Sub
End Sub

Public Sub Proc_73_55_153C388(arg_C) '153C388
  'Data Table: 4EFEBC
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
  loc_153B3AF: var_A0 = CLng(Me.FGrid.Col)
  loc_153B3BF: If (var_A0 = CLng(3)) Then
  loc_153B3E2:   var_A6 = Me.EOF
  loc_153B410:   Set var_8C = Me.TxtGrid
  loc_153B416:   Call 0.Method_Proc_73_55_153C3880 (arg_C, var_AC, var_B0)
  loc_153B41E:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_153B436:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_153B44C:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153B454:     var_E0 = CVar(CLng(3)) 'Long
  loc_153B459:     var_100 = vbNullString
  loc_153B463:     Set var_AC = Me.FGrid
  loc_153B469:     LateIdCallSt
  loc_153B48E:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153B496:     var_E0 = CVar(CLng(2)) 'Long
  loc_153B49B:     var_100 = vbNullString
  loc_153B4A5:     Set var_AC = Me.FGrid
  loc_153B4AB:     LateIdCallSt
  loc_153B4D0:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153B4D8:     var_E0 = CVar(CLng(&HA)) 'Long
  loc_153B4DD:     var_100 = vbNullString
  loc_153B4E7:     Set var_AC = Me.FGrid
  loc_153B4ED:     LateIdCallSt
  loc_153B512:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153B51A:     var_E0 = CVar(CLng(&HE)) 'Long
  loc_153B51F:     var_100 = vbNullString
  loc_153B529:     Set var_AC = Me.FGrid
  loc_153B52F:     LateIdCallSt
  loc_153B544:   Else
  loc_153B547:     Call Proc_73_60_FBCC2C(var_A6, var_AC, var_100, var_E0, var_C0, var_AC, var_100, var_E0)
  loc_153B552:     If (var_A6 = 0) Then
  loc_153B55A:       Proc_73_55_153C388 = 0
  loc_153B560:     End If
  loc_153B573:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153B57B:     var_F0 = CVar(CLng(3)) 'Long
  loc_153B5AE:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_153B5B6:     Set var_138 = Me.FGrid
  loc_153B5BC:     LateIdCallSt
  loc_153B5EB:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153B5F3:     var_F0 = CVar(CLng(2)) 'Long
  loc_153B626:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_153B62E:     Set var_138 = Me.FGrid
  loc_153B634:     LateIdCallSt
  loc_153B663:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153B66B:     var_F0 = CVar(CLng(4)) 'Long
  loc_153B69E:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_153B6AC:     LateIdCallSt
  loc_153B713:     var_134 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_153B71B:     Set var_138 = Me.FGrid
  loc_153B721:     LateIdCallSt
  loc_153B74E:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153B756:     var_F0 = CVar(CLng(&HE)) 'Long
  loc_153B789:     var_134 = CVar(CStr(Me.Fields.Item("SysYN").Value)) 'String
  loc_153B791:     Set var_138 = Me.FGrid
  loc_153B797:     LateIdCallSt
  loc_153B7B3:   End If
  loc_153B7C6:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153B7CE:   var_E0 = CVar(CLng(&H10)) 'Long
  loc_153B7D3:   var_100 = "Manual"
  loc_153B7DD:   Set var_AC = Me.FGrid
  loc_153B7E3:   LateIdCallSt
  loc_153B80E:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_153B813:   var_E0 = 1
  loc_153B820:   Set var_AC = Me.FGrid
  loc_153B831:   var_B0 = CStr(var_AC.TextMatrix))
  loc_153B84A:   If (var_B0 <> vbNullString) Then
  loc_153B84D:     var_C0 = vbNullString
  loc_153B857:     Set var_8C = Me.FGrid
  loc_153B868:   End If
  loc_153B86B: Else
  loc_153B872:   If Not (var_A0 = CLng(1)) Then
  loc_153B87C:     If (var_A0 = CLng(4)) Then
  loc_153B87F:     End If
  loc_153B8BB:     Set var_8C = Me.TxtGrid
  loc_153B8C1:     Call 0.Method_Proc_73_55_153C3880 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)))
  loc_153B8C9:     var_E0 = var_AC.Text
  loc_153B8D1:     var_134 = CVar(var_B0) 'String
  loc_153B8D9:     Set var_13C = Me.FGrid
  loc_153B8DF:     LateIdCallSt
  loc_153B900:   Else
  loc_153B907:     If (var_A0 = CLng(5)) Then
  loc_153B947:       Set var_8C = Me.TxtGrid
  loc_153B94D:       Call 0.Method_Proc_73_55_153C3880 (arg_C, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_13C, var_134)
  loc_153B955:       var_C0 = var_AC.Text
  loc_153B95D:       var_134 = CVar(var_B0) 'String
  loc_153B965:       Set var_13C = Me.FGrid
  loc_153B96B:       LateIdCallSt
  loc_153B9A8:       If (CLng(Me.FGrid.Row) = 1) Then
  loc_153B9BE:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153B9C7:         Set var_AC = Me.FGrid
  loc_153B9D6:         var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_153B9DB:         var_100 = vbNullString
  loc_153B9E5:         Set var_114 = Me.FGrid
  loc_153B9EB:         LateIdCallSt
  loc_153BA08:         Proc_73_55_153C388 = &HFF
  loc_153BA0E:       End If
  loc_153BA1B:       Set var_8C = Me.TxtGrid
  loc_153BA21:       Call 0.Method_Proc_73_55_153C3880 (arg_C, var_AC, var_B0, var_114, var_100, var_E0, var_C0)
  loc_153BA29:       var_13C = var_AC.Text
  loc_153BA40:       If (var_B0 <> vbNullString) Then
  loc_153BA7E:         Call Proc_73_53_115751C(CInt(CLng(Me.FGrid.Row)), CInt(CLng(Me.FGrid.Col)))
  loc_153BA97:         If (var_13E = &HFF) Then
  loc_153BA9C:           var_86 = 0
  loc_153BAB2:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153BABB:           Set var_AC = Me.FGrid
  loc_153BACA:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_153BACF:           var_100 = vbNullString
  loc_153BADF:           LateIdCallSt
  loc_153BAF7:           Proc_73_55_153C388 = Me.FGrid
  loc_153BAFD:         End If
  loc_153BAFD:       End If
  loc_153BB00:     Else
  loc_153BB07:       If Not (var_A0 = CLng(8)) Then
  loc_153BB11:         If (var_A0 = CLng(&HC)) Then
  loc_153BB14:         End If
  loc_153BB50:         Set var_8C = Me.TxtGrid
  loc_153BB56:         Call 0.Method_Proc_73_55_153C3880 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_100, CVar(CLng(Me.FGrid.Col)))
  loc_153BB5E:         var_C0 = var_AC.Text
  loc_153BB74:         LateIdCallSt
  loc_153BB9F:         Set var_8C = Me.TxtGrid
  loc_153BBA5:         Call 0.Method_Proc_73_55_153C3880 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0), var_86)
  loc_153BBAD:         var_13E = var_AC.Text
  loc_153BBC4:         If (var_B0 = vbNullString) Then
  loc_153BBDA:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153BBE3:           Set var_AC = Me.FGrid
  loc_153BBF2:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_153BBF7:           var_100 = "No"
  loc_153BC01:           Set var_114 = Me.FGrid
  loc_153BC07:           LateIdCallSt
  loc_153BC1F:         End If
  loc_153BC22:       Else
  loc_153BC29:         If (var_A0 = CLng(&H10)) Then
  loc_153BC30:           Set var_114 = Me.FGrid
  loc_153BC68:           Set var_8C = Me.TxtGrid
  loc_153BC6E:           Call 0.Method_Proc_73_55_153C3880 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_153BC76:           var_E0 = var_AC.Text
  loc_153BC8C:           LateIdCallSt
  loc_153BCB7:           Set var_8C = Me.TxtGrid
  loc_153BCBD:           Call 0.Method_Proc_73_55_153C3880 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_153BCC5:           var_C0 = var_AC.Text
  loc_153BCDC:           If (var_B0 = vbNullString) Then
  loc_153BCF2:             var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153BCFB:             Set var_AC = Me.FGrid
  loc_153BD0A:             var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_153BD0F:             var_100 = "Manual"
  loc_153BD19:             Set var_114 = Me.FGrid
  loc_153BD1F:             LateIdCallSt
  loc_153BD37:           End If
  loc_153BD3A:         Else
  loc_153BD41:           If (var_A0 = CLng(&H11)) Then
  loc_153BD48:             Set var_114 = Me.FGrid
  loc_153BD80:             Set var_8C = Me.TxtGrid
  loc_153BD86:             Call 0.Method_Proc_73_55_153C3880 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_153BD8E:             var_E0 = var_AC.Text
  loc_153BDA4:             LateIdCallSt
  loc_153BDCF:             Set var_8C = Me.TxtGrid
  loc_153BDD5:             Call 0.Method_Proc_73_55_153C3880 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_153BDDD:             var_C0 = var_AC.Text
  loc_153BDF4:             If (var_B0 = vbNullString) Then
  loc_153BE0A:               var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153BE13:               Set var_AC = Me.FGrid
  loc_153BE22:               var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_153BE27:               var_100 = "Yes"
  loc_153BE31:               Set var_114 = Me.FGrid
  loc_153BE37:               LateIdCallSt
  loc_153BE4F:             End If
  loc_153BE52:           Else
  loc_153BE59:             If (var_A0 = CLng(6)) Then
  loc_153BE60:               Set var_114 = Me.FGrid
  loc_153BE98:               Set var_8C = Me.TxtGrid
  loc_153BE9E:               Call 0.Method_Proc_73_55_153C3880 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_153BEA6:               var_E0 = var_AC.Text
  loc_153BEBC:               LateIdCallSt
  loc_153BEE7:               Set var_8C = Me.TxtGrid
  loc_153BEED:               Call 0.Method_Proc_73_55_153C3880 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_153BEF5:               var_C0 = var_AC.Text
  loc_153BF0C:               If (var_B0 = vbNullString) Then
  loc_153BF22:                 var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153BF2B:                 Set var_AC = Me.FGrid
  loc_153BF3A:                 var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_153BF3F:                 var_100 = "Amt"
  loc_153BF49:                 Set var_114 = Me.FGrid
  loc_153BF4F:                 LateIdCallSt
  loc_153BF67:               End If
  loc_153BF6A:             Else
  loc_153BF71:               If Not (var_A0 = CLng(9)) Then
  loc_153BF7B:                 If (var_A0 = CLng(7)) Then
  loc_153BF7E:                 End If
  loc_153BF8A:                 Set var_8C = Me.TxtGrid
  loc_153BF90:                 Call 0.Method_Proc_73_55_153C3880 (0, var_AC, var_B0, var_114, var_100, var_E0)
  loc_153BF98:                 var_C0 = var_AC.Text
  loc_153BFBB:                 var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153BFD3:                 var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_153C000:                 var_170 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_153C008:                 Set var_13C = Me.FGrid
  loc_153C00E:                 LateIdCallSt
  loc_153C038:               Else
  loc_153C03F:                 If (var_A0 = CLng(&HD)) Then
  loc_153C090:                   Set var_8C = Me.TxtGrid
  loc_153C096:                   Call 0.Method_Proc_73_55_153C3880 (arg_C, var_AC, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_13C, var_170, 1)
  loc_153C09E:                   1 = var_AC.Text
  loc_153C0B6:                   If (var_100 Or (var_B0 = vbNullString)) Then
  loc_153C0CC:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153C0D4:                     var_E0 = CVar(CLng(&HF)) 'Long
  loc_153C0D9:                     var_100 = vbNullString
  loc_153C0E3:                     Set var_AC = Me.FGrid
  loc_153C0E9:                     LateIdCallSt
  loc_153C10E:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153C116:                     var_E0 = CVar(CLng(&HD)) 'Long
  loc_153C11B:                     var_100 = vbNullString
  loc_153C125:                     Set var_AC = Me.FGrid
  loc_153C12B:                     LateIdCallSt
  loc_153C150:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153C158:                     var_E0 = CVar(CLng(&HB)) 'Long
  loc_153C15D:                     var_100 = vbNullString
  loc_153C167:                     Set var_AC = Me.FGrid
  loc_153C16D:                     LateIdCallSt
  loc_153C182:                   Else
  loc_153C195:                     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153C19D:                     var_F0 = CVar(CLng(&HF)) 'Long
  loc_153C1D0:                     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_153C1D8:                     Set var_138 = Me.FGrid
  loc_153C1DE:                     LateIdCallSt
  loc_153C20D:                     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153C215:                     var_F0 = CVar(CLng(&HD)) 'Long
  loc_153C248:                     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_153C250:                     Set var_138 = Me.FGrid
  loc_153C256:                     LateIdCallSt
  loc_153C2B1:                     If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_153C2C7:                       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153C2CF:                       var_E0 = CVar(CLng(&HB)) 'Long
  loc_153C2D4:                       var_100 = "+"
  loc_153C2DE:                       Set var_AC = Me.FGrid
  loc_153C2E4:                       LateIdCallSt
  loc_153C2F9:                     Else
  loc_153C338:                       If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_153C34E:                         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153C356:                         var_E0 = CVar(CLng(&HB)) 'Long
  loc_153C35B:                         var_100 = "-"
  loc_153C365:                         Set var_AC = Me.FGrid
  loc_153C36B:                         LateIdCallSt
  loc_153C37D:                       End If
  loc_153C37D:                     End If
  loc_153C37D:                   End If
  loc_153C37D:                 End If
  loc_153C37D:               End If
  loc_153C37D:             End If
  loc_153C37D:           End If
  loc_153C37D:         End If
  loc_153C37D:       End If
  loc_153C37D:     End If
  loc_153C37D:   End If
  loc_153C37D: End If
  loc_153C382: Proc_73_55_153C388 = &HFF
End Sub

Public Sub Proc_73_56_F294D4
  'Data Table: 4EFEBC
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F293D6: Set var_8C = Me.Txt
  loc_F293DC: Call 0.Method_Proc_73_56_F294D4C (var_8E, var_86)
  loc_F293EC: For var_92 =  To CByte((var_8E - 1)): CByte(1) = var_92 'Byte
  loc_F29402:   Set var_8C = Me.Txt
  loc_F29408:   Call 0.Method_Proc_73_56_F294D40 (CInt(var_86), var_98)
  loc_F29410:   var_98.Text = vbNullString
  loc_F2942C:   Set var_8C = Me.Txt
  loc_F29432:   Call 0.Method_Proc_73_56_F294D40 (CInt(var_86), var_98)
  loc_F2943A:   var_98.Tag = vbNullString
  loc_F29449: Next var_92 'Byte
  loc_F2945C: Me.LblDepart.Caption = vbNullString
  loc_F29477: Me.FGrid.Rows = 1
  loc_F29494: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F2949C: Set var_98 = Me.FGrid
  loc_F294CB: Me.FGrid.FixedRows = 1
  loc_F294D3: Exit Sub
End Sub

Public Sub Proc_73_57_1468EBC
  'Data Table: 4EFEBC
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_D8 As Variant
  Dim unk_4EFED5 As Connection15
  Dim var_88 As Recordset15
  Dim var_120 As Variant
  Dim var_138 As Variant
  Dim var_10C As Variant
  Dim var_128 As String
  Dim var_168 As Variant
  Dim var_124 As TextBox
  Dim var_8A As Integer
  Dim var_148 As Variant
  Dim var_11C As Variant
  loc_146830C: On Error Goto loc_1468EB6
  loc_1468326: If (Me.RecordCount > 0) Then
  loc_1468329:   Call Proc_73_56_F294D4()
  loc_146833B:   var_C8 = "Select VT.Description,SP.*,SM.Name As SundryName,RM.Name As RevName,D.Name As Department From ((((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join Depart D On VT.RestCode=D.Code) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Where SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)='"
  loc_1468384:   unk_4EFED5.Execute CStr(var_C8 & Me.Fields.Item("SearchCode").Value & "' Order By SP.SNo"), var_11C, -1
  loc_146838F:   Set var_88 = var_120
  loc_14683E3:   var_120 = var_88.Fields
  loc_146844C:   var_188 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_120.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1468491:   Me.LblUser.Caption = CStr(var_120 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_188)))
  loc_146850B:   var_124 = var_88.Fields.Item("U_AE")
  loc_146856C:   var_188 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_124)) = "E"), "Last Update : ", "entdt : "))
  loc_14685B1:   Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_14685FD:   If (var_88.RecordCount > 0) Then
  loc_1468639:     If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("Department"))) = vbNullString) Then
  loc_146863C:     End If
  loc_1468671:     Me.LblDepart.Caption = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Department")))
  loc_14686D5:     Set var_120 = Me.Txt
  loc_14686DB:     Call 0.Method_Proc_73_57_1468EBC0 (CInt(1), var_124, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/mm/yyyy")))
  loc_14686E3:     var_124.Text = 1
  loc_14686FF:     var_8A = 1
  loc_1468715:     Me.FGrid.Rows = 1
  loc_146871D:     ' Referenced from: 1468E2D
  loc_146872C:     If Not(var_88.EOF) Then
  loc_146872F:       var_A4 = vbNullString
  loc_1468739:       Set var_94 = Me.FGrid
  loc_146874E:       Set var_1E8 = Me.FGrid
  loc_1468755:       var_C8 = CVar(CLng(var_8A)) 'Long
  loc_146875D:       var_10C = CVar(CLng(1)) 'Long
  loc_146878D:       var_D8 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1468794:       LateIdCallSt
  loc_14687E3:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1E8, var_D8, CVar(CLng(2)))) 'String
  loc_14687EA:       LateIdCallSt
  loc_1468835:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1E8, var_D8)) 'String
  loc_146883C:       LateIdCallSt
  loc_1468887:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1E8, var_D8)) 'String
  loc_146888E:       LateIdCallSt
  loc_14688A4:       var_C8 = CVar(CLng(var_8A)) 'Long
  loc_14688E0:       LateIdCallSt
  loc_146891A:       var_128 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PerOrAmt")), var_1E8, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_C8, var_1E8, var_D8)), var_C8)
  loc_1468921:       var_138 = CVar(CLng(var_8A)) 'Long
  loc_1468929:       var_168 = CVar(CLng(6)) 'Long
  loc_146895F:       var_148 = CVar(CStr(IIf((var_128 = "P"), "Per", "Amt"))) 'String
  loc_1468966:       LateIdCallSt
  loc_14689E3:       LateIdCallSt
  loc_1468A21:       var_128 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoundOff")), var_1E8, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_1468A28:       var_138 = CVar(CLng(var_8A)) 'Long
  loc_1468A30:       var_168 = CVar(CLng(8)) 'Long
  loc_1468A66:       var_148 = CVar(CStr(IIf((var_128 = "Y"), "Yes", "No"))) 'String
  loc_1468A6D:       LateIdCallSt
  loc_1468AEA:       LateIdCallSt
  loc_1468B39:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_1468B40:       LateIdCallSt
  loc_1468B8B:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_1E8, var_D8, CVar(CLng(9)))) 'String
  loc_1468B92:       LateIdCallSt
  loc_1468BE4:       LateIdCallSt
  loc_1468C1E:       var_128 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP")), var_1E8, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_1E8, var_D8)), CVar(CLng(var_8A)))
  loc_1468C6A:       LateIdCallSt
  loc_1468CC4:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(&HF)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(IIf((var_128 = "Y"), "Yes", "No"))), CVar(CLng(&HC)))) 'String
  loc_1468CCB:       LateIdCallSt
  loc_1468D16:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevName")), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_1E8, var_D8)) 'String
  loc_1468D1D:       LateIdCallSt
  loc_1468D5E:       var_138 = CVar(CLng(var_8A)) 'Long
  loc_1468D66:       var_168 = CVar(CLng(&H10)) 'Long
  loc_1468D93:       var_11C = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("AutoManual")), var_1E8, "Auto", CVar(CLng(var_8A))) = "A"), "Auto", "Manual")
  loc_1468D9C:       var_148 = CVar(CStr(var_11C)) 'String
  loc_1468DA3:       LateIdCallSt
  loc_1468DFD:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PostYn")), CVar(CLng(&H11)), CVar(CLng(var_8A)), var_1E8, var_148, var_168)) 'String
  loc_1468E04:       LateIdCallSt
  loc_1468E18:       Set var_1E8 = Nothing 
  loc_1468E22:       var_8A = (var_8A + 1)
  loc_1468E28:       var_88.MoveNext
  loc_1468E2D:       GoTo loc_146871D
  loc_1468E30:     End If
  loc_1468E30:   End If
  loc_1468E30:   var_A4 = 0
  loc_1468E3A:   Set var_94 = Me.FGrid
  loc_1468E67:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1468E6A:     var_A4 = "1"
  loc_1468E74:     Set var_94 = Me.FGrid
  loc_1468E85:   End If
  loc_1468E85:   var_A4 = 1
  loc_1468E98:   Me.FGrid.FixedRows = var_A4
  loc_1468EA3: Else
  loc_1468EA3:   Call Proc_73_56_F294D4(FGrid.DispID_10000, var_A4, FGrid.DispID_2E, var_A4, var_8A, var_1E8)
  loc_1468EA8: End If
  loc_1468EA8: Call Proc_73_59_EBBF08(var_D8, var_138, var_1E8)
  loc_1468EB2: Set var_88 = Nothing
  loc_1468EB5: Exit Sub
  loc_1468EB6: ' Referenced from: 146830C
  loc_1468EB6: Proc_6_60_E62BC4(var_148, var_168)
  loc_1468EBB: Exit Sub
End Sub

Public Sub Proc_73_58_E8AED4(arg_C) 'E8AED4
  'Data Table: 4EFEBC
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_E8AE6E: Set var_8C = Me.Txt
  loc_E8AE74: Call 0.Method_Proc_73_58_E8AED4C (var_8E, var_86)
  loc_E8AE84: For var_92 =  To CByte((var_8E - 1)): CByte(1) = var_92 'Byte
  loc_E8AE9A:   Set var_8C = Me.Txt
  loc_E8AEA0:   Call 0.Method_Proc_73_58_E8AED40 (CInt(var_86), var_98)
  loc_E8AEA8:   var_98.Enabled = arg_C
  loc_E8AEB7: Next var_92 'Byte
  loc_E8AECA: Me.Frame1.Enabled = arg_C
  loc_E8AED2: Exit Sub
loc_E8AED3: End Sub
End Sub

Public Sub Proc_73_59_EBBF08
  'Data Table: 4EFEBC
  loc_EBBE80: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EBBE92:   Me.DGVType.Visible = False
  loc_EBBE9A: End If
  loc_EBBEB6: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_EBBEC8:   Me.DGRevenue.Visible = False
  loc_EBBED0: End If
  loc_EBBEEC: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_EBBEFE:   Me.DGSundry.Visible = False
  loc_EBBF06: End If
  loc_EBBF06: Exit Sub
End Sub

Public Sub Proc_73_60_FBCC2C
  'Data Table: 4EFEBC
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBCAAF: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_FBCAB4:   var_92 = 3 'Byte
  loc_FBCAB8: End If
  loc_FBCAC1: Set var_98 = Me.TxtGrid
  loc_FBCAC7: Call 0.Method_Proc_73_60_FBCC2C0 (0, var_B0)
  loc_FBCAEA: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBCB1E: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBCB42:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBCB45:     GoTo loc_FBCC17
  loc_FBCB48:   End If
  loc_FBCB4C:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBCB76:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBCB80:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBCBB5:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBCBD9:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBCBF2:     Set var_98 = Me.TxtGrid
  loc_FBCBF8:     Call 0.Method_Proc_73_60_FBCC2C0 (0, var_B0, CVar(CLng(var_92)))
  loc_FBCC00:     var_B0.SetFocus
  loc_FBCC11:     Proc_73_60_FBCC2C = 0
  loc_FBCC17:     ' Referenced from: FBCB45
  loc_FBCC17:   End If
  loc_FBCC1A: Next var_D4 'Integer
  loc_FBCC2A: Set Proc_73_60_FBCC2C448 = 
End Sub

Public Sub Proc_73_61_12DCA10
  'Data Table: 4EFEBC
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_8A As Integer
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_4EFED5 As Connection15
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
  loc_12DC364: On Error Goto loc_12DCA0A
  loc_12DC374: Set var_B0 = Me.FGrid
  loc_12DC37A: var_B0.Rows = 1
  loc_12DC384: var_8A = 1
  loc_12DC39B: var_B4 = "SELECT SF.*,SM.Name as SundryName" & " FROM SundryTypeFix SF inner JOIN SundryMast SM ON (SF.SundryCode = SM.Code and SF.LogSite_Code=Sm.LogSite_Code) where (SF.LOGSITE_CODE='"
  loc_12DC3B9: unk_4EFED5.Execute var_B4 & MemVar_1F92078 & "')" & " Order By SNo ", var_D0, -1
  loc_12DC3C4: Set var_88 = var_B0
  loc_12DC3EC: If (var_88.RecordCount > 0) Then
  loc_12DC3EF:   ' Referenced from: 12DC966
  loc_12DC3FE:   If Not(var_88.EOF) Then
  loc_12DC401:     var_9C = vbNullString
  loc_12DC40B:     Set var_B0 = Me.FGrid
  loc_12DC420:     Set var_DC = Me.FGrid
  loc_12DC427:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12DC42F:     var_100 = CVar(CLng(1)) 'Long
  loc_12DC45F:     var_120 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_12DC466:     LateIdCallSt
  loc_12DC4B5:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_DC, var_120, CVar(CLng(2)))) 'String
  loc_12DC4BC:     LateIdCallSt
  loc_12DC507:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_DC, var_120)) 'String
  loc_12DC50E:     LateIdCallSt
  loc_12DC559:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_DC, var_120)) 'String
  loc_12DC560:     LateIdCallSt
  loc_12DC576:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12DC5B2:     LateIdCallSt
  loc_12DC5EC:     var_B8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PerOrAmt")), var_DC, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_AC, var_DC, var_120)), var_AC)
  loc_12DC5F3:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12DC5FB:     var_160 = CVar(CLng(6)) 'Long
  loc_12DC631:     var_180 = CVar(CStr(IIf((var_B8 = "P"), "Per", "Amt"))) 'String
  loc_12DC638:     LateIdCallSt
  loc_12DC6B5:     LateIdCallSt
  loc_12DC6F3:     var_B8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoundOff")), var_DC, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_12DC6FA:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12DC702:     var_160 = CVar(CLng(8)) 'Long
  loc_12DC738:     var_180 = CVar(CStr(IIf((var_B8 = "Y"), "Yes", "No"))) 'String
  loc_12DC73F:     LateIdCallSt
  loc_12DC7BC:     LateIdCallSt
  loc_12DC80B:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_DC, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_12DC812:     LateIdCallSt
  loc_12DC85D:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_DC, var_120, CVar(CLng(9)))) 'String
  loc_12DC864:     LateIdCallSt
  loc_12DC8A5:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12DC8AD:     var_160 = CVar(CLng(&HC)) 'Long
  loc_12DC8E3:     var_180 = CVar(CStr(IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP")), var_DC, "Yes", CVar(CLng(var_8A))) = "Y"), "Yes", "No"))) 'String
  loc_12DC8EA:     LateIdCallSt
  loc_12DC90F:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_12DC917:     var_F0 = CVar(CLng(&H10)) 'Long
  loc_12DC91C:     var_110 = "Manual"
  loc_12DC925:     LateIdCallSt
  loc_12DC931:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_12DC939:     var_F0 = CVar(CLng(&H11)) 'Long
  loc_12DC93E:     var_110 = "Yes"
  loc_12DC947:     LateIdCallSt
  loc_12DC951:     Set var_DC = Nothing 
  loc_12DC95B:     var_8A = (var_8A + 1)
  loc_12DC961:     var_88.MoveNext
  loc_12DC966:     GoTo loc_12DC3EF
  loc_12DC969:   End If
  loc_12DC97C:   Me.FGrid.FixedRows = 1
  loc_12DC984: End If
  loc_12DC98A: If (var_8A = 1) Then
  loc_12DC9A0:   Me.FGrid.Rows = 1
  loc_12DC9BD:   var_120 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_12DC9C5:   Set var_E0 = Me.FGrid
  loc_12DC9E1:   var_9C = 1
  loc_12DC9F4:   Me.FGrid.FixedRows = var_9C
  loc_12DC9FC: End If
  loc_12DC9FC: Call Proc_73_59_EBBF08(FGrid.DispID_10000, var_120, var_8A, var_DC, var_110, var_F0, var_9C)
  loc_12DCA06: Set var_88 = Nothing
  loc_12DCA09: Exit Sub
  loc_12DCA0A: ' Referenced from: 12DC364
  loc_12DCA0A: Proc_6_60_E62BC4(var_DC, var_110, var_F0)
  loc_12DCA0F: Exit Sub
End Sub

Public Sub Proc_73_62_E7CB24
  'Data Table: 4EFEBC
  loc_E7CAE5: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A0 'Integer
  loc_E7CAF8:   Call Proc_73_53_115751C(var_88, CInt(5))
  loc_E7CB03:   If (var_A4 = &HFF) Then
  loc_E7CB0B:     Proc_73_62_E7CB24 = 0
  loc_E7CB11:   End If
  loc_E7CB14: Next var_A0 'Integer
  loc_E7CB1E: Proc_73_62_E7CB24 = &HFF
End Sub
