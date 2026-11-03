VERSION 5.00
Begin VB.Form FrmItemIssuedOnCleaning
  Caption = "Item Issued On Cleaning"
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
  ClientWidth = 7185
  ClientHeight = 7710
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
  Begin DataGrid DGItem
    Left = 2880
    Top = 5325
    Width = 4155
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGDepart
    Left = 4770
    Top = 4005
    Width = 4155
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
End

Attribute VB_Name = "FrmItemIssuedOnCleaning"

Private global_68 As Integer

Private Sub TopCtrl1_UnknownEvent_11 'F0A020
  'Data Table: 47AF10
  Dim var_8C As Label
  Dim var_D4 As Variant
  loc_F09F38: On Error Goto loc_F0A018
  loc_F09F5E: Call Proc_223_45_EED84C(Proc_5_1_100CB50("ADD", Me))
  loc_F09F69: Call Proc_223_43_F2A994(global_56)
  loc_F09F7B: (vbNullString).Caption = 
  loc_F09F90: Set var_8C = (1)
  loc_F09FA2: Set var_8C = (FrmList.DispID_4)
  loc_F09FBB: Set var_D4 = (CVar(CStr(CLng(FrmList.DispID_4))))
  loc_F09FE4: Set var_8C = var_D4.Name(1)
  loc_F09FFD: Set var_8C = var_D4(CInt(3))
  loc_F0A003: Call 0.Method_TopCtrl1_UnknownEvent_110 (FrmList.DispID_6)
  loc_F0A00B: var_D4.SetFocus
  loc_F0A017: Exit Sub
  loc_F0A018: ' Referenced from: F09F38
  loc_F0A018: Proc_6_60_E62BC4()
  loc_F0A01D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'F0A39C
  'Data Table: 47AF10
  Dim Me As Recordset15
  Dim var_C8 As TextBox
  loc_F0A2BC: On Error Goto loc_F0A395
  loc_F0A2CD: If (Proc_183_55_FE7900(global_56) = &HFF) Then
  loc_F0A2D0:   Exit Sub
  loc_F0A2D1: End If
  loc_F0A2E8: If (Me.RecordCount > 0) Then
  loc_F0A30E:   Call Proc_223_45_EED84C(Proc_5_1_100CB50("EDIT", Me))
  loc_F0A31D:   Set var_90 = (global_56)
  loc_F0A338:   If (FrmList.DispID_6803000E = "Edit") Then
  loc_F0A346:     Set var_90 = var_C8(CInt(3))
  loc_F0A34C:     Call 0.Method_TopCtrl1_UnknownEvent_120 ()
  loc_F0A354:     var_C8.SetFocus
  loc_F0A360:   End If
  loc_F0A363: Else
  loc_F0A384:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F0A394: End If
  loc_F0A394: Exit Sub
  loc_F0A395: ' Referenced from: F0A2BC
  loc_F0A395: Proc_6_60_E62BC4()
  loc_F0A39A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '1010668
  'Data Table: 47AF10
  Dim unk_47AF1F As Connection15
  Dim Me As Recordset15
  Dim var_120 As TextBox
  Dim var_138 As String
  Dim var_130 As TextBox
  Dim var_B4 As Variant
  loc_1010478: On Error Goto loc_1010619
  loc_1010489: If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_101048C:   Exit Sub
  loc_101048D: End If
  loc_10104C4: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_10104D0:   unk_47AF1F.BeginTrans var_118
  loc_10104DE:   var_B4 = Me.Bookmark
  loc_10104E6:   var_94 = var_B4 'Variant
  loc_1010508:   Set var_11C = var_120(CInt(3))
  loc_101050E:   Call 0.Method_TopCtrl1_UnknownEvent_130 (var_124, "Delete From DepartWiseItemIssueList Where FrDepart='", var_B4)
  loc_1010516:   -1 = var_120.Tag
  loc_1010526:   var_138 = var_144 & var_124 & "' And ToDepart='"
  loc_1010537:   Set var_12C = var_130(CInt(4))
  loc_101053D:   Call 0.Method_TopCtrl1_UnknownEvent_130 (var_134)
  loc_1010545:   var_138 = var_130.Tag
  loc_101055E:   unk_47AF1F.Execute var_134 & "'", , 
  loc_1010588:   unk_47AF1F.CommitTrans
  loc_1010598:   Me.Requery -1
  loc_10105B8:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10105C5:     Me.Bookmark = var_94
  loc_10105CD:   Else
  loc_10105E1:     If (Me.EOF = 0) Then
  loc_10105EA:       Me.MoveLast
  loc_10105EF:     End If
  loc_10105EF:   End If
  loc_10105EF:   Call Proc_223_44_1217BA4()
  loc_1010610:   Proc_5_0_110649C(&HFF, Me)
  loc_1010618: End If
  loc_1010618: Exit Sub
  loc_1010619: ' Referenced from: 1010478
  loc_101061F: unk_47AF1F.RollbackTrans
  loc_101062C: Set var_11C = Err()
  loc_1010632: Call 0.Method_arg_2C (var_124, global_56)
  loc_1010653: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_1010666: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E18814
  'Data Table: 47AF10
  loc_E18809: Me.Global.Unload Me
  loc_E18811: Exit Sub
  loc_E18812: Set var_678C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E37C38
  'Data Table: 47AF10
  loc_E37C28: Proc_5_0_110649C(&HFF, Me)
  loc_E37C30: Call Proc_223_44_1217BA4(global_56)
  loc_E37C35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E37E18
  'Data Table: 47AF10
  loc_E37E08: Proc_5_0_110649C(&HFF, Me)
  loc_E37E10: Call Proc_223_44_1217BA4(global_56)
  loc_E37E15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E37DB8
  'Data Table: 47AF10
  loc_E37DA8: Proc_5_0_110649C(&HFF, Me)
  loc_E37DB0: Call Proc_223_44_1217BA4(global_56)
  loc_E37DB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E37CF8
  'Data Table: 47AF10
  loc_E37CE8: Proc_5_0_110649C(&HFF, Me)
  loc_E37CF0: Call Proc_223_44_1217BA4(global_56)
  loc_E37CF5: Exit Sub
  loc_E37CF6: Set var_6800 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '13487E8
  'Data Table: 47AF10
  Dim var_96 As Integer
  Dim var_B8 As Variant
  Dim var_A0 As TextBox
  Dim var_DC As String
  Dim var_E0 As TextBox
  Dim unk_47AF1F As Connection15
  Dim var_F4 As Recordset15
  Dim var_F8 As Variant
  Dim var_10C As Field20
  Dim var_A8 As String
  Dim var_D8 As Variant
  Dim var_8E As Integer
  Dim var_384 As Double
  Dim var_38C As Double
  Dim var_E4 As String
  Dim var_208 As String
  Dim var_334 As Variant
  Dim Me As Recordset15
  loc_1348094: On Error Goto loc_13487CD
  loc_13480A7: Set var_9C = var_A0(CInt(3))
  loc_13480AD: Call 0.Method_TopCtrl1_UnknownEvent_190 (0)
  loc_13480B5: var_A8 = "From Location"
  loc_13480D6: If (Proc_6_27_EA565C(var_A0) = 0) Then
  loc_13480D9:   Exit Sub
  loc_13480DA: End If
  loc_13480E5: Set var_9C = var_A0(CInt(4))
  loc_13480EB: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8)
  loc_13480F3: var_A8 = "To Location"
  loc_1348114: If (Proc_6_27_EA565C(var_A0) = 0) Then
  loc_1348117:   Exit Sub
  loc_1348118: End If
  loc_134811C: Set var_9C = (var_A8)
  loc_1348137: If (FrmList.DispID_6803000E = "Add") Then
  loc_1348167:   Set var_9C = var_A0(CInt(3))
  loc_134816D:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8, "Select Count(*) From DepartWiseItemIssueList Where FrDepart='", var_C8, -1, var_F4)
  loc_1348175:   var_F8 = var_A0.Tag
  loc_1348196:   Set var_A4 = var_E0(CInt(4))
  loc_134819C:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_E4, 0 & var_A8 & "' And ToDepart='")
  loc_13481BD:   unk_47AF1F.Execute var_D8 & var_E4 & "'", , 
  loc_13481C5:    = var_F4.Fields
  loc_13481CD:    = var_F8.Item()
  loc_13481D5:    = var_E0.Tag.Value
  loc_13481E0:   Proc_6_39_E7C810(var_11C)
  loc_1348219:   If CBool(var_11C <> 0) Then
  loc_1348235:     MsgBox("Item List Already Exists Between Departments.", &H40, var_D8, var_11C, var_13C)
  loc_1348245:     Exit Sub
  loc_1348246:   End If
  loc_1348246: End If
  loc_134825B: Set var_9C = 1(CVar(CLng(1)))
  loc_134826C: var_A8 = CStr(FrmList.DispID_41)
  loc_134827D: If (var_A8 = vbNullString) Then
  loc_1348286:   Call 0.Method_arg_50 (var_A8)
  loc_1348294:   var_D8 = CVar(var_A8) 'String
  loc_13482A1:   var_C8 = "Please Fill Item Detail"
  loc_13482A7:   MsgBox(var_C8, &H40, var_D8, var_11C, var_13C)
  loc_13482C4:   Set var_9C = var_D8(1)
  loc_13482D6:   Set var_9C = (FrmList.DispID_A)
  loc_13482E7:   Exit Sub
  loc_13482E8: End If
  loc_13482F6: unk_47AF1F.BeginTrans var_150
  loc_1348319: Set var_9C = var_A0(CInt(3))
  loc_134831F: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8, "Delete From DepartWiseItemIssueList Where FrDepart='", var_C8, -1)
  loc_1348327: var_F4 = var_A0.Tag
  loc_1348348: Set var_A4 = var_E0(CInt(4))
  loc_134834E: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_E4, &HFF & var_A8 & "' And ToDepart='")
  loc_1348356: FrmList.DispID_8001 = var_E0.Tag
  loc_134836F: unk_47AF1F.Execute var_E4 & "'", , 
  loc_134839C: Set var_9C = 1(var_98)
  loc_13483B8: For var_154 =  To CInt((CLng(FrmList.DispID_4) - 1)):  = var_154 'Integer
  loc_13483D3:   Set var_9C = CVar(CLng(var_98))(CVar(CLng(3)))
  loc_1348406:   Set var_A0 = CVar(CLng(var_98))(CVar(CLng(9)))
  loc_1348435:   If ((CDbl(Val(CStr(FrmList.DispID_41))) <> CDbl(0)) And (CStr(FrmList.DispID_41) <> vbNullString)) Then
  loc_134844D:     Set var_9C = CVar(CLng(var_98))(CVar(CLng(0)))
  loc_134845E:     var_A8 = CStr(FrmList.DispID_41)
  loc_1348466:     var_384 = Val(var_A8)
  loc_134847E:     Set var_A0 = CVar(CLng(var_98))(CVar(CLng(9)))
  loc_134849E:     Set var_A4 = var_E0(CInt(3))
  loc_13484A4:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_1A4, FrmList.DispID_41)
  loc_13484BF:     Set var_F4 = var_F8(CInt(4))
  loc_13484C5:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_1B0)
  loc_13484CD:      = var_F8.Tag
  loc_13484E7:     Set var_10C = CVar(CLng(var_98))(CVar(CLng(3)))
  loc_1348500:     var_38C = Val(CStr(FrmList.DispID_41))
  loc_1348506:     Proc_6_104_ED5D18(var_13C)
  loc_134850F:     Set var_254 = (var_38C)
  loc_1348564:     var_DC = "Insert Into DepartWiseItemIssueList(Sno,Site_Code,Item,FrDepart,ToDepart,IssQty,U_Name,U_EntDt,U_AE,LogSite_Code) " & " VALUES ("
  loc_13485BF:     var_208 = var_DC & CStr(var_E0.Tag) & ",'" & MemVar_1F92070 & "','" & CStr(var_D8) & "','" & var_1A4 & "','" & var_1B0 & "'," & CStr(var_38C)
  loc_13485FD:     var_334 = CVar(var_208 & ",'" & MemVar_1F920C8 & "',") & var_13C & ",'" & IIf((var_274 = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) 
  loc_1348614:     unk_47AF1F.Execute CStr(var_334 & "')"), var_378, -1
  loc_1348684:     var_96 = &HFF
  loc_1348687:   End If
  loc_134868A: Next var_154 'Integer
  loc_1348695: If (var_96 = 0) Then
  loc_13486A6:   var_B8 = "Nil Details Can't Be Saved"
  loc_13486B1:   MsgBox(var_B8, &H40, var_D8, var_11C, var_13C)
  loc_13486C1:   Exit Sub
  loc_13486C2: End If
  loc_13486C8: unk_47AF1F.CommitTrans
  loc_13486CF: var_8E = 0
  loc_13486E0: Set var_9C = var_A0(CInt(3))
  loc_13486E6: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8)
  loc_13486EE: var_8E = var_A0.Tag
  loc_1348704: Set var_A4 = var_E0(CInt(4))
  loc_134870A: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_DC)
  loc_1348712: var_A8 = var_E0.Tag
  loc_134873B: Me.Requery -1
  loc_1348765: Me.Find "SearchCode ='" & var_DC & "'", 0, 1
  loc_1348771: Call Proc_223_44_1217BA4(var_B8)
  loc_134877A: Set var_9C = ()
  loc_1348795: If (FrmList.DispID_6803000E = "Add") Then
  loc_1348798:   Call TopCtrl1_UnknownEvent_11()
  loc_134879D:   Exit Sub
  loc_134879E: End If
  loc_13487C1: Call Proc_223_45_EED84C(Proc_5_1_100CB50("INI", Me))
  loc_13487CC: Exit Sub
  loc_13487CD: ' Referenced from: 1348094
  loc_13487D3: If (var_8E = &HFF) Then
  loc_13487DC:   unk_47AF1F.RollbackTrans
  loc_13487E1: End If
  loc_13487E1: Proc_6_60_E62BC4(global_56)
  loc_13487E6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EBDC30
  'Data Table: 47AF10
  loc_EBDB9C: On Error Goto loc_EBDC27
  loc_EBDBD6: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EBDBE5:   Set var_10C = Me
  loc_EBDBFC:   Call Proc_223_45_EED84C(Proc_5_1_100CB50("INI", var_10C))
  loc_EBDC07:   Call Proc_223_44_1217BA4(global_56)
  loc_EBDC0F: Else
  loc_EBDC15:   Call 0.Method_arg_1E8 (var_10C)
  loc_EBDC1D:   Call var_10C.SetFocus
  loc_EBDC26: End If
  loc_EBDC26: Exit Sub
  loc_EBDC27: ' Referenced from: EBDB9C
  loc_EBDC27: Proc_6_60_E62BC4()
  loc_EBDC2C: Exit Sub
  loc_EBDC2D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EC83A8
  'Data Table: 47AF10
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EC8308: On Error Goto loc_EC83A0
  loc_EC8322: If (Me.RecordCount <= 0) Then
  loc_EC832B:   var_B8 = "Information"
  loc_EC8346:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC8356:   Exit Sub
  loc_EC8357: End If
  loc_EC835E: var_10C = "Select Distinct FrDepart+ToDepart as SearchCode,FrG.Name As From_Location,ToG.Name As To_Location From DepartWiseItemIssueList D Left Join GodownMast FrG ON D.FrDepart=FrG.code Left Join GodownMast ToG ON D.ToDepart=ToG.code WHERE D.LOGSITE_CODE='" & MemVar_1F92078
  loc_EC8365: MemVar_1F920E4 = var_10C & "' order by  FrDepart+ToDepart"
  loc_EC8375: Proc_6_126_F1BCC0("2500,2500")
  loc_EC8383: MemVar_1F92120 = Me
  loc_EC839A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC839F: Exit Sub
  loc_EC83A0: ' Referenced from: EC8308
  loc_EC83A0: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC83A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1C 'DFC214
  'Data Table: 47AF10
  loc_DFC210: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E3E364
  'Data Table: 47AF10
  Dim Me As Recordset15
  loc_E3E33B: Me.Requery -1
  loc_E3E34B: Me.Requery -1
  loc_E3E35B: Me.Requery -1
  loc_E3E360: Exit Sub
