VERSION 5.00
Begin VB.Form OutLetSundry
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
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11625
  ClientHeight = 7155
  LockControls = -1  'True
  Begin CommandButton CmdCopy
    Caption = "&Copy"
    BackColor = &HFF8080&
    Left = 11760
    Top = 6015
    Width = 780
    Height = 330
    TabIndex = 24
    TabStop = 0   'False
    BeginProperty Font
      Name = "Monotype Corsiva"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton CmdPaste
    Caption = "&Paste"
    BackColor = &HFF8080&
    Left = 12645
    Top = 6015
    Width = 780
    Height = 330
    TabIndex = 23
    TabStop = 0   'False
    BeginProperty Font
      Name = "Monotype Corsiva"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11625
    Height = 420
    TabIndex = 20
  End
  Begin Frame FrPwd
    Caption = "New Password"
    Left = 6150
    Top = 5955
    Width = 2475
    Height = 1230
    Visible = 0   'False
    TabIndex = 17
    BeginProperty Font
      Name = "Monotype Corsiva"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox Txt
      Index = 2
      Left = 150
      Top = 300
      Width = 1245
      Height = 285
      TabIndex = 13
      PasswordChar = "*"
    End
    Begin CommandButton CmdCancel
      Caption = "Cancel"
      BackColor = &HFF8080&
      Left = 1455
      Top = 690
      Width = 780
      Height = 330
      Visible = 0   'False
      TabIndex = 15
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton CmdChange
      Caption = "Change"
      BackColor = &HFF8080&
      Left = 1455
      Top = 270
      Width = 780
      Height = 330
      Visible = 0   'False
      TabIndex = 14
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin TextBox txtPassword
    Left = 3990
    Top = 7155
    Width = 1365
    Height = 285
    TabIndex = 9
    PasswordChar = "#"
  End
  Begin Frame Frame1
    Left = 13770
    Top = 2250
    Width = 555
    Height = 2040
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    Begin CommandButton CmdUp
      Caption = "á"
      BackColor = &H8000000E&
      Left = 90
      Top = 270
      Width = 390
      Height = 630
      TabIndex = 18
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
      Caption = "â"
      BackColor = &H8000000E&
      Left = 83
      Top = 1125
      Width = 390
      Height = 630
      TabIndex = 16
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
    Left = 10215
    Top = 7365
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin DataGrid DGRevenue
    Left = 10215
    Top = 7095
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGVType
    Left = 10215
    Top = 6840
    Width = 5520
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 1125
    Width = 1170
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 855
    Width = 705
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
    BackColor = &HE0E0E0&
    ForeColor = &HFF0000&
    Left = 1245
    Top = 2730
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 2
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
  Begin MSHFlexGrid FGrid
    Left = 105
    Top = 1455
    Width = 13300
    Height = 4450
    TabIndex = 3
  End
  Begin CommandButton CmdPwd
    Caption = "Change Password"
    BackColor = &HFF8080&
    Left = 3825
    Top = 6780
    Width = 1695
    Height = 330
    TabIndex = 11
    BeginProperty Font
      Name = "Monotype Corsiva"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 585
    Top = 6315
    Width = 2880
    Height = 255
    TabIndex = 22
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 3255
    Top = 6285
    Width = 2790
    Height = 285
    TabIndex = 21
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
  Begin Label LblName
    Caption = "Password"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2940
    Top = 7170
    Width = 945
    Height = 240
    TabIndex = 19
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
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
    Left = 4065
    Top = 690
    Width = 9255
    Height = 510
    TabIndex = 10
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
  Begin Label LblName
    Caption = "Applicable From"
    Index = 1
    ForeColor = &HFF0000&
    Left = 900
    Top = 1125
    Width = 1365
    Height = 225
    TabIndex = 7
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Bill/Voucher Type"
    Index = 0
    ForeColor = &HFF0000&
    Left = 900
    Top = 855
    Width = 1470
    Height = 225
    TabIndex = 4
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "OutLetSundry"

Private global_74 As Integer
Private MasterFormExit As Integer

Private Sub CmdChange_Click() '100AA60
  'Data Table: 4F6108
  Dim var_88 As Variant
  Dim var_A0 As Variant
  Dim var_90 As TextBox
  Dim unk_4F611F As Connection15
  Dim var_124 As String
  Dim var_B0 As Variant
  loc_100A881: Me.txtPassword.Text = vbNullString
  loc_100A889: On Error Goto loc_100AA15
  loc_100A897: Set var_88 = Me.Txt
  loc_100A89D: Call 0.Method_CmdChange_Click0 (CInt(2))
  loc_100A8AC: var_B0 = Trim(CVar(var_90))
  loc_100A8C6: If (var_B0 = vbNullString) Then
  loc_100A8E2:   MsgBox("Password Can't be blank ", &H40, var_B0, var_D0, var_110)
  loc_100A8FD:   Set var_88 = Me.Txt
  loc_100A903:   Call 0.Method_CmdChange_Click0 (CInt(2), var_90)
  loc_100A90B:   var_90.SetFocus
  loc_100A917:   Exit Sub
  loc_100A918: End If
  loc_100A933: If (Me.FrPwd.Visible = &HFF) Then
  loc_100A942:   Me.FrPwd.Visible = False
  loc_100A965:   If (Me.CmdPwd.Enabled = &HFF) Then
  loc_100A974:     Me.CmdPwd.Enabled = False
  loc_100A97C:   End If
  loc_100A97C: End If
  loc_100A985: unk_4F611F.BeginTrans var_118
  loc_100A9A8: Set var_88 = Me.Txt
  loc_100A9AE: Call 0.Method_CmdChange_Click0 (CInt(2), var_90, var_11C, "Update Enviro set SundryPassword='")
  loc_100A9B6: var_A0 = var_90.Text
  loc_100A9C7: var_124 = Proc_96_18_EE9560(var_11C, -1)
  loc_100A9E9: unk_4F611F.Execute var_138 & var_124 & "' where SiteCode='" & MemVar_1F92078 & "'", var_90, 
  loc_100AA0F: unk_4F611F.CommitTrans
  loc_100AA14: Exit Sub
  loc_100AA15: ' Referenced from: 100A889
  loc_100AA1D: Set var_88 = Err()
  loc_100AA23: Call 0.Method_arg_2C (var_11C)
  loc_100AA2E: Call 0.Method_arg_50 (var_120)
  loc_100AA4A: MsgBox(CVar(var_11C), &H40, CVar(var_120), var_D0, var_110)
  loc_100AA5D: Exit Sub
End Sub

Private Sub CmdPwd_Click() 'F0F394
  'Data Table: 4F6108
  Dim var_88 As Variant
  Dim var_90 As Variant
  loc_F0F2A8: Me.FrPwd.Visible = True
  loc_F0F2CF: Set var_90 = Me.FrPwd
  loc_F0F2D5: var_90.Left = (Me.CmdPwd.Width + CDbl(1455))
  loc_F0F2ED: Me.CmdChange.Visible = True
  loc_F0F301: Me.CmdCancel.Visible = True
  loc_F0F315: Me.CmdPwd.Enabled = False
  loc_F0F32A: Set var_88 = Me.Txt
  loc_F0F330: Call 0.Method_CmdPwd_Click0 (CInt(2), var_90)
  loc_F0F338: var_90.Enabled = True
  loc_F0F352: Set var_88 = Me.Txt
  loc_F0F358: Call 0.Method_CmdPwd_Click0 (CInt(2), var_90)
  loc_F0F360: var_90.Text = vbNullString
  loc_F0F377: Set var_88 = Me.Txt
  loc_F0F37D: Call 0.Method_CmdPwd_Click0 (CInt(2))
  loc_F0F385: var_90.SetFocus
  loc_F0F391: Exit Sub
End Sub

Private Sub CmdDown_Click() '1098720
  'Data Table: 4F6108
  Dim var_C0 As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  loc_10984BF: If (CLng(Me.FGrid.Row) = 1) Then
  loc_10984C2:   Exit Sub
  loc_10984C3: End If
  loc_10984FE: If (CLng(Me.FGrid.Row) = (CLng(Me.FGrid.Rows) - 2)) Then
  loc_1098501:   Exit Sub
  loc_1098502: End If
  loc_1098516: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_1098544: For var_D4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_D4 'Integer
  loc_109854E:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_1098557:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_109857B:   var_A0(CLng(var_A6)) = CStr(Me.FGrid.TextMatrix))
  loc_1098588: Next var_D4 'Integer
  loc_10985B2: For var_11C = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_11C 'Integer
  loc_10985CB:   var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10985D4:   var_160 = CVar(CLng(var_A6)) 'Long
  loc_10985F2:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_10985FB:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_1098615:   var_180 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_109861D:   Set var_194 = Me.FGrid
  loc_1098623:   LateIdCallSt
  loc_1098644: Next var_11C 'Integer
  loc_109866E: For var_198 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_198 'Integer
  loc_109868D:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_1098696:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_10986AB:   Set var_C0 = Me.FGrid
  loc_10986B1:   LateIdCallSt
  loc_10986C6: Next var_198 'Integer
  loc_10986D2: var_E4 = CVar(CLng((var_86 + 1))) 'Long
  loc_10986E1: Me.FGrid.Row = var_E4
  loc_109870B: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_109871A: Call Proc_109_59_E7FC00()
  loc_109871F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E51EE8
  'Data Table: 4F6108
  loc_E51EC2: Set var_88 = Me.Txt
  loc_E51EC8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E51ED6: Proc_6_74_E226B0(var_8C)
  loc_E51EE2: Call Proc_109_67_EBB594(var_8C)
  loc_E51EE7: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F6FD00
  'Data Table: 4F6108
  Dim var_98 As DataGrid
  loc_F6FBDE: If (CLng(Shift) = &H1B) Then
  loc_F6FBE1:   Call Proc_109_67_EBB594()
  loc_F6FBE6:   Exit Sub
  loc_F6FBE7: End If
  loc_F6FBF5: If (KeyCode = CInt(0)) Then
  loc_F6FC10:   Set var_9C = Nothing
  loc_F6FC1B:   Set var_98 = Nothing
  loc_F6FC49:   Proc_6_69_134A198(Me.DGVType, Me.Txt, KeyCode, global_80, Shift, 0)
  loc_F6FC5D: End If
  loc_F6FC8E: Set var_98 = Me.DGRevenue
  loc_F6FCB3: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_F6FCCB:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F6FCD4:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_F6FCD9:   End If
  loc_F6FCEE:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F6FCF7:     Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_F6FCFC:   End If
  loc_F6FCFC: End If
  loc_F6FCFC: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E084C0
  'Data Table: 4F6108
  Dim var_86 As Integer
  loc_E084B3: Proc_6_58_E054C0(arg_10)
  loc_E084BB: var_86 = KeyAscii
  loc_E084BE: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA47C8
  'Data Table: 4F6108
  loc_EA475A: If (KeyCode = CInt(0)) Then
  loc_EA4779:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EA478D:     var_A4 = "Name"
  loc_EA47B1:     Proc_6_68_129FB34(Me.DGVType, Me.Txt, KeyCode, global_80)
  loc_EA47C4:   End If
  loc_EA47C4: End If
  loc_EA47C4: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E0CC
  'Data Table: 4F6108
  loc_E4E0AA: Set var_88 = Me.Txt
  loc_E4E0B0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E0BE: Proc_6_73_E22704(var_8C)
  loc_E4E0CA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '124E0C0
  'Data Table: 4F6108
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_E4 As TextBox
  Dim var_E8 As String
  Dim var_F4 As String
  Dim var_114 As Variant
  Dim var_94 As Label
  Dim var_128 As TextBox
  loc_124DB87: var_86 = Cancel
  loc_124DB92: If (var_86 = CInt(0)) Then
  loc_124DBA0:   Set var_8C = Me.Txt
  loc_124DBA6:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_124DBAE:   var_98 = "Voucher Type"
  loc_124DBCF:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_124DBDD:     Set var_8C = Me.Txt
  loc_124DBE3:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_124DBEB:     var_90.SetFocus
  loc_124DBF9:     arg_10 = &HFF
  loc_124DBFC:     Exit Sub
  loc_124DBFD:   End If
  loc_124DC4B:   Set var_8C = Me.Txt
  loc_124DC51:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_124DC59:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_124DC71:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_124DC81:     Set var_8C = Me.Txt
  loc_124DC87:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_124DC8F:     var_90.Text = vbNullString
  loc_124DCA8:     Set var_8C = Me.Txt
  loc_124DCAE:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_124DCB6:     var_90.Tag = vbNullString
  loc_124DCCF:     Me.LblDepart.Caption = vbNullString
  loc_124DCDA:   Else
  loc_124DD19:     If (Me.Fields.Item("RestType").Value = "Banquet") Then
  loc_124DD57:       Set var_94 = Me.Txt
  loc_124DD5D:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_124DD65:       var_E4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_124DDB6:       Set var_94 = Me.Txt
  loc_124DDBC:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_124DDC4:       var_E4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_124DDDD:     Else
  loc_124DE18:       Set var_94 = Me.Txt
  loc_124DE1E:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_124DE26:       var_E4.Text = CStr(Me.Fields.Item("V_Type").Value)
  loc_124DE77:       Set var_94 = Me.Txt
  loc_124DE7D:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_124DE85:       var_E4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_124DE9B:     End If
  loc_124DEB7:     Me.Recordset15.CursorLocation = 3
  loc_124DF0B:     var_E8 = " SELECT DISTINCT RM.Code as Code,RM.Name as NAme,RM.Type FROM RevMast AS RM WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and RM.FieldType='T'"
  loc_124DF20:     var_F4 = var_E8 & " Union " & " Select Distinct RM.Code as Code,RM.Name as NAme,RM.Type From RevMast RM Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_124DF36:     var_114 = CVar(var_F4 & "' or LOGSITE_CODE='HO') and FlagAmr<>'Header' and RM.DeskCode='") & Me.Fields.Item("Dcode").Value & "' Order By Name" 
  loc_124DF41:     Me.Open var_114, CVar(MemVar_1F92044), 3
  loc_124DF6E:     CVarUnk
  loc_124DF73:     VerifyVarObj
  loc_124DF79:     Set var_8C = Me.DGRevenue
  loc_124DF7F:     LateIdStAd
  loc_124DF9F:     var_8C = Me.Fields
  loc_124DFA7:     var_90 = var_8C.Item("Name")
  loc_124DFC5:     Me.LblDepart.Caption = Proc_6_38_E68A98(CVar(var_90), var_8C, New)
  loc_124DFD7:     Call Proc_109_69_12D2930(1, -1)
  loc_124DFDC:   End If
  loc_124DFDF: Else
  loc_124DFE7:   If (var_86 = CInt(1)) Then
  loc_124DFF5:     Set var_8C = Me.Txt
  loc_124DFFB:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_124E024:     If (Proc_6_27_EA565C(var_90, "App. Date") = 0) Then
  loc_124E032:       Set var_8C = Me.Txt
  loc_124E038:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_124E040:       var_90.SetFocus
  loc_124E04E:       arg_10 = &HFF
  loc_124E051:       Exit Sub
  loc_124E052:     End If
  loc_124E05C:     Set var_8C = Me.Txt
  loc_124E062:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_124E082:     Set var_E4 = Me.Txt
  loc_124E088:     Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_124E090:     var_128.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_124E0B5:     Me.FGrid.Col = CVar(CLng(1))
  loc_124E0BD:   End If
  loc_124E0BD: End If
  loc_124E0BD: Exit Sub
End Sub

Private Sub CmdUp_Click() '10F22B0
  'Data Table: 4F6108
  Dim var_DC As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_6F01 As Integer
  loc_10F2023: If (CLng(Me.FGrid.Row) = (CLng(Me.FGrid.Rows) - 1)) Then
  loc_10F2026:   Exit Sub
  loc_10F2027: End If
  loc_10F2046: If (CLng(Me.FGrid.Row) = 0) Then
  loc_10F2049:   Exit Sub
  loc_10F204A: End If
  loc_10F2069: If (CLng(Me.FGrid.Row) = 1) Then
  loc_10F206C:   Exit Sub
  loc_10F206D: End If
  loc_10F208C: If (CLng(Me.FGrid.Row) = 2) Then
  loc_10F208F:   Exit Sub
  loc_10F2090: End If
  loc_10F20A4: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_10F20D2: For var_F0 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_F0 'Integer
  loc_10F20DC:   var_100 = CVar(CLng(var_86)) 'Long
  loc_10F20E5:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F2109:   var_A0(CLng(var_C2)) = CStr(Me.FGrid.TextMatrix))
  loc_10F2116: Next var_F0 'Integer
  loc_10F2140: For var_138 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_138 'Integer
  loc_10F2159:   var_15C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F2162:   var_17C = CVar(CLng(var_C2)) 'Long
  loc_10F2180:   var_100 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_10F2189:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F21A3:   var_19C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_10F21AB:   Set var_1B0 = Me.FGrid
  loc_10F21B1:   LateIdCallSt
  loc_10F21D2: Next var_138 'Integer
  loc_10F21FC: For var_1B4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_1B4 'Integer
  loc_10F221B:   var_100 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_10F2224:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F2239:   Set var_DC = Me.FGrid
  loc_10F223F:   LateIdCallSt
  loc_10F2254: Next var_1B4 'Integer
  loc_10F2260: var_100 = CVar(CLng((var_86 - 1))) 'Long
  loc_10F226F: Me.FGrid.Row = var_100
  loc_10F2299: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_10F22A8: Call Proc_109_59_E7FC00()
  loc_10F22AD: Exit Sub
  loc_10F22AE: var_6F01 = 
End Sub

Private Sub cmdCopy_Click() 'F6A340
  'Data Table: 4F6108
  Dim unk_4F611F As Connection15
  Dim var_C8 As Variant
  Dim var_F8 As String
  Dim var_108 As Variant
  Dim var_10C As TextBox
  loc_F6A256: unk_4F611F.Execute "Delete From SundryType Where V_Type='XXX'", var_A4, -1
  loc_F6A27E: Proc_6_7_F25D88(var_A4, MemVar_1F920F4, "INSERT INTO SundryType SELECT 'XXX' AS V_Type, SundryCode, SNo, ", var_1BC)
  loc_F6A286: var_C8 = -1 & var_A4 
  loc_F6A293: var_F8 = "AutoManual, U_Name, GETDATE() AS U_EntDt, U_AE, SiteCode, PostYN, LogSite_Code FROM SundryType AS SundryType_1 WHERE V_Type = "
  loc_F6A298: var_108 = var_C8 & " AS Appdate, DispName, CalcFormula, PerOrAmt, RoundOff, SValue, Limit, RevCode, Nature, CalcSign, SysYN, Grp," & var_F8 
  loc_F6A2B0: Call 0.Method_cmdCopy_Click0 (CInt(0), var_10C, var_110)
  loc_F6A2B8: var_108 = var_10C.Tag
  loc_F6A2C6: Proc_6_17_EAA2B0(var_130, CVar(var_110))
  loc_F6A2E6: Set var_164 = Me.Txt
  loc_F6A2EC: Call 0.Method_cmdCopy_Click0 (CInt(1), var_168)
  loc_F6A2FB: Proc_6_7_F25D88(var_188, CVar(var_168))
  loc_F6A311: unk_4F611F.Execute CStr(var_1C0 & var_130 & " AND AppDate = " & var_188), Me.Txt, 
  loc_F6A33F: Exit Sub
