VERSION 5.00
Begin VB.Form EmptyInbox
  Caption = "Inbox"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "EmptyInbox.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11610
  ClientHeight = 6705
  Begin CommandButton Command1
    Caption = "Exit"
    BackColor = &HC0E0FF&
    Left = 9990
    Top = 6075
    Width = 1380
    Height = 570
    TabIndex = 10
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin DataGrid DGSender
    Left = 1680
    Top = 870
    Width = 3630
    Height = 1305
    Visible = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGReceiver
    Left = 6255
    Top = 1080
    Width = 3630
    Height = 1305
    Visible = 0   'False
    TabIndex = 9
  End
  Begin CommandButton CmdShow
    Caption = "Show"
    BackColor = &HFDCAF5&
    Left = 4245
    Top = 225
    Width = 1380
    Height = 570
    TabIndex = 2
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1110
    Top = 450
    Width = 2685
    Height = 285
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1110
    Top = 135
    Width = 2685
    Height = 285
    TabIndex = 0
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
  Begin CommandButton BtnDelete
    Caption = "Delete"
    BackColor = &HC0E0FF&
    Left = 6525
    Top = 6090
    Width = 1380
    Height = 570
    TabIndex = 4
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton BtnClose
    Caption = "Close"
    BackColor = &HC0E0FF&
    Left = 8310
    Top = 6090
    Width = 1380
    Height = 570
    TabIndex = 5
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin MSHFlexGrid FGrid
    Left = 60
    Top = 810
    Width = 11505
    Height = 5160
    TabIndex = 3
  End
  Begin Label Label1
    Caption = "Receiver"
    Index = 0
    ForeColor = &HC00000&
    Left = 210
    Top = 465
    Width = 840
    Height = 240
    TabIndex = 7
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
    Caption = "Sender"
    Index = 4
    ForeColor = &HC00000&
    Left = 210
    Top = 150
    Width = 690
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
End

Attribute VB_Name = "EmptyInbox"


Private Sub Command1_Click() 'E15C24
  'Data Table: 4314CC
  loc_E15C19: Me.Global.Unload Me
  loc_E15C21: Exit Sub
  loc_E15C22: arg_542C = 
End Sub

Private Sub BtnDelete_Click() '10CBC7C
  'Data Table: 4314CC
  Dim var_A4 As Variant
  Dim unk_4314D3 As Connection15
  Dim var_11C As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As MSHFlexGrid
  Dim var_128 As String
  Dim var_150 As Double
  Dim var_12C As String
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  loc_10CB9A4: On Error Goto loc_10CBC19
  loc_10CB9AB: var_86 = CByte(0) 'Byte
  loc_10CB9BA: var_D4 = "Inbox Deleted..."
  loc_10CB9E6: If (MsgBox("Are you sure to delete selected mails.", &H144, var_D4, var_F4, var_114) = 7) Then
  loc_10CB9E9:   Exit Sub
  loc_10CB9EA: End If
  loc_10CB9F3: unk_4314D3.BeginTrans var_118
  loc_10CB9FC: var_86 = CByte(1) 'Byte
  loc_10CBA04: Set var_11C = Me.FGrid
  loc_10CBA22: For var_120 = 1 To CInt((CLng(var_11C.Rows) - 1)): var_8E = var_120 'Integer
  loc_10CBA2C:   var_A4 = CVar(CLng(var_8E)) 'Long
  loc_10CBA34:   var_E4 = CVar(CLng(3)) 'Long
  loc_10CBA5F:   If (CStr(Me.FGrid.TextMatrix)) = "ü") Then
  loc_10CBA66:     var_A4 = CVar(CLng(var_8E)) 'Long
  loc_10CBA6E:     var_E4 = CVar(CLng(1)) 'Long
  loc_10CBABC:     unk_4314D3.Execute "Delete from Messaging where vno=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & vbNullString, var_D4, -1
  loc_10CBB08:     var_150 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10CBB3C:     var_114 = "00000000"
  loc_10CBB45:     var_F4 = CVar(var_150) 'Double
  loc_10CBB7A:     var_128 = MemVar_1F92080 & "\"
  loc_10CBB81:     var_12C = var_128 & MemVar_1F9207C
  loc_10CBB96:     var_94 = var_12C & "\" & CStr(1 & Format(var_F4, var_114)) & ".WAV"
  loc_10CBBB0:     Call 0.Method_BtnDelete_Click4 (var_94, var_1D2, 1, CVar(CStr(var_11C.TextMatrix))), CVar(CLng(0)), CVar(CLng(var_8E)), var_150)
  loc_10CBBBB:     If (var_1D2 = &HFF) Then
  loc_10CBBC9:       Call 0.Method_arg_5C (var_94, 0, CVar(CLng(1)), CVar(CLng(var_8E)), var_148)
  loc_10CBBCE:     End If
  loc_10CBBCE:   End If
  loc_10CBBD1: Next var_120 'Integer
  loc_10CBBD8: Set var_11C = Nothing 
  loc_10CBBE2: unk_4314D3.CommitTrans
  loc_10CBC08: MsgBox("Inbox Message Deleted Successfully.", &H40, "Inbox Deleted...", var_F4, var_114)
  loc_10CBC18: Exit Sub
  loc_10CBC19: ' Referenced from: 10CB9A4
  loc_10CBC22: If (CInt(var_86) = 1) Then
  loc_10CBC2B:   unk_4314D3.RollbackTrans
  loc_10CBC30: End If
  loc_10CBC38: Set var_124 = Err()
  loc_10CBC3E: Call 0.Method_arg_2C (var_128)
  loc_10CBC49: Call 0.Method_arg_50 (var_12C)
  loc_10CBC65: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_F4, var_114)
  loc_10CBC78: Exit Sub
