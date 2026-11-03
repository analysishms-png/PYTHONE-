VERSION 5.00
Begin VB.Form FrmSmsCenterSettings
  Caption = "SMS Center Settings"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  MDIChild = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 11790
  ClientHeight = 3450
  LockControls = -1  'True
  BeginProperty Font
    Name = "Verdana"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin CommandButton cmdType
    Caption = "Create SMS Types"
    BackColor = &HE0E0E0&
    Left = 390
    Top = 2415
    Width = 2520
    Height = 375
    TabIndex = 25
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC0C0C0&
    Left = 3090
    Top = 1395
    Width = 3375
    Height = 315
    Text = "sms_ph_pre"
    TabIndex = 3
    MaxLength = 10
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
  Begin TextBox Txt
    Index = 11
    ForeColor = &HC0C0C0&
    Left = 9300
    Top = 1395
    Width = 2055
    Height = 315
    Text = "&phno"
    TabIndex = 8
    MaxLength = 20
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
  Begin CommandButton CmdRenuval
    Caption = "Renewal"
    BackColor = &HFF8080&
    Left = 9315
    Top = 2955
    Width = 2055
    Height = 465
    Visible = 0   'False
    TabIndex = 23
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &HFFFFFF&
    Style = 1
  End
  Begin TextBox Txt
    Index = 13
    ForeColor = &HC0C0C0&
    Left = 3090
    Top = 2055
    Width = 8265
    Height = 315
    Text = "&extra"
    TabIndex = 10
    MaxLength = 50
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
  Begin TextBox Txt
    Index = 12
    ForeColor = &HC0C0C0&
    Left = 9300
    Top = 1725
    Width = 2055
    Height = 315
    Text = "&message"
    TabIndex = 9
    MaxLength = 20
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
  Begin TextBox Txt
    Index = 10
    ForeColor = &HC0C0C0&
    Left = 9300
    Top = 1065
    Width = 2055
    Height = 315
    Text = "&from"
    TabIndex = 7
    MaxLength = 20
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
  Begin TextBox Txt
    Index = 9
    ForeColor = &HC0C0C0&
    Left = 9300
    Top = 735
    Width = 2055
    Height = 315
    Text = "&password"
    TabIndex = 6
    MaxLength = 20
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
  Begin TextBox Txt
    Index = 8
    ForeColor = &HC0C0C0&
    Left = 9300
    Top = 405
    Width = 2055
    Height = 315
    Text = "&username"
    TabIndex = 5
    MaxLength = 20
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
  Begin TextBox Txt
    Index = 7
    ForeColor = &HC0C0C0&
    Left = 7755
    Top = 3120
    Width = 1260
    Height = 315
    Visible = 0   'False
    Text = "0"
    TabIndex = 13
    Alignment = 1 'Right Justify
    MaxLength = 8
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC0C0C0&
    Left = 5535
    Top = 3120
    Width = 1260
    Height = 315
    Visible = 0   'False
    Text = "0"
    TabIndex = 12
    Alignment = 1 'Right Justify
    MaxLength = 8
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HC0C0C0&
    Left = 3090
    Top = 3120
    Width = 1305
    Height = 315
    Visible = 0   'False
    Text = "0"
    TabIndex = 11
    Alignment = 1 'Right Justify
    MaxLength = 8
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC0C0C0&
    Left = 3090
    Top = 1725
    Width = 5925
    Height = 315
    Text = "sms_url"
    TabIndex = 4
    MaxLength = 100
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
  Begin CommandButton CmdCancel
    Caption = "&Cancel"
    BackColor = &HE0E0E0&
    Left = 6345
    Top = 2595
    Width = 1950
    Height = 540
    TabIndex = 15
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton CmdSave
    Caption = "&Save"
    BackColor = &HE0E0E0&
    Left = 4185
    Top = 2595
    Width = 1950
    Height = 540
    TabIndex = 14
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC0C0C0&
    Left = 3090
    Top = 1065
    Width = 3375
    Height = 315
    Text = "sms_d_name"
    TabIndex = 2
    MaxLength = 10
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
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC0C0C0&
    Left = 3090
    Top = 735
    Width = 3375
    Height = 315
    Text = "sms_center_password"
    TabIndex = 1
    MaxLength = 20
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC0C0C0&
    Left = 3090
    Top = 405
    Width = 3375
    Height = 315
    Text = "sms_center_user_name"
    TabIndex = 0
    MaxLength = 20
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
    Caption = "Sms Phone No. Prefix ......."
    Index = 3
    ForeColor = &H80000006&
    Left = 390
    Top = 1455
    Width = 2505
    Height = 240
    TabIndex = 24
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
    Caption = "Bal Msg"
    Index = 13
    Left = 6930
    Top = 3165
    Width = 705
    Height = 210
    Visible = 0   'False
    TabIndex = 22
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
    Caption = "Send Msg"
    Index = 12
    Left = 4545
    Top = 3165
    Width = 900
    Height = 210
    Visible = 0   'False
    TabIndex = 21
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
    Caption = "Purchase Message .........."
    Index = 11
    ForeColor = &H80000006&
    Left = 390
    Top = 3180
    Width = 2475
    Height = 240
    Visible = 0   'False
    TabIndex = 20
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
    Caption = "Sms URL  .........................."
    Index = 10
    ForeColor = &H80000006&
    Left = 390
    Top = 1785
    Width = 2775
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
  Begin Label Label1
    Caption = "Sms Diplay Name .............."
    Index = 2
    ForeColor = &H80000006&
    Left = 390
    Top = 1132
    Width = 2775
    Height = 240
    TabIndex = 18
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
    Caption = "Sms Center Password......."
    Index = 1
    ForeColor = &H80000006&
    Left = 390
    Top = 810
    Width = 2535
    Height = 240
    TabIndex = 17
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
    Caption = "Sms Center User Name......"
    Index = 0
    ForeColor = &H80000006&
    Left = 390
    Top = 480
    Width = 2775
    Height = 240
    TabIndex = 16
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
End

Attribute VB_Name = "FrmSmsCenterSettings"