End Sub

Private Sub Form_Load() '104957C
  'Data Table: 47AF10
  Dim var_8C As String
  Dim var_9C As Variant
  Dim Me As Recordset15
  loc_1049310: On Error Goto loc_1049573
  loc_104932F: Me.Recordset15.CursorLocation = 3
  loc_1049352: var_8C = "Select I.Code,I.Name,I.Unit,I.IssueUnit,I.PurchRate as Rate,I.ConvRatio,I.RestCode From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_1049363: Me.Open CVar(var_8C & "' or LOGSITE_CODE='HO') And I.Type IN ('Consumables','Lenin') And I.ItemType='Store' Order by I.Name"), CVar(MemVar_1F92044), 3
  loc_1049377: CVarUnk
  loc_104937C: VerifyVarObj
  loc_1049382: Set var_88 = Me.DGItem
  loc_1049388: LateIdStAd
  loc_10493B2: Me.DGItem.CursorLocation = 3
  loc_10493D5: var_8C = "Select G.Code,G.Name From GodownMast G INNER join Depart D on (D.Code=G.Code and D.LogSite_Code=G.LogSite_Code) Where (G.LOGSITE_CODE='" & MemVar_1F92078
  loc_10493E6: Me.Open CVar(var_8C & "' or G.LOGSITE_CODE='HO') and D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name"), CVar(MemVar_1F92044), 2
  loc_10493FA: CVarUnk
  loc_10493FF: VerifyVarObj
  loc_1049405: Set var_88 = Me.DGDepart
  loc_104940B: LateIdStAd
  loc_1049435: Me.DGDepart.CursorLocation = 3
  loc_1049458: var_8C = "Select G.Code,G.Name From GodownMast G INNER join Depart D on (D.Code=G.Code and D.LogSite_Code=G.LogSite_Code) Where (G.LOGSITE_CODE='" & MemVar_1F92078
  loc_1049469: Me.Open CVar(var_8C & "' or G.LOGSITE_CODE='HO') and D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name"), CVar(MemVar_1F92044), 2
  loc_104947D: CVarUnk
  loc_1049482: VerifyVarObj
  loc_104948E: LateIdStAd
  loc_10494B8: Me.Recordset15.CursorLocation = 3
  loc_10494DB: var_8C = "Select Distinct FrDepart+ToDepart as SearchCode,D.Site_Code,D.LogSite_Code From DepartWiseItemIssueList D INNER JOIN ItemMast ON D.item=ItemMast.code And Itemmast.ItemType='Store' WHERE D.LOGSITE_CODE='" & MemVar_1F92078
  loc_10494E2: var_9C = CVar(var_8C & "' AND ItemMast.Type IN ('Consumables','Lenin') order by  FrDepart+ToDepart") 'String
  loc_10494EC: Me.Open CVar(var_8C & "' or G.LOGSITE_CODE='HO') and D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name"), CVar(MemVar_1F92044), 2
  loc_10494F7: Call Proc_223_47_11D6664(3, -1, 3(New), -1, 3(New), New)
  loc_1049514: Proc_6_23_DFBA28(Me, 5445, 7310, 3, -1)
  loc_1049528: Set var_88 = var_88(5800)
  loc_1049535: DGDepart.DispID_6803000F.left = New
  loc_1049562: Call Proc_223_45_EED84C(Proc_5_1_100CB50("INI", Me, New), 1)
  loc_104956D: Call Proc_223_44_1217BA4(-1)
  loc_1049572: Exit Sub
  loc_1049573: ' Referenced from: 1049310
  loc_1049573: Proc_6_60_E62BC4()
  loc_1049578: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5E338
  'Data Table: 47AF10
  loc_E5E2F7: Set global_56 = Nothing
  loc_E5E309: Set global_52 = Nothing
  loc_E5E31B: Set global_64 = Nothing
  loc_E5E32D: Set global_60 = Nothing
  loc_E5E334: Exit Sub
End Sub

Private Sub Form_Activate() 'E375D4
  'Data Table: 47AF10
  loc_E375B0: Set var_88 = ()
  loc_E375CB: If (CLng(CInt(DGDepart.DispID_68030010)) = &H2D) Then
  loc_E375CE:   Call TopCtrl1_UnknownEvent_1D()
  loc_E375D3: End If
  loc_E375D3: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2AC54
  'Data Table: 47AF10
  loc_E2AC2C: On Error Goto loc_E2AC4C
  loc_E2AC43: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2AC4B: Exit Sub
  loc_E2AC4C: ' Referenced from: E2AC2C
  loc_E2AC4C: Proc_6_60_E62BC4(Shift)
  loc_E2AC51: Exit Sub
End Sub

