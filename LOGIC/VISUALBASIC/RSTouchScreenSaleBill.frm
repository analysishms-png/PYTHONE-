VERSION 5.00
Begin VB.Form RSTouchScreenSaleBill
  Caption = "Sale Bill Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 12795
  ClientHeight = 9225
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin Frame FrDiscType
    BackColor = &HFFC0C0&
    Left = 14340
    Top = 2295
    Width = 1185
    Height = 2355
    Visible = 0   'False
    TabIndex = 90
    BorderStyle = 0 'None
    Begin BtnEnh CmdDiscType
      Index = 0
      Left = 15
      Top = 15
      Width = 1155
      Height = 560
      TabIndex = 91
    End
    Begin BtnEnh CmdDiscType
      Index = 1
      Left = 15
      Top = 585
      Width = 1155
      Height = 575
      TabIndex = 92
    End
    Begin BtnEnh CmdDiscType
      Index = 2
      Left = 15
      Top = 1170
      Width = 1155
      Height = 570
      TabIndex = 93
    End
    Begin BtnEnh CmdDiscType
      Index = 3
      Left = 15
      Top = 1755
      Width = 1155
      Height = 570
      Visible = 0   'False
      TabIndex = 108
    End
  End
  Begin Frame FrameQty
    BackColor = &H808080&
    ForeColor = &H8000000A&
    Left = 420
    Top = 7950
    Width = 7755
    Height = 1590
    Visible = 0   'False
    TabIndex = 127
    BeginProperty Font
      Name = "Times New Roman"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox TxtQtyFormat
      Left = 45
      Top = 810
      Width = 495
      Height = 360
      Visible = 0   'False
      TabIndex = 129
      BorderStyle = 0 'None
      Alignment = 2 'Center
      MaxLength = 4
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox TxtQty
      ForeColor = &HFF0000&
      Left = 15
      Top = 1200
      Width = 2190
      Height = 390
      TabIndex = 128
      BorderStyle = 0 'None
      Alignment = 2 'Center
      MaxLength = 4
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin BtnEnh CmdQty
      Index = 1
      Left = 2220
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 130
    End
    Begin BtnEnh CmdQty
      Index = 0
      Left = 4605
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 131
    End
    Begin BtnEnh CmdQty
      Index = 2
      Left = 3015
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 132
    End
    Begin BtnEnh CmdQty
      Index = 3
      Left = 3810
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 133
    End
    Begin BtnEnh CmdQty
      Index = 4
      Left = 4605
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 134
    End
    Begin BtnEnh CmdQty
      Index = 5
      Left = 5385
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 135
    End
    Begin BtnEnh CmdQty
      Index = 6
      Left = 6165
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 136
    End
    Begin BtnEnh CmdQty
      Index = 7
      Left = 2220
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 137
    End
    Begin BtnEnh CmdQty
      Index = 8
      Left = 3015
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 138
    End
    Begin BtnEnh CmdQty
      Index = 9
      Left = 3810
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 139
    End
    Begin BtnEnh CmdQty
      Index = 10
      Left = 5385
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 140
    End
    Begin BtnEnh CmdQty
      Index = 11
      Left = 6945
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 141
    End
    Begin BtnEnh CmdQty
      Index = 12
      Left = 6945
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 142
    End
    Begin BtnEnh CmdQty
      Index = 13
      Left = 6165
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 143
    End
    Begin Label LblIndex
      Left = 585
      Top = 825
      Width = 1500
      Height = 360
      Visible = 0   'False
      TabIndex = 145
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
    Begin Label LblVtype
      BackColor = &HFF8080&
      ForeColor = &HFFFFFF&
      Left = 15
      Top = 810
      Width = 2190
      Height = 390
      TabIndex = 144
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 9000
    Width = 12795
    Height = 225
    Visible = 0   'False
    TabIndex = 109
  End
  Begin Frame FrameGrpItem
    BackColor = &H80000003&
    Left = 8190
    Top = 4635
    Width = 6600
    Height = 4845
    TabIndex = 59
    BorderStyle = 0 'None
    Begin BtnEnh CmdCatType
      Index = 3
      Left = 0
      Top = 600
      Width = 1875
      Height = 615
      TabIndex = 151
    End
    Begin BtnEnh CmdCatType
      Index = 0
      Left = 0
      Top = 0
      Width = 1875
      Height = 600
      TabIndex = 146
    End
    Begin SSPanel SSPMain
      Left = 120
      Top = 3750
      Width = 1245
      Height = 945
      Visible = 0   'False
      TabIndex = 60
    End
    Begin BtnEnh SSPItem
      Index = 0
      Left = 15
      Top = 300
      Width = 1560
      Height = 945
      Visible = 0   'False
      TabIndex = 107
    End
    Begin BtnEnh SSPGroup
      Index = 0
      Left = 15
      Top = 300
      Width = 1560
      Height = 945
      Visible = 0   'False
      TabIndex = 106
    End
    Begin BtnEnh CmdCatType
      Index = 1
      Left = 1875
      Top = 0
      Width = 1875
      Height = 600
      TabIndex = 147
    End
End

Attribute VB_Name = "RSTouchScreenSaleBill"

Private global_72 As Integer
Private global_80 As Single
Private global_202 As Integer
Private global_60 As Long
Private global_64 As Long
Private global_320 As Long
Private global_84 As Single
Private global_92 As Single
Private global_168 As Long
Private global_368 As Double
Private global_144 As Integer
Private global_136 As Double
Private global_276 As Double

Private Sub CmdDebitCard_UnknownEvent_9 '101CB80
  'Data Table: 5B2100
  Dim var_88 As Variant
  Dim unk_5B213D As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Variant
  loc_101C980: On Error Goto loc_101CB7A
  loc_101C989: Set var_88 = (0)
  loc_101C98F: var_88.Visible = 
  loc_101C99A: var_98 = "Cash Card"
  loc_101C9C1: unk_5B213D.Execute "Select Interface From MemEnviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_C0, -1
  loc_101C9CC: Set var_8C = var_88
  loc_101C9F0: If (var_8C.RecordCount > 0) Then
  loc_101CA02:   var_88 = var_8C.Fields
  loc_101CA1B:   var_CC = Proc_6_38_E68A98(CVar(var_88.Item("Interface")))
  loc_101CA2C:   If (var_CC = "SmartCard_ACR") Then
  loc_101CA37:     If (Proc_275_20_1365BE0(var_88) = 0) Then
  loc_101CA3A:       Exit Sub
  loc_101CA3B:     End If
  loc_101CA5A:     var_E0 = 0
  loc_101CAA9:     If (Proc_275_12_130A7A4(2, 0, var_90, var_94, 0) = 0) Then
  loc_101CAAC:       Exit Sub
  loc_101CAAD:     End If
  loc_101CAB0:     var_F4 = var_94
  loc_101CABB:     If (var_F4 = "Member") Then
  loc_101CAC4:       Call Proc_258_137_F96530(var_98, var_90, 0, 0)
  loc_101CACC:     Else
  loc_101CAD4:       If (var_F4 = "Cash Card") Then
  loc_101CADD:         Call Proc_258_137_F96530(var_98, var_90, var_E0)
  loc_101CAE2:       End If
  loc_101CAE2:     End If
  loc_101CAE5:   Else
  loc_101CAED:     If (var_CC = "NBSD_Mifare") Then
  loc_101CB09:       MsgBox("Procedure Not Defined!", &H40, var_114, var_134, var_154)
  loc_101CB1C:     Else
  loc_101CB35:       MsgBox("Smart Card Interface Not Defined!", &H40, var_114, var_134, var_154)
  loc_101CB45:     End If
  loc_101CB45:   End If
  loc_101CB48: Else
  loc_101CB61:   MsgBox("Member Environment Settings NOT SET!", 0, var_114, var_134, var_154)
  loc_101CB71: End If
  loc_101CB76: Set var_8C = Nothing
  loc_101CB79: Exit Sub
  loc_101CB7A: ' Referenced from: 101C980
  loc_101CB7A: Proc_6_60_E62BC4(0)
  loc_101CB7F: Exit Sub
End Sub

Private Sub cmdTransfer_Click() '13983DC
  'Data Table: 5B2100
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_120 As Variant
  Dim var_F0 As Variant
  Dim var_128 As Variant
  Dim var_168 As String
  Dim var_170 As String
  Dim var_94 As Recordset15
  Dim unk_5B213D As Connection15
  Dim var_124 As Variant
  Dim var_164 As String
  Dim var_12C As Variant
  Dim var_100 As Variant
  Dim var_9C As Recordset15
  Dim var_130 As Field20
  Dim var_1A0 As Variant
  Dim var_1E0 As Variant
  Dim var_270 As Variant
  Dim var_330 As Variant
  Dim var_260 As Variant
  loc_1397B8F: If (global_76 = vbNullString) Then
  loc_1397BB3:   MsgBox("Please select Outlet!", &H40, "Outlet...", var_100, var_120)
  loc_1397BC3:   Exit Sub
  loc_1397BC4: End If
  loc_1397BCF: Set var_124 = var_128(CInt(0))
  loc_1397BD5: Call 0.Method_cmdTransfer_Click0 ()
  loc_1397BF8: Set var_12C = var_130(CInt(0))
  loc_1397BFE: Call 0.Method_cmdTransfer_Click0 ((IsDate(CVar(var_128)) = 0))
  loc_1397C0D: var_100 = Trim(CVar(var_130))
  loc_1397C37: If CBool( Or (var_100 = vbNullString)) Then
  loc_1397C5B:   MsgBox("Please Check Bill Date.", &H40, "Validation...", var_100, var_120)
  loc_1397C6B:   Call Proc_258_136_143E164()
  loc_1397C70:   Exit Sub
  loc_1397C71: End If
  loc_1397C7C: Set var_124 = var_128(CInt(1))
  loc_1397C82: Call 0.Method_cmdTransfer_Click0 ()
  loc_1397CB3: Set var_12C = var_130(CInt(1))
  loc_1397CB9: Call 0.Method_cmdTransfer_Click0 (1)
  loc_1397CC1: var_120 = CVar(var_130) 'Address
  loc_1397CF5: If CBool( Or (InStr((Trim(CVar(var_128)) = vbNullString), var_120, ".mdb", 0) <= 0)) Then
  loc_1397D13:   var_C0 = "Please verify database."
  loc_1397D19:   MsgBox(var_C0, &H40, "Validation...", var_100, var_120)
  loc_1397D29:   Call Proc_258_136_143E164()
  loc_1397D2E:   Exit Sub
  loc_1397D2F: End If
  loc_1397D51: Call 0.Method_cmdTransfer_Click0 (var_164, "Provider=MSDataShape;Data Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=", vbNullString)
  loc_1397D59: vbNullString = var_128.Text
  loc_1397D62: var_168 = -1 & var_164
  loc_1397D8A: Me.Connection15.Open var_168 & ";Data Source=" & MemVar_1F92098 & ";pwd=" & MemVar_1F920DC, , , 
  loc_1397DBE: Me.Connection15.Execute "SELECT * FROM Item", var_C0, -1
  loc_1397DC9: Set var_94 = var_128(CInt(1))
  loc_1397DD8: var_17C = var_94.RecordCount
  loc_1397E1E: If ((var_17C > 0) And (MsgBox("Do You want to Update Item Master?", &H144, "Item Master...", var_100, var_120) = 6)) Then
  loc_1397E2A:   unk_5B213D.BeginTrans var_17C
  loc_1397E2F:   ' Referenced from: 139837A
  loc_1397E3E:   If Not(var_94.EOF) Then
  loc_1397E6D:     var_128 = var_94.Fields.Item("I_Code")
  loc_1397E75:     var_C0 = var_128.Value
  loc_1397E7D:     var_E0 = "SELECT Code FROM ItemMast WHERE DispCode=" & var_C0 
  loc_1397E8B:     unk_5B213D.Execute CStr(var_E0), var_100, -1
  loc_1397E96:     Set var_9C = var_12C
  loc_1397EB4:     var_D0 = 0
  loc_1397ED3:     unk_5B213D.Execute "Select iif(IsNull(Max(val(MID(Code,2)))),1,Max(val(MID(Code,2)))+1)AS MyCode From ItemMast ", var_C0, -1
  loc_1397EDB:     var_124 = var_124.Fields
  loc_1397EE3:     var_D0 = var_128.Item(var_128)
  loc_1397EEB:     var_12C = var_12C.Value
  loc_1397F0A:     var_F0 = CVar(MemVar_1F92078) 'String
  loc_1397F35:     var_100 = (1 + Format(CStr(var_E0), "0000000"))
  loc_1397F3A:     var_98 = CStr(var_100)
  loc_1397F5A:     If (var_9C.RecordCount >= 0) Then
  loc_1397F9D:       If (MsgBox(CVar("Item Allready Exist!" & vbCrLf & "Do You Want Replace it?"), &H144, "Item Master...", var_100, var_120) = 6) Then
  loc_1397FEA:         unk_5B213D.Execute CStr("DELETE FROM ItemMast WHERE DispCode=" & var_94.Fields.Item("I_Code").Value), var_100, -1
  loc_1398057:         unk_5B213D.Execute CStr("DELETE FROM ItemRate WHERE ItemCode='" & var_9C.Fields.Item("Code").Value & "'"), var_120, -1
  loc_1398073:       End If
  loc_1398087:       var_164 = "INSERT INTO ItemMast " & "(Code,Name,DispCode,Unit,Type,RestCode,ItemGroup,ItemCatCode,PurchRate,SaleRate,ReStock,Kitchen,DiscApp,RateEdit,SChrgApp,DirectYN,Site_Code,U_Name,U_EntDt,U_AE) VALUES "
  loc_139809C:       var_E0 = CVar(var_164 & "('" & var_98 & "','") 'String
  loc_13980DC:       var_F0 = "I_Code"
  loc_13980E8:       var_12C = var_94.Fields
  loc_1398116:       var_1A0 = var_E0 & var_94.Fields.Item("I_Name").Value & "'," & var_12C.Item(var_F0).Value & ",'PLATE','Finish','" & CVar(global_76) 
  loc_1398128:       var_1E0 = var_1A0 & "','GRP','CAT'" & ",0," 
  loc_139818D:       var_270 = var_1E0 & var_94.Fields.Item("I_Price1").Value & "," & var_94.Fields.Item("I_Reorder_Level").Value 
  loc_13981CA:       var_330 = var_270 & ",'" & CVar(MemVar_1F92078 & "MK','Y','N','N','N','") & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "','" 
  loc_13981DC:       Proc_6_7_F25D88(var_350, Date, var_330, var_3A0, -1, var_3A4, var_12C)
  loc_13981FB:       unk_5B213D.Execute CStr(var_12C & var_350 & "','A')"), 1, var_F0
  loc_139828E:       Proc_6_7_F25D88(var_1E0, Date, var_E0)
  loc_13982BC:       var_170 = "INSERT INTO ItemRate " & "(ItemCode,RestCode,Rate,Site_Code,U_Name,U_EntDt,U_AE,AppDate) VALUES " & "('" & var_98 & "','"
  loc_13982D3:       var_100 = CVar(var_170 & global_76 & "',") & var_94.Fields.Item("I_Price1").Value 
  loc_13982DC:       var_120 = var_100 & ",'" 
  loc_1398326:       var_260 = var_120 & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "','" & var_1E0 & "','A','" & CDate(MemVar_1F920EC) & "')" 
  loc_1398334:       unk_5B213D.Execute CStr(var_260), var_270, -1
  loc_1398372:     End If
  loc_1398375:     var_94.MoveNext
  loc_139837A:     GoTo loc_1397E2F
  loc_139837D:   End If
  loc_1398383:   unk_5B213D.CommitTrans
  loc_13983A9:   MsgBox("Item Master Update Successfully.", &H40, "Updation...", var_100, var_120)
  loc_13983B9: End If
  loc_13983BE: Set var_94 = Nothing
  loc_13983C6: Set var_9C = Nothing
  loc_13983D4: Set global_52 = Nothing
  loc_13983DB: Exit Sub
End Sub

Private Sub ImageExit_Click() 'EA0A88
  'Data Table: 5B2100
  Dim var_8C As String
  Dim var_77F4 As String
  loc_EA0A1D:  = (var_8C).Caption
  loc_EA0A30: If (var_8C = "Update &Cash Register") Then
  loc_EA0A3F:   (0).Visible = 
  loc_EA0A4A: Else
  loc_EA0A71:   MsgBox(CVar("Do not close at this movement." & vbCrLf & "Process is running...!"), &H10, "Close...", var_DC, var_FC)
  loc_EA0A84:   Exit Sub
  loc_EA0A85: End If
  loc_EA0A85: Exit Sub
  loc_EA0A86: var_77F4 = 
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ECF668
  'Data Table: 5B2100
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECF5CA: Set var_88 = var_8C(Index)
  loc_ECF5D0: Call 0.Method_TxtGt_GotFocus0 ()
  loc_ECF5DE: Proc_6_74_E226B0(var_8C)
  loc_ECF5EA: Call Proc_258_149_FD63A8()
  loc_ECF5FE: Set var_88 = var_8C(Index)
  loc_ECF604: Call 0.Method_TxtGt_GotFocus0 (0)
  loc_ECF60C: var_8C.SelStart = 
  loc_ECF625: Set var_88 = var_8C(Index)
  loc_ECF62B: Call 0.Method_TxtGt_GotFocus0 (var_94)
  loc_ECF633:  = var_8C.Text
  loc_ECF646: Set var_90 = var_98(Index)
  loc_ECF64C: Call 0.Method_TxtGt_GotFocus0 (Len(var_94))
  loc_ECF654: var_98.SelLength = 
  loc_ECF667: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5B198
  'Data Table: 5B2100
  loc_E5B165: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5B16E:   Proc_6_75_E527CC(Shift)
  loc_E5B173: End If
  loc_E5B188: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5B191:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5B196: End If
  loc_E5B196: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'E57BDC
  'Data Table: 5B2100
  loc_E57BAE: Set var_88 = var_8C(KeyAscii)
  loc_E57BB4: Call 0.Method_TxtGt_KeyPress0 ()
  loc_E57BCF: Proc_6_42_129A86C(var_8C, arg_10)
  loc_E57BDB: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E47F4C
  'Data Table: 5B2100
  loc_E47F2A: Set var_88 = var_8C(Index)
  loc_E47F30: Call 0.Method_TxtGt_LostFocus0 ()
  loc_E47F3E: Proc_6_73_E22704(var_8C)
  loc_E47F4A: Exit Sub
End Sub

Private Sub TxtGt_Validate(Cancel As Boolean) 'E0152C
  'Data Table: 5B2100
  loc_E01526: Call Proc_258_158_190485C(Cancel)
  loc_E0152B: Exit Sub
End Sub

Private Sub Form_Load() '176A6D8
  'Data Table: 5B2100
  Dim var_88 As Variant
  Dim var_A8 As Variant
  Dim var_BC As String
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_D4 As String
  Dim var_D8 As String
  Dim unk_5B213D As Connection15
  Dim var_C4 As Recordset15
  Dim var_E8 As Variant
  Dim MemVar_1F92E80 As String
  Dim var_D0 As String
  Dim Me As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Variant
  Dim var_124 As Variant
  Dim var_90 As Recordset15
  Dim var_100 As Variant
  Dim var_8C As Recordset15
  Dim var_104 As Variant
  Dim var_16C As Variant
  Dim var_114 As Variant
  Dim var_19C As String
  Dim var_1AC As Variant
  Dim var_15C As Variant
  Dim var_94 As Recordset15
  Dim var_1C0 As Recordset15
  loc_1768920: (0).Visible = 
  loc_1768928: On Error Goto loc_176A6CF
  loc_176893A: (&H64).Interval = 
  loc_1768948: Set var_88 = (0)
  loc_176894E: var_88.Enabled = 
  loc_1768961: var_B8 = Trim(MemVar_1F921A4)
  loc_1768970: global_76 = CStr(var_B8)
  loc_176898B: If (OpenMode = 1) Then
  loc_1768997:   global_76 = global_328
  loc_176899B:   GoTo loc_176899E
  loc_176899E:   ' Referenced from: 176899B
  loc_176899E: End If
  loc_17689A1: MemVar_1F92E80 = "***P"
  loc_17689CE: var_D4 = "SELECT Param_Str AS UPrivilege FROM menuHelp WHERE UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128 & "' AND [Option]='"
  loc_17689D7: Call 0.Method_arg_50 (var_D0, var_D4, var_B8)
  loc_17689E0: var_D8 = -1 & var_D0
  loc_1768A01: unk_5B213D.Execute var_D8 & "' And OutletCode='" & global_76 & "'", var_88, 
  loc_1768A0C: Set var_C4 = var_88
  loc_1768A3E: If (var_C4.RecordCount > 0) Then
  loc_1768A53:   var_88 = var_C4.Fields
  loc_1768A63:   var_B8 = var_88.Item("UPrivilege").Value
  loc_1768A6C:   MemVar_1F92E80 = CStr(var_B8)
  loc_1768A7A: End If
  loc_1768A7F: Set var_C4 = Nothing
  loc_1768A88: global_304 = MemVar_1F921A8
  loc_1768AA3: var_BC = "Select Distinct IG.Code,IG.Name as Name,IC.CatType,IG.PicPath From ItemMast I Left Join ItemGrp IG On I.ItemGroup=IG.Code Left Join ItemCatMast IC On I.ItemCatCode=IC.Code where I.Restcode='" & global_76
  loc_1768AB8: var_D0 = var_BC & "' And (I.LOGSITE_CODE='" & MemVar_1F92078 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by Name"
  loc_1768AC1: unk_5B213D.Execute var_D0, var_B8, -1
  loc_1768B02: var_BC = "Select I.Code,I.Name as Name,I.ItemGroup,IC.CatType,i.PicPath From ItemMast I Left Join ItemGrp IG On I.ItemGroup=IG.Code Left Join ItemCatMast IC On I.ItemCatCode=IC.Code where I.Restcode='" & global_76
  loc_1768B17: var_D0 = var_BC & "' And (I.LOGSITE_CODE='" & MemVar_1F92078 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by Name"
  loc_1768B20: unk_5B213D.Execute var_D0, var_B8, -1
  loc_1768B31: Set global_400 = var_88
  loc_1768B5B: var_B8 = CVar(Me.RecordCount) 'Long
  loc_1768B62: Proc_6_39_E7C810(var_F8, var_B8, var_88)
  loc_1768B83: Set var_104 = Me.SSPItem
  loc_1768BA9: Set var_88 = Me.SSPGroup
  loc_1768BAF: Call Proc_258_134_1306B94(var_88, CInt(4), var_88, CInt(4), var_104)
  loc_1768BF0: unk_5B213D.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_B8, -1
  loc_1768C01: Set global_296 = var_88
  loc_1768C2D: If (Me.RecordCount > 0) Then
  loc_1768C42:   var_88 = Me.Fields
  loc_1768C5B:   var_F8 = CVar(Proc_6_38_E68A98(CVar(var_88.Item("MemberShipModule")), var_88, CInt(CVar(var_88.Item("MemberShipModule"))), CVar(var_88.Item("MemberShipModule")))) 'String
  loc_1768C7D:   If (Ucase(var_F8) = "YES") Then
  loc_1768C8E:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(CInt(var_F8)(True))
  loc_1768C96:   End If
  loc_1768CC7:   global_416 = Proc_6_38_E68A98(CVar(Me.Fields.Item("DisplayPort")))
  loc_1768CEE:   var_E8 = Me.Fields.Item("DisplayMode")
  loc_1768CF6:   var_B8 = CVar(var_E8) 'Address
  loc_1768D05:   global_420 = Proc_6_38_E68A98(var_B8)
  loc_1768D12: End If
  loc_1768D1A: If (MemVar_1F921A8 = "Room Service") Then
  loc_1768D28:   Set var_88 = var_E8(4)
  loc_1768D2E:   Call 0.Method_Form_Load0 (0)
  loc_1768D36:   var_E8.Visible = MemVar_1F92E80
  loc_1768D4D:   Set var_88 = var_E8(5)
  loc_1768D53:   Call 0.Method_Form_Load0 (0)
  loc_1768D5B:   var_E8.Visible = 
  loc_1768D72:   Set var_88 = var_E8(6)
  loc_1768D78:   Call 0.Method_Form_Load0 (0)
  loc_1768D80:   var_E8.Visible = 
  loc_1768D97:   Set var_88 = var_E8(6)
  loc_1768D9D:   Call 0.Method_Form_Load0 (0)
  loc_1768DA5:   var_E8.Visible = 
  loc_1768DBC:   Set var_88 = var_E8(7)
  loc_1768DC2:   Call 0.Method_Form_Load0 (0)
  loc_1768DCA:   var_E8.Visible = 
  loc_1768DE1:   Set var_88 = var_E8(8)
  loc_1768DE7:   Call 0.Method_Form_Load0 (0)
  loc_1768DEF:   var_E8.Visible = 
  loc_1768DFB: End If
  loc_1768E22: unk_5B213D.Execute "Select RateInclTax,AutoSettlement from depart where code='" & global_76 & "'", var_B8, -1
  loc_1768E2D: Set var_90 = var_88
  loc_1768E51: If (var_90.RecordCount > 0) Then
  loc_1768E85:   global_176 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("RateInclTax")))
  loc_1768EA8:   var_E8 = var_90.Fields.Item("AutoSettlement")
  loc_1768EB0:   var_B8 = CVar(var_E8) 'Address
  loc_1768EBF:   global_288 = Proc_6_38_E68A98(var_B8)
  loc_1768ECC: End If
  loc_1768ED1: Set var_90 = Nothing
  loc_1768EDA: var_124 = 0
  loc_1768F0A: unk_5B213D.Execute "Select KOtYn from depart where Code='" & global_76 & "'", var_B8, -1
  loc_1768F12: var_88 = var_88.Fields
  loc_1768F1A: var_124 = var_E8.Item(var_E8)
  loc_1768F22: var_100 = var_100.Value
  loc_1768F35: global_240 = Proc_6_38_E68A98(var_F8, var_F8)
  loc_1768F58: var_124 = 0
  loc_1768F88: unk_5B213D.Execute "Select AutoSplit from depart where Code='" & global_76 & "'", var_B8, -1
  loc_1768F90: var_88 = var_88.Fields
  loc_1768F98: var_124 = var_E8.Item(var_E8)
  loc_1768FA0: var_100 = var_100.Value
  loc_1768FB3: global_284 = Proc_6_38_E68A98(var_F8, var_F8)
  loc_1768FDB: If (global_284 = "Yes") Then
  loc_1768FEF:   Call 0.Method_Form_Load0 (0)
  loc_1768FF7:   var_E8.Visible = var_E8(4)
  loc_176900E:   Set var_88 = var_E8(5)
  loc_1769014:   Call 0.Method_Form_Load0 (0)
  loc_176901C:   var_E8.Visible = 
  loc_1769033:   Set var_88 = var_E8(6)
  loc_1769039:   Call 0.Method_Form_Load0 (0)
  loc_1769041:   var_E8.Visible = 
  loc_1769058:   Set var_88 = var_E8(6)
  loc_176905E:   Call 0.Method_Form_Load0 (0)
  loc_1769066:   var_E8.Visible = 
  loc_176907D:   Set var_88 = var_E8(7)
  loc_1769083:   Call 0.Method_Form_Load0 (0)
  loc_176908B:   var_E8.Visible = 
  loc_17690A2:   Set var_88 = var_E8(8)
  loc_17690A8:   Call 0.Method_Form_Load0 (0)
  loc_17690B0:   var_E8.Visible = 
  loc_17690C5:   Set var_88 = (False)
  loc_17690CB:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_17690D3: End If
  loc_17690FA: unk_5B213D.Execute "Select ShortName,Code,CustInfo from Depart Where Code='" & global_76 & "'", var_B8, -1
  loc_1769105: Set var_8C = var_88
  loc_1769129: If (var_8C.RecordCount > 0) Then
  loc_176915D:   global_308 = CStr(var_8C.Fields.Item("ShortName").Value)
  loc_176919F:   global_312 = CStr(var_8C.Fields.Item("Code").Value)
  loc_17691E9:   If (Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CustInfo"))) = "Y") Then
  loc_17691F8:     var_88(&HFF).Visible = 
  loc_1769208:     Set var_88 = (True)
  loc_176920E:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_1769216:   End If
  loc_1769216: End If
  loc_1769232: Me.CursorLocation = 3
  loc_176925C: var_B8 = CVar("SELECT CODE ,ShortName as NAME,Name as Restaurant FROM Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' ORDER BY NAME") 'String
  loc_1769266: Me.Open var_B8, CVar(MemVar_1F92044), 3
  loc_176927A: CVarUnk
  loc_176927F: VerifyVarObj
  loc_1769285: Set var_88 = 1(New)
  loc_176928B: LateIdStAd
  loc_17692A3: Set global_128 = New 
  loc_17692B5: Me.Recordset15.CursorLocation = 3
  loc_17692DF: var_C8 = "select Order_Booking as OrderBooking from Depart where (Logsite_code='" & MemVar_1F92078 & "'or LOGSITE_CODE='HO') and Code='"
  loc_17692FA: Me.Open CVar(var_C8 & global_76 & "'"), CVar(MemVar_1F92044), 3
  loc_1769314: var_C0 = Me.RecordCount
  loc_1769322: If (var_C0 > 0) Then
  loc_176933F:   var_E8 = Me.Fields.Item("OrderBooking")
  loc_1769350:   var_BC = Proc_6_38_E68A98(CVar(var_E8), 1, -1)
  loc_176936E:   If ("select Order_Booking as OrderBooking from Depart where (Logsite_code='" & MemVar_1F92078 = "Y") Then
  loc_1769384:     Call 0.Method_Form_Load0 (&HFF, var_E8(CInt(&HB)))
  loc_176938C:     var_E8.Visible = True
  loc_17693A3:     Set var_88 = var_E8(7)
  loc_17693A9:     Call 0.Method_Form_Load0 (&HFF)
  loc_17693B1:     var_E8.Visible = 
  loc_17693CA:     Set var_88 = var_E8(CInt(&HC))
  loc_17693D0:     Call 0.Method_Form_Load0 (&HFF)
  loc_17693D8:     var_E8.Visible = 
  loc_17693EF:     Set var_88 = var_E8(8)
  loc_17693F5:     Call 0.Method_Form_Load0 (&HFF)
  loc_17693FD:     var_E8.Visible = 
  loc_1769409:   End If
  loc_1769409: End If
  loc_1769425: Me.CursorLocation = 3
  loc_1769448: var_BC = "SELECT  Distinct  CAST(P.Vno AS varchar(10)) AS SearchCode, CAST(P.Vno AS varchar(10)) AS Vno, P.CustName,P.Docid FROM   PackingOrder P INNER JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID  WHERE     (P.LogSite_Code = '" & MemVar_1F92078
  loc_1769460: var_B8 = CVar(var_BC & "') AND (P.RestCode = '" & global_76 & "') AND (PD.ContraSNo = 0) AND (PD.ContraDocID = '')") 'String
  loc_176946A: Me.Open var_B8, CVar(MemVar_1F92044), 3
  loc_1769484: CVarUnk
  loc_1769489: VerifyVarObj
  loc_176948F: Set var_88 = 1(New)
  loc_1769495: LateIdStAd
  loc_17694B7: Call 0.Method_Form_Load0 (var_C0, var_E8(CInt(&HB)))
  loc_17694BF: -1 = var_E8.Left
  loc_17694D0: Set var_100 = (CVar(var_C0))
  loc_17694D6: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003()
  loc_17694F2: Set var_100 = var_104(CInt(&HB))
  loc_17694F8: Call 0.Method_Form_Load0 (var_138)
  loc_1769500:  = var_104.Height
  loc_1769513: Set var_88 = var_E8(CInt(&HB))
  loc_1769519: Call 0.Method_Form_Load0 (var_C0)
  loc_1769521:  = var_E8.Top
  loc_176952D: var_A8 = CVar((var_C0 + var_138)) 'Single
  loc_1769536: Set var_13C = (CVar(var_C0))
  loc_176953C: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_176954E: Call Proc_258_156_114B750()
  loc_1769559: var_124 = 0
  loc_1769589: unk_5B213D.Execute "Select Name From Depart Where Code ='" & global_76 & "'", var_B8, -1
  loc_1769591: var_88 = var_88.Fields
  loc_1769599: var_124 = var_E8.Item(var_E8)
  loc_17695A1: var_100 = var_100.Value
  loc_17695B7: var_F8(CStr(var_F8)).Caption = 
  loc_17695E1: Set global_116 = New 
  loc_17695F3: Me.Recordset15.CursorLocation = 3
  loc_1769615: var_E8 = Me.Fields.Item("MultiBillGeneration")
  loc_176961D: var_B8 = var_E8.Value
  loc_1769637: If (var_B8 = "Yes") Then
  loc_1769645:   If (global_284 = "Yes") Then
  loc_176964B:     var_A8 = MemVar_1F920EC
  loc_1769653:     Proc_6_7_F25D88(var_B8)
  loc_176965E:     var_16C = 0
  loc_176967E:     var_C8 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_176968E:     unk_5B213D.Execute "Select Name From Depart Where Code ='" & global_76 & "'" & "'", var_15C, -1
  loc_1769696:     var_88 = var_88.Fields
  loc_176969E:     var_16C = var_E8.Item(var_E8)
  loc_17696A6:     var_100 = var_100.Value
  loc_17696C9:     var_BC = "Select S.DocId as SearchCode,S.DocID,S.SITE_CODE,S.LOGSITE_CODE From SplitSale1 S INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.LOGSITE_CODE=V.LOGSITE_CODE) WHERE S.LOGSITE_CODE='" & MemVar_1F92078
  loc_17696EF:     var_1AC = CVar(var_BC & "' AND S.VDate=") & var_B8 & " And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='" & var_17C & "' ORDER BY S.DOCID" 
  loc_17696FA:     Me.Open var_1AC, CVar(MemVar_1F92044), 3
  loc_1769727:   Else
  loc_1769732:     Proc_6_7_F25D88(var_B8, MemVar_1F920EC, 1)
  loc_176973D:     var_16C = 0
  loc_176975D:     var_C8 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_176976D:     unk_5B213D.Execute "Select Name From Depart Where Code ='" & global_76 & "'" & "'", var_15C, -1
  loc_1769775:     var_88 = var_88.Fields
  loc_176977D:     var_16C = var_E8.Item(var_E8)
  loc_1769785:     var_100 = var_100.Value
  loc_17697A8:     var_BC = "Select S.DocId as SearchCode,S.DocID,S.SITE_CODE,S.LOGSITE_CODE From Sale1 S INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.LOGSITE_CODE=V.LOGSITE_CODE) WHERE S.LOGSITE_CODE='" & MemVar_1F92078
  loc_17697AF:     var_F8 = CVar(var_BC & "' AND S.VDate=") 'String
  loc_17697D9:     Me.Open var_F8 & var_B8 & " And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='" & var_17C & "' ORDER BY S.DOCID", CVar(MemVar_1F92044), 3
  loc_1769803:   End If
  loc_1769806: Else
  loc_1769819:   If (PRemark = "Unsettled") Then
  loc_1769822:     var_124 = 0
  loc_1769842:     var_C8 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_1769852:     unk_5B213D.Execute "Select Name From Depart Where Code ='" & global_76 & "'" & "'", var_B8, -1
  loc_176985A:     var_88 = var_88.Fields
  loc_1769862:     var_124 = var_E8.Item(var_E8)
  loc_176986A:     var_100 = var_100.Value
  loc_176988D:     var_BC = "Select S.DocId as SearchCode,S.DocID,S.SITE_CODE,S.LOGSITE_CODE From ((Sale1 S INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.LOGSITE_CODE=V.LOGSITE_CODE)) LEFT JOIN PayCharge ON S.DocId = PayCharge.DocId) WHERE S.LOGSITE_CODE='" & MemVar_1F92078
  loc_17698A3:     var_15C = CVar(var_BC & "' AND IsNULL(PayCharge.DocId,'')='' And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='") & var_F8 & "' ORDER BY S.DOCID" 
  loc_17698AE:     Me.Open var_15C, CVar(MemVar_1F92044), 3
  loc_17698D5:   Else
  loc_17698E0:     Proc_6_7_F25D88(var_B8, MemVar_1F920EC, 1, -1, var_F8, 1)
  loc_17698EB:     var_16C = 0
  loc_176990B:     var_C8 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_176991B:     unk_5B213D.Execute "Select Name From Depart Where Code ='" & global_76 & "'" & "'", var_15C, -1
  loc_1769923:     var_88 = var_88.Fields
  loc_176992B:     var_16C = var_E8.Item(var_E8)
  loc_1769933:     var_100 = var_100.Value
  loc_1769956:     var_BC = "Select S.DocId as SearchCode,S.DocID,S.SITE_CODE,S.LOGSITE_CODE From Sale1 S INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.LOGSITE_CODE=V.LOGSITE_CODE) WHERE S.LOGSITE_CODE='" & MemVar_1F92078
  loc_176995D:     var_F8 = CVar(var_BC & "' AND S.VDate=") 'String
  loc_1769987:     Me.Open var_F8 & var_B8 & " And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='" & var_17C & "' ORDER BY S.DOCID", CVar(MemVar_1F92044), 3
  loc_17699B1:   End If
  loc_17699B1: End If
  loc_17699CD: Me.Recordset15.CursorLocation = 3
  loc_17699E9: var_A8 = "Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.Unit,IG.Name as ItemGroup,DispCode,IC.taxStru,IC.CatType,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,I.SChrgApp,I.RateIncTax From ((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode Where I.Type='Finish' And I.DispCode <>9999 Order by I.Name"
  loc_17699F5: Me.Open var_A8, CVar(MemVar_1F92044), 3
  loc_1769A03: CVarUnk
  loc_1769A08: VerifyVarObj
  loc_1769A0E: Set var_88 = 1(New)
  loc_1769A14: LateIdStAd
  loc_1769A2C: Set global_112 = New 
  loc_1769A3E: Me.Recordset15.CursorLocation = 3
  loc_1769A72: var_CC = "select MemberInfo from Depart where (Logsite_code='" & MemVar_1F92078 & "'or LOGSITE_CODE='HO') and Code='" & global_76
  loc_1769A83: Me.Open CVar(var_CC & "'"), CVar(MemVar_1F92044), 3
  loc_1769AAB: If (Me.RecordCount > 0) Then
  loc_1769AB1:   var_A8 = "MemberInfo"
  loc_1769AC0:   var_88 = Me.Fields
  loc_1769AC8:   var_E8 = var_88.Item(var_A8)
  loc_1769AD0:   var_B8 = CVar(var_E8) 'Address
  loc_1769AD9:   var_BC = Proc_6_38_E68A98(var_B8, 1, -1, var_88, -1, 1, -1)
  loc_1769AEA:   If ("select MemberInfo from Depart where (Logsite_code='" & MemVar_1F92078 = "Y") Then
  loc_1769AFA:     Set var_88 = var_E8(CInt(&HD))
  loc_1769B00:     Call 0.Method_Form_Load0 (&HFF, var_17C, -1, var_17C)
  loc_1769B08:     var_E8.Visible = True
  loc_1769B1F:     Set var_88 = var_E8(9)
  loc_1769B25:     Call 0.Method_Form_Load0 (&HFF, var_17C)
  loc_1769B2D:     var_E8.Visible = var_A8
  loc_1769B46:     Set var_88 = var_E8(CInt(&HF))
  loc_1769B4C:     Call 0.Method_Form_Load0 (&HFF)
  loc_1769B54:     var_E8.Visible = 
  loc_1769B73:     Call 0.Method_Form_Load0 (3, var_E8)
  loc_1769B7B:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_1769BAB:     unk_5B213D.Execute "SELECT * FROM MemENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_B8, -1
  loc_1769BB6:     Set var_94 = Me.CmdDiscType
  loc_1769BDA:     If (var_94.RecordCount > 0) Then
  loc_1769C0B:       global_432 = Proc_6_38_E68A98(CVar(var_94.Fields.Item("MemberVarification")))
  loc_1769C27:       var_88 = var_94.Fields
  loc_1769C37:       var_B8 = CVar(var_88.Item("MemberSaleBillDiscEditable")) 'Address
  loc_1769C46:       global_440 = Proc_6_38_E68A98(var_B8)
  loc_1769C53:     End If
  loc_1769C58:     Set var_94 = Nothing
  loc_1769C5B:   End If
  loc_1769C5B: End If
  loc_1769C84: var_D0 = "SELECT RefundCashCardAmt FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' And CompCode='" & MemVar_1F92128 & "' And UserName='"
  loc_1769C9B: unk_5B213D.Execute var_D0 & MemVar_1F920C8 & "'", var_B8, -1
  loc_1769CA6: Set var_1C0 = var_88
  loc_1769CD2: If (var_1C0.RecordCount > 0) Then
  loc_1769CE4:   var_88 = var_1C0.Fields
  loc_1769CEC:   var_E8 = var_88.Item("RefundCashCardAmt")
  loc_1769D0E:   If (Proc_6_38_E68A98(CVar(var_E8), var_88) = "Yes") Then
  loc_1769D19:     Set var_88 = var_88(True)
  loc_1769D1F:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_1769D27:   End If
  loc_1769D27: End If
  loc_1769D2C: Set var_1C0 = Nothing
  loc_1769D4B: Me.Recordset15.CursorLocation = 3
  loc_1769D6E: var_BC = "Select SubCode as Code,Name,Discount,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078
  loc_1769D83: var_B8 = CVar(var_BC & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='" & MemVar_1F92078 & "') Order By Name") 'String
  loc_1769D8D: Me.Open var_B8, CVar(MemVar_1F92044), 3
  loc_1769DA7: CVarUnk
  loc_1769DAC: VerifyVarObj
  loc_1769DB8: LateIdStAd
  loc_1769DEB: Call 0.Method_arg_50 (var_BC, "SELECT COUNT(*) FROM LASTVOU WHERE ENAME='", var_B8, -1, 1(New), var_E8)
  loc_1769E12: unk_5B213D.Execute 0 & var_BC & "' AND UNAME='" & MemVar_1F920C8 & "'", var_100, var_F8
  loc_1769E1A: var_88 = var_88.Fields
  loc_1769E22:  = var_E8.Item(-1)
  loc_1769E2A:  = var_100.Value
  loc_1769E57: If (var_F8 > 0) Then
  loc_1769E92:   Call 0.Method_arg_50 (var_BC, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_B8, -1, var_88, var_E8, 0)
  loc_1769EB9:   unk_5B213D.Execute var_100 & var_BC & "' AND UNAME='" & MemVar_1F920C8 & "'", var_F8, "SearchCode='"
  loc_1769EC1:   0 = var_88.Fields
  loc_1769EC9:   var_19C = var_E8.Item(1)
  loc_1769ED1:    = var_100.Value
  loc_1769EF0:   Me.Find CStr(var_F8 & "'"), , 
  loc_1769F18: End If
  loc_1769F2F: If (Me.RecordCount > 0) Then
  loc_1769F3B:   var_FA = Me.EOF
  loc_1769F46:   If (var_FA = &HFF) Then
  loc_1769F4F:     Me.MoveLast
  loc_1769F54:   End If
  loc_1769F54: End If
  loc_1769F5D: Call 0.Method_arg_160 (var_88)
  loc_1769F6B: Call 0.Method_arg_164 (var_88)
  loc_1769F96: Call Proc_258_148_1079CA0(Proc_5_1_100CB50("INI", Me))
  loc_1769FB9: Proc_6_23_DFBA28(Me, 7590)
  loc_1769FC8: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), 11940)
  loc_1769FDA: Set var_88 = global_116(CVar(CLng(MemVar_1F921B4)))
  loc_1769FE0: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_12()
  loc_1769FF6: (CLng(MemVar_1F921B0)).BackColor = 
  loc_176A00A: Set var_88 = var_96(var_FA)
  loc_176A010: Call 0.Method_Form_Load8 (0)
  loc_176A01B: For var_1C4 =  To var_FA:  = var_1C4 'Integer
  loc_176A032:   Set var_88 = var_E8(var_96)
  loc_176A038:   Call 0.Method_Form_Load0 (CVar(MemVar_1F921B0))
  loc_176A040:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_1D()
  loc_176A04F: Next var_1C4 'Integer
  loc_176A060: Set var_88 = Me.CmdDiscType
  loc_176A066: Call 0.Method_Form_Load8 (var_FA, var_96)
  loc_176A071: For var_1C8 =  To var_FA: 0 = var_1C8 'Integer
  loc_176A088:   Set var_88 = Me.CmdDiscType
  loc_176A08E:   Call 0.Method_Form_Load0 (var_96, var_E8)
  loc_176A096:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(MemVar_1F921B0))
  loc_176A0A5: Next var_1C8 'Integer
  loc_176A0B6: Set var_88 = var_96(var_FA)
  loc_176A0BC: Call 0.Method_Form_Load8 (0)
  loc_176A0C7: For var_1CC =  To var_FA:  = var_1CC 'Integer
  loc_176A0DE:   Set var_88 = var_E8(var_96)
  loc_176A0E4:   Call 0.Method_Form_Load0 (CVar(MemVar_1F921B0))
  loc_176A0EC:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_1D()
  loc_176A0FB: Next var_1CC 'Integer
  loc_176A10C: Set var_88 = Me.CmdCatType
  loc_176A112: Call 0.Method_Form_Load8 (var_FA, var_96)
  loc_176A11D: For var_1D0 =  To var_FA: 0 = var_1D0 'Integer
  loc_176A134:   Set var_88 = Me.CmdCatType
  loc_176A13A:   Call 0.Method_Form_Load0 (var_96, var_E8)
  loc_176A142:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F921B0))
  loc_176A151: Next var_1D0 'Integer
  loc_176A161: Set var_88 = (CVar(MemVar_1F921B0))
  loc_176A167: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D()
  loc_176A17A: Set var_88 = (CVar(MemVar_1F921B0))
  loc_176A180: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D()
  loc_176A193: Set var_88 = (CVar(MemVar_1F921B0))
  loc_176A199: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D()
  loc_176A1AF: Me.FrDiscType.BackColor = CLng(MemVar_1F921B0)
  loc_176A1C5: (CLng(MemVar_1F921B0)).BackColor = 
  loc_176A1DB: (CLng(MemVar_1F921B0)).BackColor = 
  loc_176A1EE: Set var_88 = (CVar(MemVar_1F921B0))
  loc_176A207: Set var_88 = FrDiscType.DispID_1D(CVar(MemVar_1F921B0))
  loc_176A220: Set var_88 = FrDiscType.DispID_1D(CVar(MemVar_1F921B0))
  loc_176A23C: FrDiscType.DispID_1D(CLng(MemVar_1F921B0)).BackColor = 
  loc_176A24F: Set var_88 = (CVar(MemVar_1F921B0))
  loc_176A268: Set var_88 = FrDiscType.DispID_1D(CVar(MemVar_1F921B0))
  loc_176A284: Me.FrameGrpItem.BackColor = CLng(MemVar_1F921B0)
  loc_176A29A: FrDiscType.DispID_1D(CLng(MemVar_1F921B0)).BackColor = 
  loc_176A2B0: Me.FrameQty.BackColor = CLng(MemVar_1F921B0)
  loc_176A2C6: (CLng(MemVar_1F921B0)).BackColor = 
  loc_176A2CE: Call Proc_258_136_143E164()
  loc_176A2F5: (CVar(CDbl(().Top))).Top = 
  loc_176A30E: var_F8 = ().Width
  loc_176A321: var_114 = (var_F8).Width
  loc_176A349: var_A8 = CVar((CDbl((var_114).Left) + (CDbl(var_F8) - CDbl(var_114)))) 'Single
  loc_176A358: (CVar(CDbl(().Top))).Left = 
  loc_176A393: (CVar(CDbl(().Height))).Height = 
  loc_176A3C4: (CVar(CDbl(().Top))).Top = 
  loc_176A3DD: var_F8 = ().Width
  loc_176A3F0: var_114 = (var_F8).Width
  loc_176A418: var_A8 = CVar((CDbl((var_114).Left) + (CDbl(var_F8) - CDbl(var_114)))) 'Single
  loc_176A427: (CVar(CDbl(().Top))).Left = 
  loc_176A44A: var_B8 = ().Height
  loc_176A45C: Set var_E8 = (CVar(CDbl(var_B8)))
  loc_176A462: var_E8.Height = 
  loc_176A47A: Set var_88 = Me.SSPGroup
  loc_176A480: Call 0.Method_Form_Load0 (0)
  loc_176A488: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010005(var_E8)
  loc_176A4A9: Me.FrameGrpItem.Width = ((CDbl(4) * CDbl(var_B8)) + CDbl(&H32))
  loc_176A4D7: If (Me.FrameGrpItem.Width < CDbl(6600)) Then
  loc_176A4E9:   Me.FrameGrpItem.Width = CDbl(6600)
  loc_176A4F1: End If
  loc_176A4FA: Set var_88 = Me.SSPGroup
  loc_176A500: Call 0.Method_Form_Load0 (0)
  loc_176A508: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010006(var_E8)
  loc_176A52D: Set var_100 = Me.FrameGrpItem
  loc_176A533: var_100.Height = (((CDbl((CInt(4) + 1)) * CDbl(var_B8)) + CDbl(&H32)) + CDbl(300))
  loc_176A547: var_124 = 0
  loc_176A574: unk_5B213D.Execute "Select FreeiteminKOT from enviro where LogSite_code='" & MemVar_1F92078 & "'", var_B8, -1
  loc_176A57C: var_88 = var_88.Fields
  loc_176A584: var_124 = var_E8.Item(var_E8)
  loc_176A5B4: If (Proc_6_38_E68A98(CVar(var_100)) = "Yes") Then
  loc_176A5C2:   If (global_240 = "Y") Then
  loc_176A5D4:     Set var_88 = var_E8(CInt(5))
  loc_176A5DA:     Call 0.Method_Form_Load0 (True)
  loc_176A5E2:     var_E8.Visible = var_100
  loc_176A5EE:     GoTo loc_176A5F1
  loc_176A5F1:     ' Referenced from: 176A5EE
  loc_176A5F1:   End If
  loc_176A5F1: End If
  loc_176A5FC: If (global_240 = "Y") Then
  loc_176A60E:   (False).Enabled = 
  loc_176A622:   Me.FrameGrpItem.Visible = False
  loc_176A638:   Set var_88 = var_E8(2)
  loc_176A63E:   Call 0.Method_Form_Load0 (False)
  loc_176A646:   var_E8.Visible = 
  loc_176A660:   Set var_88 = var_E8(4)
  loc_176A666:   Call 0.Method_Form_Load0 (False)
  loc_176A66E:   var_E8.Visible = 
  loc_176A67A: End If
  loc_176A68E: If (RSTouchScreenSaleBill.OpenMode = 1) Then
  loc_176A6A2:   Set var_88 = var_E8(CInt(3))
  loc_176A6A8:   Call 0.Method_Form_Load0 (global_324)
  loc_176A6B0:   var_E8.Text = 
  loc_176A6BC:   Call Form_Activate()
  loc_176A6C4: Else
  loc_176A6C4:   Call Proc_258_145_1BA10F4()
  loc_176A6C9: End If
  loc_176A6C9: Call Proc_258_133_121F3D8()
  loc_176A6CE: Exit Sub
  loc_176A6CF: ' Referenced from: 1768928
  loc_176A6CF: Proc_6_60_E62BC4()
  loc_176A6D4: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EC1A40
  'Data Table: 5B2100
  loc_EC199F: Set global_100 = Nothing
  loc_EC19B1: Set global_96 = Nothing
  loc_EC19C3: Set global_120 = Nothing
  loc_EC19CF: global_72 = 0
  loc_EC19DD: Set global_100 = Nothing
  loc_EC19EF: Set global_52 = Nothing
  loc_EC1A01: Set global_128 = Nothing
  loc_EC1A13: Set global_124 = Nothing
  loc_EC1A25: Set global_112 = Nothing
  loc_EC1A37: Set global_108 = Nothing
  loc_EC1A3E: Exit Sub
End Sub

Private Sub Form_Activate() '101D7B8
  'Data Table: 5B2100
  Dim var_C8 As Integer
  Dim var_8C As String
  Dim unk_5B213D As Connection15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Field20
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_88 As Recordset15
  loc_101D5C4: var_C8 = 0
  loc_101D5E4: var_8C = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_101D5F4: unk_5B213D.Execute var_8C & "'", var_B0, -1
  loc_101D5FC: var_B4 = var_B4.Fields
  loc_101D604: var_C8 = var_B8.Item(var_B8)
  loc_101D60C: var_CC = var_CC.Value
  loc_101D614: var_FC = var_DC & var_DC 
  loc_101D61D: var_11C = var_FC & "' Order by Description" 
  loc_101D62B: unk_5B213D.Execute CStr(var_11C), "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE V_Type='", var_140
  loc_101D636: Set var_88 = var_144
  loc_101D66E: If (var_88.RecordCount > 0) Then
  loc_101D68B:   var_B8 = var_88.Fields.Item(0)
  loc_101D6A2:   global_184 = CStr(var_B8.Value)
  loc_101D6B6: Else
  loc_101D6C9:   var_B0 = "Point of Sale Not Configured for selected Restaurant"
  loc_101D6CF:   MsgBox(var_B0, 0, var_DC, var_FC, var_11C)
  loc_101D6EC:   Me.Global.Unload Me
  loc_101D6F4:   Exit Sub
  loc_101D6F5: End If
  loc_101D6FB: var_C8 = 0
  loc_101D72B: unk_5B213D.Execute "Select Count(*) From SundryType WHERE V_Type='" & global_184 & "'", var_B0, -1
  loc_101D733: var_B4 = var_B4.Fields
  loc_101D73B: var_C8 = var_B8.Item(var_B8)
  loc_101D743: var_CC = var_CC.Value
  loc_101D76A: If (var_DC <= 0) Then
  loc_101D786:   MsgBox("Voucher wise Sundry not defined", 0, var_DC, var_FC, var_11C)
  loc_101D7A3:   Me.Global.Unload Me
  loc_101D7AB:   Exit Sub
  loc_101D7AC: End If
  loc_101D7B1: Set var_88 = Nothing
  loc_101D7B4: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E259BC
  'Data Table: 5B2100
  loc_E259A1: If (global_72 = &HFF) Then
  loc_E259B1:   Me.Global.Unload Me
  loc_E259B9: End If
  loc_E259B9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '109A878
  'Data Table: 5B2100
  Dim var_E8 As Variant
  Dim var_130 As Variant
  loc_109A5C4: On Error Goto loc_109A86F
  loc_109A606:  = (Ucase(Chr(CLng(KeyCode))) = "C") And (Shift = 2)(var_EA).Visible
  loc_109A63B: If CBool( And (var_EA = 0) And (MemVar_1F920C8 = "SA")) Then
  loc_109A64A:   (&HFF).Visible = 
  loc_109A652:   Call Proc_258_165_F806A4()
  loc_109A663:   (0).Visible = 
  loc_109A676:   Set var_E8 = var_130(CInt(1))
  loc_109A67C:   Call 0.Method_Form_KeyDown0 ()
  loc_109A684:   var_130.SetFocus
  loc_109A693: Else
  loc_109A6D2:    = (Ucase(Chr(CLng(KeyCode))) = "I") And (Shift = 2)(var_EA).Visible
  loc_109A6F5:   If CBool( And (var_EA = &HFF)) Then
  loc_109A700:     If (MemVar_1F923AC = "A") Then
  loc_109A70F:       (&HFF).Visible = 
  loc_109A717:       Call Proc_258_165_F806A4()
  loc_109A71C:     End If
  loc_109A71F:   Else
  loc_109A75E:      = (Ucase(Chr(CLng(KeyCode))) = "H") And (Shift = 2)(var_EA).Visible
  loc_109A77E:      =  And (var_EA = &HFF)(var_132).Visible
  loc_109A7A7:     If CBool( And (var_132 = &HFF)) Then
  loc_109A7B6:       (0).Visible = 
  loc_109A7C1:     Else
  loc_109A800:        = (Ucase(Chr(CLng(KeyCode))) = "H") And (Shift = 2)(var_EA).Visible
  loc_109A823:       If CBool( And (var_EA = &HFF)) Then
  loc_109A832:         (0).Visible = 
  loc_109A846:         (0).Visible = 
  loc_109A84E:       End If
  loc_109A84E:     End If
  loc_109A84E:   End If
  loc_109A84E: End If
  loc_109A866: Proc_6_88_FE81B4(Me, KeyCode)
  loc_109A86E: Exit Sub
  loc_109A86F: ' Referenced from: 109A5C4
  loc_109A86F: Proc_6_60_E62BC4(Shift)
  loc_109A874: Exit Sub
End Sub

Private Sub HeadEdit_UnknownEvent_9 'DFEB8C
  'Data Table: 5B2100
  loc_DFEB84: Call TopCtrl1_UnknownEvent_D()
  loc_DFEB89: Exit Sub
End Sub

Private Sub HeadAdd_UnknownEvent_9 'DFEAE4
  'Data Table: 5B2100
  loc_DFEADC: Call TopCtrl1_UnknownEvent_A()
  loc_DFEAE1: Exit Sub
End Sub

Private Sub HeadFind_UnknownEvent_9 'DFEF44
  'Data Table: 5B2100
  loc_DFEF3C: Call TopCtrl1_UnknownEvent_F()
  loc_DFEF41: Exit Sub
End Sub

Private Sub HeadPrint_UnknownEvent_9 'DFEFB4
  'Data Table: 5B2100
  loc_DFEFAC: Call TopCtrl1_UnknownEvent_14()
  loc_DFEFB1: Exit Sub
End Sub

Private Sub HeadSave_UnknownEvent_9 'DFF104
  'Data Table: 5B2100
  loc_DFF0FC: Call TopCtrl1_UnknownEvent_16()
  loc_DFF101: Exit Sub
End Sub

Private Sub HeadCancel_UnknownEvent_9 'DFE7D4
  'Data Table: 5B2100
  loc_DFE7CC: Call TopCtrl1_UnknownEvent_B()
  loc_DFE7D1: Exit Sub
End Sub

Private Sub CmdCashRecd_UnknownEvent_9 'EBCF60
  'Data Table: 5B2100
  loc_EBCEC5: Me.LblIndex.Caption = vbNullString
  loc_EBCEDA: Me.LblIndex.Tag = vbNullString
  loc_EBCEEE: Me.FrameQty.Visible = True
  loc_EBCF03: Me.LblVtype.Caption = "Cash Recd."
  loc_EBCF18: Me.LblVtype.Tag = vbNullString
  loc_EBCF2D: Me.TxtQty.Text = vbNullString
  loc_EBCF42: Me.TxtQty.Tag = vbNullString
  loc_EBCF56: Me.FrameGrpItem.Enabled = False
  loc_EBCF5E: Exit Sub
End Sub

Private Sub CmdTipAmt_UnknownEvent_9 'EBD118
  'Data Table: 5B2100
  loc_EBD07C: Me.FrameQty.Visible = True
  loc_EBD091: Me.LblIndex.Caption = vbNullString
  loc_EBD0A6: Me.LblIndex.Tag = vbNullString
  loc_EBD0BB: Me.LblVtype.Caption = "Tip Amount"
  loc_EBD0D0: Me.LblVtype.Tag = vbNullString
  loc_EBD0E5: Me.TxtQty.Text = vbNullString
  loc_EBD0FA: Me.TxtQty.Tag = vbNullString
  loc_EBD10E: Me.FrameGrpItem.Enabled = False
  loc_EBD116: Exit Sub
End Sub

Private Sub SSPMain_UnknownEvent_9 'F9FA20
  'Data Table: 5B2100
  Dim Me As Variant
  loc_F9F8C7: If (Me.RecordCount = 0) Then
  loc_F9F8DD:   var_A8 = "No Item Groups are present"
  loc_F9F8E3:   MsgBox(var_A8, &H40, var_C8, var_E8, var_108)
  loc_F9F8F3:   Exit Sub
  loc_F9F8F4: End If
  loc_F9F8FA: Me.MoveFirst
  loc_F9F90D: Set var_10C = Me.SSPGroup
  loc_F9F913: Call 0.Method_SSPMain_UnknownEvent_90 (0, var_110)
  loc_F9F91B: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010007(False)
  loc_F9F935: Set var_10C = Me.SSPItem
  loc_F9F93B: Call 0.Method_SSPMain_UnknownEvent_90 (0, var_110)
  loc_F9F943: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_F9F95A: If (global_384 = "Group") Then
  loc_F9F963:   global_384 = "Group"
  loc_F9F97B:   Set var_110 = Me.SSPGroup
  loc_F9F99E:   Call Proc_258_134_1306B94(Me.SSPGroup, CInt(4), global_396)
  loc_F9F9AA:   global_380 = CInt(var_A8)
  loc_F9F9BE: Else
  loc_F9F9C4:   global_384 = "Group"
  loc_F9F9FF:   Call Proc_258_134_1306B94(Me.SSPGroup, CInt(4), global_396, CInt(4), Me.SSPItem)
  loc_F9FA0B:   global_380 = CInt(var_A8)
  loc_F9FA1C: End If
  loc_F9FA1C: Exit Sub
  loc_F9FA1D: global_380 = var_A8
End Sub

Private Sub CmFgrid_UnknownEvent_9 '149ED04
  'Data Table: 5B2100
  Dim var_AC As Variant
  Dim var_8C As Variant
  Dim var_C2 As Integer
  Dim var_E4 As Variant
  Dim var_F8 As String
  Dim var_128 As Variant
  Dim var_170 As String
  Dim var_13C As Frame
  Dim CmFgrid_UnknownEvent_93 As Variant
  Dim var_9C As Variant
  Dim var_180 As TextBox
  Dim var_1FC As Variant
  Dim var_21C As Variant
  loc_149E07C: Set var_8C = ()
  loc_149E094: Set var_C0 = (CVar(CLng(FrameGrpItem.DispID_A)))
  loc_149E0AD: Set var_8C = (FrameGrpItem.DispID_A)
  loc_149E0C2: var_AC = CVar((CLng(FrameGrpItem.DispID_5) - 1)) 'Long
  loc_149E0CB: Set var_C0 = (CVar(CLng(FrameGrpItem.DispID_A)))
  loc_149E0ED: Me.LblIndex.Caption = vbNullString
  loc_149E102: Me.LblIndex.Tag = vbNullString
  loc_149E117: Me.LblVtype.Caption = vbNullString
  loc_149E12C: Me.LblVtype.Tag = vbNullString
  loc_149E141: Me.TxtQty.Text = vbNullString
  loc_149E156: Me.TxtQty.Tag = vbNullString
  loc_149E161: var_C2 = KeyCode
  loc_149E16C: If (var_C2 = CInt(0)) Then
  loc_149E173:   Set var_8C = FrameGrpItem.DispID_D(var_C2)
  loc_149E18E:   If (CLng(TxtQty.DispID_A) > 1) Then
  loc_149E195:     Set var_8C = ()
  loc_149E1AA:     var_AC = CVar((CLng(TxtQty.DispID_A) - 1)) 'Long
  loc_149E1B3:     Set var_C0 = (CVar(CLng(FrameGrpItem.DispID_A)))
  loc_149E1CC:     Set var_8C = (TxtQty.DispID_A)
  loc_149E1E1:     var_AC = CVar((CLng(TxtQty.DispID_5) - 1)) 'Long
  loc_149E1EA:     Set var_C0 = (CVar(CLng(FrameGrpItem.DispID_A)))
  loc_149E203:     Set var_8C = (TxtQty.DispID_D)
  loc_149E21B:     Set var_C0 = (CVar(CLng(TxtQty.DispID_A)))
  loc_149E230:   End If
  loc_149E233: Else
  loc_149E23B:   If (var_C2 = CInt(1)) Then
  loc_149E242:     Set var_8C = (TxtQty.DispID_8)
  loc_149E255:     Set var_C0 = (CLng(TxtQty.DispID_A))
  loc_149E279:     If ( < (CLng(TxtQty.DispID_4) - 1)) Then
  loc_149E280:       Set var_8C = ()
  loc_149E295:       var_AC = CVar((CLng(TxtQty.DispID_A) + 1)) 'Long
  loc_149E29E:       Set var_C0 = (CVar(CLng(TxtQty.DispID_A)))
  loc_149E2B7:       Set var_8C = (TxtQty.DispID_A)
  loc_149E2CC:       var_AC = CVar((CLng(TxtQty.DispID_5) - 1)) 'Long
  loc_149E2D5:       Set var_C0 = (CVar(CLng(TxtQty.DispID_A)))
  loc_149E2EE:       Set var_8C = (TxtQty.DispID_D)
  loc_149E306:       Set var_C0 = (CVar(CLng(TxtQty.DispID_A)))
  loc_149E31B:     End If
  loc_149E31E:   Else
  loc_149E326:     If (var_C2 = CInt(2)) Then
  loc_149E335:       Me.FrameQty.Visible = True
  loc_149E341:       Set var_8C = (TxtQty.DispID_8)
  loc_149E361:       Set var_C0 = CVar(CLng(FrameQty.DispID_A))(CVar(CLng(&HB)))
  loc_149E38B:       If (CStr(FrameQty.DispID_41) = vbNullString) Then
  loc_149E38E:         Exit Sub
  loc_149E38F:       End If
  loc_149E393:       Set var_8C = ()
  loc_149E3B3:       Set var_C0 = CVar(CLng(FrameQty.DispID_A))(CVar(CLng(0)))
  loc_149E3DD:       If (CStr(FrameQty.DispID_41) = vbNullString) Then
  loc_149E3E0:         Exit Sub
  loc_149E3E1:       End If
  loc_149E3EE:       Me.TxtQty.Text = vbNullString
  loc_149E407:       Me.TxtQty.Tag = CStr(2)
  loc_149E41F:       Me.LblVtype.Caption = "Qty"
  loc_149E433:       Me.FrameGrpItem.Enabled = False
  loc_149E44A:       (False).Enabled = 
  loc_149E455:     Else
  loc_149E45D:       If (var_C2 = CInt(3)) Then
  loc_149E46C:         Me.FrameQty.Visible = True
  loc_149E478:         Set var_8C = ()
  loc_149E498:         Set var_C0 = CVar(CLng(FrameQty.DispID_A))(CVar(CLng(&HB)))
  loc_149E4C2:         If (CStr(FrameQty.DispID_41) = vbNullString) Then
  loc_149E4C5:           Exit Sub
  loc_149E4C6:         End If
  loc_149E4CA:         Set var_8C = ()
  loc_149E4EA:         Set var_C0 = CVar(CLng(FrameQty.DispID_A))(CVar(CLng(0)))
  loc_149E514:         If (CStr(FrameQty.DispID_41) = vbNullString) Then
  loc_149E517:           Exit Sub
  loc_149E518:         End If
  loc_149E51C:         Set var_8C = ()
  loc_149E53C:         Set var_C0 = CVar(CLng(FrameQty.DispID_A))(CVar(CLng(&H19)))
  loc_149E575:         If (Ucase(CVar(CStr(FrameQty.DispID_41))) = "Y") Then
  loc_149E585:           Me.TxtQty.Text = vbNullString
  loc_149E59E:           Me.TxtQty.Tag = CStr(3)
  loc_149E5B6:           Me.LblVtype.Caption = "Rate"
  loc_149E5CA:           Me.FrameGrpItem.Enabled = False
  loc_149E5E1:           (False).Enabled = 
  loc_149E5E9:         End If
  loc_149E5EC:       Else
  loc_149E5F4:         If (var_C2 = CInt(4)) Then
  loc_149E60A:           var_AC = CVar(CLng(FrameGrpItem.DispID_A)) 'Long
  loc_149E612:           var_E4 = CVar(CLng(0)) 'Long
  loc_149E625:           var_F8 = CStr(FrameGrpItem.DispID_41)
  loc_149E639:           var_128 = CVar(CLng(FrameGrpItem.DispID_A)) 'Long
  loc_149E66F:           If (CVar(CLng(&HB)) And (CStr(FrameGrpItem.DispID_41) <> vbNullString)) Then
  loc_149E67E:             var_AC = CVar(CLng(FrameGrpItem.DispID_C)) 'Long
  loc_149E686:             CmFgrid_UnknownEvent_93 = ().Name
  loc_149E6BB:             For var_174 = CInt(CLng(FrameGrpItem.DispID_C)) To CInt((CLng(FrameGrpItem.DispID_4) - 1)):         var_86 = var_174 'Integer
  loc_149E6C5:               var_AC = CVar(CLng(var_86)) 'Long
  loc_149E6CD:               var_E4 = CVar(CLng(0)) 'Long
  loc_149E6D7:               var_9C = CVar(CStr(var_86)) 'String
  loc_149E6DE:               LateIdCallSt
  loc_149E6EC:             Next var_174 'Integer
  loc_149E6F1:           End If
  loc_149E6F3:           Set var_13C = Nothing 
  loc_149E6FC:           Call Proc_258_158_190485C(&H32)
  loc_149E704:         Else
  loc_149E70C:           If (var_C2 = CInt(5)) Then
  loc_149E713:             Set var_8C = ()
  loc_149E733:             Set var_C0 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&HB)))
  loc_149E750:             Set var_17C = ((CStr(FrameGrpItem.DispID_41) = vbNullString))
  loc_149E770:             Set var_180 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&H1E)))
  loc_149E7A7:             If ( Or (CStr(FrameGrpItem.DispID_41) = "Free")) Then
  loc_149E7AA:               Exit Sub
  loc_149E7AB:             End If
  loc_149E7AF:             Set var_8C = ()
  loc_149E7CF:             Set var_C0 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(0)))
  loc_149E7F9:             If (CStr(FrameGrpItem.DispID_41) = vbNullString) Then
  loc_149E7FC:               Exit Sub
  loc_149E7FD:             End If
  loc_149E80A:             Me.TxtQty.Text = vbNullString
  loc_149E823:             Me.TxtQty.Tag = CStr(5)
  loc_149E83B:             Me.LblVtype.Caption = "Free Qty"
  loc_149E84F:             Me.FrameGrpItem.Enabled = False
  loc_149E866:             (False).Enabled = 
  loc_149E871:           Else
  loc_149E879:             If (var_C2 = CInt(6)) Then
  loc_149E880:               Set var_8C = ()
  loc_149E8A0:               Set var_C0 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(0)))
  loc_149E8BD:               Set var_17C = ((CStr(FrameGrpItem.DispID_41) <> vbNullString))
  loc_149E8DD:               Set var_180 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&HB)))
  loc_149E8EE:               var_170 = CStr(FrameGrpItem.DispID_41)
  loc_149E914:               If ( And (var_170 <> vbNullString)) Then
  loc_149E91B:                 Set var_8C = ()
  loc_149E93B:                 Set var_C0 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&H1E)))
  loc_149E952:                 var_118 = Trim(CVar(CStr(FrameGrpItem.DispID_41)))
  loc_149E974:                 If (var_118 = "Free") Then
  loc_149E97B:                   Set var_8C = ()
  loc_149E9A7:                   LateIdCallSt
  loc_149E9BD:                   Set var_8C = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&H1E))(vbNullString))
  loc_149E9DD:                   Set var_C0 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&HB)))
  loc_149E9FD:                   Set var_17C = var_180(CInt(1))
  loc_149EA03:                   Call 0.Method_CmFgrid_UnknownEvent_90 (var_170)
  loc_149EA0B:                   FrameGrpItem.DispID_41 = var_180.Text
  loc_149EA14:                   Set var_184 = ()
  loc_149EA34:                   Set var_188 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(1)))
  loc_149EA60:                   Call Proc_258_162_F20808(CStr(var_D4), var_170, CStr(var_118))
  loc_149EA69:                   Set var_1DC = FrameGrpItem.DispID_41(var_198)
  loc_149EA80:                   var_21C = CVar(CLng(8)) 'Long
  loc_149EABB:                   LateIdCallSt
  loc_149EAF8:                   Set var_8C = 1(1(CVar(CStr(Format(CVar(var_198), "0.00")))))
  loc_149EB18:                   Set var_C0 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&HB)))
  loc_149EB38:                   Set var_17C = var_180(CInt(1))
  loc_149EB3E:                   Call 0.Method_CmFgrid_UnknownEvent_90 (var_170, FrameGrpItem.DispID_41)
  loc_149EB46:                   var_21C = var_180.Text
  loc_149EB4F:                   Set var_184 = (CVar(CLng(FrameGrpItem.DispID_A)))
  loc_149EB6F:                   Set var_188 = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(1)))
  loc_149EB9B:                   Call Proc_258_162_F20808(CStr(var_D4), var_170, CStr(var_118))
  loc_149EBA4:                   Set var_1DC = FrameGrpItem.DispID_41(var_198)
  loc_149EBB3:                   var_1FC = CVar(CLng(FrameGrpItem.DispID_A)) 'Long
  loc_149EBBB:                   var_21C = CVar(CLng(9)) 'Long
  loc_149EBF0:                   Set var_250 = 1(CVar(CStr(Format(CVar(var_198), "0.00"))))
  loc_149EBF6:                   LateIdCallSt
  loc_149EC32:                 Else
  loc_149EC36:                   Set var_8C = 1(var_250)
  loc_149EC62:                   LateIdCallSt
  loc_149EC78:                   Set var_8C = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(&H1E))("Free"))
  loc_149ECA4:                   LateIdCallSt
  loc_149ECBA:                   Set var_8C = CVar(CLng(FrameGrpItem.DispID_A))(CVar(CLng(8))("0.00"))
  loc_149ECC9:                   var_AC = CVar(CLng(FrameGrpItem.DispID_A)) 'Long
  loc_149ECE0:                   Set var_C0 = CVar(CLng(9))("0.00")
  loc_149ECE6:                   LateIdCallSt
  loc_149ECF8:                 End If
  loc_149ECFD:                 Call Proc_258_158_190485C(&H32, var_C0, var_AC)
  loc_149ED02:               End If
  loc_149ED02:             End If
  loc_149ED02:           End If
  loc_149ED02:         End If
  loc_149ED02:       End If
  loc_149ED02:     End If
  loc_149ED02:   End If
  loc_149ED02: End If
  loc_149ED02: Exit Sub
End Sub

Private Sub HeadDelete_UnknownEvent_9 'DFECDC
  'Data Table: 5B2100
  loc_DFECD4: Call TopCtrl1_UnknownEvent_C()
  loc_DFECD9: Exit Sub
End Sub

Private Sub SSPGroup_UnknownEvent_9 'F76C00
  'Data Table: 5B2100
  Dim Me As Variant
  Dim var_CC As Variant
  loc_F76ADF: Me.Filter = 0
  loc_F76AEA: Me.MoveFirst
  loc_F76AFC: Set var_98 = Me.SSPGroup
  loc_F76B02: Call 0.Method_SSPGroup_UnknownEvent_90 (KeyCode, var_9C)
  loc_F76B0A: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_8001000B("ItemGroup='")
  loc_F76B2E: var_CC = CVar(CStr() & "' And CatType='" & global_148 & "'") 'String
  loc_F76B38: Me.Filter = var_CC
  loc_F76B6E: Proc_6_39_E7C810(var_CC)
  loc_F76B7A: global_392 = CInt(var_CC)
  loc_F76B9B: If (Me.RecordCount > 0) Then
  loc_F76BA4:   global_384 = "Item"
  loc_F76BBC:   Set var_9C = Me.SSPGroup
  loc_F76BDF:   Call Proc_258_134_1306B94(Me.SSPItem, CInt(4), global_400, CInt(4))
  loc_F76BEB:   global_380 = CInt(CVar(Me.RecordCount))
  loc_F76BFC: End If
  loc_F76BFC: Exit Sub
End Sub

Private Sub SSPItem_UnknownEvent_9 '1476DEC
  'Data Table: 5B2100
  Dim var_AC As String
  Dim var_B0 As String
  Dim unk_5B213D As Connection15
  Dim var_CC As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Fields15
  Dim var_98 As Variant
  Dim var_134 As Variant
  Dim var_178 As TextBox
  Dim var_174 As Variant
  Dim var_DC As Variant
  Dim var_90 As Recordset15
  Dim var_154 As Variant
  loc_147620E: Set var_94 = Me.SSPItem
  loc_1476214: Call 0.Method_SSPItem_UnknownEvent_90 (KeyCode, var_98, "Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.Unit,IG.Name as ItemGroup,DispCode,IC.taxStru,IC.CatType,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,I.SChrgApp,I.RateIncTax From ((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode Where I.Code='")
  loc_147621C: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_DC)
  loc_1476224: var_AC = CStr(-1)
  loc_1476228: var_B0 = var_E0 & var_AC
  loc_1476249: unk_5B213D.Execute var_B0 & "' And I.RestCode='" & global_76 & "' And I.Type='Finish' And I.DispCode <>9999 Order by I.Name", , 
  loc_1476254: Set var_8C = var_E0
  loc_1476278: Set var_E4 = ()
  loc_147627E: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4()
  loc_147628D: var_CC = CVar((CLng() - 1)) 'Long
  loc_147629D: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(CVar(CLng(0)))
  loc_14762AE: var_124 = CVar(CStr((CLng(var_CC) - 1))) 'String
  loc_14762B5: LateIdCallSt
  loc_14762C9: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_14762D8: var_F4 = CVar((CLng(var_124) - 1)) 'Long
  loc_14762E0: var_114 = CVar(CLng(4)) 'Long
  loc_1476317: LateIdCallSt
  loc_1476332: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1476341: var_F4 = CVar((CLng(CVar(CStr(var_8C.Fields.Item("Name").Value))) - 1)) 'Long
  loc_1476349: var_114 = CVar(CLng(&HB)) 'Long
  loc_1476380: LateIdCallSt
  loc_147639B: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_14763AA: var_F4 = CVar((CLng(CVar(CStr(var_8C.Fields.Item("Code").Value))) - 1)) 'Long
  loc_14763B2: var_114 = CVar(CLng(1)) 'Long
  loc_14763E9: LateIdCallSt
  loc_1476404: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1476413: var_F4 = CVar((CLng(CVar(CStr(var_8C.Fields.Item("OutletCode").Value))) - 1)) 'Long
  loc_147641B: var_114 = CVar(CLng(3)) 'Long
  loc_1476452: LateIdCallSt
  loc_147646D: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_147647C: var_F4 = CVar((CLng(CVar(CStr(var_8C.Fields.Item("DispCode").Value))) - 1)) 'Long
  loc_1476484: var_114 = CVar(CLng(6)) 'Long
  loc_14764BB: LateIdCallSt
  loc_14764D6: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_14764E5: var_104 = CVar((CLng(CVar(CStr(var_8C.Fields.Item("Unit").Value))) - 1)) 'Long
  loc_1476525: LateIdCallSt
  loc_147656F: Set var_E0 = var_178(CInt(1))
  loc_1476575: Call 0.Method_SSPItem_UnknownEvent_90 (var_B0, var_E4, CVar(CStr(Format("1", "0.000"))), 1, 1, CVar(CLng(7)))
  loc_147657D: var_104 = var_178.Text
  loc_1476588: var_F4 = "OutletCode"
  loc_14765C3: Call Proc_258_162_F20808(CStr(var_8C.Fields.Item("Code").Value), var_B0, CStr(var_8C.Fields.Item(var_F4).Value), var_188, var_114)
  loc_14765CB: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_F4)
  loc_14765DA: var_134 = CVar((CLng(var_114) - 1)) 'Long
  loc_14765E2: var_174 = CVar(CLng(8)) 'Long
  loc_1476616: LateIdCallSt
  loc_1476661: var_98 = var_8C.Fields.Item("Code")
  loc_147667C: Set var_E0 = var_178(CInt(1))
  loc_1476682: Call 0.Method_SSPItem_UnknownEvent_90 (var_B0, var_E4, CVar(CStr(Format(CVar(var_188), "0.00"))), 1, 1)
  loc_147668A: var_174 = var_178.Text
  loc_1476695: var_F4 = "OutletCode"
  loc_14766D0: Call Proc_258_162_F20808(CStr(var_98.Value), var_B0, CStr(var_8C.Fields.Item(var_F4).Value), var_188)
  loc_14766D8: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(CVar(CLng(7)))
  loc_14766E7: var_134 = CVar((CLng(var_F4) - 1)) 'Long
  loc_14766EF: var_174 = CVar(CLng(9)) 'Long
  loc_1476723: LateIdCallSt
  loc_1476757: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1476766: var_F4 = CVar((CLng(CVar(CStr(Format(CVar(var_188), "0.00")))) - 1)) 'Long
  loc_147678A: LateIdCallSt
  loc_147679C: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_14767AB: var_F4 = CVar((CLng(CVar(Proc_6_38_E68A98(global_188, CVar(CLng(&H15)), var_F4, 1))) - 1)) 'Long
  loc_14767CF: LateIdCallSt
  loc_14767E1: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_14767F0: var_CC = CVar((CLng(CVar(Proc_6_38_E68A98(global_192, CVar(CLng(&H16)), var_F4, 1))) - 1)) 'Long
  loc_147680B: Set var_94 = var_98(CInt(3))
  loc_1476811: Call 0.Method_SSPItem_UnknownEvent_90 (var_AC, CVar(CLng(&H17)), global_192)
  loc_1476819: var_174 = var_98.Tag
  loc_1476821: var_DC = CVar(var_AC) 'String
  loc_1476828: LateIdCallSt
  loc_1476841: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1476850: var_F4 = CVar((CLng(var_DC) - 1)) 'Long
  loc_147688C: LateIdCallSt
  loc_14768A3: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_14768B2: var_F4 = CVar((CLng(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("DiscApp")), CVar(CLng(&H13)), var_F4))) - 1)) 'Long
  loc_14768EE: LateIdCallSt
  loc_1476905: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1476914: var_F4 = CVar((CLng(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RoundOff")), CVar(CLng(&H14)), var_F4))) - 1)) 'Long
  loc_1476950: LateIdCallSt
  loc_1476967: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1476976: var_F4 = CVar((CLng(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("TaxStru")), CVar(CLng(&H18)), var_F4))) - 1)) 'Long
  loc_14769B2: LateIdCallSt
  loc_14769C9: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_14769D8: var_F4 = CVar((CLng(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Kitchen")), CVar(CLng(&H1A)), var_F4))) - 1)) 'Long
  loc_1476A14: LateIdCallSt
  loc_1476A2B: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1476A3A: var_F4 = CVar((CLng(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), var_F4))) - 1)) 'Long
  loc_1476A76: LateIdCallSt
  loc_1476A8D: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1476A9C: var_F4 = CVar((CLng(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RateIncTax")), CVar(CLng(&H1C)), var_F4))) - 1)) 'Long
  loc_1476AD8: LateIdCallSt
  loc_1476AEF: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1476AFE: var_F4 = CVar((CLng(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RateEdit")), CVar(CLng(&H19)), var_F4))) - 1)) 'Long
  loc_1476B06: var_114 = CVar(CLng(&H1F)) 'Long
  loc_1476B3A: LateIdCallSt
  loc_1476B51: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1476B60: var_CC = CVar((CLng(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CatType")), var_114, var_F4))) - 1)) 'Long
  loc_1476B6D: var_134 = vbNullString
  loc_1476B76: LateIdCallSt
  loc_1476B94: var_CC = "TaxStru"
  loc_1476BB9: var_AC = Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_CC)), "Select * from taxStru where code='", var_DC, -1, var_E0, var_E4)
  loc_1476BCD: unk_5B213D.Execute var_134 & var_AC & "'", CVar(CLng(&H1E)), var_CC
  loc_1476BD8: Set var_90 = var_E0
  loc_1476C06: If (var_90.RecordCount > 0) Then
  loc_1476C0C:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_134)
  loc_1476C1B:   var_F4 = CVar((CLng(var_114) - 1)) 'Long
  loc_1476C23:   var_114 = CVar(CLng(&H10)) 'Long
  loc_1476C4E:   Proc_6_39_E7C810(var_DC, CVar(var_90.Fields.Item("Rate")))
  loc_1476C57:   var_154 = CVar(CStr(var_DC)) 'String
  loc_1476C5E:   LateIdCallSt
  loc_1476C74: End If
  loc_1476C77: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E4)
  loc_1476C86: var_CC = CVar((CLng(var_154) - 1)) 'Long
  loc_1476C98: LateIdCallSt
  loc_1476CA7: Set var_94 = global_68(var_E4)
  loc_1476CAD: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4("Rate")
  loc_1476CBC: var_CC = CVar((CLng(var_114) - 1)) 'Long
  loc_1476CC5: Set var_98 = var_F4("Rate")
  loc_1476CCB: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_A()
  loc_1476CDE: Set var_94 = ()
  loc_1476CE4: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_A()
  loc_1476CF6: Set var_98 = (CVar(CLng()))
  loc_1476CFC: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8()
  loc_1476D10: Call Proc_258_158_190485C(&H32)
  loc_1476D18: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4()
  loc_1476D27: var_CC = CVar((CLng() + 1)) 'Long
  loc_1476D2F: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(CVar(CLng()))
  loc_1476D3A: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4()
  loc_1476D49: var_CC = CVar((CLng() - 1)) 'Long
  loc_1476D5B: LateIdCallSt
  loc_1476D71: Set var_8C = Nothing
  loc_1476D79: Set var_90 = Nothing
  loc_1476D80: Set var_94 = global_68(Nothing)
  loc_1476D86: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(CVar(CLng()))
  loc_1476D95: var_CC = CVar((CLng() - 2)) 'Long
  loc_1476D9E: Set var_98 = (CVar(CLng()))
  loc_1476DA4: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_A()
  loc_1476DB7: Set var_94 = ()
  loc_1476DBD: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_5()
  loc_1476DCC: var_CC = CVar((CLng() - 1)) 'Long
  loc_1476DD5: Set var_98 = (CVar(CLng()))
  loc_1476DDB: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_D()
  loc_1476DEA: Exit Sub
End Sub

Private Sub CmdCatType_UnknownEvent_9 '101E190
  'Data Table: 5B2100
  Dim Me As Variant
  Dim var_A8 As Variant
  loc_101DF78: Set var_8C = Me.CmdCatType
  loc_101DF7E: Call 0.Method_CmdCatType_UnknownEvent_98 (var_8E, var_86)
  loc_101DF89: For var_92 =  To var_8E: 0 = var_92 'Integer
  loc_101DF99:   Set var_8C = Me.CmdCatType
  loc_101DF9F:   Call 0.Method_CmdCatType_UnknownEvent_90 (var_86)
  loc_101DFA7:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_69(var_98)
  loc_101DFBC:   If (CInt() = 1) Then
  loc_101DFC9:     Set var_8C = Me.CmdCatType
  loc_101DFCF:     Call 0.Method_CmdCatType_UnknownEvent_90 (KeyCode)
  loc_101DFD7:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(var_98)
  loc_101DFE5:     global_148 = CStr()
  loc_101DFF6:   End If
  loc_101DFF9: Next var_92 'Integer
  loc_101E00D: Me.Filter = 0
  loc_101E018: Me.MoveFirst
  loc_101E02B: Set var_8C = Me.SSPGroup
  loc_101E031: Call 0.Method_CmdCatType_UnknownEvent_90 (0, var_98)
  loc_101E039: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010007(False)
  loc_101E053: Set var_8C = Me.SSPItem
  loc_101E059: Call 0.Method_CmdCatType_UnknownEvent_90 (0, var_98)
  loc_101E061: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_101E088: Me.Filter = CVar("CatType='" & global_148 & "'")
  loc_101E0A4: var_A8 = CVar(Me.RecordCount) 'Long
  loc_101E0AB: Proc_6_39_E7C810(var_E0)
  loc_101E0B7: global_392 = CInt(var_E0)
  loc_101E0CC: If (global_384 = "Group") Then
  loc_101E0D5:   global_384 = "Group"
  loc_101E0ED:   Set var_98 = Me.SSPGroup
  loc_101E110:   Call Proc_258_134_1306B94(Me.SSPGroup, CInt(4), global_396, CInt(4))
  loc_101E11C:   global_380 = CInt(var_A8)
  loc_101E130: Else
  loc_101E136:   global_384 = "Group"
  loc_101E171:   Call Proc_258_134_1306B94(Me.SSPGroup, CInt(4), global_396, CInt(4), Me.SSPItem, var_A8)
  loc_101E17D:   global_380 = CInt(var_A8)
  loc_101E18E: End If
  loc_101E18E: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F5A500
  'Data Table: 5B2100
  Dim Me As Recordset15
  Dim var_A8 As Fields15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5A3E0: On Error Goto loc_F5A4FA
  loc_F5A3EC: Set var_A8 = (False)
  loc_F5A3F2: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_F5A411: If (Me.RecordCount > 0) Then
  loc_F5A450:   Set var_B4 = var_B8(CInt(3))
  loc_F5A456:   Call 0.Method_DGTable_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_F5A45E:   var_B8.Text = 
  loc_F5A491:   var_B0 = Me.Fields.Item("Code")
  loc_F5A4B0:   Set var_B4 = var_B8(CInt(3))
  loc_F5A4B6:   Call 0.Method_DGTable_UnknownEvent_90 (CStr(var_B0.Value))
  loc_F5A4BE:   var_B8.Tag = 
  loc_F5A4D4: End If
  loc_F5A4DF: Set var_A8 = var_B0(CInt(3))
  loc_F5A4E5: Call 0.Method_DGTable_UnknownEvent_90 ()
  loc_F5A4ED: var_B0.SetFocus
  loc_F5A4F9: Exit Sub
  loc_F5A4FA: ' Referenced from: F5A3E0
  loc_F5A4FA: Proc_6_60_E62BC4()
  loc_F5A4FF: Exit Sub
End Sub

Private Sub Command3_Click() 'F062F8
  'Data Table: 5B2100
  Dim var_F0 As TextBox
  Dim var_EC As TextBox
  loc_F0622E: Set var_A8 = ("*.mdb")
  loc_F06234: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_3()
  loc_F06240: Set var_A8 = ()
  loc_F06246: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_F06255: Set var_A8 = ()
  loc_F0625B: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_1()
  loc_F06285: If CBool(Trim(CVar(CStr())) <> vbNullString) Then
  loc_F0628C:   Set var_A8 = ()
  loc_F06292:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_1()
  loc_F062A8:   Set var_EC = var_F0(CInt(1))
  loc_F062AE:   Call 0.Method_Command3_Click0 (CStr())
  loc_F062B6:   var_F0.Text = 
  loc_F062CD: Else
  loc_F062DB:   Set var_A8 = var_EC(CInt(1))
  loc_F062E1:   Call 0.Method_Command3_Click0 (vbNullString)
  loc_F062E9:   var_EC.Text = 
  loc_F062F5: End If
  loc_F062F5: Exit Sub
End Sub

Public Sub CmdQty_UnknownEvent_9(Index As Integer) '1664804
  'Data Table: 5B2100
  Dim var_88 As Integer
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_C4 As Variant
  Dim var_CC As String
  Dim var_D0 As String
  Dim var_D4 As Variant
  Dim var_BC As Variant
  Dim var_C0 As Variant
  Dim var_F4 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_13C As Variant
  Dim var_C8 As String
  Dim var_184 As Double
  Dim var_15C As Variant
  Dim var_1E4 As Double
  Dim var_17C As Variant
  Dim var_1E8 As Variant
  Dim var_1F0 As Variant
  Dim var_204 As Double
  Dim var_1F8 As TextBox
  Dim var_1EC As Label
  loc_1663113: var_88 = Index
  loc_166311C: If Not (var_88 = 0) Then
  loc_1663125:   If Not (var_88 = 1) Then
  loc_166312E:     If Not (var_88 = 2) Then
  loc_1663137:       If Not (var_88 = 3) Then
  loc_1663140:         If Not (var_88 = 4) Then
  loc_1663149:           If Not (var_88 = 5) Then
  loc_1663152:             If Not (var_88 = 6) Then
  loc_166315B:               If Not (var_88 = 7) Then
  loc_1663164:                 If Not (var_88 = 8) Then
  loc_166316D:                   If (var_88 = 9) Then
  loc_1663170:                   End If
  loc_1663170:                 End If
  loc_1663170:               End If
  loc_1663170:             End If
  loc_1663170:           End If
  loc_1663170:         End If
  loc_1663170:       End If
  loc_1663170:     End If
  loc_1663170:   End If
  loc_1663194:   If CBool(InStr(1, CVar(Me.TxtQty), ".", 0)) Then
  loc_16631B6:     Set var_BC = Me.CmdQty
  loc_16631BC:     Call 0.Method_CmdQty_UnknownEvent_90 (Index, var_C0)
  loc_16631C4:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_16631DD:     Me.TxtQty.Text = CStr(var_88)
  loc_16631FC:   Else
  loc_166320B:     Me.TxtQty.MaxLength = 5
  loc_1663232:     Set var_BC = Me.CmdQty
  loc_1663238:     Call 0.Method_CmdQty_UnknownEvent_90 (Index, var_C0)
  loc_1663240:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_1663259:     Me.TxtQty.Text = CStr()
  loc_1663275:   End If
  loc_1663278: Else
  loc_166327E:   If (var_88 = &HA) Then
  loc_16632AB:     If (InStr(1, CVar(Me.TxtQty), ".", 0) = 0) Then
  loc_16632CD:       Set var_C0 = Me.TxtQty
  loc_16632D3:       var_C0.MaxLength = (Me.TxtQty.MaxLength + 1)
  loc_16632FE:       Set var_BC = Me.CmdQty
  loc_1663304:       Call 0.Method_CmdQty_UnknownEvent_90 (Index, var_C0)
  loc_166330C:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_1663325:       Me.TxtQty.Text = CStr()
  loc_1663380:       var_128 = (Len(Left(CVar(Me.TxtQty), CLng(InStr(1, CVar(Me.TxtQty), ".", 0)))) + 3)
  loc_1663390:       Me.TxtQty.MaxLength = CLng(var_128)
  loc_16633A9:     End If
  loc_16633AC:   Else
  loc_16633B4:     If (var_88 = CInt(&HB)) Then
  loc_16633C4:       Me.TxtQty.Text = vbNullString
  loc_16633CF:     Else
  loc_16633D5:       If (var_88 = &HC) Then
  loc_16633E4:         Me.FrameQty.Visible = False
  loc_16633EF:       Else
  loc_16633F7:         If (var_88 = CInt(&HD)) Then
  loc_1663436:           Set var_C4 = Me.LblIndex
  loc_1663461:           If (((Me.LblVtype.Caption = "Qty") Or (Me.LblVtype.Caption = "Rate")) And (CDbl(Val(var_C4.Caption)) = CDbl(0))) Then
  loc_1663468:             Set var_12C = ()
  loc_1663477:             var_98 = CVar(CLng(LblIndex.DispID_C)) 'Long
  loc_166347F:             var_13C = CVar(CLng(0)) 'Long
  loc_16634A4:             If (CStr(LblIndex.DispID_41) = vbNullString) Then
  loc_16634A7:               Exit Sub
  loc_16634A8:             End If
  loc_16634CD:             If (CDbl(Val(Me.TxtQty.Tag)) = CDbl(2)) Then
  loc_16634F0:               If (Me.TxtQty.Text = vbNullString) Then
  loc_1663500:                 Me.TxtQty.Text = "1"
  loc_1663508:               End If
  loc_1663531:               var_13C = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_1663539:               var_15C = CVar(CLng(7)) 'Long
  loc_1663566:               var_118 = CVar(CStr(Format(CVar(Val(Me.TxtQty.Text)), "0.000"))) 'String
  loc_166356D:               LateIdCallSt
  loc_1663588:             End If
  loc_16635AD:             If (CDbl(Val(Me.TxtQty.Tag)) = CDbl(3)) Then
  loc_16635CA:               var_184 = Val(Me.TxtQty.Text)
  loc_16635D9:               var_13C = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_16635E1:               var_15C = CVar(CLng(8)) 'Long
  loc_166360E:               var_118 = CVar(CStr(Format(CVar(var_184), "0.00"))) 'String
  loc_1663615:               LateIdCallSt
  loc_1663630:             End If
  loc_1663635:             Call Proc_258_158_190485C(&H32, var_12C, var_118, 1, 1, var_15C, var_13C, var_184)
  loc_166363C:             Set var_12C = Nothing 
  loc_1663643:           Else
  loc_1663663:             If (Me.LblVtype.Caption = "Free Qty") Then
  loc_166366A:               Set var_18C = var_118(var_12C)
  loc_1663679:               var_98 = CVar(CLng(LblVtype.DispID_C)) 'Long
  loc_1663681:               var_13C = CVar(CLng(0)) 'Long
  loc_16636A6:               If (CStr(LblVtype.DispID_41) = vbNullString) Then
  loc_16636A9:                 Exit Sub
  loc_16636AA:               End If
  loc_16636CF:               If (CDbl(Val(Me.TxtQty.Tag)) = CDbl(5)) Then
  loc_16636DE:                 var_98 = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_16636E6:                 var_13C = CVar(CLng(7)) 'Long
  loc_1663731:                 var_D0 = Me.TxtQty.Text
  loc_166375B:                 If ((CDbl(Val(Me.TxtQty.Text)) > CDbl(Val(CStr(TxtQty.DispID_41)))) Or (CDbl(Val(var_D0)) = CDbl(0))) Then
  loc_166375E:                   Exit Sub
  loc_1663762:                 Else
  loc_166376E:                   var_98 = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_1663776:                   var_13C = CVar(CLng(7)) 'Long
  loc_16637C5:                   If (CDbl(Val(Me.TxtQty.Text)) = CDbl(Val(CStr(TxtQty.DispID_41)))) Then
  loc_16637D4:                     var_98 = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_16637DC:                     var_13C = CVar(CLng(8)) 'Long
  loc_16637E1:                     var_15C = "0.00"
  loc_16637EA:                     LateIdCallSt
  loc_1663801:                     var_98 = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_1663809:                     var_13C = CVar(CLng(9)) 'Long
  loc_166380E:                     var_15C = "0.00"
  loc_1663817:                     LateIdCallSt
  loc_166382E:                     var_98 = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_1663836:                     var_13C = CVar(CLng(&H1E)) 'Long
  loc_166383B:                     var_15C = "Free"
  loc_1663844:                     LateIdCallSt
  loc_1663852:                   Else
  loc_166385E:                     var_98 = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_1663866:                     var_13C = CVar(CLng(7)) 'Long
  loc_1663881:                     var_184 = Val(CStr(TxtQty.DispID_41))
  loc_16638AD:                     var_17C = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_16638D6:                     var_F4 = CVar((var_184 - Val(Me.TxtQty.Text))) 'Double
  loc_16638ED:                     LateIdCallSt
  loc_166392A:                     var_1E4 = Val(Me.TxtQty.Text)
  loc_1663944:                     Call Proc_258_141_12F77F0(var_1E4, CInt(CLng(TxtQty.DispID_C)), var_1E4, var_18C, CVar(CStr(Format(Format(CVar(var_184), "0.00"), "0.00"))), 1, 1, CVar(CLng(7)))
  loc_1663952:                   End If
  loc_1663952:                 End If
  loc_1663952:               End If
  loc_1663957:               Call Proc_258_158_190485C(&H32, var_17C, var_1E4, var_184, var_13C)
  loc_166395E:               Set var_18C = Nothing 
  loc_1663965:             Else
  loc_16639AD:               If ((Me.LblVtype.Caption = "Cash Recd.") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_16639BD:                 var_C8 = Me.TxtQty.Text
  loc_16639CA:                 var_184 = Val(var_C8)
  loc_16639F4:                 var_CC = CStr(Format(CVar(var_184), "0.00"))
  loc_1663A03:                 Set var_C0 = var_C4(CInt(6))
  loc_1663A09:                 Call 0.Method_CmdQty_UnknownEvent_90 (var_CC, 1, 1, var_184)
  loc_1663A11:                 var_C4.Text = var_98
  loc_1663A3D:                 Set var_BC = var_C0(CInt(6))
  loc_1663A43:                 Call 0.Method_CmdQty_UnknownEvent_90 (var_C8, var_18C)
  loc_1663A4B:                 var_15C = var_C0.Text
  loc_1663A58:                 var_184 = Val(var_C8)
  loc_1663A62:                 Set var_C4 = var_184(var_186)
  loc_1663A68:                 Call 0.Method_CmdQty_UnknownEvent_98 (var_13C)
  loc_1663A7A:                 Set var_D4 = var_1E8(var_186)
  loc_1663A80:                 Call 0.Method_CmdQty_UnknownEvent_90 (var_CC)
  loc_1663A88:                  = var_1E8.Text
  loc_1663A95:                 var_1E4 = Val(var_CC)
  loc_1663AA6:                 Set var_1EC = var_1F0(CInt(7))
  loc_1663AAC:                 Call 0.Method_CmdQty_UnknownEvent_90 (var_D0)
  loc_1663AE4:                 var_A8 = CVar(((var_184 - var_1F0.Text) - Val(var_D0))) 'Double
  loc_1663B02:                 Set var_1F4 = var_1F8(CInt(8))
  loc_1663B08:                 Call 0.Method_CmdQty_UnknownEvent_90 (CStr(Format(CVar(var_184), "0.00")), 1)
  loc_1663B10:                 var_1F8.Text = 1
  loc_1663B41:               Else
  loc_1663B89:                 If ((Me.LblVtype.Caption = "Tip Amount") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_1663B99:                   var_C8 = Me.TxtQty.Text
  loc_1663BA6:                   var_184 = Val(var_C8)
  loc_1663BD0:                   var_CC = CStr(Format(CVar(var_184), "0.00"))
  loc_1663BDF:                   Set var_C0 = var_C4(CInt(7))
  loc_1663BE5:                   Call 0.Method_CmdQty_UnknownEvent_90 (var_CC, 1, 1)
  loc_1663BED:                   var_C4.Text = var_184
  loc_1663C19:                   Set var_BC = var_C0(CInt(6))
  loc_1663C1F:                   Call 0.Method_CmdQty_UnknownEvent_90 (var_C8)
  loc_1663C27:                   var_204 = var_C0.Text
  loc_1663C34:                   var_184 = Val(var_C8)
  loc_1663C3E:                   Set var_C4 = var_184(var_186)
  loc_1663C44:                   Call 0.Method_CmdQty_UnknownEvent_98 ()
  loc_1663C56:                   Set var_D4 = var_1E8(var_186)
  loc_1663C5C:                   Call 0.Method_CmdQty_UnknownEvent_90 (var_CC)
  loc_1663C64:                    = var_1E8.Text
  loc_1663C71:                   var_1E4 = Val(var_CC)
  loc_1663C82:                   Set var_1EC = var_1F0(CInt(7))
  loc_1663C88:                   Call 0.Method_CmdQty_UnknownEvent_90 (var_D0)
  loc_1663CC0:                   var_A8 = CVar(((var_184 - var_1F0.Text) - Val(var_D0))) 'Double
  loc_1663CDE:                   Set var_1F4 = var_1F8(CInt(8))
  loc_1663CE4:                   Call 0.Method_CmdQty_UnknownEvent_90 (CStr(Format(CVar(var_184), "0.00")), 1)
  loc_1663CEC:                   var_1F8.Text = 1
  loc_1663D1D:                 Else
  loc_1663D65:                   If ((Me.LblVtype.Caption = "Bill Discount") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_1663D71:                     Set var_BC = 1(var_86)
  loc_1663D8D:                     For var_208 =  To CInt((CLng(LblIndex.DispID_4) - 1)):                 var_204 = var_208 'Integer
  loc_1663D97:                       var_98 = CVar(CLng(var_86)) 'Long
  loc_1663DAE:                       Set var_BC = CVar(CLng(&HE))("0.00")
  loc_1663DB4:                       LateIdCallSt
  loc_1663DD4:                       Set var_BC = CVar(CLng(var_86))(CVar(CLng(&H13)))
  loc_1663DF6:                       If (CStr(LblIndex.DispID_41) = "Y") Then
  loc_1663DFD:                         var_98 = CVar(CLng(var_86)) 'Long
  loc_1663E2E:                         Set var_C0 = CVar(CLng(&HE))(CVar(CStr(Val(Me.TxtQty.Text))))
  loc_1663E34:                         LateIdCallSt
  loc_1663E49:                       End If
  loc_1663E4C:                     Next var_208 'Integer
  loc_1663E56:                     Call Proc_258_158_190485C(&H32)
  loc_1663E5E:                   Else
  loc_1663EB5:                     Set var_D4 = Me.LblVtype
  loc_1663ED0:                     Set var_1E8 = Me.LblVtype
  loc_1663F06:                     Set var_1F0 = Me.LblIndex
  loc_1663F41:                     If (((((((Me.LblVtype.Caption = "Beverage") Or (Me.LblVtype.Caption = "Confectionary")) Or (Me.LblVtype.Caption = "Food")) Or (var_D4.Caption = "Liquor")) Or (var_1E8.Caption = "Tobacco")) Or (Me.LblVtype.Caption = "Miscellaneous")) And (CDbl(Val(var_1F0.Caption)) = CDbl(0))) Then
  loc_1663F4D:                       Set var_BC = 1(var_86)
  loc_1663F69:                       For var_218 =  To CInt((CLng(LblIndex.DispID_4) - 1)):                    = var_218 'Integer
  loc_1663F84:                         Set var_BC = CVar(CLng(var_86))(CVar(CLng(&H13)))
  loc_1663FB2:                         Set var_C0 = CVar(CLng(var_86))(CVar(CLng(&H1F)))
  loc_1663FF7:                         If ((CStr(LblIndex.DispID_41) = "Y") And (CStr(LblIndex.DispID_41) = Me.LblVtype.Caption)) Then
  loc_1663FFE:                           var_98 = CVar(CLng(var_86)) 'Long
  loc_166402F:                           Set var_C0 = CVar(CLng(&HE))(CVar(CStr(Val(Me.TxtQty.Text))))
  loc_1664035:                           LateIdCallSt
  loc_166404A:                         End If
  loc_166404D:                       Next var_218 'Integer
  loc_1664057:                       Call Proc_258_158_190485C(&H32)
  loc_166405F:                     Else
  loc_16640A7:                       If ((Me.LblVtype.Caption = "Item Discount") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_16640AE:                         Set var_BC = ()
  loc_16640CE:                         Set var_C0 = CVar(CLng(LblIndex.DispID_C))(CVar(CLng(&H13)))
  loc_16640F8:                         If (CStr(LblIndex.DispID_41) = "Y") Then
  loc_16640FF:                           Set var_C0 = ()
  loc_166410E:                           var_98 = CVar(CLng(LblIndex.DispID_C)) 'Long
  loc_166413F:                           Set var_C4 = CVar(CLng(&HE))(CVar(CStr(Val(Me.TxtQty.Text))))
  loc_1664145:                           LateIdCallSt
  loc_1664160:                         End If
  loc_1664165:                         Call Proc_258_158_190485C(&H32, var_C4)
  loc_166416D:                       Else
  loc_1664192:                         If (CDbl(Val(Me.LblIndex.Caption)) <> CDbl(0)) Then
  loc_16641B5:                           If (Me.TxtQty.Tag = "P") Then
  loc_16641EF:                             var_1E4 = Val(Me.LblVtype.Tag)
  loc_1664228:                             Set var_C4 = var_D4(CInt(var_1E4))
  loc_166422E:                             Call 0.Method_CmdQty_UnknownEvent_90 (CStr(Format(CVar(Val(Me.TxtQty.Text)), "0.00")), 1, 1)
  loc_1664236:                             var_D4.Text = var_1E4
  loc_166425B:                           Else
  loc_1664275:                             var_184 = Val(Me.TxtQty.Text)
  loc_166427F:                             Set var_C0 = Me.LblVtype
  loc_1664285:                             var_CC = var_C0.Tag
  loc_1664292:                             var_1E4 = Val(var_CC)
  loc_16642BC:                             var_D0 = CStr(Format(CVar(var_184), "0.00"))
  loc_16642CB:                             Set var_C4 = var_D4(CInt(var_1E4))
  loc_16642D1:                             Call 0.Method_CmdQty_UnknownEvent_90 (var_D0, 1, 1, var_1E4)
  loc_16642D9:                             var_D4.Text = var_184
  loc_16642FB:                           End If
  loc_1664308:                           var_C8 = Me.LblVtype.Tag
  loc_1664319:                           Call Proc_258_158_190485C(CInt(Val(var_C8)), var_184)
  loc_1664332:                           Set var_BC = var_C0(CInt(6))
  loc_1664338:                           Call 0.Method_CmdQty_UnknownEvent_90 (var_C8)
  loc_1664340:                           var_98 = var_C0.Text
  loc_1664360:                           Set var_C4 = var_D4(CInt(7))
  loc_1664366:                           Call 0.Method_CmdQty_UnknownEvent_90 (var_CC)
  loc_166436E:                           (CDbl(Val(var_C8)) <> CDbl(0)) = var_D4.Text
  loc_1664393:                           If ( Or (CDbl(Val(var_CC)) <> CDbl(0))) Then
  loc_16643A4:                             Set var_BC = var_C0(CInt(6))
  loc_16643AA:                             Call 0.Method_CmdQty_UnknownEvent_90 (var_C8)
  loc_16643B2:                              = var_C0.Text
  loc_16643BF:                             var_184 = Val(var_C8)
  loc_16643C9:                             Set var_C4 = var_184(var_186)
  loc_16643CF:                             Call 0.Method_CmdQty_UnknownEvent_98 ()
  loc_16643E1:                             Set var_D4 = var_1E8(var_186)
  loc_16643E7:                             Call 0.Method_CmdQty_UnknownEvent_90 (var_CC)
  loc_16643EF:                              = var_1E8.Text
  loc_16643FC:                             var_1E4 = Val(var_CC)
  loc_166440D:                             Set var_1EC = var_1F0(CInt(7))
  loc_1664413:                             Call 0.Method_CmdQty_UnknownEvent_90 (var_D0)
  loc_166444B:                             var_A8 = CVar(((var_184 - var_1F0.Text) - Val(var_D0))) 'Double
  loc_1664469:                             Set var_1F4 = var_1F8(CInt(8))
  loc_166446F:                             Call 0.Method_CmdQty_UnknownEvent_90 (CStr(Format(CVar(var_184), "0.00")), 1)
  loc_1664477:                             var_1F8.Text = 1
  loc_16644A5:                           End If
  loc_16644D2:                           If (CDbl(Val(Me.LblIndex.Caption)) >= CDbl(UBound(global_404, 1))) Then
  loc_16644E1:                             Me.FrameGrpItem.Enabled = True
  loc_16644EC:                           Else
  loc_166450C:                             var_CC = CStr((Val(Me.LblIndex.Caption) + CDbl(1)))
  loc_1664519:                             Me.LblIndex.Caption = var_CC
  loc_1664538:                             Set var_BC = var_86(var_186)
  loc_166453E:                             Call 0.Method_CmdQty_UnknownEvent_98 (1)
  loc_1664549:                             For var_21C =  To var_186:                         var_204 = var_21C 'Integer
  loc_166455C:                               var_C8 = Me.LblIndex.Caption
  loc_166457E:                               Set var_C0 = var_C4(var_86)
  loc_1664584:                               Call 0.Method_CmdQty_UnknownEvent_90 (var_CC)
  loc_166458C:                               global_404(CLng(Val(var_C8))) = var_C4.Tag
  loc_16645A6:                               If ( = var_CC) Then
  loc_16645B6:                                 Set var_BC = var_C0(var_86)
  loc_16645BC:                                 Call 0.Method_CmdQty_UnknownEvent_90 (var_C8)
  loc_16645C4:                                  = var_C0.Caption
  loc_16645D6:                                 Me.LblVtype.Caption = var_C8
  loc_16645F9:                                 Me.LblVtype.Tag = CStr(var_86)
  loc_166462A:                                 Set var_C0 = Me.TxtQty
  loc_1664630:                                 var_C0.Tag = global_408(CLng(Val(Me.LblIndex.Caption)))
  loc_166464C:                                 var_C8 = Me.TxtQty.Tag
  loc_166465F:                                 If (var_C8 = "P") Then
  loc_166466F:                                   Set var_BC = var_C0(var_86)
  loc_1664675:                                   Call 0.Method_CmdQty_UnknownEvent_90 (var_C8)
  loc_166467D:                                    = var_C0.Text
  loc_166468A:                                   var_184 = Val(var_C8)
  loc_166469A:                                   Set var_C4 = var_D4(var_86)
  loc_16646A0:                                   Call 0.Method_CmdQty_UnknownEvent_90 (var_CC)
  loc_16646E3:                                   Me.TxtQty.Text = CStr(IIf((CDbl(var_D4.Text) > CDbl(0)), CVar(var_CC), vbNullString))
  loc_166470A:                                 Else
  loc_1664717:                                   Set var_BC = var_C0(var_86)
  loc_166471D:                                   Call 0.Method_CmdQty_UnknownEvent_90 (var_C8)
  loc_1664725:                                    = var_C0.Text
  loc_1664732:                                   var_184 = Val(var_C8)
  loc_1664742:                                   Set var_C4 = var_D4(var_86)
  loc_1664748:                                   Call 0.Method_CmdQty_UnknownEvent_90 (var_CC)
  loc_166478B:                                   Me.TxtQty.Text = CStr(IIf((CDbl(var_D4.Text) > CDbl(0)), CVar(var_CC), vbNullString))
  loc_16647AF:                                 End If
  loc_16647AF:                               End If
  loc_16647B2:                             Next var_21C 'Integer
  loc_16647B7:                           End If
  loc_16647B7:                         End If
  loc_16647B7:                       End If
  loc_16647B7:                     End If
  loc_16647B7:                   End If
  loc_16647B7:                 End If
  loc_16647B7:               End If
  loc_16647B7:             End If
  loc_16647B7:           End If
  loc_16647C3:           Me.FrameQty.Visible = False
  loc_16647CE:         Else
  loc_16647D6:           If (var_88 = CInt(&HC)) Then
  loc_16647E5:             Me.FrameGrpItem.Enabled = True
  loc_16647FB:             (True).Enabled = 
  loc_1664803:           End If
  loc_1664803:         End If
  loc_1664803:       End If
  loc_1664803:     End If
  loc_1664803:   End If
  loc_1664803: End If
  loc_1664803: Exit Sub
End Sub

Private Sub cmdCashReg_Click() '1914DB0
  'Data Table: 5B2100
  Dim var_C0 As Variant
  Dim var_D8 As Variant
  Dim var_130 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_120 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_100 As Variant
  Dim var_160 As Variant
  Dim var_C4 As String
  Dim unk_5B213D As Connection15
  Dim var_B0 As Recordset15
  Dim var_C8 As Variant
  Dim var_19C As String
  Dim var_1A0 As String
  Dim var_1A8 As String
  Dim var_1B4 As Double
  Dim var_A0 As Integer
  Dim var_BC As Recordset15
  Dim var_96 As Integer
  Dim var_DC As Variant
  Dim var_1B8 As Variant
  Dim var_1BC As Variant
  Dim var_E0 As Variant
  Dim var_190 As Variant
  Dim var_1E0 As Variant
  Dim var_1C0 As Fields15
  Dim var_518 As Double
  Dim var_520 As Double
  Dim var_528 As Double
  Dim var_530 As Double
  Dim var_224 As String
  Dim var_210 As Variant
  Dim var_2B4 As Variant
  Dim var_2E8 As Variant
  Dim var_308 As Variant
  Dim var_4E8 As Variant
  Dim var_A6 As Integer
  Dim var_8C As Recordset15
  Dim var_88 As Recordset15
  Dim var_9C As Recordset15
  Dim var_90 As Recordset15
  Dim var_510 As Fields15
  Dim var_434 As Variant
  Dim var_4B8 As Variant
  Dim var_50C As Variant
  Dim var_568 As Variant
  loc_19123A1:  = (var_C4).Caption
  loc_19123B4: If (var_C4 = "Update &Cash Register") Then
  loc_19123C2:   Set var_C0 = var_C8(CInt(0))
  loc_19123C8:   Call 0.Method_cmdCashReg_Click0 ()
  loc_19123EB:   Set var_DC = var_E0(CInt(0))
  loc_19123F1:   Call 0.Method_cmdCashReg_Click0 ((IsDate(CVar(var_C8)) = 0))
  loc_1912400:   var_100 = Trim(CVar(var_E0))
  loc_191242A:   If CBool( Or (var_100 = vbNullString)) Then
  loc_191244E:     MsgBox("Please Check Bill Date.", &H40, "Validation...", var_100, var_120)
  loc_191245E:     Call Proc_258_165_F806A4()
  loc_1912463:     Exit Sub
  loc_1912464:   End If
  loc_191246F:   Set var_C0 = var_C8(CInt(1))
  loc_1912475:   Call 0.Method_cmdCashReg_Click0 ()
  loc_19124A6:   Set var_DC = var_E0(CInt(1))
  loc_19124AC:   Call 0.Method_cmdCashReg_Click0 (1)
  loc_19124B4:   var_120 = CVar(var_E0) 'Address
  loc_19124D0:   var_180 =  Or (InStr((Trim(CVar(var_C8)) = vbNullString), var_120, ".mdb", 0) <= 0)
  loc_19124E8:   If CBool(var_180) Then
  loc_19124F6:     var_F0 = "Validation..."
  loc_191250C:     MsgBox("Please verify database.", &H40, var_F0, var_100, var_120)
  loc_191251C:     Call Proc_258_165_F806A4()
  loc_1912521:     Exit Sub
  loc_1912522:   End If
  loc_191253F:   Set var_C0 = var_C8(CInt(0))
  loc_1912545:   Call 0.Method_cmdCashReg_Click0 ("SELECT count(*) FROM Paycharge WHERE VDate=", var_180)
  loc_1912554:   Proc_6_7_F25D88(var_F0, CVar(var_C8))
  loc_191255C:   var_100 = -1 & var_F0 
  loc_1912565:   var_120 = var_100 & " AND VType='" 
  loc_1912572:   var_140 = var_120 & CVar(global_184) 
  loc_191257B:   var_170 = var_140 & "'" 
  loc_1912589:   unk_5B213D.Execute CStr(var_170), var_DC, 
  loc_19125CC:   var_C8 = var_DC.Fields.Item(0)
  loc_19125F7:   If (CDbl(Val(CStr(var_C8.Value))) > CDbl(0)) Then
  loc_1912605:     var_F0 = "Cash Register..."
  loc_191263A:     If (MsgBox(CVar("Data Allready Transfered for this Data!" & vbCrLf & "Do You want Continue...?"), &H14, var_F0, var_100, var_120) = 7) Then
  loc_191263D:       Call Proc_258_165_F806A4()
  loc_191264F:       ("Update &Cash Register").Caption = 
  loc_1912657:       Exit Sub
  loc_191265B:     Else
  loc_1912678:       Set var_C0 = var_C8(CInt(0))
  loc_191267E:       Call 0.Method_cmdCashReg_Click0 ("DELETE FROM CashRegData WHERE VDate=", var_120)
  loc_191268D:       Proc_6_7_F25D88(var_F0, CVar(var_C8))
  loc_1912695:       var_100 = -1 & var_F0 
  loc_19126A3:       unk_5B213D.Execute CStr(var_100), var_DC, 
  loc_19126DA:       Set var_C0 = var_C8(CInt(0))
  loc_19126E0:       Call 0.Method_cmdCashReg_Click0 ("DELETE FROM Stock WHERE VDate=", var_120)
  loc_19126EF:       Proc_6_7_F25D88(var_F0, CVar(var_C8))
  loc_19126F7:       var_100 = -1 & var_F0 
  loc_1912705:       unk_5B213D.Execute CStr(var_100), var_DC, 
  loc_191273C:       Set var_C0 = var_C8(CInt(0))
  loc_1912742:       Call 0.Method_cmdCashReg_Click0 ("DELETE FROM Sale1 WHERE VDate=", var_120)
  loc_1912751:       Proc_6_7_F25D88(var_F0, CVar(var_C8))
  loc_1912759:       var_100 = -1 & var_F0 
  loc_1912767:       unk_5B213D.Execute CStr(var_100), var_DC, 
  loc_191279E:       Set var_C0 = var_C8(CInt(0))
  loc_19127A4:       Call 0.Method_cmdCashReg_Click0 ("DELETE FROM Sale2 WHERE VDate=", var_120)
  loc_19127B3:       Proc_6_7_F25D88(var_F0, CVar(var_C8))
  loc_19127BB:       var_100 = -1 & var_F0 
  loc_19127C9:       unk_5B213D.Execute CStr(var_100), var_DC, 
  loc_1912800:       Set var_C0 = var_C8(CInt(0))
  loc_1912806:       Call 0.Method_cmdCashReg_Click0 ("DELETE FROM SunTran WHERE VDate=", var_120)
  loc_1912815:       Proc_6_7_F25D88(var_F0, CVar(var_C8))
  loc_191281D:       var_100 = -1 & var_F0 
  loc_191282B:       unk_5B213D.Execute CStr(var_100), var_DC, 
  loc_1912862:       Set var_C0 = var_C8(CInt(0))
  loc_1912868:       Call 0.Method_cmdCashReg_Click0 ("DELETE FROM Paycharge WHERE VDate=", var_120)
  loc_1912877:       Proc_6_7_F25D88(var_F0, CVar(var_C8))
  loc_191287F:       var_100 = -1 & var_F0 
  loc_1912883:       var_C4 = CStr(var_100)
  loc_191288D:       unk_5B213D.Execute var_C4, var_DC, 
  loc_19128A7:     End If
  loc_19128A7:   End If
  loc_19128B4:   ("&Cancel Update").Caption = 
  loc_19128C8:   (&HFF).Enabled = 
  loc_19128D8:   Call Proc_258_140_134CB60(CByte(0))
  loc_19128F7:   If (Me.Connection15.State = 1) Then
  loc_1912903:     Me.Connection15.Close
  loc_1912908:   End If
  loc_1912924:   Set var_C0 = var_C8(CInt(1))
  loc_191292A:   Call 0.Method_cmdCashReg_Click0 (var_C4, "Provider=MSDataShape;Data Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=", vbNullString)
  loc_1912932:   vbNullString = var_C8.Text
  loc_191293B:   var_19C = -1 & var_C4
  loc_1912963:   Me.Connection15.Open var_19C & ";Data Source=" & MemVar_1F92098 & ";pwd=" & MemVar_1F920DC, , , 
  loc_191297E: End If
  loc_191299B: Set var_C0 = var_C8(CInt(0))
  loc_19129A1: Call 0.Method_cmdCashReg_Click0 ("SELECT * FROM ItemData WHERE BillDate =", var_120)
  loc_19129B0: Proc_6_7_F25D88(var_F0, CVar(var_C8))
  loc_19129B8: var_100 = -1 & var_F0 
  loc_19129C9: Me.Connection15.Execute CStr(var_100), var_DC, 
  loc_19129D4: Set var_B0 = var_DC
  loc_19129F2: var_198 = var_B0.RecordCount
  loc_1912A00: If (var_198 > 0) Then
  loc_1912A46:   Call Proc_258_138_114DA60(MemVar_1F92044, CVar(Val(CStr(var_B0.Fields.Item("BillNo").Value))))
  loc_1912A4E:   var_B4 = var_19C
  loc_1912A6B:   unk_5B213D.BeginTrans var_198
  loc_1912A70:   ' Referenced from: 1913313
  loc_1912A7F:   If Not(var_B0.EOF) Then
  loc_1912A9B:     var_A0 = CInt(Val(CStr(var_B0.RecordCount)))
  loc_1912AAA:     var_A0 = CInt((CDbl(var_A0) / CDbl(2)))
  loc_1912AC5:     var_1B4 = Val(CStr(var_B0.AbsolutePosition))
  loc_1912AD4:     If (CDbl(var_A0) = CDbl(var_1B4)) Then
  loc_1912ADF:       Call Proc_258_140_134CB60(CByte(1), var_1B4, var_A0)
  loc_1912AE4:     End If
  loc_1912B20:     var_F0 = "SELECT Code,DispCode,Unit,RestCode,SaleRate AS Rate,DiscApp,Kitchen FROM ItemMast WHERE DispCode=" & var_B0.Fields.Item("ItemCode").Value 
  loc_1912B2E:     unk_5B213D.Execute CStr(var_F0), var_100, -1
  loc_1912B39:     Set var_BC = var_DC
  loc_1912B65:     If (var_BC.RecordCount > 0) Then
  loc_1912BAE:       If (CDbl(Val(CStr(var_B0.Fields.Item("BillNo").Value))) = CDbl(var_A6)) Then
  loc_1912BB7:         var_96 = (var_96 + 1)
  loc_1912BBD:       Else
  loc_1912BBF:         var_96 = 1
  loc_1912BF5:         var_1B4 = Val(CStr(var_B0.Fields.Item("BillNo").Value))
  loc_1912BFE:         var_F0 = CVar(var_1B4) 'Double
  loc_1912C05:         Call Proc_258_138_114DA60(MemVar_1F92044, var_F0, var_19C, var_1B4, var_96)
  loc_1912C0D:         var_B4 = var_19C
  loc_1912C4F:         var_100 = CVar("SELECT Count(*) FROM CashRegData WHERE DocId='" & var_B4 & "' AND SNo=" & CStr(var_96) & " AND VDate=") 'String
  loc_1912C78:         Proc_6_7_F25D88(var_F0, CVar(var_B0.Fields.Item("Billdate")), var_100, var_140, -1, var_DC)
  loc_1912C8E:         unk_5B213D.Execute CStr(var_96 & var_F0), var_DC, var_A0
  loc_1912C99:         Set var_B8 = var_DC
  loc_1912CBD:       End If
  loc_1912CF0:       var_1B4 = Val(CStr(var_B0.Fields.Item("BillNo").Value))
  loc_1912D19:       Proc_6_7_F25D88(var_100, CVar(var_B0.Fields.Item("Billdate")), var_1B4)
  loc_1912D21:       var_160 = 0
  loc_1912D61:       Me.Connection15.Execute CStr(CVar("SELECT BillTime FROM BillData WHERE BillNo=" & CStr(var_1B4) & "AND BillDate=") & var_100), var_170, -1
  loc_1912D69:       var_1B8 = var_1B8.Fields
  loc_1912D71:       var_160 = var_1BC.Item(var_1BC)
  loc_1912D8E:       var_AC = CStr(Left(CVar(var_1C0), 5))
  loc_1912DD4:       If (InStr(4, var_AC, ":", 0) > 0) Then
  loc_1912DF4:         var_F0 = ("0" + Left(var_AC, 4))
  loc_1912DF9:         var_AC = CStr(CVar(var_B0.Fields.Item("Billdate")))
  loc_1912E03:       End If
  loc_1912E29:       Proc_6_7_F25D88(CVar(var_B0.Fields.Item("Billdate")), CVar(var_B0.Fields.Item("Billdate")), var_1C0)
  loc_1912E79:       var_100 = "DELETE FROM CashRegData WHERE VDate=" & CVar(var_B0.Fields.Item("Billdate")) 
  loc_1912EAE:       unk_5B213D.Execute CStr(var_100 & " AND VNo=" & CVar(Val(CStr(var_B0.Fields.Item("BillNo").Value))) & " AND SNo=" & CVar(var_96)), var_210, -1
  loc_1912F0D:       var_1B4 = Val(CStr(var_B0.Fields.Item("BillNo").Value))
  loc_1912F1F:       var_DC = var_B0.Fields
  loc_1912F27:       var_E0 = var_DC.Item("Billdate")
  loc_1912F36:       Proc_6_7_F25D88(var_100, CVar(var_E0), var_1B4, var_1B8)
  loc_1912F4D:       var_1B8 = var_BC.Fields
  loc_1912FBC:       var_518 = Val(CStr(var_B0.Fields.Item("ItemQty").Value))
  loc_1912FF2:       var_520 = Val(CStr(var_BC.Fields.Item("Rate").Value))
  loc_1913028:       var_528 = Val(CStr(var_BC.Fields.Item("Rate").Value))
  loc_191305E:       var_530 = Val(CStr(var_B0.Fields.Item("ItemQty").Value))
  loc_191306F:       Proc_6_7_F25D88(var_4B8, Date, var_530, var_528, var_520)
  loc_191308F:       var_19C = "INSERT INTO CashRegData " & "(DocId,SNo,VType,VNo,Site_Code,VPrefix,VDate,VTime,RestCode," & "RoomCat,RoomType,RoomNo,Item,Qty,Rate,Amount,"
  loc_19130CF:       var_224 = var_19C & "VoidYN,Pending," & "U_Name,U_EntDt,U_AE,DelFlag) VALUES " & "('" & var_B4 & "'," & CStr(var_96) & ",'" & global_312
  loc_1913108:       var_120 = CVar(var_224 & "'," & CStr(var_1B4) & ",'" & MemVar_1F92078 & "','" & global_164 & "',") 'String
  loc_1913121:       var_180 = var_120 & var_100 & ",'" & CVar(var_AC) 
  loc_1913160:       var_2E8 = var_180 & "','" & CVar(global_76) & "'" & ",'REST','TB','" & var_1B8.Item("DispCode").Value & "','" & var_BC.Fields.Item("Code").Value 
  loc_1913169:       var_308 = var_2E8 & "'," 
  loc_19131C2:       var_4E8 = var_308 & CVar(var_518) & "," & CVar(var_520) & "," & CVar((var_528 * var_530)) & ",'N','N'" & ",'SA'," & var_4B8 & ",'A','N')" 
  loc_19131D0:       unk_5B213D.Execute CStr(var_4E8), var_50C, -1
  loc_191328A:       var_C8 = var_B0.Fields.Item("BillNo")
  loc_19132A4:       var_A6 = CInt(Val(CStr(var_C8.Value)))
  loc_19132B7:     Else
  loc_19132DB:       var_19C = "Item details not found!" & vbCrLf & "Please validate Item Master."
  loc_19132E9:       var_D8 = CVar(var_19C & vbCrLf & " And Re-Update Cash Register...") 'String
  loc_19132EC:       MsgBox(var_C8.Value, &H10, "Cash Register...", var_100, var_120)
  loc_1913305:       Call Proc_258_165_F806A4(var_A6, var_510, var_518)
  loc_191330A:       Exit Sub
  loc_191330B:     End If
  loc_191330E:     var_B0.MoveNext
  loc_1913313:     GoTo loc_1912A70
  loc_1913316:   End If
  loc_191331C:   unk_5B213D.CommitTrans
  loc_1913326:   Set var_BC = Nothing
  loc_191332C: Else
  loc_1913338:   var_1B4(0).Enabled = var_19C
  loc_1913348:   Call Proc_258_140_134CB60(CByte(0))
  loc_191335A:   var_1B4("Update &Cash Register").Caption = 
  loc_191336D:   var_F0 = "Cash Register..."
  loc_1913383:   MsgBox("No more record for updation.", &H40, var_F0, var_100, var_120)
  loc_1913393:   Call Proc_258_165_F806A4()
  loc_1913398:   Exit Sub
  loc_1913399: End If
  loc_19133A1: Call Proc_258_140_134CB60(CByte(2))
  loc_19133C3: Set var_C0 = var_C8(CInt(0))
  loc_19133C9: Call 0.Method_cmdCashReg_Click0 ("SELECT Distinct DocId,VNo,VDate,VTime,VType,VPrefix,RestCode FROM CashRegData WHERE Vdate=", var_120)
  loc_19133D8: Proc_6_7_F25D88(var_F0, CVar(var_C8))
  loc_19133E0: var_100 = -1 & var_F0 
  loc_19133EE: unk_5B213D.Execute CStr(var_100), var_DC, 
  loc_19133F9: Set var_8C = var_DC
  loc_191341B: Set var_C0 = Me.TopCtrl1
  loc_1913421: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005("Add")
  loc_1913430: Call Proc_258_157_1BC1384(MemVar_1F920EC)
  loc_191343F: Set var_C0 = Me.TopCtrl1
  loc_1913445: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005("Browse")
  loc_1913461: If (var_8C.RecordCount > 0) Then
  loc_1913464:   ' Referenced from: 19144C0
  loc_1913473:   If Not(var_8C.EOF) Then
  loc_1913480:     Set var_C0 = Me.TopCtrl1
  loc_1913486:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005("Add")
  loc_19134C7:     Set var_DC = var_E0(CInt(0))
  loc_19134CD:     Call 0.Method_cmdCashReg_Click0 (CStr(var_8C.Fields.Item("VNo").Value))
  loc_19134D5:     var_E0.Text = 
  loc_1913524:     Set var_DC = var_E0(CInt(1))
  loc_191352A:     Call 0.Method_cmdCashReg_Click0 (CStr(var_8C.Fields.Item("VDate").Value))
  loc_1913532:     var_E0.Text = 
  loc_1913581:     Set var_DC = var_E0(CInt(2))
  loc_1913587:     Call 0.Method_cmdCashReg_Click0 (CStr(var_8C.Fields.Item("DocID").Value))
  loc_191358F:     var_E0.Text = 
  loc_19135E0:     var_100 = Format(CVar(var_8C.Fields.Item("VTIME")), "hh:nn")
  loc_19135F7:     Set var_DC = var_E0(CInt(5))
  loc_19135FD:     Call 0.Method_cmdCashReg_Click0 (CStr(var_100), 1)
  loc_1913605:     var_E0.Text = 1
  loc_191362A:     If (global_240 = "N") Then
  loc_1913631:       Set var_88 = New 
  loc_191363C:       Me.Recordset15.CursorLocation = 3
  loc_1913674:       var_1B4 = Val(CStr(var_8C.Fields.Item("VNo").Value))
  loc_191369D:       Proc_6_7_F25D88(var_100, CVar(var_8C.Fields.Item("VDate")))
  loc_19136BB:       var_1A0 = "Select * ,I.NAME AS ITEMNAME,DispCode,I.UNIT,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,IC.taxStru,IC.CatType,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From ((CashRegData K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And K.ITEMRestCode=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode WHERE k.VNo=" & CStr(var_1B4)
  loc_19136DF:       unk_5B213D.Execute CStr(CVar(var_1A0 & " AND k.VDate=") & var_100 & " AND DelFlag<>'Y' Order by K.DOCID,K.SNo"), var_180, -1
  loc_19136EA:       Set var_88 = var_1B8
  loc_1913728:       If (var_88.RecordCount > 0) Then
  loc_1913734:         Set var_C0 = var_1B8(False)
  loc_191373A:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19(var_1B4)
  loc_1913746:         Set var_C0 = ()
  loc_191374C:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_191375C:         var_96 = CInt((CLng() - 1))
  loc_1913765:         ' Referenced from: 1914234
  loc_1913774:         If Not(var_88.EOF) Then
  loc_1913780:           Set var_C0 = 1(var_A0)
  loc_1913786:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_96)
  loc_191379C:           For var_534 =  To CInt((CLng() - 1)):  = var_534 'Integer
  loc_19137B7:             Set var_C0 = CVar(CLng(var_A0))(CVar(CLng(&HD)))
  loc_19137BD:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_191380F:             Set var_E0 = CVar(CLng(var_A0))(CVar(CLng(&HC)))
  loc_1913815:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((CVar(CStr()) = var_88.Fields.Item("DocID").Value))
  loc_1913876:             If CBool( And (CVar(CStr()) = var_88.Fields.Item("SNo").Value)) Then
  loc_191387D:               var_9E = CByte(1) 'Byte
  loc_1913881:               GoTo loc_1914224
  loc_1913884:             End If
  loc_1913887:           Next var_534 'Integer
  loc_1913896:           Set var_C0 = (vbNullString)
  loc_191389C:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_19138AB:           Set var_538 = ()
  loc_19138B2:           var_110 = CVar(CLng(var_96)) 'Long
  loc_19138BA:           var_150 = CVar(CLng(0)) 'Long
  loc_19138C4:           var_D8 = CVar(CStr(var_96)) 'String
  loc_19138CB:           LateIdCallSt
  loc_19138DA:           var_130 = CVar(CLng(var_96)) 'Long
  loc_19138E2:           var_160 = CVar(CLng(&HB)) 'Long
  loc_1913912:           var_F0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_1913919:           LateIdCallSt
  loc_1913933:           var_130 = CVar(CLng(var_96)) 'Long
  loc_191393B:           var_160 = CVar(CLng(3)) 'Long
  loc_191396B:           var_F0 = CVar(CStr(var_88.Fields.Item("DispCode").Value)) 'String
  loc_1913972:           LateIdCallSt
  loc_191398C:           var_130 = CVar(CLng(var_96)) 'Long
  loc_1913994:           var_160 = CVar(CLng(4)) 'Long
  loc_19139C4:           var_F0 = CVar(CStr(var_88.Fields.Item("ItemName").Value)) 'String
  loc_19139CB:           LateIdCallSt
  loc_19139E5:           var_130 = CVar(CLng(var_96)) 'Long
  loc_19139ED:           var_160 = CVar(CLng(6)) 'Long
  loc_1913A1D:           var_F0 = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_1913A24:           LateIdCallSt
  loc_1913A5A:           var_150 = CVar(CLng(var_96)) 'Long
  loc_1913A62:           var_190 = CVar(CLng(7)) 'Long
  loc_1913A8F:           var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), "0.00"))) 'String
  loc_1913A96:           LateIdCallSt
  loc_1913ACC:           var_150 = CVar(CLng(var_96)) 'Long
  loc_1913AD4:           var_190 = CVar(CLng(8)) 'Long
  loc_1913B01:           var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_1913B08:           LateIdCallSt
  loc_1913B3E:           var_150 = CVar(CLng(var_96)) 'Long
  loc_1913B46:           var_190 = CVar(CLng(9)) 'Long
  loc_1913B73:           var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_1913B7A:           LateIdCallSt
  loc_1913BC9:           var_DC = var_88.Fields
  loc_1913BD1:           var_E0 = var_DC.Item("Rate")
  loc_1913BE2:           var_160 = CVar(CLng(var_96)) 'Long
  loc_1913BEA:           var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1913C0E:           var_120 = (var_88.Fields.Item("qty").Value * var_E0.Value) 'Variant
  loc_1913C21:           var_180 = CVar(CStr(Format(var_120, "0.00"))) 'String
  loc_1913C28:           LateIdCallSt
  loc_1913C6A:           var_130 = CVar(CLng(var_96)) 'Long
  loc_1913C72:           var_160 = CVar(CLng(5)) 'Long
  loc_1913C99:           var_100 = CVar(CStr(Val(CStr(Right(CVar(var_88.Fields.Item("DocID")), 8))))) 'String
  loc_1913CA0:           LateIdCallSt
  loc_1913CBB:           var_130 = CVar(CLng(var_96)) 'Long
  loc_1913CC3:           var_160 = CVar(CLng(&HD)) 'Long
  loc_1913CF3:           var_F0 = CVar(CStr(var_88.Fields.Item("DocID").Value)) 'String
  loc_1913CFA:           LateIdCallSt
  loc_1913D14:           var_130 = CVar(CLng(var_96)) 'Long
  loc_1913D1C:           var_160 = CVar(CLng(&HC)) 'Long
  loc_1913D4C:           var_F0 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1913D53:           LateIdCallSt
  loc_1913DA2:           var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_96)), var_538, var_F0, CVar(CLng(&H19)), CVar(CLng(var_96)))) 'String
  loc_1913DA9:           LateIdCallSt
  loc_1913DF4:           var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("IDiscApp")), CVar(CLng(&H13)), CVar(CLng(var_96)), var_538, var_F0, var_538)) 'String
  loc_1913DFB:           LateIdCallSt
  loc_1913E46:           var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(var_96)), var_538, var_F0)) 'String
  loc_1913E4D:           LateIdCallSt
  loc_1913E98:           var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(var_96)), var_538, var_F0)) 'String
  loc_1913E9F:           LateIdCallSt
  loc_1913EEA:           var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(var_96)), var_538, var_F0)) 'String
  loc_1913EF1:           LateIdCallSt
  loc_1913F0F:           var_160 = CVar(CLng(&H1A)) 'Long
  loc_1913F3C:           var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Kitchen")), var_160, CVar(CLng(var_96)), var_538, var_F0)) 'String
  loc_1913F43:           LateIdCallSt
  loc_1913F8D:           var_C4 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_F0, -1, var_DC, var_538)
  loc_1913FA1:           unk_5B213D.Execute var_F0 & CStr(Right(CVar(var_88.Fields.Item("DocID")), 8)) & "'", var_F0, var_160
  loc_1913FAC:           Set var_9C = var_DC
  loc_1913FCC:           var_198 = var_9C.RecordCount
  loc_1913FDA:           If (var_198 > 0) Then
  loc_1913FE1:             var_130 = CVar(CLng(var_96)) 'Long
  loc_1914014:             Proc_6_39_E7C810(var_F0, CVar(var_9C.Fields.Item("Rate")), CVar(CLng(&H10)), var_130)
  loc_191401D:             var_100 = CVar(CStr(var_F0)) 'String
  loc_1914025:             Set var_DC = var_130(var_100)
  loc_191402B:             LateIdCallSt
  loc_1914043:           End If
  loc_1914064:           var_D8 = CVar(Proc_6_38_E68A98(global_192, CVar(CLng(&H16)), CVar(CLng(var_96)))) 'String
  loc_191406B:           LateIdCallSt
  loc_19140B6:           LateIdCallSt
  loc_19140F0:           var_C4 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomNo")), var_538, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomNo")), CVar(CLng(&H17)), CVar(CLng(var_96)), var_538)), CVar(var_88.Fields.Item("RoomNo")))
  loc_1914104:           Call 0.Method_cmdCashReg_Click0 (var_C4, var_E0(CInt(3)))
  loc_191410C:           var_E0.Tag = var_538
  loc_1914124:           var_130 = CVar(CLng(var_96)) 'Long
  loc_1914159:           var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DepartCode")), CVar(CLng(1)))) 'String
  loc_1914160:           LateIdCallSt
  loc_19141AB:           var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_96)), var_538)) 'String
  loc_19141B2:           LateIdCallSt
  loc_19141C8:           var_130 = CVar(CLng(var_96)) 'Long
  loc_19141E5:           var_D8 = CVar(Proc_6_38_E68A98(global_188, CVar(CLng(&H15)), var_130, var_538)) 'String
  loc_19141EC:           LateIdCallSt
  loc_19141FB:           var_110 = CVar(CLng(var_96)) 'Long
  loc_191420D:           LateIdCallSt
  loc_1914217:           Set var_538 = Nothing 
  loc_1914221:           var_96 = (var_96 + 1)
  loc_1914224:           ' Referenced from: 1913881
  loc_1914227:           var_88.MoveNext
  loc_1914230:           var_9E = CByte(0) 'Byte
  loc_1914234:           GoTo loc_1913765
  loc_1914237:         End If
  loc_191423B:         Set var_C0 = var_538(var_96)
  loc_1914241:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(global_68)
  loc_1914250:         var_110 = CVar((CLng(var_110) - 1)) 'Long
  loc_1914269:         LateIdCallSt
  loc_1914288:         Set var_C0 = 1(global_68)(1)
  loc_191428E:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6(var_538)
  loc_1914299:       Else
  loc_19142A1:         Set var_C0 = var_D8(True)
  loc_19142A7:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19(var_F0)
  loc_19142B5:         If (var_96 = 1) Then
  loc_19142C5:           Set var_C0 = var_F0(1)
  loc_19142CB:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_130)
  loc_19142F9:           Set var_C8 = CInt(0)(CVar(CStr(Proc_6_127_F24F80((var_100)))))
  loc_19142FF:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_1914317:           Set var_C0 = ()
  loc_191431D:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_191432C:           var_110 = CVar((CLng() - 1)) 'Long
  loc_1914345:           LateIdCallSt
  loc_1914364:           Set var_C0 = 1(global_68)(1)
  loc_191436A:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_1914372:         End If
  loc_1914372:       End If
  loc_1914372:     End If
  loc_191437A:     Set var_C0 = (True)
  loc_1914380:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_191438E:     If (var_96 = 1) Then
  loc_191439E:       Set var_C0 = (1)
  loc_19143A4:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_19143B0:       Set var_DC = ()
  loc_19143D2:       Set var_C8 = CInt(0)(CVar(CStr(Proc_6_127_F24F80(var_DC))))
  loc_19143D8:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_19143F0:       Set var_C0 = ()
  loc_19143F6:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1914405:       var_110 = CVar((CLng() - 1)) 'Long
  loc_1914418:       Set var_C8 = 1(global_68)
  loc_191441E:       LateIdCallSt
  loc_191443D:       Set var_C0 = var_C8(1)
  loc_1914443:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_191444B:     End If
  loc_1914450:     Call Proc_258_158_190485C(3)
  loc_1914458:     var_8C.MoveNext
  loc_1914464:     Proc_96_21_E57C50(CDbl(1))
  loc_1914469:     Call Proc_258_139_1B81B90()
  loc_1914478:     Set var_C0 = Me.TopCtrl1
  loc_191447E:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005("Save")
  loc_1914486:     DoEvents()
  loc_191448F:     Set var_C0 = ()
  loc_1914495:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0()
  loc_19144AD:     Set var_C0 = (2)
  loc_19144B3:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_19144BB:     Call Proc_258_136_143E164()
  loc_19144C0:     GoTo loc_1913464
  loc_19144C3:   End If
  loc_19144CB:   Call Proc_258_140_134CB60(CByte(3))
  loc_19144ED:   Set var_C0 = var_C8(CInt(0))
  loc_19144F3:   Call 0.Method_cmdCashReg_Click0 ("SELECT DocId,VNo,VDate,VTime,VType,VPrefix,RestCode,NetAmt FROM Sale1 WHERE VDate=", var_120)
  loc_1914502:   Proc_6_7_F25D88(var_F0, CVar(var_C8))
  loc_191450A:   var_100 = -1 & var_F0 
  loc_1914518:   unk_5B213D.Execute CStr(var_100), var_DC, 
  loc_1914523:   Set var_90 = var_DC
  loc_191453B:   ' Referenced from: 1914A22
  loc_191454A:   If Not(var_90.EOF) Then
  loc_1914565:     var_1A0 = "(" & global_312 & ") " & "BILL NO.- "
  loc_19145A6:     var_A4 = var_F0 & CStr(Right(CVar(var_88.Fields.Item("DocID")), 8)) & "'" & CStr(var_90.Fields.Item("VNo").Value) & " " & vbNullString
  loc_19145CB:     unk_5B213D.BeginTrans var_198
  loc_19145EF:     var_D8 = CVar(var_90.Fields.Item("VDate")) 'Address
  loc_19145F6:     Proc_6_7_F25D88(var_F0)
  loc_1914668:     unk_5B213D.Execute CStr("DELETE FROM Paycharge WHERE VDate=" & var_F0 & " AND VNo=" & CVar(Val(CStr(var_90.Fields.Item("VNo").Value)))), var_180, -1
  loc_19146AA:     var_C8 = var_90.Fields.Item("DocID")
  loc_19146C9:     var_DC = var_90.Fields
  loc_19146F0:     var_1B8 = var_90.Fields
  loc_1914711:     var_1B4 = Val(CStr(var_1B8.Item("VNo").Value))
  loc_1914761:     Proc_6_7_F25D88(var_308, CVar(var_90.Fields.Item("VDate")), var_1B4)
  loc_19147C0:     var_518 = Val(CStr(var_90.Fields.Item("NetAmt").Value))
  loc_19147F6:     var_520 = Val(CStr(var_90.Fields.Item("NetAmt").Value))
  loc_1914807:     Proc_6_7_F25D88(var_588, Date, var_520, var_518)
  loc_191484E:     var_19C = "Insert Into PayCharge(" & "DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, GuestProf," & "EmpCode,CompCode,Comments,PayCode,PayType,"
  loc_1914863:     var_1A8 = var_19C & "BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo," & "CardNo,CardHolder,ChqNo,ChqDate,ExpDate," & "U_Name,U_EntDt,U_AE,RestCode,batchno) "
  loc_1914877:     var_100 = CVar(var_1A8 & "VALUES " & "('") & var_C8.Value 
  loc_1914880:     var_120 = var_100 & "',1,'" 
  loc_19148BE:     var_2B4 = var_120 & var_DC.Item("vType").Value & "'," & CVar(var_1B4) & ",'" & CVar(MemVar_1F92070) & "','" & var_90.Fields.Item("vPrefix").Value 
  loc_1914903:     var_434 = var_2B4 & "'," & var_308 & ",'" & var_90.Fields.Item("VTIME").Value & "'," & "'','','','" & CVar(var_A4) & "','KCASH','Cash'," 
  loc_1914947:     var_568 = var_434 & CVar(var_518) & "," & CVar(var_520) & ",0,'REST','TB','F',0," & "'','','',Null,Null,'" & CVar(MemVar_1F920C8) & "'," 
  loc_1914975:     unk_5B213D.Execute CStr(var_568 & var_588 & ",'A','" & var_90.Fields.Item("RestCode").Value & "',0)"), var_62C, -1
  loc_1914A15:     unk_5B213D.CommitTrans
  loc_1914A1D:     var_90.MoveNext
  loc_1914A22:     GoTo loc_191453B
  loc_1914A25:   End If
  loc_1914A2D:   Call Proc_258_140_134CB60(CByte(4), var_630, var_1B8)
  loc_1914A32: End If
  loc_1914A4D: var_D8 = "Bill transfered successfully!"
  loc_1914A53: MsgBox(var_D8, &H40, "Cash Register", var_100, var_120)
  loc_1914A86: Call Proc_258_148_1079CA0(Proc_5_1_100CB50("INI", Me, global_116), var_1B4)
  loc_1914A96: Set var_9C = Nothing
  loc_1914A9E: Set var_88 = Nothing
  loc_1914AAC: Set global_52 = Nothing
  loc_1914AB3: Call Proc_258_165_F806A4(var_D8)
  loc_1914AC5: ("Update &Cash Register").Caption = 
  loc_1914AD9: (0).Enabled = 
  loc_1914AED: (0).Visible = 
  loc_1914B00: var_F0 = "Cash Register..."
  loc_1914B2C: If (MsgBox("Are You Sure to Cancel all Process?", &H14, var_F0, var_100, var_120) = 6) Then
  loc_1914B38:   unk_5B213D.BeginTrans var_198
  loc_1914B5A:   Set var_C0 = var_C8(CInt(0))
  loc_1914B60:   Call 0.Method_cmdCashReg_Click0 ("DELETE FROM CashRegData WHERE VDate=", var_120)
  loc_1914B6F:   Proc_6_7_F25D88(var_F0, CVar(var_C8))
  loc_1914B77:   var_100 = -1 & var_F0 
  loc_1914B85:   unk_5B213D.Execute CStr(var_100), var_DC, 
  loc_1914BBC:   Set var_C0 = var_C8(CInt(0))
  loc_1914BC2:   Call 0.Method_cmdCashReg_Click0 ("DELETE FROM Stock WHERE VDate=", var_120)
  loc_1914BD1:   Proc_6_7_F25D88(var_F0, CVar(var_C8))
  loc_1914BD9:   var_100 = -1 & var_F0 
  loc_1914BE7:   unk_5B213D.Execute CStr(var_100), var_DC, 
  loc_1914C1E:   Set var_C0 = var_C8(CInt(0))
  loc_1914C24:   Call 0.Method_cmdCashReg_Click0 ("DELETE FROM Sale1 WHERE VDate=", var_120)
  loc_1914C33:   Proc_6_7_F25D88(var_F0, CVar(var_C8))
  loc_1914C3B:   var_100 = -1 & var_F0 
  loc_1914C49:   unk_5B213D.Execute CStr(var_100), var_DC, 
  loc_1914C80:   Set var_C0 = var_C8(CInt(0))
  loc_1914C86:   Call 0.Method_cmdCashReg_Click0 ("DELETE FROM Sale2 WHERE VDate=", var_120)
  loc_1914C95:   Proc_6_7_F25D88(var_F0, CVar(var_C8))
  loc_1914C9D:   var_100 = -1 & var_F0 
  loc_1914CAB:   unk_5B213D.Execute CStr(var_100), var_DC, 
  loc_1914CE2:   Set var_C0 = var_C8(CInt(0))
  loc_1914CE8:   Call 0.Method_cmdCashReg_Click0 ("DELETE FROM SunTran WHERE VDate=", var_120)
  loc_1914CF7:   Proc_6_7_F25D88(var_F0, CVar(var_C8))
  loc_1914CFF:   var_100 = -1 & var_F0 
  loc_1914D0D:   unk_5B213D.Execute CStr(var_100), var_DC, 
  loc_1914D44:   Set var_C0 = var_C8(CInt(0))
  loc_1914D4A:   Call 0.Method_cmdCashReg_Click0 ("DELETE FROM Paycharge WHERE VDate=", var_120)
  loc_1914D59:   Proc_6_7_F25D88(var_F0, CVar(var_C8))
  loc_1914D61:   var_100 = -1 & var_F0 
  loc_1914D6F:   unk_5B213D.Execute CStr(var_100), var_DC, 
  loc_1914D8F:   unk_5B213D.CommitTrans
  loc_1914D94:   Call Proc_258_165_F806A4()
  loc_1914DA6:   ("Update &Cash Register").Caption = 
  loc_1914DAE:   Exit Sub
  loc_1914DAF: End If
  loc_1914DAF: Exit Sub
End Sub

Public Sub CmdGrpDiscType_UnknownEvent_9(Index As Integer) 'EFB924
  'Data Table: 5B2100
  Dim var_88 As Variant
  loc_EFB85C: Me.FrameQty.Visible = True
  loc_EFB871: Me.LblIndex.Caption = vbNullString
  loc_EFB886: Me.LblIndex.Tag = vbNullString
  loc_EFB898: Set var_88 = var_8C(Index)
  loc_EFB89E: Call 0.Method_CmdGrpDiscType_UnknownEvent_90 ()
  loc_EFB8BB: Me.LblVtype.Caption = CStr(LblIndex.DispID_FFFFFDFA)
  loc_EFB8DC: Me.LblVtype.Tag = vbNullString
  loc_EFB8F1: Me.TxtQty.Text = vbNullString
  loc_EFB906: Me.TxtQty.Tag = vbNullString
  loc_EFB91A: Me.FrameGrpItem.Enabled = False
  loc_EFB922: Exit Sub
End Sub

Private Sub Timer1_Timer() 'EFCF14
  'Data Table: 5B2100
  Dim var_88 As Line
  loc_EFCE43: global_80 = (global_80 + 0.2617993875)
  loc_EFCE6B: Set var_88 = Cos(global_80)((global_88 + (Cos(global_80) * global_84)))
  loc_EFCE71: var_88.X1 = global_80
  loc_EFCE9E: Set var_88 = Sin(global_80)((global_92 + (Sin(global_80) * global_84)))
  loc_EFCEA4: var_88.Y1 = 
  loc_EFCED1: Set var_88 = Cos(global_80)((global_88 - (Cos(global_80) * global_84)))
  loc_EFCED7: var_88.X2 = 
  loc_EFCF04: Set var_88 = Sin(global_80)((global_92 - (Sin(global_80) * global_84)))
  loc_EFCF0A: var_88.Y2 = 
  loc_EFCF12: Exit Sub
End Sub

Private Sub SSPPrevious_UnknownEvent_9 '10EDE74
  'Data Table: 5B2100
  Dim Me As Variant
  loc_10EDB57: If (global_384 = "Item") Then
  loc_10EDB60:   global_384 = "Item"
  loc_10EDB7B:   If (Me.AbsolutePosition = -3) Then
  loc_10EDB89:     If (global_392 > CInt(&H10)) Then
  loc_10EDBAD:       Me.AbsolutePosition = CLng((((global_392 - (global_392 Mod CInt(&H10))) - CInt(&H10)) + 1))
  loc_10EDBC6:       Set var_94 = Me.SSPItem
  loc_10EDBE9:       Call Proc_258_134_1306B94(Me.SSPItem, CInt(4), global_400)
  loc_10EDBF5:       global_380 = CInt(var_A4)
  loc_10EDC06:     End If
  loc_10EDC09:   Else
  loc_10EDC38:     If ((Me.AbsolutePosition <> -2) And (Me.AbsolutePosition <> -3)) Then
  loc_10EDC50:       If (Me.AbsolutePosition = CLng(&H10)) Then
  loc_10EDC5E:         Me.AbsolutePosition = 1
  loc_10EDC66:       Else
  loc_10EDC8C:         Me.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * CInt(&H10)))) + 1)
  loc_10EDC91:       End If
  loc_10EDCC8:       Call Proc_258_134_1306B94(Me.SSPItem, CInt(4), global_400, CInt(4), Me.SSPItem)
  loc_10EDCD4:       global_380 = CInt(var_A4)
  loc_10EDCE5:     End If
  loc_10EDCE5:   End If
  loc_10EDCE8: Else
  loc_10EDCEE:   global_384 = "Group"
  loc_10EDD09:   If (Me.AbsolutePosition = -3) Then
  loc_10EDD17:     If (global_388 > CInt(&H10)) Then
  loc_10EDD3B:       Me.AbsolutePosition = CLng((((global_388 - (global_388 Mod CInt(&H10))) - CInt(&H10)) + 1))
  loc_10EDD77:       Call Proc_258_134_1306B94(Me.SSPGroup, CInt(4), global_396, CInt(4), Me.SSPGroup, var_A4)
  loc_10EDD83:       global_380 = CInt(var_A4)
  loc_10EDD94:     End If
  loc_10EDD97:   Else
  loc_10EDDC6:     If ((Me.AbsolutePosition <> -2) And (Me.AbsolutePosition <> -3)) Then
  loc_10EDDDE:       If (Me.AbsolutePosition = CLng(&H10)) Then
  loc_10EDDEC:         Me.AbsolutePosition = 1
  loc_10EDDF4:       Else
  loc_10EDE1A:         Me.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * CInt(&H10)))) + 1)
  loc_10EDE1F:       End If
  loc_10EDE56:       Call Proc_258_134_1306B94(Me.SSPGroup, CInt(4), global_396, CInt(4), Me.SSPGroup, var_A4, global_380)
  loc_10EDE62:       global_380 = CInt(var_A4)
  loc_10EDE73:     End If
  loc_10EDE73:   End If
  loc_10EDE73: End If
  loc_10EDE73: Exit Sub
End Sub

Private Sub SSPNext_UnknownEvent_9 'F34A8C
  'Data Table: 5B2100
  Dim Me As Variant
  loc_F3497F: If (global_384 = "Item") Then
  loc_F34988:   global_384 = "Item"
  loc_F349A3:   If (Me.AbsolutePosition > 0) Then
  loc_F349AC:     Me.MoveNext
  loc_F349C5:     Set var_94 = Me.SSPItem
  loc_F349E8:     Call Proc_258_134_1306B94(Me.SSPItem, CInt(4), global_400)
  loc_F349F4:     global_380 = CInt(var_A4)
  loc_F34A05:   End If
  loc_F34A08: Else
  loc_F34A0E:   global_384 = "Group"
  loc_F34A29:   If (Me.AbsolutePosition > 0) Then
  loc_F34A32:     Me.MoveNext
  loc_F34A6E:     Call Proc_258_134_1306B94(Me.SSPGroup, CInt(4), global_396, CInt(4), Me.SSPGroup)
  loc_F34A7A:     global_380 = CInt(var_A4)
  loc_F34A8B:   End If
  loc_F34A8B: End If
  loc_F34A8B: Exit Sub
End Sub

Private Sub HeadExit_UnknownEvent_9 'DFEC6C
  'Data Table: 5B2100
  loc_DFEC64: Call TopCtrl1_UnknownEvent_E()
  loc_DFEC69: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ECF2B8
  'Data Table: 5B2100
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECF21A: Set var_88 = var_8C(Index)
  loc_ECF220: Call 0.Method_TxtPer_GotFocus0 ()
  loc_ECF22E: Proc_6_74_E226B0(var_8C)
  loc_ECF23A: Call Proc_258_149_FD63A8()
  loc_ECF24E: Set var_88 = var_8C(Index)
  loc_ECF254: Call 0.Method_TxtPer_GotFocus0 (0)
  loc_ECF25C: var_8C.SelStart = 
  loc_ECF275: Set var_88 = var_8C(Index)
  loc_ECF27B: Call 0.Method_TxtPer_GotFocus0 (var_94)
  loc_ECF283:  = var_8C.Text
  loc_ECF296: Set var_90 = var_98(Index)
  loc_ECF29C: Call 0.Method_TxtPer_GotFocus0 (Len(var_94))
  loc_ECF2A4: var_98.SelLength = 
  loc_ECF2B7: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5B468
  'Data Table: 5B2100
  loc_E5B435: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5B43E:   Proc_6_75_E527CC(Shift)
  loc_E5B443: End If
  loc_E5B458: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5B461:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5B466: End If
  loc_E5B466: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E577C8
  'Data Table: 5B2100
  loc_E5779A: Set var_88 = var_8C(KeyAscii)
  loc_E577A0: Call 0.Method_TxtPer_KeyPress0 ()
  loc_E577BB: Proc_6_42_129A86C(var_8C, arg_10)
  loc_E577C7: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E014B4
  'Data Table: 5B2100
  loc_E014AE: Call Proc_258_158_190485C(KeyCode)
  loc_E014B3: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E4717C
  'Data Table: 5B2100
  loc_E4715A: Set var_88 = var_8C(Index)
  loc_E47160: Call 0.Method_TxtPer_LostFocus0 ()
  loc_E4716E: Proc_6_73_E22704(var_8C)
  loc_E4717A: Exit Sub
End Sub

Private Sub CmdSettlement_UnknownEvent_9 'F77E60
  'Data Table: 5B2100
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_A0 As TextBox
  Dim var_B0 As TextBox
  Dim var_E4 As Double
  loc_F77D56: Set var_88 = var_8C(CInt(3))
  loc_F77D5C: Call 0.Method_CmdSettlement_UnknownEvent_90 (var_90)
  loc_F77D64:  = var_8C.Tag
  loc_F77D77: Set var_94 = var_98(CInt(2))
  loc_F77D7D: Call 0.Method_CmdSettlement_UnknownEvent_90 (var_C4)
  loc_F77D85:  = var_98.Text
  loc_F77D98: Set var_9C = var_A0(CInt(3))
  loc_F77D9E: Call 0.Method_CmdSettlement_UnknownEvent_90 (var_D0)
  loc_F77DA6:  = var_A0.Text
  loc_F77DB2: Set var_A4 = (var_A6)
  loc_F77DB8: Call 0.Method_CmdSettlement_UnknownEvent_98 ()
  loc_F77DCA: Set var_AC = var_B0(var_A6)
  loc_F77DD0: Call 0.Method_CmdSettlement_UnknownEvent_90 (var_B4)
  loc_F77DD8:  = var_B0.Text
  loc_F77DE5: var_E4 = Val(var_B4)
  loc_F77E37: Proc_6_132_ECC4B4(1, 5, global_184, var_90, var_C4, 0)
  loc_F77E5E: Exit Sub
End Sub

Private Sub CmdCustInfo_UnknownEvent_9 'F64FF8
  'Data Table: 5B2100
  Dim var_98 As Variant
  loc_F64ECC: Set var_88 = New RsTouchOrderPersonDetails
  loc_F64EDA: var_88.ParentForm = CVar(Me)
  loc_F64EE7: var_88.EntryType = "SALEBILLENTRY"
  loc_F64EF6: Set var_AC = var_B0(CInt(0))
  loc_F64EFC: Call 0.Method_CmdCustInfo_UnknownEvent_90 ()
  loc_F64F17: var_88.tPhoneNo = Trim(CVar(var_B0))
  loc_F64F30: Set var_AC = var_B0(CInt(1))
  loc_F64F36: Call 0.Method_CmdCustInfo_UnknownEvent_90 ()
  loc_F64F51: var_88.tCustName = Trim(CVar(var_B0))
  loc_F64F6A: Set var_AC = var_B0(CInt(2))
  loc_F64F70: Call 0.Method_CmdCustInfo_UnknownEvent_90 ()
  loc_F64F8B: var_88.tAddress1 = Trim(CVar(var_B0))
  loc_F64FA4: Set var_AC = var_B0(CInt(3))
  loc_F64FAA: Call 0.Method_CmdCustInfo_UnknownEvent_90 ()
  loc_F64FC5: var_88.tAddress2 = Trim(CVar(var_B0))
  loc_F64FD6: Call var_88.SetOnLineCustDetail
  loc_F64FDC: var_98 = 1
  loc_F64FE8: Call var_88.Show
  loc_F64FF0: Set var_88 = Nothing 
  loc_F64FF4: Exit Sub
End Sub

Public Sub CmdDiscType_UnknownEvent_9(Index As Integer) '11D9130
  'Data Table: 5B2100
  Dim var_8C As Integer
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_B8 As String
  Dim var_88 As Recordset15
  Dim var_D0 As Variant
  Dim var_DC As TextBox
  Dim var_D4 As TextBox
  Dim var_B0 As Variant
  loc_11D8CCB: var_8C = Index
  loc_11D8CD4: If (var_8C = 0) Then
  loc_11D8CE3:   Me.FrameQty.Visible = True
  loc_11D8CF8:   Me.LblIndex.Caption = vbNullString
  loc_11D8D0D:   Me.LblIndex.Tag = vbNullString
  loc_11D8D22:   Me.LblVtype.Caption = "Bill Discount"
  loc_11D8D37:   Me.LblVtype.Tag = vbNullString
  loc_11D8D4C:   Me.TxtQty.Text = vbNullString
  loc_11D8D61:   Me.TxtQty.Tag = vbNullString
  loc_11D8D75:   Me.FrameGrpItem.Enabled = False
  loc_11D8D80: Else
  loc_11D8D86:   If (var_8C = 1) Then
  loc_11D8D89:     Call Proc_258_167_10D7F60(var_8C)
  loc_11D8D9D:     (CDbl(12045)).Left = 
  loc_11D8DB4:     (CDbl(3675)).Top = 
  loc_11D8DC8:     Me.FrDiscType.Visible = False
  loc_11D8DDC:     (&HFF).Visible = 
  loc_11D8DF4:     (0).ZOrder 
  loc_11D8E08:     Me.FrameGrpItem.Enabled = False
  loc_11D8E13:   Else
  loc_11D8E19:     If (var_8C = 2) Then
  loc_11D8E28:       Me.FrameQty.Visible = True
  loc_11D8E3D:       Me.LblIndex.Caption = vbNullString
  loc_11D8E52:       Me.LblIndex.Tag = vbNullString
  loc_11D8E67:       Me.LblVtype.Caption = "Item Discount"
  loc_11D8E7C:       Me.LblVtype.Tag = vbNullString
  loc_11D8E91:       Me.TxtQty.Text = vbNullString
  loc_11D8EA6:       Me.TxtQty.Tag = vbNullString
  loc_11D8EB4:       Set var_90 = Me.FrameGrpItem
  loc_11D8EBA:       var_90.Enabled = False
  loc_11D8EC5:     Else
  loc_11D8ECB:       If (var_8C = 3) Then
  loc_11D8ED7:         RsTouchScreenSteward.pOpenAs = "Member"
  loc_11D8EEF:         Call 0.Method_arg_2B0 (1)
  loc_11D8F0F:         var_B8 = "Select Name,CardNo,Discount From SubGroup where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And SubCode='"
  loc_11D8F26:         RsTouchScreenSteward.Connection15.Execute var_B8 & MemVar_1F92230 & "'", var_D0, -1
  loc_11D8F31:         Set var_88 = var_90
  loc_11D8F54:         var_90 = var_88.Fields
  loc_11D8F5C:         var_D4 = var_90.Item("Name")
  loc_11D8F7B:         Set var_D8 = var_DC(CInt(&HD))
  loc_11D8F81:         Call 0.Method_CmdDiscType_UnknownEvent_90 (Proc_6_38_E68A98(CVar(var_D4), var_90))
  loc_11D8F89:         var_DC.Text = var_B0
  loc_11D8FAB:         Set var_90 = var_D4(CInt(&HD))
  loc_11D8FB1:         Call 0.Method_CmdDiscType_UnknownEvent_90 (MemVar_1F92230)
  loc_11D8FB9:         var_D4.Tag = 
  loc_11D8FFB:         Set var_D8 = var_DC(CInt(&HF))
  loc_11D9001:         Call 0.Method_CmdDiscType_UnknownEvent_90 (Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo"))))
  loc_11D9009:         var_DC.Text = 
  loc_11D9026:         Set var_90 = 1(var_8A)
  loc_11D9042:         For var_E0 =  To CInt((CLng(FrameGrpItem.DispID_4) - 1)):        = var_E0 'Integer
  loc_11D904C:           var_A0 = CVar(CLng(var_8A)) 'Long
  loc_11D9063:           Set var_90 = CVar(CLng(&HE))("0.00")
  loc_11D9069:           LateIdCallSt
  loc_11D9089:           Set var_90 = CVar(CLng(var_8A))(CVar(CLng(&H13)))
  loc_11D90AB:           If (CStr(FrameGrpItem.DispID_41) = "Y") Then
  loc_11D90E5:             Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("Discount")), CVar(CLng(&HE)))
  loc_11D90F6:             Set var_D8 = CVar(CLng(var_8A))(CVar(CStr(var_130)))
  loc_11D90FC:             LateIdCallSt
  loc_11D9114:           End If
  loc_11D9117:         Next var_E0 'Integer
  loc_11D9121:         Call Proc_258_158_190485C(&H32)
  loc_11D9126:       End If
  loc_11D9126:     End If
  loc_11D9126:   End If
  loc_11D9126: End If
  loc_11D912B: Set var_88 = Nothing
  loc_11D912E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0CAE8
  'Data Table: 5B2100
  loc_E0CAD9: Call FGrid_UnknownEvent_C()
  loc_E0CAE3: global_202 = 0
  loc_E0CAE6: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'E994F4
  'Data Table: 5B2100
  Dim var_A0 As Long
  loc_E99478: Set var_88 = Me.TopCtrl1
  loc_E9947E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_E99497: If (CStr() = "Browse") Then
  loc_E9949A:   Exit Sub
  loc_E9949B: End If
  loc_E9949F: Set var_88 = ()
  loc_E994A5: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_E994AE: var_A0 = CLng()
  loc_E994BE: If (var_A0 = CLng(4)) Then
  loc_E994C1:   GoTo loc_E994DB
  loc_E994C4: End If
  loc_E994CB: If (var_A0 = CLng(2)) Then
  loc_E994CE:   GoTo loc_E994DB
  loc_E994D1: End If
  loc_E994D8: If (var_A0 = CLng(7)) Then
  loc_E994DB:   ' Referenced from: E994CE
  loc_E994DB:   ' Referenced from: E994C1
  loc_E994DB: End If
  loc_E994E5: If (CLng(Index) <> &HD) Then
  loc_E994ED:   global_202 = &HFF
  loc_E994F0: End If
  loc_E994F0: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_E(Index As Integer) 'E52108
  'Data Table: 5B2100
  loc_E520DA: If (Index = 1) Then
  loc_E520E1:   Set var_88 = ()
  loc_E520E7:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8()
  loc_E520F3:   global_60 = CLng()
  loc_E52103:   global_64 = CLng(arg_18)
  loc_E52106: End If
  loc_E52106: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_F(Index As Integer) 'F2C8DC
  'Data Table: 5B2100
  Dim var_A8 As Variant
  loc_F2C7D2: If (Index = 1) Then
  loc_F2C7EE:   If (CDbl(Abs(((arg_18 - CDbl(global_64)) / CDbl(global_68)))) >= CDbl(1)) Then
  loc_F2C7FD:     If (CDbl(arg_18) > CDbl(global_64)) Then
  loc_F2C804:       Set var_88 = ()
  loc_F2C80A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8()
  loc_F2C81F:       If (CLng() > 1) Then
  loc_F2C826:         Set var_88 = ()
  loc_F2C82C:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8()
  loc_F2C83B:         var_A8 = CVar((CLng() - 1)) 'Long
  loc_F2C844:         Set var_BC = (var_A8)
  loc_F2C84A:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8()
  loc_F2C859:       End If
  loc_F2C85C:     Else
  loc_F2C860:       Set var_88 = ()
  loc_F2C866:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8()
  loc_F2C879:       Set var_BC = ((CLng() + 1))
  loc_F2C87F:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_F2C897:       If ( < CLng()) Then
  loc_F2C89E:         Set var_88 = ()
  loc_F2C8A4:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8()
  loc_F2C8B3:         var_A8 = CVar((CLng() + 1)) 'Long
  loc_F2C8BC:         Set var_BC = (var_A8)
  loc_F2C8C2:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8()
  loc_F2C8D1:       End If
  loc_F2C8D1:     End If
  loc_F2C8D8:     global_64 = CLng(arg_18)
  loc_F2C8DB:   End If
  loc_F2C8DB: End If
  loc_F2C8DB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 '10268DC
  'Data Table: 5B2100
  Dim var_88 As Variant
  Dim var_F4 As Long
  loc_10266BD: Me.TxtQty.Text = vbNullString
  loc_10266D2: Me.TxtQty.Tag = vbNullString
  loc_10266E7: Me.LblVtype.Caption = vbNullString
  loc_10266F3: Set var_88 = Me.TopCtrl1
  loc_10266F9: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1026712: If (CStr() = "Browse") Then
  loc_1026715:   Exit Sub
  loc_1026716: End If
  loc_102671A: Set var_88 = ()
  loc_1026720: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_102673A: Set var_E0 = CVar(CLng())(CVar(CLng(&HB)))
  loc_1026740: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1026764: If (CStr() = vbNullString) Then
  loc_1026767:   Exit Sub
  loc_1026768: End If
  loc_102676C: Set var_88 = ()
  loc_1026772: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_102678C: Set var_E0 = CVar(CLng())(CVar(CLng(0)))
  loc_1026792: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_10267B6: If (CStr() = vbNullString) Then
  loc_10267B9:   Exit Sub
  loc_10267BA: End If
  loc_10267BE: Set var_88 = ()
  loc_10267C4: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_10267CD: var_F4 = CLng()
  loc_10267DD: If (var_F4 = CLng(7)) Then
  loc_10267ED:   Me.TxtQty.Text = vbNullString
  loc_1026806:   Me.TxtQty.Tag = CStr(2)
  loc_102681E:   Me.LblVtype.Caption = "Qty"
  loc_1026829: Else
  loc_1026830:   If (var_F4 = CLng(8)) Then
  loc_1026837:     Set var_88 = (var_F4)
  loc_1026857:     Set var_E0 = CVar(CLng(LblVtype.DispID_A))(CVar(CLng(&H19)))
  loc_1026890:     If (Ucase(CVar(CStr(LblVtype.DispID_41))) = "Y") Then
  loc_10268A0:       Me.TxtQty.Text = vbNullString
  loc_10268B9:       Me.TxtQty.Tag = CStr(3)
  loc_10268D1:       Me.LblVtype.Caption = "Rate"
  loc_10268D9:     End If
  loc_10268D9:   End If
  loc_10268D9: End If
  loc_10268D9: Exit Sub
End Sub

Private Sub CmdDisc_UnknownEvent_9 'EECBE8
  'Data Table: 5B2100
  loc_EECB3D:  = (Me.FrDiscType.Visible = &HFF)(var_92).Visible
  loc_EECB50: If ( Or (var_92 = &HFF)) Then
  loc_EECB5F:   (0).Visible = 
  loc_EECB73:   Me.FrDiscType.Visible = False
  loc_EECB87:   Me.FrameGrpItem.Enabled = True
  loc_EECB92: Else
  loc_EECB9E:   (0).Visible = 
  loc_EECBB2:   Me.FrDiscType.Visible = True
  loc_EECBCA:   Me.FrDiscType.ZOrder 0
  loc_EECBDE:   Me.FrameGrpItem.Enabled = False
  loc_EECBE6: End If
  loc_EECBE6: Exit Sub
End Sub

Private Sub CmdFSundry_UnknownEvent_9 '10F9C3C
  'Data Table: 5B2100
  Dim var_8C As Variant
  Dim var_94 As String
  Dim var_98 As Variant
  Dim var_A4 As Label
  Dim var_90 As String
  Dim var_108 As Double
  Dim var_A8 As TextBox
  loc_10F992C: Me.FrameQty.Visible = True
  loc_10F9941: Me.LblIndex.Caption = "0"
  loc_10F9959: If (UBound(global_404, 1) > 0) Then
  loc_10F997C:   var_94 = CStr((Val(Me.LblIndex.Caption) + CDbl(1)))
  loc_10F9989:   Me.LblIndex.Caption = var_94
  loc_10F99A8:   Set var_8C = var_86(var_9A)
  loc_10F99AE:   Call 0.Method_CmdFSundry_UnknownEvent_98 (1)
  loc_10F99B9:   For var_9E =  To var_9A:  = var_9E 'Integer
  loc_10F99CC:     var_90 = Me.LblIndex.Caption
  loc_10F99EE:     Set var_98 = var_A4(var_86)
  loc_10F99F4:     Call 0.Method_CmdFSundry_UnknownEvent_90 (var_94)
  loc_10F99FC:     global_404(CLng(Val(var_90))) = var_A4.Tag
  loc_10F9A16:     If ( = var_94) Then
  loc_10F9A26:       Set var_8C = var_98(var_86)
  loc_10F9A2C:       Call 0.Method_CmdFSundry_UnknownEvent_90 (var_90)
  loc_10F9A34:        = var_98.Caption
  loc_10F9A46:       Me.LblVtype.Caption = var_90
  loc_10F9A69:       Me.LblVtype.Tag = CStr(var_86)
  loc_10F9A9A:       Set var_98 = Me.TxtQty
  loc_10F9AA0:       var_98.Tag = global_408(CLng(Val(Me.LblIndex.Caption)))
  loc_10F9ABC:       var_90 = Me.TxtQty.Tag
  loc_10F9ACF:       If (var_90 = "P") Then
  loc_10F9ADF:         Set var_8C = var_98(var_86)
  loc_10F9AE5:         Call 0.Method_CmdFSundry_UnknownEvent_90 (var_90)
  loc_10F9AED:          = var_98.Text
  loc_10F9AFA:         var_108 = Val(var_90)
  loc_10F9B0A:         Set var_A4 = var_A8(var_86)
  loc_10F9B10:         Call 0.Method_CmdFSundry_UnknownEvent_90 (var_94)
  loc_10F9B53:         Me.TxtQty.Text = CStr(IIf((CDbl(var_A8.Text) > CDbl(0)), CVar(var_94), vbNullString))
  loc_10F9B7A:       Else
  loc_10F9B87:         Set var_8C = var_98(var_86)
  loc_10F9B8D:         Call 0.Method_CmdFSundry_UnknownEvent_90 (var_90)
  loc_10F9B95:          = var_98.Text
  loc_10F9BA2:         var_108 = Val(var_90)
  loc_10F9BB2:         Set var_A4 = var_A8(var_86)
  loc_10F9BB8:         Call 0.Method_CmdFSundry_UnknownEvent_90 (var_94)
  loc_10F9BFB:         Me.TxtQty.Text = CStr(IIf((CDbl(var_A8.Text) > CDbl(0)), CVar(var_94), vbNullString))
  loc_10F9C1F:       End If
  loc_10F9C1F:     End If
  loc_10F9C22:   Next var_9E 'Integer
  loc_10F9C33:   Me.FrameGrpItem.Enabled = False
  loc_10F9C3B: End If
  loc_10F9C3B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '122B8C0
  'Data Table: 5B2100
  Dim var_98 As String
  Dim var_A4 As Variant
  Dim var_114 As Double
  Dim var_108 As String
  Dim unk_5B213D As Connection15
  Dim var_90 As Recordset15
  Dim var_9C As Variant
  Dim var_B4 As Variant
  Dim var_11C As Variant
  Dim var_130 As TextBox
  Dim Me As Recordset15
  Dim var_12C As Integer
  Dim var_13C As TextBox
  loc_122B3D8: On Error Goto loc_122B8B7
  loc_122B3FE: Call Proc_258_148_1079CA0(Proc_5_1_100CB50("ADD", Me))
  loc_122B409: Call Proc_258_133_121F3D8(global_116)
  loc_122B40E: Call Proc_258_147_10E7154()
  loc_122B426: Set var_9C = var_A4(CInt(1))
  loc_122B42C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CStr(MemVar_1F920EC))
  loc_122B434: var_A4.Text = 
  loc_122B483: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CStr(Format(Time, "hh:nn")), 1)
  loc_122B48B: var_A4.Text = 1
  loc_122B4A6: var_B4 = Time
  loc_122B4BA: var_D4 = "HH:MM"
  loc_122B501: var_88 = Replace(CStr(Left(CVar(CStr(Format(var_B4, var_D4))), 5)), ":", ".", 1, -1, 0)
  loc_122B51E: var_114 = Val(var_88)
  loc_122B54A: unk_5B213D.Execute "Select Name From SessionMast WHERE " & CStr(var_114) & " BETWEEN FromTime AND ToTime", var_B4, -1
  loc_122B555: Set var_90 = var_A4(CInt(5))
  loc_122B57B: If (var_90.RecordCount > 0) Then
  loc_122B58D:   var_9C = var_90.Fields
  loc_122B595:   var_A4 = var_9C.Item("Name")
  loc_122B59D:   var_B4 = CVar(var_A4) 'Address
  loc_122B5A6:   var_98 = Proc_6_38_E68A98(var_B4, var_9C, var_114)
  loc_122B5B3:   1(var_98).Caption = 1
  loc_122B5C5: End If
  loc_122B5D1: Set var_9C = (CVar(CLng(3)))
  loc_122B5E5: Call Proc_258_151_10E8580(MemVar_1F92044, var_98)
  loc_122B5F8: Set var_9C = var_A4(CInt(2))
  loc_122B5FE: Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_98)
  loc_122B623: Set var_9C = var_A4(CInt(1))
  loc_122B629: Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_98)
  loc_122B631:  = FrameGrpItem.DispID_B
  loc_122B63F: Call Proc_258_157_1BC1384(CDate(var_98))
  loc_122B65C: Set var_9C = var_A4(CInt(&HD))
  loc_122B662: Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_9E)
  loc_122B66A:  = var_A4.Visible
  loc_122B683: Set var_11C = var_130(CInt(&HD))
  loc_122B689: Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_132)
  loc_122B691: (var_9E = &HFF) = var_130.Enabled
  loc_122B6A8: If ( And (var_132 = &HFF)) Then
  loc_122B6B6:   Set var_9C = var_A4(CInt(&HD))
  loc_122B6BC:   Call 0.Method_TopCtrl1_UnknownEvent_A0 ()
  loc_122B6C4:   var_A4.SetFocus
  loc_122B6D3: Else
  loc_122B6E1:   Set var_9C = var_A4(CInt(3))
  loc_122B6E7:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_9E)
  loc_122B6EF:    = var_A4.Visible
  loc_122B708:   Set var_11C = var_130(CInt(3))
  loc_122B70E:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_132)
  loc_122B716:   (var_9E = &HFF) = var_130.Enabled
  loc_122B72D:   If ( And (var_132 = &HFF)) Then
  loc_122B73B:     Set var_9C = var_A4(CInt(3))
  loc_122B741:     Call 0.Method_TopCtrl1_UnknownEvent_A0 ()
  loc_122B749:     var_A4.SetFocus
  loc_122B758:   Else
  loc_122B75C:     Set var_9C = ()
  loc_122B76D:   End If
  loc_122B76D: End If
  loc_122B778: If (global_188 <> "FAST") Then
  loc_122B786:   Me.Requery -1
  loc_122B78B: End If
  loc_122B796: If (global_188 <> "FAST") Then
  loc_122B7A4:   Me.Requery -1
  loc_122B7A9: End If
  loc_122B7BD: If (RSTouchScreenSaleBill.OpenMode = 1) Then
  loc_122B7C6:   var_12C = 0
  loc_122B7ED:   var_108 = "SELECT ISNULL(MAX(GUARATT),1) FROM KOT WHERE RestCode='" & global_76 & "' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y' AND ROOMNO='"
  loc_122B807:   unk_5B213D.Execute var_108 & global_324 & "'", var_B4, -1
  loc_122B80F:   var_9C = var_9C.Fields
  loc_122B817:   var_12C = var_A4.Item(var_A4)
  loc_122B81F:   var_11C = var_11C.Value
  loc_122B836:   Set var_130 = var_13C(CInt(4))
  loc_122B83C:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CStr(var_D4), var_D4)
  loc_122B844:   var_13C.Text = FrameGrpItem.DispID_8001
  loc_122B87B:   Set var_9C = var_A4(CInt(3))
  loc_122B881:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (global_324)
  loc_122B889:   var_A4.Text = 
  loc_122B8A1:   Call Txt_Validate(CInt(3))
  loc_122B8A6: End If
  loc_122B8AB: Set var_94 = Nothing
  loc_122B8B3: Set var_90 = Nothing
  loc_122B8B6: Exit Sub
  loc_122B8B7: ' Referenced from: 122B3D8
  loc_122B8B7: Proc_6_60_E62BC4(0)
  loc_122B8BC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA5590
  'Data Table: 5B2100
  loc_EA5514: On Error Goto loc_EA558A
  loc_EA554E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA5574:   Call Proc_258_148_1079CA0(Proc_5_1_100CB50("INI", Me))
  loc_EA557F:   Call Proc_258_145_1BA10F4(global_116)
  loc_EA5584:   Call Proc_258_133_121F3D8()
  loc_EA5589: End If
  loc_EA5589: Exit Sub
  loc_EA558A: ' Referenced from: EA5514
  loc_EA558A: Proc_6_60_E62BC4()
  loc_EA558F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12C69A8
  'Data Table: 5B2100
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_124 As Variant
  Dim unk_5B213D As Connection15
  Dim var_FC As Variant
  Dim var_128 As String
  Dim var_11C As Variant
  loc_12C6368: On Error Goto loc_12C6958
  loc_12C63A2: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_11C) = 6) Then
  loc_12C63B6:   var_94 = Me.Bookmark 'Variant
  loc_12C63C2:   If (MemVar_1F921A8 = "Outlet") Then
  loc_12C63F7:     var_138 = "Settlement"
  loc_12C643F:     If (Proc_6_108_1010FEC(MemVar_1F92044, "PayCharge", "DocID", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_12C6442:       Exit Sub
  loc_12C6443:       ' Referenced from: 12C64ED
  loc_12C6443:     End If
  loc_12C6443:   End If
  loc_12C6447:   Set var_140 = New RsTouchScreenKeyBoard
  loc_12C6455:   var_140.ParentForm = CVar(Me)
  loc_12C6462:   var_140.CAPTION = "Please Specify, Reason of Deletion ?"
  loc_12C6474:   var_140.TxtKeyBoard.MaxLength = 150
  loc_12C647B:   var_AC = 1
  loc_12C6487:   Call var_140.Show
  loc_12C6498:   var_9C = TxtKeyBoard
  loc_12C64B9:   If (Trim(var_9C) = vbNullString) Then
  loc_12C64DD:     MsgBox("Please Enter a Valid Reason for Deletion.", 0, "Void Reason", var_FC, var_11C)
  loc_12C64ED:     GoTo loc_12C6443
  loc_12C64F0:   End If
  loc_12C64F2:   Set var_140 = Nothing 
  loc_12C64FF:   unk_5B213D.BeginTrans var_134
  loc_12C650C:   If (MemVar_1F921A8 = "Room Service") Then
  loc_12C6565:     unk_5B213D.Execute CStr("DELETE FROM PAYCHARGE WHERE dOCID='" & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_12C6581:   End If
  loc_12C65D7:   unk_5B213D.Execute CStr("Update KOT set delflag='Y' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_12C6649:   unk_5B213D.Execute CStr("Update Stock set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_12C66DD:   var_11C = "Update Sale1 set delflag='D',Remark='" & Left(Trim(var_9C), &H19) & "',U_name='" 
  loc_12C670B:   unk_5B213D.Execute CStr(var_11C & Trim(MemVar_1F920C8) & "',U_AE='E' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_1F4, -1
  loc_12C678B:   unk_5B213D.Execute CStr("Update Sale2 set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_12C67D6:   var_124 = Me.Fields.Item("SearchCode")
  loc_12C67F3:   var_128 = CStr("Update SunTran set delflag='D' where docid='" & var_124.Value & "'")
  loc_12C67FD:   unk_5B213D.Execute var_128, var_11C, -1
  loc_12C6827:   Set var_120 = var_124(CInt(&HB))
  loc_12C682D:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (var_128, var_144, var_144, var_144, var_144)
  loc_12C6835:   var_144 = var_124.Tag
  loc_12C684C:   If (var_128 <> vbNullString) Then
  loc_12C6897:     var_FC = "update packingorderdetail set contradocid='' ,ContraSno=0 where contradocid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12C689B:     var_128 = CStr(var_FC)
  loc_12C68A5:     unk_5B213D.Execute var_128, var_11C, -1
  loc_12C68C1:   End If
  loc_12C68C7:   unk_5B213D.CommitTrans
  loc_12C68D7:   Me.Requery -1
  loc_12C68F7:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12C6904:     Me.Bookmark = var_94
  loc_12C690C:   Else
  loc_12C6920:     If (Me.EOF = 0) Then
  loc_12C6929:       Me.MoveLast
  loc_12C692E:     End If
  loc_12C692E:   End If
  loc_12C692E:   Call Proc_258_145_1BA10F4(var_144, var_144)
  loc_12C694F:   Proc_5_0_110649C(&HFF, Me, global_116)
  loc_12C6957: End If
  loc_12C6957: Exit Sub
  loc_12C6958: ' Referenced from: 12C6368
  loc_12C695E: unk_5B213D.RollbackTrans
  loc_12C696B: Set var_120 = Err()
  loc_12C6971: Call 0.Method_arg_2C (var_128, 0)
  loc_12C6992: MsgBox(CVar(var_128), &H10, " Deletion Message", var_FC, var_11C)
  loc_12C69A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA6A78
  'Data Table: 5B2100
  Dim var_94 As TextBox
  Dim var_AC As Variant
  Dim var_88 As String
  Dim var_8C As Frame
  Dim TopCtrl1_UnknownEvent_D2 As Variant
  loc_FA68EC: On Error Goto loc_FA6A72
  loc_FA6904: var_88 = "EDIT"
  loc_FA6912: Call Proc_258_148_1079CA0(Proc_5_1_100CB50(var_88, Me))
  loc_FA691D: Call Proc_258_133_121F3D8(global_116)
  loc_FA692F: Set var_8C = var_94(CInt(0))
  loc_FA6935: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0)
  loc_FA693D: var_94.Enabled = 
  loc_FA6956: Set var_8C = var_94(CInt(1))
  loc_FA695C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0)
  loc_FA6964: var_94.Enabled = 
  loc_FA697D: Set var_8C = var_94(CInt(3))
  loc_FA6983: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0)
  loc_FA698B: var_94.Enabled = 
  loc_FA69A5: Set var_8C = var_94(CInt(1))
  loc_FA69AB: Call 0.Method_TopCtrl1_UnknownEvent_D0 (var_88)
  loc_FA69B3:  = var_94.Text
  loc_FA69C1: Call Proc_258_157_1BC1384(CDate(var_88))
  loc_FA69DC: Set var_8C = (CVar(CLng(3)))
  loc_FA69EE: Set var_8C = (FrameGrpItem.DispID_B)
  loc_FA6A03: var_AC = CVar((CLng(FrameGrpItem.DispID_4) - 1)) 'Long
  loc_FA6A14: Set var_94 = CVar(CLng(3))(CVar(CLng(&HB)))
  loc_FA6A3E: If (CStr(FrameGrpItem.DispID_41) <> vbNullString) Then
  loc_FA6A51:   TopCtrl1_UnknownEvent_D2 = (vbNullString).Name
  loc_FA6A5C: End If
  loc_FA6A60: Set var_8C = (TopCtrl1_UnknownEvent_D2)
  loc_FA6A71: Exit Sub
  loc_FA6A72: ' Referenced from: FA68EC
  loc_FA6A72: Proc_6_60_E62BC4(FrameGrpItem.DispID_8001)
  loc_FA6A77: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E6ABC0
  'Data Table: 5B2100
  loc_E6AB79: Me.Global.Unload Me
  loc_E6ABA0: If (Not((ParentForm Is Nothing)) And (global_240 <> "Y")) Then
  loc_E6ABB7:   Me.Global.Unload ParentForm
  loc_E6ABBF: End If
  loc_E6ABBF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F '1027030
  'Data Table: 5B2100
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_10C As String
  Dim var_110 As String
  Dim var_E8 As Variant
  Dim var_118 As String
  Dim unk_5B213D As Connection15
  Dim var_120 As Recordset15
  Dim var_124 As Fields15
  Dim var_128 As Field20
  Dim var_108 As Variant
  Dim var_138 As Variant
  Dim MemVar_1F920E4 As String
  Dim var_C8 As Variant
  Dim var_F8 As Integer
  loc_1026E24: On Error Goto loc_1027028
  loc_1026E3E: If (Me.RecordCount <= 0) Then
  loc_1026E4C:   var_C8 = "Information"
  loc_1026E5C:   var_A8 = "No Records To Search."
  loc_1026E62:   MsgBox(var_A8, &H40, var_C8, var_E8, var_108)
  loc_1026E72:   Exit Sub
  loc_1026E73: End If
  loc_1026E86: If (PRemark = "Unsettled") Then
  loc_1026E90:   var_10C = "Select S.DocId as SearchCode,S.VNo as [No] ,Convert(Varchar(11),S.VDate,106) as [Date],s.RoomNo as TableNo From ((Sale1 S INNER JOIN VOUCHER_TYPE V ON " & "(S.VTYPE=V.V_TYPE AND S.LOGSITE_CODE=V.LOGSITE_CODE)) LEFT JOIN PayCharge ON S.DocId = PayCharge.DocId) WHERE "
  loc_1026EA5:   var_E8 = CVar(var_10C & "S.LOGSITE_CODE='" & MemVar_1F92078 & "' AND IsNULL(PayCharge.DocId,'')='' And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='") 'String
  loc_1026EAE:   var_B8 = 0
  loc_1026ECE:   var_118 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_1026EDE:   unk_5B213D.Execute var_118 & "'", var_A8, -1
  loc_1026EE6:   var_120 = var_120.Fields
  loc_1026EEE:   var_B8 = var_124.Item(var_124)
  loc_1026EF6:   var_128 = var_128.Value
  loc_1026F07:   var_138 = var_C8 & var_C8 & "' ORDER BY S.DOCID" 
  loc_1026F0C:   MemVar_1F920E4 = CStr(var_138)
  loc_1026F36: Else
  loc_1026F3D:   var_10C = "Select  S.Docid as SearchCode,S.VNo as [No] ,Convert(Varchar(11),S.VDate,106) as [Date],s.RoomNo as TableNo " & "From (Sale1 S INNER Join Voucher_Type V On (S.VType= V.V_Type AND S.LOGSITE_CODE=V.LOGSITE_CODE)) "
  loc_1026F52:   Proc_6_7_F25D88(var_A8, MemVar_1F920EC, CVar(var_10C & "INNER Join Depart H on S.RestCode = H.Code Where S.VDate="))
  loc_1026F5E:   var_B8 = " And (S.DELFLAG='N' OR S.DELFLAG='') And V_Type='"
  loc_1026F63:   var_108 = MemVar_1F920E4 & var_A8 & var_B8 
  loc_1026F6D:   var_F8 = 0
  loc_1026F8D:   var_110 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_1026F9D:   unk_5B213D.Execute var_10C & "S.LOGSITE_CODE='" & "'", var_138, -1
  loc_1026FA5:   var_120 = var_120.Fields
  loc_1026FAD:   var_F8 = var_124.Item(var_124)
  loc_1026FB5:   var_128 = var_128.Value
  loc_1026FCB:   MemVar_1F920E4 = CStr(var_148 & var_148 & "' Order By S.docid")
  loc_1026FF4: End If
  loc_1026FFD: Proc_6_126_F1BCC0("1000,1500,1000", MemVar_1F920E4)
  loc_102700B: MemVar_1F92120 = Me
  loc_1027022: Call 0.Method_arg_2B0 (1, var_B8)
  loc_1027027: Exit Sub
  loc_1027028: ' Referenced from: 1026E24
  loc_1027028: Proc_6_60_E62BC4(var_108)
  loc_102702D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E32118
  'Data Table: 5B2100
  loc_E32108: Proc_5_0_110649C(&HFF, Me)
  loc_E32110: Call Proc_258_145_1BA10F4(global_116)
  loc_E32115: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E320B8
  'Data Table: 5B2100
  Dim var_7701 As Double
  loc_E320A8: Proc_5_0_110649C(&HFF, Me)
  loc_E320B0: Call Proc_258_145_1BA10F4(global_116)
  loc_E320B5: Exit Sub
  loc_E320B6: var_7701 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E321D8
  'Data Table: 5B2100
  Dim var_7701 As Double
  loc_E321C8: Proc_5_0_110649C(&HFF, Me)
  loc_E321D0: Call Proc_258_145_1BA10F4(global_116)
  loc_E321D5: Exit Sub
  loc_E321D6: var_7701 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E39978
  'Data Table: 5B2100
  Dim var_7701 As Double
  loc_E39968: Proc_5_0_110649C(&HFF, Me)
  loc_E39970: Call Proc_258_145_1BA10F4(global_116)
  loc_E39975: Exit Sub
  loc_E39976: var_7701 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'F65A24
  'Data Table: 5B2100
  Dim Me As Variant
  Dim var_88 As Variant
  loc_F658F8: Set var_88 = Me.TopCtrl1
  loc_F658FE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_F65917: If (CStr() = "Browse") Then
  loc_F6595A:   Call Proc_258_168_EB6494(CStr(Me.Fields.Item("SearchCode").Value), var_B2)
  loc_F65973:   If ((global_240 = "N") And (var_B2 = 0)) Then
  loc_F65976:     Exit Sub
  loc_F65977:   End If
  loc_F659C3:   Proc_260_20_1596180(global_76, CStr(Me.Fields.Item("SearchCode").Value))
  loc_F659D1:   global_236 = var_B8
  loc_F659F9:   If (global_236 = "Y") Then
  loc_F65A08:     global_236(0).Enabled = 0
  loc_F65A10:   End If
  loc_F65A13: Else
  loc_F65A18:   global_56 = &HFF
  loc_F65A1B:   Call TopCtrl1_UnknownEvent_16()
  loc_F65A20: End If
  loc_F65A20: Exit Sub
  loc_F65A21: ArrayRebase1Var
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E7D450
  'Data Table: 5B2100
  Dim Me As Recordset15
  loc_E7D3EF: If (global_188 <> "FAST") Then
  loc_E7D3FD:   Me.Requery -1
  loc_E7D402: End If
  loc_E7D40D: If (global_188 <> "FAST") Then
  loc_E7D41B:   Me.Requery -1
  loc_E7D420: End If
  loc_E7D42B: Me.Requery -1
  loc_E7D43B: If (global_196 = "Y") Then
  loc_E7D449:   Me.Requery -1
  loc_E7D44E: End If
  loc_E7D44E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1CA6C38
  'Data Table: 5B2100
  Dim var_98 As Variant
  Dim Me As Variant
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_1E0 As Variant
  Dim var_CC As Variant
  Dim var_220 As Variant
  Dim var_1C8 As String
  Dim unk_5B213D As Connection15
  Dim var_D0 As Variant
  Dim var_1C4 As Variant
  Dim var_22C As Variant
  Dim var_238 As Double
  Dim var_EC As Double
  Dim var_F4 As Variant
  Dim var_1F0 As Variant
  Dim var_AC As Variant
  Dim var_210 As Variant
  Dim var_250 As Variant
  Dim var_260 As Variant
  Dim var_270 As Variant
  Dim var_274 As String
  Dim var_228 As Variant
  Dim var_FC As Double
  Dim var_114 As Double
  Dim var_190 As Double
  Dim var_198 As Double
  Dim var_104 As Double
  Dim var_10C As Variant
  Dim var_124 As Double
  Dim var_12C As Double
  Dim var_144 As Double
  Dim var_11C As Double
  Dim var_134 As Double
  Dim var_13C As Double
  Dim var_14C As Double
  Dim var_154 As Double
  Dim var_180 As Double
  Dim var_188 As Double
  Dim var_230 As String
  Dim MemVar_1F920EC As Double
  Dim var_2CC As String
  Dim var_2D0 As String
  Dim var_2D4 As String
  Dim var_2A8 As Variant
  Dim var_160 As Recordset15
  Dim var_D2 As Variant
  Dim var_172 As Integer
  Dim var_328 As Variant
  Dim var_380 As Variant
  Dim var_3A8 As TextBox
  Dim var_470 As TextBox
  Dim var_4FC As Variant
  Dim var_4EC As Variant
  Dim var_544 As TextBox
  Dim var_D34 As Double
  Dim var_590 As TextBox
  Dim var_D3C As Double
  Dim var_860 As Variant
  Dim var_D44 As Double
  Dim var_8EC As TextBox
  Dim var_D4C As Double
  Dim var_9D8 As String
  Dim var_A70 As Variant
  Dim var_B3C As TextBox
  Dim var_B88 As TextBox
  Dim var_BD4 As TextBox
  Dim var_C20 As TextBox
  Dim var_C6C As TextBox
  Dim var_CB8 As TextBox
  Dim var_D54 As Double
  Dim var_300 As String
  Dim var_284 As Variant
  Dim var_294 As Variant
  Dim var_338 As Variant
  Dim var_348 As Variant
  Dim var_368 As Variant
  Dim var_378 As Variant
  Dim var_390 As Variant
  Dim var_3A0 As Variant
  Dim var_3C8 As Variant
  Dim var_3E8 As Variant
  Dim var_428 As Variant
  Dim var_468 As Variant
  Dim var_51C As Variant
  Dim var_53C As Variant
  Dim var_564 As Variant
  Dim var_584 As Variant
  Dim var_5B4 As Variant
  Dim var_5F4 As Variant
  Dim var_614 As Variant
  Dim var_634 As Variant
  Dim var_654 As Variant
  Dim var_694 As Variant
  Dim var_6B4 As Variant
  Dim var_6D4 As Variant
  Dim var_6F4 As Variant
  Dim var_734 As Variant
  Dim var_794 As Variant
  Dim var_7F4 As Variant
  Dim var_854 As Variant
  Dim var_950 As Variant
  Dim var_970 As Variant
  Dim var_A48 As Variant
  Dim var_A68 As Variant
  Dim var_AD4 As Variant
  Dim var_B14 As Variant
  Dim var_B80 As Variant
  Dim var_BE8 As Variant
  Dim var_C18 As Variant
  Dim var_C64 As Variant
  Dim var_CDC As Variant
  Dim var_3A4 As Variant
  Dim var_46C As TextBox
  Dim var_478 As TextBox
  Dim var_58C As TextBox
  Dim var_864 As String
  Dim var_85C As TextBox
  Dim var_8E8 As TextBox
  Dim var_4CC As Variant
  Dim var_50C As Variant
  Dim var_C70 As String
  Dim var_324 As TextBox
  Dim var_BD8 As String
  Dim var_C24 As String
  Dim var_CBC As String
  Dim var_DBC As String
  Dim var_118C As Double
  Dim var_E20 As String
  Dim var_1194 As Double
  Dim var_E84 As String
  Dim var_119C As Double
  Dim var_EE8 As String
  Dim var_11A4 As Double
  Dim var_11AC As Double
  Dim var_308 As String
  Dim var_30C As String
  Dim var_318 As String
  Dim var_320 As String
  Dim var_594 As String
  Dim var_A74 As String
  Dim var_B40 As String
  Dim var_9D4 As Variant
  Dim var_314 As String
  Dim var_8F0 As String
  Dim var_37C As TextBox
  Dim var_474 As Variant
  Dim var_4BC As Variant
  Dim var_858 As TextBox
  Dim var_1BE As Integer
  Dim var_1A0 As Recordset15
  Dim var_1A4 As Recordset15
  Dim var_A6C As Fields15
  Dim var_B8C As String
  loc_1CA0419: var_9C = Me.Fields.Item("MultiBillGeneration")
  loc_1CA043B: If (var_9C.Value = "Yes") Then
  loc_1CA0449:   If (global_284 = "Yes") Then
  loc_1CA044C:     Call Proc_258_153_1D6E8C4()
  loc_1CA0451:     Exit Sub
  loc_1CA0452:   End If
  loc_1CA0452: End If
  loc_1CA0452: On Error Goto loc_1CA6C1E
  loc_1CA0460: Set var_88 = var_9C(CInt(1))
  loc_1CA0466: Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA046E: var_1C8 = "Voucher Date"
  loc_1CA048F: If (Proc_6_27_EA565C(var_9C) = 0) Then
  loc_1CA0492:   Exit Sub
  loc_1CA0493: End If
  loc_1CA049E: If (global_240 <> "Y") Then
  loc_1CA04AC:   Set var_88 = var_9C(CInt(3))
  loc_1CA04B2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA04BA:   var_1C8 = "Table No"
  loc_1CA04DB:   If (Proc_6_27_EA565C(var_9C) = 0) Then
  loc_1CA04DE:     Exit Sub
  loc_1CA04DF:   End If
  loc_1CA04DF: End If
  loc_1CA04F8: Set var_88 = var_9C(CInt(&HB))
  loc_1CA04FE: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, (global_240 = "N"))
  loc_1CA051E: If ( And (var_9C.Tag <> vbNullString)) Then
  loc_1CA052C:   Set var_88 = var_9C(CInt(&HB))
  loc_1CA0532:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA053A:   var_1C8 = "Order No"
  loc_1CA055B:   If (Proc_6_27_EA565C(var_9C) = 0) Then
  loc_1CA055E:     Exit Sub
  loc_1CA055F:   End If
  loc_1CA055F: End If
  loc_1CA0566: Set var_88 = var_1C8(var_1CA)
  loc_1CA056C: Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA057F: Call TxtGt_Validate((var_1CA + 1))
  loc_1CA0592: Set var_88 = var_9C(CInt(0))
  loc_1CA0598: Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_1CA05A0: var_1C8 = "Voucher No"
  loc_1CA05C1: If (Proc_6_27_EA565C(var_9C) = 0) Then
  loc_1CA05C4:   Exit Sub
  loc_1CA05C5: End If
  loc_1CA05D0: Set var_88 = var_9C(CInt(5))
  loc_1CA05D6: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA05DE: var_1C8 = "KOT Time"
  loc_1CA05E7: Set var_1C4 = var_9C
  loc_1CA05FF: If (Proc_6_27_EA565C(var_1C4) = 0) Then
  loc_1CA0602:   Exit Sub
  loc_1CA0603: End If
  loc_1CA060E: If (global_76 = vbNullString) Then
  loc_1CA062A:   MsgBox("Open RestaurantChange Form ", 0, var_CC, var_1F0, var_210)
  loc_1CA063A:   Exit Sub
  loc_1CA063B: End If
  loc_1CA0650: Set var_88 = 1(CVar(CLng(4)))
  loc_1CA0656: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1C8)
  loc_1CA0661: var_CC = CVar(CStr()) 'String
  loc_1CA0667: var_1F0 = Trim(var_CC)
  loc_1CA0683: If (var_1F0 = vbNullString) Then
  loc_1CA0699:   var_AC = "No Item On First Row.."
  loc_1CA069F:   MsgBox(var_AC, 0, var_CC, var_1F0, var_210)
  loc_1CA06BC:   Set var_88 = (1)
  loc_1CA06C2:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_1CA06CE:   Set var_88 = ()
  loc_1CA06D4:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001()
  loc_1CA06DF:   Exit Sub
  loc_1CA06E0: End If
  loc_1CA06EB: If (global_304 = "Room Service") Then
  loc_1CA070B:   Proc_6_17_EAA2B0(var_AC, MemVar_1F92078, "Select RoomPayType From enviro WHERE LOGSITE_CODE=")
  loc_1CA0721:   unk_5B213D.Execute CStr(var_1F0 & var_AC), -1, var_88
  loc_1CA072C:   Set var_D0 = var_88
  loc_1CA0752:   If (var_D0.RecordCount > 0) Then
  loc_1CA0767:     var_88 = var_D0.Fields
  loc_1CA0799:     If (Proc_6_38_E68A98(var_88.Item(0).Value) = vbNullString) Then
  loc_1CA07B7:       var_AC = "Please define Room Payment Type From Enviro"
  loc_1CA07BD:       MsgBox(var_AC, &H40, "Aatithya", var_1F0, var_210)
  loc_1CA07CD:       Exit Sub
  loc_1CA07CE:     End If
  loc_1CA07CE:   End If
  loc_1CA07D1: Else
  loc_1CA07EE:   Proc_6_17_EAA2B0(var_AC, MemVar_1F92078, "Select CashPayType From enviro WHERE LOGSITE_CODE=")
  loc_1CA07FA:   var_1C8 = CStr(var_1F0 & var_AC)
  loc_1CA0804:   unk_5B213D.Execute var_1C8, -1, var_88
  loc_1CA080F:   Set var_D0 = var_88
  loc_1CA0835:   If (var_D0.RecordCount > 0) Then
  loc_1CA0867:     var_19C = Proc_6_38_E68A98(var_D0.Fields.Item(0).Value)
  loc_1CA087C:     If (var_19C = vbNullString) Then
  loc_1CA08A0:       MsgBox("Please define Cash Payment Type From Enviro", &H40, vbNullString, var_1F0, var_210)
  loc_1CA08B0:       Exit Sub
  loc_1CA08B1:     End If
  loc_1CA08B1:   End If
  loc_1CA08B1: End If
  loc_1CA08B8: Set var_88 = (var_1CA)
  loc_1CA08BE: Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA08D0: Set var_9C = var_1C4(var_1CA)
  loc_1CA08D6: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA08DE:  = var_1C4.Text
  loc_1CA08FC: If (CDbl(Val(var_1C8)) < CDbl(0)) Then
  loc_1CA0920:   MsgBox("Bill Can't be saved with Negative Net Amount.", &H10, "Net Amount", var_1F0, var_210)
  loc_1CA0930:   Exit Sub
  loc_1CA0931: End If
  loc_1CA093F: Set var_88 = var_9C(CInt(6))
  loc_1CA0945: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA094D:  = var_9C.Text
  loc_1CA0969: If (CDbl(Val(var_1C8)) <> CDbl(0)) Then
  loc_1CA0973:   Set var_1C4 = (var_1CA)
  loc_1CA0979:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA098B:   Set var_228 = var_22C(var_1CA)
  loc_1CA0991:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_230)
  loc_1CA0999:    = var_22C.Text
  loc_1CA09A6:   var_238 = Val(var_230)
  loc_1CA09B7:   Set var_88 = var_9C(CInt(6))
  loc_1CA09BD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA09EC:   If (CDbl(Val(var_1C8)) < CDbl(var_9C.Text)) Then
  loc_1CA0A10:     MsgBox("Please fully adjust the Bill", &H10, "Check Balance", var_1F0, var_210)
  loc_1CA0A2B:     Set var_88 = var_9C(CInt(6))
  loc_1CA0A31:     Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA0A39:     var_9C.SetFocus
  loc_1CA0A45:     Exit Sub
  loc_1CA0A46:   End If
  loc_1CA0A46: End If
  loc_1CA0A4F: Set var_88 = 1(var_DA)
  loc_1CA0A55: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1CA0A6B: For var_23C =  To CInt((CLng() - 1)):  = var_23C 'Integer
  loc_1CA0A86:   Set var_88 = CVar(CLng(var_DA))(CVar(CLng(&H11)))
  loc_1CA0A8C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA0AAD:   If (CDbl(Val(CStr())) > CDbl(0)) Then
  loc_1CA0AC5:     Set var_88 = CVar(CLng(var_DA))(CVar(CLng(&HA)))
  loc_1CA0ACB:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA0ADE:     var_238 = Val(CStr())
  loc_1CA0AE8:     var_EC = (var_EC + var_238)
  loc_1CA0AF7:   Else
  loc_1CA0B0C:     Set var_88 = CVar(CLng(var_DA))(CVar(CLng(&HA)))
  loc_1CA0B12:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_EC)
  loc_1CA0B2F:     var_F4 = (var_F4 + Val(CStr(var_238)))
  loc_1CA0B3B:   End If
  loc_1CA0B3E: Next var_23C 'Integer
  loc_1CA0B4F: Set var_88 = var_DA(var_1CA)
  loc_1CA0B55: Call 0.Method_TopCtrl1_UnknownEvent_168 (1)
  loc_1CA0B60: For var_240 =  To var_1CA:  = var_240 'Integer
  loc_1CA0B89:   var_1C8 = "Select IsNull(Max(Nature),'') from SundryType Where  LOGSITE_CODE='" & MemVar_1F92078
  loc_1CA0B90:   var_1F0 = CVar(var_1C8 & "' AND SundryCode='") 'String
  loc_1CA0BA0:   Set var_88 = var_9C(var_DA)
  loc_1CA0BA6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_230, var_1F0, var_284, -1, var_1C4)
  loc_1CA0BAE:   var_228 = var_9C.Tag
  loc_1CA0BB6:   var_AC = CVar(var_230) 'String
  loc_1CA0BBC:   var_CC = Trim(var_AC)
  loc_1CA0BF1:   unk_5B213D.Execute CStr(0 & var_CC & "' And V_Type='" & CVar(global_184) & "'"), var_22C, var_294
  loc_1CA0BF9:    = var_1C4.Fields
  loc_1CA0C01:    = var_228.Item()
  loc_1CA0C09:    = var_22C.Value
  loc_1CA0C45:   var_298 = Proc_6_38_E68A98(var_294)
  loc_1CA0C50:   If (var_298 = "Addition") Then
  loc_1CA0C60:     Set var_88 = var_9C(var_DA)
  loc_1CA0C66:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA0C6E:      = var_9C.Text
  loc_1CA0C85:     var_FC = (var_FC + Val(var_1C8))
  loc_1CA0C9F:     Set var_88 = var_9C(var_DA)
  loc_1CA0CA5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_FC)
  loc_1CA0CAD:     var_238 = var_9C.Text
  loc_1CA0CC4:     var_114 = (var_114 + Val(var_1C8))
  loc_1CA0CD4:   Else
  loc_1CA0CDC:     If (var_298 = "Advance") Then
  loc_1CA0CEC:       Set var_88 = var_9C(var_DA)
  loc_1CA0CF2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_114)
  loc_1CA0CFA:       var_238 = var_9C.Text
  loc_1CA0D11:       var_190 = (var_190 + Val(var_1C8))
  loc_1CA0D2B:       Set var_88 = var_9C(var_DA)
  loc_1CA0D31:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_190)
  loc_1CA0D39:       var_238 = var_9C.Text
  loc_1CA0D50:       var_198 = (var_198 + Val(var_1C8))
  loc_1CA0D60:     Else
  loc_1CA0D68:       If (var_298 = "Deduction") Then
  loc_1CA0D78:         Set var_88 = var_9C(var_DA)
  loc_1CA0D7E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_198)
  loc_1CA0D86:         var_238 = var_9C.Text
  loc_1CA0D9D:         var_104 = (var_104 + Val(var_1C8))
  loc_1CA0DB7:         Set var_88 = var_9C(var_DA)
  loc_1CA0DBD:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_104)
  loc_1CA0DC5:         var_238 = var_9C.Text
  loc_1CA0DDC:         var_10C = (var_10C + Val(var_1C8))
  loc_1CA0DEC:       Else
  loc_1CA0DF4:         If (var_298 = "Discount") Then
  loc_1CA0E04:           Set var_88 = var_9C(var_DA)
  loc_1CA0E0A:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_10C)
  loc_1CA0E12:           var_238 = var_9C.Text
  loc_1CA0E29:           var_124 = (var_124 + Val(var_1C8))
  loc_1CA0E43:           Set var_88 = var_9C(var_DA)
  loc_1CA0E49:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_124)
  loc_1CA0E51:           var_238 = var_9C.Text
  loc_1CA0E68:           var_12C = (var_12C + Val(var_1C8))
  loc_1CA0E78:         Else
  loc_1CA0E80:           If (var_298 = "Luxury Tax") Then
  loc_1CA0E90:             Set var_88 = var_9C(var_DA)
  loc_1CA0E96:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_12C)
  loc_1CA0E9E:             var_238 = var_9C.Text
  loc_1CA0EB5:             var_144 = (var_144 + Val(var_1C8))
  loc_1CA0ECF:             Set var_88 = var_9C(var_DA)
  loc_1CA0ED5:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_144)
  loc_1CA0EDD:             var_238 = var_9C.Text
  loc_1CA0EF4:             var_11C = (var_11C + Val(var_1C8))
  loc_1CA0F04:           Else
  loc_1CA0F0C:             If (var_298 = "Round Off") Then
  loc_1CA0F1C:               Set var_88 = var_9C(var_DA)
  loc_1CA0F22:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_11C)
  loc_1CA0F2A:               var_238 = var_9C.Text
  loc_1CA0F41:               var_134 = (var_134 + Val(var_1C8))
  loc_1CA0F5B:               Set var_88 = var_9C(var_DA)
  loc_1CA0F61:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_134)
  loc_1CA0F69:               var_238 = var_9C.Text
  loc_1CA0F80:               var_13C = (var_13C + Val(var_1C8))
  loc_1CA0F90:             Else
  loc_1CA0F98:               If (var_298 = "Sale Tax") Then
  loc_1CA0FA8:                 Set var_88 = var_9C(var_DA)
  loc_1CA0FAE:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_13C)
  loc_1CA0FB6:                 var_238 = var_9C.Text
  loc_1CA0FCD:                 var_144 = (var_144 + Val(var_1C8))
  loc_1CA0FE7:                 Set var_88 = var_9C(var_DA)
  loc_1CA0FED:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_144)
  loc_1CA0FF5:                 var_238 = var_9C.Text
  loc_1CA100C:                 var_11C = (var_11C + Val(var_1C8))
  loc_1CA101C:               Else
  loc_1CA1024:                 If (var_298 = "Service Charge") Then
  loc_1CA1034:                   Set var_88 = var_9C(var_DA)
  loc_1CA103A:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_11C)
  loc_1CA1042:                   var_238 = var_9C.Text
  loc_1CA1059:                   var_14C = (var_14C + Val(var_1C8))
  loc_1CA1073:                   Set var_88 = var_9C(var_DA)
  loc_1CA1079:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_14C)
  loc_1CA1081:                   var_238 = var_9C.Text
  loc_1CA1098:                   var_154 = (var_154 + Val(var_1C8))
  loc_1CA10A8:                 Else
  loc_1CA10B0:                   If (var_298 = "Service Tax") Then
  loc_1CA10C0:                     Set var_88 = var_9C(var_DA)
  loc_1CA10C6:                     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_154)
  loc_1CA10CE:                     var_238 = var_9C.Text
  loc_1CA10E5:                     var_180 = (var_180 + Val(var_1C8))
  loc_1CA10FF:                     Set var_88 = var_9C(var_DA)
  loc_1CA1105:                     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_180)
  loc_1CA110D:                     var_238 = var_9C.Text
  loc_1CA1124:                     var_188 = (var_188 + Val(var_1C8))
  loc_1CA1131:                   End If
  loc_1CA1131:                 End If
  loc_1CA1131:               End If
  loc_1CA1131:             End If
  loc_1CA1131:           End If
  loc_1CA1131:         End If
  loc_1CA1131:       End If
  loc_1CA1131:     End If
  loc_1CA1131:   End If
  loc_1CA1134: Next var_240 'Integer
  loc_1CA113C: var_E4 = vbNullString
  loc_1CA1142: Call Proc_258_146_112127C(var_1CA)
  loc_1CA114D: If (var_1CA = 0) Then
  loc_1CA1150:   Exit Sub
  loc_1CA1151: End If
  loc_1CA115C: Set var_88 = var_9C(0)
  loc_1CA1162: Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_1CA116A: var_9C.Visible = 
  loc_1CA1176: Call Proc_258_149_FD63A8()
  loc_1CA1189: Set var_88 = var_9C(CInt(1))
  loc_1CA118F: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA1197:  = var_9C.Text
  loc_1CA11B7: If (Proc_6_91_EF2D40(CDate(var_1C8)) = 0) Then
  loc_1CA11C5:   Set var_88 = var_9C(CInt(1))
  loc_1CA11CB:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA11D3:   var_9C.SetFocus
  loc_1CA11DF:   Exit Sub
  loc_1CA11E0: End If
  loc_1CA11E4: Set var_88 = Me.TopCtrl1
  loc_1CA11EA: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1CA1203: If (CStr() = "Add") Then
  loc_1CA120C:   var_BC = 0
  loc_1CA1229:   var_1C8 = "Select NCUR from enviro where Logsite_code='" & MemVar_1F92078
  loc_1CA1239:   unk_5B213D.Execute var_1C8 & "'", var_AC, -1
  loc_1CA1241:   var_88 = var_88.Fields
  loc_1CA1249:   var_BC = var_9C.Item(var_9C)
  loc_1CA1251:   var_1C4 = var_1C4.Value
  loc_1CA125B:   MemVar_1F920EC = CDate(var_CC)
  loc_1CA127B:   var_BC = 0
  loc_1CA12A2:   Set var_88 = var_9C(CInt(2))
  loc_1CA12A8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Select Count(*) From Sale1 Where DocID='", var_AC, -1, var_1C4, var_228)
  loc_1CA12B0:   var_BC = var_9C.Text
  loc_1CA12C9:   unk_5B213D.Execute var_22C & var_1C8 & "'", var_CC, MemVar_1F920EC
  loc_1CA12D9:    = var_228.Item()
  loc_1CA12E1:    = var_22C.Value
  loc_1CA130E:   If (var_1C4.Fields > 0) Then
  loc_1CA1317:     Call Proc_258_151_10E8580(MemVar_1F92044)
  loc_1CA132A:     Set var_88 = var_9C(CInt(2))
  loc_1CA1330:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA1338:     var_9C.Text = var_1C8
  loc_1CA1347:     Exit Sub
  loc_1CA1348:   End If
  loc_1CA134B: Else
  loc_1CA1370:   var_AC = Me.Fields.Item("DocID").Value
  loc_1CA137F:   global_156 = CStr(var_AC)
  loc_1CA1390: End If
  loc_1CA13A5: Set var_88 = 1(CVar(CLng(&HD)))
  loc_1CA13AB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA13CC: Set var_9C = 1(CVar(CLng(&HC)))
  loc_1CA13D2: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA13E5: var_238 = Val(CStr())
  loc_1CA141C: unk_5B213D.Execute "Select Waiter From KOT where DocID='" & CStr(var_AC) & "' And SNO =" & CStr(var_238), var_1F0, -1
  loc_1CA1427: Set var_D0 = var_1C4
  loc_1CA145F: If (var_D0.RecordCount > 0) Then
  loc_1CA1474:   var_88 = var_D0.Fields
  loc_1CA1484:   var_AC = var_88.Item(0).Value
  loc_1CA1493:   global_292 = CStr(var_AC)
  loc_1CA14A4: End If
  loc_1CA14AA: global_180 = vbNullString
  loc_1CA14B4: Call Proc_258_155_EA89BC(var_160, var_88)
  loc_1CA14BC: Set var_160 = var_88
  loc_1CA14C8: Set var_88 = 1(var_DA)
  loc_1CA14CE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_1C4)
  loc_1CA14E4: For var_2E8 =  To CInt((CLng(var_238) - 1)):  = var_2E8 'Integer
  loc_1CA14FF:   Set var_88 = CVar(CLng(var_DA))(CVar(CLng(4)))
  loc_1CA1505:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA151E:   var_220 = vbNullString
  loc_1CA153D:   Set var_9C = CVar(CLng(var_DA))(CVar(CLng(&HA)))
  loc_1CA1543:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(CVar(CStr())) <> var_220))
  loc_1CA157C:   If CBool( And (CDbl(Val(CStr())) <> CDbl(0))) Then
  loc_1CA1593:     If (var_160.RecordCount > 0) Then
  loc_1CA1599:       var_160.MoveFirst
  loc_1CA15A2:       var_98 = CVar(CLng(var_DA)) 'Long
  loc_1CA15B3:       Set var_88 = var_98(CVar(CLng(&HD)))
  loc_1CA15B9:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA1613:       var_160.Find "V_NO=" & CStr(Val(CStr(Trim(Right(CVar(CStr(var_AC)), 8))))), 0, 1
  loc_1CA163D:       If var_160.EOF Then
  loc_1CA164B:         var_160.AddNew var_98, var_BC
  loc_1CA1654:         var_98 = CVar(CLng(var_DA)) 'Long
  loc_1CA1665:         Set var_88 = var_98(CVar(CLng(&HD)))
  loc_1CA166B:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_220)
  loc_1CA16A2:         var_2A8 = CVar(Val(CStr(Trim(Right(CVar(CStr(var_AC)), 8))))) 'Double
  loc_1CA16B0:         var_160.Collect = "V_NO"
  loc_1CA16D1:         var_160.Update var_98, var_BC
  loc_1CA16D6:       End If
  loc_1CA16D9:     Else
  loc_1CA16E4:       var_160.AddNew var_98, var_BC
  loc_1CA16ED:       var_98 = CVar(CLng(var_DA)) 'Long
  loc_1CA16FE:       Set var_88 = var_98(CVar(CLng(&HD)))
  loc_1CA1704:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2A8)
  loc_1CA173B:       var_2A8 = CVar(Val(CStr(Trim(Right(CVar(CStr(var_AC)), 8))))) 'Double
  loc_1CA1749:       var_160.Collect = "V_NO"
  loc_1CA176A:       var_160.Update var_98, var_BC
  loc_1CA176F:     End If
  loc_1CA176F:   End If
  loc_1CA1772: Next var_2E8 'Integer
  loc_1CA177D: var_224 = var_160.RecordCount
  loc_1CA178B: If (var_224 > 0) Then
  loc_1CA1794:   var_160.Sort = "V_NO"
  loc_1CA179C:   var_160.MoveFirst
  loc_1CA17A1:   ' Referenced from: 1CA1893
  loc_1CA17A7:   var_1CA = var_160.EOF
  loc_1CA17B0:   If Not(var_1CA) Then
  loc_1CA17BE:     If (global_180 <> vbNullString) Then
  loc_1CA1813:       global_180 = CStr(Trim(CVar(global_180 & "," & CStr(var_160.Fields.Item("V_NO").Value))))
  loc_1CA1833:     Else
  loc_1CA184D:       var_9C = var_160.Fields.Item("V_NO")
  loc_1CA185F:       var_CC = CVar(CStr(var_9C.Value)) 'String
  loc_1CA1865:       var_1F0 = Trim(var_CC)
  loc_1CA186E:       var_1C8 = CStr(var_1F0)
  loc_1CA1874:       global_180 = var_1C8
  loc_1CA188B:     End If
  loc_1CA188E:     var_160.MoveNext
  loc_1CA1893:     GoTo loc_1CA17A1
  loc_1CA1896:   End If
  loc_1CA189F:   global_180 = global_180
  loc_1CA18A3: End If
  loc_1CA18A5: var_D2 = &HFF
  loc_1CA18B1: unk_5B213D.BeginTrans var_224
  loc_1CA18C1: var_AC = Ucase(MemVar_1F920C8)
  loc_1CA18D4: If (var_AC = "HTW_SYSTEM") Then
  loc_1CA18F5:   Set var_88 = var_9C(CInt(2))
  loc_1CA18FB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "DELETE FROM Sale1Log Where Docid= '", var_AC)
  loc_1CA1903:   -1 = var_9C.Text
  loc_1CA191C:   unk_5B213D.Execute var_1C4 & var_1C8 & "'", var_D2, 
  loc_1CA1954:   Set var_88 = var_9C(CInt(2))
  loc_1CA195A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "DELETE FROM Sale2Log Where Docid= '", var_AC)
  loc_1CA1962:   -1 = var_9C.Text
  loc_1CA197B:   unk_5B213D.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA19B3:   Set var_88 = var_9C(CInt(2))
  loc_1CA19B9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "DELETE FROM StockLog Where Docid= '", var_AC)
  loc_1CA19C1:   -1 = var_9C.Text
  loc_1CA19DA:   unk_5B213D.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA1A12:   Set var_88 = var_9C(CInt(2))
  loc_1CA1A18:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "DELETE FROM SunTranLog Where Docid= '", var_AC)
  loc_1CA1A20:   -1 = var_9C.Text
  loc_1CA1A39:   unk_5B213D.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA1A71:   Set var_88 = var_9C(CInt(2))
  loc_1CA1A77:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "DELETE FROM PayChargeLog Where Docid= '", var_AC)
  loc_1CA1A7F:   -1 = var_9C.Text
  loc_1CA1A98:   unk_5B213D.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA1AB5: Else
  loc_1CA1ABE:   If (global_436 = &HFF) Then
  loc_1CA1ADF:     Set var_88 = var_9C(CInt(2))
  loc_1CA1AE5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Insert into Sale1Log Select * from Sale1 Where Docid= '", var_AC)
  loc_1CA1AED:     -1 = var_9C.Text
  loc_1CA1B06:     unk_5B213D.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA1B3E:     Set var_88 = var_9C(CInt(2))
  loc_1CA1B44:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Insert into Sale2Log Select * from Sale2 Where Docid= '", var_AC)
  loc_1CA1B4C:     -1 = var_9C.Text
  loc_1CA1B65:     unk_5B213D.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA1B9D:     Set var_88 = var_9C(CInt(2))
  loc_1CA1BA3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Insert into StockLog Select * from Stock Where Docid= '", var_AC)
  loc_1CA1BAB:     -1 = var_9C.Text
  loc_1CA1BC4:     unk_5B213D.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA1BFC:     Set var_88 = var_9C(CInt(2))
  loc_1CA1C02:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Insert into SunTranLog Select * from SunTran Where Docid= '", var_AC)
  loc_1CA1C0A:     -1 = var_9C.Text
  loc_1CA1C23:     unk_5B213D.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA1C5B:     Set var_88 = var_9C(CInt(2))
  loc_1CA1C61:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Insert into PayChargeLog Select * from PayCharge Where Docid= '", var_AC)
  loc_1CA1C69:     -1 = var_9C.Text
  loc_1CA1C82:     unk_5B213D.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA1CC9:     Set var_88 = var_9C(CInt(2))
  loc_1CA1CCF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Select Max(SeqNo) From Sale1Log  Where Docid= '", var_AC, -1, var_1C4)
  loc_1CA1CD7:     var_228 = var_9C.Text
  loc_1CA1CE7:     var_274 = 0 & var_1C8 & "'"
  loc_1CA1CF0:     unk_5B213D.Execute var_274, var_22C, var_CC
  loc_1CA1CF8:      = var_1C4.Fields
  loc_1CA1D00:      = var_228.Item()
  loc_1CA1D08:      = var_22C.Value
  loc_1CA1D13:     Proc_6_39_E7C810(var_1F0)
  loc_1CA1D1C:     var_172 = CInt(var_1F0)
  loc_1CA1D56:     var_1C8 = CStr((var_172 + 1))
  loc_1CA1D72:     Set var_88 = var_9C(CInt(2))
  loc_1CA1D78:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, "Update Sale1Log Set SeqNo=" & var_1C8 & " Where IsNull(SeqNo,0)=0 And Docid= '", var_AC, -1)
  loc_1CA1D80:     var_1C4 = var_9C.Text
  loc_1CA1D99:     unk_5B213D.Execute var_172 & var_274 & "'", var_CC, 
  loc_1CA1DD1:     var_1C8 = CStr((var_172 + 1))
  loc_1CA1DED:     Set var_88 = var_9C(CInt(2))
  loc_1CA1DF3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, "Update Sale2Log Set SeqNo=" & var_1C8 & " Where IsNull(SeqNo,0)=0 And Docid= '", var_AC)
  loc_1CA1DFB:     -1 = var_9C.Text
  loc_1CA1E14:     unk_5B213D.Execute var_1C4 & var_274 & "'", , 
  loc_1CA1E4C:     var_1C8 = CStr((var_172 + 1))
  loc_1CA1E68:     Set var_88 = var_9C(CInt(2))
  loc_1CA1E6E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, "Update StockLog Set SeqNo=" & var_1C8 & " Where IsNull(SeqNo,0)=0 And Docid= '", var_AC)
  loc_1CA1E76:     -1 = var_9C.Text
  loc_1CA1E8F:     unk_5B213D.Execute var_1C4 & var_274 & "'", , 
  loc_1CA1EC7:     var_1C8 = CStr((var_172 + 1))
  loc_1CA1EE3:     Set var_88 = var_9C(CInt(2))
  loc_1CA1EE9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, "Update SunTranLog Set SeqNo=" & var_1C8 & " Where IsNull(SeqNo,0)=0 And Docid= '", var_AC)
  loc_1CA1EF1:     -1 = var_9C.Text
  loc_1CA1F0A:     unk_5B213D.Execute var_1C4 & var_274 & "'", , 
  loc_1CA1F42:     var_1C8 = CStr((var_172 + 1))
  loc_1CA1F4D:     var_2CC = "Update PayChargeLog Set SeqNo=" & var_1C8 & " Where IsNull(SeqNo,0)=0 And Docid= '"
  loc_1CA1F5E:     Set var_88 = var_9C(CInt(2))
  loc_1CA1F64:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, var_2CC, var_AC)
  loc_1CA1F6C:     -1 = var_9C.Text
  loc_1CA1F85:     unk_5B213D.Execute var_1C4 & var_274 & "'", , 
  loc_1CA1FA5:   End If
  loc_1CA1FA5: End If
  loc_1CA1FA9: Set var_88 = Me.TopCtrl1
  loc_1CA1FAF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1CA1FB7: var_1C8 = CStr()
  loc_1CA1FC8: If (var_1C8 = "Add") Then
  loc_1CA1FD9:   Set var_88 = var_9C(CInt(2))
  loc_1CA1FDF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA1FE7:    = var_9C.Text
  loc_1CA1FFF:   Call Proc_258_151_10E8580(MemVar_1F92044)
  loc_1CA2012:   Set var_88 = var_9C(CInt(2))
  loc_1CA2018:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA2020:   var_9C.Text = var_1C8
  loc_1CA203D:   Set var_88 = var_9C(CInt(2))
  loc_1CA2043:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA204B:    = var_9C.Text
  loc_1CA2062:   If (var_1C8 <> var_1C8) Then
  loc_1CA2070:     Set var_88 = var_9C(CInt(2))
  loc_1CA2076:     Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA207B:     var_98 = "Bill No. has saved As "
  loc_1CA2088:     var_AC = CVar(var_9C) 'Address
  loc_1CA208F:     var_CC = Right(var_AC, 8)
  loc_1CA20AE:     Set var_1C4 = (CStr(var_98 & Trim(var_CC)))
  loc_1CA20B4:     var_1C4.Caption = 
  loc_1CA20CE:   End If
  loc_1CA20D1: Else
  loc_1CA20DF:   Set var_88 = var_9C(CInt(2))
  loc_1CA20E5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274)
  loc_1CA20ED:    = var_9C.Text
  loc_1CA20F7:   var_320 = 0
  loc_1CA210A:   var_318 = 0
  loc_1CA2115:   var_314 = 0
  loc_1CA218E:   Proc_154_5_10E33A4(MemVar_1F92044, "Sale1", "DocId", &H312, var_274, 0, 0, 0)
  loc_1CA21C1:   Set var_88 = var_9C(CInt(2))
  loc_1CA21C7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, 0, 0, 0, 0)
  loc_1CA21CF:   0 = var_9C.Text
  loc_1CA21D9:   var_320 = 0
  loc_1CA21EC:   var_318 = 0
  loc_1CA21F7:   var_314 = 0
  loc_1CA2270:   Proc_154_5_10E33A4(MemVar_1F92044, "Stock", "DocId", &H312, var_274, 0, 0, 0)
  loc_1CA22A3:   Set var_88 = var_9C(CInt(2))
  loc_1CA22A9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, 0, 0, 0, 0)
  loc_1CA22B1:   0 = var_9C.Text
  loc_1CA22BB:   var_320 = 0
  loc_1CA22CE:   var_318 = 0
  loc_1CA22D9:   var_314 = 0
  loc_1CA2352:   Proc_154_5_10E33A4(MemVar_1F92044, "Sale2", "DocId", &H312, var_274, 0, 0, 0)
  loc_1CA2385:   Set var_88 = var_9C(CInt(2))
  loc_1CA238B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, 0, 0, 0, 0)
  loc_1CA2393:   0 = var_9C.Text
  loc_1CA239D:   var_320 = 0
  loc_1CA23B0:   var_318 = 0
  loc_1CA23BB:   var_314 = 0
  loc_1CA2434:   Proc_154_5_10E33A4(MemVar_1F92044, "SunTran", "DocId", &H312, var_274, 0, 0, 0)
  loc_1CA2467:   Set var_88 = var_9C(CInt(2))
  loc_1CA246D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, 0, 0, 0, 0)
  loc_1CA2475:   0 = var_9C.Text
  loc_1CA247F:   var_320 = 0
  loc_1CA2492:   var_318 = 0
  loc_1CA249D:   var_314 = 0
  loc_1CA24B0:   var_30C = 0
  loc_1CA24BB:   var_308 = 0
  loc_1CA250D:   var_1C8 = "PayCharge"
  loc_1CA2516:   Proc_154_5_10E33A4(MemVar_1F92044, var_1C8, "DocId", &H312, var_274, 0, 0, 0)
  loc_1CA2559:   Set var_88 = var_9C(CInt(2))
  loc_1CA255F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Delete From Sale1 Where DocID='", var_AC, -1, var_1C4, 0)
  loc_1CA2567:   0 = var_9C.Text
  loc_1CA2580:   unk_5B213D.Execute var_308 & var_1C8 & "'", var_30C, 0
  loc_1CA25B8:   Set var_88 = var_9C(CInt(2))
  loc_1CA25BE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Delete From Sale2 Where DocID='", var_AC, -1)
  loc_1CA25C6:   var_1C4 = var_9C.Text
  loc_1CA25DF:   unk_5B213D.Execute var_314 & var_1C8 & "'", var_318, 
  loc_1CA2617:   Set var_88 = var_9C(CInt(2))
  loc_1CA261D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Delete From Stock Where DocID='", var_AC)
  loc_1CA2625:   -1 = var_9C.Text
  loc_1CA263E:   unk_5B213D.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA2676:   Set var_88 = var_9C(CInt(2))
  loc_1CA267C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Delete From SunTran Where DocID='", var_AC)
  loc_1CA2684:   -1 = var_9C.Text
  loc_1CA269D:   unk_5B213D.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA26B7: End If
  loc_1CA26C2: If (global_304 = "Room Service") Then
  loc_1CA26D3:   Set var_88 = var_9C(CInt(2))
  loc_1CA26D9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA26E1:    = var_9C.Text
  loc_1CA26F4:   Set var_1C4 = var_228(CInt(0))
  loc_1CA26FA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2CC)
  loc_1CA2702:    = var_228.Text
  loc_1CA270F:   var_238 = Val(var_2CC)
  loc_1CA271D:   Set var_22C = var_324(CInt(1))
  loc_1CA2723:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_238)
  loc_1CA272B:   var_AC = CVar(var_324) 'Address
  loc_1CA2732:   Proc_6_7_F25D88(var_CC)
  loc_1CA2744:    = var_AC(var_308).Caption
  loc_1CA2757:   Set var_37C = var_380(CInt(&HA))
  loc_1CA275D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_30C)
  loc_1CA2765:    = var_380.Text
  loc_1CA2772:   var_D2C = Val(var_30C)
  loc_1CA2783:   Set var_3A4 = var_3A8(CInt(&HA))
  loc_1CA2789:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_314)
  loc_1CA27A4:   Set var_46C = var_470(CInt(3))
  loc_1CA27AA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_318)
  loc_1CA27B2:    = var_470.Text
  loc_1CA27C2:   Set var_474 = var_478(CInt(3))
  loc_1CA27C8:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA27E2:   Set var_4BC = 1(CVar(CLng(&H17)))
  loc_1CA27E8:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA281F:   Set var_540 = var_544(CInt(4))
  loc_1CA2825:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_320)
  loc_1CA282D:    = var_544.Text
  loc_1CA283A:   var_D34 = Val(var_320)
  loc_1CA2844:   Set var_588 = var_D34(var_1CA)
  loc_1CA284A:   Call 0.Method_TopCtrl1_UnknownEvent_164 ()
  loc_1CA285C:   Set var_58C = var_590(var_1CA)
  loc_1CA2862:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_594)
  loc_1CA286A:    = var_590.Text
  loc_1CA2877:   var_D3C = Val(var_594)
  loc_1CA2881:   Set var_858 = var_D3C(var_1CC)
  loc_1CA2887:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA2899:   Set var_85C = var_860(var_1CC)
  loc_1CA289F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_864)
  loc_1CA28A7:    = var_860.Text
  loc_1CA28B4:   var_D44 = Val(var_864)
  loc_1CA28C5:   Set var_8E8 = var_8EC(CInt(&HE))
  loc_1CA28CB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_8F0)
  loc_1CA28E0:   var_D4C = Val(var_8F0)
  loc_1CA28F1:   Proc_6_7_F25D88(var_990, Date)
  loc_1CA28FA:   Set var_9C4 = Me.TopCtrl1
  loc_1CA2900:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_D4C)
  loc_1CA2923:   var_9D8 = CStr(var_9D4)
  loc_1CA2945:   Set var_A6C = var_A70(CInt(5))
  loc_1CA294B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A74)
  loc_1CA2953:    = var_A70.Text
  loc_1CA2966:   Set var_B38 = var_B3C(CInt(&HE))
  loc_1CA296C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B40)
  loc_1CA2974:    = var_B3C.Text
  loc_1CA2987:   Set var_B84 = var_B88(CInt(0))
  loc_1CA298D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8C)
  loc_1CA2995:    = var_B88.Text
  loc_1CA29A8:   Set var_BD0 = var_BD4(CInt(1))
  loc_1CA29AE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_BD8)
  loc_1CA29B6:    = var_BD4.Text
  loc_1CA29C9:   Set var_C1C = var_C20(CInt(2))
  loc_1CA29CF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C24)
  loc_1CA29D7:    = var_C20.Text
  loc_1CA29EA:   Set var_C68 = var_C6C(CInt(3))
  loc_1CA29F0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C70)
  loc_1CA29F8:    = var_C6C.Text
  loc_1CA2A0B:   Set var_CB4 = var_CB8(CInt(6))
  loc_1CA2A11:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_CBC)
  loc_1CA2A19:    = var_CB8.Text
  loc_1CA2A3D:   var_230 = "Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,FolioNo,FolioNoDocId,RoomCat,RoomType,RoomNo,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,ServiceTax,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,TokenNo,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag,LOGSITE_CODE,Remark,PhoneNo,CustName,Addr1,Addr2,CashRecd) Values (" & "'"
  loc_1CA2A68:   var_98 = ",'"
  loc_1CA2A77:   var_BC = CVar(global_184) 'String
  loc_1CA2AA0:   var_348 = CVar(var_230 & var_1C8 & "'," & CStr(var_238) & ",") & var_CC & var_98 & var_BC & "','" & CVar(var_308) & "','" & CVar(MemVar_1F92070) 
  loc_1CA2AE6:   var_3E8 = var_348 & "','" & CVar(global_76) & "'," & CVar(var_3A8.Tag) & ",'" & CVar(var_314) & "','" 
  loc_1CA2B19:   var_51C = var_3E8 & CVar(global_188) & "','" & CVar(global_192) & "','" & IIf((var_318 <> vbNullString), CVar(var_478), CVar(CStr())) 
  loc_1CA2B86:   var_694 = var_51C & "'," & CVar(var_D34) & "," & CVar(var_D3C) & "," & CVar(var_12C) & "," & CVar(var_124) & "," & CVar(var_F4) & "," 
  loc_1CA2BF5:   var_7F4 = var_694 & CVar(var_EC) & "," & CVar(var_144) & ", " & CVar(var_14C) & "," & CVar(var_180) & "," & CVar(var_FC) & "," & CVar(var_104) 
  loc_1CA2C5A:   var_950 = var_7F4 & "," & CVar(var_134) & "," & CVar(var_8EC.Text) & ",'" & CVar(global_180) & "'," & CVar(var_D4C) & ", '" & CVar(MemVar_1F920C8) 
  loc_1CA2CA3:   var_AD4 = var_950 & "'," & var_990 & ",'" & IIf((var_9D8 = "Add"), "A", "E") & "','" & CVar(var_A74) & "','" & CVar(global_292) 
  loc_1CA2CF8:   var_C18 = var_AD4 & "','N','" & CVar(MemVar_1F92078) & "','" & CVar(var_B40) & "','" & CVar(var_B8C) & "','" & CVar(var_BD8) & "','" 
  loc_1CA2D40:   unk_5B213D.Execute CStr(var_C18 & CVar(var_C24) & "','" & CVar(var_C70) & "'," & CVar(Val(var_CBC)) & ")"), var_D20, -1
  loc_1CA2E85: Else
  loc_1CA2E93:   Set var_88 = var_9C(CInt(2))
  loc_1CA2E99:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_D24)
  loc_1CA2EA1:   var_D54 = var_9C.Text
  loc_1CA2EB4:   Set var_1C4 = var_228(CInt(0))
  loc_1CA2EBA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2CC)
  loc_1CA2EC2:    = var_228.Text
  loc_1CA2ECF:   var_238 = Val(var_2CC)
  loc_1CA2EDD:   Set var_22C = var_324(CInt(1))
  loc_1CA2EE3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_238)
  loc_1CA2EEB:   var_AC = CVar(var_324) 'Address
  loc_1CA2EF2:   Proc_6_7_F25D88(var_CC)
  loc_1CA2F04:    = var_AC(var_308).Caption
  loc_1CA2F1E:   Set var_37C = 1(CVar(CLng(&H17)))
  loc_1CA2F24:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA2F3E:   Set var_380 = var_3A4(CInt(&HD))
  loc_1CA2F44:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_30C)
  loc_1CA2F4C:    = var_3A4.Tag
  loc_1CA2F5F:   Set var_3A8 = var_46C(CInt(4))
  loc_1CA2F65:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_314)
  loc_1CA2F6D:    = var_46C.Text
  loc_1CA2F7A:   var_D2C = Val(var_314)
  loc_1CA2F84:   Set var_470 = var_D2C(var_1CA)
  loc_1CA2F8A:   Call 0.Method_TopCtrl1_UnknownEvent_164 ()
  loc_1CA2F9C:   Set var_474 = var_478(var_1CA)
  loc_1CA2FA2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_318)
  loc_1CA2FAA:    = var_478.Text
  loc_1CA2FB7:   var_D34 = Val(var_318)
  loc_1CA2FC1:   Set var_4BC = var_D34(var_1CC)
  loc_1CA2FC7:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA2FD9:   Set var_540 = var_544(var_1CC)
  loc_1CA2FDF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_320)
  loc_1CA2FE7:    = var_544.Text
  loc_1CA2FF4:   var_D3C = Val(var_320)
  loc_1CA300A:   var_884 = Left(global_180, &HFF)
  loc_1CA3028:   Set var_588 = var_58C(CInt(&HE))
  loc_1CA302E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_594)
  loc_1CA3043:   var_D44 = Val(var_594)
  loc_1CA3054:   Proc_6_7_F25D88(var_990, Date)
  loc_1CA305D:   Set var_590 = Me.TopCtrl1
  loc_1CA3063:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_D44)
  loc_1CA3071:   var_A28 = "E"
  loc_1CA30A8:   Set var_858 = var_85C(CInt(5))
  loc_1CA30AE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_8F0)
  loc_1CA30B6:    = var_85C.Text
  loc_1CA30C9:   Set var_860 = var_8E8(CInt(&HE))
  loc_1CA30CF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_9D8)
  loc_1CA30D7:    = var_8E8.Text
  loc_1CA30EA:   Set var_8EC = var_9C4(CInt(0))
  loc_1CA30F0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A74)
  loc_1CA30F8:    = var_9C4.Text
  loc_1CA310B:   Set var_A6C = var_A70(CInt(1))
  loc_1CA3111:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B40)
  loc_1CA3119:    = var_A70.Text
  loc_1CA312C:   Set var_B38 = var_B3C(CInt(2))
  loc_1CA3132:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8C)
  loc_1CA313A:    = var_B3C.Text
  loc_1CA314D:   Set var_B84 = var_B88(CInt(3))
  loc_1CA3153:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_BD8)
  loc_1CA315B:    = var_B88.Text
  loc_1CA316E:   Set var_BD0 = var_BD4(CInt(6))
  loc_1CA3174:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C24)
  loc_1CA317C:    = var_BD4.Text
  loc_1CA3189:   var_D4C = Val(var_C24)
  loc_1CA31A0:   var_230 = "Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Party,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,ServiceTax,AddAmt,Advance,DedAmt,RoundOff,NetAmt,KOTNO,TokenNo,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag,LOGSITE_CODE,Remark,PhoneNo,CustName,Addr1,Addr2,CashRecd) Values (" & "'"
  loc_1CA31DA:   var_BC = CVar(global_184) 'String
  loc_1CA31F0:   var_294 = CVar(var_230 & var_1C8 & "'," & CStr(var_238) & ",") & var_CC & ",'" & var_BC & "','" & CVar(var_308) 
  loc_1CA3219:   var_368 = var_294 & "','" & CVar(MemVar_1F92070) & "','" & CVar(global_76) 
  loc_1CA3269:   var_468 = CVar(var_30C) 'String
  loc_1CA3275:   var_4EC = var_368 & "','" & CVar(global_188) & "','" & CVar(global_192) & "','" & CVar(CStr(var_3E8)) & "','" & var_468 & "'," 
  loc_1CA3289:   var_50C = var_4EC & CVar(var_D2C) & "," 
  loc_1CA32B1:   var_584 = var_50C & CVar(var_D34) & "," & CVar(var_12C) & "," 
  loc_1CA32D9:   var_614 = var_584 & CVar(var_124) & "," & CVar(var_F4) & "," 
  loc_1CA3320:   var_6F4 = var_614 & CVar(var_EC) & "," & CVar(var_144) & ", " & CVar(var_14C) & "," & CVar(var_180) 
  loc_1CA338D:   var_854 = var_6F4 & "," & CVar(var_FC) & "," & CVar(var_190) & "," & CVar(var_104) & "," & CVar(var_134) & "," & CVar(var_58C.Text) & ",'" 
  loc_1CA33DB:   var_A48 = var_854 & Trim(var_884) & "'," & CVar(var_D44) & ", '" & CVar(MemVar_1F920C8) & "'," & var_990 & ",'" & IIf((CStr(var_9D4) = "Add"), "A", var_A28) 
  loc_1CA33E4:   var_A68 = var_A48 & "','" 
  loc_1CA3417:   var_B14 = var_A68 & CVar(var_8F0) & "','" & CVar(global_292) & "','N','" & CVar(MemVar_1F92078) 
  loc_1CA3433:   var_B80 = var_B14 & "','" & CVar(var_9D8) & "','" 
  loc_1CA344D:   var_BE8 = CVar(var_B40) 'String
  loc_1CA348A:   var_CDC = var_B80 & CVar(var_A74) & "','" & var_BE8 & "','" & CVar(var_B8C) & "','" & CVar(var_BD8) & "'," & CVar(var_D4C) 
  loc_1CA34A1:   unk_5B213D.Execute CStr(var_CDC & ")"), var_D20, -1
  loc_1CA35D3: End If
  loc_1CA35DC: Set var_88 = 1(var_DA)
  loc_1CA35E2: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_C1C)
  loc_1CA35F8: For var_D58 =  To CInt((CLng(var_D4C) - 1)):  = var_D58 'Integer
  loc_1CA3613:   Set var_88 = CVar(CLng(var_DA))(CVar(CLng(4)))
  loc_1CA3619:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA362A:   var_1F0 = Trim(CVar(CStr()))
  loc_1CA3651:   Set var_9C = CVar(CLng(var_DA))(CVar(CLng(7)))
  loc_1CA3657:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((var_1F0 <> vbNullString))
  loc_1CA3662:   var_1C8 = CStr()
  loc_1CA3690:   If CBool( And (CDbl(Val(var_1C8)) <> CDbl(0))) Then
  loc_1CA36A1:     Set var_88 = var_9C(CInt(2))
  loc_1CA36A7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA36AF:      = var_9C.Text
  loc_1CA36B8:     var_98 = CVar(CLng(var_DA)) 'Long
  loc_1CA36C9:     Set var_1C4 = var_98(CVar(CLng(0)))
  loc_1CA36CF:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA36E2:     var_238 = Val(CStr())
  loc_1CA36F2:      = var_238(var_314).Caption
  loc_1CA3705:     Set var_22C = var_324(CInt(0))
  loc_1CA370B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_8F0)
  loc_1CA3713:      = var_324.Text
  loc_1CA3720:     var_D2C = Val(var_8F0)
  loc_1CA372E:     Set var_328 = var_37C(CInt(1))
  loc_1CA3734:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_D2C)
  loc_1CA373C:     var_CC = CVar(var_37C) 'Address
  loc_1CA3743:     Proc_6_7_F25D88(var_1F0)
  loc_1CA375D:     Set var_380 = CVar(CLng(var_DA))(CVar(CLng(&H15)))
  loc_1CA3763:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_CC)
  loc_1CA3784:     Set var_3A4 = CVar(CLng(var_DA))(CVar(CLng(&H16)))
  loc_1CA378A:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA37A4:     Set var_3A8 = var_46C(CInt(3))
  loc_1CA37AA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8C)
  loc_1CA37B2:      = var_46C.Text
  loc_1CA37C2:     Set var_470 = var_474(CInt(3))
  loc_1CA37C8:     Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA37E2:     Set var_478 = 1(CVar(CLng(&H17)))
  loc_1CA37E8:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA3826:     Set var_4BC = CVar(CLng(var_DA))(CVar(CLng(&HB)))
  loc_1CA382C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA384D:     Set var_540 = CVar(CLng(var_DA))(CVar(CLng(&H13)))
  loc_1CA3853:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA3874:     Set var_544 = CVar(CLng(var_DA))(CVar(CLng(&H14)))
  loc_1CA387A:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA389B:     Set var_588 = CVar(CLng(var_DA))(CVar(CLng(6)))
  loc_1CA38A1:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA38C2:     Set var_58C = CVar(CLng(var_DA))(CVar(CLng(7)))
  loc_1CA38C8:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA38DB:     var_D34 = Val(CStr())
  loc_1CA38F3:     Set var_590 = CVar(CLng(var_DA))(CVar(CLng(9)))
  loc_1CA38F9:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D34)
  loc_1CA390C:     var_D3C = Val(CStr())
  loc_1CA3924:     Set var_858 = CVar(CLng(var_DA))(CVar(CLng(8)))
  loc_1CA392A:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D3C)
  loc_1CA393D:     var_D44 = Val(CStr())
  loc_1CA3955:     Set var_85C = CVar(CLng(var_DA))(CVar(CLng(&HA)))
  loc_1CA395B:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D44)
  loc_1CA396E:     var_D4C = Val(CStr())
  loc_1CA3986:     Set var_860 = CVar(CLng(var_DA))(CVar(CLng(&H10)))
  loc_1CA398C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D4C)
  loc_1CA399F:     var_D54 = Val(CStr())
  loc_1CA39B7:     Set var_8E8 = CVar(CLng(var_DA))(CVar(CLng(&H11)))
  loc_1CA39BD:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D54)
  loc_1CA39D0:     var_118C = Val(CStr())
  loc_1CA39E8:     Set var_8EC = CVar(CLng(var_DA))(CVar(CLng(&HE)))
  loc_1CA39EE:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_118C)
  loc_1CA3A01:     var_1194 = Val(CStr())
  loc_1CA3A19:     Set var_9C4 = CVar(CLng(var_DA))(CVar(CLng(&HF)))
  loc_1CA3A1F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1194)
  loc_1CA3A32:     var_119C = Val(CStr())
  loc_1CA3A4A:     Set var_A6C = CVar(CLng(var_DA))(CVar(CLng(&H12)))
  loc_1CA3A50:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_119C)
  loc_1CA3A63:     var_11A4 = Val(CStr())
  loc_1CA3A71:     Proc_6_7_F25D88(var_A28, MemVar_1F920EC)
  loc_1CA3A7A:     Set var_A70 = Me.TopCtrl1
  loc_1CA3A80:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_11A4)
  loc_1CA3ACC:     Set var_B38 = CVar(CLng(var_DA))(CVar(CLng(&H1A)))
  loc_1CA3AD2:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA3AF3:     Set var_B3C = CVar(CLng(var_DA))(CVar(CLng(&H1A)))
  loc_1CA3AF9:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA3B1A:     Set var_B84 = CVar(CLng(var_DA))(CVar(CLng(&HD)))
  loc_1CA3B20:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA3B41:     Set var_B88 = CVar(CLng(var_DA))(CVar(CLng(&HC)))
  loc_1CA3B47:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA3B5A:     var_11AC = Val(CStr())
  loc_1CA3B72:     Set var_BD0 = CVar(CLng(var_DA))(CVar(CLng(1)))
  loc_1CA3B78:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_11AC)
  loc_1CA3B98:     var_230 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,DiscApp,RoundOff,UNIT,QtyIss,Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,KOTDocId,KotSno,DelFlag,LOGSITE_CODE,ItemRestCode) Values (" & "'"
  loc_1CA3BF2:     var_B40 = var_230 & var_1C8 & "'," & CStr(var_238) & ",'" & global_184 & "','" & var_314 & "','" & MemVar_1F92070 & "'," & CStr(var_D2C)
  loc_1CA3BF9:     var_210 = CVar(var_B40 & ",") 'String
  loc_1CA3C26:     var_338 = CVar(CStr(var_294)) 'String
  loc_1CA3C4D:     var_428 = var_210 & var_1F0 & ",'" & CVar(global_76) & "','" & var_338 & "','" & CVar(CStr(var_368)) & "','" & IIf((var_B8C <> vbNullString), CVar(var_474), CVar(CStr())) 
  loc_1CA3C61:     var_4EC = var_428 & "','" & CVar(CStr(var_468)) 
  loc_1CA3C72:     var_51C = CVar(CStr(var_50C)) 'String
  loc_1CA3C9A:     var_634 = CVar(CStr(var_614)) 'String
  loc_1CA3CCE:     var_734 = var_4EC & "','" & var_51C & "','" & CVar(CStr(var_584)) & "','" & var_634 & "'," & CVar(var_D34) & "," & CVar(var_D3C) & "," 
  loc_1CA3D3D:     var_970 = var_734 & CVar(var_D44) & "," & CVar(var_D4C) & "," & CVar(var_D54) & "," & CVar(var_118C) & "," & CVar(var_1194) & "," & CVar(var_119C) 
  loc_1CA3D84:     var_AD4 = var_970 & "," & CVar(var_11A4) & ",'" & CVar(MemVar_1F920C8) & "'," & var_A28 & ",'" & IIf((CStr(var_A68) = "Add"), "A", "E") 
  loc_1CA3DD4:     var_C64 = var_AD4 & "','" & CVar(CStr(var_B14)) & "','" & CVar(CStr(var_B80)) & "','" & CVar(CStr(var_BE8)) & "'," & CVar(var_11AC) 
  loc_1CA3E12:     unk_5B213D.Execute CStr(var_C64 & ",'N','" & CVar(MemVar_1F92078) & "','" & CVar(CStr(var_CDC)) & "')"), var_1184, -1
  loc_1CA3F73:     If (global_240 = "Y") Then
  loc_1CA3F84:       Set var_88 = var_9C(CInt(2))
  loc_1CA3F8A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA3F92:       var_BD4 = var_9C.Text
  loc_1CA3FAC:       Set var_1C4 = CVar(CLng(var_DA))(CVar(CLng(0)))
  loc_1CA3FB2:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA3FC5:       var_238 = Val(CStr())
  loc_1CA3FDD:       Set var_228 = CVar(CLng(var_DA))(CVar(CLng(&HD)))
  loc_1CA3FE3:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_238)
  loc_1CA4004:       Set var_22C = CVar(CLng(var_DA))(CVar(CLng(&HC)))
  loc_1CA400A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA4060:       var_318 = "Update KOT Set ContraDocId='" & var_1C8 & "',ContraSno=" & CStr(var_238) & " where docid='" & CStr(var_CC) & "' And SNo="
  loc_1CA4075:       unk_5B213D.Execute var_318 & CStr(Val(CStr())), var_210, -1
  loc_1CA40B1:     End If
  loc_1CA40BC:     If (global_196 = "Y") Then
  loc_1CA40CD:       Set var_88 = var_9C(CInt(2))
  loc_1CA40D3:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, var_324)
  loc_1CA40DB:       var_D2C = var_9C.Text
  loc_1CA40F5:       Set var_1C4 = CVar(CLng(var_DA))(CVar(CLng(0)))
  loc_1CA40FB:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA410E:       var_238 = Val(CStr())
  loc_1CA4126:       Set var_228 = CVar(CLng(var_DA))(CVar(CLng(&HD)))
  loc_1CA412C:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_238)
  loc_1CA414D:       Set var_22C = CVar(CLng(var_DA))(CVar(CLng(&HC)))
  loc_1CA4153:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA41A2:       var_30C = "Update PackingOrderDetail set ContraDocID='" & var_1C8 & "',ContraSno=" & CStr(var_238) & " where docid='" & CStr(var_CC)
  loc_1CA41BC:       var_864 = var_30C & "' and SNo=" & CStr(Val(CStr())) & vbNullString
  loc_1CA41C5:       unk_5B213D.Execute var_864, var_210, -1
  loc_1CA4203:     End If
  loc_1CA4203:   End If
  loc_1CA4206: Next var_D58 'Integer
  loc_1CA4214: Set var_88 = 0(var_DA)
  loc_1CA421A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1CA4230: For var_11B0 =  To CInt((CLng() - 1)):  = var_11B0 'Integer
  loc_1CA424B:   Set var_88 = CVar(CLng(var_DA))(CVar(CLng(2)))
  loc_1CA4251:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA425C:   var_CC = CVar(CStr()) 'String
  loc_1CA4289:   Set var_9C = CVar(CLng(var_DA))(CVar(CLng(6)))
  loc_1CA428F:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(var_CC) <> vbNullString))
  loc_1CA429A:   var_1C8 = CStr()
  loc_1CA42C8:   If CBool( And (CDbl(Val(var_1C8)) <> CDbl(0))) Then
  loc_1CA42D9:     Set var_88 = var_9C(CInt(2))
  loc_1CA42DF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA42E7:      = var_9C.Text
  loc_1CA4301:     Set var_1C4 = CVar(CLng(var_DA))(CVar(CLng(1)))
  loc_1CA4307:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA431A:     var_238 = Val(CStr())
  loc_1CA4332:     Set var_228 = CVar(CLng(var_DA))(CVar(CLng(0)))
  loc_1CA4338:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_238)
  loc_1CA4343:     var_308 = CStr()
  loc_1CA434B:     var_D2C = Val(var_308)
  loc_1CA435B:      = var_D2C(var_864).Caption
  loc_1CA436E:     Set var_324 = var_328(CInt(0))
  loc_1CA4374:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8C)
  loc_1CA437C:      = var_328.Text
  loc_1CA4389:     var_D34 = Val(var_B8C)
  loc_1CA4397:     Set var_37C = var_380(CInt(1))
  loc_1CA439D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_D34)
  loc_1CA43AC:     Proc_6_7_F25D88(var_210)
  loc_1CA43C6:     Set var_3A4 = CVar(CLng(var_DA))(CVar(CLng(2)))
  loc_1CA43CC:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(var_380))
  loc_1CA43ED:     Set var_3A8 = CVar(CLng(var_DA))(CVar(CLng(4)))
  loc_1CA43F3:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA4406:     var_D3C = Val(CStr())
  loc_1CA441E:     Set var_46C = CVar(CLng(var_DA))(CVar(CLng(5)))
  loc_1CA4424:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D3C)
  loc_1CA4437:     var_D44 = Val(CStr())
  loc_1CA444F:     Set var_470 = CVar(CLng(var_DA))(CVar(CLng(6)))
  loc_1CA4455:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D44)
  loc_1CA4468:     var_D4C = Val(CStr())
  loc_1CA4476:     Proc_6_7_F25D88(var_4EC, MemVar_1F920EC)
  loc_1CA447F:     Set var_474 = Me.TopCtrl1
  loc_1CA4485:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_D4C)
  loc_1CA44D0:     var_230 = "Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_1CA4504:     var_320 = var_230 & var_1C8 & "'," & CStr(var_238) & "," & CStr(var_D2C) & ",'"
  loc_1CA450E:     var_594 = var_320 & global_184
  loc_1CA4515:     var_8F0 = var_594 & "','"
  loc_1CA451C:     var_9D8 = var_8F0 & var_864
  loc_1CA4523:     var_A74 = var_9D8 & "','"
  loc_1CA452A:     var_B40 = var_A74 & MemVar_1F92070
  loc_1CA4531:     var_BD8 = var_B40 & "',"
  loc_1CA453D:     var_C70 = var_BD8 & CStr(var_D34)
  loc_1CA459C:     var_3C8 = CVar(var_C70 & ",") & var_210 & ",'" & CVar(global_76) & "','" & CVar(CStr(var_338)) & "'," & CVar(var_D3C) & "," & CVar(var_D44) 
  loc_1CA45E3:     var_5B4 = var_3C8 & "," & CVar(var_D4C) & ",'" & CVar(MemVar_1F920C8) & "'," & var_4EC & ",'" & IIf((CStr(var_51C) = "Add"), "A", "E") 
  loc_1CA45FF:     var_614 = var_5B4 & "','N','" & CVar(MemVar_1F92078) & "')" 
  loc_1CA460D:     unk_5B213D.Execute CStr(var_614), var_634, -1
  loc_1CA46B7:   End If
  loc_1CA46BA: Next var_11B0 'Integer
  loc_1CA46CB: Set var_88 = var_DA(var_1CA)
  loc_1CA46D1: Call 0.Method_TopCtrl1_UnknownEvent_168 (1)
  loc_1CA46DC: For var_11B4 =  To var_1CA:  = var_11B4 'Integer
  loc_1CA46EF:   Set var_88 = var_9C(var_DA)
  loc_1CA46F5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1CA)
  loc_1CA46FD:    = var_9C.Visible
  loc_1CA470F:   If (var_1CA = &HFF) Then
  loc_1CA4726:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA472E:      = var_9C.Text
  loc_1CA4741:     Set var_1C4 = var_228(CInt(0))
  loc_1CA4747:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_308)
  loc_1CA474F:      = var_228.Text
  loc_1CA475C:     var_238 = Val(var_308)
  loc_1CA476A:     Set var_22C = var_324(CInt(1))
  loc_1CA4770:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_238)
  loc_1CA4778:     var_AC = CVar(var_324) 'Address
  loc_1CA477F:     Proc_6_7_F25D88(var_CC)
  loc_1CA4792:     Set var_328 = var_37C(CInt(&HD))
  loc_1CA4798:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_320)
  loc_1CA47A0:     var_AC = var_37C.Tag
  loc_1CA47B2:     Set var_380 = var_3A4(var_DA)
  loc_1CA47B8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_594)
  loc_1CA47C0:      = var_3A4.Tag
  loc_1CA47C8:     var_294 = CVar(var_594) 'String
  loc_1CA47E0:     Set var_3A8 = var_46C(var_DA)
  loc_1CA47E6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_864)
  loc_1CA47EE:      = var_46C.Tag
  loc_1CA47FB:     var_D2C = Val(var_864)
  loc_1CA480B:     Set var_470 = var_474(var_DA)
  loc_1CA4811:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_8F0)
  loc_1CA482B:     Set var_478 = var_4BC(var_DA)
  loc_1CA4831:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_9D8)
  loc_1CA4839:      = var_4BC.Tag
  loc_1CA484B:     Set var_540 = var_544(var_DA)
  loc_1CA4851:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A74)
  loc_1CA4859:      = var_544.Tag
  loc_1CA486B:     Set var_588 = var_58C(var_DA)
  loc_1CA4871:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B40)
  loc_1CA4879:      = var_58C.Text
  loc_1CA4886:     var_D34 = Val(var_B40)
  loc_1CA4896:     Set var_590 = var_858(var_DA)
  loc_1CA489C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8C)
  loc_1CA48B1:     var_D3C = Val(var_B8C)
  loc_1CA48C1:     Set var_85C = var_860(var_DA)
  loc_1CA48C7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_BD8)
  loc_1CA48DC:     var_D44 = Val(var_BD8)
  loc_1CA48EA:     Proc_6_7_F25D88(var_5B4, MemVar_1F920EC)
  loc_1CA48F3:     Set var_8E8 = Me.TopCtrl1
  loc_1CA48F9:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_D44)
  loc_1CA4907:     var_654 = "E"
  loc_1CA491C:     var_C24 = CStr(var_614)
  loc_1CA493B:     Set var_8EC = var_9C4(CInt(9))
  loc_1CA4941:     Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA4949:     var_6D4 = CVar(var_9C4) 'Address
  loc_1CA4950:     Proc_6_7_F25D88(var_6F4)
  loc_1CA4962:     Set var_A6C = var_A70(var_DA)
  loc_1CA4968:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C70)
  loc_1CA4970:     var_6D4 = var_A70.Tag
  loc_1CA4989:     var_230 = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,PartyCode,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LOGSITE_CODE) Values ('" & var_1C8
  loc_1CA4990:     var_274 = var_230 & "',"
  loc_1CA4998:     var_2CC = CStr(var_DA)
  loc_1CA49D6:     var_250 = CVar(var_274 & var_2CC & ",'" & global_184 & "'," & CStr(var_238) & ",") & var_CC & ",'" 
  loc_1CA4A2A:     var_3E8 = var_250 & CVar(var_320) & "','" & Trim(var_294) & "'," & CVar(var_474.Caption) & ",'" & CVar(var_8F0) & "','" & CVar(var_9D8) 
  loc_1CA4A8C:     var_564 = var_3E8 & "','" & CVar(var_A74) & "'," & CVar(var_858.Text) & "," & CVar(var_860.Caption) & "," & CVar(var_D44) & ",'" & CVar(MemVar_1F920C8) 
  loc_1CA4AA5:     var_5F4 = var_564 & "'," & var_5B4 & ",'" 
  loc_1CA4AB5:     var_6B4 = var_5F4 & IIf((var_C24 = "Add"), "A", var_654) & "'," 
  loc_1CA4AF8:     var_7F4 = var_6B4 & var_6F4 & ",'" & CVar(var_C70) & "','" & CVar(global_76) & "','N','" & CVar(MemVar_1F92070) 
  loc_1CA4B22:     unk_5B213D.Execute CStr(var_7F4 & "','" & CVar(MemVar_1F92078) & "')"), var_884, -1
  loc_1CA4BF8:   End If
  loc_1CA4BFB: Next var_11B4 'Integer
  loc_1CA4C0B: If (global_240 = "Y") Then
  loc_1CA4C17:   Set var_88 = 1(var_DA)
  loc_1CA4C1D:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1CA4C33:   For var_11B8 =  To CInt((CLng() - 1)):  = var_11B8 'Integer
  loc_1CA4C4E:     Set var_88 = CVar(CLng(var_DA))(CVar(CLng(4)))
  loc_1CA4C54:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA4C81:     If CBool(Trim(CVar(CStr())) <> vbNullString) Then
  loc_1CA4C87:       Proc_6_104_ED5D18(var_AC)
  loc_1CA4CA1:       Set var_88 = CVar(CLng(var_DA))(CVar(CLng(&HD)))
  loc_1CA4CA7:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1CA4CE8:       var_270 = CVar("Update KOT Set Pending='N',U_Name1='" & MemVar_1F920C8 & "',U_EntDt1=") & var_AC & ",U_AE1='E' where docid='" & CVar(CStr(var_250)) 
  loc_1CA4CFF:       unk_5B213D.Execute CStr(var_270 & "'"), var_294, -1
  loc_1CA4D27:     End If
  loc_1CA4D2A:   Next var_11B8 'Integer
  loc_1CA4D2F: End If
  loc_1CA4D3A: If (global_304 = "Room Service") Then
  loc_1CA4D40:   var_BC = 0
  loc_1CA4D70:   unk_5B213D.Execute "SELECT SHORTNAME FROM DEPART WHERE CODE='" & global_76 & "'", var_AC, -1
  loc_1CA4D78:   var_88 = var_88.Fields
  loc_1CA4D80:   var_BC = var_9C.Item(var_9C)
  loc_1CA4D97:   var_1E0 = " BILL NO.-"
  loc_1CA4D9C:   var_210 = (Trim(CVar(var_1C4)) + CVar(CLng(4)))
  loc_1CA4DA5:   var_250 = (CVar("Update KOT Set Pending='N',U_Name1='" & MemVar_1F920C8 & "',U_EntDt1=") & var_AC & ",U_AE1='E' where docid='" + " ")
  loc_1CA4DB7:   Set var_228 = var_22C(CInt(0))
  loc_1CA4DBD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274, var_250)
  loc_1CA4DC5:   var_1C4 = var_22C.Text
  loc_1CA4DD0:   var_270 = ( + CVar(var_274))
  loc_1CA4DD5:   var_16C = CStr(var_270)
  loc_1CA4E01:   var_1BE = (var_1BE + 1)
  loc_1CA4E18:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2CC)
  loc_1CA4E33:   Set var_1C4 = var_228(CInt(0))
  loc_1CA4E39:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_320)
  loc_1CA4E41:    = var_228.Text
  loc_1CA4E4E:   var_238 = Val(var_320)
  loc_1CA4E55:   var_AC = CVar((var_238)) 'Address
  loc_1CA4E6C:   Set var_22C = var_324(CInt(1))
  loc_1CA4E72:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA4E81:   Proc_6_7_F25D88(var_270)
  loc_1CA4E91:   Set var_328 = var_37C(CInt(5))
  loc_1CA4E97:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CVar(var_324))
  loc_1CA4EB2:   Set var_380 = (var_1CA)
  loc_1CA4EB8:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA4ECA:   Set var_3A4 = var_3A8(var_1CA)
  loc_1CA4ED0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B40)
  loc_1CA4ED8:    = var_3A8.Text
  loc_1CA4EE5:   var_D2C = Val(var_B40)
  loc_1CA4EEF:   Set var_46C = var_D2C(var_1CC)
  loc_1CA4EF5:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA4F07:   Set var_470 = var_474(var_1CC)
  loc_1CA4F0D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8C)
  loc_1CA4F15:    = var_474.Text
  loc_1CA4F22:   var_D34 = Val(var_B8C)
  loc_1CA4F33:   Set var_478 = var_4BC(CInt(7))
  loc_1CA4F39:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_BD8)
  loc_1CA4F4E:   var_D3C = Val(var_BD8)
  loc_1CA4F5F:   Set var_540 = var_544(CInt(3))
  loc_1CA4F65:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C24)
  loc_1CA4F7D:   Set var_588 = var_58C(CInt(3))
  loc_1CA4F83:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA4F96:   Set var_590 = var_858(CInt(3))
  loc_1CA4F9C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C70)
  loc_1CA4FA4:    = var_858.Tag
  loc_1CA4FD5:   Proc_183_7_EB0C44(var_5F4)
  loc_1CA4FE5:   Proc_183_7_EB0C44(var_654, MemVar_1F920EC)
  loc_1CA4FEE:   Set var_85C = Me.TopCtrl1
  loc_1CA4FF4:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(MemVar_1F920EC)
  loc_1CA5017:   var_CBC = CStr(var_6B4)
  loc_1CA503F:   var_1C8 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1CA504D:   var_274 = var_1C8 & "RoomType,RoomNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,AU_EntDt,U_AE,RestCode,lOGSITE_CODE) Values ("
  loc_1CA50A0:   var_A74 = var_274 & "'" & var_2CC & "'," & CStr(var_9C.Text) & ",'" & global_184 & "'," & CStr(var_238) & ",'" & MemVar_1F92070
  loc_1CA50AD:   var_210 = CVar(var_A74 & "','") & Trim(var_AC) 
  loc_1CA5105:   var_3C8 = var_210 & "'," & var_270 & ",'" & Trim(CVar(var_37C)) & "'" & ",'','','" & CVar(var_16C) & "','" & CVar(var_19C) & "','Room'," 
  loc_1CA5151:   var_53C = var_3C8 & CVar(var_D2C) & "," & CVar(var_4BC.Text) & "," & CVar(var_544.Text) & ",'REST'," & "'RO','" & IIf((var_C24 <> vbNullString), CVar(var_58C), CVar(var_C70)) 
  loc_1CA519D:   var_734 = var_53C & "','','','',Null," & "Null,'" & CVar(MemVar_1F920C8) & "'," & var_5F4 & "," & var_654 & ",'" & IIf((var_CBC = "Add"), "A", "E") 
  loc_1CA51BC:   var_794 = var_734 & "','" & CVar(global_76) & "','" 
  loc_1CA51DD:   unk_5B213D.Execute CStr(var_794 & CVar(MemVar_1F92078) & "')"), var_7F4, -1
  loc_1CA52D6:   unk_5B213D.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F92078 & "TOUT" & "'", var_AC, -1
  loc_1CA52E1:   Set var_1A0 = var_9C(CInt(2))
  loc_1CA5307:   If (var_1A0.RecordCount > 0) Then
  loc_1CA5336:     var_9C = var_1A0.Fields.Item("TaxStru")
  loc_1CA5346:     var_CC = "Select * from taxstru where Code='" & var_9C.Value 
  loc_1CA534F:     var_1F0 = var_CC & "' Order by Sno" 
  loc_1CA5353:     var_1C8 = CStr(var_1F0)
  loc_1CA535D:     unk_5B213D.Execute var_1C8, var_210, -1
  loc_1CA5368:     Set var_160 = var_1C4
  loc_1CA5385:   Else
  loc_1CA539E:     MsgBox("System Defined Revenue is not defined", 0, var_CC, var_1F0, var_210)
  loc_1CA53B4:     unk_5B213D.RollbackTrans
  loc_1CA53B9:     Exit Sub
  loc_1CA53BA:   End If
  loc_1CA53C0:   var_1BE = (var_1BE + 1)
  loc_1CA53E9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Select Docid,GuestProf from GuestFolio where Docid=", var_210, -1, var_1C4)
  loc_1CA53F1:   var_1BE = var_9C.Tag
  loc_1CA53FF:   Proc_6_17_EAA2B0(var_CC, CVar(var_1C8), var_1C4)
  loc_1CA5415:   unk_5B213D.Execute CStr(var_9C(CInt(&HA)) & var_CC), var_860, 
  loc_1CA5420:   Set var_1A4 = var_1C4
  loc_1CA544E:   If (var_1A4.RecordCount > 0) Then
  loc_1CA546B:     var_9C = var_1A4.Fields.Item("GuestProf")
  loc_1CA547C:     var_164 = CStr(var_9C.Value)
  loc_1CA5489:   End If
  loc_1CA5497:   Set var_88 = var_9C(CInt(2))
  loc_1CA549D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2CC)
  loc_1CA54A5:    = var_9C.Text
  loc_1CA54B8:   Set var_1C4 = var_228(CInt(0))
  loc_1CA54BE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_320)
  loc_1CA54C6:    = var_228.Text
  loc_1CA54D3:   var_238 = Val(var_320)
  loc_1CA54F1:   Set var_22C = var_324(CInt(1))
  loc_1CA54F7:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA5506:   Proc_6_7_F25D88(var_270)
  loc_1CA5516:   Set var_328 = var_37C(CInt(5))
  loc_1CA551C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CVar(var_324))
  loc_1CA5524:   var_338 = CVar(var_37C) 'Address
  loc_1CA555E:   Set var_3A8 = (var_1CA)
  loc_1CA5564:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA5576:   Set var_46C = var_470(var_1CA)
  loc_1CA557C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B40)
  loc_1CA5584:    = var_470.Text
  loc_1CA5591:   var_D2C = Val(var_B40)
  loc_1CA559B:   Set var_474 = var_D2C(var_1CC)
  loc_1CA55A1:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA55B3:   Set var_478 = var_4BC(var_1CC)
  loc_1CA55B9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8C)
  loc_1CA55C1:    = var_4BC.Text
  loc_1CA55CE:   var_D34 = Val(var_B8C)
  loc_1CA55DF:   Set var_540 = var_544(CInt(7))
  loc_1CA55E5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_BD8)
  loc_1CA55FA:   var_D3C = Val(var_BD8)
  loc_1CA560B:   Set var_588 = var_58C(CInt(3))
  loc_1CA5611:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C24)
  loc_1CA5629:   Set var_590 = var_858(CInt(3))
  loc_1CA562F:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA5642:   Set var_85C = var_860(CInt(3))
  loc_1CA5648:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C70)
  loc_1CA5650:    = var_860.Tag
  loc_1CA5658:   var_5F4 = CVar(var_C70) 'String
  loc_1CA5684:   Set var_8E8 = var_8EC(CInt(&HA))
  loc_1CA568A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_CBC)
  loc_1CA5692:    = var_8EC.Text
  loc_1CA56A2:   Proc_183_7_EB0C44(var_734)
  loc_1CA56B2:   Proc_183_7_EB0C44(var_794, MemVar_1F920EC)
  loc_1CA56BB:   Set var_9C4 = Me.TopCtrl1
  loc_1CA56C1:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(MemVar_1F920EC)
  loc_1CA5733:   var_1C8 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,"
  loc_1CA573A:   var_230 = var_1C8 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,"
  loc_1CA5741:   var_274 = var_230 & "ExpDate,U_Name,U_EntDt,AU_EntDt,U_AE,RestCode,FolionoDocid,LogSite_Code) Values ("
  loc_1CA5748:   var_2D0 = var_274 & "'"
  loc_1CA574F:   var_2D4 = var_2D0 & var_2CC
  loc_1CA5762:   var_30C = var_2D4 & "'," & CStr(var_1BE)
  loc_1CA578D:   var_9D8 = var_30C & ",'" & global_184 & "'," & CStr(var_238) & ",'"
  loc_1CA57A5:   var_98 = "',"
  loc_1CA57DD:   var_390 = CVar(var_9D8 & MemVar_1F92070 & "','") & Trim(CVar((var_238))) & var_98 & var_270 & ",'" & Trim(var_338) & "'" & ",'" & CVar(var_164) 
  loc_1CA5828:   var_4CC = var_390 & "','','" & CVar(var_16C) & "','" & var_1A0.Fields.Item("Code").Value & "','Room'," & CVar(var_D2C) & "," & CVar(var_544.Text) 
  loc_1CA5871:   var_584 = var_4CC & "," & CVar(var_58C.Text) & ",'" & CVar(global_188) & "'," & "'" & CVar(global_192) 
  loc_1CA588A:   var_654 = var_584 & "','" & IIf((var_C24 <> vbNullString), CVar(var_858), var_5F4) & "'," 
  loc_1CA58E0:   var_884 = var_654 & CVar(var_CBC) & ",'','','',Null," & "Null,'" & CVar(MemVar_1F920C8) & "'," & var_734 & "," & var_794 & ",'" & IIf((CStr(var_7F4) = "Add"), "A", "E") 
  loc_1CA5922:   var_980 = var_884 & "','" & CVar(global_76) & "','" & var_1A4.Fields.Item("DocID").Value & "','" & CVar(MemVar_1F92078) & "')" 
  loc_1CA5930:   unk_5B213D.Execute CStr(var_980), var_990, -1
  loc_1CA5A32:   Set var_88 = var_9C(CInt(2))
  loc_1CA5A38:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_30C)
  loc_1CA5A40:   var_B38 = var_9C.Text
  loc_1CA5A53:   Set var_1C4 = var_228(CInt(0))
  loc_1CA5A59:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA5A61:    = var_228.Text
  loc_1CA5A6E:   var_D54 = Val(var_1C8)
  loc_1CA5A75:   var_AC = CVar((var_D54)) 'Address
  loc_1CA5A8F:   Set var_22C = var_324(CInt(1))
  loc_1CA5A95:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_320)
  loc_1CA5A9D:    = var_324.Text
  loc_1CA5AAD:   Set var_328 = var_37C(CInt(5))
  loc_1CA5AB3:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA5AC2:   var_210 = Trim(CVar(var_37C))
  loc_1CA5AD9:   var_380 = var_1A0.Fields
  loc_1CA5AE9:   var_378 = var_380.Item("Code").Value
  loc_1CA5AF5:   Set var_3A8 = (var_1CA)
  loc_1CA5AFB:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA5B0D:   Set var_46C = var_470(var_1CA)
  loc_1CA5B13:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_230)
  loc_1CA5B1B:    = var_470.Text
  loc_1CA5B32:   Set var_474 = Val(var_230)(var_1CC)
  loc_1CA5B38:   Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA5B4A:   Set var_478 = var_4BC(var_1CC)
  loc_1CA5B50:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274)
  loc_1CA5B58:    = var_4BC.Text
  loc_1CA5B65:   var_1194 = Val(var_274)
  loc_1CA5B76:   Set var_540 = var_544(CInt(7))
  loc_1CA5B7C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2CC)
  loc_1CA5B84:   var_1194 = var_544.Text
  loc_1CA5B91:   var_119C = Val(var_2CC)
  loc_1CA5BA2:   Set var_588 = var_58C(CInt(3))
  loc_1CA5BA8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2D0)
  loc_1CA5BB0:   var_119C = var_58C.Text
  loc_1CA5BC0:   Set var_590 = var_858(CInt(3))
  loc_1CA5BC6:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA5BD9:   Set var_85C = var_860(CInt(3))
  loc_1CA5BDF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2D4)
  loc_1CA5BE7:    = var_860.Tag
  loc_1CA5C08:   var_270 = IIf((var_2D0 <> vbNullString), CVar(var_858), CVar(var_2D4))
  loc_1CA5C1B:   Set var_8E8 = var_8EC(CInt(&HA))
  loc_1CA5C21:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8C)
  loc_1CA5C29:    = var_8EC.Text
  loc_1CA5C31:   var_284 = Date
  loc_1CA5C39:   var_294 = Date
  loc_1CA5C42:   Set var_9C4 = Me.TopCtrl1
  loc_1CA5C48:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1CA5C7A:   var_368 = IIf((CStr(var_338) = "Add"), "A", "E")
  loc_1CA5CA1:   var_390 = var_1A4.Fields.Item("DocID").Value
  loc_1CA5CAB:   var_EE8 = 0
  loc_1CA5CB6:   var_E84 = 0
  loc_1CA5CC9:   var_E20 = 0
  loc_1CA5CD4:   var_DBC = 0
  loc_1CA5D0B:   var_C70 = vbNullString
  loc_1CA5D14:   var_C24 = vbNullString
  loc_1CA5D1D:   var_BD8 = vbNullString
  loc_1CA5D56:   var_A74 = "Room"
  loc_1CA5D6A:   var_8F0 = vbNullString
  loc_1CA5D73:   var_864 = vbNullString
  loc_1CA5DB7:   Proc_96_8_1CC2560(MemVar_1F92078 & "TOUT", var_30C, var_1BE, global_184, CLng(var_D54), MemVar_1F92070, CStr(Trim(var_AC)), CDate(var_320))
  loc_1CA5E54: Else
  loc_1CA5E5F:   If (global_288 = "Yes") Then
  loc_1CA5E6F:     Set var_88 = var_1C4(var_1CA)
  loc_1CA5E75:     Call 0.Method_TopCtrl1_UnknownEvent_168 (var_1C8, CStr(var_210), var_864, var_8F0)
  loc_1CA5E81:     Set var_9C = var_16C(var_1CA)
  loc_1CA5E87:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CStr(var_378), var_A74)
  loc_1CA5E8F:     var_118C = var_1C4.Text
  loc_1CA5EA2:     Set var_228 = var_22C(CInt(6))
  loc_1CA5EA8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA5EB0:     var_22C.Text = 
  loc_1CA5EC5:   End If
  loc_1CA5ED3:   Set var_88 = var_9C(CInt(6))
  loc_1CA5ED9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA5EE1:    = var_9C.Text
  loc_1CA5EFD:   If (CDbl(Val(var_1C8)) > CDbl(0)) Then
  loc_1CA5F10:      = "CASH RECD. "(var_1C8).Caption
  loc_1CA5F27:     var_2CC = var_1C8 & " " & "BILL NO.-"
  loc_1CA5F2E:     var_2D4 = var_2CC & " "
  loc_1CA5F3F:     Set var_9C = var_1C4(CInt(0))
  loc_1CA5F45:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2D0)
  loc_1CA5F4D:     var_2D4 = var_1C4.Text
  loc_1CA5F89:     If (InStr(1, var_2D0, "'", 0) > 0) Then
  loc_1CA5FA9:       var_16C = Replace(var_16C, "'", ", 1, -1, 0)
  loc_1CA5FAC:     End If
  loc_1CA5FCA:     Set var_88 = var_9C(CInt(2))
  loc_1CA5FD0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Delete From PayCharge Where DocID='", var_AC)
  loc_1CA5FD8:     -1 = var_9C.Text
  loc_1CA5FF1:     unk_5B213D.Execute var_1C4 & var_1C8 & "'", , 
  loc_1CA6019:     Set var_88 = var_9C(CInt(2))
  loc_1CA601F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2CC)
  loc_1CA6027:      = var_9C.Text
  loc_1CA603A:     Set var_1C4 = var_228(CInt(0))
  loc_1CA6040:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_30C)
  loc_1CA6048:      = var_228.Text
  loc_1CA6055:     var_238 = Val(var_30C)
  loc_1CA6063:     var_CC = Trim(CVar((var_238)))
  loc_1CA6073:     Set var_22C = var_324(CInt(1))
  loc_1CA6079:     Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1CA6081:     var_260 = CVar(var_324) 'Address
  loc_1CA6088:     Proc_6_7_F25D88(var_270)
  loc_1CA6094:     Set var_328 = var_260(var_1CA)
  loc_1CA609A:     Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA60AC:     Set var_37C = var_380(var_1CA)
  loc_1CA60B2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_8F0)
  loc_1CA60BA:      = var_380.Text
  loc_1CA60C7:     var_D2C = Val(var_8F0)
  loc_1CA60D1:     Set var_3A4 = var_D2C(var_1CC)
  loc_1CA60D7:     Call 0.Method_TopCtrl1_UnknownEvent_168 ()
  loc_1CA60E9:     Set var_3A8 = var_46C(var_1CC)
  loc_1CA60EF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_9D8)
  loc_1CA60F7:      = var_46C.Text
  loc_1CA6104:     var_D34 = Val(var_9D8)
  loc_1CA6115:     Set var_470 = var_474(CInt(7))
  loc_1CA611B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A74)
  loc_1CA6130:     var_D3C = Val(var_A74)
  loc_1CA6141:     Set var_478 = var_4BC(CInt(3))
  loc_1CA6147:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B40)
  loc_1CA615F:     Proc_183_7_EB0C44(var_584)
  loc_1CA616F:     Proc_183_7_EB0C44(var_5F4, MemVar_1F920EC)
  loc_1CA6178:     Set var_540 = Me.TopCtrl1
  loc_1CA617E:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(MemVar_1F920EC)
  loc_1CA61C9:     var_1C8 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1CA61D7:     var_274 = var_1C8 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,AU_EntDt,U_AE,RestCode,LogSite_Code) Values ("
  loc_1CA61E5:     var_2D4 = var_274 & "'" & var_2CC
  loc_1CA6209:     var_320 = var_2D4 & "',1,'" & global_184 & "'," & CStr(var_238)
  loc_1CA6234:     var_284 = CVar(var_320 & ",'" & MemVar_1F92070 & "','") & var_CC & "'," & var_270 
  loc_1CA6282:     var_3A0 = var_284 & ",'','','" & CVar(var_274 & "'") & "','" & CVar(var_19C) & "','Cash'," & CVar(var_D2C) & "," & CVar(var_474.Text) 
  loc_1CA62DE:     var_4FC = var_3A0 & "," & CVar(var_4BC.Tag) & ",'" & CVar(global_188) & "'," & "'" & CVar(global_192) & "','" & CVar(var_B40) 
  loc_1CA632A:     var_6D4 = var_4FC & "',0,'','','',Null," & "Null,'" & CVar(MemVar_1F920C8) & "'," & var_584 & "," & var_5F4 & ",'" & IIf((CStr(var_654) = "Add"), "A", "E") 
  loc_1CA636A:     unk_5B213D.Execute CStr(var_6D4 & "','" & CVar(global_76) & "','" & CVar(MemVar_1F92078) & "')"), var_794, -1
  loc_1CA6420:   End If
  loc_1CA6420: End If
  loc_1CA6424: Set var_88 = Me.TopCtrl1
  loc_1CA642A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_544)
  loc_1CA6443: If (CStr() = "Add") Then
  loc_1CA645A:   var_1C8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1CA6480:   var_1F0 = CVar(var_1C8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_184 & "' And VP.Date_From<=") 'String
  loc_1CA6491:   Set var_88 = var_9C(CInt(1))
  loc_1CA6497:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2D4, var_1F0, var_260)
  loc_1CA649F:   -1 = var_9C.Text
  loc_1CA64AD:   Proc_6_7_F25D88(var_CC, CVar(var_2D4))
  loc_1CA64CC:   unk_5B213D.Execute CStr(var_1C4 & var_CC & " Order By VP.Date_From DESC"), , 
  loc_1CA64D7:   Set var_D0 = var_1C4
  loc_1CA6515:   If (var_D0.RecordCount > 0) Then
  loc_1CA6526:     Set var_88 = var_9C(CInt(0))
  loc_1CA652C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA6534:      = var_9C.Text
  loc_1CA6541:     var_238 = Val(var_1C8)
  loc_1CA6556:     var_1C4 = var_D0.Fields
  loc_1CA655E:     var_228 = var_1C4.Item("V_Type")
  loc_1CA6566:     var_AC = var_228.Value
  loc_1CA6582:     var_324 = var_D0.Fields.Item("Date_From")
  loc_1CA6591:     Proc_6_7_F25D88(var_260, CVar(var_324))
  loc_1CA65AB:     var_230 = CStr(var_238)
  loc_1CA65CB:     var_300 = "Update Voucher_Prefix Set Start_Srl_No=" & var_230 & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_1CA65E8:     var_270 = CVar(var_300 & "') and V_Type='") & var_AC & "' and Date_From=" & var_260 
  loc_1CA65F6:     unk_5B213D.Execute CStr(var_270), var_284, -1
  loc_1CA6630:   End If
  loc_1CA6630: End If
  loc_1CA6634: Set var_88 = Me.TopCtrl1
  loc_1CA663A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_328)
  loc_1CA6653: If (CStr(var_238) = "Add") Then
  loc_1CA6679:   var_1C8 = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F920C8
  loc_1CA6689:   Call 0.Method_arg_50 (var_230, var_1C8 & "' AND ENAME='", var_AC, -1, var_88)
  loc_1CA6699:   var_2D0 = var_9C & var_230 & "' "
  loc_1CA66A2:   unk_5B213D.Execute var_2D0, 0, var_1C4
  loc_1CA66B2:    = var_9C.Item()
  loc_1CA66BA:    = var_1C4.Value
  loc_1CA66E7:   If (var_88.Fields > 0) Then
  loc_1CA6708:     Set var_88 = var_9C(CInt(2))
  loc_1CA670E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "UPDATE LASTVOU  SET DOCID='", var_AC)
  loc_1CA6716:     -1 = var_9C.Text
  loc_1CA671F:     var_230 = var_1C4 & var_1C8
  loc_1CA673D:     Call 0.Method_arg_50 (var_2D0)
  loc_1CA6756:     unk_5B213D.Execute var_230 & "' WHERE UNAME='" & MemVar_1F920C8 & "' AND ENAME='" & var_2D0 & "'  ", , 
  loc_1CA677D:   Else
  loc_1CA6798:     var_274 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8 & "','"
  loc_1CA67A1:     Call 0.Method_arg_50 (var_230, var_274, var_270)
  loc_1CA67AA:     var_2CC = -1 & var_230
  loc_1CA67B1:     var_2D4 = var_230 & "' WHERE UNAME='" & MemVar_1F920C8 & "','"
  loc_1CA67C2:     Set var_88 = var_9C(CInt(2))
  loc_1CA67C8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2D0, var_2D4)
  loc_1CA67D0:     var_1C4 = var_9C.Text
  loc_1CA67E7:     var_30C = var_2D0 & "','" & MemVar_1F92078
  loc_1CA67F4:     var_98 = MemVar_1F920EC
  loc_1CA67FC:     Proc_6_7_F25D88(var_AC, var_98)
  loc_1CA682E:     unk_5B213D.Execute CStr(CVar(var_30C & "',") & var_AC & ",'A','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1CA6864:   End If
  loc_1CA6864: End If
  loc_1CA6868: Set var_88 = Me.TopCtrl1
  loc_1CA686E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1CA6876: var_1C8 = CStr()
  loc_1CA6887: If (var_1C8 = "Add") Then
  loc_1CA6898:   Set var_88 = var_9C(CInt(0))
  loc_1CA689E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA68A6:    = var_9C.Text
  loc_1CA68C1:   Set var_1C4 = var_228(CInt(1))
  loc_1CA68C7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_230)
  loc_1CA68CF:   (var_1C8 <> vbNullString) = var_228.Text
  loc_1CA68EB:   Set var_22C = var_324(CInt(2))
  loc_1CA68F1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274)
  loc_1CA68F9:   ( Or (var_230 <> vbNullString)) = var_324.Text
  loc_1CA6915:   Set var_328 = var_37C(CInt(3))
  loc_1CA691B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_230 & "' WHERE UNAME='" & MemVar_1F920C8)
  loc_1CA6923:   ( Or (var_274 <> vbNullString)) = var_37C.Text
  loc_1CA694F:   If ( Or (var_230 & "' WHERE UNAME='" & MemVar_1F920C8 <> vbNullString)) Then
  loc_1CA6970:     Set var_88 = var_9C(CInt(2))
  loc_1CA6976:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8, "Insert Into OrderPersonDetails (DocId,PhoneNo,CustName,Addr1,Addr2) values('", var_AC)
  loc_1CA697E:     -1 = var_9C.Text
  loc_1CA698E:     var_2CC = var_3A8 & var_1C8 & "','"
  loc_1CA699F:     Set var_1C4 = var_228(CInt(0))
  loc_1CA69A5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_274)
  loc_1CA69AD:     var_2CC = var_228.Text
  loc_1CA69BD:     var_300 = var_274 & "','"
  loc_1CA69CE:     Set var_22C = var_324(CInt(1))
  loc_1CA69D4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_2D4)
  loc_1CA69DC:     var_300 = var_324.Text
  loc_1CA69EC:     var_314 = var_2D4 & "','"
  loc_1CA69FD:     Set var_328 = var_37C(CInt(2))
  loc_1CA6A03:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_30C)
  loc_1CA6A0B:     var_314 = var_37C.Text
  loc_1CA6A1B:     var_594 = var_30C & "','"
  loc_1CA6A2C:     Set var_380 = var_3A4(CInt(3))
  loc_1CA6A32:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_320)
  loc_1CA6A3A:     var_594 = var_3A4.Text
  loc_1CA6A53:     unk_5B213D.Execute var_320 & "')", , 
  loc_1CA6A95:   End If
  loc_1CA6A95: End If
  loc_1CA6A9B: unk_5B213D.CommitTrans
  loc_1CA6AA2: var_D2 = 0
  loc_1CA6AB3: Set var_88 = var_9C(CInt(2))
  loc_1CA6AB9: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1C8)
  loc_1CA6AC1: var_D2 = var_9C.Text
  loc_1CA6AC9: var_D8 = var_1C8
  loc_1CA6AD5: var_D2 = 0
  loc_1CA6AE3: Me.Requery -1
  loc_1CA6B0D: Me.Find "SearchCode ='" & var_D8 & "'", 0, 1
  loc_1CA6B24: If (global_188 <> "FAST") Then
  loc_1CA6B32:   Me.Requery -1
  loc_1CA6B37: End If
  loc_1CA6B42: Me.Requery -1
  loc_1CA6B6A: Call Proc_258_148_1079CA0(Proc_5_1_100CB50("INI", Me, global_116), var_98)
  loc_1CA6B7E: var_1CA = Me.EOF
  loc_1CA6B89: If (var_1CA = 0) Then
  loc_1CA6B8C:   Call Proc_258_145_1BA10F4(var_D2)
  loc_1CA6B91: End If
  loc_1CA6B91: Call Proc_258_133_121F3D8()
  loc_1CA6B9B: Set var_D0 = Nothing
  loc_1CA6BA3: Set var_1A4 = Nothing
  loc_1CA6BAB: Call Proc_258_132_1233AC4(&HFF)
  loc_1CA6BBB: If (global_240 = "N") Then
  loc_1CA6BCD:   Call Proc_258_168_EB6494(var_D8, var_1CA)
  loc_1CA6BD9:   If ((global_56 = &HFF) And (var_1CA = &HFF)) Then
  loc_1CA6BE1:     global_56 = 0
  loc_1CA6BE4:     Call TopCtrl1_UnknownEvent_14()
  loc_1CA6BE9:   End If
  loc_1CA6BF4:   If (global_288 = "Yes") Then
  loc_1CA6BF7:     Call TopCtrl1_UnknownEvent_A()
  loc_1CA6BFC:   End If
  loc_1CA6BFF: Else
  loc_1CA6C08:   If (global_56 = &HFF) Then
  loc_1CA6C10:     global_56 = 0
  loc_1CA6C13:     Call TopCtrl1_UnknownEvent_14()
  loc_1CA6C18:   End If
  loc_1CA6C18:   Call TopCtrl1_UnknownEvent_E()
  loc_1CA6C1D: End If
  loc_1CA6C1D: Exit Sub
  loc_1CA6C1E: ' Referenced from: 1CA0452
  loc_1CA6C24: If (var_D2 = &HFF) Then
  loc_1CA6C2D:   unk_5B213D.RollbackTrans
  loc_1CA6C32: End If
  loc_1CA6C32: Proc_6_60_E62BC4(global_56)
  loc_1CA6C37: Exit Sub
End Sub

Private Sub CmdRefundCashCardAmt_UnknownEvent_9 '13D4DB8
  'Data Table: 5B2100
  Dim var_A4 As Variant
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_184 As Variant
  Dim var_140 As Variant
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_F8 As Variant
  Dim var_A8 As String
  Dim unk_5B213D As Connection15
  Dim var_12C As Variant
  Dim var_130 As Fields15
  Dim var_144 As Variant
  Dim var_118 As Variant
  Dim var_1F0 As Recordset15
  Dim var_208 As String
  Dim var_204 As String
  loc_13D443C: On Error Goto loc_13D4D6A
  loc_13D444D: Set var_A0 = var_A4(CInt(1))
  loc_13D4453: Call 0.Method_CmdRefundCashCardAmt_UnknownEvent_90 (var_A8)
  loc_13D445B:  = var_A4.Text
  loc_13D4473: If (CDate(var_A8) <> MemVar_1F920EC) Then
  loc_13D447C:   Call 0.Method_arg_50 (var_A8)
  loc_13D449D:   MsgBox("Only Current Date Settlement can be refund.", &H10, CVar(var_A8), var_F8, var_118)
  loc_13D44AD:   Exit Sub
  loc_13D44AE: End If
  loc_13D44B6: var_184 = (MemVar_1F921A8 = "Outlet")
  loc_13D44C0: var_140 = 0
  loc_13D4508: var_D8 = "Select Count(*) From Paycharge Where PayType='Cash Card' And docid='" & Me.Fields.Item("SearchCode").Value 
  loc_13D4511: var_F8 = var_D8 & "'" 
  loc_13D451F: unk_5B213D.Execute CStr(var_F8), var_118, -1
  loc_13D4527: var_12C = var_12C.Fields
  loc_13D452F: var_140 = var_130.Item(var_130)
  loc_13D4537: var_144 = var_144.Value
  loc_13D4572: If CBool(Not var_154 And (var_154 > 0)) Then
  loc_13D458E:   MsgBox("Not a Cash Card Settlement", &H10, var_D8, var_F8, var_118)
  loc_13D459E:   Exit Sub
  loc_13D459F: End If
  loc_13D45B0: var_94 = Me.Bookmark 'Variant
  loc_13D45B8: Set var_1A8 = New RsTouchScreenKeyBoard
  loc_13D45C6: var_1A8.ParentForm = CVar(Me)
  loc_13D45D3: var_1A8.CAPTION = "Please Specify, Reason of Deletion ?"
  loc_13D45E5: var_1A8.TxtKeyBoard.MaxLength = 150
  loc_13D45EC: var_B8 = 1
  loc_13D45F8: Call var_1A8.Show
  loc_13D4609: var_9C = TxtKeyBoard
  loc_13D462A: If (Trim(var_9C) = vbNullString) Then
  loc_13D4638:   var_D8 = "Void Reason"
  loc_13D464E:   MsgBox("Please Enter a Valid Reason for Deletion.", 0, var_D8, var_F8, var_118)
  loc_13D4677:   MsgBox("Transaction Cancelled", &H10, var_D8, var_F8, var_118)
  loc_13D4687:   Exit Sub
  loc_13D4688: End If
  loc_13D468A: Set var_1A8 = Nothing 
  loc_13D4697: unk_5B213D.BeginTrans var_1AC
  loc_13D46F2: unk_5B213D.Execute CStr("Update KOT set delflag='Y' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13D4764: unk_5B213D.Execute CStr("Update Stock set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13D47F8: var_118 = "Update Sale1 set delflag='D',Remark='" & Left(Trim(var_9C), &H19) & "',U_name='" 
  loc_13D4813: var_184 = "'"
  loc_13D4826: unk_5B213D.Execute CStr(var_118 & Trim(MemVar_1F920C8) & "',U_AE='E' where docid='" & Me.Fields.Item("SearchCode").Value & var_184), var_1EC, -1
  loc_13D48A6: unk_5B213D.Execute CStr("Update Sale2 set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13D48F1: var_A4 = Me.Fields.Item("SearchCode")
  loc_13D490E: var_A8 = CStr("Update SunTran set delflag='D' where docid='" & var_A4.Value & "'")
  loc_13D4918: unk_5B213D.Execute var_A8, var_118, -1
  loc_13D4942: Set var_A0 = var_A4(CInt(&HB))
  loc_13D4948: Call 0.Method_CmdRefundCashCardAmt_UnknownEvent_90 (var_A8, var_12C, var_12C, var_12C)
  loc_13D4950: var_12C = var_A4.Tag
  loc_13D4967: If (var_A8 <> vbNullString) Then
  loc_13D49B2:   var_F8 = "update packingorderdetail set contradocid='' ,ContraSno=0 where contradocid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_13D49C0:   unk_5B213D.Execute CStr(var_F8), var_118, -1
  loc_13D49DC: End If
  loc_13D4A24: var_F8 = "Select Code,VType,VNo,AmtDr,HW_Id,PreBalance From SmartCardLedger Where docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_13D4A32: unk_5B213D.Execute CStr(var_F8), var_118, -1
  loc_13D4A3D: Set var_1F0 = var_12C
  loc_13D4A57: ' Referenced from: 13D4BE4
  loc_13D4A66: If Not(var_1F0.EOF) Then
  loc_13D4A6F:   var_B8 = "vType"
  loc_13D4A9F:   var_208 = var_12C & Proc_6_38_E68A98(CVar(var_1F0.Fields.Item(var_B8)), "Refund Agnst. (", var_12C, var_12C) & ") BILL NO.- "
  loc_13D4B24:   var_12C = var_1F0.Fields
  loc_13D4B66:   Proc_6_39_E7C810(var_118, CVar(var_1F0.Fields.Item("AmtDr")))
  loc_13D4B8D:   var_204 = Proc_6_14_EF349C(var_184)
  loc_13D4BB4:   Proc_275_17_1185D08(Proc_6_38_E68A98(CVar(var_1F0.Fields.Item("Code"))), Proc_6_38_E68A98(CVar(var_12C.Item("HW_Id"))), "Refund", MemVar_1F920EC, CSng(var_118), CDbl(0), "Code" & Proc_6_38_E68A98(CVar(var_1F0.Fields.Item("VNo")), Proc_6_38_E68A98(CVar(var_1F0.Fields.Item("Code")))))
  loc_13D4BDF:   var_1F0.MoveNext
  loc_13D4BE4:   GoTo loc_13D4A57
  loc_13D4BE7: End If
  loc_13D4C3D: unk_5B213D.Execute CStr("DELETE FROM SmartCardLedger WHERE docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13D4CA1: var_F8 = "DELETE FROM PAYCHARGE WHERE docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_13D4CA5: var_A8 = CStr(var_F8)
  loc_13D4CAF: unk_5B213D.Execute var_A8, var_118, -1
  loc_13D4CD1: unk_5B213D.CommitTrans
  loc_13D4CDB: Set var_1F0 = Nothing
  loc_13D4CE9: Me.Requery -1
  loc_13D4D09: If (CVar(Me.RecordCount) >= var_94) Then
  loc_13D4D16:   Me.Bookmark = var_94
  loc_13D4D1E: Else
  loc_13D4D32:   If (Me.EOF = 0) Then
  loc_13D4D3B:     Me.MoveLast
  loc_13D4D40:   End If
  loc_13D4D40: End If
  loc_13D4D40: Call Proc_258_145_1BA10F4(var_12C, var_12C, MemVar_1F920C8, CDate(var_204))
  loc_13D4D61: Proc_5_0_110649C(&HFF, Me, global_116, 0)
  loc_13D4D69: Exit Sub
  loc_13D4D6A: ' Referenced from: 13D443C
  loc_13D4D70: unk_5B213D.RollbackTrans
  loc_13D4D7D: Set var_A0 = Err()
  loc_13D4D83: Call 0.Method_arg_2C (var_A8, "A", global_156)
  loc_13D4DA4: MsgBox(CVar(var_A8), &H10, " Refund Message", var_F8, var_118)
  loc_13D4DB7: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12C4ECC
  'Data Table: 5B2100
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_12C486A: Set var_88 = var_8C(Index)
  loc_12C4870: Call 0.Method_Txt_GotFocus0 ()
  loc_12C487E: Proc_6_74_E226B0(var_8C)
  loc_12C488A: Call Proc_258_149_FD63A8()
  loc_12C4892: var_92 = Index
  loc_12C489D: If (var_92 = CInt(3)) Then
  loc_12C48B7:   If (Me.RecordCount > 0) Then
  loc_12C48C5:     Set var_8C = ()
  loc_12C48DD:     Proc_6_137_1193554((var_92), global_120)
  loc_12C48EB:   End If
  loc_12C4939:   Set var_88 = var_8C(Index)
  loc_12C493F:   Call 0.Method_Txt_GotFocus0 (var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_12C4947:   Index = var_8C.Text
  loc_12C495F:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_12C4962:     Exit Sub
  loc_12C4963:   End If
  loc_12C4970:   Set var_88 = var_8C(Index)
  loc_12C4976:   Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_12C497E:    = var_8C.Text
  loc_12C4986:   var_D4 = CVar(var_A0) 'String
  loc_12C49A7:   var_B4 = Me.Fields.Item("Name")
  loc_12C49CB:   If CBool(var_D4 <> var_B4.Value) Then
  loc_12C49D4:     Me.MoveFirst
  loc_12C49F9:     Set var_88 = var_8C(Index)
  loc_12C49FF:     Call 0.Method_Txt_GotFocus0 (var_A0, "Name =", 0)
  loc_12C4A07:     1 = var_8C.Text
  loc_12C4A15:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0))
  loc_12C4A2B:     Me.Find CStr(var_F8 & var_D4), , 
  loc_12C4A43:   End If
  loc_12C4A46: Else
  loc_12C4A4E:   If Not (var_92 = CInt(4)) Then
  loc_12C4A59:     If Not (var_92 = CInt(7)) Then
  loc_12C4A64:       If (var_92 = CInt(8)) Then
  loc_12C4A67:       End If
  loc_12C4A67:     End If
  loc_12C4A76:     Set var_88 = var_8C(Index)
  loc_12C4A7C:     Call 0.Method_Txt_GotFocus0 (0)
  loc_12C4A84:     var_8C.SelStart = 
  loc_12C4A9D:     Set var_88 = var_8C(Index)
  loc_12C4AA3:     Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_12C4AAB:      = var_8C.Text
  loc_12C4ABE:     Set var_90 = var_B4(Index)
  loc_12C4AC4:     Call 0.Method_Txt_GotFocus0 (Len(var_A0))
  loc_12C4ACC:     var_B4.SelLength = 
  loc_12C4AE2:   Else
  loc_12C4AEA:     If (var_92 = CInt(6)) Then
  loc_12C4AFC:       Set var_88 = var_8C(Index)
  loc_12C4B02:       Call 0.Method_Txt_GotFocus0 (0)
  loc_12C4B0A:       var_8C.SelStart = 
  loc_12C4B23:       Set var_88 = var_8C(Index)
  loc_12C4B29:       Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_12C4B31:        = var_8C.Text
  loc_12C4B44:       Set var_90 = var_B4(Index)
  loc_12C4B4A:       Call 0.Method_Txt_GotFocus0 (Len(var_A0))
  loc_12C4B52:       var_B4.SelLength = 
  loc_12C4B68:     Else
  loc_12C4B70:       If (var_92 = CInt(&HB)) Then
  loc_12C4B8A:         If (Me.RecordCount > 0) Then
  loc_12C4B98:           Set var_8C = ()
  loc_12C4BB0:           Proc_6_137_1193554((), global_124)
  loc_12C4BBE:         End If
  loc_12C4C0C:         Set var_88 = var_8C(Index)
  loc_12C4C12:         Call 0.Method_Txt_GotFocus0 (var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_12C4C1A:         Index = var_8C.Text
  loc_12C4C32:         If (var_8C Or (var_A0 = vbNullString)) Then
  loc_12C4C35:           Exit Sub
  loc_12C4C36:         End If
  loc_12C4C43:         Set var_88 = var_8C(Index)
  loc_12C4C49:         Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_12C4C51:          = var_8C.Text
  loc_12C4C59:         var_D4 = CVar(var_A0) 'String
  loc_12C4C9E:         If CBool(var_D4 <> Me.Fields.Item("VNo").Value) Then
  loc_12C4CA7:           Me.MoveFirst
  loc_12C4CCD:           Set var_88 = var_8C(CInt(&HB))
  loc_12C4CD3:           Call 0.Method_Txt_GotFocus0 (var_A0, "Vno =", 0)
  loc_12C4CDB:           1 = var_8C.Text
  loc_12C4CE9:           Proc_6_17_EAA2B0(var_D4, CVar(var_A0))
  loc_12C4CFF:           Me.Find CStr(var_F8 & var_D4), , 
  loc_12C4D17:         End If
  loc_12C4D1A:       Else
  loc_12C4D22:         If (var_92 = CInt(&HD)) Then
  loc_12C4D3C:           If (Me.RecordCount > 0) Then
  loc_12C4D4A:             Set var_8C = ()
  loc_12C4D62:             Proc_6_137_1193554((), global_108)
  loc_12C4D70:           End If
  loc_12C4DBE:           Set var_88 = var_8C(Index)
  loc_12C4DC4:           Call 0.Method_Txt_GotFocus0 (var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_12C4DCC:           Index = var_8C.Text
  loc_12C4DE4:           If (var_8C Or (var_A0 = vbNullString)) Then
  loc_12C4DE7:             Exit Sub
  loc_12C4DE8:           End If
  loc_12C4DF5:           Set var_88 = var_8C(Index)
  loc_12C4DFB:           Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_12C4E03:            = var_8C.Text
  loc_12C4E0B:           var_D4 = CVar(var_A0) 'String
  loc_12C4E50:           If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_12C4E59:             Me.MoveFirst
  loc_12C4E7E:             Set var_88 = var_8C(Index)
  loc_12C4E84:             Call 0.Method_Txt_GotFocus0 (var_A0, "Name =", 0)
  loc_12C4E8C:             1 = var_8C.Text
  loc_12C4E9A:             Proc_6_17_EAA2B0(var_D4, CVar(var_A0))
  loc_12C4EB0:             Me.Find CStr(var_F8 & var_D4), , 
  loc_12C4EC8:           End If
  loc_12C4EC8:         End If
  loc_12C4EC8:       End If
  loc_12C4EC8:     End If
  loc_12C4EC8:   End If
  loc_12C4EC8: End If
  loc_12C4EC8: Exit Sub
  loc_12C4EC9:  = 
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11EBC5C
  'Data Table: 5B2100
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As TextBox
  Dim var_9C As Frame
  loc_11EB7DF: var_86 = Shift
  loc_11EB7EC: If (CLng(Shift) = &H1B) Then
  loc_11EB7EF:   Call Proc_258_149_FD63A8(var_86)
  loc_11EB7F4:   Exit Sub
  loc_11EB7F5: End If
  loc_11EB7F8: var_88 = KeyCode
  loc_11EB803: If (var_88 = CInt(3)) Then
  loc_11EB82E:   Set var_9C = Nothing
  loc_11EB860:   Proc_6_69_134A198((var_88), (), CInt(3), global_120, Shift)
  loc_11EB8CF:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_11EB8D6:     Set var_9C = 1(0)
  loc_11EB8DD:     Set var_90 = ()(var_9C)
  loc_11EB8F5:     Proc_6_138_106D6F8(var_9C, global_120, KeyCode)
  loc_11EB911:     Set var_8C = var_90(CInt(3))
  loc_11EB917:     Call 0.Method_Txt_KeyDown0 (var_B8, var_90)
  loc_11EB91F:     0 = var_90.Tag
  loc_11EB92A:     global_324 = var_B8
  loc_11EB938:   End If
  loc_11EB93B: Else
  loc_11EB943:   If (var_88 = CInt(&HB)) Then
  loc_11EB96E:     Set var_9C = Nothing
  loc_11EB9A0:     Proc_6_69_134A198((), (), CInt(&HB), global_124, Shift)
  loc_11EBA0F:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_11EBA16:       Set var_9C = 1(0)
  loc_11EBA1D:       Set var_90 = ()(var_9C)
  loc_11EBA35:       Proc_6_138_106D6F8(var_9C, global_124, KeyCode)
  loc_11EBA43:     End If
  loc_11EBA46:   Else
  loc_11EBA4E:     If (var_88 = CInt(&HD)) Then
  loc_11EBA79:       Set var_9C = Nothing
  loc_11EBAAB:       Proc_6_69_134A198(0(()), (), CInt(&HD), global_108, Shift)
  loc_11EBB1A:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_11EBB21:         Set var_9C = 1(0)
  loc_11EBB28:         Set var_90 = ()(var_9C)
  loc_11EBB40:         Proc_6_138_106D6F8(var_9C, global_108, KeyCode)
  loc_11EBB4E:       End If
  loc_11EBB4E:     End If
  loc_11EBB4E:   End If
  loc_11EBB4E: End If
  loc_11EBB52: Set var_8C = 0(var_90)
  loc_11EBB58: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_11EBB68: Set var_90 = ((CBool() = 0))
  loc_11EBB6E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_11EBB88:  = ( And (CBool() = 0))(var_92).Visible
  loc_11EBB98: Set var_A0 = (( And (var_92 = 0)))
  loc_11EBB9E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_11EBBAF: Set var_A8 = (( And (CBool() = 0)))
  loc_11EBBB5: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_11EBBDA: If ( And (CBool() = 0)) Then
  loc_11EBBFB:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(7))) Then
  loc_11EBC01:     Call Proc_258_150_F65730(KeyCode)
  loc_11EBC06:     Exit Sub
  loc_11EBC07:   End If
  loc_11EBC1C:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11EBC25:     Proc_6_75_E527CC(Shift)
  loc_11EBC2A:   End If
  loc_11EBC32:   If (KeyCode <> CInt(3)) Then
  loc_11EBC4A:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11EBC53:       Proc_6_76_E52838(Shift, arg_14)
  loc_11EBC58:     End If
  loc_11EBC58:   End If
  loc_11EBC58: End If
  loc_11EBC58: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10598EC
  'Data Table: 5B2100
  Dim var_86 As Integer
  loc_1059670: On Error Goto loc_10598E4
  loc_1059676: Proc_6_58_E054C0(arg_10)
  loc_105967E: var_86 = KeyAscii
  loc_1059689: If Not (var_86 = CInt(0)) Then
  loc_1059694:   If (var_86 = CInt(4)) Then
  loc_1059697:   End If
  loc_10596A1:   Set var_8C = var_90(KeyAscii)
  loc_10596A7:   Call 0.Method_Txt_KeyPress0 (var_86)
  loc_10596C2:   Proc_6_42_129A86C(var_90, arg_10)
  loc_10596D1: Else
  loc_10596D9:   If Not (var_86 = CInt(6)) Then
  loc_10596E4:     If (var_86 = CInt(7)) Then
  loc_10596E7:     End If
  loc_10596F1:     Set var_8C = var_90(KeyAscii)
  loc_10596F7:     Call 0.Method_Txt_KeyPress0 (8)
  loc_1059712:     Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_1059721:   Else
  loc_1059729:     If (var_86 = CInt(3)) Then
  loc_1059730:       Set var_8C = 0(2)
  loc_1059736:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_1059748:       If (CBool() = &HFF) Then
  loc_1059775:         Proc_6_89_146F1AC((), KeyAscii, global_120)
  loc_105978F:         Set var_90 = (0)
  loc_10597A7:         Proc_6_138_106D6F8("Name"(arg_10), global_120)
  loc_10597B5:       End If
  loc_10597B8:     Else
  loc_10597C0:       If (var_86 = CInt(&HB)) Then
  loc_10597C7:         Set var_8C = var_90(KeyAscii)
  loc_10597CD:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_10597DF:         If (CBool() = &HFF) Then
  loc_105980C:           Proc_6_89_146F1AC((), KeyAscii, global_124)
  loc_1059826:           Set var_90 = (0)
  loc_105983E:           Proc_6_138_106D6F8("Vno"(arg_10), global_124)
  loc_105984C:         End If
  loc_105984F:       Else
  loc_1059857:         If (var_86 = CInt(&HD)) Then
  loc_105985E:           Set var_8C = var_90(KeyAscii)
  loc_1059864:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_1059876:           If (CBool() = &HFF) Then
  loc_10598A3:             Proc_6_89_146F1AC((), KeyAscii, global_108)
  loc_10598BD:             Set var_90 = (0)
  loc_10598D5:             Proc_6_138_106D6F8("Name"(arg_10), global_108)
  loc_10598E3:           End If
  loc_10598E3:         End If
  loc_10598E3:       End If
  loc_10598E3:     End If
  loc_10598E3:   End If
  loc_10598E3: End If
  loc_10598E3: Exit Sub
  loc_10598E4: ' Referenced from: 1059670
  loc_10598E4: Proc_6_60_E62BC4(KeyAscii)
  loc_10598E9: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F84664
  'Data Table: 5B2100
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_118 As Double
  Dim var_A4 As TextBox
  Dim var_120 As Double
  Dim var_B0 As TextBox
  Dim var_D4 As Variant
  Dim var_10C As TextBox
  loc_F8453B: var_86 = KeyCode
  loc_F84546: If Not (var_86 = CInt(6)) Then
  loc_F84551:   If (var_86 = CInt(7)) Then
  loc_F84554:   End If
  loc_F84562:   Set var_8C = var_90(CInt(6))
  loc_F84568:   Call 0.Method_Txt_KeyUp0 (var_94)
  loc_F84570:   var_86 = var_90.Text
  loc_F8457D:   var_118 = Val(var_94)
  loc_F84587:   Set var_98 = var_118(var_9A)
  loc_F8458D:   Call 0.Method_Txt_KeyUp8 ()
  loc_F8459F:   Set var_A0 = var_A4(var_9A)
  loc_F845A5:   Call 0.Method_Txt_KeyUp0 (var_A8)
  loc_F845AD:    = var_A4.Text
  loc_F845BA:   var_120 = Val(var_A8)
  loc_F845CB:   Set var_AC = var_B0(CInt(7))
  loc_F845D1:   Call 0.Method_Txt_KeyUp0 (var_B4)
  loc_F84609:   var_D4 = CVar(((var_118 - var_B0.Text) - Val(var_B4))) 'Double
  loc_F84627:   Set var_108 = var_10C(CInt(8))
  loc_F8462D:   Call 0.Method_Txt_KeyUp0 (CStr(Format(var_D4, "0.00")), 1)
  loc_F84635:   var_10C.Text = 1
  loc_F84663: End If
  loc_F84663: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E468F4
  'Data Table: 5B2100
  loc_E468D2: Set var_88 = var_8C(Index)
  loc_E468D8: Call 0.Method_Txt_LostFocus0 ()
  loc_E468E6: Proc_6_73_E22704(var_8C)
  loc_E468F2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1A266EC
  'Data Table: 5B2100
  Dim var_AA As Integer
  Dim Me As Recordset15
  Dim var_BC As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_C0 As String
  Dim var_10C As String
  Dim var_110 As String
  Dim var_120 As Variant
  Dim var_B8 As Variant
  Dim var_128 As Variant
  Dim var_134 As Double
  Dim var_15C As Variant
  Dim var_E4 As Variant
  Dim var_178 As Variant
  Dim var_190 As Double
  Dim var_180 As Variant
  Dim var_198 As Double
  Dim var_14C As Variant
  Dim var_188 As TextBox
  Dim unk_5B213D As Connection15
  Dim var_124 As Variant
  Dim arg_10 As Integer
  Dim var_104 As Variant
  Dim var_1A8 As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_8C As Recordset15
  Dim var_92 As Integer
  Dim var_17C As Variant
  Dim var_22C As Variant
  Dim var_98 As Recordset15
  Dim var_184 As Field20
  loc_1A230A8: On Error Goto loc_1A266E3
  loc_1A230B9: If (Cancel = CInt(&HD)) Then
  loc_1A230D3:   If (Me.RecordCount > 0) Then
  loc_1A230DC:     Me.MoveFirst
  loc_1A230E1:   End If
  loc_1A23101:   var_B2 = Me.EOF
  loc_1A23122:   If ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1A23132:     Set var_B8 = var_BC(Cancel)
  loc_1A23138:     Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23140:     var_AA = var_BC.Text
  loc_1A23157:     If (var_C0 = vbNullString) Then
  loc_1A23167:       Set var_B8 = var_BC(Cancel)
  loc_1A2316D:       Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A23175:       var_BC.Text = 
  loc_1A2318E:       Set var_B8 = var_BC(Cancel)
  loc_1A23194:       Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A231B6:       Set var_B8 = var_BC(CInt(&HF))
  loc_1A231BC:       Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A231C4:       var_BC.Text = 
  loc_1A231DC:       Set var_B8 = var_92(var_B2)
  loc_1A231E2:       Call 0.Method_Txt_Validate8 (2)
  loc_1A231ED:       For var_C4 =  To var_B2:  = var_C4 'Integer
  loc_1A23200:         Set var_B8 = var_BC(var_92)
  loc_1A23206:         Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A2320E:          = 
  loc_1A23241:         If (Trim(CVar(var_C0)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1A23248:           var_C0 = CStr(0)
  loc_1A23255:           Set var_B8 = var_BC(var_92)
  loc_1A2325B:           Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23263:           var_BC.Text = 
  loc_1A23272:         End If
  loc_1A23275:       Next var_C4 'Integer
  loc_1A2327D:       var_A8 = "CashCard"
  loc_1A23280:     End If
  loc_1A23283:   Else
  loc_1A23290:     Set var_B8 = var_BC(Cancel)
  loc_1A23296:     Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A2329E:      = var_BC.Text
  loc_1A232B5:     If (var_C0 = vbNullString) Then
  loc_1A232C5:       Set var_B8 = var_BC(Cancel)
  loc_1A232CB:       Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A232D3:        = var_BC.Text
  loc_1A232EA:       If (var_C0 = vbNullString) Then
  loc_1A232FA:         Set var_B8 = var_BC(Cancel)
  loc_1A23300:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A23308:         var_BC.Text = 
  loc_1A23321:         Set var_B8 = var_BC(Cancel)
  loc_1A23327:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A2332F:         var_BC.Tag = 
  loc_1A23349:         Set var_B8 = var_BC(CInt(&HF))
  loc_1A2334F:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A23357:         var_BC.Text = 
  loc_1A2336F:         Set var_B8 = var_92(var_B2)
  loc_1A23375:         Call 0.Method_Txt_Validate8 (2)
  loc_1A23380:         For var_108 =  To var_B2:    = var_108 'Integer
  loc_1A23393:           Set var_B8 = var_BC(var_92)
  loc_1A23399:           Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A233A1:            = var_BC.Tag
  loc_1A233D4:           If (Trim(CVar(var_C0)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1A233DB:             var_C0 = CStr(0)
  loc_1A233E8:             Set var_B8 = var_BC(var_92)
  loc_1A233EE:             Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A233F6:             var_BC.Text = 
  loc_1A23405:           End If
  loc_1A23408:         Next var_108 'Integer
  loc_1A23410:         var_A8 = "CashCard"
  loc_1A23413:       End If
  loc_1A23416:     Else
  loc_1A23435:       Set var_B8 = var_BC(CInt(&HD))
  loc_1A2343B:       Call 0.Method_Txt_Validate0 (var_C0, "Code='", 0)
  loc_1A23443:       1 = var_BC.Tag
  loc_1A2344C:       var_10C = var_120 & var_C0
  loc_1A2345C:       Me.Find var_10C & "'", , 
  loc_1A2347A:       var_B2 = Me.EOF
  loc_1A2349B:       If Not(((var_B2 = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1A234D9:         Set var_124 = var_128(Cancel)
  loc_1A234DF:         Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_1A234E7:         var_128.Text = 
  loc_1A23538:         Set var_124 = var_128(Cancel)
  loc_1A2353E:         Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Code").Value))
  loc_1A23546:         var_128.Tag = 
  loc_1A23579:         var_BC = Me.Fields.Item("CardNo")
  loc_1A2358A:         var_C0 = CStr(var_BC.Value)
  loc_1A23598:         Set var_124 = var_128(CInt(&HF))
  loc_1A2359E:         Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A235A6:         var_128.Text = 
  loc_1A235C8:         Set var_B8 = var_92(var_B2)
  loc_1A235CE:         Call 0.Method_Txt_Validate8 (2)
  loc_1A235D9:         For var_12C =  To var_B2:      = var_12C 'Integer
  loc_1A235EC:           Set var_B8 = var_BC(var_92)
  loc_1A235F2:           Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A235FA:            = var_BC.Tag
  loc_1A23617:           var_F4 = CVar(MemVar_1F92078 & "DIS") 'String
  loc_1A2362D:           If (Trim(CVar(var_C0)) = var_F4) Then
  loc_1A2364D:             var_BC = Me.Fields.Item("Discount")
  loc_1A2365E:             var_C0 = CStr(var_BC.Value)
  loc_1A2366B:             Set var_124 = var_128(var_92)
  loc_1A23671:             Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23679:             var_128.Text = 
  loc_1A2368F:           End If
  loc_1A23692:         Next var_12C 'Integer
  loc_1A2369A:         var_A8 = "Member"
  loc_1A236B7:         Set var_B8 = var_BC(Cancel)
  loc_1A236BD:         Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A236C5:         0 = var_BC.Tag
  loc_1A236DF:         If (Proc_96_1_F8C534(var_C0) = 0) Then
  loc_1A236EF:           Set var_B8 = var_BC(Cancel)
  loc_1A236F5:           Call 0.Method_Txt_Validate0 (var_10C)
  loc_1A236FD:            = var_BC.Tag
  loc_1A23709:           Proc_96_2_100DE2C(var_10C)
  loc_1A23717:           var_120 = "Member Varification"
  loc_1A2372E:           var_C0 = "Credit Is Not allowed to this Member" & vbCrLf
  loc_1A23744:           MsgBox(CVar(var_C0 & " & Current A/c Balance is Rs.:     " & CStr()), &H40, var_120, var_F4, var_104)
  loc_1A23766:         End If
  loc_1A23769:       Else
  loc_1A23777:         Set var_B8 = var_BC(CInt(&HD))
  loc_1A2377D:         Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23785:         var_134 = var_BC.Tag
  loc_1A2379C:         If (var_C0 <> vbNullString) Then
  loc_1A237A2:           var_A8 = "CashCard"
  loc_1A237A5:         End If
  loc_1A237A5:       End If
  loc_1A237A5:     End If
  loc_1A237A5:   End If
  loc_1A237BE:   Set var_B8 = var_BC(CInt(&HD))
  loc_1A237C4:   Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A237CC:   (global_440 = "No") = var_BC.Tag
  loc_1A237ED:   If (( And (var_C0 <> vbNullString)) And (var_A8 = "Member")) Then
  loc_1A237FC:     Set var_B8 = var_92(var_B2)
  loc_1A23802:     Call 0.Method_Txt_Validate8 (2)
  loc_1A2380D:     For var_160 =  To var_B2:  = var_160 'Integer
  loc_1A23820:       Set var_B8 = var_BC(var_92)
  loc_1A23826:       Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A2382E:        = var_BC.Tag
  loc_1A23861:       If (Trim(CVar(var_C0)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1A23870:         Set var_B8 = var_BC(var_92)
  loc_1A23876:         Call 0.Method_Txt_Validate0 (0)
  loc_1A2387E:         var_BC.Enabled = 
  loc_1A23896:         Set var_B8 = var_BC(var_92)
  loc_1A2389C:         Call 0.Method_Txt_Validate0 (0)
  loc_1A238A4:         var_BC.Enabled = 
  loc_1A238B0:       End If
  loc_1A238B3:     Next var_160 'Integer
  loc_1A238BB:   Else
  loc_1A238C7:     Set var_B8 = var_92(var_B2)
  loc_1A238CD:     Call 0.Method_Txt_Validate8 (2)
  loc_1A238D8:     For var_164 =  To var_B2:    = var_164 'Integer
  loc_1A238EB:       Set var_B8 = var_BC(var_92)
  loc_1A238F1:       Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A238F9:        = var_BC.Tag
  loc_1A2392C:       If (Trim(CVar(var_C0)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1A2393B:         Set var_B8 = var_BC(var_92)
  loc_1A23941:         Call 0.Method_Txt_Validate0 (&HFF)
  loc_1A23949:         var_BC.Enabled = 
  loc_1A23961:         Set var_B8 = var_BC(var_92)
  loc_1A23967:         Call 0.Method_Txt_Validate0 (&HFF)
  loc_1A2396F:         var_BC.Enabled = 
  loc_1A2397B:       End If
  loc_1A2397E:     Next var_164 'Integer
  loc_1A23983:   End If
  loc_1A23989:   Call Proc_258_158_190485C(Cancel)
  loc_1A23991: Else
  loc_1A23999:   If (var_AA = CInt(&HF)) Then
  loc_1A239A6:     Set var_B8 = var_BC(Cancel)
  loc_1A239AC:     Call 0.Method_Txt_Validate0 ()
  loc_1A239C3:     var_C0 = CStr(Trim(CVar(var_BC)))
  loc_1A239D1:     Set var_124 = var_128(Cancel)
  loc_1A239D7:     Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A239DF:     var_128.Text = 
  loc_1A23A0E:     If (Me.RecordCount > 0) Then
  loc_1A23A17:       Me.MoveFirst
  loc_1A23A3A:       Set var_B8 = var_BC(Cancel)
  loc_1A23A40:       Call 0.Method_Txt_Validate0 (var_C0, "CardNo='", 0)
  loc_1A23A48:       1 = var_BC.Text
  loc_1A23A51:       var_10C = var_120 & var_C0
  loc_1A23A58:       var_110 = var_10C & "'"
  loc_1A23A61:       Me.Find var_110, , 
  loc_1A23A7F:       var_B2 = Me.EOF
  loc_1A23A9F:       If ((var_B2 = &HFF) Or (Me.BOF = &HFF)) Then
  loc_1A23AB0:         Set var_B8 = var_BC(CInt(&HD))
  loc_1A23AB6:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A23ABE:         var_BC.Text = 
  loc_1A23AD8:         Set var_B8 = var_BC(CInt(&HD))
  loc_1A23ADE:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A23AE6:         var_BC.Tag = 
  loc_1A23AFF:         Set var_B8 = var_BC(Cancel)
  loc_1A23B05:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A23B0D:         var_BC.Text = 
  loc_1A23B25:         Set var_B8 = var_92(var_B2)
  loc_1A23B2B:         Call 0.Method_Txt_Validate8 (2)
  loc_1A23B36:         For var_168 =  To var_B2:    = var_168 'Integer
  loc_1A23B49:           Set var_B8 = var_BC(var_92)
  loc_1A23B4F:           Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23B57:            = var_BC.Tag
  loc_1A23B8A:           If (Trim(CVar(var_C0)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1A23B9E:             Set var_B8 = var_BC(var_92)
  loc_1A23BA4:             Call 0.Method_Txt_Validate0 (CStr(0))
  loc_1A23BAC:             var_BC.Text = 
  loc_1A23BBB:           End If
  loc_1A23BBE:         Next var_168 'Integer
  loc_1A23BC6:         var_A8 = "CashCard"
  loc_1A23BCC:       Else
  loc_1A23C08:         Set var_124 = var_128(CInt(&HD))
  loc_1A23C0E:         Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_1A23C16:         var_128.Text = 
  loc_1A23C68:         Set var_124 = var_128(CInt(&HD))
  loc_1A23C6E:         Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Code").Value))
  loc_1A23C76:         var_128.Tag = 
  loc_1A23CA9:         var_BC = Me.Fields.Item("CardNo")
  loc_1A23CBA:         var_C0 = CStr(var_BC.Value)
  loc_1A23CC7:         Set var_124 = var_128(Cancel)
  loc_1A23CCD:         Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23CD5:         var_128.Text = 
  loc_1A23CF7:         Set var_B8 = var_92(var_B2)
  loc_1A23CFD:         Call 0.Method_Txt_Validate8 (2)
  loc_1A23D08:         For var_16C =  To var_B2:      = var_16C 'Integer
  loc_1A23D1B:           Set var_B8 = var_BC(var_92)
  loc_1A23D21:           Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23D29:            = var_BC.Tag
  loc_1A23D46:           var_F4 = CVar(MemVar_1F92078 & "DIS") 'String
  loc_1A23D5C:           If (Trim(CVar(var_C0)) = var_F4) Then
  loc_1A23D7C:             var_BC = Me.Fields.Item("Discount")
  loc_1A23D8D:             var_C0 = CStr(var_BC.Value)
  loc_1A23D9A:             Set var_124 = var_128(var_92)
  loc_1A23DA0:             Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23DA8:             var_128.Text = 
  loc_1A23DBE:           End If
  loc_1A23DC1:         Next var_16C 'Integer
  loc_1A23DC9:         var_A8 = "Member"
  loc_1A23DE7:         Set var_B8 = var_BC(CInt(&HD))
  loc_1A23DED:         Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23DF5:         0 = var_BC.Tag
  loc_1A23E0F:         If (Proc_96_1_F8C534(var_C0) = 0) Then
  loc_1A23E20:           Set var_B8 = var_BC(CInt(&HD))
  loc_1A23E26:           Call 0.Method_Txt_Validate0 (var_10C)
  loc_1A23E2E:            = var_BC.Tag
  loc_1A23E3A:           Proc_96_2_100DE2C(var_10C)
  loc_1A23E5F:           var_C0 = "Credit Is Not allowed to this Member" & vbCrLf
  loc_1A23E75:           MsgBox(CVar(var_C0 & " & Current A/c Balance is Rs.:     " & CStr()), &H40, "Member Varification", var_F4, var_104)
  loc_1A23E97:         End If
  loc_1A23E97:       End If
  loc_1A23E9A:     Else
  loc_1A23EA8:       Set var_B8 = var_BC(CInt(&HD))
  loc_1A23EAE:       Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23EB6:       var_134 = var_BC.Tag
  loc_1A23ECD:       If (var_C0 <> vbNullString) Then
  loc_1A23ED3:         var_A8 = "CashCard"
  loc_1A23ED6:       End If
  loc_1A23ED6:     End If
  loc_1A23EEF:     Set var_B8 = var_BC(CInt(&HD))
  loc_1A23EF5:     Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23EFD:     (global_440 = "No") = var_BC.Tag
  loc_1A23F1E:     If (( And (var_C0 <> vbNullString)) And (var_A8 = "Member")) Then
  loc_1A23F2D:       Set var_B8 = var_92(var_B2)
  loc_1A23F33:       Call 0.Method_Txt_Validate8 (2)
  loc_1A23F3E:       For var_170 =  To var_B2:    = var_170 'Integer
  loc_1A23F51:         Set var_B8 = var_BC(var_92)
  loc_1A23F57:         Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A23F5F:          = var_BC.Tag
  loc_1A23F92:         If (Trim(CVar(var_C0)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1A23FA1:           Set var_B8 = var_BC(var_92)
  loc_1A23FA7:           Call 0.Method_Txt_Validate0 (0)
  loc_1A23FAF:           var_BC.Enabled = 
  loc_1A23FC7:           Set var_B8 = var_BC(var_92)
  loc_1A23FCD:           Call 0.Method_Txt_Validate0 (0)
  loc_1A23FD5:           var_BC.Enabled = 
  loc_1A23FE1:         End If
  loc_1A23FE4:       Next var_170 'Integer
  loc_1A23FEC:     Else
  loc_1A23FF8:       Set var_B8 = var_92(var_B2)
  loc_1A23FFE:       Call 0.Method_Txt_Validate8 (2)
  loc_1A24009:       For var_174 =  To var_B2:      = var_174 'Integer
  loc_1A2401C:         Set var_B8 = var_BC(var_92)
  loc_1A24022:         Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A2402A:          = var_BC.Tag
  loc_1A2405D:         If (Trim(CVar(var_C0)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1A2406C:           Set var_B8 = var_BC(var_92)
  loc_1A24072:           Call 0.Method_Txt_Validate0 (&HFF)
  loc_1A2407A:           var_BC.Enabled = 
  loc_1A24092:           Set var_B8 = var_BC(var_92)
  loc_1A24098:           Call 0.Method_Txt_Validate0 (&HFF)
  loc_1A240A0:           var_BC.Enabled = 
  loc_1A240AC:         End If
  loc_1A240AF:       Next var_174 'Integer
  loc_1A240B4:     End If
  loc_1A240B7:   Else
  loc_1A240BF:     If Not (var_AA = CInt(6)) Then
  loc_1A240CA:       If (var_AA = CInt(7)) Then
  loc_1A240CD:       End If
  loc_1A240DA:       Set var_B8 = var_BC(Cancel)
  loc_1A240E0:       Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A240E8:        = var_BC.Text
  loc_1A240F9:       Proc_6_40_EA50F0(CVar(Val(var_C0)))
  loc_1A24120:       var_104 = Format(CVar(), "0.00")
  loc_1A24128:       var_10C = CStr(var_104)
  loc_1A24136:       Set var_124 = var_128(Cancel)
  loc_1A2413C:       Call 0.Method_Txt_Validate0 (var_10C, 1)
  loc_1A24144:       var_128.Text = 1
  loc_1A24174:       Set var_B8 = var_BC(CInt(6))
  loc_1A2417A:       Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A24182:       var_134 = var_BC.Text
  loc_1A2418F:       var_134 = Val(var_C0)
  loc_1A24199:       Set var_124 = var_134(var_B2)
  loc_1A2419F:       Call 0.Method_Txt_Validate8 ()
  loc_1A241B1:       Set var_128 = var_178(var_B2)
  loc_1A241B7:       Call 0.Method_Txt_Validate0 (var_10C)
  loc_1A241BF:        = var_178.Text
  loc_1A241CC:       var_190 = Val(var_10C)
  loc_1A241DD:       Set var_17C = var_180(CInt(7))
  loc_1A241E3:       Call 0.Method_Txt_Validate0 (var_110)
  loc_1A241F8:       var_198 = Val(var_110)
  loc_1A2420A:       var_E4 = "0.00"
  loc_1A2421B:       var_D4 = CVar(((var_134 - var_180.Text) - var_198)) 'Double
  loc_1A24222:       var_F4 = Format(CVar(Val(var_C0)), var_E4)
  loc_1A24239:       Set var_184 = var_188(CInt(8))
  loc_1A2423F:       Call 0.Method_Txt_Validate0 (CStr(var_F4), 1)
  loc_1A24247:       var_188.Text = 1
  loc_1A24278:     Else
  loc_1A24280:       If (var_AA = CInt(0)) Then
  loc_1A24287:         Set var_B8 = Me.TopCtrl1
  loc_1A2428D:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_198)
  loc_1A24295:         var_C0 = CStr()
  loc_1A242A6:         If (var_C0 = "Add") Then
  loc_1A242AF:           Call Proc_258_151_10E8580(MemVar_1F92044)
  loc_1A242C2:           Set var_B8 = var_BC(CInt(2))
  loc_1A242C8:           Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A242D0:           var_BC.Text = var_C0
  loc_1A242DF:         End If
  loc_1A242E3:         Set var_B8 = Me.TopCtrl1
  loc_1A242E9:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1A242F1:         var_C0 = CStr()
  loc_1A24302:         If (var_C0 = "Add") Then
  loc_1A24332:           Set var_B8 = var_BC(CInt(2))
  loc_1A24338:           Call 0.Method_Txt_Validate0 (var_C0, "Select Count(*) From Sale1 Where DocID='", CVar(Val(var_C0)), -1, var_124)
  loc_1A24349:           var_10C = 0 & var_C0
  loc_1A24359:           unk_5B213D.Execute var_10C & "'", var_178, var_E4
  loc_1A24361:            = var_124.Fields
  loc_1A24369:            = var_BC.Text.Item()
  loc_1A24371:            = var_178.Value
  loc_1A2439E:           If (var_E4 > 0) Then
  loc_1A243A7:             Call 0.Method_arg_50 (var_C0)
  loc_1A243C8:             MsgBox("Duplicate Voucher No.", &H40, CVar(var_C0), var_F4, var_104)
  loc_1A243DE:             Call Proc_258_151_10E8580(MemVar_1F92044)
  loc_1A243EE:             If (var_C0 = vbNullString) Then
  loc_1A243FB:               Set var_B8 = var_BC(Cancel)
  loc_1A24401:               Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A24409:               var_BC.SetFocus
  loc_1A24417:               arg_10 = &HFF
  loc_1A2441A:               Exit Sub
  loc_1A2441B:             End If
  loc_1A24421:             Call Proc_258_151_10E8580(MemVar_1F92044, var_C0)
  loc_1A24434:             Set var_B8 = var_BC(CInt(2))
  loc_1A2443A:             Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A24442:             var_BC.Text = arg_10
  loc_1A24453:             arg_10 = &HFF
  loc_1A24456:             Exit Sub
  loc_1A24457:           End If
  loc_1A24457:         End If
  loc_1A2445A:       Else
  loc_1A24462:         If (var_AA = CInt(1)) Then
  loc_1A24473:           Set var_B8 = var_BC(CInt(1))
  loc_1A24479:           Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A24481:           arg_10 = var_BC.Text
  loc_1A24497:           var_F4 = Len(Trim(CVar(var_C0)))
  loc_1A244B1:           If (var_F4 = 0) Then
  loc_1A244C7:             Set var_B8 = var_BC(CInt(1))
  loc_1A244CD:             Call 0.Method_Txt_Validate0 (CStr(MemVar_1F920EC))
  loc_1A244D5:             var_BC.Text = 
  loc_1A244E7:           Else
  loc_1A244F1:             Set var_B8 = var_BC(Cancel)
  loc_1A244F7:             Call 0.Method_Txt_Validate0 ()
  loc_1A2450A:             var_C0 = Proc_6_33_1512840(var_BC)
  loc_1A24517:             Set var_128 = var_178(Cancel)
  loc_1A2451D:             Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A24525:             var_178.Text = 
  loc_1A24538:           End If
  loc_1A24545:           Set var_B8 = var_BC(Cancel)
  loc_1A2454B:           Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A24553:            = var_BC.Text
  loc_1A2456E:           Set var_124 = var_128(Cancel)
  loc_1A24574:           Call 0.Method_Txt_Validate0 (var_10C)
  loc_1A2457C:           (CDate(var_C0) >= MemVar_1F920F4) = var_128.Text
  loc_1A2459E:           If Not(( And (CDate(var_10C) <= MemVar_1F920FC))) Then
  loc_1A245AC:             var_E4 = "Date Validate"
  loc_1A245C2:             MsgBox("V.Date Not Between Current Fin. Year", 0, var_E4, var_F4, var_104)
  loc_1A245DC:             Set var_B8 = var_BC(Cancel)
  loc_1A245E2:             Call 0.Method_Txt_Validate0 ()
  loc_1A245EA:             var_BC.SetFocus
  loc_1A245F8:             arg_10 = &HFF
  loc_1A245FB:             Exit Sub
  loc_1A245FC:           End If
  loc_1A24600:           Set var_B8 = Me.TopCtrl1
  loc_1A24606:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(arg_10)
  loc_1A2460E:           var_C0 = CStr()
  loc_1A24624:           Set var_BC = var_124(CInt(0))
  loc_1A2462A:           Call 0.Method_Txt_Validate0 (var_10C)
  loc_1A24632:           (var_C0 = "Add") = var_124.Text
  loc_1A24653:           If ( And (var_10C = vbNullString)) Then
  loc_1A2465C:             Call Proc_258_151_10E8580(MemVar_1F92044)
  loc_1A2466F:             Set var_B8 = var_BC(CInt(2))
  loc_1A24675:             Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A2467D:             var_BC.Text = var_C0
  loc_1A2468C:           End If
  loc_1A2468F:         Else
  loc_1A24697:           If (var_AA = CInt(&HB)) Then
  loc_1A246DB:             If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1A246EB:               Set var_B8 = var_BC(Cancel)
  loc_1A246F1:               Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A246F9:                = var_BC.Text
  loc_1A24710:               If (var_C0 = vbNullString) Then
  loc_1A24720:                 Set var_B8 = var_BC(Cancel)
  loc_1A24726:                 Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A2472E:                 var_BC.Text = 
  loc_1A24747:                 Set var_B8 = var_BC(Cancel)
  loc_1A2474D:                 Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A24755:                 var_BC.Tag = 
  loc_1A2476F:                 Set var_B8 = var_BC(CInt(&HC))
  loc_1A24775:                 Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A2477D:                 var_BC.Text = 
  loc_1A247A0:                 If (Me.RecordCount <> 0) Then
  loc_1A247A7:                   Set var_B8 = ()
  loc_1A247AD:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0()
  loc_1A247B8:                 End If
  loc_1A247B8:                 Call Proc_258_136_143E164()
  loc_1A247BD:               End If
  loc_1A247C0:             Else
  loc_1A247CD:               Set var_B8 = var_BC(Cancel)
  loc_1A247D3:               Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A247DB:                = var_BC.Text
  loc_1A247F2:               If (var_C0 <> vbNullString) Then
  loc_1A24830:                 Set var_124 = var_128(Cancel)
  loc_1A24836:                 Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("VNo").Value))
  loc_1A2483E:                 var_128.Text = 
  loc_1A2488F:                 Set var_124 = var_128(Cancel)
  loc_1A24895:                 Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("DocID").Value))
  loc_1A2489D:                 var_128.Tag = 
  loc_1A248D0:                 var_BC = Me.Fields.Item("CustName")
  loc_1A248D8:                 var_D4 = var_BC.Value
  loc_1A248E1:                 var_C0 = CStr(var_D4)
  loc_1A248EF:                 Set var_124 = var_128(CInt(&HC))
  loc_1A248F5:                 Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A248FD:                 var_128.Text = 
  loc_1A24916:                 Call Proc_258_135_13FFA64(var_D4)
  loc_1A2491E:               End If
  loc_1A2491E:             End If
  loc_1A24923:             Call Proc_258_158_190485C(&H32)
  loc_1A2492B:           Else
  loc_1A24933:             If (var_AA = CInt(3)) Then
  loc_1A24977:               If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1A24987:                 Set var_B8 = var_BC(Cancel)
  loc_1A2498D:                 Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A24995:                  = var_BC.Text
  loc_1A249AC:                 If (var_C0 = vbNullString) Then
  loc_1A249BC:                   Set var_B8 = var_BC(Cancel)
  loc_1A249C2:                   Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A249CA:                   var_BC.Text = 
  loc_1A249E3:                   Set var_B8 = var_BC(Cancel)
  loc_1A249E9:                   Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A249F1:                   var_BC.Tag = 
  loc_1A24A08:                   If (global_192 = "RO") Then
  loc_1A24A11:                     global_188 = vbNullString
  loc_1A24A15:                   End If
  loc_1A24A15:                 End If
  loc_1A24A18:               Else
  loc_1A24A25:                 Set var_B8 = var_BC(Cancel)
  loc_1A24A2B:                 Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A24A33:                  = var_BC.Text
  loc_1A24A4A:                 If (var_C0 = vbNullString) Then
  loc_1A24A5A:                   Set var_B8 = var_BC(Cancel)
  loc_1A24A60:                   Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A24A68:                    = var_BC.Text
  loc_1A24A7F:                   If (var_C0 = vbNullString) Then
  loc_1A24A8F:                     Set var_B8 = var_BC(Cancel)
  loc_1A24A95:                     Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A24A9D:                     var_BC.Text = 
  loc_1A24AB6:                     Set var_B8 = var_BC(Cancel)
  loc_1A24ABC:                     Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A24AC4:                     var_BC.Tag = 
  loc_1A24ADB:                     If (global_192 = "RO") Then
  loc_1A24AE4:                       global_188 = vbNullString
  loc_1A24AE8:                     End If
  loc_1A24AE8:                   End If
  loc_1A24AEB:                 Else
  loc_1A24B12:                   var_BC = Me.Fields.Item("Code")
  loc_1A24B31:                   var_15C = (global_316 <> vbNullString)
  loc_1A24B35:                   var_F4 = (CVar(global_316) <> var_BC.Value) And var_15C
  loc_1A24B49:                   If CBool(var_F4) Then
  loc_1A24B7B:                     If (MsgBox("Do You Want to Select Another Table", &H24, var_E4, var_F4, var_104) = 7) Then
  loc_1A24B7E:                       Exit Sub
  loc_1A24B7F:                     End If
  loc_1A24B7F:                   End If
  loc_1A24B97:                   Set var_B8 = var_BC(Cancel)
  loc_1A24B9D:                   Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A24BA5:                   (global_324 <> vbNullString) = var_BC.Tag
  loc_1A24BBD:                   If ( Or (var_C0 <> vbNullString)) Then
  loc_1A24BCD:                     Set var_B8 = var_BC(Cancel)
  loc_1A24BD3:                     Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A24BDB:                      = var_BC.Tag
  loc_1A24C07:                     If (Trim(CVar(var_C0)) = vbNullString) Then
  loc_1A24C1A:                       Set var_B8 = var_BC(Cancel)
  loc_1A24C20:                       Call 0.Method_Txt_Validate0 (global_324)
  loc_1A24C28:                       var_BC.Tag = 
  loc_1A24C34:                     End If
  loc_1A24C3A:                     Me.MoveFirst
  loc_1A24C5F:                     Set var_B8 = var_BC(Cancel)
  loc_1A24C65:                     Call 0.Method_Txt_Validate0 (var_C0, "Code='", 0)
  loc_1A24C6D:                     1 = var_BC.Tag
  loc_1A24C90:                     var_10C = CStr(var_15C & Trim(CVar(var_C0)) & "'")
  loc_1A24C9A:                     Me.Find var_10C, , 
  loc_1A24CB4:                   End If
  loc_1A24CEF:                   Set var_124 = var_128(Cancel)
  loc_1A24CF5:                   Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_1A24CFD:                   var_128.Text = 
  loc_1A24D4E:                   Set var_124 = var_128(Cancel)
  loc_1A24D54:                   Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Code").Value))
  loc_1A24D5C:                   var_128.Tag = 
  loc_1A24DAA:                   global_316 = CStr(Trim(CVar(Me.Fields.Item("Code"))))
  loc_1A24DC6:                   If (global_304 = "Room Service") Then
  loc_1A24E05:                     Set var_124 = var_128(CInt(&HA))
  loc_1A24E0B:                     Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Code").Value))
  loc_1A24E13:                     var_128.Text = 
  loc_1A24E65:                     Set var_124 = var_128(CInt(&HA))
  loc_1A24E6B:                     Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("FolioNoDocid").Value))
  loc_1A24E73:                     var_128.Tag = 
  loc_1A24E89:                   End If
  loc_1A24E94:                   If (global_192 = "RO") Then
  loc_1A24EB4:                     var_BC = Me.Fields.Item("RoomCat")
  loc_1A24ECB:                     global_188 = CStr(var_BC.Value)
  loc_1A24EDC:                   End If
  loc_1A24EDC:                 End If
  loc_1A24EDC:               End If
  loc_1A24EE7:               If (global_240 = "Y") Then
  loc_1A24EF4:                 Set global_104 = New 
  loc_1A24F06:                 Me.Recordset15.CursorLocation = 3
  loc_1A24F1C:                 If (global_304 = "Hall") Then
  loc_1A24F2D:                   Set var_B8 = var_BC(CInt(3))
  loc_1A24F33:                   Call 0.Method_Txt_Validate0 (var_10C)
  loc_1A24F3B:                    = var_BC.Tag
  loc_1A24F61:                   var_C0 = "Select * ,I.NAME AS ITEMNAME,I.UNIT,I.RateEdit,IR.Rate as IRate,I.SChrgApp,IC.TaxPer,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From (((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And K.ITEMRestCode=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.RestCode=K.RestCode and IR.ItemCode=K.Item WHERE K.RestCode='" & global_76
  loc_1A24F76:                   var_D4 = CVar(var_C0 & "'AND K.RoomNo ='" & var_10C & "'and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And DelFlag<>'Y' Order by K.DOCID,K.SNo") 'String
  loc_1A24F80:                   Me.Open var_D4, CVar(MemVar_1F92044), 3
  loc_1A24F9D:                 Else
  loc_1A24FA8:                   Proc_6_7_F25D88(var_D4, MemVar_1F920EC)
  loc_1A24FBB:                   Set var_B8 = var_BC(CInt(3))
  loc_1A24FC1:                   Call 0.Method_Txt_Validate0 (var_C0, 1)
  loc_1A24FC9:                   -1 = var_BC.Text
  loc_1A24FE5:                   var_14C = "Select * ,I.NAME AS ITEMNAME,DispCode,I.UNIT,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,IC.taxStru,IC.CatType,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From ((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And K.ITEMRestCode=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode WHERE k.VDate<="
  loc_1A2501A:                   var_1FC = "'and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And (DelFlag<>'Y' or DelFlag Is NULL) And NCKOT<>'Y' Order by K.DOCID,K.SNo"
  loc_1A2501F:                   var_20C = var_14C & var_D4 & " And K.RestCode='" & CVar(global_76) & "' aND K.RoomNo ='" & CVar(var_C0) & var_1FC 
  loc_1A2502A:                   Me.Open var_20C, CVar(MemVar_1F92044), 3
  loc_1A25056:                   var_14C = "Select Max(Party) As Party From ((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And K.ITEMRestCode=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode WHERE k.VDate<="
  loc_1A25066:                   Proc_6_7_F25D88(var_D4, MemVar_1F920EC, var_14C, var_22C)
  loc_1A2506E:                   var_E4 = -1 & var_D4 
  loc_1A25077:                   var_F4 = var_14C & var_D4 & " And K.RestCode='" 
  loc_1A25084:                   var_104 = var_F4 & CVar(global_76) 
  loc_1A2509F:                   Set var_B8 = var_BC(CInt(3))
  loc_1A250A5:                   Call 0.Method_Txt_Validate0 (var_C0, var_104 & "' aND K.RoomNo ='", var_124)
  loc_1A250AD:                   1 = var_BC.Text
  loc_1A250B8:                   var_1EC = -1 & CVar(var_C0) 
  loc_1A250C1:                   var_20C = var_14C & var_D4 & " And K.RestCode='" & CVar(global_76) & "' aND K.RoomNo ='" & CVar(var_C0) & "'and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And (DelFlag<>'Y' or DelFlag Is NULL) And NCKOT<>'Y'" 
  loc_1A250CF:                   unk_5B213D.Execute CStr(var_20C), , 
  loc_1A2510D:                   var_B8 = var_124.Fields
  loc_1A2511D:                   var_D4 = CVar(var_B8.Item("Party")) 'Address
  loc_1A25143:                   var_C0 = "Select Code,Name,CardNo From (Select SubCode as Code,Name,CardNo From SubGroup union all Select Code,Name,CardNo From SmartCardRegistration) Q where Code='" & Proc_6_38_E68A98(var_D4)
  loc_1A25153:                   unk_5B213D.Execute var_C0 & "'", var_D4, -1
  loc_1A2515E:                   Set var_8C = var_B8
  loc_1A2516E:                 End If
  loc_1A25185:                 If (Me.RecordCount > 0) Then
  loc_1A25191:                   Set var_B8 = var_B8(False)
  loc_1A25197:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_1A251A3:                   Set var_B8 = ()
  loc_1A251A9:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1A251B9:                   var_92 = CInt((CLng() - 1))
  loc_1A251D4:                   If ((global_304 = "Room Service") And (var_92 <> 1)) Then
  loc_1A251DF:                     Set var_B8 = var_92(True)
  loc_1A251E5:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_1A25225:                     If (MsgBox(CVar("This is not valid Room No." & vbCrLf & "Are you sure to continue..."), &H14, var_14C & CVar("This is not valid Room No." & vbCrLf & "Are you sure to continue..."), var_F4, var_104) = 7) Then
  loc_1A25228:                       ' Referenced from:             1A2606B
  loc_1A25228:                     End If
  loc_1A25228:                   End If
  loc_1A2523A:                   If Not(Me.EOF) Then
  loc_1A25246:                     Set var_B8 = 1(var_A2)
  loc_1A2524C:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1A25262:                     For var_230 =  To CInt((CLng() - 1)):              = var_230 'Integer
  loc_1A2527D:                       Set var_B8 = CVar(CLng(var_A2))(CVar(CLng(&HD)))
  loc_1A25283:                       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1A252D8:                       Set var_128 = CVar(CLng(var_A2))(CVar(CLng(&HC)))
  loc_1A252DE:                       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((CVar(CStr()) = Me.Fields.Item("DocID").Value))
  loc_1A2530A:                       var_17C = Me.Fields.Item("SNo")
  loc_1A25342:                       If CBool( And (CVar(CStr()) = var_17C.Value)) Then
  loc_1A25349:                         var_9A = CByte(1) 'Byte
  loc_1A2534D:                         GoTo loc_1A25E2C
  loc_1A25350:                       End If
  loc_1A25353:                     Next var_230 'Integer
  loc_1A25362:                     Set var_B8 = (vbNullString)
  loc_1A25368:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_1A25377:                     Set var_264 = ()
  loc_1A2537E:                     var_120 = CVar(CLng(var_92)) 'Long
  loc_1A25386:                     var_15C = CVar(CLng(0)) 'Long
  loc_1A25390:                     var_D4 = CVar(CStr(var_92)) 'String
  loc_1A25397:                     LateIdCallSt
  loc_1A253A6:                     var_14C = CVar(CLng(var_92)) 'Long
  loc_1A253AE:                     var_1A8 = CVar(CLng(&HB)) 'Long
  loc_1A253E1:                     var_E4 = CVar(CStr(Me.Fields.Item("Item").Value)) 'String
  loc_1A253E8:                     LateIdCallSt
  loc_1A25402:                     var_14C = CVar(CLng(var_92)) 'Long
  loc_1A2540A:                     var_1A8 = CVar(CLng(3)) 'Long
  loc_1A2543D:                     var_E4 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1A25444:                     LateIdCallSt
  loc_1A2545E:                     var_14C = CVar(CLng(var_92)) 'Long
  loc_1A25466:                     var_1A8 = CVar(CLng(4)) 'Long
  loc_1A25499:                     var_E4 = CVar(CStr(Me.Fields.Item("ItemName").Value)) 'String
  loc_1A254A0:                     LateIdCallSt
  loc_1A254BA:                     var_14C = CVar(CLng(var_92)) 'Long
  loc_1A254C2:                     var_1A8 = CVar(CLng(6)) 'Long
  loc_1A254F5:                     var_E4 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1A254FC:                     LateIdCallSt
  loc_1A25535:                     var_15C = CVar(CLng(var_92)) 'Long
  loc_1A2553D:                     var_1BC = CVar(CLng(7)) 'Long
  loc_1A2556A:                     var_104 = CVar(CStr(Format(CVar(Me.Fields.Item("qty")), "0.000"))) 'String
  loc_1A25571:                     LateIdCallSt
  loc_1A255AA:                     var_15C = CVar(CLng(var_92)) 'Long
  loc_1A255B2:                     var_1BC = CVar(CLng(8)) 'Long
  loc_1A255DF:                     var_104 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_1A255E6:                     LateIdCallSt
  loc_1A2561F:                     var_15C = CVar(CLng(var_92)) 'Long
  loc_1A25627:                     var_1BC = CVar(CLng(9)) 'Long
  loc_1A25654:                     var_104 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_1A2565B:                     LateIdCallSt
  loc_1A256B0:                     var_124 = Me.Fields
  loc_1A256B8:                     var_128 = var_124.Item("Rate")
  loc_1A256C9:                     var_1A8 = CVar(CLng(var_92)) 'Long
  loc_1A256D1:                     var_1FC = CVar(CLng(&HA)) 'Long
  loc_1A25708:                     var_1EC = CVar(CStr(Format((Me.Fields.Item("qty").Value * var_128.Value), "0.00"))) 'String
  loc_1A2570F:                     LateIdCallSt
  loc_1A25754:                     var_14C = CVar(CLng(var_92)) 'Long
  loc_1A2575C:                     var_1A8 = CVar(CLng(5)) 'Long
  loc_1A25783:                     var_F4 = CVar(CStr(Val(CStr(Right(CVar(Me.Fields.Item("DocID")), 8))))) 'String
  loc_1A2578A:                     LateIdCallSt
  loc_1A257A5:                     var_14C = CVar(CLng(var_92)) 'Long
  loc_1A257AD:                     var_1A8 = CVar(CLng(&HD)) 'Long
  loc_1A257E0:                     var_E4 = CVar(CStr(Me.Fields.Item("DocID").Value)) 'String
  loc_1A257E7:                     LateIdCallSt
  loc_1A25801:                     var_14C = CVar(CLng(var_92)) 'Long
  loc_1A25809:                     var_1A8 = CVar(CLng(&HC)) 'Long
  loc_1A2583C:                     var_E4 = CVar(CStr(Me.Fields.Item("SNo").Value)) 'String
  loc_1A25843:                     LateIdCallSt
  loc_1A25895:                     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_92)), var_264, var_E4, CVar(CLng(&H19)), CVar(CLng(var_92)))) 'String
  loc_1A2589C:                     LateIdCallSt
  loc_1A258EA:                     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H13)), CVar(CLng(var_92)), var_264, var_E4, var_264)) 'String
  loc_1A258F1:                     LateIdCallSt
  loc_1A2593F:                     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(var_92)), var_264, var_E4)) 'String
  loc_1A25946:                     LateIdCallSt
  loc_1A25994:                     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(var_92)), var_264, var_E4)) 'String
  loc_1A2599B:                     LateIdCallSt
  loc_1A259E9:                     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(var_92)), var_264, var_E4)) 'String
  loc_1A259F0:                     LateIdCallSt
  loc_1A25A3E:                     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("CatType")), CVar(CLng(&H1F)), CVar(CLng(var_92)), var_264, var_E4)) 'String
  loc_1A25A45:                     LateIdCallSt
  loc_1A25AC1:                     var_1CC = (Trim(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("VoidYN")), var_264, var_E4, var_E4))) = "F") 'Variant
  loc_1A25ADB:                     LateIdCallSt
  loc_1A25B05:                     var_1A8 = CVar(CLng(&H1A)) 'Long
  loc_1A25B35:                     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), var_1A8, CVar(CLng(var_92)), var_264, CVar(CStr(IIf(var_1CC, "Free", vbNullString))), CVar(CLng(&H1E)))) 'String
  loc_1A25B3C:                     LateIdCallSt
  loc_1A25B89:                     var_C0 = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_E4, -1, var_124, var_264)
  loc_1A25B9D:                     unk_5B213D.Execute var_E4 & CStr(Right(CVar(Me.Fields.Item("DocID")), 8)) & "'", CVar(CLng(var_92)), var_1A8
  loc_1A25BA8:                     Set var_98 = var_124
  loc_1A25BD6:                     If (var_98.RecordCount > 0) Then
  loc_1A25BDD:                       var_14C = CVar(CLng(var_92)) 'Long
  loc_1A25C10:                       Proc_6_39_E7C810(var_E4, CVar(var_98.Fields.Item("Rate")), CVar(CLng(&H10)), var_14C)
  loc_1A25C21:                       Set var_124 = var_14C(CVar(CStr(var_E4)))
  loc_1A25C27:                       LateIdCallSt
  loc_1A25C3F:                     End If
  loc_1A25C60:                     var_D4 = CVar(Proc_6_38_E68A98(global_192, CVar(CLng(&H16)), CVar(CLng(var_92)))) 'String
  loc_1A25C67:                     LateIdCallSt
  loc_1A25CAE:                     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomNo")), CVar(CLng(&H17)), CVar(CLng(var_92)), var_264)) 'String
  loc_1A25CB5:                     LateIdCallSt
  loc_1A25CF2:                     var_C0 = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomNo")), var_264, var_E4, CVar(Me.Fields.Item("RoomNo")))
  loc_1A25D06:                     Call 0.Method_Txt_Validate0 (var_C0, var_128(CInt(3)))
  loc_1A25D0E:                     var_128.Tag = var_264
  loc_1A25D26:                     var_14C = CVar(CLng(var_92)) 'Long
  loc_1A25D5E:                     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepartCode")), CVar(CLng(1)))) 'String
  loc_1A25D65:                     LateIdCallSt
  loc_1A25DB3:                     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_92)), var_264)) 'String
  loc_1A25DBA:                     LateIdCallSt
  loc_1A25DED:                     var_D4 = CVar(Proc_6_38_E68A98(global_188, CVar(CLng(&H15)), CVar(CLng(var_92)), var_264)) 'String
  loc_1A25DF4:                     LateIdCallSt
  loc_1A25E03:                     var_120 = CVar(CLng(var_92)) 'Long
  loc_1A25E15:                     LateIdCallSt
  loc_1A25E1F:                     Set var_264 = Nothing 
  loc_1A25E29:                     var_92 = (var_92 + 1)
  loc_1A25E2C:                     ' Referenced from:             1A2534D
  loc_1A25E32:                     Me.MoveNext
  loc_1A25E55:                     If ((Me.EOF = &HFF) And (CInt(var_9A) = 0)) Then
  loc_1A25E63:                       If (global_304 = "Room Service") Then
  loc_1A25E73:                         var_264 = var_92(var_C0).Caption
  loc_1A25E86:                         If (var_C0 = vbNullString) Then
  loc_1A25E89:                           var_14C = "Room # "
  loc_1A25E94:                           var_120 = "Name"
  loc_1A25EBF:                           var_C0 = CStr(var_14C & Me.Fields.Item(var_120).Value)
  loc_1A25ECD:                           global_68(var_C0).Caption = var_120
  loc_1A25EE8:                         Else
  loc_1A25EF5:                           var_D4 = var_264(var_C0).Caption
  loc_1A25F01:                           var_E4 = CVar(var_C0 & ",") 'String
  loc_1A25F43:                           var_E4(CStr(var_E4 & Me.Fields.Item("Name").Value)).Caption = var_E4
  loc_1A25F63:                         End If
  loc_1A25F66:                       Else
  loc_1A25F73:                         var_F4 = var_14C(var_C0).Caption
  loc_1A25F86:                         If (var_C0 = vbNullString) Then
  loc_1A25FBF:                           var_C0 = CStr("Table # " & Me.Fields.Item("Code").Value)
  loc_1A25FCD:                           (var_C0).Caption = 
  loc_1A25FE8:                         Else
  loc_1A25FF5:                            = (var_C0).Caption
  loc_1A26031:                           var_F4 = CVar(var_C0 & ",") & Me.Fields.Item("Code").Value 
  loc_1A26035:                           var_10C = CStr(var_F4)
  loc_1A2603D:                           Set var_128 = (var_10C)
  loc_1A26043:                           var_128.Caption = 
  loc_1A26063:                         End If
  loc_1A26063:                       End If
  loc_1A26063:                     End If
  loc_1A26067:                     var_9A = CByte(0) 'Byte
  loc_1A2606B:                     GoTo loc_1A25228
  loc_1A2606E:                   End If
  loc_1A26072:                   Set var_B8 = ()
  loc_1A26078:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1A26087:                   var_120 = CVar((CLng() - 1)) 'Long
  loc_1A260A0:                   LateIdCallSt
  loc_1A260BF:                   Set var_B8 = "Code"(global_68)(1)
  loc_1A260C5:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_1A260D0:                 Else
  loc_1A260D8:                   Set var_B8 = (True)
  loc_1A260DE:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_1A260EC:                   If (var_92 = 1) Then
  loc_1A260FC:                     Set var_B8 = (1)
  loc_1A26102:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1A26130:                     Set var_BC = CInt(0)(CVar(CStr(Proc_6_127_F24F80(()))))
  loc_1A26136:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_1A2614E:                     Set var_B8 = ()
  loc_1A26154:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1A26163:                     var_120 = CVar((CLng() - 1)) 'Long
  loc_1A2617C:                     LateIdCallSt
  loc_1A2619B:                     Set var_B8 = 1(global_68)(1)
  loc_1A261A1:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_1A261A9:                   End If
  loc_1A261A9:                 End If
  loc_1A261A9:               End If
  loc_1A261B1:               Set var_B8 = (True)
  loc_1A261B7:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_1A261C5:               If (var_92 = 1) Then
  loc_1A261D5:                 Set var_B8 = (1)
  loc_1A261DB:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1A26209:                 Set var_BC = CInt(0)(CVar(CStr(Proc_6_127_F24F80(()))))
  loc_1A2620F:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_1A26227:                 Set var_B8 = ()
  loc_1A2622D:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1A2623C:                 var_120 = CVar((CLng() - 1)) 'Long
  loc_1A2624F:                 Set var_BC = 1(global_68)
  loc_1A26255:                 LateIdCallSt
  loc_1A26274:                 Set var_B8 = var_BC(1)
  loc_1A2627A:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_1A26282:               End If
  loc_1A26288:               Call Proc_258_158_190485C(Cancel)
  loc_1A2629A:               Set var_B8 = var_BC(Cancel)
  loc_1A262A0:               Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A262A8:                = var_BC.Text
  loc_1A262CB:               If ((var_C0 <> vbNullString) And (global_240 = "Y")) Then
  loc_1A262DB:                 Set var_B8 = var_BC(Cancel)
  loc_1A262E1:                 Call 0.Method_Txt_Validate0 (vbNullString)
  loc_1A262E9:                 var_BC.Text = 
  loc_1A26309:                 If (var_8C.RecordCount > 0) Then
  loc_1A2631A:                   Set var_B8 = var_BC(CInt(&HD))
  loc_1A26320:                   Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A26328:                    = var_BC.Tag
  loc_1A26354:                   If (Trim(CVar(var_C0)) = vbNullString) Then
  loc_1A26390:                     Set var_124 = var_128(CInt(&HD))
  loc_1A26396:                     Call 0.Method_Txt_Validate0 (CStr(var_8C.Fields.Item(0).Value))
  loc_1A2639E:                     var_128.Tag = 
  loc_1A263ED:                     Set var_124 = var_128(CInt(&HD))
  loc_1A263F3:                     Call 0.Method_Txt_Validate0 (CStr(var_8C.Fields.Item(1).Value))
  loc_1A263FB:                     var_128.Text = 
  loc_1A2642B:                     var_BC = var_8C.Fields.Item(2)
  loc_1A2643B:                     var_C0 = CStr(var_BC.Value)
  loc_1A2644A:                     Set var_124 = var_128(CInt(&HF))
  loc_1A26450:                     Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A26458:                     var_128.Text = 
  loc_1A2647A:                     Call Txt_Validate(CInt(&HD))
  loc_1A26482:                   Else
  loc_1A26490:                     Set var_B8 = var_BC(CInt(&HD))
  loc_1A26496:                     Call 0.Method_Txt_Validate0 (var_C0)
  loc_1A2649E:                     0 = var_BC.Tag
  loc_1A264C4:                     var_128 = var_8C.Fields.Item(0)
  loc_1A264E6:                     Set var_178 = var_17C(CInt(&HD))
  loc_1A264EC:                     Call 0.Method_Txt_Validate0 (var_10C)
  loc_1A264F4:                     (CVar(var_C0) <> var_128.Value) = var_17C.Text
  loc_1A26522:                     var_104 = var_8C.Fields.Item(1).Value
  loc_1A26552:                     If CBool( And (CVar(var_10C) <> var_104)) Then
  loc_1A26595:                       If (MsgBox(CVar("Would u like to change Member Name" & vbCrLf & "With KOT Member Name."), &H24, "Member Information", var_F4, var_104) = 6) Then
  loc_1A265D1:                         Set var_124 = var_128(CInt(&HD))
  loc_1A265D7:                         Call 0.Method_Txt_Validate0 (CStr(var_8C.Fields.Item(0).Value))
  loc_1A265DF:                         var_128.Tag = 
  loc_1A2662E:                         Set var_124 = var_128(CInt(&HD))
  loc_1A26634:                         Call 0.Method_Txt_Validate0 (CStr(var_8C.Fields.Item(1).Value))
  loc_1A2663C:                         var_128.Text = 
  loc_1A2668B:                         Set var_124 = var_128(CInt(&HF))
  loc_1A26691:                         Call 0.Method_Txt_Validate0 (CStr(var_8C.Fields.Item(2).Value))
  loc_1A26699:                         var_128.Text = 
  loc_1A266BB:                         Call Txt_Validate(CInt(&HD))
  loc_1A266C0:                       End If
  loc_1A266C0:                     End If
  loc_1A266C0:                   End If
  loc_1A266C0:                 End If
  loc_1A266C0:               End If
  loc_1A266C0:             End If
  loc_1A266C0:           End If
  loc_1A266C0:         End If
  loc_1A266C0:       End If
  loc_1A266C0:     End If
  loc_1A266C0:   End If
  loc_1A266C0: End If
  loc_1A266C5: Set var_98 = Nothing
  loc_1A266CD: Set var_88 = Nothing
  loc_1A266DB: Set global_104 = Nothing
  loc_1A266E2: Exit Sub
  loc_1A266E3: ' Referenced from: 1A230A8
  loc_1A266E3: Proc_6_60_E62BC4(0)
  loc_1A266E8: Exit Sub
End Sub

Private Sub Command2_Click() 'DFE994
  'Data Table: 5B2100
  loc_DFE98C: Call TopCtrl1_UnknownEvent_14()
  loc_DFE991: Exit Sub
End Sub

Private Sub CmdSave_Click() 'DFE764
  'Data Table: 5B2100
  loc_DFE75C: Call TopCtrl1_UnknownEvent_16()
  loc_DFE761: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F0F248
  'Data Table: 5B2100
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_88 As Frame
  Dim var_A0 As String
  Dim var_A4 As TextBox
  loc_F0F170: Set var_A4 = ()
  loc_F0F176: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B()
  loc_F0F186: var_C8 = Val(CStr())
  loc_F0F190: Set var_88 = var_C8(var_A0)
  loc_F0F196: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_D()
  loc_F0F1A7:  = .Text
  loc_F0F1BA: Set var_BC = var_C0(CInt(var_C8))
  loc_F0F1C0: Call 0.Method_ListView_UnknownEvent_130 (var_A0)
  loc_F0F1C8: var_C0.Text = 
  loc_F0F1F4: (0).Visible = 
  loc_F0F200: Set var_88 = ()
  loc_F0F206: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B()
  loc_F0F216: var_C8 = Val(CStr())
  loc_F0F224: Set var_9C = var_A4(CInt(var_C8))
  loc_F0F22A: Call 0.Method_ListView_UnknownEvent_130 (var_C8)
  loc_F0F232: var_A4.SetFocus
  loc_F0F246: Exit Sub
End Sub

Private Sub Txt1_GotFocus(Index As Integer) 'E497AC
  'Data Table: 5B2100
  loc_E4978A: Set var_88 = var_8C(Index)
  loc_E49790: Call 0.Method_Txt1_GotFocus0 ()
  loc_E4979E: Proc_6_74_E226B0(var_8C)
  loc_E497AA: Exit Sub
End Sub

Private Sub Txt1_KeyDown(KeyCode As Integer, Shift As Integer) 'E7E620
  'Data Table: 5B2100
  Dim var_86 As Integer
  Dim var_8C As CommandButton
  Dim var_90 As TextBox
  loc_E7E5BB: var_86 = KeyCode
  loc_E7E5C4: If (var_86 = 0) Then
  loc_E7E5CD:   If (Shift = &HD) Then
  loc_E7E5DA:     (var_86).SetFocus
  loc_E7E5E2:   End If
  loc_E7E5E5: Else
  loc_E7E5EB:   If (var_86 = 1) Then
  loc_E7E5F4:     If (Shift = &HD) Then
  loc_E7E602:       Set var_8C = var_90(CInt(0))
  loc_E7E608:       Call 0.Method_Txt1_KeyDown0 ()
  loc_E7E610:       var_90.SetFocus
  loc_E7E61C:     End If
  loc_E7E61C:   End If
  loc_E7E61C: End If
  loc_E7E61C: Exit Sub
End Sub

Private Sub Txt1_LostFocus(Index As Integer) 'E4960C
  'Data Table: 5B2100
  loc_E495EA: Set var_88 = var_8C(Index)
  loc_E495F0: Call 0.Method_Txt1_LostFocus0 ()
  loc_E495FE: Proc_6_73_E22704(var_8C)
  loc_E4960A: Exit Sub
End Sub

Private Sub Txt1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'EC1CC4
  'Data Table: 5B2100
  Dim var_8C As TextBox
  Dim var_D4 As TextBox
  loc_EC1C3F: Set var_88 = var_8C(CInt(1))
  loc_EC1C45: Call 0.Method_Txt1_MouseMove0 ()
  loc_EC1C6E: If CBool(Trim(CVar(var_8C)) <> vbNullString) Then
  loc_EC1C7F:   Set var_88 = var_8C(CInt(1))
  loc_EC1C85:   Call 0.Method_Txt1_MouseMove0 (var_D8)
  loc_EC1C8D:    = var_8C.Text
  loc_EC1CA0:   Set var_D0 = var_D4(CInt(1))
  loc_EC1CA6:   Call 0.Method_Txt1_MouseMove0 (var_D8)
  loc_EC1CAE:   var_D4.ToolTipText = 
  loc_EC1CC1: End If
  loc_EC1CC1: Exit Sub
End Sub

Private Sub Txt1_Validate(Cancel As Boolean) 'F0FBC4
  'Data Table: 5B2100
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_F0 As TextBox
  loc_F0FAEF: var_86 = Cancel
  loc_F0FAFA: If (var_86 = CInt(0)) Then
  loc_F0FB08:   Set var_8C = var_90(CInt(0))
  loc_F0FB0E:   Call 0.Method_Txt1_Validate0 (var_86)
  loc_F0FB3B:   If (Len(Trim(CVar(var_90))) = 0) Then
  loc_F0FB51:     Set var_8C = var_90(CInt(0))
  loc_F0FB57:     Call 0.Method_Txt1_Validate0 (CStr(MemVar_1F920EC))
  loc_F0FB5F:     var_90.Text = 
  loc_F0FB71:   Else
  loc_F0FB7B:     Set var_8C = var_90(Cancel)
  loc_F0FB81:     Call 0.Method_Txt1_Validate0 ()
  loc_F0FBA1:     Set var_EC = var_F0(Cancel)
  loc_F0FBA7:     Call 0.Method_Txt1_Validate0 (Proc_6_33_1512840(var_90))
  loc_F0FBAF:     var_F0.Text = 
  loc_F0FBC2:   End If
  loc_F0FBC2: End If
  loc_F0FBC2: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '128E6B4
  'Data Table: 5B2100
  Dim var_8C As TextBox
  Dim var_92 As Integer
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_128E0E6: Set var_88 = var_8C(Index)
  loc_128E0EC: Call 0.Method_TxtGrid_GotFocus0 ()
  loc_128E0FA: Proc_6_74_E226B0(var_8C)
  loc_128E106: Call Proc_258_149_FD63A8()
  loc_128E119: Set var_88 = var_8C(0)
  loc_128E11F: Call 0.Method_TxtGrid_GotFocus0 (0)
  loc_128E127: var_8C.MaxLength = 
  loc_128E136: var_92 = Index
  loc_128E13F: If (var_92 = 0) Then
  loc_128E146:   Set var_88 = (var_92)
  loc_128E14C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_128E15E:   Set var_8C = (CVar(CLng()))
  loc_128E164:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_128E176:   Set var_90 = (CVar(CLng()))
  loc_128E17C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_128E194:   Set var_108 = var_10C(Index)
  loc_128E19A:   Call 0.Method_TxtGrid_GotFocus0 (CStr())
  loc_128E1A2:   var_10C.Tag = 
  loc_128E1C4:   Set var_88 = ()
  loc_128E1CA:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_128E1D3:   var_114 = CLng()
  loc_128E1E3:   If (var_114 = CLng(3)) Then
  loc_128E1ED:     Set var_88 = var_114("OutletCode='")
  loc_128E1F3:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_128E20D:     Set var_8C = CVar(CLng())(CVar(CLng(1)))
  loc_128E213:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_128E233:     Me.Filter = CVar(CStr() & "'")
  loc_128E25D:     Set var_88 = var_8C(0)
  loc_128E263:     Call 0.Method_TxtGrid_GotFocus0 (4)
  loc_128E26B:     var_8C.MaxLength = 
  loc_128E27A:   Else
  loc_128E281:     If (var_114 = CLng(4)) Then
  loc_128E29B:       If (Me.RecordCount > 0) Then
  loc_128E2A9:         Set var_8C = ()
  loc_128E2C1:         Proc_6_137_1193554((), global_96)
  loc_128E2CF:       End If
  loc_128E2D6:       Set var_88 = Index("OutletCode='")
  loc_128E2DC:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A(var_8C)
  loc_128E2F6:       Set var_8C = CVar(CLng())(CVar(CLng(1)))
  loc_128E2FC:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_128E31C:       Me.Filter = CVar(CStr() & "'")
  loc_128E37D:       Set var_88 = (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_128E383:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_128E39D:       Set var_8C = CVar(CLng())(CVar(CLng(&HB)))
  loc_128E3A3:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_128E3C8:       If ( Or (CStr() = vbNullString)) Then
  loc_128E3CB:         Exit Sub
  loc_128E3CC:       End If
  loc_128E3D2:       Me.MoveFirst
  loc_128E3DB:       Set var_88 = ()
  loc_128E3E1:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_128E3FB:       Set var_8C = CVar(CLng())(CVar(CLng(&HB)))
  loc_128E401:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_128E436:       Me.Find "Code='" & CStr(var_B4) & "'", 0, 1
  loc_128E466:       If (Me.EOF = &HFF) Then
  loc_128E46F:         Me.MoveFirst
  loc_128E474:       End If
  loc_128E47D:       CVarUnk
  loc_128E482:       VerifyVarObj
  loc_128E488:       Set var_88 = var_134(global_96)
  loc_128E48E:       LateIdStAd
  loc_128E49F:     Else
  loc_128E4A6:       If (var_114 = CLng(8)) Then
  loc_128E4BE:         Call 0.Method_TxtGrid_GotFocus0 (0)
  loc_128E4C6:         var_8C.MaxLength = var_8C(Index)
  loc_128E4DB:         If (global_202 = 0) Then
  loc_128E4E6:           var_110 = "{Home}+{End}"
  loc_128E4EC:           Proc_303_0_FB9B68(CStr(var_B4))
  loc_128E4F4:         End If
  loc_128E4F7:       Else
  loc_128E4FE:         If (var_114 = CLng(2)) Then
  loc_128E518:           If (Me.RecordCount > 0) Then
  loc_128E526:             Set var_8C = ()
  loc_128E53E:             Proc_6_137_1193554((0), global_100)
  loc_128E54C:           End If
  loc_128E591:           Set var_88 = Index(((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_128E597:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A(var_8C)
  loc_128E5B1:           Set var_8C = CVar(CLng())(CVar(CLng(1)))
  loc_128E5B7:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_128E5DC:           If ( Or (CStr() = vbNullString)) Then
  loc_128E5DF:             Exit Sub
  loc_128E5E0:           End If
  loc_128E5E6:           Me.MoveFirst
  loc_128E5EF:           Set var_88 = ()
  loc_128E5F5:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_128E60F:           Set var_8C = CVar(CLng())(CVar(CLng(1)))
  loc_128E615:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_128E64A:           Me.Find "Code='" & CStr(var_B4) & "'", 0, 1
  loc_128E67A:           If (Me.EOF = &HFF) Then
  loc_128E683:             Me.MoveFirst
  loc_128E688:           End If
  loc_128E691:           CVarUnk
  loc_128E696:           VerifyVarObj
  loc_128E69C:           Set var_88 = var_134(global_100)
  loc_128E6A2:           LateIdStAd
  loc_128E6B0:         End If
  loc_128E6B0:       End If
  loc_128E6B0:     End If
  loc_128E6B0:   End If
  loc_128E6B0: End If
  loc_128E6B0: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '132C8A4
  'Data Table: 5B2100
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_94 As String
  loc_132C107: var_86 = Shift
  loc_132C10D: var_88 = KeyCode
  loc_132C116: If (var_88 = 0) Then
  loc_132C123:   If (CLng(Shift) = &H1B) Then
  loc_132C133:     Set var_8C = var_90(KeyCode)
  loc_132C139:     Call 0.Method_TxtGrid_KeyDown0 (var_94, var_88)
  loc_132C141:     var_86 = var_90.Tag
  loc_132C153:     Set var_98 = var_9C(KeyCode)
  loc_132C159:     Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_132C161:     var_9C.Text = 
  loc_132C17D:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_132C182:     Call Proc_258_149_FD63A8(arg_14)
  loc_132C18B:     Set var_8C = ()
  loc_132C191:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001()
  loc_132C1A8:     Set var_8C = var_90(KeyCode)
  loc_132C1AE:     Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_132C1B6:     var_90.Visible = 
  loc_132C1C2:     Exit Sub
  loc_132C1C3:   End If
  loc_132C1C7:   Set var_8C = ()
  loc_132C1CD:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_132C1D6:   var_B0 = CLng()
  loc_132C1E6:   If (var_B0 = CLng(2)) Then
  loc_132C211:     Set var_98 = Nothing
  loc_132C23F:     Proc_6_69_134A198((var_B0), (), KeyCode, global_100, Shift)
  loc_132C2AE:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_132C2B5:       Set var_98 = 1(&HFF)
  loc_132C2BC:       Set var_90 = ()(var_98)
  loc_132C2D4:       Proc_6_138_106D6F8(var_98, global_100, KeyCode)
  loc_132C2E2:     End If
  loc_132C2EC:     If (CLng(Shift) = &HD) Then
  loc_132C2F5:       Call Proc_258_144_18EC2F4(KeyCode, var_B2)
  loc_132C300:       If (var_B2 = &HFF) Then
  loc_132C346:         Proc_6_62_1253BC4(0(()), (), KeyCode, Shift, global_202)
  loc_132C356:       End If
  loc_132C356:     End If
  loc_132C359:   Else
  loc_132C360:     If (var_B0 = CLng(4)) Then
  loc_132C38B:       Set var_98 = Nothing
  loc_132C3B9:       Proc_6_69_134A198(0(7), 0(3), KeyCode, global_96, Shift)
  loc_132C428:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_132C42F:         Set var_98 = 1(&HFF)
  loc_132C436:         Set var_90 = ()(var_98)
  loc_132C44E:         Proc_6_138_106D6F8(var_98, global_96, KeyCode)
  loc_132C45C:       End If
  loc_132C466:       If (CLng(Shift) = &HD) Then
  loc_132C46F:         Call Proc_258_144_18EC2F4(KeyCode, var_B2)
  loc_132C47A:         If (var_B2 = &HFF) Then
  loc_132C4C7:           Proc_6_62_1253BC4(0(()), (), KeyCode, Shift, global_202)
  loc_132C4D7:         End If
  loc_132C4D7:       End If
  loc_132C4DA:     Else
  loc_132C4E1:       If (var_B0 = CLng(8)) Then
  loc_132C524:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_202 = &HFF))) Then
  loc_132C52D:           Call Proc_258_144_18EC2F4(KeyCode, var_B2, CByte((CInt(&HA) + 1)))
  loc_132C538:           If (var_B2 = &HFF) Then
  loc_132C57E:             Proc_6_62_1253BC4(7(0), (0), KeyCode, Shift, global_202)
  loc_132C592:             Set var_8C = 0(8)
  loc_132C598:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A(0)
  loc_132C5C2:             LateIdCallSt
  loc_132C5D8:             Set var_8C = CVar(CLng(0))(CVar(CLng(1))(global_312))
  loc_132C5DE:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_132C5E7:             var_DC = CVar(CLng()) 'Long
  loc_132C608:             LateIdCallSt
  loc_132C61D:             var_DC = CVar(CLng(3)) 'Long
  loc_132C626:             Set var_8C = CVar(CLng(2))(global_308)(var_DC)
  loc_132C62C:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B(var_DC)
  loc_132C634:           End If
  loc_132C634:         End If
  loc_132C637:       Else
  loc_132C63E:         If (var_B0 = CLng(7)) Then
  loc_132C681:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_202 = &HFF))) Then
  loc_132C68A:             Call Proc_258_144_18EC2F4(KeyCode)
  loc_132C695:             If (var_B2 = &HFF) Then
  loc_132C6DB:               Proc_6_62_1253BC4((var_B2), (), KeyCode, Shift, global_202)
  loc_132C6EF:               Set var_8C = 0(8)
  loc_132C6F5:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A(0)
  loc_132C71F:               LateIdCallSt
  loc_132C735:               Set var_8C = CVar(CLng(0))(CVar(CLng(1))(global_312))
  loc_132C73B:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_132C744:               var_DC = CVar(CLng()) 'Long
  loc_132C765:               LateIdCallSt
  loc_132C77A:               var_DC = CVar(CLng(3)) 'Long
  loc_132C783:               Set var_8C = CVar(CLng(2))(global_308)(var_DC)
  loc_132C789:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B(var_DC)
  loc_132C791:             End If
  loc_132C791:           End If
  loc_132C794:         Else
  loc_132C79B:           If (var_B0 = CLng(3)) Then
  loc_132C7A8:             If (CLng(Shift) = &HD) Then
  loc_132C7B1:               Call Proc_258_144_18EC2F4(KeyCode)
  loc_132C7BC:               If (var_B2 = &HFF) Then
  loc_132C809:                 Proc_6_62_1253BC4((var_B2), (), KeyCode, Shift, global_202)
  loc_132C81D:                 Set var_8C = 0(CByte((CInt(7) + 1)))
  loc_132C823:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A(0)
  loc_132C83D:                 Set var_90 = CVar(CLng(0))(CVar(CLng(3)))
  loc_132C843:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_132C867:                 If (CStr() = vbNullString) Then
  loc_132C876:                   Set var_8C = (CVar(CLng(3)))
  loc_132C87C:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_132C887:                 Else
  loc_132C893:                   Set var_8C = (CVar(CLng(7)))
  loc_132C899:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_132C8A1:                 End If
  loc_132C8A1:               End If
  loc_132C8A1:             End If
  loc_132C8A1:           End If
  loc_132C8A1:         End If
  loc_132C8A1:       End If
  loc_132C8A1:     End If
  loc_132C8A1:   End If
  loc_132C8A1: End If
  loc_132C8A1: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '10E6724
  'Data Table: 5B2100
  Dim var_86 As Integer
  Dim var_A0 As Long
  loc_10E6407: Proc_6_58_E054C0(arg_10)
  loc_10E640F: var_86 = KeyAscii
  loc_10E6418: If (var_86 = 0) Then
  loc_10E641F:   Set var_8C = (var_86)
  loc_10E6425:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_10E642E:   var_A0 = CLng()
  loc_10E643E:   If (var_A0 = CLng(3)) Then
  loc_10E645C:     If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_10E646B:       Set var_8C = var_A0(CVar(CLng(4)))
  loc_10E6471:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_10E647D:       Set var_8C = ()
  loc_10E6483:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_10E6495:       If (CBool() = &HFF) Then
  loc_10E64A7:         var_C4 = "Name"
  loc_10E64C2:         Proc_6_89_146F1AC((), KeyAscii, global_96)
  loc_10E64D1:       End If
  loc_10E64D1:     End If
  loc_10E64D4:   Else
  loc_10E64DB:     If (var_A0 = CLng(2)) Then
  loc_10E64E2:       Set var_8C = var_C4(arg_10)
  loc_10E64E8:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(0)
  loc_10E64FA:       If (CBool() = &HFF) Then
  loc_10E6527:         Proc_6_89_146F1AC((), KeyAscii, global_100)
  loc_10E6541:         Set var_CC = (0)
  loc_10E6559:         Proc_6_138_106D6F8("Name"(arg_10), global_96)
  loc_10E6567:       End If
  loc_10E656A:     Else
  loc_10E6571:       If (var_A0 = CLng(4)) Then
  loc_10E6578:         Set var_8C = var_CC(KeyAscii)
  loc_10E657E:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_10E6590:         If (CBool() = &HFF) Then
  loc_10E65BD:           Proc_6_89_146F1AC((), KeyAscii, global_96)
  loc_10E65D7:           Set var_CC = (0)
  loc_10E65EF:           Proc_6_138_106D6F8("Name"(arg_10), global_96)
  loc_10E65FD:         End If
  loc_10E6600:       Else
  loc_10E6607:         If (var_A0 = CLng(7)) Then
  loc_10E6614:           Set var_8C = var_CC(KeyAscii)
  loc_10E661A:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii)
  loc_10E6635:           Proc_6_42_129A86C(var_CC, arg_10, 8)
  loc_10E6644:         Else
  loc_10E664B:           If (var_A0 = CLng(8)) Then
  loc_10E6658:             Set var_8C = var_CC(KeyAscii)
  loc_10E665E:             Call 0.Method_TxtGrid_KeyPress0 (3)
  loc_10E6679:             Proc_6_42_129A86C(var_CC, arg_10, 8)
  loc_10E6688:           Else
  loc_10E668F:             If (var_A0 = CLng(3)) Then
  loc_10E66AD:               If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_10E66BC:                 Set var_8C = 3(CVar(CLng(4)))
  loc_10E66C2:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B(var_CC)
  loc_10E66CE:                 Set var_8C = ()
  loc_10E66D4:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_10E66E6:                 If (CBool() = &HFF) Then
  loc_10E66F8:                   var_C4 = "Name"
  loc_10E6713:                   Proc_6_89_146F1AC((), KeyAscii, global_96)
  loc_10E6722:                 End If
  loc_10E6722:               End If
  loc_10E6722:             End If
  loc_10E6722:           End If
  loc_10E6722:         End If
  loc_10E6722:       End If
  loc_10E6722:     End If
  loc_10E6722:   End If
  loc_10E6722: End If
  loc_10E6722: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F624B8
  'Data Table: 5B2100
  Dim var_86 As Integer
  Dim var_A0 As Long
  loc_F62388: On Error Goto loc_F624B2
  loc_F6238E: var_86 = KeyCode
  loc_F62397: If (var_86 = 0) Then
  loc_F6239E:   Set var_8C = (var_86)
  loc_F623A4:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_F623AD:   var_A0 = CLng()
  loc_F623BD:   If (var_A0 = CLng(2)) Then
  loc_F623CA:     Set var_8C = var_A0((Shift <> &HD))
  loc_F623D0:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_F623E3:     If ( And (CBool() = 0)) Then
  loc_F623F4:       Call TxtGrid_KeyDown(KeyCode, global_200)
  loc_F62408:       var_A8 = "Name"
  loc_F62423:       Proc_6_89_146F1AC((0), KeyCode, global_100)
  loc_F62432:     End If
  loc_F62435:   Else
  loc_F6243C:     If (var_A0 = CLng(4)) Then
  loc_F62449:       Set var_8C = Shift((Shift <> &HD))
  loc_F6244F:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(var_A8)
  loc_F62462:       If ( And (CBool(&HFF) = 0)) Then
  loc_F62473:         Call TxtGrid_KeyDown(KeyCode, global_200)
  loc_F62487:         var_A8 = "Name"
  loc_F624A2:         Proc_6_89_146F1AC((0), KeyCode, global_96)
  loc_F624B1:       End If
  loc_F624B1:     End If
  loc_F624B1:   End If
  loc_F624B1: End If
  loc_F624B1: Exit Sub
  loc_F624B2: ' Referenced from: F62388
  loc_F624B2: Proc_6_60_E62BC4(Shift, var_A8)
  loc_F624B7: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20634
  'Data Table: 5B2100
  Dim arg_10 As Integer
  loc_E2061C: If (Cancel = 0) Then
  loc_E20625:   Call Proc_258_144_18EC2F4(Cancel, var_88)
  loc_E2062E:   arg_10 = Not(var_88)
  loc_E20631: End If
  loc_E20631: Exit Sub
End Sub

Private Sub CmdAutoSettlement_UnknownEvent_9 '101BCFC
  'Data Table: 5B2100
  Dim unk_5B213D As Connection15
  Dim var_A0 As Recordset15
  Dim var_88 As Variant
  Dim var_98 As Variant
  loc_101BAF8: On Error Goto loc_101BCF6
  loc_101BAFF: Set var_88 = Me.TopCtrl1
  loc_101BB05: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_101BB1E: If (CStr() <> "Browse") Then
  loc_101BB21:   Exit Sub
  loc_101BB22: End If
  loc_101BB46: unk_5B213D.Execute "Select Interface From MemEnviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_98, -1
  loc_101BB51: Set var_A0 = var_88
  loc_101BB75: If (var_A0.RecordCount > 0) Then
  loc_101BBA0:   var_C8 = Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Interface")))
  loc_101BBB1:   If (var_C8 = "SmartCard_ACR") Then
  loc_101BBD3:     var_DC = 0
  loc_101BC22:     If (Proc_275_12_130A7A4(2, 0, var_A4, var_A8, 0, 0) = 0) Then
  loc_101BC25:       Exit Sub
  loc_101BC26:     End If
  loc_101BC29:     var_F0 = var_A8
  loc_101BC34:     If (var_F0 = "Member") Then
  loc_101BC43:       0(&HFF).Visible = var_DC
  loc_101BC4E:     Else
  loc_101BC56:       If (var_F0 = "Cash Card") Then
  loc_101BC59:         Call CmdDebitCard_UnknownEvent_9()
  loc_101BC5E:       End If
  loc_101BC5E:     End If
  loc_101BC61:   Else
  loc_101BC69:     If (var_C8 = "NBSD_Mifare") Then
  loc_101BC85:       MsgBox("Procedure Not Defined!", &H40, var_110, var_130, var_150)
  loc_101BC98:     Else
  loc_101BCB1:       MsgBox("Smart Card Interface Not Defined!", &H40, var_110, var_130, var_150)
  loc_101BCC1:     End If
  loc_101BCC1:   End If
  loc_101BCC4: Else
  loc_101BCDD:   MsgBox("Member Environment Settings NOT SET!", 0, var_110, var_130, var_150)
  loc_101BCED: End If
  loc_101BCF2: Set var_A0 = Nothing
  loc_101BCF5: Exit Sub
  loc_101BCF6: ' Referenced from: 101BAF8
  loc_101BCF6: Proc_6_60_E62BC4(0, 0)
  loc_101BCFB: Exit Sub
End Sub

Public Function global_5972224Get() '5B692C
  BVM60.DLL.GetMemNewObj
End Function

Public Function global_5972224Get() '5B6946
  BVM60.DLL.PutMemNewObj
End Function

Public Function global_5972224Get() '5B6960
  BVM60.DLL.SetMemNewObj
End Function

Public Function global_56Get() '5B697A
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '5B6989
  global_56 = Value
End Sub

Public Function global_60Get() '5B6998
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '5B69A7
  global_60 = Value
End Sub

Public Function global_64Get() '5B69B6
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '5B69C5
  global_64 = Value
End Sub

Public Function global_68Get() '5B69D4
  global_68Get = global_68
End Function

Public Sub global_68Put(Value) '5B69E3
  global_68 = Value
End Sub

Public Function global_72Get() '5B69F2
  global_72Get = global_72
End Function

Public Sub global_72Put(Value) '5B6A01
  global_72 = Value
End Sub

Public Function global_76Get() '5B6A10
  global_76Get = global_76
End Function

Public Sub global_76Put(Value) '5B6A1F
  global_76 = Value
End Sub

Public Sub SetOnLineBookingDetail() 'ECB1A0
  'Data Table: 5B2100
  Dim var_90 As TextBox
  Dim SetOnLineBookingDetail6FF As Double
  loc_ECB10E: Set var_8C = var_90(CInt(&HB))
  loc_ECB114: Call 0.Method_SetOnLineBookingDetail0 (oBookingNo)
  loc_ECB11C: var_90.Text = 
  loc_ECB141: Set var_8C = var_90(CInt(&HB))
  loc_ECB147: Call 0.Method_SetOnLineBookingDetail0 (oBookingDocId)
  loc_ECB14F: var_90.Tag = 
  loc_ECB174: Set var_8C = var_90(CInt(&HC))
  loc_ECB17A: Call 0.Method_SetOnLineBookingDetail0 (oCustName)
  loc_ECB182: var_90.Text = 
  loc_ECB194: Call Proc_258_135_13FFA64(var_A0)
  loc_ECB19C: Exit Sub
  loc_ECB19D: SetOnLineBookingDetail6FF = 
End Sub

Public Sub SetOnLineSalingCustDetail() 'F662D4
  'Data Table: 5B2100
  Dim var_90 As TextBox
  Dim var_8C As Frame
  loc_F661AC: On Error Goto loc_F66290
  loc_F661C5: Set var_8C = var_90(CInt(0))
  loc_F661CB: Call 0.Method_SetOnLineSalingCustDetail0 (sPhoneNo)
  loc_F661D3: var_90.Text = 
  loc_F661F8: Set var_8C = var_90(CInt(1))
  loc_F661FE: Call 0.Method_SetOnLineSalingCustDetail0 (sCustName)
  loc_F66206: var_90.Text = 
  loc_F6622B: Set var_8C = var_90(CInt(2))
  loc_F66231: Call 0.Method_SetOnLineSalingCustDetail0 (sAddress1)
  loc_F66239: var_90.Text = 
  loc_F6624B: var_88 = sAddress2
  loc_F6625E: Set var_8C = var_90(CInt(3))
  loc_F66264: Call 0.Method_SetOnLineSalingCustDetail0 (var_88)
  loc_F6626C: var_90.Text = 
  loc_F66287: (&HFF).Visible = 
  loc_F6628F: Exit Sub
  loc_F66290: ' Referenced from: F661AC
  loc_F66298: Set var_8C = Err()
  loc_F6629E: Call 0.Method_arg_2C (var_88)
  loc_F662BF: MsgBox(CVar(var_88), &H40, "Information", var_E0, var_100)
  loc_F662D2: Exit Sub
  loc_F662D3: Exit Sub
End Sub

Public Property Let ParentForm(vNewValue) 'E0D504
  'Data Table: 5B2100
  loc_E0D4FD: Set global_412 = vNewValue
  loc_E0D501: Exit Sub
End Sub

Public Property Get ParentForm() 'E0D3E4
  'Data Table: 5B2100
  loc_E0D3D8: Set var_88 = global_412 
  loc_E0D3DC: ParentForm = 
End Sub

Public Property Let PTableNo(vNewValue) 'E0D30C
  'Data Table: 5B2100
  loc_E0D304: global_324 = vNewValue
  loc_E0D308: Exit Sub
  loc_E0D309: Exit Sub
End Sub

Public Property Get PTableNo() 'E0C274
  'Data Table: 5B2100
  loc_E0C268: var_88 = global_324
  loc_E0C26B: PTableNo = 
End Sub

Public Property Let pRestCode(vNewValue) 'E0CDB4
  'Data Table: 5B2100
  loc_E0CDAC: global_328 = vNewValue
  loc_E0CDB0: Exit Sub
End Sub

Public Property Get pRestCode() 'E0C154
  'Data Table: 5B2100
  loc_E0C148: var_88 = global_328
  loc_E0C14B: pRestCode = 
  loc_E0C151: Exit Sub
End Sub

Public Property Get OpenMode() 'E04140
  'Data Table: 5B2100
  loc_E04139: OpenMode = global_320
End Sub

Public Property Let OpenMode(vNewValue) 'E0080C
  'Data Table: 5B2100
  loc_E00806: global_320 = vNewValue
  loc_E00809: Exit Sub
End Sub

Public Property Let oBookingNo(vNewValue) 'E0C19C
  'Data Table: 5B2100
  loc_E0C194: global_332 = vNewValue
  loc_E0C198: Exit Sub
End Sub

Public Property Get oBookingNo() 'E0BCD4
  'Data Table: 5B2100
  loc_E0BCC8: var_88 = global_332
  loc_E0BCCB: oBookingNo = 
End Sub

Public Property Let oBookingDocId(vNewValue) 'E0BD64
  'Data Table: 5B2100
  loc_E0BD5C: global_336 = vNewValue
  loc_E0BD60: Exit Sub
End Sub

Public Property Get oBookingDocId() 'E0BA94
  'Data Table: 5B2100
  loc_E0BA88: var_88 = global_336
  loc_E0BA8B: oBookingDocId = 
End Sub

Public Property Let oCustName(vNewValue) 'E0BE84
  'Data Table: 5B2100
  loc_E0BE7C: global_340 = vNewValue
  loc_E0BE80: Exit Sub
End Sub

Public Property Get oCustName() 'E0BFA4
  'Data Table: 5B2100
  loc_E0BF98: var_88 = global_340
  loc_E0BF9B: oCustName = 
End Sub

Public Property Let sPhoneNo(vNewValue) 'E0C1E4
  'Data Table: 5B2100
  loc_E0C1DC: global_348 = vNewValue
  loc_E0C1E0: Exit Sub
End Sub

Public Property Get sPhoneNo() 'E0C22C
  'Data Table: 5B2100
  loc_E0C220: var_88 = global_348
  loc_E0C223: sPhoneNo = 
End Sub

Public Property Let sCustName(vNewValue) 'E0C6F4
  'Data Table: 5B2100
  loc_E0C6EC: global_352 = vNewValue
  loc_E0C6F0: Exit Sub
End Sub

Public Property Get sCustName() 'E0C034
  'Data Table: 5B2100
  loc_E0C028: var_88 = global_352
  loc_E0C02B: sCustName = 
End Sub

Public Property Let sAddress1(vNewValue) 'E0C07C
  'Data Table: 5B2100
  loc_E0C074: global_356 = vNewValue
  loc_E0C078: Exit Sub
End Sub

Public Property Get sAddress1() 'E0CF64
  'Data Table: 5B2100
  loc_E0CF58: var_88 = global_356
  loc_E0CF5B: sAddress1 = 
End Sub

Public Property Let sAddress2(vNewValue) 'E0CF1C
  'Data Table: 5B2100
  loc_E0CF14: global_360 = vNewValue
  loc_E0CF18: Exit Sub
End Sub

Public Property Get sAddress2() 'E0D7D4
  'Data Table: 5B2100
  loc_E0D7C8: var_88 = global_360
  loc_E0D7CB: sAddress2 = 
End Sub

Public Property Let PRemark(vNewValue) 'E0D984
  'Data Table: 5B2100
  loc_E0D97C: global_344 = vNewValue
  loc_E0D980: Exit Sub
End Sub

Public Property Get PRemark() 'E0C61C
  'Data Table: 5B2100
  loc_E0C610: var_88 = global_344
  loc_E0C613: PRemark = 
End Sub

Public Property Let TxtKeyBoard(vNewValue) 'E0E35C
  'Data Table: 5B2100
  loc_E0E354: global_364 = vNewValue
  loc_E0E358: Exit Sub
End Sub

Public Property Get TxtKeyBoard() 'E0C8EC
  'Data Table: 5B2100
  loc_E0C8E0: var_88 = global_364
  loc_E0C8E3: TxtKeyBoard = 
End Sub

Public Sub FindMove(mDocId) 'E765A4
  'Data Table: 5B2100
  Dim Me As Recordset15
  loc_E7654E: Me.MoveFirst
  loc_E76578: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E76598: If (Me.EOF = 0) Then
  loc_E7659B:   Call Proc_258_145_1BA10F4(var_9C)
  loc_E765A0: End If
  loc_E765A0: Exit Sub
End Sub

Public Sub OutLetPaymentAdjustment(OpenMode, OpenType, AdvType, IdNo, DocID, PersonCode, TableOrRoomNo, RoomCat, Roomtype, BillAmount, RestCode, mSettlementmode, CardType, RegId) 'FADBD8
  'Data Table: 5B2100
  Dim var_C4 As Integer
  Dim unk_5B213D As Connection15
  Dim var_B0 As Recordset15
  Dim var_B4 As Fields15
  Dim var_C8 As Field20
  Dim var_9C As Variant
  loc_FADA5E: var_C4 = 0
  loc_FADA8B: unk_5B213D.Execute "Select Count(*) From Depart Where Code='" & RestCode & "' And RestType='Production'", var_AC, -1
  loc_FADA93: var_B0 = var_B0.Fields
  loc_FADA9B: var_C4 = var_B4.Item(var_B4)
  loc_FADAA3: var_C8 = var_C8.Value
  loc_FADACA: If (var_D8 > 0) Then
  loc_FADAE6:   MsgBox("Operation is not allowed for Perticular Department", &H10, var_D8, var_F8, var_118)
  loc_FADAF6:   Exit Sub
  loc_FADAF7: End If
  loc_FADAFB: Set var_11C = New rsTouchScreenAdvanceDepDialog
  loc_FADB09: var_11C.OpenMode = CVar(OpenMode)
  loc_FADB18: var_11C.OpenType = CVar(OpenType)
  loc_FADB26: var_11C.AdvType = CVar(AdvType)
  loc_FADB34: var_11C.IdNo = CVar(IdNo)
  loc_FADB42: var_11C.pDocId = CVar(DocID)
  loc_FADB50: var_11C.PersonCode = CVar(PersonCode)
  loc_FADB5E: var_11C.PTableOrRoomNo = CVar(TableOrRoomNo)
  loc_FADB6C: var_11C.PRoomtype = CVar(Roomtype)
  loc_FADB7A: var_11C.PRoomCat = CVar(RoomCat)
  loc_FADB89: var_11C.PBillAmt = CVar(BillAmount)
  loc_FADB97: var_11C.LocalRestCode = CVar(RestCode)
  loc_FADBA5: var_11C.PSettlementMode = CVar(mSettlementmode)
  loc_FADBB3: var_11C.PCardType = CVar(CardType)
  loc_FADBC1: var_11C.PCardCode = CVar(OutLetPaymentAdjustment0)
  loc_FADBC5: var_9C = 1
  loc_FADBCE: Call var_11C.Show
  loc_FADBD4: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E95D10
  'Data Table: 5B2100
  Dim Me As Recordset15
  loc_E95C9E: On Error Goto loc_E95D07
  loc_E95CA7: Me.MoveFirst
  loc_E95CD1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95CF9: Proc_5_0_110649C(&HFF, Me, global_116)
  loc_E95D01: Call Proc_258_145_1BA10F4(0)
  loc_E95D06: Exit Sub
  loc_E95D07: ' Referenced from: E95C9E
  loc_E95D07: Proc_6_60_E62BC4(var_A0)
  loc_E95D0C: Exit Sub
End Sub

Public Sub Proc_258_131_E8523C(arg_C) 'E8523C
  'Data Table: 5B2100
  Dim var_77A8 As Variant
  loc_E851DA: For var_90 = 1 To CInt(Len(arg_C)): var_88 = var_90 'Integer
  loc_E8521F:   If Not(((Asc(CStr(Mid(arg_C, CLng(var_88), 1))) >= &H30) And (Asc(CStr(Mid(arg_C, CLng(var_88), 1))) <= &H39))) Then
  loc_E85222:     GoTo loc_E8522D
  loc_E85225:   End If
  loc_E85228: Next var_90 'Integer
  loc_E8522D: ' Referenced from: E85222
  loc_E85233: Proc_258_131_E8523C = var_88
  loc_E85239: var_77A8 = CVar() 'Address
End Sub

Public Sub Proc_258_132_1233AC4(arg_C) '1233AC4
  'Data Table: 5B2100
  Dim var_D0 As Variant
  Dim var_92 As Integer
  Dim var_D4 As Label
  Dim var_D8 As String
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_174 As Variant
  Dim var_230 As Variant
  Dim var_240 As Variant
  Dim var_260 As Variant
  Dim var_310 As Variant
  Dim var_B0 As Variant
  Dim var_150 As Variant
  Dim var_21C As Variant
  loc_1233625: var_D0 = ("echo" + Space(1))
  loc_123362A: var_8C = CStr(var_D0)
  loc_123363E: var_90 = " > " & global_416
  loc_1233643: var_92 = &H16
  loc_1233649: var_98 = "** WELCOME **"
  loc_1233659:  = var_92(var_D8).Caption
  loc_1233661: var_9C = var_D8
  loc_123366D: If (arg_C = &HFF) Then
  loc_1233672:   Close 1
  loc_123367B:   Open "C:\reptmp\Display.BAT" For Output As 1 Len = &HFF
  loc_1233684:   Print 1, "@echo off"
  loc_1233699:   Print 1, "mode " & global_420
  loc_12336B1:   If ((CLng(var_92) - Len(var_98)) >= 2) Then
  loc_12336C8:     var_B0 = Space(CLng(Int((CDbl((CLng(var_92) - Len(var_98))) / CDbl(2)))))
  loc_12336D6:     var_D0 = (CVar(var_8C) + Space(1))
  loc_12336E0:     var_F8 = (var_D0 + CVar(var_98))
  loc_12336EA:     var_118 = (var_F8 + CVar(var_90))
  loc_12336F0:     Print 1, var_118
  loc_1233704:   Else
  loc_1233717:     Print 1, var_8C & var_98 & var_90
  loc_1233724:   End If
  loc_1233733:   If ((CLng(var_92) - Len(var_9C)) >= 2) Then
  loc_123374A:     var_B0 = Space(CLng(Int((CDbl((CLng(var_92) - Len(var_9C))) / CDbl(2)))))
  loc_1233758:     var_D0 = (CVar(var_8C) + Space(1))
  loc_1233762:     var_F8 = (var_D0 + CVar(var_9C))
  loc_123376C:     var_118 = (var_F8 + CVar(var_90))
  loc_1233772:     Print 1, var_118
  loc_1233786:   Else
  loc_1233799:     Print 1, var_8C & var_9C & var_90
  loc_12337A6:   End If
  loc_12337A8:   Close 1
  loc_12337AD: Else
  loc_12337AF:   Close 1
  loc_12337B8:   Open "C:\reptmp\Display.BAT" For Output As 1 Len = &HFF
  loc_12337C1:   Print 1, "@echo off"
  loc_12337D6:   Print 1, "mode " & global_420
  loc_12337E3:   Set var_D4 = ()
  loc_12337E9:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_1233803:   Set var_130 = CVar(CLng())(CVar(CLng(&HB)))
  loc_1233809:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_123383C:   If CBool(Trim(CVar(CStr())) <> vbNullString) Then
  loc_1233843:     Set var_D4 = ()
  loc_1233849:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_1233863:     Set var_130 = CVar(CLng())(CVar(CLng(4)))
  loc_1233869:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1233883:     Set var_178 = ()
  loc_1233889:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_12338A3:     Set var_1BC = CVar(CLng())(CVar(CLng(7)))
  loc_12338A9:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_12338E3:     Set var_264 = 1(1)
  loc_12338E9:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_1233903:     Set var_2B8 = CVar(CLng())(CVar(CLng(8)))
  loc_1233909:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1233944:     var_174 = (CVar(Proc_6_45_EAD428(CStr(Trim(CVar(CStr()))))) + Space(1))
  loc_123395D:     var_240 = (var_174 + CVar(Proc_6_52_EAD4F4(CStr(Format(Trim(CVar(CStr())), "0")), 3)))
  loc_1233971:     var_260 = (var_240 + Space(1))
  loc_123398A:     var_310 = (var_260 + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr()))), 6)))
  loc_123398F:     var_A0 = CStr(var_310)
  loc_12339DB:   End If
  loc_1233A74:   var_150 = (CVar(var_8C & var_A0 & " Net Amt:") + Format(CVar(Abs(global_424)), "0.00"))
  loc_1233A7B:   var_174 = (Space(1) + Space(1))
  loc_1233A82:   var_21C = (var_174 + IIf((global_424 > CDbl(0)), "Pay", IIf((global_424 < CDbl(0)), "Refund", vbNullString)))
  loc_1233A8C:   var_230 = (Format(Trim(CVar(CStr())), "0") + CVar(var_90))
  loc_1233A92:   Print 1, CVar(Proc_6_52_EAD4F4(CStr(Format(Trim(CVar(CStr())), "0")), 3))
  loc_1233AC0:   Close 1
  loc_1233AC2: End If
  loc_1233AC2: Exit Sub
End Sub

Public Sub Proc_258_133_121F3D8
  'Data Table: 5B2100
  Dim var_88 As Frame
  loc_121EED8: Set var_88 = Me.TopCtrl1
  loc_121EEDE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030019()
  loc_121EEF0: Set var_BC = (CBool())
  loc_121EEF6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121EF0D: Set var_88 = Me.TopCtrl1
  loc_121EF13: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030016()
  loc_121EF25: Set var_BC = (CBool())
  loc_121EF2B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121EF42: Set var_88 = Me.TopCtrl1
  loc_121EF48: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030017()
  loc_121EF5A: Set var_BC = (CBool())
  loc_121EF60: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121EF77: Set var_88 = Me.TopCtrl1
  loc_121EF7D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030014()
  loc_121EF8F: Set var_BC = (CBool())
  loc_121EF95: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121EFAC: Set var_88 = Me.TopCtrl1
  loc_121EFB2: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6803000F()
  loc_121EFC4: Set var_BC = (CBool())
  loc_121EFCA: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121EFE1: Set var_88 = Me.TopCtrl1
  loc_121EFE7: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6803000D()
  loc_121EFF9: Set var_BC = (CBool())
  loc_121EFFF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F016: Set var_88 = Me.TopCtrl1
  loc_121F01C: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030018()
  loc_121F02E: Set var_BC = (CBool())
  loc_121F034: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F04F: Set var_88 = (True)
  loc_121F055: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F069: Me.FrameGrpItem.Enabled = True
  loc_121F075: Set var_88 = Me.TopCtrl1
  loc_121F07B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_121F094: If (CStr() = "Add") Then
  loc_121F09F:   Set var_88 = (True)
  loc_121F0A5:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F0BC:   Set var_88 = var_BC(CInt(2))
  loc_121F0C2:   Call 0.Method_Proc_258_133_121F3D80 (True)
  loc_121F0CA:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F0E5:   Set var_88 = var_BC(CInt(4))
  loc_121F0EB:   Call 0.Method_Proc_258_133_121F3D80 (True)
  loc_121F0F3:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F10E:   Set var_88 = var_BC(CInt(3))
  loc_121F114:   Call 0.Method_Proc_258_133_121F3D80 (True)
  loc_121F11C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F130:   Set var_88 = (True)
  loc_121F136:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F146:   Set var_88 = (True)
  loc_121F14C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F160:   Me.FrameGrpItem.Enabled = True
  loc_121F174:   (&HFF).Enabled = 
  loc_121F17F: Else
  loc_121F183:   Set var_88 = Me.TopCtrl1
  loc_121F189:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_121F1A2:   If (CStr() = "Edit") Then
  loc_121F1AD:     Set var_88 = (True)
  loc_121F1B3:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F1CA:     Set var_88 = var_BC(CInt(2))
  loc_121F1D0:     Call 0.Method_Proc_258_133_121F3D80 (True)
  loc_121F1D8:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F1F3:     Set var_88 = var_BC(CInt(4))
  loc_121F1F9:     Call 0.Method_Proc_258_133_121F3D80 (True)
  loc_121F201:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F21C:     Set var_88 = var_BC(CInt(3))
  loc_121F222:     Call 0.Method_Proc_258_133_121F3D80 (True)
  loc_121F22A:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F23E:     Set var_88 = (True)
  loc_121F244:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F254:     Set var_88 = (True)
  loc_121F25A:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F265:   Else
  loc_121F269:     Set var_88 = Me.TopCtrl1
  loc_121F26F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_121F288:     If (CStr() = "Browse") Then
  loc_121F296:       If (global_240 <> "Y") Then
  loc_121F2A1:         Set var_88 = (True)
  loc_121F2A7:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F2B2:       Else
  loc_121F2BB:         Set var_88 = (False)
  loc_121F2C1:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F2C9:       End If
  loc_121F2D9:       Set var_88 = var_BC(CInt(2))
  loc_121F2DF:       Call 0.Method_Proc_258_133_121F3D80 (False)
  loc_121F2E7:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F303:       Set var_88 = var_BC(CInt(4))
  loc_121F309:       Call 0.Method_Proc_258_133_121F3D80 (False)
  loc_121F311:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F32D:       Set var_88 = var_BC(CInt(3))
  loc_121F333:       Call 0.Method_Proc_258_133_121F3D80 (False)
  loc_121F33B:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F350:       Set var_88 = (False)
  loc_121F356:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F367:       Set var_88 = (False)
  loc_121F36D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F388:       If (PRemark = "Unsettled") Then
  loc_121F394:         Set var_88 = (False)
  loc_121F39A:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_121F3A2:       End If
  loc_121F3AE:       Me.FrameGrpItem.Enabled = False
  loc_121F3C2:       (0).Enabled = 
  loc_121F3CF:       Call CmdCatType_UnknownEvent_9()
  loc_121F3D4:     End If
  loc_121F3D4:   End If
  loc_121F3D4: End If
  loc_121F3D4: Exit Sub
  loc_121F3D5: var_7800 = 0
End Sub

Public Sub Proc_258_134_1306B94
  'Data Table: 5B2100
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_F4 As Variant
  Dim var_C4 As Variant
  Dim var_FC As Variant
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_9A As Integer
  Dim var_124 As Variant
  Dim var_148 As Variant
  Dim var_114 As Variant
  Dim var_180 As String
  Dim Me As Recordset15
  loc_130647E: var_D4 = False
  loc_1306496: ).Visible = 0
  loc_130649D: var_D4 = False
  loc_13064B5: ).Visible = 0
  loc_13064CD: For var_F8 = 1 To CInt(Me.UBound): var_9E = var_F8 'Integer
  loc_13064D3:   var_C4 = False
  loc_13064EC:   ).Visible = var_9E
  loc_1306513:   Me..FrameGrpItem.Unload )
  loc_1306521: Next var_F8 'Integer
  loc_1306537: For var_100 = 1 To CInt(Me.UBound): var_9E = var_100 'Integer
  loc_130653D:   var_C4 = False
  loc_1306556:   ).Visible = var_9E
  loc_130657D:   Me..FrameGrpItem.Unload )
  loc_130658B: Next var_100 'Integer
  loc_130659E: var_F4 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_13065A5: Proc_6_39_E7C810(var_114)
  loc_13065BC: If (var_114 > 0) Then
  loc_13065C5:   var_96 = (arg_18 + 1)
  loc_13065CA:   var_98 = 0
  loc_13065CF:   var_9A = 0
  loc_13065EC:   Proc_6_39_E7C810(var_114, CVar(Me.Recordset15.RecordCount), var_9C, 1)
  loc_13065FC:   For var_128 = var_98 To CInt(var_114): var_9A = var_128 'Integer
  loc_1306622:     Me..FrameGrpItem.Load )
  loc_1306641:     If ((((var_9C - 1) Mod arg_18) <> 0) Or (var_9C = 1)) Then
  loc_130664A:       var_B4 = CVar((var_9C - 1)) 'Integer
  loc_1306667:       var_D4 = CVar((var_9C - 1)) 'Integer
  loc_130667E:       var_148 = (var_D4 + ).height)
  loc_1306697:       ).top = var_9C
  loc_13066B0:       var_B4 = CVar((var_9C - 1)) 'Integer
  loc_13066C1:       var_114 = ).left
  loc_13066DC:       ).left = var_9C
  loc_13066E9:       var_C4 = True
  loc_1306701:       ).Visible = var_9C
  loc_130670B:       var_B4 = "Name"
  loc_1306730:       var_114 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_B4)), var_C4, var_114, var_B4, var_148, ).top)) 'String
  loc_1306748:       ).CAPTION = var_9C
  loc_130675B:       var_B4 = "Code"
  loc_1306798:       ).Tag = var_9C
  loc_13067D0:       var_180 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PicPath")), CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PicPath")), var_114, "PicPath", var_9C)), var_98)
  loc_13067E1:       If (var_180 <> vbNullString) Then
  loc_130681B:         Call 0.Method_Proc_258_134_1306B944 (CStr(Me.Recordset15.Fields.Item("PicPath").Value), var_182)
  loc_1306830:         If var_182 Then
  loc_1306855:           var_FC = Me.Recordset15.Fields
  loc_1306865:           var_F4 = CVar(var_FC.Item("PicPath")) 'Address
  loc_1306878:           Me.Global.LoadPicture CVar(Proc_6_38_E68A98(var_F4, var_C4, var_D4, var_E4)), var_158, var_188, var_96, var_F4
  loc_1306880:           var_124 = CVar(var_188) 'Address
  loc_1306899:           ).Picture = var_9C
  loc_13068AE:         Else
  loc_13068CC:           Me.Global.LoadPicture var_B4, var_C4, var_D4, var_E4, var_158
  loc_13068D4:           var_F4 = CVar(var_FC) 'Address
  loc_13068ED:           ).Picture = var_9C
  loc_13068F8:         End If
  loc_13068F8:         GoTo loc_13068FB
  loc_13068FB:         ' Referenced from: 13068F8
  loc_13068FB:       End If
  loc_1306906:       If (var_9C = (arg_18 * arg_10)) Then
  loc_130691B:         var_94 = CVar(Me.Recordset15.AbsolutePosition) 'Variant
  loc_130691F:         Exit For
  loc_1306922:       End If
  loc_1306925:     Else
  loc_1306930:       If ((var_9C Mod var_96) = var_98) Then
  loc_130693A:         var_B4 = CVar((var_9C - arg_18)) 'Integer
  loc_130694B:         var_124 = ).left
  loc_1306958:         var_D4 = CVar((var_9C - arg_18)) 'Integer
  loc_130696F:         var_148 = (var_D4 + ).width)
  loc_1306988:         ).left = var_9C
  loc_13069A2:         var_B4 = CVar((var_9C - arg_18)) 'Integer
  loc_13069B3:         var_114 = ).top
  loc_13069CE:         ).top = var_9C
  loc_13069F3:         ).Visible = var_9C
  loc_13069FD:         var_B4 = "Name"
  loc_1306A22:         var_114 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_B4)), True, var_114, var_B4, var_148)) 'String
  loc_1306A3A:         ).CAPTION = var_9C
  loc_1306A4D:         var_B4 = "Code"
  loc_1306A72:         var_114 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_B4)), var_114, var_124, var_B4)) 'String
  loc_1306A8A:         ).Tag = var_9C
  loc_1306AA0:         var_9A = (var_9A + 1)
  loc_1306AAA:         var_98 = (var_96 - var_9A)
  loc_1306AAD:       End If
  loc_1306AAD:     End If
  loc_1306AB0:     Me.MoveNext
  loc_1306AC9:     If (Me.AbsolutePosition = -3) Then
  loc_1306ACC:       GoTo loc_1306AD7
  loc_1306ACF:     End If
  loc_1306AD2:   Next var_128 'Integer
  loc_1306AD7:   ' Referenced from: 1306ACC
  loc_1306AD7:   ' Referenced from: 130691F
  loc_1306AD7: End If
  loc_1306AFE: Proc_6_39_E7C810(var_114)
  loc_1306B1D: Call Proc_258_143_E61DB8((), CInt(Me.Recordset15.AbsolutePosition), CInt(var_114))
  loc_1306B52: var_F4 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_1306B59: Proc_6_39_E7C810(var_114)
  loc_1306B78: Call Proc_258_142_E54360(CVar(Me.Recordset15.RecordCount)(var_124), CInt(Me.Recordset15.AbsolutePosition), CInt(var_114))
  loc_1306B8D: Proc_258_134_1306B94 = var_124
End Sub

Public Sub Proc_258_135_13FFA64
  'Data Table: 5B2100
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_C0 As String
  Dim var_CC As String
  Dim var_E8 As Variant
  Dim Me As Recordset15
  Dim var_108 As Variant
  Dim var_138 As Variant
  Dim var_128 As Variant
  Dim var_C4 As TextBox
  Dim Proc_258_135_13FFA642 As Variant
  loc_13FF03A: Set var_9C = ()
  loc_13FF040: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_44
  loc_13FF04B: Call Proc_258_136_143E164()
  loc_13FF05D: Set var_9C = (2)
  loc_13FF075: Set global_132 = New 
  loc_13FF08A: Set var_9C = var_C4(CInt(&HB))
  loc_13FF090: Call 0.Method_Proc_258_135_13FFA640 (var_C8)
  loc_13FF098: FrameGrpItem.DispID_4 = Me.TextBox.Text
  loc_13FF0BB: var_C0 = "SELECT  PackingOrderDetail.Docid,PackingOrderDetail.SNo,ItemMast.Name, ItemMast.Unit, ItemMast.DispCode, PackingOrderDetail.Qty, PackingOrderDetail.Rate, PackingOrderDetail.Amount, PackingOrder.Vno, " & "PackingOrder.CustName, Depart.Code, ItemCatMast.RoundOff, ItemCatMast.TaxStru,ItemCatMast.CatType, ItemMast.DiscApp, ItemMast.RateEdit, ItemMast.RateIncTax, "
  loc_13FF0C2: var_CC = var_C0 & "ItemMast.SChrgApp , ItemMast.Kitchen, ItemMast.Code as ItemCode, Depart.ShortName from (((ItemMast INNER JOIN ItemCatMast ON ItemMast.ItemCatCode = ItemCatMast.Code ) INNER JOIN PackingOrderDetail ON ItemMast.Code = PackingOrderDetail.ItemCode And ItemMast.RestCode=PackingOrderDetail.ItemRestCode) INNER JOIN PackingOrder  ON PackingOrderDetail.DocID = PackingOrder.DocID  ) INNER JOIN Depart ON ItemCatMast.RestCode = Depart.Code  where packingorderdetail.Vno="
  loc_13FF0EB: Me.Open CVar(var_CC & var_C8 & " And PackingOrder.RestCode='" & global_76 & "'"), CVar(MemVar_1F92044), 0
  loc_13FF11D: If (Me.EOF <> &HFF) Then
  loc_13FF137:   For var_F4 = 1 To CInt(Me.RecordCount): var_96 = var_F4 'Integer
  loc_13FF141:     Set var_F8 = 1(1)
  loc_13FF156:     var_AC = CVar((CLng(FrameGrpItem.DispID_4) + 1)) 'Long
  loc_13FF16A:     var_AC = CVar(CLng(var_96)) 'Long
  loc_13FF17C:     var_E8 = CVar(CStr(var_96)) 'String
  loc_13FF183:     LateIdCallSt
  loc_13FF1CA:     var_138 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")), CVar(CLng(1)), CVar(CLng(var_96)), var_F8, CVar(Me.Fields.Item("Code")))) 'String
  loc_13FF1D1:     LateIdCallSt
  loc_13FF21F:     var_138 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ShortName")), CVar(CLng(2)), CVar(CLng(var_96)), var_F8, var_138)) 'String
  loc_13FF226:     LateIdCallSt
  loc_13FF274:     var_138 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_96)), var_F8, var_138)) 'String
  loc_13FF27B:     LateIdCallSt
  loc_13FF2C9:     var_138 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")), CVar(CLng(4)), CVar(CLng(var_96)), var_F8, var_138)) 'String
  loc_13FF2D0:     LateIdCallSt
  loc_13FF31E:     var_138 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_96)), var_F8, var_138)) 'String
  loc_13FF325:     LateIdCallSt
  loc_13FF360:     Proc_6_39_E7C810(var_138, CVar(Me.Fields.Item("qty")), var_F8, var_138, CVar(CLng(0)))
  loc_13FF369:     var_108 = CVar(CLng(var_96)) 'Long
  loc_13FF371:     var_128 = CVar(CLng(7)) 'Long
  loc_13FF3A1:     LateIdCallSt
  loc_13FF3E2:     Proc_6_39_E7C810(var_138, CVar(Me.Fields.Item("Rate")), var_F8, CVar(CStr(Format(var_138, "0.000"))), 1, 1)
  loc_13FF3EB:     var_108 = CVar(CLng(var_96)) 'Long
  loc_13FF3F3:     var_128 = CVar(CLng(8)) 'Long
  loc_13FF423:     LateIdCallSt
  loc_13FF475:     Proc_6_39_E7C810(var_138, CVar(Me.Fields.Item("Rate")), CVar(CLng(9)), CVar(CLng(var_96)), var_F8, CVar(CStr(Format(var_138, "0.00"))), 1)
  loc_13FF485:     LateIdCallSt
  loc_13FF4D3:     Proc_6_39_E7C810(var_138, CVar(Me.Fields.Item("Amount")), CVar(CLng(&HA)), CVar(CLng(var_96)), var_F8, CVar(CStr(var_138)), 1)
  loc_13FF4E3:     LateIdCallSt
  loc_13FF533:     var_138 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemCode")), CVar(CLng(&HB)), CVar(CLng(var_96)), var_F8, CVar(CStr(var_138)), var_128)) 'String
  loc_13FF53A:     LateIdCallSt
  loc_13FF588:     var_138 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SNo")), CVar(CLng(&HC)), CVar(CLng(var_96)), var_F8, var_138)) 'String
  loc_13FF58F:     LateIdCallSt
  loc_13FF5DB:     Proc_6_39_E7C810(var_138, CVar(Me.Fields.Item("DocID")), CVar(CLng(&HD)), CVar(CLng(var_96)), var_F8, var_138)
  loc_13FF5EB:     LateIdCallSt
  loc_13FF63B:     var_138 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H13)), CVar(CLng(var_96)), var_F8, CVar(CStr(var_138)))) 'String
  loc_13FF642:     LateIdCallSt
  loc_13FF67F:     var_C4 = Me.Fields.Item("RoundOff")
  loc_13FF697:     LateIdCallSt
  loc_13FF6CA:     var_E8 = CVar(Proc_6_38_E68A98(global_188, CVar(CLng(&H15)), CVar(CLng(var_96)), var_F8, CVar(Proc_6_38_E68A98(CVar(var_C4), CVar(CLng(&H14)), CVar(CLng(var_96)), var_F8, var_138)))) 'String
  loc_13FF6D1:     LateIdCallSt
  loc_13FF704:     LateIdCallSt
  loc_13FF72E:     Set var_9C = var_C4(CInt(3))
  loc_13FF734:     Call 0.Method_Proc_258_135_13FFA640 (var_C0, CVar(CLng(&H17)), CVar(CLng(var_96)), var_F8, CVar(Proc_6_38_E68A98(global_192, CVar(CLng(&H16)), CVar(CLng(var_96)), var_F8, var_E8)))
  loc_13FF74C:     var_138 = CVar(Proc_6_38_E68A98(CVar(var_C0), var_128, var_C4.Tag)) 'String
  loc_13FF753:     LateIdCallSt
  loc_13FF7A5:     var_138 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(var_96)), var_F8)) 'String
  loc_13FF7AC:     LateIdCallSt
  loc_13FF7FA:     var_138 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_96)), var_F8)) 'String
  loc_13FF801:     LateIdCallSt
  loc_13FF84F:     var_138 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1A)), CVar(CLng(var_96)), var_F8, var_138)) 'String
  loc_13FF856:     LateIdCallSt
  loc_13FF8A4:     var_138 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateIncTax")), CVar(CLng(&H1C)), CVar(CLng(var_96)), var_F8, var_138)) 'String
  loc_13FF8AB:     LateIdCallSt
  loc_13FF8F7:     Proc_6_39_E7C810(var_138, CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(var_96)), var_F8)
  loc_13FF907:     LateIdCallSt
  loc_13FF957:     var_138 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("CatType")), CVar(CLng(&H1F)), CVar(CLng(var_96)), var_F8, CVar(CStr(var_138)))) 'String
  loc_13FF95E:     LateIdCallSt
  loc_13FF974:     var_AC = CVar(CLng(var_96)) 'Long
  loc_13FF97C:     var_108 = CVar(CLng(&H1E)) 'Long
  loc_13FF981:     var_128 = vbNullString
  loc_13FF98A:     LateIdCallSt
  loc_13FF998:     Me.MoveNext
  loc_13FF99F:     Set var_F8 = Nothing 
  loc_13FF9A6:   Next var_F4 'Integer
  loc_13FF9AF:   Set var_9C = ()
  loc_13FF9C4:   var_AC = CVar((CLng(FrameGrpItem.DispID_4) - 1)) 'Long
  loc_13FF9CD:   Set var_C4 = (var_AC)
  loc_13FF9E6:   Set var_9C = (FrameGrpItem.DispID_4)
  loc_13FF9FB:   var_AC = CVar((CLng(FrameGrpItem.DispID_4) - 1)) 'Long
  loc_13FFA0C:   Set var_C4 = var_AC(CVar(CLng(&HB)))
  loc_13FFA36:   If (CStr(FrameGrpItem.DispID_41) <> vbNullString) Then
  loc_13FFA49:     Proc_258_135_13FFA642 = (vbNullString).Name
  loc_13FFA54:   End If
  loc_13FFA59:   Call Proc_258_158_190485C(&H32)
  loc_13FFA5E: End If
  loc_13FFA5E: Proc_258_135_13FFA64 = Proc_258_135_13FFA642
End Sub

Public Sub Proc_258_136_143E164
  'Data Table: 5B2100
  Dim var_94 As Variant
  Dim var_A8 As Frame
  Dim var_AC As TextBox
  Dim var_B4 As Frame
  Dim var_B8 As TextBox
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_143D65E: (CVar(CDbl(&HF))).Left = 
  loc_143D679: (CVar(CDbl(1425))).Top = 
  loc_143D694: (CVar(CDbl(5950))).Height = 
  loc_143D6AF: (CVar(CDbl(7200))).Width = 
  loc_143D6CA: (CVar(CDbl(3000))).Left = 
  loc_143D6E5: (CVar(CDbl(1000))).Top = 
  loc_143D6FB: Set var_A8 = var_AC(CInt(3))
  loc_143D701: Call 0.Method_Proc_258_136_143E1640 (var_B0)
  loc_143D709:  = var_AC.Left
  loc_143D720: (CVar(var_B0)).Left = 
  loc_143D73C: Set var_B4 = var_B8(CInt(3))
  loc_143D742: Call 0.Method_Proc_258_136_143E1640 (var_BC)
  loc_143D74A:  = var_B8.Height
  loc_143D75D: Set var_A8 = var_AC(CInt(3))
  loc_143D763: Call 0.Method_Proc_258_136_143E1640 (var_B0)
  loc_143D76B:  = var_AC.Top
  loc_143D77B: var_94 = CVar(((var_B0 + var_BC) + CDbl(&H1E))) 'Single
  loc_143D78A: (CVar(var_B0)).Top = 
  loc_143D7AA: Set var_A8 = var_AC(CInt(&HD))
  loc_143D7B0: Call 0.Method_Proc_258_136_143E1640 (var_B0)
  loc_143D7B8:  = var_AC.Left
  loc_143D7CF: (CVar(var_B0)).Left = 
  loc_143D7EB: Set var_B4 = var_B8(CInt(&HD))
  loc_143D7F1: Call 0.Method_Proc_258_136_143E1640 (var_BC)
  loc_143D7F9:  = var_B8.Height
  loc_143D80C: Set var_A8 = var_AC(CInt(&HD))
  loc_143D812: Call 0.Method_Proc_258_136_143E1640 (var_B0)
  loc_143D81A:  = var_AC.Top
  loc_143D82A: var_94 = CVar(((var_B0 + var_BC) + CDbl(&H1E))) 'Single
  loc_143D839: (CVar(var_B0)).Top = 
  loc_143D85E: (CVar(CDbl(3000))).Left = 
  loc_143D879: (CVar(CDbl(1000))).Top = 
  loc_143D890: Me.FrameQty.Top = CDbl(7375)
  loc_143D8A7: Me.FrameQty.Left = CDbl(200)
  loc_143D8BE: Set var_C4 = (&H258)
  loc_143D8D5: global_152 = CStr(CLng(FrameQty.DispID_FFFFFE0B))
  loc_143D8DF: var_94 = &H1F
  loc_143D8F3: var_94 = CVar(CLng(0)) 'Long
  loc_143D8F8: var_E8 = &H13B
  loc_143D904: LateIdCallSt
  loc_143D90C: var_94 = 0
  loc_143D918: var_E8 = CVar(CLng(&HC)) 'Long
  loc_143D91D: var_108 = "KSNo"
  loc_143D926: LateIdCallSt
  loc_143D931: var_94 = CVar(CLng(&HC)) 'Long
  loc_143D936: var_E8 = 0
  loc_143D942: LateIdCallSt
  loc_143D94A: var_94 = 0
  loc_143D956: var_E8 = CVar(CLng(1)) 'Long
  loc_143D95B: var_108 = "Rest"
  loc_143D964: LateIdCallSt
  loc_143D96F: var_94 = CVar(CLng(1)) 'Long
  loc_143D97A: var_E8 = CVar(CInt(1)) 'Integer
  loc_143D981: LateIdCallSt
  loc_143D98C: var_94 = CVar(CLng(1)) 'Long
  loc_143D991: var_E8 = 0
  loc_143D99D: LateIdCallSt
  loc_143D9A5: var_94 = 0
  loc_143D9B1: var_E8 = CVar(CLng(2)) 'Long
  loc_143D9B6: var_108 = "Rest."
  loc_143D9BF: LateIdCallSt
  loc_143D9CA: var_94 = CVar(CLng(2)) 'Long
  loc_143D9D5: var_E8 = CVar(CInt(1)) 'Integer
  loc_143D9DC: LateIdCallSt
  loc_143D9E7: var_94 = CVar(CLng(2)) 'Long
  loc_143D9EC: var_E8 = 0
  loc_143D9F8: LateIdCallSt
  loc_143DA00: var_94 = 0
  loc_143DA0C: var_E8 = CVar(CLng(3)) 'Long
  loc_143DA11: var_108 = "Item Code"
  loc_143DA1A: LateIdCallSt
  loc_143DA25: var_94 = CVar(CLng(3)) 'Long
  loc_143DA30: var_E8 = CVar(CInt(1)) 'Integer
  loc_143DA37: LateIdCallSt
  loc_143DA42: var_94 = CVar(CLng(3)) 'Long
  loc_143DA47: var_E8 = 0
  loc_143DA53: LateIdCallSt
  loc_143DA5B: var_94 = 0
  loc_143DA67: var_E8 = CVar(CLng(4)) 'Long
  loc_143DA6C: var_108 = "Item Name"
  loc_143DA75: LateIdCallSt
  loc_143DA80: var_94 = CVar(CLng(4)) 'Long
  loc_143DA8B: var_E8 = CVar(CInt(1)) 'Integer
  loc_143DA92: LateIdCallSt
  loc_143DA9D: var_94 = CVar(CLng(4)) 'Long
  loc_143DAA2: var_E8 = &H960
  loc_143DAAE: LateIdCallSt
  loc_143DAB6: var_94 = 0
  loc_143DAC2: var_E8 = CVar(CLng(5)) 'Long
  loc_143DAC7: var_108 = "KOT No."
  loc_143DAD0: LateIdCallSt
  loc_143DADB: var_94 = CVar(CLng(5)) 'Long
  loc_143DAE6: var_E8 = CVar(CInt(7)) 'Integer
  loc_143DAED: LateIdCallSt
  loc_143DAF8: var_94 = CVar(CLng(5)) 'Long
  loc_143DB03: var_E8 = CVar(CInt(7)) 'Integer
  loc_143DB0A: LateIdCallSt
  loc_143DB15: var_94 = CVar(CLng(5)) 'Long
  loc_143DB1A: var_E8 = 0
  loc_143DB26: LateIdCallSt
  loc_143DB2E: var_94 = 0
  loc_143DB3A: var_E8 = CVar(CLng(6)) 'Long
  loc_143DB3F: var_108 = "Unit"
  loc_143DB48: LateIdCallSt
  loc_143DB53: var_94 = CVar(CLng(6)) 'Long
  loc_143DB5E: var_E8 = CVar(CInt(1)) 'Integer
  loc_143DB65: LateIdCallSt
  loc_143DB70: var_94 = CVar(CLng(6)) 'Long
  loc_143DB75: var_E8 = &H320
  loc_143DB81: LateIdCallSt
  loc_143DB89: var_94 = 0
  loc_143DB95: var_E8 = CVar(CLng(7)) 'Long
  loc_143DB9A: var_108 = "Qty"
  loc_143DBA3: LateIdCallSt
  loc_143DBAE: var_94 = CVar(CLng(7)) 'Long
  loc_143DBB9: var_E8 = CVar(CInt(7)) 'Integer
  loc_143DBC0: LateIdCallSt
  loc_143DBCB: var_94 = CVar(CLng(7)) 'Long
  loc_143DBD6: var_E8 = CVar(CInt(7)) 'Integer
  loc_143DBDD: LateIdCallSt
  loc_143DBE8: var_94 = CVar(CLng(7)) 'Long
  loc_143DBED: var_E8 = &H320
  loc_143DBF9: LateIdCallSt
  loc_143DC01: var_94 = 0
  loc_143DC0D: var_E8 = CVar(CLng(8)) 'Long
  loc_143DC12: var_108 = "Rate"
  loc_143DC1B: LateIdCallSt
  loc_143DC26: var_94 = CVar(CLng(8)) 'Long
  loc_143DC31: var_E8 = CVar(CInt(7)) 'Integer
  loc_143DC38: LateIdCallSt
  loc_143DC43: var_94 = CVar(CLng(8)) 'Long
  loc_143DC4E: var_E8 = CVar(CInt(7)) 'Integer
  loc_143DC55: LateIdCallSt
  loc_143DC60: var_94 = CVar(CLng(8)) 'Long
  loc_143DC65: var_E8 = &H320
  loc_143DC71: LateIdCallSt
  loc_143DC79: var_94 = 0
  loc_143DC85: var_E8 = CVar(CLng(9)) 'Long
  loc_143DC8A: var_108 = "Rate1"
  loc_143DC93: LateIdCallSt
  loc_143DC9E: var_94 = CVar(CLng(9)) 'Long
  loc_143DCA9: var_E8 = CVar(CInt(7)) 'Integer
  loc_143DCB0: LateIdCallSt
  loc_143DCBB: var_94 = CVar(CLng(9)) 'Long
  loc_143DCC6: var_E8 = CVar(CInt(7)) 'Integer
  loc_143DCCD: LateIdCallSt
  loc_143DCD8: var_94 = CVar(CLng(9)) 'Long
  loc_143DCDD: var_E8 = 0
  loc_143DCE9: LateIdCallSt
  loc_143DCF1: var_94 = 0
  loc_143DCFD: var_E8 = CVar(CLng(&HA)) 'Long
  loc_143DD02: var_108 = "Amount"
  loc_143DD0B: LateIdCallSt
  loc_143DD16: var_94 = CVar(CLng(&HA)) 'Long
  loc_143DD21: var_E8 = CVar(CInt(7)) 'Integer
  loc_143DD28: LateIdCallSt
  loc_143DD33: var_94 = CVar(CLng(&HA)) 'Long
  loc_143DD3E: var_E8 = CVar(CInt(7)) 'Integer
  loc_143DD45: LateIdCallSt
  loc_143DD50: var_94 = CVar(CLng(&HA)) 'Long
  loc_143DD55: var_E8 = &H3E8
  loc_143DD61: LateIdCallSt
  loc_143DD69: var_94 = 0
  loc_143DD75: var_E8 = CVar(CLng(&HF)) 'Long
  loc_143DD7A: var_108 = "Disc"
  loc_143DD83: LateIdCallSt
  loc_143DD8E: var_94 = CVar(CLng(&HF)) 'Long
  loc_143DD99: var_E8 = CVar(CInt(7)) 'Integer
  loc_143DDA0: LateIdCallSt
  loc_143DDAB: var_94 = CVar(CLng(&HF)) 'Long
  loc_143DDB6: var_E8 = CVar(CInt(7)) 'Integer
  loc_143DDBD: LateIdCallSt
  loc_143DDC8: var_94 = CVar(CLng(&HF)) 'Long
  loc_143DDCD: var_E8 = &H320
  loc_143DDD9: LateIdCallSt
  loc_143DDE4: var_94 = CVar(CLng(&HD)) 'Long
  loc_143DDE9: var_E8 = 0
  loc_143DDF5: LateIdCallSt
  loc_143DE00: var_94 = CVar(CLng(&HB)) 'Long
  loc_143DE05: var_E8 = 0
  loc_143DE11: LateIdCallSt
  loc_143DE1C: var_94 = CVar(CLng(&HE)) 'Long
  loc_143DE21: var_E8 = 0
  loc_143DE2D: LateIdCallSt
  loc_143DE38: var_94 = CVar(CLng(&H10)) 'Long
  loc_143DE3D: var_E8 = 0
  loc_143DE49: LateIdCallSt
  loc_143DE54: var_94 = CVar(CLng(&H11)) 'Long
  loc_143DE59: var_E8 = 0
  loc_143DE65: LateIdCallSt
  loc_143DE70: var_94 = CVar(CLng(&H12)) 'Long
  loc_143DE75: var_E8 = 0
  loc_143DE81: LateIdCallSt
  loc_143DE8C: var_94 = CVar(CLng(&H14)) 'Long
  loc_143DE91: var_E8 = 0
  loc_143DE9D: LateIdCallSt
  loc_143DEA8: var_94 = CVar(CLng(&H13)) 'Long
  loc_143DEAD: var_E8 = 0
  loc_143DEB9: LateIdCallSt
  loc_143DEC4: var_94 = CVar(CLng(&H18)) 'Long
  loc_143DEC9: var_E8 = 0
  loc_143DED5: LateIdCallSt
  loc_143DEE0: var_94 = CVar(CLng(&H19)) 'Long
  loc_143DEE5: var_E8 = 0
  loc_143DEF1: LateIdCallSt
  loc_143DEFC: var_94 = CVar(CLng(&H1A)) 'Long
  loc_143DF01: var_E8 = 0
  loc_143DF0D: LateIdCallSt
  loc_143DF15: var_94 = 0
  loc_143DF21: var_E8 = CVar(CLng(&HB)) 'Long
  loc_143DF26: var_108 = "Item Code"
  loc_143DF2F: LateIdCallSt
  loc_143DF37: var_94 = 0
  loc_143DF43: var_E8 = CVar(CLng(&HE)) 'Long
  loc_143DF48: var_108 = "Disc %"
  loc_143DF51: LateIdCallSt
  loc_143DF59: var_94 = 0
  loc_143DF65: var_E8 = CVar(CLng(&H10)) 'Long
  loc_143DF6A: var_108 = "Tax %"
  loc_143DF73: LateIdCallSt
  loc_143DF7B: var_94 = 0
  loc_143DF87: var_E8 = CVar(CLng(&H11)) 'Long
  loc_143DF8C: var_108 = "Tax Amt"
  loc_143DF95: LateIdCallSt
  loc_143DF9D: var_94 = 0
  loc_143DFA9: var_E8 = CVar(CLng(&H12)) 'Long
  loc_143DFAE: var_108 = "Total"
  loc_143DFB7: LateIdCallSt
  loc_143DFBF: var_94 = 0
  loc_143DFCB: var_E8 = CVar(CLng(&H14)) 'Long
  loc_143DFD0: var_108 = "R Off"
  loc_143DFD9: LateIdCallSt
  loc_143DFE1: var_94 = 0
  loc_143DFED: var_E8 = CVar(CLng(&H13)) 'Long
  loc_143DFF2: var_108 = "Disc Y/N"
  loc_143DFFB: LateIdCallSt
  loc_143E003: var_94 = 0
  loc_143E00F: var_E8 = CVar(CLng(&H18)) 'Long
  loc_143E014: var_108 = "Tax Cat Code"
  loc_143E01D: LateIdCallSt
  loc_143E028: var_94 = CVar(CLng(&H15)) 'Long
  loc_143E02D: var_E8 = 0
  loc_143E039: LateIdCallSt
  loc_143E044: var_94 = CVar(CLng(&H16)) 'Long
  loc_143E049: var_E8 = 0
  loc_143E055: LateIdCallSt
  loc_143E060: var_94 = CVar(CLng(&H17)) 'Long
  loc_143E065: var_E8 = 0
  loc_143E071: LateIdCallSt
  loc_143E07C: var_94 = CVar(CLng(&H1B)) 'Long
  loc_143E081: var_E8 = 0
  loc_143E08D: LateIdCallSt
  loc_143E098: var_94 = CVar(CLng(&H1C)) 'Long
  loc_143E09D: var_E8 = 0
  loc_143E0A9: LateIdCallSt
  loc_143E0B4: var_94 = CVar(CLng(&H1D)) 'Long
  loc_143E0B9: var_E8 = 0
  loc_143E0C5: LateIdCallSt
  loc_143E0D0: var_94 = CVar(CLng(&H1F)) 'Long
  loc_143E0D5: var_E8 = 0
  loc_143E0E1: LateIdCallSt
  loc_143E0EC: var_94 = CVar(CLng(&H1E)) 'Long
  loc_143E0FD: LateIdCallSt
  loc_143E10F: Set var_11C = 0(Nothing)
  loc_143E126: global_152 = CStr(CLng(FrameQty.DispID_FFFFFE0B))
  loc_143E133: var_94 = CVar(CLng(3)) 'Long
  loc_143E138: var_E8 = &H7D0
  loc_143E144: LateIdCallSt
  loc_143E14C: var_94 = 9
  loc_143E15F: Set var_11C = Nothing 
  loc_143E163: Exit Sub
End Sub

Public Sub Proc_258_137_F96530(arg_C, arg_10) 'F96530
  'Data Table: 5B2100
  Dim var_94 As TextBox
  Dim var_A0 As TextBox
  Dim var_A8 As TextBox
  Dim var_B8 As TextBox
  loc_F96416: Set var_90 = var_94(CInt(3))
  loc_F9641C: Call 0.Method_Proc_258_137_F965300 (var_98)
  loc_F96424:  = var_94.Tag
  loc_F96437: Set var_9C = var_A0(CInt(2))
  loc_F9643D: Call 0.Method_Proc_258_137_F965300 (var_CC)
  loc_F96445:  = var_A0.Text
  loc_F96458: Set var_A4 = var_A8(CInt(3))
  loc_F9645E: Call 0.Method_Proc_258_137_F965300 (var_D8)
  loc_F96466:  = var_A8.Text
  loc_F96472: Set var_AC = (var_AE)
  loc_F96478: Call 0.Method_Proc_258_137_F965308 ()
  loc_F9648A: Set var_B4 = var_B8(var_AE)
  loc_F96490: Call 0.Method_Proc_258_137_F965300 (var_BC)
  loc_F96498:  = var_B8.Text
  loc_F96506: Call OutLetPaymentAdjustment(1, 5, global_184, var_98, var_CC, 0, var_D8, global_188, global_192, Val(var_BC), global_76, "Auto", arg_C, arg_10)
  loc_F9652F: Exit Sub
End Sub

Public Sub Proc_258_138_114DA60
  'Data Table: 5B2100
  Dim var_D4 As Variant
  Dim var_98 As String
  Dim unk_5B213D As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Variant
  Dim var_D8 As Field20
  Dim var_108 As Variant
  Dim var_BC As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_8C As Recordset15
  Dim var_E8 As Variant
  Dim var_148 As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_1FC As Variant
  Dim var_1EC As Variant
  loc_114D715: var_D4 = 0
  loc_114D745: unk_5B213D.Execute "SELECT ShortName FROM Depart WHERE Code='" & global_76 & "'", var_BC, -1
  loc_114D74D: var_C0 = var_C0.Fields
  loc_114D755: var_D4 = var_C4.Item(var_C4)
  loc_114D75D: var_D8 = var_D8.Value
  loc_114D765: var_108 = (var_E8 + var_E8)
  loc_114D76A: var_94 = CStr(var_108)
  loc_114D79A: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_114D7CB: Set var_C0 = var_C4(CInt(0))
  loc_114D7D1: Call 0.Method_Proc_258_138_114DA600 (CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_94 & "' And VP.Date_From<="), var_148, -1)
  loc_114D7E0: Proc_6_7_F25D88(var_E8, CVar(var_C4))
  loc_114D7FF: unk_5B213D.Execute CStr(var_D8 & var_E8 & " Order By VP.Date_From DESC"), "B", 
  loc_114D80A: Set var_8C = var_D8
  loc_114D846: If (var_8C.RecordCount > 0) Then
  loc_114D885:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_114D8A2:     var_C4 = var_8C.Fields.Item("Prefix")
  loc_114D8B9:     global_164 = CStr(var_C4.Value)
  loc_114D8FE:     var_124 = "UPDATE Voucher_Prefix SET start_srl_no=" & arg_10 & " WHERE (SITE_CODE='" & CVar(MemVar_1F92070) & "' AND LOGSITE_CODE='" 
  loc_114D933:     Set var_C0 = var_C4(CInt(0))
  loc_114D939:     Call 0.Method_Proc_258_138_114DA600 (var_124 & CVar(MemVar_1F92078) & "') and V_Type='" & CVar(var_94) & "' AND ", var_23C)
  loc_114D948:     Proc_6_7_F25D88(var_1EC, CVar(var_C4))
  loc_114D950:     var_1FC = -1 & var_1EC 
  loc_114D967:     unk_5B213D.Execute CStr(var_1FC & " BETWEEN Date_From AND Date_To"), var_D8, 
  loc_114D993:   End If
  loc_114D993: End If
  loc_114D9BD: var_BC = Space((5 - Len(var_94)))
  loc_114D9C5: var_108 = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & var_94) + "UPDATE Voucher_Prefix SET start_srl_no=" & arg_10)
  loc_114D9D9: var_124 = Space((5 - Len(global_164)))
  loc_114D9E1: var_134 = ("UPDATE Voucher_Prefix SET start_srl_no=" & arg_10 & " WHERE (SITE_CODE='" & CVar(MemVar_1F92070) + var_124)
  loc_114D9EE: var_148 = (var_124 & CVar(MemVar_1F92078) + CVar(global_164))
  loc_114DA07: var_1AC = Space((8 - Len(CStr(arg_10))))
  loc_114DA0F: var_1CC = (var_124 & CVar(MemVar_1F92078) & "') and V_Type='" + var_124 & CVar(MemVar_1F92078) & "') and V_Type='" & CVar(var_94))
  loc_114DA1E: var_1EC = (var_124 & CVar(MemVar_1F92078) & "') and V_Type='" & CVar(var_94) & "' AND " + CVar(CStr(arg_10)))
  loc_114DA4D: var_88 = CStr(CVar(MemVar_1F9206C) & var_1EC)
  loc_114DA55: Set var_8C = Nothing
  loc_114DA58: Proc_258_138_114DA60 = 
End Sub

Public Sub Proc_258_139_1B81B90
  'Data Table: 5B2100
  Dim var_17C As Variant
  Dim var_1BC As Variant
  Dim var_1AC As Variant
  Dim var_1FC As Variant
  Dim var_19C As Variant
  Dim var_164 As String
  Dim unk_5B213D As Connection15
  Dim var_88 As Variant
  Dim var_158 As Variant
  Dim var_15C As Variant
  Dim var_208 As Variant
  Dim var_214 As Double
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_25C As Variant
  Dim var_18C As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_22C As Variant
  Dim var_23C As Variant
  Dim var_20C As String
  Dim var_160 As Variant
  Dim var_204 As Variant
  Dim var_B4 As Double
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_C4 As Variant
  Dim var_DC As Variant
  Dim var_E4 As Variant
  Dim var_FC As Variant
  Dim var_D4 As Variant
  Dim var_EC As Double
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_10C As Variant
  Dim var_274 As String
  Dim Me As Recordset15
  Dim var_298 As String
  Dim var_29C As String
  Dim var_2A0 As String
  Dim var_11C As Recordset15
  Dim var_8A As Variant
  Dim var_2D4 As Variant
  Dim var_2FC As Variant
  Dim var_3E8 As TextBox
  Dim var_478 As Variant
  Dim var_4C0 As TextBox
  Dim var_A58 As Double
  Dim var_510 As TextBox
  Dim var_A60 As Double
  Dim var_7E0 As Variant
  Dim var_A68 As Double
  Dim var_90C As String
  Dim var_9A4 As TextBox
  Dim var_2C8 As String
  Dim var_24C As Variant
  Dim var_26C As Variant
  Dim var_2E8 As Variant
  Dim var_2F8 As Variant
  Dim var_310 As Variant
  Dim var_330 As Variant
  Dim var_340 As Variant
  Dim var_350 As Variant
  Dim var_360 As Variant
  Dim var_370 As Variant
  Dim var_3A0 As Variant
  Dim var_3C0 As Variant
  Dim var_3E0 As Variant
  Dim var_498 As Variant
  Dim var_4E4 As Variant
  Dim var_504 As Variant
  Dim var_534 As Variant
  Dim var_574 As Variant
  Dim var_594 As Variant
  Dim var_5B4 As Variant
  Dim var_5D4 As Variant
  Dim var_614 As Variant
  Dim var_634 As Variant
  Dim var_654 As Variant
  Dim var_674 As Variant
  Dim var_6D4 As Variant
  Dim var_714 As Variant
  Dim var_734 As Variant
  Dim var_774 As Variant
  Dim var_7B4 As Variant
  Dim var_804 As Variant
  Dim var_97C As Variant
  Dim var_A28 As Variant
  Dim var_A2C As String
  Dim var_2D0 As Variant
  Dim var_3E4 As Variant
  Dim var_3F0 As Variant
  Dim var_4BC As TextBox
  Dim var_50C As TextBox
  Dim var_7E4 As String
  Dim var_7DC As TextBox
  Dim var_488 As Variant
  Dim var_9A8 As String
  Dim var_2CC As TextBox
  Dim var_508 As TextBox
  Dim var_A80 As String
  Dim var_A84 As String
  Dim var_AA8 As String
  Dim var_109C As Double
  Dim var_10A4 As Double
  Dim var_B70 As String
  Dim var_10AC As Double
  Dim var_BD8 As String
  Dim var_10B4 As Double
  Dim var_10BC As Double
  Dim var_CA8 As String
  Dim var_10D4 As Double
  Dim var_2D8 As String
  Dim var_300 As String
  Dim var_4C4 As String
  Dim var_514 As String
  Dim var_A70 As String
  Dim var_A74 As String
  Dim var_8C4 As Variant
  Dim var_908 As Variant
  Dim var_D70 As Variant
  Dim var_FB4 As Variant
  Dim var_3EC As String
  Dim var_A7C As String
  Dim var_438 As Variant
  Dim var_7D8 As TextBox
  Dim var_BD4 As Label
  Dim var_152 As Integer
  Dim var_134 As Recordset15
  Dim var_138 As Recordset15
  Dim var_3F4 As TextBox
  Dim var_9A0 As TextBox
  Dim var_A50 As TextBox
  Dim var_C3C As Fields15
  Dim var_CA4 As Field20
  Dim var_A78 As String
  loc_1B7CC34: On Error Goto loc_1B81B75
  loc_1B7CC42: Set var_158 = var_15C(CInt(1))
  loc_1B7CC48: Call 0.Method_Proc_258_139_1B81B900 ()
  loc_1B7CC50: var_164 = "Voucher Date"
  loc_1B7CC71: If (Proc_6_27_EA565C(var_15C) = 0) Then
  loc_1B7CC74:   Exit Sub
  loc_1B7CC75: End If
  loc_1B7CC7C: Set var_158 = var_164(var_166)
  loc_1B7CC82: Call 0.Method_Proc_258_139_1B81B908 ()
  loc_1B7CC95: Call TxtGt_Validate((var_166 + 1))
  loc_1B7CCA8: Set var_158 = var_15C(CInt(0))
  loc_1B7CCAE: Call 0.Method_Proc_258_139_1B81B900 (0)
  loc_1B7CCB6: var_164 = "Voucher No"
  loc_1B7CCD7: If (Proc_6_27_EA565C(var_15C) = 0) Then
  loc_1B7CCDA:   Exit Sub
  loc_1B7CCDB: End If
  loc_1B7CCE6: Set var_158 = var_15C(CInt(5))
  loc_1B7CCEC: Call 0.Method_Proc_258_139_1B81B900 (var_164)
  loc_1B7CCF4: var_164 = "CashRegData Time"
  loc_1B7CD15: If (Proc_6_27_EA565C(var_15C) = 0) Then
  loc_1B7CD18:   Exit Sub
  loc_1B7CD19: End If
  loc_1B7CD24: If (global_76 = vbNullString) Then
  loc_1B7CD40:   MsgBox("Open RestaurantChange Form ", 0, var_1AC, var_1CC, var_1EC)
  loc_1B7CD50:   Exit Sub
  loc_1B7CD51: End If
  loc_1B7CD66: Set var_158 = 1(CVar(CLng(4)))
  loc_1B7CD6C: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_164)
  loc_1B7CD77: var_1AC = CVar(CStr()) 'String
  loc_1B7CD7D: var_1CC = Trim(var_1AC)
  loc_1B7CD99: If (var_1CC = vbNullString) Then
  loc_1B7CDAF:   var_18C = "No Item On First Row.."
  loc_1B7CDB5:   MsgBox(var_18C, 0, var_1AC, var_1CC, var_1EC)
  loc_1B7CDD2:   Set var_158 = (1)
  loc_1B7CDD8:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_1B7CDE4:   Set var_158 = ()
  loc_1B7CDEA:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001()
  loc_1B7CDF5:   Exit Sub
  loc_1B7CDF6: End If
  loc_1B7CE01: If (global_304 = "Room Service") Then
  loc_1B7CE21:   Proc_6_17_EAA2B0(var_18C, MemVar_1F92078, "Select RoomPayType From enviro WHERE LOGSITE_CODE=")
  loc_1B7CE37:   unk_5B213D.Execute CStr(var_1CC & var_18C), -1, var_158
  loc_1B7CE42:   Set var_88 = var_158
  loc_1B7CE68:   If (var_88.RecordCount > 0) Then
  loc_1B7CE7D:     var_158 = var_88.Fields
  loc_1B7CEAF:     If (Proc_6_38_E68A98(var_158.Item(0).Value) = vbNullString) Then
  loc_1B7CECD:       var_18C = "Please define Room Payment Type From Enviro"
  loc_1B7CED3:       MsgBox(var_18C, &H40, "Aatithya", var_1CC, var_1EC)
  loc_1B7CEE3:       Exit Sub
  loc_1B7CEE4:     End If
  loc_1B7CEE4:   End If
  loc_1B7CEE7: Else
  loc_1B7CF04:   Proc_6_17_EAA2B0(var_18C, MemVar_1F92078, "Select CashPayType From enviro WHERE LOGSITE_CODE=")
  loc_1B7CF10:   var_164 = CStr(var_1CC & var_18C)
  loc_1B7CF1A:   unk_5B213D.Execute var_164, -1, var_158
  loc_1B7CF25:   Set var_88 = var_158
  loc_1B7CF4B:   If (var_88.RecordCount > 0) Then
  loc_1B7CF68:     var_15C = var_88.Fields.Item(0)
  loc_1B7CF7D:     var_130 = Proc_6_38_E68A98(var_15C.Value)
  loc_1B7CF92:     If (var_130 = vbNullString) Then
  loc_1B7CFB6:       MsgBox("Please define Cash Payment Type From Enviro", &H40, "Aatithya", var_1CC, var_1EC)
  loc_1B7CFC6:       Exit Sub
  loc_1B7CFC7:     End If
  loc_1B7CFC7:   End If
  loc_1B7CFC7: End If
  loc_1B7CFD5: Set var_158 = var_15C(CInt(6))
  loc_1B7CFDB: Call 0.Method_Proc_258_139_1B81B900 (var_164)
  loc_1B7CFE3:  = var_15C.Text
  loc_1B7CFFF: If (CDbl(Val(var_164)) <> CDbl(0)) Then
  loc_1B7D009:   Set var_160 = (var_166)
  loc_1B7D00F:   Call 0.Method_Proc_258_139_1B81B908 ()
  loc_1B7D021:   Set var_204 = var_208(var_166)
  loc_1B7D027:   Call 0.Method_Proc_258_139_1B81B900 (var_20C)
  loc_1B7D02F:    = var_208.Text
  loc_1B7D03C:   var_214 = Val(var_20C)
  loc_1B7D04D:   Set var_158 = var_15C(CInt(6))
  loc_1B7D053:   Call 0.Method_Proc_258_139_1B81B900 (var_164)
  loc_1B7D082:   If (CDbl(Val(var_164)) < CDbl(var_15C.Text)) Then
  loc_1B7D0A6:     MsgBox("Please fully adjust the Bill", &H10, "Check Balance", var_1CC, var_1EC)
  loc_1B7D0C1:     Set var_158 = var_15C(CInt(6))
  loc_1B7D0C7:     Call 0.Method_Proc_258_139_1B81B900 ()
  loc_1B7D0CF:     var_15C.SetFocus
  loc_1B7D0DB:     Exit Sub
  loc_1B7D0DC:   End If
  loc_1B7D0DC: End If
  loc_1B7D0E5: Set var_158 = 1(var_92)
  loc_1B7D0EB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1B7D101: For var_218 =  To CInt((CLng() - 1)):  = var_218 'Integer
  loc_1B7D11C:   Set var_158 = CVar(CLng(var_92))(CVar(CLng(&H11)))
  loc_1B7D122:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7D143:   If (CDbl(Val(CStr())) > CDbl(0)) Then
  loc_1B7D15B:     Set var_158 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1B7D161:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7D174:     var_214 = Val(CStr())
  loc_1B7D17E:     var_A4 = (var_A4 + var_214)
  loc_1B7D18D:   Else
  loc_1B7D1A2:     Set var_158 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1B7D1A8:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A4)
  loc_1B7D1B3:     var_164 = CStr(var_214)
  loc_1B7D1C5:     var_AC = (var_AC + Val(var_164))
  loc_1B7D1D1:   End If
  loc_1B7D1D4: Next var_218 'Integer
  loc_1B7D1E5: Set var_158 = var_92(var_166)
  loc_1B7D1EB: Call 0.Method_Proc_258_139_1B81B908 (1)
  loc_1B7D1F6: For var_21C =  To var_166:  = var_21C 'Integer
  loc_1B7D22A:   Set var_158 = var_15C(var_92)
  loc_1B7D230:   Call 0.Method_Proc_258_139_1B81B900 (var_164, "Select IsNull(Max(Nature),'') from SundryType Where SundryCode='", var_24C, -1, var_160)
  loc_1B7D238:   var_204 = var_15C.Tag
  loc_1B7D240:   var_18C = CVar(var_164) 'String
  loc_1B7D246:   var_1AC = Trim(var_18C)
  loc_1B7D24E:   var_1CC = 0 & var_1AC 
  loc_1B7D27B:   unk_5B213D.Execute CStr(var_1CC & "' And V_Type='" & CVar(global_184) & "'"), var_208, var_26C
  loc_1B7D283:    = var_160.Fields
  loc_1B7D28B:    = var_204.Item()
  loc_1B7D293:    = var_208.Value
  loc_1B7D2C9:   var_270 = Proc_6_38_E68A98(var_26C)
  loc_1B7D2D4:   If (var_270 = "Addition") Then
  loc_1B7D2E4:     Set var_158 = var_15C(var_92)
  loc_1B7D2EA:     Call 0.Method_Proc_258_139_1B81B900 (var_164)
  loc_1B7D2F2:      = var_15C.Text
  loc_1B7D309:     var_B4 = (var_B4 + Val(var_164))
  loc_1B7D323:     Set var_158 = var_15C(var_92)
  loc_1B7D329:     Call 0.Method_Proc_258_139_1B81B900 (var_164, var_B4)
  loc_1B7D331:     var_214 = var_15C.Text
  loc_1B7D348:     var_CC = (var_CC + Val(var_164))
  loc_1B7D358:   Else
  loc_1B7D360:     If (var_270 = "Deduction") Then
  loc_1B7D370:       Set var_158 = var_15C(var_92)
  loc_1B7D376:       Call 0.Method_Proc_258_139_1B81B900 (var_164, var_CC)
  loc_1B7D37E:       var_214 = var_15C.Text
  loc_1B7D395:       var_BC = (var_BC + Val(var_164))
  loc_1B7D3AF:       Set var_158 = var_15C(var_92)
  loc_1B7D3B5:       Call 0.Method_Proc_258_139_1B81B900 (var_164, var_BC)
  loc_1B7D3BD:       var_214 = var_15C.Text
  loc_1B7D3D4:       var_C4 = (var_C4 + Val(var_164))
  loc_1B7D3E4:     Else
  loc_1B7D3EC:       If (var_270 = "Discount") Then
  loc_1B7D3FC:         Set var_158 = var_15C(var_92)
  loc_1B7D402:         Call 0.Method_Proc_258_139_1B81B900 (var_164, var_C4)
  loc_1B7D40A:         var_214 = var_15C.Text
  loc_1B7D421:         var_DC = (var_DC + Val(var_164))
  loc_1B7D43B:         Set var_158 = var_15C(var_92)
  loc_1B7D441:         Call 0.Method_Proc_258_139_1B81B900 (var_164, var_DC)
  loc_1B7D449:         var_214 = var_15C.Text
  loc_1B7D460:         var_E4 = (var_E4 + Val(var_164))
  loc_1B7D470:       Else
  loc_1B7D478:         If (var_270 = "Luxury Tax") Then
  loc_1B7D488:           Set var_158 = var_15C(var_92)
  loc_1B7D48E:           Call 0.Method_Proc_258_139_1B81B900 (var_164, var_E4)
  loc_1B7D496:           var_214 = var_15C.Text
  loc_1B7D4AD:           var_FC = (var_FC + Val(var_164))
  loc_1B7D4C7:           Set var_158 = var_15C(var_92)
  loc_1B7D4CD:           Call 0.Method_Proc_258_139_1B81B900 (var_164, var_FC)
  loc_1B7D4D5:           var_214 = var_15C.Text
  loc_1B7D4EC:           var_D4 = (var_D4 + Val(var_164))
  loc_1B7D4FC:         Else
  loc_1B7D504:           If (var_270 = "Round Off") Then
  loc_1B7D514:             Set var_158 = var_15C(var_92)
  loc_1B7D51A:             Call 0.Method_Proc_258_139_1B81B900 (var_164, var_D4)
  loc_1B7D522:             var_214 = var_15C.Text
  loc_1B7D539:             var_EC = (var_EC + Val(var_164))
  loc_1B7D553:             Set var_158 = var_15C(var_92)
  loc_1B7D559:             Call 0.Method_Proc_258_139_1B81B900 (var_164, var_EC)
  loc_1B7D561:             var_214 = var_15C.Text
  loc_1B7D578:             var_F4 = (var_F4 + Val(var_164))
  loc_1B7D588:           Else
  loc_1B7D590:             If (var_270 = "Sale Tax") Then
  loc_1B7D5A0:               Set var_158 = var_15C(var_92)
  loc_1B7D5A6:               Call 0.Method_Proc_258_139_1B81B900 (var_164, var_F4)
  loc_1B7D5AE:               var_214 = var_15C.Text
  loc_1B7D5C5:               var_FC = (var_FC + Val(var_164))
  loc_1B7D5DF:               Set var_158 = var_15C(var_92)
  loc_1B7D5E5:               Call 0.Method_Proc_258_139_1B81B900 (var_164, var_FC)
  loc_1B7D5ED:               var_214 = var_15C.Text
  loc_1B7D604:               var_D4 = (var_D4 + Val(var_164))
  loc_1B7D614:             Else
  loc_1B7D61C:               If (var_270 = "Service Charge") Then
  loc_1B7D62C:                 Set var_158 = var_15C(var_92)
  loc_1B7D632:                 Call 0.Method_Proc_258_139_1B81B900 (var_164, var_D4)
  loc_1B7D63A:                 var_214 = var_15C.Text
  loc_1B7D651:                 var_104 = (var_104 + Val(var_164))
  loc_1B7D66B:                 Set var_158 = var_15C(var_92)
  loc_1B7D671:                 Call 0.Method_Proc_258_139_1B81B900 (var_164, var_104)
  loc_1B7D679:                 var_214 = var_15C.Text
  loc_1B7D690:                 var_10C = (var_10C + Val(var_164))
  loc_1B7D6A0:               Else
  loc_1B7D6A8:                 If (var_270 = "Service Tax") Then
  loc_1B7D6B8:                   Set var_158 = var_15C(var_92)
  loc_1B7D6BE:                   Call 0.Method_Proc_258_139_1B81B900 (var_164, var_10C)
  loc_1B7D6C6:                   var_214 = var_15C.Text
  loc_1B7D6DD:                   var_FC = (var_FC + Val(var_164))
  loc_1B7D6F7:                   Set var_158 = var_15C(var_92)
  loc_1B7D6FD:                   Call 0.Method_Proc_258_139_1B81B900 (var_164, var_FC)
  loc_1B7D705:                   var_214 = var_15C.Text
  loc_1B7D71C:                   var_D4 = (var_D4 + Val(var_164))
  loc_1B7D729:                 End If
  loc_1B7D729:               End If
  loc_1B7D729:             End If
  loc_1B7D729:           End If
  loc_1B7D729:         End If
  loc_1B7D729:       End If
  loc_1B7D729:     End If
  loc_1B7D729:   End If
  loc_1B7D72C: Next var_21C 'Integer
  loc_1B7D734: var_9C = vbNullString
  loc_1B7D73A: Call Proc_258_146_112127C(var_166)
  loc_1B7D745: If (var_166 = 0) Then
  loc_1B7D748:   Exit Sub
  loc_1B7D749: End If
  loc_1B7D754: Set var_158 = var_15C(0)
  loc_1B7D75A: Call 0.Method_Proc_258_139_1B81B900 (0)
  loc_1B7D762: var_15C.Visible = 
  loc_1B7D76E: Call Proc_258_149_FD63A8()
  loc_1B7D781: Set var_158 = var_15C(CInt(1))
  loc_1B7D787: Call 0.Method_Proc_258_139_1B81B900 (var_164)
  loc_1B7D78F:  = var_15C.Text
  loc_1B7D7AF: If (Proc_6_91_EF2D40(CDate(var_164)) = 0) Then
  loc_1B7D7BD:   Set var_158 = var_15C(CInt(1))
  loc_1B7D7C3:   Call 0.Method_Proc_258_139_1B81B900 ()
  loc_1B7D7CB:   var_15C.SetFocus
  loc_1B7D7D7:   Exit Sub
  loc_1B7D7D8: End If
  loc_1B7D7DC: Set var_158 = Me.TopCtrl1
  loc_1B7D7E2: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1B7D7F6: Set var_15C = Me.TopCtrl1
  loc_1B7D7FC: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005((CStr() = "Add"))
  loc_1B7D822: If ( Or (CStr() = "Edit")) Then
  loc_1B7D82B:   var_19C = 0
  loc_1B7D848:   var_164 = "Select NCUR from enviro where logsite_code='" & MemVar_1F92078
  loc_1B7D858:   unk_5B213D.Execute var_164 & "'", var_18C, -1
  loc_1B7D860:   var_158 = var_158.Fields
  loc_1B7D868:   var_19C = var_15C.Item(var_15C)
  loc_1B7D870:   var_160 = var_160.Value
  loc_1B7D89A:   var_19C = 0
  loc_1B7D8C1:   Set var_158 = var_15C(CInt(2))
  loc_1B7D8C7:   Call 0.Method_Proc_258_139_1B81B900 (var_164, "Select Count(*) From Sale1 Where DocID='", var_18C, -1, var_160, var_204)
  loc_1B7D8CF:   var_19C = var_15C.Text
  loc_1B7D8E8:   unk_5B213D.Execute var_208 & var_164 & "'", var_1AC, CDate(var_1AC)
  loc_1B7D8F8:    = var_204.Item()
  loc_1B7D900:    = var_208.Value
  loc_1B7D92D:   If (var_160.Fields > 0) Then
  loc_1B7D936:     Call Proc_258_151_10E8580(MemVar_1F92044)
  loc_1B7D949:     Set var_158 = var_15C(CInt(2))
  loc_1B7D94F:     Call 0.Method_Proc_258_139_1B81B900 (var_164)
  loc_1B7D957:     var_15C.Text = var_164
  loc_1B7D966:     Exit Sub
  loc_1B7D967:   End If
  loc_1B7D96A: Else
  loc_1B7D98F:   var_18C = Me.Fields.Item("DocID").Value
  loc_1B7D99E:   global_156 = CStr(var_18C)
  loc_1B7D9AF: End If
  loc_1B7D9C4: Set var_158 = 1(CVar(CLng(&HD)))
  loc_1B7D9CA: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7D9EB: Set var_15C = 1(CVar(CLng(&HC)))
  loc_1B7D9F1: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7DA04: var_214 = Val(CStr())
  loc_1B7DA26: var_298 = "Select Waiter From CashRegData where DocID='" & CStr(var_18C) & "' And SNO ="
  loc_1B7DA3B: unk_5B213D.Execute var_298 & CStr(var_214), var_1CC, -1
  loc_1B7DA46: Set var_88 = var_160
  loc_1B7DA7E: If (var_88.RecordCount > 0) Then
  loc_1B7DA93:   var_158 = var_88.Fields
  loc_1B7DAA3:   var_18C = var_158.Item(0).Value
  loc_1B7DAB2:   global_292 = CStr(var_18C)
  loc_1B7DAC3: End If
  loc_1B7DAC9: global_180 = vbNullString
  loc_1B7DAD3: Call Proc_258_155_EA89BC(var_11C, var_158)
  loc_1B7DADB: Set var_11C = var_158
  loc_1B7DAE7: Set var_158 = 1(var_92)
  loc_1B7DAED: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_160)
  loc_1B7DB03: For var_2B4 =  To CInt((CLng(var_214) - 1)):  = var_2B4 'Integer
  loc_1B7DB1E:   Set var_158 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1B7DB24:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7DB3D:   var_1FC = vbNullString
  loc_1B7DB5C:   Set var_15C = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1B7DB62:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(CVar(CStr())) <> var_1FC))
  loc_1B7DB9B:   If CBool( And (CDbl(Val(CStr())) <> CDbl(0))) Then
  loc_1B7DBB2:     If (var_11C.RecordCount > 0) Then
  loc_1B7DBB8:       var_11C.MoveFirst
  loc_1B7DBC1:       var_17C = CVar(CLng(var_92)) 'Long
  loc_1B7DBD2:       Set var_158 = var_17C(CVar(CLng(&HD)))
  loc_1B7DBD8:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7DC32:       var_11C.Find "V_NO=" & CStr(Val(CStr(Trim(Right(CVar(CStr(var_18C)), 8))))), 0, 1
  loc_1B7DC5C:       If var_11C.EOF Then
  loc_1B7DC6A:         var_11C.AddNew var_17C, var_19C
  loc_1B7DC73:         var_17C = CVar(CLng(var_92)) 'Long
  loc_1B7DC84:         Set var_158 = var_17C(CVar(CLng(&HD)))
  loc_1B7DC8A:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1FC)
  loc_1B7DCC1:         var_25C = CVar(Val(CStr(Trim(Right(CVar(CStr(var_18C)), 8))))) 'Double
  loc_1B7DCCF:         var_11C.Collect = "V_NO"
  loc_1B7DCF0:         var_11C.Update var_17C, var_19C
  loc_1B7DCF5:       End If
  loc_1B7DCF8:     Else
  loc_1B7DD03:       var_11C.AddNew var_17C, var_19C
  loc_1B7DD0C:       var_17C = CVar(CLng(var_92)) 'Long
  loc_1B7DD1D:       Set var_158 = var_17C(CVar(CLng(&HD)))
  loc_1B7DD23:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_25C)
  loc_1B7DD5A:       var_25C = CVar(Val(CStr(Trim(Right(CVar(CStr(var_18C)), 8))))) 'Double
  loc_1B7DD68:       var_11C.Collect = "V_NO"
  loc_1B7DD89:       var_11C.Update var_17C, var_19C
  loc_1B7DD8E:     End If
  loc_1B7DD8E:   End If
  loc_1B7DD91: Next var_2B4 'Integer
  loc_1B7DD9C: var_200 = var_11C.RecordCount
  loc_1B7DDAA: If (var_200 > 0) Then
  loc_1B7DDB3:   var_11C.Sort = "V_NO"
  loc_1B7DDBB:   var_11C.MoveFirst
  loc_1B7DDC0:   ' Referenced from: 1B7DEB2
  loc_1B7DDC6:   var_166 = var_11C.EOF
  loc_1B7DDCF:   If Not(var_166) Then
  loc_1B7DDDD:     If (global_180 <> vbNullString) Then
  loc_1B7DE32:       global_180 = CStr(Trim(CVar(global_180 & "," & CStr(var_11C.Fields.Item("V_NO").Value))))
  loc_1B7DE52:     Else
  loc_1B7DE6C:       var_15C = var_11C.Fields.Item("V_NO")
  loc_1B7DE74:       var_18C = var_15C.Value
  loc_1B7DE7E:       var_1AC = CVar(CStr(var_18C)) 'String
  loc_1B7DE8D:       var_164 = CStr(Trim(var_1AC))
  loc_1B7DE93:       global_180 = var_164
  loc_1B7DEAA:     End If
  loc_1B7DEAD:     var_11C.MoveNext
  loc_1B7DEB2:     GoTo loc_1B7DDC0
  loc_1B7DEB5:   End If
  loc_1B7DEBE:   global_180 = global_180
  loc_1B7DEC2: End If
  loc_1B7DEC4: var_8A = &HFF
  loc_1B7DED0: unk_5B213D.BeginTrans var_200
  loc_1B7DEF3: Set var_158 = var_15C(CInt(2))
  loc_1B7DEF9: Call 0.Method_Proc_258_139_1B81B900 (var_164, "Delete From Stock Where DocID='", var_18C)
  loc_1B7DF01: -1 = var_15C.Text
  loc_1B7DF1A: unk_5B213D.Execute var_160 & var_164 & "'", var_8A, 
  loc_1B7DF52: Set var_158 = var_15C(CInt(2))
  loc_1B7DF58: Call 0.Method_Proc_258_139_1B81B900 (var_164, "Delete From Sale1 Where DocID='", var_18C)
  loc_1B7DF60: -1 = var_15C.Text
  loc_1B7DF79: unk_5B213D.Execute var_160 & var_164 & "'", , 
  loc_1B7DFB1: Set var_158 = var_15C(CInt(2))
  loc_1B7DFB7: Call 0.Method_Proc_258_139_1B81B900 (var_164, "Delete From Sale2 Where DocID='", var_18C)
  loc_1B7DFBF: -1 = var_15C.Text
  loc_1B7DFD8: unk_5B213D.Execute var_160 & var_164 & "'", , 
  loc_1B7E010: Set var_158 = var_15C(CInt(2))
  loc_1B7E016: Call 0.Method_Proc_258_139_1B81B900 (var_164, "Delete From SunTran Where DocID='", var_18C)
  loc_1B7E01E: -1 = var_15C.Text
  loc_1B7E037: unk_5B213D.Execute var_160 & var_164 & "'", , 
  loc_1B7E05C: If (global_304 = "Room Service") Then
  loc_1B7E06D:   Set var_158 = var_15C(CInt(2))
  loc_1B7E073:   Call 0.Method_Proc_258_139_1B81B900 (var_164)
  loc_1B7E07B:    = var_15C.Text
  loc_1B7E08E:   Set var_160 = var_204(CInt(0))
  loc_1B7E094:   Call 0.Method_Proc_258_139_1B81B900 (var_298)
  loc_1B7E09C:    = var_204.Text
  loc_1B7E0A9:   var_214 = Val(var_298)
  loc_1B7E0B7:   Set var_208 = var_2CC(CInt(1))
  loc_1B7E0BD:   Call 0.Method_Proc_258_139_1B81B900 (var_214)
  loc_1B7E0C5:   var_18C = CVar(var_2CC) 'Address
  loc_1B7E0CC:   Proc_6_7_F25D88(var_1AC)
  loc_1B7E0DF:   Set var_2D0 = var_2D4(CInt(5))
  loc_1B7E0E5:   Call 0.Method_Proc_258_139_1B81B900 (var_2D8)
  loc_1B7E0ED:   var_18C = var_2D4.Text
  loc_1B7E0FF:    = (var_300).Caption
  loc_1B7E112:   Set var_3E4 = var_3E8(CInt(3))
  loc_1B7E118:   Call 0.Method_Proc_258_139_1B81B900 (var_3EC)
  loc_1B7E120:    = var_3E8.Text
  loc_1B7E130:   Set var_3F0 = var_3F4(CInt(3))
  loc_1B7E136:   Call 0.Method_Proc_258_139_1B81B900 ()
  loc_1B7E150:   Set var_438 = 1(CVar(CLng(&H17)))
  loc_1B7E156:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7E18D:   Set var_4BC = var_4C0(CInt(4))
  loc_1B7E193:   Call 0.Method_Proc_258_139_1B81B900 (var_4C4)
  loc_1B7E19B:    = var_4C0.Text
  loc_1B7E1A8:   var_A58 = Val(var_4C4)
  loc_1B7E1B2:   Set var_508 = var_A58(var_166)
  loc_1B7E1B8:   Call 0.Method_Proc_258_139_1B81B904 ()
  loc_1B7E1CA:   Set var_50C = var_510(var_166)
  loc_1B7E1D0:   Call 0.Method_Proc_258_139_1B81B900 (var_514)
  loc_1B7E1D8:    = var_510.Text
  loc_1B7E1E5:   var_A60 = Val(var_514)
  loc_1B7E1EF:   Set var_7D8 = var_A60(var_168)
  loc_1B7E1F5:   Call 0.Method_Proc_258_139_1B81B908 ()
  loc_1B7E207:   Set var_7DC = var_7E0(var_168)
  loc_1B7E20D:   Call 0.Method_Proc_258_139_1B81B900 (var_7E4)
  loc_1B7E215:    = var_7E0.Text
  loc_1B7E222:   var_A68 = Val(var_7E4)
  loc_1B7E233:   Proc_6_7_F25D88(var_8C4, Date)
  loc_1B7E23C:   Set var_8F8 = Me.TopCtrl1
  loc_1B7E242:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A68)
  loc_1B7E265:   var_90C = CStr(var_908)
  loc_1B7E287:   Set var_9A0 = var_9A4(CInt(5))
  loc_1B7E28D:   Call 0.Method_Proc_258_139_1B81B900 (var_9A8)
  loc_1B7E295:    = var_9A4.Text
  loc_1B7E2AE:   var_20C = "Insert Into Sale1(Docid,VNo,VDate,VTime,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,ServiceTax,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag) Values (" & "'"
  loc_1B7E307:   var_2F8 = CVar(var_20C & var_164 & "'," & CStr(var_214) & ",") & var_1AC & ",'" & CVar(var_2D8) & "','" & CVar(global_184) & "','" 
  loc_1B7E359:   var_3A0 = var_2F8 & CVar(var_300) & "','" & CVar(MemVar_1F92070) & "','" & CVar(global_76) & "','" & CVar(global_188) & "','" 
  loc_1B7E38A:   var_4E4 = var_3A0 & CVar(global_192) & "','" & IIf((var_3EC <> vbNullString), CVar(var_3F4), CVar(CStr())) & "'," & CVar(var_A58) 
  loc_1B7E402:   var_674 = var_4E4 & "," & CVar(var_A60) & "," & CVar(var_E4) & "," & CVar(var_DC) & "," & CVar(var_AC) & "," & CVar(var_A4) & "," & CVar(var_FC) 
  loc_1B7E47A:   var_804 = var_674 & ", " & CVar(var_104) & "," & CVar(var_128) & "," & CVar(var_B4) & "," & CVar(var_BC) & "," & CVar(var_EC) & "," & CVar(var_A68) 
  loc_1B7E4C3:   var_97C = var_804 & ",'" & CVar(global_180) & "', '" & CVar(MemVar_1F920C8) & "'," & var_8C4 & ",'" & IIf((var_90C = "Add"), "A", "E") 
  loc_1B7E503:   unk_5B213D.Execute CStr(var_97C & "','" & CVar(var_9A8) & "','" & CVar(global_292) & "','N')"), var_A4C, -1
  loc_1B7E5F4: Else
  loc_1B7E602:   Set var_158 = var_15C(CInt(2))
  loc_1B7E608:   Call 0.Method_Proc_258_139_1B81B900 (var_164)
  loc_1B7E610:   var_A50 = var_15C.Text
  loc_1B7E623:   Set var_160 = var_204(CInt(0))
  loc_1B7E629:   Call 0.Method_Proc_258_139_1B81B900 (var_298)
  loc_1B7E631:    = var_204.Text
  loc_1B7E63E:   var_214 = Val(var_298)
  loc_1B7E64C:   Set var_208 = var_2CC(CInt(1))
  loc_1B7E652:   Call 0.Method_Proc_258_139_1B81B900 (var_214)
  loc_1B7E661:   Proc_6_7_F25D88(var_1AC)
  loc_1B7E673:    = CVar(var_2CC)(var_2D8).Caption
  loc_1B7E68D:   Set var_2D4 = 1(CVar(CLng(&H17)))
  loc_1B7E693:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7E6AD:   Set var_2FC = var_3E4(CInt(&HD))
  loc_1B7E6B3:   Call 0.Method_Proc_258_139_1B81B900 (var_300)
  loc_1B7E6BB:    = var_3E4.Tag
  loc_1B7E6CE:   Set var_3E8 = var_3F0(CInt(4))
  loc_1B7E6D4:   Call 0.Method_Proc_258_139_1B81B900 (var_3EC)
  loc_1B7E6DC:    = var_3F0.Text
  loc_1B7E6E9:   var_A58 = Val(var_3EC)
  loc_1B7E6F3:   Set var_3F4 = var_A58(var_166)
  loc_1B7E6F9:   Call 0.Method_Proc_258_139_1B81B904 ()
  loc_1B7E70B:   Set var_438 = var_4BC(var_166)
  loc_1B7E711:   Call 0.Method_Proc_258_139_1B81B900 (var_4C4)
  loc_1B7E719:    = var_4BC.Text
  loc_1B7E726:   var_A60 = Val(var_4C4)
  loc_1B7E730:   Set var_4C0 = var_A60(var_168)
  loc_1B7E736:   Call 0.Method_Proc_258_139_1B81B908 ()
  loc_1B7E748:   Set var_508 = var_50C(var_168)
  loc_1B7E74E:   Call 0.Method_Proc_258_139_1B81B900 (var_514)
  loc_1B7E756:    = var_50C.Text
  loc_1B7E763:   var_A68 = Val(var_514)
  loc_1B7E797:   Proc_6_7_F25D88(var_8C4, Date)
  loc_1B7E7A0:   Set var_510 = Me.TopCtrl1
  loc_1B7E7A6:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A68)
  loc_1B7E7EB:   Set var_7D8 = var_7DC(CInt(5))
  loc_1B7E7F1:   Call 0.Method_Proc_258_139_1B81B900 (var_90C)
  loc_1B7E7F9:    = var_7DC.Text
  loc_1B7E812:   var_20C = "Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Party,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,ServiceTax,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag) Values (" & "'"
  loc_1B7E862:   var_2E8 = CVar(var_20C & var_164 & "'," & CStr(var_214) & ",") & var_1AC & ",'" & CVar(global_184) & "','" & CVar(var_2D8) 
  loc_1B7E88B:   var_330 = var_2E8 & "','" & CVar(MemVar_1F92070) & "','" & CVar(global_76) 
  loc_1B7E8DE:   var_478 = var_330 & "','" & CVar(global_188) & "','" & CVar(global_192) & "','" & CVar(CStr(var_3A0)) & "','" & CVar(var_300) 
  loc_1B7E8F2:   var_498 = var_478 & "'," & CVar(var_A58) 
  loc_1B7E91A:   var_534 = var_498 & "," & CVar(var_A60) & "," & CVar(var_E4) 
  loc_1B7E942:   var_5B4 = var_534 & "," & CVar(var_DC) & "," & CVar(var_AC) 
  loc_1B7E96A:   var_634 = var_5B4 & "," & CVar(var_A4) & "," & CVar(var_FC) 
  loc_1B7E9E2:   var_7B4 = var_634 & ", " & CVar(var_104) & "," & CVar(var_128) & "," & CVar(var_B4) & "," & CVar(var_BC) & "," & CVar(var_EC) & "," & CVar(var_A68) 
  loc_1B7EA25:   var_97C = var_7B4 & ",'" & Trim(Left(global_180, &HFF)) & "', '" & CVar(MemVar_1F920C8) & "'," & var_8C4 & ",'" & IIf((CStr(var_908) = "Add"), "A", "E") 
  loc_1B7EA57:   var_A28 = var_97C & "','" & CVar(var_90C) & "','" & CVar(global_292) & "','N')" 
  loc_1B7EA5B:   var_9A8 = CStr(var_A28)
  loc_1B7EA65:   unk_5B213D.Execute var_9A8, var_A4C, -1
  loc_1B7EB49: End If
  loc_1B7EB52: Set var_158 = 1(var_92)
  loc_1B7EB58: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_7E0)
  loc_1B7EB6E: For var_A6C =  To CInt((CLng() - 1)):  = var_A6C 'Integer
  loc_1B7EB89:   Set var_158 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1B7EB8F:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7EBA0:   var_1CC = Trim(CVar(CStr()))
  loc_1B7EBC7:   Set var_15C = CVar(CLng(var_92))(CVar(CLng(7)))
  loc_1B7EBCD:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((var_1CC <> vbNullString))
  loc_1B7EBD8:   var_164 = CStr()
  loc_1B7EC06:   If CBool( And (CDbl(Val(var_164)) <> CDbl(0))) Then
  loc_1B7EC17:     Set var_158 = var_15C(CInt(2))
  loc_1B7EC1D:     Call 0.Method_Proc_258_139_1B81B900 (var_164)
  loc_1B7EC25:      = var_15C.Text
  loc_1B7EC3F:     Set var_160 = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1B7EC45:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7EC58:     var_214 = Val(CStr())
  loc_1B7EC68:      = var_214(var_3EC).Caption
  loc_1B7EC7B:     Set var_208 = var_2CC(CInt(0))
  loc_1B7EC81:     Call 0.Method_Proc_258_139_1B81B900 (var_9A8)
  loc_1B7EC89:      = var_2CC.Text
  loc_1B7EC96:     var_A58 = Val(var_9A8)
  loc_1B7ECA4:     Set var_2D0 = var_2D4(CInt(1))
  loc_1B7ECAA:     Call 0.Method_Proc_258_139_1B81B900 (var_A58)
  loc_1B7ECB2:     var_1AC = CVar(var_2D4) 'Address
  loc_1B7ECB9:     Proc_6_7_F25D88(var_1CC)
  loc_1B7ECD3:     Set var_2FC = CVar(CLng(var_92))(CVar(CLng(&H15)))
  loc_1B7ECD9:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1AC)
  loc_1B7ECFA:     Set var_3E4 = CVar(CLng(var_92))(CVar(CLng(&H16)))
  loc_1B7ED00:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7ED1A:     Set var_3E8 = var_3F0(CInt(3))
  loc_1B7ED20:     Call 0.Method_Proc_258_139_1B81B900 (var_A78)
  loc_1B7ED28:      = var_3F0.Text
  loc_1B7ED38:     Set var_3F4 = var_438(CInt(3))
  loc_1B7ED3E:     Call 0.Method_Proc_258_139_1B81B900 ()
  loc_1B7ED58:     Set var_4BC = 1(CVar(CLng(&H17)))
  loc_1B7ED5E:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7ED95:     Set var_4C0 = var_508(CInt(&HD))
  loc_1B7ED9B:     Call 0.Method_Proc_258_139_1B81B900 (var_A7C)
  loc_1B7EDA3:      = var_508.Tag
  loc_1B7EDBD:     Set var_50C = CVar(CLng(var_92))(CVar(CLng(&HB)))
  loc_1B7EDC3:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7EDE4:     Set var_510 = CVar(CLng(var_92))(CVar(CLng(&H13)))
  loc_1B7EDEA:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7EE0B:     Set var_7D8 = CVar(CLng(var_92))(CVar(CLng(&H14)))
  loc_1B7EE11:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7EE32:     Set var_7DC = CVar(CLng(var_92))(CVar(CLng(6)))
  loc_1B7EE38:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7EE59:     Set var_7E0 = CVar(CLng(var_92))(CVar(CLng(7)))
  loc_1B7EE5F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7EE72:     var_A60 = Val(CStr())
  loc_1B7EE8A:     Set var_8F8 = CVar(CLng(var_92))(CVar(CLng(9)))
  loc_1B7EE90:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A60)
  loc_1B7EEA3:     var_A68 = Val(CStr())
  loc_1B7EEBB:     Set var_9A0 = CVar(CLng(var_92))(CVar(CLng(8)))
  loc_1B7EEC1:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A68)
  loc_1B7EED4:     var_109C = Val(CStr())
  loc_1B7EEEC:     Set var_9A4 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1B7EEF2:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_109C)
  loc_1B7EF05:     var_10A4 = Val(CStr())
  loc_1B7EF1D:     Set var_A50 = CVar(CLng(var_92))(CVar(CLng(&H10)))
  loc_1B7EF23:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_10A4)
  loc_1B7EF36:     var_10AC = Val(CStr())
  loc_1B7EF4E:     Set var_BD4 = CVar(CLng(var_92))(CVar(CLng(&H11)))
  loc_1B7EF54:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_10AC)
  loc_1B7EF67:     var_10B4 = Val(CStr())
  loc_1B7EF7F:     Set var_C3C = CVar(CLng(var_92))(CVar(CLng(&HE)))
  loc_1B7EF85:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_10B4)
  loc_1B7EF98:     var_10BC = Val(CStr())
  loc_1B7EFB0:     Set var_CA4 = CVar(CLng(var_92))(CVar(CLng(&HF)))
  loc_1B7EFB6:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_10BC)
  loc_1B7EFC9:     var_10C4 = Val(CStr())
  loc_1B7EFE1:     Set var_D0C = CVar(CLng(var_92))(CVar(CLng(&H12)))
  loc_1B7EFE7:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_10C4)
  loc_1B7EFFA:     var_10CC = Val(CStr())
  loc_1B7F00B:     Proc_6_7_F25D88(var_A28, Date)
  loc_1B7F014:     Set var_D74 = Me.TopCtrl1
  loc_1B7F01A:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_10CC)
  loc_1B7F066:     Set var_E5C = CVar(CLng(var_92))(CVar(CLng(&H1A)))
  loc_1B7F06C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7F08D:     Set var_EF0 = CVar(CLng(var_92))(CVar(CLng(&H1A)))
  loc_1B7F093:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7F0B4:     Set var_F84 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1B7F0BA:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7F0DB:     Set var_1018 = CVar(CLng(var_92))(CVar(CLng(&HC)))
  loc_1B7F0E1:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7F10B:     var_20C = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Party,Item,DiscApp,RoundOff,UNIT,QtyIss,Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,KOTDocId,KotSno,DelFlag) Values (" & "'"
  loc_1B7F152:     var_90C = var_20C & var_164 & "'," & CStr(var_214) & ",'" & global_184 & "','" & var_3EC & "','" & MemVar_1F92070
  loc_1B7F16C:     var_1EC = CVar(var_90C & "'," & CStr(var_A58) & ",") 'String
  loc_1B7F199:     var_2F8 = CVar(CStr(var_2E8)) 'String
  loc_1B7F1C0:     var_3E0 = var_1EC & var_1CC & ",'" & CVar(global_76) & "','" & var_2F8 & "','" & CVar(CStr(var_330)) & "','" & IIf((var_A78 <> vbNullString), CVar(var_438), CVar(CStr())) 
  loc_1B7F1F0:     var_504 = var_3E0 & "','" & CVar(var_A7C) & "','" & CVar(CStr(var_498)) & "','" 
  loc_1B7F20C:     var_5D4 = CVar(CStr(var_5B4)) 'String
  loc_1B7F223:     var_674 = var_504 & CVar(CStr(var_534)) & "','" & var_5D4 & "','" & CVar(CStr(var_634)) 
  loc_1B7F268:     var_7B4 = var_674 & "'," & CVar(var_A60) & "," & CVar(var_A68) & "," & CVar(var_109C) & "," 
  loc_1B7F2A4:     var_8C4 = var_7B4 & CVar(var_10A4) & "," & CVar(var_10AC) & "," & CVar(var_10B4) & "," 
  loc_1B7F303:     var_D70 = var_8C4 & CVar(var_10BC) & "," & CVar(var_10C4) & "," & CVar(var_10CC) & ",'" & CVar(MemVar_1F920C8) & "'," & var_A28 & ",'" 
  loc_1B7F346:     var_FB4 = var_D70 & IIf((CStr(var_D84) = "Add"), "A", "E") & "','" & CVar(CStr(var_E6C)) & "','" & CVar(CStr(var_F00)) & "','" & CVar(CStr(var_F94)) 
  loc_1B7F371:     unk_5B213D.Execute CStr(var_FB4 & "'," & CVar(Val(CStr())) & ",'N')"), var_1090, -1
  loc_1B7F4D0:     If (global_240 = "Y") Then
  loc_1B7F4E1:       Set var_158 = var_15C(CInt(2))
  loc_1B7F4E7:       Call 0.Method_Proc_258_139_1B81B900 (var_164, var_1094)
  loc_1B7F4EF:       var_10D4 = var_15C.Text
  loc_1B7F509:       Set var_160 = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1B7F50F:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7F522:       var_214 = Val(CStr())
  loc_1B7F53A:       Set var_204 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1B7F540:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_214)
  loc_1B7F561:       Set var_208 = CVar(CLng(var_92))(CVar(CLng(&HC)))
  loc_1B7F567:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7F5BD:       var_4C4 = "Update CashRegData Set ContraDocId='" & var_164 & "',ContraSno=" & CStr(var_214) & " where docid='" & CStr(var_1AC) & "' And SNo="
  loc_1B7F5D2:       unk_5B213D.Execute var_4C4 & CStr(Val(CStr())), var_1EC, -1
  loc_1B7F60E:     End If
  loc_1B7F60E:   End If
  loc_1B7F611: Next var_A6C 'Integer
  loc_1B7F61F: Set var_158 = 0(var_92)
  loc_1B7F625: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1B7F63B: For var_10D8 =  To CInt((CLng() - 1)):  = var_10D8 'Integer
  loc_1B7F656:   Set var_158 = CVar(CLng(var_92))(CVar(CLng(2)))
  loc_1B7F65C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7F667:   var_1AC = CVar(CStr()) 'String
  loc_1B7F694:   Set var_15C = CVar(CLng(var_92))(CVar(CLng(6)))
  loc_1B7F69A:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(var_1AC) <> vbNullString))
  loc_1B7F6A5:   var_164 = CStr()
  loc_1B7F6D3:   If CBool( And (CDbl(Val(var_164)) <> CDbl(0))) Then
  loc_1B7F6E4:     Set var_158 = var_15C(CInt(2))
  loc_1B7F6EA:     Call 0.Method_Proc_258_139_1B81B900 (var_164)
  loc_1B7F6F2:      = var_15C.Text
  loc_1B7F70C:     Set var_160 = CVar(CLng(var_92))(CVar(CLng(1)))
  loc_1B7F712:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7F725:     var_214 = Val(CStr())
  loc_1B7F73D:     Set var_204 = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1B7F743:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_214)
  loc_1B7F74E:     var_2D8 = CStr()
  loc_1B7F756:     var_A58 = Val(var_2D8)
  loc_1B7F766:      = var_A58(var_90C).Caption
  loc_1B7F779:     Set var_2CC = var_2D0(CInt(0))
  loc_1B7F77F:     Call 0.Method_Proc_258_139_1B81B900 (var_A78)
  loc_1B7F787:      = var_2D0.Text
  loc_1B7F794:     var_A60 = Val(var_A78)
  loc_1B7F7A2:     Set var_2D4 = var_2FC(CInt(1))
  loc_1B7F7A8:     Call 0.Method_Proc_258_139_1B81B900 (var_A60)
  loc_1B7F7B7:     Proc_6_7_F25D88(var_1EC)
  loc_1B7F7D1:     Set var_3E4 = CVar(CLng(var_92))(CVar(CLng(2)))
  loc_1B7F7D7:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(var_2FC))
  loc_1B7F7F8:     Set var_3E8 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1B7F7FE:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B7F811:     var_A68 = Val(CStr())
  loc_1B7F829:     Set var_3F0 = CVar(CLng(var_92))(CVar(CLng(5)))
  loc_1B7F82F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A68)
  loc_1B7F842:     var_109C = Val(CStr())
  loc_1B7F85A:     Set var_3F4 = CVar(CLng(var_92))(CVar(CLng(6)))
  loc_1B7F860:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_109C)
  loc_1B7F873:     var_10A4 = Val(CStr())
  loc_1B7F884:     Proc_6_7_F25D88(var_498, Date)
  loc_1B7F88D:     Set var_438 = Me.TopCtrl1
  loc_1B7F893:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_10A4)
  loc_1B7F8AC:     var_534 = "A"
  loc_1B7F8DE:     var_20C = "Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag) Values (" & "'"
  loc_1B7F912:     var_514 = var_20C & var_164 & "'," & CStr(var_214) & "," & CStr(var_A58) & ",'"
  loc_1B7F91C:     var_7E4 = var_514 & global_184
  loc_1B7F923:     var_9A8 = var_7E4 & "','"
  loc_1B7F92A:     var_A2C = var_9A8 & var_90C
  loc_1B7F931:     var_A70 = var_A2C & "','"
  loc_1B7F938:     var_A74 = var_A70 & MemVar_1F92070
  loc_1B7F947:     var_A80 = CStr(var_A60)
  loc_1B7F996:     var_350 = CVar(var_A74 & "'," & var_A80 & ",") & var_1EC & ",'" & CVar(global_76) & "','" & CVar(CStr(var_2F8)) & "'," & CVar(var_A68) 
  loc_1B7F9F1:     var_594 = var_350 & "," & CVar(var_109C) & "," & CVar(var_10A4) & ",'" & CVar(MemVar_1F920C8) & "'," & var_498 & ",'" & IIf((CStr(var_504) = "Add"), var_534, "E") 
  loc_1B7FA08:     unk_5B213D.Execute CStr(var_594 & "','N')"), var_5D4, -1
  loc_1B7FAB0:   End If
  loc_1B7FAB3: Next var_10D8 'Integer
  loc_1B7FAC4: Set var_158 = var_92(var_166)
  loc_1B7FACA: Call 0.Method_Proc_258_139_1B81B908 (1)
  loc_1B7FAD5: For var_10DC =  To var_166:  = var_10DC 'Integer
  loc_1B7FAE8:   Set var_158 = var_15C(var_92)
  loc_1B7FAEE:   Call 0.Method_Proc_258_139_1B81B900 (var_166)
  loc_1B7FAF6:    = var_15C.Visible
  loc_1B7FB08:   If (var_166 = &HFF) Then
  loc_1B7FB19:     Set var_158 = var_15C(CInt(2))
  loc_1B7FB1F:     Call 0.Method_Proc_258_139_1B81B900 (var_164)
  loc_1B7FB27:      = var_15C.Text
  loc_1B7FB3A:     Set var_160 = var_204(CInt(0))
  loc_1B7FB40:     Call 0.Method_Proc_258_139_1B81B900 (var_2D8)
  loc_1B7FB48:      = var_204.Text
  loc_1B7FB55:     var_214 = Val(var_2D8)
  loc_1B7FB63:     Set var_208 = var_2CC(CInt(1))
  loc_1B7FB69:     Call 0.Method_Proc_258_139_1B81B900 (var_214)
  loc_1B7FB71:     var_18C = CVar(var_2CC) 'Address
  loc_1B7FB78:     Proc_6_7_F25D88(var_1AC)
  loc_1B7FB8A:     Set var_2D0 = var_2D4(var_92)
  loc_1B7FB90:     Call 0.Method_Proc_258_139_1B81B900 (var_514)
  loc_1B7FB98:     var_18C = var_2D4.Tag
  loc_1B7FBB8:     Set var_2FC = var_3E4(var_92)
  loc_1B7FBBE:     Call 0.Method_Proc_258_139_1B81B900 (var_7E4)
  loc_1B7FBC6:      = var_3E4.Tag
  loc_1B7FBD3:     var_A58 = Val(var_7E4)
  loc_1B7FBE3:     Set var_3E8 = var_3F0(var_92)
  loc_1B7FBE9:     Call 0.Method_Proc_258_139_1B81B900 (var_90C)
  loc_1B7FC03:     Set var_3F4 = var_438(var_92)
  loc_1B7FC09:     Call 0.Method_Proc_258_139_1B81B900 (var_9A8)
  loc_1B7FC11:      = var_438.Tag
  loc_1B7FC23:     Set var_4BC = var_4C0(var_92)
  loc_1B7FC29:     Call 0.Method_Proc_258_139_1B81B900 (var_A2C)
  loc_1B7FC31:      = var_4C0.Tag
  loc_1B7FC43:     Set var_508 = var_50C(var_92)
  loc_1B7FC49:     Call 0.Method_Proc_258_139_1B81B900 (var_A70)
  loc_1B7FC51:      = var_50C.Text
  loc_1B7FC5E:     var_A60 = Val(var_A70)
  loc_1B7FC6E:     Set var_510 = var_7D8(var_92)
  loc_1B7FC74:     Call 0.Method_Proc_258_139_1B81B900 (var_A74)
  loc_1B7FC89:     var_A68 = Val(var_A74)
  loc_1B7FC99:     Set var_7DC = var_7E0(var_92)
  loc_1B7FC9F:     Call 0.Method_Proc_258_139_1B81B900 (var_A78)
  loc_1B7FCB4:     var_109C = Val(var_A78)
  loc_1B7FCC5:     Proc_6_7_F25D88(var_534, Date)
  loc_1B7FCCE:     Set var_8F8 = Me.TopCtrl1
  loc_1B7FCD4:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_109C)
  loc_1B7FCE2:     var_5D4 = "E"
  loc_1B7FCF7:     var_A7C = CStr(var_594)
  loc_1B7FD16:     Set var_9A0 = var_9A4(CInt(9))
  loc_1B7FD1C:     Call 0.Method_Proc_258_139_1B81B900 ()
  loc_1B7FD24:     var_654 = CVar(var_9A4) 'Address
  loc_1B7FD2B:     Proc_6_7_F25D88(var_674)
  loc_1B7FD3D:     Set var_A50 = var_BD4(var_92)
  loc_1B7FD43:     Call 0.Method_Proc_258_139_1B81B900 (var_A80)
  loc_1B7FD4B:     var_654 = var_BD4.Tag
  loc_1B7FD64:     var_20C = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode) Values ('" & var_164
  loc_1B7FD6B:     var_274 = var_20C & "',"
  loc_1B7FD73:     var_298 = CStr(var_92)
  loc_1B7FDB1:     var_22C = CVar(var_274 & var_298 & ",'" & global_184 & "'," & CStr(var_214) & ",") & var_1AC & ",'" 
  loc_1B7FDC1:     var_2E8 = var_22C & Trim(CVar(var_514)) & "'," 
  loc_1B7FE19:     var_3E0 = var_2E8 & CVar(var_3F0.Caption) & ",'" & CVar(var_90C) & "','" & CVar(var_9A8) & "','" & CVar(var_A2C) & "'," & CVar(var_7D8.Text) 
  loc_1B7FE74:     var_614 = var_3E0 & "," & CVar(var_7E0.Caption) & "," & CVar(var_109C) & ",'" & CVar(MemVar_1F920C8) & "'," & var_534 & ",'" & IIf((var_A7C = "Add"), "A", var_5D4) 
  loc_1B7FE7D:     var_634 = var_614 & "'," 
  loc_1B7FEAD:     var_734 = var_634 & var_674 & ",'" & CVar(var_A80) & "','" & CVar(global_76) 
  loc_1B7FEC0:     var_774 = var_734 & "','N','" & CVar(MemVar_1F92070) 
  loc_1B7FECD:     var_A84 = CStr(var_774 & "')")
  loc_1B7FED7:     unk_5B213D.Execute var_A84, var_7B4, -1
  loc_1B7FFA1:   End If
  loc_1B7FFA4: Next var_10DC 'Integer
  loc_1B7FFB4: If (global_240 = "Y") Then
  loc_1B7FFC0:   Set var_158 = 1(var_92)
  loc_1B7FFC6:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1B7FFDC:   For var_10E0 =  To CInt((CLng() - 1)):  = var_10E0 'Integer
  loc_1B7FFF7:     Set var_158 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1B7FFFD:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B80035:     Set var_15C = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1B8003B:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(CVar(CStr())) <> vbNullString))
  loc_1B80074:     If CBool( And (CDbl(Val(CStr())) <> CDbl(0))) Then
  loc_1B8007A:       Proc_6_104_ED5D18(var_18C)
  loc_1B80094:       Set var_158 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1B8009A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1B800D0:       var_1EC = CVar("Update CashRegData Set Pending='N',U_Name1='" & MemVar_1F920C8 & "',U_EntDt1=") & var_18C & ",U_AE1='E' where docid='" 
  loc_1B800F2:       unk_5B213D.Execute CStr(var_1EC & CVar(CStr(var_22C)) & "'"), var_2E8, -1
  loc_1B8011A:     End If
  loc_1B8011D:   Next var_10E0 'Integer
  loc_1B80122: End If
  loc_1B8012D: If (global_304 = "Room Service") Then
  loc_1B80133:   var_19C = 0
  loc_1B80163:   unk_5B213D.Execute "SELECT SHORTNAME FROM DEPART WHERE CODE='" & global_76 & "'", var_18C, -1
  loc_1B8016B:   var_158 = var_158.Fields
  loc_1B80173:   var_19C = var_15C.Item(var_15C)
  loc_1B8018A:   var_1BC = " BILL NO.-"
  loc_1B8018F:   var_1EC = (Trim(CVar(var_160)) + CVar(CLng(4)))
  loc_1B80198:   var_22C = (var_1EC + " ")
  loc_1B801AA:   Set var_204 = var_208(CInt(0))
  loc_1B801B0:   Call 0.Method_Proc_258_139_1B81B900 (var_274, var_22C)
  loc_1B801B8:   var_160 = var_208.Text
  loc_1B801C3:   var_24C = ( + CVar(var_274))
  loc_1B801C8:   var_12C = CStr(var_1EC & CVar(CStr(var_22C)))
  loc_1B801F4:   var_152 = (var_152 + 1)
  loc_1B8020B:   Call 0.Method_Proc_258_139_1B81B900 (var_298)
  loc_1B80226:   Set var_160 = var_204(CInt(0))
  loc_1B8022C:   Call 0.Method_Proc_258_139_1B81B900 (var_514)
  loc_1B80234:    = var_204.Text
  loc_1B80241:   var_214 = Val(var_514)
  loc_1B80248:   var_18C = CVar((var_214)) 'Address
  loc_1B8025F:   Set var_208 = var_2CC(CInt(1))
  loc_1B80265:   Call 0.Method_Proc_258_139_1B81B900 ()
  loc_1B80274:   Proc_6_7_F25D88(var_1EC & CVar(CStr(var_22C)))
  loc_1B80284:   Set var_2D0 = var_2D4(CInt(5))
  loc_1B8028A:   Call 0.Method_Proc_258_139_1B81B900 (CVar(var_2CC))
  loc_1B802A5:   Set var_2FC = (var_166)
  loc_1B802AB:   Call 0.Method_Proc_258_139_1B81B908 ()
  loc_1B802BD:   Set var_3E4 = var_3E8(var_166)
  loc_1B802C3:   Call 0.Method_Proc_258_139_1B81B900 (var_A74)
  loc_1B802CB:    = var_3E8.Text
  loc_1B802D8:   var_A58 = Val(var_A74)
  loc_1B802E2:   Set var_3F0 = var_A58(var_168)
  loc_1B802E8:   Call 0.Method_Proc_258_139_1B81B908 ()
  loc_1B802FA:   Set var_3F4 = var_438(var_168)
  loc_1B80300:   Call 0.Method_Proc_258_139_1B81B900 (var_A78)
  loc_1B80308:    = var_438.Text
  loc_1B80315:   var_A60 = Val(var_A78)
  loc_1B80326:   Set var_4BC = var_4C0(CInt(7))
  loc_1B8032C:   Call 0.Method_Proc_258_139_1B81B900 (var_A7C)
  loc_1B80341:   var_A68 = Val(var_A7C)
  loc_1B80352:   Set var_508 = var_50C(CInt(3))
  loc_1B80358:   Call 0.Method_Proc_258_139_1B81B900 (var_A80)
  loc_1B80370:   Set var_510 = var_7D8(CInt(3))
  loc_1B80376:   Call 0.Method_Proc_258_139_1B81B900 ()
  loc_1B80389:   Set var_7DC = var_7E0(CInt(3))
  loc_1B8038F:   Call 0.Method_Proc_258_139_1B81B900 (var_A84)
  loc_1B80397:    = var_7E0.Tag
  loc_1B803CB:   Proc_6_7_F25D88(var_5D4)
  loc_1B803D4:   Set var_8F8 = Me.TopCtrl1
  loc_1B803DA:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(Date)
  loc_1B803FD:   var_AA8 = CStr(var_634)
  loc_1B80425:   var_164 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1B80441:   var_2A0 = var_164 & "RoomType,RoomNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode) Values (" & "'" & var_298
  loc_1B8048D:   var_1CC = CVar(var_2A0 & "'," & CStr(var_15C.Text) & ",'" & global_184 & "'," & CStr(var_214) & ",'" & MemVar_1F92070 & "','") 'String
  loc_1B80493:   var_1EC = var_1CC & Trim(var_18C) 
  loc_1B804D8:   var_360 = var_1EC & "'," & var_1EC & CVar(CStr(var_1EC & "',")) & ",'" & Trim(CVar(var_2D4)) & "'" & ",'','','" & CVar(var_12C) & "','" 
  loc_1B80530:   var_488 = var_360 & CVar(var_130) & "','Room'," & CVar(var_A58) & "," & CVar(var_4C0.Text) & "," & CVar(var_50C.Text) & ",'REST'," & "'RO','" 
  loc_1B80553:   var_574 = var_488 & IIf((var_A80 <> vbNullString), CVar(var_7D8), CVar(var_A84)) & "','','','',Null," & "Null,'" & CVar(MemVar_1F920C8) 
  loc_1B80592:   var_714 = var_574 & "'," & var_5D4 & ",'" & IIf((var_AA8 = "Add"), "A", "E") & "','" & CVar(global_76) & "')" 
  loc_1B805A0:   unk_5B213D.Execute CStr(var_714), var_734, -1
  loc_1B80691:   unk_5B213D.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F92078 & "TOUT" & "'", var_18C, -1
  loc_1B8069C:   Set var_134 = var_15C(CInt(2))
  loc_1B806C2:   If (var_134.RecordCount > 0) Then
  loc_1B806F1:     var_15C = var_134.Fields.Item("TaxStru")
  loc_1B80701:     var_1AC = "Select * from taxstru where Code='" & var_15C.Value 
  loc_1B8070A:     var_1CC = var_1AC & "' Order by Sno" 
  loc_1B8070E:     var_164 = CStr(var_1CC)
  loc_1B80718:     unk_5B213D.Execute var_164, var_1EC, -1
  loc_1B80723:     Set var_11C = var_160
  loc_1B80740:   Else
  loc_1B80753:     var_18C = "System Defined Revenue is not defined"
  loc_1B80759:     MsgBox(var_18C, 0, var_1AC, var_1CC, var_1EC)
  loc_1B8076F:     unk_5B213D.RollbackTrans
  loc_1B80774:     Exit Sub
  loc_1B80775:   End If
  loc_1B8077B:   var_152 = (var_152 + 1)
  loc_1B807A2:   Call 0.Method_Proc_258_139_1B81B900 (var_164, "Select GuestProf,Docid from GuestFolio where FolioNo=", var_18C, -1, var_160)
  loc_1B807AA:   var_152 = var_15C.Text
  loc_1B807BC:   unk_5B213D.Execute var_160 & var_164, var_15C(CInt(&HA)), var_9A0
  loc_1B807C7:   Set var_138 = var_160
  loc_1B807F1:   If (var_138.RecordCount > 0) Then
  loc_1B8080E:     var_15C = var_138.Fields.Item("GuestProf")
  loc_1B8081F:     var_120 = CStr(var_15C.Value)
  loc_1B8082C:   End If
  loc_1B8083A:   Set var_158 = var_15C(CInt(2))
  loc_1B80840:   Call 0.Method_Proc_258_139_1B81B900 (var_298)
  loc_1B80848:    = var_15C.Text
  loc_1B8085B:   Set var_160 = var_204(CInt(0))
  loc_1B80861:   Call 0.Method_Proc_258_139_1B81B900 (var_514)
  loc_1B80869:    = var_204.Text
  loc_1B80876:   var_214 = Val(var_514)
  loc_1B80894:   Set var_208 = var_2CC(CInt(1))
  loc_1B8089A:   Call 0.Method_Proc_258_139_1B81B900 ()
  loc_1B808A9:   Proc_6_7_F25D88(var_1EC & CVar(CStr(var_1EC & "',")))
  loc_1B808B9:   Set var_2D0 = var_2D4(CInt(5))
  loc_1B808BF:   Call 0.Method_Proc_258_139_1B81B900 (CVar(var_2CC))
  loc_1B808CE:   var_310 = Trim(CVar(var_2D4))
  loc_1B80901:   Set var_3E8 = (var_166)
  loc_1B80907:   Call 0.Method_Proc_258_139_1B81B908 ()
  loc_1B80919:   Set var_3F0 = var_3F4(var_166)
  loc_1B8091F:   Call 0.Method_Proc_258_139_1B81B900 (var_A74)
  loc_1B80927:    = var_3F4.Text
  loc_1B80934:   var_A58 = Val(var_A74)
  loc_1B8093E:   Set var_438 = var_A58(var_168)
  loc_1B80944:   Call 0.Method_Proc_258_139_1B81B908 ()
  loc_1B80956:   Set var_4BC = var_4C0(var_168)
  loc_1B8095C:   Call 0.Method_Proc_258_139_1B81B900 (var_A78)
  loc_1B80964:    = var_4C0.Text
  loc_1B80971:   var_A60 = Val(var_A78)
  loc_1B80982:   Set var_508 = var_50C(CInt(7))
  loc_1B80988:   Call 0.Method_Proc_258_139_1B81B900 (var_A7C)
  loc_1B8099D:   var_A68 = Val(var_A7C)
  loc_1B809AE:   Set var_510 = var_7D8(CInt(3))
  loc_1B809B4:   Call 0.Method_Proc_258_139_1B81B900 (var_A80)
  loc_1B809CC:   Set var_7DC = var_7E0(CInt(3))
  loc_1B809D2:   Call 0.Method_Proc_258_139_1B81B900 ()
  loc_1B809E5:   Set var_8F8 = var_9A0(CInt(3))
  loc_1B809EB:   Call 0.Method_Proc_258_139_1B81B900 (var_A84)
  loc_1B809F3:    = var_9A0.Tag
  loc_1B80A14:   var_5D4 = IIf((var_A80 <> vbNullString), CVar(var_7E0), CVar(var_A84))
  loc_1B80A27:   Set var_9A4 = var_A50(CInt(&HA))
  loc_1B80A2D:   Call 0.Method_Proc_258_139_1B81B900 (var_AA8)
  loc_1B80A35:    = var_A50.Text
  loc_1B80A48:   Proc_6_7_F25D88(var_714)
  loc_1B80A51:   Set var_BD4 = Me.TopCtrl1
  loc_1B80A57:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(Date)
  loc_1B80AC9:   var_164 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,"
  loc_1B80AD0:   var_20C = var_164 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,"
  loc_1B80AD7:   var_274 = var_20C & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid) Values ("
  loc_1B80ADE:   var_29C = var_274 & "'"
  loc_1B80AE5:   var_2A0 = var_29C & var_298
  loc_1B80AF8:   var_300 = var_2A0 & "'," & CStr(var_152)
  loc_1B80B23:   var_A2C = var_300 & ",'" & global_184 & "'," & CStr(var_214) & ",'"
  loc_1B80B47:   var_26C = CVar(var_A2C & MemVar_1F92070 & "','") & Trim(CVar((var_214))) & "'," & CVar(var_A2C & MemVar_1F92070 & "','") & Trim(CVar((var_214))) & CVar(CStr(CVar(var_A2C & MemVar_1F92070 & "','") & Trim(CVar((var_214))) & "',")) 
  loc_1B80B96:   var_3C0 = var_26C & ",'" & var_310 & "'" & ",'" & CVar(var_120) & "','','" & CVar(var_12C) & "','" & var_134.Fields.Item("Code").Value 
  loc_1B80BE8:   var_4E4 = var_3C0 & "','Room'," & CVar(var_A58) & "," & CVar(var_50C.Text) & "," & CVar(var_7D8.Text) & ",'" & CVar(global_188) 
  loc_1B80C10:   var_574 = var_4E4 & "'," & "'" & CVar(global_192) & "','" 
  loc_1B80C4F:   var_6D4 = var_574 & var_5D4 & "'," & CVar(var_AA8) & ",'','','',Null," & "Null,'" & CVar(MemVar_1F920C8) & "'," 
  loc_1B80C8C:   var_8A4 = var_6D4 & var_714 & ",'" & IIf((CStr(var_774) = "Add"), "A", "E") & "','" & CVar(global_76) & "','" & var_138.Fields.Item("DocID").Value 
  loc_1B80CA3:   unk_5B213D.Execute CStr(var_8A4 & "')"), var_8C4, -1
  loc_1B80D9D:   Set var_158 = var_15C(CInt(2))
  loc_1B80DA3:   Call 0.Method_Proc_258_139_1B81B900 (var_300)
  loc_1B80DAB:   var_D0C = var_15C.Text
  loc_1B80DBE:   Set var_160 = var_204(CInt(0))
  loc_1B80DC4:   Call 0.Method_Proc_258_139_1B81B900 (var_164)
  loc_1B80DCC:    = var_204.Text
  loc_1B80DD9:   var_10B4 = Val(var_164)
  loc_1B80DFA:   Set var_208 = var_2CC(CInt(1))
  loc_1B80E00:   Call 0.Method_Proc_258_139_1B81B900 (var_514)
  loc_1B80E08:    = var_2CC.Text
  loc_1B80E18:   Set var_2D0 = var_2D4(CInt(5))
  loc_1B80E1E:   Call 0.Method_Proc_258_139_1B81B900 ()
  loc_1B80E2D:   var_1EC = Trim(CVar(var_2D4))
  loc_1B80E44:   var_2FC = var_134.Fields
  loc_1B80E54:   var_350 = var_2FC.Item("Code").Value
  loc_1B80E60:   Set var_3E8 = (var_166)
  loc_1B80E66:   Call 0.Method_Proc_258_139_1B81B908 ()
  loc_1B80E78:   Set var_3F0 = var_3F4(var_166)
  loc_1B80E7E:   Call 0.Method_Proc_258_139_1B81B900 (var_20C)
  loc_1B80E86:    = var_3F4.Text
  loc_1B80E9D:   Set var_438 = Val(var_20C)(var_168)
  loc_1B80EA3:   Call 0.Method_Proc_258_139_1B81B908 ()
  loc_1B80EB5:   Set var_4BC = var_4C0(var_168)
  loc_1B80EBB:   Call 0.Method_Proc_258_139_1B81B900 (var_274)
  loc_1B80EC3:    = var_4C0.Text
  loc_1B80ED0:   var_10C4 = Val(var_274)
  loc_1B80EE1:   Set var_508 = var_50C(CInt(7))
  loc_1B80EE7:   Call 0.Method_Proc_258_139_1B81B900 (var_298)
  loc_1B80EEF:   var_10C4 = var_50C.Text
  loc_1B80EFC:   var_10CC = Val(var_298)
  loc_1B80F0D:   Set var_510 = var_7D8(CInt(3))
  loc_1B80F13:   Call 0.Method_Proc_258_139_1B81B900 (var_29C)
  loc_1B80F1B:   var_10CC = var_7D8.Text
  loc_1B80F2B:   Set var_7DC = var_7E0(CInt(3))
  loc_1B80F31:   Call 0.Method_Proc_258_139_1B81B900 ()
  loc_1B80F44:   Set var_8F8 = var_9A0(CInt(3))
  loc_1B80F4A:   Call 0.Method_Proc_258_139_1B81B900 (var_2A0)
  loc_1B80F52:    = var_9A0.Tag
  loc_1B80F73:   var_24C = IIf((var_29C <> vbNullString), CVar(var_7E0), CVar(var_2A0))
  loc_1B80F86:   Set var_9A4 = var_A50(CInt(&HA))
  loc_1B80F8C:   Call 0.Method_Proc_258_139_1B81B900 (var_A78)
  loc_1B80F94:    = var_A50.Text
  loc_1B80F9C:   var_26C = Date
  loc_1B80FA4:   var_2E8 = Date
  loc_1B80FAC:   var_2F8 = Date
  loc_1B80FB5:   Set var_BD4 = Me.TopCtrl1
  loc_1B80FBB:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1B80FED:   var_340 = IIf((CStr(var_310) = "Add"), "A", "E")
  loc_1B81014:   var_360 = var_138.Fields.Item("DocID").Value
  loc_1B8101E:   var_CA8 = 0
  loc_1B81029:   var_C40 = 0
  loc_1B8103C:   var_BD8 = 0
  loc_1B81047:   var_B70 = 0
  loc_1B81084:   var_A84 = vbNullString
  loc_1B8108D:   var_A80 = vbNullString
  loc_1B81096:   var_A7C = vbNullString
  loc_1B810CF:   var_A70 = "Room"
  loc_1B810E3:   var_9A8 = vbNullString
  loc_1B810EC:   var_90C = vbNullString
  loc_1B81130:   Proc_96_8_1CC2560(MemVar_1F92078 & "TOUT", var_300, var_152, global_184, CLng(var_10B4), MemVar_1F92070, CStr(Trim(CVar((var_10B4)))), CDate(var_514))
  loc_1B811CF: Else
  loc_1B811DD:   Set var_158 = var_15C(CInt(6))
  loc_1B811E3:   Call 0.Method_Proc_258_139_1B81B900 (var_164, CStr(var_1EC), var_90C, var_9A8)
  loc_1B811EB:   var_12C = var_15C.Text
  loc_1B81207:   If (CDbl(Val(var_164)) > CDbl(0)) Then
  loc_1B8121A:     CStr(var_350) = "CASH RECD. "(var_164).Caption
  loc_1B81231:     var_298 = var_A70 & var_164 & " " & "BILL NO.-"
  loc_1B81249:     Set var_15C = var_160(CInt(0))
  loc_1B8124F:     Call 0.Method_Proc_258_139_1B81B900 (var_29C, var_298 & " ")
  loc_1B81257:     var_10BC = var_160.Text
  loc_1B81289:     Set var_158 = var_15C(CInt(2))
  loc_1B8128F:     Call 0.Method_Proc_258_139_1B81B900 (var_298)
  loc_1B81297:      = var_15C.Text
  loc_1B812AA:     Set var_160 = var_204(CInt(0))
  loc_1B812B0:     Call 0.Method_Proc_258_139_1B81B900 (var_300)
  loc_1B812B8:      = var_204.Text
  loc_1B812C5:     var_214 = Val(var_300)
  loc_1B812D3:     var_1AC = Trim(CVar((var_214)))
  loc_1B812E3:     Set var_208 = var_2CC(CInt(1))
  loc_1B812E9:     Call 0.Method_Proc_258_139_1B81B900 ()
  loc_1B812F1:     var_23C = CVar(var_2CC) 'Address
  loc_1B812F8:     Proc_6_7_F25D88(var_24C)
  loc_1B81304:     Set var_2D0 = var_23C(var_166)
  loc_1B8130A:     Call 0.Method_Proc_258_139_1B81B908 ()
  loc_1B8131C:     Set var_2D4 = var_2FC(var_166)
  loc_1B81322:     Call 0.Method_Proc_258_139_1B81B900 (var_9A8)
  loc_1B8132A:      = var_2FC.Text
  loc_1B81337:     var_A58 = Val(var_9A8)
  loc_1B81341:     Set var_3E4 = var_A58(var_168)
  loc_1B81347:     Call 0.Method_Proc_258_139_1B81B908 ()
  loc_1B81359:     Set var_3E8 = var_3F0(var_168)
  loc_1B8135F:     Call 0.Method_Proc_258_139_1B81B900 (var_A2C)
  loc_1B81367:      = var_3F0.Text
  loc_1B81374:     var_A60 = Val(var_A2C)
  loc_1B81385:     Set var_3F4 = var_438(CInt(7))
  loc_1B8138B:     Call 0.Method_Proc_258_139_1B81B900 (var_A70)
  loc_1B813A0:     var_A68 = Val(var_A70)
  loc_1B813B1:     Set var_4BC = var_4C0(CInt(3))
  loc_1B813B7:     Call 0.Method_Proc_258_139_1B81B900 (var_A74)
  loc_1B813D2:     Proc_6_7_F25D88(var_574)
  loc_1B813DB:     Set var_508 = Me.TopCtrl1
  loc_1B813E1:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(Date)
  loc_1B8142C:     var_164 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1B81441:     var_29C = var_164 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode) Values (" & "'"
  loc_1B81448:     var_2A0 = var_29C & var_298
  loc_1B81497:     var_26C = CVar(var_2A0 & "',1,'" & global_184 & "'," & CStr(var_214) & ",'" & MemVar_1F92070 & "','") & var_1AC & "'," & var_24C 
  loc_1B814EE:     var_370 = var_26C & ",'','','" & CVar(var_29C) & "','" & CVar(var_130) & "','Cash'," & CVar(var_A58) & "," & CVar(var_438.Text) & "," 
  loc_1B81541:     var_498 = var_370 & CVar(var_4C0.Tag) & ",'" & CVar(global_188) & "'," & "'" & CVar(global_192) & "','" & CVar(var_A74) 
  loc_1B8157D:     var_654 = var_498 & "',0,'','','',Null," & "Null,'" & CVar(MemVar_1F920C8) & "'," & var_574 & ",'" & IIf((CStr(var_5D4) = "Add"), "A", "E") 
  loc_1B815AA:     unk_5B213D.Execute CStr(var_654 & "','" & CVar(global_76) & "')"), var_6D4, -1
  loc_1B81658:   End If
  loc_1B81658: End If
  loc_1B8165C: Set var_158 = Me.TopCtrl1
  loc_1B81662: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_50C)
  loc_1B8167B: If (CStr() = "Add") Then
  loc_1B81692:   var_164 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1B816B8:   var_1CC = CVar(var_164 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_184 & "' And VP.Date_From<=") 'String
  loc_1B816C9:   Set var_158 = var_15C(CInt(1))
  loc_1B816CF:   Call 0.Method_Proc_258_139_1B81B900 (var_2A0, var_1CC, var_23C)
  loc_1B816D7:   -1 = var_15C.Text
  loc_1B816E5:   Proc_6_7_F25D88(var_1AC, CVar(var_2A0))
  loc_1B81704:   unk_5B213D.Execute CStr(var_160 & var_1AC & " Order By VP.Date_From DESC"), , 
  loc_1B8170F:   Set var_88 = var_160
  loc_1B8174D:   If (var_88.RecordCount > 0) Then
  loc_1B8175E:     Set var_158 = var_15C(CInt(0))
  loc_1B81764:     Call 0.Method_Proc_258_139_1B81B900 (var_164)
  loc_1B8176C:      = var_15C.Text
  loc_1B81779:     var_214 = Val(var_164)
  loc_1B8178E:     var_160 = var_88.Fields
  loc_1B8179E:     var_18C = var_160.Item("V_Type").Value
  loc_1B817C9:     Proc_6_7_F25D88(var_23C, CVar(var_88.Fields.Item("Date_From")))
  loc_1B817E3:     var_20C = CStr(var_214)
  loc_1B81803:     var_2C8 = "Update Voucher_Prefix Set Start_Srl_No=" & var_20C & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_1B8182E:     unk_5B213D.Execute CStr(CVar(var_2C8 & "') and V_Type='") & var_18C & "' and Date_From=" & var_23C), var_26C, -1
  loc_1B81868:   End If
  loc_1B81868: End If
  loc_1B8186C: Set var_158 = Me.TopCtrl1
  loc_1B81872: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_2D0)
  loc_1B8188B: If (CStr(var_214) = "Add") Then
  loc_1B818B1:   var_164 = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F920C8
  loc_1B818C1:   Call 0.Method_arg_50 (var_20C, var_164 & "' AND ENAME='", var_18C, -1, var_158)
  loc_1B818D1:   var_29C = var_15C & var_20C & "' "
  loc_1B818DA:   unk_5B213D.Execute var_29C, 0, var_160
  loc_1B818E2:   var_1AC = var_158.Fields
  loc_1B818EA:    = var_15C.Item()
  loc_1B818F2:    = var_160.Value
  loc_1B8191F:   If (var_1AC > 0) Then
  loc_1B81940:     Set var_158 = var_15C(CInt(2))
  loc_1B81946:     Call 0.Method_Proc_258_139_1B81B900 (var_164, "UPDATE LASTVOU  SET DOCID='", var_18C)
  loc_1B8194E:     -1 = var_15C.Text
  loc_1B81957:     var_20C = var_160 & var_164
  loc_1B81975:     Call 0.Method_arg_50 (var_29C)
  loc_1B8198E:     unk_5B213D.Execute var_20C & "' WHERE UNAME='" & MemVar_1F920C8 & "' AND ENAME='" & var_29C & "'  ", , 
  loc_1B819B5:   Else
  loc_1B819C9:     var_164 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE) VALUES ('" & MemVar_1F920C8
  loc_1B819D9:     Call 0.Method_arg_50 (var_20C, var_164 & "','", var_23C)
  loc_1B819E2:     var_298 = -1 & var_20C
  loc_1B819FA:     Set var_158 = var_15C(CInt(2))
  loc_1B81A00:     Call 0.Method_Proc_258_139_1B81B900 (var_29C, var_20C & "' WHERE UNAME='" & MemVar_1F920C8 & "','")
  loc_1B81A08:     var_160 = var_15C.Text
  loc_1B81A37:     Proc_6_7_F25D88(var_1AC, Date)
  loc_1B81A43:     var_17C = ",'A')"
  loc_1B81A56:     unk_5B213D.Execute CStr(CVar(var_29C & "','" & MemVar_1F92078 & "',") & var_1AC & var_17C), , 
  loc_1B81A8A:   End If
  loc_1B81A8A: End If
  loc_1B81A90: unk_5B213D.CommitTrans
  loc_1B81A97: var_8A = 0
  loc_1B81AA8: Set var_158 = var_15C(CInt(2))
  loc_1B81AAE: Call 0.Method_Proc_258_139_1B81B900 (var_164)
  loc_1B81AB6: var_8A = var_15C.Text
  loc_1B81ACA: var_8A = 0
  loc_1B81AD8: Me.Requery -1
  loc_1B81B02: Me.Find "SearchCode ='" & var_164 & "'", 0, 1
  loc_1B81B19: If (global_188 <> "FAST") Then
  loc_1B81B27:   Me.Requery -1
  loc_1B81B2C: End If
  loc_1B81B4F: Call Proc_258_148_1079CA0(Proc_5_1_100CB50("INI", Me, global_116), var_17C)
  loc_1B81B5A: Call Proc_258_145_1BA10F4(var_8A)
  loc_1B81B5F: Call Proc_258_133_121F3D8()
  loc_1B81B69: Set var_88 = Nothing
  loc_1B81B71: Set var_138 = Nothing
  loc_1B81B74: Exit Sub
  loc_1B81B75: ' Referenced from: 1B7CC34
  loc_1B81B7B: If (var_8A = &HFF) Then
  loc_1B81B84:   unk_5B213D.RollbackTrans
  loc_1B81B89: End If
  loc_1B81B89: Proc_6_60_E62BC4()
  loc_1B81B8E: Exit Sub
End Sub

Public Sub Proc_258_140_134CB60(arg_C) '134CB60
  'Data Table: 5B2100
  Dim var_94 As Variant
  Dim var_9C As Variant
  Dim var_A4 As Variant
  Dim var_88 As Single
  Dim var_8C As Single
  Dim var_EC As Image
  loc_134C361: Set var_94 = CInt(arg_C)(var_96)
  loc_134C367: Call 0.Method_Proc_258_140_134CB608 ()
  loc_134C373: If ( <= var_96) Then
  loc_134C382:   (0).Enabled = 
  loc_134C396:   (&HFF).Visible = 
  loc_134C3AE:   Set var_94 = var_9C(CInt(arg_C))
  loc_134C3B4:   Call 0.Method_Proc_258_140_134CB600 (var_A0)
  loc_134C3BC:    = var_9C.Top
  loc_134C3CD:   Set var_A4 = ((var_A0 + CDbl(&H64)))
  loc_134C3D3:   var_A4.Y1 = 
  loc_134C3F1:   Set var_94 = var_9C(CInt(arg_C))
  loc_134C3F7:   Call 0.Method_Proc_258_140_134CB600 (var_A0)
  loc_134C3FF:    = var_9C.Top
  loc_134C410:   Set var_A4 = ((var_A0 + CDbl(&H64)))
  loc_134C416:   var_A4.Y2 = 
  loc_134C428:   var_88 = CDbl(225)
  loc_134C438:    = var_88(var_A8).Y1
  loc_134C44A:    = (var_A0).Y2
  loc_134C456:   var_8C = (var_A0 - var_A8)
  loc_134C47C:   global_84 = (Sqr(((var_88 * var_88) + (var_8C * var_8C))) / CDbl(2))
  loc_134C49A:   global_84 = (CDbl(585) / CDbl(2))(var_A8).Y2
  loc_134C4AC:    = var_8C(var_A0).Y1
  loc_134C4BF:   global_92 = ((var_A0 + var_A8) / CDbl(2))
  loc_134C4D5:   global_92(&HFF).Enabled = 
  loc_134C4DD: End If
  loc_134C4E1: var_AA = arg_C 'Byte
  loc_134C4EE: If (var_AA = CByte(0)) Then
  loc_134C501:   Set var_94 = var_8E(var_96)
  loc_134C507:   Call 0.Method_Proc_258_140_134CB608 (CInt(arg_C))
  loc_134C512:   For var_AE =  To var_96:  = var_AE 'Integer
  loc_134C527:     Set var_94 = var_A4(2)
  loc_134C52D:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134C538:     Set var_9C = 
  loc_134C53E:      = var_9C.ControlDefault
  loc_134C546:      = var_A4.Picture
  loc_134C55B:     Set var_E8 = var_EC(var_8E)
  loc_134C561:     Call 0.Method_Proc_258_140_134CB600 (var_E4)
  loc_134C569:     var_EC.Picture = 
  loc_134C587:   Next var_AE 'Integer
  loc_134C59B:   Set var_94 = var_9C(CInt(arg_C))
  loc_134C5A1:   Call 0.Method_Proc_258_140_134CB600 (&HFF)
  loc_134C5A9:   var_9C.FontBold = 
  loc_134C5B8: Else
  loc_134C5C1:   If (var_AA = CByte(1)) Then
  loc_134C5D4:     Set var_94 = var_8E(var_96)
  loc_134C5DA:     Call 0.Method_Proc_258_140_134CB608 (CInt(arg_C))
  loc_134C5E5:     For var_F4 =  To var_96:    = var_F4 'Integer
  loc_134C5FA:       Set var_94 = var_A4(2)
  loc_134C600:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134C60B:       Set var_9C = 
  loc_134C611:        = var_9C.ControlDefault
  loc_134C619:        = var_A4.Picture
  loc_134C62E:       Set var_E8 = var_EC(var_8E)
  loc_134C634:       Call 0.Method_Proc_258_140_134CB600 (var_E4)
  loc_134C63C:       var_EC.Picture = 
  loc_134C65A:     Next var_F4 'Integer
  loc_134C66E:     Set var_94 = var_9C(CInt(arg_C))
  loc_134C674:     Call 0.Method_Proc_258_140_134CB600 (&HFF)
  loc_134C67C:     var_9C.FontBold = 
  loc_134C69D:     Set var_94 = var_9C((CInt(arg_C) - 1))
  loc_134C6A3:     Call 0.Method_Proc_258_140_134CB600 (&HFF0000)
  loc_134C6AB:     var_9C.ForeColor = 
  loc_134C6C6:     Set var_94 = var_A4(1)
  loc_134C6CC:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134C6DD:      = .ControlDefault
  loc_134C6E5:      = var_A4.Picture
  loc_134C700:     Set var_E8 = var_EC((CInt(arg_C) - 1))
  loc_134C706:     Call 0.Method_Proc_258_140_134CB600 (var_E4)
  loc_134C70E:     var_EC.Picture = 
  loc_134C72C:   Else
  loc_134C735:     If (var_AA = CByte(2)) Then
  loc_134C748:       Set var_94 = var_8E(var_96)
  loc_134C74E:       Call 0.Method_Proc_258_140_134CB608 (CInt(arg_C))
  loc_134C759:       For var_F8 =  To var_96:      = var_F8 'Integer
  loc_134C76E:         Set var_94 = var_A4(2)
  loc_134C774:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134C77F:         Set var_9C = 
  loc_134C785:          = var_9C.ControlDefault
  loc_134C78D:          = var_A4.Picture
  loc_134C7A2:         Set var_E8 = var_EC(var_8E)
  loc_134C7A8:         Call 0.Method_Proc_258_140_134CB600 (var_E4)
  loc_134C7B0:         var_EC.Picture = 
  loc_134C7CE:       Next var_F8 'Integer
  loc_134C7E2:       Set var_94 = var_9C(CInt(arg_C))
  loc_134C7E8:       Call 0.Method_Proc_258_140_134CB600 (&HFF)
  loc_134C7F0:       var_9C.FontBold = 
  loc_134C811:       Set var_94 = var_9C((CInt(arg_C) - 1))
  loc_134C817:       Call 0.Method_Proc_258_140_134CB600 (&HFF0000)
  loc_134C81F:       var_9C.ForeColor = 
  loc_134C83A:       Set var_94 = var_A4(1)
  loc_134C840:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134C851:        = .ControlDefault
  loc_134C859:        = var_A4.Picture
  loc_134C874:       Set var_E8 = var_EC((CInt(arg_C) - 1))
  loc_134C87A:       Call 0.Method_Proc_258_140_134CB600 (var_E4)
  loc_134C882:       var_EC.Picture = 
  loc_134C8A0:     Else
  loc_134C8A9:       If (var_AA = CByte(3)) Then
  loc_134C8BC:         Set var_94 = var_8E(var_96)
  loc_134C8C2:         Call 0.Method_Proc_258_140_134CB608 (CInt(arg_C))
  loc_134C8CD:         For var_FC =  To var_96:        = var_FC 'Integer
  loc_134C8E2:           Set var_94 = var_A4(2)
  loc_134C8E8:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134C8F3:           Set var_9C = 
  loc_134C8F9:            = var_9C.ControlDefault
  loc_134C901:            = var_A4.Picture
  loc_134C916:           Set var_E8 = var_EC(var_8E)
  loc_134C91C:           Call 0.Method_Proc_258_140_134CB600 (var_E4)
  loc_134C924:           var_EC.Picture = 
  loc_134C942:         Next var_FC 'Integer
  loc_134C956:         Set var_94 = var_9C(CInt(arg_C))
  loc_134C95C:         Call 0.Method_Proc_258_140_134CB600 (&HFF)
  loc_134C964:         var_9C.FontBold = 
  loc_134C985:         Set var_94 = var_9C((CInt(arg_C) - 1))
  loc_134C98B:         Call 0.Method_Proc_258_140_134CB600 (&HFF0000)
  loc_134C993:         var_9C.ForeColor = 
  loc_134C9AE:         Set var_94 = var_A4(1)
  loc_134C9B4:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134C9C5:          = .ControlDefault
  loc_134C9CD:          = var_A4.Picture
  loc_134C9E8:         Set var_E8 = var_EC((CInt(arg_C) - 1))
  loc_134C9EE:         Call 0.Method_Proc_258_140_134CB600 (var_E4)
  loc_134C9F6:         var_EC.Picture = 
  loc_134CA14:       Else
  loc_134CA1D:         If (var_AA = CByte(4)) Then
  loc_134CA30:           Set var_94 = var_8E(var_96)
  loc_134CA36:           Call 0.Method_Proc_258_140_134CB608 (CInt(arg_C))
  loc_134CA41:           For var_100 =  To var_96:          = var_100 'Integer
  loc_134CA56:             Set var_94 = var_A4(2)
  loc_134CA5C:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134CA67:             Set var_9C = 
  loc_134CA6D:              = var_9C.ControlDefault
  loc_134CA75:              = var_A4.Picture
  loc_134CA8A:             Set var_E8 = var_EC(var_8E)
  loc_134CA90:             Call 0.Method_Proc_258_140_134CB600 (var_E4)
  loc_134CA98:             var_EC.Picture = 
  loc_134CAB6:           Next var_100 'Integer
  loc_134CAD0:           Set var_94 = var_9C((CInt(arg_C) - 1))
  loc_134CAD6:           Call 0.Method_Proc_258_140_134CB600 (&HFF0000)
  loc_134CADE:           var_9C.ForeColor = 
  loc_134CAF9:           Set var_94 = var_A4(1)
  loc_134CAFF:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E4)
  loc_134CB10:            = .ControlDefault
  loc_134CB18:            = var_A4.Picture
  loc_134CB33:           Set var_E8 = var_EC((CInt(arg_C) - 1))
  loc_134CB39:           Call 0.Method_Proc_258_140_134CB600 (var_E4)
  loc_134CB41:           var_EC.Picture = 
  loc_134CB5C:         End If
  loc_134CB5C:       End If
  loc_134CB5C:     End If
  loc_134CB5C:   End If
  loc_134CB5C: End If
  loc_134CB5C: Exit Sub
End Sub

Public Sub Proc_258_141_12F77F0(arg_C, arg_10) '12F77F0
  'Data Table: 5B2100
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_128 As Variant
  loc_12F70E8: Set var_88 = ()
  loc_12F70EE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_12F70FD: var_B8 = CVar((CLng() - 1)) 'Long
  loc_12F710D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(0)))
  loc_12F711E: var_F8 = CVar(CStr((CLng(var_B8) - 1))) 'String
  loc_12F7125: LateIdCallSt
  loc_12F7139: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F7148: var_108 = CVar((CLng(var_F8) - 1)) 'Long
  loc_12F7150: var_128 = CVar(CLng(4)) 'Long
  loc_12F7169: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(4)))
  loc_12F717B: LateIdCallSt
  loc_12F718F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F719E: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F71A6: var_128 = CVar(CLng(&HB)) 'Long
  loc_12F71BF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HB)))
  loc_12F71D1: LateIdCallSt
  loc_12F71E5: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F71F4: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F71FC: var_128 = CVar(CLng(3)) 'Long
  loc_12F7215: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(3)))
  loc_12F7227: LateIdCallSt
  loc_12F723B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F724A: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F7252: var_128 = CVar(CLng(5)) 'Long
  loc_12F726B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(5)))
  loc_12F727D: LateIdCallSt
  loc_12F7291: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F72A0: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F72A8: var_128 = CVar(CLng(6)) 'Long
  loc_12F72C1: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_12F72D3: LateIdCallSt
  loc_12F72E7: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F72F6: var_D8 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F72FE: var_108 = CVar(CLng(7)) 'Long
  loc_12F7333: LateIdCallSt
  loc_12F7349: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F7358: var_B8 = CVar((CLng(CVar(CStr(Format(arg_C, "0.00")))) - 1)) 'Long
  loc_12F7360: var_D8 = CVar(CLng(8)) 'Long
  loc_12F736E: LateIdCallSt
  loc_12F737C: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F738B: var_B8 = CVar((CLng("0.00") - 1)) 'Long
  loc_12F7393: var_D8 = CVar(CLng(9)) 'Long
  loc_12F7398: var_108 = "0.00"
  loc_12F73A1: LateIdCallSt
  loc_12F73AF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F73BE: var_108 = CVar((CLng(var_108) - 1)) 'Long
  loc_12F73C6: var_128 = CVar(CLng(&H15)) 'Long
  loc_12F73DF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H15)))
  loc_12F73F1: LateIdCallSt
  loc_12F7405: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F7414: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F741C: var_128 = CVar(CLng(&H16)) 'Long
  loc_12F7435: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H16)))
  loc_12F7447: LateIdCallSt
  loc_12F745B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F746A: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F7472: var_128 = CVar(CLng(&H17)) 'Long
  loc_12F748B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H17)))
  loc_12F749D: LateIdCallSt
  loc_12F74B1: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F74C0: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F74C8: var_128 = CVar(CLng(&H13)) 'Long
  loc_12F74E1: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H13)))
  loc_12F74F3: LateIdCallSt
  loc_12F7507: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F7516: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F751E: var_128 = CVar(CLng(&H14)) 'Long
  loc_12F7537: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H14)))
  loc_12F7549: LateIdCallSt
  loc_12F755D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F756C: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F7574: var_128 = CVar(CLng(&H18)) 'Long
  loc_12F758D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H18)))
  loc_12F759F: LateIdCallSt
  loc_12F75B3: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F75C2: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F75CA: var_128 = CVar(CLng(&H1A)) 'Long
  loc_12F75E3: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H1A)))
  loc_12F75F5: LateIdCallSt
  loc_12F7609: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F7618: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F7620: var_128 = CVar(CLng(&H1B)) 'Long
  loc_12F7639: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H1B)))
  loc_12F764B: LateIdCallSt
  loc_12F765F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F766E: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F7676: var_128 = CVar(CLng(&H1C)) 'Long
  loc_12F768F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H1C)))
  loc_12F76A1: LateIdCallSt
  loc_12F76B5: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F76C4: var_B8 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F76CC: var_D8 = CVar(CLng(&H19)) 'Long
  loc_12F76DA: LateIdCallSt
  loc_12F76E8: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F76F7: var_B8 = CVar((CLng("N") - 1)) 'Long
  loc_12F76FF: var_D8 = CVar(CLng(&H1E)) 'Long
  loc_12F7704: var_108 = "Free"
  loc_12F770D: LateIdCallSt
  loc_12F771B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F772A: var_108 = CVar((CLng(var_108) - 1)) 'Long
  loc_12F7732: var_128 = CVar(CLng(&H1F)) 'Long
  loc_12F774B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H1F)))
  loc_12F775D: LateIdCallSt
  loc_12F7771: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F7780: var_108 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) - 1)) 'Long
  loc_12F7788: var_128 = CVar(CLng(&H10)) 'Long
  loc_12F77A1: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&H10)))
  loc_12F77B3: LateIdCallSt
  loc_12F77C7: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_88)
  loc_12F77D6: var_B8 = CVar((CLng(CVar(CStr(CVar(CLng(arg_10))))) + 1)) 'Long
  loc_12F77DE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(arg_10)))
  loc_12F77E8: Set var_88 = Nothing 
  loc_12F77EC: Exit Sub
End Sub

Public Sub Proc_258_142_E54360
  'Data Table: 5B2100
  loc_E5433C: If ((CLng(arg_10) = -3) Or ((arg_14 Mod CInt(&H10)) = 0)) Then
  loc_E54347:   Me.Enabled = False
  loc_E5434E: Else
  loc_E54355:   Me.Enabled = True
  loc_E54359: End If
  loc_E54359: Proc_258_142_E54360 = 
End Sub

Public Sub Proc_258_143_E61DB8
  'Data Table: 5B2100
  loc_E61D95: If (((arg_10 = CInt(&H10)) Or (CLng(arg_10) = -1)) Or ((CLng(arg_10) = -3) And (arg_14 < CInt(&H10)))) Then
  loc_E61DA0:   Me.Enabled = False
  loc_E61DA7: Else
  loc_E61DAE:   Me.Enabled = True
  loc_E61DB2: End If
  loc_E61DB2: Proc_258_143_E61DB8 = 
End Sub

Public Sub Proc_258_144_18EC2F4(arg_C) '18EC2F4
  'Data Table: 5B2100
  Dim var_9A As Integer
  Dim var_B4 As Long
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_114 As Variant
  Dim var_C4 As String
  Dim var_158 As Variant
  Dim var_180 As String
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_A0 As Fields15
  Dim var_134 As Variant
  Dim var_1F4 As Double
  Dim var_92 As Integer
  Dim var_16C As TextBox
  Dim var_184 As Fields15
  Dim var_1D8 As Field20
  Dim unk_5B213D As Connection15
  Dim var_98 As Recordset15
  loc_18E9893: var_9A = arg_C
  loc_18E989C: If (var_9A = 0) Then
  loc_18E98A3:   Set var_A0 = (var_9A)
  loc_18E98A9:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_18E98C2:   If (CLng() = CLng(2)) Then
  loc_18E9913:     Set var_A0 = var_C0(arg_C)
  loc_18E9919:     Call 0.Method_Proc_258_144_18EC2F40 (var_C4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_18E9921:     var_B4 = var_C0.Text
  loc_18E9939:     If ( Or (var_C4 = vbNullString)) Then
  loc_18E9940:       Set var_A0 = ()
  loc_18E9946:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E996C:       LateIdCallSt
  loc_18E9982:       Set var_A0 = CVar(CLng())(CVar(CLng(2))(vbNullString))
  loc_18E9988:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E9991:       var_D4 = CVar(CLng()) 'Long
  loc_18E99A8:       Set var_C0 = CVar(CLng(1))(vbNullString)
  loc_18E99AE:       LateIdCallSt
  loc_18E99C3:     Else
  loc_18E99CD:       Set var_A0 = var_C0(global_224)
  loc_18E99D3:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A(var_D4)
  loc_18E99ED:       Set var_C0 = CVar(CLng())(CVar(CLng(1)))
  loc_18E99F3:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18E9A0D:       Set var_138 = ( <> CStr())(global_224)
  loc_18E9A13:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E9A2D:       Set var_16C = CVar(CLng())(CVar(CLng(1)))
  loc_18E9A33:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18E9A47:       Set var_184 = (( = CStr()))
  loc_18E9A4D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E9A67:       Set var_1D8 = CVar(CLng())(CVar(CLng(1)))
  loc_18E9A6D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18E9AA9:       If ( Or ( And (CStr() = vbNullString))) Then
  loc_18E9AB0:         Set var_138 = ()
  loc_18E9AB6:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E9B08:         LateIdCallSt
  loc_18E9B28:         Set var_138 = CVar(CLng())(CVar(CLng(2))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_18E9B2E:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E9B37:         var_E4 = CVar(CLng()) 'Long
  loc_18E9B80:         LateIdCallSt
  loc_18E9BD0:         global_308 = CStr(Me.Fields.Item("Name").Value)
  loc_18E9C0F:         var_C4 = CStr(Me.Fields.Item("Code").Value)
  loc_18E9C15:         global_312 = var_C4
  loc_18E9C2A:         Set var_A0 = var_E4(CVar(CLng(1))(CVar(CStr(Me.Fields.Item("Code").Value))))
  loc_18E9C30:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E9C56:         LateIdCallSt
  loc_18E9C6C:         Set var_A0 = CVar(CLng())(CVar(CLng(4))(vbNullString))
  loc_18E9C72:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E9C98:         LateIdCallSt
  loc_18E9CAE:         Set var_A0 = CVar(CLng())(CVar(CLng(&HB))(vbNullString))
  loc_18E9CB4:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E9CDA:         LateIdCallSt
  loc_18E9CF0:         Set var_A0 = CVar(CLng())(CVar(CLng(3))(vbNullString))
  loc_18E9CF6:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E9CFF:         var_D4 = CVar(CLng()) 'Long
  loc_18E9D16:         Set var_C0 = CVar(CLng(&H1A))(vbNullString)
  loc_18E9D1C:         LateIdCallSt
  loc_18E9D2E:       End If
  loc_18E9D2E:     End If
  loc_18E9D31:   Else
  loc_18E9D38:     If (var_B4 = CLng(3)) Then
  loc_18E9D47:       Set var_A0 = var_C0(0)
  loc_18E9D4D:       Call 0.Method_Proc_258_144_18EC2F40 (var_C4, var_C0)
  loc_18E9D55:       var_D4 = var_C0.Text
  loc_18E9D6C:       If (var_C4 = "9999") Then
  loc_18E9D79:         Set global_300 = New RsSpecItemEntry
  loc_18E9D8F:         RsSpecItemEntry.PKOTForm = Me
  loc_18E9DA3:         RsSpecItemEntry.pRestCode = global_76
  loc_18E9DAF:         Set var_A0 = (var_C4)
  loc_18E9DB5:          = RsSpecItemEntry.Label.Caption
  loc_18E9DC3:         RsSpecItemEntry.PRestName = var_C4
  loc_18E9DE1:         Call 0.Method_arg_2B0 (1)
  loc_18E9DEA:         Set var_A0 = (var_E4)
  loc_18E9DF0:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E9E24:         LateIdCallSt
  loc_18E9E3E:         Set var_A0 = (CVar(CLng())(CVar(Proc_6_38_E68A98(global_188, CVar(CLng(&H15))))))
  loc_18E9E44:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E9E72:         Set var_C0 = CVar(CLng())(CVar(Proc_6_38_E68A98(global_192, CVar(CLng(&H16)))))
  loc_18E9E78:         LateIdCallSt
  loc_18E9E92:         Set var_138 = (var_C0)
  loc_18E9E98:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18E9EA1:         var_D4 = CVar(CLng()) 'Long
  loc_18E9EBC:         Set var_A0 = var_C0(CInt(3))
  loc_18E9EC2:         Call 0.Method_Proc_258_144_18EC2F40 (var_C4, CVar(CLng(&H17)))
  loc_18E9ECA:         var_D4 = var_C0.Tag
  loc_18E9EDA:         Set var_16C = (CVar(var_C4))
  loc_18E9EE0:         LateIdCallSt
  loc_18E9EFD:       Else
  loc_18E9F14:         If (Me.RecordCount > 0) Then
  loc_18E9F1D:           Me.MoveFirst
  loc_18E9F22:         End If
  loc_18E9F39:         If (Me.RecordCount > 0) Then
  loc_18E9F49:           Set var_A0 = var_C0(arg_C)
  loc_18E9F4F:           Call 0.Method_Proc_258_144_18EC2F40 (var_C4)
  loc_18E9F57:           var_16C = var_C0.Text
  loc_18E9F64:           var_1F4 = Val(var_C4)
  loc_18E9F8A:           Me.Find "DispCode=" & CStr(var_1F4), 0, 1
  loc_18E9F9F:         End If
  loc_18E9FED:         Set var_A0 = var_C0(arg_C)
  loc_18E9FF3:         Call 0.Method_Proc_258_144_18EC2F40 (var_C4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_18E9FFB:         var_D4 = var_C0.Text
  loc_18EA013:         If (var_1F4 Or (var_C4 = vbNullString)) Then
  loc_18EA01A:           Set var_A0 = ()
  loc_18EA020:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA046:           LateIdCallSt
  loc_18EA05C:           Set var_A0 = CVar(CLng())(CVar(CLng(4))(vbNullString))
  loc_18EA062:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA088:           LateIdCallSt
  loc_18EA09E:           Set var_A0 = CVar(CLng())(CVar(CLng(&HB))(vbNullString))
  loc_18EA0A4:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA0CA:           LateIdCallSt
  loc_18EA0E0:           Set var_A0 = CVar(CLng())(CVar(CLng(3))(vbNullString))
  loc_18EA0E6:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA10C:           LateIdCallSt
  loc_18EA122:           Set var_A0 = CVar(CLng())(CVar(CLng(6))(vbNullString))
  loc_18EA128:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA14E:           LateIdCallSt
  loc_18EA164:           Set var_A0 = CVar(CLng())(CVar(CLng(3))(vbNullString))
  loc_18EA16A:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA190:           LateIdCallSt
  loc_18EA1A6:           Set var_A0 = CVar(CLng())(CVar(CLng(8))(vbNullString))
  loc_18EA1AC:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA1D2:           LateIdCallSt
  loc_18EA1E8:           Set var_A0 = CVar(CLng())(CVar(CLng(9))(vbNullString))
  loc_18EA1EE:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA214:           LateIdCallSt
  loc_18EA22A:           Set var_A0 = CVar(CLng())(CVar(CLng(&H15))(vbNullString))
  loc_18EA230:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA256:           LateIdCallSt
  loc_18EA26C:           Set var_A0 = CVar(CLng())(CVar(CLng(&H16))(vbNullString))
  loc_18EA272:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA298:           LateIdCallSt
  loc_18EA2AE:           Set var_A0 = CVar(CLng())(CVar(CLng(&H17))(vbNullString))
  loc_18EA2B4:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA2DA:           LateIdCallSt
  loc_18EA2F0:           Set var_A0 = CVar(CLng())(CVar(CLng(&H13))(vbNullString))
  loc_18EA2F6:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA31C:           LateIdCallSt
  loc_18EA332:           Set var_A0 = CVar(CLng())(CVar(CLng(&H14))(vbNullString))
  loc_18EA338:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA35E:           LateIdCallSt
  loc_18EA374:           Set var_A0 = CVar(CLng())(CVar(CLng(&H18))(vbNullString))
  loc_18EA37A:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA3A0:           LateIdCallSt
  loc_18EA3B6:           Set var_A0 = CVar(CLng())(CVar(CLng(&H1A))(vbNullString))
  loc_18EA3BC:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA3E2:           LateIdCallSt
  loc_18EA3F8:           Set var_A0 = CVar(CLng())(CVar(CLng(&H1B))(vbNullString))
  loc_18EA3FE:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA424:           LateIdCallSt
  loc_18EA43A:           Set var_A0 = CVar(CLng())(CVar(CLng(&H1C))(vbNullString))
  loc_18EA440:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA466:           LateIdCallSt
  loc_18EA47C:           Set var_A0 = CVar(CLng())(CVar(CLng(&H1E))(vbNullString))
  loc_18EA482:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA48B:           var_D4 = CVar(CLng()) 'Long
  loc_18EA4A2:           Set var_C0 = CVar(CLng(&H1F))(vbNullString)
  loc_18EA4A8:           LateIdCallSt
  loc_18EA4BD:         Else
  loc_18EA4C7:           Set var_A0 = var_C0(global_224)
  loc_18EA4CD:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A(var_D4)
  loc_18EA4E7:           Set var_C0 = CVar(CLng())(CVar(CLng(&HB)))
  loc_18EA4ED:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18EA507:           Set var_138 = ( <> CStr())(global_224)
  loc_18EA50D:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA527:           Set var_16C = CVar(CLng())(CVar(CLng(&HB)))
  loc_18EA52D:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18EA538:           var_180 = CStr()
  loc_18EA541:           Set var_184 = (( = var_180))
  loc_18EA547:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA561:           Set var_1D8 = CVar(CLng())(CVar(CLng(&HB)))
  loc_18EA567:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18EA5A3:           If ( Or ( And (CStr() = vbNullString))) Then
  loc_18EA5AA:             Set var_138 = ()
  loc_18EA5B0:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA602:             LateIdCallSt
  loc_18EA622:             Set var_138 = CVar(CLng())(CVar(CLng(4))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_18EA628:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA67A:             LateIdCallSt
  loc_18EA69A:             Set var_138 = CVar(CLng())(CVar(CLng(&HB))(CVar(CStr(Me.Fields.Item("Code").Value))))
  loc_18EA6A0:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA6F2:             LateIdCallSt
  loc_18EA712:             Set var_138 = CVar(CLng())(CVar(CLng(3))(CVar(CStr(Me.Fields.Item("DispCode").Value))))
  loc_18EA718:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA764:             Set var_16C = CVar(CLng(6))(CVar(CStr(Me.Fields.Item("Unit").Value)))
  loc_18EA76A:             LateIdCallSt
  loc_18EA78A:             Set var_A0 = CVar(CLng())(var_16C)
  loc_18EA790:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA79A:             var_92 = CInt(CLng())
  loc_18EA7A7:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_18EA7C1:             Set var_A0 = CVar(CLng(0))(CVar(CStr(var_92)))
  loc_18EA7C7:             LateIdCallSt
  loc_18EA7D9:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_18EA7F0:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D4(CVar(CLng(7))))
  loc_18EA7FB:             var_C4 = CStr(var_D4)
  loc_18EA811:             If (CDbl(Val(var_C4)) = CDbl(0)) Then
  loc_18EA818:               var_D4 = CVar(CLng(var_92)) 'Long
  loc_18EA82F:               Set var_A0 = CVar(CLng(7))("1.0")
  loc_18EA835:               LateIdCallSt
  loc_18EA840:             End If
  loc_18EA855:             var_A0 = Me.Fields
  loc_18EA878:             Set var_138 = var_16C(CInt(1))
  loc_18EA87E:             Call 0.Method_Proc_258_144_18EC2F40 (var_180, var_A0)
  loc_18EA886:             var_D4 = var_16C.Text
  loc_18EA8CF:             Call Proc_258_162_F20808(CStr(var_A0.Item("Code").Value), var_180, CStr(Me.Fields.Item("OutletCode").Value))
  loc_18EA8D8:             Set var_1FC = var_92(var_1F4)
  loc_18EA8DE:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EA8EF:             var_158 = CVar(CLng(8)) 'Long
  loc_18EA92A:             LateIdCallSt
  loc_18EA997:             Set var_138 = var_16C(CInt(1))
  loc_18EA99D:             Call 0.Method_Proc_258_144_18EC2F40 (var_180, 1(CVar(CStr(Format(CVar(var_1F4), "0.00")))), 1)
  loc_18EA9A5:             var_158 = var_16C.Text
  loc_18EA9EE:             Call Proc_258_162_F20808(CStr(Me.Fields.Item("Code").Value), var_180, CStr(Me.Fields.Item("OutletCode").Value))
  loc_18EA9F7:             Set var_1FC = CVar(CLng())(var_1F4)
  loc_18EA9FD:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EAA06:             var_114 = CVar(CLng()) 'Long
  loc_18EAA0E:             var_158 = CVar(CLng(9)) 'Long
  loc_18EAA43:             Set var_210 = 1(CVar(CStr(Format(CVar(var_1F4), "0.00"))))
  loc_18EAA49:             LateIdCallSt
  loc_18EAA7E:           End If
  loc_18EAA82:           Set var_A0 = 1(var_210)
  loc_18EAA88:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A(var_158)
  loc_18EAABC:           LateIdCallSt
  loc_18EAAD6:           Set var_A0 = (CVar(CLng(var_114))(CVar(Proc_6_38_E68A98(global_188, CVar(CLng(&H15))))))
  loc_18EAADC:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EAB0A:           Set var_C0 = CVar(CLng())(CVar(Proc_6_38_E68A98(global_192, CVar(CLng(&H16)))))
  loc_18EAB10:           LateIdCallSt
  loc_18EAB2A:           Set var_138 = (var_C0)
  loc_18EAB30:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EAB39:           var_D4 = CVar(CLng()) 'Long
  loc_18EAB54:           Set var_A0 = var_C0(CInt(3))
  loc_18EAB5A:           Call 0.Method_Proc_258_144_18EC2F40 (var_C4, CVar(CLng(&H17)))
  loc_18EAB62:           var_D4 = var_C0.Tag
  loc_18EAB6A:           var_134 = CVar(var_C4) 'String
  loc_18EAB78:           LateIdCallSt
  loc_18EAB96:           Set var_138 = ((var_134))
  loc_18EAB9C:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EABEB:           LateIdCallSt
  loc_18EAC09:           Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H13))))))
  loc_18EAC0F:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EAC5E:           LateIdCallSt
  loc_18EAC7C:           Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14))))))
  loc_18EAC82:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EACD1:           LateIdCallSt
  loc_18EACEF:           Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18))))))
  loc_18EACF5:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EAD44:           LateIdCallSt
  loc_18EAD62:           Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1A))))))
  loc_18EAD68:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EADB7:           LateIdCallSt
  loc_18EADD5:           Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B))))))
  loc_18EADDB:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EAE2A:           LateIdCallSt
  loc_18EAE48:           Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateIncTax")), CVar(CLng(&H1C))))))
  loc_18EAE4E:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EAE9D:           LateIdCallSt
  loc_18EAEBB:           Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H19))))))
  loc_18EAEC1:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EAF10:           LateIdCallSt
  loc_18EAF2E:           Set var_A0 = (CVar(CLng())(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("CatType")), CVar(CLng(&H1F))))))
  loc_18EAF34:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EAF3D:           var_D4 = CVar(CLng()) 'Long
  loc_18EAF54:           Set var_C0 = CVar(CLng(&H1E))(vbNullString)
  loc_18EAF5A:           LateIdCallSt
  loc_18EAF7F:           var_D4 = "TaxStru"
  loc_18EAF96:           var_C0 = Me.Fields.Item(var_D4)
  loc_18EAFA7:           var_C4 = Proc_6_38_E68A98(CVar(var_C0), "Select * from taxStru where code='", var_134, -1)
  loc_18EAFBB:           unk_5B213D.Execute var_138 & var_C4 & "'", var_C0, var_D4
  loc_18EAFC6:           Set var_98 = var_138
  loc_18EAFF4:           If (var_98.RecordCount > 0) Then
  loc_18EAFFB:             Set var_138 = ()
  loc_18EB001:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB00A:             var_E4 = CVar(CLng()) 'Long
  loc_18EB02E:             var_C0 = var_98.Fields.Item("Rate")
  loc_18EB03D:             Proc_6_39_E7C810(var_134, CVar(var_C0))
  loc_18EB04E:             Set var_16C = CVar(CLng(&H10))(CVar(CStr(var_134)))
  loc_18EB054:             LateIdCallSt
  loc_18EB070:           End If
  loc_18EB075:           Call Proc_258_158_190485C(&H32, var_16C)
  loc_18EB07A:         End If
  loc_18EB07A:       End If
  loc_18EB07D:     Else
  loc_18EB084:       If (var_B4 = CLng(4)) Then
  loc_18EB0D5:         Set var_A0 = var_C0(arg_C)
  loc_18EB0DB:         Call 0.Method_Proc_258_144_18EC2F40 (var_C4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_18EB0E3:         var_E4 = var_C0.Text
  loc_18EB0FB:         If ( Or (var_C4 = vbNullString)) Then
  loc_18EB102:           Set var_A0 = ()
  loc_18EB108:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB12E:           LateIdCallSt
  loc_18EB144:           Set var_A0 = CVar(CLng())(CVar(CLng(4))(vbNullString))
  loc_18EB14A:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB170:           LateIdCallSt
  loc_18EB186:           Set var_A0 = CVar(CLng())(CVar(CLng(&HB))(vbNullString))
  loc_18EB18C:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB1B2:           LateIdCallSt
  loc_18EB1C8:           Set var_A0 = CVar(CLng())(CVar(CLng(3))(vbNullString))
  loc_18EB1CE:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB1F4:           LateIdCallSt
  loc_18EB20A:           Set var_A0 = CVar(CLng())(CVar(CLng(6))(vbNullString))
  loc_18EB210:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB236:           LateIdCallSt
  loc_18EB24C:           Set var_A0 = CVar(CLng())(CVar(CLng(3))(vbNullString))
  loc_18EB252:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB278:           LateIdCallSt
  loc_18EB28E:           Set var_A0 = CVar(CLng())(CVar(CLng(8))(vbNullString))
  loc_18EB294:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB2BA:           LateIdCallSt
  loc_18EB2D0:           Set var_A0 = CVar(CLng())(CVar(CLng(9))(vbNullString))
  loc_18EB2D6:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB2FC:           LateIdCallSt
  loc_18EB312:           Set var_A0 = CVar(CLng())(CVar(CLng(&H15))(vbNullString))
  loc_18EB318:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB33E:           LateIdCallSt
  loc_18EB354:           Set var_A0 = CVar(CLng())(CVar(CLng(&H16))(vbNullString))
  loc_18EB35A:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB380:           LateIdCallSt
  loc_18EB396:           Set var_A0 = CVar(CLng())(CVar(CLng(&H17))(vbNullString))
  loc_18EB39C:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB3C2:           LateIdCallSt
  loc_18EB3D8:           Set var_A0 = CVar(CLng())(CVar(CLng(&H1A))(vbNullString))
  loc_18EB3DE:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB404:           LateIdCallSt
  loc_18EB41A:           Set var_A0 = CVar(CLng())(CVar(CLng(&H1B))(vbNullString))
  loc_18EB420:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB446:           LateIdCallSt
  loc_18EB45C:           Set var_A0 = CVar(CLng())(CVar(CLng(&H1C))(vbNullString))
  loc_18EB462:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB488:           LateIdCallSt
  loc_18EB49E:           Set var_A0 = CVar(CLng())(CVar(CLng(&H1F))(vbNullString))
  loc_18EB4A4:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB4AD:           var_D4 = CVar(CLng()) 'Long
  loc_18EB4C4:           Set var_C0 = CVar(CLng(&H1E))(vbNullString)
  loc_18EB4CA:           LateIdCallSt
  loc_18EB4DF:         Else
  loc_18EB4E9:           Set var_A0 = var_C0(global_224)
  loc_18EB4EF:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A(var_D4)
  loc_18EB509:           Set var_C0 = CVar(CLng())(CVar(CLng(&HB)))
  loc_18EB50F:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18EB529:           Set var_138 = ( <> CStr())(global_224)
  loc_18EB52F:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB549:           Set var_16C = CVar(CLng())(CVar(CLng(&HB)))
  loc_18EB54F:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18EB55A:           var_180 = CStr()
  loc_18EB563:           Set var_184 = (( = var_180))
  loc_18EB569:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB583:           Set var_1D8 = CVar(CLng())(CVar(CLng(&HB)))
  loc_18EB589:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_18EB5C5:           If ( Or ( And (CStr() = vbNullString))) Then
  loc_18EB5CC:             Set var_A0 = ()
  loc_18EB5D2:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB5E9:             Set var_138 = (CInt(CLng()))
  loc_18EB5EF:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB641:             LateIdCallSt
  loc_18EB661:             Set var_138 = CVar(CLng())(CVar(CLng(4))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_18EB667:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB6B9:             LateIdCallSt
  loc_18EB6D9:             Set var_138 = CVar(CLng())(CVar(CLng(&HB))(CVar(CStr(Me.Fields.Item("Code").Value))))
  loc_18EB6DF:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB731:             LateIdCallSt
  loc_18EB751:             Set var_138 = CVar(CLng())(CVar(CLng(3))(CVar(CStr(Me.Fields.Item("DispCode").Value))))
  loc_18EB757:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB7A3:             Set var_16C = CVar(CLng(6))(CVar(CStr(Me.Fields.Item("Unit").Value)))
  loc_18EB7A9:             LateIdCallSt
  loc_18EB7C9:             Set var_A0 = CVar(CLng())(var_16C)
  loc_18EB7CF:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB7D9:             var_92 = CInt(CLng())
  loc_18EB7E6:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_18EB800:             Set var_A0 = CVar(CLng(0))(CVar(CStr(var_92)))
  loc_18EB806:             LateIdCallSt
  loc_18EB818:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_18EB82F:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_D4(CVar(CLng(7))))
  loc_18EB83A:             var_C4 = CStr(var_D4)
  loc_18EB850:             If (CDbl(Val(var_C4)) = CDbl(0)) Then
  loc_18EB857:               var_D4 = CVar(CLng(var_92)) 'Long
  loc_18EB86E:               Set var_A0 = CVar(CLng(7))("1.0")
  loc_18EB874:               LateIdCallSt
  loc_18EB87F:             End If
  loc_18EB894:             var_A0 = Me.Fields
  loc_18EB8B7:             Set var_138 = var_16C(CInt(1))
  loc_18EB8BD:             Call 0.Method_Proc_258_144_18EC2F40 (var_180, var_A0)
  loc_18EB8C5:             var_D4 = var_16C.Text
  loc_18EB90E:             Call Proc_258_162_F20808(CStr(var_A0.Item("Code").Value), var_180, CStr(Me.Fields.Item("OutletCode").Value))
  loc_18EB917:             Set var_1FC = var_92(var_1F4)
  loc_18EB91D:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EB92E:             var_158 = CVar(CLng(8)) 'Long
  loc_18EB969:             LateIdCallSt
  loc_18EB9D6:             Set var_138 = var_16C(CInt(1))
  loc_18EB9DC:             Call 0.Method_Proc_258_144_18EC2F40 (var_180, 1(CVar(CStr(Format(CVar(var_1F4), "0.00")))), 1)
  loc_18EB9E4:             var_158 = var_16C.Text
  loc_18EBA2D:             Call Proc_258_162_F20808(CStr(Me.Fields.Item("Code").Value), var_180, CStr(Me.Fields.Item("OutletCode").Value))
  loc_18EBA36:             Set var_1FC = CVar(CLng())(var_1F4)
  loc_18EBA3C:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EBA88:             LateIdCallSt
  loc_18EBAC1:             Set var_A0 = 1(1(CVar(CStr(Format(CVar(var_1F4), "0.00")))))
  loc_18EBAC7:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A(CVar(CLng(9)))
  loc_18EBAFB:             LateIdCallSt
  loc_18EBB15:             Set var_A0 = (CVar(CLng(CVar(CLng())))(CVar(Proc_6_38_E68A98(global_188, CVar(CLng(&H15))))))
  loc_18EBB1B:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EBB49:             Set var_C0 = CVar(CLng())(CVar(Proc_6_38_E68A98(global_192, CVar(CLng(&H16)))))
  loc_18EBB4F:             LateIdCallSt
  loc_18EBB69:             Set var_138 = (var_C0)
  loc_18EBB6F:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EBB78:             var_D4 = CVar(CLng()) 'Long
  loc_18EBB93:             Set var_A0 = var_C0(CInt(3))
  loc_18EBB99:             Call 0.Method_Proc_258_144_18EC2F40 (var_C4, CVar(CLng(&H17)))
  loc_18EBBA1:             var_D4 = var_C0.Tag
  loc_18EBBA9:             var_134 = CVar(var_C4) 'String
  loc_18EBBB7:             LateIdCallSt
  loc_18EBBD5:             Set var_138 = ((var_134))
  loc_18EBBDB:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EBC2A:             LateIdCallSt
  loc_18EBC48:             Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H13))))))
  loc_18EBC4E:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EBC9D:             LateIdCallSt
  loc_18EBCBB:             Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14))))))
  loc_18EBCC1:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EBD10:             LateIdCallSt
  loc_18EBD2E:             Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18))))))
  loc_18EBD34:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EBD83:             LateIdCallSt
  loc_18EBDA1:             Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1A))))))
  loc_18EBDA7:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EBDF6:             LateIdCallSt
  loc_18EBE14:             Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B))))))
  loc_18EBE1A:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EBE69:             LateIdCallSt
  loc_18EBE87:             Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateIncTax")), CVar(CLng(&H1C))))))
  loc_18EBE8D:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EBEDC:             LateIdCallSt
  loc_18EBEFA:             Set var_138 = (CVar(CLng())(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H19))))))
  loc_18EBF00:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EBF4F:             LateIdCallSt
  loc_18EBF6D:             Set var_A0 = (CVar(CLng())(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("CatType")), CVar(CLng(&H1F))))))
  loc_18EBF73:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EBF7C:             var_D4 = CVar(CLng()) 'Long
  loc_18EBF93:             Set var_C0 = CVar(CLng(&H1E))(vbNullString)
  loc_18EBF99:             LateIdCallSt
  loc_18EBFBE:             var_D4 = "TaxStru"
  loc_18EBFD5:             var_C0 = Me.Fields.Item(var_D4)
  loc_18EBFE6:             var_C4 = Proc_6_38_E68A98(CVar(var_C0), "Select * from taxStru where code='", var_134, -1)
  loc_18EBFFA:             unk_5B213D.Execute var_138 & var_C4 & "'", var_C0, var_D4
  loc_18EC005:             Set var_98 = var_138
  loc_18EC033:             If (var_98.RecordCount > 0) Then
  loc_18EC03A:               Set var_138 = ()
  loc_18EC040:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EC049:               var_E4 = CVar(CLng()) 'Long
  loc_18EC06D:               var_C0 = var_98.Fields.Item("Rate")
  loc_18EC07C:               Proc_6_39_E7C810(var_134, CVar(var_C0))
  loc_18EC08D:               Set var_16C = CVar(CLng(&H10))(CVar(CStr(var_134)))
  loc_18EC093:               LateIdCallSt
  loc_18EC0AF:             End If
  loc_18EC0B4:             Call Proc_258_158_190485C(&H32, var_16C)
  loc_18EC0B9:           End If
  loc_18EC0B9:         End If
  loc_18EC0BC:       Else
  loc_18EC0C3:         If (var_B4 = CLng(7)) Then
  loc_18EC0D0:           Set var_A0 = var_C0(arg_C)
  loc_18EC0D6:           Call 0.Method_Proc_258_144_18EC2F40 (var_E4)
  loc_18EC0EE:           If Not(IsNumeric(CVar(var_C0))) Then
  loc_18EC0F5:             var_C4 = CStr(0)
  loc_18EC102:             Set var_A0 = var_C0(arg_C)
  loc_18EC108:             Call 0.Method_Proc_258_144_18EC2F40 (var_C4)
  loc_18EC110:             var_C0.Text = 
  loc_18EC11F:           End If
  loc_18EC12C:           Set var_A0 = var_C0(arg_C)
  loc_18EC132:           Call 0.Method_Proc_258_144_18EC2F40 (var_C4)
  loc_18EC13A:            = var_C0.Text
  loc_18EC143:           Set var_138 = ()
  loc_18EC149:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EC152:           var_E4 = CVar(CLng()) 'Long
  loc_18EC15A:           var_104 = CVar(CLng(7)) 'Long
  loc_18EC194:           LateIdCallSt
  loc_18EC1B9:           Call Proc_258_158_190485C(&H32, 1(CVar(CStr(Format(CVar(var_C4), "0.00")))), 1)
  loc_18EC1C1:         Else
  loc_18EC1C8:           If (var_B4 = CLng(8)) Then
  loc_18EC1D5:             Set var_A0 = var_C0(arg_C)
  loc_18EC1DB:             Call 0.Method_Proc_258_144_18EC2F40 (var_104)
  loc_18EC1F3:             If Not(IsNumeric(CVar(var_C0))) Then
  loc_18EC1FA:               var_C4 = CStr(0)
  loc_18EC207:               Set var_A0 = var_C0(arg_C)
  loc_18EC20D:               Call 0.Method_Proc_258_144_18EC2F40 (var_C4)
  loc_18EC215:               var_C0.Text = var_E4
  loc_18EC224:             End If
  loc_18EC231:             Set var_A0 = var_C0(arg_C)
  loc_18EC237:             Call 0.Method_Proc_258_144_18EC2F40 (var_C4)
  loc_18EC23F:              = var_C0.Text
  loc_18EC24C:             var_1F4 = Val(var_C4)
  loc_18EC253:             Set var_138 = (var_1F4)
  loc_18EC259:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_18EC26B:             Set var_16C = (CVar(CLng()))
  loc_18EC271:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_18EC27A:             var_114 = CVar(CLng()) 'Long
  loc_18EC2B5:             LateIdCallSt
  loc_18EC2E1:             Call Proc_258_158_190485C(&H32, 1(CVar(CStr(Format(CVar(var_1F4), "0.00")))))
  loc_18EC2E6:           End If
  loc_18EC2E6:         End If
  loc_18EC2E6:       End If
  loc_18EC2E6:     End If
  loc_18EC2E6:   End If
  loc_18EC2E6: End If
  loc_18EC2EB: Proc_258_144_18EC2F4 = &HFF
End Sub

Public Sub Proc_258_145_1BA10F4
  'Data Table: 5B2100
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_118 As String
  Dim unk_5B213D As Connection15
  Dim var_140 As Recordset15
  Dim var_D4 As Variant
  Dim var_144 As Variant
  Dim var_148 As String
  Dim var_13C As Variant
  Dim var_90 As Recordset15
  Dim var_154 As Double
  Dim var_88 As Recordset15
  Dim var_16C As Variant
  Dim var_92 As Integer
  Dim var_A6 As Integer
  Dim var_A2 As Integer
  Dim var_128 As Variant
  Dim var_184 As Variant
  Dim var_138 As Variant
  Dim var_1A4 As Variant
  Dim var_204 As Variant
  Dim var_1B4 As Variant
  Dim var_220 As Recordset15
  loc_1B9BE00: On Error Goto loc_1BA109F
  loc_1B9BE10: (vbNullString).Caption = 
  loc_1B9BE2F: If (Me.RecordCount > 0) Then
  loc_1B9BE71:   If (Me.Fields.Item("MultiBillGeneration").Value = "Yes") Then
  loc_1B9BE7F:     If (global_284 = "Yes") Then
  loc_1B9BEC1:       var_F4 = "Select S.* From SplitSale1 S Where S.Docid='" & Me.Fields.Item("DocID").Value 
  loc_1B9BED8:       unk_5B213D.Execute CStr(var_F4 & "'"), var_138, -1
  loc_1B9BF00:       Set var_140 = var_13C 
  loc_1B9BF55:       If (Proc_6_38_E68A98(CVar(var_140.Fields.Item("Printed"))) = "Y") Then
  loc_1B9BF64:         var_13C(0).Enabled = 
  loc_1B9BF6F:       Else
  loc_1B9BF7B:         (&HFF).Enabled = 
  loc_1B9BF83:       End If
  loc_1B9BFBC:       Set var_13C = var_144(CInt(2))
  loc_1B9BFC2:       Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_140.Fields.Item("DocID").Value))
  loc_1B9BFCA:       var_144.Text = 
  loc_1B9BFFA:       var_C4 = var_140.Fields.Item("vType")
  loc_1B9C002:       var_D4 = var_C4.Value
  loc_1B9C028:       var_E4 = 0
  loc_1B9C058:       unk_5B213D.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(var_D4) & "'", var_D4, -1
  loc_1B9C060:       var_AC = var_AC.Fields
  loc_1B9C068:       var_E4 = var_C4.Item(var_C4)
  loc_1B9C070:       var_13C = var_13C.Value
  loc_1B9C07F:       global_172 = CStr(var_F4)
  loc_1B9C0D5:       Set var_13C = var_144(CInt(0))
  loc_1B9C0DB:       Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_140.Fields.Item("VNo").Value))
  loc_1B9C0E3:       var_144.Text = var_F4
  loc_1B9C110:       var_C4 = var_140.Fields.Item("VDate")
  loc_1B9C14B:       Set var_13C = var_144(CInt(1))
  loc_1B9C151:       Call 0.Method_Proc_258_145_1BA10F40 (CStr(Format(CVar(var_C4), "DD/MMM/YYYY")), 1)
  loc_1B9C159:       var_144.Text = 1
  loc_1B9C17E:       Set var_AC = var_C4(CInt(1))
  loc_1B9C184:       Call 0.Method_Proc_258_145_1BA10F40 ()
  loc_1B9C1B6:       Call Proc_258_157_1BC1384(CDate(Format(CVar(var_C4), "DD/MMM/YYYY")), 1)
  loc_1B9C1F9:       Set var_13C = 1(CStr(var_140.Fields.Item("vPrefix").Value))
  loc_1B9C1FF:       var_13C.Caption = 
  loc_1B9C244:       global_180 = CStr(var_140.Fields.Item("KOTNo").Value)
  loc_1B9C266:       If (global_304 = "Hall") Then
  loc_1B9C2A5:         var_F4 = "Select Name From RoomMast Where [Type]='HL' AND RoomCat='HALL' And Code='" & var_140.Fields.Item("RoomNo").Value 
  loc_1B9C2BC:         unk_5B213D.Execute CStr(var_F4 & "'"), var_138, -1
  loc_1B9C2C7:         Set var_90 = var_13C
  loc_1B9C2F5:         If (var_90.RecordCount > 0) Then
  loc_1B9C331:           Set var_13C = var_144(CInt(3))
  loc_1B9C337:           Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_90.Fields.Item(0).Value))
  loc_1B9C33F:           var_144.Text = var_13C
  loc_1B9C355:         End If
  loc_1B9C358:       Else
  loc_1B9C390:         var_118 = Proc_6_38_E68A98(CVar(var_140.Fields.Item("Party")), "Select Code,Name,CardNo From (Select SubCode as Code,Name,CardNo From SubGroup union all Select Code,Name,CardNo From SmartCardRegistration) Q Where Code='", var_F4)
  loc_1B9C394:         var_148 = -1 & var_118
  loc_1B9C3A4:         unk_5B213D.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(CVar(var_140.Fields.Item("Party"))) & "'" & "'", var_13C, 
  loc_1B9C3AF:         Set var_90 = var_13C
  loc_1B9C3DD:         If (var_90.RecordCount > 0) Then
  loc_1B9C419:           Set var_13C = var_144(CInt(&HD))
  loc_1B9C41F:           Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_90.Fields.Item(0).Value))
  loc_1B9C427:           var_144.Tag = 
  loc_1B9C476:           Set var_13C = var_144(CInt(&HD))
  loc_1B9C47C:           Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_90.Fields.Item(1).Value))
  loc_1B9C484:           var_144.Text = 
  loc_1B9C4B4:           var_C4 = var_90.Fields.Item(2)
  loc_1B9C4D3:           Set var_13C = var_144(CInt(&HF))
  loc_1B9C4D9:           Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_C4.Value))
  loc_1B9C4E1:           var_144.Text = 
  loc_1B9C4FA:         Else
  loc_1B9C508:           Set var_AC = var_C4(CInt(&HD))
  loc_1B9C50E:           Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1B9C516:           var_C4.Tag = 
  loc_1B9C530:           Set var_AC = var_C4(CInt(&HD))
  loc_1B9C536:           Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1B9C53E:           var_C4.Text = 
  loc_1B9C558:           Set var_AC = var_C4(CInt(&HF))
  loc_1B9C55E:           Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1B9C566:           var_C4.Text = 
  loc_1B9C572:         End If
  loc_1B9C5A8:         Set var_13C = var_144(CInt(3))
  loc_1B9C5AE:         Call 0.Method_Proc_258_145_1BA10F40 (Proc_6_38_E68A98(CVar(var_140.Fields.Item("RoomNo"))))
  loc_1B9C5B6:         var_144.Text = 
  loc_1B9C5CA:       End If
  loc_1B9C600:       Set var_13C = var_144(CInt(3))
  loc_1B9C606:       Call 0.Method_Proc_258_145_1BA10F40 (Proc_6_38_E68A98(CVar(var_140.Fields.Item("RoomNo"))))
  loc_1B9C60E:       var_144.Tag = 
  loc_1B9C648:       Proc_6_39_E7C810(var_F4)
  loc_1B9C65F:       Set var_13C = var_144(CInt(4))
  loc_1B9C665:       Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_F4))
  loc_1B9C66D:       var_144.Text = CVar(var_140.Fields.Item("GuarAtt"))
  loc_1B9C6B0:       var_F4 = "hh:nn"
  loc_1B9C6D7:       Set var_13C = var_144(CInt(5))
  loc_1B9C6DD:       Call 0.Method_Proc_258_145_1BA10F40 (CStr(Format(CVar(var_140.Fields.Item("VTIME")), var_F4)), 1)
  loc_1B9C6E5:       var_144.Text = 1
  loc_1B9C747:       var_148 = Replace(CStr(var_140.Fields.Item("VTIME").Value), ":", ".", 1, -1, 0)
  loc_1B9C74F:       var_154 = Val("Select NCAT From Voucher_Type Where V_Type='" & CStr(var_140.Fields.Item("VTIME").Value) & "'")
  loc_1B9C77B:       unk_5B213D.Execute "Select Name From SessionMast WHERE " & CStr(var_154) & " BETWEEN FromTime AND ToTime", var_F4, -1
  loc_1B9C786:       Set var_98 = var_13C
  loc_1B9C7BD:       If (Me.Recordset15.RecordCount > 0) Then
  loc_1B9C7F2:         Set var_13C = var_154(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Name")), var_13C))
  loc_1B9C7F8:         var_13C.Caption = 
  loc_1B9C80A:       End If
  loc_1B9C80C:       Set var_140 = Nothing 
  loc_1B9C866:       unk_5B213D.Execute CStr("Select S.* From SplitedSunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_138, -1
  loc_1B9C871:       Set var_88 = var_13C
  loc_1B9C89F:       If (var_88.RecordCount > 0) Then
  loc_1B9C8D2:         Call Proc_258_157_1BC1384(CDate(var_88.Fields.Item("SunAppDate").Value))
  loc_1B9C8E1:         ' Referenced from: 1B9CD75
  loc_1B9C8F0:         If Not(var_88.EOF) Then
  loc_1B9C936:           var_13C = var_88.Fields
  loc_1B9C953:           Set var_168 = var_16C(CInt(var_13C.Item("SNo").Value))
  loc_1B9C959:           Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_88.Fields.Item("SunCode").Value))
  loc_1B9C961:           var_16C.Tag = var_13C
  loc_1B9C9DF:           Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1B9C9E5:           Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_88.Fields.Item("Limit").Value))
  loc_1B9C9ED:           var_16C.Tag = 
  loc_1B9CA6B:           Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1B9CA71:           Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_88.Fields.Item("DispName").Value))
  loc_1B9CA79:           var_16C.Caption = 
  loc_1B9CAF7:           Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1B9CAFD:           Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_88.Fields.Item("Roff").Value))
  loc_1B9CB05:           var_16C.Tag = 
  loc_1B9CB80:           Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1B9CB86:           Call 0.Method_Proc_258_145_1BA10F40 (Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula"))))
  loc_1B9CB8E:           var_16C.Tag = 
  loc_1B9CC0A:           Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1B9CC10:           Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_88.Fields.Item("SValue").Value))
  loc_1B9CC18:           var_16C.Text = 
  loc_1B9CC74:           var_138 = var_88.Fields.Item("SNo").Value
  loc_1B9CC88:           var_F4 = "0.00"
  loc_1B9CCAF:           Set var_168 = var_16C(CInt(var_138))
  loc_1B9CCB5:           Call 0.Method_Proc_258_145_1BA10F40 (CStr(Format(CVar(var_88.Fields.Item("Amount")), var_F4)), 1)
  loc_1B9CCBD:           var_16C.Text = 1
  loc_1B9CCF4:           var_C4 = var_88.Fields.Item("BaseAmount")
  loc_1B9CCFC:           var_D4 = CVar(var_C4) 'Address
  loc_1B9CD03:           Proc_6_39_E7C810(var_F4)
  loc_1B9CD0B:           var_118 = CStr(var_F4)
  loc_1B9CD24:           var_13C = var_88.Fields
  loc_1B9CD2C:           var_144 = var_13C.Item("SNo")
  loc_1B9CD41:           Set var_168 = var_16C(CInt(var_144.Value))
  loc_1B9CD47:           Call 0.Method_Proc_258_145_1BA10F40 (var_118)
  loc_1B9CD4F:           var_16C.Caption = var_D4
  loc_1B9CD70:           var_88.MoveNext
  loc_1B9CD75:           GoTo loc_1B9C8E1
  loc_1B9CD78:         End If
  loc_1B9CD78:       End If
  loc_1B9CD96:       Set var_AC = var_C4(CInt(2))
  loc_1B9CD9C:       Call 0.Method_Proc_258_145_1BA10F40 (var_118, "Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge Where DocID='", var_D4)
  loc_1B9CDA4:       -1 = var_C4.Text
  loc_1B9CDBD:       unk_5B213D.Execute var_13C & var_118 & "' And PayType='Cash'", , 
  loc_1B9CDC8:       Set var_90 = var_13C
  loc_1B9CDEE:       Set var_AC = var_C4(CInt(6))
  loc_1B9CDF4:       Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1B9CDFC:       var_C4.Text = 
  loc_1B9CE16:       Set var_AC = var_C4(CInt(7))
  loc_1B9CE1C:       Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1B9CE24:       var_C4.Text = 
  loc_1B9CE3E:       Set var_AC = var_C4(CInt(8))
  loc_1B9CE44:       Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1B9CE4C:       var_C4.Text = 
  loc_1B9CE6C:       If (var_90.RecordCount > 0) Then
  loc_1B9CEC1:         Set var_13C = var_144(CInt(6))
  loc_1B9CEC7:         Call 0.Method_Proc_258_145_1BA10F40 (CStr(Format(CVar(var_90.Fields.Item("Amount")), "0.00")), 1)
  loc_1B9CECF:         var_144.Text = 1
  loc_1B9CF3B:         Set var_13C = var_144(CInt(7))
  loc_1B9CF41:         Call 0.Method_Proc_258_145_1BA10F40 (CStr(Format(CVar(var_90.Fields.Item("TipAmt")), "0.00")), 1)
  loc_1B9CF49:         var_144.Text = 1
  loc_1B9CF63:       End If
  loc_1B9CF6C:       Set var_AC = (False)
  loc_1B9CF72:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_1B9CF87:       Set var_AC = (1)
  loc_1B9CF8D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1B9CF97:       var_92 = 1
  loc_1B9CFA7:       var_E4 = "Select S.*,I.Name as ItemName,I.RateIncTax,DispCode,I.SchrgApp,S.DiscApp as DApp,S.RoundOff as ROff,IC.TaxStru as TaxCode,IC.CatType,RateEdit,K.DociD as KOTDocID ,K.SNo as KOTSno,D.Code as DepartCode,D.ShortName as DepartName From (((SplitStock S Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left Join ItemMast I On S.Item=I.Code And S.ITEMRestCode=I.RestCode)Left join  ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D on D.Code=I.RestCode Where S.DocId='"
  loc_1B9CFF0:       unk_5B213D.Execute CStr(var_E4 & Me.Fields.Item("SearchCode").Value & "' Order By S.SNo"), var_138, -1
  loc_1B9CFFB:       Set var_88 = var_13C
  loc_1B9D029:       If (var_88.RecordCount > 0) Then
  loc_1B9D039:         ReDim Preserve var_A0(0 To 0)
  loc_1B9D043:         ' Referenced from: 1B9DD20
  loc_1B9D052:         If Not(var_88.EOF) Then
  loc_1B9D05F:           Set var_AC = var_13C(vbNullString)
  loc_1B9D065:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000(var_92)
  loc_1B9D07D:           For var_170 = 0 To CInt(UBound(var_A0, 1)): var_A4 = var_170 'Integer
  loc_1B9D0C1:             If (0 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomNo")), var_A0(CLng(var_A4)))) Then
  loc_1B9D0C6:               var_A6 = &HFF
  loc_1B9D0C9:             End If
  loc_1B9D0CC:           Next var_170 'Integer
  loc_1B9D0D7:           If (var_A6 = 0) Then
  loc_1B9D0E6:             ReDim Preserve var_A0(0 To CLng(var_A2))
  loc_1B9D122:             var_A0(CLng(var_A2)) = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomNo")))
  loc_1B9D132:             var_A2 = (var_A2 + 1)
  loc_1B9D135:           End If
  loc_1B9D13E:           Set var_174 = var_A2(0)
  loc_1B9D145:           var_E4 = CVar(CLng(var_92)) 'Long
  loc_1B9D14D:           var_128 = CVar(CLng(0)) 'Long
  loc_1B9D17D:           var_F4 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1B9D184:           LateIdCallSt
  loc_1B9D1D3:           var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_92)), var_174)) 'String
  loc_1B9D1DA:           LateIdCallSt
  loc_1B9D225:           var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_92)), var_174)) 'String
  loc_1B9D22C:           LateIdCallSt
  loc_1B9D277:           var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_92)), var_174, var_F4)) 'String
  loc_1B9D27E:           LateIdCallSt
  loc_1B9D2C9:           var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_92)), var_174, var_F4)) 'String
  loc_1B9D2D0:           LateIdCallSt
  loc_1B9D31B:           var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_92)), var_174, var_F4)) 'String
  loc_1B9D322:           LateIdCallSt
  loc_1B9D354:           var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9D35C:           var_184 = CVar(CLng(7)) 'Long
  loc_1B9D389:           var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_1B9D390:           LateIdCallSt
  loc_1B9D3C6:           var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9D3CE:           var_184 = CVar(CLng(8)) 'Long
  loc_1B9D3FB:           var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00"))) 'String
  loc_1B9D402:           LateIdCallSt
  loc_1B9D438:           var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9D440:           var_184 = CVar(CLng(9)) 'Long
  loc_1B9D46D:           var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_1B9D474:           LateIdCallSt
  loc_1B9D4AA:           var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9D4B2:           var_184 = CVar(CLng(&HA)) 'Long
  loc_1B9D4DF:           var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_1B9D4E6:           LateIdCallSt
  loc_1B9D500:           var_E4 = CVar(CLng(var_92)) 'Long
  loc_1B9D508:           var_128 = CVar(CLng(&HB)) 'Long
  loc_1B9D538:           var_F4 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_1B9D53F:           LateIdCallSt
  loc_1B9D575:           var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9D57D:           var_184 = CVar(CLng(&HE)) 'Long
  loc_1B9D5AA:           var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_1B9D5B1:           LateIdCallSt
  loc_1B9D5E7:           var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9D5EF:           var_184 = CVar(CLng(&HF)) 'Long
  loc_1B9D61C:           var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_1B9D623:           LateIdCallSt
  loc_1B9D659:           var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9D661:           var_184 = CVar(CLng(&H10)) 'Long
  loc_1B9D68E:           var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_1B9D695:           LateIdCallSt
  loc_1B9D6CB:           var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9D6D3:           var_184 = CVar(CLng(&H11)) 'Long
  loc_1B9D700:           var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_1B9D707:           LateIdCallSt
  loc_1B9D779:           LateIdCallSt
  loc_1B9D7C8:           var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DApp")), CVar(CLng(&H13)), CVar(CLng(var_92)), var_174, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_1B9D7CF:           LateIdCallSt
  loc_1B9D81A:           var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Roff")), CVar(CLng(&H14)), CVar(CLng(var_92)), var_174, var_F4, CVar(CLng(&H12)))) 'String
  loc_1B9D821:           LateIdCallSt
  loc_1B9D86C:           var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(&H18)), CVar(CLng(var_92)), var_174, var_F4)) 'String
  loc_1B9D873:           LateIdCallSt
  loc_1B9D8BE:           var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_92)), var_174, var_F4)) 'String
  loc_1B9D8C5:           LateIdCallSt
  loc_1B9D906:           var_E4 = CVar(CLng(var_92)) 'Long
  loc_1B9D90E:           var_128 = CVar(CLng(5)) 'Long
  loc_1B9D929:           var_118 = CStr(Right(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("KotDocid")), var_174, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("KotDocid")), var_174, var_F4, CVar(CLng(var_92)))), CVar(CLng(var_92)))), 8))
  loc_1B9D934:           var_138 = CVar(CStr(Val(var_118))) 'String
  loc_1B9D93B:           LateIdCallSt
  loc_1B9D991:           var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("KotDocid")), CVar(CLng(&HD)), CVar(CLng(var_92)), var_174, var_138, CVar(CLng(&HD)))) 'String
  loc_1B9D998:           LateIdCallSt
  loc_1B9D9E1:           Proc_6_39_E7C810(var_F4, CVar(var_88.Fields.Item("kotSNo")), CVar(CLng(&HC)), CVar(CLng(var_92)), var_174, var_F4)
  loc_1B9D9F1:           LateIdCallSt
  loc_1B9DA3E:           var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomCat")), CVar(CLng(&H15)), CVar(CLng(var_92)), var_174, CVar(CStr(var_F4)))) 'String
  loc_1B9DA45:           LateIdCallSt
  loc_1B9DA90:           var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Roomtype")), CVar(CLng(&H16)), CVar(CLng(var_92)), var_174, var_F4)) 'String
  loc_1B9DA97:           LateIdCallSt
  loc_1B9DAE0:           Proc_6_39_E7C810(var_F4, CVar(var_88.Fields.Item("RoomNo")), CVar(CLng(&H17)), CVar(CLng(var_92)), var_174, var_F4)
  loc_1B9DAF0:           LateIdCallSt
  loc_1B9DB3D:           var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Godowncode")), CVar(CLng(&H1A)), CVar(CLng(var_92)), var_174, CVar(CStr(var_F4)))) 'String
  loc_1B9DB44:           LateIdCallSt
  loc_1B9DB8F:           var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RateIncTax")), CVar(CLng(&H1C)), CVar(CLng(var_92)), var_174, var_F4)) 'String
  loc_1B9DB96:           LateIdCallSt
  loc_1B9DBE1:           var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(var_92)), var_174, var_F4)) 'String
  loc_1B9DBE8:           LateIdCallSt
  loc_1B9DBFE:           var_E4 = CVar(CLng(var_92)) 'Long
  loc_1B9DC33:           var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CatType")), CVar(CLng(&H1F)), var_E4, var_174, var_F4)) 'String
  loc_1B9DC3A:           LateIdCallSt
  loc_1B9DC83:           var_184 = CVar(CLng(var_92)) 'Long
  loc_1B9DC8B:           var_1A4 = CVar(CLng(&H1E)) 'Long
  loc_1B9DCB3:           var_1B4 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VoidYN")), var_174, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VoidYN")), var_174, var_F4, "F")), "F"))) = "F") 'Variant
  loc_1B9DCC6:           var_204 = CVar(CStr(IIf(var_1B4, "Free", vbNullString))) 'String
  loc_1B9DCCD:           LateIdCallSt
  loc_1B9DCEF:           var_C0 = CVar(CLng(var_92)) 'Long
  loc_1B9DD01:           LateIdCallSt
  loc_1B9DD0B:           Set var_174 = Nothing 
  loc_1B9DD15:           var_92 = (var_92 + 1)
  loc_1B9DD1B:           var_88.MoveNext
  loc_1B9DD20:           GoTo loc_1B9D043
  loc_1B9DD23:         End If
  loc_1B9DD27:         Set var_AC = var_174(var_92)
  loc_1B9DD2D:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(global_68)
  loc_1B9DD3C:         var_C0 = CVar((CLng(var_C0) - 1)) 'Long
  loc_1B9DD4F:         Set var_C4 = var_C0(global_68)
  loc_1B9DD55:         LateIdCallSt
  loc_1B9DD74:         Set var_AC = var_C4(1)
  loc_1B9DD7A:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6(var_174)
  loc_1B9DD90:         Set var_AC = var_C4(CInt(3))
  loc_1B9DD96:         Call 0.Method_Proc_258_145_1BA10F40 (vbNullString, var_204, var_1A4, var_184)
  loc_1B9DDB7:         For var_218 = 0 To CInt(UBound(var_A0, 1)): var_A2 = var_218 'Integer
  loc_1B9DDCB:           Set var_AC = var_C4(CInt(3))
  loc_1B9DDD1:           Call 0.Method_Proc_258_145_1BA10F40 (var_118, 0, var_138)
  loc_1B9DDD9:           1 = var_174
  loc_1B9DDFF:           Set var_13C = var_144(CInt(3))
  loc_1B9DE05:           Call 0.Method_Proc_258_145_1BA10F40 (var_118 & var_A0(CLng(var_A2)) & ",")
  loc_1B9DE0D:           var_144.Text = 1
  loc_1B9DE29:         Next var_218 'Integer
  loc_1B9DE39:         Set var_AC = var_C4(CInt(3))
  loc_1B9DE3F:         Call 0.Method_Proc_258_145_1BA10F40 ()
  loc_1B9DE4F:         Set var_13C = var_144(CInt(3))
  loc_1B9DE55:         Call 0.Method_Proc_258_145_1BA10F40 ()
  loc_1B9DE75:         var_138 = (Len(Trim(CVar(var_144))) - 1)
  loc_1B9DE88:         var_1B4 = CVar(var_C4) 'Address
  loc_1B9DEA6:         Set var_168 = var_16C(CInt(3))
  loc_1B9DEAC:         Call 0.Method_Proc_258_145_1BA10F40 (CStr(Mid(var_1B4, 1, var_138)))
  loc_1B9DEB4:         var_16C.Text = 
  loc_1B9DED4:       End If
  loc_1B9DEDC:       Set var_AC = (True)
  loc_1B9DEE2:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_1B9DEFE:       var_F4 = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,RM.Sundry " & " FROM SplitSale2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_1B9DF45:       unk_5B213D.Execute CStr(var_F4 & Me.Fields.Item("SearchCode").Value & "'"), var_1B4, -1
  loc_1B9DF50:       Set var_88 = var_13C
  loc_1B9DF79:       Set var_AC = var_13C(1)
  loc_1B9DF7F:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1B9DF9B:       If (var_88.RecordCount > 0) Then
  loc_1B9DF9E:         ' Referenced from: 1B9E366
  loc_1B9DFAD:         If Not(var_88.EOF) Then
  loc_1B9DFB4:           Set var_21C = ()
  loc_1B9DFC0:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000(vbNullString)
  loc_1B9DFCC:           Set var_13C = ()
  loc_1B9DFD2:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1B9DFE1:           var_E4 = CVar((CLng() - 1)) 'Long
  loc_1B9E020:           LateIdCallSt
  loc_1B9E03E:           Set var_13C = CVar(CStr(var_88.Fields.Item("Sno1").Value))(var_21C)
  loc_1B9E044:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(0)))
  loc_1B9E053:           var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1B9E092:           LateIdCallSt
  loc_1B9E0B0:           Set var_13C = CVar(CStr(var_88.Fields.Item("SNo").Value))(var_21C)
  loc_1B9E0B6:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(1)))
  loc_1B9E0C5:           var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1B9E104:           LateIdCallSt
  loc_1B9E122:           Set var_13C = CVar(CStr(var_88.Fields.Item("TaxCode").Value))(var_21C)
  loc_1B9E128:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(2)))
  loc_1B9E137:           var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1B9E176:           LateIdCallSt
  loc_1B9E194:           Set var_13C = CVar(CStr(var_88.Fields.Item("Name").Value))(var_21C)
  loc_1B9E19A:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(3)))
  loc_1B9E1A9:           var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1B9E1E8:           LateIdCallSt
  loc_1B9E206:           Set var_13C = CVar(CStr(var_88.Fields.Item("BaseValue").Value))(var_21C)
  loc_1B9E20C:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(4)))
  loc_1B9E21B:           var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1B9E25A:           LateIdCallSt
  loc_1B9E278:           Set var_13C = CVar(CStr(var_88.Fields.Item("TaxPer").Value))(var_21C)
  loc_1B9E27E:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(5)))
  loc_1B9E28D:           var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1B9E2CC:           LateIdCallSt
  loc_1B9E2EA:           Set var_13C = CVar(CStr(var_88.Fields.Item("TaxAmt").Value))(var_21C)
  loc_1B9E2F0:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(6)))
  loc_1B9E2FF:           var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1B9E307:           var_128 = CVar(CLng(7)) 'Long
  loc_1B9E337:           var_114 = CVar(CStr(var_88.Fields.Item("Sundry").Value)) 'String
  loc_1B9E33E:           LateIdCallSt
  loc_1B9E35A:           Set var_21C = Nothing 
  loc_1B9E361:           var_88.MoveNext
  loc_1B9E366:           GoTo loc_1B9DF9E
  loc_1B9E369:         End If
  loc_1B9E369:       End If
  loc_1B9E36F:       If (var_92 = 1) Then
  loc_1B9E37F:         Set var_AC = var_21C(1)
  loc_1B9E385:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_114)
  loc_1B9E391:         Set var_13C = "'"(var_128)
  loc_1B9E3B3:         Set var_C4 = CInt(0)(CVar(CStr(Proc_6_127_F24F80(var_13C))))
  loc_1B9E3B9:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_1B9E3D1:         Set var_AC = ()
  loc_1B9E3D7:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1B9E3E6:         var_C0 = CVar((CLng() - 1)) 'Long
  loc_1B9E3FF:         LateIdCallSt
  loc_1B9E41E:         Set var_AC = 1(global_68)(1)
  loc_1B9E424:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_1B9E42C:       End If
  loc_1B9E437:       If (global_196 = "Y") Then
  loc_1B9E44E:         var_118 = "SELECT  Distinct  CAST(P.Vno AS varchar(10)) AS SearchCode, CAST(P.Vno AS varchar(10)) AS Vno, P.CustName,P.Docid FROM   PackingOrder P INNER JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID  WHERE     (P.LogSite_Code = '" & MemVar_1F92078
  loc_1B9E496:         var_114 = CVar(var_118 & "') AND (P.RestCode = '" & global_76 & "') and PD.ContraDocID='") & Me.Fields.Item("SearchCode").Value 
  loc_1B9E49F:         var_138 = var_114 & "'" 
  loc_1B9E4AD:         unk_5B213D.Execute CStr(var_138), var_1B4, -1
  loc_1B9E4B8:         Set var_9C = var_13C
  loc_1B9E4F3:         If (Me.Recordset15.RecordCount > 0) Then
  loc_1B9E4F6:           ' Referenced from: 1B9E638
  loc_1B9E50A:           If (Me.Recordset15.EOF = 0) Then
  loc_1B9E54F:             Call 0.Method_Proc_258_145_1BA10F40 (CStr(Me.Recordset15.Fields.Item("DocID").Value))
  loc_1B9E557:             var_144.Tag = var_144(CInt(&HB))
  loc_1B9E5A9:             Set var_13C = var_144(CInt(&HB))
  loc_1B9E5AF:             Call 0.Method_Proc_258_145_1BA10F40 (CStr(Me.Recordset15.Fields.Item("VNo").Value))
  loc_1B9E5B7:             var_144.Text = 
  loc_1B9E5EA:             var_C4 = Me.Recordset15.Fields.Item("CustName")
  loc_1B9E609:             Set var_13C = var_144(CInt(&HC))
  loc_1B9E60F:             Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_C4.Value))
  loc_1B9E617:             var_144.Text = 
  loc_1B9E633:             Me.Recordset15.MoveNext
  loc_1B9E638:             GoTo loc_1B9E4F6
  loc_1B9E63B:           End If
  loc_1B9E63E:         Else
  loc_1B9E64C:           Set var_AC = var_C4(CInt(&HB))
  loc_1B9E652:           Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1B9E65A:           var_C4.Tag = 
  loc_1B9E674:           Set var_AC = var_C4(CInt(&HB))
  loc_1B9E67A:           Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1B9E682:           var_C4.Text = 
  loc_1B9E69C:           Set var_AC = var_C4(CInt(&HC))
  loc_1B9E6A2:           Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1B9E6AA:           var_C4.Text = 
  loc_1B9E6B6:         End If
  loc_1B9E6B6:       End If
  loc_1B9E6B9:     Else
  loc_1B9E6BC:     Else
  loc_1B9E6BF:     Else
  loc_1B9E6BF:     End If
  loc_1B9E6CC:     var_E4 = "Select S.*,O.PhoneNo,O.CustName,O.Addr1,O.Addr2 From (Sale1 S Left Join OrderPersonDetails O On S.DocId=O.DocId) Where S.Docid='"
  loc_1B9E6FE:     var_F4 = var_E4 & Me.Fields.Item("DocID").Value 
  loc_1B9E715:     unk_5B213D.Execute CStr(var_F4 & "'"), var_138, -1
  loc_1B9E720:     Set var_88 = var_13C
  loc_1B9E73D:     Set var_220 = var_88 
  loc_1B9E792:     If (Proc_6_38_E68A98(CVar(var_220.Fields.Item("Printed"))) = "Y") Then
  loc_1B9E7A1:       var_13C(0).Enabled = 
  loc_1B9E7AC:     Else
  loc_1B9E7B8:       (&HFF).Enabled = 
  loc_1B9E7C0:     End If
  loc_1B9E7F9:     Set var_13C = var_144(CInt(2))
  loc_1B9E7FF:     Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_220.Fields.Item("DocID").Value))
  loc_1B9E807:     var_144.Text = 
  loc_1B9E837:     var_C4 = var_220.Fields.Item("vType")
  loc_1B9E83F:     var_D4 = var_C4.Value
  loc_1B9E865:     var_E4 = 0
  loc_1B9E895:     unk_5B213D.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(var_D4) & "'", var_D4, -1
  loc_1B9E89D:     var_AC = var_AC.Fields
  loc_1B9E8A5:     var_E4 = var_C4.Item(var_C4)
  loc_1B9E8AD:     var_13C = var_13C.Value
  loc_1B9E8BC:     global_172 = CStr(var_F4)
  loc_1B9E912:     Set var_13C = var_144(CInt(0))
  loc_1B9E918:     Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_220.Fields.Item("VNo").Value))
  loc_1B9E920:     var_144.Text = var_F4
  loc_1B9E94D:     var_C4 = var_220.Fields.Item("VDate")
  loc_1B9E988:     Set var_13C = var_144(CInt(1))
  loc_1B9E98E:     Call 0.Method_Proc_258_145_1BA10F40 (CStr(Format(CVar(var_C4), "DD/MMM/YYYY")), 1)
  loc_1B9E996:     var_144.Text = 1
  loc_1B9E9BB:     Set var_AC = var_C4(CInt(1))
  loc_1B9E9C1:     Call 0.Method_Proc_258_145_1BA10F40 ()
  loc_1B9E9F3:     Call Proc_258_157_1BC1384(CDate(Format(CVar(var_C4), "DD/MMM/YYYY")), 1)
  loc_1B9EA3C:     1(CStr(var_220.Fields.Item("vPrefix").Value)).Caption = 
  loc_1B9EA81:     global_180 = CStr(var_220.Fields.Item("KOTNo").Value)
  loc_1B9EAC8:     Set var_13C = var_144(CInt(0))
  loc_1B9EACE:     Call 0.Method_Proc_258_145_1BA10F40 (Proc_6_38_E68A98(CVar(var_88.Fields.Item("PhoneNo"))))
  loc_1B9EAD6:     var_144.Text = 
  loc_1B9EB20:     Set var_13C = var_144(CInt(1))
  loc_1B9EB26:     Call 0.Method_Proc_258_145_1BA10F40 (Proc_6_38_E68A98(CVar(var_88.Fields.Item("CustName"))))
  loc_1B9EB2E:     var_144.Text = 
  loc_1B9EB78:     Set var_13C = var_144(CInt(2))
  loc_1B9EB7E:     Call 0.Method_Proc_258_145_1BA10F40 (Proc_6_38_E68A98(CVar(var_88.Fields.Item("Addr1"))))
  loc_1B9EB86:     var_144.Text = 
  loc_1B9EBD6:     Call 0.Method_Proc_258_145_1BA10F40 (Proc_6_38_E68A98(CVar(var_88.Fields.Item("Addr2"))))
  loc_1B9EBDE:     var_144.Text = 
  loc_1B9EC03:     If (global_304 = "Hall") Then
  loc_1B9EC42:       var_F4 = "Select Name From RoomMast Where [Type]='HL' AND RoomCat='HALL' And Code='" & var_220.Fields.Item("RoomNo").Value 
  loc_1B9EC59:       unk_5B213D.Execute CStr(var_F4 & "'"), var_138, -1
  loc_1B9EC64:       Set var_90 = var_144(CInt(3))
  loc_1B9EC92:       If (var_90.RecordCount > 0) Then
  loc_1B9ECCE:         Set var_13C = var_144(CInt(3))
  loc_1B9ECD4:         Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_90.Fields.Item(0).Value))
  loc_1B9ECDC:         var_144.Text = var_13C
  loc_1B9ECF2:       End If
  loc_1B9ECF5:     Else
  loc_1B9ED2D:       var_118 = Proc_6_38_E68A98(CVar(var_220.Fields.Item("Party")), "Select Code,Name,CardNo From (Select SubCode as Code,Name,CardNo From SubGroup union all Select Code,Name,CardNo From SmartCardRegistration) Q Where Code='", var_F4)
  loc_1B9ED31:       var_148 = -1 & var_118
  loc_1B9ED41:       unk_5B213D.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(CVar(var_220.Fields.Item("Party"))) & "'" & "'", var_13C, 
  loc_1B9ED4C:       Set var_90 = var_13C
  loc_1B9ED7A:       If (var_90.RecordCount > 0) Then
  loc_1B9EDB6:         Set var_13C = var_144(CInt(&HD))
  loc_1B9EDBC:         Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_90.Fields.Item(0).Value))
  loc_1B9EDC4:         var_144.Tag = 
  loc_1B9EE13:         Set var_13C = var_144(CInt(&HD))
  loc_1B9EE19:         Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_90.Fields.Item(1).Value))
  loc_1B9EE21:         var_144.Text = 
  loc_1B9EE51:         var_C4 = var_90.Fields.Item(2)
  loc_1B9EE70:         Set var_13C = var_144(CInt(&HF))
  loc_1B9EE76:         Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_C4.Value))
  loc_1B9EE7E:         var_144.Text = 
  loc_1B9EE97:       Else
  loc_1B9EEA5:         Set var_AC = var_C4(CInt(&HD))
  loc_1B9EEAB:         Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1B9EEB3:         var_C4.Tag = 
  loc_1B9EECD:         Set var_AC = var_C4(CInt(&HD))
  loc_1B9EED3:         Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1B9EEDB:         var_C4.Text = 
  loc_1B9EEF5:         Set var_AC = var_C4(CInt(&HF))
  loc_1B9EEFB:         Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1B9EF03:         var_C4.Text = 
  loc_1B9EF0F:       End If
  loc_1B9EF45:       Set var_13C = var_144(CInt(3))
  loc_1B9EF4B:       Call 0.Method_Proc_258_145_1BA10F40 (Proc_6_38_E68A98(CVar(var_220.Fields.Item("RoomNo"))))
  loc_1B9EF53:       var_144.Text = 
  loc_1B9EF67:     End If
  loc_1B9EF9D:     Set var_13C = var_144(CInt(3))
  loc_1B9EFA3:     Call 0.Method_Proc_258_145_1BA10F40 (Proc_6_38_E68A98(CVar(var_220.Fields.Item("RoomNo"))))
  loc_1B9EFAB:     var_144.Tag = 
  loc_1B9EFE5:     Proc_6_39_E7C810(var_F4)
  loc_1B9EFFC:     Set var_13C = var_144(CInt(4))
  loc_1B9F002:     Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_F4))
  loc_1B9F00A:     var_144.Text = CVar(var_220.Fields.Item("GuarAtt"))
  loc_1B9F04D:     var_F4 = "hh:nn"
  loc_1B9F074:     Set var_13C = var_144(CInt(5))
  loc_1B9F07A:     Call 0.Method_Proc_258_145_1BA10F40 (CStr(Format(CVar(var_220.Fields.Item("VTIME")), var_F4)), 1)
  loc_1B9F082:     var_144.Text = 1
  loc_1B9F0E4:     var_148 = Replace(CStr(var_220.Fields.Item("VTIME").Value), ":", ".", 1, -1, 0)
  loc_1B9F0EC:     var_154 = Val("Select NCAT From Voucher_Type Where V_Type='" & CStr(var_220.Fields.Item("VTIME").Value) & "'")
  loc_1B9F118:     unk_5B213D.Execute "Select Name From SessionMast WHERE " & CStr(var_154) & " BETWEEN FromTime AND ToTime", var_F4, -1
  loc_1B9F123:     Set var_98 = var_13C
  loc_1B9F15A:     If (Me.Recordset15.RecordCount > 0) Then
  loc_1B9F18F:       Set var_13C = var_154(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Name")), var_13C))
  loc_1B9F195:       var_13C.Caption = 
  loc_1B9F1A7:     End If
  loc_1B9F1A9:     Set var_220 = Nothing 
  loc_1B9F203:     unk_5B213D.Execute CStr("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_138, -1
  loc_1B9F20E:     Set var_88 = var_13C
  loc_1B9F23C:     If (var_88.RecordCount > 0) Then
  loc_1B9F26F:       Call Proc_258_157_1BC1384(CDate(var_88.Fields.Item("SunAppDate").Value))
  loc_1B9F27E:       ' Referenced from:   1B9F712
  loc_1B9F28D:       If Not(var_88.EOF) Then
  loc_1B9F2D3:         var_13C = var_88.Fields
  loc_1B9F2F0:         Set var_168 = var_16C(CInt(var_13C.Item("SNo").Value))
  loc_1B9F2F6:         Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_88.Fields.Item("SunCode").Value))
  loc_1B9F2FE:         var_16C.Tag = var_13C
  loc_1B9F37C:         Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1B9F382:         Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_88.Fields.Item("Limit").Value))
  loc_1B9F38A:         var_16C.Tag = 
  loc_1B9F408:         Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1B9F40E:         Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_88.Fields.Item("DispName").Value))
  loc_1B9F416:         var_16C.Caption = 
  loc_1B9F494:         Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1B9F49A:         Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_88.Fields.Item("Roff").Value))
  loc_1B9F4A2:         var_16C.Tag = 
  loc_1B9F51D:         Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1B9F523:         Call 0.Method_Proc_258_145_1BA10F40 (Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula"))))
  loc_1B9F52B:         var_16C.Tag = 
  loc_1B9F5A7:         Set var_168 = var_16C(CInt(var_88.Fields.Item("SNo").Value))
  loc_1B9F5AD:         Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_88.Fields.Item("SValue").Value))
  loc_1B9F5B5:         var_16C.Text = 
  loc_1B9F611:         var_138 = var_88.Fields.Item("SNo").Value
  loc_1B9F625:         var_F4 = "0.00"
  loc_1B9F64C:         Set var_168 = var_16C(CInt(var_138))
  loc_1B9F652:         Call 0.Method_Proc_258_145_1BA10F40 (CStr(Format(CVar(var_88.Fields.Item("Amount")), var_F4)), 1)
  loc_1B9F65A:         var_16C.Text = 1
  loc_1B9F691:         var_C4 = var_88.Fields.Item("BaseAmount")
  loc_1B9F699:         var_D4 = CVar(var_C4) 'Address
  loc_1B9F6A0:         Proc_6_39_E7C810(var_F4)
  loc_1B9F6A8:         var_118 = CStr(var_F4)
  loc_1B9F6C1:         var_13C = var_88.Fields
  loc_1B9F6C9:         var_144 = var_13C.Item("SNo")
  loc_1B9F6DE:         Set var_168 = var_16C(CInt(var_144.Value))
  loc_1B9F6E4:         Call 0.Method_Proc_258_145_1BA10F40 (var_118)
  loc_1B9F6EC:         var_16C.Caption = var_D4
  loc_1B9F70D:         var_88.MoveNext
  loc_1B9F712:         GoTo loc_1B9F27E
  loc_1B9F715:       End If
  loc_1B9F715:     End If
  loc_1B9F733:     Set var_AC = var_C4(CInt(2))
  loc_1B9F739:     Call 0.Method_Proc_258_145_1BA10F40 (var_118, "Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge Where DocID='", var_D4)
  loc_1B9F741:     -1 = var_C4.Text
  loc_1B9F75A:     unk_5B213D.Execute var_13C & var_118 & "' And PayType='Cash'", , 
  loc_1B9F765:     Set var_90 = var_13C
  loc_1B9F78B:     Set var_AC = var_C4(CInt(6))
  loc_1B9F791:     Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1B9F799:     var_C4.Text = 
  loc_1B9F7B3:     Set var_AC = var_C4(CInt(7))
  loc_1B9F7B9:     Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1B9F7C1:     var_C4.Text = 
  loc_1B9F7DB:     Set var_AC = var_C4(CInt(8))
  loc_1B9F7E1:     Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1B9F7E9:     var_C4.Text = 
  loc_1B9F809:     If (var_90.RecordCount > 0) Then
  loc_1B9F85E:       Set var_13C = var_144(CInt(6))
  loc_1B9F864:       Call 0.Method_Proc_258_145_1BA10F40 (CStr(Format(CVar(var_90.Fields.Item("Amount")), "0.00")), 1)
  loc_1B9F86C:       var_144.Text = 1
  loc_1B9F8D8:       Set var_13C = var_144(CInt(7))
  loc_1B9F8DE:       Call 0.Method_Proc_258_145_1BA10F40 (CStr(Format(CVar(var_90.Fields.Item("TipAmt")), "0.00")), 1)
  loc_1B9F8E6:       var_144.Text = 1
  loc_1B9F900:     End If
  loc_1B9F909:     Set var_AC = (False)
  loc_1B9F90F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_1B9F924:     Set var_AC = (1)
  loc_1B9F92A:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1B9F934:     var_92 = 1
  loc_1B9F944:     var_E4 = "Select S.*,I.Name as ItemName,I.RateIncTax,DispCode,I.SchrgApp,S.DiscApp as DApp,S.RoundOff as ROff,IC.TaxStru as TaxCode,IC.CatType,RateEdit,K.DociD as KOTDocID ,K.SNo as KOTSno,D.Code as DepartCode,D.ShortName as DepartName From (((Stock S Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left Join ItemMast I On S.Item=I.Code And S.ITEMRestCode=I.RestCode)Left join  ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D on D.Code=I.RestCode Where S.DocId='"
  loc_1B9F98D:     unk_5B213D.Execute CStr(var_E4 & Me.Fields.Item("SearchCode").Value & "' Order By S.SNo"), var_138, -1
  loc_1B9F998:     Set var_88 = var_13C
  loc_1B9F9C6:     If (var_88.RecordCount > 0) Then
  loc_1B9F9D6:       ReDim Preserve var_A0(0 To 0)
  loc_1B9F9E0:       ' Referenced from:   1BA06CF
  loc_1B9F9EF:       If Not(var_88.EOF) Then
  loc_1B9F9FC:         Set var_AC = var_13C(vbNullString)
  loc_1B9FA02:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000(var_92)
  loc_1B9FA1A:         For var_228 = 0 To CInt(UBound(var_A0, 1)):   var_A4 = var_228 'Integer
  loc_1B9FA5E:           If (0 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomNo")), var_A0(CLng(var_A4)))) Then
  loc_1B9FA63:             var_A6 = &HFF
  loc_1B9FA66:           End If
  loc_1B9FA69:         Next var_228 'Integer
  loc_1B9FA74:         If (var_A6 = 0) Then
  loc_1B9FA83:           ReDim Preserve var_A0(0 To CLng(var_A2))
  loc_1B9FABF:           var_A0(CLng(var_A2)) = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomNo")))
  loc_1B9FACF:           var_A2 = (var_A2 + 1)
  loc_1B9FAD2:         End If
  loc_1B9FADB:         Set var_22C = var_A2(0)
  loc_1B9FAE2:         var_E4 = CVar(CLng(var_92)) 'Long
  loc_1B9FAEA:         var_128 = CVar(CLng(0)) 'Long
  loc_1B9FB1A:         var_F4 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1B9FB21:         LateIdCallSt
  loc_1B9FB70:         var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_92)), var_22C)) 'String
  loc_1B9FB77:         LateIdCallSt
  loc_1B9FBC2:         var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_92)), var_22C)) 'String
  loc_1B9FBC9:         LateIdCallSt
  loc_1B9FC14:         var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_92)), var_22C, var_F4)) 'String
  loc_1B9FC1B:         LateIdCallSt
  loc_1B9FC66:         var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_92)), var_22C, var_F4)) 'String
  loc_1B9FC6D:         LateIdCallSt
  loc_1B9FCB8:         var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_92)), var_22C, var_F4)) 'String
  loc_1B9FCBF:         LateIdCallSt
  loc_1B9FCF1:         var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9FCF9:         var_184 = CVar(CLng(7)) 'Long
  loc_1B9FD26:         var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_1B9FD2D:         LateIdCallSt
  loc_1B9FD63:         var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9FD6B:         var_184 = CVar(CLng(8)) 'Long
  loc_1B9FD98:         var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00"))) 'String
  loc_1B9FD9F:         LateIdCallSt
  loc_1B9FDD5:         var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9FDDD:         var_184 = CVar(CLng(9)) 'Long
  loc_1B9FE0A:         var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_1B9FE11:         LateIdCallSt
  loc_1B9FE47:         var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9FE4F:         var_184 = CVar(CLng(&HA)) 'Long
  loc_1B9FE7C:         var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_1B9FE83:         LateIdCallSt
  loc_1B9FE9D:         var_E4 = CVar(CLng(var_92)) 'Long
  loc_1B9FEA5:         var_128 = CVar(CLng(&HB)) 'Long
  loc_1B9FED5:         var_F4 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_1B9FEDC:         LateIdCallSt
  loc_1B9FF12:         var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9FF1A:         var_184 = CVar(CLng(&HE)) 'Long
  loc_1B9FF47:         var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_1B9FF4E:         LateIdCallSt
  loc_1B9FF84:         var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9FF8C:         var_184 = CVar(CLng(&HF)) 'Long
  loc_1B9FFB9:         var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_1B9FFC0:         LateIdCallSt
  loc_1B9FFF6:         var_104 = CVar(CLng(var_92)) 'Long
  loc_1B9FFFE:         var_184 = CVar(CLng(&H10)) 'Long
  loc_1BA002B:         var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_1BA0032:         LateIdCallSt
  loc_1BA0068:         var_104 = CVar(CLng(var_92)) 'Long
  loc_1BA0070:         var_184 = CVar(CLng(&H11)) 'Long
  loc_1BA009D:         var_138 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_1BA00A4:         LateIdCallSt
  loc_1BA0116:         LateIdCallSt
  loc_1BA0165:         var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DApp")), CVar(CLng(&H13)), CVar(CLng(var_92)), var_22C, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_1BA016C:         LateIdCallSt
  loc_1BA01B7:         var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Roff")), CVar(CLng(&H14)), CVar(CLng(var_92)), var_22C, var_F4, CVar(CLng(&H12)))) 'String
  loc_1BA01BE:         LateIdCallSt
  loc_1BA0209:         var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(&H18)), CVar(CLng(var_92)), var_22C, var_F4)) 'String
  loc_1BA0210:         LateIdCallSt
  loc_1BA025B:         var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_92)), var_22C, var_F4)) 'String
  loc_1BA0262:         LateIdCallSt
  loc_1BA02A3:         var_E4 = CVar(CLng(var_92)) 'Long
  loc_1BA02AB:         var_128 = CVar(CLng(5)) 'Long
  loc_1BA02C6:         var_118 = CStr(Right(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("KotDocid")), var_22C, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("KotDocid")), var_22C, var_F4, CVar(CLng(var_92)))), CVar(CLng(var_92)))), 8))
  loc_1BA02D1:         var_138 = CVar(CStr(Val(var_118))) 'String
  loc_1BA02D8:         LateIdCallSt
  loc_1BA032E:         var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("KotDocid")), CVar(CLng(&HD)), CVar(CLng(var_92)), var_22C, var_138, CVar(CLng(&HD)))) 'String
  loc_1BA0335:         LateIdCallSt
  loc_1BA037E:         Proc_6_39_E7C810(var_F4, CVar(var_88.Fields.Item("kotSNo")), CVar(CLng(&HC)), CVar(CLng(var_92)), var_22C, var_F4)
  loc_1BA038E:         LateIdCallSt
  loc_1BA03DB:         var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomCat")), CVar(CLng(&H15)), CVar(CLng(var_92)), var_22C, CVar(CStr(var_F4)))) 'String
  loc_1BA03E2:         LateIdCallSt
  loc_1BA042D:         var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Roomtype")), CVar(CLng(&H16)), CVar(CLng(var_92)), var_22C, var_F4)) 'String
  loc_1BA0434:         LateIdCallSt
  loc_1BA047D:         Proc_6_39_E7C810(var_F4, CVar(var_88.Fields.Item("RoomNo")), CVar(CLng(&H17)), CVar(CLng(var_92)), var_22C, var_F4)
  loc_1BA048D:         LateIdCallSt
  loc_1BA04DA:         var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Godowncode")), CVar(CLng(&H1A)), CVar(CLng(var_92)), var_22C, CVar(CStr(var_F4)))) 'String
  loc_1BA04E1:         LateIdCallSt
  loc_1BA052C:         var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RateIncTax")), CVar(CLng(&H1C)), CVar(CLng(var_92)), var_22C, var_F4)) 'String
  loc_1BA0533:         LateIdCallSt
  loc_1BA057C:         Proc_6_39_E7C810(var_F4, CVar(var_88.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(var_92)), var_22C, var_F4)
  loc_1BA058C:         LateIdCallSt
  loc_1BA05A4:         var_E4 = CVar(CLng(var_92)) 'Long
  loc_1BA05D7:         Proc_6_39_E7C810(var_F4, CVar(var_88.Fields.Item("CatType")), CVar(CLng(&H1F)), var_E4, var_22C, CVar(CStr(var_F4)))
  loc_1BA05E7:         LateIdCallSt
  loc_1BA0632:         var_184 = CVar(CLng(var_92)) 'Long
  loc_1BA063A:         var_1A4 = CVar(CLng(&H1E)) 'Long
  loc_1BA0662:         var_1B4 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VoidYN")), var_22C, CVar(CStr(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VoidYN")), var_22C, CVar(CStr(var_F4)), "F")))), "F"))) = "F") 'Variant
  loc_1BA0675:         var_204 = CVar(CStr(IIf(var_1B4, "Free", vbNullString))) 'String
  loc_1BA067C:         LateIdCallSt
  loc_1BA069E:         var_C0 = CVar(CLng(var_92)) 'Long
  loc_1BA06B0:         LateIdCallSt
  loc_1BA06BA:         Set var_22C = Nothing 
  loc_1BA06C4:         var_92 = (var_92 + 1)
  loc_1BA06CA:         var_88.MoveNext
  loc_1BA06CF:         GoTo loc_1B9F9E0
  loc_1BA06D2:       End If
  loc_1BA06D6:       Set var_AC = var_22C(var_92)
  loc_1BA06DC:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(global_68)
  loc_1BA06EB:       var_C0 = CVar((CLng(var_C0) - 1)) 'Long
  loc_1BA06FE:       Set var_C4 = var_C0(global_68)
  loc_1BA0704:       LateIdCallSt
  loc_1BA0723:       Set var_AC = var_C4(1)
  loc_1BA0729:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6(var_22C)
  loc_1BA073F:       Set var_AC = var_C4(CInt(3))
  loc_1BA0745:       Call 0.Method_Proc_258_145_1BA10F40 (vbNullString, var_204, var_1A4, var_184)
  loc_1BA0766:       For var_230 = 0 To CInt(UBound(var_A0, 1)):   var_A2 = var_230 'Integer
  loc_1BA077A:         Set var_AC = var_C4(CInt(3))
  loc_1BA0780:         Call 0.Method_Proc_258_145_1BA10F40 (var_118, 0, var_138)
  loc_1BA0788:         1 = var_22C
  loc_1BA07AE:         Set var_13C = var_144(CInt(3))
  loc_1BA07B4:         Call 0.Method_Proc_258_145_1BA10F40 (var_118 & var_A0(CLng(var_A2)) & ",")
  loc_1BA07BC:         var_144.Text = 1
  loc_1BA07D8:       Next var_230 'Integer
  loc_1BA07E8:       Set var_AC = var_C4(CInt(3))
  loc_1BA07EE:       Call 0.Method_Proc_258_145_1BA10F40 ()
  loc_1BA07FE:       Set var_13C = var_144(CInt(3))
  loc_1BA0804:       Call 0.Method_Proc_258_145_1BA10F40 ()
  loc_1BA0824:       var_138 = (Len(Trim(CVar(var_144))) - 1)
  loc_1BA0837:       var_1B4 = CVar(var_C4) 'Address
  loc_1BA0855:       Set var_168 = var_16C(CInt(3))
  loc_1BA085B:       Call 0.Method_Proc_258_145_1BA10F40 (CStr(Mid(var_1B4, 1, var_138)))
  loc_1BA0863:       var_16C.Text = 
  loc_1BA0883:     End If
  loc_1BA088B:     Set var_AC = (True)
  loc_1BA0891:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_19()
  loc_1BA08AD:     var_F4 = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,RM.Sundry " & " FROM Sale2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_1BA08F4:     unk_5B213D.Execute CStr(var_F4 & Me.Fields.Item("SearchCode").Value & "'"), var_1B4, -1
  loc_1BA08FF:     Set var_88 = var_13C
  loc_1BA0928:     Set var_AC = var_13C(1)
  loc_1BA092E:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1BA094A:     If (var_88.RecordCount > 0) Then
  loc_1BA094D:       ' Referenced from:   1BA0D15
  loc_1BA095C:       If Not(var_88.EOF) Then
  loc_1BA0963:         Set var_234 = ()
  loc_1BA096F:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000(vbNullString)
  loc_1BA097B:         Set var_13C = ()
  loc_1BA0981:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1BA0990:         var_E4 = CVar((CLng() - 1)) 'Long
  loc_1BA09CF:         LateIdCallSt
  loc_1BA09ED:         Set var_13C = CVar(CStr(var_88.Fields.Item("Sno1").Value))(var_234)
  loc_1BA09F3:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(0)))
  loc_1BA0A02:         var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA0A41:         LateIdCallSt
  loc_1BA0A5F:         Set var_13C = CVar(CStr(var_88.Fields.Item("SNo").Value))(var_234)
  loc_1BA0A65:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(1)))
  loc_1BA0A74:         var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA0AB3:         LateIdCallSt
  loc_1BA0AD1:         Set var_13C = CVar(CStr(var_88.Fields.Item("TaxCode").Value))(var_234)
  loc_1BA0AD7:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(2)))
  loc_1BA0AE6:         var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA0B25:         LateIdCallSt
  loc_1BA0B43:         Set var_13C = CVar(CStr(var_88.Fields.Item("Name").Value))(var_234)
  loc_1BA0B49:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(3)))
  loc_1BA0B58:         var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA0B97:         LateIdCallSt
  loc_1BA0BB5:         Set var_13C = CVar(CStr(var_88.Fields.Item("BaseValue").Value))(var_234)
  loc_1BA0BBB:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(4)))
  loc_1BA0BCA:         var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA0C09:         LateIdCallSt
  loc_1BA0C27:         Set var_13C = CVar(CStr(var_88.Fields.Item("TaxPer").Value))(var_234)
  loc_1BA0C2D:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(5)))
  loc_1BA0C3C:         var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA0C7B:         LateIdCallSt
  loc_1BA0C99:         Set var_13C = CVar(CStr(var_88.Fields.Item("TaxAmt").Value))(var_234)
  loc_1BA0C9F:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(6)))
  loc_1BA0CAE:         var_E4 = CVar((CLng(var_E4) - 1)) 'Long
  loc_1BA0CB6:         var_128 = CVar(CLng(7)) 'Long
  loc_1BA0CE6:         var_114 = CVar(CStr(var_88.Fields.Item("Sundry").Value)) 'String
  loc_1BA0CED:         LateIdCallSt
  loc_1BA0D09:         Set var_234 = Nothing 
  loc_1BA0D10:         var_88.MoveNext
  loc_1BA0D15:         GoTo loc_1BA094D
  loc_1BA0D18:       End If
  loc_1BA0D18:     End If
  loc_1BA0D1E:     If (var_92 = 1) Then
  loc_1BA0D2E:       Set var_AC = var_234(1)
  loc_1BA0D34:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_114)
  loc_1BA0D40:       Set var_13C = "'"(var_128)
  loc_1BA0D62:       Set var_C4 = CInt(0)(CVar(CStr(Proc_6_127_F24F80(var_13C))))
  loc_1BA0D68:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_1BA0D80:       Set var_AC = ()
  loc_1BA0D86:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1BA0D95:       var_C0 = CVar((CLng() - 1)) 'Long
  loc_1BA0DAE:       LateIdCallSt
  loc_1BA0DCD:       Set var_AC = 1(global_68)(1)
  loc_1BA0DD3:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_1BA0DDB:     End If
  loc_1BA0DE6:     If (global_196 = "Y") Then
  loc_1BA0DFD:       var_118 = "SELECT  Distinct  CAST(P.Vno AS varchar(10)) AS SearchCode, CAST(P.Vno AS varchar(10)) AS Vno, P.CustName,P.Docid FROM   PackingOrder P INNER JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID  WHERE     (P.LogSite_Code = '" & MemVar_1F92078
  loc_1BA0E15:       var_F4 = CVar(var_118 & "') AND (P.RestCode = '" & global_76 & "') and PD.ContraDocID='") 'String
  loc_1BA0E45:       var_114 = var_F4 & Me.Fields.Item("SearchCode").Value 
  loc_1BA0E4E:       var_138 = var_114 & "'" 
  loc_1BA0E5C:       unk_5B213D.Execute CStr(var_138), var_1B4, -1
  loc_1BA0E67:       Set var_9C = var_13C
  loc_1BA0E94:       var_B0 = Me.Recordset15.RecordCount
  loc_1BA0EA2:       If (var_B0 > 0) Then
  loc_1BA0EA5:         ' Referenced from:   1BA0FE7
  loc_1BA0EB9:         If (Me.Recordset15.EOF = 0) Then
  loc_1BA0EFE:           Call 0.Method_Proc_258_145_1BA10F40 (CStr(Me.Recordset15.Fields.Item("DocID").Value))
  loc_1BA0F06:           var_144.Tag = var_144(CInt(&HB))
  loc_1BA0F58:           Set var_13C = var_144(CInt(&HB))
  loc_1BA0F5E:           Call 0.Method_Proc_258_145_1BA10F40 (CStr(Me.Recordset15.Fields.Item("VNo").Value))
  loc_1BA0F66:           var_144.Text = 
  loc_1BA0F99:           var_C4 = Me.Recordset15.Fields.Item("CustName")
  loc_1BA0FB8:           Set var_13C = var_144(CInt(&HC))
  loc_1BA0FBE:           Call 0.Method_Proc_258_145_1BA10F40 (CStr(var_C4.Value))
  loc_1BA0FC6:           var_144.Text = 
  loc_1BA0FE2:           Me.Recordset15.MoveNext
  loc_1BA0FE7:           GoTo loc_1BA0EA5
  loc_1BA0FEA:         End If
  loc_1BA0FED:       Else
  loc_1BA0FFB:         Set var_AC = var_C4(CInt(&HB))
  loc_1BA1001:         Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1BA1009:         var_C4.Tag = 
  loc_1BA1023:         Set var_AC = var_C4(CInt(&HB))
  loc_1BA1029:         Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1BA1031:         var_C4.Text = 
  loc_1BA104B:         Set var_AC = var_C4(CInt(&HC))
  loc_1BA1051:         Call 0.Method_Proc_258_145_1BA10F40 (vbNullString)
  loc_1BA1059:         var_C4.Text = 
  loc_1BA1065:       End If
  loc_1BA1065:     End If
  loc_1BA1065:   End If
  loc_1BA1068: Else
  loc_1BA1068:   Call Proc_258_147_10E7154()
  loc_1BA106D: End If
  loc_1BA106D: Call Proc_258_149_FD63A8()
  loc_1BA1077: Set var_88 = Nothing
  loc_1BA107F: Set var_90 = Nothing
  loc_1BA1087: Set var_88 = Nothing
  loc_1BA108F: Set var_9C = Nothing
  loc_1BA1097: Set var_98 = Nothing
  loc_1BA109E: Exit Sub
  loc_1BA109F: ' Referenced from: 1B9BE00
  loc_1BA10A7: Set var_AC = Err()
  loc_1BA10AD: Call 0.Method_arg_1C (var_B0)
  loc_1BA10BE: If (var_B0 = &HBCD) Then
  loc_1BA10DA:   MsgBox("Record is Deleted by somebody", &H40, var_F4, var_114, var_138)
  loc_1BA10EA:   Exit Sub
  loc_1BA10EB: End If
  loc_1BA10EB: Proc_6_60_E62BC4()
  loc_1BA10F0: Exit Sub
End Sub

Public Sub Proc_258_146_112127C
  'Data Table: 5B2100
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_5B213D As Connection15
  Dim var_D0 As Recordset15
  Dim var_E8 As Field20
  Dim var_F8 As Variant
  Dim var_AC As Variant
  Dim var_118 As Variant
  loc_1120F49: Set var_9C = Me.TopCtrl1
  loc_1120F4F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(&HFF)
  loc_1120F57: var_B0 = CStr()
  loc_1120F68: If (var_B0 = "Add") Then
  loc_1120F98:   Set var_9C = var_B4(CInt(2))
  loc_1120F9E:   Call 0.Method_Proc_258_146_112127C0 (var_B0, "Select Count(*) From Sale1 Where DocID='", var_AC, -1, var_D0)
  loc_1120FBF:   unk_5B213D.Execute 0 & var_B0 & "'", var_E8, var_F8
  loc_1120FC7:    = var_D0.Fields
  loc_1120FCF:    = var_B4.Text.Item()
  loc_1120FD7:    = var_E8.Value
  loc_1121004:   If (var_F8 > 0) Then
  loc_112100D:     Call Proc_258_151_10E8580(MemVar_1F92044)
  loc_1121020:     Set var_9C = var_B4(CInt(2))
  loc_1121026:     Call 0.Method_Proc_258_146_112127C0 (var_B0)
  loc_112102E:     var_B4.Text = var_B0
  loc_112103D:   End If
  loc_112103D: End If
  loc_1121046: Set var_9C = 1(var_88)
  loc_112104C: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1121062: For var_11C =  To CInt((CLng() - 1)):  = var_11C 'Integer
  loc_112107D:   Set var_9C = CVar(CLng(var_88))(CVar(CLng(4)))
  loc_1121083:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1121094:   var_118 = Trim(CVar(CStr()))
  loc_11210B0:   If CBool(var_118 <> vbNullString) Then
  loc_11210C8:     Set var_9C = CVar(CLng(var_88))(CVar(CLng(7)))
  loc_11210CE:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_11210EF:     If (CDbl(Val(CStr())) = CDbl(0)) Then
  loc_1121117:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_14C)
  loc_1121137:       Set var_9C = (CVar(CLng(var_88)))
  loc_112113D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_1121149:       Set var_9C = ()
  loc_112114F:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001()
  loc_112115F:       Proc_258_146_112127C = 0
  loc_1121165:     End If
  loc_112117A:     Set var_9C = CVar(CLng(var_88))(CVar(CLng(8)))
  loc_1121180:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_11211B1:     Set var_B4 = CVar(CLng(var_88))(CVar(CLng(&H1E)))
  loc_11211B7:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((CDbl(Val(CStr())) = CDbl(0)))
  loc_11211C2:     var_118 = CVar(CStr()) 'String
  loc_11211C8:     var_14C = Trim(var_118)
  loc_11211F7:     If CBool( And (var_14C <> "Free")) Then
  loc_112121F:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_14C)
  loc_112123F:       Set var_9C = (CVar(CLng(var_88)))
  loc_1121245:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_1121251:       Set var_9C = ()
  loc_1121257:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001()
  loc_1121267:       Proc_258_146_112127C = 0
  loc_112126D:     End If
  loc_112126D:   End If
  loc_1121270: Next var_11C 'Integer
  loc_1121275: Proc_258_146_112127C = 
End Sub

Public Sub Proc_258_147_10E7154
  'Data Table: 5B2100
  Dim var_8C As Label
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  loc_10E6E3D: (vbNullString).Caption = 
  loc_10E6E53: Set var_8C = var_86(var_8E)
  loc_10E6E59: Call 0.Method_Proc_258_147_10E7154C (CByte(0))
  loc_10E6E69: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_10E6E7F:   Set var_8C = var_98(CInt(var_86))
  loc_10E6E85:   Call 0.Method_Proc_258_147_10E71540 (vbNullString)
  loc_10E6E8D:   var_98.Text = 
  loc_10E6EA9:   Set var_8C = var_98(CInt(var_86))
  loc_10E6EAF:   Call 0.Method_Proc_258_147_10E71540 (vbNullString)
  loc_10E6EB7:   var_98.Tag = 
  loc_10E6EC6: Next var_92 'Byte
  loc_10E6ED9: Set var_8C = (1)
  loc_10E6EDF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_10E6EF4: (vbNullString).Caption = 
  loc_10E6F22: Set var_98 = CInt(0)(CVar(CStr(Proc_6_127_F24F80(()))))
  loc_10E6F28: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000()
  loc_10E6F3C: var_A8 = 1
  loc_10E6F5B: Set var_8C = CVar(CLng(1))(global_312)
  loc_10E6F61: LateIdCallSt
  loc_10E6F8B: Set var_8C = CVar(CLng(2))(global_308)
  loc_10E6F91: LateIdCallSt
  loc_10E6FA6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(1(var_8C))
  loc_10E6FB5: var_A8 = CVar((CLng(var_A8) - 1)) 'Long
  loc_10E6FC8: Set var_98 = 1(global_68)
  loc_10E6FCE: LateIdCallSt
  loc_10E6FED: Set var_8C = var_98(1)
  loc_10E6FF3: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_10E7009: Set var_8C = var_86(var_8E)
  loc_10E700F: Call 0.Method_Proc_258_147_10E7154C (CByte(1))
  loc_10E701C: For var_100 =  To CByte(var_8E):  = var_100 'Byte
  loc_10E7032:   Set var_8C = var_98(CInt(var_86))
  loc_10E7038:   Call 0.Method_Proc_258_147_10E71540 (vbNullString)
  loc_10E7040:   var_98.Text = 
  loc_10E704F: Next var_100 'Byte
  loc_10E7063: Set var_8C = var_86(var_8E)
  loc_10E7069: Call 0.Method_Proc_258_147_10E7154C (CByte(1))
  loc_10E7076: For var_104 =  To CByte(var_8E):  = var_104 'Byte
  loc_10E708C:   Set var_8C = var_98(CInt(var_86))
  loc_10E7092:   Call 0.Method_Proc_258_147_10E71540 (vbNullString)
  loc_10E709A:   var_98.Text = 
  loc_10E70A9: Next var_104 'Byte
  loc_10E70BD: Set var_8C = var_98(CInt(5))
  loc_10E70C3: Call 0.Method_Proc_258_147_10E71540 ("00:00")
  loc_10E70CB: var_98.Text = 
  loc_10E70E5: Set var_8C = var_98(CInt(5))
  loc_10E70EB: Call 0.Method_Proc_258_147_10E71540 (vbNullString)
  loc_10E70F3: var_98.Tag = 
  loc_10E7111: Set var_8C = var_98(CInt(4))
  loc_10E7117: Call 0.Method_Proc_258_147_10E71540 (CStr(1))
  loc_10E711F: var_98.Text = 
  loc_10E7134: global_316 = vbNullString
  loc_10E7145: Set var_8C = (0)
  loc_10E714B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_10E7153: Exit Sub
End Sub

Public Sub Proc_258_148_1079CA0(arg_C) '1079CA0
  'Data Table: 5B2100
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_1079A02: Set var_8C = var_86(var_8E)
  loc_1079A08: Call 0.Method_Proc_258_148_1079CA0C (CByte(0))
  loc_1079A18: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_1079A2E:   Set var_8C = var_98(CInt(var_86))
  loc_1079A34:   Call 0.Method_Proc_258_148_1079CA00 (arg_C)
  loc_1079A3C:   var_98.Enabled = 
  loc_1079A4B: Next var_92 'Byte
  loc_1079A5F: Set var_8C = var_86(var_8E)
  loc_1079A65: Call 0.Method_Proc_258_148_1079CA0C (CByte(1))
  loc_1079A72: For var_9C =  To CByte(var_8E):  = var_9C 'Byte
  loc_1079A88:   Set var_8C = var_98(CInt(var_86))
  loc_1079A8E:   Call 0.Method_Proc_258_148_1079CA00 (arg_C)
  loc_1079A96:   var_98.Enabled = 
  loc_1079AA5: Next var_9C 'Byte
  loc_1079AB9: Set var_8C = var_86(var_8E)
  loc_1079ABF: Call 0.Method_Proc_258_148_1079CA0C (CByte(1))
  loc_1079ACC: For var_A0 =  To CByte(var_8E):  = var_A0 'Byte
  loc_1079AE2:   Set var_8C = var_98(CInt(var_86))
  loc_1079AE8:   Call 0.Method_Proc_258_148_1079CA00 (arg_C)
  loc_1079AF0:   var_98.Enabled = 
  loc_1079AFF: Next var_A0 'Byte
  loc_1079B12: Set var_8C = var_98(CInt(2))
  loc_1079B18: Call 0.Method_Proc_258_148_1079CA00 (0)
  loc_1079B20: var_98.Enabled = 
  loc_1079B39: Set var_8C = var_98(CInt(5))
  loc_1079B3F: Call 0.Method_Proc_258_148_1079CA00 (0)
  loc_1079B47: var_98.Enabled = 
  loc_1079B60: Set var_8C = var_98(CInt(1))
  loc_1079B66: Call 0.Method_Proc_258_148_1079CA00 (0)
  loc_1079B6E: var_98.Enabled = 
  loc_1079B87: Set var_8C = var_98(CInt(0))
  loc_1079B8D: Call 0.Method_Proc_258_148_1079CA00 (0)
  loc_1079B95: var_98.Enabled = 
  loc_1079BAE: Set var_8C = var_98(CInt(8))
  loc_1079BB4: Call 0.Method_Proc_258_148_1079CA00 (0)
  loc_1079BBC: var_98.Enabled = 
  loc_1079BD5: Set var_8C = (Not(arg_C))
  loc_1079BDB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_1079BF3: Set var_8C = (Not(arg_C))
  loc_1079BF9: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_1079C11: Set var_8C = (Not(arg_C))
  loc_1079C17: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_1079C2D: Set var_8C = (arg_C)
  loc_1079C33: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_1079C48: (arg_C).Enabled = 
  loc_1079C5D: Set var_8C = var_98(CInt(&HD))
  loc_1079C63: Call 0.Method_Proc_258_148_1079CA00 (0)
  loc_1079C6B: var_98.Enabled = 
  loc_1079C84: Set var_8C = var_98(CInt(&HF))
  loc_1079C8A: Call 0.Method_Proc_258_148_1079CA00 (0)
  loc_1079C92: var_98.Enabled = 
  loc_1079C9E: Exit Sub
End Sub

Public Sub Proc_258_149_FD63A8
  'Data Table: 5B2100
  loc_FD61E8: If (CBool(().Visible) = &HFF) Then
  loc_FD61FA:   (False).Visible = 
  loc_FD6202: End If
  loc_FD621E: If (CBool(().Visible) = &HFF) Then
  loc_FD6230:   (False).Visible = 
  loc_FD6238: End If
  loc_FD6254: If (CBool(().Visible) = &HFF) Then
  loc_FD6266:   (False).Visible = 
  loc_FD626E: End If
  loc_FD628A: If (CBool(().Visible) = &HFF) Then
  loc_FD629C:   (False).Visible = 
  loc_FD62A4: End If
  loc_FD62C0: If (CBool(().Visible) = &HFF) Then
  loc_FD62D2:   (False).Visible = 
  loc_FD62DA: End If
  loc_FD62F6: If (CBool(().Visible) = &HFF) Then
  loc_FD6308:   (False).Visible = 
  loc_FD6310: End If
  loc_FD632B: If (Me.FrameQty.Visible = &HFF) Then
  loc_FD633A:   Me.FrameQty.Visible = False
  loc_FD6342: End If
  loc_FD634F: var_BA = Me.FrDiscType.Visible
  loc_FD635D: If (var_BA = &HFF) Then
  loc_FD636C:   Me.FrDiscType.Visible = False
  loc_FD6374: End If
  loc_FD6381:  = (var_BA).Visible
  loc_FD638F: If (var_BA = &HFF) Then
  loc_FD639E:   (0).Visible = 
  loc_FD63A6: End If
  loc_FD63A6: Exit Sub
End Sub

Public Sub Proc_258_150_F65730
  'Data Table: 5B2100
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_8C As Field20
  loc_F6560C: Call Proc_258_149_FD63A8()
  loc_F6561C: Set var_88 = var_8C(CInt(1))
  loc_F65622: Call 0.Method_Proc_258_150_F657300 ()
  loc_F6562A: var_94 = "Invoice Date"
  loc_F6564B: If (Proc_6_27_EA565C(var_8C) = 0) Then
  loc_F6564E:   Exit Sub
  loc_F6564F: End If
  loc_F6565A: Set var_88 = var_8C(CInt(0))
  loc_F65660: Call 0.Method_Proc_258_150_F657300 (var_94)
  loc_F65668: var_94 = "Invoice No"
  loc_F65689: If (Proc_6_27_EA565C(var_8C) = 0) Then
  loc_F6568C:   Exit Sub
  loc_F6568D: End If
  loc_F656C4: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F656DC:   var_88 = Me.Fields
  loc_F65706:   If (var_88.Item("MultiBillGeneration").Value = "Yes") Then
  loc_F65709:     Call Proc_258_153_1D6E8C4(var_94)
  loc_F65711:   Else
  loc_F65711:     Call TopCtrl1_UnknownEvent_16()
  loc_F65716:   End If
  loc_F65719: Else
  loc_F6571D:   Call 0.Method_arg_1E8 (var_88)
  loc_F65725:   Call var_88.SetFocus
  loc_F6572E: End If
  loc_F6572E: Exit Sub
End Sub

Public Sub Proc_258_151_10E8580
  'Data Table: 5B2100
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_10E82A8: var_90 = global_184
  loc_10E82BF: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10E82F0: Set var_A8 = var_AC(CInt(1))
  loc_10E82F6: Call 0.Method_Proc_258_151_10E85800 (CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="), var_130)
  loc_10E8305: Proc_6_7_F25D88(var_CC, CVar(var_AC))
  loc_10E830D: var_EC = -1 & var_CC 
  loc_10E8321: Me.Connection15.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E832C: Set var_8C = var_134
  loc_10E8368: If (var_8C.RecordCount > 0) Then
  loc_10E83A7:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10E83DB:     global_164 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E8406:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10E841B:     var_CC = (var_AC.Value + 1)
  loc_10E8424:     global_168 = CLng(var_CC)
  loc_10E8435:   End If
  loc_10E8435: End If
  loc_10E8460: var_BC = Space((5 - Len(var_90)))
  loc_10E8468: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_10E847C: var_EC = Space((5 - Len(global_164)))
  loc_10E8484: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10E8491: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_164))
  loc_10E84AA: var_14C = Space((8 - Len(CStr(global_168))))
  loc_10E84B2: var_15C = (var_130 + var_14C)
  loc_10E84C1: var_17C = (var_15C + CVar(CStr(global_168)))
  loc_10E84CC: global_156 = CStr(var_17C)
  loc_10E8502: global_168(global_164).Caption = 
  loc_10E851B: Set var_A8 = var_AC(CInt(2))
  loc_10E8521: Call 0.Method_Proc_258_151_10E85800 (global_156)
  loc_10E8529: var_AC.Text = 
  loc_10E854B: Set var_A8 = var_AC(CInt(0))
  loc_10E8551: Call 0.Method_Proc_258_151_10E85800 (CStr(global_168))
  loc_10E8559: var_AC.Text = 
  loc_10E856E: var_88 = global_156
  loc_10E8576: Set var_8C = Nothing
  loc_10E8579: Proc_258_151_10E8580 = 
End Sub

Public Sub Proc_258_152_10B5940(arg_C, arg_10, arg_14) '10B5940
  'Data Table: 5B2100
  Dim unk_5B213D As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B56AE: If (arg_C = "RSBIL") Then
  loc_10B56D5:   unk_5B213D.Execute "Select Distinct DocId,V_Type,V_No From Sale1 Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B56E0:   Set var_8C = var_C4
  loc_10B56F3:   var_94 = "ALACARTE Sale Bill Entry"
  loc_10B56F9: Else
  loc_10B56FE:   Proc_258_152_10B5940 = &HFF
  loc_10B5704: End If
  loc_10B5718: If (var_8C.RecordCount > 0) Then
  loc_10B571B:   ' Referenced from: 10B5894
  loc_10B572A:   If Not(var_8C.EOF) Then
  loc_10B5735:     If (var_90 = vbNullString) Then
  loc_10B5778:       var_D4 = "V.Type :-> " & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B577F:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B57B1:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B57D6:     Else
  loc_10B5812:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B5832:       var_10C = CVar(var_120 & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B585F:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B5864:       var_90 = CStr(var_11C)
  loc_10B588C:     End If
  loc_10B588F:     var_8C.MoveNext
  loc_10B5894:     GoTo loc_10B571B
  loc_10B5897:   End If
  loc_10B589D:   Call 0.Method_arg_50 (var_138)
  loc_10B58F9:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B58FC:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B592B:   Set var_8C = Nothing
  loc_10B592E:   Proc_258_152_10B5940 = 0
  loc_10B5934: End If
  loc_10B5939: Proc_258_152_10B5940 = &HFF
End Sub

Public Sub Proc_258_153_1D6E8C4
  'Data Table: 5B2100
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_208 As Variant
  Dim var_1F8 As Variant
  Dim var_248 As Variant
  Dim var_1E8 As Variant
  Dim var_1B0 As String
  Dim unk_5B213D As Connection15
  Dim var_88 As Variant
  Dim var_1A4 As Variant
  Dim var_254 As Variant
  Dim var_260 As Double
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_218 As Variant
  Dim var_1D8 As Variant
  Dim var_238 As Variant
  Dim var_278 As Variant
  Dim var_288 As Variant
  Dim var_298 As Variant
  Dim var_29C As String
  Dim var_1AC As Variant
  Dim var_250 As Variant
  Dim var_B4 As Variant
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_C4 As Double
  Dim var_DC As Variant
  Dim var_E4 As Variant
  Dim var_FC As Variant
  Dim var_D4 As Variant
  Dim var_EC As Double
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_10C As Double
  Dim var_258 As String
  Dim MemVar_1F920EC As Double
  Dim Me As Recordset15
  Dim var_2F4 As String
  Dim var_2F8 As String
  Dim var_2FC As String
  Dim var_2D0 As Variant
  Dim var_118 As Variant
  Dim var_8A As Variant
  Dim var_32C As Variant
  Dim var_3E8 As Variant
  Dim var_478 As Variant
  Dim var_4C0 As Variant
  Dim var_A58 As Double
  Dim var_510 As TextBox
  Dim var_A60 As Double
  Dim var_7A0 As Variant
  Dim var_A68 As Double
  Dim var_8CC As String
  Dim var_964 As TextBox
  Dim var_324 As String
  Dim var_2AC As Variant
  Dim var_2BC As Variant
  Dim var_340 As Variant
  Dim var_350 As Variant
  Dim var_360 As Variant
  Dim var_370 As Variant
  Dim var_380 As Variant
  Dim var_390 As Variant
  Dim var_3C0 As Variant
  Dim var_3E0 As Variant
  Dim var_498 As Variant
  Dim var_4B8 As Variant
  Dim var_4E4 As Variant
  Dim var_504 As Variant
  Dim var_534 As Variant
  Dim var_554 As Variant
  Dim var_574 As Variant
  Dim var_594 As Variant
  Dim var_5B4 As Variant
  Dim var_5D4 As Variant
  Dim var_5F4 As Variant
  Dim var_614 As Variant
  Dim var_634 As Variant
  Dim var_654 As Variant
  Dim var_674 As Variant
  Dim var_6B4 As Variant
  Dim var_6F4 As Variant
  Dim var_714 As Variant
  Dim var_754 As Variant
  Dim var_7C4 As Variant
  Dim var_804 As Variant
  Dim var_894 As Variant
  Dim var_95C As Variant
  Dim var_9C8 As Variant
  Dim var_A08 As Variant
  Dim var_A28 As Variant
  Dim var_A2C As String
  Dim var_3F0 As Variant
  Dim var_438 As Variant
  Dim var_508 As TextBox
  Dim var_798 As TextBox
  Dim var_8B8 As TextBox
  Dim var_488 As Variant
  Dim var_874 As Variant
  Dim var_91C As Variant
  Dim var_A78 As Variant
  Dim var_A88 As Variant
  Dim var_328 As Variant
  Dim var_448 As Variant
  Dim var_AB0 As String
  Dim var_AB4 As String
  Dim var_AD8 As String
  Dim var_1170 As Double
  Dim var_B3C As String
  Dim var_1178 As Double
  Dim var_C08 As String
  Dim var_C70 As String
  Dim var_1190 As Double
  Dim var_CD8 As String
  Dim var_1198 As Double
  Dim var_11A0 As Double
  Dim var_11A8 As Double
  Dim var_330 As String
  Dim var_3EC As String
  Dim var_514 As String
  Dim var_7A4 As String
  Dim var_968 As String
  Dim var_AA0 As String
  Dim var_AA4 As String
  Dim var_AA8 As String
  Dim var_DF8 As Variant
  Dim var_E7C As Variant
  Dim var_EAC As Variant
  Dim var_F10 As Variant
  Dim var_FA4 As Variant
  Dim var_FD4 As Variant
  Dim var_10AC As Variant
  Dim var_1110 As Variant
  Dim var_4C4 As String
  Dim var_3E4 As TextBox
  Dim var_50C As Variant
  Dim var_960 As TextBox
  Dim var_A50 As Variant
  Dim var_DA4 As Variant
  Dim var_14E As Integer
  Dim var_3F4 As TextBox
  Dim var_130 As Recordset15
  Dim var_134 As Recordset15
  Dim var_4BC As TextBox
  Dim var_C6C As Variant
  Dim var_D3C As Fields15
  Dim var_8C8 As Variant
  Dim var_AAC As String
  Dim var_158 As Recordset15
  Dim var_160 As Long
  Dim var_170 As Double
  Dim var_92C As Variant
  Dim var_E6C As Variant
  Dim var_F00 As Variant
  Dim var_F94 As Variant
  Dim var_1100 As Variant
  Dim var_1164 As Variant
  Dim var_A98 As Variant
  Dim var_C04 As Label
  Dim var_CD4 As Field20
  loc_1D66C94: On Error Goto loc_1D6E8A7
  loc_1D66CA2: Set var_1A4 = var_1A8(CInt(1))
  loc_1D66CA8: Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D66CB0: var_1B0 = "Voucher Date"
  loc_1D66CD1: If (Proc_6_27_EA565C(var_1A8) = 0) Then
  loc_1D66CD4:   Exit Sub
  loc_1D66CD5: End If
  loc_1D66CE0: If (global_240 <> "Y") Then
  loc_1D66CEE:   Set var_1A4 = var_1A8(CInt(3))
  loc_1D66CF4:   Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0)
  loc_1D66CFC:   var_1B0 = "Table No"
  loc_1D66D1D:   If (Proc_6_27_EA565C(var_1A8) = 0) Then
  loc_1D66D20:     Exit Sub
  loc_1D66D21:   End If
  loc_1D66D21: End If
  loc_1D66D3A: Set var_1A4 = var_1A8(CInt(&HB))
  loc_1D66D40: Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, (global_240 = "N"))
  loc_1D66D60: If ( And (var_1A8.Tag <> vbNullString)) Then
  loc_1D66D6E:   Set var_1A4 = var_1A8(CInt(&HB))
  loc_1D66D74:   Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D66D7C:   var_1B0 = "Order No"
  loc_1D66D9D:   If (Proc_6_27_EA565C(var_1A8) = 0) Then
  loc_1D66DA0:     Exit Sub
  loc_1D66DA1:   End If
  loc_1D66DA1: End If
  loc_1D66DA8: Set var_1A4 = var_1B0(var_1B2)
  loc_1D66DAE: Call 0.Method_Proc_258_153_1D6E8C48 ()
  loc_1D66DC1: Call TxtGt_Validate((var_1B2 + 1))
  loc_1D66DD4: Set var_1A4 = var_1A8(CInt(0))
  loc_1D66DDA: Call 0.Method_Proc_258_153_1D6E8C40 (0)
  loc_1D66DE2: var_1B0 = "Voucher No"
  loc_1D66E03: If (Proc_6_27_EA565C(var_1A8) = 0) Then
  loc_1D66E06:   Exit Sub
  loc_1D66E07: End If
  loc_1D66E12: Set var_1A4 = var_1A8(CInt(5))
  loc_1D66E18: Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0)
  loc_1D66E20: var_1B0 = "KOT Time"
  loc_1D66E41: If (Proc_6_27_EA565C(var_1A8) = 0) Then
  loc_1D66E44:   Exit Sub
  loc_1D66E45: End If
  loc_1D66E50: If (global_76 = vbNullString) Then
  loc_1D66E6C:   MsgBox("Open RestaurantChange Form ", 0, var_1F8, var_218, var_238)
  loc_1D66E7C:   Exit Sub
  loc_1D66E7D: End If
  loc_1D66E92: Set var_1A4 = 1(CVar(CLng(4)))
  loc_1D66E98: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1B0)
  loc_1D66EA3: var_1F8 = CVar(CStr()) 'String
  loc_1D66EA9: var_218 = Trim(var_1F8)
  loc_1D66EC5: If (var_218 = vbNullString) Then
  loc_1D66EDB:   var_1D8 = "No Item On First Row.."
  loc_1D66EE1:   MsgBox(var_1D8, 0, var_1F8, var_218, var_238)
  loc_1D66EFE:   Set var_1A4 = (1)
  loc_1D66F04:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_1D66F10:   Set var_1A4 = ()
  loc_1D66F16:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001()
  loc_1D66F21:   Exit Sub
  loc_1D66F22: End If
  loc_1D66F2D: If (global_304 = "Room Service") Then
  loc_1D66F4D:   Proc_6_17_EAA2B0(var_1D8, MemVar_1F92078, "Select RoomPayType From enviro WHERE LOGSITE_CODE=")
  loc_1D66F63:   unk_5B213D.Execute CStr(var_218 & var_1D8), -1, var_1A4
  loc_1D66F6E:   Set var_88 = var_1A4
  loc_1D66F94:   If (var_88.RecordCount > 0) Then
  loc_1D66FA9:     var_1A4 = var_88.Fields
  loc_1D66FDB:     If (Proc_6_38_E68A98(var_1A4.Item(0).Value) = vbNullString) Then
  loc_1D66FF9:       var_1D8 = "Please define Room Payment Type From Enviro"
  loc_1D66FFF:       MsgBox(var_1D8, &H40, "Aatithya", var_218, var_238)
  loc_1D6700F:       Exit Sub
  loc_1D67010:     End If
  loc_1D67010:   End If
  loc_1D67013: Else
  loc_1D67030:   Proc_6_17_EAA2B0(var_1D8, MemVar_1F92078, "Select CashPayType From enviro WHERE LOGSITE_CODE=")
  loc_1D6703C:   var_1B0 = CStr(var_218 & var_1D8)
  loc_1D67046:   unk_5B213D.Execute var_1B0, -1, var_1A4
  loc_1D67051:   Set var_88 = var_1A4
  loc_1D67077:   If (var_88.RecordCount > 0) Then
  loc_1D67094:     var_1A8 = var_88.Fields.Item(0)
  loc_1D670A9:     var_12C = Proc_6_38_E68A98(var_1A8.Value)
  loc_1D670BE:     If (var_12C = vbNullString) Then
  loc_1D670E2:       MsgBox("Please define Cash Payment Type From Enviro", &H40, "Aatithya", var_218, var_238)
  loc_1D670F2:       Exit Sub
  loc_1D670F3:     End If
  loc_1D670F3:   End If
  loc_1D670F3: End If
  loc_1D67101: Set var_1A4 = var_1A8(CInt(6))
  loc_1D67107: Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0)
  loc_1D6710F:  = var_1A8.Text
  loc_1D6712B: If (CDbl(Val(var_1B0)) <> CDbl(0)) Then
  loc_1D67135:   Set var_1AC = (var_1B2)
  loc_1D6713B:   Call 0.Method_Proc_258_153_1D6E8C48 ()
  loc_1D6714D:   Set var_250 = var_254(var_1B2)
  loc_1D67153:   Call 0.Method_Proc_258_153_1D6E8C40 (var_258)
  loc_1D6715B:    = var_254.Text
  loc_1D67168:   var_260 = Val(var_258)
  loc_1D67179:   Set var_1A4 = var_1A8(CInt(6))
  loc_1D6717F:   Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0)
  loc_1D671AE:   If (CDbl(Val(var_1B0)) < CDbl(var_1A8.Text)) Then
  loc_1D671D2:     MsgBox("Please fully adjust the Bill", &H10, "Check Balance", var_218, var_238)
  loc_1D671ED:     Set var_1A4 = var_1A8(CInt(6))
  loc_1D671F3:     Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D671FB:     var_1A8.SetFocus
  loc_1D67207:     Exit Sub
  loc_1D67208:   End If
  loc_1D67208: End If
  loc_1D67211: Set var_1A4 = 1(var_92)
  loc_1D67217: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1D6722D: For var_264 =  To CInt((CLng() - 1)):  = var_264 'Integer
  loc_1D67248:   Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&H11)))
  loc_1D6724E:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6726F:   If (CDbl(Val(CStr())) > CDbl(0)) Then
  loc_1D67287:     Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D6728D:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D672A0:     var_260 = Val(CStr())
  loc_1D672AA:     var_A4 = (var_A4 + var_260)
  loc_1D672B9:   Else
  loc_1D672CE:     Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D672D4:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A4)
  loc_1D672F1:     var_AC = (var_AC + Val(CStr(var_260)))
  loc_1D672FD:   End If
  loc_1D67300: Next var_264 'Integer
  loc_1D67311: Set var_1A4 = var_92(var_1B2)
  loc_1D67317: Call 0.Method_Proc_258_153_1D6E8C48 (1)
  loc_1D67322: For var_268 =  To var_1B2:  = var_268 'Integer
  loc_1D6734B:   var_1B0 = "Select IsNull(Max(Nature),'') from SundryType Where  LOGSITE_CODE='" & MemVar_1F92078
  loc_1D67352:   var_218 = CVar(var_1B0 & "' AND SundryCode='") 'String
  loc_1D67362:   Set var_1A4 = var_1A8(var_92)
  loc_1D67368:   Call 0.Method_Proc_258_153_1D6E8C40 (var_258, var_218, var_2AC, -1, var_1AC)
  loc_1D67370:   var_250 = var_1A8.Tag
  loc_1D67378:   var_1D8 = CVar(var_258) 'String
  loc_1D6737E:   var_1F8 = Trim(var_1D8)
  loc_1D673B3:   unk_5B213D.Execute CStr(0 & var_1F8 & "' And V_Type='" & CVar(global_184) & "'"), var_254, var_2BC
  loc_1D673BB:    = var_1AC.Fields
  loc_1D673C3:    = var_250.Item()
  loc_1D673CB:    = var_254.Value
  loc_1D67407:   var_2C0 = Proc_6_38_E68A98(var_2BC)
  loc_1D67412:   If (var_2C0 = "Addition") Then
  loc_1D67422:     Set var_1A4 = var_1A8(var_92)
  loc_1D67428:     Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0)
  loc_1D67430:      = var_1A8.Text
  loc_1D67447:     var_B4 = (var_B4 + Val(var_1B0))
  loc_1D67461:     Set var_1A4 = var_1A8(var_92)
  loc_1D67467:     Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_B4)
  loc_1D6746F:     var_260 = var_1A8.Text
  loc_1D67486:     var_CC = (var_CC + Val(var_1B0))
  loc_1D67496:   Else
  loc_1D6749E:     If (var_2C0 = "Deduction") Then
  loc_1D674AE:       Set var_1A4 = var_1A8(var_92)
  loc_1D674B4:       Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_CC)
  loc_1D674BC:       var_260 = var_1A8.Text
  loc_1D674D3:       var_BC = (var_BC + Val(var_1B0))
  loc_1D674ED:       Set var_1A4 = var_1A8(var_92)
  loc_1D674F3:       Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_BC)
  loc_1D674FB:       var_260 = var_1A8.Text
  loc_1D67512:       var_C4 = (var_C4 + Val(var_1B0))
  loc_1D67522:     Else
  loc_1D6752A:       If (var_2C0 = "Discount") Then
  loc_1D6753A:         Set var_1A4 = var_1A8(var_92)
  loc_1D67540:         Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_C4)
  loc_1D67548:         var_260 = var_1A8.Text
  loc_1D6755F:         var_DC = (var_DC + Val(var_1B0))
  loc_1D67579:         Set var_1A4 = var_1A8(var_92)
  loc_1D6757F:         Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_DC)
  loc_1D67587:         var_260 = var_1A8.Text
  loc_1D6759E:         var_E4 = (var_E4 + Val(var_1B0))
  loc_1D675AE:       Else
  loc_1D675B6:         If (var_2C0 = "Luxury Tax") Then
  loc_1D675C6:           Set var_1A4 = var_1A8(var_92)
  loc_1D675CC:           Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_E4)
  loc_1D675D4:           var_260 = var_1A8.Text
  loc_1D675EB:           var_FC = (var_FC + Val(var_1B0))
  loc_1D67605:           Set var_1A4 = var_1A8(var_92)
  loc_1D6760B:           Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_FC)
  loc_1D67613:           var_260 = var_1A8.Text
  loc_1D6762A:           var_D4 = (var_D4 + Val(var_1B0))
  loc_1D6763A:         Else
  loc_1D67642:           If (var_2C0 = "Round Off") Then
  loc_1D67652:             Set var_1A4 = var_1A8(var_92)
  loc_1D67658:             Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_D4)
  loc_1D67660:             var_260 = var_1A8.Text
  loc_1D67677:             var_EC = (var_EC + Val(var_1B0))
  loc_1D67691:             Set var_1A4 = var_1A8(var_92)
  loc_1D67697:             Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_EC)
  loc_1D6769F:             var_260 = var_1A8.Text
  loc_1D676B6:             var_F4 = (var_F4 + Val(var_1B0))
  loc_1D676C6:           Else
  loc_1D676CE:             If (var_2C0 = "Sale Tax") Then
  loc_1D676DE:               Set var_1A4 = var_1A8(var_92)
  loc_1D676E4:               Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_F4)
  loc_1D676EC:               var_260 = var_1A8.Text
  loc_1D67703:               var_FC = (var_FC + Val(var_1B0))
  loc_1D6771D:               Set var_1A4 = var_1A8(var_92)
  loc_1D67723:               Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_FC)
  loc_1D6772B:               var_260 = var_1A8.Text
  loc_1D67742:               var_D4 = (var_D4 + Val(var_1B0))
  loc_1D67752:             Else
  loc_1D6775A:               If (var_2C0 = "Service Charge") Then
  loc_1D6776A:                 Set var_1A4 = var_1A8(var_92)
  loc_1D67770:                 Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_D4)
  loc_1D67778:                 var_260 = var_1A8.Text
  loc_1D6778F:                 var_104 = (var_104 + Val(var_1B0))
  loc_1D677A9:                 Set var_1A4 = var_1A8(var_92)
  loc_1D677AF:                 Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_104)
  loc_1D677B7:                 var_260 = var_1A8.Text
  loc_1D677CE:                 var_10C = (var_10C + Val(var_1B0))
  loc_1D677DE:               Else
  loc_1D677E6:                 If (var_2C0 = "Service Tax") Then
  loc_1D677F6:                   Set var_1A4 = var_1A8(var_92)
  loc_1D677FC:                   Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_10C)
  loc_1D67804:                   var_260 = var_1A8.Text
  loc_1D6781B:                   var_FC = (var_FC + Val(var_1B0))
  loc_1D67835:                   Set var_1A4 = var_1A8(var_92)
  loc_1D6783B:                   Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_FC)
  loc_1D67843:                   var_260 = var_1A8.Text
  loc_1D6785A:                   var_D4 = (var_D4 + Val(var_1B0))
  loc_1D67867:                 End If
  loc_1D67867:               End If
  loc_1D67867:             End If
  loc_1D67867:           End If
  loc_1D67867:         End If
  loc_1D67867:       End If
  loc_1D67867:     End If
  loc_1D67867:   End If
  loc_1D6786A: Next var_268 'Integer
  loc_1D67872: var_9C = vbNullString
  loc_1D67878: Call Proc_258_146_112127C(var_1B2)
  loc_1D67883: If (var_1B2 = 0) Then
  loc_1D67886:   Exit Sub
  loc_1D67887: End If
  loc_1D67892: Set var_1A4 = var_1A8(0)
  loc_1D67898: Call 0.Method_Proc_258_153_1D6E8C40 (0)
  loc_1D678A0: var_1A8.Visible = 
  loc_1D678AC: Call Proc_258_149_FD63A8()
  loc_1D678BF: Set var_1A4 = var_1A8(CInt(1))
  loc_1D678C5: Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0)
  loc_1D678CD:  = var_1A8.Text
  loc_1D678ED: If (Proc_6_91_EF2D40(CDate(var_1B0)) = 0) Then
  loc_1D678FB:   Set var_1A4 = var_1A8(CInt(1))
  loc_1D67901:   Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D67909:   var_1A8.SetFocus
  loc_1D67915:   Exit Sub
  loc_1D67916: End If
  loc_1D6791A: Set var_1A4 = Me.TopCtrl1
  loc_1D67920: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1D67939: If (CStr() = "Add") Then
  loc_1D67942:   var_1E8 = 0
  loc_1D6795F:   var_1B0 = "Select NCUR from enviro where Logsite_code='" & MemVar_1F92078
  loc_1D6796F:   unk_5B213D.Execute var_1B0 & "'", var_1D8, -1
  loc_1D67977:   var_1A4 = var_1A4.Fields
  loc_1D6797F:   var_1E8 = var_1A8.Item(var_1A8)
  loc_1D67987:   var_1AC = var_1AC.Value
  loc_1D67991:   MemVar_1F920EC = CDate(var_1F8)
  loc_1D679B1:   var_1E8 = 0
  loc_1D679D8:   Set var_1A4 = var_1A8(CInt(2))
  loc_1D679DE:   Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, "Select Count(*) From SplitSale1 Where DocID='", var_1D8, -1, var_1AC, var_250)
  loc_1D679E6:   var_1E8 = var_1A8.Text
  loc_1D679FF:   unk_5B213D.Execute var_254 & var_1B0 & "'", var_1F8, MemVar_1F920EC
  loc_1D67A0F:    = var_250.Item()
  loc_1D67A17:    = var_254.Value
  loc_1D67A44:   If (var_1AC.Fields > 0) Then
  loc_1D67A4D:     Call Proc_258_151_10E8580(MemVar_1F92044)
  loc_1D67A60:     Set var_1A4 = var_1A8(CInt(2))
  loc_1D67A66:     Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0)
  loc_1D67A6E:     var_1A8.Text = var_1B0
  loc_1D67A7D:     Exit Sub
  loc_1D67A7E:   End If
  loc_1D67A81: Else
  loc_1D67AA6:   var_1D8 = Me.Fields.Item("DocID").Value
  loc_1D67AB5:   global_156 = CStr(var_1D8)
  loc_1D67AC6: End If
  loc_1D67ADB: Set var_1A4 = 1(CVar(CLng(&HD)))
  loc_1D67AE1: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D67B02: Set var_1A8 = 1(CVar(CLng(&HC)))
  loc_1D67B08: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D67B1B: var_260 = Val(CStr())
  loc_1D67B3D: var_2F4 = "Select Waiter From KOT where DocID='" & CStr(var_1D8) & "' And SNO ="
  loc_1D67B52: unk_5B213D.Execute var_2F4 & CStr(var_260), var_218, -1
  loc_1D67B5D: Set var_88 = var_1AC
  loc_1D67B95: If (var_88.RecordCount > 0) Then
  loc_1D67BAA:   var_1A4 = var_88.Fields
  loc_1D67BBA:   var_1D8 = var_1A4.Item(0).Value
  loc_1D67BC9:   global_292 = CStr(var_1D8)
  loc_1D67BDA: End If
  loc_1D67BE0: global_180 = vbNullString
  loc_1D67BEA: Call Proc_258_155_EA89BC(var_118, var_1A4)
  loc_1D67BF2: Set var_118 = var_1A4
  loc_1D67BFE: Set var_1A4 = 1(var_92)
  loc_1D67C04: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_1AC)
  loc_1D67C1A: For var_310 =  To CInt((CLng(var_260) - 1)):  = var_310 'Integer
  loc_1D67C35:   Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1D67C3B:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D67C54:   var_248 = vbNullString
  loc_1D67C73:   Set var_1A8 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D67C79:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(CVar(CStr())) <> var_248))
  loc_1D67CB2:   If CBool( And (CDbl(Val(CStr())) <> CDbl(0))) Then
  loc_1D67CC9:     If (var_118.RecordCount > 0) Then
  loc_1D67CCF:       var_118.MoveFirst
  loc_1D67CD8:       var_1C8 = CVar(CLng(var_92)) 'Long
  loc_1D67CE9:       Set var_1A4 = var_1C8(CVar(CLng(&HD)))
  loc_1D67CEF:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D67D49:       var_118.Find "V_NO=" & CStr(Val(CStr(Trim(Right(CVar(CStr(var_1D8)), 8))))), 0, 1
  loc_1D67D73:       If var_118.EOF Then
  loc_1D67D81:         var_118.AddNew var_1C8, var_1E8
  loc_1D67D8A:         var_1C8 = CVar(CLng(var_92)) 'Long
  loc_1D67D9B:         Set var_1A4 = var_1C8(CVar(CLng(&HD)))
  loc_1D67DA1:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_248)
  loc_1D67DD8:         var_2D0 = CVar(Val(CStr(Trim(Right(CVar(CStr(var_1D8)), 8))))) 'Double
  loc_1D67DE6:         var_118.Collect = "V_NO"
  loc_1D67E07:         var_118.Update var_1C8, var_1E8
  loc_1D67E0C:       End If
  loc_1D67E0F:     Else
  loc_1D67E1A:       var_118.AddNew var_1C8, var_1E8
  loc_1D67E23:       var_1C8 = CVar(CLng(var_92)) 'Long
  loc_1D67E34:       Set var_1A4 = var_1C8(CVar(CLng(&HD)))
  loc_1D67E3A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2D0)
  loc_1D67E71:       var_2D0 = CVar(Val(CStr(Trim(Right(CVar(CStr(var_1D8)), 8))))) 'Double
  loc_1D67E7F:       var_118.Collect = "V_NO"
  loc_1D67EA0:       var_118.Update var_1C8, var_1E8
  loc_1D67EA5:     End If
  loc_1D67EA5:   End If
  loc_1D67EA8: Next var_310 'Integer
  loc_1D67EB3: var_24C = var_118.RecordCount
  loc_1D67EC1: If (var_24C > 0) Then
  loc_1D67ECA:   var_118.Sort = "V_NO"
  loc_1D67ED2:   var_118.MoveFirst
  loc_1D67ED7:   ' Referenced from: 1D67FC9
  loc_1D67EDD:   var_1B2 = var_118.EOF
  loc_1D67EE6:   If Not(var_1B2) Then
  loc_1D67EF4:     If (global_180 <> vbNullString) Then
  loc_1D67F49:       global_180 = CStr(Trim(CVar(global_180 & "," & CStr(var_118.Fields.Item("V_NO").Value))))
  loc_1D67F69:     Else
  loc_1D67F83:       var_1A8 = var_118.Fields.Item("V_NO")
  loc_1D67F8B:       var_1D8 = var_1A8.Value
  loc_1D67F95:       var_1F8 = CVar(CStr(var_1D8)) 'String
  loc_1D67FA4:       var_1B0 = CStr(Trim(var_1F8))
  loc_1D67FAA:       global_180 = var_1B0
  loc_1D67FC1:     End If
  loc_1D67FC4:     var_118.MoveNext
  loc_1D67FC9:     GoTo loc_1D67ED7
  loc_1D67FCC:   End If
  loc_1D67FD5:   global_180 = global_180
  loc_1D67FD9: End If
  loc_1D67FDB: var_8A = &HFF
  loc_1D67FE7: unk_5B213D.BeginTrans var_24C
  loc_1D6800A: Set var_1A4 = var_1A8(CInt(2))
  loc_1D68010: Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, "Delete From SplitStock Where DocID='", var_1D8)
  loc_1D68018: -1 = var_1A8.Text
  loc_1D68031: unk_5B213D.Execute var_1AC & var_1B0 & "'", var_8A, 
  loc_1D68069: Set var_1A4 = var_1A8(CInt(2))
  loc_1D6806F: Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, "Delete From SplitSale1 Where DocID='", var_1D8)
  loc_1D68077: -1 = var_1A8.Text
  loc_1D68090: unk_5B213D.Execute var_1AC & var_1B0 & "'", , 
  loc_1D680C8: Set var_1A4 = var_1A8(CInt(2))
  loc_1D680CE: Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, "Delete From SplitSale2 Where DocID='", var_1D8)
  loc_1D680D6: -1 = var_1A8.Text
  loc_1D680EF: unk_5B213D.Execute var_1AC & var_1B0 & "'", , 
  loc_1D68127: Set var_1A4 = var_1A8(CInt(2))
  loc_1D6812D: Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, "Delete From SplitedSunTran Where DocID='", var_1D8)
  loc_1D68135: -1 = var_1A8.Text
  loc_1D6814E: unk_5B213D.Execute var_1AC & var_1B0 & "'", , 
  loc_1D68173: If (global_304 = "Room Service") Then
  loc_1D68184:   Set var_1A4 = var_1A8(CInt(2))
  loc_1D6818A:   Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0)
  loc_1D68192:    = var_1A8.Text
  loc_1D681A5:   Set var_1AC = var_250(CInt(0))
  loc_1D681AB:   Call 0.Method_Proc_258_153_1D6E8C40 (var_2F4)
  loc_1D681B3:    = var_250.Text
  loc_1D681C0:   var_260 = Val(var_2F4)
  loc_1D681CE:   Set var_254 = var_328(CInt(1))
  loc_1D681D4:   Call 0.Method_Proc_258_153_1D6E8C40 (var_260)
  loc_1D681E3:   Proc_6_7_F25D88(var_1F8)
  loc_1D681F5:    = CVar(var_328)(var_330).Caption
  loc_1D68208:   Set var_3E4 = var_3E8(CInt(3))
  loc_1D6820E:   Call 0.Method_Proc_258_153_1D6E8C40 (var_3EC)
  loc_1D68216:    = var_3E8.Text
  loc_1D68226:   Set var_3F0 = var_3F4(CInt(3))
  loc_1D6822C:   Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D68246:   Set var_438 = 1(CVar(CLng(&H17)))
  loc_1D6824C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D68283:   Set var_4BC = var_4C0(CInt(4))
  loc_1D68289:   Call 0.Method_Proc_258_153_1D6E8C40 (var_4C4)
  loc_1D68291:    = var_4C0.Text
  loc_1D6829E:   var_A58 = Val(var_4C4)
  loc_1D682A8:   Set var_508 = var_A58(var_1B2)
  loc_1D682AE:   Call 0.Method_Proc_258_153_1D6E8C44 ()
  loc_1D682C0:   Set var_50C = var_510(var_1B2)
  loc_1D682C6:   Call 0.Method_Proc_258_153_1D6E8C40 (var_514)
  loc_1D682CE:    = var_510.Text
  loc_1D682DB:   var_A60 = Val(var_514)
  loc_1D682E5:   Set var_798 = var_A60(var_1B4)
  loc_1D682EB:   Call 0.Method_Proc_258_153_1D6E8C48 ()
  loc_1D682FD:   Set var_79C = var_7A0(var_1B4)
  loc_1D68303:   Call 0.Method_Proc_258_153_1D6E8C40 (var_7A4)
  loc_1D6830B:    = var_7A0.Text
  loc_1D68318:   var_A68 = Val(var_7A4)
  loc_1D68329:   Proc_6_7_F25D88(var_884, Date)
  loc_1D68332:   Set var_8B8 = Me.TopCtrl1
  loc_1D68338:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A68)
  loc_1D6836A:   var_92C = IIf((CStr(var_8C8) = "Add"), "A", "E")
  loc_1D6837D:   Set var_960 = var_964(CInt(5))
  loc_1D68383:   Call 0.Method_Proc_258_153_1D6E8C40 (var_968)
  loc_1D6838B:    = var_964.Text
  loc_1D683A4:   var_258 = "Insert Into SplitSale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_1D683FD:   var_340 = CVar(var_258 & var_1B0 & "'," & CStr(var_260) & ",") & var_1F8 & ",'" & CVar(global_184) & "','" & CVar(var_330) & "','" 
  loc_1D68449:   var_3C0 = var_340 & CVar(MemVar_1F92070) & "','" & CVar(global_76) & "','" & CVar(global_188) & "','" & CVar(global_192) 
  loc_1D68481:   var_534 = var_3C0 & "','" & IIf((var_3EC <> vbNullString), CVar(var_3F4), CVar(CStr())) & "'," & CVar(var_A58) & "," & CVar(var_A60) 
  loc_1D684F9:   var_6B4 = var_534 & "," & CVar(var_E4) & "," & CVar(var_DC) & "," & CVar(var_AC) & "," & CVar(var_A4) & "," & CVar(var_FC) & ", " & CVar(var_104) 
  loc_1D6855F:   var_804 = var_6B4 & "," & CVar(var_B4) & "," & CVar(var_BC) & "," & CVar(var_EC) & "," & CVar(var_A68) & ",'" & CVar(global_180) 
  loc_1D685BB:   var_9C8 = var_804 & "', '" & CVar(MemVar_1F920C8) & "'," & var_884 & ",'" & var_92C & "','" & CVar(var_968) & "','" & CVar(global_292) 
  loc_1D685E5:   unk_5B213D.Execute CStr(var_9C8 & "','N','" & CVar(MemVar_1F92078) & "')"), var_A4C, -1
  loc_1D686CC: Else
  loc_1D686DA:   Set var_1A4 = var_1A8(CInt(2))
  loc_1D686E0:   Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0)
  loc_1D686E8:   var_A50 = var_1A8.Text
  loc_1D686FB:   Set var_1AC = var_250(CInt(0))
  loc_1D68701:   Call 0.Method_Proc_258_153_1D6E8C40 (var_2F4)
  loc_1D68709:    = var_250.Text
  loc_1D68716:   var_260 = Val(var_2F4)
  loc_1D68724:   Set var_254 = var_328(CInt(1))
  loc_1D6872A:   Call 0.Method_Proc_258_153_1D6E8C40 (var_260)
  loc_1D68739:   Proc_6_7_F25D88(var_1F8)
  loc_1D6874B:    = CVar(var_328)(var_330).Caption
  loc_1D68765:   Set var_3E4 = 1(CVar(CLng(&H17)))
  loc_1D6876B:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D68785:   Set var_3E8 = var_3F0(CInt(&HD))
  loc_1D6878B:   Call 0.Method_Proc_258_153_1D6E8C40 (var_3EC)
  loc_1D68793:    = var_3F0.Tag
  loc_1D687A6:   Set var_3F4 = var_438(CInt(4))
  loc_1D687AC:   Call 0.Method_Proc_258_153_1D6E8C40 (var_4C4)
  loc_1D687B4:    = var_438.Text
  loc_1D687C1:   var_A58 = Val(var_4C4)
  loc_1D687CB:   Set var_4BC = var_A58(var_1B2)
  loc_1D687D1:   Call 0.Method_Proc_258_153_1D6E8C44 ()
  loc_1D687E3:   Set var_4C0 = var_508(var_1B2)
  loc_1D687E9:   Call 0.Method_Proc_258_153_1D6E8C40 (var_514)
  loc_1D687F1:    = var_508.Text
  loc_1D687FE:   var_A60 = Val(var_514)
  loc_1D68808:   Set var_50C = var_A60(var_1B4)
  loc_1D6880E:   Call 0.Method_Proc_258_153_1D6E8C48 ()
  loc_1D68820:   Set var_510 = var_798(var_1B4)
  loc_1D68826:   Call 0.Method_Proc_258_153_1D6E8C40 (var_7A4)
  loc_1D6882E:    = var_798.Text
  loc_1D6883B:   var_A68 = Val(var_7A4)
  loc_1D6886F:   Proc_6_7_F25D88(var_8C8, Date)
  loc_1D68878:   Set var_79C = Me.TopCtrl1
  loc_1D6887E:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A68)
  loc_1D688C3:   Set var_7A0 = var_8B8(CInt(5))
  loc_1D688C9:   Call 0.Method_Proc_258_153_1D6E8C40 (var_968)
  loc_1D688D1:    = var_8B8.Text
  loc_1D688EA:   var_258 = "Insert Into SplitSale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Party,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_1D6893A:   var_2BC = CVar(var_258 & var_1B0 & "'," & CStr(var_260) & ",") & var_1F8 & ",'" & CVar(global_184) & "','" & CVar(var_330) 
  loc_1D68963:   var_370 = var_2BC & "','" & CVar(MemVar_1F92070) & "','" & CVar(global_76) 
  loc_1D689B3:   var_498 = CVar(var_3EC) 'String
  loc_1D689BF:   var_4E4 = var_370 & "','" & CVar(global_188) & "','" & CVar(global_192) & "','" & CVar(CStr(var_448)) & "','" & var_498 & "'," 
  loc_1D689D3:   var_534 = var_4E4 & CVar(var_A58) & "," 
  loc_1D689FB:   var_5B4 = var_534 & CVar(var_A60) & "," & CVar(var_E4) & "," 
  loc_1D68A23:   var_634 = var_5B4 & CVar(var_DC) & "," & CVar(var_AC) & "," 
  loc_1D68A6A:   var_714 = var_634 & CVar(var_A4) & "," & CVar(var_FC) & ", " & CVar(var_104) & "," & CVar(var_B4) 
  loc_1D68ABF:   var_874 = var_714 & "," & CVar(var_BC) & "," & CVar(var_EC) & "," & CVar(var_A68) & ",'" & Trim(Left(global_180, &HFF)) & "', '" 
  loc_1D68AC9:   var_884 = var_874 & CVar(MemVar_1F920C8) 
  loc_1D68B05:   var_A08 = var_884 & "'," & var_8C8 & ",'" & IIf((CStr(var_92C) = "Add"), "A", "E") & "','" & CVar(var_968) & "','" 
  loc_1D68B25:   var_A78 = var_A08 & CVar(global_292) & "','N','" & CVar(MemVar_1F92078) 
  loc_1D68B32:   var_A2C = CStr(var_A78 & "')")
  loc_1D68B3C:   unk_5B213D.Execute var_A2C, var_A98, -1
  loc_1D68C20: End If
  loc_1D68C29: Set var_1A4 = 1(var_92)
  loc_1D68C2F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_960)
  loc_1D68C45: For var_A9C =  To CInt((CLng() - 1)):  = var_A9C 'Integer
  loc_1D68C60:   Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1D68C66:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D68C77:   var_218 = Trim(CVar(CStr()))
  loc_1D68C9E:   Set var_1A8 = CVar(CLng(var_92))(CVar(CLng(7)))
  loc_1D68CA4:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((var_218 <> vbNullString))
  loc_1D68CAF:   var_1B0 = CStr()
  loc_1D68CDD:   If CBool( And (CDbl(Val(var_1B0)) <> CDbl(0))) Then
  loc_1D68CEE:     Set var_1A4 = var_1A8(CInt(2))
  loc_1D68CF4:     Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0)
  loc_1D68CFC:      = var_1A8.Text
  loc_1D68D16:     Set var_1AC = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1D68D1C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D68D2F:     var_260 = Val(CStr())
  loc_1D68D3F:      = var_260(var_4C4).Caption
  loc_1D68D52:     Set var_254 = var_328(CInt(0))
  loc_1D68D58:     Call 0.Method_Proc_258_153_1D6E8C40 (var_A2C)
  loc_1D68D60:      = var_328.Text
  loc_1D68D6D:     var_A58 = Val(var_A2C)
  loc_1D68D7B:     Set var_32C = var_3E4(CInt(1))
  loc_1D68D81:     Call 0.Method_Proc_258_153_1D6E8C40 (var_A58)
  loc_1D68D89:     var_1F8 = CVar(var_3E4) 'Address
  loc_1D68D90:     Proc_6_7_F25D88(var_218)
  loc_1D68DAA:     Set var_3E8 = CVar(CLng(var_92))(CVar(CLng(&H15)))
  loc_1D68DB0:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1F8)
  loc_1D68DD1:     Set var_3F0 = CVar(CLng(var_92))(CVar(CLng(&H16)))
  loc_1D68DD7:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D68DF1:     Set var_3F4 = var_438(CInt(3))
  loc_1D68DF7:     Call 0.Method_Proc_258_153_1D6E8C40 (var_AAC)
  loc_1D68DFF:      = var_438.Text
  loc_1D68E0F:     Set var_4BC = var_4C0(CInt(3))
  loc_1D68E15:     Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D68E2F:     Set var_508 = 1(CVar(CLng(&H17)))
  loc_1D68E35:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D68E73:     Set var_50C = CVar(CLng(var_92))(CVar(CLng(&HB)))
  loc_1D68E79:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D68E9A:     Set var_510 = CVar(CLng(var_92))(CVar(CLng(&H13)))
  loc_1D68EA0:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D68EC1:     Set var_798 = CVar(CLng(var_92))(CVar(CLng(&H14)))
  loc_1D68EC7:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D68EE8:     Set var_79C = CVar(CLng(var_92))(CVar(CLng(6)))
  loc_1D68EEE:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D68F0F:     Set var_7A0 = CVar(CLng(var_92))(CVar(CLng(7)))
  loc_1D68F15:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D68F28:     var_A60 = Val(CStr())
  loc_1D68F40:     Set var_8B8 = CVar(CLng(var_92))(CVar(CLng(9)))
  loc_1D68F46:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A60)
  loc_1D68F59:     var_A68 = Val(CStr())
  loc_1D68F71:     Set var_960 = CVar(CLng(var_92))(CVar(CLng(8)))
  loc_1D68F77:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A68)
  loc_1D68F8A:     var_1170 = Val(CStr())
  loc_1D68FA2:     Set var_964 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D68FA8:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1170)
  loc_1D68FBB:     var_1178 = Val(CStr())
  loc_1D68FD3:     Set var_A50 = CVar(CLng(var_92))(CVar(CLng(&H10)))
  loc_1D68FD9:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1178)
  loc_1D68FEC:     var_1180 = Val(CStr())
  loc_1D69004:     Set var_C04 = CVar(CLng(var_92))(CVar(CLng(&H11)))
  loc_1D6900A:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1180)
  loc_1D6901D:     var_1188 = Val(CStr())
  loc_1D69035:     Set var_C6C = CVar(CLng(var_92))(CVar(CLng(&HE)))
  loc_1D6903B:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1188)
  loc_1D6904E:     var_1190 = Val(CStr())
  loc_1D69066:     Set var_CD4 = CVar(CLng(var_92))(CVar(CLng(&HF)))
  loc_1D6906C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1190)
  loc_1D6907F:     var_1198 = Val(CStr())
  loc_1D69097:     Set var_D3C = CVar(CLng(var_92))(CVar(CLng(&H12)))
  loc_1D6909D:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1198)
  loc_1D690B0:     var_11A0 = Val(CStr())
  loc_1D690BE:     Proc_6_7_F25D88(var_A08, MemVar_1F920EC)
  loc_1D690C7:     Set var_DA4 = Me.TopCtrl1
  loc_1D690CD:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_11A0)
  loc_1D690E6:     var_A88 = "A"
  loc_1D69119:     Set var_E5C = CVar(CLng(var_92))(CVar(CLng(&H1A)))
  loc_1D6911F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D69140:     Set var_EF0 = CVar(CLng(var_92))(CVar(CLng(&H1A)))
  loc_1D69146:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D69167:     Set var_F84 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1D6916D:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6918E:     Set var_1018 = CVar(CLng(var_92))(CVar(CLng(&HC)))
  loc_1D69194:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D691A7:     var_11A8 = Val(CStr())
  loc_1D691BF:     Set var_10F0 = CVar(CLng(var_92))(CVar(CLng(1)))
  loc_1D691C5:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_11A8)
  loc_1D691E5:     var_258 = "Insert Into SplitStock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,DiscApp,RoundOff,UNIT,QtyIss,Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,KOTDocId,KotSno,DelFlag,LOGSITE_CODE,ItemRestCode) Values (" & "'"
  loc_1D6923F:     var_AA8 = var_258 & var_1B0 & "'," & CStr(var_260) & ",'" & global_184 & "','" & var_4C4 & "','" & MemVar_1F92070 & "'," & CStr(var_A58)
  loc_1D69246:     var_238 = CVar(var_AA8 & ",") 'String
  loc_1D69273:     var_340 = CVar(CStr(var_2BC)) 'String
  loc_1D6929A:     var_478 = var_238 & var_218 & ",'" & CVar(global_76) & "','" & var_340 & "','" & CVar(CStr(var_370)) & "','" & IIf((var_AAC <> vbNullString), CVar(var_4C0), CVar(CStr())) 
  loc_1D692AE:     var_4E4 = var_478 & "','" & CVar(CStr(var_498)) 
  loc_1D692BF:     var_554 = CVar(CStr(var_534)) 'String
  loc_1D692E7:     var_654 = CVar(CStr(var_634)) 'String
  loc_1D6931B:     var_754 = var_4E4 & "','" & var_554 & "','" & CVar(CStr(var_5B4)) & "','" & var_654 & "'," & CVar(var_A60) & "," & CVar(var_A68) & "," 
  loc_1D6937F:     var_91C = var_754 & CVar(var_1170) & "," & CVar(var_1178) & "," & CVar(var_1180) & "," & CVar(var_1188) & "," & CVar(var_1190) & "," 
  loc_1D693C1:     var_A28 = var_91C & CVar(var_1198) & "," & CVar(var_11A0) & ",'" & CVar(MemVar_1F920C8) & "'," & var_A08 
  loc_1D693E2:     var_E7C = CVar(CStr(var_E6C)) 'String
  loc_1D693F6:     var_F10 = CVar(CStr(var_F00)) 'String
  loc_1D6940A:     var_FA4 = CVar(CStr(var_F94)) 'String
  loc_1D69416:     var_FD4 = var_A28 & ",'" & IIf((CStr(var_A78) = "Add"), var_A88, "E") & "','" & var_E7C & "','" & var_F10 & "','" & var_FA4 & "'," 
  loc_1D69445:     var_1110 = CVar(CStr(var_1100)) 'String
  loc_1D6945F:     unk_5B213D.Execute CStr(var_FD4 & CVar(var_11A8) & ",'N','" & CVar(MemVar_1F92078) & "','" & var_1110 & "')"), var_1164, -1
  loc_1D695C0:     If (global_240 = "Y") Then
  loc_1D695D1:       Set var_1A4 = var_1A8(CInt(2))
  loc_1D695D7:       Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0)
  loc_1D695DF:       var_1168 = var_1A8.Text
  loc_1D695F9:       Set var_1AC = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1D695FF:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D69612:       var_260 = Val(CStr())
  loc_1D6962A:       Set var_250 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1D69630:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_260)
  loc_1D69651:       Set var_254 = CVar(CLng(var_92))(CVar(CLng(&HC)))
  loc_1D69657:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D696AD:       var_514 = "Update KOT Set ContraDocId='" & var_1B0 & "',ContraSno=" & CStr(var_260) & " where docid='" & CStr(var_1F8) & "' And SNo="
  loc_1D696C2:       unk_5B213D.Execute var_514 & CStr(Val(CStr())), var_238, -1
  loc_1D696FE:     End If
  loc_1D69709:     If (global_196 = "Y") Then
  loc_1D6971A:       Set var_1A4 = var_1A8(CInt(2))
  loc_1D69720:       Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_328)
  loc_1D69728:       var_A58 = var_1A8.Text
  loc_1D69742:       Set var_1AC = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1D69748:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6975B:       var_260 = Val(CStr())
  loc_1D69773:       Set var_250 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1D69779:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_260)
  loc_1D6979A:       Set var_254 = CVar(CLng(var_92))(CVar(CLng(&HC)))
  loc_1D697A0:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D697EF:       var_3EC = "Update PackingOrderDetail set ContraDocID='" & var_1B0 & "',ContraSno=" & CStr(var_260) & " where docid='" & CStr(var_1F8)
  loc_1D69809:       var_968 = var_3EC & "' and SNo=" & CStr(Val(CStr())) & vbNullString
  loc_1D69812:       unk_5B213D.Execute var_968, var_238, -1
  loc_1D69850:     End If
  loc_1D69850:   End If
  loc_1D69853: Next var_A9C 'Integer
  loc_1D69861: Set var_1A4 = 0(var_92)
  loc_1D69867: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1D6987D: For var_11AC =  To CInt((CLng() - 1)):  = var_11AC 'Integer
  loc_1D69898:   Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(2)))
  loc_1D6989E:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D698A9:   var_1F8 = CVar(CStr()) 'String
  loc_1D698D6:   Set var_1A8 = CVar(CLng(var_92))(CVar(CLng(6)))
  loc_1D698DC:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(var_1F8) <> vbNullString))
  loc_1D698E7:   var_1B0 = CStr()
  loc_1D69915:   If CBool( And (CDbl(Val(var_1B0)) <> CDbl(0))) Then
  loc_1D69926:     Set var_1A4 = var_1A8(CInt(2))
  loc_1D6992C:     Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0)
  loc_1D69934:      = var_1A8.Text
  loc_1D6994E:     Set var_1AC = CVar(CLng(var_92))(CVar(CLng(1)))
  loc_1D69954:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D69967:     var_260 = Val(CStr())
  loc_1D6997F:     Set var_250 = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1D69985:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_260)
  loc_1D69990:     var_330 = CStr()
  loc_1D69998:     var_A58 = Val(var_330)
  loc_1D699A8:      = var_A58(var_968).Caption
  loc_1D699BB:     Set var_328 = var_32C(CInt(0))
  loc_1D699C1:     Call 0.Method_Proc_258_153_1D6E8C40 (var_AAC)
  loc_1D699C9:      = var_32C.Text
  loc_1D699D6:     var_A60 = Val(var_AAC)
  loc_1D699E4:     Set var_3E4 = var_3E8(CInt(1))
  loc_1D699EA:     Call 0.Method_Proc_258_153_1D6E8C40 (var_A60)
  loc_1D699F9:     Proc_6_7_F25D88(var_238)
  loc_1D69A13:     Set var_3F0 = CVar(CLng(var_92))(CVar(CLng(2)))
  loc_1D69A19:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(var_3E8))
  loc_1D69A3A:     Set var_3F4 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1D69A40:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D69A53:     var_A68 = Val(CStr())
  loc_1D69A6B:     Set var_438 = CVar(CLng(var_92))(CVar(CLng(5)))
  loc_1D69A71:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A68)
  loc_1D69A84:     var_1170 = Val(CStr())
  loc_1D69A9C:     Set var_4BC = CVar(CLng(var_92))(CVar(CLng(6)))
  loc_1D69AA2:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1170)
  loc_1D69AB5:     var_1178 = Val(CStr())
  loc_1D69AC3:     Proc_6_7_F25D88(var_4E4, MemVar_1F920EC)
  loc_1D69ACC:     Set var_4C0 = Me.TopCtrl1
  loc_1D69AD2:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_1178)
  loc_1D69B1D:     var_258 = "Insert Into SplitSale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_1D69B51:     var_7A4 = var_258 & var_1B0 & "'," & CStr(var_260) & "," & CStr(var_A58) & ",'"
  loc_1D69B5B:     var_8CC = var_7A4 & global_184
  loc_1D69B62:     var_A2C = var_8CC & "','"
  loc_1D69B69:     var_AA0 = var_A2C & var_968
  loc_1D69B70:     var_AA4 = var_AA0 & "','"
  loc_1D69B77:     var_AA8 = var_AA4 & MemVar_1F92070
  loc_1D69B7E:     var_AB0 = var_AA8 & "',"
  loc_1D69B8A:     var_AD8 = var_AB0 & CStr(var_A60)
  loc_1D69BE9:     var_3E0 = CVar(var_AD8 & ",") & var_238 & ",'" & CVar(global_76) & "','" & CVar(CStr(var_340)) & "'," & CVar(var_A68) & "," & CVar(var_1170) 
  loc_1D69C30:     var_5D4 = var_3E0 & "," & CVar(var_1178) & ",'" & CVar(MemVar_1F920C8) & "'," & var_4E4 & ",'" & IIf((CStr(var_554) = "Add"), "A", "E") 
  loc_1D69C4C:     var_634 = var_5D4 & "','N','" & CVar(MemVar_1F92078) & "')" 
  loc_1D69C5A:     unk_5B213D.Execute CStr(var_634), var_654, -1
  loc_1D69D04:   End If
  loc_1D69D07: Next var_11AC 'Integer
  loc_1D69D18: Set var_1A4 = var_92(var_1B2)
  loc_1D69D1E: Call 0.Method_Proc_258_153_1D6E8C48 (1)
  loc_1D69D29: For var_11B0 =  To var_1B2:  = var_11B0 'Integer
  loc_1D69D3C:   Set var_1A4 = var_1A8(var_92)
  loc_1D69D42:   Call 0.Method_Proc_258_153_1D6E8C40 (var_1B2)
  loc_1D69D4A:    = var_1A8.Visible
  loc_1D69D5C:   If (var_1B2 = &HFF) Then
  loc_1D69D6D:     Set var_1A4 = var_1A8(CInt(2))
  loc_1D69D73:     Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0)
  loc_1D69D7B:      = var_1A8.Text
  loc_1D69D8E:     Set var_1AC = var_250(CInt(0))
  loc_1D69D94:     Call 0.Method_Proc_258_153_1D6E8C40 (var_330)
  loc_1D69D9C:      = var_250.Text
  loc_1D69DA9:     var_260 = Val(var_330)
  loc_1D69DB7:     Set var_254 = var_328(CInt(1))
  loc_1D69DBD:     Call 0.Method_Proc_258_153_1D6E8C40 (var_260)
  loc_1D69DC5:     var_1D8 = CVar(var_328) 'Address
  loc_1D69DCC:     Proc_6_7_F25D88(var_1F8)
  loc_1D69DDF:     Set var_32C = var_3E4(CInt(&HD))
  loc_1D69DE5:     Call 0.Method_Proc_258_153_1D6E8C40 (var_7A4)
  loc_1D69DED:     var_1D8 = var_3E4.Tag
  loc_1D69DFF:     Set var_3E8 = var_3F0(var_92)
  loc_1D69E05:     Call 0.Method_Proc_258_153_1D6E8C40 (var_8CC)
  loc_1D69E0D:      = var_3F0.Tag
  loc_1D69E15:     var_2BC = CVar(var_8CC) 'String
  loc_1D69E2D:     Set var_3F4 = var_438(var_92)
  loc_1D69E33:     Call 0.Method_Proc_258_153_1D6E8C40 (var_968)
  loc_1D69E3B:      = var_438.Tag
  loc_1D69E48:     var_A58 = Val(var_968)
  loc_1D69E58:     Set var_4BC = var_4C0(var_92)
  loc_1D69E5E:     Call 0.Method_Proc_258_153_1D6E8C40 (var_A2C)
  loc_1D69E78:     Set var_508 = var_50C(var_92)
  loc_1D69E7E:     Call 0.Method_Proc_258_153_1D6E8C40 (var_AA0)
  loc_1D69E86:      = var_50C.Tag
  loc_1D69E98:     Set var_510 = var_798(var_92)
  loc_1D69E9E:     Call 0.Method_Proc_258_153_1D6E8C40 (var_AA4)
  loc_1D69EA6:      = var_798.Tag
  loc_1D69EB8:     Set var_79C = var_7A0(var_92)
  loc_1D69EBE:     Call 0.Method_Proc_258_153_1D6E8C40 (var_AA8)
  loc_1D69EC6:      = var_7A0.Text
  loc_1D69ED3:     var_A60 = Val(var_AA8)
  loc_1D69EE3:     Set var_8B8 = var_960(var_92)
  loc_1D69EE9:     Call 0.Method_Proc_258_153_1D6E8C40 (var_AAC)
  loc_1D69EFE:     var_A68 = Val(var_AAC)
  loc_1D69F0E:     Set var_964 = var_A50(var_92)
  loc_1D69F14:     Call 0.Method_Proc_258_153_1D6E8C40 (var_AB0)
  loc_1D69F29:     var_1170 = Val(var_AB0)
  loc_1D69F37:     Proc_6_7_F25D88(var_5D4, MemVar_1F920EC)
  loc_1D69F40:     Set var_C04 = Me.TopCtrl1
  loc_1D69F46:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_1170)
  loc_1D69F54:     var_674 = "E"
  loc_1D69F69:     var_AB4 = CStr(var_634)
  loc_1D69F88:     Set var_C6C = var_CD4(CInt(9))
  loc_1D69F8E:     Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D69F96:     var_6F4 = CVar(var_CD4) 'Address
  loc_1D69F9D:     Proc_6_7_F25D88(var_714)
  loc_1D69FAF:     Set var_D3C = var_DA4(var_92)
  loc_1D69FB5:     Call 0.Method_Proc_258_153_1D6E8C40 (var_AD8)
  loc_1D69FBD:     var_6F4 = var_DA4.Tag
  loc_1D69FD6:     var_258 = "Insert Into SplitedSunTran (DocId,Sno,Vtype,VNo,Vdate,PartyCode,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LOGSITE_CODE) Values ('" & var_1B0
  loc_1D69FDD:     var_29C = var_258 & "',"
  loc_1D69FE5:     var_2F4 = CStr(var_92)
  loc_1D6A023:     var_278 = CVar(var_29C & var_2F4 & ",'" & global_184 & "'," & CStr(var_260) & ",") & var_1F8 & ",'" 
  loc_1D6A077:     var_448 = var_278 & CVar(var_7A4) & "','" & Trim(var_2BC) & "'," & CVar(var_4C0.Caption) & ",'" & CVar(var_A2C) & "','" & CVar(var_AA0) 
  loc_1D6A0D9:     var_594 = var_448 & "','" & CVar(var_AA4) & "'," & CVar(var_960.Text) & "," & CVar(var_A50.Caption) & "," & CVar(var_1170) & ",'" & CVar(MemVar_1F920C8) 
  loc_1D6A0F2:     var_614 = var_594 & "'," & var_5D4 & ",'" 
  loc_1D6A125:     var_7C4 = var_614 & IIf((var_AB4 = "Add"), "A", var_674) & "'," & var_714 & ",'" & CVar(var_AD8) & "','" 
  loc_1D6A16F:     unk_5B213D.Execute CStr(var_7C4 & CVar(global_76) & "','N','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_884, -1
  loc_1D6A245:   End If
  loc_1D6A248: Next var_11B0 'Integer
  loc_1D6A258: If (global_240 = "Y") Then
  loc_1D6A264:   Set var_1A4 = 1(var_92)
  loc_1D6A26A:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1D6A280:   For var_11B4 =  To CInt((CLng() - 1)):  = var_11B4 'Integer
  loc_1D6A29B:     Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1D6A2A1:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6A2D9:     Set var_1A8 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D6A2DF:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(CVar(CStr())) <> vbNullString))
  loc_1D6A318:     If CBool( And (CDbl(Val(CStr())) <> CDbl(0))) Then
  loc_1D6A31E:       Proc_6_104_ED5D18(var_1D8)
  loc_1D6A338:       Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1D6A33E:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6A37F:       var_298 = CVar("Update KOT Set Pending='N',U_Name1='" & MemVar_1F920C8 & "',U_EntDt1=") & var_1D8 & ",U_AE1='E' where docid='" & CVar(CStr(var_278)) 
  loc_1D6A396:       unk_5B213D.Execute CStr(var_298 & "'"), var_2BC, -1
  loc_1D6A3BE:     End If
  loc_1D6A3C1:   Next var_11B4 'Integer
  loc_1D6A3C6: End If
  loc_1D6A3D1: If (global_304 = "Room Service") Then
  loc_1D6A3D7:   var_1E8 = 0
  loc_1D6A407:   unk_5B213D.Execute "SELECT SHORTNAME FROM DEPART WHERE CODE='" & global_76 & "'", var_1D8, -1
  loc_1D6A40F:   var_1A4 = var_1A4.Fields
  loc_1D6A417:   var_1E8 = var_1A8.Item(var_1A8)
  loc_1D6A42E:   var_208 = " BILL NO.-"
  loc_1D6A433:   var_238 = (Trim(CVar(var_1AC)) + CVar(CLng(4)))
  loc_1D6A43C:   var_278 = (CVar("Update KOT Set Pending='N',U_Name1='" & MemVar_1F920C8 & "',U_EntDt1=") & var_1D8 & ",U_AE1='E' where docid='" + " ")
  loc_1D6A44E:   Set var_250 = var_254(CInt(0))
  loc_1D6A454:   Call 0.Method_Proc_258_153_1D6E8C40 (var_29C, var_278)
  loc_1D6A45C:   var_1AC = var_254.Text
  loc_1D6A467:   var_298 = ( + CVar(var_29C))
  loc_1D6A46C:   var_128 = CStr(var_298)
  loc_1D6A498:   var_14E = (var_14E + 1)
  loc_1D6A4AF:   Call 0.Method_Proc_258_153_1D6E8C40 (var_2F4)
  loc_1D6A4CA:   Set var_1AC = var_250(CInt(0))
  loc_1D6A4D0:   Call 0.Method_Proc_258_153_1D6E8C40 (var_7A4)
  loc_1D6A4D8:    = var_250.Text
  loc_1D6A4E5:   var_260 = Val(var_7A4)
  loc_1D6A4EC:   var_1D8 = CVar((var_260)) 'Address
  loc_1D6A503:   Set var_254 = var_328(CInt(1))
  loc_1D6A509:   Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D6A518:   Proc_6_7_F25D88(var_298)
  loc_1D6A528:   Set var_32C = var_3E4(CInt(5))
  loc_1D6A52E:   Call 0.Method_Proc_258_153_1D6E8C40 (CVar(var_328))
  loc_1D6A549:   Set var_3E8 = (var_1B2)
  loc_1D6A54F:   Call 0.Method_Proc_258_153_1D6E8C48 ()
  loc_1D6A561:   Set var_3F0 = var_3F4(var_1B2)
  loc_1D6A567:   Call 0.Method_Proc_258_153_1D6E8C40 (var_AA8)
  loc_1D6A56F:    = var_3F4.Text
  loc_1D6A57C:   var_A58 = Val(var_AA8)
  loc_1D6A586:   Set var_438 = var_A58(var_1B4)
  loc_1D6A58C:   Call 0.Method_Proc_258_153_1D6E8C48 ()
  loc_1D6A59E:   Set var_4BC = var_4C0(var_1B4)
  loc_1D6A5A4:   Call 0.Method_Proc_258_153_1D6E8C40 (var_AAC)
  loc_1D6A5AC:    = var_4C0.Text
  loc_1D6A5B9:   var_A60 = Val(var_AAC)
  loc_1D6A5CA:   Set var_508 = var_50C(CInt(7))
  loc_1D6A5D0:   Call 0.Method_Proc_258_153_1D6E8C40 (var_AB0)
  loc_1D6A5E5:   var_A68 = Val(var_AB0)
  loc_1D6A5F6:   Set var_510 = var_798(CInt(3))
  loc_1D6A5FC:   Call 0.Method_Proc_258_153_1D6E8C40 (var_AB4)
  loc_1D6A614:   Set var_79C = var_7A0(CInt(3))
  loc_1D6A61A:   Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D6A62D:   Set var_8B8 = var_960(CInt(3))
  loc_1D6A633:   Call 0.Method_Proc_258_153_1D6E8C40 (var_AD8)
  loc_1D6A63B:    = var_960.Tag
  loc_1D6A66C:   Proc_183_7_EB0C44(var_614)
  loc_1D6A675:   Set var_964 = Me.TopCtrl1
  loc_1D6A67B:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(MemVar_1F920EC)
  loc_1D6A69E:   var_B3C = CStr(var_674)
  loc_1D6A6C6:   var_1B0 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1D6A6D4:   var_29C = var_1B0 & "RoomType,RoomNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,lOGSITE_CODE) Values ("
  loc_1D6A727:   var_AA4 = var_29C & "'" & var_2F4 & "'," & CStr(var_1A8.Text) & ",'" & global_184 & "'," & CStr(var_260) & ",'" & MemVar_1F92070
  loc_1D6A734:   var_238 = CVar(var_AA4 & "','") & Trim(var_1D8) 
  loc_1D6A78C:   var_3E0 = var_238 & "'," & var_298 & ",'" & Trim(CVar(var_3E4)) & "'" & ",'','','" & CVar(var_128) & "','" & CVar(var_12C) & "','Room'," 
  loc_1D6A7D8:   var_574 = var_3E0 & CVar(var_A58) & "," & CVar(var_50C.Text) & "," & CVar(var_798.Text) & ",'REST'," & "'RO','" & IIf((var_AB4 <> vbNullString), CVar(var_7A0), CVar(var_AD8)) 
  loc_1D6A81D:   var_714 = var_574 & "','','','',Null," & "Null,'" & CVar(MemVar_1F920C8) & "'," & var_614 & ",'" & IIf((var_B3C = "Add"), "A", "E") & "','" 
  loc_1D6A833:   var_754 = var_714 & CVar(global_76) & "','" 
  loc_1D6A854:   unk_5B213D.Execute CStr(var_754 & CVar(MemVar_1F92078) & "')"), var_7C4, -1
  loc_1D6A947:   unk_5B213D.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F92078 & "TOUT" & "'", var_1D8, -1
  loc_1D6A952:   Set var_130 = var_1A8(CInt(2))
  loc_1D6A978:   If (var_130.RecordCount > 0) Then
  loc_1D6A9A7:     var_1A8 = var_130.Fields.Item("TaxStru")
  loc_1D6A9B7:     var_1F8 = "Select * from taxstru where Code='" & var_1A8.Value 
  loc_1D6A9C0:     var_218 = var_1F8 & "' Order by Sno" 
  loc_1D6A9C4:     var_1B0 = CStr(var_218)
  loc_1D6A9CE:     unk_5B213D.Execute var_1B0, var_238, -1
  loc_1D6A9D9:     Set var_118 = var_1AC
  loc_1D6A9F6:   Else
  loc_1D6AA0F:     MsgBox("System Defined Revenue is not defined", 0, var_1F8, var_218, var_238)
  loc_1D6AA25:     unk_5B213D.RollbackTrans
  loc_1D6AA2A:     Exit Sub
  loc_1D6AA2B:   End If
  loc_1D6AA31:   var_14E = (var_14E + 1)
  loc_1D6AA5A:   Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, "Select Docid,GuestProf from GuestFolio where Docid=", var_238, -1, var_1AC)
  loc_1D6AA62:   var_14E = var_1A8.Tag
  loc_1D6AA70:   Proc_6_17_EAA2B0(var_1F8, CVar(var_1B0), var_1AC)
  loc_1D6AA86:   unk_5B213D.Execute CStr(var_1A8(CInt(&HA)) & var_1F8), var_A50, 
  loc_1D6AA91:   Set var_134 = var_1AC
  loc_1D6AABF:   If (var_134.RecordCount > 0) Then
  loc_1D6AADC:     var_1A8 = var_134.Fields.Item("GuestProf")
  loc_1D6AAED:     var_11C = CStr(var_1A8.Value)
  loc_1D6AAFA:   End If
  loc_1D6AB08:   Set var_1A4 = var_1A8(CInt(2))
  loc_1D6AB0E:   Call 0.Method_Proc_258_153_1D6E8C40 (var_2F4)
  loc_1D6AB16:    = var_1A8.Text
  loc_1D6AB29:   Set var_1AC = var_250(CInt(0))
  loc_1D6AB2F:   Call 0.Method_Proc_258_153_1D6E8C40 (var_7A4)
  loc_1D6AB37:    = var_250.Text
  loc_1D6AB44:   var_260 = Val(var_7A4)
  loc_1D6AB62:   Set var_254 = var_328(CInt(1))
  loc_1D6AB68:   Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D6AB77:   Proc_6_7_F25D88(var_298)
  loc_1D6AB87:   Set var_32C = var_3E4(CInt(5))
  loc_1D6AB8D:   Call 0.Method_Proc_258_153_1D6E8C40 (CVar(var_328))
  loc_1D6AB95:   var_340 = CVar(var_3E4) 'Address
  loc_1D6ABCF:   Set var_3F4 = (var_1B2)
  loc_1D6ABD5:   Call 0.Method_Proc_258_153_1D6E8C48 ()
  loc_1D6ABE7:   Set var_438 = var_4BC(var_1B2)
  loc_1D6ABED:   Call 0.Method_Proc_258_153_1D6E8C40 (var_AA8)
  loc_1D6ABF5:    = var_4BC.Text
  loc_1D6AC02:   var_A58 = Val(var_AA8)
  loc_1D6AC0C:   Set var_4C0 = var_A58(var_1B4)
  loc_1D6AC12:   Call 0.Method_Proc_258_153_1D6E8C48 ()
  loc_1D6AC24:   Set var_508 = var_50C(var_1B4)
  loc_1D6AC2A:   Call 0.Method_Proc_258_153_1D6E8C40 (var_AAC)
  loc_1D6AC32:    = var_50C.Text
  loc_1D6AC3F:   var_A60 = Val(var_AAC)
  loc_1D6AC50:   Set var_510 = var_798(CInt(7))
  loc_1D6AC56:   Call 0.Method_Proc_258_153_1D6E8C40 (var_AB0)
  loc_1D6AC6B:   var_A68 = Val(var_AB0)
  loc_1D6AC7C:   Set var_79C = var_7A0(CInt(3))
  loc_1D6AC82:   Call 0.Method_Proc_258_153_1D6E8C40 (var_AB4)
  loc_1D6AC9A:   Set var_8B8 = var_960(CInt(3))
  loc_1D6ACA0:   Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D6ACB3:   Set var_964 = var_A50(CInt(3))
  loc_1D6ACB9:   Call 0.Method_Proc_258_153_1D6E8C40 (var_AD8)
  loc_1D6ACC1:    = var_A50.Tag
  loc_1D6ACC9:   var_614 = CVar(var_AD8) 'String
  loc_1D6ACF5:   Set var_C04 = var_C6C(CInt(&HA))
  loc_1D6ACFB:   Call 0.Method_Proc_258_153_1D6E8C40 (var_B3C)
  loc_1D6AD03:    = var_C6C.Text
  loc_1D6AD13:   Proc_183_7_EB0C44(var_754)
  loc_1D6AD1C:   Set var_CD4 = Me.TopCtrl1
  loc_1D6AD22:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(MemVar_1F920EC)
  loc_1D6AD94:   var_1B0 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,"
  loc_1D6AD9B:   var_258 = var_1B0 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,"
  loc_1D6ADA2:   var_29C = var_258 & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,FolionoDocid,LogSite_Code) Values ("
  loc_1D6ADA9:   var_2F8 = var_29C & "'"
  loc_1D6ADB0:   var_2FC = var_2F8 & var_2F4
  loc_1D6ADC3:   var_3EC = var_2FC & "'," & CStr(var_14E)
  loc_1D6ADEE:   var_AA0 = var_3EC & ",'" & global_184 & "'," & CStr(var_260) & ",'"
  loc_1D6AE3E:   var_390 = CVar(var_AA0 & MemVar_1F92070 & "','") & Trim(CVar((var_260))) & "'," & var_298 & ",'" & Trim(var_340) & "'" & ",'" & CVar(var_11C) 
  loc_1D6AE89:   var_4B8 = var_390 & "','','" & CVar(var_128) & "','" & var_130.Fields.Item("Code").Value & "','Room'," & CVar(var_A58) & "," & CVar(var_798.Text) 
  loc_1D6AED2:   var_5B4 = var_4B8 & "," & CVar(var_7A0.Text) & ",'" & CVar(global_188) & "'," & "'" & CVar(global_192) 
  loc_1D6AF07:   var_6F4 = var_5B4 & "','" & IIf((var_AB4 <> vbNullString), CVar(var_960), var_614) & "'," & CVar(var_B3C) & ",'','','',Null," & "Null,'" 
  loc_1D6AF47:   var_874 = var_6F4 & CVar(MemVar_1F920C8) & "'," & var_754 & ",'" & IIf((CStr(var_7C4) = "Add"), "A", "E") & "','" & CVar(global_76) 
  loc_1D6AF81:   unk_5B213D.Execute CStr(var_874 & "','" & var_134.Fields.Item("DocID").Value & "','" & CVar(MemVar_1F92078) & "')"), var_92C, -1
  loc_1D6B07D:   Set var_1A4 = var_1A8(CInt(2))
  loc_1D6B083:   Call 0.Method_Proc_258_153_1D6E8C40 (var_3EC)
  loc_1D6B08B:   var_E5C = var_1A8.Text
  loc_1D6B09E:   Set var_1AC = var_250(CInt(0))
  loc_1D6B0A4:   Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0)
  loc_1D6B0AC:    = var_250.Text
  loc_1D6B0B9:   var_1180 = Val(var_1B0)
  loc_1D6B0C0:   var_1D8 = CVar((var_1180)) 'Address
  loc_1D6B0DA:   Set var_254 = var_328(CInt(1))
  loc_1D6B0E0:   Call 0.Method_Proc_258_153_1D6E8C40 (var_7A4)
  loc_1D6B0E8:    = var_328.Text
  loc_1D6B0F8:   Set var_32C = var_3E4(CInt(5))
  loc_1D6B0FE:   Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D6B10D:   var_238 = Trim(CVar(var_3E4))
  loc_1D6B124:   var_3E8 = var_130.Fields
  loc_1D6B134:   var_380 = var_3E8.Item("Code").Value
  loc_1D6B140:   Set var_3F4 = (var_1B2)
  loc_1D6B146:   Call 0.Method_Proc_258_153_1D6E8C48 ()
  loc_1D6B158:   Set var_438 = var_4BC(var_1B2)
  loc_1D6B15E:   Call 0.Method_Proc_258_153_1D6E8C40 (var_258)
  loc_1D6B166:    = var_4BC.Text
  loc_1D6B17D:   Set var_4C0 = Val(var_258)(var_1B4)
  loc_1D6B183:   Call 0.Method_Proc_258_153_1D6E8C48 ()
  loc_1D6B195:   Set var_508 = var_50C(var_1B4)
  loc_1D6B19B:   Call 0.Method_Proc_258_153_1D6E8C40 (var_29C)
  loc_1D6B1A3:    = var_50C.Text
  loc_1D6B1B0:   var_1190 = Val(var_29C)
  loc_1D6B1C1:   Set var_510 = var_798(CInt(7))
  loc_1D6B1C7:   Call 0.Method_Proc_258_153_1D6E8C40 (var_2F4)
  loc_1D6B1CF:   var_1190 = var_798.Text
  loc_1D6B1DC:   var_1198 = Val(var_2F4)
  loc_1D6B1ED:   Set var_79C = var_7A0(CInt(3))
  loc_1D6B1F3:   Call 0.Method_Proc_258_153_1D6E8C40 (var_2F8)
  loc_1D6B1FB:   var_1198 = var_7A0.Text
  loc_1D6B20B:   Set var_8B8 = var_960(CInt(3))
  loc_1D6B211:   Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D6B224:   Set var_964 = var_A50(CInt(3))
  loc_1D6B22A:   Call 0.Method_Proc_258_153_1D6E8C40 (var_2FC)
  loc_1D6B232:    = var_A50.Tag
  loc_1D6B253:   var_298 = IIf((var_2F8 <> vbNullString), CVar(var_960), CVar(var_2FC))
  loc_1D6B266:   Set var_C04 = var_C6C(CInt(&HA))
  loc_1D6B26C:   Call 0.Method_Proc_258_153_1D6E8C40 (var_AAC)
  loc_1D6B274:    = var_C6C.Text
  loc_1D6B27C:   var_2AC = Date
  loc_1D6B284:   var_2BC = Date
  loc_1D6B28D:   Set var_CD4 = Me.TopCtrl1
  loc_1D6B293:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1D6B2C5:   var_370 = IIf((CStr(var_340) = "Add"), "A", "E")
  loc_1D6B2EC:   var_390 = var_134.Fields.Item("DocID").Value
  loc_1D6B2F6:   var_D40 = 0
  loc_1D6B301:   var_CD8 = 0
  loc_1D6B314:   var_C70 = 0
  loc_1D6B31F:   var_C08 = 0
  loc_1D6B356:   var_AD8 = vbNullString
  loc_1D6B35F:   var_AB4 = vbNullString
  loc_1D6B368:   var_AB0 = vbNullString
  loc_1D6B3A1:   var_AA4 = "Room"
  loc_1D6B3B5:   var_A2C = vbNullString
  loc_1D6B3BE:   var_968 = vbNullString
  loc_1D6B402:   Proc_96_8_1CC2560(MemVar_1F92078 & "TOUT", var_3EC, var_14E, global_184, CLng(var_1180), MemVar_1F92070, CStr(Trim(var_1D8)), CDate(var_7A4))
  loc_1D6B49F: Else
  loc_1D6B4AD:   Set var_1A4 = var_1A8(CInt(6))
  loc_1D6B4B3:   Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, CStr(var_238), var_968, var_A2C)
  loc_1D6B4BB:   var_128 = var_1A8.Text
  loc_1D6B4D7:   If (CDbl(Val(var_1B0)) > CDbl(0)) Then
  loc_1D6B4EA:     CStr(var_380) = "CASH RECD. "(var_1B0).Caption
  loc_1D6B501:     var_2F4 = var_AA4 & var_1B0 & " " & "BILL NO.-"
  loc_1D6B519:     Set var_1A8 = var_1AC(CInt(0))
  loc_1D6B51F:     Call 0.Method_Proc_258_153_1D6E8C40 (var_2F8, var_2F4 & " ")
  loc_1D6B527:     var_1188 = var_1AC.Text
  loc_1D6B563:     If (InStr(1, var_2F8, "'", 0) > 0) Then
  loc_1D6B583:       var_128 = Replace(var_128, "'", ", 1, -1, 0)
  loc_1D6B586:     End If
  loc_1D6B5A4:     Set var_1A4 = var_1A8(CInt(2))
  loc_1D6B5AA:     Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, "Delete From PayCharge Where DocID='", var_1D8)
  loc_1D6B5B2:     -1 = var_1A8.Text
  loc_1D6B5CB:     unk_5B213D.Execute var_1AC & var_1B0 & "'", , 
  loc_1D6B5F3:     Set var_1A4 = var_1A8(CInt(2))
  loc_1D6B5F9:     Call 0.Method_Proc_258_153_1D6E8C40 (var_2F4)
  loc_1D6B601:      = var_1A8.Text
  loc_1D6B614:     Set var_1AC = var_250(CInt(0))
  loc_1D6B61A:     Call 0.Method_Proc_258_153_1D6E8C40 (var_3EC)
  loc_1D6B622:      = var_250.Text
  loc_1D6B62F:     var_260 = Val(var_3EC)
  loc_1D6B63D:     var_1F8 = Trim(CVar((var_260)))
  loc_1D6B64D:     Set var_254 = var_328(CInt(1))
  loc_1D6B653:     Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D6B65B:     var_288 = CVar(var_328) 'Address
  loc_1D6B662:     Proc_6_7_F25D88(var_298)
  loc_1D6B66E:     Set var_32C = var_288(var_1B2)
  loc_1D6B674:     Call 0.Method_Proc_258_153_1D6E8C48 ()
  loc_1D6B686:     Set var_3E4 = var_3E8(var_1B2)
  loc_1D6B68C:     Call 0.Method_Proc_258_153_1D6E8C40 (var_A2C)
  loc_1D6B694:      = var_3E8.Text
  loc_1D6B6A1:     var_A58 = Val(var_A2C)
  loc_1D6B6AB:     Set var_3F0 = var_A58(var_1B4)
  loc_1D6B6B1:     Call 0.Method_Proc_258_153_1D6E8C48 ()
  loc_1D6B6C3:     Set var_3F4 = var_438(var_1B4)
  loc_1D6B6C9:     Call 0.Method_Proc_258_153_1D6E8C40 (var_AA0)
  loc_1D6B6D1:      = var_438.Text
  loc_1D6B6DE:     var_A60 = Val(var_AA0)
  loc_1D6B6EF:     Set var_4BC = var_4C0(CInt(7))
  loc_1D6B6F5:     Call 0.Method_Proc_258_153_1D6E8C40 (var_AA4)
  loc_1D6B70A:     var_A68 = Val(var_AA4)
  loc_1D6B71B:     Set var_508 = var_50C(CInt(3))
  loc_1D6B721:     Call 0.Method_Proc_258_153_1D6E8C40 (var_AA8)
  loc_1D6B739:     Proc_183_7_EB0C44(var_5B4)
  loc_1D6B742:     Set var_510 = Me.TopCtrl1
  loc_1D6B748:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(MemVar_1F920EC)
  loc_1D6B756:     var_654 = "E"
  loc_1D6B793:     var_1B0 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1D6B7A1:     var_29C = var_1B0 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,LogSite_Code) Values ("
  loc_1D6B7AF:     var_2FC = var_29C & "'" & var_2F4
  loc_1D6B7FE:     var_2AC = CVar(var_2FC & "',1,'" & global_184 & "'," & CStr(var_260) & ",'" & MemVar_1F92070 & "','") & var_1F8 & "'," & var_298 
  loc_1D6B838:     var_380 = var_2AC & ",'','','" & CVar(var_29C & "'") & "','" & CVar(var_12C) & "','Cash'," & CVar(var_A58) 
  loc_1D6B895:     var_498 = var_380 & "," & CVar(var_4C0.Text) & "," & CVar(var_50C.Tag) & ",'" & CVar(global_188) & "'," & "'" & CVar(global_192) 
  loc_1D6B89E:     var_4B8 = var_498 & "','" 
  loc_1D6B8BA:     var_554 = var_4B8 & CVar(var_AA8) & "',0,'','','',Null," & "Null,'" 
  loc_1D6B8D4:     var_5D4 = var_554 & CVar(MemVar_1F920C8) & "'," & var_5B4 
  loc_1D6B90D:     var_714 = var_5D4 & ",'" & IIf((CStr(var_614) = "Add"), "A", var_654) & "','" & CVar(global_76) & "','" & CVar(MemVar_1F92078) 
  loc_1D6B924:     unk_5B213D.Execute CStr(var_714 & "')"), var_754, -1
  loc_1D6B9D4:   End If
  loc_1D6B9D4: End If
  loc_1D6B9D8: Set var_1A4 = Me.TopCtrl1
  loc_1D6B9DE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_798)
  loc_1D6B9F7: If (CStr() = "Add") Then
  loc_1D6BA0E:   var_1B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1D6BA34:   var_218 = CVar(var_1B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_184 & "' And VP.Date_From<=") 'String
  loc_1D6BA45:   Set var_1A4 = var_1A8(CInt(1))
  loc_1D6BA4B:   Call 0.Method_Proc_258_153_1D6E8C40 (var_2FC, var_218, var_288)
  loc_1D6BA53:   -1 = var_1A8.Text
  loc_1D6BA61:   Proc_6_7_F25D88(var_1F8, CVar(var_2FC))
  loc_1D6BA80:   unk_5B213D.Execute CStr(var_1AC & var_1F8 & " Order By VP.Date_From DESC"), , 
  loc_1D6BA8B:   Set var_88 = var_1AC
  loc_1D6BABB:   var_24C = var_88.RecordCount
  loc_1D6BAC9:   If (var_24C > 0) Then
  loc_1D6BADA:     Set var_1A4 = var_1A8(CInt(0))
  loc_1D6BAE0:     Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0)
  loc_1D6BAE8:      = var_1A8.Text
  loc_1D6BAF5:     var_260 = Val(var_1B0)
  loc_1D6BB0A:     var_1AC = var_88.Fields
  loc_1D6BB12:     var_250 = var_1AC.Item("V_Type")
  loc_1D6BB1A:     var_1D8 = var_250.Value
  loc_1D6BB36:     var_328 = var_88.Fields.Item("Date_From")
  loc_1D6BB45:     Proc_6_7_F25D88(var_288, CVar(var_328))
  loc_1D6BB5F:     var_258 = CStr(var_260)
  loc_1D6BB7F:     var_324 = "Update Voucher_Prefix Set Start_Srl_No=" & var_258 & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_1D6BB9C:     var_298 = CVar(var_324 & "') and V_Type='") & var_1D8 & "' and Date_From=" & var_288 
  loc_1D6BBAA:     unk_5B213D.Execute CStr(var_298), var_2AC, -1
  loc_1D6BBE4:   End If
  loc_1D6BBE4: End If
  loc_1D6BBE8: Set var_1A4 = Me.TopCtrl1
  loc_1D6BBEE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_32C)
  loc_1D6BC07: If (CStr(var_260) = "Add") Then
  loc_1D6BC2D:   var_1B0 = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F920C8
  loc_1D6BC3D:   Call 0.Method_arg_50 (var_258, var_1B0 & "' AND ENAME='", var_1D8, -1, var_1A4)
  loc_1D6BC4D:   var_2F8 = var_1A8 & var_258 & "' "
  loc_1D6BC56:   unk_5B213D.Execute var_2F8, 0, var_1AC
  loc_1D6BC66:    = var_1A8.Item()
  loc_1D6BC6E:    = var_1AC.Value
  loc_1D6BC9B:   If (var_1A4.Fields > 0) Then
  loc_1D6BCBC:     Set var_1A4 = var_1A8(CInt(2))
  loc_1D6BCC2:     Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, "UPDATE LASTVOU  SET DOCID='", var_1D8)
  loc_1D6BCCA:     -1 = var_1A8.Text
  loc_1D6BCD3:     var_258 = var_1AC & var_1B0
  loc_1D6BCF1:     Call 0.Method_arg_50 (var_2F8)
  loc_1D6BD0A:     unk_5B213D.Execute var_258 & "' WHERE UNAME='" & MemVar_1F920C8 & "' AND ENAME='" & var_2F8 & "'  ", , 
  loc_1D6BD31:   Else
  loc_1D6BD45:     var_1B0 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8
  loc_1D6BD55:     Call 0.Method_arg_50 (var_258, var_1B0 & "','", var_298)
  loc_1D6BD5E:     var_2F4 = -1 & var_258
  loc_1D6BD76:     Set var_1A4 = var_1A8(CInt(2))
  loc_1D6BD7C:     Call 0.Method_Proc_258_153_1D6E8C40 (var_2F8, var_258 & "' WHERE UNAME='" & MemVar_1F920C8 & "','")
  loc_1D6BD84:     var_1AC = var_1A8.Text
  loc_1D6BDB0:     Proc_6_7_F25D88(var_1D8, MemVar_1F920EC)
  loc_1D6BDC1:     var_238 = CVar(var_2F8 & "','" & MemVar_1F92078 & "',") & var_1D8 & ",'A','" 
  loc_1D6BDCB:     var_278 = var_238 & CVar(MemVar_1F92078) 
  loc_1D6BDE2:     unk_5B213D.Execute CStr(var_278 & "')"), , 
  loc_1D6BE18:   End If
  loc_1D6BE18: End If
  loc_1D6BE1E: unk_5B213D.CommitTrans
  loc_1D6BE25: var_8A = 0
  loc_1D6BE36: Set var_1A4 = var_1A8(CInt(2))
  loc_1D6BE3C: Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0)
  loc_1D6BE44: var_8A = var_1A8.Text
  loc_1D6BE4C: var_90 = var_1B0
  loc_1D6BE7A: unk_5B213D.Execute "Select * from KOT where Docid in (Select Distinct COntraDocid from SplitStock Where Docid='" & var_90 & "')", var_1D8, -1
  loc_1D6BE85: Set var_154 = var_1A4
  loc_1D6BEA9: var_1B0 = "Select Distinct Depart.Code as OutletCode,Depart.Name as DepartName from ((Depart Inner join Itemmast on Depart.Code=Itemmast.restcode) Inner Join KOT on KOT.Item=Itemmast.code And KOT.ITEMRestCode=ItemMast.RestCode) where KOT.COntraDocid='" & var_90
  loc_1D6BEB9: unk_5B213D.Execute var_1B0 & "'", var_1D8, -1
  loc_1D6BEC4: Set var_158 = var_1A4
  loc_1D6BED4: ' Referenced from: 1D6E7E4
  loc_1D6BEDA: var_1B2 = var_158.EOF
  loc_1D6BEE3: If Not(var_1B2) Then
  loc_1D6BEE8:   var_8A = &HFF
  loc_1D6BEF4:   unk_5B213D.BeginTrans var_24C
  loc_1D6BF11:   var_248 = 0
  loc_1D6BF27:   var_1E8 = "Select 'B'+ShortName From Depart Where Code='"
  loc_1D6BF56:   var_1F8 = ",'A','" & var_158.Fields.Item("OutletCode").Value 
  loc_1D6BF5F:   var_218 = var_1F8 & "'" 
  loc_1D6BF6D:   unk_5B213D.Execute CStr(var_218), var_238, -1
  loc_1D6BF75:   var_1AC = var_1AC.Fields
  loc_1D6BF7D:   var_248 = var_250.Item(var_250)
  loc_1D6BF85:   var_254 = var_254.Value
  loc_1D6BF8D:   var_288 = var_278 & var_278 
  loc_1D6BFA4:   unk_5B213D.Execute CStr(var_288 & "' Order by Description"), "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE V_Type='", var_2AC
  loc_1D6BFAF:   Set var_88 = var_328
  loc_1D6BFEF:   If (var_88.RecordCount > 0) Then
  loc_1D6C00C:     var_1A8 = var_88.Fields.Item(0)
  loc_1D6C01D:     var_168 = CStr(var_1A8.Value)
  loc_1D6C02D:   Else
  loc_1D6C046:     MsgBox("Point of Sale Not Configured for selected Restaurant", 0, var_1F8, var_218, var_238)
  loc_1D6C063:     Me.Global.Unload Me
  loc_1D6C06B:     Exit Sub
  loc_1D6C06C:   End If
  loc_1D6C080:   var_1B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1D6C0A3:   var_218 = CVar(var_1B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_168 & "' And VP.Date_From<=") 'String
  loc_1D6C0B1:   Set var_1A4 = var_1A8(CInt(1))
  loc_1D6C0B7:   Call 0.Method_Proc_258_153_1D6E8C40 (var_218, var_288, -1)
  loc_1D6C0C6:   Proc_6_7_F25D88(var_1F8, CVar(var_1A8))
  loc_1D6C0E5:   unk_5B213D.Execute CStr(var_1AC & var_1F8 & " Order By VP.Date_From DESC"), -1, 
  loc_1D6C0F0:   Set var_88 = var_1AC
  loc_1D6C12C:   If (var_88.RecordCount > 0) Then
  loc_1D6C16B:     If (var_88.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_1D6C199:       var_164 = CStr(var_88.Fields.Item("Prefix").Value)
  loc_1D6C1D5:       var_1F8 = (var_88.Fields.Item("start_srl_no").Value + 1)
  loc_1D6C1DB:       var_160 = CLng(var_1F8)
  loc_1D6C1EC:     End If
  loc_1D6C1EC:   End If
  loc_1D6C217:   var_1D8 = Space((5 - Len(var_168)))
  loc_1D6C21F:   var_218 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_168) + var_88.Fields.Item("start_srl_no").Value)
  loc_1D6C230:   var_238 = Space((5 - Len(var_164)))
  loc_1D6C238:   var_278 = (var_218 + var_1AC & CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_168))
  loc_1D6C242:   var_288 = (var_1AC & CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_168) & " Order By VP.Date_From DESC" + CVar(var_164))
  loc_1D6C258:   var_298 = Space((8 - Len(CStr(var_160))))
  loc_1D6C260:   var_2AC = (var_288 + var_288 & "' Order by Description")
  loc_1D6C26C:   var_340 = (var_2AC + CVar(CStr(var_160)))
  loc_1D6C271:   var_15C = CStr(var_2AC & ",'','','" & CVar(CStr(var_160) & "'"))
  loc_1D6C2EA:   var_218 = CVar("Insert into POS_SBill(DocId,OutletDocId,OutletCode) Values('" & var_90 & "','" & var_15C & "','") & var_158.Fields.Item("OutletCode").Value 
  loc_1D6C301:   unk_5B213D.Execute CStr(var_218 & "')"), var_1AC & CVar("Insert into POS_SBill(DocId,OutletDocId,OutletCode) Values('" & var_90 & "','" & var_15C & "','") & " Order By VP.Date_From DESC", -1
  loc_1D6C32A:   var_A4 = CDbl(0)
  loc_1D6C330:   var_AC = CDbl(0)
  loc_1D6C354:   Set var_1A4 = 1(var_92)
  loc_1D6C35A:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CDbl(0))
  loc_1D6C370:   For var_11C0 = var_1AC To CInt((CLng(var_AC) - 1)): var_A4 = var_11C0 'Integer
  loc_1D6C3B9:     Set var_1AC = CVar(CLng(var_92))(CVar(CLng(1)))
  loc_1D6C3BF:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(Trim(CVar(var_158.Fields.Item("OutletCode"))))
  loc_1D6C3EE:     If (var_160 = Trim(CVar(CStr(var_1AC)))) Then
  loc_1D6C406:       Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D6C40C:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C41F:       var_260 = Val(CStr())
  loc_1D6C429:       var_170 = (var_170 + var_260)
  loc_1D6C44D:       Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&H11)))
  loc_1D6C453:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(0)
  loc_1D6C46A:       var_1F8 = (var_260 + CVar(Val(CStr(CDbl(0)))))
  loc_1D6C46E:       var_1A0 = Trim(CVar(var_158.Fields.Item("OutletCode"))) 'Variant
  loc_1D6C493:       Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&HF)))
  loc_1D6C499:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(0)
  loc_1D6C4B0:       var_1F8 = ( + CVar(Val(CStr())))
  loc_1D6C4B4:       var_190 = Trim(CVar(var_158.Fields.Item("OutletCode"))) 'Variant
  loc_1D6C4D6:       Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(4)))
  loc_1D6C4DC:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C4ED:       var_218 = Trim(CVar(CStr()))
  loc_1D6C514:       Set var_1A8 = CVar(CLng(var_92))(CVar(CLng(7)))
  loc_1D6C51A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((var_218 <> vbNullString))
  loc_1D6C553:       If CBool( And (CDbl(Val(CStr())) <> CDbl(0))) Then
  loc_1D6C56B:         Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1D6C571:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C584:         var_260 = Val(CStr())
  loc_1D6C592:         Set var_1A8 = var_1AC(CInt(1))
  loc_1D6C598:         Call 0.Method_Proc_258_153_1D6E8C40 (var_260)
  loc_1D6C5A0:         var_1F8 = CVar(var_1AC) 'Address
  loc_1D6C5A7:         Proc_6_7_F25D88(var_218)
  loc_1D6C5BE:         var_250 = var_158.Fields
  loc_1D6C5E8:         Set var_328 = CVar(CLng(var_92))(CVar(CLng(&H15)))
  loc_1D6C5EE:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1F8)
  loc_1D6C60F:         Set var_32C = CVar(CLng(var_92))(CVar(CLng(&H16)))
  loc_1D6C615:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C62F:         Set var_3E4 = var_3E8(CInt(3))
  loc_1D6C635:         Call 0.Method_Proc_258_153_1D6E8C40 (var_AA0)
  loc_1D6C63D:          = var_3E8.Text
  loc_1D6C64D:         Set var_3F0 = var_3F4(CInt(3))
  loc_1D6C653:         Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D6C66D:         Set var_438 = 1(CVar(CLng(&H17)))
  loc_1D6C673:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C6B1:         Set var_4BC = CVar(CLng(var_92))(CVar(CLng(&HB)))
  loc_1D6C6B7:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C6D8:         Set var_4C0 = CVar(CLng(var_92))(CVar(CLng(&H13)))
  loc_1D6C6DE:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C6FF:         Set var_508 = CVar(CLng(var_92))(CVar(CLng(&H14)))
  loc_1D6C705:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C726:         Set var_50C = CVar(CLng(var_92))(CVar(CLng(6)))
  loc_1D6C72C:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C74D:         Set var_510 = CVar(CLng(var_92))(CVar(CLng(7)))
  loc_1D6C753:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C766:         var_A58 = Val(CStr())
  loc_1D6C77E:         Set var_798 = CVar(CLng(var_92))(CVar(CLng(9)))
  loc_1D6C784:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A58)
  loc_1D6C797:         var_A60 = Val(CStr())
  loc_1D6C7AF:         Set var_79C = CVar(CLng(var_92))(CVar(CLng(8)))
  loc_1D6C7B5:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A60)
  loc_1D6C7C8:         var_A68 = Val(CStr())
  loc_1D6C7E0:         Set var_7A0 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D6C7E6:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A68)
  loc_1D6C7F9:         var_1170 = Val(CStr())
  loc_1D6C811:         Set var_8B8 = CVar(CLng(var_92))(CVar(CLng(&H10)))
  loc_1D6C817:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1170)
  loc_1D6C82A:         var_1178 = Val(CStr())
  loc_1D6C842:         Set var_960 = CVar(CLng(var_92))(CVar(CLng(&H11)))
  loc_1D6C848:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1178)
  loc_1D6C85B:         var_1180 = Val(CStr())
  loc_1D6C873:         Set var_964 = CVar(CLng(var_92))(CVar(CLng(&HE)))
  loc_1D6C879:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1180)
  loc_1D6C88C:         var_1188 = Val(CStr())
  loc_1D6C8A4:         Set var_A50 = CVar(CLng(var_92))(CVar(CLng(&HF)))
  loc_1D6C8AA:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1188)
  loc_1D6C8BD:         var_1190 = Val(CStr())
  loc_1D6C8D5:         Set var_C04 = CVar(CLng(var_92))(CVar(CLng(&H12)))
  loc_1D6C8DB:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1190)
  loc_1D6C8EE:         var_1198 = Val(CStr())
  loc_1D6C8FC:         Proc_6_7_F25D88(var_A28, MemVar_1F920EC)
  loc_1D6C905:         Set var_C6C = Me.TopCtrl1
  loc_1D6C90B:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_1198)
  loc_1D6C93D:         var_DF8 = IIf((CStr(var_A88) = "Add"), "A", "E")
  loc_1D6C957:         Set var_CD4 = CVar(CLng(var_92))(CVar(CLng(&H1A)))
  loc_1D6C95D:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C97E:         Set var_D3C = CVar(CLng(var_92))(CVar(CLng(&H1A)))
  loc_1D6C984:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C9A5:         Set var_DA4 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1D6C9AB:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C9CC:         Set var_E5C = CVar(CLng(var_92))(CVar(CLng(&HC)))
  loc_1D6C9D2:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6C9E5:         var_11A0 = Val(CStr())
  loc_1D6C9FD:         Set var_EF0 = CVar(CLng(var_92))(CVar(CLng(1)))
  loc_1D6CA03:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_11A0)
  loc_1D6CA23:         var_1B0 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,DiscApp,RoundOff,UNIT,QtyIss,Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,KOTDocId,KotSno,DelFlag,LOGSITE_CODE,ItemRestCode) Values (" & "'"
  loc_1D6CA7A:         var_A2C = var_1B0 & var_15C & "'," & CStr(var_260) & ",'" & var_168 & "','" & var_164 & "','" & MemVar_1F92070 & "'," & CStr(var_160)
  loc_1D6CA81:         var_238 = CVar(var_A2C & ",") 'String
  loc_1D6CAAB:         var_360 = var_238 & var_218 & ",'" & var_250.Item("OutletCode").Value & "','" & CVar(CStr(var_238 & var_218 & ",'" & var_250.Item("OutletCode").Value & ",'','','" & CVar(CStr() & "'"))) 
  loc_1D6CAE3:         var_504 = var_360 & "','" & CVar(CStr(var_380)) & "','" & IIf((var_AA0 <> vbNullString), CVar(var_3F4), CVar(CStr())) & "','" & CVar(CStr(var_4B8)) 
  loc_1D6CAF4:         var_574 = CVar(CStr(var_554)) 'String
  loc_1D6CB1C:         var_674 = CVar(CStr(var_654)) 'String
  loc_1D6CB47:         var_754 = var_504 & "','" & var_574 & "','" & CVar(CStr(var_5D4)) & "','" & var_674 & "'," & CVar(var_A58) & "," & CVar(var_A60) 
  loc_1D6CBAB:         var_91C = var_754 & "," & CVar(var_A68) & "," & CVar(var_1170) & "," & CVar(var_1178) & "," & CVar(var_1180) & "," & CVar(var_1188) 
  loc_1D6CBBF:         var_95C = var_91C & "," & CVar(var_1190) 
  loc_1D6CC1A:         var_EAC = var_95C & "," & CVar(var_1198) & ",'" & CVar(MemVar_1F920C8) & "'," & var_A28 & ",'" & var_DF8 & "','" & CVar(CStr(var_E7C)) 
  loc_1D6CC69:         var_10AC = var_EAC & "','" & CVar(CStr(var_F10)) & "','" & CVar(CStr(var_FA4)) & "'," & CVar(var_11A0) & ",'N','" & CVar(MemVar_1F92078) 
  loc_1D6CC94:         unk_5B213D.Execute CStr(var_10AC & "','" & CVar(CStr(var_1110)) & "')"), var_11D0, -1
  loc_1D6CDEB:         If (global_240 = "Y") Then
  loc_1D6CE03:           Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1D6CE09:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_F84)
  loc_1D6CE1C:           var_260 = Val(CStr())
  loc_1D6CE34:           Set var_1A8 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1D6CE3A:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_260)
  loc_1D6CE5B:           Set var_1AC = CVar(CLng(var_92))(CVar(CLng(&HC)))
  loc_1D6CE61:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6CE74:           var_A58 = Val(CStr())
  loc_1D6CEB7:           var_4C4 = "Update KOT Set ContraDocId='" & var_15C & "',ContraSno=" & CStr(var_260) & " where docid='" & CStr(var_1F8) & "' And SNo="
  loc_1D6CECC:           unk_5B213D.Execute var_4C4 & CStr(var_A58), var_238, -1
  loc_1D6CF02:         End If
  loc_1D6CF0D:         If (global_196 = "Y") Then
  loc_1D6CF25:           Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(0)))
  loc_1D6CF2B:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_250)
  loc_1D6CF3E:           var_260 = Val(CStr(var_A58))
  loc_1D6CF56:           Set var_1A8 = CVar(CLng(var_92))(CVar(CLng(&HD)))
  loc_1D6CF5C:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_260)
  loc_1D6CF7D:           Set var_1AC = CVar(CLng(var_92))(CVar(CLng(&HC)))
  loc_1D6CF83:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6CF96:           var_A58 = Val(CStr())
  loc_1D6CFD2:           var_330 = "Update PackingOrderDetail set ContraDocID='" & var_15C & "',ContraSno=" & CStr(var_260) & " where docid='" & CStr(var_1F8)
  loc_1D6CFF5:           unk_5B213D.Execute var_330 & "' and SNo=" & CStr(var_A58) & vbNullString, var_238, -1
  loc_1D6D02D:         End If
  loc_1D6D02D:       End If
  loc_1D6D042:       Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&H11)))
  loc_1D6D048:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_250)
  loc_1D6D079:       Set var_1A8 = CVar(CLng(var_92))(CVar(CLng(1)))
  loc_1D6D07F:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((CDbl(Val(CStr(var_A58))) > CDbl(0)))
  loc_1D6D090:       var_238 = Trim(CVar(CStr()))
  loc_1D6D0EB:       If CBool( And (var_238 = CVar(Proc_6_38_E68A98(CVar(var_158.Fields.Item("OutletCode")))))) Then
  loc_1D6D103:         Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D6D109:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6D11C:         var_260 = Val(CStr())
  loc_1D6D126:         var_A4 = (var_A4 + var_260)
  loc_1D6D135:       Else
  loc_1D6D14A:         Set var_1A4 = CVar(CLng(var_92))(CVar(CLng(&HA)))
  loc_1D6D150:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A4)
  loc_1D6D16D:         var_AC = (var_AC + Val(CStr(var_260)))
  loc_1D6D179:       End If
  loc_1D6D179:     End If
  loc_1D6D17C:   Next var_11C0 'Integer
  loc_1D6D18A:   Set var_1A4 = 1(var_112)
  loc_1D6D190:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1D6D1A6:   For var_11D4 =  To CInt((CLng() - 1)):  = var_11D4 'Integer
  loc_1D6D1C1:     Set var_1A4 = CVar(CLng(var_112))(CVar(CLng(2)))
  loc_1D6D1C7:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6D1FF:     Set var_1A8 = CVar(CLng(var_112))(CVar(CLng(6)))
  loc_1D6D205:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41((Trim(CVar(CStr())) <> vbNullString))
  loc_1D6D23A:     Set var_1AC = CVar(CLng(var_112))(CVar(CLng(8)))
  loc_1D6D240:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41( And (CDbl(Val(CStr())) <> CDbl(0)))
  loc_1D6D268:     var_250 = var_158.Fields
  loc_1D6D27F:     var_350 = Trim(CVar(var_250.Item("OutletCode")))
  loc_1D6D2B6:     If CBool( And (Trim(CVar(CStr())) = var_350)) Then
  loc_1D6D2CE:       Set var_1A4 = CVar(CLng(var_112))(CVar(CLng(1)))
  loc_1D6D2D4:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6D2E7:       var_260 = Val(CStr())
  loc_1D6D2FF:       Set var_1A8 = CVar(CLng(var_112))(CVar(CLng(0)))
  loc_1D6D305:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_260)
  loc_1D6D310:       var_324 = CStr()
  loc_1D6D318:       var_A58 = Val(var_324)
  loc_1D6D326:       Set var_1AC = var_250(CInt(1))
  loc_1D6D32C:       Call 0.Method_Proc_258_153_1D6E8C40 (var_A58)
  loc_1D6D33B:       Proc_6_7_F25D88(var_238)
  loc_1D6D352:       var_254 = var_158.Fields
  loc_1D6D362:       var_2AC = var_254.Item("OutletCode").Value
  loc_1D6D37C:       Set var_32C = CVar(CLng(var_112))(CVar(CLng(2)))
  loc_1D6D382:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(var_250))
  loc_1D6D3A3:       Set var_3E4 = CVar(CLng(var_112))(CVar(CLng(4)))
  loc_1D6D3A9:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1D6D3B4:       var_AB0 = CStr()
  loc_1D6D3BC:       var_A60 = Val(var_AB0)
  loc_1D6D3D4:       Set var_3E8 = CVar(CLng(var_112))(CVar(CLng(5)))
  loc_1D6D3DA:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A60)
  loc_1D6D3ED:       var_A68 = Val(CStr())
  loc_1D6D405:       Set var_3F0 = CVar(CLng(var_112))(CVar(CLng(6)))
  loc_1D6D40B:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A68)
  loc_1D6D41E:       var_1170 = Val(CStr())
  loc_1D6D42C:       Proc_6_7_F25D88(var_504, MemVar_1F920EC)
  loc_1D6D435:       Set var_3F4 = Me.TopCtrl1
  loc_1D6D43B:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_1170)
  loc_1D6D486:       var_1B0 = "Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_1D6D48D:       var_258 = var_1B0 & var_15C
  loc_1D6D4A0:       var_2FC = var_258 & "'," & CStr(var_260)
  loc_1D6D4A7:       var_330 = var_2FC & ","
  loc_1D6D4B3:       var_4C4 = var_330 & CStr(var_A58)
  loc_1D6D4C1:       var_7A4 = var_4C4 & ",'" & var_168
  loc_1D6D4C8:       var_8CC = var_7A4 & "','"
  loc_1D6D4CF:       var_968 = var_8CC & var_164
  loc_1D6D4D6:       var_A2C = var_968 & "','"
  loc_1D6D4DD:       var_AA0 = var_A2C & MemVar_1F92070
  loc_1D6D4E4:       var_AA4 = var_AA0 & "',"
  loc_1D6D4EC:       var_AA8 = CStr(var_160)
  loc_1D6D50D:       var_2BC = CVar(var_AA4 & var_AA8 & ",") & var_238 & ",'" & var_2AC 
  loc_1D6D549:       var_448 = var_2BC & "','" & CVar(CStr(var_350)) & "'," & CVar(var_A60) & "," & CVar(var_A68) 
  loc_1D6D590:       var_5F4 = var_448 & "," & CVar(var_1170) & ",'" & CVar(MemVar_1F920C8) & "'," & var_504 & ",'" & IIf((CStr(var_574) = "Add"), "A", "E") 
  loc_1D6D5BA:       unk_5B213D.Execute CStr(var_5F4 & "','N','" & CVar(MemVar_1F92078) & "')"), var_674, -1
  loc_1D6D65A:     End If
  loc_1D6D65D:   Next var_11D4 'Integer
  loc_1D6D679:   var_1A8 = var_158.Fields.Item("OutletCode")
  loc_1D6D693:   Call Proc_258_166_16C21E0(&H32)
  loc_1D6D6AD:   Set var_1A4 = var_92(var_1B2)
  loc_1D6D6B3:   Call 0.Method_Proc_258_153_1D6E8C48 (1)
  loc_1D6D6BE:   For var_11D8 =  To var_1B2: Proc_6_38_E68A98(CVar(var_1A8)) = var_11D8 'Integer
  loc_1D6D6E7:     var_1B0 = "Select IsNull(Max(Nature),'') from SundryType Where  LOGSITE_CODE='" & MemVar_1F92078
  loc_1D6D6FE:     Set var_1A4 = var_1A8(var_92)
  loc_1D6D704:     Call 0.Method_Proc_258_153_1D6E8C40 (var_258, CVar(var_1B0 & "' AND SundryCode='"), var_2AC, -1, var_1AC)
  loc_1D6D71A:     var_1F8 = Trim(CVar(var_258))
  loc_1D6D74F:     unk_5B213D.Execute CStr(0 & var_1F8 & "' And V_Type='" & CVar(global_184) & "'"), var_254, var_2BC
  loc_1D6D757:      = var_1AC.Fields
  loc_1D6D75F:      = var_1A8.Tag.Item()
  loc_1D6D767:      = var_254.Value
  loc_1D6D7A3:     var_11DC = Proc_6_38_E68A98(var_2BC)
  loc_1D6D7AE:     If (var_11DC = "Addition") Then
  loc_1D6D7BE:       Set var_1A4 = var_1A8(var_92)
  loc_1D6D7C4:       Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0)
  loc_1D6D7CC:        = var_1A8.Text
  loc_1D6D7E3:       var_B4 = (var_B4 + Val(var_1B0))
  loc_1D6D7FD:       Set var_1A4 = var_1A8(var_92)
  loc_1D6D803:       Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_B4)
  loc_1D6D80B:       var_260 = var_1A8.Text
  loc_1D6D822:       var_CC = (var_CC + Val(var_1B0))
  loc_1D6D832:     Else
  loc_1D6D83A:       If (var_11DC = "Deduction") Then
  loc_1D6D84A:         Set var_1A4 = var_1A8(var_92)
  loc_1D6D850:         Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_CC)
  loc_1D6D858:         var_260 = var_1A8.Text
  loc_1D6D86F:         var_BC = (var_BC + Val(var_1B0))
  loc_1D6D889:         Set var_1A4 = var_1A8(var_92)
  loc_1D6D88F:         Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_BC)
  loc_1D6D897:         var_260 = var_1A8.Text
  loc_1D6D8AE:         var_C4 = (var_C4 + Val(var_1B0))
  loc_1D6D8BE:       Else
  loc_1D6D8C6:         If (var_11DC = "Discount") Then
  loc_1D6D8D6:           Set var_1A4 = var_1A8(var_92)
  loc_1D6D8DC:           Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_C4)
  loc_1D6D8E4:           var_260 = var_1A8.Text
  loc_1D6D8FB:           var_DC = (var_DC + Val(var_1B0))
  loc_1D6D915:           Set var_1A4 = var_1A8(var_92)
  loc_1D6D91B:           Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_DC)
  loc_1D6D923:           var_260 = var_1A8.Text
  loc_1D6D93A:           var_E4 = (var_E4 + Val(var_1B0))
  loc_1D6D94A:         Else
  loc_1D6D952:           If (var_11DC = "Luxury Tax") Then
  loc_1D6D962:             Set var_1A4 = var_1A8(var_92)
  loc_1D6D968:             Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_E4)
  loc_1D6D970:             var_260 = var_1A8.Text
  loc_1D6D987:             var_FC = (var_FC + Val(var_1B0))
  loc_1D6D9A1:             Set var_1A4 = var_1A8(var_92)
  loc_1D6D9A7:             Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_FC)
  loc_1D6D9AF:             var_260 = var_1A8.Text
  loc_1D6D9C6:             var_D4 = (var_D4 + Val(var_1B0))
  loc_1D6D9D6:           Else
  loc_1D6D9DE:             If (var_11DC = "Round Off") Then
  loc_1D6D9EE:               Set var_1A4 = var_1A8(var_92)
  loc_1D6D9F4:               Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_D4)
  loc_1D6D9FC:               var_260 = var_1A8.Text
  loc_1D6DA13:               var_EC = (var_EC + Val(var_1B0))
  loc_1D6DA2D:               Set var_1A4 = var_1A8(var_92)
  loc_1D6DA33:               Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_EC)
  loc_1D6DA3B:               var_260 = var_1A8.Text
  loc_1D6DA52:               var_F4 = (var_F4 + Val(var_1B0))
  loc_1D6DA62:             Else
  loc_1D6DA6A:               If (var_11DC = "Sale Tax") Then
  loc_1D6DA7A:                 Set var_1A4 = var_1A8(var_92)
  loc_1D6DA80:                 Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_F4)
  loc_1D6DA88:                 var_260 = var_1A8.Text
  loc_1D6DA9F:                 var_FC = (var_FC + Val(var_1B0))
  loc_1D6DAB9:                 Set var_1A4 = var_1A8(var_92)
  loc_1D6DABF:                 Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_FC)
  loc_1D6DAC7:                 var_260 = var_1A8.Text
  loc_1D6DADE:                 var_D4 = (var_D4 + Val(var_1B0))
  loc_1D6DAEE:               Else
  loc_1D6DAF6:                 If (var_11DC = "Service Charge") Then
  loc_1D6DB06:                   Set var_1A4 = var_1A8(var_92)
  loc_1D6DB0C:                   Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_D4)
  loc_1D6DB14:                   var_260 = var_1A8.Text
  loc_1D6DB2B:                   var_104 = (var_104 + Val(var_1B0))
  loc_1D6DB45:                   Set var_1A4 = var_1A8(var_92)
  loc_1D6DB4B:                   Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_104)
  loc_1D6DB53:                   var_260 = var_1A8.Text
  loc_1D6DB6A:                   var_10C = (var_10C + Val(var_1B0))
  loc_1D6DB7A:                 Else
  loc_1D6DB82:                   If (var_11DC = "Service Tax") Then
  loc_1D6DB92:                     Set var_1A4 = var_1A8(var_92)
  loc_1D6DB98:                     Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_10C)
  loc_1D6DBA0:                     var_260 = var_1A8.Text
  loc_1D6DBB7:                     var_FC = (var_FC + Val(var_1B0))
  loc_1D6DBD1:                     Set var_1A4 = var_1A8(var_92)
  loc_1D6DBD7:                     Call 0.Method_Proc_258_153_1D6E8C40 (var_1B0, var_FC)
  loc_1D6DBDF:                     var_260 = var_1A8.Text
  loc_1D6DBF6:                     var_D4 = (var_D4 + Val(var_1B0))
  loc_1D6DC03:                   End If
  loc_1D6DC03:                 End If
  loc_1D6DC03:               End If
  loc_1D6DC03:             End If
  loc_1D6DC03:           End If
  loc_1D6DC03:         End If
  loc_1D6DC03:       End If
  loc_1D6DC03:     End If
  loc_1D6DC06:   Next var_11D8 'Integer
  loc_1D6DC0E:   var_9C = vbNullString
  loc_1D6DC1C:   Set var_1A4 = var_1A8(CInt(1))
  loc_1D6DC22:   Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D6DC31:   Proc_6_7_F25D88(var_1F8)
  loc_1D6DC50:   var_250 = var_158.Fields.Item("OutletCode")
  loc_1D6DC72:   Set var_254 = 1(CVar(CLng(&H17)))
  loc_1D6DC78:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(var_1A8))
  loc_1D6DC92:   Set var_328 = var_32C(CInt(&HD))
  loc_1D6DC98:   Call 0.Method_Proc_258_153_1D6E8C40 (var_2FC)
  loc_1D6DCA0:    = var_32C.Tag
  loc_1D6DCB3:   Set var_3E4 = var_3E8(CInt(4))
  loc_1D6DCB9:   Call 0.Method_Proc_258_153_1D6E8C40 (var_324)
  loc_1D6DCC1:    = var_3E8.Text
  loc_1D6DCCE:   var_260 = Val(var_324)
  loc_1D6DCD8:   Set var_3F0 = var_260(var_1B2)
  loc_1D6DCDE:   Call 0.Method_Proc_258_153_1D6E8C48 ()
  loc_1D6DCF0:   Set var_3F4 = var_438(var_1B2)
  loc_1D6DCF6:   Call 0.Method_Proc_258_153_1D6E8C40 (var_330)
  loc_1D6DCFE:    = var_438.Text
  loc_1D6DD0B:   var_A58 = Val(var_330)
  loc_1D6DD3F:   Proc_6_7_F25D88(var_91C, Date)
  loc_1D6DD48:   Set var_4BC = Me.TopCtrl1
  loc_1D6DD4E:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A58)
  loc_1D6DD93:   Set var_4C0 = var_508(CInt(5))
  loc_1D6DD99:   Call 0.Method_Proc_258_153_1D6E8C40 (var_4C4)
  loc_1D6DDA1:    = var_508.Text
  loc_1D6DDBA:   var_1B0 = "Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Party,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,ServiceTax,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_1D6DE1A:   var_340 = CVar(var_1B0 & var_15C & "'," & CStr(var_160) & ",") & var_1F8 & ",'" & CVar(var_168) & "','" & CVar(var_164) & "','" & CVar(MemVar_1F92070) 
  loc_1D6DE6A:   var_478 = var_340 & "','" & var_250.Value & "','" & CVar(global_188) & "','" & CVar(global_192) & "','" & CVar(CStr(var_448)) 
  loc_1D6DEC9:   var_5D4 = var_478 & "','" & CVar(var_2FC) & "'," & CVar(var_260) & "," & CVar(CDbl(0)) & "," & CVar(var_E4) & "," & var_190 
  loc_1D6DEE6:   var_634 = var_5D4 & "," & CVar(var_AC) & "," 
  loc_1D6DF29:   var_714 = var_634 & CVar(var_A4) & "," & var_1A0 & ", " & CVar(var_104) & "," & CVar(var_124) 
  loc_1D6DF89:   var_884 = var_714 & "," & CVar(var_B4) & "," & CVar(var_BC) & "," & CVar(var_EC) & "," & CVar(var_A58) & ",'" & Trim(Left(global_180, &HFF)) 
  loc_1D6DF92:   var_894 = var_884 & "', '" 
  loc_1D6DFD8:   var_A4C = var_894 & CVar(MemVar_1F920C8) & "'," & var_91C & ",'" & IIf((CStr(var_95C) = "Add"), "A", "E") & "','" & CVar(var_4C4) & "','" 
  loc_1D6E005:   var_514 = CStr(var_A4C & CVar(global_292) & "','N','" & CVar(MemVar_1F92078) & "')")
  loc_1D6E00F:   unk_5B213D.Execute var_514, var_DF8, -1
  loc_1D6E0F1:   Set var_1A4 = var_92(var_1B2)
  loc_1D6E0F7:   Call 0.Method_Proc_258_153_1D6E8C48 (1)
  loc_1D6E102:   For var_11E0 =  To var_1B2: var_50C = var_11E0 'Integer
  loc_1D6E115:     Set var_1A4 = var_1A8(var_92)
  loc_1D6E11B:     Call 0.Method_Proc_258_153_1D6E8C40 (var_1B2)
  loc_1D6E123:      = var_1A8.Visible
  loc_1D6E135:     If (var_1B2 = &HFF) Then
  loc_1D6E143:       Set var_1A4 = var_1A8(CInt(1))
  loc_1D6E149:       Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D6E151:       var_1D8 = CVar(var_1A8) 'Address
  loc_1D6E158:       Proc_6_7_F25D88(var_1F8)
  loc_1D6E16B:       Set var_1AC = var_250(CInt(&HD))
  loc_1D6E171:       Call 0.Method_Proc_258_153_1D6E8C40 (var_4C4)
  loc_1D6E179:       var_1D8 = var_250.Tag
  loc_1D6E18B:       Set var_254 = var_328(var_92)
  loc_1D6E191:       Call 0.Method_Proc_258_153_1D6E8C40 (var_514)
  loc_1D6E199:        = var_328.Tag
  loc_1D6E1B9:       Set var_32C = var_3E4(var_92)
  loc_1D6E1BF:       Call 0.Method_Proc_258_153_1D6E8C40 (var_7A4)
  loc_1D6E1C7:        = var_3E4.Tag
  loc_1D6E1D4:       var_260 = Val(var_7A4)
  loc_1D6E1E4:       Set var_3E8 = var_3F0(var_92)
  loc_1D6E1EA:       Call 0.Method_Proc_258_153_1D6E8C40 (var_8CC)
  loc_1D6E204:       Set var_3F4 = var_438(var_92)
  loc_1D6E20A:       Call 0.Method_Proc_258_153_1D6E8C40 (var_968)
  loc_1D6E212:        = var_438.Tag
  loc_1D6E224:       Set var_4BC = var_4C0(var_92)
  loc_1D6E22A:       Call 0.Method_Proc_258_153_1D6E8C40 (var_A2C)
  loc_1D6E232:        = var_4C0.Tag
  loc_1D6E244:       Set var_508 = var_50C(var_92)
  loc_1D6E24A:       Call 0.Method_Proc_258_153_1D6E8C40 (var_AA0)
  loc_1D6E252:        = var_50C.Text
  loc_1D6E25F:       var_A58 = Val(var_AA0)
  loc_1D6E26F:       Set var_510 = var_798(var_92)
  loc_1D6E275:       Call 0.Method_Proc_258_153_1D6E8C40 (var_AA4)
  loc_1D6E28A:       var_A60 = Val(var_AA4)
  loc_1D6E29A:       Set var_79C = var_7A0(var_92)
  loc_1D6E2A0:       Call 0.Method_Proc_258_153_1D6E8C40 (var_AA8)
  loc_1D6E2B5:       var_A68 = Val(var_AA8)
  loc_1D6E2C3:       Proc_6_7_F25D88(var_5D4, MemVar_1F920EC)
  loc_1D6E2CC:       Set var_8B8 = Me.TopCtrl1
  loc_1D6E2D2:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A68)
  loc_1D6E314:       Set var_960 = var_964(CInt(9))
  loc_1D6E31A:       Call 0.Method_Proc_258_153_1D6E8C40 ()
  loc_1D6E322:       var_6F4 = CVar(var_964) 'Address
  loc_1D6E329:       Proc_6_7_F25D88(var_714)
  loc_1D6E33B:       Set var_A50 = var_C04(var_92)
  loc_1D6E341:       Call 0.Method_Proc_258_153_1D6E8C40 (var_AB0)
  loc_1D6E349:       var_6F4 = var_C04.Tag
  loc_1D6E389:       var_1B0 = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,PartyCode,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LOGSITE_CODE) Values ('" & var_15C
  loc_1D6E3AA:       var_2FC = var_1B0 & "'," & CStr(var_92) & ",'" & var_168
  loc_1D6E3DA:       var_288 = CVar(var_4C4) 'String
  loc_1D6E3E6:       var_2AC = CVar(var_2FC & "'," & CStr(var_160) & ",") & var_1F8 & ",'" & var_288 & "','" 
  loc_1D6E43A:       var_488 = var_2AC & Trim(CVar(var_514)) & "'," & CVar(var_3F0.Caption) & ",'" & CVar(var_8CC) & "','" & CVar(var_968) & "','" & CVar(var_A2C) 
  loc_1D6E492:       var_5B4 = var_488 & "'," & CVar(var_798.Text) & "," & CVar(var_7A0.Caption) & "," & CVar(var_A68) & ",'" & CVar(MemVar_1F920C8) & "'," 
  loc_1D6E4DC:       var_804 = var_5B4 & var_5D4 & ",'" & IIf((CStr(var_634) = "Add"), "A", "E") & "'," & var_714 & ",'" & CVar(var_AB0) & "','" & var_158.Fields.Item("OutletCode").Value 
  loc_1D6E519:       unk_5B213D.Execute CStr(var_804 & "','N','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_894, -1
  loc_1D6E5E9:     End If
  loc_1D6E5EC:   Next var_11E0 'Integer
  loc_1D6E5F5:   Set var_1A4 = Me.TopCtrl1
  loc_1D6E5FB:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1D6E614:   If (CStr() = "Add") Then
  loc_1D6E62B:     var_1B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1D6E64E:     var_218 = CVar(var_1B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & var_168 & "' And VP.Date_From<=") 'String
  loc_1D6E65F:     Set var_1A4 = var_1A8(CInt(1))
  loc_1D6E665:     Call 0.Method_Proc_258_153_1D6E8C40 (var_2FC, var_218, var_288)
  loc_1D6E66D:     -1 = var_1A8.Text
  loc_1D6E67B:     Proc_6_7_F25D88(var_1F8, CVar(var_2FC))
  loc_1D6E69A:     unk_5B213D.Execute CStr(var_1AC & var_1F8 & " Order By VP.Date_From DESC"), , 
  loc_1D6E6A5:     Set var_88 = var_1AC
  loc_1D6E6E3:     If (var_88.RecordCount > 0) Then
  loc_1D6E714:       var_2F8 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_160) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1D6E72B:       var_1C8 = "V_Type"
  loc_1D6E782:       Proc_6_7_F25D88(var_288, CVar(var_88.Fields.Item("Date_From")), CVar(var_2F8 & MemVar_1F92078 & "') and V_Type='") & var_88.Fields.Item(var_1C8).Value & "' and Date_From=")
  loc_1D6E798:       unk_5B213D.Execute CStr(var_2AC & var_288), -1, var_254
  loc_1D6E7CC:     End If
  loc_1D6E7CC:   End If
  loc_1D6E7D2:   unk_5B213D.CommitTrans
  loc_1D6E7D9:   var_8A = 0
  loc_1D6E7DF:   var_158.MoveNext
  loc_1D6E7E4:   GoTo loc_1D6BED4
  loc_1D6E7E7: End If
  loc_1D6E7F2: Me.Requery -1
  loc_1D6E81C: Me.Find "SearchCode ='" & var_90 & "'", 0, 1
  loc_1D6E833: If (global_188 <> "FAST") Then
  loc_1D6E841:   Me.Requery -1
  loc_1D6E846: End If
  loc_1D6E851: Me.Requery -1
  loc_1D6E879: Call Proc_258_148_1079CA0(Proc_5_1_100CB50("INI", Me, global_116))
  loc_1D6E884: Call Proc_258_145_1BA10F4(var_1C8)
  loc_1D6E889: Call Proc_258_133_121F3D8(var_8A)
  loc_1D6E893: Set var_88 = Nothing
  loc_1D6E89B: Set var_134 = Nothing
  loc_1D6E8A3: Set var_154 = Nothing
  loc_1D6E8A6: Exit Sub
  loc_1D6E8A7: ' Referenced from: 1D66C94
  loc_1D6E8AD: If (var_8A = &HFF) Then
  loc_1D6E8B6:   unk_5B213D.RollbackTrans
  loc_1D6E8BB: End If
  loc_1D6E8BB: Proc_6_60_E62BC4()
  loc_1D6E8C0: Exit Sub
End Sub

Public Sub Proc_258_154_FBFB0C
  'Data Table: 5B2100
  Dim var_AC As Long
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBF970: Set var_98 = ()
  loc_FBF976: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_B()
  loc_FBF97F: var_AC = CLng()
  loc_FBF98F: If (var_AC = CLng(4)) Then
  loc_FBF994:   var_92 = 4 'Byte
  loc_FBF998: End If
  loc_FBF9A1: Set var_98 = var_B0(0)
  loc_FBF9A7: Call 0.Method_Proc_258_154_FBFB0C0 (var_AC)
  loc_FBF9CA: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBF9E2: Set var_98 = 1(var_88)
  loc_FBF9E8: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_FBF9FE: For var_D4 =  To CInt((CLng() - 1)):  = var_D4 'Integer
  loc_FBFA0C:   Set var_98 = (CLng(var_88))
  loc_FBFA12:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A()
  loc_FBFA22:   If ( = CLng()) Then
  loc_FBFA25:     GoTo loc_FBFAF7
  loc_FBFA28:   End If
  loc_FBFA3F:   Set var_98 = CVar(CLng(var_88))(CVar(CLng(var_92)))
  loc_FBFA45:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_FBFA56:   var_D0 = Trim(CVar(CStr()))
  loc_FBFA60:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBFA95:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBFAB9:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBFAD2:     Set var_98 = var_B0(0)
  loc_FBFAD8:     Call 0.Method_Proc_258_154_FBFB0C0 ()
  loc_FBFAE0:     var_B0.SetFocus
  loc_FBFAF1:     Proc_258_154_FBFB0C = 0
  loc_FBFAF7:     ' Referenced from: FBFA25
  loc_FBFAF7:   End If
  loc_FBFAFA: Next var_D4 'Integer
  loc_FBFB04: Proc_258_154_FBFB0C = &HFF
End Sub

Public Sub Proc_258_155_EA89BC(arg_C) 'EA89BC
  'Data Table: 5B2100
  Dim var_8C As Recordset15
  loc_EA8936: IStAdFunc
  loc_EA893D: Set var_8C = arg_C 
  loc_EA8965: Me.Recordset15.Fields.Append "V_NO", 3, &HB
  loc_EA8975: var_8C.CursorType = 3
  loc_EA8982: var_8C.LockType = 3
  loc_EA89A1: var_8C.Open var_A0, var_B0, -1
  loc_EA89A8: Set var_8C = Nothing 
  loc_EA89AF: Set var_88 = arg_C 
  loc_EA89B3: Proc_258_155_EA89BC = -1
End Sub

Public Sub Proc_258_156_114B750
  'Data Table: 5B2100
  Dim var_B4 As Variant
  Dim var_94 As String
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_CC As Column
  Dim var_D0 As String
  Dim var_D8 As String
  loc_114B3C6: Set global_120 = New 
  loc_114B3D8: Me.Recordset15.CursorLocation = 3
  loc_114B3E3: var_90 = global_304
  loc_114B3EE: If (var_90 = "Hall") Then
  loc_114B3FC:   If (global_240 = "Y") Then
  loc_114B420:     var_94 = "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') And Code In (Select RoomNo From KOT Where RestCode='" & global_76
  loc_114B431:     Me.Open CVar(var_94 & "' ANd RoomCat='HALL' and RoomType='HL' And Pending='Y') Order by T.Code"), CVar(MemVar_1F92044), 3
  loc_114B43F:   Else
  loc_114B462:     Me.Open "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') Order by T.Code", CVar(MemVar_1F92044), 3
  loc_114B467:   End If
  loc_114B473:   Set var_8C = var_C8(2)
  loc_114B479:   Call 0.Method_Proc_258_156_114B7500 ("Hall", 1, -1)
  loc_114B481:   var_C8.Caption = 1
  loc_114B49D:   Set var_8C = var_CC(1)
  loc_114B4A3:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_69("Hall")
  loc_114B4AE:   Set var_C8 = -1
  loc_114B4B4:    = var_C8.Item()
  loc_114B4BC:   var_CC.Caption = 
  loc_114B4D3:   global_188 = "HALL"
  loc_114B4DD:   global_192 = "HL"
  loc_114B4E4: Else
  loc_114B4EC:   If Not (var_90 = "Fast Food") Then
  loc_114B4F7:     If (var_90 = "Outlet") Then
  loc_114B4FA:     End If
  loc_114B506:     Set var_8C = var_C8(2)
  loc_114B50C:     Call 0.Method_Proc_258_156_114B7500 ("Table #")
  loc_114B514:     var_C8.Caption = 
  loc_114B530:     Set var_8C = var_CC(1)
  loc_114B536:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_69("Table #")
  loc_114B541:     Set var_C8 = 
  loc_114B547:      = var_C8.Item()
  loc_114B54F:     var_CC.Caption = 
  loc_114B563:     var_88 = " Order by Code"
  loc_114B571:     If (global_240 = "Y") Then
  loc_114B59C:       var_D0 = "Select T.Code,T.Code As Name From RoomMast T where T.Type in('TB') And RestCode='" & global_76 & "' And Code In (Select RoomNo From KOT Where RestCode='"
  loc_114B5AD:       var_D8 = var_D0 & global_76 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y') "
  loc_114B5BE:       Me.Open CVar(var_D8 & var_88), CVar(MemVar_1F92044), 3
  loc_114B5D4:     Else
  loc_114B603:       var_A4 = CVar("Select T.Code,T.Code As Name From RoomMast T where T.Type in('TB')  And RestCode='" & global_76 & "' " & var_88) 'String
  loc_114B60D:       Me.Open var_A4, CVar(MemVar_1F92044), 3
  loc_114B61C:     End If
  loc_114B622:     global_188 = "REST"
  loc_114B62C:     global_192 = "TB"
  loc_114B633:   Else
  loc_114B63B:     If (var_90 = "Room Service") Then
  loc_114B64A:       Set var_8C = var_C8(2)
  loc_114B650:       Call 0.Method_Proc_258_156_114B7500 ("Room #", 1, -1)
  loc_114B658:       var_C8.Caption = 1
  loc_114B674:       Set var_8C = var_CC(1)
  loc_114B67A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_69("Room #")
  loc_114B685:       Set var_C8 = -1
  loc_114B68B:        = var_C8.Item()
  loc_114B693:       var_CC.Caption = 
  loc_114B6AF:       If (global_240 = "Y") Then
  loc_114B6D3:         var_94 = "Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat,RC.docid as FolioNoDocid From ROOMOCC RC where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL And ROOMNO In (Select RoomNo From KOT Where RestCode='" & global_76
  loc_114B6DA:         var_A4 = CVar(var_94 & "' and RoomType='RO' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG is Null or DELFLAG='') AND NCKOT<>'Y') Order by RC.roomno") 'String
  loc_114B6E4:         Me.Open var_A4, CVar(MemVar_1F92044), 3
  loc_114B6F2:       Else
  loc_114B709:         var_B4 = "Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat,RC.docid as FolioNoDocid  From ROOMOCC RC where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL Order by RC.ROOMNO"
  loc_114B715:         Me.Open var_B4, CVar(MemVar_1F92044), 3
  loc_114B71A:       End If
  loc_114B720:       global_192 = "RO"
  loc_114B724:     End If
  loc_114B724:   End If
  loc_114B724: End If
  loc_114B72D: CVarUnk
  loc_114B732: VerifyVarObj
  loc_114B738: Set var_8C = 1(global_120)
  loc_114B73E: LateIdStAd
  loc_114B74C: Exit Sub
End Sub

Public Sub Proc_258_157_1BC1384(arg_C) '1BC1384
  'Data Table: 5B2100
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_AC As String
  Dim var_E8 As Variant
  Dim var_BC As String
  Dim unk_5B213D As Connection15
  Dim var_90 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_15C As Variant
  Dim var_1BC As Integer
  Dim var_180 As String
  Dim var_1A8 As Variant
  Dim var_1AC As Fields15
  Dim var_1C0 As Variant
  Dim var_250 As Variant
  Dim var_88 As Recordset15
  Dim var_D8 As Variant
  Dim var_288 As Variant
  Dim var_FC As Variant
  Dim var_298 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As Integer
  loc_1BBBD74: Set var_90 = var_94(1)
  loc_1BBBD7A: Call 0.Method_Proc_258_157_1BC13840 (var_96)
  loc_1BBBD82:  = var_94.TabIndex
  loc_1BBBD8A: var_8A = var_96
  loc_1BBBD98: Set var_90 = Me.TopCtrl1
  loc_1BBBD9E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_8A)
  loc_1BBBDB7: If (CStr() = "Add") Then
  loc_1BBBDC6:   Set var_90 = var_8C(var_96)
  loc_1BBBDCC:   Call 0.Method_Proc_258_157_1BC1384C (1)
  loc_1BBBDD7:   For var_B0 =  To var_96:  = var_B0 'Integer
  loc_1BBBDE9:     Set var_90 = var_94(var_8C)
  loc_1BBBDEF:     Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBBDF7:     var_94.Visible = 
  loc_1BBBE06:   Next var_B0 'Integer
  loc_1BBBE17:   Set var_90 = var_8C(var_96)
  loc_1BBBE1D:   Call 0.Method_Proc_258_157_1BC1384C (1)
  loc_1BBBE28:   For var_B4 =  To var_96:  = var_B4 'Integer
  loc_1BBBE3A:     Set var_90 = var_94(var_8C)
  loc_1BBBE40:     Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBBE48:     var_94.Visible = 
  loc_1BBBE57:   Next var_B4 'Integer
  loc_1BBBE68:   Set var_90 = var_8C(var_96)
  loc_1BBBE6E:   Call 0.Method_Proc_258_157_1BC1384C (1)
  loc_1BBBE79:   For var_B8 =  To var_96:  = var_B8 'Integer
  loc_1BBBE8B:     Set var_90 = var_94(var_8C)
  loc_1BBBE91:     Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBBE99:     var_94.Visible = 
  loc_1BBBEA8:   Next var_B8 'Integer
  loc_1BBBEAD: End If
  loc_1BBBEB1: Set var_90 = Me.TopCtrl1
  loc_1BBBEB7: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BBBED0: If (CStr() = "Add") Then
  loc_1BBBEF7:   var_E8 = 0
  loc_1BBBF14:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F92078
  loc_1BBBF35:   unk_5B213D.Execute var_BC & "' and Code='" & global_76 & "'", var_A8, -1
  loc_1BBBF3D:   var_90 = var_90.Fields
  loc_1BBBF45:   var_E8 = var_94.Item(var_94)
  loc_1BBBF4D:   var_EC = var_EC.Value
  loc_1BBBF68:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1BBBF7B:   var_1BC = 0
  loc_1BBBF9B:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_1BBBFAB:   unk_5B213D.Execute var_180 & "'", var_1A4, -1
  loc_1BBBFB3:   var_1A8 = var_1A8.Fields
  loc_1BBBFBB:   var_1BC = var_1AC.Item(var_1AC)
  loc_1BBBFC3:   var_1C0 = var_1C0.Value
  loc_1BBBFE3:   Proc_6_7_F25D88(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate<=", var_15C & "' and V_Type='")
  loc_1BBBFF4:   var_250 = CVar("Select * From SundryType WHERE logsite_code='" & MemVar_1F92078 & "' and V_Type='") & var_220 & "  Order by AppDate Desc) Order by SNO" 
  loc_1BBC002:   unk_5B213D.Execute CStr(var_250), var_274, -1
  loc_1BBC00D:   Set var_88 = var_278
  loc_1BBC058: Else
  loc_1BBC07C:   var_E8 = 0
  loc_1BBC099:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F92078
  loc_1BBC0BA:   unk_5B213D.Execute var_BC & "' and Code='" & global_76 & "'", var_A8, -1
  loc_1BBC0C2:   var_90 = var_90.Fields
  loc_1BBC0CA:   var_E8 = var_94.Item(var_94)
  loc_1BBC0D2:   var_EC = var_EC.Value
  loc_1BBC0ED:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1BBC100:   var_1BC = 0
  loc_1BBC120:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_1BBC130:   unk_5B213D.Execute var_180 & "'", var_1A4, -1
  loc_1BBC138:   var_1A8 = var_1A8.Fields
  loc_1BBC140:   var_1BC = var_1AC.Item(var_1AC)
  loc_1BBC148:   var_1C0 = var_1C0.Value
  loc_1BBC168:   Proc_6_7_F25D88(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate=", var_15C & "' and V_Type='", CVar("Select * From SundryType WHERE LogSite_Code='" & MemVar_1F92078 & "' and V_Type='"))
  loc_1BBC187:   unk_5B213D.Execute CStr(var_274 & var_220 & "  Order by AppDate Desc) Order by SNO"), -1, var_278
  loc_1BBC192:   Set var_88 = var_278
  loc_1BBC1DA: End If
  loc_1BBC1E1: Set var_90 = var_278(var_96)
  loc_1BBC1E7: Call 0.Method_Proc_258_157_1BC13848 ()
  loc_1BBC205: var_280 = var_88.RecordCount
  loc_1BBC217: If ((CLng(var_96) > var_88.RecordCount) And (var_280 > 1)) Then
  loc_1BBC239:   Set var_90 = var_8C(var_96)
  loc_1BBC23F:   Call 0.Method_Proc_258_157_1BC13848 (CInt((var_88.RecordCount + 1)))
  loc_1BBC24A:   For var_284 =  To var_96:  = var_284 'Integer
  loc_1BBC25A:     Set var_90 = var_94(var_8C)
  loc_1BBC260:     Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBC271:     Me.Global.Unload var_94
  loc_1BBC287:     Set var_90 = var_94(var_8C)
  loc_1BBC28D:     Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBC29E:     Me.Global.Unload var_94
  loc_1BBC2B4:     Set var_90 = var_94(var_8C)
  loc_1BBC2BA:     Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBC2CB:     Me.Global.Unload var_94
  loc_1BBC2E1:     Set var_90 = var_94(var_8C)
  loc_1BBC2E7:     Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBC2F8:     Me.Global.Unload var_94
  loc_1BBC30E:     Set var_90 = var_94(var_8C)
  loc_1BBC314:     Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBC325:     Me.Global.Unload var_94
  loc_1BBC334:   Next var_284 'Integer
  loc_1BBC339: End If
  loc_1BBC33F: var_27C = var_88.RecordCount
  loc_1BBC34D: If (var_27C > 0) Then
  loc_1BBC389:   Set var_EC = var_1A8(CInt(9))
  loc_1BBC38F:   Call 0.Method_Proc_258_157_1BC13840 (CStr(var_88.Fields.Item("AppDate").Value))
  loc_1BBC397:   var_1A8.Text = 
  loc_1BBC3AD:   ' Referenced from: 1BBE61F
  loc_1BBC3B3:   var_96 = var_88.EOF
  loc_1BBC3BC:   If Not(var_96) Then
  loc_1BBC3FB:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1BBC42F:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BBC435:       Call 0.Method_Proc_258_157_1BC13848 ()
  loc_1BBC44F:       If ( > CVar(var_96)) Then
  loc_1BBC484:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBC48A:         Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBC49B:         Me.Global.Load var_1A8
  loc_1BBC4AE:       End If
  loc_1BBC4F9:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBC50E:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBC514:       Call 0.Method_Proc_258_157_1BC13840 (CStr(var_88.Fields.Item("RevCode").Value))
  loc_1BBC51C:       var_1C0.Tag = 
  loc_1BBC56B:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BBC571:       Call 0.Method_Proc_258_157_1BC13848 ()
  loc_1BBC58B:       If ( > CVar(var_96)) Then
  loc_1BBC5C0:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBC5C6:         Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBC5D7:         Me.Global.Load var_1A8
  loc_1BBC5EA:       End If
  loc_1BBC622:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBC628:       Call 0.Method_Proc_258_157_1BC13840 ((var_8A + 1))
  loc_1BBC630:       var_1A8.TabIndex = 
  loc_1BBC649:       var_8A = (var_8A + 1)
  loc_1BBC68D:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBC6CD:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBC6D3:       Call 0.Method_Proc_258_157_1BC13840 (CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1BBC6DB:       var_1C0.Visible = var_8A
  loc_1BBC73A:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BBC799:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BBC7A2:         Set var_278 = var_288(CInt(True))
  loc_1BBC7A8:         Call 0.Method_Proc_258_157_1BC13840 (var_280)
  loc_1BBC7B0:          = var_288.Height
  loc_1BBC7EA:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BBC7F3:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("RevCode").Value))
  loc_1BBC7F9:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBC801:          = var_1A8.Top
  loc_1BBC81D:         Set var_294 = var_298(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBC823:         Call 0.Method_Proc_258_157_1BC13840 (((var_27C + var_280) + CDbl(&HF)))
  loc_1BBC82B:         var_298.Top = 
  loc_1BBC854:       End If
  loc_1BBC890:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BBC8EF:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BBC8F8:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("RevCode").Value))
  loc_1BBC8FE:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBC906:          = var_1A8.Left
  loc_1BBC919:         Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBC91F:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBC927:         var_288.Left = 
  loc_1BBC946:       End If
  loc_1BBC94A:       Set var_90 = Me.TopCtrl1
  loc_1BBC950:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BBC969:       If (CStr() = "Add") Then
  loc_1BBC9C9:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1BBCA16:         Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BBCA1C:         Call 0.Method_Proc_258_157_1BC13840 (CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString)))
  loc_1BBCA24:         var_288.Text = 
  loc_1BBCA4C:       End If
  loc_1BBCA97:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBCAAC:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBCAB2:       Call 0.Method_Proc_258_157_1BC13840 (CStr(var_88.Fields.Item("Limit").Value))
  loc_1BBCABA:       var_1C0.Tag = 
  loc_1BBCB0C:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBCB12:       Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BBCB1A:       var_1A8.FontBold = 
  loc_1BBCB66:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1BBCB9D:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBCBA3:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBCBAB:         var_1A8.Enabled = 
  loc_1BBCBC1:       Else
  loc_1BBCBF5:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBCBFB:         Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BBCC03:         var_1A8.Enabled = 
  loc_1BBCC16:       End If
  loc_1BBCC1A:       Set var_90 = Me.TopCtrl1
  loc_1BBCC20:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BBCC28:       var_AC = CStr()
  loc_1BBCC39:       If (var_AC = "Browse") Then
  loc_1BBCC70:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBCC76:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBCC7E:         var_1A8.Enabled = 
  loc_1BBCC91:       End If
  loc_1BBCCCD:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1BBCCEF:         var_94 = var_88.Fields.Item("SNo")
  loc_1BBCD04:         Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BBCD0A:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBCD12:         var_1A8.Enabled = 
  loc_1BBCD25:       End If
  loc_1BBCD30:       var_E8 = (global_440 = "No")
  loc_1BBCD42:       Set var_90 = var_94(CInt(&HD))
  loc_1BBCD48:       Call 0.Method_Proc_258_157_1BC13840 (var_AC)
  loc_1BBCD50:       var_E8 = var_94.Tag
  loc_1BBCD86:       If CBool( And (Trim(CVar(var_AC)) <> vbNullString)) Then
  loc_1BBCDBD:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBCDC3:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBCDCB:         var_1A8.Enabled = 
  loc_1BBCDDE:       End If
  loc_1BBCE0F:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BBCE15:       Call 0.Method_Proc_258_157_1BC13848 ()
  loc_1BBCE2F:       If ( > CVar(var_96)) Then
  loc_1BBCE64:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBCE6A:         Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBCE7B:         Me.Global.Load var_1A8
  loc_1BBCE8E:       End If
  loc_1BBCEC2:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBCEC8:       Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BBCED0:       var_1A8.Visible = 
  loc_1BBCF3F:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBCF45:       Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBCF4D:        = var_1A8.Top
  loc_1BBCF60:       Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBCF66:       Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBCF6E:       var_288.Top = 
  loc_1BBCFC9:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BBD00D:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1BBD028:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BBD031:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBD037:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBD03F:          = var_1A8.Left
  loc_1BBD052:         Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BBD058:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBD060:         var_288.Left = 
  loc_1BBD07F:       End If
  loc_1BBD0DF:       Set var_1AC = var_1C0(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBD0E5:       Call 0.Method_Proc_258_157_1BC13840 (CStr(var_88.Fields.Item("DispName").Value))
  loc_1BBD0ED:       var_1C0.Caption = 
  loc_1BBD156:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBD16B:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBD171:       Call 0.Method_Proc_258_157_1BC13840 (CStr(var_88.Fields.Item("SundryCode").Value))
  loc_1BBD179:       var_1C0.Tag = 
  loc_1BBD1CB:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBD1D1:       Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BBD1D9:       var_1A8.FontBold = 
  loc_1BBD21D:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BBD223:       Call 0.Method_Proc_258_157_1BC13848 ()
  loc_1BBD23D:       If ( > CVar(var_96)) Then
  loc_1BBD272:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBD278:         Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBD289:         Me.Global.Load var_1A8
  loc_1BBD29C:       End If
  loc_1BBD2DD:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBD31D:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBD323:       Call 0.Method_Proc_258_157_1BC13840 (CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1BBD32B:       var_1C0.Visible = 
  loc_1BBD38F:       var_1C0 = var_88.Fields.Item("SNo")
  loc_1BBD3AA:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBD3B0:       Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBD3B8:        = var_1A8.Top
  loc_1BBD3CB:       Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BBD3D1:       Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBD3D9:       var_288.Top = 
  loc_1BBD42C:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBD432:       Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BBD43A:       var_1A8.FontBold = 
  loc_1BBD49C:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBD4B1:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBD4B7:       Call 0.Method_Proc_258_157_1BC13840 (CStr(Trim(CVar(var_88.Fields.Item("RoundOff")))))
  loc_1BBD4BF:       var_1C0.Tag = 
  loc_1BBD519:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BBD578:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BBD581:         Set var_EC = var_1A8(CInt(Trim(CVar(var_88.Fields.Item("RoundOff")))))
  loc_1BBD587:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBD58F:          = var_1A8.Left
  loc_1BBD5A2:         Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBD5A8:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBD5B0:         var_288.Left = 
  loc_1BBD5CF:       End If
  loc_1BBD600:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BBD606:       Call 0.Method_Proc_258_157_1BC13848 ()
  loc_1BBD620:       If ( > CVar(var_96)) Then
  loc_1BBD655:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBD65B:         Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBD66C:         Me.Global.Load var_1A8
  loc_1BBD67F:       End If
  loc_1BBD6B7:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBD6BD:       Call 0.Method_Proc_258_157_1BC13840 ((var_8A + 1))
  loc_1BBD6C5:       var_1A8.TabIndex = 
  loc_1BBD6DE:       var_8A = (var_8A + 1)
  loc_1BBD715:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBD71B:       Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BBD723:       var_1A8.Visible = var_8A
  loc_1BBD792:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBD798:       Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBD7A0:        = var_1A8.Top
  loc_1BBD7B3:       Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBD7B9:       Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBD7C1:       var_288.Top = 
  loc_1BBD81C:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BBD87B:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BBD884:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBD88A:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBD892:          = var_1A8.Left
  loc_1BBD8A5:         Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBD8AB:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBD8B3:         var_288.Left = 
  loc_1BBD8D2:       End If
  loc_1BBD8D6:       Set var_90 = Me.TopCtrl1
  loc_1BBD8DC:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BBD8F5:       If (CStr() = "Add") Then
  loc_1BBD955:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1BBD9A2:         Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BBD9A8:         Call 0.Method_Proc_258_157_1BC13840 (CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString)))
  loc_1BBD9B0:         var_288.Text = 
  loc_1BBD9D8:       End If
  loc_1BBDA20:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBDA35:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBDA3B:       Call 0.Method_Proc_258_157_1BC13840 (Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula"))))
  loc_1BBDA43:       var_1C0.Tag = 
  loc_1BBDA93:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBDA99:       Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BBDAA1:       var_1A8.FontBold = 
  loc_1BBDADC:       var_AC = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP")))
  loc_1BBDAED:       If (var_AC = "Y") Then
  loc_1BBDB24:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBDB2A:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBDB32:         var_1A8.Enabled = 
  loc_1BBDB48:       Else
  loc_1BBDB7C:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBDB82:         Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BBDB8A:         var_1A8.Enabled = 
  loc_1BBDB9D:       End If
  loc_1BBDBD2:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBDBD8:       Call 0.Method_Proc_258_157_1BC13840 (var_AC)
  loc_1BBDBE0:        = var_1A8.Tag
  loc_1BBDC09:       If (var_AC = MemVar_1F92078 & "ROFF") Then
  loc_1BBDC40:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBDC46:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBDC4E:         var_1A8.Enabled = 
  loc_1BBDC61:       End If
  loc_1BBDC96:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBDC9C:       Call 0.Method_Proc_258_157_1BC13840 (var_AC)
  loc_1BBDCA4:        = var_1A8.Tag
  loc_1BBDCCD:       If (var_AC = MemVar_1F92078 & "NET") Then
  loc_1BBDD07:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBDD0D:         Call 0.Method_Proc_258_157_1BC13840 (CDbl(350))
  loc_1BBDD15:         var_1A8.Height = 
  loc_1BBDD69:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1BBDD84:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBDD8A:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBDD92:          = var_1A8.Width
  loc_1BBDDAB:         Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BBDDB1:         Call 0.Method_Proc_258_157_1BC13840 ((var_27C + CDbl(375)))
  loc_1BBDDB9:         var_288.Width = 
  loc_1BBDDF2:         var_94 = var_88.Fields.Item("SNo")
  loc_1BBDE0E:         Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BBDE14:         Call 0.Method_Proc_258_157_1BC13840 (CDbl(&HE))
  loc_1BBDE1C:         var_1A8.FontSize = 
  loc_1BBDE49:         var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBDE64:         Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBDE6A:         Call 0.Method_Proc_258_157_1BC13840 (var_280)
  loc_1BBDE72:          = var_1C0.Left
  loc_1BBDE83:         Set var_90 = var_94(1)
  loc_1BBDE89:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBDE91:          = var_94.Left
  loc_1BBDEAF:         If (var_27C = var_280) Then
  loc_1BBDECC:           var_94 = var_88.Fields.Item("SNo")
  loc_1BBDEF3:           var_1C0 = var_88.Fields.Item("SNo")
  loc_1BBDF0E:           Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BBDF14:           Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBDF1C:            = var_1A8.Left
  loc_1BBDF35:           Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BBDF3B:           Call 0.Method_Proc_258_157_1BC13840 ((var_27C - CDbl(400)))
  loc_1BBDF43:           var_288.Left = 
  loc_1BBDF62:         End If
  loc_1BBDF7C:         var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBDF97:         Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBDF9D:         Call 0.Method_Proc_258_157_1BC13840 (var_280)
  loc_1BBDFA5:          = var_1C0.Width
  loc_1BBDFB6:         Set var_90 = var_94(1)
  loc_1BBDFBC:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBDFC4:          = var_94.Width
  loc_1BBDFE2:         If (var_27C = var_280) Then
  loc_1BBDFFF:           var_94 = var_88.Fields.Item("SNo")
  loc_1BBE041:           Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BBE047:           Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBE04F:            = var_1A8.Width
  loc_1BBE068:           Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBE06E:           Call 0.Method_Proc_258_157_1BC13840 ((var_27C + CDbl(400)))
  loc_1BBE076:           var_288.Width = 
  loc_1BBE095:         End If
  loc_1BBE0A1:         Set var_EC = var_1A8(1)
  loc_1BBE0A7:         Call 0.Method_Proc_258_157_1BC13840 (var_280)
  loc_1BBE0AF:          = var_1A8.Height
  loc_1BBE0E9:         Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBE0EF:         Call 0.Method_Proc_258_157_1BC13840 (var_29C)
  loc_1BBE0F7:          = var_288.Top
  loc_1BBE108:         Set var_90 = var_94(1)
  loc_1BBE10E:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBE116:          = var_94.Top
  loc_1BBE141:         If (CSng((var_27C + (var_280 * CDbl(8)))) > var_29C) Then
  loc_1BBE150:           Set var_EC = var_1A8(1)
  loc_1BBE156:           Call 0.Method_Proc_258_157_1BC13840 (var_280)
  loc_1BBE15E:            = var_1A8.Height
  loc_1BBE196:           Set var_90 = var_94(1)
  loc_1BBE19C:           Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBE1A4:            = var_94.Top
  loc_1BBE1C5:           Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBE1CB:           Call 0.Method_Proc_258_157_1BC13840 (((var_27C + (var_280 * CDbl(8))) - CDbl(150)))
  loc_1BBE1D3:           var_288.Top = 
  loc_1BBE1FA:           Set var_EC = var_1A8(1)
  loc_1BBE200:           Call 0.Method_Proc_258_157_1BC13840 (var_280)
  loc_1BBE208:            = var_1A8.Height
  loc_1BBE21F:           var_1AC = var_88.Fields
  loc_1BBE240:           Set var_90 = var_94(1)
  loc_1BBE246:           Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBE24E:            = var_94.Top
  loc_1BBE26F:           Set var_278 = var_288(CInt(var_1AC.Item("SNo").Value))
  loc_1BBE275:           Call 0.Method_Proc_258_157_1BC13840 (((var_27C + (var_280 * CDbl(8))) - CDbl(150)))
  loc_1BBE27D:           var_288.Top = 
  loc_1BBE298:         End If
  loc_1BBE2CF:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBE2D5:         Call 0.Method_Proc_258_157_1BC13840 (CDbl(350))
  loc_1BBE2DD:         var_1A8.Height = 
  loc_1BBE326:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBE32C:         Call 0.Method_Proc_258_157_1BC13840 (CDbl(&HE))
  loc_1BBE334:         var_1A8.FontSize = 
  loc_1BBE37E:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBE384:         Call 0.Method_Proc_258_157_1BC13840 (&HFF00)
  loc_1BBE38C:         var_1A8.BackColor = 
  loc_1BBE3D6:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBE3DC:         Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BBE3E4:         var_1A8.ForeColor = 
  loc_1BBE42E:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBE434:         Call 0.Method_Proc_258_157_1BC13840 (&HFFFF)
  loc_1BBE43C:         var_1A8.BackColor = 
  loc_1BBE44F:       End If
  loc_1BBE453:       Set var_90 = Me.TopCtrl1
  loc_1BBE459:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BBE461:       var_AC = CStr()
  loc_1BBE472:       If (var_AC = "Browse") Then
  loc_1BBE4A9:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBE4AF:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBE4B7:         var_1A8.Enabled = 
  loc_1BBE4CA:       End If
  loc_1BBE506:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1BBE528:         var_94 = var_88.Fields.Item("SNo")
  loc_1BBE53D:         Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BBE543:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBE54B:         var_1A8.Enabled = 
  loc_1BBE55E:       End If
  loc_1BBE569:       var_E8 = (global_440 = "No")
  loc_1BBE57B:       Set var_90 = var_94(CInt(&HD))
  loc_1BBE581:       Call 0.Method_Proc_258_157_1BC13840 (var_AC)
  loc_1BBE589:       var_E8 = var_94.Tag
  loc_1BBE597:       var_FC = Trim(CVar(var_AC))
  loc_1BBE5BF:       If CBool( And (var_FC <> vbNullString)) Then
  loc_1BBE5E1:         var_94 = var_88.Fields.Item("SNo")
  loc_1BBE5E9:         var_A8 = var_94.Value
  loc_1BBE5F6:         Set var_EC = var_1A8(CInt(var_A8))
  loc_1BBE5FC:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBE604:         var_1A8.Enabled = 
  loc_1BBE617:       End If
  loc_1BBE617:     End If
  loc_1BBE61A:     var_88.MoveNext
  loc_1BBE61F:     GoTo loc_1BBC3AD
  loc_1BBE622:   End If
  loc_1BBE622: End If
  loc_1BBE626: Set var_90 = Me.TopCtrl1
  loc_1BBE62C: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BBE645: If (CStr() = "Add") Then
  loc_1BBE66C:   var_E8 = 0
  loc_1BBE689:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F92078
  loc_1BBE6AA:   unk_5B213D.Execute MemVar_1F92078 & "NET" & "' and Code='" & global_76 & "'", var_A8, -1
  loc_1BBE6B2:   var_90 = var_90.Fields
  loc_1BBE6BA:   var_E8 = var_94.Item(var_94)
  loc_1BBE6C2:   var_EC = var_EC.Value
  loc_1BBE6DD:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1BBE6F0:   var_1BC = 0
  loc_1BBE710:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_1BBE720:   unk_5B213D.Execute var_180 & "'", var_1A4, -1
  loc_1BBE728:   var_1A8 = var_1A8.Fields
  loc_1BBE730:   var_1BC = var_1AC.Item(var_1AC)
  loc_1BBE738:   var_1C0 = var_1C0.Value
  loc_1BBE758:   Proc_6_7_F25D88(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate<=", var_15C & "' and V_Type='")
  loc_1BBE769:   var_250 = CVar("Select * From SundryType WHERE AutoManual<>'A' And logsite_code='" & MemVar_1F92078 & "' and V_Type='") & var_220 & "  Order by AppDate Desc) Order by SNO" 
  loc_1BBE777:   unk_5B213D.Execute CStr(var_250), var_274, -1
  loc_1BBE782:   Set var_88 = var_278
  loc_1BBE7CD: Else
  loc_1BBE7F1:   var_E8 = 0
  loc_1BBE80E:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F92078
  loc_1BBE82F:   unk_5B213D.Execute MemVar_1F92078 & "NET" & "' and Code='" & global_76 & "'", var_A8, -1
  loc_1BBE837:   var_90 = var_90.Fields
  loc_1BBE83F:   var_E8 = var_94.Item(var_94)
  loc_1BBE847:   var_EC = var_EC.Value
  loc_1BBE862:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1BBE875:   var_1BC = 0
  loc_1BBE895:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_1BBE8A5:   unk_5B213D.Execute var_180 & "'", var_1A4, -1
  loc_1BBE8AD:   var_1A8 = var_1A8.Fields
  loc_1BBE8B5:   var_1BC = var_1AC.Item(var_1AC)
  loc_1BBE8BD:   var_1C0 = var_1C0.Value
  loc_1BBE8DD:   Proc_6_7_F25D88(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate=", var_15C & "' and V_Type='", CVar("Select * From SundryType WHERE AutoManual<>'A' And LogSite_Code='" & MemVar_1F92078 & "' and V_Type='"))
  loc_1BBE8FC:   unk_5B213D.Execute CStr(var_274 & var_220 & "  Order by AppDate Desc) Order by SNO"), -1, var_278
  loc_1BBE907:   Set var_88 = var_278
  loc_1BBE94F: End If
  loc_1BBE963: If (var_88.RecordCount > 0) Then
  loc_1BBE97F:   ReDim global_404(0 To var_88.RecordCount)
  loc_1BBE9A2:   ReDim global_408(0 To var_88.RecordCount)
  loc_1BBE9AE:   var_8C = 1
  loc_1BBE9B1:   ' Referenced from: 1BBEA52
  loc_1BBE9B7:   var_96 = var_88.EOF
  loc_1BBE9C0:   If Not(var_96) Then
  loc_1BBE9F8:     global_404(CLng(var_8C)) = Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryCode")), var_8C)
  loc_1BBEA19:     var_94 = var_88.Fields.Item("PerOrAmt")
  loc_1BBEA21:     var_A8 = CVar(var_94) 'Address
  loc_1BBEA37:     global_408(CLng(var_8C)) = Proc_6_38_E68A98(var_A8)
  loc_1BBEA47:     var_8C = (var_8C + 1)
  loc_1BBEA4D:     var_88.MoveNext
  loc_1BBEA52:     GoTo loc_1BBE9B1
  loc_1BBEA55:   End If
  loc_1BBEA55:   GoTo loc_1BBEA58
  loc_1BBEA58:   ' Referenced from: 1BBEA55
  loc_1BBEA58: End If
  loc_1BBEA5C: Set var_90 = Me.TopCtrl1
  loc_1BBEA62: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_8C)
  loc_1BBEA7B: If (CStr(var_278) = "Add") Then
  loc_1BBEA8A:   Set var_90 = var_8C(var_96)
  loc_1BBEA90:   Call 0.Method_Proc_258_157_1BC1384C (1)
  loc_1BBEA9B:   For var_2A0 =  To var_96:  = var_2A0 'Integer
  loc_1BBEAAD:     Set var_90 = var_94(var_8C)
  loc_1BBEAB3:     Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBEABB:     var_94.Visible = 
  loc_1BBEACA:   Next var_2A0 'Integer
  loc_1BBEADB:   Set var_90 = var_8C(var_96)
  loc_1BBEAE1:   Call 0.Method_Proc_258_157_1BC1384C (1)
  loc_1BBEAEC:   For var_2A4 =  To var_96:  = var_2A4 'Integer
  loc_1BBEAFE:     Set var_90 = var_94(var_8C)
  loc_1BBEB04:     Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBEB0C:     var_94.Visible = 
  loc_1BBEB1B:   Next var_2A4 'Integer
  loc_1BBEB2C:   Set var_90 = var_8C(var_96)
  loc_1BBEB32:   Call 0.Method_Proc_258_157_1BC1384C (1)
  loc_1BBEB3D:   For var_2A8 =  To var_96:  = var_2A8 'Integer
  loc_1BBEB4F:     Set var_90 = var_94(var_8C)
  loc_1BBEB55:     Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBEB5D:     var_94.Visible = 
  loc_1BBEB6C:   Next var_2A8 'Integer
  loc_1BBEB71: End If
  loc_1BBEB75: Set var_90 = Me.TopCtrl1
  loc_1BBEB7B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BBEB94: If (CStr() = "Add") Then
  loc_1BBEBBB:   var_E8 = 0
  loc_1BBEBD8:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F92078
  loc_1BBEBF9:   unk_5B213D.Execute MemVar_1F92078 & "NET" & "' and Code='" & global_76 & "'", var_A8, -1
  loc_1BBEC01:   var_90 = var_90.Fields
  loc_1BBEC09:   var_E8 = var_94.Item(var_94)
  loc_1BBEC11:   var_EC = var_EC.Value
  loc_1BBEC2C:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1BBEC3F:   var_1BC = 0
  loc_1BBEC5F:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_1BBEC6F:   unk_5B213D.Execute var_180 & "'", var_1A4, -1
  loc_1BBEC77:   var_1A8 = var_1A8.Fields
  loc_1BBEC7F:   var_1BC = var_1AC.Item(var_1AC)
  loc_1BBEC87:   var_1C0 = var_1C0.Value
  loc_1BBECA7:   Proc_6_7_F25D88(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate<=", var_15C & "' and V_Type='")
  loc_1BBECB8:   var_250 = CVar("Select * From SundryType WHERE logsite_code='" & MemVar_1F92078 & "' and V_Type='") & var_220 & "  Order by AppDate Desc) Order by SNO" 
  loc_1BBECC6:   unk_5B213D.Execute CStr(var_250), var_274, -1
  loc_1BBECD1:   Set var_88 = var_278
  loc_1BBED1C: Else
  loc_1BBED40:   var_E8 = 0
  loc_1BBED5D:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F92078
  loc_1BBED7E:   unk_5B213D.Execute MemVar_1F92078 & "NET" & "' and Code='" & global_76 & "'", var_A8, -1
  loc_1BBED86:   var_90 = var_90.Fields
  loc_1BBED8E:   var_E8 = var_94.Item(var_94)
  loc_1BBED96:   var_EC = var_EC.Value
  loc_1BBEDB1:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1BBEDC4:   var_1BC = 0
  loc_1BBEDE4:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_76
  loc_1BBEDF4:   unk_5B213D.Execute var_180 & "'", var_1A4, -1
  loc_1BBEDFC:   var_1A8 = var_1A8.Fields
  loc_1BBEE04:   var_1BC = var_1AC.Item(var_1AC)
  loc_1BBEE0C:   var_1C0 = var_1C0.Value
  loc_1BBEE2C:   Proc_6_7_F25D88(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate=", var_15C & "' and V_Type='", CVar("Select * From SundryType WHERE LogSite_Code='" & MemVar_1F92078 & "' and V_Type='"))
  loc_1BBEE4B:   unk_5B213D.Execute CStr(var_274 & var_220 & "  Order by AppDate Desc) Order by SNO"), -1, var_278
  loc_1BBEE56:   Set var_88 = var_278
  loc_1BBEE9E: End If
  loc_1BBEEA5: Set var_90 = var_278(var_96)
  loc_1BBEEAB: Call 0.Method_Proc_258_157_1BC13848 ()
  loc_1BBEEC9: var_280 = var_88.RecordCount
  loc_1BBEEDB: If ((CLng(var_96) > var_88.RecordCount) And (var_280 > 1)) Then
  loc_1BBEEFD:   Set var_90 = var_8C(var_96)
  loc_1BBEF03:   Call 0.Method_Proc_258_157_1BC13848 (CInt((var_88.RecordCount + 1)))
  loc_1BBEF0E:   For var_2AC =  To var_96:  = var_2AC 'Integer
  loc_1BBEF1E:     Set var_90 = var_94(var_8C)
  loc_1BBEF24:     Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBEF35:     Me.Global.Unload var_94
  loc_1BBEF4B:     Set var_90 = var_94(var_8C)
  loc_1BBEF51:     Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBEF62:     Me.Global.Unload var_94
  loc_1BBEF78:     Set var_90 = var_94(var_8C)
  loc_1BBEF7E:     Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBEF8F:     Me.Global.Unload var_94
  loc_1BBEFA5:     Set var_90 = var_94(var_8C)
  loc_1BBEFAB:     Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBEFBC:     Me.Global.Unload var_94
  loc_1BBEFD2:     Set var_90 = var_94(var_8C)
  loc_1BBEFD8:     Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBEFE9:     Me.Global.Unload var_94
  loc_1BBEFF8:   Next var_2AC 'Integer
  loc_1BBEFFD: End If
  loc_1BBF003: var_27C = var_88.RecordCount
  loc_1BBF011: If (var_27C > 0) Then
  loc_1BBF04D:   Set var_EC = var_1A8(CInt(9))
  loc_1BBF053:   Call 0.Method_Proc_258_157_1BC13840 (CStr(var_88.Fields.Item("AppDate").Value))
  loc_1BBF05B:   var_1A8.Text = 
  loc_1BBF071:   ' Referenced from: 1BC12E3
  loc_1BBF077:   var_96 = var_88.EOF
  loc_1BBF080:   If Not(var_96) Then
  loc_1BBF0BF:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1BBF0F3:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BBF0F9:       Call 0.Method_Proc_258_157_1BC13848 ()
  loc_1BBF113:       If ( > CVar(var_96)) Then
  loc_1BBF148:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF14E:         Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBF15F:         Me.Global.Load var_1A8
  loc_1BBF172:       End If
  loc_1BBF1BD:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBF1D2:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBF1D8:       Call 0.Method_Proc_258_157_1BC13840 (CStr(var_88.Fields.Item("RevCode").Value))
  loc_1BBF1E0:       var_1C0.Tag = 
  loc_1BBF22F:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BBF235:       Call 0.Method_Proc_258_157_1BC13848 ()
  loc_1BBF24F:       If ( > CVar(var_96)) Then
  loc_1BBF284:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF28A:         Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBF29B:         Me.Global.Load var_1A8
  loc_1BBF2AE:       End If
  loc_1BBF2E6:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF2EC:       Call 0.Method_Proc_258_157_1BC13840 ((var_8A + 1))
  loc_1BBF2F4:       var_1A8.TabIndex = 
  loc_1BBF30D:       var_8A = (var_8A + 1)
  loc_1BBF351:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBF391:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBF397:       Call 0.Method_Proc_258_157_1BC13840 (CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1BBF39F:       var_1C0.Visible = var_8A
  loc_1BBF3FE:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BBF45D:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BBF466:         Set var_278 = var_288(CInt(True))
  loc_1BBF46C:         Call 0.Method_Proc_258_157_1BC13840 (var_280)
  loc_1BBF474:          = var_288.Height
  loc_1BBF4AE:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BBF4B7:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("RevCode").Value))
  loc_1BBF4BD:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBF4C5:          = var_1A8.Top
  loc_1BBF4E1:         Set var_294 = var_298(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF4E7:         Call 0.Method_Proc_258_157_1BC13840 (((var_27C + var_280) + CDbl(&HF)))
  loc_1BBF4EF:         var_298.Top = 
  loc_1BBF518:       End If
  loc_1BBF554:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BBF5B3:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BBF5BC:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("RevCode").Value))
  loc_1BBF5C2:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBF5CA:          = var_1A8.Left
  loc_1BBF5DD:         Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF5E3:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBF5EB:         var_288.Left = 
  loc_1BBF60A:       End If
  loc_1BBF60E:       Set var_90 = Me.TopCtrl1
  loc_1BBF614:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BBF62D:       If (CStr() = "Add") Then
  loc_1BBF68D:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1BBF6DA:         Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BBF6E0:         Call 0.Method_Proc_258_157_1BC13840 (CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString)))
  loc_1BBF6E8:         var_288.Text = 
  loc_1BBF710:       End If
  loc_1BBF75B:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBF770:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBF776:       Call 0.Method_Proc_258_157_1BC13840 (CStr(var_88.Fields.Item("Limit").Value))
  loc_1BBF77E:       var_1C0.Tag = 
  loc_1BBF7D0:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF7D6:       Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BBF7DE:       var_1A8.FontBold = 
  loc_1BBF82A:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1BBF861:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF867:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBF86F:         var_1A8.Enabled = 
  loc_1BBF885:       Else
  loc_1BBF8B9:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF8BF:         Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BBF8C7:         var_1A8.Enabled = 
  loc_1BBF8DA:       End If
  loc_1BBF8DE:       Set var_90 = Me.TopCtrl1
  loc_1BBF8E4:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BBF8EC:       var_AC = CStr()
  loc_1BBF8FD:       If (var_AC = "Browse") Then
  loc_1BBF934:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBF93A:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBF942:         var_1A8.Enabled = 
  loc_1BBF955:       End If
  loc_1BBF991:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1BBF9B3:         var_94 = var_88.Fields.Item("SNo")
  loc_1BBF9C8:         Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BBF9CE:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBF9D6:         var_1A8.Enabled = 
  loc_1BBF9E9:       End If
  loc_1BBF9F4:       var_E8 = (global_440 = "No")
  loc_1BBFA06:       Set var_90 = var_94(CInt(&HD))
  loc_1BBFA0C:       Call 0.Method_Proc_258_157_1BC13840 (var_AC)
  loc_1BBFA14:       var_E8 = var_94.Tag
  loc_1BBFA4A:       If CBool( And (Trim(CVar(var_AC)) <> vbNullString)) Then
  loc_1BBFA81:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBFA87:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BBFA8F:         var_1A8.Enabled = 
  loc_1BBFAA2:       End If
  loc_1BBFAD3:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BBFAD9:       Call 0.Method_Proc_258_157_1BC13848 ()
  loc_1BBFAF3:       If ( > CVar(var_96)) Then
  loc_1BBFB28:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBFB2E:         Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBFB3F:         Me.Global.Load var_1A8
  loc_1BBFB52:       End If
  loc_1BBFB86:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBFB8C:       Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BBFB94:       var_1A8.Visible = 
  loc_1BBFC03:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBFC09:       Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBFC11:        = var_1A8.Top
  loc_1BBFC24:       Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBFC2A:       Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBFC32:       var_288.Top = 
  loc_1BBFC8D:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BBFCD1:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1BBFCEC:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BBFCF5:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBFCFB:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBFD03:          = var_1A8.Left
  loc_1BBFD16:         Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BBFD1C:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BBFD24:         var_288.Left = 
  loc_1BBFD43:       End If
  loc_1BBFDA3:       Set var_1AC = var_1C0(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBFDA9:       Call 0.Method_Proc_258_157_1BC13840 (CStr(var_88.Fields.Item("DispName").Value))
  loc_1BBFDB1:       var_1C0.Caption = 
  loc_1BBFE1A:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBFE2F:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBFE35:       Call 0.Method_Proc_258_157_1BC13840 (CStr(var_88.Fields.Item("SundryCode").Value))
  loc_1BBFE3D:       var_1C0.Tag = 
  loc_1BBFE8F:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBFE95:       Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BBFE9D:       var_1A8.FontBold = 
  loc_1BBFEE1:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BBFEE7:       Call 0.Method_Proc_258_157_1BC13848 ()
  loc_1BBFF01:       If ( > CVar(var_96)) Then
  loc_1BBFF36:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BBFF3C:         Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BBFF4D:         Me.Global.Load var_1A8
  loc_1BBFF60:       End If
  loc_1BBFFA1:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BBFFE1:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BBFFE7:       Call 0.Method_Proc_258_157_1BC13840 (CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1BBFFEF:       var_1C0.Visible = 
  loc_1BC0053:       var_1C0 = var_88.Fields.Item("SNo")
  loc_1BC006E:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0074:       Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BC007C:        = var_1A8.Top
  loc_1BC008F:       Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BC0095:       Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BC009D:       var_288.Top = 
  loc_1BC00F0:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC00F6:       Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BC00FE:       var_1A8.FontBold = 
  loc_1BC0160:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BC0175:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BC017B:       Call 0.Method_Proc_258_157_1BC13840 (CStr(Trim(CVar(var_88.Fields.Item("RoundOff")))))
  loc_1BC0183:       var_1C0.Tag = 
  loc_1BC01DD:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BC023C:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BC0245:         Set var_EC = var_1A8(CInt(Trim(CVar(var_88.Fields.Item("RoundOff")))))
  loc_1BC024B:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BC0253:          = var_1A8.Left
  loc_1BC0266:         Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC026C:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BC0274:         var_288.Left = 
  loc_1BC0293:       End If
  loc_1BC02C4:       Set var_EC = var_88.Fields.Item("SNo").Value(var_96)
  loc_1BC02CA:       Call 0.Method_Proc_258_157_1BC13848 ()
  loc_1BC02E4:       If ( > CVar(var_96)) Then
  loc_1BC0319:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC031F:         Call 0.Method_Proc_258_157_1BC13840 ()
  loc_1BC0330:         Me.Global.Load var_1A8
  loc_1BC0343:       End If
  loc_1BC037B:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0381:       Call 0.Method_Proc_258_157_1BC13840 ((var_8A + 1))
  loc_1BC0389:       var_1A8.TabIndex = 
  loc_1BC03A2:       var_8A = (var_8A + 1)
  loc_1BC03D9:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC03DF:       Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BC03E7:       var_1A8.Visible = var_8A
  loc_1BC0456:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC045C:       Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BC0464:        = var_1A8.Top
  loc_1BC0477:       Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC047D:       Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BC0485:       var_288.Top = 
  loc_1BC04E0:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1BC053F:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1BC0548:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC054E:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BC0556:          = var_1A8.Left
  loc_1BC0569:         Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC056F:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BC0577:         var_288.Left = 
  loc_1BC0596:       End If
  loc_1BC059A:       Set var_90 = Me.TopCtrl1
  loc_1BC05A0:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BC05B9:       If (CStr() = "Add") Then
  loc_1BC0619:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1BC0666:         Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BC066C:         Call 0.Method_Proc_258_157_1BC13840 (CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString)))
  loc_1BC0674:         var_288.Text = 
  loc_1BC069C:       End If
  loc_1BC06E4:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1BC06F9:       Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BC06FF:       Call 0.Method_Proc_258_157_1BC13840 (Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula"))))
  loc_1BC0707:       var_1C0.Tag = 
  loc_1BC0757:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC075D:       Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BC0765:       var_1A8.FontBold = 
  loc_1BC07A0:       var_AC = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP")))
  loc_1BC07B1:       If (var_AC = "Y") Then
  loc_1BC07E8:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC07EE:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BC07F6:         var_1A8.Enabled = 
  loc_1BC080C:       Else
  loc_1BC0840:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0846:         Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BC084E:         var_1A8.Enabled = 
  loc_1BC0861:       End If
  loc_1BC0896:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC089C:       Call 0.Method_Proc_258_157_1BC13840 (var_AC)
  loc_1BC08A4:        = var_1A8.Tag
  loc_1BC08CD:       If (var_AC = MemVar_1F92078 & "ROFF") Then
  loc_1BC0904:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC090A:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BC0912:         var_1A8.Enabled = 
  loc_1BC0925:       End If
  loc_1BC095A:       Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0960:       Call 0.Method_Proc_258_157_1BC13840 (var_AC)
  loc_1BC0968:        = var_1A8.Tag
  loc_1BC0991:       If (var_AC = MemVar_1F92078 & "NET") Then
  loc_1BC09CB:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC09D1:         Call 0.Method_Proc_258_157_1BC13840 (CDbl(350))
  loc_1BC09D9:         var_1A8.Height = 
  loc_1BC0A2D:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1BC0A48:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0A4E:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BC0A56:          = var_1A8.Width
  loc_1BC0A6F:         Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BC0A75:         Call 0.Method_Proc_258_157_1BC13840 ((var_27C + CDbl(375)))
  loc_1BC0A7D:         var_288.Width = 
  loc_1BC0AB6:         var_94 = var_88.Fields.Item("SNo")
  loc_1BC0AD2:         Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BC0AD8:         Call 0.Method_Proc_258_157_1BC13840 (CDbl(&HE))
  loc_1BC0AE0:         var_1A8.FontSize = 
  loc_1BC0B0D:         var_1A8 = var_88.Fields.Item("SNo")
  loc_1BC0B28:         Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BC0B2E:         Call 0.Method_Proc_258_157_1BC13840 (var_280)
  loc_1BC0B36:          = var_1C0.Left
  loc_1BC0B47:         Set var_90 = var_94(1)
  loc_1BC0B4D:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BC0B55:          = var_94.Left
  loc_1BC0B73:         If (var_27C = var_280) Then
  loc_1BC0B90:           var_94 = var_88.Fields.Item("SNo")
  loc_1BC0BB7:           var_1C0 = var_88.Fields.Item("SNo")
  loc_1BC0BD2:           Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BC0BD8:           Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BC0BE0:            = var_1A8.Left
  loc_1BC0BF9:           Set var_278 = var_288(CInt(var_1C0.Value))
  loc_1BC0BFF:           Call 0.Method_Proc_258_157_1BC13840 ((var_27C - CDbl(400)))
  loc_1BC0C07:           var_288.Left = 
  loc_1BC0C26:         End If
  loc_1BC0C40:         var_1A8 = var_88.Fields.Item("SNo")
  loc_1BC0C5B:         Set var_1AC = var_1C0(CInt(var_1A8.Value))
  loc_1BC0C61:         Call 0.Method_Proc_258_157_1BC13840 (var_280)
  loc_1BC0C69:          = var_1C0.Width
  loc_1BC0C7A:         Set var_90 = var_94(1)
  loc_1BC0C80:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BC0C88:          = var_94.Width
  loc_1BC0CA6:         If (var_27C = var_280) Then
  loc_1BC0CC3:           var_94 = var_88.Fields.Item("SNo")
  loc_1BC0D05:           Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BC0D0B:           Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BC0D13:            = var_1A8.Width
  loc_1BC0D2C:           Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0D32:           Call 0.Method_Proc_258_157_1BC13840 ((var_27C + CDbl(400)))
  loc_1BC0D3A:           var_288.Width = 
  loc_1BC0D59:         End If
  loc_1BC0D65:         Set var_EC = var_1A8(1)
  loc_1BC0D6B:         Call 0.Method_Proc_258_157_1BC13840 (var_280)
  loc_1BC0D73:          = var_1A8.Height
  loc_1BC0DAD:         Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0DB3:         Call 0.Method_Proc_258_157_1BC13840 (var_29C)
  loc_1BC0DBB:          = var_288.Top
  loc_1BC0DCC:         Set var_90 = var_94(1)
  loc_1BC0DD2:         Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BC0DDA:          = var_94.Top
  loc_1BC0E05:         If (CSng((var_27C + (var_280 * CDbl(8)))) > var_29C) Then
  loc_1BC0E14:           Set var_EC = var_1A8(1)
  loc_1BC0E1A:           Call 0.Method_Proc_258_157_1BC13840 (var_280)
  loc_1BC0E22:            = var_1A8.Height
  loc_1BC0E5A:           Set var_90 = var_94(1)
  loc_1BC0E60:           Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BC0E68:            = var_94.Top
  loc_1BC0E89:           Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0E8F:           Call 0.Method_Proc_258_157_1BC13840 (((var_27C + (var_280 * CDbl(8))) - CDbl(150)))
  loc_1BC0E97:           var_288.Top = 
  loc_1BC0EBE:           Set var_EC = var_1A8(1)
  loc_1BC0EC4:           Call 0.Method_Proc_258_157_1BC13840 (var_280)
  loc_1BC0ECC:            = var_1A8.Height
  loc_1BC0F04:           Set var_90 = var_94(1)
  loc_1BC0F0A:           Call 0.Method_Proc_258_157_1BC13840 (var_27C)
  loc_1BC0F12:            = var_94.Top
  loc_1BC0F33:           Set var_278 = var_288(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0F39:           Call 0.Method_Proc_258_157_1BC13840 (((var_27C + (var_280 * CDbl(8))) - CDbl(150)))
  loc_1BC0F41:           var_288.Top = 
  loc_1BC0F5C:         End If
  loc_1BC0F93:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0F99:         Call 0.Method_Proc_258_157_1BC13840 (CDbl(350))
  loc_1BC0FA1:         var_1A8.Height = 
  loc_1BC0FEA:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC0FF0:         Call 0.Method_Proc_258_157_1BC13840 (CDbl(&HE))
  loc_1BC0FF8:         var_1A8.FontSize = 
  loc_1BC1042:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC1048:         Call 0.Method_Proc_258_157_1BC13840 (&HFF00)
  loc_1BC1050:         var_1A8.BackColor = 
  loc_1BC109A:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC10A0:         Call 0.Method_Proc_258_157_1BC13840 (&HFF)
  loc_1BC10A8:         var_1A8.ForeColor = 
  loc_1BC10F2:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC10F8:         Call 0.Method_Proc_258_157_1BC13840 (&HFFFF)
  loc_1BC1100:         var_1A8.BackColor = 
  loc_1BC1113:       End If
  loc_1BC1117:       Set var_90 = Me.TopCtrl1
  loc_1BC111D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1BC1125:       var_AC = CStr()
  loc_1BC1136:       If (var_AC = "Browse") Then
  loc_1BC116D:         Set var_EC = var_1A8(CInt(var_88.Fields.Item("SNo").Value))
  loc_1BC1173:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BC117B:         var_1A8.Enabled = 
  loc_1BC118E:       End If
  loc_1BC11CA:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1BC11EC:         var_94 = var_88.Fields.Item("SNo")
  loc_1BC1201:         Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BC1207:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BC120F:         var_1A8.Enabled = 
  loc_1BC1222:       End If
  loc_1BC122D:       var_E8 = (global_440 = "No")
  loc_1BC123F:       Set var_90 = var_94(CInt(&HD))
  loc_1BC1245:       Call 0.Method_Proc_258_157_1BC13840 (var_AC)
  loc_1BC124D:       var_E8 = var_94.Tag
  loc_1BC1283:       If CBool( And (Trim(CVar(var_AC)) <> vbNullString)) Then
  loc_1BC12A5:         var_94 = var_88.Fields.Item("SNo")
  loc_1BC12BA:         Set var_EC = var_1A8(CInt(var_94.Value))
  loc_1BC12C0:         Call 0.Method_Proc_258_157_1BC13840 (0)
  loc_1BC12C8:         var_1A8.Enabled = 
  loc_1BC12DB:       End If
  loc_1BC12DB:     End If
  loc_1BC12DE:     var_88.MoveNext
  loc_1BC12E3:     GoTo loc_1BBF071
  loc_1BC12E6:   End If
  loc_1BC12E6: End If
  loc_1BC12F7: Set var_90 = var_94(CInt(6))
  loc_1BC12FD: Call 0.Method_Proc_258_157_1BC13840 ((var_8A + 1))
  loc_1BC1305: var_94.TabIndex = 
  loc_1BC1322: Set var_90 = var_94(CInt(7))
  loc_1BC1328: Call 0.Method_Proc_258_157_1BC13840 ((var_8A + 2))
  loc_1BC1330: var_94.TabIndex = 
  loc_1BC134D: Set var_90 = var_94(CInt(8))
  loc_1BC1353: Call 0.Method_Proc_258_157_1BC13840 ((var_8A + 3))
  loc_1BC135B: var_94.TabIndex = 
  loc_1BC136D: var_D8 = CVar((var_8A + 3)) 'Integer
  loc_1BC1375: Set var_90 = ("SNo")
  loc_1BC137B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000F()
  loc_1BC1383: Exit Sub
End Sub

Public Sub Proc_258_158_190485C(arg_C) '190485C
  'Data Table: 5B2100
  Dim var_E4 As String
  Dim var_E8 As Variant
  Dim var_FC As Variant
  Dim var_13C As Variant
  Dim var_14C As Variant
  Dim var_190 As String
  Dim unk_5B213D As Connection15
  Dim var_1B4 As Variant
  Dim var_1B8 As Variant
  Dim var_1CC As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_EC As String
  Dim var_2CC As Double
  Dim var_2D4 As Double
  Dim var_2DC As Double
  Dim var_264 As Variant
  Dim var_328 As Double
  Dim var_1B0 As Variant
  Dim var_10C As Variant
  Dim var_B0 As Double
  Dim var_BC As Double
  Dim var_38C As Double
  Dim var_1DC As Variant
  Dim var_398 As Double
  Dim var_88 As Recordset15
  Dim var_D8 As Fields15
  Dim var_36C As Label
  loc_1901D74: On Error Goto loc_1904853
  loc_1901D7D: global_368 = CDbl(0)
  loc_1901D8C: Set var_D8 = var_B2(var_DA)
  loc_1901D92: Call 0.Method_Proc_258_158_190485C8 (1)
  loc_1901D9D: For var_DE =  To var_DA: global_368 = var_DE 'Integer
  loc_1901DC6:   var_E4 = "Select IsNull(Max(Nature),'') from SundryType Where LOGSITE_CODE='" & MemVar_1F92078
  loc_1901DDD:   Set var_D8 = var_E8(var_B2)
  loc_1901DE3:   Call 0.Method_Proc_258_158_190485C0 (var_EC, CVar(var_E4 & "' AND SundryCode='"), var_1B0, -1, var_1B4)
  loc_1901DEB:   var_1B8 = var_E8.Tag
  loc_1901E2E:   unk_5B213D.Execute CStr(0 & Trim(CVar(var_EC)) & "' And V_Type='" & CVar(global_184) & "'"), var_1CC, var_1DC
  loc_1901E36:    = var_1B4.Fields
  loc_1901E3E:    = var_1B8.Item()
  loc_1901E46:    = var_1CC.Value
  loc_1901E53:   var_D0 = Proc_6_38_E68A98(var_1DC)
  loc_1901E87:   If (var_D0 = "Addition") Then
  loc_1901E97:     Set var_D8 = var_E8(var_B2)
  loc_1901E9D:     Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1901EA5:      = var_E8.Text
  loc_1901EC4:     Set var_1B4 = var_1B8(var_B2)
  loc_1901ECA:     Call 0.Method_Proc_258_158_190485C0 (var_EC)
  loc_1901ED2:     (CDbl(Val(var_E4)) > CDbl(0)) = var_1B8.Text
  loc_1901EF7:     If ( And (CDbl(Val(var_EC)) <= CDbl(0))) Then
  loc_1901F07:       Set var_D8 = var_E8(var_B2)
  loc_1901F0D:       Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1901F15:        = var_E8.Text
  loc_1901F22:       var_90 = Val(var_E4)
  loc_1901F2F:     End If
  loc_1901F32:   Else
  loc_1901F3A:     If (var_D0 = "Advance") Then
  loc_1901F4A:       Set var_D8 = var_E8(var_B2)
  loc_1901F50:       Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1901F58:       var_90 = var_E8.Text
  loc_1901F65:       var_98 = Val(var_E4)
  loc_1901F75:     Else
  loc_1901F7D:       If (var_D0 = "Redemption") Then
  loc_1901F8D:         Set var_D8 = var_E8(var_B2)
  loc_1901F93:         Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1901F9B:         var_98 = var_E8.Text
  loc_1901FA8:         var_A0 = Val(var_E4)
  loc_1901FB8:       Else
  loc_1901FC0:         If (var_D0 = "Deduction") Then
  loc_1901FD0:           Set var_D8 = var_E8(var_B2)
  loc_1901FD6:           Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1901FDE:           var_A0 = var_E8.Text
  loc_1901FEB:           var_A8 = Val(var_E4)
  loc_1901FFB:         Else
  loc_1902003:           If (var_D0 = "Discount") Then
  loc_190200B:             var_BE = CByte(var_B2) 'Byte
  loc_1902012:           Else
  loc_190201A:             If (var_D0 = "Service Charge") Then
  loc_1902022:               var_CA = CByte(var_B2) 'Byte
  loc_1902029:             Else
  loc_190204C:               If ((((var_D0 = "Sale Tax") Or (var_D0 = "CGST")) Or (var_D0 = "SGST")) Or (var_D0 = "IGST")) Then
  loc_1902054:                 var_C0 = CByte(var_B2) 'Byte
  loc_190205E:                 global_144 = var_B2
  loc_1902061:               End If
  loc_1902061:             End If
  loc_1902061:           End If
  loc_1902061:         End If
  loc_1902061:       End If
  loc_1902061:     End If
  loc_1902061:   End If
  loc_190206E:   Set var_D8 = var_E8(var_B2)
  loc_1902074:   Call 0.Method_Proc_258_158_190485C0 (vbNullString, global_144)
  loc_190207C:   var_E8.Text = var_A8
  loc_190208B: Next var_DE 'Integer
  loc_190209D: Set var_D8 = (1)
  loc_19020A3: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_19020AF: Set var_D8 = Me.TopCtrl1
  loc_19020B5: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_19020BD: var_E4 = CStr()
  loc_19020C9: Set var_E8 = Me.TopCtrl1
  loc_19020CF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005((var_E4 = "Add"))
  loc_19020F5: If ( Or (CStr() = "Edit")) Then
  loc_19020F8:   Call Proc_258_163_1317DCC()
  loc_19020FD: End If
  loc_1902109: Set var_D8 = var_B2(var_DA)
  loc_190210F: Call 0.Method_Proc_258_158_190485C8 (2)
  loc_190211A: For var_1E0 =  To var_DA:  = var_1E0 'Integer
  loc_190212D:   Set var_D8 = var_E8(var_B2)
  loc_1902133:   Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_190213B:    = var_E8.Tag
  loc_190216E:   If (Trim(CVar(var_E4)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_190217E:     Set var_D8 = var_E8(var_B2)
  loc_1902184:     Call 0.Method_Proc_258_158_190485C0 (vbNullString)
  loc_190218C:     var_E8.Text = 
  loc_19021A2:     If (var_C0 > var_BE) Then
  loc_19021AE:       Set var_D8 = 1(var_B4)
  loc_19021B4:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_19021CA:       For var_1E4 =  To CInt((CLng() - 1)):  = var_1E4 'Integer
  loc_19021DD:         Set var_D8 = var_E8(var_B2)
  loc_19021E3:         Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_19021EB:          = var_E8.Tag
  loc_190221E:         If (Trim(CVar(var_E4)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1902221:         End If
  loc_190222B:         If (var_CA < var_C0) Then
  loc_1902238:           If (var_BE < var_CA) Then
  loc_1902250:             Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(7)))
  loc_1902256:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1902269:             var_2CC = Val(CStr())
  loc_1902281:             Set var_E8 = CVar(CLng(var_B4))(CVar(CLng(9)))
  loc_1902287:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_190229A:             var_2D4 = Val(CStr())
  loc_19022B2:             Set var_1B4 = CVar(CLng(var_B4))(CVar(CLng(&HE)))
  loc_19022B8:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2D4)
  loc_19022CB:             var_2DC = Val(CStr())
  loc_1902321:             LateIdCallSt
  loc_1902363:             Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(&H13)))
  loc_1902369:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1(CVar(CStr(Format(CVar((((var_2CC * var_2D4) * var_2DC) / CDbl(&H64))), "0.00")))))
  loc_1902385:             If (CStr(1) = "Y") Then
  loc_190239D:               Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(7)))
  loc_19023A3:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HF)))
  loc_19023B6:               var_2CC = Val(CStr(CVar(CLng(var_B4))))
  loc_19023CE:               Set var_E8 = CVar(CLng(var_B4))(CVar(CLng(9)))
  loc_19023D4:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_19023E7:               var_2D4 = Val(CStr(var_2DC))
  loc_19023FB:               global_368 = (global_368 + (var_2CC * var_2D4))
  loc_1902413:             End If
  loc_1902416:           Else
  loc_190242B:             Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(7)))
  loc_1902431:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(global_368)
  loc_1902444:             var_2CC = Val(CStr(var_2D4))
  loc_190245C:             Set var_E8 = CVar(CLng(var_B4))(CVar(CLng(9)))
  loc_1902462:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_1902475:             var_2D4 = Val(CStr())
  loc_190248D:             Set var_1B4 = CVar(CLng(var_B4))(CVar(CLng(&H1D)))
  loc_1902493:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2D4)
  loc_19024A6:             var_2DC = Val(CStr())
  loc_19024BE:             Set var_1B8 = CVar(CLng(var_B4))(CVar(CLng(&HE)))
  loc_19024C4:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2DC)
  loc_19024D7:             var_328 = Val(CStr())
  loc_1902513:             var_14C = CVar(((((var_2CC * var_2D4) + var_2DC) * var_328) / CDbl(&H64))) 'Double
  loc_190252B:             Set var_1CC = 1(CVar(CStr(Format("0.00", "0.00"))))
  loc_1902531:             LateIdCallSt
  loc_1902579:             Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(&H13)))
  loc_190257F:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1CC)
  loc_190259B:             If (CStr(1) = "Y") Then
  loc_19025B3:               Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(7)))
  loc_19025B9:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HF)))
  loc_19025CC:               var_2CC = Val(CStr(CVar(CLng(var_B4))))
  loc_19025E4:               Set var_E8 = CVar(CLng(var_B4))(CVar(CLng(9)))
  loc_19025EA:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_19025FD:               var_2D4 = Val(CStr(var_328))
  loc_1902615:               Set var_1B4 = CVar(CLng(var_B4))(CVar(CLng(&H1D)))
  loc_190261B:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2D4)
  loc_190262E:               var_2DC = Val(CStr())
  loc_1902646:               global_368 = (global_368 + ((var_2CC * var_2D4) + var_2DC))
  loc_1902664:             End If
  loc_1902664:           End If
  loc_1902667:         Else
  loc_190267C:           Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(7)))
  loc_1902682:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(global_368)
  loc_1902695:           var_2CC = Val(CStr(var_2DC))
  loc_19026AD:           Set var_E8 = CVar(CLng(var_B4))(CVar(CLng(9)))
  loc_19026B3:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_19026C6:           var_2D4 = Val(CStr())
  loc_19026DE:           Set var_1B4 = CVar(CLng(var_B4))(CVar(CLng(&HE)))
  loc_19026E4:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2D4)
  loc_19026F7:           var_2DC = Val(CStr())
  loc_190274D:           LateIdCallSt
  loc_190278F:           Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(&H13)))
  loc_1902795:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1(CVar(CStr(Format(CVar((((var_2CC * var_2D4) * var_2DC) / CDbl(&H64))), "0.00")))))
  loc_19027B1:           If (CStr(1) = "Y") Then
  loc_19027C9:             Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(7)))
  loc_19027CF:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HF)))
  loc_19027E2:             var_2CC = Val(CStr(CVar(CLng(var_B4))))
  loc_19027FA:             Set var_E8 = CVar(CLng(var_B4))(CVar(CLng(9)))
  loc_1902800:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_1902813:             var_2D4 = Val(CStr(var_2DC))
  loc_1902827:             global_368 = (global_368 + (var_2CC * var_2D4))
  loc_190283F:           End If
  loc_190283F:         End If
  loc_1902854:         Set var_E8 = CVar(CLng(var_B4))(CVar(CLng(7)))
  loc_190285A:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(global_368)
  loc_190286D:         var_2CC = Val(CStr(var_2D4))
  loc_1902896:         Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(9)))
  loc_190289C:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HA)))
  loc_19028BD:         Set var_1B4 = var_2CC(CVar(CStr((Val(CStr(CVar(CLng(var_B4)))) * var_2CC))))
  loc_19028C3:         LateIdCallSt
  loc_19028F9:         Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(&HA)))
  loc_19028FF:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_1B4)
  loc_190290A:         var_E4 = CStr()
  loc_1902921:         Set var_E8 = var_1B4(var_B2)
  loc_1902927:         Call 0.Method_Proc_258_158_190485C0 (CStr(Val(var_E4)))
  loc_190292F:         var_1B4.Caption = 
  loc_1902954:         Set var_D8 = var_E8(var_B2)
  loc_190295A:         Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1902962:          = var_E8.Tag
  loc_1902995:         If (Trim(CVar(var_E4)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_19029A5:           Set var_D8 = var_E8(var_B2)
  loc_19029AB:           Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_19029B3:            = var_E8.Text
  loc_19029C0:           var_2CC = Val(var_E4)
  loc_19029D8:           Set var_1B4 = CVar(CLng(var_B4))(CVar(CLng(&HF)))
  loc_19029DE:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_1902A10:           var_10C = CVar((var_2CC + Val(CStr()))) 'Double
  loc_1902A2D:           Set var_1B8 = var_1CC(var_B2)
  loc_1902A33:           Call 0.Method_Proc_258_158_190485C0 (CStr(Format(Trim(CVar(var_E4)), "0.00")), 1)
  loc_1902A3B:           var_1CC.Text = 1
  loc_1902A6E:           Set var_D8 = var_E8(var_B2)
  loc_1902A74:           Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1902A7C:           var_2D4 = var_E8.Text
  loc_1902A89:           var_B0 = Val(var_E4)
  loc_1902A96:         End If
  loc_1902A99:       Next var_1E4 'Integer
  loc_1902AAB:       Set var_D8 = var_E8(var_B2)
  loc_1902AB1:       Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1902AB9:        = var_E8.Tag
  loc_1902B04:       If CBool((Trim(CVar(var_E4)) = CVar(MemVar_1F92078 & "DIS")) And (global_368 <> CDbl(0))) Then
  loc_1902B14:         Set var_D8 = var_E8(var_B2)
  loc_1902B1A:         Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1902B22:          = var_E8.Text
  loc_1902B2F:         var_2CC = Val(var_E4)
  loc_1902B72:         Set var_1B4 = var_1B8(var_B2)
  loc_1902B78:         Call 0.Method_Proc_258_158_190485C0 (CStr(Format(CVar(((var_2CC / global_368) * CDbl(&H64))), "0.00")), 1)
  loc_1902B80:         var_1B8.Text = 1
  loc_1902BA0:       End If
  loc_1902BA3:     Else
  loc_1902BAC:       Set var_D8 = 1(var_B4)
  loc_1902BB2:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_2CC)
  loc_1902BC8:       For var_32C =  To CInt((CLng() - 1)):    = var_32C 'Integer
  loc_1902BDB:         Set var_D8 = var_E8(var_B2)
  loc_1902BE1:         Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1902BE9:          = var_E8.Tag
  loc_1902C1C:         If (Trim(CVar(var_E4)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1902C23:           var_13C = CVar(CLng(var_B4)) 'Long
  loc_1902C3A:           Set var_D8 = CVar(CLng(&HE))("0.00")
  loc_1902C40:           LateIdCallSt
  loc_1902C4F:           var_13C = CVar(CLng(var_B4)) 'Long
  loc_1902C66:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_13C(CVar(CLng(&H13))))
  loc_1902C82:           If (CStr(var_13C) = "Y") Then
  loc_1902C85:           End If
  loc_1902C85:         End If
  loc_1902C9A:         Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(&HA)))
  loc_1902CA0:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1902CC2:         Set var_E8 = var_1B4(var_B2)
  loc_1902CC8:         Call 0.Method_Proc_258_158_190485C0 (CStr(Val(CStr())))
  loc_1902CD0:         var_1B4.Caption = 
  loc_1902CFD:         Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(&HA)))
  loc_1902D03:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1902D16:         var_2CC = Val(CStr())
  loc_1902D2E:         Set var_E8 = CVar(CLng(var_B4))(CVar(CLng(&HE)))
  loc_1902D34:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_1902D99:         LateIdCallSt
  loc_1902DD5:         Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(&H13)))
  loc_1902DDB:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1(CVar(CStr(Format(CVar(((var_2CC * Val(CStr())) / CDbl(&H64))), "0.00")))))
  loc_1902DF7:         If (CStr(1) = "Y") Then
  loc_1902E0F:           Set var_D8 = CVar(CLng(var_B4))(CVar(CLng(&HA)))
  loc_1902E15:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HF)))
  loc_1902E20:           var_E4 = CStr(CVar(CLng(var_B4)))
  loc_1902E38:           global_368 = (global_368 + Val(var_E4))
  loc_1902E44:         End If
  loc_1902E51:         Set var_D8 = var_E8(var_B2)
  loc_1902E57:         Call 0.Method_Proc_258_158_190485C0 (var_E4, global_368)
  loc_1902E5F:         var_2CC = var_E8.Tag
  loc_1902E92:         If (Trim(CVar(var_E4)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1902EA2:           Set var_D8 = var_E8(var_B2)
  loc_1902EA8:           Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1902EB0:           var_2D4 = var_E8.Text
  loc_1902EBD:           var_2CC = Val(var_E4)
  loc_1902ED5:           Set var_1B4 = CVar(CLng(var_B4))(CVar(CLng(&HF)))
  loc_1902EDB:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_1902F0D:           var_10C = CVar((var_2CC + Val(CStr()))) 'Double
  loc_1902F2A:           Set var_1B8 = var_1CC(var_B2)
  loc_1902F30:           Call 0.Method_Proc_258_158_190485C0 (CStr(Format(Trim(CVar(var_E4)), "0.00")), 1)
  loc_1902F38:           var_1CC.Text = 1
  loc_1902F6B:           Set var_D8 = var_E8(var_B2)
  loc_1902F71:           Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1902F79:           var_2D4 = var_E8.Text
  loc_1902F86:           var_B0 = Val(var_E4)
  loc_1902F93:         End If
  loc_1902F96:       Next var_32C 'Integer
  loc_1902FA8:       Set var_D8 = var_E8(var_B2)
  loc_1902FAE:       Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1902FB6:        = var_E8.Tag
  loc_1903001:       If CBool((Trim(CVar(var_E4)) = CVar(MemVar_1F92078 & "DIS")) And (global_368 <> CDbl(0))) Then
  loc_1903011:         Set var_D8 = var_E8(var_B2)
  loc_1903017:         Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_190301F:          = var_E8.Text
  loc_190306F:         Set var_1B4 = var_1B8(var_B2)
  loc_1903075:         Call 0.Method_Proc_258_158_190485C0 (CStr(Format(CVar(((Val(var_E4) / global_368) * CDbl(&H64))), "0.00")), 1)
  loc_190307D:         var_1B8.Text = 1
  loc_190309D:       End If
  loc_190309D:     End If
  loc_19030A0:   Else
  loc_19030AD:     Set var_D8 = var_E8(var_B2)
  loc_19030B3:     Call 0.Method_Proc_258_158_190485C0 (var_DA)
  loc_19030CD:     If (var_DA = &HFF) Then
  loc_19030D6:       Call Proc_258_159_1298F3C(var_B2)
  loc_19030DE:       var_BC = var_E8.Visible
  loc_19030EE:       Set var_D8 = var_E8(var_B2)
  loc_19030F4:       Call 0.Method_Proc_258_158_190485C0 (var_E4, var_BC)
  loc_19030FC:       var_2CC = var_E8.Text
  loc_1903149:       Set var_1B4 = var_1B8(var_B2)
  loc_190314F:       Call 0.Method_Proc_258_158_190485C0 (CStr(Format(CVar(((var_BC * Val(var_E4)) / CDbl(&H64))), "0.00")), 1)
  loc_1903157:       var_1B8.Text = 1
  loc_1903184:       Set var_D8 = var_E8(var_B2)
  loc_190318A:       Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1903192:       var_2CC = var_E8.Tag
  loc_19031DA:       If CBool((Trim(CVar(var_E4)) = CVar(MemVar_1F92078 & "ADD")) And (var_90 > CDbl(0))) Then
  loc_1903205:         var_E4 = CStr(Format(var_90, "0.00"))
  loc_1903213:         Set var_D8 = var_E8(var_B2)
  loc_1903219:         Call 0.Method_Proc_258_158_190485C0 (var_E4, 1)
  loc_1903221:         var_E8.Text = 1
  loc_1903237:       End If
  loc_1903244:       Set var_D8 = var_E8(var_B2)
  loc_190324A:       Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1903252:        = var_E8.Tag
  loc_190329A:       If CBool((Trim(CVar(var_E4)) = CVar(MemVar_1F92078 & "ADV")) And (var_98 > CDbl(0))) Then
  loc_19032C5:         var_E4 = CStr(Format(var_98, "0.00"))
  loc_19032D3:         Set var_D8 = var_E8(var_B2)
  loc_19032D9:         Call 0.Method_Proc_258_158_190485C0 (var_E4, 1)
  loc_19032E1:         var_E8.Text = 1
  loc_19032F7:       End If
  loc_1903304:       Set var_D8 = var_E8(var_B2)
  loc_190330A:       Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1903312:        = var_E8.Tag
  loc_190335A:       If CBool((Trim(CVar(var_E4)) = CVar(MemVar_1F92078 & "DED")) And (var_A8 > CDbl(0))) Then
  loc_1903393:         Set var_D8 = var_E8(var_B2)
  loc_1903399:         Call 0.Method_Proc_258_158_190485C0 (CStr(Format(var_A8, "0.00")), 1)
  loc_19033A1:         var_E8.Text = 1
  loc_19033B7:       End If
  loc_19033BC:       var_E4 = CStr(var_BC)
  loc_19033C9:       Set var_D8 = var_E8(var_B2)
  loc_19033CF:       Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_19033D7:       var_E8.Caption = 
  loc_19033E9:     Else
  loc_19033F6:       Set var_D8 = var_E8(var_B2)
  loc_19033FC:       Call 0.Method_Proc_258_158_190485C0 (var_DA)
  loc_1903404:        = var_E8.Visible
  loc_190340F:       var_13C = (var_DA = 0)
  loc_1903420:       Set var_1B4 = var_1B8(var_B2)
  loc_1903426:       Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_190342E:       var_13C = var_1B8.Tag
  loc_190346F:       If CBool( And (Trim(CVar(var_E4)) = CVar(MemVar_1F92078 & "ADD"))) Then
  loc_190349A:         var_E4 = CStr(Format(var_90, "0.00"))
  loc_19034A8:         Set var_D8 = var_E8(var_B2)
  loc_19034AE:         Call 0.Method_Proc_258_158_190485C0 (var_E4, 1)
  loc_19034B6:         var_E8.Text = 1
  loc_19034CF:       Else
  loc_19034DC:         Set var_D8 = var_E8(var_B2)
  loc_19034E2:         Call 0.Method_Proc_258_158_190485C0 (var_DA)
  loc_19034EA:          = var_E8.Visible
  loc_19034F5:         var_13C = (var_DA = 0)
  loc_1903506:         Set var_1B4 = var_1B8(var_B2)
  loc_190350C:         Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1903514:         var_13C = var_1B8.Tag
  loc_1903555:         If CBool( And (Trim(CVar(var_E4)) = CVar(MemVar_1F92078 & "ADV"))) Then
  loc_1903580:           var_E4 = CStr(Format(var_98, "0.00"))
  loc_190358E:           Set var_D8 = var_E8(var_B2)
  loc_1903594:           Call 0.Method_Proc_258_158_190485C0 (var_E4, 1)
  loc_190359C:           var_E8.Text = 1
  loc_19035B5:         Else
  loc_19035C2:           Set var_D8 = var_E8(var_B2)
  loc_19035C8:           Call 0.Method_Proc_258_158_190485C0 (var_DA)
  loc_19035D0:            = var_E8.Visible
  loc_19035DB:           var_13C = (var_DA = 0)
  loc_19035EC:           Set var_1B4 = var_1B8(var_B2)
  loc_19035F2:           Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_19035FA:           var_13C = var_1B8.Tag
  loc_190363B:           If CBool( And (Trim(CVar(var_E4)) = CVar(MemVar_1F92078 & "DED"))) Then
  loc_1903674:             Set var_D8 = var_E8(var_B2)
  loc_190367A:             Call 0.Method_Proc_258_158_190485C0 (CStr(Format(var_A8, "0.00")), 1)
  loc_1903682:             var_E8.Text = 1
  loc_1903698:           End If
  loc_1903698:         End If
  loc_1903698:       End If
  loc_1903698:     End If
  loc_1903698:   End If
  loc_190369B: Next var_1E0 'Integer
  loc_19036A9: Set var_D8 = 1(var_B2)
  loc_19036AF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_19036C5: For var_330 =  To CInt((CLng() - 1)):  = var_330 'Integer
  loc_19036E0:   Set var_D8 = CVar(CLng(var_B2))(CVar(CLng(7)))
  loc_19036E6:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_19036F1:   var_E4 = CStr()
  loc_19036F9:   var_2CC = Val(var_E4)
  loc_1903711:   Set var_E8 = CVar(CLng(var_B2))(CVar(CLng(9)))
  loc_1903717:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_1903739:   var_264 = CVar(CLng(&HA)) 'Long
  loc_1903778:   LateIdCallSt
  loc_19037AB:   Set var_D8 = var_E8(1)
  loc_19037B1:   Call 0.Method_Proc_258_158_190485C0 (var_E4, 1(CVar(CStr(Format(CVar((var_2CC * Val(CStr()))), "0.00")))), 1)
  loc_19037B9:   var_264 = var_E8.Text
  loc_19037C6:   var_2CC = Val(var_E4)
  loc_19037DE:   Set var_1B4 = CVar(CLng(var_B2))(CVar(CLng(&HA)))
  loc_19037E4:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2CC)
  loc_19037F7:   var_2D4 = Val(CStr(CVar(CLng(var_B2))))
  loc_1903816:   var_10C = CVar((var_2CC + var_2D4)) 'Double
  loc_1903832:   Set var_1B8 = var_1CC(1)
  loc_1903838:   Call 0.Method_Proc_258_158_190485C0 (CStr(Format(Format(var_A8, "0.00"), "0.00")), 1, 1)
  loc_1903840:   var_1CC.Text = var_2D4
  loc_1903869: Next var_330 'Integer
  loc_1903872: Set var_D8 = Me.TopCtrl1
  loc_1903878: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1903880: var_E4 = CStr()
  loc_190388C: Set var_E8 = Me.TopCtrl1
  loc_1903892: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005((var_E4 = "Add"))
  loc_19038B8: If ( Or (CStr() = "Edit")) Then
  loc_19038C7:   Set var_D8 = var_B2(var_DA)
  loc_19038CD:   Call 0.Method_Proc_258_158_190485C8 (2)
  loc_19038D8:   For var_334 =  To var_DA:  = var_334 'Integer
  loc_19038EB:     Set var_D8 = var_E8(var_B2)
  loc_19038F1:     Call 0.Method_Proc_258_158_190485C0 (var_DA)
  loc_19038F9:      = var_E8.Visible
  loc_1903904:     var_13C = (var_DA = &HFF)
  loc_1903915:     Set var_1B4 = var_1B8(var_B2)
  loc_190391B:     Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1903923:     var_13C = var_1B8.Tag
  loc_1903964:     If CBool( And (Trim(CVar(var_E4)) = CVar(MemVar_1F92078 & "SCH"))) Then
  loc_190396D:       Call Proc_258_159_1298F3C(var_B2)
  loc_1903975:       var_BC = var_2CC
  loc_1903985:       Set var_D8 = var_E8(var_B2)
  loc_190398B:       Call 0.Method_Proc_258_158_190485C0 (var_E4, var_BC)
  loc_1903993:       var_2CC = var_E8.Text
  loc_19039A0:       var_2CC = Val(var_E4)
  loc_19039C3:       var_FC = CVar(((var_BC * var_2CC) / CDbl(&H64))) 'Double
  loc_19039E0:       Set var_1B4 = var_1B8(var_B2)
  loc_19039E6:       Call 0.Method_Proc_258_158_190485C0 (CStr(Format(var_FC, "0.00")), 1)
  loc_19039EE:       var_1B8.Text = 1
  loc_1903A20:       Set var_D8 = var_E8(var_B2)
  loc_1903A26:       Call 0.Method_Proc_258_158_190485C0 (CStr(var_BC))
  loc_1903A2E:       var_E8.Caption = var_2CC
  loc_1903A3D:     End If
  loc_1903A40:   Next var_334 'Integer
  loc_1903A45: End If
  loc_1903A52: Set var_D8 = (1)
  loc_1903A58: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1903A69: Set var_D8 = 1(var_B2)
  loc_1903A6F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1903A85: For var_338 =  To CInt((CLng() - 1)):  = var_338 'Integer
  loc_1903A95:   If (var_C0 > var_BE) Then
  loc_1903AA2:     If (var_CA < var_C0) Then
  loc_1903ABA:       Set var_D8 = CVar(CLng(var_B2))(CVar(CLng(&H18)))
  loc_1903AC0:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1903AE1:       Set var_E8 = CVar(CLng(var_B2))(CVar(CLng(9)))
  loc_1903AE7:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1903AFA:       var_2DC = Val(CStr())
  loc_1903B12:       Set var_1B4 = CVar(CLng(var_B2))(CVar(CLng(7)))
  loc_1903B18:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2DC)
  loc_1903B2B:       var_328 = Val(CStr())
  loc_1903B43:       Set var_1B8 = CVar(CLng(var_B2))(CVar(CLng(&HF)))
  loc_1903B49:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_328)
  loc_1903B5C:       var_38C = Val(CStr())
  loc_1903B7F:       var_14C = CVar(((var_2DC * var_328) - var_38C)) 'Double
  loc_1903BA0:       Set var_1CC = CVar(CLng(var_B2))(CVar(CLng(1)))
  loc_1903BA6:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1)
  loc_1903BB9:       var_390 = Proc_6_38_E68A98(CVar(CStr(1)))
  loc_1903BD1:       Set var_36C = CVar(CLng(var_B2))(CVar(CLng(&H1D)))
  loc_1903BD7:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_38C)
  loc_1903BEA:       var_398 = Val(CStr())
  loc_1903C0E:       Call Proc_258_161_181B33C(CStr(var_FC), var_B2, CSng(Format( And (Trim(CVar(CStr())) = CVar(MemVar_1F92078 & "SCH")), "0.00")))
  loc_1903C4D:     Else
  loc_1903C62:       Set var_D8 = CVar(CLng(var_B2))(CVar(CLng(&H18)))
  loc_1903C68:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_390)
  loc_1903C89:       Set var_E8 = CVar(CLng(var_B2))(CVar(CLng(9)))
  loc_1903C8F:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_398)
  loc_1903CA2:       var_2DC = Val(CStr(var_398))
  loc_1903CBA:       Set var_1B4 = CVar(CLng(var_B2))(CVar(CLng(7)))
  loc_1903CC0:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2DC)
  loc_1903CD3:       var_328 = Val(CStr())
  loc_1903CEB:       Set var_1B8 = CVar(CLng(var_B2))(CVar(CLng(&HF)))
  loc_1903CF1:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_328)
  loc_1903D04:       var_38C = Val(CStr())
  loc_1903D27:       var_14C = CVar(((var_2DC * var_328) - var_38C)) 'Double
  loc_1903D48:       Set var_1CC = CVar(CLng(var_B2))(CVar(CLng(1)))
  loc_1903D4E:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1)
  loc_1903D61:       var_384 = Proc_6_38_E68A98(CVar(CStr(1)))
  loc_1903D8B:       Call Proc_258_161_181B33C(CStr(var_FC), var_B2, CSng(Format( And (Trim(CVar(CStr(var_398))) = CVar(MemVar_1F92078 & "SCH")), "0.00")))
  loc_1903DC1:     End If
  loc_1903DC4:   Else
  loc_1903DCE:     If (var_CA < var_C0) Then
  loc_1903DE6:       Set var_D8 = CVar(CLng(var_B2))(CVar(CLng(&H18)))
  loc_1903DEC:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_384)
  loc_1903E0D:       Set var_E8 = CVar(CLng(var_B2))(CVar(CLng(9)))
  loc_1903E13:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(0)
  loc_1903E26:       var_2DC = Val(CStr(var_38C))
  loc_1903E3E:       Set var_1B4 = CVar(CLng(var_B2))(CVar(CLng(7)))
  loc_1903E44:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2DC)
  loc_1903E57:       var_328 = Val(CStr())
  loc_1903E97:       Set var_1B8 = CVar(CLng(var_B2))(CVar(CLng(1)))
  loc_1903E9D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1)
  loc_1903EB0:       var_384 = Proc_6_38_E68A98(CVar(CStr(1)))
  loc_1903EC8:       Set var_1CC = CVar(CLng(var_B2))(CVar(CLng(&H1D)))
  loc_1903ECE:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_328)
  loc_1903EE1:       var_38C = Val(CStr())
  loc_1903F05:       Call Proc_258_161_181B33C(CStr(var_FC), var_B2, CSng(Format(CVar((var_2DC * var_328)), "0.00")))
  loc_1903F3E:     Else
  loc_1903F53:       Set var_D8 = CVar(CLng(var_B2))(CVar(CLng(&H18)))
  loc_1903F59:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_384)
  loc_1903F7A:       Set var_E8 = CVar(CLng(var_B2))(CVar(CLng(9)))
  loc_1903F80:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_38C)
  loc_1903F8B:       var_E4 = CStr(var_38C)
  loc_1903F93:       var_2DC = Val(var_E4)
  loc_1903FAB:       Set var_1B4 = CVar(CLng(var_B2))(CVar(CLng(7)))
  loc_1903FB1:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_2DC)
  loc_1904004:       Set var_1B8 = CVar(CLng(var_B2))(CVar(CLng(1)))
  loc_190400A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1)
  loc_190401D:       var_380 = Proc_6_38_E68A98(CVar(CStr(1)))
  loc_1904047:       Call Proc_258_161_181B33C(CStr(var_FC), var_B2, CSng(Format(CVar((var_2DC * Val(CStr()))), "0.00")))
  loc_1904077:     End If
  loc_1904077:   End If
  loc_190407A: Next var_338 'Integer
  loc_1904083: Set var_D8 = ()
  loc_1904089: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_190409E: If (CLng() > 1) Then
  loc_19040AE:   Set var_D8 = (1)
  loc_19040B4:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_19040BC: End If
  loc_19040C2: global_136 = CDbl(0)
  loc_19040D1: Set var_D8 = var_B2(var_DA)
  loc_19040D7: Call 0.Method_Proc_258_158_190485C8 (1)
  loc_19040E2: For var_39C =  To var_DA: global_136 = var_39C 'Integer
  loc_19040F1:   Set var_D8 = 0(var_B4)
  loc_19040F7:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_190410D:   For var_3A0 =  To CInt((CLng() - 1)):  = var_3A0 'Integer
  loc_1904120:     Set var_D8 = var_E8(var_B2)
  loc_1904126:     Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_190412E:      = var_E8.Tag
  loc_1904159:     Set var_1B4 = CVar(CLng(var_B4))(CVar(CLng(7)))
  loc_190415F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(Trim(CVar(var_E4)))
  loc_1904190:     If ( = Trim(CVar(CStr()))) Then
  loc_19041A8:       Set var_1B4 = CVar(CLng(var_B4))(CVar(CLng(6)))
  loc_19041AE:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_19041C1:       var_2CC = Val(CStr())
  loc_19041D1:       Set var_D8 = var_E8(var_B2)
  loc_19041D7:       Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_19041F2:       var_190 = CStr((Val(var_E4) + var_E8.Text))
  loc_19041FF:       Set var_1B8 = var_1CC(var_B2)
  loc_1904205:       Call 0.Method_Proc_258_158_190485C0 (CStr())
  loc_190420D:       var_1CC.Text = 
  loc_190422B:     End If
  loc_190422E:   Next var_3A0 'Integer
  loc_1904240:   Set var_D8 = var_E8(var_B2)
  loc_1904246:   Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_190424E:    = var_E8.Text
  loc_190425B:   var_2CC = Val(var_E4)
  loc_1904293:   Set var_1B4 = var_1B8(var_B2)
  loc_1904299:   Call 0.Method_Proc_258_158_190485C0 (CStr(Format(CVar(var_2CC), "0.00")), 1)
  loc_19042A1:   var_1B8.Text = 1
  loc_19042C4: Next var_39C 'Integer
  loc_19042D5: Set var_D8 = var_B2(var_DA)
  loc_19042DB: Call 0.Method_Proc_258_158_190485C8 (2)
  loc_19042E6: For var_3A4 =  To var_DA:  = var_3A4 'Integer
  loc_19042F9:   Set var_D8 = var_E8(var_B2)
  loc_19042FF:   Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1904307:    = var_E8.Tag
  loc_190430F:   var_FC = CVar(var_E4) 'String
  loc_190433A:   If (Trim(var_FC) = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_1904343:     Call Proc_258_159_1298F3C(var_B2)
  loc_190434B:     var_BC = var_2CC
  loc_1904366:     Call 0.Method_Proc_258_158_190485C0 (CStr(var_BC), var_BC)
  loc_190436E:     var_E8.Caption = var_2CC
  loc_19043A1:     unk_5B213D.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill' And LogSite_Code='" & MemVar_1F92078 & "'", var_FC, -1
  loc_19043AC:     Set var_88 = var_E8(var_B2)
  loc_19043D0:     If (var_88.RecordCount > 0) Then
  loc_19043EA:       var_E8 = var_88.Fields.Item("RoundOffType")
  loc_1904416:       Proc_6_85_1261068(var_BC, CByte(2))
  loc_190441B:       var_2CC = CStr(Left(CVar(var_E8), 1))
  loc_1904453:       Set var_1B4 = var_1B8(var_B2)
  loc_1904459:       Call 0.Method_Proc_258_158_190485C0 (CStr(Format(CVar(var_2CC), "0.00")), 1, 1)
  loc_1904461:       var_1B8.Text = var_2CC
  loc_1904486:     Else
  loc_1904489:       var_E4 = "S"
  loc_190449A:       Proc_6_85_1261068(var_BC, CByte(2))
  loc_190449F:       var_2CC = var_E4
  loc_19044C9:       var_EC = CStr(Format(CVar(var_2CC), "0.00"))
  loc_19044D7:       Set var_D8 = var_E8(var_B2)
  loc_19044DD:       Call 0.Method_Proc_258_158_190485C0 (var_EC, 1, 1)
  loc_19044E5:       var_E8.Text = var_2CC
  loc_1904501:     End If
  loc_1904504:   Else
  loc_190450B:     If (var_B2 <> arg_C) Then
  loc_190451B:       Set var_D8 = var_E8(var_B2)
  loc_1904521:       Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1904529:       var_D8 = var_E8.Tag
  loc_190455B:       Set var_1B4 = var_1B8(var_B2)
  loc_1904561:       Call 0.Method_Proc_258_158_190485C0 (var_EC)
  loc_1904569:       (Trim(CVar(var_E4)) = CVar(MemVar_1F92078 & "TOT")) = var_1B8.Tag
  loc_190458E:       var_1DC =  Or (Trim(CVar(var_EC)) = CVar(MemVar_1F92078 & "NET"))
  loc_190459F:       Set var_1CC = var_36C(var_B2)
  loc_19045A5:       Call 0.Method_Proc_258_158_190485C0 (CStr())
  loc_19045AD:       var_1DC = var_36C.Tag
  loc_19045FC:       If CBool( Or (Trim(CVar(CStr())) = CVar(MemVar_1F92078 & "DIF"))) Then
  loc_1904605:         Call Proc_258_159_1298F3C(var_B2)
  loc_1904631:         var_E4 = CStr(Format(CVar(var_2CC), "0.00"))
  loc_190463F:         Set var_D8 = var_E8(var_B2)
  loc_1904645:         Call 0.Method_Proc_258_158_190485C0 (var_E4, 1)
  loc_1904672:         Set var_D8 = var_E8(var_B2)
  loc_1904678:         Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_1904680:         var_2CC = var_E8.Tag
  loc_19046B3:         If (Trim(CVar(var_E4)) = CVar(MemVar_1F92078 & "DIF")) Then
  loc_19046C3:           Set var_D8 = var_E8(var_B2)
  loc_19046C9:           Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_19046D1:            = 1
  loc_19046F0:           If (CDbl(Val(var_E4)) > global_248) Then
  loc_1904718:             var_E4 = CStr(Format(0, "0.00"))
  loc_1904726:             Set var_D8 = var_E8(var_B2)
  loc_190472C:             Call 0.Method_Proc_258_158_190485C0 (var_E4, 1)
  loc_1904734:             var_E8.Text = 1
  loc_190474F:           Else
  loc_190475C:             Set var_D8 = var_E8(var_B2)
  loc_1904762:             Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_190476A:              = var_E8.Text
  loc_1904799:             var_FC = CVar((global_248 - Val(var_E4))) 'Double
  loc_19047B6:             Set var_1B4 = var_1B8(var_B2)
  loc_19047BC:             Call 0.Method_Proc_258_158_190485C0 (CStr(Format(0, "0.00")), 1)
  loc_19047C4:             var_1B8.Text = 1
  loc_19047E4:           End If
  loc_19047E4:         End If
  loc_19047E4:       End If
  loc_19047E4:     End If
  loc_19047E4:   End If
  loc_19047E7: Next var_3A4 'Integer
  loc_1904805: Set var_D8 = var_98(var_DA)
  loc_190480B: Call 0.Method_Proc_258_158_190485C8 (var_B0)
  loc_190481D: Set var_E8 = var_1B4(var_DA)
  loc_1904823: Call 0.Method_Proc_258_158_190485C0 (var_E4)
  loc_190482B:  = var_1B4.Text
  loc_190483B: global_276 = Val(var_E4)
  loc_190484F: Set var_88 = Nothing
  loc_1904852: Exit Sub
  loc_1904853: ' Referenced from: 1901D74
  loc_1904853: Proc_6_60_E62BC4(global_276)
  loc_1904858: Exit Sub
End Sub

Public Sub Proc_258_159_1298F3C(arg_C) '1298F3C
  'Data Table: 5B2100
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_D4 As String
  Dim var_E8 As Variant
  Dim var_B0 As String
  Dim var_120 As Double
  Dim var_A0 As Double
  Dim var_228 As Double
  Dim var_168 As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_18C As Variant
  Dim var_23C As Label
  Dim var_8C As Double
  Dim var_92 As Integer
  Dim var_D0 As Variant
  Dim var_1AC As Variant
  loc_1298981: Set var_A8 = var_AC(arg_C)
  loc_1298987: Call 0.Method_Proc_258_159_1298F3C0 (var_B0)
  loc_129898F:  = var_AC.Tag
  loc_12989A6: var_90 = CStr(Trim(CVar(var_B0)))
  loc_12989C4: Set var_A8 = var_AC(arg_C)
  loc_12989CA: Call 0.Method_Proc_258_159_1298F3C0 (var_B0)
  loc_12989D2:  = var_AC.Tag
  loc_12989F4: If (var_B0 = MemVar_1F92078 & "SCH") Then
  loc_1298A00:   Set var_A8 = 1(var_A2)
  loc_1298A06:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1298A1C:   For var_D8 =  To CInt((CLng() - 1)):  = var_D8 'Integer
  loc_1298A37:     Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(&H1B)))
  loc_1298A3D:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1298A59:     If (CStr() = "Y") Then
  loc_1298A71:       Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(&HA)))
  loc_1298A77:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1298A8A:       var_120 = Val(CStr())
  loc_1298A94:       var_A0 = (var_A0 + var_120)
  loc_1298AB5:       Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(&HA)))
  loc_1298ABB:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_A0)
  loc_1298ACE:       var_120 = Val(CStr(var_120))
  loc_1298AE6:       Set var_AC = CVar(CLng(var_A2))(CVar(CLng(&HF)))
  loc_1298AEC:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_120)
  loc_1298AFF:       var_228 = Val(CStr())
  loc_1298B0F:       Set var_164 = var_168(arg_C)
  loc_1298B15:       Call 0.Method_Proc_258_159_1298F3C0 (var_16C)
  loc_1298B31:       var_1CC = CVar(CLng(var_A2)) 'Long
  loc_1298B39:       var_1EC = CVar(CLng(&H1D)) 'Long
  loc_1298B62:       var_18C = CVar((((var_120 - var_168.Text) * Val(var_16C)) / CDbl(&H64))) 'Double
  loc_1298B7A:       Set var_220 = 1(CVar(CStr(Format(var_18C, "0.00"))))
  loc_1298B80:       LateIdCallSt
  loc_1298BAD:     End If
  loc_1298BB0:   Next var_D8 'Integer
  loc_1298BB8: Else
  loc_1298BC1:   Set var_A8 = 1(var_A2)
  loc_1298BC7:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1298BDD:   For var_234 =  To CInt((CLng() - 1)):    = var_234 'Integer
  loc_1298BF8:     Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(&HA)))
  loc_1298BFE:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1298C09:     var_B0 = CStr()
  loc_1298C1B:     var_A0 = (var_A0 + Val(var_B0))
  loc_1298C2A:   Next var_234 'Integer
  loc_1298C2F: End If
  loc_1298C39: If (Len(var_90) > 0) Then
  loc_1298C6B:   Set var_A8 = var_AC(arg_C)
  loc_1298C71:   Call 0.Method_Proc_258_159_1298F3C0 (var_B0)
  loc_1298C79:   (Left(var_90, 1) = "1") = var_AC.Tag
  loc_1298C88:   var_D4 = MemVar_1F92078 & "SCH"
  loc_1298C9A:   Set var_164 = var_168(arg_C)
  loc_1298CA0:   Call 0.Method_Proc_258_159_1298F3C0 (var_16C)
  loc_1298CA8:   (var_B0 = var_D4) = var_168.Tag
  loc_1298CCA:   Set var_220 = var_23C(arg_C)
  loc_1298CD0:   Call 0.Method_Proc_258_159_1298F3C0 (var_240)
  loc_1298CD8:   ( Or (var_16C = MemVar_1F92078 & "ADD")) = var_23C.Tag
  loc_1298D1C:   If CBool( And ( Or (var_240 = MemVar_1F92070 & "DED"))) Then
  loc_1298D22:     var_8C = var_A0
  loc_1298D28:   Else
  loc_1298D49:     var_120 = Val(CStr(Left(var_90, 1)))
  loc_1298D5A:     Set var_A8 = var_AC(CInt(var_120))
  loc_1298D60:     Call 0.Method_Proc_258_159_1298F3C0 (var_D4, var_120)
  loc_1298D68:     var_8C = var_AC.Text
  loc_1298D75:     var_8C = Val(var_D4)
  loc_1298D89:   End If
  loc_1298D8F:   Call Proc_258_131_E8523C(var_90)
  loc_1298DB4:   var_90 = CStr(Mid(var_90, CLng(var_246), CVar(Len(var_90))))
  loc_1298DBE:   ' Referenced from: 1298F33
  loc_1298DC8:   If (Len(var_90) > 0) Then
  loc_1298DF0:     Call Proc_258_131_E8523C(var_90)
  loc_1298E0F:     var_D0 = Mid(var_90, CLng((var_246 + 1)), CVar(Len(var_90)))
  loc_1298E18:     var_90 = CStr(Mid(var_90, CLng(var_246), CVar(Len(var_90))))
  loc_1298E28:     Call Proc_258_131_E8523C(var_90)
  loc_1298E3F:     var_C0 = Left(var_90, CLng((var_246 - 1)))
  loc_1298E47:     var_B0 = CStr(CVar(Len(var_90)))
  loc_1298E51:     var_92 = CInt(Val(var_B0))
  loc_1298E60:     Call Proc_258_131_E8523C(var_90)
  loc_1298E85:     var_90 = CStr(Mid(var_90, CLng(var_246), CVar(Len(var_90))))
  loc_1298E9C:     Set var_A8 = var_AC(var_92)
  loc_1298EA2:     Call 0.Method_Proc_258_159_1298F3C0 (var_B0, var_246, var_92, var_246)
  loc_1298EAA:     var_246 = var_AC.Text
  loc_1298EB7:     var_120 = Val(var_B0)
  loc_1298ECE:     Set var_164 = var_168(var_92)
  loc_1298ED4:     Call 0.Method_Proc_258_159_1298F3C0 (var_D4, CVar(var_8C), var_120)
  loc_1298EDC:     var_246 = var_168.Text
  loc_1298EEA:     var_D0 = CVar(-Val(var_D4)) 'Double
  loc_1298EFD:     var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_1298F0C:     var_1AC = (var_8C + IIf(var_90, CVar(var_120), Mid(var_90, CLng(var_246), CVar(Len(var_90)))))
  loc_1298F11:     var_8C = CSng("0.00")
  loc_1298F33:     GoTo loc_1298DBE
  loc_1298F36:   End If
  loc_1298F36: End If
  loc_1298F36: Proc_258_159_1298F3C = var_8C
End Sub

Public Sub Proc_258_160_126BA10(arg_C, arg_10) '126BA10
  'Data Table: 5B2100
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_D4 As String
  Dim var_E8 As Variant
  Dim var_D0 As Variant
  Dim var_B0 As String
  Dim var_160 As Double
  Dim var_A0 As Double
  Dim var_16C As Variant
  Dim var_17C As Label
  Dim var_8C As Double
  Dim var_92 As Integer
  Dim var_148 As Variant
  loc_126B4AD: Set var_A8 = var_AC(arg_C)
  loc_126B4B3: Call 0.Method_Proc_258_160_126BA100 (var_B0)
  loc_126B4BB:  = var_AC.Tag
  loc_126B4D2: var_90 = CStr(Trim(CVar(var_B0)))
  loc_126B4F0: Set var_A8 = var_AC(arg_C)
  loc_126B4F6: Call 0.Method_Proc_258_160_126BA100 (var_B0)
  loc_126B4FE:  = var_AC.Tag
  loc_126B520: If (var_B0 = MemVar_1F92078 & "SCH") Then
  loc_126B52C:   Set var_A8 = 1(var_A2)
  loc_126B532:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_126B548:   For var_D8 =  To CInt((CLng() - 1)):  = var_D8 'Integer
  loc_126B563:     Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(1)))
  loc_126B569:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_126B5A5:     If (Trim(CVar(CStr())) = Trim(arg_10)) Then
  loc_126B5BD:       Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(&H1B)))
  loc_126B5C3:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_126B5DF:       If (CStr() = "Y") Then
  loc_126B5F7:         Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(&HA)))
  loc_126B5FD:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_126B61A:         var_A0 = (var_A0 + Val(CStr()))
  loc_126B626:       End If
  loc_126B626:     End If
  loc_126B629:   Next var_D8 'Integer
  loc_126B631: Else
  loc_126B63A:   Set var_A8 = 1(var_A2)
  loc_126B640:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_126B656:   For var_164 =  To CInt((CLng() - 1)):    = var_164 'Integer
  loc_126B671:     Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(1)))
  loc_126B677:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_126B6B3:     If (Trim(CVar(CStr())) = Trim(arg_10)) Then
  loc_126B6CB:       Set var_A8 = CVar(CLng(var_A2))(CVar(CLng(&HA)))
  loc_126B6D1:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_126B6DC:       var_B0 = CStr()
  loc_126B6EE:       var_A0 = (var_A0 + Val(var_B0))
  loc_126B6FA:     End If
  loc_126B6FD:   Next var_164 'Integer
  loc_126B702: End If
  loc_126B70C: If (Len(var_90) > 0) Then
  loc_126B73E:   Set var_A8 = var_AC(arg_C)
  loc_126B744:   Call 0.Method_Proc_258_160_126BA100 (var_B0)
  loc_126B74C:   (Left(var_90, 1) = "1") = var_AC.Tag
  loc_126B75B:   var_D4 = MemVar_1F92078 & "SCH"
  loc_126B76D:   Set var_168 = var_16C(arg_C)
  loc_126B773:   Call 0.Method_Proc_258_160_126BA100 (var_170)
  loc_126B77B:   (var_B0 = var_D4) = var_16C.Tag
  loc_126B79D:   Set var_178 = var_17C(arg_C)
  loc_126B7A3:   Call 0.Method_Proc_258_160_126BA100 (var_180)
  loc_126B7AB:   ( Or (var_170 = MemVar_1F92078 & "ADD")) = var_17C.Tag
  loc_126B7EF:   If CBool( And ( Or (var_180 = MemVar_1F92070 & "DED"))) Then
  loc_126B7F5:     var_8C = var_A0
  loc_126B7FB:   Else
  loc_126B81C:     var_160 = Val(CStr(Left(var_90, 1)))
  loc_126B82D:     Set var_A8 = var_AC(CInt(var_160))
  loc_126B833:     Call 0.Method_Proc_258_160_126BA100 (var_D4, var_160)
  loc_126B83B:     var_8C = var_AC.Text
  loc_126B848:     var_8C = Val(var_D4)
  loc_126B85C:   End If
  loc_126B862:   Call Proc_258_131_E8523C(var_90)
  loc_126B887:   var_90 = CStr(Mid(var_90, CLng(var_186), CVar(Len(var_90))))
  loc_126B891:   ' Referenced from: 126BA06
  loc_126B89B:   If (Len(var_90) > 0) Then
  loc_126B8C3:     Call Proc_258_131_E8523C(var_90)
  loc_126B8E2:     var_D0 = Mid(var_90, CLng((var_186 + 1)), CVar(Len(var_90)))
  loc_126B8EB:     var_90 = CStr(Mid(var_90, CLng(var_186), CVar(Len(var_90))))
  loc_126B8FB:     Call Proc_258_131_E8523C(var_90)
  loc_126B912:     var_C0 = Left(var_90, CLng((var_186 - 1)))
  loc_126B91A:     var_B0 = CStr(CVar(Len(var_90)))
  loc_126B924:     var_92 = CInt(Val(var_B0))
  loc_126B933:     Call Proc_258_131_E8523C(var_90)
  loc_126B958:     var_90 = CStr(Mid(var_90, CLng(var_186), CVar(Len(var_90))))
  loc_126B96F:     Set var_A8 = var_AC(var_92)
  loc_126B975:     Call 0.Method_Proc_258_160_126BA100 (var_B0, var_186, var_92, var_186)
  loc_126B97D:     var_186 = var_AC.Text
  loc_126B98A:     var_160 = Val(var_B0)
  loc_126B9A1:     Set var_168 = var_16C(var_92)
  loc_126B9A7:     Call 0.Method_Proc_258_160_126BA100 (var_D4, CVar(var_8C), var_160)
  loc_126B9AF:     var_186 = var_16C.Text
  loc_126B9BD:     var_D0 = CVar(-Val(var_D4)) 'Double
  loc_126B9D0:     var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_126B9DF:     var_148 = (var_8C + IIf(var_90, CVar(var_160), Mid(var_90, CLng(var_186), CVar(Len(var_90)))))
  loc_126B9E4:     var_8C = CSng(Trim(arg_10))
  loc_126BA06:     GoTo loc_126B891
  loc_126BA09:   End If
  loc_126BA09: End If
  loc_126BA09: Proc_258_160_126BA10 = var_8C
End Sub

Public Sub Proc_258_161_181B33C(arg_C, arg_10, arg_14, arg_18, arg_1C) '181B33C
  'Data Table: 5B2100
  Dim var_E4 As String
  Dim var_E8 As String
  Dim unk_5B213D As Connection15
  Dim var_D8 As Recordset15
  Dim var_F8 As Variant
  Dim var_10C As Fields15
  Dim var_108 As Variant
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_124 As Variant
  Dim var_C0 As Recordset15
  Dim var_1B8 As Fields15
  Dim var_114 As Field20
  Dim var_D0 As Double
  Dim var_210 As Double
  Dim var_E0 As Recordset15
  Dim var_204 As Double
  Dim var_9C As Double
  Dim var_1B4 As Variant
  loc_1818F90: unk_5B213D.Execute "Select DeskCode AS RestCode from Revmast where taxstru='" & arg_C & "'", var_108, -1
  loc_1818F9B: Set var_D8 = var_10C
  loc_1818FBF: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_1818FCF: unk_5B213D.Execute var_E4 & "'", var_108, -1
  loc_1818FDA: Set var_8C = var_10C
  loc_1818FFE: If (var_D8.RecordCount > 0) Then
  loc_1819016:   var_10C = var_D8.Fields
  loc_181901E:   var_114 = var_10C.Item("RestCode")
  loc_181903D:   If (var_10C <> Proc_6_38_E68A98(CVar(var_114), global_76)) Then
  loc_1819042:     var_DA = &HFF
  loc_1819048:   Else
  loc_181904A:     var_DA = 0
  loc_181904D:   End If
  loc_1819050: Else
  loc_1819052:   var_DA = 0
  loc_1819055: End If
  loc_1819058: var_94 = arg_14
  loc_181905D: var_86 = 1
  loc_181906B: If (global_304 = "Room Service") Then
  loc_1819091:   Call 0.Method_Proc_258_161_181B33C0 ("Select * from RoomOcc where chkoutdate is NULL and foliono=", var_1B4, -1, var_1B8, var_86)
  loc_18190A0:   Proc_6_39_E7C810(var_124, CVar(var_114), var_94, var_DA)
  loc_18190B1:   var_154 = var_DA & var_124 & " and LogSite_Code='" 
  loc_18190D2:   unk_5B213D.Execute CStr(var_154 & CVar(MemVar_1F92078) & "'"), var_DA, var_114(CInt(&HA))
  loc_18190DD:   Set var_C0 = var_1B8
  loc_18190FB: End If
  loc_18190FE: var_A8 = var_94
  loc_1819104: var_B0 = var_94
  loc_181910A: var_B8 = CDbl(0)
  loc_1819121: If (var_8C.RecordCount > 0) Then
  loc_1819124:   ' Referenced from: 181B30F
  loc_1819133:   If Not(var_8C.EOF) Then
  loc_181913A:     Set var_1C0 = var_B0(var_B8)
  loc_1819146:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000(vbNullString)
  loc_1819162:     If (var_8C.RecordCount > 0) Then
  loc_181916B:       var_D2 = (var_D2 + 1)
  loc_18191A4:       var_1D0 = Trim(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Nature")), var_D2))) 'Variant
  loc_18191BD:       If (var_1D0 = "On Base Amt") Then
  loc_18191E8:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CondApp")))) 'String
  loc_181920A:         If (Trim(var_124) = "Room Rate") Then
  loc_1819218:           If (global_304 = "Room Service") Then
  loc_1819241:             Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item("Limit")))
  loc_181926F:             Proc_6_39_E7C810(var_154, CVar(var_C0.Fields.Item("RoomRate")))
  loc_1819277:             var_174 = (var_124 <= var_154)
  loc_18192A1:             Proc_6_39_E7C810(var_1B4, CVar(var_8C.Fields.Item("Rate")))
  loc_18192D1:             If CBool(var_174 And (var_1B4 > 0)) Then
  loc_1819314:               If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1819352:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1819365:               Else
  loc_1819398:                 var_210 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_18193C1:                 Proc_6_142_14A55B0(((var_210 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_18193C6:                 var_D0 = var_210
  loc_18193DA:               End If
  loc_18193E1:               If (var_D0 > CDbl(0)) Then
  loc_18193E8:                 Set var_10C = var_D0(var_D0)
  loc_18193EE:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_A8)
  loc_18193FD:                 var_F8 = CVar((CLng() - 1)) 'Long
  loc_1819416:                 LateIdCallSt
  loc_181942C:                 Set var_10C = CVar(CStr(var_86))(var_1C0)
  loc_1819432:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(0)))
  loc_1819441:                 var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_181945A:                 LateIdCallSt
  loc_1819472:                 If (var_DA = 0) Then
  loc_1819479:                   Set var_1B8 = CVar(CStr(arg_10))(var_1C0)
  loc_181947F:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(1)))
  loc_181948E:                   var_144 = CVar((CLng("Rate") - 1)) 'Long
  loc_1819496:                   var_184 = CVar(CLng(2)) 'Long
  loc_18194C6:                   var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_18194CD:                   LateIdCallSt
  loc_18194EA:                 Else
  loc_1819505:                   var_E8 = "Select RevCode as Code from SundryType where LogSite_Code='" & MemVar_1F92078 & "' and v_type in (Select V_Type from Voucher_Type where Restcode='"
  loc_1819543:                   var_134 = CVar(var_E8 & global_76 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_181955A:                   unk_5B213D.Execute CStr(var_134 & "')"), var_174, -1
  loc_1819565:                   Set var_E0 = var_1B8
  loc_181959D:                   If (var_E0.RecordCount > 0) Then
  loc_18195A4:                     Set var_1B8 = var_1C0(var_1B8)
  loc_18195AA:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_134)
  loc_18195B9:                     var_144 = CVar((CLng(var_184) - 1)) 'Long
  loc_18195C1:                     var_184 = CVar(CLng(2)) 'Long
  loc_18195F1:                     var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_18195F8:                     LateIdCallSt
  loc_1819612:                   End If
  loc_1819612:                 End If
  loc_1819616:                 Set var_1B8 = var_134(var_1C0)
  loc_181961C:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_184)
  loc_181962B:                 var_144 = CVar((CLng(var_144) - 1)) 'Long
  loc_181966A:                 LateIdCallSt
  loc_1819688:                 Set var_10C = CVar(CStr(var_8C.Fields.Item("Name").Value))(var_1C0)
  loc_181968E:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(3)))
  loc_181969D:                 var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_18196B6:                 LateIdCallSt
  loc_18196CC:                 Set var_1B8 = CVar(CStr(var_A8))(var_1C0)
  loc_18196D2:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(4)))
  loc_18196E1:                 var_144 = CVar((CLng("Name") - 1)) 'Long
  loc_1819720:                 LateIdCallSt
  loc_181973E:                 Set var_10C = CVar(CStr(var_8C.Fields.Item("Rate").Value))(var_1C0)
  loc_1819744:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(5)))
  loc_1819753:                 var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_181976C:                 LateIdCallSt
  loc_1819782:                 Set var_1B8 = CVar(CStr(var_D0))(var_1C0)
  loc_1819788:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(6)))
  loc_1819797:                 var_144 = CVar((CLng("Rate") - 1)) 'Long
  loc_18197D6:                 LateIdCallSt
  loc_18197F4:                 Set var_10C = CVar(CStr(var_8C.Fields.Item("Sundry").Value))(var_1C0)
  loc_18197FA:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(7)))
  loc_1819809:                 var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_1819811:                 var_164 = CVar(CLng(8)) 'Long
  loc_1819820:                 LateIdCallSt
  loc_1819831:               Else
  loc_1819837:                 var_86 = (var_86 - 1)
  loc_181983E:                 Set var_10C = var_1C0(var_86)
  loc_1819844:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_A(arg_18)
  loc_181984D:                 var_F8 = CVar(CLng(var_164)) 'Long
  loc_1819855:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_10000(var_F8)
  loc_1819863:               End If
  loc_1819867:               Set var_10C = "')"(var_F8)
  loc_181986D:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_181987C:               var_F8 = CVar((CLng() - 1)) 'Long
  loc_181988C:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_181989F:               var_204 = Val(CStr(var_F8))
  loc_18198A9:               var_9C = (var_9C + var_204)
  loc_18198BD:               Set var_10C = var_204(var_9C)
  loc_18198C3:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_18198D2:               var_F8 = CVar((CLng() - 1)) 'Long
  loc_18198E2:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_18198F5:               var_204 = Val(CStr(var_F8))
  loc_18198FF:               var_94 = (var_94 + var_204)
  loc_1819916:               var_B0 = (var_B0 + var_D0)
  loc_181991C:               var_B8 = var_D0
  loc_1819926:               var_B0 = (var_B0 + var_D0)
  loc_181992C:               var_B8 = var_D0
  loc_181992F:             End If
  loc_181992F:           End If
  loc_1819932:         Else
  loc_1819958:           var_124 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_1819972:           If (var_124 = "No") Then
  loc_18199B4:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64))
  loc_18199C7:           Else
  loc_1819A27:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0)
  loc_1819A2C:             var_D0 = var_B8
  loc_1819A40:           End If
  loc_1819A66:           Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item("Limit")), var_D0, var_B0)
  loc_1819AA0:           Proc_6_39_E7C810(var_174, CVar(var_8C.Fields.Item("Rate")), (var_124 <= CVar(var_94)), var_B8)
  loc_1819ACA:           If CBool(var_B0 And (var_174 > 0)) Then
  loc_1819AD4:             If (var_D0 > CDbl(0)) Then
  loc_1819ADB:               Set var_10C = var_204(var_94)
  loc_1819AE1:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1819AF0:               var_F8 = CVar((CLng() - 1)) 'Long
  loc_1819B09:               LateIdCallSt
  loc_1819B1F:               Set var_10C = CVar(CStr(var_86))(var_1C0)
  loc_1819B25:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(0)))
  loc_1819B34:               var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_1819B4D:               LateIdCallSt
  loc_1819B65:               If (var_DA = 0) Then
  loc_1819B6C:                 Set var_1B8 = CVar(CStr(arg_10))(var_1C0)
  loc_1819B72:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(1)))
  loc_1819B81:                 var_144 = CVar((CLng("Limit") - 1)) 'Long
  loc_1819B89:                 var_184 = CVar(CLng(2)) 'Long
  loc_1819BB9:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1819BC0:                 LateIdCallSt
  loc_1819BDD:               Else
  loc_1819BF4:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_76
  loc_1819C28:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1819C3F:                 unk_5B213D.Execute CStr(var_134 & "')"), var_174, -1
  loc_1819C4A:                 Set var_E0 = var_1B8
  loc_1819C7E:                 If (var_E0.RecordCount > 0) Then
  loc_1819C85:                   Set var_1B8 = var_1C0(var_1B8)
  loc_1819C8B:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_134)
  loc_1819C9A:                   var_144 = CVar((CLng(var_184) - 1)) 'Long
  loc_1819CA2:                   var_184 = CVar(CLng(2)) 'Long
  loc_1819CD2:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_1819CD9:                   LateIdCallSt
  loc_1819CF3:                 End If
  loc_1819CF3:               End If
  loc_1819CF7:               Set var_1B8 = var_134(var_1C0)
  loc_1819CFD:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_184)
  loc_1819D0C:               var_144 = CVar((CLng(var_144) - 1)) 'Long
  loc_1819D4B:               LateIdCallSt
  loc_1819D69:               Set var_10C = CVar(CStr(var_8C.Fields.Item("Name").Value))(var_1C0)
  loc_1819D6F:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(3)))
  loc_1819D7E:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_1819D94:               var_124 = CVar(CStr((var_A8 + arg_1C))) 'String
  loc_1819D9B:               LateIdCallSt
  loc_1819DB1:               Set var_1B8 = var_8C.Fields.Item("Name").Value(var_1C0)
  loc_1819DB7:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(4)))
  loc_1819DC6:               var_144 = CVar((CLng("Name") - 1)) 'Long
  loc_1819E05:               LateIdCallSt
  loc_1819E23:               Set var_10C = CVar(CStr(var_8C.Fields.Item("Rate").Value))(var_1C0)
  loc_1819E29:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(5)))
  loc_1819E38:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_1819E51:               LateIdCallSt
  loc_1819E67:               Set var_1B8 = CVar(CStr(var_D0))(var_1C0)
  loc_1819E6D:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(6)))
  loc_1819E7C:               var_144 = CVar((CLng("Rate") - 1)) 'Long
  loc_1819EB8:               LateIdCallSt
  loc_1819ED4:               Set var_10C = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7))))(var_1C0)
  loc_1819EDA:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4("')")
  loc_1819EE9:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_1819EF1:               var_164 = CVar(CLng(8)) 'Long
  loc_1819F00:               LateIdCallSt
  loc_1819F0E:             End If
  loc_1819F12:             Set var_10C = arg_18(var_1C0)
  loc_1819F18:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_164)
  loc_1819F27:             var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_1819F37:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_1819F4A:             var_204 = Val(CStr("Sundry"))
  loc_1819F54:             var_9C = (var_9C + var_204)
  loc_1819F68:             Set var_10C = var_204(var_9C)
  loc_1819F6E:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1819F7D:             var_F8 = CVar((CLng() - 1)) 'Long
  loc_1819F8D:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_1819FA0:             var_204 = Val(CStr("Sundry"))
  loc_1819FAA:             var_94 = (var_94 + var_204)
  loc_1819FC1:             var_B0 = (var_B0 + var_D0)
  loc_1819FC7:             var_B8 = var_D0
  loc_1819FCA:           End If
  loc_1819FCA:         End If
  loc_1819FCD:       Else
  loc_1819FD8:         If (var_1D0 = "On Running Total") Then
  loc_181A001:           var_124 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_181A01B:           If (var_124 = "No") Then
  loc_181A059:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_181A06C:           Else
  loc_181A0C8:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)))
  loc_181A0CD:             var_D0 = var_D0
  loc_181A0E1:           End If
  loc_181A107:           Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item("Rate")), var_D0, var_B8)
  loc_181A121:           If (var_124 > 0) Then
  loc_181A12B:             If (var_D0 > CDbl(0)) Then
  loc_181A132:               Set var_10C = var_94(var_B0)
  loc_181A138:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_204)
  loc_181A147:               var_F8 = CVar((CLng() - 1)) 'Long
  loc_181A160:               LateIdCallSt
  loc_181A176:               Set var_10C = CVar(CStr(var_86))(var_1C0)
  loc_181A17C:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(0)))
  loc_181A18B:               var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_181A1A4:               LateIdCallSt
  loc_181A1BC:               If (var_DA = 0) Then
  loc_181A1C3:                 Set var_1B8 = CVar(CStr(arg_10))(var_1C0)
  loc_181A1C9:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(1)))
  loc_181A1D8:                 var_144 = CVar((CLng("Rate") - 1)) 'Long
  loc_181A1E0:                 var_184 = CVar(CLng(2)) 'Long
  loc_181A210:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_181A217:                 LateIdCallSt
  loc_181A234:               Else
  loc_181A24B:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_76
  loc_181A27F:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_181A296:                 unk_5B213D.Execute CStr(var_134 & "')"), var_174, -1
  loc_181A2A1:                 Set var_E0 = var_1B8
  loc_181A2D5:                 If (var_E0.RecordCount > 0) Then
  loc_181A2DC:                   Set var_1B8 = var_1C0(var_1B8)
  loc_181A2E2:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_134)
  loc_181A2F1:                   var_144 = CVar((CLng(var_184) - 1)) 'Long
  loc_181A2F9:                   var_184 = CVar(CLng(2)) 'Long
  loc_181A329:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_181A330:                   LateIdCallSt
  loc_181A34A:                 End If
  loc_181A34A:               End If
  loc_181A34E:               Set var_1B8 = var_134(var_1C0)
  loc_181A354:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_184)
  loc_181A363:               var_144 = CVar((CLng(var_144) - 1)) 'Long
  loc_181A3A2:               LateIdCallSt
  loc_181A3C0:               Set var_10C = CVar(CStr(var_8C.Fields.Item("Name").Value))(var_1C0)
  loc_181A3C6:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(3)))
  loc_181A3D5:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_181A3EE:               LateIdCallSt
  loc_181A404:               Set var_1B8 = CVar(CStr(var_B0))(var_1C0)
  loc_181A40A:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(4)))
  loc_181A419:               var_144 = CVar((CLng("Name") - 1)) 'Long
  loc_181A458:               LateIdCallSt
  loc_181A476:               Set var_10C = CVar(CStr(var_8C.Fields.Item("Rate").Value))(var_1C0)
  loc_181A47C:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(5)))
  loc_181A48B:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_181A4A4:               LateIdCallSt
  loc_181A4BA:               Set var_1B8 = CVar(CStr(var_D0))(var_1C0)
  loc_181A4C0:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(6)))
  loc_181A4CF:               var_144 = CVar((CLng("Rate") - 1)) 'Long
  loc_181A50E:               LateIdCallSt
  loc_181A52C:               Set var_10C = CVar(CStr(var_8C.Fields.Item("Sundry").Value))(var_1C0)
  loc_181A532:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(7)))
  loc_181A541:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_181A549:               var_164 = CVar(CLng(8)) 'Long
  loc_181A558:               LateIdCallSt
  loc_181A566:             End If
  loc_181A56A:             Set var_10C = arg_18(var_1C0)
  loc_181A570:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_164)
  loc_181A57F:             var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_181A58F:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_181A5A2:             var_204 = Val(CStr("Sundry"))
  loc_181A5AC:             var_9C = (var_9C + var_204)
  loc_181A5C0:             Set var_10C = var_204(var_9C)
  loc_181A5C6:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4("')")
  loc_181A5D5:             var_F8 = CVar((CLng() - 1)) 'Long
  loc_181A5E5:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_181A602:             var_94 = (var_94 + Val(CStr("Sundry")))
  loc_181A619:             var_B0 = (var_B0 + var_D0)
  loc_181A61F:             var_B8 = var_D0
  loc_181A622:           End If
  loc_181A625:         Else
  loc_181A630:           If (var_1D0 = "On Prev. Tax Amt") Then
  loc_181A673:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_181A6B1:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_181A6C4:             Else
  loc_181A720:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)))
  loc_181A725:               var_D0 = var_D0
  loc_181A739:             End If
  loc_181A740:             If (var_D0 > CDbl(0)) Then
  loc_181A747:               Set var_10C = var_B8(var_D0)
  loc_181A74D:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_B0)
  loc_181A75C:               var_F8 = CVar((CLng(var_94) - 1)) 'Long
  loc_181A775:               LateIdCallSt
  loc_181A78B:               Set var_10C = CVar(CStr(var_86))(var_1C0)
  loc_181A791:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(0)))
  loc_181A7A0:               var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_181A7B9:               LateIdCallSt
  loc_181A7D1:               If (var_DA = 0) Then
  loc_181A7D8:                 Set var_1B8 = CVar(CStr(arg_10))(var_1C0)
  loc_181A7DE:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(1)))
  loc_181A7ED:                 var_144 = CVar((CLng("Rate") - 1)) 'Long
  loc_181A7F5:                 var_184 = CVar(CLng(2)) 'Long
  loc_181A825:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_181A82C:                 LateIdCallSt
  loc_181A849:               Else
  loc_181A860:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_76
  loc_181A894:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_181A8AB:                 unk_5B213D.Execute CStr(var_134 & "')"), var_174, -1
  loc_181A8B6:                 Set var_E0 = var_1B8
  loc_181A8EA:                 If (var_E0.RecordCount > 0) Then
  loc_181A8F1:                   Set var_1B8 = var_1C0(var_1B8)
  loc_181A8F7:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_134)
  loc_181A906:                   var_144 = CVar((CLng(var_184) - 1)) 'Long
  loc_181A90E:                   var_184 = CVar(CLng(2)) 'Long
  loc_181A93E:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_181A945:                   LateIdCallSt
  loc_181A95F:                 End If
  loc_181A95F:               End If
  loc_181A963:               Set var_1B8 = var_134(var_1C0)
  loc_181A969:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_184)
  loc_181A978:               var_144 = CVar((CLng(var_144) - 1)) 'Long
  loc_181A9B7:               LateIdCallSt
  loc_181A9D5:               Set var_10C = CVar(CStr(var_8C.Fields.Item("Name").Value))(var_1C0)
  loc_181A9DB:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(3)))
  loc_181A9EA:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_181AA03:               LateIdCallSt
  loc_181AA19:               Set var_1B8 = CVar(CStr(var_B8))(var_1C0)
  loc_181AA1F:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(4)))
  loc_181AA2E:               var_144 = CVar((CLng("Name") - 1)) 'Long
  loc_181AA6D:               LateIdCallSt
  loc_181AA8B:               Set var_10C = CVar(CStr(var_8C.Fields.Item("Rate").Value))(var_1C0)
  loc_181AA91:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(5)))
  loc_181AAA0:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_181AAB9:               LateIdCallSt
  loc_181AACF:               Set var_1B8 = CVar(CStr(var_D0))(var_1C0)
  loc_181AAD5:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(6)))
  loc_181AAE4:               var_144 = CVar((CLng("Rate") - 1)) 'Long
  loc_181AB23:               LateIdCallSt
  loc_181AB41:               Set var_10C = CVar(CStr(var_8C.Fields.Item("Sundry").Value))(var_1C0)
  loc_181AB47:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(7)))
  loc_181AB56:               var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_181AB5E:               var_164 = CVar(CLng(8)) 'Long
  loc_181AB6D:               LateIdCallSt
  loc_181AB7B:             End If
  loc_181AB7F:             Set var_10C = arg_18(var_1C0)
  loc_181AB85:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_164)
  loc_181AB94:             var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_181ABA4:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_181ABB7:             var_204 = Val(CStr("Sundry"))
  loc_181ABC1:             var_9C = (var_9C + var_204)
  loc_181ABD5:             Set var_10C = var_204(var_9C)
  loc_181ABDB:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4("')")
  loc_181ABEA:             var_F8 = CVar((CLng(var_204) - 1)) 'Long
  loc_181ABFA:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_181AC0D:             var_204 = Val(CStr("Sundry"))
  loc_181AC17:             var_94 = (var_94 + var_204)
  loc_181AC2E:             var_B0 = (var_B0 + var_D0)
  loc_181AC34:             var_B8 = var_D0
  loc_181AC3A:           Else
  loc_181AC60:             var_124 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_181AC7A:             If (var_124 = "No") Then
  loc_181ACB8:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_181ACCB:             Else
  loc_181AD27:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)))
  loc_181AD2C:               var_D0 = var_D0
  loc_181AD40:             End If
  loc_181AD66:             Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item("Limit")), var_D0, var_B8)
  loc_181ADA0:             Proc_6_39_E7C810(var_174, CVar(var_8C.Fields.Item("Rate")), (var_124 <= CVar(var_94)))
  loc_181ADCA:             If CBool(var_B0 And (var_174 > 0)) Then
  loc_181ADD4:               If (var_D0 > CDbl(0)) Then
  loc_181ADDB:                 Set var_10C = var_204(var_94)
  loc_181ADE1:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_181ADF0:                 var_F8 = CVar((CLng() - 1)) 'Long
  loc_181AE09:                 LateIdCallSt
  loc_181AE1F:                 Set var_10C = CVar(CStr(var_86))(var_1C0)
  loc_181AE25:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(0)))
  loc_181AE34:                 var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_181AE4D:                 LateIdCallSt
  loc_181AE65:                 If (var_DA = 0) Then
  loc_181AE6C:                   Set var_1B8 = CVar(CStr(arg_10))(var_1C0)
  loc_181AE72:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(1)))
  loc_181AE81:                   var_144 = CVar((CLng("Limit") - 1)) 'Long
  loc_181AE89:                   var_184 = CVar(CLng(2)) 'Long
  loc_181AEB9:                   var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_181AEC0:                   LateIdCallSt
  loc_181AEDD:                 Else
  loc_181AEF4:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_76
  loc_181AF28:                   var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_181AF3F:                   unk_5B213D.Execute CStr(var_134 & "')"), var_174, -1
  loc_181AF4A:                   Set var_E0 = var_1B8
  loc_181AF7E:                   If (var_E0.RecordCount > 0) Then
  loc_181AF85:                     Set var_1B8 = var_1C0(var_1B8)
  loc_181AF8B:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_134)
  loc_181AF9A:                     var_144 = CVar((CLng(var_184) - 1)) 'Long
  loc_181AFA2:                     var_184 = CVar(CLng(2)) 'Long
  loc_181AFD2:                     var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_181AFD9:                     LateIdCallSt
  loc_181AFF3:                   End If
  loc_181AFF3:                 End If
  loc_181AFF7:                 Set var_1B8 = var_134(var_1C0)
  loc_181AFFD:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_184)
  loc_181B00C:                 var_144 = CVar((CLng(var_144) - 1)) 'Long
  loc_181B04B:                 LateIdCallSt
  loc_181B069:                 Set var_10C = CVar(CStr(var_8C.Fields.Item("Name").Value))(var_1C0)
  loc_181B06F:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(3)))
  loc_181B07E:                 var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_181B097:                 LateIdCallSt
  loc_181B0AD:                 Set var_1B8 = CVar(CStr(var_A8))(var_1C0)
  loc_181B0B3:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(4)))
  loc_181B0C2:                 var_144 = CVar((CLng("Name") - 1)) 'Long
  loc_181B101:                 LateIdCallSt
  loc_181B11F:                 Set var_10C = CVar(CStr(var_8C.Fields.Item("Rate").Value))(var_1C0)
  loc_181B125:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(5)))
  loc_181B134:                 var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_181B14D:                 LateIdCallSt
  loc_181B163:                 Set var_1B8 = CVar(CStr(var_D0))(var_1C0)
  loc_181B169:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CVar(CLng(6)))
  loc_181B178:                 var_144 = CVar((CLng("Rate") - 1)) 'Long
  loc_181B1B4:                 LateIdCallSt
  loc_181B1D0:                 Set var_10C = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7))))(var_1C0)
  loc_181B1D6:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4("')")
  loc_181B1E5:                 var_F8 = CVar((CLng("')") - 1)) 'Long
  loc_181B1ED:                 var_164 = CVar(CLng(8)) 'Long
  loc_181B1FC:                 LateIdCallSt
  loc_181B20A:               End If
  loc_181B20E:               Set var_10C = arg_18(var_1C0)
  loc_181B214:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_164)
  loc_181B223:               var_F8 = CVar((CLng(var_F8) - 1)) 'Long
  loc_181B233:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_181B246:               var_204 = Val(CStr("Sundry"))
  loc_181B250:               var_9C = (var_9C + var_204)
  loc_181B264:               Set var_10C = var_204(var_9C)
  loc_181B26A:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_181B279:               var_F8 = CVar((CLng() - 1)) 'Long
  loc_181B289:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(6)))
  loc_181B2A6:               var_94 = (var_94 + Val(CStr("Sundry")))
  loc_181B2BD:               var_B0 = (var_B0 + var_D0)
  loc_181B2C3:               var_B8 = var_D0
  loc_181B2C6:             End If
  loc_181B2C6:           End If
  loc_181B2C6:         End If
  loc_181B2C6:       End If
  loc_181B2C6:     End If
  loc_181B2CC:     var_86 = (var_86 + 1)
  loc_181B2D1:     Set var_1C0 = Nothing 
  loc_181B2D9:     var_F8 = CVar(CLng(arg_10)) 'Long
  loc_181B2F3:     Set var_10C = CVar(CLng(&H11))(CVar(CStr(var_9C)))
  loc_181B2F9:     LateIdCallSt
  loc_181B30A:     var_8C.MoveNext
  loc_181B30F:     GoTo loc_1819124
  loc_181B312:   End If
  loc_181B317:   Set var_8C = Nothing
  loc_181B31F:   Set var_C4 = Nothing
  loc_181B327:   Set var_C0 = Nothing
  loc_181B32F:   Set var_D8 = Nothing
  loc_181B337:   Set var_E0 = Nothing
  loc_181B33A: End If
  loc_181B33A: Exit Sub
End Sub

Public Sub Proc_258_162_F20808(arg_C, arg_10, arg_14) 'F20808
  'Data Table: 5B2100
  Dim unk_5B213D As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  loc_F2074D: Proc_6_7_F25D88(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F2077F: unk_5B213D.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(arg_14) & "' Order by Appdate Desc"), -1, var_15C
  loc_F2078A: Set var_90 = var_15C
  loc_F207BC: If (var_90.RecordCount > 0) Then
  loc_F207EA:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F207FA: Else
  loc_F207FD:   var_8C = CDbl(0)
  loc_F20800: End If
  loc_F20800: Proc_258_162_F20808 = var_8C
End Sub

Public Sub Proc_258_163_1317DCC
  'Data Table: 5B2100
  Dim var_E0 As Variant
  Dim var_9C As Double
  Dim var_118 As String
  Dim unk_5B213D As Connection15
  Dim var_8C As Recordset15
  Dim var_A4 As Double
  Dim var_BC As Fields15
  Dim var_140 As Variant
  Dim var_150 As Double
  Dim var_164 As Variant
  Dim var_1A4 As Variant
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_F0 As Variant
  Dim var_13C As Variant
  Dim var_94 As Double
  Dim var_CC As Variant
  loc_13176A5: Set var_BC = 1(var_86)
  loc_13176AB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_13176C1: For var_D0 =  To CInt((CLng() - 1)):  = var_D0 'Integer
  loc_13176DC:   Set var_BC = CVar(CLng(var_86))(CVar(CLng(8)))
  loc_13176E2:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_13176F5:   var_9C = Val(CStr())
  loc_1317716:   Set var_BC = CVar(CLng(var_86))(CVar(CLng(&H18)))
  loc_131771C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_9C)
  loc_1317740:   var_118 = "SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code) Where TS.Code='" & CStr(var_CC)
  loc_1317750:   unk_5B213D.Execute var_118 & "' ORDER BY SNO DESC", var_13C, -1
  loc_131775B:   Set var_8C = var_140
  loc_1317789:   If (var_8C.RecordCount > 0) Then
  loc_131778F:     var_A4 = CDbl(0)
  loc_1317792:     ' Referenced from: 131792E
  loc_13177A1:     If Not(var_8C.EOF) Then
  loc_13177D7:       var_150 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_13177F3:       var_9C = ((Val(CStr(var_9C)) / (CDbl(&H64) + var_150)) * CDbl(&H64))
  loc_131781C:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(7)))
  loc_1317822:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_9C)
  loc_13178E1:       var_28C = Round(((CVar(Val(CStr(var_150))) * (CVar(var_9C) * var_8C.Fields.Item("Rate").Value)) / 100), CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2)))
  loc_13178EA:       var_AC = CSng(var_28C)
  loc_1317919:       var_A4 = (var_AC + var_A4)
  loc_1317923:       var_B4 = (var_B4 + var_AC)
  loc_1317929:       var_8C.MoveNext
  loc_131792E:       GoTo loc_1317792
  loc_1317931:     End If
  loc_1317946:     Set var_BC = CVar(CLng(var_86))(CVar(CLng(&H1C)))
  loc_131794C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_B4)
  loc_1317968:     If (CStr(var_A4) = "Y") Then
  loc_131796F:       var_F0 = CVar(CLng(var_86)) 'Long
  loc_131798C:       var_CC = Round(var_9C, 2)
  loc_131799D:       Set var_BC = CVar(CLng(9))(CVar(CStr(var_CC)))
  loc_13179A3:       LateIdCallSt
  loc_13179D0:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(var_86))(CVar(CLng(9))))
  loc_13179E0:       var_164 = CVar(CLng(var_86)) 'Long
  loc_1317A1D:       Set var_140 = 1(CVar(CStr(Format(CVar(CStr(var_CC)), "0.00"))))
  loc_1317A23:       LateIdCallSt
  loc_1317A5A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(var_86))(CVar(CLng(7))))
  loc_1317A6D:       var_150 = Val(CStr(1))
  loc_1317A96:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(9)))
  loc_1317A9C:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HA)))
  loc_1317AC3:       LateIdCallSt
  loc_1317AF9:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(&HA)))
  loc_1317AFF:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_150(CVar(CStr((Val(CStr(CVar(CLng(var_86)))) * var_150)))))
  loc_1317B1C:       var_94 = (var_94 + Val(CStr(CVar(CLng(9)))))
  loc_1317B2B:     Else
  loc_1317B51:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(8)))
  loc_1317B57:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(9)))
  loc_1317B7A:       LateIdCallSt
  loc_1317BA8:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(9)))
  loc_1317BAE:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_94(CVar(CStr(Val(CStr(CVar(CLng(var_86))))))))
  loc_1317BBE:       var_164 = CVar(CLng(var_86)) 'Long
  loc_1317BC6:       var_1A4 = CVar(CLng(9)) 'Long
  loc_1317BFB:       Set var_140 = 1(CVar(CStr(Format(CVar(CStr(var_CC)), "0.00"))))
  loc_1317C01:       LateIdCallSt
  loc_1317C38:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(var_86))(CVar(CLng(7))))
  loc_1317C4B:       var_150 = Val(CStr(1))
  loc_1317C74:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(9)))
  loc_1317C7A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HA)))
  loc_1317CA1:       LateIdCallSt
  loc_1317CD7:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(&HA)))
  loc_1317CDD:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_150(CVar(CStr((Val(CStr(CVar(CLng(var_86)))) * var_150)))))
  loc_1317CED:       var_164 = CVar(CLng(var_86)) 'Long
  loc_1317CF5:       var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1317D30:       LateIdCallSt
  loc_1317D61:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(&HA)))
  loc_1317D67:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1(CVar(CStr(Format(CVar(CStr(var_CC)), "0.00")))))
  loc_1317D84:       var_94 = (var_94 + Val(CStr(1)))
  loc_1317D90:     End If
  loc_1317D94:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1317DAE:     Set var_BC = CVar(CLng(&H11))(CVar(CStr(var_A4)))
  loc_1317DB4:     LateIdCallSt
  loc_1317DC2:   End If
  loc_1317DC5: Next var_D0 'Integer
  loc_1317DCA: Exit Sub
End Sub

Public Sub Proc_258_164_133896C(arg_C) '133896C
  'Data Table: 5B2100
  Dim var_E0 As Variant
  Dim var_120 As Variant
  Dim var_9C As Double
  Dim var_168 As String
  Dim unk_5B213D As Connection15
  Dim var_8C As Recordset15
  Dim var_A4 As Double
  Dim var_BC As Fields15
  Dim var_170 As Variant
  Dim var_180 As Double
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_F0 As Variant
  Dim var_94 As Double
  Dim var_CC As Variant
  loc_13381E9: Set var_BC = 1(var_86)
  loc_13381EF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_1338205: For var_D0 =  To CInt((CLng() - 1)):  = var_D0 'Integer
  loc_1338220:   Set var_BC = CVar(CLng(var_86))(CVar(CLng(1)))
  loc_1338226:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1338231:   var_120 = CVar(CStr()) 'String
  loc_1338262:   If (Trim(var_120) = Trim(arg_C)) Then
  loc_133827A:     Set var_BC = CVar(CLng(var_86))(CVar(CLng(8)))
  loc_1338280:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_1338293:     var_9C = Val(CStr())
  loc_13382B4:     Set var_BC = CVar(CLng(var_86))(CVar(CLng(&H18)))
  loc_13382BA:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_9C)
  loc_13382DE:     var_168 = "SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code) Where TS.Code='" & CStr(var_CC)
  loc_13382EE:     unk_5B213D.Execute var_168 & "' ORDER BY SNO DESC", var_120, -1
  loc_13382F9:     Set var_8C = var_170
  loc_1338327:     If (var_8C.RecordCount > 0) Then
  loc_133832D:       var_A4 = CDbl(0)
  loc_1338330:       ' Referenced from: 13384CC
  loc_133833F:       If Not(var_8C.EOF) Then
  loc_1338375:         var_180 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_1338391:         var_9C = ((Val(CStr(var_9C)) / (CDbl(&H64) + var_180)) * CDbl(&H64))
  loc_13383BA:         Set var_BC = CVar(CLng(var_86))(CVar(CLng(7)))
  loc_13383C0:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_9C)
  loc_133847F:         var_28C = Round(((CVar(Val(CStr(Val(CStr(var_180))))) * (CVar(var_9C) * var_8C.Fields.Item("Rate").Value)) / 100), CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2)))
  loc_1338488:         var_AC = CSng(var_28C)
  loc_13384B7:         var_A4 = (var_AC + var_A4)
  loc_13384C1:         var_B4 = (var_B4 + var_AC)
  loc_13384C7:         var_8C.MoveNext
  loc_13384CC:         GoTo loc_1338330
  loc_13384CF:       End If
  loc_13384E4:       Set var_BC = CVar(CLng(var_86))(CVar(CLng(&H1C)))
  loc_13384EA:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_B4)
  loc_1338506:       If (CStr(var_A4) = "Y") Then
  loc_133850D:         var_F0 = CVar(CLng(var_86)) 'Long
  loc_133852A:         var_CC = Round(var_9C, 2)
  loc_133853B:         Set var_BC = CVar(CLng(9))(CVar(CStr(var_CC)))
  loc_1338541:         LateIdCallSt
  loc_133856E:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(var_86))(CVar(CLng(9))))
  loc_133857E:         var_194 = CVar(CLng(var_86)) 'Long
  loc_13385BB:         Set var_170 = 1(CVar(CStr(Format(CVar(CStr(var_CC)), "0.00"))))
  loc_13385C1:         LateIdCallSt
  loc_13385F8:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(var_86))(CVar(CLng(7))))
  loc_133860B:         var_180 = Val(CStr(1))
  loc_1338634:         Set var_BC = CVar(CLng(var_86))(CVar(CLng(9)))
  loc_133863A:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HA)))
  loc_1338661:         LateIdCallSt
  loc_1338697:         Set var_BC = CVar(CLng(var_86))(CVar(CLng(&HA)))
  loc_133869D:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_180(CVar(CStr((Val(CStr(CVar(CLng(var_86)))) * var_180)))))
  loc_13386BA:         var_94 = (var_94 + Val(CStr(CVar(CLng(9)))))
  loc_13386C9:       Else
  loc_13386EF:         Set var_BC = CVar(CLng(var_86))(CVar(CLng(8)))
  loc_13386F5:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(9)))
  loc_1338718:         LateIdCallSt
  loc_1338746:         Set var_BC = CVar(CLng(var_86))(CVar(CLng(9)))
  loc_133874C:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_94(CVar(CStr(Val(CStr(CVar(CLng(var_86))))))))
  loc_133875C:         var_194 = CVar(CLng(var_86)) 'Long
  loc_1338764:         var_1B4 = CVar(CLng(9)) 'Long
  loc_1338799:         Set var_170 = 1(CVar(CStr(Format(CVar(CStr(var_CC)), "0.00"))))
  loc_133879F:         LateIdCallSt
  loc_13387D6:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(var_86))(CVar(CLng(7))))
  loc_13387E9:         var_180 = Val(CStr(1))
  loc_1338812:         Set var_BC = CVar(CLng(var_86))(CVar(CLng(9)))
  loc_1338818:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(CVar(CLng(&HA)))
  loc_133883F:         LateIdCallSt
  loc_1338875:         Set var_BC = CVar(CLng(var_86))(CVar(CLng(&HA)))
  loc_133887B:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_180(CVar(CStr((Val(CStr(CVar(CLng(var_86)))) * var_180)))))
  loc_133888B:         var_194 = CVar(CLng(var_86)) 'Long
  loc_1338893:         var_1B4 = CVar(CLng(&HA)) 'Long
  loc_13388CE:         LateIdCallSt
  loc_13388FF:         Set var_BC = CVar(CLng(var_86))(CVar(CLng(&HA)))
  loc_1338905:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(1(CVar(CStr(Format(CVar(CStr(var_CC)), "0.00")))))
  loc_1338922:         var_94 = (var_94 + Val(CStr(1)))
  loc_133892E:       End If
  loc_1338932:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_133894C:       Set var_BC = CVar(CLng(&H11))(CVar(CStr(var_A4)))
  loc_1338952:       LateIdCallSt
  loc_1338960:     End If
  loc_1338960:   End If
  loc_1338963: Next var_D0 'Integer
  loc_1338968: Exit Sub
End Sub

Public Sub Proc_258_165_F806A4
  'Data Table: 5B2100
  Dim var_8C As Variant
  Dim var_94 As Variant
  Dim var_D0 As ListImage
  Dim var_DC As Image
  loc_F80570: (0).Enabled = 
  loc_F80584: (0).Visible = 
  loc_F80593: Set var_8C = (var_8E)
  loc_F80599: Call 0.Method_Proc_258_165_F806A44 ()
  loc_F805AB: Set var_94 = var_86(var_96)
  loc_F805B1: Call 0.Method_Proc_258_165_F806A48 (var_8E)
  loc_F805C0: For var_9A =  To var_96:  = var_9A 'Integer
  loc_F805D2:   Set var_8C = var_94(var_86)
  loc_F805D8:   Call 0.Method_Proc_258_165_F806A40 (0)
  loc_F805E0:   var_94.FontBold = 
  loc_F805FB:   Set var_8C = var_94(var_86)
  loc_F80601:   Call 0.Method_Proc_258_165_F806A40 (&HFF)
  loc_F80609:   var_94.ForeColor = 
  loc_F80624:   Set var_8C = var_D0(2)
  loc_F8062A:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_D4)
  loc_F8063B:    = .ControlDefault
  loc_F80643:    = var_D0.Picture
  loc_F80658:   Set var_D8 = var_DC(var_86)
  loc_F8065E:   Call 0.Method_Proc_258_165_F806A40 (var_D4)
  loc_F80666:   var_DC.Picture = 
  loc_F80684: Next var_9A 'Integer
  loc_F80689: Call Proc_258_136_143E164()
  loc_F8069B: ("Update &Cash Register").Caption = 
  loc_F806A3: Exit Sub
End Sub

Public Sub Proc_258_166_16C21E0(arg_C, arg_10) '16C21E0
  'Data Table: 5B2100
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_110 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_13C As Variant
  Dim var_160 As Variant
  Dim var_90 As Double
  Dim var_114 As String
  Dim var_140 As String
  Dim unk_5B213D As Connection15
  Dim var_B4 As Recordset15
  Dim var_B8 As Fields15
  Dim var_C8 As String
  Dim var_98 As Double
  Dim var_108 As Variant
  Dim var_10C As Variant
  Dim var_1D8 As Variant
  Dim var_1A4 As String
  Dim var_1C8 As Fields15
  Dim var_E8 As Variant
  Dim Me As Variant
  Dim var_22C As Double
  Dim var_138 As TextBox
  Dim var_A4 As Double
  Dim var_88 As Recordset15
  Dim var_1C4 As Variant
  loc_16C0854: Set var_B8 = var_9A(var_BA)
  loc_16C085A: Call 0.Method_Proc_258_166_16C21E08 (1)
  loc_16C0865: For var_BE =  To var_BA:  = var_BE 'Integer
  loc_16C0878:   Set var_B8 = var_C4(var_9A)
  loc_16C087E:   Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C0886:    = var_C4.Tag
  loc_16C08B8:   Set var_10C = var_110(var_9A)
  loc_16C08BE:   Call 0.Method_Proc_258_166_16C21E00 (var_114)
  loc_16C08C6:   (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "ADD")) = var_110.Text
  loc_16C08DC:   var_134 =  And (CDbl(Val(var_114)) > CDbl(0))
  loc_16C08ED:   Set var_138 = var_13C(var_9A)
  loc_16C08F3:   Call 0.Method_Proc_258_166_16C21E00 (var_140)
  loc_16C08FB:   var_134 = var_13C.Text
  loc_16C0911:   var_160 =  And (CDbl(Val(var_140)) <= CDbl(0))
  loc_16C093A:   If CBool(var_160) Then
  loc_16C094A:     Set var_B8 = var_C4(var_9A)
  loc_16C0950:     Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C0958:      = var_C4.Text
  loc_16C0965:     var_90 = Val(var_C8)
  loc_16C0972:   End If
  loc_16C097F:   Set var_B8 = var_C4(var_9A)
  loc_16C0985:   Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C098D:   var_90 = var_C4.Tag
  loc_16C0995:   var_D8 = CVar(var_C8) 'String
  loc_16C099B:   var_E8 = Trim(var_D8)
  loc_16C09C0:   If (var_E8 = CVar(MemVar_1F92078 & "DED")) Then
  loc_16C09D1:     Set var_B8 = var_C4(CInt(&HB))
  loc_16C09D7:     Call 0.Method_Proc_258_166_16C21E00 (var_BA)
  loc_16C09DF:      = var_C4.Visible
  loc_16C09F1:     If (var_BA = &HFF) Then
  loc_16C0A12:       Set var_B8 = var_C4(CInt(&HB))
  loc_16C0A18:       Call 0.Method_Proc_258_166_16C21E00 (var_C8, "SELECT ADVAMT FROM PackingOrder where Docid='", var_D8)
  loc_16C0A20:       -1 = var_C4.Tag
  loc_16C0A29:       var_114 = var_10C & var_C8
  loc_16C0A39:       unk_5B213D.Execute var_114 & "'", , 
  loc_16C0A44:       Set var_B4 = var_10C
  loc_16C0A70:       If (var_B4.RecordCount > 0) Then
  loc_16C0A92:         var_D8 = CVar(var_B4.Fields.Item("AdvAmt")) 'Address
  loc_16C0A99:         Proc_6_39_E7C810(var_E8)
  loc_16C0AB3:         If CBool(var_E8 <> 0) Then
  loc_16C0AD0:           var_C4 = var_B4.Fields.Item("AdvAmt")
  loc_16C0AE1:           var_C8 = CStr(var_C4.Value)
  loc_16C0AE9:           var_98 = Val(var_C8)
  loc_16C0AFC:         Else
  loc_16C0B09:           Set var_B8 = var_C4(var_9A)
  loc_16C0B0F:           Call 0.Method_Proc_258_166_16C21E00 (var_C8, var_98)
  loc_16C0B17:           var_D8 = var_C4.Text
  loc_16C0B24:           var_98 = Val(var_C8)
  loc_16C0B31:         End If
  loc_16C0B31:       End If
  loc_16C0B34:     Else
  loc_16C0B41:       Set var_B8 = var_C4(var_9A)
  loc_16C0B47:       Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C0B4F:       var_98 = var_C4.Text
  loc_16C0B5C:       var_98 = Val(var_C8)
  loc_16C0B69:     End If
  loc_16C0B69:   End If
  loc_16C0B76:   Set var_B8 = var_C4(var_9A)
  loc_16C0B7C:   Call 0.Method_Proc_258_166_16C21E00 (vbNullString)
  loc_16C0B84:   var_C4.Text = var_98
  loc_16C0B9D:   Set var_B8 = var_C4(var_9A)
  loc_16C0BA3:   Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C0BAB:    = var_C4.Tag
  loc_16C0BDE:   If (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_16C0BE6:     var_A6 = CByte(var_9A) 'Byte
  loc_16C0BEA:   End If
  loc_16C0C0A:   var_C8 = "Select IsNull(Max(Nature),'') from SundryMast where Logsite_code='" & MemVar_1F92078
  loc_16C0C21:   Set var_B8 = var_C4(var_9A)
  loc_16C0C27:   Call 0.Method_Proc_258_166_16C21E00 (var_114, CVar(var_C8 & "' and Code='"), var_160, -1)
  loc_16C0C2F:   var_10C = var_C4.Tag
  loc_16C0C5C:   unk_5B213D.Execute CStr(var_110 & Trim(CVar(var_114)) & "'"), 0, var_138
  loc_16C0C64:    = var_10C.Fields
  loc_16C0C6C:    = var_110.Item()
  loc_16C0C7B:   var_194 = Trim(CVar(var_138))
  loc_16C0C86:   var_1D8 = 0
  loc_16C0CB8:   var_1A4 = "Select IsNull(Max(Nature),'') from SundryMast where LOGSITE_CODE='" & MemVar_1F92078 & "' AND Code='" & MemVar_1F92078 & "ST'"
  loc_16C0CC1:   unk_5B213D.Execute var_1A4, var_1C4, -1
  loc_16C0CC9:   var_13C = var_13C.Fields
  loc_16C0CD1:   var_1D8 = var_1C8.Item(var_1C8)
  loc_16C0D21:   If (var_1DC = Trim(CVar(var_1DC))) Then
  loc_16C0D29:     var_A8 = CByte(var_9A) 'Byte
  loc_16C0D33:     global_144 = var_9A
  loc_16C0D36:   End If
  loc_16C0D39: Next var_BE 'Integer
  loc_16C0D4A: Set var_B8 = var_9A(var_BA)
  loc_16C0D50: Call 0.Method_Proc_258_166_16C21E08 (2)
  loc_16C0D5B: For var_210 =  To var_BA:  = var_210 'Integer
  loc_16C0D6E:   Set var_B8 = var_C4(var_9A)
  loc_16C0D74:   Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C0D7C:    = var_C4.Tag
  loc_16C0DAF:   If (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_16C0DBF:     Set var_B8 = var_C4(var_9A)
  loc_16C0DC5:     Call 0.Method_Proc_258_166_16C21E00 (vbNullString)
  loc_16C0DCD:     var_C4.Text = 
  loc_16C0DE3:     If (var_A8 > var_A6) Then
  loc_16C0DEF:       Set var_B8 = 1(var_9C)
  loc_16C0DF5:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_16C0E0B:       For var_214 =  To CInt((CLng() - 1)):  = var_214 'Integer
  loc_16C0E26:         Set var_B8 = CVar(CLng(var_9C))(CVar(CLng(1)))
  loc_16C0E2C:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_16C0E50:         var_108 = Trim(arg_10)
  loc_16C0E68:         If (Trim(CVar(CStr())) = var_108) Then
  loc_16C0E78:           Set var_B8 = var_C4(var_9A)
  loc_16C0E7E:           Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C0E86:            = var_C4.Tag
  loc_16C0EB9:           If (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_16C0ED1:             Set var_B8 = CVar(CLng(var_9C))(CVar(CLng(&H13)))
  loc_16C0ED7:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_16C0EF3:             If (CStr() = "Y") Then
  loc_16C0F01:               If (global_192 = "RO") Then
  loc_16C0F43:                 var_E8 = "Select * from guestfolio where foliono=" & Me.Fields.Item("Code").Value 
  loc_16C0F5A:                 unk_5B213D.Execute CStr(var_E8 & vbNullString), var_108, -1
  loc_16C0F65:                 Set var_B4 = var_10C
  loc_16C0F93:                 If (var_B4.RecordCount > 0) Then
  loc_16C0FBC:                   Proc_6_39_E7C810(var_E8, CVar(var_B4.Fields.Item("RSDisc")))
  loc_16C0FD6:                   If (var_E8 > 0) Then
  loc_16C0FFF:                     Proc_6_39_E7C810(var_E8, CVar(var_B4.Fields.Item("RSDisc")))
  loc_16C1015:                     Set var_10C = var_110(var_9A)
  loc_16C101B:                     Call 0.Method_Proc_258_166_16C21E00 (CStr(var_E8))
  loc_16C1023:                     var_110.Text = var_10C
  loc_16C103B:                     GoTo loc_16C103E
  loc_16C103E:                     ' Referenced from: 16C103B
  loc_16C103E:                   End If
  loc_16C103E:                 End If
  loc_16C103E:                 GoTo loc_16C1041
  loc_16C1041:                 ' Referenced from: 16C103E
  loc_16C1041:               End If
  loc_16C1041:             End If
  loc_16C1041:           End If
  loc_16C1056:           Set var_B8 = CVar(CLng(var_9C))(CVar(CLng(&HA)))
  loc_16C105C:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_16C1067:           var_C8 = CStr()
  loc_16C107E:           Set var_C4 = var_10C(var_9A)
  loc_16C1084:           Call 0.Method_Proc_258_166_16C21E00 (CStr(Val(var_C8)))
  loc_16C108C:           var_10C.Caption = 
  loc_16C10B1:           Set var_B8 = var_C4(var_9A)
  loc_16C10B7:           Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C10BF:            = var_C4.Tag
  loc_16C10F2:           If (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_16C1102:             Set var_B8 = var_C4(var_9A)
  loc_16C1108:             Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C1110:              = var_C4.Text
  loc_16C111D:             var_22C = Val(var_C8)
  loc_16C1135:             Set var_10C = CVar(CLng(var_9C))(CVar(CLng(&HF)))
  loc_16C113B:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_22C)
  loc_16C116D:             var_E8 = CVar((var_22C + Val(CStr()))) 'Double
  loc_16C118A:             Set var_110 = var_138(var_9A)
  loc_16C1190:             Call 0.Method_Proc_258_166_16C21E00 (CStr(Format(Trim(CVar(var_C8)), "0.00")), 1)
  loc_16C1198:             var_138.Text = 1
  loc_16C11BE:           End If
  loc_16C11BE:         End If
  loc_16C11C1:       Next var_214 'Integer
  loc_16C11C9:     Else
  loc_16C11D2:       Set var_B8 = 1(var_9C)
  loc_16C11D8:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_16C11EE:       For var_238 =  To CInt((CLng() - 1)):    = var_238 'Integer
  loc_16C1209:         Set var_B8 = CVar(CLng(var_9A))(CVar(CLng(1)))
  loc_16C120F:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_16C124B:         If (Trim(CVar(CStr())) = Trim(arg_10)) Then
  loc_16C125B:           Set var_B8 = var_C4(var_9A)
  loc_16C1261:           Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C1269:            = var_C4.Tag
  loc_16C129C:           If (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_16C12B4:             Set var_B8 = CVar(CLng(var_9C))(CVar(CLng(&H13)))
  loc_16C12BA:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_16C12C5:             var_C8 = CStr()
  loc_16C12D6:             If (var_C8 = "Y") Then
  loc_16C12DD:               var_124 = CVar(CLng(var_9C)) 'Long
  loc_16C12F7:               Set var_B8 = var_C4(var_9A)
  loc_16C12FD:               Call 0.Method_Proc_258_166_16C21E00 (var_C8, CVar(CLng(&HE)))
  loc_16C1305:               var_124 = var_C4.Text
  loc_16C131C:               Set var_10C = (CVar(CStr(Val(var_C8))))
  loc_16C1322:               LateIdCallSt
  loc_16C1339:             End If
  loc_16C1339:           End If
  loc_16C134E:           Set var_B8 = CVar(CLng(var_9C))(CVar(CLng(&HA)))
  loc_16C1354:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_10C)
  loc_16C135F:           var_C8 = CStr()
  loc_16C1376:           Set var_C4 = var_10C(var_9A)
  loc_16C137C:           Call 0.Method_Proc_258_166_16C21E00 (CStr(Val(var_C8)))
  loc_16C1384:           var_10C.Caption = 
  loc_16C13A9:           Set var_B8 = var_C4(var_9A)
  loc_16C13AF:           Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C13B7:            = var_C4.Tag
  loc_16C13EA:           If (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_16C13FA:             Set var_B8 = var_C4(var_9A)
  loc_16C1400:             Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C1408:              = var_C4.Text
  loc_16C1415:             var_22C = Val(var_C8)
  loc_16C142D:             Set var_10C = CVar(CLng(var_9C))(CVar(CLng(&HF)))
  loc_16C1433:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_22C)
  loc_16C1465:             var_E8 = CVar((var_22C + Val(CStr()))) 'Double
  loc_16C1482:             Set var_110 = var_138(var_9A)
  loc_16C1488:             Call 0.Method_Proc_258_166_16C21E00 (CStr(Format(Trim(CVar(var_C8)), "0.00")), 1)
  loc_16C1490:             var_138.Text = 1
  loc_16C14B6:           End If
  loc_16C14B6:         End If
  loc_16C14B9:       Next var_238 'Integer
  loc_16C14BE:     End If
  loc_16C14C1:   Else
  loc_16C14CE:     Set var_B8 = var_C4(var_9A)
  loc_16C14D4:     Call 0.Method_Proc_258_166_16C21E00 (var_BA)
  loc_16C14DC:      = var_C4.Visible
  loc_16C14EE:     If (var_BA = &HFF) Then
  loc_16C14F7:       Call Proc_258_159_1298F3C(var_9A)
  loc_16C14FF:       var_A4 = var_22C
  loc_16C150F:       Set var_B8 = var_C4(var_9A)
  loc_16C1515:       Call 0.Method_Proc_258_166_16C21E00 (var_C8, var_A4)
  loc_16C151D:       var_22C = var_C4.Text
  loc_16C156A:       Set var_10C = var_110(var_9A)
  loc_16C1570:       Call 0.Method_Proc_258_166_16C21E00 (CStr(Format(CVar(((var_A4 * Val(var_C8)) / CDbl(&H64))), "0.00")), 1)
  loc_16C1578:       var_110.Text = 1
  loc_16C15A5:       Set var_B8 = var_C4(var_9A)
  loc_16C15AB:       Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C15B3:       var_22C = var_C4.Tag
  loc_16C15FB:       If CBool((Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "ADD")) And (var_90 > CDbl(0))) Then
  loc_16C1626:         var_C8 = CStr(Format(var_90, "0.00"))
  loc_16C1634:         Set var_B8 = var_C4(var_9A)
  loc_16C163A:         Call 0.Method_Proc_258_166_16C21E00 (var_C8, 1)
  loc_16C1642:         var_C4.Text = 1
  loc_16C1658:       End If
  loc_16C1665:       Set var_B8 = var_C4(var_9A)
  loc_16C166B:       Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C1673:        = var_C4.Tag
  loc_16C16BB:       If CBool((Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "DED")) And (var_90 > CDbl(0))) Then
  loc_16C16F4:         Set var_B8 = var_C4(var_9A)
  loc_16C16FA:         Call 0.Method_Proc_258_166_16C21E00 (CStr(Format(var_98, "0.00")), 1)
  loc_16C1702:         var_C4.Text = 1
  loc_16C1718:       End If
  loc_16C171D:       var_C8 = CStr(var_A4)
  loc_16C172A:       Set var_B8 = var_C4(var_9A)
  loc_16C1730:       Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C1738:       var_C4.Caption = 
  loc_16C174A:     Else
  loc_16C1757:       Set var_B8 = var_C4(var_9A)
  loc_16C175D:       Call 0.Method_Proc_258_166_16C21E00 (var_BA)
  loc_16C1765:        = var_C4.Visible
  loc_16C1770:       var_124 = (var_BA = 0)
  loc_16C1781:       Set var_10C = var_110(var_9A)
  loc_16C1787:       Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C178F:       var_124 = var_110.Tag
  loc_16C17D0:       If CBool( And (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "ADD"))) Then
  loc_16C17FB:         var_C8 = CStr(Format(var_90, "0.00"))
  loc_16C1809:         Set var_B8 = var_C4(var_9A)
  loc_16C180F:         Call 0.Method_Proc_258_166_16C21E00 (var_C8, 1)
  loc_16C1817:         var_C4.Text = 1
  loc_16C1830:       Else
  loc_16C183D:         Set var_B8 = var_C4(var_9A)
  loc_16C1843:         Call 0.Method_Proc_258_166_16C21E00 (var_BA)
  loc_16C184B:          = var_C4.Visible
  loc_16C1856:         var_124 = (var_BA = 0)
  loc_16C1867:         Set var_10C = var_110(var_9A)
  loc_16C186D:         Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C1875:         var_124 = var_110.Tag
  loc_16C18B6:         If CBool( And (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "DED"))) Then
  loc_16C18E1:           var_C8 = CStr(Format(var_98, "0.00"))
  loc_16C18EF:           Set var_B8 = var_C4(var_9A)
  loc_16C18F5:           Call 0.Method_Proc_258_166_16C21E00 (var_C8, 1)
  loc_16C18FD:           var_C4.Text = 1
  loc_16C1913:         End If
  loc_16C1913:       End If
  loc_16C1913:     End If
  loc_16C1913:   End If
  loc_16C1916: Next var_210 'Integer
  loc_16C1924: Set var_B8 = 1(var_9A)
  loc_16C192A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_16C1940: For var_23C =  To CInt((CLng() - 1)):  = var_23C 'Integer
  loc_16C195B:   Set var_B8 = CVar(CLng(var_9A))(CVar(CLng(1)))
  loc_16C1961:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_16C199D:   If (Trim(CVar(CStr())) = Trim(arg_10)) Then
  loc_16C19AC:     Set var_B8 = var_C4(1)
  loc_16C19B2:     Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C19BA:      = var_C4.Text
  loc_16C19C7:     var_22C = Val(var_C8)
  loc_16C19DF:     Set var_10C = CVar(CLng(var_9A))(CVar(CLng(&HA)))
  loc_16C19E5:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_22C)
  loc_16C1A17:     var_E8 = CVar((var_22C + Val(CStr()))) 'Double
  loc_16C1A33:     Set var_110 = var_138(1)
  loc_16C1A39:     Call 0.Method_Proc_258_166_16C21E00 (CStr(Format(CVar(CStr()), "0.00")), 1)
  loc_16C1A41:     var_138.Text = 1
  loc_16C1A67:   End If
  loc_16C1A6A: Next var_23C 'Integer
  loc_16C1A73: Set var_B8 = Me.TopCtrl1
  loc_16C1A79: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_16C1A81: var_C8 = CStr()
  loc_16C1A8D: Set var_C4 = Me.TopCtrl1
  loc_16C1A93: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005((var_C8 = "Add"))
  loc_16C1AB9: If ( Or (CStr() = "Edit")) Then
  loc_16C1AC8:   Set var_B8 = var_9A(var_BA)
  loc_16C1ACE:   Call 0.Method_Proc_258_166_16C21E08 (2)
  loc_16C1AD9:   For var_240 =  To var_BA:  = var_240 'Integer
  loc_16C1AEC:     Set var_B8 = var_C4(var_9A)
  loc_16C1AF2:     Call 0.Method_Proc_258_166_16C21E00 (var_BA)
  loc_16C1AFA:      = var_C4.Visible
  loc_16C1B05:     var_124 = (var_BA = &HFF)
  loc_16C1B16:     Set var_10C = var_110(var_9A)
  loc_16C1B1C:     Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C1B24:     var_124 = var_110.Tag
  loc_16C1B65:     If CBool( And (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "SCH"))) Then
  loc_16C1B71:       Call Proc_258_160_126BA10(var_9A, arg_10)
  loc_16C1B79:       var_A4 = var_22C
  loc_16C1B89:       Set var_B8 = var_C4(var_9A)
  loc_16C1B8F:       Call 0.Method_Proc_258_166_16C21E00 (var_C8, var_A4)
  loc_16C1B97:       var_22C = var_C4.Text
  loc_16C1BA4:       var_22C = Val(var_C8)
  loc_16C1BE4:       Set var_10C = var_110(var_9A)
  loc_16C1BEA:       Call 0.Method_Proc_258_166_16C21E00 (CStr(Format(CVar(((var_A4 * var_22C) / CDbl(&H64))), "0.00")), 1)
  loc_16C1BF2:       var_110.Text = 1
  loc_16C1C17:       var_C8 = CStr(var_A4)
  loc_16C1C24:       Set var_B8 = var_C4(var_9A)
  loc_16C1C2A:       Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C1C32:       var_C4.Caption = var_22C
  loc_16C1C41:     End If
  loc_16C1C44:   Next var_240 'Integer
  loc_16C1C49: End If
  loc_16C1C4D: Set var_B8 = ()
  loc_16C1C53: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_16C1C68: If (CLng() > 1) Then
  loc_16C1C78:   Set var_B8 = (1)
  loc_16C1C7E:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6()
  loc_16C1C86: End If
  loc_16C1C98: Set var_B8 = 0(var_9C)
  loc_16C1C9E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(CDbl(0))
  loc_16C1CB4: For var_244 =  To CInt((CLng() - 1)):  = var_244 'Integer
  loc_16C1CCF:   Set var_B8 = CVar(CLng(var_9C))(CVar(CLng(8)))
  loc_16C1CD5:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_16C1D11:   If (Trim(CVar(CStr())) = Trim(arg_10)) Then
  loc_16C1D20:     Set var_B8 = var_9A(var_BA)
  loc_16C1D26:     Call 0.Method_Proc_258_166_16C21E08 (1)
  loc_16C1D31:     For var_248 =  To var_BA:  = var_248 'Integer
  loc_16C1D44:       Set var_B8 = var_C4(var_9A)
  loc_16C1D4A:       Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C1D52:        = var_C4.Tag
  loc_16C1D7D:       Set var_10C = CVar(CLng(var_9C))(CVar(CLng(7)))
  loc_16C1D83:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(Trim(CVar(var_C8)))
  loc_16C1DB4:       If ( = Trim(CVar(CStr()))) Then
  loc_16C1DC4:         Set var_B8 = var_C4(var_9A)
  loc_16C1DCA:         Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C1DD2:          = var_C4.Text
  loc_16C1DDF:         var_22C = Val(var_C8)
  loc_16C1DF7:         Set var_10C = CVar(CLng(var_9C))(CVar(CLng(6)))
  loc_16C1DFD:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41(var_22C)
  loc_16C1E2F:         var_E8 = CVar((var_22C + Val(CStr()))) 'Double
  loc_16C1E4C:         Set var_110 = var_138(var_9A)
  loc_16C1E52:         Call 0.Method_Proc_258_166_16C21E00 (CStr(Format(Trim(CVar(var_C8)), "0.00")), 1)
  loc_16C1E5A:         var_138.Text = 1
  loc_16C1E80:       End If
  loc_16C1E83:     Next var_248 'Integer
  loc_16C1E88:   End If
  loc_16C1E8B: Next var_244 'Integer
  loc_16C1E9C: Set var_B8 = var_9A(var_BA)
  loc_16C1EA2: Call 0.Method_Proc_258_166_16C21E08 (2)
  loc_16C1EAD: For var_24C =  To var_BA:  = var_24C 'Integer
  loc_16C1EC0:   Set var_B8 = var_C4(var_9A)
  loc_16C1EC6:   Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C1ECE:    = var_C4.Tag
  loc_16C1ED6:   var_D8 = CVar(var_C8) 'String
  loc_16C1F01:   If (Trim(var_D8) = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_16C1F0D:     Call Proc_258_160_126BA10(var_9A, arg_10)
  loc_16C1F15:     var_A4 = var_22C
  loc_16C1F30:     Call 0.Method_Proc_258_166_16C21E00 (CStr(var_A4), var_A4)
  loc_16C1F38:     var_C4.Caption = var_22C
  loc_16C1F5D:     unk_5B213D.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill'", var_D8, -1
  loc_16C1F68:     Set var_88 = var_C4(var_9A)
  loc_16C1F85:     If (var_88.RecordCount > 0) Then
  loc_16C1F9F:       var_C4 = var_88.Fields.Item("RoundOffType")
  loc_16C1FCB:       Proc_6_85_1261068(var_A4, CByte(2))
  loc_16C1FD0:       var_22C = CStr(Left(CVar(var_C4), 1))
  loc_16C2008:       Set var_10C = var_110(var_9A)
  loc_16C200E:       Call 0.Method_Proc_258_166_16C21E00 (CStr(Format(CVar(var_22C), "0.00")), 1, 1)
  loc_16C2016:       var_110.Text = var_22C
  loc_16C203B:     Else
  loc_16C203E:       var_C8 = "S"
  loc_16C204F:       Proc_6_85_1261068(var_A4, CByte(2))
  loc_16C2054:       var_22C = var_C8
  loc_16C207E:       var_114 = CStr(Format(CVar(var_22C), "0.00"))
  loc_16C208C:       Set var_B8 = var_C4(var_9A)
  loc_16C2092:       Call 0.Method_Proc_258_166_16C21E00 (var_114, 1, 1)
  loc_16C209A:       var_C4.Text = var_22C
  loc_16C20B6:     End If
  loc_16C20B9:   Else
  loc_16C20C0:     If (var_9A <> arg_C) Then
  loc_16C20D0:       Set var_B8 = var_C4(var_9A)
  loc_16C20D6:       Call 0.Method_Proc_258_166_16C21E00 (var_C8)
  loc_16C20DE:       var_B8 = var_C4.Tag
  loc_16C2110:       Set var_10C = var_110(var_9A)
  loc_16C2116:       Call 0.Method_Proc_258_166_16C21E00 (var_114)
  loc_16C211E:       (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "TOT")) = var_110.Tag
  loc_16C2163:       If CBool( Or (Trim(CVar(var_114)) = CVar(MemVar_1F92078 & "NET"))) Then
  loc_16C216F:         Call Proc_258_160_126BA10(var_9A, arg_10)
  loc_16C21A9:         Set var_B8 = var_C4(var_9A)
  loc_16C21AF:         Call 0.Method_Proc_258_166_16C21E00 (CStr(Format(CVar(var_22C), "0.00")), 1)
  loc_16C21B7:         var_C4.Text = 1
  loc_16C21CF:       End If
  loc_16C21CF:     End If
  loc_16C21CF:   End If
  loc_16C21D2: Next var_24C 'Integer
  loc_16C21DC: Set var_88 = Nothing
  loc_16C21DF: Exit Sub
End Sub

Public Sub Proc_258_167_10D7F60
  'Data Table: 5B2100
  Dim var_88 As Integer
  loc_10D7C64: Set var_8C = var_86(var_8E)
  loc_10D7C6A: Call 0.Method_Proc_258_167_10D7F608 (0)
  loc_10D7C75: For var_92 =  To var_8E:  = var_92 'Integer
  loc_10D7C8A:   Set var_8C = var_98(var_86)
  loc_10D7C90:   Call 0.Method_Proc_258_167_10D7F600 (False)
  loc_10D7C98:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_10D7CA7: Next var_92 'Integer
  loc_10D7CB5: Set var_8C = 1(var_86)
  loc_10D7CBB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4()
  loc_10D7CD1: For var_CC =  To CInt((CLng() - 1)):  = var_CC 'Integer
  loc_10D7CEC:   Set var_8C = CVar(CLng(var_86))(CVar(CLng(&H1F)))
  loc_10D7CF2:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_41()
  loc_10D7D05:   var_100 = Proc_6_38_E68A98(CVar(CStr()))
  loc_10D7D1A:   If (var_100 = "Beverage") Then
  loc_10D7D2A:     Set var_8C = var_98(0)
  loc_10D7D30:     Call 0.Method_Proc_258_167_10D7F600 (True)
  loc_10D7D38:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_10D7D47:   Else
  loc_10D7D4F:     If (var_100 = "Confectionary") Then
  loc_10D7D5F:       Set var_8C = var_98(1)
  loc_10D7D65:       Call 0.Method_Proc_258_167_10D7F600 (True)
  loc_10D7D6D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_10D7D7C:     Else
  loc_10D7D84:       If (var_100 = "Food") Then
  loc_10D7D94:         Set var_8C = var_98(2)
  loc_10D7D9A:         Call 0.Method_Proc_258_167_10D7F600 (True)
  loc_10D7DA2:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_10D7DB1:       Else
  loc_10D7DB9:         If (var_100 = "Liquor") Then
  loc_10D7DC9:           Set var_8C = var_98(3)
  loc_10D7DCF:           Call 0.Method_Proc_258_167_10D7F600 (True)
  loc_10D7DD7:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_10D7DE6:         Else
  loc_10D7DEE:           If (var_100 = "Tobacco") Then
  loc_10D7DFE:             Set var_8C = var_98(4)
  loc_10D7E04:             Call 0.Method_Proc_258_167_10D7F600 (True)
  loc_10D7E0C:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_10D7E1B:           Else
  loc_10D7E23:             If (var_100 = "Miscellaneous") Then
  loc_10D7E33:               Set var_8C = var_98(5)
  loc_10D7E39:               Call 0.Method_Proc_258_167_10D7F600 (True)
  loc_10D7E41:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_10D7E4D:             End If
  loc_10D7E4D:           End If
  loc_10D7E4D:         End If
  loc_10D7E4D:       End If
  loc_10D7E4D:     End If
  loc_10D7E4D:   End If
  loc_10D7E50: Next var_CC 'Integer
  loc_10D7E61: Set var_8C = var_86(var_8E)
  loc_10D7E67: Call 0.Method_Proc_258_167_10D7F608 (0)
  loc_10D7E72: For var_104 =  To var_8E:  = var_104 'Integer
  loc_10D7E82:   Set var_8C = var_98(var_86)
  loc_10D7E88:   Call 0.Method_Proc_258_167_10D7F600 ()
  loc_10D7E90:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D()
  loc_10D7EA6:   If (CBool() = &HFF) Then
  loc_10D7EB3:     Set var_8C = var_98(var_88)
  loc_10D7EB9:     Call 0.Method_Proc_258_167_10D7F600 ()
  loc_10D7EC1:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_10D7ED9:     Set var_108 = var_10C(var_86)
  loc_10D7EDF:     Call 0.Method_Proc_258_167_10D7F600 (CVar(CDbl()))
  loc_10D7EE7:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_10D7F00:     var_88 = (var_88 + 1)
  loc_10D7F11:     Set var_8C = var_98(var_86)
  loc_10D7F17:     Call 0.Method_Proc_258_167_10D7F600 (True)
  loc_10D7F1F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(var_88)
  loc_10D7F2E:   Else
  loc_10D7F3D:     Set var_8C = var_98(var_86)
  loc_10D7F43:     Call 0.Method_Proc_258_167_10D7F600 (False)
  loc_10D7F4B:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007()
  loc_10D7F57:   End If
  loc_10D7F5A: Next var_104 'Integer
  loc_10D7F5F: Exit Sub
End Sub

Public Sub Proc_258_168_EB6494(arg_C) 'EB6494
  'Data Table: 5B2100
  Dim var_C8 As Integer
  Dim unk_5B213D As Connection15
  Dim var_B4 As Recordset15
  Dim var_B8 As Fields15
  Dim var_CC As Field20
  Dim var_86 As Integer
  loc_EB6412: var_C8 = 0
  loc_EB643F: unk_5B213D.Execute "Select Count(*) From Paycharge Where Docid='" & arg_C & "'", var_B0, -1
  loc_EB6447: var_B4 = var_B4.Fields
  loc_EB644F: var_C8 = var_B8.Item(var_B8)
  loc_EB6457: var_CC = var_CC.Value
  loc_EB647E: If (var_DC > 0) Then
  loc_EB6483:   var_86 = &HFF
  loc_EB6489: Else
  loc_EB648B:   var_86 = 0
  loc_EB648E: End If
  loc_EB648E: Proc_258_168_EB6494 = var_86
End Sub