Private Sub CmdSave_Click() '134F438
  'Data Table: 42A948
  Dim unk_42A94D As Connection15
  Dim var_86 As Integer
  Dim var_94 As String
  Dim var_98 As String
  Dim var_AC As String
  Dim var_A4 As TextBox
  Dim var_B8 As TextBox
  Dim var_D8 As String
  Dim var_D0 As TextBox
  Dim var_E4 As TextBox
  Dim var_F8 As TextBox
  Dim var_128 As String
  Dim var_110 As TextBox
  Dim var_124 As Variant
  Dim var_130 As String
  Dim var_138 As TextBox
  Dim var_160 As TextBox
  Dim var_180 As String
  Dim var_1A0 As String
  Dim var_188 As TextBox
  Dim var_1B0 As TextBox
  Dim var_1D8 As TextBox
  Dim var_1F8 As String
  Dim var_22C As Variant
  Dim var_A0 As Variant
  loc_134ED3C: On Error Goto loc_134F41C
  loc_134ED3F: Call Proc_231_11_13330B8()
  loc_134ED4D: unk_42A94D.BeginTrans var_90
  loc_134ED54: var_86 = &HFF
  loc_134ED71: If (Me.Recordset15.RecordCount = 0) Then
  loc_134ED7B:   var_94 = "Insert into SMSEnviro " & " (SmsCenterUserName,SmsCenterPassword,SmsDisplayName,SmsPhoneNoPrefix, "
  loc_134ED90:   var_AC = var_94 & " SMSURL,TUser,TPassword,TFromSend,TPhNo,TMessage,TExtra," & " LogSite_Code) " & " values ('"
  loc_134EDA1:   Set var_A0 = Me.Txt
  loc_134EDA7:   Call 0.Method_CmdSave_Click0 (CInt(0), var_A4, var_A8)
  loc_134EDAF:   var_AC = var_A4.Text
  loc_134EDD0:   Set var_B4 = Me.Txt
  loc_134EDD6:   Call 0.Method_CmdSave_Click0 (CInt(1), var_B8)
  loc_134EE06:   Set var_CC = Me.Txt
  loc_134EE0C:   Call 0.Method_CmdSave_Click0 (CInt(2), var_D0)
  loc_134EE35:   Set var_E0 = Me.Txt
  loc_134EE3B:   Call 0.Method_CmdSave_Click0 (CInt(3), var_E4)
  loc_134EE64:   Set var_F4 = Me.Txt
  loc_134EE6A:   Call 0.Method_CmdSave_Click0 (CInt(4), var_F8)
  loc_134EE89:   var_128 = var_86 & var_A8 & "','" & var_B8.Text & "', " & " '" & var_D0.Text & "','" & var_E4.Text & "','" & var_F8.Text & "'," & " '"
  loc_134EE9A:   Set var_10C = Me.Txt
  loc_134EEA0:   Call 0.Method_CmdSave_Click0 (CInt(8), var_110)
  loc_134EEB0:   var_124 = CVar(var_110.Text) 'String
  loc_134EED4:   Set var_134 = Me.Txt
  loc_134EEDA:   Call 0.Method_CmdSave_Click0 (CInt(9), var_138)
  loc_134EF0E:   Set var_15C = Me.Txt
  loc_134EF14:   Call 0.Method_CmdSave_Click0 (CInt(&HA), var_160)
  loc_134EF30:   var_180 = var_128 & Proc_6_38_E68A98(var_124) & "','" & Proc_6_38_E68A98(CVar(var_138.Text)) & "','" & Proc_6_38_E68A98(CVar(var_160.Text))
  loc_134EF48:   Set var_184 = Me.Txt
  loc_134EF4E:   Call 0.Method_CmdSave_Click0 (CInt(&HB), var_188)
  loc_134EF82:   Set var_1AC = Me.Txt
  loc_134EF88:   Call 0.Method_CmdSave_Click0 (CInt(&HC), var_1B0)
  loc_134EFBC:   Set var_1D4 = Me.Txt
  loc_134EFC2:   Call 0.Method_CmdSave_Click0 (CInt(&HD), var_1D8)
  loc_134EFDE:   var_1F8 = var_180 & "','" & Proc_6_38_E68A98(CVar(var_188.Text)) & "','" & Proc_6_38_E68A98(CVar(var_1B0.Text)) & "','" & Proc_6_38_E68A98(CVar(var_1D8.Text))
  loc_134EFFA:   Proc_183_9_EAA760(var_21C, MemVar_1F92078)
  loc_134F0C0:   unk_42A94D.Execute CStr(CVar(var_1F8 & "'," & " ") & var_21C & ")"), var_124, -1
  loc_134F0CE: Else
  loc_134F0D5:   var_98 = "Update SMSEnviro Set " & " SmsCenterUserName='"
  loc_134F0E6:   Set var_A0 = Me.Txt
  loc_134F0EC:   Call 0.Method_CmdSave_Click0 (CInt(0), var_A4, var_94)
  loc_134F0F4:   var_98 = var_A4.Text
  loc_134F115:   Set var_B4 = Me.Txt
  loc_134F11B:   Call 0.Method_CmdSave_Click0 (CInt(1), var_B8)
  loc_134F144:   Set var_CC = Me.Txt
  loc_134F14A:   Call 0.Method_CmdSave_Click0 (CInt(2), var_D0)
  loc_134F173:   Set var_E0 = Me.Txt
  loc_134F179:   Call 0.Method_CmdSave_Click0 (CInt(3), var_E4)
  loc_134F18A:   var_D8 = var_A0 & var_94 & "',SmsCenterPassword='" & var_B8.Text & "',SmsDisplayName='" & var_D0.Text & "',SmsPhoneNoPrefix='" & var_E4.Text
  loc_134F1A9:   Set var_F4 = Me.Txt
  loc_134F1AF:   Call 0.Method_CmdSave_Click0 (CInt(4), var_F8)
  loc_134F1D8:   Set var_10C = Me.Txt
  loc_134F1DE:   Call 0.Method_CmdSave_Click0 (CInt(8), var_110)
  loc_134F1EE:   var_124 = CVar(var_110.Text) 'String
  loc_134F212:   Set var_134 = Me.Txt
  loc_134F218:   Call 0.Method_CmdSave_Click0 (CInt(9), var_138)
  loc_134F234:   var_130 = var_D8 & "'," & " SMSURL='" & var_F8.Text & "',TUser='" & Proc_6_38_E68A98(var_124) & "',TPassword='" & Proc_6_38_E68A98(CVar(var_138.Text))
  loc_134F24C:   Set var_15C = Me.Txt
  loc_134F252:   Call 0.Method_CmdSave_Click0 (CInt(&HA), var_160)
  loc_134F286:   Set var_184 = Me.Txt
  loc_134F28C:   Call 0.Method_CmdSave_Click0 (CInt(&HB), var_188)
  loc_134F2AF:   var_1A0 = var_130 & "',TFromSend='" & Proc_6_38_E68A98(CVar(var_160.Text)) & "',TPhNo='" & Proc_6_38_E68A98(CVar(var_188.Text)) & "',TMessage='"
  loc_134F2C0:   Set var_1AC = Me.Txt
  loc_134F2C6:   Call 0.Method_CmdSave_Click0 (CInt(&HC), var_1B0)
  loc_134F2FA:   Set var_1D4 = Me.Txt
  loc_134F300:   Call 0.Method_CmdSave_Click0 (CInt(&HD), var_1D8)
  loc_134F32A:   var_22C = CVar(var_1A0 & Proc_6_38_E68A98(CVar(var_1B0.Text)) & "',TExtra='" & Proc_6_38_E68A98(CVar(var_1D8.Text)) & "'" & " Where LogSite_Code=") 'String
  loc_134F338:   Proc_183_9_EAA760(var_21C, MemVar_1F92078)
  loc_134F3EB:   unk_42A94D.Execute CStr(var_22C & var_21C), var_124, -1
  loc_134F3F6: End If
  loc_134F3FC: unk_42A94D.CommitTrans
  loc_134F401: Call Proc_231_10_14645B0(var_A0)
  loc_134F413: Me.Global.Unload Me
  loc_134F41B: Exit Sub
  loc_134F41C: ' Referenced from: 134ED3C
  loc_134F422: If (var_86 = &HFF) Then
  loc_134F42B:   unk_42A94D.RollbackTrans
  loc_134F430: End If
  loc_134F430: Proc_6_60_E62BC4()
  loc_134F435: Exit Sub
End Sub

