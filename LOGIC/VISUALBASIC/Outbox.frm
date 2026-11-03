VERSION 5.00
Begin VB.Form Outbox
  Caption = "Intelligent Outbox"
  BackColor = &HE0E0E0&
  ForeColor = &H404040&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  BorderStyle = 1 'Fixed Single
  Icon = "Outbox.frx":0
  LinkTopic = "form4"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 615
  ClientWidth = 11145
  ClientHeight = 6975
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin Frame Frame1
    Caption = "Frame1"
    BackColor = &HF5F0E2&
    Left = -30
    Top = 0
    Width = 10890
    Height = 6930
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Begin CheckBox cmdSend
      Caption = "Send"
      BackColor = &H4000&
      ForeColor = &HFFFF&
      Left = 7350
      Top = 6015
      Width = 1560
      Height = 825
      TabIndex = 14
      Appearance = 0 'Flat
      Picture = "Outbox.frx":442
      Style = 1
    End
    Begin CheckBox BtnClose
      Caption = "Exit"
      BackColor = &H4000&
      ForeColor = &HFFFF&
      Left = 9045
      Top = 6015
      Width = 1620
      Height = 825
      TabIndex = 13
      Appearance = 0 'Flat
      Picture = "Outbox.frx":14C4
      Style = 1
    End
    Begin DataGrid DGName
      Left = 3330
      Top = 675
      Width = 3630
      Height = 2265
      Visible = 0   'False
      TabIndex = 10
    End
    Begin TextBox Txt
      Index = 3
      Left = 150
      Top = 885
      Width = 10560
      Height = 4935
      TabIndex = 2
      BorderStyle = 0 'None
      MultiLine = -1  'True
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
    Begin TextBox Txt
      Index = 2
      Left = 1050
      Top = 90
      Width = 9660
      Height = 240
      TabIndex = 0
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
    Begin TextBox Txt
      Index = 1
      Left = 1050
      Top = 360
      Width = 9660
      Height = 240
      TabIndex = 1
      BorderStyle = 0 'None
      MaxLength = 50
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
    Begin Label Label1
      Caption = "Message"
      Index = 5
      ForeColor = &H0&
      Left = 135
      Top = 615
      Width = 855
      Height = 240
      TabIndex = 9
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
    Begin Label Label1
      Caption = "To"
      Index = 4
      ForeColor = &H0&
      Left = 135
      Top = 105
      Width = 225
      Height = 210
      TabIndex = 8
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Subject"
      Index = 1
      ForeColor = &H0&
      Left = 135
      Top = 375
      Width = 705
      Height = 210
      TabIndex = 7
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin DataGrid DGMem
    Left = 6990
    Top = 8430
    Width = 4155
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin MSHFlexGrid FGrid
    Left = 0
    Top = 0
    Width = 10785
    Height = 5895
    TabIndex = 3
  End
  Begin CheckBox BtnExit
    Caption = "Exit"
    BackColor = &H4000&
    ForeColor = &HFFFF&
    Left = 1935
    Top = 6030
    Width = 1620
    Height = 585
    TabIndex = 12
    Appearance = 0 'Flat
    Style = 1
  End
  Begin CheckBox BtnCompose
    Caption = "Compose"
    BackColor = &H4000&
    ForeColor = &HFFFF&
    Left = 240
    Top = 6030
    Width = 1560
    Height = 585
    TabIndex = 11
    Appearance = 0 'Flat
    Style = 1
  End
  Begin Label LblLogInDate
    Caption = "LogIn Date"
    ForeColor = &H0&
    Left = 3705
    Top = 6930
    Width = 1035
    Height = 210
    Visible = 0   'False
    TabIndex = 5
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "Outbox"

Private global_76 As Integer

Private Sub btnExit_Click() 'E5C7DC
  'Data Table: 43C5D4
  loc_E5C7AF: If (Me.BtnExit.Value = 1) Then
  loc_E5C7BE:   Me.BtnExit.Value = 0
  loc_E5C7D3:   Me.Global.Unload Me
  loc_E5C7DB: End If
  loc_E5C7DB: Exit Sub
End Sub

