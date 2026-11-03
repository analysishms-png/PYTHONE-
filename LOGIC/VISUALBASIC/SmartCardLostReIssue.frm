VERSION 5.00
Begin VB.Form SmartCardLostReIssue
  Caption = "Smart Lost/ReIssue Entry"
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
  ClientWidth = 11520
  ClientHeight = 5760
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11520
    Height = 450
    TabIndex = 36
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6585
    Top = 4305
    Width = 1380
    Height = 285
    TabIndex = 34
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 4305
    Width = 1380
    Height = 285
    TabIndex = 32
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6585
    Top = 1200
    Width = 1380
    Height = 285
    TabIndex = 27
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    Left = 7020
    Top = 60
    Width = 2760
    Height = 240
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    MaxLength = 21
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
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2505
    Top = 4935
    Width = 5475
    Height = 825
    TabIndex = 9
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 255
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
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 4620
    Width = 1380
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 2145
    Width = 5475
    Height = 285
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 75
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
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 2775
    Width = 5460
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 20
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
  Begin PictureBox Picture1
    Left = 13515
    Top = 7350
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 17
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin PictureBox Picture3
    Left = 13470
    Top = 6975
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 16
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6585
    Top = 1830
    Width = 1380
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6585
    Top = 1515
    Width = 1380
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 3990
    Width = 5475
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 1830
    Width = 1380
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 3090
    Width = 5475
    Height = 870
    TabIndex = 4
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 125
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
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 2460
    Width = 5475
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 75
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 1515
    Width = 1380
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 15
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
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 1200
    Width = 1380
    Height = 285
    TabIndex = 28
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3885
    Top = 1200
    Width = 630
    Height = 285
    TabIndex = 30
    BorderStyle = 0 'None
    MaxLength = 5
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
  Begin BtnEnh CmdCardScan
    Left = 2430
    Top = 570
    Width = 5625
    Height = 540
    TabIndex = 37
  End
  Begin Label LblName
    Caption = "Current Security Balance"
    Index = 11
    ForeColor = &HFF0000&
    Left = 4200
    Top = 4320
    Width = 2385
    Height = 285
    TabIndex = 35
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
    Caption = "Current Balance"
    Index = 10
    ForeColor = &HFF0000&
    Left = 825
    Top = 4305
    Width = 1545
    Height = 285
    TabIndex = 33
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
    Caption = "Transaction ID"
    Index = 9
    ForeColor = &HFF0000&
    Left = 5145
    Top = 1200
    Width = 1365
    Height = 285
    TabIndex = 31
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
    Caption = "Date"
    Index = 8
    ForeColor = &HFF0000&
    Left = 825
    Top = 1185
    Width = 435
    Height = 285
    TabIndex = 29
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
    Caption = "Remark"
    Index = 7
    ForeColor = &HFF0000&
    Left = 825
    Top = 4950
    Width = 735
    Height = 285
    TabIndex = 26
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
    Caption = "Valid Upto Date"
    Index = 5
    ForeColor = &HFF0000&
    Left = 825
    Top = 4620
    Width = 1485
    Height = 285
    TabIndex = 25
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
    Caption = "Member Name"
    Index = 3
    ForeColor = &HFF0000&
    Left = 825
    Top = 2145
    Width = 1395
    Height = 240
    TabIndex = 23
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
  Begin Image ImgSign
    Left = 8160
    Top = 3525
    Width = 2325
    Height = 705
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Image ImgPhoto
    Left = 8235
    Top = 1215
    Width = 2055
    Height = 2280
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Label LblPhoto
    Caption = "Photo"
    ForeColor = &H80&
    Left = 9030
    Top = 2220
    Width = 510
    Height = 240
    TabIndex = 21
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblSign
    Caption = "Signature"
    ForeColor = &H80&
    Left = 8910
    Top = 3690
    Width = 825
    Height = 240
    TabIndex = 20
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLedgerAc
    Caption = "Member ID"
    Index = 4
    ForeColor = &HFF0000&
    Left = 825
    Top = 2775
    Width = 1035
    Height = 285
    TabIndex = 19
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
    Caption = "Mobile No."
    Index = 1
    ForeColor = &HFF0000&
    Left = 840
    Top = 3990
    Width = 1020
    Height = 240
    TabIndex = 18
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
    Caption = "Issue Date"
    Index = 0
    ForeColor = &HFF0000&
    Left = 5145
    Top = 1515
    Width = 975
    Height = 285
    TabIndex = 15
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
    Caption = "Valid Upto Date"
    Index = 4
    ForeColor = &HFF0000&
    Left = 825
    Top = 1830
    Width = 1485
    Height = 285
    TabIndex = 14
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
  Begin Label LblLedgerAc
    Caption = "Address"
    Index = 0
    ForeColor = &HFF0000&
    Left = 825
    Top = 3090
    Width = 750
    Height = 285
    TabIndex = 13
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
    Caption = "Blocked"
    Index = 6
    ForeColor = &HFF0000&
    Left = 5160
    Top = 1830
    Width = 765
    Height = 285
    TabIndex = 12
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
    Caption = "Account Name"
    Index = 2
    ForeColor = &HFF0000&
    Left = 825
    Top = 2460
    Width = 1380
    Height = 240
    TabIndex = 11
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
  Begin Label LblLedgerAc
    Caption = "Card Type"
    Index = 2
    ForeColor = &HFF0000&
    Left = 825
    Top = 1515
    Width = 975
    Height = 285
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
End

Attribute VB_Name = "SmartCardLostReIssue"

Private global_72 As Byte

