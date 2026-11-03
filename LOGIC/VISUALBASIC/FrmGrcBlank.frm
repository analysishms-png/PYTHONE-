VERSION 5.00
Begin VB.Form FrmGrcBlank
  Caption = "Guest Registration  Card"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 120
  ClientTop = 900
  ClientWidth = 4680
  ClientHeight = 3090
  LockControls = -1  'True
  Begin Frame FrGuestInfo
    Caption = "Frame1"
    Left = 4845
    Top = 3960
    Width = 6090
    Height = 600
    TabIndex = 13
    BorderStyle = 0 'None
    Begin TextBox txt
      Index = 1
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 315
      Width = 1785
      Height = 255
      TabIndex = 15
      BorderStyle = 0 'None
      MaxLength = 12
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox txt
      Index = 0
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 4860
      Height = 255
      TabIndex = 14
      BorderStyle = 0 'None
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Guest Name :"
      Index = 0
      ForeColor = &H80&
      Left = 0
      Top = 30
      Width = 1125
      Height = 225
      TabIndex = 17
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
    Begin Label Label
      Caption = "Mobile No. :"
      Index = 1
      ForeColor = &H80&
      Left = 0
      Top = 345
      Width = 960
      Height = 225
      TabIndex = 16
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
  Begin Frame FrReserv
    Caption = "Frame1"
    Left = 4845
    Top = 3600
    Width = 3930
    Height = 330
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    Begin TextBox TxtResv
      ForeColor = &HFF0000&
      Left = 2970
      Top = 0
      Width = 840
      Height = 315
      TabIndex = 9
      BorderStyle = 0 'None
      Alignment = 2 'Center
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
    Begin BtnEnh BtnEnh2
      Left = 0
      Top = 0
      Width = 2955
      Height = 330
      TabIndex = 12
    End
  End
  Begin BtnEnh BtnEnh1
    Left = 4845
    Top = 3195
    Width = 2955
    Height = 330
    TabIndex = 10
  End
  Begin TextBox TxtRS
    ForeColor = &HFF0000&
    Left = 7815
    Top = 3195
    Width = 840
    Height = 315
    Text = "1"
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 2 'Center
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
  Begin CheckBox ChkSix
    Caption = "For First Guest"
    BackColor = &H4000&
    ForeColor = &HFFFFFF&
    Left = 975
    Top = 3060
    Width = 2535
    Height = 285
    Visible = 0   'False
    TabIndex = 7
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
  Begin CheckBox ChkFift
    Caption = "For First Guest"
    BackColor = &H4000&
    ForeColor = &HFFFFFF&
    Left = 975
    Top = 2760
    Width = 2535
    Height = 285
    Visible = 0   'False
    TabIndex = 6
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
  Begin CheckBox ChkFourth
    Caption = "For First Guest"
    BackColor = &H4000&
    ForeColor = &HFFFFFF&
    Left = 975
    Top = 2460
    Width = 2535
    Height = 285
    Visible = 0   'False
    TabIndex = 5
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
  Begin CheckBox Chk3
    Caption = "For First Guest"
    BackColor = &H4000&
    ForeColor = &HFFFFFF&
    Left = 975
    Top = 2160
    Width = 2535
    Height = 285
    Visible = 0   'False
    TabIndex = 4
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
  Begin CheckBox Chk2
    Caption = "For Secound Guest"
    BackColor = &H4000&
    ForeColor = &HFFFFFF&
    Left = 975
    Top = 1860
    Width = 2535
    Height = 285
    Visible = 0   'False
    TabIndex = 3
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
  Begin CheckBox Chk1
    Caption = "For First Guest"
    BackColor = &H4000&
    ForeColor = &HFFFFFF&
    Left = 990
    Top = 1560
    Width = 2535
    Height = 285
    Visible = 0   'False
    TabIndex = 2
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
  Begin BtnEnh CmdExit
    Left = 7245
    Top = 5205
    Width = 1470
    Height = 1065
    TabIndex = 0
  End
  Begin BtnEnh CmdNew
    Index = 4
    Left = 4830
    Top = 5205
    Width = 1470
    Height = 1065
    TabIndex = 1
  End
End

Attribute VB_Name = "FrmGrcBlank"