End Sub

Private Sub Form_Load() '114941C
  'Data Table: 4314CC
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim Me As Recordset15
  Dim var_D0 As TextBox
  Dim var_D8 As DataGrid
  Dim var_DC As TextBox
  Dim var_D4 As Long
  loc_114908B: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_114909D: Set var_B8 = Me.FGrid
  loc_11490A3: var_B8.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_11490B5: Set global_56 = New 
  loc_11490C7: Me.var_B8.CursorLocation = 3
  loc_11490F1: var_CC = CVar("Select user_name as Code,user_name as Name From USERMAST where user_name<>'" & MemVar_1F920C8 & "' Order by user_name") 'String
  loc_114910F: CVarUnk
  loc_1149114: VerifyVarObj
  loc_114911A: Set var_B8 = Me.DGSender
  loc_1149120: LateIdStAd
  loc_114914A: Me.DGSender.CursorLocation = 3
  loc_1149174: var_CC = CVar("Select user_name as Code,user_name as Name From USERMAST where user_name<>'" & MemVar_1F920C8 & "' Order by user_name") 'String
  loc_114917E: r_CC, CVar(MemVar_1F92044), 2 var_CC, CVar(MemVar_1F92044), 2
  loc_1149192: CVarUnk
  loc_1149197: VerifyVarObj
  loc_114919D: Set var_B8 = Me.DGReceiver
  loc_11491A3: LateIdStAd
  loc_11491BF: Set var_B8 = Me.Txt
  loc_11491C5: Call 0.Method_Form_Load0 (CInt(0), var_D0, var_D4, var_B8, New, 3)
  loc_11491CD: -1 = var_D0.Left
  loc_11491E4: Me.DGReceiver.Left = CVar(var_D4)
  loc_1149200: Set var_D8 = Me.Txt
  loc_1149206: Call 0.Method_Form_Load0 (CInt(0), var_DC, var_E0, var_B8)
  loc_114920E: global_56 = var_DC.Height
  loc_1149221: Set var_B8 = Me.Txt
  loc_1149227: Call 0.Method_Form_Load0 (CInt(0), var_D0, var_D4)
  loc_114922F: 3 = var_D0.Top
  loc_114923F: var_A4 = CVar(((var_D4 + var_E0) + CDbl(&H1E))) 'Single
  loc_114924E: Me.DGReceiver.Top = CVar(var_D4)
  loc_114926E: Set var_B8 = Me.Txt
  loc_1149274: Call 0.Method_Form_Load0 (CInt(1), var_D0)
  loc_1149293: Me.DGSender.Left = CVar(var_D0.Left)
  loc_11492AF: Set var_D8 = Me.Txt
  loc_11492B5: Call 0.Method_Form_Load0 (CInt(1), var_DC)
  loc_11492D0: Set var_B8 = Me.Txt
  loc_11492D6: Call 0.Method_Form_Load0 (CInt(1), var_D0)
  loc_11492EE: var_A4 = CVar(((var_D0.Top + var_DC.Height) + CDbl(&H1E))) 'Single
  loc_11492FD: Me.DGSender.Top = CVar(var_D0.Left)
  loc_114935D: SetWindowRgn(Me.CmdShow.hWnd, CLng(CVar(CreateRoundRectRgn(5, 4, &H58, &H23, &H12, &H28))), &HFF)
  loc_11493B4: SetWindowRgn(Me.BtnDelete.hWnd, CLng(CVar(CreateRoundRectRgn(5, 4, &H58, &H23, &H12, &H28))), &HFF)
  loc_11493FC: var_D4 = Me.BtnClose.hWnd
  loc_114940B: SetWindowRgn(var_D4, CLng(CVar(CreateRoundRectRgn(5, 4, &H58, &H23, &H12, &H28))), &HFF)
  loc_1149414: Call Proc_149_14_11228BC(var_D4, var_D4)
  loc_1149419: Exit Sub