Private Sub CmdCardScan_UnknownEvent_9 'E59314
  'Data Table: 453278
  Dim Me As Recordset15
  loc_E592D8: Call Proc_282_21_EE8F54()
  loc_E592EE: If (Proc_275_11_10CD018(var_88, var_8C) = 0) Then
  loc_E592F1:   Exit Sub
  loc_E592F2: End If
  loc_E592F8: global_68 = var_90
  loc_E59307: Me.Requery -1
  loc_E5930C: Call Proc_282_26_E69BA4(var_90)
  loc_E59311: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F83B44
  'Data Table: 453278
  Dim var_108 As String
  Dim var_114 As TextBox
  loc_F839F4: On Error Goto loc_F83B00
  loc_F83A02: If (global_68 = vbNullString) Then
  loc_F83A26:   MsgBox("Please Scan A Fress Card First.", &H40, "Smart Card Validation", var_E4, var_104)
  loc_F83A36:   Exit Sub
  loc_F83A37: End If
  loc_F83A42: If (global_60 = vbNullString) Then
  loc_F83A66:   MsgBox("Please Select Previous Card Detail.", &H40, "Smart Card Validation", var_E4, var_104)
  loc_F83A76:   Exit Sub
  loc_F83A77: End If
  loc_F83A9A: Call Proc_282_20_1097268(Proc_5_1_100CB50("ADD", Me))
  loc_F83AA5: Call Proc_282_22_F0BFD0(global_52)
  loc_F83AAF: var_108 = CStr(MemVar_1F920EC)
  loc_F83ABD: Set var_10C = Me.Txt
  loc_F83AC3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HD), var_114)
  loc_F83ACB: var_114.Text = var_108
  loc_F83AE5: Set var_10C = Me.Txt
  loc_F83AEB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9))
  loc_F83AF3: var_114.SetFocus
  loc_F83AFF: Exit Sub
  loc_F83B00: ' Referenced from: F839F4
  loc_F83B08: Set var_10C = Err()
  loc_F83B0E: Call 0.Method_arg_2C (var_108)
  loc_F83B2F: MsgBox(CVar(var_108), &H40, "Information", var_E4, var_104)
  loc_F83B42: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EB8D20
  'Data Table: 453278
  loc_EB8C8C: On Error Goto loc_EB8D17
  loc_EB8CC6: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EB8CD5:   Set var_110 = Me
  loc_EB8CEC:   Call Proc_282_20_1097268(Proc_5_1_100CB50("INI", var_110))
  loc_EB8CF7:   Call Proc_282_23_13855B8(global_52)
  loc_EB8CFF: Else
  loc_EB8D05:   Call 0.Method_arg_1E8 (var_110)
  loc_EB8D0D:   Call var_110.SetFocus
  loc_EB8D16: End If
  loc_EB8D16: Exit Sub
  loc_EB8D17: ' Referenced from: EB8C8C
  loc_EB8D17: Proc_6_60_E62BC4()
  loc_EB8D1C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E195BC
  'Data Table: 453278
  loc_E195B1: Me.Global.Unload Me
  loc_E195B9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EF35B8
  'Data Table: 453278
  Dim Me As Recordset15
  loc_EF34F0: On Error Goto loc_EF3553
  loc_EF34FA: global_72 = CByte(0)
  loc_EF3507: var_88 = Me.RecordCount
  loc_EF3515: If (var_88 > 0) Then
  loc_EF351B:   MemVar_1F920E4 = "SELECT SCL.Trans_Id As Searchcode,SCL.Trans_Id,SCL.CardRegId,Convert(Varchar(11),SCL.IssDate,103) VDate,SCL.Remark,SCL.U_Name,SCR.CardType,SCR.Name,SCR.CardNo,S.Name MemberName From SmartCardReIssueDetail SCL Inner Join SmartCardRegistration SCR On SCL.CardRegId=SCR.Code Left Join MemberFamily MF On SCR.Code=MF.CardRegId Left Join Subgroup S On SCR.MemberCode=S.SubCode Order By SCL.Trans_Id"
  loc_EF3522:   var_8C = "900,1000,900,3000,800,800,2500,1000,2500"
  loc_EF3528:   Proc_6_126_F1BCC0(var_8C)
  loc_EF3536:   MemVar_1F92120 = Me
  loc_EF354D:   Call 0.Method_arg_2B0 (1, var_AC)
  loc_EF3552: End If
  loc_EF3552: Exit Sub
  loc_EF3553: ' Referenced from: EF34F0
  loc_EF355B: Set var_B0 = Err()
  loc_EF3561: Call 0.Method_arg_1C (var_88)
  loc_EF3572: If (var_88 <> 0) Then
  loc_EF357D:   Set var_B0 = Err()
  loc_EF3583:   Call 0.Method_arg_2C (var_8C)
  loc_EF35A4:   MsgBox(CVar(var_8C), &H40, "Validation", var_E0, var_100)
  loc_EF35B7: End If
  loc_EF35B7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E33D38
  'Data Table: 453278
  loc_E33D28: Proc_5_0_110649C(&HFF, Me)
  loc_E33D30: Call Proc_282_23_13855B8(global_52)
  loc_E33D35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E33E58
  'Data Table: 453278
  loc_E33E48: Proc_5_0_110649C(&HFF, Me)
  loc_E33E50: Call Proc_282_23_13855B8(global_52)
  loc_E33E55: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E33DF8
  'Data Table: 453278
  loc_E33DE8: Proc_5_0_110649C(&HFF, Me)
  loc_E33DF0: Call Proc_282_23_13855B8(global_52)
  loc_E33DF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E33D98
  'Data Table: 453278
  loc_E33D88: Proc_5_0_110649C(&HFF, Me)
  loc_E33D90: Call Proc_282_23_13855B8(global_52)
  loc_E33D95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '114D2B8
  'Data Table: 453278
  Dim var_B8 As String
  Dim var_D8 As Variant
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_8C As Field20
  Dim var_E8 As Variant
  Dim var_F8 As String
  Dim var_108 As Variant
  Dim var_10C As String
  Dim unk_453286 As Connection15
  Dim var_A0 As Recordset15
  Dim var_146 As Integer
  loc_114CF3B: Set var_88 = Me.Txt
  loc_114CF41: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HD))
  loc_114CF5B: If (IsDate(CVar(var_8C)) = 0) Then
  loc_114CF5E:   Exit Sub
  loc_114CF5F: End If
  loc_114CF5F: On Error Goto loc_114D26E
  loc_114CF76: var_B8 = "SELECT SCL.Trans_Id,SCL.CardRegId,SCL.IssDate,SCL.Remark,SCL.U_Name,SCL.U_EntDt,SCR.CurrBal,SCR.SecurBal,SCR.CardType,SCR.Name,SCR.CardNo,SCR.Addr,SCR.Phone,SCL.ValidUpto,SCR.BlockedYN,SCL.HW_Id,SCL.OldHW_Id,SCL.OldIssDate,SCL.OldValidUpto,SCR.MemberCode,MF.PicPath,MF.SigPath,S.Name MemberName From SmartCardReIssueDetail SCL Inner Join SmartCardRegistration SCR On SCL.CardRegId=SCR.Code Left Join MemberFamily MF On SCR.Code=MF.CardRegId Left Join Subgroup S On SCR.MemberCode=S.SubCode And SCL.LogSite_Code='" & MemVar_1F92078
  loc_114CF7D: var_D8 = CVar(var_B8 & "' Where SCL.Trans_Id=") 'String
  loc_114CFAD: var_E8 = var_D8 & Me.Fields.Item("SearchCode").Value 
  loc_114CFB1: var_F8 = " Order By SCL.Trans_Id"
  loc_114CFB6: var_108 = var_E8 & var_F8 
  loc_114CFC4: unk_453286.Execute CStr(var_108), var_12C, -1
  loc_114CFCF: Set var_A0 = var_130
  loc_114CFF5: var_134 = var_A0.RecordCount
  loc_114D003: If (var_134 = 0) Then
  loc_114D01F:   MsgBox("No Record Present For Printing", 0, var_D8, var_E8, var_108)
  loc_114D02F:   Exit Sub
  loc_114D030: End If
  loc_114D03F: var_10C = MemVar_1F920B4 & "\CardReIssueDetail.ttx"
  loc_114D046: Set var_88 = var_A0 
  loc_114D052: var_146 = CreateFieldDefFile(var_88, var_10C, &HFF)
  loc_114D05C: Set var_A0 = var_88
  loc_114D062: var_C8 = CVar(var_146) 'Integer
  loc_114D065: var_B0 = var_C8 'Variant
  loc_114D081: var_B8 = MemVar_1F920B4 & "\CardReIssueDetail.RPT"
  loc_114D08A: Call 0.Method_arg_1C (var_B8, var_C8, var_88)
  loc_114D095: MemVar_1F921E4 = var_88
  loc_114D0B0: Call 0.Method_arg_90 (var_88, var_134, var_B2, 1)
  loc_114D0B8: Call 0.Method_arg_24 (var_146, var_130)
  loc_114D0C4: For var_14A =  To CInt(var_134): var_8C = var_14A 'Integer
  loc_114D0DD:   Call 0.Method_arg_90 (var_88, CLng(var_B2))
  loc_114D0E5:   Call 0.Method_arg_20 (Me.Fields.Item("SearchCode"))
  loc_114D0ED:   Call 0.Method_arg_30 (var_B8)
  loc_114D103:   var_15C = Ucase(CVar(var_B8)) 'Variant
  loc_114D133:   If (var_15C = Ucase("Title")) Then
  loc_114D149:     Call 0.Method_arg_90 (var_88, CLng(var_B2))
  loc_114D151:     Call 0.Method_arg_20 (Me.Fields.Item("SearchCode"))
  loc_114D159:     Call 0.Method_arg_38 ("'Re-Issued Card Detail'")
  loc_114D168:   Else
  loc_114D179:     var_D8 = Ucase("PrintedBy")
  loc_114D18A:     If (var_15C = var_D8) Then
  loc_114D198:       Proc_6_17_EAA2B0(var_D8)
  loc_114D1A0:       var_B8 = CStr(var_D8)
  loc_114D1B4:       Call 0.Method_arg_90 (var_88, CLng(var_B2), Me.Fields.Item("SearchCode"))
  loc_114D1BC:       Call 0.Method_arg_20 (var_B8)
  loc_114D1C4:       Call 0.Method_arg_38 (CVar(Proc_6_13_E8BE30()))
  loc_114D1DA:     End If
  loc_114D1DA:   End If
  loc_114D1DD: Next var_14A 'Integer
  loc_114D1FB: Call 0.Method_arg_64 (var_88, CVar(var_A0))
  loc_114D203: Call 0.Method_arg_2C (var_F8)
  loc_114D211: Call 0.Method_arg_150 (var_11C)
  loc_114D21C: Call 0.Method_arg_50 (var_B8)
  loc_114D226: Set var_8C = Nothing
  loc_114D240: Set var_88 = MemVar_1F921E4 
  loc_114D24C: Proc_6_99_1483714(var_88, 0, var_B8)
  loc_114D257: MemVar_1F921E4 = var_88
  loc_114D26A: Set var_A0 = Nothing
  loc_114D26D: Exit Sub
  loc_114D26E: ' Referenced from: 114CF5F
  loc_114D276: Set var_88 = Err()
  loc_114D27C: Call 0.Method_arg_2C (var_B8, &HFF)
  loc_114D287: Call 0.Method_arg_50 (var_10C)
  loc_114D2A3: MsgBox(CVar(var_B8), &H10, CVar(var_10C), var_E8, var_108)
  loc_114D2B6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A084
  'Data Table: 453278
  Dim Me As Recordset15
  loc_E0A07B: Me.Requery -1
  loc_E0A080: Exit Sub
  loc_E0A081: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13EFD2C
  'Data Table: 453278
  Dim var_C4 As String
  Dim var_12C As TextBox
  Dim var_11C As TextBox
  Dim unk_453286 As Connection15
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_21C As Variant
  Dim var_3AC As Variant
  Dim var_124 As String
  Dim var_114 As Variant
  Dim var_184 As Variant
  Dim var_B4 As Variant
  Dim var_130 As String
  Dim var_4C0 As Double
  Dim var_20C As TextBox
  Dim var_4C8 As Double
  Dim Me As Recordset15
  loc_13EF3D8: On Error Goto loc_13EFC84
  loc_13EF3E6: If (global_68 = vbNullString) Then
  loc_13EF40A:   MsgBox("Please Scan A Fress Card First.", &H40, "Smart Card Validation", var_F4, var_114)
  loc_13EF41A:   Exit Sub
  loc_13EF41B: End If
  loc_13EF426: If (global_60 = vbNullString) Then
  loc_13EF44A:   MsgBox("Please Select Previous Card Detail.", &H40, "Smart Card Validation", var_F4, var_114)
  loc_13EF45A:   Exit Sub
  loc_13EF45B: End If
  loc_13EF466: Set var_118 = Me.Txt
  loc_13EF46C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD))
  loc_13EF495: If (Proc_183_19_E8DAFC(var_11C, "Valid Upto Date") = 0) Then
  loc_13EF498:   Exit Sub
  loc_13EF499: End If
  loc_13EF4A4: Set var_118 = Me.Txt
  loc_13EF4AA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_11C)
  loc_13EF4D3: If (Proc_183_19_E8DAFC(var_11C, "Valid Upto Date") = 0) Then
  loc_13EF4DD:   Call Txt_GotFocus()
  loc_13EF4E2:   Exit Sub
  loc_13EF4E3: End If
  loc_13EF4F1: Set var_120 = Me.Txt
  loc_13EF4F7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_12C, var_130)
  loc_13EF4FF: CInt(7) = var_12C.Text
  loc_13EF512: Set var_118 = Me.Txt
  loc_13EF518: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_11C)
  loc_13EF542: If (CDate(var_11C.Text) < CDate(var_130)) Then
  loc_13EF560:   var_B4 = "Valid Upto Date should be greater than Issue Date."
  loc_13EF566:   MsgBox(var_B4, &H10, "Validation Error", var_F4, var_114)
  loc_13EF57D:   Call Txt_GotFocus()
  loc_13EF582:   Exit Sub
  loc_13EF583: End If
  loc_13EF58C: unk_453286.BeginTrans var_134
  loc_13EF595: var_92 = CByte(1) 'Byte
  loc_13EF5AA: If (Proc_275_11_10CD018(var_88, var_90, var_8C) = 0) Then
  loc_13EF5AD:   GoTo loc_13EFC84
  loc_13EF5B0: End If
  loc_13EF5BB: If (global_68 = var_8C) Then
  loc_13EF5CB:   var_C4 = "Insert Into SmartCardReIssueDetail(CardRegId,HW_Id,IssDate,ValidUpto,Remark,OldHW_Id,OldIssDate,OldValidUpto,Site_Code,U_Name,U_EntDt,U_AE,logSite_Code) Values("
  loc_13EF5DE:   Proc_6_17_EAA2B0(var_B4, global_60, var_C4, var_4AC)
  loc_13EF5E6:   var_D4 = -1 & var_B4 
  loc_13EF5FE:   Proc_6_17_EAA2B0(var_114, var_8C, "Validation Error" & ",")
  loc_13EF606:   var_144 = var_4B0 & var_114 
  loc_13EF61E:   Set var_118 = Me.Txt
  loc_13EF624:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_11C, var_144 & ",")
  loc_13EF633:   Proc_6_7_F25D88(var_184, CVar(var_11C))
  loc_13EF63B:   var_194 = CInt(7) & var_184 
  loc_13EF653:   Set var_120 = Me.Txt
  loc_13EF659:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_12C)
  loc_13EF668:   Proc_6_7_F25D88(var_1D4, CVar(var_12C))
  loc_13EF688:   Set var_208 = Me.Txt
  loc_13EF68E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_20C)
  loc_13EF6A8:   Proc_6_17_EAA2B0(var_23C, Trim(CVar(var_20C)))
  loc_13EF6CB:   Proc_6_17_EAA2B0(var_28C, global_64)
  loc_13EF6EB:   Set var_2C0 = Me.Txt
  loc_13EF6F1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_2C4)
  loc_13EF700:   Proc_6_7_F25D88(var_2E4, CVar(var_2C4))
  loc_13EF720:   Set var_318 = Me.Txt
  loc_13EF726:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_31C)
  loc_13EF735:   Proc_6_7_F25D88(var_33C, CVar(var_31C))
  loc_13EF759:   var_3AC = var_194 & "," & var_1D4 & "," & var_23C & "," & var_28C & "," & var_2E4 & "," & var_33C & ",'" & CVar(MemVar_1F92070) & "','" 
  loc_13EF77B:   Proc_183_8_EB0AA4(var_40C, CVar(Proc_6_14_EF349C(var_3AC & CVar(MemVar_1F920C8) & "',")))
  loc_13EF79B:   Proc_6_17_EAA2B0(var_45C, MemVar_1F92078)
  loc_13EF7BA:   unk_453286.Execute CStr(var_11C & var_40C & ",'A'," & var_45C & ")"), , 
  loc_13EF845:   Proc_6_17_EAA2B0(var_B4, var_8C, "Update SmartCardRegistration Set SerialNo=")
  loc_13EF865:   Set var_118 = Me.Txt
  loc_13EF86B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_11C, var_23C & var_B4 & ",IssDate=")
  loc_13EF87A:   Proc_6_7_F25D88(var_144, CVar(var_11C))
  loc_13EF882:   var_164 = -1 & var_144 
  loc_13EF89A:   Set var_120 = Me.Txt
  loc_13EF8A0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_12C)
  loc_13EF8AF:   Proc_6_7_F25D88(var_194, CVar(var_12C))
  loc_13EF8D2:   Proc_6_17_EAA2B0(var_1D4, global_60)
  loc_13EF8FA:   var_124 = CStr(var_144 & "," & ",ValidUpto=" & var_194 & " Where Code=" & var_1D4 & " And LogSite_Code='" & CVar(MemVar_1F92078) & "'")
  loc_13EF904:   unk_453286.Execute var_124, var_208, 
  loc_13EF957:   Proc_6_17_EAA2B0(var_B4, var_8C, "Update MemberFamily Set HW_Id=")
  loc_13EF95F:   var_D4 = var_23C & var_B4 
  loc_13EF977:   Set var_118 = Me.Txt
  loc_13EF97D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_11C, var_D4 & ",CardIssDate=")
  loc_13EF98C:   Proc_6_7_F25D88(var_144, CVar(var_11C))
  loc_13EF994:   var_164 = -1 & var_144 
  loc_13EF9B2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_12C)
  loc_13EF9BA:   var_184 = CVar(var_12C) 'Address
  loc_13EF9C1:   Proc_6_7_F25D88(var_194, var_184)
  loc_13EF9E4:   Proc_6_17_EAA2B0(var_1D4, global_60)
  loc_13EF9FF:   var_21C = var_144 & "," & ",CardValidUpto=" & var_194 & " Where CardRegId=" & var_1D4 & " And LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_13EFA0C:   var_124 = CStr(var_21C & "'")
  loc_13EFA16:   unk_453286.Execute var_124, var_208, 
  loc_13EFA6C:   Set var_118 = Me.Txt
  loc_13EFA72:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_11C, var_124, "Update SmartCardMaster Set MemberCode=")
  loc_13EFA7A:   var_1B4 = var_11C.Tag
  loc_13EFA88:   Proc_6_17_EAA2B0(var_D4, CVar(var_124))
  loc_13EFA90:   var_F4 = -1 & var_D4 
  loc_13EFAAB:   Proc_6_17_EAA2B0(var_144, global_60)
  loc_13EFACB:   Proc_6_17_EAA2B0(var_184, var_8C)
  loc_13EFAD7:   var_130 = CStr(var_D4 & ",CardIssDate=" & ",CardRegId=" & var_144 & " Where HW_Id=" & var_184)
  loc_13EFAE1:   unk_453286.Execute var_130, Me.Txt, 
  loc_13EFB27:   Set var_118 = Me.Txt
  loc_13EFB2D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_11C)
  loc_13EFB4C:   var_F4 = Left(Trim(CVar(var_11C)), &H14)
  loc_13EFB5F:   Set var_120 = Me.Txt
  loc_13EFB65:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_12C)
  loc_13EFB7A:   var_4C0 = Val(var_12C.Text)
  loc_13EFB8B:   Set var_208 = Me.Txt
  loc_13EFB91:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_20C, var_130)
  loc_13EFBA6:   var_4C8 = Val(var_130)
  loc_13EFBB5:   var_114 = CVar(Proc_6_45_EAD428(global_60)) 'String
  loc_13EFBBB:   var_144 = (var_114 + var_F4)
  loc_13EFBF0:   If (Proc_275_3_1210F84(CStr(var_144), var_20C.Text, var_4C8) = 0) Then
  loc_13EFBF3:     GoTo loc_13EFC84
  loc_13EFBF6:   End If
  loc_13EFBF9: Else
  loc_13EFC1A:   MsgBox("Smart Card is Changed", &H10, "Smart Card Verification", var_F4, var_114)
  loc_13EFC2D: Else
  loc_13EFC33:   unk_453286.CommitTrans
  loc_13EFC3C:   var_92 = CByte(0) 'Byte
  loc_13EFC4B:   Me.Requery -1
  loc_13EFC65:   var_124 = "INI"
  loc_13EFC73:   Call Proc_282_20_1097268(Proc_5_1_100CB50(var_124, Me, global_52), var_8C)
  loc_13EFC7E:   Call TopCtrl1_UnknownEvent_11()
  loc_13EFC83:   Exit Sub
  loc_13EFC84: End If
  loc_13EFC84: ' Referenced from: 13EFBF3
  loc_13EFC84: ' Referenced from: 13EF5AD
  loc_13EFC84: ' Referenced from: 13EF3D8
  loc_13EFC8D: If (CInt(var_92) = 1) Then
  loc_13EFC96:   unk_453286.RollbackTrans
  loc_13EFCA6:   var_D4 = "Smart Card Detail"
  loc_13EFCBC:   MsgBox("Transaction Failed.", &H10, var_D4, var_F4, var_114)
  loc_13EFCCC: End If
  loc_13EFCD4: Set var_118 = Err()
  loc_13EFCDA: Call 0.Method_arg_1C (var_134, var_4C8)
  loc_13EFCEB: If (var_134 <> 0) Then
  loc_13EFCF6:   Set var_118 = Err()
  loc_13EFCFC:   Call 0.Method_arg_2C (var_124)
  loc_13EFD15:   MsgBox(CVar(var_124), &H10, var_D4, var_F4, var_114)
  loc_13EFD28: End If
  loc_13EFD28: Exit Sub
