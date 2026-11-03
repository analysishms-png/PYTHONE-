VERSION 5.00
Begin VB.Form Godown
  Caption = "Location Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 10755
  ClientHeight = 4770
  LockControls = -1  'True
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin DataGrid DGMaster
    Left = 45
    Top = 1215
    Width = 7230
    Height = 3375
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 1
    Left = 1950
    Top = 750
    Width = 1560
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 6
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
    Left = 1950
    Top = 500
    Width = 3690
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin DataGrid DGHelp
    Left = 6510
    Top = 915
    Width = 3120
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10755
    Height = 375
    TabIndex = 0
  End
  Begin MSFlexGrid FGPoint
    Left = 8445
    Top = 420
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 7
  End
  Begin Label Label1
    Caption = "Short Name"
    Index = 1
    ForeColor = &H0&
    Left = 495
    Top = 750
    Width = 1020
    Height = 240
    TabIndex = 5
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "Location Name"
    Index = 0
    ForeColor = &H0&
    Left = 495
    Top = 495
    Width = 1260
    Height = 240
    TabIndex = 4
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
End

Attribute VB_Name = "Godown"


Private Sub TopCtrl1_UnknownEvent_11 'E7E89C
  'Data Table: 43AF60
  Dim var_94 As TextBox
  loc_E7E838: On Error Goto loc_E7E894
  loc_E7E85E: Call Proc_87_30_E8FB14(Proc_5_1_100CB50("ADD", Me))
  loc_E7E869: Call Proc_87_28_EB41CC(global_60)
  loc_E7E879: Set var_8C = Me.Txt
  loc_E7E87F: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0))
  loc_E7E887: var_94.SetFocus
  loc_E7E893: Exit Sub
  loc_E7E894: ' Referenced from: E7E838
  loc_E7E894: Proc_6_60_E62BC4(var_94)
  loc_E7E899: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'EF9EEC
  'Data Table: 43AF60
  Dim var_94 As TextBox
  loc_EF9E10: On Error Goto loc_EF9EE3
  loc_EF9E21: If (Proc_183_55_FE7900(global_60) = &HFF) Then
  loc_EF9E24:   Exit Sub
  loc_EF9E25: End If
  loc_EF9E48: Call Proc_87_30_E8FB14(Proc_5_1_100CB50("EDIT", Me))
  loc_EF9E61: Set var_8C = Me.Txt
  loc_EF9E67: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_94)
  loc_EF9E7A: global_64 = var_94.Text
  loc_EF9E96: Set var_8C = Me.Txt
  loc_EF9E9C: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(1), var_94)
  loc_EF9EAF: global_52 = var_94.Text
  loc_EF9EC8: Set var_8C = Me.Txt
  loc_EF9ECE: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_94)
  loc_EF9ED6: var_94.SetFocus
  loc_EF9EE2: Exit Sub
  loc_EF9EE3: ' Referenced from: EF9E10
  loc_EF9EE3: Proc_6_60_E62BC4(global_60)
  loc_EF9EE8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '11D1A14
  'Data Table: 43AF60
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim unk_43AF71 As Connection15
  Dim var_118 As Variant
  Dim var_C8 As Variant
  loc_11D15D0: On Error Goto loc_11D19C6
  loc_11D15E1: If (Proc_183_56_FE8818(global_60) = &HFF) Then
  loc_11D15E4:   Exit Sub
  loc_11D15E5: End If
  loc_11D1617: var_D4 = "Stock"
  loc_11D165F: If (Proc_6_108_1010FEC(MemVar_1F92044, "Stock", "GodownCode", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_11D1662:   Exit Sub
  loc_11D1663: End If
  loc_11D1695: var_D4 = "Stock"
  loc_11D16DD: If (Proc_6_108_1010FEC(MemVar_1F92044, "Stock", "DepartCode", CStr(Me.Fields.Item("SearchCode").Value), 0) = 0) Then
  loc_11D16E0:   Exit Sub
  loc_11D16E1: End If
  loc_11D175B: If (Proc_6_108_1010FEC(MemVar_1F92044, "Indent", "Department", CStr(Me.Fields.Item("SearchCode").Value), 0, "Requisition") = 0) Then
  loc_11D175E:   Exit Sub
  loc_11D175F: End If
  loc_11D1796: If (MsgBox("Are You Sure To Delete This ? ", &H14, "Delete Entry !", var_118, var_138) = 6) Then
  loc_11D17A2:   unk_43AF71.BeginTrans var_D0
  loc_11D17B8:   var_94 = Me.Bookmark 'Variant
  loc_11D17F7:   var_118 = "Delete From GodownMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_11D1824:   var_9C = Me.Fields
  loc_11D1834:   var_C8 = var_9C.Item("SearchCode").Value
  loc_11D183E:   var_164 = 0
  loc_11D1851:   var_15C = 0
  loc_11D185C:   var_158 = 0
  loc_11D186F:   var_150 = 0
  loc_11D187A:   var_14C = 0
  loc_11D188D:   var_144 = 0
  loc_11D18CD:   var_B4 = "GodownMast"
  loc_11D18D6:   Proc_154_5_10E33A4(MemVar_1F92044, var_B4, "Code", &HC8, CStr(var_C8), 0, 0, 0)
  loc_11D1914:   unk_43AF71.Execute CStr(var_118), var_C8, -1
  loc_11D1925:   unk_43AF71.CommitTrans
  loc_11D1935:   Me.Requery -1
  loc_11D1945:   Me.Requery -1
  loc_11D1965:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11D1972:     Me.Bookmark = var_94
  loc_11D197A:   Else
  loc_11D198E:     If (Me.EOF = 0) Then
  loc_11D1997:       Me.MoveLast
  loc_11D199C:     End If
  loc_11D199C:   End If
  loc_11D199C:   Call Proc_87_29_F7D2B0(var_9C, var_144, 0, var_14C, var_150)
  loc_11D19BD:   Proc_5_0_110649C(&HFF, Me, global_60, 0)
  loc_11D19C5: End If
  loc_11D19C5: Exit Sub
  loc_11D19C6: ' Referenced from: 11D15D0
  loc_11D19CC: unk_43AF71.RollbackTrans
  loc_11D19D9: Set var_9C = Err()
  loc_11D19DF: Call 0.Method_arg_2C (var_B4, 0, var_158)
  loc_11D1A00: MsgBox(CVar(var_B4), &H10, " Deletion Message", var_118, var_138)
  loc_11D1A13: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E178A4
  'Data Table: 43AF60
  loc_E17899: Me.Global.Unload Me
  loc_E178A1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3C918
  'Data Table: 43AF60
  loc_E3C908: Proc_5_0_110649C(&HFF, Me)
  loc_E3C910: Call Proc_87_29_F7D2B0(global_60)
  loc_E3C915: Exit Sub
  loc_E3C916: Set var_1800 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E3D998
  'Data Table: 43AF60
  Dim var_1701 As Double
  loc_E3D988: Proc_5_0_110649C(&HFF, Me)
  loc_E3D990: Call Proc_87_29_F7D2B0(global_60)
  loc_E3D995: Exit Sub
  loc_E3D996: var_1701 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E3C618
  'Data Table: 43AF60
  loc_E3C608: Proc_5_0_110649C(&HFF, Me)
  loc_E3C610: Call Proc_87_29_F7D2B0(global_60)
  loc_E3C615: Exit Sub
  loc_E3C616: 3 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E3C738
  'Data Table: 43AF60
  loc_E3C728: Proc_5_0_110649C(&HFF, Me)
  loc_E3C730: Call Proc_87_29_F7D2B0(global_60)
  loc_E3C735: Exit Sub
  loc_E3C736: var_1788 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '13BDE14
  'Data Table: 43AF60
  Dim Me As Recordset15
  Dim var_BC As Variant
  Dim var_F8 As Variant
  Dim var_A0 As Variant
  Dim var_E0 As String
  Dim var_E4 As String
  Dim unk_43AF71 As Connection15
  Dim var_A4 As Variant
  Dim var_E8 As Variant
  Dim var_FC As Field20
  Dim var_140 As String
  Dim var_144 As String
  Dim var_A8 As String
  Dim var_9C As Variant
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_8A As Integer
  Dim var_14C As String
  Dim var_DC As Variant
  Dim var_178 As Variant
  loc_13BD4E8: On Error Goto loc_13BDDF8
  loc_13BD4F6: Set var_9C = Me.Txt
  loc_13BD4FC: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_13BD525: If (Proc_6_27_EA565C(var_A0, "Godown Name") = 0) Then
  loc_13BD528:   Exit Sub
  loc_13BD529: End If
  loc_13BD534: Set var_9C = Me.Txt
  loc_13BD53A: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A0)
  loc_13BD542: var_A8 = "Short Name"
  loc_13BD563: If (Proc_6_27_EA565C(var_A0, var_A8) = 0) Then
  loc_13BD566:   Exit Sub
  loc_13BD567: End If
  loc_13BD570: var_AC = Me.RecordCount
  loc_13BD57E: If (var_AC <> 0) Then
  loc_13BD585:   Set var_9C = Me.TopCtrl1
  loc_13BD58B:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_A0)
  loc_13BD5A0:   If ( = "Add") Then
  loc_13BD5D0:     Set var_9C = Me.Txt
  loc_13BD5D6:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0, var_A8, "Select Count(*) From GodownMast Where Name='", var_CC, -1)
  loc_13BD5F7:     unk_43AF71.Execute var_E8 & var_A8 & "'", 0, var_FC
  loc_13BD607:      = var_E8.Item()
  loc_13BD60F:      = var_FC.Value
  loc_13BD63C:     If (var_A0.Text.Fields > 0) Then
  loc_13BD65A:       var_CC = "Duplicate Godown Name"
  loc_13BD660:       MsgBox(var_CC, &H40, "Information", var_11C, var_13C)
  loc_13BD67B:       Set var_9C = Me.Txt
  loc_13BD681:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_13BD689:       var_A0.SetFocus
  loc_13BD695:       Exit Sub
  loc_13BD696:     End If
  loc_13BD6C3:     Set var_9C = Me.Txt
  loc_13BD6C9:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A0, var_A8, "Select Count(*) From GodownMast Where shortName='", var_CC, -1)
  loc_13BD6EA:     unk_43AF71.Execute var_E8 & var_A8 & "'", 0, var_FC
  loc_13BD6FA:      = var_E8.Item(var_A0)
  loc_13BD702:      = var_FC.Value
  loc_13BD72F:     If (var_A0.Text.Fields > 0) Then
  loc_13BD74D:       var_CC = "Duplicate Short Name"
  loc_13BD753:       MsgBox(var_CC, &H40, "Information", var_11C, var_13C)
  loc_13BD76E:       Set var_9C = Me.Txt
  loc_13BD774:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1))
  loc_13BD77C:       var_A0.SetFocus
  loc_13BD788:       Exit Sub
  loc_13BD789:     End If
  loc_13BD78C:   Else
  loc_13BD7B9:     Set var_9C = Me.Txt
  loc_13BD7BF:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0, var_A8, "Select Count(*) From GodownMast Where Name='", var_CC, -1)
  loc_13BD7F1:     unk_43AF71.Execute var_E8 & var_A8 & "' And Name<>'" & global_64 & "'", 0, var_FC
  loc_13BD801:      = var_E8.Item(var_A0)
  loc_13BD809:      = var_FC.Value
  loc_13BD83A:     If (var_A0.Text.Fields > 0) Then
  loc_13BD858:       var_CC = "Duplicate Godown Name"
  loc_13BD85E:       MsgBox(var_CC, &H40, "Information", var_11C, var_13C)
  loc_13BD879:       Set var_9C = Me.Txt
  loc_13BD87F:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_13BD887:       var_A0.SetFocus
  loc_13BD893:       Exit Sub
  loc_13BD894:     End If
  loc_13BD8C1:     Set var_9C = Me.Txt
  loc_13BD8C7:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A0, var_A8, "Select Count(*) From GodownMast Where shortName='", var_CC, -1)
  loc_13BD8F0:     var_144 = var_E8 & var_A8 & "' And shortName<>'" & global_52 & "'"
  loc_13BD8F9:     unk_43AF71.Execute var_144, 0, var_FC
  loc_13BD909:      = var_E8.Item(var_A0)
  loc_13BD911:      = var_FC.Value
  loc_13BD942:     If (var_A0.Text.Fields > 0) Then
  loc_13BD950:       var_DC = "Information"
  loc_13BD960:       var_CC = "Duplicate Short Name"
  loc_13BD966:       MsgBox(var_CC, &H40, var_DC, var_11C, var_13C)
  loc_13BD981:       Set var_9C = Me.Txt
  loc_13BD987:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1))
  loc_13BD98F:       var_A0.SetFocus
  loc_13BD99B:       Exit Sub
  loc_13BD99C:     End If
  loc_13BD99C:   End If
  loc_13BD99C: End If
  loc_13BD9A0: Set var_9C = Me.TopCtrl1
  loc_13BD9A6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_A0)
  loc_13BD9BB: If ( = "Add") Then
  loc_13BD9C4:   var_F8 = 0
  loc_13BD9E1:   var_A8 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From GodownMast where SysYn<>'Y' and Site_Code='" & MemVar_1F92070
  loc_13BD9E8:   var_E0 = var_A8 & "'"
  loc_13BD9F1:   unk_43AF71.Execute var_E0, var_CC, -1
  loc_13BD9F9:   var_9C = var_9C.Fields
  loc_13BDA01:   var_F8 = var_A0.Item(var_A0)
  loc_13BDA09:   var_A4 = var_A4.Value
  loc_13BDA42:   var_11C = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_13BDA70:   var_13C = (1 + Format(CStr(var_DC), "0000"))
  loc_13BDA7B:   global_68 = CStr(var_13C)
  loc_13BDA90: Else
  loc_13BDAAD:   var_A0 = Me.Fields.Item("Code")
  loc_13BDAB5:   var_CC = var_A0.Value
  loc_13BDAC4:   global_68 = CStr(var_CC)
  loc_13BDAD5: End If
  loc_13BDAE3: unk_43AF71.BeginTrans var_AC
  loc_13BDAEC: Set var_9C = Me.TopCtrl1
  loc_13BDAF2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(&HFF)
  loc_13BDB07: If (1 = "Add") Then
  loc_13BDB21:   var_A8 = "Insert Into Godownmast(Code,Name,ShortName,U_Name,U_EntDt,U_AE,site_code,logsite_code,SysYN) Values ('" & global_68
  loc_13BDB28:   var_E4 = var_A8 & "','"
  loc_13BDB39:   Set var_9C = Me.Txt
  loc_13BDB3F:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0, var_E0, var_E4, var_1CC)
  loc_13BDB47:   -1 = var_A0.Text
  loc_13BDB57:   var_14C = var_FC & var_E0 & "','"
  loc_13BDB68:   Set var_A4 = Me.Txt
  loc_13BDB6E:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_E8, var_144)
  loc_13BDB76:   var_14C = var_E8.Text
  loc_13BDB94:   var_DC = CVar(var_11C & var_144 & "','" & MemVar_1F920C8 & "',") 'String
  loc_13BDB9A:   Proc_6_104_ED5D18(var_CC, var_DC)
  loc_13BDBDF:   unk_43AF71.Execute CStr(var_DC & var_CC & ",'A','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "','N')"), , 
  loc_13BDC20: Else
  loc_13BDC3E:   Set var_9C = Me.Txt
  loc_13BDC44:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0, var_A8, "Update GodownMast Set Name='")
  loc_13BDC4C:   var_1CC = var_A0.Text
  loc_13BDC55:   var_E0 = -1 & var_A8
  loc_13BDC5C:   var_140 = var_E0 & "',shortname='"
  loc_13BDC6D:   Set var_A4 = Me.Txt
  loc_13BDC73:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_E8, var_E4)
  loc_13BDC7B:   var_140 = var_E8.Text
  loc_13BDCA6:   Proc_6_104_ED5D18(var_CC)
  loc_13BDCB2:   var_BC = ",U_AE='E',Site_Code='"
  loc_13BDCCA:   var_178 = CVar(var_FC & var_E4 & "'," & "U_Name='" & MemVar_1F920C8 & "',U_EntDt=") & var_CC & var_BC & CVar(MemVar_1F92070) & "' Where Code='" 
  loc_13BDCEE:   unk_43AF71.Execute CStr(var_178 & CVar(global_68) & "'"), , 
  loc_13BDD2A: End If
  loc_13BDD30: unk_43AF71.CommitTrans
  loc_13BDD40: var_8A = 0
  loc_13BDD4E: Me.Requery -1
  loc_13BDD5E: Me.Requery -1
  loc_13BDD88: Me.Find "SearchCode ='" & global_68 & "'", 0, 1
  loc_13BDD98: Set var_9C = Me.TopCtrl1
  loc_13BDD9E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_BC)
  loc_13BDDB3: If (var_8A = "Add") Then
  loc_13BDDB6:   Call TopCtrl1_UnknownEvent_11()
  loc_13BDDBB:   Exit Sub
  loc_13BDDBC: End If
  loc_13BDDDF: Call Proc_87_30_E8FB14(Proc_5_1_100CB50("INI", Me))
  loc_13BDDEA: Call Proc_87_31_E84EF8(global_60)
  loc_13BDDF4: Set var_88 = Nothing
  loc_13BDDF7: Exit Sub
  loc_13BDDF8: ' Referenced from: 13BD4E8
  loc_13BDDFE: If (var_8A = &HFF) Then
  loc_13BDE07:   unk_43AF71.RollbackTrans
  loc_13BDE0C: End If
  loc_13BDE0C: Proc_6_60_E62BC4()
  loc_13BDE11: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EBB818
  'Data Table: 43AF60
  loc_EBB784: On Error Goto loc_EBB80F
  loc_EBB7BE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBB7E4:   Call Proc_87_30_E8FB14(Proc_5_1_100CB50("INI", Me))
  loc_EBB7EF:   Call Proc_87_31_E84EF8(global_60)
  loc_EBB7F4:   Call Proc_87_29_F7D2B0()
  loc_EBB7FD:   Set var_110 = Me.DGMaster
  loc_EBB80E: End If
  loc_EBB80E: Exit Sub
  loc_EBB80F: ' Referenced from: EBB784
  loc_EBB80F: Proc_6_60_E62BC4(DGMaster.DispID_8001)
  loc_EBB814: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EC7730
  'Data Table: 43AF60
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F920E4 As String
  loc_EC7690: On Error Goto loc_EC7728
  loc_EC76AA: If (Me.RecordCount <= 0) Then
  loc_EC76B3:   var_B8 = "Information"
  loc_EC76CE:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC76DE:   Exit Sub
  loc_EC76DF: End If
  loc_EC76ED: MemVar_1F920E4 = "Select G.Code as SearchCode,G.Name,G.shortname FROM GODOWNMAST g Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and SysYN<>'Y' or SysYN is Null Order by G.Name"
  loc_EC76FA: MemVar_1F92120 = Me
  loc_EC7707: Proc_6_126_F1BCC0("2000,1000")
  loc_EC7722: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC7727: Exit Sub
  loc_EC7728: ' Referenced from: EC7690
  loc_EC7728: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC772D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1C '1011E44
  'Data Table: 43AF60
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim unk_43AF71 As Connection15
  Dim var_D2 As Integer
  Dim var_B8 As Variant
  loc_1011C38: On Error Goto loc_1011E3D
  loc_1011C44: var_A4 = Me.RecordCount
  loc_1011C52: If (var_A4 <= 0) Then
  loc_1011C55:   Exit Sub
  loc_1011C56: End If
  loc_1011C64: var_88 = "Select * FROM GodownMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and SysYN<>'Y' or SysYN is Null Order by Name"
  loc_1011C72: If (var_88 = vbNullString) Then
  loc_1011C75:   Exit Sub
  loc_1011C76: End If
  loc_1011C8C: unk_43AF71.Execute var_88, var_C8, -1
  loc_1011CB6: Set var_CC = var_CC 
  loc_1011CC2: var_D2 = CreateFieldDefFile(var_CC, MemVar_1F920B4 & "\Godown.ttx")
  loc_1011CCC: Set var_9C = var_CC
  loc_1011CD2: var_B8 = CVar(var_D2) 'Integer
  loc_1011CD5: var_98 = var_B8 'Variant
  loc_1011CF1: var_A8 = MemVar_1F920B4 & "\GODOWN.RPT"
  loc_1011CFA: Call 0.Method_arg_1C (var_A8, var_B8, var_CC)
  loc_1011D05: MemVar_1F921E4 = var_CC
  loc_1011D20: Call 0.Method_arg_90 (var_CC, var_A4, var_9E, 1)
  loc_1011D28: Call 0.Method_arg_24 (var_D2, &HFF)
  loc_1011D34: For var_D6 =  To CInt(var_A4): var_CC = var_D6 'Integer
  loc_1011D4D:   Call 0.Method_arg_90 (var_CC, CLng(var_9E))
  loc_1011D55:   Call 0.Method_arg_20 (var_DC)
  loc_1011D5D:   Call 0.Method_arg_30 (var_A8)
  loc_1011D77:   If (var_A8 = "Title") Then
  loc_1011D8D:     Call 0.Method_arg_90 (var_CC, CLng(var_9E))
  loc_1011D95:     Call 0.Method_arg_20 (var_DC)
  loc_1011D9D:     Call 0.Method_arg_38 ("'Godown List'")
  loc_1011DA9:   End If
  loc_1011DAC: Next var_D6 'Integer
  loc_1011DCA: Call 0.Method_arg_64 (var_CC, CVar(var_9C))
  loc_1011DD2: Call 0.Method_arg_2C (var_F0)
  loc_1011DE0: Call 0.Method_arg_150 (var_100)
  loc_1011DEB: Call 0.Method_arg_50 (var_A8)
  loc_1011DF5: Set var_DC = Nothing
  loc_1011E0F: Set var_CC = MemVar_1F921E4 
  loc_1011E1B: Proc_6_99_1483714(var_CC, 0, var_A8)
  loc_1011E26: MemVar_1F921E4 = var_CC
  loc_1011E39: Set var_9C = Nothing
  loc_1011E3C: Exit Sub
  loc_1011E3D: ' Referenced from: 1011C38
  loc_1011E3D: Proc_6_60_E62BC4(&HFF)
  loc_1011E42: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E0B31C
  'Data Table: 43AF60
  Dim Me As Recordset15
  loc_E0B313: Me.Requery -1
  loc_E0B318: Exit Sub