End Sub

Private Sub BtnClose_Click() 'E19B14
  'Data Table: 4314CC
  loc_E19B09: Me.Global.Unload Me
  loc_E19B11: Exit Sub
  loc_E19B12: Set arg_546C = 
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10D3668
  'Data Table: 4314CC
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_10D3376: Set var_88 = Me.Txt
  loc_10D337C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10D338A: Proc_6_74_E226B0(var_8C)
  loc_10D3399: var_92 = Index
  loc_10D33A4: If (var_92 = CInt(1)) Then
  loc_10D33F5:   Set var_88 = Me.Txt
  loc_10D33FB:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_10D3403:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10D341B:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_10D341E:     Exit Sub
  loc_10D341F:   End If
  loc_10D342C:   Set var_88 = Me.Txt
  loc_10D3432:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10D343A:   var_A0 = var_8C.Text
  loc_10D3442:   var_D4 = CVar(var_A0) 'String
  loc_10D3487:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_10D3490:     Me.MoveFirst
  loc_10D34B5:     Set var_88 = Me.Txt
  loc_10D34BB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_10D34C3:     0 = var_8C.Text
  loc_10D34D1:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_10D34E7:     Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_10D34FF:   End If
  loc_10D3502: Else
  loc_10D350A:   If (var_92 = CInt(0)) Then
  loc_10D355B:     Set var_88 = Me.Txt
  loc_10D3561:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10D3581:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_10D3584:       Exit Sub
  loc_10D3585:     End If
  loc_10D3592:     Set var_88 = Me.Txt
  loc_10D3598:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10D35A0:     var_A0 = var_8C.Text
  loc_10D35A8:     var_D4 = CVar(var_A0) 'String
  loc_10D35ED:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_10D35F6:       Me.MoveFirst
  loc_10D361B:       Set var_88 = Me.Txt
  loc_10D3621:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_10D3629:       0 = var_8C.Text
  loc_10D3637:       Proc_6_17_EAA2B0(var_D4, CVar(var_A0))
  loc_10D364D:       Me.Find CStr(1 & var_D4), var_F8, 
  loc_10D3665:     End If
  loc_10D3665:   End If
  loc_10D3665: End If
  loc_10D3665: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F94C00
  'Data Table: 4314CC
  Dim var_86 As Integer
  loc_F94AAA: If (CLng(Shift) = &H1B) Then
  loc_F94AAD:   Call Proc_149_13_E84E50()
  loc_F94AB2:   Exit Sub
  loc_F94AB3: End If
  loc_F94AB6: var_86 = KeyCode
  loc_F94AC1: If (var_86 = CInt(1)) Then
  loc_F94ADC:   Set var_9C = Nothing
  loc_F94AE7:   Set var_98 = Nothing
  loc_F94B15:   Proc_6_69_134A198(Me.DGSender, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_F94B2C: Else
  loc_F94B34:   If (var_86 = CInt(0)) Then
  loc_F94B4F:     Set var_9C = Nothing
  loc_F94B88:     Proc_6_69_134A198(Me.DGReceiver, Me.Txt, KeyCode, global_52, Shift, 0, 1, Nothing)
  loc_F94B9C:   End If
  loc_F94B9C: End If
  loc_F94BD7: If ((CBool(Me.DGReceiver.Visible) = 0) And (CBool(Me.DGSender.Visible) = 0)) Then
  loc_F94BEF:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F94BF8:     Proc_6_75_E527CC(Shift, arg_14, var_9C, 0, 1)
  loc_F94BFD:   End If
  loc_F94BFD: End If
  loc_F94BFD: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EEB218
  'Data Table: 4314CC
  Dim var_86 As Integer
  loc_EEB153: var_86 = KeyCode
  loc_EEB15E: If (var_86 = CInt(1)) Then
  loc_EEB17D:   If (CBool(Me.DGSender.Visible) = &HFF) Then
  loc_EEB18A:     var_A0 = "Name"
  loc_EEB1A5:     Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_56)
  loc_EEB1B4:   End If
  loc_EEB1B7: Else
  loc_EEB1BF:   If (var_86 = CInt(0)) Then
  loc_EEB1DE:     If (CBool(Me.DGReceiver.Visible) = &HFF) Then
  loc_EEB1EB:       var_A0 = "Name"
  loc_EEB206:       Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_52, Shift)
  loc_EEB215:     End If
  loc_EEB215:   End If
  loc_EEB215: End If
  loc_EEB215: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C2BC
  'Data Table: 4314CC
  loc_E4C29A: Set var_88 = Me.Txt
  loc_E4C2A0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C2AE: Proc_6_73_E22704(var_8C)
  loc_E4C2BA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '11AD6FC
  'Data Table: 4314CC
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim var_C4 As TextBox
  loc_11AD2C7: var_86 = Cancel
  loc_11AD2D2: If (var_86 = CInt(0)) Then
  loc_11AD2F1:   If (CBool(Me.DGReceiver.Visible) = 0) Then
  loc_11AD2FE:     Set var_8C = Me.Txt
  loc_11AD304:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_11AD30C:     var_A8 = "Receiver Name"
  loc_11AD32D:     If (Proc_6_27_EA565C(var_A0, var_A8) = 0) Then
  loc_11AD33A:       Set var_8C = Me.Txt
  loc_11AD340:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_11AD348:       var_A0.SetFocus
  loc_11AD356:       arg_10 = &HFF
  loc_11AD359:       Exit Sub
  loc_11AD35A:     End If
  loc_11AD35A:   End If
  loc_11AD3A8:   Set var_8C = Me.Txt
  loc_11AD3AE:   Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A8)
  loc_11AD3B6:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_11AD3CE:   If (arg_10 Or (var_A8 = vbNullString)) Then
  loc_11AD3DE:     Set var_8C = Me.Txt
  loc_11AD3E4:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_11AD3EC:     var_A0.Text = vbNullString
  loc_11AD405:     Set var_8C = Me.Txt
  loc_11AD40B:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_11AD413:     var_A0.Tag = vbNullString
  loc_11AD422:   Else
  loc_11AD45D:     Set var_A4 = Me.Txt
  loc_11AD463:     Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_11AD46B:     var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11AD49E:     var_A0 = Me.Fields.Item("Code")
  loc_11AD4BC:     Set var_A4 = Me.Txt
  loc_11AD4C2:     Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_11AD4CA:     var_C4.Tag = CStr(var_A0.Value)
  loc_11AD4E0:   End If
  loc_11AD4E3: Else
  loc_11AD4EB:   If (var_86 = CInt(1)) Then
  loc_11AD50A:     If (CBool(Me.DGSender.Visible) = 0) Then
  loc_11AD517:       Set var_8C = Me.Txt
  loc_11AD51D:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_11AD525:       var_A8 = "Sender Name"
  loc_11AD546:       If (Proc_6_27_EA565C(var_A0, var_A8) = 0) Then
  loc_11AD553:         Set var_8C = Me.Txt
  loc_11AD559:         Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_11AD561:         var_A0.SetFocus
  loc_11AD56F:         arg_10 = &HFF
  loc_11AD572:         Exit Sub
  loc_11AD573:       End If
  loc_11AD573:     End If
  loc_11AD5C1:     Set var_8C = Me.Txt
  loc_11AD5C7:     Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A8)
  loc_11AD5CF:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_11AD5E7:     If (arg_10 Or (var_A8 = vbNullString)) Then
  loc_11AD5F7:       Set var_8C = Me.Txt
  loc_11AD5FD:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_11AD605:       var_A0.Text = vbNullString
  loc_11AD61E:       Set var_8C = Me.Txt
  loc_11AD624:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_11AD62C:       var_A0.Tag = vbNullString
  loc_11AD63B:     Else
  loc_11AD676:       Set var_A4 = Me.Txt
  loc_11AD67C:       Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_11AD684:       var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11AD6D5:       Set var_A4 = Me.Txt
  loc_11AD6DB:       Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_11AD6E3:       var_C4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_11AD6F9:     End If
  loc_11AD6F9:   End If
  loc_11AD6F9: End If
  loc_11AD6F9: Exit Sub