End Sub

Private Sub Form_Load() 'F8B80C
  'Data Table: 453278
  Dim var_8C As String
  Dim unk_453286 As Connection15
  Dim var_B8 As Variant
  loc_F8B6C0: On Error Goto loc_F8B7C8
  loc_F8B6CA: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_F8B6E3: var_8C = "SELECT R.Code As SearchCode,R.*,MF.PicPath,MF.SigPath,S.Name MemberName From SmartCardRegistration R Left Join MemberFamily MF On R.Code=MF.CardRegId Left Join Subgroup S On R.MemberCode=S.SubCode where R.Site_Code='" & MemVar_1F92070
  loc_F8B701: unk_453286.Execute var_8C & "' And (R.LOGSITE_CODE='" & MemVar_1F92078 & "' or R.LOGSITE_CODE='HO') Order By R.IssDate,R.Code", var_B8, -1
  loc_F8B712: Set global_56 = var_BC
  loc_F8B73F: var_8C = "SELECT SCL.Trans_Id As Searchcode,SCL.Trans_Id,SCL.CardRegId,Convert(Varchar(11),SCL.IssDate,103) VDate,SCL.Remark,SCL.U_Name,SCL.U_EntDt,SCR.CurrBal,SCR.SecurBal,SCL.IssDate,SCR.CardType,SCR.Name,SCR.CardNo,SCR.Addr,SCR.Phone,SCL.ValidUpto,SCR.BlockedYN,SCL.HW_Id,SCL.OldHW_Id,SCL.OldIssDate,SCL.OldValidUpto,SCR.MemberCode,MF.PicPath,MF.SigPath,S.Name MemberName From SmartCardReIssueDetail SCL Inner Join SmartCardRegistration SCR On SCL.CardRegId=SCR.Code Left Join MemberFamily MF On SCR.Code=MF.CardRegId Left Join Subgroup S On SCR.MemberCode=S.SubCode And SCL.LogSite_Code='" & MemVar_1F92078
  loc_F8B74F: unk_453286.Execute var_8C & "' Order By SCL.Trans_Id", var_B8, -1
  loc_F8B781: Set var_BC = Me
  loc_F8B78A: var_8C = "INI"
  loc_F8B798: Call Proc_282_20_1097268(Proc_5_1_100CB50(var_8C, var_BC, var_BC), var_BC)
  loc_F8B7AC: Call 0.Method_arg_160 (var_BC)
  loc_F8B7BA: Call 0.Method_arg_164 (var_BC)
  loc_F8B7C2: Call Proc_282_23_13855B8(var_BC)
  loc_F8B7C7: Exit Sub
  loc_F8B7C8: ' Referenced from: F8B6C0
  loc_F8B7D0: Set var_BC = Err()
  loc_F8B7D6: Call 0.Method_arg_2C (var_8C)
  loc_F8B7F7: MsgBox(CVar(var_8C), &H40, "Information", var_F4, var_114)
  loc_F8B80A: Exit Sub
  loc_F8B80B: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E136E4
  'Data Table: 453278
  loc_E136DB: Set global_52 = Nothing
  loc_E136E2: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28B44
  'Data Table: 453278
  loc_E28B1C: On Error Goto loc_E28B3B
  loc_E28B33: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E28B3B: ' Referenced from: E28B1C
  loc_E28B3B: Proc_6_60_E62BC4(Shift)
  loc_E28B40: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E7B59C
  'Data Table: 453278
  Dim var_86 As Integer
  loc_E7B54C: On Error Goto loc_E7B556
  loc_E7B552: var_86 = Index
  loc_E7B555: Exit Sub
  loc_E7B556: ' Referenced from: E7B54C
  loc_E7B55E: Set var_8C = Err()
  loc_E7B564: Call 0.Method_arg_2C (var_90)
  loc_E7B585: MsgBox(CVar(var_90), &H40, "Information", var_E0, var_100)
  loc_E7B598: Exit Sub
  loc_E7B599: Exit Sub
  loc_E7B59A: Set arg_0 = var_86
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E7BB0C
  'Data Table: 453278
  Dim var_86 As Integer
  Dim var_88 As Integer
  loc_E7BAA7: var_86 = Shift
  loc_E7BAB4: If (CLng(Shift) = &H1B) Then
  loc_E7BAB7:   Exit Sub
  loc_E7BAB8: End If
  loc_E7BABB: var_88 = KeyCode
  loc_E7BADC: If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HA))) Then
  loc_E7BAE5:   Proc_6_75_E527CC(Shift, arg_14)
  loc_E7BAEA: End If
  loc_E7BAFD: If ((CLng(Shift) = &H26) And (KeyCode <> CInt(9))) Then
  loc_E7BB06:   Proc_6_76_E52838(Shift, arg_14)
  loc_E7BB0B: End If
  loc_E7BB0B: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E07800
  'Data Table: 453278
  Dim var_86 As Integer
  loc_E077F3: Proc_6_58_E054C0(arg_10)
  loc_E077FB: var_86 = KeyAscii
  loc_E077FE: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'EE75D8
  'Data Table: 453278
  Dim var_A0 As String
  Dim var_9C As TextBox
  loc_EE752C: On Error Goto loc_EE7592
  loc_EE753D: If (Cancel = CInt(9)) Then
  loc_EE754A:   Set var_8C = Me.Txt
  loc_EE7550:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_EE7563:   var_A0 = Proc_6_33_1512840(var_90)
  loc_EE7570:   Set var_98 = Me.Txt
  loc_EE7576:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_EE757E:   var_9C.Text = var_A0
  loc_EE7591: End If
  loc_EE7591: Exit Sub
  loc_EE7592: ' Referenced from: EE752C
  loc_EE759A: Set var_8C = Err()
  loc_EE75A0: Call 0.Method_arg_2C (var_A0)
  loc_EE75C1: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_EE75D4: Exit Sub
  loc_EE75D5: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'F09B64
  'Data Table: 453278
  Dim Me As Recordset15
  Dim var_8C As String
  loc_F09A8B: var_88 = MyValue
  loc_F09A8E: On Error Goto loc_F09B20
  loc_F09A9D: If (CInt(global_72) = 0) Then
  loc_F09AA6:   Me.MoveFirst
  loc_F09AC0:   var_8C = "SearchCode='" & var_88
  loc_F09AD0:   Me.Find var_8C & "'", 0, 1
  loc_F09AF8:   Proc_5_0_110649C(&HFF, Me, global_52)
  loc_F09B00:   Call Proc_282_23_13855B8(0)
  loc_F09B08: Else
  loc_F09B14:   If (CInt(global_72) = 1) Then
  loc_F09B1A:     Call Proc_282_24_12C5580(var_88)
  loc_F09B1F:   End If
  loc_F09B1F: End If
  loc_F09B1F: Exit Sub
  loc_F09B20: ' Referenced from: F09A8E
  loc_F09B28: Set var_A8 = Err()
  loc_F09B2E: Call 0.Method_arg_2C (var_8C)
  loc_F09B4F: MsgBox(CVar(var_8C), &H40, "Information", var_EC, var_10C)
  loc_F09B62: Exit Sub
  loc_F09B63: Exit Sub