End Sub

Private Sub Form_Load() '10BEAF0
  'Data Table: 43AF60
  Dim var_A0 As Variant
  Dim var_C4 As Variant
  Dim var_E8 As Variant
  Dim var_F0 As DataGrid
  Dim var_F4 As TextBox
  Dim var_FC As DataGrid
  Dim var_B4 As String
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  loc_10BE814: On Error Goto loc_10BEAE9
  loc_10BE82D: Proc_6_23_DFBA28(Me, 0)
  loc_10BE83F: Set var_8C = Me.TopCtrl1
  loc_10BE845: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_10BE853: Call 0.Method_arg_50 (var_B4)
  loc_10BE863: Set var_8C = Me.TopCtrl1
  loc_10BE869: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000F(CVar(var_B4))
  loc_10BE872: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_0()
  loc_10BE88F: Set var_8C = Me.Txt
  loc_10BE895: Call 0.Method_Form_Load0 (CInt(0), var_E8)
  loc_10BE8B4: Me.DGHelp.Left = CVar(var_E8.Left)
  loc_10BE8D0: Set var_F0 = Me.Txt
  loc_10BE8D6: Call 0.Method_Form_Load0 (CInt(0), var_F4)
  loc_10BE8F1: Set var_8C = Me.Txt
  loc_10BE8F7: Call 0.Method_Form_Load0 (CInt(0), var_E8)
  loc_10BE8FF: var_EC = var_E8.Top
  loc_10BE90F: var_A0 = CVar(((var_EC + var_F4.Height) + CDbl(&H1E))) 'Single
  loc_10BE918: Set var_FC = Me.DGHelp
  loc_10BE91E: var_FC.Top = CVar(var_E8.Left)
  loc_10BE94C: Me.var_FC.CursorLocation = 3
  loc_10BE976: var_C4 = CVar("Select Code,Name From GodownMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and SysYN<>'Y' or SysYN is Null Order by Name") 'String
  loc_10BE994: CVarUnk
  loc_10BE999: VerifyVarObj
  loc_10BE99F: Set var_8C = Me.DGHelp
  loc_10BE9A5: LateIdStAd
  loc_10BE9CF: Me.DGHelp.CursorLocation = 3
  loc_10BE9F9: var_C4 = CVar("Select G.*, G.Code as SearchCode From GodownMast G Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and SysYN<>'Y' or SysYN is Null Order by G.Name") 'String
  loc_10BEA03: r_C4, CVar(MemVar_1F92044), 2 var_C4, CVar(MemVar_1F92044), 2
  loc_10BEA17: CVarUnk
  loc_10BEA1C: VerifyVarObj
  loc_10BEA22: Set var_8C = Me.DGMaster
  loc_10BEA28: LateIdStAd
  loc_10BEA59: Call Proc_87_30_E8FB14(Proc_5_1_100CB50("INI", Me, New, Me, New, 3), -1, Me)
  loc_10BEA64: Call Proc_87_29_F7D2B0(New, 3)
  loc_10BEA7B: Me.DGMaster.Left = CVar(CDbl(0))
  loc_10BEA96: Me.DGMaster.Top = CVar(CDbl(1230))
  loc_10BEAA8: var_C4 = Me.DGMaster.Top
  loc_10BEAB7: Call 0.Method_Me8 (var_EC, var_C4)
  loc_10BEACA: var_A0 = CVar(((var_EC - CDbl(400)) - CDbl(var_C4))) 'Single
  loc_10BEAD9: Me.DGMaster.Height = CVar(CDbl(1230))
  loc_10BEAE8: Exit Sub
  loc_10BEAE9: ' Referenced from: 10BE814
  loc_10BEAE9: Proc_6_60_E62BC4(-1)
  loc_10BEAEE: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2AED8
  'Data Table: 43AF60
  loc_E2AEBB: Set global_60 = Nothing
  loc_E2AECD: Set global_56 = Nothing
  loc_E2AED4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2AE20
  'Data Table: 43AF60
  loc_E2ADF8: On Error Goto loc_E2AE18
  loc_E2AE0F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2AE17: Exit Sub
  loc_E2AE18: ' Referenced from: E2ADF8
  loc_E2AE18: Proc_6_60_E62BC4(Shift)
  loc_E2AE1D: Exit Sub