End Sub

Private Sub CmdPaste_Click() 'E4F3E4
  'Data Table: 4F6108
  loc_E4F3BC: Set var_88 = Me.TopCtrl1
  loc_E4F3C2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4F3DB: If (CStr() = "Add") Then
  loc_E4F3DE:   Call Proc_109_71_138436C()
  loc_E4F3E3: End If
  loc_E4F3E3: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11E2FBC
  'Data Table: 4F6108
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_11E2B44: Call Proc_109_67_EBB594()
  loc_11E2B5C: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11E2B77: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E2B80: Set var_BC = Me.FGrid
  loc_11E2BB6: Set var_104 = Me.TxtGrid
  loc_11E2BBC: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_11E2BC4: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_11E2BF5: var_110 = CLng(Me.FGrid.Col)
  loc_11E2C05: If (var_110 = CLng(3)) Then
  loc_11E2C17:   Set var_A8 = Me.TxtGrid
  loc_11E2C1D:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E2C25:   var_BC.MaxLength = var_110
  loc_11E2C72:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E2C75:     Exit Sub
  loc_11E2C76:   End If
  loc_11E2C89:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E2C91:   var_DC = CVar(CLng(3)) 'Long
  loc_11E2CC4:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E2CCD:     Me.MoveFirst
  loc_11E2CE5:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E2CED:     var_DC = CVar(CLng(2)) 'Long
  loc_11E2CF6:     Set var_BC = Me.FGrid
  loc_11E2D0D:     Proc_6_17_EAA2B0(var_128, CVar(CStr(var_BC.TextMatrix))), var_DC, var_94)
  loc_11E2D36:     Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E2D66:     If (Me.EOF = &HFF) Then
  loc_11E2D6F:       Me.MoveFirst
  loc_11E2D74:     End If
  loc_11E2D74:   End If
  loc_11E2D77: Else
  loc_11E2D7E:   If Not (var_110 = CLng(7)) Then
  loc_11E2D88:     If (var_110 = CLng(9)) Then
  loc_11E2D8B:     End If
  loc_11E2D9A:     Set var_A8 = Me.TxtGrid
  loc_11E2DA0:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_158)
  loc_11E2DA8:     var_BC.MaxLength = var_DC
  loc_11E2DBD:     If (global_74 = 0) Then
  loc_11E2DC8:       var_10C = "{Home}+{End}"
  loc_11E2DCE:       Proc_303_0_FB9B68(CStr("Code=" & var_128), 0)
  loc_11E2DD6:     End If
  loc_11E2DD9:   Else
  loc_11E2DE0:     If (var_110 = CLng(4)) Then
  loc_11E2DF2:       Set var_A8 = Me.TxtGrid
  loc_11E2DF8:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E2E00:       var_BC.MaxLength = var_94
  loc_11E2E0F:     Else
  loc_11E2E16:       If (var_110 = CLng(5)) Then
  loc_11E2E28:         Set var_A8 = Me.TxtGrid
  loc_11E2E2E:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E2E36:         var_BC.MaxLength = &H32
  loc_11E2E45:       Else
  loc_11E2E4C:         If (var_110 = CLng(&HD)) Then
  loc_11E2E5E:           Set var_A8 = Me.TxtGrid
  loc_11E2E64:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E2E6C:           var_BC.MaxLength = &H32
  loc_11E2EB9:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E2EBC:             Exit Sub
  loc_11E2EBD:           End If
  loc_11E2ED0:           var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E2ED8:           var_DC = CVar(CLng(&HD)) 'Long
  loc_11E2F0B:           If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E2F14:             Me.MoveFirst
  loc_11E2F54:             Proc_6_17_EAA2B0(var_128, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_11E2F7D:             Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E2FAD:             If (Me.EOF = &HFF) Then
  loc_11E2FB6:               Me.MoveFirst
  loc_11E2FBB:             End If
  loc_11E2FBB:           End If
  loc_11E2FBB:         End If
  loc_11E2FBB:       End If
  loc_11E2FBB:     End If
  loc_11E2FBB:   End If
  loc_11E2FBB: End If
  loc_11E2FBB: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13BB74C
  'Data Table: 4F6108
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C8 As Variant
  Dim var_94 As DataGrid
  loc_13BADDC: On Error Goto loc_13BB746
  loc_13BADE9: If (CLng(Shift) = &H1B) Then
  loc_13BADF9:   Set var_88 = Me.TxtGrid
  loc_13BADFF:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13BAE19:   Set var_94 = Me.TxtGrid
  loc_13BAE1F:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_13BAE27:   var_98.Text = var_8C.Tag
  loc_13BAE43:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13BAE48:   Call Proc_109_67_EBB594(arg_14)
  loc_13BAE51:   Set var_88 = Me.FGrid
  loc_13BAE6E:   Set var_88 = Me.TxtGrid
  loc_13BAE74:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13BAE7C:   var_8C.Visible = False
  loc_13BAE88:   Exit Sub
  loc_13BAE89: End If
  loc_13BAE9C: var_AC = CLng(Me.FGrid.Col)
  loc_13BAEAC: If (var_AC = CLng(1)) Then
  loc_13BAEB9:   If (CLng(Shift) = &HD) Then
  loc_13BAEC2:     Call Proc_109_63_152A1C4(KeyCode, var_AE)
  loc_13BAECD:     If (var_AE = &HFF) Then
  loc_13BAEDB:       Set var_98 = Me.TxtGrid
  loc_13BAF04:       Set var_8C = var_98
  loc_13BAF13:       Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_74, &HF)
  loc_13BAF23:     End If
  loc_13BAF23:   End If
  loc_13BAF26: Else
  loc_13BAF2D:   If (var_AC = CLng(3)) Then
  loc_13BAF3C:     Set var_88 = Me.TxtGrid
  loc_13BAF42:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0)
  loc_13BAF4A:     3 = var_8C.Left
  loc_13BAF61:     Me.DGSundry.Left = CVar(var_B8)
  loc_13BAF7B:     Set var_94 = Me.TxtGrid
  loc_13BAF81:     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13BAF89:     0 = var_98.Height
  loc_13BAF9A:     Set var_88 = Me.TxtGrid
  loc_13BAFA0:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13BAFA8:     var_AC = var_8C.Top
  loc_13BAFB4:     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13BAFC3:     Me.DGSundry.Top = CVar(var_B8)
  loc_13BAFED:     Set var_98 = Nothing
  loc_13BB026:     Proc_6_69_134A198(Me.DGSundry, Me.TxtGrid, KeyCode, global_84, Shift, &HFF)
  loc_13BB044:     If (CLng(Shift) = &HD) Then
  loc_13BB04D:       Call Proc_109_63_152A1C4(KeyCode, var_AE, 1, Nothing)
  loc_13BB058:       If (var_AE = &HFF) Then
  loc_13BB09E:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF)
  loc_13BB0AE:       End If
  loc_13BB0AE:     End If
  loc_13BB0B1:   Else
  loc_13BB0B8:     If (var_AC = CLng(4)) Then
  loc_13BB0FB:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BB104:         Call Proc_109_63_152A1C4(KeyCode, var_AE, 0, 4)
  loc_13BB10F:         If (var_AE = &HFF) Then
  loc_13BB155:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BB165:         End If
  loc_13BB165:       End If
  loc_13BB168:     Else
  loc_13BB16F:       If (var_AC = CLng(5)) Then
  loc_13BB1B2:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BB1BB:           Call Proc_109_63_152A1C4(KeyCode, var_AE, 5, 0)
  loc_13BB1C6:           If (var_AE = &HFF) Then
  loc_13BB20C:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BB21C:           End If
  loc_13BB21C:         End If
  loc_13BB21F:       Else
  loc_13BB226:         If (var_AC = CLng(6)) Then
  loc_13BB269:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BB272:             Call Proc_109_63_152A1C4(KeyCode, var_AE, 6, 0)
  loc_13BB27D:             If (var_AE = &HFF) Then
  loc_13BB2C3:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BB2D3:             End If
  loc_13BB2D3:           End If
  loc_13BB2D6:         Else
  loc_13BB2DD:           If (var_AC = CLng(7)) Then
  loc_13BB320:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BB329:               Call Proc_109_63_152A1C4(KeyCode, var_AE, 7, 0)
  loc_13BB334:               If (var_AE = &HFF) Then
  loc_13BB37A:                 Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BB38A:               End If
  loc_13BB38A:             End If
  loc_13BB38D:           Else
  loc_13BB394:             If Not (var_AC = CLng(8)) Then
  loc_13BB39E:               If (var_AC = CLng(&H10)) Then
  loc_13BB3A1:               End If
  loc_13BB3E1:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BB3EA:                 Call Proc_109_63_152A1C4(KeyCode, var_AE, &HC, 0)
  loc_13BB3F5:                 If (var_AE = &HFF) Then
  loc_13BB43B:                   Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BB44B:                 End If
  loc_13BB44B:               End If
  loc_13BB44E:             Else
  loc_13BB455:               If (var_AC = CLng(9)) Then
  loc_13BB498:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BB4A1:                   Call Proc_109_63_152A1C4(KeyCode, var_AE, 9, 0)
  loc_13BB4AC:                   If (var_AE = &HFF) Then
  loc_13BB4F2:                     Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF, 0)
  loc_13BB502:                   End If
  loc_13BB502:                 End If
  loc_13BB505:               Else
  loc_13BB50C:                 If (var_AC = CLng(&HC)) Then
  loc_13BB54F:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_74 = &HFF))) Then
  loc_13BB558:                     Call Proc_109_63_152A1C4(KeyCode, var_AE, &HC, 0)
  loc_13BB563:                     If (var_AE = &HFF) Then
  loc_13BB571:                       Set var_98 = Me.TxtGrid
  loc_13BB59A:                       Set var_8C = var_98
  loc_13BB5A9:                       Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_74, &HF, 0)
  loc_13BB5B9:                     End If
  loc_13BB5B9:                   End If
  loc_13BB5BC:                 Else
  loc_13BB5C3:                   If (var_AC = CLng(&HD)) Then
  loc_13BB5D2:                     Set var_88 = Me.TxtGrid
  loc_13BB5D8:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0, 0)
  loc_13BB5E0:                     0 = var_8C.Left
  loc_13BB5F7:                     Me.DGRevenue.Left = CVar(var_B8)
  loc_13BB611:                     Set var_94 = Me.TxtGrid
  loc_13BB617:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13BB61F:                     var_98 = var_98.Height
  loc_13BB630:                     Set var_88 = Me.TxtGrid
  loc_13BB636:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13BB63E:                     0 = var_8C.Top
  loc_13BB64A:                     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13BB659:                     Me.DGRevenue.Top = CVar(var_B8)
  loc_13BB683:                     Set var_98 = Nothing
  loc_13BB6BC:                     Proc_6_69_134A198(Me.DGRevenue, Me.TxtGrid, KeyCode, global_88, Shift, &HFF)
  loc_13BB6DA:                     If (CLng(Shift) = &HD) Then
  loc_13BB6E3:                       Call Proc_109_63_152A1C4(KeyCode, var_AE, 1, Nothing)
  loc_13BB6EE:                       If (var_AE = &HFF) Then
  loc_13BB736:                         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_74, &HF)
  loc_13BB746:                       End If
  loc_13BB746:                     End If
  loc_13BB746:                   End If
  loc_13BB746:                 End If
  loc_13BB746:               End If
  loc_13BB746:             End If
  loc_13BB746:           End If
  loc_13BB746:         End If
  loc_13BB746:       End If
  loc_13BB746:       ' Referenced from: 13BADDC
  loc_13BB746:     End If
  loc_13BB746:   End If
  loc_13BB746: End If
  loc_13BB746: Proc_6_60_E62BC4(CByte(1), 0, 0)
  loc_13BB74B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '11A9830
  'Data Table: 4F6108
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B4 As Integer
  Dim arg_10 As Integer
  Dim var_AC As TextBox
  loc_11A9407: Proc_6_58_E054C0(arg_10)
  loc_11A9418: If (KeyAscii = 0) Then
  loc_11A942E:   var_A0 = CLng(Me.FGrid.Col)
  loc_11A943E:   If (var_A0 = CLng(3)) Then
  loc_11A945D:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_11A9464:       Set var_AC = Me.TxtGrid
  loc_11A946F:       var_A4 = "Name"
  loc_11A948A:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_84, arg_10)
  loc_11A9499:     End If
  loc_11A949C:   Else
  loc_11A94A3:     If (var_A0 = CLng(9)) Then
  loc_11A94B0:       Set var_8C = Me.TxtGrid
  loc_11A94B6:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_11A94D1:       Proc_6_42_129A86C(var_AC, arg_10, 8, 3)
  loc_11A94E0:     Else
  loc_11A94E7:       If (var_A0 = CLng(7)) Then
  loc_11A94F4:         Set var_8C = Me.TxtGrid
  loc_11A94FA:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_11A9515:         Proc_6_42_129A86C(var_AC, arg_10, 8)
  loc_11A9524:       Else
  loc_11A952B:         If (var_A0 = CLng(5)) Then
  loc_11A9531:           var_B4 = arg_10
  loc_11A953D:           If Not (&H39 > var_B4 > &H31) Then
  loc_11A9546:             If Not (var_B4 = &H2B) Then
  loc_11A954F:               If Not (var_B4 = &H2D) Then
  loc_11A9558:                 If Not (var_B4 = 8) Then
  loc_11A9561:                   If (var_B4 = &H30) Then
  loc_11A9564:                   End If
  loc_11A9564:                 End If
  loc_11A9564:               End If
  loc_11A9564:             End If
  loc_11A9567:           Else
  loc_11A9569:             arg_10 = 0
  loc_11A956C:           End If
  loc_11A956F:         Else
  loc_11A9576:           If (var_A0 = CLng(6)) Then
  loc_11A9586:             If ((arg_10 = &H50) Or (arg_10 = &H70)) Then
  loc_11A9596:               Set var_8C = Me.TxtGrid
  loc_11A959C:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Per", arg_10)
  loc_11A95A4:               var_AC.Text = var_B4
  loc_11A95B2:               arg_10 = 0
  loc_11A95B8:             Else
  loc_11A95C5:               If ((arg_10 = &H41) Or (arg_10 = &H5A)) Then
  loc_11A95D5:                 Set var_8C = Me.TxtGrid
  loc_11A95DB:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Amt", arg_10)
  loc_11A95E3:                 var_AC.Text = 3
  loc_11A95F1:                 arg_10 = 0
  loc_11A95F7:               Else
  loc_11A9604:                 Set var_8C = Me.TxtGrid
  loc_11A960A:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_11A9612:                 var_AC.Text = arg_10
  loc_11A9620:                 arg_10 = 0
  loc_11A9623:               End If
  loc_11A9623:             End If
  loc_11A9626:           Else
  loc_11A962D:             If Not (var_A0 = CLng(8)) Then
  loc_11A9637:               If (var_A0 = CLng(&HC)) Then
  loc_11A963A:               End If
  loc_11A9647:               If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_11A9657:                 Set var_8C = Me.TxtGrid
  loc_11A965D:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_11A9665:                 var_AC.Text = arg_10
  loc_11A9673:                 arg_10 = 0
  loc_11A9679:               Else
  loc_11A9686:                 If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_11A9696:                   Set var_8C = Me.TxtGrid
  loc_11A969C:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_11A96A4:                   var_AC.Text = arg_10
  loc_11A96B2:                   arg_10 = 0
  loc_11A96B8:                 Else
  loc_11A96C5:                   Set var_8C = Me.TxtGrid
  loc_11A96CB:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_11A96D3:                   var_AC.Text = arg_10
  loc_11A96E1:                   arg_10 = 0
  loc_11A96E4:                 End If
  loc_11A96E4:               End If
  loc_11A96E7:             Else
  loc_11A96EE:               If (var_A0 = CLng(&H10)) Then
  loc_11A971A:                 If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_11A972A:                   Set var_8C = Me.TxtGrid
  loc_11A9730:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Auto")
  loc_11A9738:                   var_AC.Text = arg_10
  loc_11A9747:                 Else
  loc_11A9770:                   If (Ucase(Chr(CLng(arg_10))) = "M") Then
  loc_11A9780:                     Set var_8C = Me.TxtGrid
  loc_11A9786:                     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Manual")
  loc_11A978E:                     var_AC.Text = var_A0
  loc_11A979D:                   Else
  loc_11A97AA:                     Set var_8C = Me.TxtGrid
  loc_11A97B0:                     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC)
  loc_11A97B8:                     var_AC.Text = vbNullString
  loc_11A97C4:                   End If
  loc_11A97C4:                 End If
  loc_11A97C6:                 arg_10 = 0
  loc_11A97CC:               Else
  loc_11A97D3:                 If (var_A0 = CLng(&HD)) Then
  loc_11A97F2:                   If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_11A9804:                     var_A4 = "Name"
  loc_11A981F:                     Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_88, arg_10)
  loc_11A982E:                   End If
  loc_11A982E:                 End If
  loc_11A982E:               End If
  loc_11A982E:             End If
  loc_11A982E:           End If
  loc_11A982E:         End If
  loc_11A982E:       End If
  loc_11A982E:     End If
  loc_11A982E:   End If
  loc_11A982E: End If
  loc_11A982E: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FBAD08
  'Data Table: 4F6108
  Dim var_9C As Long
  Dim var_AA As Integer
  Dim Shift As Integer
  loc_FBAB58: On Error Goto loc_FBAD01
  loc_FBAB6E: var_9C = CLng(Me.FGrid.Col)
  loc_FBAB7E: If (var_9C = CLng(3)) Then
  loc_FBABA4:   If ((Shift <> &HD) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_FBABB2:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FBABC6:     var_A4 = "Name"
  loc_FBABE1:     Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_84, Shift)
  loc_FBABF0:   End If
  loc_FBABF3: Else
  loc_FBABFA:   If Not (var_9C = CLng(6)) Then
  loc_FBAC04:     If Not (var_9C = CLng(8)) Then
  loc_FBAC0E:       If Not (var_9C = CLng(&HC)) Then
  loc_FBAC18:         If Not (var_9C = CLng(5)) Then
  loc_FBAC22:           If (var_9C = CLng(&H10)) Then
  loc_FBAC25:           End If
  loc_FBAC25:         End If
  loc_FBAC25:       End If
  loc_FBAC25:     End If
  loc_FBAC2B:     If (Shift <> &HD) Then
  loc_FBAC34:       Call TxtGrid_KeyPress(KeyCode)
  loc_FBAC39:     End If
  loc_FBAC3C:   Else
  loc_FBAC43:     If (var_9C = CLng(&HD)) Then
  loc_FBAC69:       If ((Shift <> &HD) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_FBAC77:         Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FBACA6:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_88, Shift, "Name", &HFF)
  loc_FBACB5:       End If
  loc_FBACB8:     Else
  loc_FBACBF:       If (var_9C = CLng(5)) Then
  loc_FBACC5:         var_AA = Shift
  loc_FBACD1:         If Not (&H39 > var_AA > &H31) Then
  loc_FBACDA:           If Not (var_AA = &H2B) Then
  loc_FBACE3:             If Not (var_AA = &H2D) Then
  loc_FBACEC:               If Not (var_AA = 8) Then
  loc_FBACF5:                 If (var_AA = &H30) Then
  loc_FBACF8:                 End If
  loc_FBACF8:               End If
  loc_FBACF8:             End If
  loc_FBACF8:           End If
  loc_FBACFB:         Else
  loc_FBACFD:           Shift = 0
  loc_FBAD00:         End If
  loc_FBAD00:       End If
  loc_FBAD00:     End If
  loc_FBAD00:   End If
  loc_FBAD00: End If
  loc_FBAD00: Exit Sub
  loc_FBAD01: ' Referenced from: FBAB58
  loc_FBAD01: Proc_6_60_E62BC4(Shift, var_AA, 0, Shift)
  loc_FBAD06: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23DFC
  'Data Table: 4F6108
  Dim arg_10 As Integer
  loc_E23DE4: If (Cancel = 0) Then
  loc_E23DED:   Call Proc_109_63_152A1C4(Cancel, var_88)
  loc_E23DF6:   arg_10 = Not(var_88)
  loc_E23DF9: End If
  loc_E23DF9: Exit Sub