End Sub

Public Sub Proc_282_20_1097268(arg_C) '1097268
  'Data Table: 453278
  Dim var_98 As TextBox
  loc_1096FAE: Set var_8C = Me.Txt
  loc_1096FB4: Call 0.Method_Proc_282_20_1097268C (var_8E, var_86)
  loc_1096FC4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1096FDA:   Set var_8C = Me.Txt
  loc_1096FE0:   Call 0.Method_Proc_282_20_10972680 (CInt(var_86), var_98)
  loc_1096FE8:   var_98.Enabled = arg_C
  loc_1096FF7: Next var_92 'Byte
  loc_109700A: Set var_8C = Me.Txt
  loc_1097010: Call 0.Method_Proc_282_20_10972680 (CInt(0), var_98)
  loc_1097018: var_98.Enabled = False
  loc_1097031: Set var_8C = Me.Txt
  loc_1097037: Call 0.Method_Proc_282_20_10972680 (CInt(1), var_98)
  loc_109703F: var_98.Enabled = False
  loc_1097058: Set var_8C = Me.Txt
  loc_109705E: Call 0.Method_Proc_282_20_10972680 (CInt(2), var_98)
  loc_1097066: var_98.Enabled = False
  loc_109707F: Set var_8C = Me.Txt
  loc_1097085: Call 0.Method_Proc_282_20_10972680 (CInt(3), var_98)
  loc_109708D: var_98.Enabled = False
  loc_10970A6: Set var_8C = Me.Txt
  loc_10970AC: Call 0.Method_Proc_282_20_10972680 (CInt(4), var_98)
  loc_10970B4: var_98.Enabled = False
  loc_10970CD: Set var_8C = Me.Txt
  loc_10970D3: Call 0.Method_Proc_282_20_10972680 (CInt(5), var_98)
  loc_10970DB: var_98.Enabled = False
  loc_10970F4: Set var_8C = Me.Txt
  loc_10970FA: Call 0.Method_Proc_282_20_10972680 (CInt(6), var_98)
  loc_1097102: var_98.Enabled = False
  loc_109711B: Set var_8C = Me.Txt
  loc_1097121: Call 0.Method_Proc_282_20_10972680 (CInt(7), var_98)
  loc_1097129: var_98.Enabled = False
  loc_1097142: Set var_8C = Me.Txt
  loc_1097148: Call 0.Method_Proc_282_20_10972680 (CInt(8), var_98)
  loc_1097150: var_98.Enabled = False
  loc_1097169: Set var_8C = Me.Txt
  loc_109716F: Call 0.Method_Proc_282_20_10972680 (CInt(&HB), var_98)
  loc_1097177: var_98.Enabled = False
  loc_1097190: Set var_8C = Me.Txt
  loc_1097196: Call 0.Method_Proc_282_20_10972680 (CInt(&HC), var_98)
  loc_109719E: var_98.Enabled = False
  loc_10971B7: Set var_8C = Me.Txt
  loc_10971BD: Call 0.Method_Proc_282_20_10972680 (CInt(&HD), var_98)
  loc_10971C5: var_98.Enabled = False
  loc_10971DE: Set var_8C = Me.Txt
  loc_10971E4: Call 0.Method_Proc_282_20_10972680 (CInt(&HE), var_98)
  loc_10971EC: var_98.Enabled = False
  loc_1097205: Set var_8C = Me.Txt
  loc_109720B: Call 0.Method_Proc_282_20_10972680 (CInt(&HF), var_98)
  loc_1097213: var_98.Enabled = False
  loc_109722C: Set var_8C = Me.Txt
  loc_1097232: Call 0.Method_Proc_282_20_10972680 (CInt(&H10), var_98)
  loc_109723A: var_98.Enabled = False
  loc_1097253: Set var_8C = Me.CmdCardScan
  loc_1097259: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_8001000D(Not(arg_C))
  loc_1097264: Exit Sub