Private Sub DGToDepart_UnknownEvent_9 'F3E064
  'Data Table: 47AF10
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3DF5B: (False).Visible = 
  loc_F3DF7A: If (Me.RecordCount > 0) Then
  loc_F3DFB9:   Set var_B4 = var_B8(CInt(4))
  loc_F3DFBF:   Call 0.Method_DGToDepart_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_F3DFC7:   var_B8.Tag = 
  loc_F3DFFA:   var_B0 = Me.Fields.Item("Name")
  loc_F3E019:   Set var_B4 = var_B8(CInt(4))
  loc_F3E01F:   Call 0.Method_DGToDepart_UnknownEvent_90 (CStr(var_B0.Value))
  loc_F3E027:   var_B8.Text = 
  loc_F3E03D: End If
  loc_F3E048: Set var_A8 = var_B0(CInt(4))
  loc_F3E04E: Call 0.Method_DGToDepart_UnknownEvent_90 ()
  loc_F3E056: var_B0.SetFocus
  loc_F3E062: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F470C4
  'Data Table: 47AF10
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F46FBB: Me.DGDepart.Visible = False
  loc_F46FDA: If (Me.RecordCount > 0) Then
  loc_F47019:   Set var_B4 = var_B8(CInt(3))
  loc_F4701F:   Call 0.Method_DGDepart_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_F47027:   var_B8.Tag = 
  loc_F4705A:   var_B0 = Me.Fields.Item("Name")
  loc_F47079:   Set var_B4 = var_B8(CInt(3))
  loc_F4707F:   Call 0.Method_DGDepart_UnknownEvent_90 (CStr(var_B0.Value))
  loc_F47087:   var_B8.Text = 
  loc_F4709D: End If
  loc_F470A8: Set var_A8 = var_B0(CInt(3))
  loc_F470AE: Call 0.Method_DGDepart_UnknownEvent_90 ()
  loc_F470B6: var_B0.SetFocus
  loc_F470C2: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11EED3C
  'Data Table: 47AF10
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_C4 As Variant
  Dim var_98 As String
  Dim var_B4 As Variant
  Dim Me As Recordset15
  Dim var_9C As String
  loc_11EE8BE: Set var_88 = var_8C(Index)
  loc_11EE8C4: Call 0.Method_Txt_GotFocus0 ()
  loc_11EE8D2: Proc_6_74_E226B0(var_8C)
  loc_11EE8DE: Call Proc_223_46_EBDB64()
  loc_11EE8F1: If (Index = CInt(3)) Then
  loc_11EE8FE:   Set global_52 = New 
  loc_11EE910:   Me.Recordset15.CursorLocation = 3
  loc_11EE923:   Set var_88 = var_8C(CInt(4))
  loc_11EE929:   Call 0.Method_Txt_GotFocus0 (var_9C)
  loc_11EE931:   var_92 = var_8C.Tag
  loc_11EE954:   var_98 = "Select G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078
  loc_11EE969:   var_B4 = CVar(var_98 & "' or G.LOGSITE_CODE='HO') and G.CODE<>'" & var_9C & "' And D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name") 'String
  loc_11EE973:   Me.Open var_B4, CVar(MemVar_1F92044), 2
  loc_11EE996:   CVarUnk
  loc_11EE99B:   VerifyVarObj
  loc_11EE9A1:   Set var_88 = Me.DGDepart
  loc_11EE9A7:   LateIdStAd
  loc_11EEA09:   Call 0.Method_Txt_GotFocus0 (var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_8C(Index))
  loc_11EEA11:   global_52 = var_8C.Text
  loc_11EEA29:   If (3 Or (var_98 = vbNullString)) Then
  loc_11EEA2C:     Exit Sub
  loc_11EEA2D:   End If
  loc_11EEA3A:   Set var_88 = var_8C(Index)
  loc_11EEA40:   Call 0.Method_Txt_GotFocus0 (var_98)
  loc_11EEA48:   -1 = var_8C.Text
  loc_11EEA5A:   var_C4 = "Name"
  loc_11EEA95:   If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_11EEA9E:     Me.MoveFirst
  loc_11EEAC1:     Set var_88 = var_8C(Index)
  loc_11EEAC7:     Call 0.Method_Txt_GotFocus0 (var_98, "Name ='", 0)
  loc_11EEACF:     1 = var_8C.Text
  loc_11EEAD8:     var_9C = var_C4 & var_98
  loc_11EEAE8:     Me.Find var_9C & "'", , 
  loc_11EEAFD:   End If
  loc_11EEB00: Else
  loc_11EEB08:   If (var_92 = CInt(4)) Then
  loc_11EEB27:     Me.Recordset15.CursorLocation = 3
  loc_11EEB3A:     Set var_88 = var_8C(CInt(3))
  loc_11EEB40:     Call 0.Method_Txt_GotFocus0 (var_9C)
  loc_11EEB48:      = var_8C.Tag
  loc_11EEB6B:     var_98 = "Select G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078
  loc_11EEB80:     var_B4 = CVar(var_98 & "' or G.LOGSITE_CODE='HO') and G.CODE<>'" & var_9C & "' And D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name") 'String
  loc_11EEB8A:     Me.Open var_B4, CVar(MemVar_1F92044), 2
  loc_11EEBAD:     CVarUnk
  loc_11EEBB2:     VerifyVarObj
  loc_11EEBB8:     Set var_88 = 3(New)
  loc_11EEBBE:     LateIdStAd
  loc_11EEC1A:     Set var_88 = var_8C(Index)
  loc_11EEC20:     Call 0.Method_Txt_GotFocus0 (var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_11EEC28:     var_88 = var_8C.Text
  loc_11EEC40:     If (-1 Or (var_98 = vbNullString)) Then
  loc_11EEC43:       Exit Sub
  loc_11EEC44:     End If
  loc_11EEC51:     Set var_88 = var_8C(Index)
  loc_11EEC57:     Call 0.Method_Txt_GotFocus0 (var_98)
  loc_11EEC5F:      = var_8C.Text
  loc_11EEC71:     var_C4 = "Name"
  loc_11EECAC:     If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_11EECB5:       Me.MoveFirst
  loc_11EECD8:       Set var_88 = var_8C(Index)
  loc_11EECDE:       Call 0.Method_Txt_GotFocus0 (var_98, "Name ='", 0)
  loc_11EECE6:       1 = var_8C.Text
  loc_11EECFF:       Me.Find var_C4 & var_98 & "'", , 
  loc_11EED14:     End If
  loc_11EED17:   Else
  loc_11EED1F:     If (var_92 = CInt(2)) Then
  loc_11EED2A:       var_98 = "{Home}+{End}"
  loc_11EED30:       Proc_303_0_FB9B68(var_98)
  loc_11EED38:     End If
  loc_11EED38:   End If
  loc_11EED38: End If
  loc_11EED38: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11521B0
  'Data Table: 47AF10
  Dim var_86 As Integer
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim var_B0 As Variant
  Dim var_98 As DataGrid
  Dim var_8C As DataGrid
  loc_1151E1A: If (CLng(Shift) = &H1B) Then
  loc_1151E1D:   Call Proc_223_46_EBDB64()
  loc_1151E22:   Exit Sub
  loc_1151E23: End If
  loc_1151E31: If (KeyCode = CInt(3)) Then
  loc_1151E41:   Set var_98 = var_9C(KeyCode)
  loc_1151E47:   Call 0.Method_Txt_KeyDown0 (var_A0)
  loc_1151E4F:   var_86 = var_9C.Height
  loc_1151E61:   Set var_8C = var_90(KeyCode)
  loc_1151E67:   Call 0.Method_Txt_KeyDown0 (var_94)
  loc_1151E6F:    = var_90.Top
  loc_1151E7F:   var_B0 = CVar(((var_94 + var_A0) + CDbl(&H19))) 'Single
  loc_1151E8E:   Me.DGDepart.Top = var_B0
  loc_1151EAD:   Set var_8C = var_90(KeyCode)
  loc_1151EB3:   Call 0.Method_Txt_KeyDown0 (var_94)
  loc_1151EBB:    = var_90.Left
  loc_1151ED2:   Me.DGDepart.Left = CVar(var_94)
  loc_1151EF8:   Set var_9C = Nothing
  loc_1151F03:   Set var_98 = Nothing
  loc_1151F22:   Set var_90 = ()
  loc_1151F31:   Proc_6_69_134A198(Me.DGDepart, var_90, KeyCode, global_52, Shift)
  loc_1151F48: Else
  loc_1151F50:   If (var_86 = CInt(4)) Then
  loc_1151F60:     Set var_98 = var_9C(KeyCode)
  loc_1151F66:     Call 0.Method_Txt_KeyDown0 (var_A0, &HFF, 1)
  loc_1151F6E:     var_98 = var_9C.Height
  loc_1151F80:     Set var_8C = var_90(KeyCode)
  loc_1151F86:     Call 0.Method_Txt_KeyDown0 (var_94, var_9C)
  loc_1151F8E:     0 = var_90.Top
  loc_1151F9E:     var_B0 = CVar(((var_94 + var_A0) + CDbl(&H19))) 'Single
  loc_1151FAD:     (CVar(var_94)).Top = 
  loc_1151FCC:     Set var_8C = var_90(KeyCode)
  loc_1151FD2:     Call 0.Method_Txt_KeyDown0 (var_94)
  loc_1151FDA:      = var_90.Left
  loc_1151FF1:     (CVar(var_94)).Left = 
  loc_1152017:     Set var_9C = Nothing
  loc_1152022:     Set var_98 = Nothing
  loc_1152050:     Proc_6_69_134A198((), (), KeyCode, global_64, Shift)
  loc_1152064:   End If
  loc_1152064: End If
  loc_1152095: Set var_98 = Me.DGItem
  loc_11520BA: If ((1 And (CBool(&HFF((CBool(Me.DGDepart.Visible) = 0)).Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_11520D2:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11520DB:     Proc_6_75_E527CC(Shift, arg_14, var_98)
  loc_11520E0:   End If
  loc_11520E4:   Set var_8C = 0(var_9C)
  loc_1152129:   If CBool((DGItem.DispID_6803000E = "Add") And (KeyCode <> CInt(1)) And (KeyCode <> CInt(2))) Then
  loc_1152141:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_115214A:       Proc_6_76_E52838(Shift)
  loc_115214F:     End If
  loc_115214F:   End If
  loc_1152153:   Set var_8C = (arg_14)
  loc_1152186:   If CBool((DGItem.DispID_6803000E = "Edit") And (KeyCode <> CInt(2))) Then
  loc_115219E:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11521A7:       Proc_6_76_E52838(Shift)
  loc_11521AC:     End If
  loc_11521AC:   End If
  loc_11521AC: End If
  loc_11521AC: Exit Sub
  loc_11521AD: Set var_8C = arg_14
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F69634
  'Data Table: 47AF10
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F69503: Proc_6_58_E054C0(arg_10)
  loc_F6950E: Proc_6_133_E7EF78(var_94)
  loc_F69517: arg_10 = CInt(var_94)
  loc_F69520: var_96 = KeyAscii
  loc_F6952B: If (var_96 = CInt(3)) Then
  loc_F6954A:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_F6955C:     var_A0 = "Name"
  loc_F69577:     Proc_6_89_146F1AC(arg_10(var_96), KeyAscii, global_52, arg_10)
  loc_F69586:   End If
  loc_F69589: Else
  loc_F69591:   If (var_96 = CInt(4)) Then
  loc_F695B0:     If (CBool(0(var_A0).Visible) = &HFF) Then
  loc_F695B7:       Set var_A8 = (arg_10)
  loc_F695C2:       var_A0 = "Name"
  loc_F695DD:       Proc_6_89_146F1AC(var_A8, KeyAscii, global_64)
  loc_F695EC:     End If
  loc_F695EF:   Else
  loc_F695F7:     If (var_96 = CInt(1)) Then
  loc_F69604:       Set var_9C = var_A8(KeyAscii)
  loc_F6960A:       Call 0.Method_Txt_KeyPress0 (arg_10, var_A0)
  loc_F69625:       Proc_6_42_129A86C(var_A8, arg_10, 8)
  loc_F69631:     End If
  loc_F69631:   End If
  loc_F69631: End If
  loc_F69631: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFF874
  'Data Table: 47AF10
  Dim var_86 As Integer
  loc_DFF86F: var_86 = KeyCode
  loc_DFF872: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F0A4
  'Data Table: 47AF10
  loc_E4F082: Set var_88 = var_8C(Index)
  loc_E4F088: Call 0.Method_Txt_LostFocus0 ()
  loc_E4F096: Proc_6_73_E22704(var_8C)
  loc_E4F0A2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '110A810
  'Data Table: 47AF10
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_110A4CB: var_86 = Cancel
  loc_110A4D6: If (var_86 = CInt(1)) Then
  loc_110A4D9:   GoTo loc_110A80F
  loc_110A4DC: End If
  loc_110A4E4: If (var_86 = CInt(2)) Then
  loc_110A4E7:   GoTo loc_110A80F
  loc_110A4EA: End If
  loc_110A4F2: If (var_86 = CInt(3)) Then
  loc_110A543:   Set var_94 = var_98(Cancel)
  loc_110A549:   Call 0.Method_Txt_Validate0 (var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_110A551:   var_86 = var_98.Text
  loc_110A569:   If ( Or (var_9C = vbNullString)) Then
  loc_110A579:     Set var_94 = var_98(Cancel)
  loc_110A57F:     Call 0.Method_Txt_Validate0 (vbNullString)
  loc_110A587:     var_98.Text = 
  loc_110A5A0:     Set var_94 = var_98(Cancel)
  loc_110A5A6:     Call 0.Method_Txt_Validate0 (vbNullString)
  loc_110A5AE:     var_98.Tag = 
  loc_110A5BD:   Else
  loc_110A5F8:     Set var_B0 = var_B4(Cancel)
  loc_110A5FE:     Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_110A606:     var_B4.Text = 
  loc_110A639:     var_98 = Me.Fields.Item("Code")
  loc_110A64A:     var_9C = CStr(var_98.Value)
  loc_110A657:     Set var_B0 = var_B4(Cancel)
  loc_110A65D:     Call 0.Method_Txt_Validate0 (var_9C)
  loc_110A665:     var_B4.Tag = 
  loc_110A67B:   End If
  loc_110A67E: Else
  loc_110A686:   If (var_86 = CInt(4)) Then
  loc_110A6D7:     Set var_94 = var_98(Cancel)
  loc_110A6DD:     Call 0.Method_Txt_Validate0 (var_9C)
  loc_110A6E5:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_110A6FD:     If ( Or (var_9C = vbNullString)) Then
  loc_110A70D:       Set var_94 = var_98(Cancel)
  loc_110A713:       Call 0.Method_Txt_Validate0 (vbNullString)
  loc_110A71B:       var_98.Text = 
  loc_110A734:       Set var_94 = var_98(Cancel)
  loc_110A73A:       Call 0.Method_Txt_Validate0 (vbNullString)
  loc_110A742:       var_98.Tag = 
  loc_110A751:     Else
  loc_110A78C:       Set var_B0 = var_B4(Cancel)
  loc_110A792:       Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_110A79A:       var_B4.Text = 
  loc_110A7EB:       Set var_B0 = var_B4(Cancel)
  loc_110A7F1:       Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Code").Value))
  loc_110A7F9:       var_B4.Tag = 
  loc_110A80F:     End If
  loc_110A80F:   End If
  loc_110A80F:   ' Referenced from: 110A4E7
  loc_110A80F:   ' Referenced from: 110A4D9
  loc_110A80F: End If
  loc_110A80F: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10A6F28
  'Data Table: 47AF10
  Dim var_A8 As DataGrid
  Dim var_BC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Variant
  Dim var_100 As Variant
  loc_10A6C6C: On Error Goto loc_10A6F20
  loc_10A6C6F: Call Proc_223_46_EBDB64()
  loc_10A6C84: Set var_A8 = (CVar(CLng(global_80)))
  loc_10A6C9C: (DGDepart.DispID_26).InsertRows , 
  loc_10A6CAE: Set var_BC = (CVar(CLng()))
  loc_10A6CB4: var_BC.DeleteRowLabels , 
  loc_10A6CC6: Set var_F0 = (CVar(CLng()))
  loc_10A6CE3: Set var_104 = var_108(0)
  loc_10A6CE9: Call 0.Method_TxtGrid_GotFocus0 (CStr(DGDepart.DispID_41))
  loc_10A6CF1: var_108.Tag = 
  loc_10A6D1E: Set var_A8 = var_BC(Index)
  loc_10A6D24: Call 0.Method_TxtGrid_GotFocus0 (0)
  loc_10A6D2C: var_BC.MaxLength = 
  loc_10A6D42: ().DeleteRowLabels , 
  loc_10A6D4B: var_110 = CLng()
  loc_10A6D5B: If (var_110 = CLng(1)) Then
  loc_10A6D9F:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10A6DA2:     Exit Sub
  loc_10A6DA3:   End If
  loc_10A6DAD:   (var_110).InsertRows , 
  loc_10A6DC7:   Set var_BC = CVar(CLng())(CVar(CLng(1)))
  loc_10A6DF1:   If (CStr(DGDepart.DispID_41) <> vbNullString) Then
  loc_10A6DFA:     Me.MoveFirst
  loc_10A6E09:     ().InsertRows , 
  loc_10A6E23:     Set var_BC = CVar(CLng())(CVar(CLng(9)))
  loc_10A6E34:     var_100 = CVar(CStr(DGDepart.DispID_41)) 'String
  loc_10A6E3A:     Proc_6_17_EAA2B0(var_128)
  loc_10A6E63:     Me.Find CStr("Code =" & var_128), 0, 1
  loc_10A6E93:     If (Me.EOF = &HFF) Then
  loc_10A6E9C:       Me.MoveFirst
  loc_10A6EA1:     End If
  loc_10A6EA1:   End If
  loc_10A6EA4: Else
  loc_10A6EAB:   If Not (var_110 = CLng(7)) Then
  loc_10A6EB5:     If (var_110 = CLng(3)) Then
  loc_10A6EB8:     End If
  loc_10A6EC1:     If (global_68 = 0) Then
  loc_10A6ECC:       var_10C = "{Home}+{End}"
  loc_10A6ED2:       Proc_303_0_FB9B68(CStr("Code =" & var_128), 0)
  loc_10A6EDA:     End If
  loc_10A6EDD:   Else
  loc_10A6EE4:     If (var_110 = CLng(4)) Then
  loc_10A6EF4:       Set var_A8 = var_BC(Index)
  loc_10A6EFA:       Call 0.Method_TxtGrid_GotFocus0 (CStr("Code =" & var_128), var_158)
  loc_10A6F02:       var_100 = var_BC.Text
  loc_10A6F12:       global_72 = Val(CStr("Code =" & var_128))
  loc_10A6F1F:     End If
  loc_10A6F1F:   End If
  loc_10A6F1F: End If
  loc_10A6F1F: Exit Sub
  loc_10A6F20: ' Referenced from: 10A6C6C
  loc_10A6F20: Proc_6_60_E62BC4(global_72)
  loc_10A6F25: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1190EE8
  'Data Table: 47AF10
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As DataGrid
  Dim var_AC As Long
  loc_1190AF4: On Error Goto loc_1190EE1
  loc_1190B01: If (CLng(Shift) = &H1B) Then
  loc_1190B10:   Set var_88 = var_8C(0)
  loc_1190B16:   Call 0.Method_TxtGrid_KeyDown0 (var_90)
  loc_1190B1E:    = var_8C.Tag
  loc_1190B2F:   Set var_94 = var_98(0)
  loc_1190B35:   Call 0.Method_TxtGrid_KeyDown0 (var_90)
  loc_1190B3D:   var_98.Text = 
  loc_1190B59:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1190B62:   Set var_88 = (arg_14)
  loc_1190B7E:   Set var_88 = var_8C(0)
  loc_1190B84:   Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_1190B8C:   var_8C.Visible = DGItem.DispID_8001
  loc_1190B98:   Exit Sub
  loc_1190B99: End If
  loc_1190BA3: ().DeleteRowLabels , 
  loc_1190BAC: var_AC = CLng()
  loc_1190BBC: If (var_AC = CLng(1)) Then
  loc_1190BD7:   Set var_98 = Nothing
  loc_1190BE2:   Set var_94 = Nothing
  loc_1190C10:   Proc_6_69_134A198(Me.DGItem, (var_AC), KeyCode, global_60, Shift)
  loc_1190C2E:   If (CLng(Shift) = &HD) Then
  loc_1190C3C:     Call Proc_223_42_14099F8(KeyCode, 0, var_B0, &HFF)
  loc_1190C47:     If (var_B0 = &HFF) Then
  loc_1190C8D:       Proc_6_62_1253BC4(var_94(1)(1), 0(0(var_98)), KeyCode, Shift, global_68)
  loc_1190C9D:     End If
  loc_1190C9D:   End If
  loc_1190CA0: Else
  loc_1190CA7:   If (var_AC = CLng(3)) Then
  loc_1190CEA:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_68 = &HFF))) Then
  loc_1190CFA:       Call Proc_223_42_14099F8(0, 0, var_B2, 9)
  loc_1190D05:       If (var_B2 = &HFF) Then
  loc_1190D4B:         Proc_6_62_1253BC4(3(2), (0), KeyCode, Shift, global_68)
  loc_1190D5B:       End If
  loc_1190D5B:     End If
  loc_1190D5E:   Else
  loc_1190D65:     If (var_AC = CLng(7)) Then
  loc_1190DA8:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_68 = &HFF))) Then
  loc_1190DB8:         Call Proc_223_42_14099F8(0, 0, var_B2, 3)
  loc_1190DC3:         If (var_B2 = &HFF) Then
  loc_1190E0B:           Proc_6_62_1253BC4(0(0), (0), KeyCode, Shift, global_68)
  loc_1190E1B:         End If
  loc_1190E1B:       End If
  loc_1190E1E:     Else
  loc_1190E25:       If (var_AC = CLng(4)) Then
  loc_1190E68:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_68 = &HFF))) Then
  loc_1190E78:           Call Proc_223_42_14099F8(0, 0, var_B2, 9)
  loc_1190E83:           If (var_B2 = &HFF) Then
  loc_1190ED0:             Proc_6_62_1253BC4(0(CByte(2)), (0), KeyCode, Shift, global_68)
  loc_1190EE0:           End If
  loc_1190EE0:         End If
  loc_1190EE0:       End If
  loc_1190EE0:     End If
  loc_1190EE0:   End If
  loc_1190EE0: End If
  loc_1190EE0: Exit Sub
  loc_1190EE1: ' Referenced from: 1190AF4
  loc_1190EE1: Proc_6_60_E62BC4(CByte((CInt(7) + 1)), 0)
  loc_1190EE6: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F99A5C
  'Data Table: 47AF10
  Dim arg_10 As Integer
  Dim var_98 As DataGrid
  Dim var_9C As Long
  Dim var_94 As Variant
  loc_F998E8: On Error Goto loc_F99A53
  loc_F998EE: Proc_6_58_E054C0(arg_10)
  loc_F998F9: Proc_6_133_E7EF78(var_94)
  loc_F99902: arg_10 = CInt(var_94)
  loc_F99912: arg_10(arg_10).DeleteRowLabels , 
  loc_F9991B: var_9C = CLng()
  loc_F9992B: If (var_9C = CLng(1)) Then
  loc_F9994A:   If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F99951:     Set var_A8 = (var_9C)
  loc_F9995C:     var_A0 = "Name"
  loc_F99977:     Proc_6_89_146F1AC(var_A8, KeyAscii, global_60)
  loc_F99986:   End If
  loc_F99989: Else
  loc_F99990:   If (var_9C = CLng(3)) Then
  loc_F9999D:     Set var_98 = var_A8(KeyAscii)
  loc_F999A3:     Call 0.Method_TxtGrid_KeyPress0 (arg_10, var_A0)
  loc_F999BE:     Proc_6_42_129A86C(var_A8, arg_10, 8)
  loc_F999CD:   Else
  loc_F999D4:     If (var_9C = CLng(7)) Then
  loc_F999E1:       Set var_98 = var_A8(KeyAscii)
  loc_F999E7:       Call 0.Method_TxtGrid_KeyPress0 (3)
  loc_F99A02:       Proc_6_42_129A86C(var_A8, arg_10, 8)
  loc_F99A11:     Else
  loc_F99A18:       If (var_9C = CLng(4)) Then
  loc_F99A25:         Set var_98 = var_A8(KeyAscii)
  loc_F99A2B:         Call 0.Method_TxtGrid_KeyPress0 (2)
  loc_F99A46:         Proc_6_42_129A86C(var_A8, arg_10, 6)
  loc_F99A52:       End If
  loc_F99A52:     End If
  loc_F99A52:   End If
  loc_F99A52: End If
  loc_F99A52: Exit Sub
  loc_F99A53: ' Referenced from: F998E8
  loc_F99A53: Proc_6_60_E62BC4(2)
  loc_F99A58: Exit Sub
  loc_F99A59: StAryRecMove
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1063C58
  'Data Table: 47AF10
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_180 As Double
  Dim var_104 As DataGrid
  Dim var_A8 As String
  loc_10639F4: On Error Goto loc_1063C51
  loc_10639FA: var_86 = KeyCode
  loc_1063A03: If (var_86 = 0) Then
  loc_1063A10:   (var_86).DeleteRowLabels , 
  loc_1063A19:   var_A0 = CLng()
  loc_1063A29:   If (var_A0 = CLng(1)) Then
  loc_1063A4F:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_1063A60:       Call TxtGrid_KeyDown(KeyCode, global_70)
  loc_1063A69:       Set var_AC = var_A0(0)
  loc_1063A74:       var_A8 = "Name"
  loc_1063A8F:       Proc_6_89_146F1AC(var_AC, KeyCode, global_60)
  loc_1063A9E:     End If
  loc_1063AA1:   Else
  loc_1063AA8:     If Not (var_A0 = CLng(3)) Then
  loc_1063AB2:       If (var_A0 = CLng(4)) Then
  loc_1063AB5:       End If
  loc_1063AC2:       Set var_8C = var_AC(KeyCode)
  loc_1063AC8:       Call 0.Method_TxtGrid_KeyUp0 (var_A8, Shift)
  loc_1063ADD:       var_180 = Val(var_AC.Text)
  loc_1063AEA:       &HFF(var_180).InsertRows , 
  loc_1063B02:       (CVar(CLng())).DeleteRowLabels , 
  loc_1063B46:       LateIdCallSt
  loc_1063B77:       1(1(CVar(CStr(Format(CVar(var_180), "0.000"))))).InsertRows CVar(CLng()), 
  loc_1063B91:       Set var_104 = CVar(CLng())(CVar(CLng(4)))
  loc_1063BAA:       var_180 = Val(CStr(DGItem.DispID_41))
  loc_1063BB7:       (var_180).InsertRows , 
  loc_1063BD7:       CVar(CLng())(CVar(CLng(5))).InsertRows , 
  loc_1063BF1:       Set var_AC = CVar(CLng())(CVar(CLng(3)))
  loc_1063C1E:       LateIdCallSt
  loc_1063C4B:       Call Proc_223_48_F73670((CVar(CStr((Val(CStr(DGItem.DispID_41)) * var_180)))))
  loc_1063C50:     End If
  loc_1063C50:   End If
  loc_1063C50: End If
  loc_1063C50: Exit Sub
  loc_1063C51: ' Referenced from: 10639F4
  loc_1063C51: Proc_6_60_E62BC4()
  loc_1063C56: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E217EC
  'Data Table: 47AF10
  Dim arg_10 As Integer
  loc_E217C8: On Error Goto loc_E217E3
  loc_E217D6: Call Proc_223_42_14099F8(Cancel, &HFF)
  loc_E217DF: arg_10 = Not(var_88)
  loc_E217E2: Exit Sub
  loc_E217E3: ' Referenced from: E217C8
  loc_E217E3: Proc_6_60_E62BC4(arg_10)
  loc_E217E8: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10505F0
  'Data Table: 47AF10
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_B0 As Variant
  loc_105039B: Me.DGItem.Visible = False
  loc_10503BA: If (Me.RecordCount > 0) Then
  loc_10503C7:   ().InsertRows , 
  loc_1050419:   LateIdCallSt
  loc_105043F:   CVar(CLng())(CVar(CLng(1))(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_1050491:   LateIdCallSt
  loc_10504B7:   CVar(CLng())(CVar(CLng(9))(CVar(CStr(Me.Fields.Item("Code").Value)))).InsertRows , 
  loc_1050509:   LateIdCallSt
  loc_105052F:   CVar(CLng())(CVar(CLng(&HA))(CVar(CStr(Me.Fields.Item("RestCode").Value)))).InsertRows , 
  loc_1050538:   var_A4 = CVar(CLng()) 'Long
  loc_1050562:   var_B0 = Me.Fields.Item("Unit")
  loc_105057B:   Set var_128 = CVar(CLng(2))(CVar(CStr(var_B0.Value)))
  loc_1050581:   LateIdCallSt
  loc_105059D: End If
  loc_10505A9: Set var_A8 = var_B0(0)
  loc_10505AF: Call 0.Method_DGItem_UnknownEvent_90 (var_12A, var_128)
  loc_10505B7: var_A4 = var_B0.Visible
  loc_10505C9: If (var_12A = &HFF) Then
  loc_10505D5:   Set var_A8 = var_B0(0)
  loc_10505DB:   Call 0.Method_DGItem_UnknownEvent_90 ()
  loc_10505E3:   var_B0.SetFocus
  loc_10505EF: End If
  loc_10505EF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5DDB4
  'Data Table: 47AF10
  Dim var_AC As TextBox
  loc_E5DD79: Set var_A8 = (CVar(CLng("14737632")))
  loc_E5DD92: Set var_A8 = var_AC(0)
  loc_E5DD98: Call 0.Method_FGrid_UnknownEvent_00 (0)
  loc_E5DDA0: var_AC.Visible = DGItem.DispID_10
  loc_E5DDAC: Call Proc_223_46_EBDB64()
  loc_E5DDB1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67F78
  'Data Table: 47AF10
  Dim var_8C As TextBox
  loc_E67F34: Set var_88 = var_8C(0)
  loc_E67F3A: Call 0.Method_FGrid_UnknownEvent_10 (var_8E)
  loc_E67F42:  = var_8C.Visible
  loc_E67F54: If (var_8E = 0) Then
  loc_E67F67:   Set var_88 = (CVar(CLng(global_80)))
  loc_E67F75: End If
  loc_E67F75: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1C480
  'Data Table: 47AF10
  loc_E1C471: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1C47F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E2FD74
  'Data Table: 47AF10
  Dim var_8C As TextBox
  loc_E2FD57: Set var_88 = var_8C(0)
  loc_E2FD5D: Call 0.Method_FGrid_UnknownEvent_90 (0)
  loc_E2FD65: var_8C.Visible = 
  loc_E2FD71: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '116A698
  'Data Table: 47AF10
  Dim var_98 As Variant
  Dim var_C0 As DataGrid
  Dim var_B8 As Variant
  Dim var_D4 As Variant
  Dim var_88 As DataGrid
  Dim var_BC As String
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_116A2D0: On Error Goto loc_116A68F
  loc_116A2D7: Set var_88 = ()
  loc_116A2F2: If (DGItem.DispID_6803000E = "Browse") Then
  loc_116A2F5:   Exit Sub
  loc_116A2F6: End If
  loc_116A300: var_B8 = ().RowCount
  loc_116A313: var_D4 = (var_B8).RowCount
  loc_116A36A: If ( And (CDbl(Val(CStr(var_D4((CLng(Cancel) = &H26)).Tag))) = CDbl((CLng(var_B8) - (CLng(var_D4) - 1))))) Then
  loc_116A37D:   Set var_88 = (CVar(CLng(global_80)))
  loc_116A393:   var_BC = "+{Tab}"
  loc_116A399:   Proc_303_0_FB9B68(CStr(var_D4((CLng(Cancel) = &H26)).Tag), 0)
  loc_116A3A3:   Cancel = 0
  loc_116A3A9: Else
  loc_116A3B3:   var_B8 = DGItem.DispID_26(Cancel).RowCount
  loc_116A400:   If ( And (CDbl(Val(CStr(var_B8((CLng(Cancel) = &H28)).Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_116A413:     Set var_88 = (CVar(CLng(global_80)))
  loc_116A426:     Call Proc_223_49_ED1400(0)
  loc_116A42B:   End If
  loc_116A42B: End If
  loc_116A43E: DGItem.DispID_26(Cancel).InsertRows , 
  loc_116A457: (CVar(CStr(CLng()))).Tag = 
  loc_116A47B: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_116A488:   ().DeleteRowLabels , 
  loc_116A491:   var_EC = CLng()
  loc_116A4A1:   If (var_EC = CLng(1)) Then
  loc_116A4AE:     (var_EC).InsertRows , 
  loc_116A4C6:     (CVar(CLng())).DeleteRowLabels , 
  loc_116A4E4:     LateIdCallSt
  loc_116A506:     (CVar(CLng())(vbNullString)).InsertRows , 
  loc_116A52C:     LateIdCallSt
  loc_116A548:     CVar(CLng())(CVar(CLng(9))(vbNullString)).InsertRows , 
  loc_116A56E:     LateIdCallSt
  loc_116A58A:     CVar(CLng())(CVar(CLng(&HA))(vbNullString)).InsertRows , 
  loc_116A5B0:     LateIdCallSt
  loc_116A5CC:     CVar(CLng())(CVar(CLng(2))(vbNullString)).InsertRows , 
  loc_116A5D5:     var_98 = CVar(CLng()) 'Long
  loc_116A5EC:     Set var_C0 = CVar(CLng(7))(vbNullString)
  loc_116A5F2:     LateIdCallSt
  loc_116A607:   Else
  loc_116A60E:     If Not (var_EC = CLng(7)) Then
  loc_116A618:       If (var_EC = CLng(3)) Then
  loc_116A61B:       End If
  loc_116A625:       var_98(var_C0).InsertRows , 
  loc_116A63D:       (CVar(CLng())).DeleteRowLabels , 
  loc_116A65B:       LateIdCallSt
  loc_116A673:       Call Proc_223_48_F73670(CVar(CLng())(vbNullString))
  loc_116A678:     End If
  loc_116A678:   End If
  loc_116A678: End If
  loc_116A67E: If (Cancel = &HD) Then
  loc_116A686:   global_68 = 0
  loc_116A689: End If
  loc_116A68B: Cancel = 0
  loc_116A68E: Exit Sub
  loc_116A68F: ' Referenced from: 116A2D0
  loc_116A68F: Proc_6_60_E62BC4(Cancel)
  loc_116A694: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E105B0
  'Data Table: 47AF10
  loc_E105A1: Call FGrid_UnknownEvent_C()
  loc_E105AB: global_68 = 0
  loc_E105AE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '102CCC8
  'Data Table: 47AF10
  Dim var_AC As DataGrid
  Dim var_B0 As Long
  Dim var_B4 As String
  Dim var_CE As Integer
  Dim var_B8 As TextBox
  Dim var_C8 As TextBox
  loc_102CAB3: var_88 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_102CABD: On Error Goto loc_102CCBF
  loc_102CACA: ().DeleteRowLabels , 
  loc_102CAD3: var_B0 = CLng()
  loc_102CAE3: If (var_B0 = CLng(1)) Then
  loc_102CAEA:   Set var_C8 = (var_B0)
  loc_102CB0E:   var_B4 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_102CB3B:   Set var_B8 = var_C8
  loc_102CB4D:   Proc_6_63_110ABA4(Me, var_B8, (), 0)
  loc_102CB75:   Set var_AC = var_B8(0)
  loc_102CB7B:   Call 0.Method_FGrid_UnknownEvent_C0 (var_B4, 0, Asc(var_B4))
  loc_102CB83:   0 = var_B8.Text
  loc_102CB9C:   If (Len(var_B4) <= 1) Then
  loc_102CBAB:     Set var_AC = var_B8(0)
  loc_102CBB1:     Call 0.Method_FGrid_UnknownEvent_C0 (var_B4)
  loc_102CBB9:     var_CE = var_B8.Text
  loc_102CBCA:     Set var_BC = var_C8(0)
  loc_102CBD0:     Call 0.Method_FGrid_UnknownEvent_C0 (var_B4)
  loc_102CBD8:     var_C8.Text = 
  loc_102CBEB:   End If
  loc_102CBF7:   Set var_AC = var_B8(0)
  loc_102CBFD:   Call 0.Method_FGrid_UnknownEvent_C0 (var_B4)
  loc_102CC05:    = var_B8.Text
  loc_102CC17:   Set var_BC = var_C8(0)
  loc_102CC1D:   Call 0.Method_FGrid_UnknownEvent_C0 (Len(var_B4))
  loc_102CC25:   var_C8.SelStart = 
  loc_102CC3B: Else
  loc_102CC42:   If Not (var_B0 = CLng(7)) Then
  loc_102CC4C:     If Not (var_B0 = CLng(3)) Then
  loc_102CC56:       If (var_B0 = CLng(4)) Then
  loc_102CC59:       End If
  loc_102CC59:     End If
  loc_102CC97:     Proc_6_63_110ABA4(Me, (), (), 0)
  loc_102CCA9:   End If
  loc_102CCA9: End If
  loc_102CCB3: If (CLng(Cancel) <> &HD) Then
  loc_102CCBB:   global_68 = &HFF
  loc_102CCBE: End If
  loc_102CCBE: Exit Sub
  loc_102CCBF: ' Referenced from: 102CABD
  loc_102CCBF: Proc_6_60_E62BC4(global_68, &HFF)
  loc_102CCC4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '104F5D0
  'Data Table: 47AF10
  Dim var_9C As Variant
  Dim var_8C As DataGrid
  loc_104F36C: On Error Goto loc_104F5C8
  loc_104F373: Set var_8C = ()
  loc_104F38E: If (DGItem.DispID_6803000E = "Browse") Then
  loc_104F391:   Exit Sub
  loc_104F392: End If
  loc_104F39C: ().RandomDataFill
  loc_104F3AF: If (CLng() = CLng(0)) Then
  loc_104F3B2:   Exit Sub
  loc_104F3B3: End If
  loc_104F3C4: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_104F3D1:   ().InsertRows , 
  loc_104F3E6:   If (CLng() >= 1) Then
  loc_104F420:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_104F442:       If (CLng(().RowCount) > 2) Then
  loc_104F44F:         ().InsertRows , 
  loc_104F461:         Set var_110 = (CVar(CLng()))
  loc_104F47C:       Else
  loc_104F48F:         DGItem.DispID_10000(1).RowCount = 
  loc_104F4BD:         Set var_110 = CInt(0)(CVar(CStr(Proc_6_127_F24F80(()))))
  loc_104F4E4:         Set var_8C = DGItem.DispID_10000(1)
  loc_104F4F2:       End If
  loc_104F4F2:       Call Proc_223_48_F73670(DGItem.DispID_6)
  loc_104F4FB:       Set var_8C = ()
  loc_104F516:       If (DGItem.DispID_6803000E = "Add") Then
  loc_104F53E:         For var_11C =  To CInt((CLng(1(var_86).RowCount) - 1)):  = var_11C 'Integer
  loc_104F548:           var_9C = CVar(CLng(var_86)) 'Long
  loc_104F562:           Set var_8C = CVar(CLng(0))(CVar(CStr(var_86)))
  loc_104F568:           LateIdCallSt
  loc_104F579:         Next var_11C 'Integer
  loc_104F57E:       End If
  loc_104F57E:     End If
  loc_104F581:   Else
  loc_104F5A2:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_104F5B2:   End If
  loc_104F5B6:   Set var_8C = ()
  loc_104F5C7: End If
  loc_104F5C7: Exit Sub
  loc_104F5C8: ' Referenced from: 104F36C
  loc_104F5C8: Proc_6_60_E62BC4(DGItem.DispID_8001)
  loc_104F5CD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9B440
  'Data Table: 47AF10
  loc_E9B3DA: ().InsertRows , 
  loc_E9B3F2: (CVar(CLng())).DeleteRowLabels , 
  loc_E9B404: Set var_F0 = (CVar(CLng()))
  loc_E9B423: (CVar(CStr(DGItem.DispID_41))).ToolTipText = 
  loc_E9B43E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3FD88
  'Data Table: 47AF10
  Dim var_8C As TextBox
  loc_E3FD67: Set var_88 = var_8C(0)
  loc_E3FD6D: Call 0.Method_FGrid_UnknownEvent_150 (0)
  loc_E3FD75: var_8C.Visible = 
  loc_E3FD81: Call Proc_223_46_EBDB64()
  loc_E3FD86: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E97BF8
  'Data Table: 47AF10
  Dim Me As Recordset15
  loc_E97B86: On Error Goto loc_E97BEF
  loc_E97B8F: Me.MoveFirst
  loc_E97BB9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97BE1: Proc_5_0_110649C(&HFF, Me, global_56)
  loc_E97BE9: Call Proc_223_44_1217BA4(0)
  loc_E97BEE: Exit Sub
  loc_E97BEF: ' Referenced from: E97B86
  loc_E97BEF: Proc_6_60_E62BC4(var_A0)
  loc_E97BF4: Exit Sub
End Sub

Public Sub Proc_223_42_14099F8(arg_C, arg_10) '14099F8
  'Data Table: 47AF10
  Dim var_90 As Variant
  Dim var_A4 As Long
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_104 As Variant
  Dim var_118 As DataGrid
  Dim var_D4 As Variant
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_B4 As String
  Dim unk_47AF1F As Connection15
  Dim var_8C As Recordset15
  Dim var_14C As Variant
  Dim var_19C As Double
  loc_1408FC6: ().DeleteRowLabels , 
  loc_1408FDF: If (CLng() = CLng(1)) Then
  loc_1409030:   Set var_90 = var_B0(arg_C)
  loc_1409036:   Call 0.Method_Proc_223_42_14099F80 (var_B4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_140903E:   var_A4 = var_B0.Text
  loc_1409056:   If ( Or (var_B4 = vbNullString)) Then
  loc_1409063:     ().InsertRows , 
  loc_1409089:     LateIdCallSt
  loc_14090A5:     CVar(CLng())(CVar(CLng(1))(vbNullString)).InsertRows , 
  loc_14090CB:     LateIdCallSt
  loc_14090E7:     CVar(CLng())(CVar(CLng(9))(vbNullString)).InsertRows , 
  loc_140910D:     LateIdCallSt
  loc_1409129:     CVar(CLng())(CVar(CLng(&HA))(vbNullString)).InsertRows , 
  loc_140914F:     LateIdCallSt
  loc_140916B:     CVar(CLng())(CVar(CLng(2))(vbNullString)).InsertRows , 
  loc_1409191:     LateIdCallSt
  loc_14091AD:     CVar(CLng())(CVar(CLng(7))(vbNullString)).InsertRows , 
  loc_14091D3:     LateIdCallSt
  loc_14091EF:     CVar(CLng())(CVar(CLng(6))(vbNullString)).InsertRows , 
  loc_1409215:     LateIdCallSt
  loc_1409231:     CVar(CLng())(CVar(CLng(5))(vbNullString)).InsertRows , 
  loc_1409257:     LateIdCallSt
  loc_1409273:     CVar(CLng())(CVar(CLng(3))(vbNullString)).InsertRows , 
  loc_140927C:     var_C4 = CVar(CLng()) 'Long
  loc_1409293:     Set var_B0 = CVar(CLng(4))(vbNullString)
  loc_1409299:     LateIdCallSt
  loc_14092AE:   Else
  loc_14092B8:     var_C4(var_B0).InsertRows , 
  loc_140930A:     LateIdCallSt
  loc_1409330:     CVar(CLng())(CVar(CLng(1))(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_1409382:     LateIdCallSt
  loc_14093A8:     CVar(CLng())(CVar(CLng(9))(CVar(CStr(Me.Fields.Item("Code").Value)))).InsertRows , 
  loc_14093FA:     LateIdCallSt
  loc_1409420:     CVar(CLng())(CVar(CLng(&HA))(CVar(CStr(Me.Fields.Item("RestCode").Value)))).InsertRows , 
  loc_1409472:     LateIdCallSt
  loc_14094B7:     CVar(CLng())(CVar(CLng(2))(CVar(CStr(Me.Fields.Item("Unit").Value)))).InsertRows , 
  loc_1409503:     LateIdCallSt
  loc_140952B:     1(1(CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))))).InsertRows CVar(CLng(7)), CVar(CLng())
  loc_140957D:     LateIdCallSt
  loc_14095A3:     CVar(CLng())(CVar(CLng(4))(CVar(CStr(Me.Fields.Item("ConvRatio").Value)))).InsertRows , 
  loc_14095AC:     var_D4 = CVar(CLng()) 'Long
  loc_14095DE:     var_128 = Me.Fields.Item("IssueUnit").Value
  loc_14095E7:     var_138 = CVar(CStr(var_128)) 'String
  loc_14095EF:     Set var_13C = CVar(CLng(6))(var_138)
  loc_14095F5:     LateIdCallSt
  loc_1409611:   End If
  loc_140961B:   var_D4(var_13C).InsertRows , 
  loc_1409635:   Set var_B0 = CVar(CLng())(CVar(CLng(9)))
  loc_1409655:   Set var_118 = var_13C(CInt(3))
  loc_140965B:   Call 0.Method_Proc_223_42_14099F80 (var_174)
  loc_1409663:   DGItem.DispID_41 = var_13C.Tag
  loc_140967C:   var_B4 = CStr(var_128)
  loc_140969E:   unk_47AF1F.Execute "SELECT RATE FROM ITEMRATE WHERE ITEMCODE='" & var_B4 & "' AND RestCode='" & var_174 & "'", var_138, -1
  loc_14096A9:   Set var_8C = var_184
  loc_14096E5:   If (var_8C.RecordCount > 0) Then
  loc_14096F2:     (var_184).InsertRows , 
  loc_14096FB:     var_D4 = CVar(CLng()) 'Long
  loc_140971F:     var_B0 = var_8C.Fields.Item("Rate")
  loc_140972E:     Proc_6_47_EF59D0(var_128, CVar(var_B0))
  loc_1409737:     var_14C = CVar(CStr(var_128)) 'String
  loc_1409745:     LateIdCallSt
  loc_1409761:     Call Proc_223_48_F73670(CVar(CLng(7))(var_14C))
  loc_1409766:   End If
  loc_1409769: Else
  loc_1409770:   If (var_A4 = CLng(7)) Then
  loc_140977F:     Set var_90 = var_B0(0)
  loc_1409785:     Call 0.Method_Proc_223_42_14099F80 (var_B4)
  loc_140978D:     var_D4 = var_B0.Text
  loc_140979A:     var_19C = Val(var_B4)
  loc_14097A7:     (var_19C).InsertRows , 
  loc_14097BF:     (CVar(CLng())).DeleteRowLabels , 
  loc_14097C8:     var_104 = CVar(CLng()) 'Long
  loc_14097DC:     var_128 = "0.00"
  loc_14097EC:     var_138 = Format(CVar(var_19C), var_128)
  loc_1409803:     LateIdCallSt
  loc_140982A:     Call Proc_223_48_F73670(1(CVar(CStr(var_138))), 1)
  loc_1409832:   Else
  loc_1409839:     If Not (var_A4 = CLng(3)) Then
  loc_1409843:       If (var_A4 = CLng(4)) Then
  loc_1409846:       End If
  loc_1409850:       (var_104).DeleteRowLabels , 
  loc_1409863:       If (CLng() = CLng(4)) Then
  loc_1409872:         Set var_90 = var_B0(0)
  loc_1409878:         Call 0.Method_Proc_223_42_14099F80 (var_B4)
  loc_1409880:          = var_B0.Text
  loc_14098A5:         If (global_72 <> CDbl(Val(var_B4))) Then
  loc_14098D7:           If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_128, var_138, var_14C) = 7) Then
  loc_14098DF:             Proc_223_42_14099F8 = 0
  loc_14098E5:           End If
  loc_14098E5:         End If
  loc_14098E5:       End If
  loc_14098F1:       Set var_90 = var_B0(0)
  loc_14098F7:       Call 0.Method_Proc_223_42_14099F80 (var_B4)
  loc_14098FF:       var_19C = var_B0.Text
  loc_140990C:       var_19C = Val(var_B4)
  loc_1409919:       (var_19C).InsertRows , 
  loc_1409931:       (CVar(CLng())).DeleteRowLabels , 
  loc_140993A:       var_104 = CVar(CLng()) 'Long
  loc_1409975:       LateIdCallSt
  loc_140999C:       Call Proc_223_48_F73670(1(CVar(CStr(Format(CVar(var_19C), "0.000")))), 1)
  loc_14099A1:     End If
  loc_14099A1:   End If
  loc_14099A1: End If
  loc_14099AC: If (arg_10 = 0) Then
  loc_14099B3:   Set var_90 = var_104(&HFF)
  loc_14099CF:   Set var_90 = var_B0(0)
  loc_14099D5:   Call 0.Method_Proc_223_42_14099F80 (0)
  loc_14099DD:   var_B0.Visible = DGItem.DispID_8001
  loc_14099E9: End If
  loc_14099EE: Set var_8C = Nothing
  loc_14099F1: Proc_223_42_14099F8 = 
End Sub

Public Sub Proc_223_43_F2A994
  'Data Table: 47AF10
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_F2A896: Set var_8C = var_86(var_8E)
  loc_F2A89C: Call 0.Method_Proc_223_43_F2A994C (CByte(0))
  loc_F2A8AC: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_F2A8C2:   Set var_8C = var_98(CInt(var_86))
  loc_F2A8C8:   Call 0.Method_Proc_223_43_F2A9940 (vbNullString)
  loc_F2A8D0:   var_98.Text = 
  loc_F2A8EC:   Set var_8C = var_98(CInt(var_86))
  loc_F2A8F2:   Call 0.Method_Proc_223_43_F2A9940 (vbNullString)
  loc_F2A8FA:   var_98.Tag = 
  loc_F2A909: Next var_92 'Byte
  loc_F2A91C: (vbNullString).Caption = 
  loc_F2A937: (1).RowCount = 
  loc_F2A95C: Set var_98 = (CVar(CStr(CLng(().RowCount))))
  loc_F2A985: Set var_8C = DGItem.DispID_10000(1)
  loc_F2A993: Exit Sub
End Sub

Public Sub Proc_223_44_1217BA4
  'Data Table: 47AF10
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_9C As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim unk_47AF1F As Connection15
  Dim var_88 As Recordset15
  Dim var_12C As TextBox
  Dim var_8A As Integer
  loc_12176E4: On Error Goto loc_1217B9C
  loc_12176FE: If (Me.RecordCount > 0) Then
  loc_121770E:   var_D0 = "Select D.SNo,D.Item,I.Name As ItemName,I.Unit,D.IssQty,D.FrDepart,FrG.Name As FrDepartName,D.ToDepart,ToG.Name As ToDepartName,I.RestCode From DepartWiseItemIssueList D Left Join ItemMast I On I.Code=D.Item And I.ItemType='Store' Left Join GodownMast FrG On D.FrDepart=FrG.Code Left Join GodownMast ToG On D.ToDepart=ToG.Code where D.FrDepart+D.ToDepart='"
  loc_1217757:   unk_47AF1F.Execute CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "' Order By Sno"), var_124, -1
  loc_1217762:   Set var_88 = var_128
  loc_12177B8:   Call 0.Method_Proc_223_44_1217BA40 (Proc_6_38_E68A98(CVar(var_88.Fields.Item("FrDepart"))))
  loc_12177C0:   var_12C.Tag = var_12C(CInt(3))
  loc_121780A:   Set var_128 = var_12C(CInt(3))
  loc_1217810:   Call 0.Method_Proc_223_44_1217BA40 (Proc_6_38_E68A98(CVar(var_88.Fields.Item("FrDepartname"))))
  loc_1217818:   var_12C.Text = 
  loc_1217862:   Set var_128 = var_12C(CInt(4))
  loc_1217868:   Call 0.Method_Proc_223_44_1217BA40 (Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToDepart"))))
  loc_1217870:   var_12C.Tag = 
  loc_12178BA:   Set var_128 = var_12C(CInt(4))
  loc_12178C0:   Call 0.Method_Proc_223_44_1217BA40 (Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToDepartname"))))
  loc_12178C8:   var_12C.Text = 
  loc_12178EF:   (1).RowCount = 
  loc_12178F9:   var_8A = 1
  loc_12178FC:   ' Referenced from: 1217B60
  loc_121790B:   If Not(var_88.EOF) Then
  loc_1217918:     Set var_9C = var_8A(vbNullString)
  loc_121792D:     Set var_134 = (DGItem.DispID_10000)
  loc_1217934:     var_D0 = CVar(CLng(var_8A)) 'Long
  loc_1217969:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SNo")), CVar(CLng(0)))) 'String
  loc_1217970:     LateIdCallSt
  loc_12179BB:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8A)))) 'String
  loc_12179C2:     LateIdCallSt
  loc_1217A0D:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(2)), CVar(CLng(var_8A)), var_134)) 'String
  loc_1217A14:     LateIdCallSt
  loc_1217A4C:     Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("IssQty")), var_134, var_E0)
  loc_1217A55:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1217A8D:     LateIdCallSt
  loc_1217ADE:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Item")), CVar(CLng(9)), CVar(CLng(var_8A)), var_134, CVar(CStr(Format(var_E0, "0.000"))), 1, 1)) 'String
  loc_1217AE5:     LateIdCallSt
  loc_1217B30:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RestCode")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_134, var_E0, CVar(CLng(3)))) 'String
  loc_1217B37:     LateIdCallSt
  loc_1217B4B:     Set var_134 = Nothing 
  loc_1217B55:     var_8A = (var_8A + 1)
  loc_1217B5B:     var_88.MoveNext
  loc_1217B60:     GoTo loc_12178FC
  loc_1217B63:   End If
  loc_1217B70:   Set var_9C = var_8A(1)
  loc_1217B81: Else
  loc_1217B81:   Call Proc_223_43_F2A994(DGItem.DispID_6, var_134, var_E0, var_F0)
  loc_1217B86: End If
  loc_1217B86: Call Proc_223_46_EBDB64(var_E0, var_134)
  loc_1217B8B: Exit Sub
  loc_1217B91: Set var_90 = Nothing
  loc_1217B99: Set var_94 = Nothing
  loc_1217B9C: ' Referenced from: 12176E4
  loc_1217B9C: Proc_6_60_E62BC4(var_E0)
  loc_1217BA1: Exit Sub