Private Sub Form_Load() 'EBAB40
  'Data Table: 42A948
  loc_EBAAAA: Set global_52 = New 
  loc_EBAABF: Me.Recordset15.CursorLocation = 3
  loc_EBAAF6: Me.Recordset15.Open CVar("Select * From SMSEnviro WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "')"), CVar(MemVar_1F92044), 2
  loc_EBAB01: Call Proc_231_9_E95A38(3)
  loc_EBAB06: Call Proc_231_12_13EAA70(-1)
  loc_EBAB13: Call 0.Method_Me4 (CDbl(11880))
  loc_EBAB20: Call 0.Method_MeC (CDbl(3840))
  loc_EBAB2D: Call 0.Method_arg_7C (CDbl(3000))
  loc_EBAB3A: Call 0.Method_arg_74 (CDbl(2000))
  loc_EBAB3F: Exit Sub
End Sub

Private Sub cmdCancel_Click() 'E1B3B8
  'Data Table: 42A948
  loc_E1B3AD: Me.Global.Unload Me
  loc_E1B3B5: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '110B660
  'Data Table: 42A948
  Dim var_86 As Integer
  Dim var_90 As TextBox
  loc_110B30B: var_86 = Index
  loc_110B316: If (var_86 = CInt(0)) Then
  loc_110B328:   Set var_8C = Me.Txt
  loc_110B32E:   Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110B336:   var_90.SelStart = 0
  loc_110B345: Else
  loc_110B34D:   If (var_86 = CInt(1)) Then
  loc_110B35F:     Set var_8C = Me.Txt
  loc_110B365:     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110B36D:     var_90.SelStart = 0
  loc_110B37C:   Else
  loc_110B384:     If (var_86 = CInt(2)) Then
  loc_110B396:       Set var_8C = Me.Txt
  loc_110B39C:       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110B3A4:       var_90.SelStart = 0
  loc_110B3B3:     Else
  loc_110B3BB:       If (var_86 = CInt(3)) Then
  loc_110B3CD:         Set var_8C = Me.Txt
  loc_110B3D3:         Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110B3DB:         var_90.SelStart = 0
  loc_110B3EA:       Else
  loc_110B3F2:         If (var_86 = CInt(4)) Then
  loc_110B404:           Set var_8C = Me.Txt
  loc_110B40A:           Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110B412:           var_90.SelStart = 0
  loc_110B421:         Else
  loc_110B429:           If (var_86 = CInt(8)) Then
  loc_110B43B:             Set var_8C = Me.Txt
  loc_110B441:             Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110B449:             var_90.MaxLength = &HF
  loc_110B464:             Set var_8C = Me.Txt
  loc_110B46A:             Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110B472:             var_90.SelStart = 0
  loc_110B481:           Else
  loc_110B489:             If (var_86 = CInt(9)) Then
  loc_110B49B:               Set var_8C = Me.Txt
  loc_110B4A1:               Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110B4A9:               var_90.MaxLength = &HF
  loc_110B4C4:               Set var_8C = Me.Txt
  loc_110B4CA:               Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110B4D2:               var_90.SelStart = 0
  loc_110B4E1:             Else
  loc_110B4E9:               If (var_86 = CInt(&HA)) Then
  loc_110B4FB:                 Set var_8C = Me.Txt
  loc_110B501:                 Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110B509:                 var_90.MaxLength = &HF
  loc_110B524:                 Set var_8C = Me.Txt
  loc_110B52A:                 Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110B532:                 var_90.SelStart = 0
  loc_110B541:               Else
  loc_110B549:                 If (var_86 = CInt(&HB)) Then
  loc_110B55B:                   Set var_8C = Me.Txt
  loc_110B561:                   Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110B569:                   var_90.MaxLength = &HF
  loc_110B584:                   Set var_8C = Me.Txt
  loc_110B58A:                   Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110B592:                   var_90.SelStart = 0
  loc_110B5A1:                 Else
  loc_110B5A9:                   If (var_86 = CInt(&HC)) Then
  loc_110B5BB:                     Set var_8C = Me.Txt
  loc_110B5C1:                     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110B5C9:                     var_90.MaxLength = &HF
  loc_110B5E4:                     Set var_8C = Me.Txt
  loc_110B5EA:                     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110B5F2:                     var_90.SelStart = 0
  loc_110B601:                   Else
  loc_110B609:                     If (var_86 = CInt(&HD)) Then
  loc_110B61B:                       Set var_8C = Me.Txt
  loc_110B621:                       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110B629:                       var_90.MaxLength = &H32
  loc_110B644:                       Set var_8C = Me.Txt
  loc_110B64A:                       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_110B652:                       var_90.SelStart = 0
  loc_110B65E:                     End If
  loc_110B65E:                   End If
  loc_110B65E:                 End If
  loc_110B65E:               End If
  loc_110B65E:             End If
  loc_110B65E:           End If
  loc_110B65E:         End If
  loc_110B65E:       End If
  loc_110B65E:     End If
  loc_110B65E:   End If
  loc_110B65E: End If
  loc_110B65E: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E9ECA0
  'Data Table: 42A948
  loc_E9EC1A: If (CLng(Shift) = &H1B) Then
  loc_E9EC1D:   Exit Sub
  loc_E9EC1E: End If
  loc_E9EC3C: If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HD))) Then
  loc_E9EC45:   Proc_6_75_E527CC(Shift)
  loc_E9EC4A: End If
  loc_E9EC68: If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HD))) Then
  loc_E9EC6B:   Call CmdSave_Click()
  loc_E9EC70: End If
  loc_E9EC8E: If (((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_E9EC97:   Proc_6_76_E52838(Shift, arg_14)
  loc_E9EC9C: End If
  loc_E9EC9C: Exit Sub
  loc_E9EC9D: StAryRecMove
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '14476F0
  'Data Table: 42A948
  Dim var_86 As Integer
  Dim var_90 As TextBox
  loc_1446BA7: Proc_6_58_E054C0(arg_10)
  loc_1446BAF: var_86 = KeyAscii
  loc_1446BBA: If (var_86 = CInt(0)) Then
  loc_1446BC7:   Set var_8C = Me.Txt
  loc_1446BCD:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446BF6:   If (Trim(CVar(var_90)) = "sms_center_user_name") Then
  loc_1446C06:     Set var_8C = Me.Txt
  loc_1446C0C:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446C14:     var_90.Text = vbNullString
  loc_1446C20:   End If
  loc_1446C2A:   Set var_8C = Me.Txt
  loc_1446C30:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446C59:   If (Trim(CVar(var_90)) = "sms_center_user_name") Then
  loc_1446C6B:     Set var_8C = Me.Txt
  loc_1446C71:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446C79:     var_90.ForeColor = &HC0C0C0
  loc_1446C88:   Else
  loc_1446C97:     Set var_8C = Me.Txt
  loc_1446C9D:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446CA5:     var_90.ForeColor = -2147483640
  loc_1446CB1:   End If
  loc_1446CB4: Else
  loc_1446CBC:   If (var_86 = CInt(1)) Then
  loc_1446CC9:     Set var_8C = Me.Txt
  loc_1446CCF:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446CF8:     If (Trim(CVar(var_90)) = "sms_center_password") Then
  loc_1446D08:       Set var_8C = Me.Txt
  loc_1446D0E:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446D16:       var_90.Text = vbNullString
  loc_1446D2F:       Set var_8C = Me.Txt
  loc_1446D35:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446D3D:       var_90.PasswordChar = "*"
  loc_1446D49:     End If
  loc_1446D53:     Set var_8C = Me.Txt
  loc_1446D59:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446D82:     If (Trim(CVar(var_90)) = "sms_center_password") Then
  loc_1446D94:       Set var_8C = Me.Txt
  loc_1446D9A:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446DA2:       var_90.ForeColor = &HC0C0C0
  loc_1446DB1:     Else
  loc_1446DC0:       Set var_8C = Me.Txt
  loc_1446DC6:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446DCE:       var_90.ForeColor = -2147483640
  loc_1446DDA:     End If
  loc_1446DDD:   Else
  loc_1446DE5:     If (var_86 = CInt(2)) Then
  loc_1446DF2:       Set var_8C = Me.Txt
  loc_1446DF8:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446E21:       If (Trim(CVar(var_90)) = "sms_d_name") Then
  loc_1446E31:         Set var_8C = Me.Txt
  loc_1446E37:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446E3F:         var_90.Text = vbNullString
  loc_1446E4B:       End If
  loc_1446E55:       Set var_8C = Me.Txt
  loc_1446E5B:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446E84:       If (Trim(CVar(var_90)) = "sms_d_name") Then
  loc_1446E96:         Set var_8C = Me.Txt
  loc_1446E9C:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446EA4:         var_90.ForeColor = &HC0C0C0
  loc_1446EB3:       Else
  loc_1446EC2:         Set var_8C = Me.Txt
  loc_1446EC8:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446ED0:         var_90.ForeColor = -2147483640
  loc_1446EDC:       End If
  loc_1446EDF:     Else
  loc_1446EE7:       If (var_86 = CInt(3)) Then
  loc_1446EF4:         Set var_8C = Me.Txt
  loc_1446EFA:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446F23:         If (Trim(CVar(var_90)) = "sms_ph_pre") Then
  loc_1446F33:           Set var_8C = Me.Txt
  loc_1446F39:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446F41:           var_90.Text = vbNullString
  loc_1446F4D:         End If
  loc_1446F57:         Set var_8C = Me.Txt
  loc_1446F5D:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446F86:         If (Trim(CVar(var_90)) = "sms_ph_pre") Then
  loc_1446F98:           Set var_8C = Me.Txt
  loc_1446F9E:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446FA6:           var_90.ForeColor = &HC0C0C0
  loc_1446FB5:         Else
  loc_1446FC4:           Set var_8C = Me.Txt
  loc_1446FCA:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1446FD2:           var_90.ForeColor = -2147483640
  loc_1446FDE:         End If
  loc_1446FE1:       Else
  loc_1446FE9:         If (var_86 = CInt(4)) Then
  loc_1446FF6:           Set var_8C = Me.Txt
  loc_1446FFC:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447025:           If (Trim(CVar(var_90)) = "sms_url") Then
  loc_1447035:             Set var_8C = Me.Txt
  loc_144703B:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447043:             var_90.Text = vbNullString
  loc_144704F:           End If
  loc_1447059:           Set var_8C = Me.Txt
  loc_144705F:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447088:           If (Trim(CVar(var_90)) = "sms_url") Then
  loc_144709A:             Set var_8C = Me.Txt
  loc_14470A0:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14470A8:             var_90.ForeColor = &HC0C0C0
  loc_14470B7:           Else
  loc_14470C6:             Set var_8C = Me.Txt
  loc_14470CC:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14470D4:             var_90.ForeColor = -2147483640
  loc_14470E0:           End If
  loc_14470E3:         Else
  loc_14470EB:           If (var_86 = CInt(8)) Then
  loc_14470F8:             Set var_8C = Me.Txt
  loc_14470FE:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447127:             If (Trim(CVar(var_90)) = "key_username") Then
  loc_1447137:               Set var_8C = Me.Txt
  loc_144713D:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447145:               var_90.Text = vbNullString
  loc_1447151:             End If
  loc_144715B:             Set var_8C = Me.Txt
  loc_1447161:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_144718A:             If (Trim(CVar(var_90)) = "key_username") Then
  loc_144719C:               Set var_8C = Me.Txt
  loc_14471A2:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14471AA:               var_90.ForeColor = &HC0C0C0
  loc_14471B9:             Else
  loc_14471C8:               Set var_8C = Me.Txt
  loc_14471CE:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14471D6:               var_90.ForeColor = -2147483640
  loc_14471E2:             End If
  loc_14471E5:           Else
  loc_14471ED:             If (var_86 = CInt(9)) Then
  loc_14471FA:               Set var_8C = Me.Txt
  loc_1447200:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447229:               If (Trim(CVar(var_90)) = "key_password") Then
  loc_1447239:                 Set var_8C = Me.Txt
  loc_144723F:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447247:                 var_90.Text = vbNullString
  loc_1447253:               End If
  loc_144725D:               Set var_8C = Me.Txt
  loc_1447263:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_144728C:               If (Trim(CVar(var_90)) = "key_password") Then
  loc_144729E:                 Set var_8C = Me.Txt
  loc_14472A4:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14472AC:                 var_90.ForeColor = &HC0C0C0
  loc_14472BB:               Else
  loc_14472CA:                 Set var_8C = Me.Txt
  loc_14472D0:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14472D8:                 var_90.ForeColor = -2147483640
  loc_14472E4:               End If
  loc_14472E7:             Else
  loc_14472EF:               If (var_86 = CInt(&HA)) Then
  loc_14472FC:                 Set var_8C = Me.Txt
  loc_1447302:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_144732B:                 If (Trim(CVar(var_90)) = "key_from") Then
  loc_144733B:                   Set var_8C = Me.Txt
  loc_1447341:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447349:                   var_90.Text = vbNullString
  loc_1447355:                 End If
  loc_144735F:                 Set var_8C = Me.Txt
  loc_1447365:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_144738E:                 If (Trim(CVar(var_90)) = "key_from") Then
  loc_14473A0:                   Set var_8C = Me.Txt
  loc_14473A6:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14473AE:                   var_90.ForeColor = &HC0C0C0
  loc_14473BD:                 Else
  loc_14473CC:                   Set var_8C = Me.Txt
  loc_14473D2:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14473DA:                   var_90.ForeColor = -2147483640
  loc_14473E6:                 End If
  loc_14473E9:               Else
  loc_14473F1:                 If (var_86 = CInt(&HB)) Then
  loc_14473FE:                   Set var_8C = Me.Txt
  loc_1447404:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_144742D:                   If (Trim(CVar(var_90)) = "key_phno") Then
  loc_144743D:                     Set var_8C = Me.Txt
  loc_1447443:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_144744B:                     var_90.Text = vbNullString
  loc_1447457:                   End If
  loc_1447461:                   Set var_8C = Me.Txt
  loc_1447467:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447490:                   If (Trim(CVar(var_90)) = "key_phno") Then
  loc_14474A2:                     Set var_8C = Me.Txt
  loc_14474A8:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14474B0:                     var_90.ForeColor = &HC0C0C0
  loc_14474BF:                   Else
  loc_14474CE:                     Set var_8C = Me.Txt
  loc_14474D4:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14474DC:                     var_90.ForeColor = -2147483640
  loc_14474E8:                   End If
  loc_14474EB:                 Else
  loc_14474F3:                   If (var_86 = CInt(&HC)) Then
  loc_1447500:                     Set var_8C = Me.Txt
  loc_1447506:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_144752F:                     If (Trim(CVar(var_90)) = "key_message") Then
  loc_144753F:                       Set var_8C = Me.Txt
  loc_1447545:                       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_144754D:                       var_90.Text = vbNullString
  loc_1447559:                     End If
  loc_1447563:                     Set var_8C = Me.Txt
  loc_1447569:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447592:                     If (Trim(CVar(var_90)) = "key_message") Then
  loc_14475A4:                       Set var_8C = Me.Txt
  loc_14475AA:                       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14475B2:                       var_90.ForeColor = &HC0C0C0
  loc_14475C1:                     Else
  loc_14475D0:                       Set var_8C = Me.Txt
  loc_14475D6:                       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14475DE:                       var_90.ForeColor = -2147483640
  loc_14475EA:                     End If
  loc_14475ED:                   Else
  loc_14475F5:                     If (var_86 = CInt(&HD)) Then
  loc_1447602:                       Set var_8C = Me.Txt
  loc_1447608:                       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447631:                       If (Trim(CVar(var_90)) = "key_extra") Then
  loc_1447641:                         Set var_8C = Me.Txt
  loc_1447647:                         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_144764F:                         var_90.Text = vbNullString
  loc_144765B:                       End If
  loc_1447665:                       Set var_8C = Me.Txt
  loc_144766B:                       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1447694:                       If (Trim(CVar(var_90)) = "key_extra") Then
  loc_14476A6:                         Set var_8C = Me.Txt
  loc_14476AC:                         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14476B4:                         var_90.ForeColor = &HC0C0C0
  loc_14476C3:                       Else
  loc_14476D2:                         Set var_8C = Me.Txt
  loc_14476D8:                         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_14476E0:                         var_90.ForeColor = -2147483640
  loc_14476EC:                       End If
  loc_14476EC:                     End If
  loc_14476EC:                   End If
  loc_14476EC:                 End If
  loc_14476EC:               End If
  loc_14476EC:             End If
  loc_14476EC:           End If
  loc_14476EC:         End If
  loc_14476EC:       End If
  loc_14476EC:     End If
  loc_14476EC:   End If
  loc_14476EC: End If
  loc_14476EC: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1445450
  'Data Table: 42A948
  Dim var_86 As Integer
  Dim var_90 As TextBox
  loc_144490F: var_86 = Cancel
  loc_144491A: If (var_86 = CInt(0)) Then
  loc_1444927:   Set var_8C = Me.Txt
  loc_144492D:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444956:   If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1444966:     Set var_8C = Me.Txt
  loc_144496C:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444974:     var_90.Text = "sms_center_user_name"
  loc_1444980:   End If
  loc_144498A:   Set var_8C = Me.Txt
  loc_1444990:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14449B9:   If (Trim(CVar(var_90)) = "sms_center_user_name") Then
  loc_14449CB:     Set var_8C = Me.Txt
  loc_14449D1:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14449D9:     var_90.ForeColor = &HC0C0C0
  loc_14449E8:   Else
  loc_14449F7:     Set var_8C = Me.Txt
  loc_14449FD:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444A05:     var_90.ForeColor = -2147483640
  loc_1444A11:   End If
  loc_1444A14: Else
  loc_1444A1C:   If (var_86 = CInt(1)) Then
  loc_1444A29:     Set var_8C = Me.Txt
  loc_1444A2F:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444A58:     If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1444A68:       Set var_8C = Me.Txt
  loc_1444A6E:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444A76:       var_90.Text = "sms_center_password"
  loc_1444A8F:       Set var_8C = Me.Txt
  loc_1444A95:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444A9D:       var_90.PasswordChar = vbNullString
  loc_1444AA9:     End If
  loc_1444AB3:     Set var_8C = Me.Txt
  loc_1444AB9:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444AE2:     If (Trim(CVar(var_90)) = "sms_center_password") Then
  loc_1444AF4:       Set var_8C = Me.Txt
  loc_1444AFA:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444B02:       var_90.ForeColor = &HC0C0C0
  loc_1444B11:     Else
  loc_1444B20:       Set var_8C = Me.Txt
  loc_1444B26:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444B2E:       var_90.ForeColor = -2147483640
  loc_1444B3A:     End If
  loc_1444B3D:   Else
  loc_1444B45:     If (var_86 = CInt(2)) Then
  loc_1444B52:       Set var_8C = Me.Txt
  loc_1444B58:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444B81:       If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1444B91:         Set var_8C = Me.Txt
  loc_1444B97:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444B9F:         var_90.Text = "sms_d_name"
  loc_1444BAB:       End If
  loc_1444BB5:       Set var_8C = Me.Txt
  loc_1444BBB:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444BE4:       If (Trim(CVar(var_90)) = "sms_d_name") Then
  loc_1444BF6:         Set var_8C = Me.Txt
  loc_1444BFC:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444C04:         var_90.ForeColor = &HC0C0C0
  loc_1444C13:       Else
  loc_1444C22:         Set var_8C = Me.Txt
  loc_1444C28:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444C30:         var_90.ForeColor = -2147483640
  loc_1444C3C:       End If
  loc_1444C3F:     Else
  loc_1444C47:       If (var_86 = CInt(3)) Then
  loc_1444C54:         Set var_8C = Me.Txt
  loc_1444C5A:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444C83:         If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1444C93:           Set var_8C = Me.Txt
  loc_1444C99:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444CA1:           var_90.Text = "sms_ph_pre"
  loc_1444CAD:         End If
  loc_1444CB7:         Set var_8C = Me.Txt
  loc_1444CBD:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444CE6:         If (Trim(CVar(var_90)) = "sms_ph_pre") Then
  loc_1444CF8:           Set var_8C = Me.Txt
  loc_1444CFE:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444D06:           var_90.ForeColor = &HC0C0C0
  loc_1444D15:         Else
  loc_1444D24:           Set var_8C = Me.Txt
  loc_1444D2A:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444D32:           var_90.ForeColor = -2147483640
  loc_1444D3E:         End If
  loc_1444D41:       Else
  loc_1444D49:         If (var_86 = CInt(4)) Then
  loc_1444D56:           Set var_8C = Me.Txt
  loc_1444D5C:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444D85:           If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1444D95:             Set var_8C = Me.Txt
  loc_1444D9B:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444DA3:             var_90.Text = "sms_url"
  loc_1444DAF:           End If
  loc_1444DB9:           Set var_8C = Me.Txt
  loc_1444DBF:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444DE8:           If (Trim(CVar(var_90)) = "sms_url") Then
  loc_1444DFA:             Set var_8C = Me.Txt
  loc_1444E00:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444E08:             var_90.ForeColor = &HC0C0C0
  loc_1444E17:           Else
  loc_1444E26:             Set var_8C = Me.Txt
  loc_1444E2C:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444E34:             var_90.ForeColor = -2147483640
  loc_1444E40:           End If
  loc_1444E43:         Else
  loc_1444E4B:           If (var_86 = CInt(8)) Then
  loc_1444E58:             Set var_8C = Me.Txt
  loc_1444E5E:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444E87:             If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1444E97:               Set var_8C = Me.Txt
  loc_1444E9D:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444EA5:               var_90.Text = "key_username"
  loc_1444EB1:             End If
  loc_1444EBB:             Set var_8C = Me.Txt
  loc_1444EC1:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444EEA:             If (Trim(CVar(var_90)) = "key_username") Then
  loc_1444EFC:               Set var_8C = Me.Txt
  loc_1444F02:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444F0A:               var_90.ForeColor = &HC0C0C0
  loc_1444F19:             Else
  loc_1444F28:               Set var_8C = Me.Txt
  loc_1444F2E:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444F36:               var_90.ForeColor = -2147483640
  loc_1444F42:             End If
  loc_1444F45:           Else
  loc_1444F4D:             If (var_86 = CInt(9)) Then
  loc_1444F5A:               Set var_8C = Me.Txt
  loc_1444F60:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444F89:               If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1444F99:                 Set var_8C = Me.Txt
  loc_1444F9F:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444FA7:                 var_90.Text = "key_password"
  loc_1444FB3:               End If
  loc_1444FBD:               Set var_8C = Me.Txt
  loc_1444FC3:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1444FEC:               If (Trim(CVar(var_90)) = "key_password") Then
  loc_1444FFE:                 Set var_8C = Me.Txt
  loc_1445004:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_144500C:                 var_90.ForeColor = &HC0C0C0
  loc_144501B:               Else
  loc_144502A:                 Set var_8C = Me.Txt
  loc_1445030:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445038:                 var_90.ForeColor = -2147483640
  loc_1445044:               End If
  loc_1445047:             Else
  loc_144504F:               If (var_86 = CInt(&HA)) Then
  loc_144505C:                 Set var_8C = Me.Txt
  loc_1445062:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_144508B:                 If (Trim(CVar(var_90)) = vbNullString) Then
  loc_144509B:                   Set var_8C = Me.Txt
  loc_14450A1:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14450A9:                   var_90.Text = "key_from"
  loc_14450B5:                 End If
  loc_14450BF:                 Set var_8C = Me.Txt
  loc_14450C5:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14450EE:                 If (Trim(CVar(var_90)) = "key_from") Then
  loc_1445100:                   Set var_8C = Me.Txt
  loc_1445106:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_144510E:                   var_90.ForeColor = &HC0C0C0
  loc_144511D:                 Else
  loc_144512C:                   Set var_8C = Me.Txt
  loc_1445132:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_144513A:                   var_90.ForeColor = -2147483640
  loc_1445146:                 End If
  loc_1445149:               Else
  loc_1445151:                 If (var_86 = CInt(&HB)) Then
  loc_144515E:                   Set var_8C = Me.Txt
  loc_1445164:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_144518D:                   If (Trim(CVar(var_90)) = vbNullString) Then
  loc_144519D:                     Set var_8C = Me.Txt
  loc_14451A3:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14451AB:                     var_90.Text = "key_phno"
  loc_14451B7:                   End If
  loc_14451C1:                   Set var_8C = Me.Txt
  loc_14451C7:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14451F0:                   If (Trim(CVar(var_90)) = "key_phno") Then
  loc_1445202:                     Set var_8C = Me.Txt
  loc_1445208:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445210:                     var_90.ForeColor = &HC0C0C0
  loc_144521F:                   Else
  loc_144522E:                     Set var_8C = Me.Txt
  loc_1445234:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_144523C:                     var_90.ForeColor = -2147483640
  loc_1445248:                   End If
  loc_144524B:                 Else
  loc_1445253:                   If (var_86 = CInt(&HC)) Then
  loc_1445260:                     Set var_8C = Me.Txt
  loc_1445266:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_144528F:                     If (Trim(CVar(var_90)) = vbNullString) Then
  loc_144529F:                       Set var_8C = Me.Txt
  loc_14452A5:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14452AD:                       var_90.Text = "key_message"
  loc_14452B9:                     End If
  loc_14452C3:                     Set var_8C = Me.Txt
  loc_14452C9:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14452F2:                     If (Trim(CVar(var_90)) = "key_message") Then
  loc_1445304:                       Set var_8C = Me.Txt
  loc_144530A:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445312:                       var_90.ForeColor = &HC0C0C0
  loc_1445321:                     Else
  loc_1445330:                       Set var_8C = Me.Txt
  loc_1445336:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_144533E:                       var_90.ForeColor = -2147483640
  loc_144534A:                     End If
  loc_144534D:                   Else
  loc_1445355:                     If (var_86 = CInt(&HD)) Then
  loc_1445362:                       Set var_8C = Me.Txt
  loc_1445368:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445391:                       If (Trim(CVar(var_90)) = vbNullString) Then
  loc_14453A1:                         Set var_8C = Me.Txt
  loc_14453A7:                         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14453AF:                         var_90.Text = "key_extra"
  loc_14453BB:                       End If
  loc_14453C5:                       Set var_8C = Me.Txt
  loc_14453CB:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14453F4:                       If (Trim(CVar(var_90)) = "key_extra") Then
  loc_1445406:                         Set var_8C = Me.Txt
  loc_144540C:                         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445414:                         var_90.ForeColor = &HC0C0C0
  loc_1445423:                       Else
  loc_1445432:                         Set var_8C = Me.Txt
  loc_1445438:                         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1445440:                         var_90.ForeColor = -2147483640
  loc_144544C:                       End If
  loc_144544C:                     End If
  loc_144544C:                   End If
  loc_144544C:                 End If
  loc_144544C:               End If
  loc_144544C:             End If
  loc_144544C:           End If
  loc_144544C:         End If
  loc_144544C:       End If
  loc_144544C:     End If
  loc_144544C:   End If
  loc_144544C: End If
  loc_144544C: Exit Sub
End Sub

Private Sub CmdRenuval_Click() 'E1B49C
  'Data Table: 42A948
  Dim var_2F01 As Double
  loc_E1B491: Me.Global.Unload Me
  loc_E1B499: Exit Sub
  loc_E1B49A: var_2F01 = 
End Sub

Private Sub cmdType_Click() '1408484
  'Data Table: 42A948
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_42A94D As Connection15
  Dim var_BC As String
  Dim var_D0 As Variant
  Dim var_B4 As Recordset15
  Dim var_C0 As Fields15
  Dim var_D4 As Field20
  Dim var_88 As Long
  Dim var_FC As Variant
  Dim var_B0 As Variant
  Dim var_10C As Variant
  loc_1407A64: On Error Resume Next
  loc_1407A7D: var_8C = "Delete From EmailSMSForward Where Type In ('Common','Holiday','Outstanding','Birth Day','Marriage Anniversary') And LogSite_Code='" & MemVar_1F92078
  loc_1407A8D: unk_42A94D.Execute var_8C & "'", var_B0, -1
  loc_1407ABC: var_90 = "Update EmailSMSForward Set FlagType='FOM',DepartCode='" & MemVar_1F92078 & "FOM'  Where Type In ('Reservation','Reservation Cancel','Check In','Check Out') And LogSite_Code='"
  loc_1407AD3: unk_42A94D.Execute var_90 & MemVar_1F92078 & "'", var_B0, -1
  loc_1407B06: var_90 = "Update EmailSMSForward Set FlagType='BANQ',DepartCode='" & MemVar_1F92078 & "BANQ'  Where Type In ('Booking','Booking Cancel') And LogSite_Code='"
  loc_1407B1D: unk_42A94D.Execute var_90 & MemVar_1F92078 & "'", var_B0, -1
  loc_1407B3B: var_D0 = 0
  loc_1407B5A: unk_42A94D.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_B0, -1
  loc_1407B62: var_B4 = var_B4.Fields
  loc_1407B6A: var_D0 = var_C0.Item(var_C0)
  loc_1407B72: var_D4 = var_D4.Value
  loc_1407B7C: var_88 = CLng(var_E4)
  loc_1407BA5: var_8C = "If Not Exists (Select * From EmailSMSForward Where FlagType='FOM' And Type='Reservation' And LogSite_Code='" & MemVar_1F92078
  loc_1407BB8: var_BC = var_8C & "') Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,FlagType,DepartCode) values(" & CStr(var_88)
  loc_1407BD5: var_B0 = CVar(Proc_6_14_EF349C(CVar(var_BC & ",'Reservation','" & MemVar_1F92070 & "','Analysis',"), var_1B0, -1, var_B4, var_88)) 'String
  loc_1407BDB: Proc_6_8_EB0DE4(var_E4, var_B0, var_E4)
  loc_1407C20: unk_42A94D.Execute CStr(var_B4 & var_E4 & ",'A','" & CVar(MemVar_1F92078) & "','FOM','" & CVar(MemVar_1F92078) & "FOM')"), var_B4, var_B4
  loc_1407C58: var_D0 = 0
  loc_1407C77: unk_42A94D.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_B0, -1
  loc_1407C87: var_D0 = var_C0.Item(var_C0)
  loc_1407C8F: var_D4 = var_D4.Value
  loc_1407C99: var_88 = CLng(var_E4)
  loc_1407CC2: var_8C = "If Not Exists (Select * From EmailSMSForward Where FlagType='FOM' And Type='Reservation Cancel' And LogSite_Code='" & MemVar_1F92078
  loc_1407CD5: var_BC = var_8C & "') Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,FlagType,DepartCode) values(" & CStr(var_88)
  loc_1407CF2: var_B0 = CVar(Proc_6_14_EF349C(CVar(var_BC & ",'Reservation Cancel','" & MemVar_1F92070 & "','Analysis',"), var_1B0, -1)) 'String
  loc_1407CF8: Proc_6_8_EB0DE4(var_E4, var_B0, var_B4.Fields)
  loc_1407D3D: unk_42A94D.Execute CStr(var_88 & var_E4 & ",'A','" & CVar(MemVar_1F92078) & "','FOM','" & CVar(MemVar_1F92078) & "FOM')"), var_E4, 
  loc_1407D75: var_D0 = 0
  loc_1407D94: unk_42A94D.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_B0, -1
  loc_1407DA4: var_D0 = var_C0.Item(var_C0)
  loc_1407DAC: var_D4 = var_D4.Value
  loc_1407DB6: var_88 = CLng(var_E4)
  loc_1407DE6: var_90 = "If Not Exists (Select * From EmailSMSForward Where FlagType='FOM' And Type='Check In' And LogSite_Code='" & MemVar_1F92078 & "') Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,FlagType,DepartCode) values("
  loc_1407E0F: var_B0 = CVar(Proc_6_14_EF349C(CVar(var_90 & CStr(var_88) & ",'Check In','" & MemVar_1F92070 & "','Analysis',"), var_1B0, -1)) 'String
  loc_1407E15: Proc_6_8_EB0DE4(var_E4, var_B0, var_B4.Fields)
  loc_1407E5A: unk_42A94D.Execute CStr(var_88 & var_E4 & ",'A','" & CVar(MemVar_1F92078) & "','FOM','" & CVar(MemVar_1F92078) & "FOM')"), var_E4, 
  loc_1407E92: var_D0 = 0
  loc_1407EB1: unk_42A94D.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_B0, -1
  loc_1407EC1: var_D0 = var_C0.Item(var_C0)
  loc_1407EC9: var_D4 = var_D4.Value
  loc_1407ED3: var_88 = CLng(var_E4)
  loc_1407F03: var_90 = "If Not Exists (Select * From EmailSMSForward Where FlagType='FOM' And Type='Check Out' And LogSite_Code='" & MemVar_1F92078 & "') Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,FlagType,DepartCode) values("
  loc_1407F2C: var_B0 = CVar(Proc_6_14_EF349C(CVar(var_90 & CStr(var_88) & ",'Check Out','" & MemVar_1F92070 & "','Analysis',"), var_1B0, -1)) 'String
  loc_1407F32: Proc_6_8_EB0DE4(var_E4, var_B0, var_B4.Fields)
  loc_1407F77: unk_42A94D.Execute CStr(var_88 & var_E4 & ",'A','" & CVar(MemVar_1F92078) & "','FOM','" & CVar(MemVar_1F92078) & "FOM')"), var_E4, 
  loc_1407FAF: var_D0 = 0
  loc_1407FCE: unk_42A94D.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_B0, -1
  loc_1407FDE: var_D0 = var_C0.Item(var_C0)
  loc_1407FE6: var_D4 = var_D4.Value
  loc_1407FF0: var_88 = CLng(var_E4)
  loc_1408020: var_90 = "If Not Exists (Select * From EmailSMSForward Where FlagType='BANQ' And Type='Booking' And LogSite_Code='" & MemVar_1F92078 & "') Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,FlagType,DepartCode) values("
  loc_1408049: var_B0 = CVar(Proc_6_14_EF349C(CVar(var_90 & CStr(var_88) & ",'Booking','" & MemVar_1F92070 & "','Analysis',"), var_1B0, -1)) 'String
  loc_140804F: Proc_6_8_EB0DE4(var_E4, var_B0, var_B4.Fields)
  loc_1408094: unk_42A94D.Execute CStr(var_88 & var_E4 & ",'A','" & CVar(MemVar_1F92078) & "','BANQ','" & CVar(MemVar_1F92078) & "BANQ')"), var_E4, 
  loc_14080CC: var_D0 = 0
  loc_14080EB: unk_42A94D.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_B0, -1
  loc_14080FB: var_D0 = var_C0.Item(var_C0)
  loc_1408103: var_D4 = var_D4.Value
  loc_140810D: var_88 = CLng(var_E4)
  loc_1408136: var_8C = "If Not Exists (Select * From EmailSMSForward Where FlagType='BANQ' And Type='Booking Cancel' And LogSite_Code='" & MemVar_1F92078
  loc_1408149: var_BC = var_8C & "') Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,FlagType,DepartCode) values(" & CStr(var_88)
  loc_1408166: var_B0 = CVar(Proc_6_14_EF349C(CVar(var_BC & ",'Booking Cancel','" & MemVar_1F92070 & "','Analysis',"), var_1B0, -1)) 'String
  loc_140816C: Proc_6_8_EB0DE4(var_E4, var_B0, var_B4.Fields)
  loc_14081B1: unk_42A94D.Execute CStr(var_88 & var_E4 & ",'A','" & CVar(MemVar_1F92078) & "','BANQ','" & CVar(MemVar_1F92078) & "BANQ')"), var_E4, 
  loc_14081E9: var_D0 = 0
  loc_1408208: unk_42A94D.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_B0, -1
  loc_1408218: var_D0 = var_C0.Item(var_C0)
  loc_1408220: var_D4 = var_D4.Value
  loc_140822A: var_88 = CLng(var_E4)
  loc_1408253: var_8C = "If Not Exists (Select * From EmailSMSForward Where FlagType='POS' And Type='KOT Message' And LogSite_Code='" & MemVar_1F92078
  loc_1408268: var_BC = var_8C & "' And DepartCode='" & MemVar_1F92078 & "RS') Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,FlagType,DepartCode) values("
  loc_1408291: var_B0 = CVar(Proc_6_14_EF349C(CVar(var_BC & CStr(var_88) & ",'KOT Message','" & MemVar_1F92070 & "','Analysis',"), var_1B0, -1)) 'String
  loc_1408297: Proc_6_8_EB0DE4(var_E4, var_B0, var_B4.Fields)
  loc_14082DC: unk_42A94D.Execute CStr(var_88 & var_E4 & ",'A','" & CVar(MemVar_1F92078) & "','POS','" & CVar(MemVar_1F92078) & "RS')"), var_E4, 
  loc_1408318: var_D0 = 0
  loc_1408337: unk_42A94D.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_B0, -1
  loc_1408347: var_D0 = var_C0.Item(var_C0)
  loc_140834F: var_D4 = var_D4.Value
  loc_1408359: var_88 = CLng(var_E4)
  loc_1408382: var_8C = "If Not Exists (Select * From EmailSMSForward Where FlagType='POS' And Type='Outlet Bill' And LogSite_Code='" & MemVar_1F92078
  loc_1408397: var_BC = var_8C & "' And DepartCode='" & MemVar_1F92078 & "RS') Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,FlagType,DepartCode) values("
  loc_14083B8: var_FC = CVar(var_BC & CStr(var_88) & ",'Outlet Bill','" & MemVar_1F92070 & "','Analysis',") 'String
  loc_14083C0: var_B0 = CVar(Proc_6_14_EF349C(var_FC, var_1B0, -1)) 'String
  loc_14083C6: Proc_6_8_EB0DE4(var_E4, var_B0, var_B4.Fields)
  loc_14083CE: var_10C = var_88 & var_E4 
  loc_140840B: unk_42A94D.Execute CStr(var_10C & ",'A','" & CVar(MemVar_1F92078) & "','POS','" & CVar(MemVar_1F92078) & "RS')"), var_E4, 
  loc_1408441: Exit Sub
  loc_140844C: Set var_B4 = Err()
  loc_1408452: Call 0.Method_arg_2C (var_8C)
  loc_140846B: MsgBox(CVar(var_8C), &H40, var_E4, var_FC, var_10C)
  loc_1408480: Exit Sub
End Sub

Public Sub Proc_231_9_E95A38
  'Data Table: 42A948
  Dim var_98 As TextBox
  Dim var_2FFC As Variant
  loc_E959C4: Set var_8C = Me.Txt
  loc_E959CA: Call 0.Method_Proc_231_9_E95A38C (var_8E, var_86)
  loc_E959D8: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_E959EB:   Set var_8C = Me.Txt
  loc_E959F1:   Call 0.Method_Proc_231_9_E95A380 (var_86, var_98)
  loc_E959F9:   var_98.Text = vbNullString
  loc_E95A12:   Set var_8C = Me.Txt
  loc_E95A18:   Call 0.Method_Proc_231_9_E95A380 (var_86, var_98)
  loc_E95A20:   var_98.Tag = vbNullString
  loc_E95A2F: Next var_92 'Integer
  loc_E95A34: Exit Sub
  loc_E95A35: var_2FFC = 
End Sub

Public Sub Proc_231_10_14645B0
  'Data Table: 42A948
  Dim var_94 As Integer
  Dim var_98 As TextBox
  Dim var_E0 As TextBox
  loc_14639E4: Set var_8C = Me.Txt
  loc_14639EA: Call 0.Method_Proc_231_10_14645B0C (var_8E, var_86)
  loc_14639F8: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_1463A01:   var_94 = var_86
  loc_1463A0C:   If (var_94 = CInt(0)) Then
  loc_1463A19:     Set var_8C = Me.Txt
  loc_1463A1F:     Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463A48:     If (Trim(CVar(var_98)) = vbNullString) Then
  loc_1463A58:       Set var_8C = Me.Txt
  loc_1463A5E:       Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463A66:       var_98.Text = "sms_center_user_name"
  loc_1463A72:     End If
  loc_1463A7C:     Set var_8C = Me.Txt
  loc_1463A82:     Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463AAB:     If (Trim(CVar(var_98)) = "sms_center_user_name") Then
  loc_1463ABD:       Set var_8C = Me.Txt
  loc_1463AC3:       Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463ACB:       var_98.ForeColor = &HC0C0C0
  loc_1463ADA:     Else
  loc_1463AE9:       Set var_8C = Me.Txt
  loc_1463AEF:       Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463AF7:       var_98.ForeColor = -2147483640
  loc_1463B03:     End If
  loc_1463B06:   Else
  loc_1463B0E:     If (var_94 = CInt(1)) Then
  loc_1463B1B:       Set var_8C = Me.Txt
  loc_1463B21:       Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463B4F:       Set var_DC = Me.Txt
  loc_1463B55:       Call 0.Method_Proc_231_10_14645B00 (var_86, var_E0, var_E4)
  loc_1463B5D:       (Trim(CVar(var_98)) = vbNullString) = var_E0.Text
  loc_1463B89:       If CBool(var_94 Or (var_E4 = "sms_center_password")) Then
  loc_1463B99:         Set var_8C = Me.Txt
  loc_1463B9F:         Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463BA7:         var_98.Text = "sms_center_password"
  loc_1463BC0:         Set var_8C = Me.Txt
  loc_1463BC6:         Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463BCE:         var_98.PasswordChar = vbNullString
  loc_1463BDD:       Else
  loc_1463BEA:         Set var_8C = Me.Txt
  loc_1463BF0:         Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463BF8:         var_98.PasswordChar = "*"
  loc_1463C04:       End If
  loc_1463C0E:       Set var_8C = Me.Txt
  loc_1463C14:       Call 0.Method_Proc_231_10_14645B00 (var_86)
  loc_1463C3D:       If (Trim(CVar(var_98)) = "sms_center_password") Then
  loc_1463C4F:         Set var_8C = Me.Txt
  loc_1463C55:         Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463C5D:         var_98.ForeColor = &HC0C0C0
  loc_1463C6C:       Else
  loc_1463C7B:         Set var_8C = Me.Txt
  loc_1463C81:         Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463C89:         var_98.ForeColor = -2147483640
  loc_1463C95:       End If
  loc_1463C98:     Else
  loc_1463CA0:       If (var_94 = CInt(2)) Then
  loc_1463CAD:         Set var_8C = Me.Txt
  loc_1463CB3:         Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463CDC:         If (Trim(CVar(var_98)) = vbNullString) Then
  loc_1463CEC:           Set var_8C = Me.Txt
  loc_1463CF2:           Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463CFA:           var_98.Text = "sms_d_name"
  loc_1463D06:         End If
  loc_1463D10:         Set var_8C = Me.Txt
  loc_1463D16:         Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463D3F:         If (Trim(CVar(var_98)) = "sms_d_name") Then
  loc_1463D51:           Set var_8C = Me.Txt
  loc_1463D57:           Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463D5F:           var_98.ForeColor = &HC0C0C0
  loc_1463D6E:         Else
  loc_1463D7D:           Set var_8C = Me.Txt
  loc_1463D83:           Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463D8B:           var_98.ForeColor = -2147483640
  loc_1463D97:         End If
  loc_1463D9A:       Else
  loc_1463DA2:         If (var_94 = CInt(3)) Then
  loc_1463DAF:           Set var_8C = Me.Txt
  loc_1463DB5:           Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463DDE:           If (Trim(CVar(var_98)) = vbNullString) Then
  loc_1463DEE:             Set var_8C = Me.Txt
  loc_1463DF4:             Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463DFC:             var_98.Text = "sms_ph_pre"
  loc_1463E08:           End If
  loc_1463E12:           Set var_8C = Me.Txt
  loc_1463E18:           Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463E41:           If (Trim(CVar(var_98)) = "sms_ph_pre") Then
  loc_1463E53:             Set var_8C = Me.Txt
  loc_1463E59:             Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463E61:             var_98.ForeColor = &HC0C0C0
  loc_1463E70:           Else
  loc_1463E7F:             Set var_8C = Me.Txt
  loc_1463E85:             Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463E8D:             var_98.ForeColor = -2147483640
  loc_1463E99:           End If
  loc_1463E9C:         Else
  loc_1463EA4:           If (var_94 = CInt(4)) Then
  loc_1463EB1:             Set var_8C = Me.Txt
  loc_1463EB7:             Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463EE0:             If (Trim(CVar(var_98)) = vbNullString) Then
  loc_1463EF0:               Set var_8C = Me.Txt
  loc_1463EF6:               Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463EFE:               var_98.Text = "sms_url"
  loc_1463F0A:             End If
  loc_1463F14:             Set var_8C = Me.Txt
  loc_1463F1A:             Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463F43:             If (Trim(CVar(var_98)) = "sms_url") Then
  loc_1463F55:               Set var_8C = Me.Txt
  loc_1463F5B:               Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463F63:               var_98.ForeColor = &HC0C0C0
  loc_1463F72:             Else
  loc_1463F81:               Set var_8C = Me.Txt
  loc_1463F87:               Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463F8F:               var_98.ForeColor = -2147483640
  loc_1463F9B:             End If
  loc_1463F9E:           Else
  loc_1463FA6:             If (var_94 = CInt(8)) Then
  loc_1463FB3:               Set var_8C = Me.Txt
  loc_1463FB9:               Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1463FE2:               If (Trim(CVar(var_98)) = vbNullString) Then
  loc_1463FF2:                 Set var_8C = Me.Txt
  loc_1463FF8:                 Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1464000:                 var_98.Text = "key_username"
  loc_146400C:               End If
  loc_1464016:               Set var_8C = Me.Txt
  loc_146401C:               Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1464045:               If (Trim(CVar(var_98)) = "key_username") Then
  loc_1464057:                 Set var_8C = Me.Txt
  loc_146405D:                 Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1464065:                 var_98.ForeColor = &HC0C0C0
  loc_1464074:               Else
  loc_1464083:                 Set var_8C = Me.Txt
  loc_1464089:                 Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1464091:                 var_98.ForeColor = -2147483640
  loc_146409D:               End If
  loc_14640A0:             Else
  loc_14640A8:               If (var_94 = CInt(9)) Then
  loc_14640B5:                 Set var_8C = Me.Txt
  loc_14640BB:                 Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_14640E4:                 If (Trim(CVar(var_98)) = vbNullString) Then
  loc_14640F4:                   Set var_8C = Me.Txt
  loc_14640FA:                   Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1464102:                   var_98.Text = "key_password"
  loc_146410E:                 End If
  loc_1464118:                 Set var_8C = Me.Txt
  loc_146411E:                 Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1464147:                 If (Trim(CVar(var_98)) = "key_password") Then
  loc_1464159:                   Set var_8C = Me.Txt
  loc_146415F:                   Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1464167:                   var_98.ForeColor = &HC0C0C0
  loc_1464176:                 Else
  loc_1464185:                   Set var_8C = Me.Txt
  loc_146418B:                   Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1464193:                   var_98.ForeColor = -2147483640
  loc_146419F:                 End If
  loc_14641A2:               Else
  loc_14641AA:                 If (var_94 = CInt(&HA)) Then
  loc_14641B7:                   Set var_8C = Me.Txt
  loc_14641BD:                   Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_14641E6:                   If (Trim(CVar(var_98)) = vbNullString) Then
  loc_14641F6:                     Set var_8C = Me.Txt
  loc_14641FC:                     Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1464204:                     var_98.Text = "key_from"
  loc_1464210:                   End If
  loc_146421A:                   Set var_8C = Me.Txt
  loc_1464220:                   Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1464249:                   If (Trim(CVar(var_98)) = "key_from") Then
  loc_146425B:                     Set var_8C = Me.Txt
  loc_1464261:                     Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1464269:                     var_98.ForeColor = &HC0C0C0
  loc_1464278:                   Else
  loc_1464287:                     Set var_8C = Me.Txt
  loc_146428D:                     Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1464295:                     var_98.ForeColor = -2147483640
  loc_14642A1:                   End If
  loc_14642A4:                 Else
  loc_14642AC:                   If (var_94 = CInt(&HB)) Then
  loc_14642B9:                     Set var_8C = Me.Txt
  loc_14642BF:                     Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_14642E8:                     If (Trim(CVar(var_98)) = vbNullString) Then
  loc_14642F8:                       Set var_8C = Me.Txt
  loc_14642FE:                       Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1464306:                       var_98.Text = "key_phno"
  loc_1464312:                     End If
  loc_146431C:                     Set var_8C = Me.Txt
  loc_1464322:                     Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_146434B:                     If (Trim(CVar(var_98)) = "key_phno") Then
  loc_146435D:                       Set var_8C = Me.Txt
  loc_1464363:                       Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_146436B:                       var_98.ForeColor = &HC0C0C0
  loc_146437A:                     Else
  loc_1464389:                       Set var_8C = Me.Txt
  loc_146438F:                       Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1464397:                       var_98.ForeColor = -2147483640
  loc_14643A3:                     End If
  loc_14643A6:                   Else
  loc_14643AE:                     If (var_94 = CInt(&HC)) Then
  loc_14643BB:                       Set var_8C = Me.Txt
  loc_14643C1:                       Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_14643EA:                       If (Trim(CVar(var_98)) = vbNullString) Then
  loc_14643FA:                         Set var_8C = Me.Txt
  loc_1464400:                         Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1464408:                         var_98.Text = "key_message"
  loc_1464414:                       End If
  loc_146441E:                       Set var_8C = Me.Txt
  loc_1464424:                       Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_146444D:                       If (Trim(CVar(var_98)) = "key_message") Then
  loc_146445F:                         Set var_8C = Me.Txt
  loc_1464465:                         Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_146446D:                         var_98.ForeColor = &HC0C0C0
  loc_146447C:                       Else
  loc_146448B:                         Set var_8C = Me.Txt
  loc_1464491:                         Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_1464499:                         var_98.ForeColor = -2147483640
  loc_14644A5:                       End If
  loc_14644A8:                     Else
  loc_14644B0:                       If (var_94 = CInt(&HD)) Then
  loc_14644BD:                         Set var_8C = Me.Txt
  loc_14644C3:                         Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_14644EC:                         If (Trim(CVar(var_98)) = vbNullString) Then
  loc_14644FC:                           Set var_8C = Me.Txt
  loc_1464502:                           Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_146450A:                           var_98.Text = "key_extra"
  loc_1464516:                         End If
  loc_1464520:                         Set var_8C = Me.Txt
  loc_1464526:                         Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_146454F:                         If (Trim(CVar(var_98)) = "key_extra") Then
  loc_1464561:                           Set var_8C = Me.Txt
  loc_1464567:                           Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_146456F:                           var_98.ForeColor = &HC0C0C0
  loc_146457E:                         Else
  loc_146458D:                           Set var_8C = Me.Txt
  loc_1464593:                           Call 0.Method_Proc_231_10_14645B00 (var_86, var_98)
  loc_146459B:                           var_98.ForeColor = -2147483640
  loc_14645A7:                         End If
  loc_14645A7:                       End If
  loc_14645A7:                     End If
  loc_14645A7:                   End If
  loc_14645A7:                 End If
  loc_14645A7:               End If
  loc_14645A7:             End If
  loc_14645A7:           End If
  loc_14645A7:         End If
  loc_14645A7:       End If
  loc_14645A7:     End If
  loc_14645A7:   End If
  loc_14645AA: Next var_92 'Integer
  loc_14645AF: Exit Sub
End Sub

Public Sub Proc_231_11_13330B8
  'Data Table: 42A948
  Dim var_94 As Integer
  Dim var_98 As TextBox
  loc_1332900: Set var_8C = Me.Txt
  loc_1332906: Call 0.Method_Proc_231_11_13330B8C (var_8E, var_86)
  loc_1332914: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_133291D:   var_94 = var_86
  loc_1332928:   If (var_94 = CInt(0)) Then
  loc_1332935:     Set var_8C = Me.Txt
  loc_133293B:     Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332964:     If (Trim(CVar(var_98)) = "sms_center_user_name") Then
  loc_1332974:       Set var_8C = Me.Txt
  loc_133297A:       Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332982:       var_98.Text = vbNullString
  loc_1332991:     Else
  loc_133299E:       Set var_8C = Me.Txt
  loc_13329A4:       Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_13329BA:       var_B8 = Trim(CVar(var_98.Text))
  loc_13329CD:     End If
  loc_13329D0:   Else
  loc_13329D8:     If (var_94 = CInt(1)) Then
  loc_13329E5:       Set var_8C = Me.Txt
  loc_13329EB:       Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332A14:       If (Trim(CVar(var_98)) = "sms_center_password") Then
  loc_1332A24:         Set var_8C = Me.Txt
  loc_1332A2A:         Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332A32:         var_98.Text = vbNullString
  loc_1332A41:       Else
  loc_1332A4E:         Set var_8C = Me.Txt
  loc_1332A54:         Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332A6A:         var_B8 = Trim(CVar(var_98.Text))
  loc_1332A7D:       End If
  loc_1332A80:     Else
  loc_1332A88:       If (var_94 = CInt(2)) Then
  loc_1332A95:         Set var_8C = Me.Txt
  loc_1332A9B:         Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332AC4:         If (Trim(CVar(var_98)) = "sms_d_name") Then
  loc_1332AD4:           Set var_8C = Me.Txt
  loc_1332ADA:           Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332AE2:           var_98.Text = vbNullString
  loc_1332AF1:         Else
  loc_1332AFE:           Set var_8C = Me.Txt
  loc_1332B04:           Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332B1A:           var_B8 = Trim(CVar(var_98.Text))
  loc_1332B2D:         End If
  loc_1332B30:       Else
  loc_1332B38:         If (var_94 = CInt(3)) Then
  loc_1332B45:           Set var_8C = Me.Txt
  loc_1332B4B:           Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332B74:           If (Trim(CVar(var_98)) = "sms_ph_pre") Then
  loc_1332B84:             Set var_8C = Me.Txt
  loc_1332B8A:             Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332B92:             var_98.Text = vbNullString
  loc_1332BA1:           Else
  loc_1332BAE:             Set var_8C = Me.Txt
  loc_1332BB4:             Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332BCA:             var_B8 = Trim(CVar(var_98.Text))
  loc_1332BDD:           End If
  loc_1332BE0:         Else
  loc_1332BE8:           If (var_94 = CInt(4)) Then
  loc_1332BF5:             Set var_8C = Me.Txt
  loc_1332BFB:             Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332C24:             If (Trim(CVar(var_98)) = "sms_url") Then
  loc_1332C34:               Set var_8C = Me.Txt
  loc_1332C3A:               Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332C42:               var_98.Text = vbNullString
  loc_1332C51:             Else
  loc_1332C5E:               Set var_8C = Me.Txt
  loc_1332C64:               Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332C7A:               var_B8 = Trim(CVar(var_98.Text))
  loc_1332C8D:             End If
  loc_1332C90:           Else
  loc_1332C98:             If (var_94 = CInt(8)) Then
  loc_1332CA5:               Set var_8C = Me.Txt
  loc_1332CAB:               Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332CD4:               If (Trim(CVar(var_98)) = "key_username") Then
  loc_1332CE4:                 Set var_8C = Me.Txt
  loc_1332CEA:                 Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332CF2:                 var_98.Text = vbNullString
  loc_1332D01:               Else
  loc_1332D0E:                 Set var_8C = Me.Txt
  loc_1332D14:                 Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332D2A:                 var_B8 = Trim(CVar(var_98.Text))
  loc_1332D3D:               End If
  loc_1332D40:             Else
  loc_1332D48:               If (var_94 = CInt(9)) Then
  loc_1332D55:                 Set var_8C = Me.Txt
  loc_1332D5B:                 Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332D84:                 If (Trim(CVar(var_98)) = "key_password") Then
  loc_1332D94:                   Set var_8C = Me.Txt
  loc_1332D9A:                   Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332DA2:                   var_98.Text = vbNullString
  loc_1332DB1:                 Else
  loc_1332DBE:                   Set var_8C = Me.Txt
  loc_1332DC4:                   Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332DDA:                   var_B8 = Trim(CVar(var_98.Text))
  loc_1332DED:                 End If
  loc_1332DF0:               Else
  loc_1332DF8:                 If (var_94 = CInt(&HA)) Then
  loc_1332E05:                   Set var_8C = Me.Txt
  loc_1332E0B:                   Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332E34:                   If (Trim(CVar(var_98)) = "key_from") Then
  loc_1332E44:                     Set var_8C = Me.Txt
  loc_1332E4A:                     Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332E52:                     var_98.Text = vbNullString
  loc_1332E61:                   Else
  loc_1332E6E:                     Set var_8C = Me.Txt
  loc_1332E74:                     Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332E8A:                     var_B8 = Trim(CVar(var_98.Text))
  loc_1332E9D:                   End If
  loc_1332EA0:                 Else
  loc_1332EA8:                   If (var_94 = CInt(&HB)) Then
  loc_1332EB5:                     Set var_8C = Me.Txt
  loc_1332EBB:                     Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332EE4:                     If (Trim(CVar(var_98)) = "key_phno") Then
  loc_1332EF4:                       Set var_8C = Me.Txt
  loc_1332EFA:                       Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332F02:                       var_98.Text = vbNullString
  loc_1332F11:                     Else
  loc_1332F1E:                       Set var_8C = Me.Txt
  loc_1332F24:                       Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332F3A:                       var_B8 = Trim(CVar(var_98.Text))
  loc_1332F4D:                     End If
  loc_1332F50:                   Else
  loc_1332F58:                     If (var_94 = CInt(&HC)) Then
  loc_1332F65:                       Set var_8C = Me.Txt
  loc_1332F6B:                       Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332F94:                       If (Trim(CVar(var_98)) = "key_message") Then
  loc_1332FA4:                         Set var_8C = Me.Txt
  loc_1332FAA:                         Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332FB2:                         var_98.Text = vbNullString
  loc_1332FC1:                       Else
  loc_1332FCE:                         Set var_8C = Me.Txt
  loc_1332FD4:                         Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1332FEA:                         var_B8 = Trim(CVar(var_98.Text))
  loc_1332FFD:                       End If
  loc_1333000:                     Else
  loc_1333008:                       If (var_94 = CInt(&HD)) Then
  loc_1333015:                         Set var_8C = Me.Txt
  loc_133301B:                         Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1333044:                         If (Trim(CVar(var_98)) = "key_extra") Then
  loc_1333054:                           Set var_8C = Me.Txt
  loc_133305A:                           Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_1333062:                           var_98.Text = vbNullString
  loc_1333071:                         Else
  loc_133307E:                           Set var_8C = Me.Txt
  loc_1333084:                           Call 0.Method_Proc_231_11_13330B80 (var_86, var_98)
  loc_133309A:                           var_B8 = Trim(CVar(var_98.Text))
  loc_13330AD:                         End If
  loc_13330AD:                       End If
  loc_13330AD:                     End If
  loc_13330AD:                   End If
  loc_13330AD:                 End If
  loc_13330AD:               End If
  loc_13330AD:             End If
  loc_13330AD:           End If
  loc_13330AD:         End If
  loc_13330AD:       End If
  loc_13330AD:     End If
  loc_13330AD:   End If
  loc_13330B0: Next var_92 'Integer
  loc_13330B5: Exit Sub
  loc_13330B6: CExtInstUnk
End Sub

Public Sub Proc_231_12_13EAA70
  'Data Table: 42A948
  Dim var_180 As TextBox
  loc_13EA09A: If (Me.Recordset15.RecordCount > 0) Then
  loc_13EA134:   var_178 = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("SmsCenterUserName"))))) <> vbNullString), Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("SmsCenterUserName"))))), "sms_center_user_name")
  loc_13EA14B:   Set var_17C = Me.Txt
  loc_13EA151:   Call 0.Method_Proc_231_12_13EAA700 (CInt(0), var_180)
  loc_13EA159:   var_180.Text = CStr(var_178)
  loc_13EA218:   var_178 = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("SmsCenterPassword"))))) <> vbNullString), Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("SmsCenterPassword"))))), "sms_center_password")
  loc_13EA22F:   Set var_17C = Me.Txt
  loc_13EA235:   Call 0.Method_Proc_231_12_13EAA700 (CInt(1), var_180)
  loc_13EA23D:   var_180.Text = CStr(var_178)
  loc_13EA2FC:   var_178 = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("SmsDisplayName"))))) <> vbNullString), Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("SmsDisplayName"))))), "sms_d_name")
  loc_13EA313:   Set var_17C = Me.Txt
  loc_13EA319:   Call 0.Method_Proc_231_12_13EAA700 (CInt(2), var_180)
  loc_13EA321:   var_180.Text = CStr(var_178)
  loc_13EA3E0:   var_178 = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("SmsPhoneNoPrefix"))))) <> vbNullString), Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("SmsPhoneNoPrefix"))))), "sms_ph_pre")
  loc_13EA3F7:   Set var_17C = Me.Txt
  loc_13EA3FD:   Call 0.Method_Proc_231_12_13EAA700 (CInt(3), var_180)
  loc_13EA405:   var_180.Text = CStr(var_178)
  loc_13EA4C4:   var_178 = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("SmsURL"))))) <> vbNullString), Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("SmsURL"))))), "sms_url")
  loc_13EA4DB:   Set var_17C = Me.Txt
  loc_13EA4E1:   Call 0.Method_Proc_231_12_13EAA700 (CInt(4), var_180)
  loc_13EA4E9:   var_180.Text = CStr(var_178)
  loc_13EA5A8:   var_178 = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TUser"))))) <> vbNullString), Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TUser"))))), "key_username")
  loc_13EA5BF:   Set var_17C = Me.Txt
  loc_13EA5C5:   Call 0.Method_Proc_231_12_13EAA700 (CInt(8), var_180)
  loc_13EA5CD:   var_180.Text = CStr(var_178)
  loc_13EA68C:   var_178 = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TPassword"))))) <> vbNullString), Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TPassword"))))), "key_password")
  loc_13EA6A3:   Set var_17C = Me.Txt
  loc_13EA6A9:   Call 0.Method_Proc_231_12_13EAA700 (CInt(9), var_180)
  loc_13EA6B1:   var_180.Text = CStr(var_178)
  loc_13EA770:   var_178 = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TFromSend"))))) <> vbNullString), Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TFromSend"))))), "key_from")
  loc_13EA787:   Set var_17C = Me.Txt
  loc_13EA78D:   Call 0.Method_Proc_231_12_13EAA700 (CInt(&HA), var_180)
  loc_13EA795:   var_180.Text = CStr(var_178)
  loc_13EA854:   var_178 = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TPhNo"))))) <> vbNullString), Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TPhNo"))))), "key_phno")
  loc_13EA86B:   Set var_17C = Me.Txt
  loc_13EA871:   Call 0.Method_Proc_231_12_13EAA700 (CInt(&HB), var_180)
  loc_13EA879:   var_180.Text = CStr(var_178)
  loc_13EA938:   var_178 = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TMessage"))))) <> vbNullString), Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TMessage"))))), "key_message")
  loc_13EA94F:   Set var_17C = Me.Txt
  loc_13EA955:   Call 0.Method_Proc_231_12_13EAA700 (CInt(&HC), var_180)
  loc_13EA95D:   var_180.Text = CStr(var_178)
  loc_13EAA1C:   var_178 = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TExtra"))))) <> vbNullString), Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TExtra"))))), "key_extra")
  loc_13EAA33:   Set var_17C = Me.Txt
  loc_13EAA39:   Call 0.Method_Proc_231_12_13EAA700 (CInt(&HD), var_180)
  loc_13EAA41:   var_180.Text = CStr(var_178)
  loc_13EAA69: End If
  loc_13EAA69: Call Proc_231_10_14645B0()
  loc_13EAA6E: Exit Sub