Private Sub cmdSend_Click() '12D5938
  'Data Table: 43C5D4
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim var_E4 As Variant
  Dim unk_43C5F4 As Connection15
  Dim var_9C As Field20
  Dim var_114 As Variant
  Dim var_11C As String
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_210 As Variant
  Dim var_294 As Variant
  Dim var_304 As Variant
  Dim var_354 As Variant
  Dim var_398 As String
  Dim var_264 As TextBox
  Dim var_2D4 As Variant
  Dim var_324 As Variant
  Dim var_3B8 As Variant
  Dim var_3D4 As String
  loc_12D5353: If (Me.cmdSend.Value = 1) Then
  loc_12D5362:   Me.cmdSend.Value = 0
  loc_12D5375:   Set var_90 = Me.Txt
  loc_12D537B:   Call 0.Method_cmdSend_Click0 (CInt(3))
  loc_12D53A4:   If (Proc_6_27_EA565C(var_98, "Message") = 0) Then
  loc_12D53A7:     Exit Sub
  loc_12D53A8:   End If
  loc_12D53B3:   Set var_90 = Me.Txt
  loc_12D53B9:   Call 0.Method_cmdSend_Click0 (CInt(2), var_98)
  loc_12D53E2:   If (Proc_6_27_EA565C(var_98, "Receiver") = 0) Then
  loc_12D53E5:     Exit Sub
  loc_12D53E6:   End If
  loc_12D53F4:   Set var_90 = Me.Txt
  loc_12D53FA:   Call 0.Method_cmdSend_Click0 (CInt(2), var_98)
  loc_12D5416:   var_C0 = ","
  loc_12D5422:   var_D0 = Split(var_98.Text, var_C0, -1, 0)
  loc_12D5434:   var_88 = var_D0
  loc_12D544D:   var_E4 = 0
  loc_12D546C:   unk_43C5F4.Execute "Select max(VNo) From Messaging Where VType='INBOX'", var_C0, -1
  loc_12D5474:   var_90 = var_90.Fields
  loc_12D547C:   var_E4 = var_98.Item(var_98)
  loc_12D5484:   var_9C = var_9C.Value
  loc_12D548F:   Proc_6_39_E7C810(var_F4, var_D0)
  loc_12D549C:   var_114 = (var_F4 + 1)
  loc_12D54A4:   global_76 = CInt(var_114)
  loc_12D54C8:   For var_118 = 0 To CInt(UBound(var_88, 1)): var_8A = var_118 'Integer
  loc_12D54D7:     unk_43C5F4.BeginTrans var_D4
  loc_12D54E4:     If (MemVar_1F923AC = "A") Then
  loc_12D54F2:       Proc_6_7_F25D88(var_C0, MemVar_1F920EC, 0)
  loc_12D5532:       Proc_6_17_EAA2B0(var_1E0, var_88(CLng(var_8A)), 1, 1)
  loc_12D5545:       Set var_90 = Me.Txt
  loc_12D554B:       Call 0.Method_cmdSend_Click0 (CInt(1), var_98, global_76)
  loc_12D555A:       Proc_6_17_EAA2B0(var_230, CVar(var_98))
  loc_12D556A:       Set var_9C = Me.Txt
  loc_12D5570:       Call 0.Method_cmdSend_Click0 (CInt(3), var_264)
  loc_12D557F:       Proc_6_17_EAA2B0(var_284, CVar(var_264))
  loc_12D558F:       Proc_6_17_EAA2B0(var_2D4, MemVar_1F920C8)
  loc_12D55A2:       Proc_6_7_F25D88(var_324, Date)
  loc_12D55C3:       var_11C = "Insert Into Messaging (VType,VNO,VDate,VTime,Sender,Receiver,Cleared , ClearedDate, ClearedTime, ReadYN, ReadDate, ReadTime, Subject, Message, U_Name, U_EntDt, Site_Code, U_AE) Values ('INBOX'," & CStr(global_76)
  loc_12D560C:       var_210 = CVar(var_11C & ",") & var_C0 & ",'" & Format(Now, "hh:mm") & "','" & CVar(MemVar_1F920C8) & "'," & var_1E0 & ",'N',Null,Null,'N',Null,Null," 
  loc_12D563C:       var_304 = var_210 & var_230 & "," & var_284 & "," & var_2D4 & "," 
  loc_12D564C:       var_354 = var_304 & var_324 & ",'" 
  loc_12D5663:       var_398 = CStr(var_354 & CVar(MemVar_1F92070) & "','A')")
  loc_12D566D:       unk_43C5F4.Execute var_398, var_3B8, -1
  loc_12D56CA:     Else
  loc_12D56D5:       Proc_6_7_F25D88(var_C0, MemVar_1F920EC, var_3BC)
  loc_12D5715:       Proc_6_17_EAA2B0(var_1E0, var_88(CLng(var_8A)), 1)
  loc_12D5728:       Set var_90 = Me.Txt
  loc_12D572E:       Call 0.Method_cmdSend_Click0 (CInt(1), var_98, 1)
  loc_12D573D:       Proc_6_17_EAA2B0(var_230, CVar(var_98))
  loc_12D5750:       Set var_9C = Me.Txt
  loc_12D5756:       Call 0.Method_cmdSend_Click0 (CInt(3), var_264, var_398)
  loc_12D575E:       var_D0 = var_264.Text
  loc_12D5792:       var_294 = (Chr(&HD) + Chr(&HA))
  loc_12D57A5:       var_3E8 = Replace(var_398, vbCrLf, CStr(var_210 & var_230 & "," & Chr(&HA)), 1, -1, 0)
  loc_12D57B3:       Proc_6_17_EAA2B0(var_304, MemVar_1F920C8)
  loc_12D57C6:       Proc_6_7_F25D88(var_354, Date)
  loc_12D57E7:       var_11C = "Insert Into Messaging (VType,VNO,VDate,VTime,Sender,Receiver,Cleared , ClearedDate, ClearedTime, ReadYN, ReadDate, ReadTime, Subject, Message, U_Name, U_EntDt, Site_Code, U_AE) Values ('INBOX'," & CStr(global_76)
  loc_12D5830:       var_210 = CVar(var_11C & ",") & var_C0 & ",'" & Format(Now, "hh:mm") & "','" & CVar(MemVar_1F920C8) & "'," & var_1E0 & ",'N',Null,Null,'N',Null,Null," 
  loc_12D588A:       var_3D4 = CStr(var_210 & var_230 & ",'" & CVar(var_3E8) & "'," & var_304 & "," & var_354 & ",'" & CVar(MemVar_1F92070) & "','A')")
  loc_12D5894:       unk_43C5F4.Execute var_3D4, var_3E4, -1
  loc_12D58FA:     End If
  loc_12D5900:     unk_43C5F4.CommitTrans
  loc_12D5911:     global_76 = (global_76 + 1)
  loc_12D5917:   Next var_118 'Integer
  loc_12D5928:   Me.Frame1.Visible = False
  loc_12D5930:   Call Proc_301_16_11F0F64()
  loc_12D5935: End If
  loc_12D5935: Exit Sub