End Sub

Private Sub DGSundry_UnknownEvent_9 '107689C
  'Data Table: 4F6108
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_128 As TextBox
  loc_107661B: Me.DGSundry.Visible = False
  loc_107663A: If (Me.RecordCount > 0) Then
  loc_1076650:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1076658:   var_E4 = CVar(CLng(2)) 'Long
  loc_107668B:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1076693:   Set var_128 = Me.FGrid
  loc_1076699:   LateIdCallSt
  loc_107670B:   Set var_128 = Me.FGrid
  loc_1076711:   LateIdCallSt
  loc_1076767:   Set var_B4 = Me.TxtGrid
  loc_107676D:   Call 0.Method_DGSundry_UnknownEvent_90 (0, var_128, CStr(Me.Fields.Item("Name").Value), var_128, CVar(CStr(Me.Fields.Item("Name").Value)), CVar(CLng(3)))
  loc_1076775:   var_128.Text = CVar(CLng(Me.FGrid.Row))
  loc_10767D6:   var_114 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_128)) 'String
  loc_10767DE:   Set var_128 = Me.FGrid
  loc_10767E4:   LateIdCallSt
  loc_1076811:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1076819:   var_E4 = CVar(CLng(&HE)) 'Long
  loc_107683B:   var_B0 = Me.Fields.Item("SysYN")
  loc_107684C:   var_114 = CVar(CStr(var_B0.Value)) 'String
  loc_1076854:   Set var_128 = Me.FGrid
  loc_107685A:   LateIdCallSt
  loc_1076876: End If
  loc_107687F: Set var_A8 = Me.TxtGrid
  loc_1076885: Call 0.Method_DGSundry_UnknownEvent_90 (0, var_B0, var_128, var_114, var_E4, var_A4)
  loc_107688D: var_B0.SetFocus
  loc_1076899: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_9 '1053BFC
  'Data Table: 4F6108
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E8 As Variant
  Dim var_B4 As Variant
  Dim var_118 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As String
  Dim MemVar_10C74F0 As Double
  loc_10539A3: Me.DGRevenue.Visible = False
  loc_10539D7: If ((Me.RecordCount > 0) And (Me.EOF = 0)) Then
  loc_10539ED:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10539F5:   var_E8 = CVar(CLng(&HF)) 'Long
  loc_1053A28:   var_118 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1053A30:   Set var_12C = Me.FGrid
  loc_1053A36:   LateIdCallSt
  loc_1053A65:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1053A6D:   var_E8 = CVar(CLng(&HD)) 'Long
  loc_1053AA0:   var_118 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1053AA8:   Set var_12C = Me.FGrid
  loc_1053AAE:   LateIdCallSt
  loc_1053B09:   If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_1053B1F:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1053B27:     var_D8 = CVar(CLng(&HB)) 'Long
  loc_1053B2C:     var_F8 = "+"
  loc_1053B36:     Set var_B4 = Me.FGrid
  loc_1053B3C:     LateIdCallSt
  loc_1053B51:   Else
  loc_1053B90:     If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_1053BA6:       var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1053BAE:       var_D8 = CVar(CLng(&HB)) 'Long
  loc_1053BB3:       var_F8 = "-"
  loc_1053BBD:       Set var_B4 = Me.FGrid
  loc_1053BC3:       LateIdCallSt
  loc_1053BD5:     End If
  loc_1053BD5:   End If
  loc_1053BD5: End If
  loc_1053BDE: Set var_A8 = Me.TxtGrid
  loc_1053BE4: Call 0.Method_DGRevenue_UnknownEvent_90 (0, var_B4, var_B4, var_F8, var_D8, var_94, var_B4)
  loc_1053BEC: var_B4.SetFocus
  loc_1053BF8: Exit Sub
  loc_1053BF9: MemVar_10C74F0 = var_F8
End Sub

Private Sub DGVType_UnknownEvent_9 'F34D44
  'Data Table: 4F6108
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F34C3B: Me.DGVType.Visible = False
  loc_F34C5A: If (Me.RecordCount > 0) Then
  loc_F34C99:   Set var_B4 = Me.Txt
  loc_F34C9F:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F34CA7:   var_B8.Text = CStr(Me.Fields.Item("V_Type").Value)
  loc_F34CDA:   var_B0 = Me.Fields.Item("Code")
  loc_F34CF9:   Set var_B4 = Me.Txt
  loc_F34CFF:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F34D07:   var_B8.Tag = CStr(var_B0.Value)
  loc_F34D1D: End If
  loc_F34D28: Set var_A8 = Me.Txt
  loc_F34D2E: Call 0.Method_DGVType_UnknownEvent_90 (CInt(0))
  loc_F34D36: var_B0.SetFocus
  loc_F34D42: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E86350
  'Data Table: 4F6108
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E862F3: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E86306: Set var_A8 = Me.TxtGrid
  loc_E8630C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E86314: var_AC.Visible = False
  loc_E8632E: Set var_A8 = Me.TxtGrid
  loc_E86334: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E8633C: var_AC.MaxLength = 0
  loc_E86348: Call Proc_109_67_EBB594()
  loc_E8634D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E66790
  'Data Table: 4F6108
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6674C: Set var_88 = Me.TxtGrid
  loc_E66752: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6676C: If (var_8C.Visible = 0) Then
  loc_E66785:   Me.FGrid.BackColorSel = CVar(CLng(global_64))
  loc_E6678D: End If
  loc_E6678D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1FAE0
  'Data Table: 4F6108
  loc_E1FAD7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1FADF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE224
  'Data Table: 4F6108
  loc_DFE21C: Call Proc_109_62_E458EC()
  loc_DFE221: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1294A78
  'Data Table: 4F6108
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
  loc_129448C: Set var_88 = Me.TopCtrl1
  loc_1294492: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12944D7: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_12944E0:   Call Form_KeyDown(Cancel, arg_10)
  loc_12944E5: End If
  loc_12944E9: Set var_88 = Me.TopCtrl1
  loc_12944EF: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1294508: If (CStr() = "Browse") Then
  loc_129450B:   Exit Sub
  loc_129450C: End If
  loc_1294529: var_C4 = Me.FGrid.Rows
  loc_1294580: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_1294596:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12945A6:   var_9C = "+{Tab}"
  loc_12945AC:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_12945B6:   Cancel = 0
  loc_12945BC: Else
  loc_12945C6:   var_B0 = Me.FGrid.Rows
  loc_1294613:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1294629:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_129463F:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_1294649:     Cancel = 0
  loc_1294683:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_1294686:       Call TopCtrl1_UnknownEvent_16()
  loc_129468B:     End If
  loc_129468B:   End If
  loc_129468B: End If
  loc_12946B7: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_12946DB: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_12946F1:   var_11C = CLng(Me.FGrid.Col)
  loc_1294701:   If (var_11C = CLng(3)) Then
  loc_1294708:     Set var_88 = Me.TopCtrl1
  loc_129470E:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_11C)
  loc_1294727:     If (CStr(Cancel) = "Add") Then
  loc_129473D:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1294745:       var_F8 = CVar(CLng(3)) 'Long
  loc_129474A:       var_12C = vbNullString
  loc_1294754:       Set var_A0 = Me.FGrid
  loc_129475A:       LateIdCallSt
  loc_129477F:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1294787:       var_F8 = CVar(CLng(2)) 'Long
  loc_129478C:       var_12C = vbNullString
  loc_1294796:       Set var_A0 = Me.FGrid
  loc_129479C:       LateIdCallSt
  loc_12947C1:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12947C9:       var_F8 = CVar(CLng(&HA)) 'Long
  loc_12947CE:       var_12C = vbNullString
  loc_12947D8:       Set var_A0 = Me.FGrid
  loc_12947DE:       LateIdCallSt
  loc_1294803:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_129480B:       var_F8 = CVar(CLng(&HE)) 'Long
  loc_1294810:       var_12C = vbNullString
  loc_129481A:       Set var_A0 = Me.FGrid
  loc_1294820:       LateIdCallSt
  loc_1294832:     End If
  loc_1294835:   Else
  loc_129483C:     If (var_11C = CLng(1)) Then
  loc_1294843:       Set var_88 = Me.TopCtrl1
  loc_1294849:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A0)
  loc_1294862:       If (CStr(var_12C) = "Add") Then
  loc_1294878:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1294890:         var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1294895:         var_12C = vbNullString
  loc_129489F:         Set var_B4 = Me.FGrid
  loc_12948A5:         LateIdCallSt
  loc_12948BD:       End If
  loc_12948C0:     Else
  loc_12948C7:       If Not (var_11C = CLng(4)) Then
  loc_12948D1:         If Not (var_11C = CLng(5)) Then
  loc_12948DB:           If Not (var_11C = CLng(6)) Then
  loc_12948E5:             If Not (var_11C = CLng(7)) Then
  loc_12948EF:               If Not (var_11C = CLng(8)) Then
  loc_12948F9:                 If Not (var_11C = CLng(9)) Then
  loc_1294903:                   If Not (var_11C = CLng(&HC)) Then
  loc_129490D:                     If (var_11C = CLng(&H10)) Then
  loc_1294910:                     End If
  loc_1294910:                   End If
  loc_1294910:                 End If
  loc_1294910:               End If
  loc_1294910:             End If
  loc_1294910:           End If
  loc_1294910:         End If
  loc_1294923:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_129493B:         var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1294940:         var_12C = vbNullString
  loc_129494A:         Set var_B4 = Me.FGrid
  loc_1294950:         LateIdCallSt
  loc_129496B:       Else
  loc_1294972:         If (var_11C = CLng(&HD)) Then
  loc_1294979:           Set var_88 = Me.TopCtrl1
  loc_129497F:           Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_B4)
  loc_1294998:           If (CStr(var_12C) = "Add") Then
  loc_12949AE:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12949B6:             var_F8 = CVar(CLng(&HF)) 'Long
  loc_12949BB:             var_12C = vbNullString
  loc_12949C5:             Set var_A0 = Me.FGrid
  loc_12949CB:             LateIdCallSt
  loc_12949F0:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12949F8:             var_F8 = CVar(CLng(&HD)) 'Long
  loc_12949FD:             var_12C = vbNullString
  loc_1294A07:             Set var_A0 = Me.FGrid
  loc_1294A0D:             LateIdCallSt
  loc_1294A32:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1294A3A:             var_F8 = CVar(CLng(&HB)) 'Long
  loc_1294A3F:             var_12C = vbNullString
  loc_1294A49:             Set var_A0 = Me.FGrid
  loc_1294A4F:             LateIdCallSt
  loc_1294A61:           End If
  loc_1294A61:         End If
  loc_1294A61:       End If
  loc_1294A61:     End If
  loc_1294A61:   End If
  loc_1294A61: End If
  loc_1294A67: If (Cancel = &HD) Then
  loc_1294A6F:   global_74 = 0
  loc_1294A72: End If
  loc_1294A74: Cancel = 0
  loc_1294A77: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0F4D0
  'Data Table: 4F6108
  loc_E0F4C1: Call FGrid_UnknownEvent_C()
  loc_E0F4CE: Exit Sub
  loc_E0F4CF: Result 0 End Sub 'Currency
End Sub

Private Sub FGrid_UnknownEvent_C '12D9FE0
  'Data Table: 4F6108
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_12D992C: Set var_88 = Me.TopCtrl1
  loc_12D9932: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12D994B: If (CStr() = "Browse") Then
  loc_12D994E:   Exit Sub
  loc_12D994F: End If
  loc_12D9962: var_A0 = CLng(Me.FGrid.Col)
  loc_12D9972: If Not (var_A0 = CLng(3)) Then
  loc_12D997C:   If Not (var_A0 = CLng(&HD)) Then
  loc_12D9986:     If (var_A0 = CLng(8)) Then
  loc_12D9989:     End If
  loc_12D9989:   End If
  loc_12D998D:   Set var_88 = Me.TopCtrl1
  loc_12D9993:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A0)
  loc_12D99AC:   If (CStr() = "Add") Then
  loc_12D99B3:     Set var_C4 = Me.FGrid
  loc_12D99D7:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_12D99E0:     var_CA = Asc(var_9C)
  loc_12D9A04:     Set var_B4 = var_C4
  loc_12D9A16:     Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0)
  loc_12D9A3E:     Set var_88 = Me.TxtGrid
  loc_12D9A44:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, 0)
  loc_12D9A4C:     var_CA = var_B4.Text
  loc_12D9A65:     If (Len(var_9C) <= 1) Then
  loc_12D9A74:       Set var_88 = Me.TxtGrid
  loc_12D9A7A:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_12D9A82:       0 = var_B4.Text
  loc_12D9A93:       Set var_B8 = Me.TxtGrid
  loc_12D9A99:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12D9AA1:       var_C4.Text = var_9C
  loc_12D9AB4:     End If
  loc_12D9AC0:     Set var_88 = Me.TxtGrid
  loc_12D9AC6:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_12D9AE0:     Set var_B8 = Me.TxtGrid
  loc_12D9AE6:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12D9AEE:     var_C4.SelStart = Len(var_B4.Text)
  loc_12D9B01:   End If
  loc_12D9B04: Else
  loc_12D9B0B:   If Not (var_A0 = CLng(4)) Then
  loc_12D9B15:     If Not (var_A0 = CLng(6)) Then
  loc_12D9B1F:       If Not (var_A0 = CLng(&HC)) Then
  loc_12D9B29:         If (var_A0 = CLng(&H10)) Then
  loc_12D9B2C:         End If
  loc_12D9B2C:       End If
  loc_12D9B2C:     End If
  loc_12D9B30:     Set var_C4 = Me.FGrid
  loc_12D9B54:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_12D9B81:     Set var_B4 = var_C4
  loc_12D9B93:     Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_12D9BBB:     Set var_88 = Me.TxtGrid
  loc_12D9BC1:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_12D9BC9:     0 = var_B4.Text
  loc_12D9BE2:     If (Len(var_9C) <= 1) Then
  loc_12D9BF1:       Set var_88 = Me.TxtGrid
  loc_12D9BF7:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_12D9BFF:       var_CA = var_B4.Text
  loc_12D9C10:       Set var_B8 = Me.TxtGrid
  loc_12D9C16:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12D9C1E:       var_C4.Text = var_9C
  loc_12D9C31:     End If
  loc_12D9C3D:     Set var_88 = Me.TxtGrid
  loc_12D9C43:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_12D9C5D:     Set var_B8 = Me.TxtGrid
  loc_12D9C63:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12D9C6B:     var_C4.SelStart = Len(var_B4.Text)
  loc_12D9C81:   Else
  loc_12D9C88:     If (var_A0 = CLng(5)) Then
  loc_12D9CC9:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_12D9CDE:     Else
  loc_12D9CE5:       If Not (var_A0 = CLng(1)) Then
  loc_12D9CEF:         If (var_A0 = CLng(9)) Then
  loc_12D9CF2:         End If
  loc_12D9CF6:         Set var_88 = Me.TopCtrl1
  loc_12D9CFC:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(0)
  loc_12D9D15:         If (CStr(Cancel) = "Add") Then
  loc_12D9D1C:           Set var_C4 = Me.FGrid
  loc_12D9D40:           var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_12D9D6D:           Set var_B4 = var_C4
  loc_12D9D7F:           Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_12D9DA7:           Set var_88 = Me.TxtGrid
  loc_12D9DAD:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_12D9DB5:           0 = var_B4.Text
  loc_12D9DCE:           If (Len(var_9C) <= 1) Then
  loc_12D9DDD:             Set var_88 = Me.TxtGrid
  loc_12D9DE3:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_12D9DEB:             var_CA = var_B4.Text
  loc_12D9DFC:             Set var_B8 = Me.TxtGrid
  loc_12D9E02:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_9C)
  loc_12D9E0A:             var_C4.Text = 0
  loc_12D9E1D:           End If
  loc_12D9E29:           Set var_88 = Me.TxtGrid
  loc_12D9E2F:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_12D9E49:           Set var_B8 = Me.TxtGrid
  loc_12D9E4F:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12D9E57:           var_C4.SelStart = Len(var_B4.Text)
  loc_12D9E6A:         End If
  loc_12D9E6D:       Else
  loc_12D9E74:         If (var_A0 = CLng(7)) Then
  loc_12D9E7B:           Set var_C4 = Me.FGrid
  loc_12D9E9F:           var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_12D9ECC:           Set var_B4 = var_C4
  loc_12D9EDE:           Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_12D9F06:           Set var_88 = Me.TxtGrid
  loc_12D9F0C:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_12D9F14:           0 = var_B4.Text
  loc_12D9F2D:           If (Len(var_9C) <= 1) Then
  loc_12D9F3C:             Set var_88 = Me.TxtGrid
  loc_12D9F42:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_12D9F4A:             var_CA = var_B4.Text
  loc_12D9F5B:             Set var_B8 = Me.TxtGrid
  loc_12D9F61:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12D9F69:             var_C4.Text = var_9C
  loc_12D9F7C:           End If
  loc_12D9F88:           Set var_88 = Me.TxtGrid
  loc_12D9F8E:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_12D9FA8:           Set var_B8 = Me.TxtGrid
  loc_12D9FAE:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12D9FB6:           var_C4.SelStart = Len(var_B4.Text)
  loc_12D9FC9:         End If
  loc_12D9FC9:       End If
  loc_12D9FC9:     End If
  loc_12D9FC9:   End If
  loc_12D9FC9: End If
  loc_12D9FD3: If (CLng(Cancel) <> &HD) Then
  loc_12D9FDB:   global_74 = &HFF
  loc_12D9FDE: End If
  loc_12D9FDE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '104B820
  'Data Table: 4F6108
  Dim var_94 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_11C As MSHFlexGrid
  loc_104B5CC: Set var_94 = Me.TopCtrl1
  loc_104B5D2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104B5EB: If (CStr() = "Browse") Then
  loc_104B5EE:   Exit Sub
  loc_104B5EF: End If
  loc_104B5F3: Set var_94 = Me.TopCtrl1
  loc_104B5F9: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104B612: If (CStr() = "Edit") Then
  loc_104B615:   Exit Sub
  loc_104B616: End If
  loc_104B633: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_104B636:   Exit Sub
  loc_104B637: End If
  loc_104B648: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_104B66A:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_104B6A4:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_104B6C6:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_104B6DC:         var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104B6E4:         var_E8 = CVar(CLng(1)) 'Long
  loc_104B737:         Set var_11C = Me.FGrid
  loc_104B74F:         Call Proc_109_59_E7FC00(FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)), CInt(Val(CStr(Me.FGrid.TextMatrix)))))
  loc_104B757:       Else
  loc_104B76A:         Me.FGrid.Rows = 1
  loc_104B790:         var_A4 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(1)))) 'String
  loc_104B798:         Set var_11C = Me.FGrid
  loc_104B7C5:         Me.FGrid.FixedRows = 1
  loc_104B7CD:       End If
  loc_104B7CD:     End If
  loc_104B7D0:   Else
  loc_104B7F1:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F8, var_118)
  loc_104B801:   End If
  loc_104B805:   Set var_94 = Me.FGrid
  loc_104B816: End If
  loc_104B81B: Set var_8C = Nothing
  loc_104B81E: Exit Sub
  loc_104B81F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1F950
  'Data Table: 4F6108
  loc_E1F947: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1F94F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1FA40
  'Data Table: 4F6108
  loc_E1FA37: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1FA3F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E45E68
  'Data Table: 4F6108
  Dim var_8C As TextBox
  loc_E45E3C: Call Proc_109_67_EBB594()
  loc_E45E4C: Set var_88 = Me.TxtGrid
  loc_E45E52: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E45E5A: var_8C.Visible = False
  loc_E45E66: Exit Sub