End Sub

Private Sub DGMaster_UnknownEvent_1A 'EEB318
  'Data Table: 43AF60
  Dim Me As Recordset15
  loc_EEB262: Set global_60 = New 
  loc_EEB274: Me.Recordset15.CursorLocation = 3
  loc_EEB28A: Set var_88 = Me.DGMaster
  loc_EEB2D6: Me.Open CVar("Select G.*, G.Code as SearchCode From GodownMast G Order by " & DGMaster.DispID_69.Item(CVar(KeyCode)).DataField), CVar(MemVar_1F92044), 2
  loc_EEB2F7: CVarUnk
  loc_EEB2FC: VerifyVarObj
  loc_EEB302: Set var_88 = Me.DGMaster
  loc_EEB308: LateIdStAd
  loc_EEB316: Exit Sub
End Sub

Private Sub DGMaster_UnknownEvent_22 'E46414
  'Data Table: 43AF60
  loc_E463EC: Set var_88 = Me.TopCtrl1
  loc_E463F2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_E46407: If CBool( <> "Browse") Then
  loc_E4640A:   Exit Sub
  loc_E4640B: End If
  loc_E4640B: Call Proc_87_29_F7D2B0()
  loc_E46410: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F4D264
  'Data Table: 43AF60
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4D15B: Me.DGHelp.Visible = False
  loc_F4D17A: If (Me.RecordCount > 0) Then
  loc_F4D1B9:   Set var_B4 = Me.Txt
  loc_F4D1BF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4D1C7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4D1FA:   var_B0 = Me.Fields.Item("Name")
  loc_F4D219:   Set var_B4 = Me.Txt
  loc_F4D21F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4D227:   var_B8.Text = CStr(var_B0.Value)
  loc_F4D23D: End If
  loc_F4D248: Set var_A8 = Me.Txt
  loc_F4D24E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F4D256: var_B0.SetFocus
  loc_F4D262: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E736CC
  'Data Table: 43AF60
  loc_E7368A: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E736A1: Set var_8C = Me.FGPoint
  loc_E736BD: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0))
  loc_E736CB: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EAC2C4
  'Data Table: 43AF60
  Dim Me As Recordset15
  loc_EAC242: Set var_88 = Me.Txt
  loc_EAC248: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EAC256: Proc_6_74_E226B0(var_8C)
  loc_EAC262: Call Proc_87_31_E84EF8(var_8C)
  loc_EAC275: If (Index = CInt(0)) Then
  loc_EAC28F:   If (Me.RecordCount > 0) Then
  loc_EAC29D:     Set var_8C = Me.FGPoint
  loc_EAC2B5:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_EAC2C3:   End If
  loc_EAC2C3: End If
  loc_EAC2C3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FC902C
  'Data Table: 43AF60
  Dim Me As Recordset15
  loc_FC8E86: If (CLng(Shift) = &H1B) Then
  loc_FC8E89:   Call Proc_87_31_E84EF8()
  loc_FC8E8E:   Exit Sub
  loc_FC8E8F: End If
  loc_FC8E9D: If (KeyCode = CInt(0)) Then
  loc_FC8EBD:   Set var_9C = Me.FGPoint
  loc_FC8EEF:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_FC8F5C:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FC8F63:     Set var_9C = Me.DGHelp
  loc_FC8F82:     Proc_6_138_106D6F8(var_9C, global_56, KeyCode, Me.FGPoint, 0)
  loc_FC8F90:   End If
  loc_FC8F90: End If
  loc_FC8FAC: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FC8FCD:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(1))) Then
  loc_FC8FD6:     Call Txt_Validate(KeyCode)
  loc_FC8FE1:     If (var_86 = &HFF) Then
  loc_FC8FE4:       Exit Sub
  loc_FC8FE5:     End If
  loc_FC8FE8:     Call Proc_87_32_E913A0(KeyCode, var_86, 1)
  loc_FC8FED:     Exit Sub
  loc_FC8FEE:   End If
  loc_FC9003:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FC900C:     Proc_6_75_E527CC(Shift, arg_14, var_9C)
  loc_FC9011:   End If
  loc_FC901B:   If (CLng(Shift) = &H26) Then
  loc_FC9024:     Proc_6_76_E52838(Shift, arg_14)
  loc_FC9029:   End If
  loc_FC9029: End If
  loc_FC9029: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E3D818
  'Data Table: 43AF60
  Dim arg_10 As Integer
  loc_E3D7F2: Proc_6_133_E7EF78(var_94)
  loc_E3D807: If (CInt(var_94) = &HD) Then
  loc_E3D80C:   arg_10 = 0
  loc_E3D80F: End If
  loc_E3D812: Proc_6_58_E054C0(arg_10, arg_10)
  loc_E3D817: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC0450
  'Data Table: 43AF60
  loc_EC03C2: If (KeyCode = CInt(0)) Then
  loc_EC03E1:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC03EE:     var_A4 = "Name"
  loc_EC040D:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_56)
  loc_EC043F:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC044D:   End If
  loc_EC044D: End If
  loc_EC044D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46A94
  'Data Table: 43AF60
  loc_E46A72: Set var_88 = Me.Txt
  loc_E46A78: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46A86: Proc_6_73_E22704(var_8C)
  loc_E46A92: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1206C38
  'Data Table: 43AF60
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_C4 As TextBox
  Dim unk_43AF71 As Connection15
  Dim var_D4 As Recordset15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  Dim arg_10 As Integer
  loc_120678F: var_86 = Cancel
  loc_120679A: If (var_86 = CInt(0)) Then
  loc_12067B4:   If (Me.RecordCount = 0) Then
  loc_12067B7:     Exit Sub
  loc_12067B8:   End If
  loc_12067BC:   Set var_90 = Me.TopCtrl1
  loc_12067C2:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_86)
  loc_12067D7:   If ( = "Add") Then
  loc_1206807:     Set var_90 = Me.Txt
  loc_120680D:     Call 0.Method_Txt_Validate0 (CInt(0), var_C4, var_C8, "Select Count(*) From GodownMast Where Name='", var_B0, -1)
  loc_1206815:     var_D4 = var_C4.Text
  loc_120682E:     unk_43AF71.Execute var_D8 & var_C8 & "'", 0, var_EC
  loc_120683E:      = var_D8.Item()
  loc_1206846:      = var_EC.Value
  loc_1206873:     If (var_D4.Fields > 0) Then
  loc_1206881:       var_C0 = "Information"
  loc_1206891:       var_B0 = "Duplicate Godown Name"
  loc_1206897:       MsgBox(var_B0, &H40, var_C0, var_10C, var_12C)
  loc_12068B2:       Set var_90 = Me.Txt
  loc_12068B8:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_12068C0:       var_C4.SetFocus
  loc_12068CE:       arg_10 = &HFF
  loc_12068D1:       Exit Sub
  loc_12068D2:     End If
  loc_12068D5:   Else
  loc_1206902:     Set var_90 = Me.Txt
  loc_1206908:     Call 0.Method_Txt_Validate0 (CInt(0), var_C4, var_C8, "Select Count(*) From GodownMast Where Name='", var_B0, -1, var_D4)
  loc_1206910:     var_D8 = var_C4.Text
  loc_120693A:     unk_43AF71.Execute 0 & var_C8 & "' And Name<>'" & global_64 & "'", var_EC, var_C0
  loc_1206942:     arg_10 = var_D4.Fields
  loc_120694A:      = var_D8.Item(var_C4)
  loc_1206952:      = var_EC.Value
  loc_1206983:     If (var_C0 > 0) Then
  loc_12069A1:       var_B0 = "Duplicate Godown Name"
  loc_12069A7:       MsgBox(var_B0, &H40, "Information", var_10C, var_12C)
  loc_12069C2:       Set var_90 = Me.Txt
  loc_12069C8:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_12069D0:       var_C4.SetFocus
  loc_12069DE:       arg_10 = &HFF
  loc_12069E1:       Exit Sub
  loc_12069E2:     End If
  loc_12069E2:   End If
  loc_12069E5: Else
  loc_12069ED:   If (var_86 = CInt(1)) Then
  loc_1206A07:     If (Me.RecordCount = 0) Then
  loc_1206A0A:       Exit Sub
  loc_1206A0B:     End If
  loc_1206A0F:     Set var_90 = Me.TopCtrl1
  loc_1206A15:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(arg_10)
  loc_1206A2A:     If (var_C4 = "Add") Then
  loc_1206A5A:       Set var_90 = Me.Txt
  loc_1206A60:       Call 0.Method_Txt_Validate0 (CInt(1), var_C4, var_C8, "Select Count(*) From GodownMast Where shortName='", var_B0, -1)
  loc_1206A68:       var_D4 = var_C4.Text
  loc_1206A81:       unk_43AF71.Execute var_D8 & var_C8 & "'", 0, var_EC
  loc_1206A91:        = var_D8.Item()
  loc_1206A99:        = var_EC.Value
  loc_1206AC6:       If (var_D4.Fields > 0) Then
  loc_1206AD4:         var_C0 = "Information"
  loc_1206AE4:         var_B0 = "Duplicate Short Name"
  loc_1206AEA:         MsgBox(var_B0, &H40, var_C0, var_10C, var_12C)
  loc_1206B05:         Set var_90 = Me.Txt
  loc_1206B0B:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_1206B13:         var_C4.SetFocus
  loc_1206B21:         arg_10 = &HFF
  loc_1206B24:         Exit Sub
  loc_1206B25:       End If
  loc_1206B28:     Else
  loc_1206B55:       Set var_90 = Me.Txt
  loc_1206B5B:       Call 0.Method_Txt_Validate0 (CInt(1), var_C4, var_C8, "Select Count(*) From GodownMast Where shortName='", var_B0, -1, var_D4)
  loc_1206B8D:       unk_43AF71.Execute 0 & var_C8 & "' And shortName<>'" & global_52 & "'", var_EC, var_C0
  loc_1206B95:       arg_10 = var_D4.Fields
  loc_1206B9D:        = var_C4.Text.Item(var_C4)
  loc_1206BA5:        = var_EC.Value
  loc_1206BD6:       If (var_C0 > 0) Then
  loc_1206BFA:         MsgBox("Duplicate Short Name", &H40, "Information", var_10C, var_12C)
  loc_1206C15:         Set var_90 = Me.Txt
  loc_1206C1B:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_1206C23:         var_C4.SetFocus
  loc_1206C31:         arg_10 = &HFF
  loc_1206C34:         Exit Sub
  loc_1206C35:       End If
  loc_1206C35:     End If
  loc_1206C35:   End If
  loc_1206C35: End If
  loc_1206C35: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3D694
  'Data Table: 43AF60
  loc_E3D688: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3D68B:   Call DGHelp_UnknownEvent_9()
  loc_E3D690: End If
  loc_E3D690: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E932A8
  'Data Table: 43AF60
  Dim Me As Recordset15
  loc_E93236: On Error Goto loc_E9329F
  loc_E9323F: Me.MoveFirst
  loc_E93269: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93291: Proc_5_0_110649C(&HFF, Me, global_60)
  loc_E93299: Call Proc_87_29_F7D2B0(0)
  loc_E9329E: Exit Sub
  loc_E9329F: ' Referenced from: E93236
  loc_E9329F: Proc_6_60_E62BC4(var_A0)
  loc_E932A4: Exit Sub