End Sub

Public Sub Proc_282_21_EE8F54
  'Data Table: 453278
  Dim var_98 As TextBox
  loc_EE8E9E: Set var_8C = Me.Txt
  loc_EE8EA4: Call 0.Method_Proc_282_21_EE8F54C (var_8E, var_86)
  loc_EE8EB4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE8ECA:   Set var_8C = Me.Txt
  loc_EE8ED0:   Call 0.Method_Proc_282_21_EE8F540 (CInt(var_86), var_98)
  loc_EE8ED8:   var_98.Text = vbNullString
  loc_EE8EF4:   Set var_8C = Me.Txt
  loc_EE8EFA:   Call 0.Method_Proc_282_21_EE8F540 (CInt(var_86), var_98)
  loc_EE8F02:   var_98.Tag = vbNullString
  loc_EE8F11: Next var_92 'Byte
  loc_EE8F1D: global_60 = vbNullString
  loc_EE8F27: global_64 = vbNullString
  loc_EE8F31: global_68 = vbNullString
  loc_EE8F38: var_A0 = vbNullString
  loc_EE8F47: Call Proc_282_25_11DCAA0(vbNullString)
  loc_EE8F53: Exit Sub
End Sub

Public Sub Proc_282_22_F0BFD0
  'Data Table: 453278
  Dim var_8C As TextBox
  loc_F0BEEA: Set var_88 = Me.Txt
  loc_F0BEF0: Call 0.Method_Proc_282_22_F0BFD00 (CInt(&HD), var_8C)
  loc_F0BEF8: var_8C.Text = vbNullString
  loc_F0BF12: Set var_88 = Me.Txt
  loc_F0BF18: Call 0.Method_Proc_282_22_F0BFD00 (CInt(&HC), var_8C)
  loc_F0BF20: var_8C.Text = vbNullString
  loc_F0BF3A: Set var_88 = Me.Txt
  loc_F0BF40: Call 0.Method_Proc_282_22_F0BFD00 (CInt(&HE), var_8C)
  loc_F0BF48: var_8C.Text = vbNullString
  loc_F0BF62: Set var_88 = Me.Txt
  loc_F0BF68: Call 0.Method_Proc_282_22_F0BFD00 (CInt(&HB), var_8C)
  loc_F0BF70: var_8C.Text = vbNullString
  loc_F0BF8A: Set var_88 = Me.Txt
  loc_F0BF90: Call 0.Method_Proc_282_22_F0BFD00 (CInt(9), var_8C)
  loc_F0BF98: var_8C.Text = vbNullString
  loc_F0BFB2: Set var_88 = Me.Txt
  loc_F0BFB8: Call 0.Method_Proc_282_22_F0BFD00 (CInt(&HA), var_8C)
  loc_F0BFC0: var_8C.Text = vbNullString
  loc_F0BFCC: Exit Sub