End Sub

Private Sub cmdCancel_Click() 'E68DD4
  'Data Table: 4F6108
  loc_E68D8D: Me.txtPassword.Text = vbNullString
  loc_E68DA1: Me.FrPwd.Visible = False
  loc_E68DB5: Me.CmdCancel.Visible = False
  loc_E68DC9: Me.CmdChange.Visible = False
  loc_E68DD1: Exit Sub
  loc_E68DD2: CExtInstUnk
End Sub

Private Sub Form_Load() '11C0968
  'Data Table: 4F6108
  Dim var_88 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_C0 As String
  loc_11C0504: On Error Goto loc_11C0962
  loc_11C0516: Me.LblUser.Left = CDbl(13500)
  loc_11C052D: Me.LblUser.Top = CDbl(7800)
  loc_11C0544: Me.LblLDt.Top = CDbl(8160)
  loc_11C055B: Me.LblLDt.Left = CDbl(13500)
  loc_11C056A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_11C057D: Me.FrPwd.BackColor = CLng(MemVar_1F921B0)
  loc_11C058F: Set var_88 = Me.TopCtrl1
  loc_11C0595: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_11C05A3: Call 0.Method_arg_50 (var_AC)
  loc_11C05B3: Set var_88 = Me.TopCtrl1
  loc_11C05B9: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_11C05D0: Me.CmdPwd.Enabled = False
  loc_11C05E3: If (global_60 = "Banquet") Then
  loc_11C05F0:   Set global_80 = New 
  loc_11C0602:   Me.Recordset15.CursorLocation = 3
  loc_11C0625:   var_AC = "Select 'B'+ShortName as Code,Name,Code as DCOde,RestType From Depart Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_11C0636:   Me.Open CVar(var_AC & "' or LOGSITE_CODE='HO') and RestType='Banquet' and OutletYn='Y' Order by Name"), CVar(MemVar_1F92044), 3
  loc_11C064A:   CVarUnk
  loc_11C064F:   VerifyVarObj
  loc_11C0655:   Set var_88 = Me.DGVType
  loc_11C065B:   LateIdStAd
  loc_11C066C: Else
  loc_11C0676:   Set global_80 = New 
  loc_11C0688:   Me.CursorLocation = 3
  loc_11C06AB:   var_AC = "Select VT.V_Type as Code,VT.V_Type,D.Name,D.Code as DCOde,D.RestType From Depart D Inner Join Voucher_Type VT On D.Code=VT.RestCode And D.Site_Code=VT.Site_Code And D.LogSite_Code=VT.LogSite_Code And VT.Category='RSBILL' Where (D.LOGSITE_CODE='" & MemVar_1F92078
  loc_11C06B2:   var_BC = CVar(var_AC & "' or D.LOGSITE_CODE='HO') and D.RestType<>'Banquet' and D.OutletYn='Y' And VT.NCAT<>'ESBIL' Order by D.Name,VT.V_Type") 'String
  loc_11C06BC:   Me.Open var_BC, CVar(MemVar_1F92044), 3
  loc_11C06D0:   CVarUnk
  loc_11C06D5:   VerifyVarObj
  loc_11C06DB:   Set var_88 = Me.DGVType
  loc_11C06E1:   LateIdStAd
  loc_11C06EF: End If
  loc_11C06F9: Set global_84 = New 
  loc_11C070B: Me.DGVType.CursorLocation = 3
  loc_11C0735: var_BC = CVar("Select Code,Name,Nature,SysYN From SundryMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_11C073F: Me.Open var_BC, CVar(MemVar_1F92044), 3
  loc_11C0753: CVarUnk
  loc_11C0758: VerifyVarObj
  loc_11C075E: Set var_88 = Me.DGSundry
  loc_11C0764: LateIdStAd
  loc_11C077C: Set global_88 = New 
  loc_11C078E: Me.DGSundry.CursorLocation = 3
  loc_11C07B8: var_BC = CVar("Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (FlagType ='POS' or FlagType  Is Null) and FlagAMR is NULL Order By Name") 'String
  loc_11C07C2: Me.Open var_BC, CVar(MemVar_1F92044), 3
  loc_11C07D6: CVarUnk
  loc_11C07DB: VerifyVarObj
  loc_11C07E1: Set var_88 = Me.DGRevenue
  loc_11C07E7: LateIdStAd
  loc_11C07FF: Set global_76 = New 
  loc_11C0811: Me.DGRevenue.CursorLocation = 3
  loc_11C0821: If (global_60 = "Banquet") Then
  loc_11C0842:   var_AC = "Select DISTINCT (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From SundryType SP Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_11C0849:   var_BC = CVar("Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  and V_Type in (Select 'B'+ShortName From Depart Where OutletYN='Y' and RestType='Banquet') Order By (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))") 'String
  loc_11C0853:   Me.Open var_BC, CVar(MemVar_1F92044), 3
  loc_11C0861: Else
  loc_11C087F:   var_AC = "Select DISTINCT (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,SITECODE AS sITE_cODE,LOGSITE_CODE From SundryType SP Where SP.Logsite_Code='" & MemVar_1F92078
  loc_11C0886:   var_C0 = "Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' and V_Type In (Select VT.V_Type From Depart D Inner Join Voucher_Type VT On D.Code=VT.RestCode And D.Site_Code=VT.Site_Code And D.LogSite_Code=VT.LogSite_Code And VT.Category='RSBILL' Where (D.LOGSITE_CODE='"
  loc_11C0894:   var_BC = CVar(var_C0 & MemVar_1F92078 & "' or D.LOGSITE_CODE='HO') and D.RestType<>'Banquet' and D.OutletYn='Y' And VT.NCAT<>'ESBIL') Order By (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))") 'String
  loc_11C089E:   Me.Open var_BC, CVar(MemVar_1F92044), 3
  loc_11C08AF: End If
  loc_11C08D2: Call Proc_109_66_EB88F4(Proc_5_1_100CB50("INI", Me, global_76, 1, -1, 1, -1, Me), global_88, 1, -1)
  loc_11C08E6: Set var_88 = Me.TopCtrl1
  loc_11C08EC: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_11C08FD: Set var_88 = Me.TopCtrl1
  loc_11C0903: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_11C091A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_11C0922: Call Proc_109_58_12F61F4(Me.TopCtrl1, global_84)
  loc_11C0927: Call Proc_109_65_14903AC(1)
  loc_11C093E: Me.FGrid.Left = CVar(CDbl(&H64))
  loc_11C0959: Me.FGrid.Top = CVar(CDbl(1450))
  loc_11C0961: Exit Sub
  loc_11C0962: ' Referenced from: 11C0504
  loc_11C0962: Proc_6_60_E62BC4(-1)
  loc_11C0967: Exit Sub
End Sub

Private Sub Form_Resize() 'E0AA58
  'Data Table: 4F6108
  loc_E0AA4F: If (global_60 = "Banquet") Then
  loc_E0AA52:   GoTo loc_E0AA55
  loc_E0AA55:   ' Referenced from: E0AA52
  loc_E0AA55: End If
  loc_E0AA55: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E68334
  'Data Table: 4F6108
  loc_E682EB: Set global_80 = Nothing
  loc_E682FD: Set global_76 = Nothing
  loc_E6830F: Set global_84 = Nothing
  loc_E68321: Set global_88 = Nothing
  loc_E6832D: MasterFormExit = 0
  loc_E68330: Exit Sub
End Sub