End Sub

Public Sub Proc_87_28_EB41CC
  'Data Table: 43AF60
  Dim var_98 As TextBox
  loc_EB4136: global_64 = vbNullString
  loc_EB4140: global_52 = vbNullString
  loc_EB4152: Set var_8C = Me.Txt
  loc_EB4158: Call 0.Method_Proc_87_28_EB41CCC (var_8E, var_86)
  loc_EB4168: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB417E:   Set var_8C = Me.Txt
  loc_EB4184:   Call 0.Method_Proc_87_28_EB41CC0 (CInt(var_86), var_98)
  loc_EB418C:   var_98.Text = vbNullString
  loc_EB41A8:   Set var_8C = Me.Txt
  loc_EB41AE:   Call 0.Method_Proc_87_28_EB41CC0 (CInt(var_86), var_98)
  loc_EB41B6:   var_98.Tag = vbNullString
  loc_EB41C5: Next var_92 'Byte
  loc_EB41CB: Exit Sub
End Sub

Public Sub Proc_87_29_F7D2B0
  'Data Table: 43AF60
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  loc_F7D168: On Error Goto loc_F7D2A9
  loc_F7D182: If (Me.RecordCount > 0) Then
  loc_F7D1C1:   Set var_A4 = Me.Txt
  loc_F7D1C7:   Call 0.Method_Proc_87_29_F7D2B00 (CInt(0), var_A8)
  loc_F7D1CF:   var_A8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F7D21E:   Set var_A4 = Me.Txt
  loc_F7D224:   Call 0.Method_Proc_87_29_F7D2B00 (CInt(0), var_A8)
  loc_F7D22C:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_F7D279:   Set var_A4 = Me.Txt
  loc_F7D27F:   Call 0.Method_Proc_87_29_F7D2B00 (CInt(1), var_A8)
  loc_F7D287:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ShortName")))
  loc_F7D29E: Else
  loc_F7D29E:   Call Proc_87_28_EB41CC()
  loc_F7D2A3: End If
  loc_F7D2A3: Call Proc_87_31_E84EF8()
  loc_F7D2A8: Exit Sub
  loc_F7D2A9: ' Referenced from: F7D168
  loc_F7D2A9: Proc_6_60_E62BC4()
  loc_F7D2AE: Exit Sub