End Sub

Public Sub Proc_223_45_EED84C(arg_C) 'EED84C
  'Data Table: 47AF10
  Dim var_98 As TextBox
  loc_EED786: Set var_8C = var_86(var_8E)
  loc_EED78C: Call 0.Method_Proc_223_45_EED84CC (CByte(0))
  loc_EED79C: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_EED7B2:   Set var_8C = var_98(CInt(var_86))
  loc_EED7B8:   Call 0.Method_Proc_223_45_EED84C0 (arg_C)
  loc_EED7C0:   var_98.Enabled = 
  loc_EED7CF: Next var_92 'Byte
  loc_EED7E2: Set var_8C = var_98(CInt(0))
  loc_EED7E8: Call 0.Method_Proc_223_45_EED84C0 (0)
  loc_EED7F0: var_98.Enabled = 
  loc_EED809: Set var_8C = var_98(CInt(2))
  loc_EED80F: Call 0.Method_Proc_223_45_EED84C0 (0)
  loc_EED817: var_98.Enabled = 
  loc_EED830: Set var_8C = var_98(CInt(1))
  loc_EED836: Call 0.Method_Proc_223_45_EED84C0 (0)
  loc_EED83E: var_98.Enabled = 
  loc_EED84A: Exit Sub
End Sub