Private Sub Form_Activate() 'E4CE88
  'Data Table: 4F6108
  loc_E4CE58: On Error Goto loc_E4CE82
  loc_E4CE5F: Set var_88 = Me.TopCtrl1
  loc_E4CE65: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4CE7A: If (CLng(CInt()) = &H2D) Then
  loc_E4CE7D:   Call TopCtrl1_UnknownEvent_15()
  loc_E4CE82:   ' Referenced from: E4CE58
  loc_E4CE82: End If
  loc_E4CE82: Proc_6_60_E62BC4()
  loc_E4CE87: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25C24
  'Data Table: 4F6108
  loc_E25C09: If (MasterFormExit = &HFF) Then
  loc_E25C19:   Me.Global.Unload Me
  loc_E25C21: End If
  loc_E25C21: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27724
  'Data Table: 4F6108
  loc_E276FC: On Error Goto loc_E2771C
  loc_E27713: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2771B: Exit Sub
  loc_E2771C: ' Referenced from: E276FC
  loc_E2771C: Proc_6_60_E62BC4(Shift)
  loc_E27721: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E7F6FC
  'Data Table: 4F6108
  Dim var_94 As TextBox
  loc_E7F698: On Error Goto loc_E7F6F4
  loc_E7F6BE: Call Proc_109_66_EB88F4(Proc_5_1_100CB50("ADD", Me))
  loc_E7F6C9: Call Proc_109_64_F66A28(global_76)
  loc_E7F6D9: Set var_8C = Me.Txt
  loc_E7F6DF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_E7F6E7: var_94.SetFocus
  loc_E7F6F3: Exit Sub
  loc_E7F6F4: ' Referenced from: E7F698
  loc_E7F6F4: Proc_6_60_E62BC4(var_94)
  loc_E7F6F9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EE9E88
  'Data Table: 4F6108
  loc_EE9DCC: On Error Goto loc_EE9E80
  loc_EE9E06: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EE9E2C:   Call Proc_109_66_EB88F4(Proc_5_1_100CB50("INI", Me))
  loc_EE9E3F:   Set var_10C = Me.TopCtrl1
  loc_EE9E45:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_EE9E55:   Set var_10C = Me.TopCtrl1
  loc_EE9E5B:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030016(True)
  loc_EE9E6C:   Set var_10C = Me.TopCtrl1
  loc_EE9E72:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_EE9E7A:   Call Proc_109_65_14903AC(global_76)
  loc_EE9E7F: End If
  loc_EE9E7F: Exit Sub
  loc_EE9E80: ' Referenced from: EE9DCC
  loc_EE9E80: Proc_6_60_E62BC4()
  loc_EE9E85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EB83E0
  'Data Table: 4F6108
  Dim var_94 As TextBox
  Dim var_8C As CommandButton
  loc_EB8344: On Error Goto loc_EB83D8
  loc_EB836A: Call Proc_109_66_EB88F4(Proc_5_1_100CB50("EDIT", Me))
  loc_EB8382: Set var_8C = Me.Txt
  loc_EB8388: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EB8390: var_94.Enabled = False
  loc_EB83A9: Set var_8C = Me.Txt
  loc_EB83AF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_EB83B7: var_94.Enabled = False
  loc_EB83CF: Me.CmdPaste.Enabled = False
  loc_EB83D7: Exit Sub
  loc_EB83D8: ' Referenced from: EB8344
  loc_EB83D8: Proc_6_60_E62BC4(global_76)
  loc_EB83DD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17CCC
  'Data Table: 4F6108
  loc_E17CC1: Me.Global.Unload Me
  loc_E17CC9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC91E8
  'Data Table: 4F6108
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EC9148: On Error Goto loc_EC91E0
  loc_EC9162: If (Me.RecordCount <= 0) Then
  loc_EC916B:   var_B8 = "Information"
  loc_EC9186:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC9196:   Exit Sub
  loc_EC9197: End If
  loc_EC919E: var_10C = "Select Distinct (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))  AS SearchCode,VT.Description,SP.V_Type,Convert(Varchar(11),SP.AppDate,103) As [App.Date] From (((SundryType SP Inner Join Voucher_type VT On SP.V_Type=VT.V_Type) Inner Join SundryMast SM On SP.SundryCode=SM.Code) Inner Join RevMast RM On SP.RevCode=RM.Code) WHERE (SP.LOGSITE_CODE='" & MemVar_1F92078
  loc_EC91A5: MemVar_1F920E4 = var_10C & "' or SP.LOGSITE_CODE='HO') and SP.V_Type in (Select 'B'+ShortName From Depart Where OutletYN='Y' and RestType<>'Banquet') Order by VT.Description,SP.V_Type,[App.Date] Desc"
  loc_EC91B2: MemVar_1F92120 = Me
  loc_EC91BF: Proc_6_126_F1BCC0("2000,1000,1500")
  loc_EC91DA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC91DF: Exit Sub
  loc_EC91E0: ' Referenced from: EC9148
  loc_EC91E0: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC91E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E37D58
  'Data Table: 4F6108
  Dim MemVar_0 As Currency
  loc_E37D48: Proc_5_0_110649C(&HFF, Me)
  loc_E37D50: Call Proc_109_65_14903AC(global_76)
  loc_E37D55: Exit Sub
  loc_E37D56: MemVar_0 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E37C98
  'Data Table: 4F6108
  loc_E37C88: Proc_5_0_110649C(&HFF, Me)
  loc_E37C90: Call Proc_109_65_14903AC(global_76)
  loc_E37C95: Exit Sub
  loc_E37C96: Set var_7000 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E37B78
  'Data Table: 4F6108
  Dim MemVar_0 As Currency
  loc_E37B68: Proc_5_0_110649C(&HFF, Me)
  loc_E37B70: Call Proc_109_65_14903AC(global_76)
  loc_E37B75: Exit Sub
  loc_E37B76: MemVar_0 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E37AB8
  'Data Table: 4F6108
  loc_E37AA8: Proc_5_0_110649C(&HFF, Me)
  loc_E37AB0: Call Proc_109_65_14903AC(global_76)
  loc_E37AB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E45C7C
  'Data Table: 4F6108
  Dim Me As Recordset15
  loc_E45C53: Me.Requery -1
  loc_E45C63: Me.Requery -1
  loc_E45C73: Me.Requery -1
  loc_E45C78: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '163F274
  'Data Table: 4F6108
  Dim var_9C As Variant
  Dim var_8A As Variant
  Dim var_90 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_130 As Variant
  Dim unk_4F611F As Connection15
  Dim var_94 As Variant
  Dim var_170 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_1F4 As MSHFlexGrid
  Dim var_160 As Variant
  Dim var_1A8 As Variant
  Dim var_1F8 As MSHFlexGrid
  Dim var_25C As Variant
  Dim var_27C As Variant
  Dim var_310 As Variant
  Dim var_330 As Variant
  Dim var_3A4 As Variant
  Dim var_3C4 As Variant
  Dim var_3F8 As Variant
  Dim var_448 As Variant
  Dim var_468 As Variant
  Dim var_49C As Variant
  Dim var_4EC As Variant
  Dim var_50C As Variant
  Dim var_530 As Variant
  Dim var_584 As Variant
  Dim var_5A4 As Variant
  Dim var_5B8 As MSHFlexGrid
  Dim var_63C As Variant
  Dim var_65C As Variant
  Dim var_680 As Variant
  Dim var_6D0 As Variant
  Dim var_6F0 As Variant
  Dim var_704 As MSHFlexGrid
  Dim var_714 As Variant
  Dim var_798 As Variant
  Dim var_7A8 As Variant
  Dim var_82C As MSHFlexGrid
  Dim var_83C As Variant
  Dim var_8C0 As MSHFlexGrid
  Dim var_8D0 As Variant
  Dim var_990 As Variant
  Dim var_9E8 As String
  Dim var_A88 As Variant
  Dim var_AA8 As Variant
  Dim var_1DC As String
  Dim var_1E8 As String
  Dim var_110 As Variant
  Dim var_190 As Variant
  Dim var_1C8 As Variant
  Dim var_21C As Variant
  Dim var_22C As Variant
  Dim var_2C0 As Variant
  Dim var_418 As Variant
  Dim var_4CC As Variant
  Dim var_5EC As Variant
  Dim var_724 As Variant
  Dim var_85C As Variant
  Dim var_930 As Variant
  Dim var_980 As Variant
  Dim var_B5C As Variant
  Dim var_98 As MSHFlexGrid
  Dim var_26C As Variant
  Dim var_28C As Variant
  Dim var_1F0 As Variant
  Dim var_3B4 As Variant
  Dim var_3D4 As Variant
  Dim var_408 As Variant
  Dim var_808 As Variant
  Dim var_8BC As Variant
  Dim var_9D4 As MSHFlexGrid
  Dim var_1E4 As String
  Dim var_9A0 As Variant
  Dim var_9E4 As Variant
  Dim var_BE0 As String
  Dim Me As Recordset15
  loc_163DE24: On Error Goto loc_163F222
  loc_163DE2B: var_86 = CByte(0) 'Byte
  loc_163DE32: Call Proc_109_70_E7DF40(var_8C)
  loc_163DE3D: If (var_8C = 0) Then
  loc_163DE40:   Exit Sub
  loc_163DE41: End If
  loc_163DE4C: Set var_90 = Me.Txt
  loc_163DE52: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_163DE7B: If (Proc_6_27_EA565C(var_94, "Voucher Type") = 0) Then
  loc_163DE85:   Call Txt_GotFocus(CInt(0))
  loc_163DE8A:   Exit Sub
  loc_163DE8B: End If
  loc_163DE96: Set var_90 = Me.Txt
  loc_163DE9C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_163DEC5: If (Proc_6_27_EA565C(var_94, "App. Date") = 0) Then
  loc_163DECF:   Call Txt_GotFocus(CInt(1))
  loc_163DED4:   Exit Sub
  loc_163DED5: End If
  loc_163DED9: Set var_90 = Me.TopCtrl1
  loc_163DEDF: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_163DEF8: If (CStr() = "Add") Then
  loc_163DEFE:   Call Proc_109_60_FC8C00(var_8C)
  loc_163DF09:   If (var_8C = &HFF) Then
  loc_163DF0C:     Exit Sub
  loc_163DF0D:   End If
  loc_163DF0D: End If
  loc_163DF37: For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B0 'Integer
  loc_163DF41:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_163DF49:   var_E0 = CVar(CLng(1)) 'Long
  loc_163DF85:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_163DF8C:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_163DF94:     var_E0 = CVar(CLng(1)) 'Long
  loc_163DFD1:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> CVar(1)) Then
  loc_163DFD8:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_163DFE0:       var_E0 = CVar(CLng(1)) 'Long
  loc_163E023:       var_130 = "Arrange S.No. and Cal. Formulas" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_163E027:       MsgBox(var_130, &H40, "Information", var_170, var_190)
  loc_163E044:       Set var_90 = Me.FGrid
  loc_163E055:       Exit Sub
  loc_163E056:     End If
  loc_163E05C:     var_8A = (var_8A + 1)
  loc_163E05F:   End If
  loc_163E08A:   If ((var_88 > 1) And (CLng(var_88) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_163E091:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_163E099:     var_E0 = CVar(CLng(&HF)) 'Long
  loc_163E0B3:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_163E0B9:     var_110 = Trim(var_100)
  loc_163E0D5:     If (var_110 = vbNullString) Then
  loc_163E0F1:       MsgBox("Define revenue ", &H40, var_100, var_110, var_130)
  loc_163E101:       Exit Sub
  loc_163E102:     End If
  loc_163E102:   End If
  loc_163E106:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_163E10E:   var_E0 = CVar(CLng(3)) 'Long
  loc_163E14A:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_163E151:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_163E159:     var_E0 = CVar(CLng(1)) 'Long
  loc_163E195:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_163E19C:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_163E1A4:       var_E0 = CVar(CLng(3)) 'Long
  loc_163E1EB:       MsgBox("Fill S.NO For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_163E208:       Set var_90 = Me.FGrid
  loc_163E219:       Exit Sub
  loc_163E21A:     End If
  loc_163E21E:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_163E226:     var_E0 = CVar(CLng(4)) 'Long
  loc_163E262:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_163E269:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_163E271:       var_E0 = CVar(CLng(3)) 'Long
  loc_163E2B8:       MsgBox("Fill Disp. Name For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_163E2D5:       Set var_90 = Me.FGrid
  loc_163E2E6:       Exit Sub
  loc_163E2E7:     End If
  loc_163E2EB:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_163E2F3:     var_E0 = CVar(CLng(6)) 'Long
  loc_163E32F:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_163E336:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_163E33E:       var_E0 = CVar(CLng(3)) 'Long
  loc_163E385:       MsgBox("Fill Per/Amt For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_163E3A2:       Set var_90 = Me.FGrid
  loc_163E3B3:       Exit Sub
  loc_163E3B4:     End If
  loc_163E3B4:   End If
  loc_163E3B7: Next var_B0 'Integer
  loc_163E3C5: unk_4F611F.BeginTrans var_194
  loc_163E3CE: var_86 = CByte(1) 'Byte
  loc_163E3F7: For var_198 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_198 'Integer
  loc_163E401:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_163E409:   var_E0 = CVar(CLng(2)) 'Long
  loc_163E429:   var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_163E431:   var_120 = vbNullString
  loc_163E43F:   var_140 = CVar(CLng(var_88)) 'Long
  loc_163E450:   Set var_94 = Me.FGrid
  loc_163E495:   If CBool(CVar(CLng(1)) And (Trim(CVar(CStr(var_94.TextMatrix)))) <> vbNullString)) Then
  loc_163E49C:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_163E4A4:     var_E0 = CVar(CLng(&HB)) 'Long
  loc_163E4BE:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_163E4C4:     var_110 = Trim(var_100)
  loc_163E4E0:     If (var_110 = vbNullString) Then
  loc_163E4E7:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_163E4EF:       var_E0 = CVar(CLng(&HB)) 'Long
  loc_163E4F4:       var_120 = "+"
  loc_163E4FE:       Set var_90 = Me.FGrid
  loc_163E504:       LateIdCallSt
  loc_163E50F:     End If
  loc_163E519:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(Me.TopCtrl1)
  loc_163E532:     If (CStr(vbNullString) = "Add") Then
  loc_163E543:       Set var_90 = Me.Txt
  loc_163E549:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_1E4, var_E0, var_C0, var_E0)
  loc_163E551:       var_C0 = var_94.Tag
  loc_163E561:       Set var_98 = Me.Txt
  loc_163E567:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1F0, var_140, (var_110 <> vbNullString))
  loc_163E56F:       var_AC = CVar(var_1F0) 'Address
  loc_163E576:       Proc_6_7_F25D88(var_100, var_AC, var_E0)
  loc_163E57F:       var_D0 = CVar(CLng(var_88)) 'Long
  loc_163E587:       var_F0 = CVar(CLng(2)) 'Long
  loc_163E5A6:       var_160 = CVar(CLng(var_88)) 'Long
  loc_163E5AE:       var_1A8 = CVar(CLng(1)) 'Long
  loc_163E5D7:       var_25C = CVar(CLng(var_88)) 'Long
  loc_163E5DF:       var_27C = CVar(CLng(4)) 'Long
  loc_163E5FE:       var_310 = CVar(CLng(var_88)) 'Long
  loc_163E606:       var_330 = CVar(CLng(5)) 'Long
  loc_163E625:       var_3A4 = CVar(CLng(var_88)) 'Long
  loc_163E62D:       var_3C4 = CVar(CLng(6)) 'Long
  loc_163E660:       var_448 = CVar(CLng(var_88)) 'Long
  loc_163E668:       var_468 = CVar(CLng(8)) 'Long
  loc_163E69B:       var_4EC = CVar(CLng(var_88)) 'Long
  loc_163E6A3:       var_50C = CVar(CLng(7)) 'Long
  loc_163E6CC:       var_584 = CVar(CLng(var_88)) 'Long
  loc_163E6D4:       var_5A4 = CVar(CLng(9)) 'Long
  loc_163E6FD:       var_63C = CVar(CLng(var_88)) 'Long
  loc_163E705:       var_65C = CVar(CLng(&HF)) 'Long
  loc_163E724:       var_6D0 = CVar(CLng(var_88)) 'Long
  loc_163E72C:       var_6F0 = CVar(CLng(&HA)) 'Long
  loc_163E73B:       var_714 = Me.FGrid.TextMatrix)
  loc_163E75C:       Set var_798 = Me.FGrid
  loc_163E762:       var_7A8 = var_798.TextMatrix)
  loc_163E789:       var_83C = Me.FGrid.TextMatrix)
  loc_163E7AA:       Set var_8C0 = Me.FGrid
  loc_163E7B0:       var_8D0 = var_8C0.TextMatrix)
  loc_163E7D5:       var_990 = CVar(Proc_6_14_EF349C(var_8D0, CVar(CLng(&HC)), CVar(CLng(var_88)), var_83C, CVar(CLng(&HE)), CVar(CLng(var_88)), var_7A8)) 'String
  loc_163E7DB:       Proc_6_8_EB0DE4(var_9A0, var_990, CVar(CLng(&HB)), CVar(CLng(var_88)))
  loc_163E7E4:       Set var_9D4 = Me.TopCtrl1
  loc_163E7EA:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_714)
  loc_163E80D:       var_9E8 = CStr(var_9E4)
  loc_163E81C:       var_A48 = IIf((var_9E8 = "Add"), "A", "E")
  loc_163E825:       var_A88 = CVar(CLng(var_88)) 'Long
  loc_163E82D:       var_AA8 = CVar(CLng(&H10)) 'Long
  loc_163E870:       var_9C = "Insert Into SundryType (V_Type,AppDate,SundryCode,SNo,DispName," & "CalcFormula,PerOrAmt,RoundOff,SValue,Limit,"
  loc_163E885:       var_1E8 = var_9C & "RevCode,Nature,CalcSign,SysYN,Grp," & "U_Name,U_EntDt,U_AE,AutoManual,SiteCode,LogSite_Code) " & " Values ('"
  loc_163E8C1:       var_22C = CVar(var_1E8 & var_1E4 & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_163E902:       var_418 = var_22C & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) 
  loc_163E93A:       var_5EC = var_418 & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_163E968:       var_724 = CVar(CStr(var_714)) 'String
  loc_163E993:       var_85C = var_5EC & "," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & var_724 & "','" & CVar(CStr(var_7A8)) & "','" & CVar(CStr(var_83C)) 
  loc_163E9C8:       var_980 = var_85C & "','" & Left(CVar(CStr(var_8D0)), 1) & "'," & "'" & CVar(MemVar_1F920C8) & "'," 
  loc_163EA0B:       var_B5C = var_980 & var_9A0 & ",'" & var_A48 & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "','" & CVar(MemVar_1F92070) & "','" 
  loc_163EA2C:       unk_4F611F.Execute CStr(var_B5C & CVar(MemVar_1F92078) & "')"), var_BC0, -1
  loc_163EB1F:     Else
  loc_163EB23:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_163EB2B:       var_E0 = CVar(CLng(4)) 'Long
  loc_163EB34:       Set var_90 = Me.FGrid
  loc_163EB4A:       var_120 = CVar(CLng(var_88)) 'Long
  loc_163EB52:       var_160 = CVar(CLng(5)) 'Long
  loc_163EB5B:       Set var_94 = Me.FGrid
  loc_163EB71:       var_1A8 = CVar(CLng(var_88)) 'Long
  loc_163EB79:       var_21C = CVar(CLng(6)) 'Long
  loc_163EB82:       Set var_98 = Me.FGrid
  loc_163EBAC:       var_26C = CVar(CLng(var_88)) 'Long
  loc_163EBB4:       var_28C = CVar(CLng(8)) 'Long
  loc_163EBBD:       Set var_1F0 = Me.FGrid
  loc_163EBE7:       var_310 = CVar(CLng(var_88)) 'Long
  loc_163EBEF:       var_330 = CVar(CLng(7)) 'Long
  loc_163EC18:       var_3B4 = CVar(CLng(var_88)) 'Long
  loc_163EC20:       var_3D4 = CVar(CLng(9)) 'Long
  loc_163EC29:       Set var_1F8 = Me.FGrid
  loc_163EC49:       var_468 = CVar(CLng(var_88)) 'Long
  loc_163EC51:       var_4CC = CVar(CLng(&HF)) 'Long
  loc_163EC70:       var_50C = CVar(CLng(var_88)) 'Long
  loc_163EC87:       var_408 = Me.FGrid.TextMatrix)
  loc_163ECAE:       var_49C = Me.FGrid.TextMatrix)
  loc_163ECD5:       var_530 = Me.FGrid.TextMatrix)
  loc_163ECFC:       var_5EC = Me.FGrid.TextMatrix)
  loc_163ED21:       var_714 = CVar(Proc_6_14_EF349C(var_5EC, CVar(CLng(&HC)), CVar(CLng(var_88)), var_530, CVar(CLng(&HE)), CVar(CLng(var_88)), var_49C)) 'String
  loc_163ED27:       Proc_6_8_EB0DE4(var_724, var_714, CVar(CLng(&HB)), CVar(CLng(var_88)))
  loc_163ED30:       Set var_5B8 = Me.TopCtrl1
  loc_163ED36:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_408)
  loc_163ED71:       var_808 = CVar(CLng(var_88)) 'Long
  loc_163ED88:       var_85C = Me.FGrid.TextMatrix)
  loc_163EDB6:       Set var_704 = Me.Txt
  loc_163EDBC:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_798, var_9E8, var_85C, CVar(CLng(&H10)))
  loc_163EDC4:       var_808 = var_798.Tag
  loc_163EDD4:       Set var_82C = Me.Txt
  loc_163EDDA:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_8C0, CVar(CLng(&HA)))
  loc_163EDE9:       Proc_6_7_F25D88(var_980, CVar(var_8C0))
  loc_163EDF2:       var_8BC = CVar(CLng(var_88)) 'Long
  loc_163EDFA:       var_930 = CVar(CLng(1)) 'Long
  loc_163EE33:       var_9C = "Update SundryType " & " Set DispName='"
  loc_163EE3A:       var_1DC = CStr(var_90.TextMatrix))
  loc_163EE5D:       var_190 = CVar(var_9C & var_1DC & "',CalcFormula='" & CStr(var_94.TextMatrix)) & "',PerOrAmt='") & Left(CVar(CStr(var_98.TextMatrix))), 1) 
  loc_163EE81:       var_2C0 = var_190 & "',RoundOff='" & Left(CVar(CStr(var_1F0.TextMatrix))), 1) & "',SValue=" & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_163EEB2:       var_3F8 = var_2C0 & ",Limit=" & CVar(Val(CStr(var_1F8.TextMatrix)))) & ",RevCode='" & CVar(CStr(Me.FGrid.TextMatrix))) & "',Nature='" 
  loc_163EEF5:       var_680 = var_3F8 & CVar(CStr(var_408)) & "',CalcSign='" & CVar(CStr(var_49C)) & "',SysYN='" & CVar(CStr(var_530)) & "',Grp='" & Left(CVar(CStr(var_5EC)), 1) 
  loc_163EF28:       var_83C = var_680 & "',U_Name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_724 & ",U_AE='" & IIf((CStr(var_7A8) = "Add"), "A", "E") 
  loc_163EF5B:       var_990 = var_83C & "',AutoManual='" & Left(CVar(CStr(var_85C)), 1) & "' Where V_Type='" & CVar(var_9E8) & "' And AppDate=" & var_980 
  loc_163EF8F:       var_BE0 = CStr(var_990 & " And SNo=" & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & " And LogSite_Code='" & CVar(MemVar_1F92078) & "'")
  loc_163EF99:       unk_4F611F.Execute var_BE0, var_A48, -1
  loc_163F06F:     End If
  loc_163F06F:   End If
  loc_163F072: Next var_198 'Integer
  loc_163F07D: unk_4F611F.CommitTrans
  loc_163F086: var_86 = CByte(0) 'Byte
  loc_163F095: Set var_1F4 = Me.Txt
  loc_163F09B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_163F0AE: Set var_90 = Me.Txt
  loc_163F0B4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94)
  loc_163F0C4: var_100 = CVar(var_94.Tag) 'String
  loc_163F0DA: Set var_98 = Me.Txt
  loc_163F0E0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1F0, var_1DC)
  loc_163F0E8: 6 = var_1F0.Tag
  loc_163F0F5: var_AC = Space((var_100 - Len(var_1DC)))
  loc_163F0FD: var_110 = (var_1F8 + var_90.TextMatrix))
  loc_163F101: var_C0 = "**"
  loc_163F106: var_130 = (var_98.TextMatrix) + var_C0)
  loc_163F131: var_1C8 = (1 + Format(CVar(var_1F8), "dd/mm/yyyy"))
  loc_163F172: Me.Requery -1
  loc_163F19F: Me.Find "SearchCode ='" & CStr(Format(CVar(var_1F8), "dd/mm/yyyy") & "',RoundOff='") & "'", 0, 1
  loc_163F1AF: Set var_90 = Me.TopCtrl1
  loc_163F1B5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_163F1CE: If (CStr(1) = "Add") Then
  loc_163F1D1:   Call TopCtrl1_UnknownEvent_A()
  loc_163F1D6:   Exit Sub
  loc_163F1D7: End If
  loc_163F1EC: var_9C = "INI"
  loc_163F1FA: Call Proc_109_66_EB88F4(Proc_5_1_100CB50(var_9C, Me), global_76)
  loc_163F20E: Set var_90 = Me.TopCtrl1
  loc_163F214: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_163F21C: Call Proc_109_65_14903AC(CVar(CStr(var_98.TextMatrix))))
  loc_163F221: Exit Sub
  loc_163F222: ' Referenced from: 163DE24
  loc_163F22B: If (CInt(var_86) = 1) Then
  loc_163F234:   unk_4F611F.RollbackTrans
  loc_163F239: End If
  loc_163F241: Set var_90 = Err()
  loc_163F247: Call 0.Method_arg_2C (var_9C)
  loc_163F260: MsgBox(CVar(var_9C), &H10, var_100, var_98.TextMatrix), CVar(CStr(var_98.TextMatrix))))
  loc_163F273: Exit Sub
End Sub