End Sub

Private Sub BtnClose_Click() 'E5C6E4
  'Data Table: 43C5D4
  loc_E5C6B7: If (Me.BtnClose.Value = 1) Then
  loc_E5C6C6:   Me.BtnClose.Value = 0
  loc_E5C6DA:   Me.Frame1.Visible = False
  loc_E5C6E2: End If
  loc_E5C6E2: Exit Sub
End Sub

Private Sub BtnCompose_Click() 'E79E88
  'Data Table: 43C5D4
  loc_E79E3F: If (Me.BtnCompose.Value = 1) Then
  loc_E79E4E:   Me.BtnCompose.Value = 0
  loc_E79E62:   Me.Frame1.Visible = True
  loc_E79E7A:   Me.Frame1.ZOrder 0
  loc_E79E82:   Call Proc_301_16_11F0F64()
  loc_E79E87: End If
  loc_E79E87: Exit Sub
End Sub

Private Sub Form_Load() 'FE76E0
  'Data Table: 43C5D4
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As TextBox
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C4 As DataGrid
  Dim var_D8 As Variant
  Dim Me As Recordset15
  loc_FE7504: On Error Goto loc_FE76D9
  loc_FE7511: Set global_52 = New 
  loc_FE7523: Me.Recordset15.CursorLocation = 3
  loc_FE752F: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_FE7547: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_FE7553: var_9C = CVar(CLng(MemVar_1F921B0)) 'Long
  loc_FE755C: Set var_8C = Me.DGName
  loc_FE7571: Call 0.Method_arg_7C (CDbl(0), DGName.DispID_FFFFFE0B)
  loc_FE757D: Call 0.Method_arg_74 (CDbl(0))
  loc_FE758A: Call 0.Method_MeC (CDbl(9180))
  loc_FE7597: Call 0.Method_Me4 (CDbl(11000))
  loc_FE75AA: Set var_8C = Me.Txt
  loc_FE75B0: Call 0.Method_Form_Load0 (CInt(2), var_B0)
  loc_FE75CF: Me.DGName.Left = CVar(var_B0.Left)
  loc_FE75EB: Set var_B8 = Me.Txt
  loc_FE75F1: Call 0.Method_Form_Load0 (CInt(2), var_BC)
  loc_FE760C: Set var_8C = Me.Txt
  loc_FE7612: Call 0.Method_Form_Load0 (CInt(2), var_B0)
  loc_FE762A: var_9C = CVar(((var_B0.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_FE7633: Set var_C4 = Me.DGName
  loc_FE7639: var_C4.Top = CVar(var_B0.Left)
  loc_FE764B: Call Proc_301_15_10E2028(CVar(var_B0.Left))
  loc_FE766C: Me.var_C4.CursorLocation = 3
  loc_FE7696: var_D8 = CVar("Select user_name as Code,user_name as Name From USERMAST where user_name<>'" & MemVar_1F920C8 & "' Order by user_name") 'String
  loc_FE76A0: Me.Open var_D8, CVar(MemVar_1F92044), 2
  loc_FE76B4: CVarUnk
  loc_FE76B9: VerifyVarObj
  loc_FE76C5: LateIdStAd
  loc_FE76D3: Call Proc_301_16_11F0F64(Me.DGName, New)
  loc_FE76D8: Exit Sub
  loc_FE76D9: ' Referenced from: FE7504
  loc_FE76D9: Proc_6_60_E62BC4(3)
  loc_FE76DE: Exit Sub
End Sub

Private Sub Form_Resize() 'DFD324
  'Data Table: 43C5D4
  loc_DFD320: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1075C
  'Data Table: 43C5D4
  loc_E10753: Set global_52 = Nothing
  loc_E1075A: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FB4320
  'Data Table: 43C5D4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FB4196: Set var_88 = Me.Txt
  loc_FB419C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FB41AA: Proc_6_74_E226B0(var_8C)
  loc_FB41B9: var_92 = Index
  loc_FB41C4: If (var_92 = CInt(2)) Then
  loc_FB4215:   Set var_88 = Me.Txt
  loc_FB421B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FB4223:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FB423B:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_FB423E:     Exit Sub
  loc_FB423F:   End If
  loc_FB424C:   Set var_88 = Me.Txt
  loc_FB4252:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FB425A:   var_A0 = var_8C.Text
  loc_FB4262:   var_D4 = CVar(var_A0) 'String
  loc_FB42A7:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FB42B0:     Me.MoveFirst
  loc_FB42D5:     Set var_88 = Me.Txt
  loc_FB42DB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_FB42E3:     0 = var_8C.Text
  loc_FB42F1:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_FB4307:     Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_FB431F:   End If
  loc_FB431F: End If
  loc_FB431F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F05D48
  'Data Table: 43C5D4
  loc_F05C7A: If (CLng(Shift) = &H1B) Then
  loc_F05C7D:   Call Proc_301_18_E53F6C()
  loc_F05C82:   Exit Sub
  loc_F05C83: End If
  loc_F05C91: If (KeyCode = CInt(2)) Then
  loc_F05CAC:   Set var_9C = Nothing
  loc_F05CB7:   Set var_98 = Nothing
  loc_F05CE5:   Proc_6_69_134A198(Me.DGName, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_F05CF9: End If
  loc_F05D15: If (CBool(Me.DGName.Visible) = 0) Then
  loc_F05D36:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(3))) Then
  loc_F05D3F:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_F05D44:   End If
  loc_F05D44: End If
  loc_F05D44: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E8867C
  'Data Table: 43C5D4
  loc_E8861E: If (KeyCode = CInt(2)) Then
  loc_E8863D:   If (CBool(Me.DGName.Visible) = &HFF) Then
  loc_E8864A:     var_A4 = "Name"
  loc_E88669:     Proc_6_80_FF0AC0(Me.Txt, CInt(2), global_60)
  loc_E88678:   End If
  loc_E88678: End If
  loc_E88678: Exit Sub
  loc_E88679: CopyBytes 9727
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A854
  'Data Table: 43C5D4
  loc_E4A832: Set var_88 = Me.Txt
  loc_E4A838: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A846: Proc_6_73_E22704(var_8C)
  loc_E4A852: Exit Sub
  loc_E4A853: var_8C() = 
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1015C68
  'Data Table: 43C5D4
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim var_C4 As TextBox
  loc_1015A56: If (Cancel = CInt(2)) Then
  loc_1015A75:   If (CBool(Me.DGName.Visible) = 0) Then
  loc_1015A82:     Set var_8C = Me.Txt
  loc_1015A88:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1015A90:     var_A8 = "To Name"
  loc_1015AB1:     If (Proc_6_27_EA565C(var_A0, var_A8) = 0) Then
  loc_1015ABE:       Set var_8C = Me.Txt
  loc_1015AC4:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1015ACC:       var_A0.SetFocus
  loc_1015ADA:       arg_10 = &HFF
  loc_1015ADD:       Exit Sub
  loc_1015ADE:     End If
  loc_1015ADE:   End If
  loc_1015B2C:   Set var_8C = Me.Txt
  loc_1015B32:   Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A8)
  loc_1015B3A:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_1015B52:   If (arg_10 Or (var_A8 = vbNullString)) Then
  loc_1015B62:     Set var_8C = Me.Txt
  loc_1015B68:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1015B70:     var_A0.Text = vbNullString
  loc_1015B89:     Set var_8C = Me.Txt
  loc_1015B8F:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1015B97:     var_A0.Tag = vbNullString
  loc_1015BA6:   Else
  loc_1015BE1:     Set var_A4 = Me.Txt
  loc_1015BE7:     Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1015BEF:     var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1015C40:     Set var_A4 = Me.Txt
  loc_1015C46:     Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1015C4E:     var_C4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1015C64:   End If
  loc_1015C64: End If
  loc_1015C64: Exit Sub
  loc_1015C65: StAryRecMove
End Sub

Private Sub DGName_UnknownEvent_9 'FA8CF4
  'Data Table: 43C5D4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_FA8B74: On Error Goto loc_FA8C8E
  loc_FA8B86: Me.DGName.Visible = False
  loc_FA8B97: var_AC = Me.RecordCount
  loc_FA8BA5: If (var_AC > 0) Then
  loc_FA8BE4:   Set var_B4 = Me.Txt
  loc_FA8BEA:   Call 0.Method_DGName_UnknownEvent_90 (CInt(2), var_B8)
  loc_FA8BF2:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA8C25:   var_B0 = Me.Fields.Item("Code")
  loc_FA8C36:   var_CC = CStr(var_B0.Value)
  loc_FA8C44:   Set var_B4 = Me.Txt
  loc_FA8C4A:   Call 0.Method_DGName_UnknownEvent_90 (CInt(2), var_B8)
  loc_FA8C52:   var_B8.Tag = var_CC
  loc_FA8C68: End If
  loc_FA8C73: Set var_A8 = Me.Txt
  loc_FA8C79: Call 0.Method_DGName_UnknownEvent_90 (CInt(2))
  loc_FA8C81: var_B0.SetFocus
  loc_FA8C8D: Exit Sub
  loc_FA8C8E: ' Referenced from: FA8B74
  loc_FA8C96: Set var_A8 = Err()
  loc_FA8C9C: Call 0.Method_arg_1C (var_AC)
  loc_FA8CAD: If (var_AC <> 0) Then
  loc_FA8CB8:   Set var_A8 = Err()
  loc_FA8CBE:   Call 0.Method_arg_2C (var_CC)
  loc_FA8CDF:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FA8CF2: End If
  loc_FA8CF2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E9DB4C
  'Data Table: 43C5D4
  Dim var_A8 As Variant
  loc_E9DAE3: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9DB1E: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_E9DB38:   Call Proc_301_17_106D138(CInt(CLng(Me.FGrid.Row)), CVar(CLng(4)))
  loc_E9DB43: End If
  loc_E9DB43: Call Proc_301_16_11F0F64(var_A8)
  loc_E9DB48: Exit Sub
  loc_E9DB49: StAryRecMove
End Sub

Public Property Let ShowCompose(temp) 'DFFD44
  'Data Table: 43C5D4
  loc_DFFD3C: Call BtnCompose_Click()
  loc_DFFD41: Exit Sub
End Sub

Public Sub Proc_301_15_10E2028
  'Data Table: 43C5D4
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_10E1D08: Set var_88 = Me.FGrid
  loc_10E1D17: var_88.FixedRows = 1
  loc_10E1D30: global_64 = CStr(CLng(var_88.BackColor))
  loc_10E1D46: var_88.Cols = 8
  loc_10E1D4E: var_98 = CVar(CLng(0)) 'Long
  loc_10E1D53: var_CC = 0
  loc_10E1D5F: LateIdCallSt
  loc_10E1D67: var_98 = 0
  loc_10E1D73: var_CC = CVar(CLng(1)) 'Long
  loc_10E1D78: var_EC = "Check"
  loc_10E1D81: LateIdCallSt
  loc_10E1D8C: var_98 = CVar(CLng(1)) 'Long
  loc_10E1D97: var_CC = CVar(CInt(1)) 'Integer
  loc_10E1D9E: LateIdCallSt
  loc_10E1DA9: var_98 = CVar(CLng(1)) 'Long
  loc_10E1DAE: var_CC = 0
  loc_10E1DBA: LateIdCallSt
  loc_10E1DC2: var_98 = 0
  loc_10E1DCE: var_CC = CVar(CLng(3)) 'Long
  loc_10E1DD3: var_EC = "Subject"
  loc_10E1DDC: LateIdCallSt
  loc_10E1DE7: var_98 = CVar(CLng(3)) 'Long
  loc_10E1DF2: var_CC = CVar(CInt(1)) 'Integer
  loc_10E1DF9: LateIdCallSt
  loc_10E1E04: var_98 = CVar(CLng(3)) 'Long
  loc_10E1E0F: var_CC = CVar(CInt(1)) 'Integer
  loc_10E1E16: LateIdCallSt
  loc_10E1E21: var_98 = CVar(CLng(3)) 'Long
  loc_10E1E26: var_CC = &H157C
  loc_10E1E32: LateIdCallSt
  loc_10E1E3A: var_98 = 0
  loc_10E1E46: var_CC = CVar(CLng(2)) 'Long
  loc_10E1E4B: var_EC = "To"
  loc_10E1E54: LateIdCallSt
  loc_10E1E5F: var_98 = CVar(CLng(2)) 'Long
  loc_10E1E6A: var_CC = CVar(CInt(1)) 'Integer
  loc_10E1E71: LateIdCallSt
  loc_10E1E7C: var_98 = CVar(CLng(2)) 'Long
  loc_10E1E87: var_CC = CVar(CInt(1)) 'Integer
  loc_10E1E8E: LateIdCallSt
  loc_10E1E99: var_98 = CVar(CLng(2)) 'Long
  loc_10E1E9E: var_CC = &HDAC
  loc_10E1EAA: LateIdCallSt
  loc_10E1EB2: var_98 = 0
  loc_10E1EBE: var_CC = CVar(CLng(4)) 'Long
  loc_10E1EC3: var_EC = "Send Date"
  loc_10E1ECC: LateIdCallSt
  loc_10E1ED7: var_98 = CVar(CLng(4)) 'Long
  loc_10E1EE2: var_CC = CVar(CInt(1)) 'Integer
  loc_10E1EE9: LateIdCallSt
  loc_10E1EF4: var_98 = CVar(CLng(4)) 'Long
  loc_10E1EFF: var_CC = CVar(CInt(1)) 'Integer
  loc_10E1F06: LateIdCallSt
  loc_10E1F11: var_98 = CVar(CLng(4)) 'Long
  loc_10E1F16: var_CC = &H5DC
  loc_10E1F22: LateIdCallSt
  loc_10E1F2A: var_98 = 0
  loc_10E1F36: var_CC = CVar(CLng(5)) 'Long
  loc_10E1F3B: var_EC = "Read"
  loc_10E1F44: LateIdCallSt
  loc_10E1F4F: var_98 = CVar(CLng(5)) 'Long
  loc_10E1F5A: var_CC = CVar(CInt(1)) 'Integer
  loc_10E1F61: LateIdCallSt
  loc_10E1F6C: var_98 = CVar(CLng(5)) 'Long
  loc_10E1F77: var_CC = CVar(CInt(1)) 'Integer
  loc_10E1F7E: LateIdCallSt
  loc_10E1F89: var_98 = CVar(CLng(5)) 'Long
  loc_10E1F8E: var_CC = 0
  loc_10E1F9A: LateIdCallSt
  loc_10E1FA2: var_98 = 0
  loc_10E1FAE: var_CC = CVar(CLng(6)) 'Long
  loc_10E1FB3: var_EC = "VType"
  loc_10E1FBC: LateIdCallSt
  loc_10E1FC7: var_98 = CVar(CLng(6)) 'Long
  loc_10E1FCC: var_CC = 0
  loc_10E1FD8: LateIdCallSt
  loc_10E1FE0: var_98 = 0
  loc_10E1FEC: var_CC = CVar(CLng(7)) 'Long
  loc_10E1FF1: var_EC = "VNo"
  loc_10E1FFA: LateIdCallSt
  loc_10E2005: var_98 = CVar(CLng(7)) 'Long
  loc_10E200A: var_CC = 0
  loc_10E2016: LateIdCallSt
  loc_10E2020: Set var_88 = Nothing 
  loc_10E2024: Exit Sub
  loc_10E2025: var_88 = Proc_301_15_10E2028FF
End Sub

Public Sub Proc_301_16_11F0F64
  'Data Table: 43C5D4
  Dim var_A4 As String
  Dim unk_43C5F4 As Connection15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_C4 As Variant
  Dim var_114 As Variant
  Dim var_DC As Variant
  Dim var_104 As Variant
  Dim var_CC As Field20
  Dim var_134 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  loc_11F0AF0: On Error Goto loc_11F0F5B
  loc_11F0B0E: var_A4 = "SELECT * FROM Messaging Where Sender='" & MemVar_1F920C8 & "' And (ReadYN is Null  Or ReadYN='' Or ReadYN='N') Order By VDATE DESC,VType DESC,VNo DESC,Sender"
  loc_11F0B17: unk_43C5F4.Execute var_A4, var_C4, -1
  loc_11F0B28: Set global_52 = var_C8
  loc_11F0B4C: Me.FGrid.Redraw = False
  loc_11F0B67: Me.FGrid.Rows = 1
  loc_11F0B71: var_8A = 1
  loc_11F0B74: ' Referenced from: 11F0E7D
  loc_11F0B86: If Not(Me.EOF) Then
  loc_11F0B89:   var_B4 = vbNullString
  loc_11F0B93:   Set var_C8 = Me.FGrid
  loc_11F0BAF:   var_B4 = CVar(CLng(var_8A)) 'Long
  loc_11F0BB7:   var_F4 = CVar(CLng(0)) 'Long
  loc_11F0BC1:   var_C4 = CVar(CStr(var_8A)) 'String
  loc_11F0BC8:   LateIdCallSt
  loc_11F0BD7:   var_B4 = CVar(CLng(var_8A)) 'Long
  loc_11F0BDF:   var_F4 = CVar(CLng(1)) 'Long
  loc_11F0BE4:   var_114 = vbNullString
  loc_11F0BED:   LateIdCallSt
  loc_11F0BF9:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_11F0C01:   var_104 = CVar(CLng(3)) 'Long
  loc_11F0C34:   var_134 = CVar(CStr(Me.Fields.Item("Subject").Value)) 'String
  loc_11F0C3B:   LateIdCallSt
  loc_11F0C55:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_11F0C5D:   var_104 = CVar(CLng(2)) 'Long
  loc_11F0C90:   var_134 = CVar(CStr(Me.Fields.Item("Receiver").Value)) 'String
  loc_11F0C97:   LateIdCallSt
  loc_11F0CEC:   var_134 = CVar(CStr(Me.Fields.Item("VDate").Value)) 'String
  loc_11F0CF3:   LateIdCallSt
  loc_11F0D34:   var_134 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Readyn")), Me.FGrid, var_134, CVar(CLng(4)), CVar(CLng(var_8A)), Me.FGrid, var_134)) 'String
  loc_11F0D43:   var_114 = CVar(CLng(var_8A)) 'Long
  loc_11F0D4B:   var_1A4 = CVar(CLng(5)) 'Long
  loc_11F0D86:   var_1C4 = CVar(CStr(IIf((Ucase(var_134) = "Y"), "Yes", "No"))) 'String
  loc_11F0D8D:   LateIdCallSt
  loc_11F0DAF:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_11F0DB7:   var_104 = CVar(CLng(6)) 'Long
  loc_11F0DEA:   var_134 = CVar(CStr(Me.Fields.Item("vType").Value)) 'String
  loc_11F0DF1:   LateIdCallSt
  loc_11F0E0B:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_11F0E13:   var_104 = CVar(CLng(7)) 'Long
  loc_11F0E46:   var_134 = CVar(CStr(Me.Fields.Item("VNo").Value)) 'String
  loc_11F0E4D:   LateIdCallSt
  loc_11F0E65:   Set var_E4 = Nothing 
  loc_11F0E6F:   var_8A = (var_8A + 1)
  loc_11F0E78:   Me.MoveNext
  loc_11F0E7D:   GoTo loc_11F0B74
  loc_11F0E80: End If
  loc_11F0E9F: If (CLng(Me.FGrid.Rows) > 1) Then
  loc_11F0EB5:   Me.FGrid.FixedRows = 1
  loc_11F0EBD: End If
  loc_11F0ECB: Me.FGrid.Redraw = True
  loc_11F0ED9: If (var_8A = 1) Then
  loc_11F0EEF:   Me.FGrid.Rows = 1
  loc_11F0F15:   var_C4 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_8A, var_E4, var_134, var_104, var_DC, var_E4))) 'String
  loc_11F0F1D:   Set var_CC = Me.FGrid
  loc_11F0F4A:   Me.FGrid.FixedRows = 1
  loc_11F0F52: End If
  loc_11F0F57: Set var_88 = Nothing
  loc_11F0F5A: Exit Sub
  loc_11F0F5B: ' Referenced from: 11F0AF0
  loc_11F0F5B: Proc_6_60_E62BC4(FGrid.DispID_10000, var_C4, var_134, var_104, var_DC)
  loc_11F0F60: Exit Sub
  loc_11F0F61: ThisVCallI2