End Sub

Private Sub CmdShow_Click() '12A7500
  'Data Table: 4314CC
  Dim var_94 As Variant
  Dim var_A0 As String
  Dim var_AC As String
  Dim var_A4 As Variant
  Dim unk_4314D3 As Connection15
  Dim var_8A As Integer
  Dim var_C4 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_D4 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_98 As Fields15
  Dim var_114 As Variant
  Dim var_104 As Variant
  Dim var_194 As Variant
  Dim var_164 As Variant
  loc_12A6F0F: Set var_90 = Me.Txt
  loc_12A6F15: Call 0.Method_CmdShow_Click0 (CInt(0))
  loc_12A6F3E: If (Proc_6_27_EA565C(var_94, "Receiver Name") = 0) Then
  loc_12A6F4C:   Set var_90 = Me.Txt
  loc_12A6F52:   Call 0.Method_CmdShow_Click0 (CInt(0), var_94)
  loc_12A6F5A:   var_94.SetFocus
  loc_12A6F66:   Exit Sub
  loc_12A6F67: End If
  loc_12A6F72: Set var_90 = Me.Txt
  loc_12A6F78: Call 0.Method_CmdShow_Click0 (CInt(1), var_94)
  loc_12A6F80: var_9C = "Sender Name"
  loc_12A6FA1: If (Proc_6_27_EA565C(var_94, var_9C) = 0) Then
  loc_12A6FAF:   Set var_90 = Me.Txt
  loc_12A6FB5:   Call 0.Method_CmdShow_Click0 (CInt(1), var_94)
  loc_12A6FBD:   var_94.SetFocus
  loc_12A6FC9:   Exit Sub
  loc_12A6FCA: End If
  loc_12A6FE8: Set var_90 = Me.Txt
  loc_12A6FEE: Call 0.Method_CmdShow_Click0 (CInt(1), var_94, var_9C, "Select * from Messaging where Sender='")
  loc_12A6FF6: var_D4 = var_94.Tag
  loc_12A6FFF: var_A0 = -1 & var_9C
  loc_12A7006: var_AC = var_A0 & "' and Receiver='"
  loc_12A7017: Set var_98 = Me.Txt
  loc_12A701D: Call 0.Method_CmdShow_Click0 (CInt(0), var_A4, var_A8)
  loc_12A7025: var_AC = var_A4.Tag
  loc_12A703E: unk_4314D3.Execute var_D8 & var_A8 & "' and Cleared='Y'", var_94, 
  loc_12A7049: Set var_88 = var_D8
  loc_12A706F: Set var_DC = Me.FGrid
  loc_12A7074: var_8A = 1
  loc_12A7083: var_DC.Rows = 1
  loc_12A709C: If (var_88.RecordCount > 0) Then
  loc_12A709F:   ' Referenced from: 12A74D1
  loc_12A70AE:   If Not(var_88.EOF) Then
  loc_12A70B1:     var_C4 = vbNullString
  loc_12A70F1:     var_154 = CVar(CLng(var_8A)) 'Long
  loc_12A70F9:     var_174 = CVar(CLng(0)) 'Long
  loc_12A713F:     var_194 = CVar(CStr(IIf(IsNull(CVar(var_88.Fields.Item("vType"))), vbNullString, CVar(var_88.Fields.Item("vType"))))) 'String
  loc_12A7146:     LateIdCallSt
  loc_12A7193:     var_154 = CVar(CLng(var_8A)) 'Long
  loc_12A719B:     var_174 = CVar(CLng(1)) 'Long
  loc_12A71E1:     var_194 = CVar(CStr(IIf(IsNull(CVar(var_88.Fields.Item("VNo"))), vbNullString, CVar(var_88.Fields.Item("VNo"))))) 'String
  loc_12A71E8:     LateIdCallSt
  loc_12A720A:     var_C4 = CVar(CLng(var_8A)) 'Long
  loc_12A7212:     var_104 = CVar(CLng(2)) 'Long
  loc_12A721C:     var_D4 = CVar(CStr(var_8A)) 'String
  loc_12A7223:     LateIdCallSt
  loc_12A7232:     var_C4 = CVar(CLng(var_8A)) 'Long
  loc_12A723A:     var_104 = CVar(CLng(3)) 'Long
  loc_12A723F:     var_154 = vbNullString
  loc_12A7248:     LateIdCallSt
  loc_12A7254:     var_114 = CVar(CLng(var_8A)) 'Long
  loc_12A725C:     var_164 = CVar(CLng(4)) 'Long
  loc_12A72C3:     var_194 = CVar(CStr(var_88.Fields.Item("VDate").Value & " " & var_88.Fields.Item("VTIME").Value)) 'String
  loc_12A72CA:     LateIdCallSt
  loc_12A72EE:     var_114 = CVar(CLng(var_8A)) 'Long
  loc_12A72F6:     var_164 = CVar(CLng(5)) 'Long
  loc_12A735D:     var_194 = CVar(CStr(var_88.Fields.Item("ReadDate").Value & " " & var_88.Fields.Item("ReadTime").Value)) 'String
  loc_12A7364:     LateIdCallSt
  loc_12A7388:     var_114 = CVar(CLng(var_8A)) 'Long
  loc_12A7390:     var_164 = CVar(CLng(6)) 'Long
  loc_12A73F7:     var_194 = CVar(CStr(var_88.Fields.Item("ClearedDate").Value & " " & var_88.Fields.Item("ClearedTime").Value)) 'String
  loc_12A73FE:     LateIdCallSt
  loc_12A744D:     var_154 = CVar(CLng(var_8A)) 'Long
  loc_12A7455:     var_174 = CVar(CLng(7)) 'Long
  loc_12A749B:     var_194 = CVar(CStr(IIf(IsNull(CVar(var_88.Fields.Item("Message"))), vbNullString, CVar(var_88.Fields.Item("Message"))))) 'String
  loc_12A74A2:     LateIdCallSt
  loc_12A74C3:     var_88.MoveNext
  loc_12A74CE:     var_8A = (var_8A + 1)
  loc_12A74D1:     GoTo loc_12A709F
  loc_12A74D4:   End If
  loc_12A74D7: Else
  loc_12A74D7:   var_C4 = vbNullString
  loc_12A74E8: End If
  loc_12A74F4: var_DC.FixedRows = 1
  loc_12A74FB: Set var_DC = Nothing 
  loc_12A74FF: Exit Sub