Private Sub txtPassword_KeyDown(KeyCode As Integer, Shift As Integer) 'E59DE8
  'Data Table: 4F6108
  loc_E59DB5: If ((CLng(KeyCode) = &H28) Or (CLng(KeyCode) = &HD)) Then
  loc_E59DBE:   Proc_6_75_E527CC(KeyCode)
  loc_E59DC3: End If
  loc_E59DD8: If ((CLng(KeyCode) = &H26) Or (CLng(KeyCode) = &HD)) Then
  loc_E59DE1:   Proc_6_76_E52838(KeyCode, Shift)
  loc_E59DE6: End If
  loc_E59DE6: Exit Sub
End Sub

Private Sub txtPassword_Validate(Cancel As Boolean) 'FCC9B8
  'Data Table: 4F6108
  Dim unk_4F611F As Connection15
  Dim var_B0 As Variant
  Dim var_B4 As Variant
  Dim var_128 As Variant
  loc_FCC854: unk_4F611F.Execute "Select SundryPassword from Enviro where LogSite_Code='" & MemVar_1F92078 & "'", var_B0, -1
  loc_FCC8AE: var_B4 = var_B4.Fields
  loc_FCC8D0: var_128 = CVar(Proc_96_19_EF5154(Proc_6_38_E68A98(CVar(var_B4.Item("SundryPassword")), Trim(CVar(Me.txtPassword))), (Trim(CVar(Me.txtPassword)) = "india"))) 'String
  loc_FCC918: If CBool( Or (var_B4 = var_128) And (Trim(CVar(Me.txtPassword)) <> vbNullString)) Then
  loc_FCC927:   Me.CmdPwd.Enabled = True
  loc_FCC937:   Set var_B4 = Me.TopCtrl1
  loc_FCC93D:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_FCC94D:   Set var_B4 = Me.TopCtrl1
  loc_FCC953:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030016(True)
  loc_FCC95E: Else
  loc_FCC96B:   Me.txtPassword.Text = vbNullString
  loc_FCC97C:   Set var_B4 = Me.TopCtrl1
  loc_FCC982:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_FCC993:   Set var_B4 = Me.TopCtrl1
  loc_FCC999:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_FCC9AD:   Me.CmdPwd.Enabled = False
  loc_FCC9B5: End If
  loc_FCC9B5: Exit Sub
End Sub

Public Function MasterFormExitGet() '4F7484
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4F7493
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '4F74A2
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '4F74B1
  SearchCode = Value
End Sub

Public Function global_60Get() '4F74C0
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4F74CF
  global_60 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E96E50
  'Data Table: 4F6108
  Dim Me As Recordset15
  loc_E96DDE: On Error Goto loc_E96E47
  loc_E96DE7: Me.MoveFirst
  loc_E96E11: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96E39: Proc_5_0_110649C(&HFF, Me, global_76)
  loc_E96E41: Call Proc_109_65_14903AC(0)
  loc_E96E46: Exit Sub
  loc_E96E47: ' Referenced from: E96DDE
  loc_E96E47: Proc_6_60_E62BC4(var_A0)
  loc_E96E4C: Exit Sub
End Sub

Public Sub Proc_109_58_12F61F4
  'Data Table: 4F6108
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_E4 As MSHFlexGrid
  Dim var_F4 As Variant
  Dim var_118 As String
  loc_12F5AFC: On Error Goto loc_12F61EC
  loc_12F5B0D: Set var_88 = Me.Txt
  loc_12F5B13: Call 0.Method_Proc_109_58_12F61F40 (CInt(0), var_8C)
  loc_12F5B32: Me.DGVType.Left = CVar(var_8C.Left)
  loc_12F5B4E: Set var_B4 = Me.Txt
  loc_12F5B54: Call 0.Method_Proc_109_58_12F61F40 (CInt(0), var_B8)
  loc_12F5B6F: Set var_88 = Me.Txt
  loc_12F5B75: Call 0.Method_Proc_109_58_12F61F40 (CInt(0), var_8C)
  loc_12F5B8D: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_12F5B9C: Me.DGVType.Top = CVar(var_8C.Left)
  loc_12F5BC1: Me.FGrid.Width = CVar(CDbl(13300))
  loc_12F5C05: Me.Frame1.Left = ((CDbl(Me.FGrid.Left) + CDbl(Me.FGrid.Width)) + CDbl(150))
  loc_12F5C1E: Set var_E4 = Me.FGrid
  loc_12F5C2D: var_E4.Cols = &H11
  loc_12F5C3E: var_E4.Rows = 1
  loc_12F5C43: var_A0 = 0
  loc_12F5C4C: var_F4 = &H15E
  loc_12F5C58: LateIdCallSt
  loc_12F5C74: global_64 = CStr(CLng(var_E4.BackColor))
  loc_12F5C7E: var_A0 = 0
  loc_12F5C87: var_F4 = &H64
  loc_12F5C93: LateIdCallSt
  loc_12F5C9E: var_A0 = CVar(CLng(1)) 'Long
  loc_12F5CA3: var_F4 = &H159
  loc_12F5CAF: LateIdCallSt
  loc_12F5CB7: var_A0 = 0
  loc_12F5CC3: var_F4 = CVar(CLng(1)) 'Long
  loc_12F5CC8: var_118 = "Sn."
  loc_12F5CD1: LateIdCallSt
  loc_12F5CDC: var_A0 = CVar(CLng(1)) 'Long
  loc_12F5CE7: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F5CEE: LateIdCallSt
  loc_12F5CF9: var_A0 = CVar(CLng(2)) 'Long
  loc_12F5CFE: var_F4 = 0
  loc_12F5D0A: LateIdCallSt
  loc_12F5D15: var_A0 = CVar(CLng(3)) 'Long
  loc_12F5D1A: var_F4 = &H708
  loc_12F5D26: LateIdCallSt
  loc_12F5D2E: var_A0 = 0
  loc_12F5D3A: var_F4 = CVar(CLng(3)) 'Long
  loc_12F5D3F: var_118 = "Sundry Name"
  loc_12F5D48: LateIdCallSt
  loc_12F5D53: var_A0 = CVar(CLng(3)) 'Long
  loc_12F5D5E: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F5D65: LateIdCallSt
  loc_12F5D70: var_A0 = CVar(CLng(4)) 'Long
  loc_12F5D75: var_F4 = &H898
  loc_12F5D81: LateIdCallSt
  loc_12F5D89: var_A0 = 0
  loc_12F5D95: var_F4 = CVar(CLng(4)) 'Long
  loc_12F5D9A: var_118 = "Display Name"
  loc_12F5DA3: LateIdCallSt
  loc_12F5DAE: var_A0 = CVar(CLng(4)) 'Long
  loc_12F5DB9: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F5DC0: LateIdCallSt
  loc_12F5DCB: var_A0 = CVar(CLng(5)) 'Long
  loc_12F5DD0: var_F4 = &HD16
  loc_12F5DDC: LateIdCallSt
  loc_12F5DE4: var_A0 = 0
  loc_12F5DF0: var_F4 = CVar(CLng(5)) 'Long
  loc_12F5DF5: var_118 = "Cal. Formula"
  loc_12F5DFE: LateIdCallSt
  loc_12F5E09: var_A0 = CVar(CLng(5)) 'Long
  loc_12F5E14: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F5E1B: LateIdCallSt
  loc_12F5E26: var_A0 = CVar(CLng(5)) 'Long
  loc_12F5E31: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F5E38: LateIdCallSt
  loc_12F5E43: var_A0 = CVar(CLng(6)) 'Long
  loc_12F5E48: var_F4 = &H1F4
  loc_12F5E54: LateIdCallSt
  loc_12F5E5C: var_A0 = 0
  loc_12F5E68: var_F4 = CVar(CLng(6)) 'Long
  loc_12F5E6D: var_118 = "P/A"
  loc_12F5E76: LateIdCallSt
  loc_12F5E81: var_A0 = CVar(CLng(6)) 'Long
  loc_12F5E8C: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F5E93: LateIdCallSt
  loc_12F5E9E: var_A0 = CVar(CLng(7)) 'Long
  loc_12F5EA3: var_F4 = &H320
  loc_12F5EAF: LateIdCallSt
  loc_12F5EB7: var_A0 = 0
  loc_12F5EC3: var_F4 = CVar(CLng(7)) 'Long
  loc_12F5EC8: var_118 = "Value"
  loc_12F5ED1: LateIdCallSt
  loc_12F5EDC: var_A0 = CVar(CLng(7)) 'Long
  loc_12F5EE7: var_F4 = CVar(CInt(7)) 'Integer
  loc_12F5EEE: LateIdCallSt
  loc_12F5EF9: var_A0 = CVar(CLng(7)) 'Long
  loc_12F5F04: var_F4 = CVar(CInt(7)) 'Integer
  loc_12F5F0B: LateIdCallSt
  loc_12F5F16: var_A0 = CVar(CLng(8)) 'Long
  loc_12F5F1B: var_F4 = 0
  loc_12F5F27: LateIdCallSt
  loc_12F5F2F: var_A0 = 0
  loc_12F5F3B: var_F4 = CVar(CLng(8)) 'Long
  loc_12F5F40: var_118 = "ROff"
  loc_12F5F49: LateIdCallSt
  loc_12F5F54: var_A0 = CVar(CLng(8)) 'Long
  loc_12F5F5F: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F5F66: LateIdCallSt
  loc_12F5F71: var_A0 = CVar(CLng(&H10)) 'Long
  loc_12F5F76: var_F4 = &H2BC
  loc_12F5F82: LateIdCallSt
  loc_12F5F8A: var_A0 = 0
  loc_12F5F96: var_F4 = CVar(CLng(&H10)) 'Long
  loc_12F5F9B: var_118 = "A/M"
  loc_12F5FA4: LateIdCallSt
  loc_12F5FAF: var_A0 = CVar(CLng(&H10)) 'Long
  loc_12F5FBA: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F5FC1: LateIdCallSt
  loc_12F5FCC: var_A0 = CVar(CLng(9)) 'Long
  loc_12F5FD1: var_F4 = 0
  loc_12F5FDD: LateIdCallSt
  loc_12F5FE5: var_A0 = 0
  loc_12F5FF1: var_F4 = CVar(CLng(9)) 'Long
  loc_12F5FF6: var_118 = "Limit"
  loc_12F5FFF: LateIdCallSt
  loc_12F600A: var_A0 = CVar(CLng(9)) 'Long
  loc_12F6015: var_F4 = CVar(CInt(7)) 'Integer
  loc_12F601C: LateIdCallSt
  loc_12F6027: var_A0 = CVar(CLng(9)) 'Long
  loc_12F6032: var_F4 = CVar(CInt(7)) 'Integer
  loc_12F6039: LateIdCallSt
  loc_12F6044: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12F6049: var_F4 = 0
  loc_12F6055: LateIdCallSt
  loc_12F605D: var_A0 = 0
  loc_12F6069: var_F4 = CVar(CLng(&HA)) 'Long
  loc_12F606E: var_118 = "Nature"
  loc_12F6077: LateIdCallSt
  loc_12F6082: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12F608D: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F6094: LateIdCallSt
  loc_12F609F: var_A0 = CVar(CLng(&HB)) 'Long
  loc_12F60A4: var_F4 = 0
  loc_12F60B0: LateIdCallSt
  loc_12F60B8: var_A0 = 0
  loc_12F60C4: var_F4 = CVar(CLng(&HB)) 'Long
  loc_12F60C9: var_118 = "+/-"
  loc_12F60D2: LateIdCallSt
  loc_12F60DD: var_A0 = CVar(CLng(&HB)) 'Long
  loc_12F60E8: var_F4 = CVar(CInt(4)) 'Integer
  loc_12F60EF: LateIdCallSt
  loc_12F60FA: var_A0 = CVar(CLng(&HE)) 'Long
  loc_12F60FF: var_F4 = 0
  loc_12F610B: LateIdCallSt
  loc_12F6116: var_A0 = CVar(CLng(&HC)) 'Long
  loc_12F611B: var_F4 = &H1F4
  loc_12F6127: LateIdCallSt
  loc_12F612F: var_A0 = 0
  loc_12F613B: var_F4 = CVar(CLng(&HC)) 'Long
  loc_12F6140: var_118 = "Bold"
  loc_12F6149: LateIdCallSt
  loc_12F6154: var_A0 = CVar(CLng(&HC)) 'Long
  loc_12F615F: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F6166: LateIdCallSt
  loc_12F6171: var_A0 = CVar(CLng(&HD)) 'Long
  loc_12F6176: var_F4 = &HA28
  loc_12F6182: LateIdCallSt
  loc_12F618A: var_A0 = 0
  loc_12F6196: var_F4 = CVar(CLng(&HD)) 'Long
  loc_12F619B: var_118 = "Revenue Charge"
  loc_12F61A4: LateIdCallSt
  loc_12F61AF: var_A0 = CVar(CLng(&HD)) 'Long
  loc_12F61BA: var_F4 = CVar(CInt(1)) 'Integer
  loc_12F61C1: LateIdCallSt
  loc_12F61CC: var_A0 = CVar(CLng(&HF)) 'Long
  loc_12F61D1: var_F4 = 0
  loc_12F61DD: LateIdCallSt
  loc_12F61E7: Set var_E4 = Nothing 
  loc_12F61EB: Exit Sub
  loc_12F61EC: ' Referenced from: 12F5AFC
  loc_12F61EC: Proc_6_60_E62BC4(var_E4, var_F4, var_A0, var_E4, var_F4, var_A0, var_E4, var_118)
  loc_12F61F1: Exit Sub
End Sub

Public Sub Proc_109_59_E7FC00
  'Data Table: 4F6108
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_6F01 As Integer
  loc_E7FBBD: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_E7FBC7:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_E7FBCF:   var_D0 = CVar(CLng(1)) 'Long
  loc_E7FBD9:   var_9C = CVar(CStr(var_86)) 'String
  loc_E7FBE1:   Set var_8C = Me.FGrid
  loc_E7FBE7:   LateIdCallSt
  loc_E7FBF8: Next var_A0 'Integer
  loc_E7FBFD: Exit Sub
  loc_E7FBFE: var_6F01 = 
End Sub

Public Sub Proc_109_60_FC8C00
  'Data Table: 4F6108
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_4F611F As Connection15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  loc_FC8A9B: If (Me.RecordCount = 0) Then
  loc_FC8A9E:   Proc_109_60_FC8C00 = 
  loc_FC8AA4: End If
  loc_FC8ADF: Set var_94 = Me.Txt
  loc_FC8AE5: Call 0.Method_Proc_109_60_FC8C000 (CInt(0), var_98, var_9C, "Select Count(*) From SundryType Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (V_Type='", var_130, -1)
  loc_FC8AFD: var_DC = CVar(var_138 & var_9C & "' And AppDate=") 'String
  loc_FC8B0B: Set var_A8 = Me.Txt
  loc_FC8B11: Call 0.Method_Proc_109_60_FC8C000 (CInt(1), var_AC, var_DC)
  loc_FC8B20: Proc_6_7_F25D88(var_CC, CVar(var_AC), 0)
  loc_FC8B28: var_EC = var_14C & var_CC 
  loc_FC8B3F: unk_4F611F.Execute CStr(var_EC & ")"), var_15C, 
  loc_FC8B47:  = var_98.Tag.Fields
  loc_FC8B4F:  = var_138.Item()
  loc_FC8B57:  = var_14C.Value
  loc_FC8B94: If (var_15C > 0) Then
  loc_FC8BB8:   MsgBox("Duplicate Entry", &H40, "Information", var_DC, var_EC)
  loc_FC8BD3:   Set var_94 = Me.Txt
  loc_FC8BD9:   Call 0.Method_Proc_109_60_FC8C000 (CInt(0))
  loc_FC8BE1:   var_98.SetFocus
  loc_FC8BF2:   Proc_109_60_FC8C00 = &HFF
  loc_FC8BF8: End If
  loc_FC8BF8: Proc_109_60_FC8C00 = var_98
End Sub