Public Sub Proc_223_46_EBDB64
  'Data Table: 47AF10
  loc_EBDADC: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EBDAEE:   Me.DGDepart.Visible = False
  loc_EBDAF6: End If
  loc_EBDB12: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EBDB24:   Me.DGItem.Visible = False
  loc_EBDB2C: End If
  loc_EBDB48: If (CBool(().Visible) = &HFF) Then
  loc_EBDB5A:   (False).Visible = 
  loc_EBDB62: End If
  loc_EBDB62: Exit Sub
End Sub

Public Sub Proc_223_47_11D6664
  'Data Table: 47AF10
  Dim var_94 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_11D61F3: (CVar(CDbl(6585))).Width = 
  loc_11D620E: (CVar(CDbl(1450))).Top = 
  loc_11D6229: (CVar(CDbl(3300))).Height = 
  loc_11D6244: Me.DGItem.Left = CVar(CDbl(2800))
  loc_11D625F: Me.DGItem.Top = CVar(CDbl(1200))
  loc_11D626B: Set var_AC = ()
  loc_11D6282: global_80 = CStr(CLng(DGItem.DispID_FFFFFE0B))
  loc_11D628C: var_94 = &HB
  loc_11D62A0: var_94 = CVar(CLng(0)) 'Long
  loc_11D62A5: var_D0 = &HFA
  loc_11D62B1: LateIdCallSt
  loc_11D62B9: var_94 = 0
  loc_11D62C5: var_D0 = CVar(CLng(1)) 'Long
  loc_11D62CA: var_F0 = "Item Name"
  loc_11D62D3: LateIdCallSt
  loc_11D62DE: var_94 = CVar(CLng(1)) 'Long
  loc_11D62E9: var_D0 = CVar(CInt(1)) 'Integer
  loc_11D62F0: LateIdCallSt
  loc_11D62FB: var_94 = CVar(CLng(1)) 'Long
  loc_11D6300: var_D0 = &HD48
  loc_11D630C: LateIdCallSt
  loc_11D6314: var_94 = 0
  loc_11D6320: var_D0 = CVar(CLng(2)) 'Long
  loc_11D6325: var_F0 = "Unit"
  loc_11D632E: LateIdCallSt
  loc_11D6339: var_94 = CVar(CLng(2)) 'Long
  loc_11D6344: var_D0 = CVar(CInt(1)) 'Integer
  loc_11D634B: LateIdCallSt
  loc_11D6356: var_94 = CVar(CLng(2)) 'Long
  loc_11D635B: var_D0 = &H44C
  loc_11D6367: LateIdCallSt
  loc_11D636F: var_94 = 0
  loc_11D637B: var_D0 = CVar(CLng(3)) 'Long
  loc_11D6380: var_F0 = "Iss. Qty"
  loc_11D6389: LateIdCallSt
  loc_11D6394: var_94 = CVar(CLng(3)) 'Long
  loc_11D639F: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D63A6: LateIdCallSt
  loc_11D63B1: var_94 = CVar(CLng(3)) 'Long
  loc_11D63BC: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D63C3: LateIdCallSt
  loc_11D63CE: var_94 = CVar(CLng(3)) 'Long
  loc_11D63D3: var_D0 = &H578
  loc_11D63DF: LateIdCallSt
  loc_11D63E7: var_94 = 0
  loc_11D63F3: var_D0 = CVar(CLng(4)) 'Long
  loc_11D63F8: var_F0 = "Conv. Factor"
  loc_11D6401: LateIdCallSt
  loc_11D640C: var_94 = CVar(CLng(4)) 'Long
  loc_11D6417: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D641E: LateIdCallSt
  loc_11D6429: var_94 = CVar(CLng(4)) 'Long
  loc_11D6434: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D643B: LateIdCallSt
  loc_11D6446: var_94 = CVar(CLng(4)) 'Long
  loc_11D644B: var_D0 = 0
  loc_11D6457: LateIdCallSt
  loc_11D645F: var_94 = 0
  loc_11D646B: var_D0 = CVar(CLng(5)) 'Long
  loc_11D6470: var_F0 = "Wt. Qty"
  loc_11D6479: LateIdCallSt
  loc_11D6484: var_94 = CVar(CLng(5)) 'Long
  loc_11D648F: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D6496: LateIdCallSt
  loc_11D64A1: var_94 = CVar(CLng(5)) 'Long
  loc_11D64AC: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D64B3: LateIdCallSt
  loc_11D64BE: var_94 = CVar(CLng(5)) 'Long
  loc_11D64C3: var_D0 = 0
  loc_11D64CF: LateIdCallSt
  loc_11D64D7: var_94 = 0
  loc_11D64E3: var_D0 = CVar(CLng(6)) 'Long
  loc_11D64E8: var_F0 = "Wt.Unit"
  loc_11D64F1: LateIdCallSt
  loc_11D64FC: var_94 = CVar(CLng(6)) 'Long
  loc_11D6507: var_D0 = CVar(CInt(1)) 'Integer
  loc_11D650E: LateIdCallSt
  loc_11D6519: var_94 = CVar(CLng(6)) 'Long
  loc_11D651E: var_D0 = 0
  loc_11D652A: LateIdCallSt
  loc_11D6532: var_94 = 0
  loc_11D653E: var_D0 = CVar(CLng(7)) 'Long
  loc_11D6543: var_F0 = "Rate"
  loc_11D654C: LateIdCallSt
  loc_11D6557: var_94 = CVar(CLng(7)) 'Long
  loc_11D6562: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D6569: LateIdCallSt
  loc_11D6574: var_94 = CVar(CLng(7)) 'Long
  loc_11D657F: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D6586: LateIdCallSt
  loc_11D6591: var_94 = CVar(CLng(7)) 'Long
  loc_11D6596: var_D0 = 0
  loc_11D65A2: LateIdCallSt
  loc_11D65AA: var_94 = 0
  loc_11D65B6: var_D0 = CVar(CLng(8)) 'Long
  loc_11D65BB: var_F0 = "Amount"
  loc_11D65C4: LateIdCallSt
  loc_11D65CF: var_94 = CVar(CLng(8)) 'Long
  loc_11D65DA: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D65E1: LateIdCallSt
  loc_11D65EC: var_94 = CVar(CLng(8)) 'Long
  loc_11D65F7: var_D0 = CVar(CInt(7)) 'Integer
  loc_11D65FE: LateIdCallSt
  loc_11D6609: var_94 = CVar(CLng(8)) 'Long
  loc_11D660E: var_D0 = 0
  loc_11D661A: LateIdCallSt
  loc_11D6625: var_94 = CVar(CLng(9)) 'Long
  loc_11D662A: var_D0 = 0
  loc_11D6636: LateIdCallSt
  loc_11D6641: var_94 = CVar(CLng(&HA)) 'Long
  loc_11D6646: var_D0 = 0
  loc_11D6652: LateIdCallSt
  loc_11D665C: Set var_AC = Nothing 
  loc_11D6660: Exit Sub