End Sub

Private Sub DGSender_UnknownEvent_9 'FA9618
  'Data Table: 4314CC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_FA9498: On Error Goto loc_FA95B2
  loc_FA94AA: Me.DGSender.Visible = False
  loc_FA94BB: var_AC = Me.RecordCount
  loc_FA94C9: If (var_AC > 0) Then
  loc_FA9508:   Set var_B4 = Me.Txt
  loc_FA950E:   Call 0.Method_DGSender_UnknownEvent_90 (CInt(1), var_B8)
  loc_FA9516:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA9549:   var_B0 = Me.Fields.Item("Code")
  loc_FA955A:   var_CC = CStr(var_B0.Value)
  loc_FA9568:   Set var_B4 = Me.Txt
  loc_FA956E:   Call 0.Method_DGSender_UnknownEvent_90 (CInt(1), var_B8)
  loc_FA9576:   var_B8.Tag = var_CC
  loc_FA958C: End If
  loc_FA9597: Set var_A8 = Me.Txt
  loc_FA959D: Call 0.Method_DGSender_UnknownEvent_90 (CInt(1))
  loc_FA95A5: var_B0.SetFocus
  loc_FA95B1: Exit Sub
  loc_FA95B2: ' Referenced from: FA9498
  loc_FA95BA: Set var_A8 = Err()
  loc_FA95C0: Call 0.Method_arg_1C (var_AC)
  loc_FA95D1: If (var_AC <> 0) Then
  loc_FA95DC:   Set var_A8 = Err()
  loc_FA95E2:   Call 0.Method_arg_2C (var_CC)
  loc_FA9603:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FA9616: End If
  loc_FA9616: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'FB22E4
  'Data Table: 4314CC
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  loc_FB2181: If (CLng(Me.FGrid.Col) <> CLng(3)) Then
  loc_FB2184:   Exit Sub
  loc_FB2185: End If
  loc_FB2198: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB21A0: var_C8 = CVar(CLng(1)) 'Long
  loc_FB21D3: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_FB21D6:   Exit Sub
  loc_FB21D7: End If
  loc_FB21E9: Me.FGrid.Col = CVar(CLng(3))
  loc_FB2201: Me.FGrid.CellFontName = "wingdings"
  loc_FB221B: Me.FGrid.CellFontSize = CVar(CDbl(&H10))
  loc_FB2236: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB223E: var_C8 = CVar(CLng(3)) 'Long
  loc_FB226C: var_174 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB2274: var_194 = CVar(CLng(3)) 'Long
  loc_FB22AB: var_1B4 = CVar(CStr(IIf((CStr(Me.FGrid.TextMatrix)) = " "), "ü", " "))) 'String
  loc_FB22B3: Set var_1C8 = Me.FGrid
  loc_FB22B9: LateIdCallSt
  loc_FB22E2: Exit Sub