End Sub

Public Sub Proc_282_23_13855B8
  'Data Table: 453278
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B4 As String
  Dim var_EC As TextBox
  Dim var_E8 As Fields15
  Dim var_D4 As Variant
  loc_1384CFC: On Error Goto loc_1385572
  loc_1384D05: Proc_183_45_E5C118(global_52)
  loc_1384D0A: Call Proc_282_21_EE8F54()
  loc_1384D26: If (Me.RecordCount > 0) Then
  loc_1384D5A:   global_64 = Proc_6_38_E68A98(CVar(Me.Fields.Item("OldHW_ID")))
  loc_1384DBC:   Set var_E8 = Me.Txt
  loc_1384DC2:   Call 0.Method_Proc_282_23_13855B80 (CInt(&HD), var_EC, CStr(Format(CVar(Me.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_1384DCA:   var_EC.Text = 1
  loc_1384E12:   var_D4 = "hh:nn"
  loc_1384E39:   Set var_E8 = Me.Txt
  loc_1384E3F:   Call 0.Method_Proc_282_23_13855B80 (CInt(&HE), var_EC, CStr(Format(CVar(Me.Fields.Item("U_EntDt")), var_D4)))
  loc_1384E47:   var_EC.Text = 1
  loc_1384E8A:   Proc_6_39_E7C810(var_D4, CVar(Me.Fields.Item("Trans_Id")))
  loc_1384EA1:   Set var_E8 = Me.Txt
  loc_1384EA7:   Call 0.Method_Proc_282_23_13855B80 (CInt(&HC), var_EC, CStr(var_D4))
  loc_1384EAF:   var_EC.Text = 1
  loc_1384F1C:   Set var_E8 = Me.Txt
  loc_1384F22:   Call 0.Method_Proc_282_23_13855B80 (CInt(0), var_EC, CStr(Format(CVar(Me.Fields.Item("OldIssDate")), "dd/MMM/yyyy")))
  loc_1384F2A:   var_EC.Text = 1
  loc_1384F80:   Set var_E8 = Me.Txt
  loc_1384F86:   Call 0.Method_Proc_282_23_13855B80 (CInt(1), var_EC, CStr(Me.Fields.Item("CardType").Value))
  loc_1384F8E:   var_EC.Text = 1
  loc_1384FDD:   Set var_E8 = Me.Txt
  loc_1384FE3:   Call 0.Method_Proc_282_23_13855B80 (CInt(2), var_EC)
  loc_1384FEB:   var_EC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("MemberName")))
  loc_1385038:   Set var_E8 = Me.Txt
  loc_138503E:   Call 0.Method_Proc_282_23_13855B80 (CInt(2), var_EC)
  loc_1385046:   var_EC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("MemberCode")))
  loc_1385093:   Set var_E8 = Me.Txt
  loc_1385099:   Call 0.Method_Proc_282_23_13855B80 (CInt(3), var_EC)
  loc_13850A1:   var_EC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_13850EE:   Set var_E8 = Me.Txt
  loc_13850F4:   Call 0.Method_Proc_282_23_13855B80 (CInt(3), var_EC)
  loc_13850FC:   var_EC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("CardRegId")))
  loc_138514C:   Set var_E8 = Me.Txt
  loc_1385152:   Call 0.Method_Proc_282_23_13855B80 (CInt(4), var_EC)
  loc_138515A:   var_EC.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_13851A9:   Set var_E8 = Me.Txt
  loc_13851AF:   Call 0.Method_Proc_282_23_13855B80 (CInt(5), var_EC)
  loc_13851B7:   var_EC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Addr")))
  loc_1385204:   Set var_E8 = Me.Txt
  loc_138520A:   Call 0.Method_Proc_282_23_13855B80 (CInt(6), var_EC)
  loc_1385212:   var_EC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Phone")))
  loc_138527B:   Set var_E8 = Me.Txt
  loc_1385281:   Call 0.Method_Proc_282_23_13855B80 (CInt(7), var_EC, CStr(Format(CVar(Me.Fields.Item("OldValidUpto")), "dd/MMM/yyyy")))
  loc_1385289:   var_EC.Text = 1
  loc_13852E1:   var_D4 = "Yes"
  loc_13852F9:   var_11C = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("BlockedYN")), 1) = "Y"), var_D4, "No")
  loc_1385310:   Set var_E8 = Me.Txt
  loc_1385316:   Call 0.Method_Proc_282_23_13855B80 (CInt(8), var_EC)
  loc_138531E:   var_EC.Text = CStr(var_11C)
  loc_138536B:   Proc_6_47_EF59D0(var_D4, CVar(Me.Fields.Item("CurrBal")))
  loc_1385382:   Set var_E8 = Me.Txt
  loc_1385388:   Call 0.Method_Proc_282_23_13855B80 (CInt(&HF), var_EC)
  loc_1385390:   var_EC.Text = CStr(var_D4)
  loc_13853D1:   Proc_6_47_EF59D0(var_D4, CVar(Me.Fields.Item("SecurBal")))
  loc_13853E8:   Set var_E8 = Me.Txt
  loc_13853EE:   Call 0.Method_Proc_282_23_13855B80 (CInt(&H10), var_EC)
  loc_13853F6:   var_EC.Text = CStr(var_D4)
  loc_138543C:   var_D4 = "dd/MMM/yyyy"
  loc_138544C:   var_E4 = Format(CVar(Me.Fields.Item("ValidUpto")), var_D4)
  loc_1385463:   Set var_E8 = Me.Txt
  loc_1385469:   Call 0.Method_Proc_282_23_13855B80 (CInt(9), var_EC, CStr(var_E4))
  loc_1385471:   var_EC.Text = 1
  loc_13854B4:   Proc_6_47_EF59D0(var_D4, CVar(Me.Fields.Item("Remark")))
  loc_13854BC:   var_B4 = CStr(var_D4)
  loc_13854CB:   Set var_E8 = Me.Txt
  loc_13854D1:   Call 0.Method_Proc_282_23_13855B80 (CInt(&HA), var_EC, var_B4)
  loc_13854D9:   var_EC.Text = 1
  loc_1385555:   Call Proc_282_25_11DCAA0(Proc_6_38_E68A98(CVar(Me.Fields.Item("PicPath"))), Proc_6_38_E68A98(CVar(Me.Fields.Item("SigPath"))))
  loc_1385571: End If
  loc_1385571: Exit Sub
  loc_1385572: ' Referenced from: 1384CFC
  loc_138557A: Set var_8C = Err()
  loc_1385580: Call 0.Method_arg_2C (var_B4)
  loc_13855A1: MsgBox(CVar(var_B4), &H40, "Information", var_E4, var_11C)
  loc_13855B4: Exit Sub