End Sub

Public Sub Proc_223_48_F73670
  'Data Table: 47AF10
  Dim var_22C As Double
  Dim var_234 As Double
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  loc_F7356A: ().InsertRows , 
  loc_F73584: Set var_DC = CVar(CLng())(CVar(CLng(7)))
  loc_F7359D: var_22C = Val(CStr(DGItem.DispID_41))
  loc_F735AA: (var_22C).InsertRows , 
  loc_F735C4: Set var_148 = CVar(CLng())(CVar(CLng(3)))
  loc_F735DD: var_234 = Val(CStr(DGItem.DispID_41))
  loc_F735EA: (var_234).InsertRows , 
  loc_F735F3: var_1D0 = CVar(CLng()) 'Long
  loc_F735FB: var_1F0 = CVar(CLng(8)) 'Long
  loc_F73634: Set var_224 = 1(CVar(CStr(Format(CVar((var_22C * var_234)), "0.00"))))
  loc_F7363A: LateIdCallSt
  loc_F7366D: Exit Sub
End Sub

Public Sub Proc_223_49_ED1400
  'Data Table: 47AF10
  loc_ED1360: Call Proc_223_46_EBDB64()
  loc_ED1370: Set var_88 = var_8C(CInt(2))
  loc_ED1376: Call 0.Method_Proc_223_49_ED14000 ()
  loc_ED137E: var_94 = "Date"
  loc_ED139F: If (Proc_6_27_EA565C(var_8C) = 0) Then
  loc_ED13A2:   Exit Sub
  loc_ED13A3: End If
  loc_ED13DA: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED13DD:   Call TopCtrl1_UnknownEvent_19()
  loc_ED13E5: Else
  loc_ED13EB:   Call 0.Method_arg_1E8 (var_88)
  loc_ED13F3:   Call var_88.SetFocus
  loc_ED13FC: End If
  loc_ED13FC: Exit Sub
End Sub