End Sub

Private Sub DGReceiver_UnknownEvent_9 'FA9444
  'Data Table: 4314CC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_FA92C4: On Error Goto loc_FA93DE
  loc_FA92D6: Me.DGReceiver.Visible = False
  loc_FA92E7: var_AC = Me.RecordCount
  loc_FA92F5: If (var_AC > 0) Then
  loc_FA9334:   Set var_B4 = Me.Txt
  loc_FA933A:   Call 0.Method_DGReceiver_UnknownEvent_90 (CInt(0), var_B8)
  loc_FA9342:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA9375:   var_B0 = Me.Fields.Item("Code")
  loc_FA9386:   var_CC = CStr(var_B0.Value)
  loc_FA9394:   Set var_B4 = Me.Txt
  loc_FA939A:   Call 0.Method_DGReceiver_UnknownEvent_90 (CInt(0), var_B8)
  loc_FA93A2:   var_B8.Tag = var_CC
  loc_FA93B8: End If
  loc_FA93C3: Set var_A8 = Me.Txt
  loc_FA93C9: Call 0.Method_DGReceiver_UnknownEvent_90 (CInt(0))
  loc_FA93D1: var_B0.SetFocus
  loc_FA93DD: Exit Sub
  loc_FA93DE: ' Referenced from: FA92C4
  loc_FA93E6: Set var_A8 = Err()
  loc_FA93EC: Call 0.Method_arg_1C (var_AC)
  loc_FA93FD: If (var_AC <> 0) Then
  loc_FA9408:   Set var_A8 = Err()
  loc_FA940E:   Call 0.Method_arg_2C (var_CC)
  loc_FA942F:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FA9442: End If
  loc_FA9442: Exit Sub