End Sub

Public Sub Proc_282_24_12C5580(arg_C) '12C5580
  'Data Table: 453278
  Dim Me As Recordset15
  Dim var_AC As Fields15
  Dim var_F8 As TextBox
  Dim var_B0 As Variant
  Dim var_F4 As Fields15
  Dim var_E0 As Variant
  loc_12C4F23: var_88 = arg_C
  loc_12C4F3D: If (Me.RecordCount > 0) Then
  loc_12C4F46:   Me.MoveFirst
  loc_12C4F70:   Me.Find "SearchCode ='" & var_88 & "'", 0, 1
  loc_12C4FA5:   If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_12C4FAE:     global_60 = var_88
  loc_12C4FE3:     global_64 = Proc_6_38_E68A98(CVar(Me.Fields.Item("SerialNo")))
  loc_12C5045:     Set var_F4 = Me.Txt
  loc_12C504B:     Call 0.Method_Proc_282_24_12C55800 (CInt(0), var_F8, CStr(Format(CVar(Me.Fields.Item("IssDate")), "dd/MMM/yyyy")))
  loc_12C5053:     var_F8.Text = 1
  loc_12C50A9:     Set var_F4 = Me.Txt
  loc_12C50AF:     Call 0.Method_Proc_282_24_12C55800 (CInt(1), var_F8, CStr(Me.Fields.Item("CardType").Value))
  loc_12C50B7:     var_F8.Text = 1
  loc_12C5106:     Set var_F4 = Me.Txt
  loc_12C510C:     Call 0.Method_Proc_282_24_12C55800 (CInt(2), var_F8)
  loc_12C5114:     var_F8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("MemberName")))
  loc_12C5161:     Set var_F4 = Me.Txt
  loc_12C5167:     Call 0.Method_Proc_282_24_12C55800 (CInt(2), var_F8)
  loc_12C516F:     var_F8.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("MemberCode")))
  loc_12C519D:     var_B0 = Me.Fields.Item("Name")
  loc_12C51BC:     Set var_F4 = Me.Txt
  loc_12C51C2:     Call 0.Method_Proc_282_24_12C55800 (CInt(3), var_F8)
  loc_12C51CA:     var_F8.Text = Proc_6_38_E68A98(CVar(var_B0))
  loc_12C51EC:     Set var_AC = Me.Txt
  loc_12C51F2:     Call 0.Method_Proc_282_24_12C55800 (CInt(3), var_B0)
  loc_12C51FA:     var_B0.Tag = var_88
  loc_12C523F:     Set var_F4 = Me.Txt
  loc_12C5245:     Call 0.Method_Proc_282_24_12C55800 (CInt(4), var_F8)
  loc_12C524D:     var_F8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CardNo")))
  loc_12C529A:     Set var_F4 = Me.Txt
  loc_12C52A0:     Call 0.Method_Proc_282_24_12C55800 (CInt(5), var_F8)
  loc_12C52A8:     var_F8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Addr")))
  loc_12C52F5:     Set var_F4 = Me.Txt
  loc_12C52FB:     Call 0.Method_Proc_282_24_12C55800 (CInt(6), var_F8)
  loc_12C5303:     var_F8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Phone")))
  loc_12C536C:     Set var_F4 = Me.Txt
  loc_12C5372:     Call 0.Method_Proc_282_24_12C55800 (CInt(7), var_F8, CStr(Format(CVar(Me.Fields.Item("ValidUpto")), "dd/MMM/yyyy")))
  loc_12C537A:     var_F8.Text = 1
  loc_12C53D2:     var_E0 = "Yes"
  loc_12C5401:     Set var_F4 = Me.Txt
  loc_12C5407:     Call 0.Method_Proc_282_24_12C55800 (CInt(8), var_F8)
  loc_12C540F:     var_F8.Text = CStr(IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("BlockedYN")), 1) = "Y"), var_E0, "No"))
  loc_12C545C:     Proc_6_47_EF59D0(var_E0, CVar(Me.Fields.Item("CurrBal")))
  loc_12C5473:     Set var_F4 = Me.Txt
  loc_12C5479:     Call 0.Method_Proc_282_24_12C55800 (CInt(&HF), var_F8)
  loc_12C5481:     var_F8.Text = CStr(var_E0)
  loc_12C54C2:     Proc_6_47_EF59D0(var_E0, CVar(Me.Fields.Item("SecurBal")))
  loc_12C54D9:     Set var_F4 = Me.Txt
  loc_12C54DF:     Call 0.Method_Proc_282_24_12C55800 (CInt(&H10), var_F8)
  loc_12C54E7:     var_F8.Text = CStr(var_E0)
  loc_12C5563:     Call Proc_282_25_11DCAA0(Proc_6_38_E68A98(CVar(Me.Fields.Item("PicPath"))), Proc_6_38_E68A98(CVar(Me.Fields.Item("SigPath"))))
  loc_12C557F:   End If
  loc_12C557F: End If
  loc_12C557F: Exit Sub