Public Sub Proc_109_61_1157D14(arg_C, arg_10) '1157D14
  'Data Table: 4F6108
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
  loc_1157978: var_B4 = CVar(CLng(arg_C)) 'Long
  loc_1157981: var_D4 = CVar(CLng(arg_10)) 'Long
  loc_115799B: var_98 = CStr(Me.FGrid.TextMatrix))
  loc_11579BC: var_C4 = "+"
  loc_11579D6: var_118 = Left(var_98, 1)
  loc_11579DE: var_E4 = "-"
  loc_11579F5: If CBool((Left(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_1157A16:   MsgBox("Invalid Operator at Starting position of furmula", 0, var_108, var_118, var_128)
  loc_1157A26:   Proc_109_61_1157D14 = &HFF
  loc_1157A2C: End If
  loc_1157A44: var_C4 = "+"
  loc_1157A5E: var_118 = Right(var_98, 1)
  loc_1157A66: var_E4 = "-"
  loc_1157A7D: If CBool((Right(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_1157A9E:   MsgBox("Invalid Operator at Ending position of furmula", 0, var_108, var_118, var_128)
  loc_1157AAE:   Proc_109_61_1157D14 = &HFF
  loc_1157AB4: End If
  loc_1157AB6: var_86 = 0
  loc_1157AB9: ' Referenced from: 1157D08
  loc_1157AC3: If (Len(var_98) > 0) Then
  loc_1157AC8:   var_A2 = 0
  loc_1157ADD:   var_108 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_1157AF3:   var_F8 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_1157B0F:   var_B4 = (InStr(1, var_98, "-", 0) = 0)
  loc_1157B2D:   var_138 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_1157B43:   var_128 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_1157B5F:   var_E4 = (InStr(1, var_98, "+", 0) = 0)
  loc_1157B66:   var_168 = IIf(var_E4, var_128, (Right(var_98, 1) = var_C4) Or (IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108) = var_E4))
  loc_1157B96:   var_178 = (InStr(1, var_98, "+", 0) >= InStr(1, var_98, "-", 0))
  loc_1157B9D:   var_188 = IIf(var_178, IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108), var_168)
  loc_1157BA6:   var_9A = CInt(var_188)
  loc_1157BC6:   If (var_9A = 0) Then
  loc_1157BCC:     var_A0 = var_98
  loc_1157BD2:   Else
  loc_1157BE4:     var_F8 = Left(var_98, CLng((var_9A - 1)))
  loc_1157BED:     var_A0 = CStr("Invalid Operator at Ending position of furmula")
  loc_1157BF3:   End If
  loc_1157BFE:   For var_18C = 1 To (arg_C - 1): var_88 = var_18C 'Integer
  loc_1157C07:     var_148 = CVar(var_A0) 'String
  loc_1157C0F:     var_B4 = CVar(CLng(var_88)) 'Long
  loc_1157C4D:     If (CVar(CLng(1)) = Trim(CVar(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1157C52:       var_A2 = &HFF
  loc_1157C55:       Exit For
  loc_1157C58:     End If
  loc_1157C5B:   Next var_18C 'Integer
  loc_1157C60:   ' Referenced from: 1157C55
  loc_1157C66:   If (var_A2 = 0) Then
  loc_1157C74:     var_F8 = Trim(var_A0)
  loc_1157C97:     var_108 = ("Invalid Row Reference " + var_F8)
  loc_1157CA0:     var_118 = (CVar(CStr(Me.FGrid.TextMatrix))) + vbCrLf)
  loc_1157CA9:     var_128 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + "Please Enter Correct No.")
  loc_1157CAD:     MsgBox(var_128, &H40, "Validation", var_168, var_188)
  loc_1157CC8:     Proc_109_61_1157D14 = &HFF
  loc_1157CCE:   End If
  loc_1157CD4:   If (var_9A = 0) Then
  loc_1157CDA:     var_98 = vbNullString
  loc_1157CE0:   Else
  loc_1157CF5:     var_108 = Mid(var_98, CLng((var_9A + 1)), var_F8)
  loc_1157CFE:     var_98 = CStr(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1157D08:   End If
  loc_1157D08:   GoTo loc_1157AB9
  loc_1157D0B: End If
  loc_1157D0B: Proc_109_61_1157D14 = 
End Sub

Public Sub Proc_109_62_E458EC
  'Data Table: 4F6108
  loc_E458C8: Set var_88 = Me.TopCtrl1
  loc_E458CE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E458E7: If (CStr() = "Browse") Then
  loc_E458EA:   Exit Sub
  loc_E458EB: End If
  loc_E458EB: Exit Sub
End Sub

Public Sub Proc_109_63_152A1C4(arg_C) '152A1C4
  'Data Table: 4F6108
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
  loc_1529247: var_A0 = CLng(Me.FGrid.Col)
  loc_1529257: If (var_A0 = CLng(3)) Then
  loc_152927A:   var_A6 = Me.EOF
  loc_15292A8:   Set var_8C = Me.TxtGrid
  loc_15292AE:   Call 0.Method_Proc_109_63_152A1C40 (arg_C, var_AC, var_B0)
  loc_15292B6:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_15292CE:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_15292E4:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15292EC:     var_E0 = CVar(CLng(3)) 'Long
  loc_15292F1:     var_100 = vbNullString
  loc_15292FB:     Set var_AC = Me.FGrid
  loc_1529301:     LateIdCallSt
  loc_1529326:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152932E:     var_E0 = CVar(CLng(2)) 'Long
  loc_1529333:     var_100 = vbNullString
  loc_152933D:     Set var_AC = Me.FGrid
  loc_1529343:     LateIdCallSt
  loc_1529368:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1529370:     var_E0 = CVar(CLng(&HA)) 'Long
  loc_1529375:     var_100 = vbNullString
  loc_152937F:     Set var_AC = Me.FGrid
  loc_1529385:     LateIdCallSt
  loc_15293AA:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15293B2:     var_E0 = CVar(CLng(&HE)) 'Long
  loc_15293B7:     var_100 = vbNullString
  loc_15293C1:     Set var_AC = Me.FGrid
  loc_15293C7:     LateIdCallSt
  loc_15293DC:   Else
  loc_15293DF:     Call Proc_109_68_FC398C(var_A6, var_AC, var_100, var_E0, var_C0, var_AC, var_100, var_E0)
  loc_15293EA:     If (var_A6 = 0) Then
  loc_15293F2:       Proc_109_63_152A1C4 = 0
  loc_15293F8:     End If
  loc_152940B:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1529413:     var_F0 = CVar(CLng(3)) 'Long
  loc_1529446:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_152944E:     Set var_138 = Me.FGrid
  loc_1529454:     LateIdCallSt
  loc_1529483:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152948B:     var_F0 = CVar(CLng(2)) 'Long
  loc_15294BE:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_15294C6:     Set var_138 = Me.FGrid
  loc_15294CC:     LateIdCallSt
  loc_15294FB:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1529503:     var_F0 = CVar(CLng(4)) 'Long
  loc_1529536:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1529544:     LateIdCallSt
  loc_15295AB:     var_134 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_15295B3:     Set var_138 = Me.FGrid
  loc_15295B9:     LateIdCallSt
  loc_15295E6:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15295EE:     var_F0 = CVar(CLng(&HE)) 'Long
  loc_1529621:     var_134 = CVar(CStr(Me.Fields.Item("SysYN").Value)) 'String
  loc_1529629:     Set var_138 = Me.FGrid
  loc_152962F:     LateIdCallSt
  loc_152964B:   End If
  loc_152965E:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1529666:   var_E0 = CVar(CLng(&H10)) 'Long
  loc_152966B:   var_100 = "Manual"
  loc_1529675:   Set var_AC = Me.FGrid
  loc_152967B:   LateIdCallSt
  loc_15296A6:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15296AB:   var_E0 = 1
  loc_15296B8:   Set var_AC = Me.FGrid
  loc_15296C9:   var_B0 = CStr(var_AC.TextMatrix))
  loc_15296E2:   If (var_B0 <> vbNullString) Then
  loc_15296E5:     var_C0 = vbNullString
  loc_15296EF:     Set var_8C = Me.FGrid
  loc_1529700:   End If
  loc_1529703: Else
  loc_152970A:   If Not (var_A0 = CLng(1)) Then
  loc_1529714:     If (var_A0 = CLng(4)) Then
  loc_1529717:     End If
  loc_1529753:     Set var_8C = Me.TxtGrid
  loc_1529759:     Call 0.Method_Proc_109_63_152A1C40 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)))
  loc_1529761:     var_E0 = var_AC.Text
  loc_1529769:     var_134 = CVar(var_B0) 'String
  loc_1529771:     Set var_13C = Me.FGrid
  loc_1529777:     LateIdCallSt
  loc_1529798:   Else
  loc_152979F:     If (var_A0 = CLng(5)) Then
  loc_15297DF:       Set var_8C = Me.TxtGrid
  loc_15297E5:       Call 0.Method_Proc_109_63_152A1C40 (arg_C, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_13C, var_134)
  loc_15297ED:       var_C0 = var_AC.Text
  loc_15297F5:       var_134 = CVar(var_B0) 'String
  loc_15297FD:       Set var_13C = Me.FGrid
  loc_1529803:       LateIdCallSt
  loc_1529840:       If (CLng(Me.FGrid.Row) = 1) Then
  loc_1529856:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152985F:         Set var_AC = Me.FGrid
  loc_152986E:         var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1529873:         var_100 = vbNullString
  loc_152987D:         Set var_114 = Me.FGrid
  loc_1529883:         LateIdCallSt
  loc_15298A0:         Proc_109_63_152A1C4 = &HFF
  loc_15298A6:       End If
  loc_15298B3:       Set var_8C = Me.TxtGrid
  loc_15298B9:       Call 0.Method_Proc_109_63_152A1C40 (arg_C, var_AC, var_B0, var_114, var_100, var_E0, var_C0)
  loc_15298C1:       var_13C = var_AC.Text
  loc_15298D8:       If (var_B0 <> vbNullString) Then
  loc_1529916:         Call Proc_109_61_1157D14(CInt(CLng(Me.FGrid.Row)), CInt(CLng(Me.FGrid.Col)))
  loc_152992F:         If (var_13E = &HFF) Then
  loc_1529934:           var_86 = 0
  loc_152994A:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1529953:           Set var_AC = Me.FGrid
  loc_1529962:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1529967:           var_100 = vbNullString
  loc_1529977:           LateIdCallSt
  loc_152998F:           Proc_109_63_152A1C4 = Me.FGrid
  loc_1529995:         End If
  loc_1529995:       End If
  loc_1529998:     Else
  loc_152999F:       If Not (var_A0 = CLng(8)) Then
  loc_15299A9:         If (var_A0 = CLng(&HC)) Then
  loc_15299AC:         End If
  loc_15299E8:         Set var_8C = Me.TxtGrid
  loc_15299EE:         Call 0.Method_Proc_109_63_152A1C40 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_100, CVar(CLng(Me.FGrid.Col)))
  loc_15299F6:         var_C0 = var_AC.Text
  loc_1529A0C:         LateIdCallSt
  loc_1529A37:         Set var_8C = Me.TxtGrid
  loc_1529A3D:         Call 0.Method_Proc_109_63_152A1C40 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0), var_86)
  loc_1529A45:         var_13E = var_AC.Text
  loc_1529A5C:         If (var_B0 = vbNullString) Then
  loc_1529A72:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1529A7B:           Set var_AC = Me.FGrid
  loc_1529A8A:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1529A8F:           var_100 = "No"
  loc_1529A99:           Set var_114 = Me.FGrid
  loc_1529A9F:           LateIdCallSt
  loc_1529AB7:         End If
  loc_1529ABA:       Else
  loc_1529AC1:         If (var_A0 = CLng(&H10)) Then
  loc_1529AC8:           Set var_114 = Me.FGrid
  loc_1529B00:           Set var_8C = Me.TxtGrid
  loc_1529B06:           Call 0.Method_Proc_109_63_152A1C40 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_1529B0E:           var_E0 = var_AC.Text
  loc_1529B24:           LateIdCallSt
  loc_1529B4F:           Set var_8C = Me.TxtGrid
  loc_1529B55:           Call 0.Method_Proc_109_63_152A1C40 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1529B5D:           var_C0 = var_AC.Text
  loc_1529B74:           If (var_B0 = vbNullString) Then
  loc_1529B8A:             var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1529B93:             Set var_AC = Me.FGrid
  loc_1529BA2:             var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1529BA7:             var_100 = "Manual"
  loc_1529BB1:             Set var_114 = Me.FGrid
  loc_1529BB7:             LateIdCallSt
  loc_1529BCF:           End If
  loc_1529BD2:         Else
  loc_1529BD9:           If (var_A0 = CLng(6)) Then
  loc_1529BE0:             Set var_114 = Me.FGrid
  loc_1529C18:             Set var_8C = Me.TxtGrid
  loc_1529C1E:             Call 0.Method_Proc_109_63_152A1C40 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_1529C26:             var_E0 = var_AC.Text
  loc_1529C3C:             LateIdCallSt
  loc_1529C67:             Set var_8C = Me.TxtGrid
  loc_1529C6D:             Call 0.Method_Proc_109_63_152A1C40 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1529C75:             var_C0 = var_AC.Text
  loc_1529C8C:             If (var_B0 = vbNullString) Then
  loc_1529CA2:               var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1529CAB:               Set var_AC = Me.FGrid
  loc_1529CBA:               var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1529CBF:               var_100 = "Amt"
  loc_1529CC9:               Set var_114 = Me.FGrid
  loc_1529CCF:               LateIdCallSt
  loc_1529CE7:             End If
  loc_1529CEA:           Else
  loc_1529CF1:             If (var_A0 = CLng(7)) Then
  loc_1529D00:               Set var_8C = Me.TxtGrid
  loc_1529D06:               Call 0.Method_Proc_109_63_152A1C40 (0, var_AC, var_B0, var_114, var_100, var_E0)
  loc_1529D0E:               var_C0 = var_AC.Text
  loc_1529D31:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1529D49:               var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1529D76:               var_170 = CVar(CStr(Format(CVar(Val(var_B0)), "0.000"))) 'String
  loc_1529D7E:               Set var_13C = Me.FGrid
  loc_1529D84:               LateIdCallSt
  loc_1529DAE:             Else
  loc_1529DB5:               If (var_A0 = CLng(9)) Then
  loc_1529DC4:                 Set var_8C = Me.TxtGrid
  loc_1529DCA:                 Call 0.Method_Proc_109_63_152A1C40 (0, var_AC, var_B0, var_13C, var_170, 1, 1)
  loc_1529DD2:                 var_100 = var_AC.Text
  loc_1529DF5:                 var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1529E0D:                 var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1529E3A:                 var_170 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_1529E42:                 Set var_13C = Me.FGrid
  loc_1529E48:                 LateIdCallSt
  loc_1529E72:               Else
  loc_1529E79:                 If (var_A0 = CLng(&HD)) Then
  loc_1529ECA:                   Set var_8C = Me.TxtGrid
  loc_1529ED0:                   Call 0.Method_Proc_109_63_152A1C40 (arg_C, var_AC, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_13C, var_170, 1)
  loc_1529ED8:                   1 = var_AC.Text
  loc_1529EF0:                   If (var_100 Or (var_B0 = vbNullString)) Then
  loc_1529F06:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1529F0E:                     var_E0 = CVar(CLng(&HF)) 'Long
  loc_1529F13:                     var_100 = vbNullString
  loc_1529F1D:                     Set var_AC = Me.FGrid
  loc_1529F23:                     LateIdCallSt
  loc_1529F48:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1529F50:                     var_E0 = CVar(CLng(&HD)) 'Long
  loc_1529F55:                     var_100 = vbNullString
  loc_1529F5F:                     Set var_AC = Me.FGrid
  loc_1529F65:                     LateIdCallSt
  loc_1529F8A:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1529F92:                     var_E0 = CVar(CLng(&HB)) 'Long
  loc_1529F97:                     var_100 = vbNullString
  loc_1529FA1:                     Set var_AC = Me.FGrid
  loc_1529FA7:                     LateIdCallSt
  loc_1529FBC:                   Else
  loc_1529FCF:                     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1529FD7:                     var_F0 = CVar(CLng(&HF)) 'Long
  loc_152A00A:                     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_152A012:                     Set var_138 = Me.FGrid
  loc_152A018:                     LateIdCallSt
  loc_152A047:                     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152A04F:                     var_F0 = CVar(CLng(&HD)) 'Long
  loc_152A082:                     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_152A08A:                     Set var_138 = Me.FGrid
  loc_152A090:                     LateIdCallSt
  loc_152A0EB:                     If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_152A101:                       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152A109:                       var_E0 = CVar(CLng(&HB)) 'Long
  loc_152A10E:                       var_100 = "+"
  loc_152A118:                       Set var_AC = Me.FGrid
  loc_152A11E:                       LateIdCallSt
  loc_152A133:                     Else
  loc_152A172:                       If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_152A188:                         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_152A190:                         var_E0 = CVar(CLng(&HB)) 'Long
  loc_152A195:                         var_100 = "-"
  loc_152A19F:                         Set var_AC = Me.FGrid
  loc_152A1A5:                         LateIdCallSt
  loc_152A1B7:                       End If
  loc_152A1B7:                     End If
  loc_152A1B7:                   End If
  loc_152A1B7:                 End If
  loc_152A1B7:               End If
  loc_152A1B7:             End If
  loc_152A1B7:           End If
  loc_152A1B7:         End If
  loc_152A1B7:       End If
  loc_152A1B7:     End If
  loc_152A1B7:   End If
  loc_152A1B7: End If
  loc_152A1BC: Proc_109_63_152A1C4 = &HFF
End Sub

Public Sub Proc_109_64_F66A28
  'Data Table: 4F6108
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F668FE: Set var_8C = Me.Txt
  loc_F66904: Call 0.Method_Proc_109_64_F66A28C (var_8E, var_86)
  loc_F66914: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F6692A:   Set var_8C = Me.Txt
  loc_F66930:   Call 0.Method_Proc_109_64_F66A280 (CInt(var_86), var_98)
  loc_F66938:   var_98.Text = vbNullString
  loc_F66954:   Set var_8C = Me.Txt
  loc_F6695A:   Call 0.Method_Proc_109_64_F66A280 (CInt(var_86), var_98)
  loc_F66962:   var_98.Tag = vbNullString
  loc_F66971: Next var_92 'Byte
  loc_F66984: Me.LblDepart.Caption = vbNullString
  loc_F66999: Me.LblUser.Caption = vbNullString
  loc_F669AE: Me.LblLDt.Caption = vbNullString
  loc_F669C9: Me.FGrid.Rows = 1
  loc_F669E6: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F669EE: Set var_98 = Me.FGrid
  loc_F66A1D: Me.FGrid.FixedRows = 1
  loc_F66A25: Exit Sub
End Sub