End Sub

Public Sub Proc_149_13_E84E50
  'Data Table: 4314CC
  loc_E84DFC: If (CBool(Me.DGSender.Visible) = &HFF) Then
  loc_E84E0E:   Me.DGSender.Visible = False
  loc_E84E16: End If
  loc_E84E32: If (CBool(Me.DGReceiver.Visible) = &HFF) Then
  loc_E84E44:   Me.DGReceiver.Visible = False
  loc_E84E4C: End If
  loc_E84E4C: Exit Sub
End Sub

Public Sub Proc_149_14_11228BC
  'Data Table: 4314CC
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  loc_112254C: Set var_88 = Me.FGrid
  loc_112255B: var_88.FixedRows = 1
  loc_1122570: var_C8 = CVar(CLng(var_88.BackColor)) 'Variant
  loc_1122583: var_88.Cols = 8
  loc_1122594: var_88.FixedCols = 1
  loc_11225A5: var_88.RowHeightMin = &H12C
  loc_11225AD: var_98 = CVar(CLng(0)) 'Long
  loc_11225B2: var_D8 = 0
  loc_11225BE: LateIdCallSt
  loc_11225C9: var_98 = CVar(CLng(1)) 'Long
  loc_11225CE: var_D8 = 0
  loc_11225DA: LateIdCallSt
  loc_11225E2: var_98 = 0
  loc_11225EE: var_D8 = CVar(CLng(2)) 'Long
  loc_11225F3: var_F8 = "SlNo."
  loc_11225FC: LateIdCallSt
  loc_1122607: var_98 = CVar(CLng(2)) 'Long
  loc_1122612: var_D8 = CVar(CInt(7)) 'Integer
  loc_1122619: LateIdCallSt
  loc_1122624: var_98 = CVar(CLng(2)) 'Long
  loc_112262F: var_D8 = CVar(CInt(7)) 'Integer
  loc_1122636: LateIdCallSt
  loc_1122641: var_98 = CVar(CLng(2)) 'Long
  loc_1122646: var_D8 = &H1F4
  loc_1122652: LateIdCallSt
  loc_112265A: var_98 = 0
  loc_1122666: var_D8 = CVar(CLng(3)) 'Long
  loc_112266B: var_F8 = "Del."
  loc_1122674: LateIdCallSt
  loc_112267F: var_98 = CVar(CLng(3)) 'Long
  loc_112268A: var_D8 = CVar(CInt(7)) 'Integer
  loc_1122691: LateIdCallSt
  loc_112269C: var_98 = CVar(CLng(3)) 'Long
  loc_11226A7: var_D8 = CVar(CInt(7)) 'Integer
  loc_11226AE: LateIdCallSt
  loc_11226B9: var_98 = CVar(CLng(3)) 'Long
  loc_11226BE: var_D8 = &H1C2
  loc_11226CA: LateIdCallSt
  loc_11226D2: var_98 = 0
  loc_11226DE: var_D8 = CVar(CLng(4)) 'Long
  loc_11226E3: var_F8 = "Send Dt./Time"
  loc_11226EC: LateIdCallSt
  loc_11226F7: var_98 = CVar(CLng(4)) 'Long
  loc_1122702: var_D8 = CVar(CInt(1)) 'Integer
  loc_1122709: LateIdCallSt
  loc_1122714: var_98 = CVar(CLng(4)) 'Long
  loc_112271F: var_D8 = CVar(CInt(1)) 'Integer
  loc_1122726: LateIdCallSt
  loc_1122731: var_98 = CVar(CLng(4)) 'Long
  loc_1122736: var_D8 = &H79E
  loc_1122742: LateIdCallSt
  loc_112274A: var_98 = 0
  loc_1122756: var_D8 = CVar(CLng(5)) 'Long
  loc_112275B: var_F8 = "Read Dt./Time"
  loc_1122764: LateIdCallSt
  loc_112276F: var_98 = CVar(CLng(5)) 'Long
  loc_112277A: var_D8 = CVar(CInt(1)) 'Integer
  loc_1122781: LateIdCallSt
  loc_112278C: var_98 = CVar(CLng(5)) 'Long
  loc_1122797: var_D8 = CVar(CInt(1)) 'Integer
  loc_112279E: LateIdCallSt
  loc_11227A9: var_98 = CVar(CLng(5)) 'Long
  loc_11227AE: var_D8 = &H79E
  loc_11227BA: LateIdCallSt
  loc_11227C2: var_98 = 0
  loc_11227CE: var_D8 = CVar(CLng(6)) 'Long
  loc_11227D3: var_F8 = "Deleted Dt./Time"
  loc_11227DC: LateIdCallSt
  loc_11227E7: var_98 = CVar(CLng(6)) 'Long
  loc_11227F2: var_D8 = CVar(CInt(1)) 'Integer
  loc_11227F9: LateIdCallSt
  loc_1122804: var_98 = CVar(CLng(6)) 'Long
  loc_112280F: var_D8 = CVar(CInt(1)) 'Integer
  loc_1122816: LateIdCallSt
  loc_1122821: var_98 = CVar(CLng(6)) 'Long
  loc_1122826: var_D8 = &H79E
  loc_1122832: LateIdCallSt
  loc_112283A: var_98 = 0
  loc_1122846: var_D8 = CVar(CLng(7)) 'Long
  loc_112284B: var_F8 = "Message"
  loc_1122854: LateIdCallSt
  loc_112285F: var_98 = CVar(CLng(7)) 'Long
  loc_112286A: var_D8 = CVar(CInt(1)) 'Integer
  loc_1122871: LateIdCallSt
  loc_112287C: var_98 = CVar(CLng(7)) 'Long
  loc_1122887: var_D8 = CVar(CInt(1)) 'Integer
  loc_112288E: LateIdCallSt
  loc_1122899: var_98 = CVar(CLng(7)) 'Long
  loc_112289E: var_D8 = &H10CC
  loc_11228AA: LateIdCallSt
  loc_11228B4: Set var_88 = Nothing 
  loc_11228B8: Exit Sub
End Sub