End Sub

Public Sub Proc_231_13_EF4384(arg_C) 'EF4384
  'Data Table: 42A948
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EF42CC: If (Len(arg_C) <> 0) Then
  loc_EF42F3:   var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EF42FC: End If
  loc_EF4312: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EF4335:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EF4351:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EF4359:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EF435E:   var_8C = CStr(var_108)
  loc_EF4372: Next var_B8 'Integer
  loc_EF437A: var_88 = var_8C
  loc_EF437D: Proc_231_13_EF4384 = 
End Sub

Public Sub Proc_231_14_EEF8AC(arg_C) 'EEF8AC
  'Data Table: 42A948
  Dim var_90 As Integer
  Dim var_B0 As Integer
  Dim var_10C As Variant
  loc_EEF7F1: Randomize(var_B0)
  loc_EEF812: var_90 = CInt(Int(((CDbl(&H63) * Rnd(var_B0)) + CDbl(1))))
  loc_EEF822: var_B0 = Chr(CLng((var_90 + &H1B)))
  loc_EEF83B: For var_B8 = 1 To CInt(Len(arg_C)): var_8E = var_B8 'Integer
  loc_EEF877:   var_EC = Chr(CLng(((Asc(CStr(Mid(arg_C, CLng(var_8E), 1))) + &H1B) + var_90)))
  loc_EEF87F:   var_10C = (CVar(CStr(1)) + var_EC)
  loc_EEF884:   var_8C = CStr(var_10C)
  loc_EEF898: Next var_B8 'Integer
  loc_EEF8A0: var_88 = var_8C
  loc_EEF8A3: Proc_231_14_EEF8AC = 
End Sub