End Sub

Public Sub Proc_87_30_E8FB14(arg_C) 'E8FB14
  'Data Table: 43AF60
  Dim var_98 As TextBox
  Dim var_8C As DataGrid
  loc_E8FAA6: Set var_8C = Me.Txt
  loc_E8FAAC: Call 0.Method_Proc_87_30_E8FB14C (var_8E, var_86)
  loc_E8FABC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E8FAD2:   Set var_8C = Me.Txt
  loc_E8FAD8:   Call 0.Method_Proc_87_30_E8FB140 (CInt(var_86), var_98)
  loc_E8FAE0:   var_98.Enabled = arg_C
  loc_E8FAEF: Next var_92 'Byte
  loc_E8FB08: Me.DGMaster.Enabled = Not(arg_C)
  loc_E8FB13: Exit Sub
End Sub

Public Sub Proc_87_31_E84EF8
  'Data Table: 43AF60
  Dim arg_29FF As Variant
  loc_E84EA4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E84EB6:   Me.DGHelp.Visible = False
  loc_E84EBE: End If
  loc_E84EDA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E84EEC:   Me.FGPoint.Visible = False
  loc_E84EF4: End If
  loc_E84EF4: Exit Sub
  loc_E84EF5: arg_29FF = CVar() 'Integer
End Sub

Public Sub Proc_87_32_E913A0(arg_C) 'E913A0
  'Data Table: 43AF60
  Dim var_10C As TextBox
  loc_E91334: Call Proc_87_31_E84EF8()
  loc_E91370: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E91373:   Call TopCtrl1_UnknownEvent_19()
  loc_E9137B: Else
  loc_E91385:   Set var_108 = Me.Txt
  loc_E9138B:   Call 0.Method_Proc_87_32_E913A00 (arg_C)
  loc_E91393:   var_10C.SetFocus
  loc_E9139F: End If
  loc_E9139F: Exit Sub
End Sub