Public Sub Proc_109_65_14903AC
  'Data Table: 4F6108
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_98 As String
  Dim var_DC As Variant
  Dim var_B8 As Variant
  Dim var_A8 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim unk_4F611F As Connection15
  Dim var_88 As Recordset15
  Dim var_134 As Variant
  Dim var_158 As Variant
  Dim var_148 As Variant
  Dim var_178 As Variant
  Dim var_138 As TextBox
  Dim var_8A As Integer
  Dim var_130 As Variant
  loc_148F768: On Error Goto loc_14903A6
  loc_148F782: If (Me.RecordCount > 0) Then
  loc_148F785:   Call Proc_109_64_F66A28()
  loc_148F79E:   var_94 = "Select VT.Description,SP.*,SM.Name As SundryName,RM.Name As RevName,D.Name As Department From ((((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type ) Left Join Depart D On VT.RestCode=D.Code) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Where Sp.LogSite_Code='" & MemVar_1F92078
  loc_148F7C1:   var_DC = CVar(var_94 & "' and VT.Site_Code='" & MemVar_1F92070 & "' and VT.LogSite_Code='" & MemVar_1F92078 & "' and SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)='") 'String
  loc_148F808:   unk_4F611F.Execute CStr(var_DC & Me.Fields.Item("SearchCode").Value & "' Order By SP.SNo"), var_130, -1
  loc_148F813:   Set var_88 = var_134
  loc_148F84F:   If (var_88.RecordCount > 0) Then
  loc_148F88C:     var_134 = var_88.Fields
  loc_148F8F5:     var_198 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_134.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_148F93A:     Me.LblUser.Caption = CStr(var_134 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_198)))
  loc_148F9B4:     var_138 = var_88.Fields.Item("U_AE")
  loc_148FA15:     var_198 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_138)) = "E"), "Last Update : ", "entdt : "))
  loc_148FA5A:     Me.LblLDt.Caption = CStr(var_198 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_148FAC8:     Set var_134 = Me.Txt
  loc_148FACE:     Call 0.Method_Proc_109_65_14903AC0 (CInt(0), var_138)
  loc_148FAD6:     var_138.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("V_Type")))
  loc_148FB20:     Set var_134 = Me.Txt
  loc_148FB26:     Call 0.Method_Proc_109_65_14903AC0 (CInt(0), var_138)
  loc_148FB2E:     var_138.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("V_Type")))
  loc_148FB7B:     If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("Department"))) = vbNullString) Then
  loc_148FB7E:     End If
  loc_148FBB3:     Me.LblDepart.Caption = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Department")))
  loc_148FC17:     Set var_134 = Me.Txt
  loc_148FC1D:     Call 0.Method_Proc_109_65_14903AC0 (CInt(1), var_138, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/mm/yyyy")))
  loc_148FC25:     var_138.Text = 1
  loc_148FC41:     var_8A = 1
  loc_148FC57:     Me.FGrid.Rows = 1
  loc_148FC5F:     ' Referenced from: 149031D
  loc_148FC6E:     If Not(var_88.EOF) Then
  loc_148FC71:       var_B8 = vbNullString
  loc_148FC7B:       Set var_A8 = Me.FGrid
  loc_148FC90:       Set var_1EC = Me.FGrid
  loc_148FC97:       var_FC = CVar(CLng(var_8A)) 'Long
  loc_148FC9F:       var_148 = CVar(CLng(1)) 'Long
  loc_148FCCF:       var_DC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_148FCD6:       LateIdCallSt
  loc_148FD25:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1EC, var_DC, CVar(CLng(2)))) 'String
  loc_148FD2C:       LateIdCallSt
  loc_148FD77:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1EC, var_DC)) 'String
  loc_148FD7E:       LateIdCallSt
  loc_148FDC9:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1EC, var_DC)) 'String
  loc_148FDD0:       LateIdCallSt
  loc_148FDE6:       var_FC = CVar(CLng(var_8A)) 'Long
  loc_148FE22:       LateIdCallSt
  loc_148FE5C:       var_98 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PerOrAmt")), var_1EC, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_FC, var_1EC, var_DC)), var_FC)
  loc_148FE63:       var_158 = CVar(CLng(var_8A)) 'Long
  loc_148FE6B:       var_178 = CVar(CLng(6)) 'Long
  loc_148FEA1:       var_130 = CVar(CStr(IIf((var_98 = "P"), "Per", "Amt"))) 'String
  loc_148FEA8:       LateIdCallSt
  loc_148FF25:       LateIdCallSt
  loc_148FF63:       var_98 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoundOff")), var_1EC, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.000"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_148FF6A:       var_158 = CVar(CLng(var_8A)) 'Long
  loc_148FF72:       var_178 = CVar(CLng(8)) 'Long
  loc_148FFA8:       var_130 = CVar(CStr(IIf((var_98 = "Y"), "Yes", "No"))) 'String
  loc_148FFAF:       LateIdCallSt
  loc_149002C:       LateIdCallSt
  loc_149007B:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_1EC, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_1490082:       LateIdCallSt
  loc_14900CD:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_1EC, var_DC, CVar(CLng(9)))) 'String
  loc_14900D4:       LateIdCallSt
  loc_1490126:       LateIdCallSt
  loc_1490160:       var_98 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP")), var_1EC, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_1EC, var_DC)), CVar(CLng(var_8A)))
  loc_14901AC:       LateIdCallSt
  loc_1490206:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(&HF)), CVar(CLng(var_8A)), var_1EC, CVar(CStr(IIf((var_98 = "Y"), "Yes", "No"))), CVar(CLng(&HC)))) 'String
  loc_149020D:       LateIdCallSt
  loc_1490258:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevName")), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_1EC, var_DC)) 'String
  loc_149025F:       LateIdCallSt
  loc_14902A0:       var_158 = CVar(CLng(var_8A)) 'Long
  loc_14902A8:       var_178 = CVar(CLng(&H10)) 'Long
  loc_14902D5:       var_10C = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("AutoManual")), var_1EC, "Auto", CVar(CLng(var_8A))) = "A"), "Auto", "Manual")
  loc_14902DE:       var_130 = CVar(CStr(var_10C)) 'String
  loc_14902E5:       LateIdCallSt
  loc_1490308:       Set var_1EC = Nothing 
  loc_1490312:       var_8A = (var_8A + 1)
  loc_1490318:       var_88.MoveNext
  loc_149031D:       GoTo loc_148FC5F
  loc_1490320:     End If
  loc_1490320:   End If
  loc_1490320:   var_B8 = 0
  loc_149032A:   Set var_A8 = Me.FGrid
  loc_1490357:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_149035A:     var_B8 = "1"
  loc_1490364:     Set var_A8 = Me.FGrid
  loc_1490375:   End If
  loc_1490375:   var_B8 = 1
  loc_1490388:   Me.FGrid.FixedRows = var_B8
  loc_1490393: Else
  loc_1490393:   Call Proc_109_64_F66A28(FGrid.DispID_10000, var_B8, FGrid.DispID_2E, var_B8, var_8A, var_1EC, var_130)
  loc_1490398: End If
  loc_1490398: Call Proc_109_67_EBB594(var_178, var_158, var_1EC)
  loc_14903A2: Set var_88 = Nothing
  loc_14903A5: Exit Sub
  loc_14903A6: ' Referenced from: 148F768
  loc_14903A6: Proc_6_60_E62BC4(var_130, var_178)
  loc_14903AB: Exit Sub
End Sub

Public Sub Proc_109_66_EB88F4(arg_C) 'EB88F4
  'Data Table: 4F6108
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_EB8862: Set var_8C = Me.Txt
  loc_EB8868: Call 0.Method_Proc_109_66_EB88F4C (var_8E, var_86)
  loc_EB8878: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB888E:   Set var_8C = Me.Txt
  loc_EB8894:   Call 0.Method_Proc_109_66_EB88F40 (CInt(var_86), var_98)
  loc_EB889C:   var_98.Enabled = arg_C
  loc_EB88AB: Next var_92 'Byte
  loc_EB88BE: Me.Frame1.Enabled = arg_C
  loc_EB88D4: Me.CmdCopy.Enabled = Not(arg_C)
  loc_EB88E9: Me.CmdPaste.Enabled = arg_C
  loc_EB88F1: Exit Sub
End Sub

Public Sub Proc_109_67_EBB594
  'Data Table: 4F6108
  loc_EBB50C: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EBB51E:   Me.DGVType.Visible = False
  loc_EBB526: End If
  loc_EBB542: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_EBB554:   Me.DGRevenue.Visible = False
  loc_EBB55C: End If
  loc_EBB578: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_EBB58A:   Me.DGSundry.Visible = False
  loc_EBB592: End If
  loc_EBB592: Exit Sub
End Sub

Public Sub Proc_109_68_FC398C
  'Data Table: 4F6108
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC380F: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_FC3814:   var_92 = 3 'Byte
  loc_FC3818: End If
  loc_FC3821: Set var_98 = Me.TxtGrid
  loc_FC3827: Call 0.Method_Proc_109_68_FC398C0 (0, var_B0)
  loc_FC384A: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC387E: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC38A2:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC38A5:     GoTo loc_FC3977
  loc_FC38A8:   End If
  loc_FC38AC:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC38D6:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC38E0:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC3915:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC3939:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC3952:     Set var_98 = Me.TxtGrid
  loc_FC3958:     Call 0.Method_Proc_109_68_FC398C0 (0, var_B0, CVar(CLng(var_92)))
  loc_FC3960:     var_B0.SetFocus
  loc_FC3971:     Proc_109_68_FC398C = 0
  loc_FC3977:     ' Referenced from: FC38A5
  loc_FC3977:   End If
  loc_FC397A: Next var_D4 'Integer
  loc_FC3984: Proc_109_68_FC398C = &HFF
End Sub

Public Sub Proc_109_69_12D2930
  'Data Table: 4F6108
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_8A As Integer
  Dim var_B8 As String
  Dim unk_4F611F As Connection15
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
  loc_12D22A4: On Error Goto loc_12D2928
  loc_12D22B4: Set var_B0 = Me.FGrid
  loc_12D22BA: var_B0.Rows = 1
  loc_12D22C4: var_8A = 1
  loc_12D22E2: var_B8 = "SELECT SF.*,SM.Name as SundryName" & " FROM SundryTypeFix SF INNER JOIN SundryMast SM ON SF.SundryCode = SM.Code" & " where (SF.LOGSITE_CODE='"
  loc_12D22F9: unk_4F611F.Execute var_B8 & MemVar_1F92078 & "' or SF.LOGSITE_CODE='HO') Order By SNo ", var_D0, -1
  loc_12D2304: Set var_88 = var_B0
  loc_12D232C: If (var_88.RecordCount > 0) Then
  loc_12D232F:   ' Referenced from: 12D2884
  loc_12D233E:   If Not(var_88.EOF) Then
  loc_12D2341:     var_9C = vbNullString
  loc_12D234B:     Set var_B0 = Me.FGrid
  loc_12D2360:     Set var_DC = Me.FGrid
  loc_12D2367:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12D236F:     var_100 = CVar(CLng(1)) 'Long
  loc_12D239F:     var_120 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_12D23A6:     LateIdCallSt
  loc_12D23F5:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_DC, var_120, CVar(CLng(2)))) 'String
  loc_12D23FC:     LateIdCallSt
  loc_12D2447:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_DC, var_120)) 'String
  loc_12D244E:     LateIdCallSt
  loc_12D2499:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_DC, var_120)) 'String
  loc_12D24A0:     LateIdCallSt
  loc_12D24B6:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12D24F2:     LateIdCallSt
  loc_12D252C:     var_B8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PerOrAmt")), var_DC, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_AC, var_DC, var_120)), var_AC)
  loc_12D2533:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12D253B:     var_160 = CVar(CLng(6)) 'Long
  loc_12D2571:     var_180 = CVar(CStr(IIf((var_B8 = "P"), "Per", "Amt"))) 'String
  loc_12D2578:     LateIdCallSt
  loc_12D25F5:     LateIdCallSt
  loc_12D2633:     var_B8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoundOff")), var_DC, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.000"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_12D263A:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12D2642:     var_160 = CVar(CLng(8)) 'Long
  loc_12D2678:     var_180 = CVar(CStr(IIf((var_B8 = "Y"), "Yes", "No"))) 'String
  loc_12D267F:     LateIdCallSt
  loc_12D26FC:     LateIdCallSt
  loc_12D274B:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_DC, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_12D2752:     LateIdCallSt
  loc_12D279D:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_DC, var_120, CVar(CLng(9)))) 'String
  loc_12D27A4:     LateIdCallSt
  loc_12D27E5:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12D27ED:     var_160 = CVar(CLng(&HC)) 'Long
  loc_12D2823:     var_180 = CVar(CStr(IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP")), var_DC, "Yes", CVar(CLng(var_8A))) = "Y"), "Yes", "No"))) 'String
  loc_12D282A:     LateIdCallSt
  loc_12D284F:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_12D2857:     var_F0 = CVar(CLng(&H10)) 'Long
  loc_12D285C:     var_110 = "Manual"
  loc_12D2865:     LateIdCallSt
  loc_12D286F:     Set var_DC = Nothing 
  loc_12D2879:     var_8A = (var_8A + 1)
  loc_12D287F:     var_88.MoveNext
  loc_12D2884:     GoTo loc_12D232F
  loc_12D2887:   End If
  loc_12D289A:   Me.FGrid.FixedRows = 1
  loc_12D28A2: End If
  loc_12D28A8: If (var_8A = 1) Then
  loc_12D28BE:   Me.FGrid.Rows = 1
  loc_12D28DB:   var_120 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_12D28E3:   Set var_E0 = Me.FGrid
  loc_12D28FF:   var_9C = 1
  loc_12D2912:   Me.FGrid.FixedRows = var_9C
  loc_12D291A: End If
  loc_12D291A: Call Proc_109_67_EBB594(FGrid.DispID_10000, var_120, var_8A, var_DC, var_110, var_F0, var_9C)
  loc_12D2924: Set var_88 = Nothing
  loc_12D2927: Exit Sub
  loc_12D2928: ' Referenced from: 12D22A4
  loc_12D2928: Proc_6_60_E62BC4(var_DC, var_180, var_160)
  loc_12D292D: Exit Sub
End Sub

Public Sub Proc_109_70_E7DF40
  'Data Table: 4F6108
  loc_E7DF01: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A0 'Integer
  loc_E7DF14:   Call Proc_109_61_1157D14(var_88, CInt(5))
  loc_E7DF1F:   If (var_A4 = &HFF) Then
  loc_E7DF27:     Proc_109_70_E7DF40 = 0
  loc_E7DF2D:   End If
  loc_E7DF30: Next var_A0 'Integer
  loc_E7DF3A: Proc_109_70_E7DF40 = &HFF
End Sub

Public Sub Proc_109_71_138436C
  'Data Table: 4F6108
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_4F611F As Connection15
  Dim var_88 As Recordset15
  Dim var_8A As Integer
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_F8 As Variant
  Dim var_D8 As Variant
  Dim var_118 As Variant
  Dim var_B4 As Variant
  Dim var_108 As Variant
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_1A8 As String
  Dim var_1A0 As TextBox
  loc_1383AD4: On Error Goto loc_1384364
  loc_1383AEB: var_90 = "Select SP.*,SM.Name As SundryName,RM.Name As RevName,'B'+D.ShortName V_Type1 From SundryType SP Left Join SundryMast SM On SP.SundryCode=SM.Code Left Join RevMast RM On SP.RevCode=RM.Code Left Join Depart D On RM.DeskCode=D.Code Where SP.LogSite_Code='" & MemVar_1F92078
  loc_1383AFB: unk_4F611F.Execute var_90 & "' And SP.V_Type='XXX' Order By SP.SNo", var_B4, -1
  loc_1383B06: Set var_88 = var_B8
  loc_1383B2A: If (var_88.RecordCount > 0) Then
  loc_1383B2F:   var_8A = 1
  loc_1383B45:   Me.FGrid.Rows = 1
  loc_1383B4D:   ' Referenced from: 13842DB
  loc_1383B5C:   If Not(var_88.EOF) Then
  loc_1383B5F:     var_A4 = vbNullString
  loc_1383B69:     Set var_B8 = Me.FGrid
  loc_1383B7E:     Set var_D4 = Me.FGrid
  loc_1383B85:     var_CC = CVar(CLng(var_8A)) 'Long
  loc_1383B8D:     var_F8 = CVar(CLng(1)) 'Long
  loc_1383BBD:     var_118 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1383BC4:     LateIdCallSt
  loc_1383C13:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_D4, var_118, CVar(CLng(2)))) 'String
  loc_1383C1A:     LateIdCallSt
  loc_1383C65:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_D4, var_118)) 'String
  loc_1383C6C:     LateIdCallSt
  loc_1383CB7:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_D4, var_118)) 'String
  loc_1383CBE:     LateIdCallSt
  loc_1383CD4:     var_CC = CVar(CLng(var_8A)) 'Long
  loc_1383D10:     LateIdCallSt
  loc_1383D4A:     var_94 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PerOrAmt")), var_D4, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_CC, var_D4, var_118)), var_CC)
  loc_1383D51:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_1383D59:     var_158 = CVar(CLng(6)) 'Long
  loc_1383D8F:     var_178 = CVar(CStr(IIf((var_94 = "P"), "Per", "Amt"))) 'String
  loc_1383D96:     LateIdCallSt
  loc_1383E13:     LateIdCallSt
  loc_1383E51:     var_94 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoundOff")), var_D4, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.000"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_1383E58:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_1383E60:     var_158 = CVar(CLng(8)) 'Long
  loc_1383E96:     var_178 = CVar(CStr(IIf((var_94 = "Y"), "Yes", "No"))) 'String
  loc_1383E9D:     LateIdCallSt
  loc_1383F1A:     LateIdCallSt
  loc_1383F69:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_D4, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_1383F70:     LateIdCallSt
  loc_1383FBB:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_D4, var_118, CVar(CLng(9)))) 'String
  loc_1383FC2:     LateIdCallSt
  loc_1384014:     LateIdCallSt
  loc_138403D:     var_D8 = var_88.Fields.Item("GRP")
  loc_138404E:     var_94 = Proc_6_38_E68A98(CVar(var_D8), var_D4, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_D4, var_118)), CVar(CLng(var_8A)))
  loc_1384055:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_138405D:     var_158 = CVar(CLng(&HC)) 'Long
  loc_138407B:     var_90 = var_94
  loc_1384093:     var_178 = CVar(CStr(IIf((var_90 = "Y"), "Yes", "No"))) 'String
  loc_138409A:     LateIdCallSt
  loc_13840C9:     Set var_B8 = Me.Txt
  loc_13840CF:     Call 0.Method_Proc_109_71_138436C0 (CInt(0), var_D8, var_90, var_D4, var_178, var_158)
  loc_138413C:     var_1A8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("V_Type1")), (Proc_6_38_E68A98(CVar(var_88.Fields.Item("V_Type1")), (var_90 <> vbNullString), var_D4) = vbNullString), var_178)
  loc_138414D:     Set var_19C = Me.Txt
  loc_1384153:     Call 0.Method_Proc_109_71_138436C0 (CInt(0), var_1A0, var_1A4)
  loc_138415B:     var_1A8 = var_1A0.Tag
  loc_1384188:     If ( And (var_D8.Tag Or (var_158 = var_1A4))) Then
  loc_138418F:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_13841C4:       var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(&HF)))) 'String
  loc_13841CB:       LateIdCallSt
  loc_1384216:       var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevName")), CVar(CLng(&HD)), CVar(CLng(var_8A)))) 'String
  loc_138421D:       LateIdCallSt
  loc_138422F:     End If
  loc_138425E:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_1384266:     var_158 = CVar(CLng(&H10)) 'Long
  loc_138427B:     var_118 = "Auto"
  loc_138429C:     var_178 = CVar(CStr(IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("AutoManual")), var_D4, var_118) = "A"), var_118, "Manual"))) 'String
  loc_13842A3:     LateIdCallSt
  loc_13842C6:     Set var_D4 = Nothing 
  loc_13842D0:     var_8A = (var_8A + 1)
  loc_13842D6:     var_88.MoveNext
  loc_13842DB:     GoTo loc_1383B4D
  loc_13842DE:   End If
  loc_13842DE:   var_A4 = 0
  loc_13842E8:   Set var_B8 = Me.FGrid
  loc_1384315:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1384318:     var_A4 = "1"
  loc_1384322:     Set var_B8 = Me.FGrid
  loc_1384333:   End If
  loc_1384333:   var_A4 = 1
  loc_1384346:   Me.FGrid.FixedRows = var_A4
  loc_1384351: Else
  loc_1384351:   Call Proc_109_64_F66A28(FGrid.DispID_10000, var_A4, FGrid.DispID_2E, var_A4, var_8A, var_D4)
  loc_1384356: End If
  loc_1384356: Call Proc_109_67_EBB594(var_178, var_158, var_108)
  loc_1384360: Set var_88 = Nothing
  loc_1384363: Exit Sub
  loc_1384364: ' Referenced from: 1383AD4
  loc_1384364: Proc_6_60_E62BC4(var_D4, var_118)
  loc_1384369: Exit Sub
End Sub