End Sub

Public Sub Proc_301_17_106D138(arg_C) '106D138
  'Data Table: 43C5D4
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim var_178 As Double
  Dim unk_43C5F4 As Connection15
  Dim var_88 As Recordset15
  Dim var_180 As TextBox
  loc_106CEDC: Me.Frame1.Visible = True
  loc_106CEE8: var_9C = CVar(CLng(arg_C)) 'Long
  loc_106CF39: var_178 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_106CF77: unk_43C5F4.Execute "Select * From Messaging Where VType='" & CStr(Me.FGrid.TextMatrix)) & "' And VNo=" & CStr(var_178) & vbNullString, var_16C, -1
  loc_106CF82: Set var_88 = var_170
  loc_106CFBC: If (var_88.RecordCount > 0) Then
  loc_106CFFE:   Call 0.Method_Proc_301_17_106D1380 (CInt(1), var_180, CStr(var_88.Fields.Item("Subject").Value), Me.Txt, var_178)
  loc_106D006:   var_180.Text = CVar(CLng(7))
  loc_106D03E:   var_DC = var_88.Fields.Item("VNo").Value
  loc_106D055:   Set var_170 = Me.Txt
  loc_106D05B:   Call 0.Method_Proc_301_17_106D1380 (CInt(1), var_180, CStr(var_DC), CVar(CLng(arg_C)))
  loc_106D063:   var_180.Tag = var_DC
  loc_106D0AF:   Set var_170 = Me.Txt
  loc_106D0B5:   Call 0.Method_Proc_301_17_106D1380 (CInt(2), var_180)
  loc_106D0BD:   var_180.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Receiver")), CVar(CLng(6)))
  loc_106D10A:   Set var_170 = Me.Txt
  loc_106D110:   Call 0.Method_Proc_301_17_106D1380 (CInt(3), var_180)
  loc_106D118:   var_180.Text = CStr(var_88.Fields.Item("Message").Value)
  loc_106D12E: End If
  loc_106D133: Set var_88 = Nothing
  loc_106D136: Exit Sub
End Sub

Public Sub Proc_301_18_E53F6C
  'Data Table: 43C5D4
  loc_E53F50: If (CBool(Me.DGName.Visible) = &HFF) Then
  loc_E53F62:   Me.DGName.Visible = False
  loc_E53F6A: End If
  loc_E53F6A: Exit Sub
End Sub