End Sub

Public Sub Proc_282_25_11DCAA0(arg_C, arg_10) '11DCAA0
  'Data Table: 453278
  Dim var_8C As Image
  Dim var_A0 As Variant
  Dim var_F0 As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_11DC647: Set var_8C = Me.ImgPhoto
  loc_11DC660: If (var_8C.Tag <> arg_C) Then
  loc_11DC670:   var_F0 = IsNull(arg_C)
  loc_11DC677:   var_B0 = arg_C
  loc_11DC687:   var_D0 = vbNullString
  loc_11DC69E:   If CBool(var_F0 Or (Trim(var_B0) = var_D0)) Then
  loc_11DC6BF:     Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DC6D4:     Me.ImgPhoto.Picture = var_8C
  loc_11DC6ED:     Me.ImgPhoto.Tag = vbNullString
  loc_11DC6F8:   Else
  loc_11DC6FB:     var_A0 = arg_C
  loc_11DC70B:     var_D0 = arg_C
  loc_11DC736:     var_B0 = "DAT"
  loc_11DC75E:     var_F0 = "AVI"
  loc_11DC77D:     If CBool((Ucase(Right(Trim(var_A0), 3)) = var_B0) Or (Ucase(Right(Trim(var_D0), 3)) = var_F0)) Then
  loc_11DC78C:       Me.ImgPhoto.Visible = False
  loc_11DC797:     Else
  loc_11DC7A4:       Me.ImgPhoto.Tag = arg_C
  loc_11DC7B8:       Call 0.Method_Proc_282_25_11DCAA04 (arg_C, var_17A)
  loc_11DC7C0:       If var_17A Then
  loc_11DC7DD:         Set var_8C = Me.ImgPhoto
  loc_11DC7F5:         Me.Global.LoadPicture CVar(Me.ImgPhoto.Tag), var_A0, var_B0, var_D0, var_F0
  loc_11DC80A:         Me.ImgPhoto.Picture = var_114
  loc_11DC81F:         Set var_8C = Me.ImgPhoto
  loc_11DC825:         var_8C.Refresh
  loc_11DC830:       Else
  loc_11DC84E:         Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DC863:         Me.ImgPhoto.Picture = var_8C
  loc_11DC86F:       End If
  loc_11DC86F:     End If
  loc_11DC86F:   End If
  loc_11DC86F: End If
  loc_11DC876: Set var_8C = Me.ImgSign
  loc_11DC88F: If (var_8C.Tag <> arg_10) Then
  loc_11DC89F:   var_F0 = IsNull(arg_10)
  loc_11DC8A6:   var_B0 = arg_10
  loc_11DC8B6:   var_D0 = vbNullString
  loc_11DC8CD:   If CBool(var_F0 Or (Trim(var_B0) = var_D0)) Then
  loc_11DC8EE:     Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DC903:     Me.ImgSign.Picture = var_8C
  loc_11DC91C:     Me.ImgSign.Tag = vbNullString
  loc_11DC927:   Else
  loc_11DC92A:     var_A0 = arg_10
  loc_11DC93A:     var_D0 = arg_10
  loc_11DC965:     var_B0 = "DAT"
  loc_11DC98D:     var_F0 = "AVI"
  loc_11DC9AC:     If CBool((Ucase(Right(Trim(var_A0), 3)) = var_B0) Or (Ucase(Right(Trim(var_D0), 3)) = var_F0)) Then
  loc_11DC9BB:       Me.ImgSign.Visible = False
  loc_11DC9C6:     Else
  loc_11DC9CD:       Set var_8C = Me.ImgSign
  loc_11DC9D3:       var_8C.Tag = arg_10
  loc_11DC9E7:       Call 0.Method_Proc_282_25_11DCAA04 (arg_10, var_17A, var_8C)
  loc_11DC9EF:       If var_17A Then
  loc_11DCA0C:         Set var_8C = Me.ImgSign
  loc_11DCA24:         Me.Global.LoadPicture CVar(Me.ImgSign.Tag), var_A0, var_B0, var_D0, var_F0
  loc_11DCA39:         Me.ImgSign.Picture = var_114
  loc_11DCA4E:         Set var_8C = Me.ImgSign
  loc_11DCA54:         var_8C.Refresh
  loc_11DCA5F:       Else
  loc_11DCA7D:         Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DCA92:         Me.ImgSign.Picture = var_8C
  loc_11DCA9E:       End If
  loc_11DCA9E:     End If
  loc_11DCA9E:   End If
  loc_11DCA9E: End If
  loc_11DCA9E: Exit Sub
End Sub

Public Sub Proc_282_26_E69BA4
  'Data Table: 453278
  Dim var_88 As String
  loc_E69B57: global_72 = CByte(1)
  loc_E69B62: var_88 = "Select SCR.Code As SearchCode,SCR.Code,Convert(Varchar(11),SCR.IssDate,103) IssueDate,SCR.CardType,S.Name As MemberName,SCR.Name As Name,SCR.CardNo As MemberID,SCR.Addr As Address,SCR.Phone,Convert(Varchar(11),SCR.ValidUpTo,103) As ValidUpTo,SCR.BlockedYN FROM SmartCardRegistration SCR Left Join Subgroup S On SCR.Membercode=S.SubCode WHERE (SCR.LOGSITE_CODE='" & MemVar_1F92078
  loc_E69B79: Proc_6_126_F1BCC0("1200,900,900,3500,3500,1500,3500,2000,900,500", "1200,900,900,3500,3500,1500,3500,2000,900,500" & "' or SCR.LOGSITE_CODE='HO') Order by SCR.IssDate,SCR.Code")
  loc_E69B87: MemVar_1F92120 = Me
  loc_E69B9E: Call 0.Method_arg_2B0 (1, var_A8)
  loc_E69BA3: Exit Sub
End Sub