Private Sub CmdNew_UnknownEvent_9 '126A228
  'Data Table: 44519C
  Dim var_A4 As Integer
  Dim var_C8 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_158 As String
  Dim var_1E8 As Variant
  Dim var_23C As String
  Dim unk_4451B3 As Connection15
  Dim var_88 As Recordset15
  Dim var_CC As Variant
  Dim var_114 As TextBox
  Dim var_90 As Long
  Dim var_288 As Double
  Dim var_264 As String
  Dim var_278 As String
  Dim var_D0 As Field20
  Dim var_E0 As Variant
  loc_1269D04: On Error Goto loc_126A1DD
  loc_1269D1B: var_A4 = CInt(Trim(MemVar_1F9212C))
  loc_1269D3E: Set var_CC = Me.txt
  loc_1269D44: Call 0.Method_CmdNew_UnknownEvent_90 (CInt(0), var_D0, "Select Max(IsNull(VP.Start_Srl_No,0)) Start_Srl_No,Convert(VarChar(50),", var_25C)
  loc_1269D53: Proc_6_17_EAA2B0(var_E0, CVar(var_D0), -1)
  loc_1269D64: var_110 = var_260 & var_E0 & ") As BlankGuestName,Convert(VarChar(15)," 
  loc_1269D73: Set var_114 = Me.txt
  loc_1269D79: Call 0.Method_CmdNew_UnknownEvent_90 (CInt(1), var_118)
  loc_1269D88: Proc_6_17_EAA2B0(var_138, CVar(var_118))
  loc_1269D94: var_158 = ") As BlankMobileNo From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='"
  loc_1269DBF: var_1E8 = var_110 & var_138 & var_158 & CVar(MemVar_1F92070) & "' AND VP.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "') and  VP.V_Type='CHK' And " 
  loc_1269DCE: Proc_6_7_F25D88(var_208, MemVar_1F920EC)
  loc_1269DED: unk_4451B3.Execute CStr(var_1E8 & var_208 & " Between VP.Date_From And VP.Date_To"), var_A4, 
  loc_1269E41: var_D0 = var_260.Fields.Item("start_srl_no")
  loc_1269E50: Proc_6_39_E7C810(var_E0)
  loc_1269E72: var_100 = CVar(Val(Me.TxtRS.Text)) 'Double
  loc_1269E76: var_F0 = (var_E0 + var_100)
  loc_1269E7C: var_90 = CLng(var_260 & var_E0)
  loc_1269E9D: If (global_56 = "Yes") Then
  loc_1269EAD:   var_23C = Me.TxtResv.Text
  loc_1269EBA:   var_288 = Val(var_23C)
  loc_1269EF0:   var_278 = "Select DocId From Booking Where (Vtype='RES' and BookNo=" & CStr(var_288) & " and vprefix='" & CStr(var_A4) & "' and LOGSITE_CODE='"
  loc_1269F07:   unk_4451B3.Execute var_278 & MemVar_1F92078 & "' or LOGSITE_CODE='HO')", CVar(var_D0), -1
  loc_1269F12:   Set var_88 = var_D0
  loc_1269F3A:   var_28C = var_88.RecordCount
  loc_1269F48:   If (var_28C > 0) Then
  loc_1269F65:     var_D0 = var_88.Fields.Item("DocID")
  loc_1269F76:     var_A8 = CStr(var_D0.Value)
  loc_1269F83:   End If
  loc_1269F89:   Call 0.Method_arg_50 (var_23C, var_D0, var_288)
  loc_1269FA4:   Proc_146_4_1AAA7C8(var_A8, "FolioPrintBlank", var_23C)
  loc_1269FB3: Else
  loc_1269FB8:   var_29C = "FolionoBank" 'Variant
  loc_1269FDF:   var_264 = CStr(CVar(MemVar_1F920B4 & "\") & var_29C & ".ttx")
  loc_1269FE6:   Set var_CC = var_88 
  loc_1269FED:   CreateFieldDefFile(var_CC, var_264, &HFF)
  loc_1269FF9:   Set var_88 = var_CC
  loc_126A02C:   var_F0 = CVar(MemVar_1F920B4 & "\") & var_29C & ".RPT" 
  loc_126A030:   var_23C = CStr(var_F0)
  loc_126A03A:   Call 0.Method_arg_1C (var_23C, var_100, var_CC)
  loc_126A045:   MemVar_1F921E4 = var_CC
  loc_126A069:   Call 0.Method_arg_90 (var_CC, var_28C, var_A2, 1)
  loc_126A071:   Call 0.Method_arg_24 (var_90, var_90)
  loc_126A07D:   For var_2A0 =  To CInt(var_28C):   var_C8 = var_2A0 'Integer
  loc_126A096:     Call 0.Method_arg_90 (var_CC, CLng(var_A2))
  loc_126A09E:     Call 0.Method_arg_20 (var_D0)
  loc_126A0A6:     Call 0.Method_arg_30 (var_23C)
  loc_126A0EC:     If (Ucase(CVar(var_23C)) = Ucase("GRCNO")) Then
  loc_126A105:       Proc_6_17_EAA2B0(var_F0)
  loc_126A10D:       var_23C = CStr(var_F0)
  loc_126A121:       Call 0.Method_arg_90 (var_CC, CLng(var_A2), var_D0)
  loc_126A129:       Call 0.Method_arg_20 (var_23C)
  loc_126A131:       Call 0.Method_arg_38 (Trim(CVar(CStr(var_90))))
  loc_126A149:     End If
  loc_126A14C:   Next var_2A0 'Integer
  loc_126A16A:   Call 0.Method_arg_64 (var_CC, CVar(var_88))
  loc_126A172:   Call 0.Method_arg_2C (var_100)
  loc_126A180:   Call 0.Method_arg_150 (var_158)
  loc_126A18B:   Call 0.Method_arg_50 (var_23C)
  loc_126A195:   Set var_D0 = Nothing
  loc_126A1AF:   Set var_CC = MemVar_1F921E4 
  loc_126A1BB:   Proc_6_99_1483714(var_CC, 0, var_23C)
  loc_126A1C6:   MemVar_1F921E4 = var_CC
  loc_126A1D4: End If
  loc_126A1D9: Set var_88 = Nothing
  loc_126A1DC: Exit Sub
  loc_126A1DD: ' Referenced from: 1269D04
  loc_126A1E5: Set var_CC = Err()
  loc_126A1EB: Call 0.Method_arg_2C (var_23C, &HFF)
  loc_126A1F6: Call 0.Method_arg_50 (var_264)
  loc_126A212: MsgBox(CVar(var_23C), &H10, CVar(var_264), var_F0, var_110)
  loc_126A225: Exit Sub
End Sub

Private Sub Form_Load() 'FD5928
  'Data Table: 44519C
  Dim var_8C As Variant
  Dim var_94 As String
  Dim unk_4451B3 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  loc_FD576C: On Error Goto loc_FD58E3
  loc_FD5785: Proc_6_23_DFBA28(Me, 0)
  loc_FD5794: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_FD57A7: Me.FrReserv.BackColor = CLng(MemVar_1F921B0)
  loc_FD57B7: Set var_8C = Me.FrGuestInfo
  loc_FD57BD: var_8C.BackColor = CLng(MemVar_1F921B0)
  loc_FD57E9: unk_4451B3.Execute "Select IncReservationInBlankGRC from Enviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_B8, -1
  loc_FD57F4: Set var_88 = var_8C
  loc_FD5818: If (var_88.RecordCount > 0) Then
  loc_FD582A:   var_8C = var_88.Fields
  loc_FD5843:   var_94 = Proc_6_38_E68A98(CVar(var_8C.Item("IncReservationInBlankGRC")), var_8C)
  loc_FD5849:   global_56 = var_94
  loc_FD5856: End If
  loc_FD5875: Me.FrGuestInfo.Top = Me.FrReserv.Top
  loc_FD58A0: Me.FrGuestInfo.Left = Me.FrReserv.Left
  loc_FD58B7: If (global_56 = "Yes") Then
  loc_FD58C6:   Me.FrReserv.Visible = True
  loc_FD58DA:   Me.FrGuestInfo.Visible = False
  loc_FD58E2: End If
  loc_FD58E2: Exit Sub
  loc_FD58E3: ' Referenced from: FD576C
  loc_FD58EB: Set var_8C = Err()
  loc_FD58F1: Call 0.Method_arg_2C (var_94)
  loc_FD5912: MsgBox(CVar(var_94), &H40, "Information", var_F0, var_110)
  loc_FD5925: Exit Sub
  loc_FD5926: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E6722C
  'Data Table: 44519C
  loc_E671EE: If (KeyAscii = CInt(1)) Then
  loc_E671FB:   Set var_8C = Me.txt
  loc_E67201:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_E6721C:   Proc_6_42_129A86C(var_90, arg_10, &HC)
  loc_E67228: End If
  loc_E67228: Exit Sub
End Sub

Private Sub Chk1_Click() 'EBEE70
  'Data Table: 44519C
  loc_EBEDEF: If (Me.Chk1.Value = 1) Then
  loc_EBEE25:   Me.TxtRS.Text = CStr(Format(1, "0"))
  loc_EBEE39: End If
  loc_EBEE54: If (Me.Chk1.Value = 0) Then
  loc_EBEE64:   Me.TxtRS.Text = vbNullString
  loc_EBEE6C: End If
  loc_EBEE6C: Exit Sub
End Sub

Private Sub Chk2_Click() 'EBE930
  'Data Table: 44519C
  loc_EBE8AF: If (Me.Chk2.Value = 1) Then
  loc_EBE8E5:   Me.TxtRS.Text = CStr(Format(2, "0"))
  loc_EBE8F9: End If
  loc_EBE914: If (Me.Chk2.Value = 0) Then
  loc_EBE924:   Me.TxtRS.Text = vbNullString
  loc_EBE92C: End If
  loc_EBE92C: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E17690
  'Data Table: 44519C
  loc_E17685: Me.Global.Unload Me
  loc_E1768D: Exit Sub
End Sub
