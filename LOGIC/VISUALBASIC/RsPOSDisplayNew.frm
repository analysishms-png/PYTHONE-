VERSION 5.00
Begin VB.Form RsPOSDisplayNew
  Caption = "Table Status"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "RsPOSDisplayNew.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 14670
  ClientHeight = 9135
  BeginProperty Font
    Name = "Tahoma"
    Size = 9
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8685
    Width = 14670
    Height = 450
    Visible = 0   'False
    TabIndex = 10
  End
  Begin Timer Timer1
    Enabled = 0   'False
    Interval = 1000
    Left = 9930
    Top = 3015
  End
  Begin MSHFlexGrid FGrid1
    Left = 0
    Top = 0
    Width = 5925
    Height = 3450
    TabIndex = 0
  End
  Begin CommonDialog CDLG
  End
  Begin BtnEnh HeadRigt
    Left = 60
    Top = 6600
    Width = 945
    Height = 540
    TabIndex = 7
  End
  Begin BtnEnh HeadLeft
    Left = 1020
    Top = 6600
    Width = 945
    Height = 540
    TabIndex = 8
  End
  Begin BtnEnh HeadExit
    Left = 1965
    Top = 6600
    Width = 945
    Height = 540
    TabIndex = 9
  End
  Begin Label Label1
    Caption = "Billed"
    Index = 7
    ForeColor = &HC00000&
    Left = 3015
    Top = 7080
    Width = 1740
    Height = 240
    TabIndex = 5
    Alignment = 2 'Center
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
  Begin Label Label2
    Index = 7
    BackColor = &HC0FFC0&
    ForeColor = &H80000008&
    Left = 2955
    Top = 7050
    Width = 1815
    Height = 285
    TabIndex = 6
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "Times New Roman"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Vaccant"
    Index = 6
    ForeColor = &HC00000&
    Left = 3000
    Top = 6795
    Width = 1740
    Height = 240
    TabIndex = 4
    Alignment = 2 'Center
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
    Caption = "Occupied"
    Index = 5
    ForeColor = &HC00000&
    Left = 3000
    Top = 6510
    Width = 1740
    Height = 240
    TabIndex = 3
    Alignment = 2 'Center
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
  Begin Label Label2
    Index = 6
    BackColor = &HFFFF&
    ForeColor = &H80000008&
    Left = 2955
    Top = 6765
    Width = 1815
    Height = 285
    TabIndex = 2
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "Times New Roman"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &H80000008&
    Left = 2955
    Top = 6480
    Width = 1815
    Height = 285
    TabIndex = 1
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "Times New Roman"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "RsPOSDisplayNew"

Private global_82 As Integer
Private global_100 As Integer

Private Sub Label2_Click(Index As Integer) '101ED7C
  'Data Table: 435A54
  Dim var_94 As Variant
  Dim var_A8 As CommonDialog
  Dim arg_20 As Variant
  Dim var_B8 As Variant
  Dim var_C0 As Label
  Dim var_D4 As String
  Dim unk_435A5A As Connection15
  loc_101EB9C: var_94 = 1
  loc_101EBA6: Set var_A8 = Me.FGrid1
  loc_101EBC1: arg_20 = Me.CDLG._Action
  loc_101EBEB: If (CLng(Me.CDLG.Color) = 0) Then
  loc_101EBEE:   Exit Sub
  loc_101EBEF: End If
  loc_101EBF9: var_B8 = Me.CDLG.Color
  loc_101EC0C: Set var_BC = Me.Label2
  loc_101EC12: Call 0.Method_Label2_Click0 (Index, var_C0, CLng(var_B8))
  loc_101EC1A: var_C0.BackColor = arg_20
  loc_101EC62: unk_435A5A.Execute "delete from Dispcolor where [index]=" & CStr(Index) & " and Logsite_Code='" & MemVar_1F92078 & "'", var_B8, -1
  loc_101ECA1: Set var_A8 = Me.CDLG
  loc_101ECB6: var_D4 = "Insert into DispColor([Index],[Color],Detail,Site_Code,U_EntDt,U_AE,LogSite_Code) values(" & CStr(Index) & ",'" & CStr(CLng(var_A8.Color))
  loc_101ECCD: Set var_BC = Me.Label1
  loc_101ECD3: Call 0.Method_Label2_Click0 (Index, var_C0, var_D8, var_D4 & "','", var_18C)
  loc_101ECDB: -1 = var_C0.Caption
  loc_101ED0A: Proc_6_7_F25D88(var_108, Date, CVar(var_190 & var_D8 & "','" & MemVar_1F92070 & "',"))
  loc_101ED16: var_94 = ",'A','"
  loc_101ED3C: unk_435A5A.Execute CStr(var_A8 & var_108 & var_94 & CVar(MemVar_1F92078) & "')"), FGrid1.DispID_18001, var_94
  loc_101ED7A: Exit Sub
End Sub

Private Sub HeadExit_UnknownEvent_9 'E1818C
  'Data Table: 435A54
  loc_E18181: Me.Global.Unload Me
  loc_E18189: Exit Sub
  loc_E1818A:  = 
End Sub

Private Sub Form_Load() '10011AC
  'Data Table: 435A54
  Dim var_9C As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_86 As Integer
  loc_1000FBC: On Error Goto loc_1001168
  loc_1000FC6: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1000FDE: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B0))
  loc_1000FEE: Call 0.Method_Me4 (CDbl(4900))
  loc_1000FFB: Call 0.Method_arg_74 (CDbl(2500))
  loc_1001008: Call 0.Method_arg_7C (CDbl(1500))
  loc_1001015: Call 0.Method_MeC (CDbl(7850))
  loc_100101F: var_BC = 0
  loc_100102A: var_B8 = 0
  loc_1001035: var_B4 = 0
  loc_100104C: var_86 = Proc_96_17_FDBD80(global_52, global_88, var_B4)
  loc_100105E: var_C0 = global_88
  loc_1001069: If (var_C0 = "Outlet") Then
  loc_1001072:   global_96 = "TB"
  loc_1001079: Else
  loc_1001081:   If (var_C0 = "Room Service") Then
  loc_100108A:     global_96 = "RO"
  loc_100108E:   End If
  loc_100108E: End If
  loc_100108E: Call ColorLabel()
  loc_1001093: Call Proc_239_20_166BE44(var_86, var_B8)
  loc_10010BE: var_9C = CVar(CDbl((((CLng(Me.FGrid1.Rows) - 1) * &H320) + &HC8))) 'Single
  loc_10010CD: Me.FGrid1.Height = CVar(CLng(MemVar_1F921B0))
  loc_10010EF: Me.FGrid1.Width = CVar(CDbl(4800))
  loc_1001125: If (CDbl((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(600)) + CDbl(200))) < CDbl(610)) Then
  loc_1001149:   var_9C = CVar((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(600)) + CDbl(&HA))) 'Single
  loc_1001158:   Me.FGrid1.Width = CVar(CDbl(4800))
  loc_1001167: End If
  loc_1001167: Exit Sub
  loc_1001168: ' Referenced from: 1000FBC
  loc_1001170: Set var_B0 = Err()
  loc_1001176: Call 0.Method_arg_2C (var_B4)
  loc_1001197: MsgBox(CVar(var_B4), &H10, "Information", var_F4, var_114)
  loc_10011AA: Exit Sub
  loc_10011AB: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0F67C
  'Data Table: 435A54
  loc_E0F673: Set global_112 = Nothing
  loc_E0F67A: Exit Sub
End Sub

Private Sub Form_Activate() 'F28BA0
  'Data Table: 435A54
  Dim var_A0 As String
  Dim unk_435A5A As Connection15
  Dim var_8C As Recordset15
  Dim var_CC As Fields15
  Dim var_C8 As Variant
  loc_F28AB4: Call Proc_239_20_166BE44()
  loc_F28AC2: If (global_82 = &HFF) Then
  loc_F28AC5:   Call Proc_239_20_166BE44()
  loc_F28ACF:   global_82 = 0
  loc_F28AD2: End If
  loc_F28AD2: Call Proc_239_19_E8B578(global_82)
  loc_F28ADF: If (MemVar_1F9220C <> "Yes") Then
  loc_F28AE2: End If
  loc_F28B0B: var_A0 = "SELECT POSSettlementYN FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' And CompCode='" & MemVar_1F92128 & "' And UserName='"
  loc_F28B22: unk_435A5A.Execute var_A0 & MemVar_1F920C8 & "'", var_C8, -1
  loc_F28B2D: Set var_8C = var_CC
  loc_F28B59: If (var_8C.RecordCount > 0) Then
  loc_F28B84:   var_90 = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("POSSettlementYN")))
  loc_F28B8D: End If
  loc_F28B92: Set var_8C = Nothing
  loc_F28B9A: Set var_88 = Nothing
  loc_F28B9D: Exit Sub
End Sub

Private Sub Form_Click() 'DFD86C
  'Data Table: 435A54
  loc_DFD868: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E0B42C
  'Data Table: 435A54
  loc_E0B422: If (CLng(KeyCode) = &H74) Then
  loc_E0B425:   Call Proc_239_20_166BE44()
  loc_E0B42A: End If
  loc_E0B42A: Exit Sub
End Sub

Private Sub HeadLeft_UnknownEvent_9 'E97CB8
  'Data Table: 435A54
  Dim var_A8 As Variant
  loc_E97C5D: If ((CLng(Me.FGrid1.LeftCol) - &HC) > 0) Then
  loc_E97C79:   var_A8 = CVar((CLng(Me.FGrid1.LeftCol) - &H36)) 'Long
  loc_E97C88:   Me.FGrid1.LeftCol = var_A8
  loc_E97C9A: Else
  loc_E97CAD:   Me.FGrid1.LeftCol = 1
  loc_E97CB5: End If
  loc_E97CB5: Exit Sub
End Sub

Private Sub HeadRigt_UnknownEvent_9 'E77DD8
  'Data Table: 435A54
  Dim var_A8 As Variant
  Dim var_2301 As Variant
  loc_E77D9B: If (CLng(Me.FGrid1.LeftCol) > 1) Then
  loc_E77DB7:   var_A8 = CVar((CLng(Me.FGrid1.LeftCol) - 1)) 'Long
  loc_E77DC6:   Me.FGrid1.LeftCol = var_A8
  loc_E77DD5: End If
  loc_E77DD5: Exit Sub
  loc_E77DD6: var_2301 = CVar() 'Integer
End Sub

Private Sub Fgrid1_UnknownEvent_10 'FB4E80
  'Data Table: 435A54
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_FC As String
  Dim var_12C As Variant
  Dim var_14C As Variant
  loc_FB4D00: Set var_88 = Me.FGrid1
  loc_FB4D14: var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB4D25: var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB4D38: var_FC = CStr(var_88.TextMatrix))
  loc_FB4DAA: If (CVar(CLng(var_88.Row)) And (InStr(CVar(CLng(var_88.Col)), CStr(var_88.TextMatrix)), "Vacant", 0) = 0)) Then
  loc_FB4DB9:   var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB4DCA:   var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB4DEA:   var_12C = CVar(CLng(var_88.Row)) 'Long
  loc_FB4DFB:   var_14C = CVar(CLng(var_88.Col)) 'Long
  loc_FB4E38:   var_1B0 = Mid(CVar(CStr(var_88.TextMatrix))), (InStr(1, CStr(var_88.TextMatrix)), vbCrLf, 0) + 2), var_1A0)
  loc_FB4E48:   var_88.ToolTipText = CVar(CStr(var_1B0))
  loc_FB4E6A: Else
  loc_FB4E73:   var_88.ToolTipText = vbNullString
  loc_FB4E78: End If
  loc_FB4E7A: Set var_88 = Nothing 
  loc_FB4E7E: Exit Sub
End Sub

Public Function global_52Get() '436234
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '436243
  global_52 = Value
End Sub

Public Property Let ptabpos(vNewValue) 'E01928
  'Data Table: 435A54
  loc_E01922: ptabpos = vNewValue
  loc_E01927: Exit Sub
End Sub

Public Property Get ptabpos() 'E04440
  'Data Table: 435A54
  loc_E04439: ptabpos = global_100
End Sub

Public Property Let TouchScreen(vNewValue) 'E0F82C
  'Data Table: 435A54
  loc_E0F824: global_92 = vNewValue
  loc_E0F828: Exit Sub
End Sub

Public Sub ColorLabel() 'F507FC
  'Data Table: 435A54
  Dim unk_435A5A As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_E4 As Label
  loc_F50702: unk_435A5A.Execute "Select * from DispColor", var_A8, -1
  loc_F5070D: Set var_88 = var_AC
  loc_F50716: ' Referenced from: F507F6
  loc_F50725: If Not(var_88.EOF) Then
  loc_F50764:   If (var_88.Fields.Item("index").Value > 4) Then
  loc_F507C5:     Set var_E0 = Me.Label2
  loc_F507CB:     Call 0.Method_ColorLabel0 (CInt(var_88.Fields.Item("index").Value), var_E4)
  loc_F507D3:     var_E4.BackColor = CLng(var_88.Fields.Item("Color").Value)
  loc_F507EE:   End If
  loc_F507F1:   var_88.MoveNext
  loc_F507F6:   GoTo loc_F50716
  loc_F507F9: End If
  loc_F507F9: Exit Sub
End Sub

Public Property Get OpenMode() 'E0F634
  'Data Table: 435A54
  loc_E0F628: var_88 = global_84
  loc_E0F62B: OpenMode = 
End Sub

Public Property Let OpenMode(vNewValue) 'E0F5A4
  'Data Table: 435A54
  loc_E0F59C: global_84 = vNewValue
  loc_E0F5A0: Exit Sub
End Sub

Public Sub Proc_239_18_DFDD1C
  'Data Table: 435A54
  loc_DFDD14: Call Proc_239_20_166BE44()
  loc_DFDD19: Exit Sub
End Sub

Public Sub Proc_239_19_E8B578
  'Data Table: 435A54
  Dim var_8C As String
  Dim var_98 As String
  Dim unk_435A5A As Connection15
  loc_E8B52C: var_8C = "SELECT Distinct P.Docid,P.VNo AS [Order No], P.CustName As [Customer Name],P.PhoneNo As [Phone No],P.Addr1 + ', ' + P.Addr2 As Address,convert(varchar(11),P.DDate,103)+ ' '+ P.DTime As [Delivery Date] FROM   PackingOrder P INNER JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID  WHERE  (P.LogSite_Code = '" & MemVar_1F92078
  loc_E8B544: var_98 = var_8C & "') AND (P.RestCode = '" & global_52 & "') AND (PD.ContraSNo = 0) AND (PD.ContraDocID = '') Order By convert(varchar(11),P.DDate,103)+ ' '+ P.DTime"
  loc_E8B54D: unk_435A5A.Execute var_98, var_B8, -1
  loc_E8B558: Set var_88 = var_BC
  loc_E8B571: Set var_88 = Nothing
  loc_E8B574: Exit Sub
  loc_E8B575: StAryRecMove
End Sub

Public Sub Proc_239_20_166BE44
  'Data Table: 435A54
  Dim var_96 As Integer
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_435A5A As Connection15
  Dim var_C8 As Variant
  Dim var_A0 As Recordset15
  Dim var_DC As Variant
  Dim var_D8 As Variant
  Dim var_108 As String
  Dim var_10C As String
  Dim var_110 As String
  Dim var_114 As String
  Dim var_120 As String
  Dim var_8A As Integer
  Dim var_8C As Integer
  Dim var_88 As Recordset15
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_168 As Variant
  Dim var_238 As Variant
  Dim var_228 As Variant
  Dim var_258 As Variant
  Dim var_194 As Variant
  Dim var_100 As Variant
  Dim var_1A4 As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_278 As Variant
  Dim var_2AC As Variant
  Dim var_184 As Field20
  Dim var_1CC As Variant
  Dim var_2EC As Variant
  Dim var_AC As Recordset15
  Dim var_140 As Variant
  Dim var_A4 As Recordset15
  Dim var_92 As Integer
  loc_166A74E: var_96 = 0
  loc_166A778: unk_435A5A.Execute "Select Order_Booking,Kotyn from Depart where Code='" & global_52 & "'", var_D8, -1
  loc_166A783: Set var_A0 = var_DC
  loc_166A7A2: var_DC = var_A0.Fields
  loc_166A7C1: global_104 = Proc_6_38_E68A98(CVar(var_DC.Item("KotYN")), var_DC)
  loc_166A7FC: global_108 = Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Order_Booking")))
  loc_166A81B: var_DC = var_A0.Fields
  loc_166A82B: var_D8 = var_DC.Item("KotYN").Value
  loc_166A845: If (var_D8 = "Y") Then
  loc_166A84E:   var_104 = global_88
  loc_166A859:   If (var_104 = "Outlet") Then
  loc_166A870:     var_B4 = "SELECT LTrim(RTrim(RoomMast.Code)) as code,'' as Code1,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_166A892:     var_110 = var_B4 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='" & global_96 & "' and RoomMast.RestCode='" & global_52
  loc_166A8A2:     unk_435A5A.Execute var_110 & "' ORDER BY  RoomMast.code", var_D8, -1
  loc_166A8AD:     Set var_88 = var_DC
  loc_166A8DC:     var_B4 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & global_52
  loc_166A8F4:     var_10C = var_B4 & "' And  RoomCat='REST' and RoomType='" & global_96 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_166A90E:     unk_435A5A.Execute var_10C & global_52 & "'  order by T.Code", var_D8, -1
  loc_166A919:     Set var_A4 = var_DC
  loc_166A945:     var_B4 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_166A953:     var_108 = var_B4 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_166A961:     var_110 = var_108 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & " And Sale1.RoomCat='REST' And Sale1.RoomType='"
  loc_166A983:     var_120 = var_110 & global_96 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_166A99D:     unk_435A5A.Execute var_120 & global_52 & "' Order by T.Code", var_D8, -1
  loc_166A9A8:     Set var_AC = var_DC
  loc_166A9CD:   Else
  loc_166A9D5:     If (var_104 = "Room Service") Then
  loc_166A9EC:       var_B4 = "SELECT LTrim(RTrim(RC.RoomNo)) AS Code,RC.Foliono AS Code1, RC.RoomNo AS Name,D.Code As RestCode,D.Name as RestName,D.ShortName,RC.SITE_CODE,RC.LOGSITE_CODE,D.KOTYn, RC.RoomCat, GuestProf.Name as Guest, PlanName = Case  When isnull(PlanMast.Name,'')='' then 'Europian Plan' else PlanMast.Name end, GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3,RC.Docid   FROM Depart D, (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) LEFT JOIN PlanMast ON RC.PlanCode = PlanMast.Code where (RC.LOGSITE_CODE='" & MemVar_1F92078
  loc_166AA04:       var_10C = var_B4 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('" & global_96 & "') AND RC.CHKOUTDATE IS NULL And D.Code='"
  loc_166AA1B:       unk_435A5A.Execute var_10C & MemVar_1F92078 & "RS' Order by RC.ROOMNO", var_D8, -1
  loc_166AA26:       Set var_88 = var_DC
  loc_166AA55:       var_B4 = "Select LTrim(RTrim(T.Code)) as Code,T.Code As Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & global_52
  loc_166AA6D:       var_10C = var_B4 & "' and RoomType='" & global_96 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='ROOM' order by T.Code"
  loc_166AA76:       unk_435A5A.Execute var_10C, var_D8, -1
  loc_166AA81:       Set var_A4 = var_DC
  loc_166AAA9:       var_B4 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_166AAB7:       var_108 = var_B4 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_166AACF:       var_114 = var_108 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & "And Sale1.RoomType='" & global_96
  loc_166AAE7:       var_120 = var_114 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_166AB01:       unk_435A5A.Execute var_120 & global_52 & "' Order by T.Code", var_D8, -1
  loc_166AB0C:       Set var_AC = var_DC
  loc_166AB2E:     End If
  loc_166AB2E:   End If
  loc_166AB31: Else
  loc_166AB45:   var_B4 = "SELECT LTrim(RTrim(RoomMast.Code)) as code,'' as Code1,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_166AB67:   var_110 = var_B4 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='" & global_96 & "' and RoomMast.RestCode='" & global_52
  loc_166AB77:   unk_435A5A.Execute var_110 & "' ORDER BY  RoomMast.code", var_D8, -1
  loc_166AB82:   Set var_88 = var_DC
  loc_166ABB1:   var_B4 = "Select  LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & global_52
  loc_166ABC9:   var_10C = var_B4 & "' And  RoomCat='REST' and RoomType='" & global_96 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE)WHERE RESTCODE='"
  loc_166ABE3:   unk_435A5A.Execute var_10C & global_52 & "' order by T.Code", var_D8, -1
  loc_166ABEE:   Set var_A4 = var_DC
  loc_166AC1A:   var_B4 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_166AC28:   var_108 = var_B4 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_166AC36:   var_110 = var_108 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & " And Sale1.RoomCat='REST' And Sale1.RoomType='"
  loc_166AC58:   var_120 = var_110 & global_96 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_166AC72:   unk_435A5A.Execute var_120 & global_52 & "' Order by T.Code", var_D8, -1
  loc_166AC7D:   Set var_AC = var_DC
  loc_166AC9F: End If
  loc_166ACA1: var_8A = 9
  loc_166ACBB: If (Me.Recordset15.RecordCount > 0) Then
  loc_166ACEB:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_166AD58:     var_D8 = CVar(((Val(CStr(Me.Recordset15.RecordCount)) - CDbl((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_166AD79:     var_8C = CInt(((Val(CStr(Format(var_D8, "00"))) + CDbl(1)) * CDbl(6)))
  loc_166AD91:   Else
  loc_166ADC0:     var_D8 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_166ADE1:     var_8C = CInt(((Val(CStr(Format(var_D8, "00"))) + CDbl(1)) * CDbl(6)))
  loc_166ADF0:   End If
  loc_166ADF3: Else
  loc_166ADF8:   global_100 = &HFF
  loc_166ADFE: Else
  loc_166AE00:   var_90 = 1
  loc_166AE05:   var_8E = 0
  loc_166AE1B:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_166AE36:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_166AE50:   Call Proc_239_21_111E69C((var_8A - 1), (var_8C - 1), var_8E, var_90, global_100, var_8C, 1, 1)
  loc_166AE68:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_166AE83:   Me.FGrid1.Col = CVar(CLng(var_8E))
  loc_166AE9A:   Me.FGrid1.Redraw = False
  loc_166AEC7:   For var_158 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_94 = var_158 'Integer
  loc_166AED1:     var_C8 = CVar(CLng(var_94)) 'Long
  loc_166AED6:     var_168 = &H2BC
  loc_166AEE3:     Set var_DC = Me.FGrid1
  loc_166AEE9:     LateIdCallSt
  loc_166AEF7:   Next var_158 'Integer
  loc_166AEFC:   ' Referenced from:   166BE09
  loc_166AF0E:   If Not(Me.FGrid1.EOF) Then
  loc_166AF13:     var_90 = 1
  loc_166AF16:     ' Referenced from:   166BE06
  loc_166AF20:     If (var_90 <= (var_8A - 1)) Then
  loc_166AF37:       For var_17C = (var_8C - 6) To (var_8C - 1):   var_94 = var_17C 'Integer
  loc_166AF47:         If (var_94 = (var_8C - 6)) Then
  loc_166AF5D:           var_228 = Me.FGrid1.Col
  loc_166AFC9:           var_B4 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), 5, CVar(Proc_6_38_E68A98(CVar(Me.var_228.Fields.Item("Code")), CVar(CLng(var_228)), CVar(CLng(var_90)))))
  loc_166AFD1:           var_140 = Space(((var_8C - 6) - Len(var_B4)))
  loc_166AFD9:           var_1A4 = (&HFF + Format(CVar(Me.var_228.Fields.Item("Code")), "00"))
  loc_166B015:           var_1CC = Space((var_1A4 - Len(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("code1")), 8))))
  loc_166B01D:           var_1DC = (var_90 + var_1CC)
  loc_166B052:           var_214 = (var_1DC + CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("code1")))))
  loc_166B057:           var_278 = CVar(CStr(var_214)) 'String
  loc_166B05F:           Set var_28C = Me.FGrid1
  loc_166B065:           LateIdCallSt
  loc_166B0B9:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_166B0C8:           Me.FGrid1.Col = "Code"
  loc_166B0D7:         End If
  loc_166B0E1:         If (var_94 = (var_8C - 5)) Then
  loc_166B0FB:           If (Me.Recordset15.RecordCount > 0) Then
  loc_166B104:             Me.Recordset15.MoveFirst
  loc_166B109:           End If
  loc_166B14C:           Me.Recordset15.Filter = CVar(var_28C & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code='") & "'")
  loc_166B179:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_166B1B0:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) = &HFF) Then
  loc_166B1C6:               var_2AC = Me.FGrid1.Col
  loc_166B20B:               var_100 = (Me.var_2AC.Fields.Item("ShortName").Value + "(")
  loc_166B241:               var_1A4 = (CVar(var_28C & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code='") & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_166B24A:               var_1BC = (var_1A4 + ")")
  loc_166B253:               var_1CC = (CVar(Me.Recordset15.Fields.Item("code1")) + vbCrLf)
  loc_166B285:               var_214 = (CVar(CLng(var_2AC)) + CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("WaiterName")), var_1CC, "*")))
  loc_166B28E:               var_228 = (var_214 + vbCrLf)
  loc_166B297:               var_278 = (var_228 + "Vacant")
  loc_166B2A0:               var_2EC = CVar(CStr(CVar(CLng(var_90)) & var_278)) 'String
  loc_166B2A8:               Set var_1E4 = Me.FGrid1
  loc_166B2AE:               LateIdCallSt
  loc_166B2EC:               var_AE = CByte(0) 'Byte
  loc_166B304:               If (var_AC.RecordCount > 0) Then
  loc_166B313:                 var_AC.Filter = 0
  loc_166B31B:                 var_AC.MoveFirst
  loc_166B320:               End If
  loc_166B360:               var_AC.Filter = CVar(var_2EC & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_1E4) & "'")
  loc_166B38A:               If (var_AC.AbsolutePosition > 0) Then
  loc_166B3BE:                 If (IsNull(CVar(var_AC.Fields.Item("WaiterName"))) = 0) Then
  loc_166B3C5:                   var_AE = CByte(1) 'Byte
  loc_166B3C9:                 End If
  loc_166B3C9:               End If
  loc_166B3CC:             Else
  loc_166B3D0:               var_238 = CVar(CLng(var_90)) 'Long
  loc_166B3DF:               var_1DC = Me.FGrid1.Col
  loc_166B3E8:               var_258 = CVar(CLng(var_1DC)) 'Long
  loc_166B41F:               var_100 = (Me.var_1DC.Fields.Item("ShortName").Value + "(")
  loc_166B455:               var_1A4 = (CVar(var_2EC & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_1E4) & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_166B45E:               var_1BC = (var_1A4 + ")")
  loc_166B467:               var_1CC = (CVar(Me.Recordset15.Fields.Item("code1")) + vbCrLf)
  loc_166B46C:               var_1F4 = CVar(CStr(var_1CC)) 'String
  loc_166B474:               Set var_1AC = Me.FGrid1
  loc_166B47A:               LateIdCallSt
  loc_166B4AA:               var_AE = CByte(2) 'Byte
  loc_166B4AE:               ' Referenced from:     166B784
  loc_166B506:               var_140 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), Me.FGrid1.Fields.Item("Code").Value, var_1AC, var_1F4)) 'String
  loc_166B51E:               If (var_258 = var_140) Then
  loc_166B538:                 If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_166B53F:                   var_238 = CVar(CLng(var_90)) 'Long
  loc_166B587:                   var_100 = Me.FGrid1.TextMatrix)
  loc_166B5C0:                   var_B8 = Proc_6_38_E68A98(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_166B5C4:                   var_1A4 = CVar(CVar(CLng(Me.FGrid1.Col)) & var_B8) 'String
  loc_166B5CC:                   Set var_1AC = Me.FGrid1
  loc_166B5D2:                   LateIdCallSt
  loc_166B5FE:                 Else
  loc_166B62E:                   var_100 = Me.FGrid1.TextMatrix)
  loc_166B667:                   var_B4 = Proc_6_38_E68A98(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), 1)
  loc_166B690:                   If (InStr(var_1A4, var_1AC, var_B4, 0) = 0) Then
  loc_166B697:                     var_238 = CVar(CLng(var_90)) 'Long
  loc_166B6DF:                     var_100 = Me.FGrid1.TextMatrix)
  loc_166B71F:                     var_108 = Proc_6_38_E68A98(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100) & ",", CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)))
  loc_166B723:                     var_1A4 = CVar(var_238 & var_108) 'String
  loc_166B72B:                     Set var_1AC = Me.FGrid1
  loc_166B731:                     LateIdCallSt
  loc_166B75C:                   End If
  loc_166B75C:                 End If
  loc_166B762:                 var_A4.MoveNext
  loc_166B77E:                 If (var_A4.AbsolutePosition < 0) Then
  loc_166B781:                   GoTo loc_166B787
  loc_166B784:                 End If
  loc_166B784:                 GoTo loc_166B4AE
  loc_166B787:                 ' Referenced from:     166B781
  loc_166B787:               End If
  loc_166B796:               Me.Recordset15.Filter = 0
  loc_166B79B:             End If
  loc_166B79B:           End If
  loc_166B7B4:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_166B7C3:           Me.FGrid1.Col = 0
  loc_166B7D2:         End If
  loc_166B7DC:         If (var_94 = (var_8C - 4)) Then
  loc_166B7F3:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_166B80F:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_166B836:           Call Proc_239_22_10C449C(CInt(CLng(Me.FGrid1.Col)), var_AE, Me.FGrid1.Col, var_92, var_1AC)
  loc_166B854:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_166B875:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_166B884:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_166B893:         End If
  loc_166B89D:         If (var_94 = (var_8C - 3)) Then
  loc_166B8B7:           If (Me.Recordset15.RecordCount > 0) Then
  loc_166B8C0:             Me.Recordset15.MoveFirst
  loc_166B8C5:           End If
  loc_166B908:           Me.Recordset15.Filter = CVar(var_238 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code ='", var_1A4) & "'")
  loc_166B935:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_166B96C:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) <> &HFF) Then
  loc_166B96F:               ' Referenced from:   166BC59
  loc_166B9C7:               var_140 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), Me.Recordset15.Fields.Item("Code").Value)) 'String
  loc_166B9DF:               If (var_238 = var_140) Then
  loc_166B9F9:                 If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_166BA0F:                   var_140 = Me.FGrid1.Col
  loc_166BA7D:                   var_108 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("VTIME")), Proc_6_38_E68A98(CVar(Me.var_140.Fields.Item("WaiterName")), CVar(CLng(var_140))) & ",#")
  loc_166BA88:                   var_194 = CVar(CVar(CLng(var_90)) & var_108 & "#") 'String
  loc_166BA90:                   Set var_1AC = Me.FGrid1
  loc_166BA96:                   LateIdCallSt
  loc_166BAC2:                 Else
  loc_166BAF2:                   var_100 = Me.FGrid1.TextMatrix)
  loc_166BB2B:                   var_B4 = Proc_6_38_E68A98(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_166BB54:                   If (InStr(var_1AC, 1, var_B4, 0) = 0) Then
  loc_166BB5B:                     var_238 = CVar(CLng(var_90)) 'Long
  loc_166BBA3:                     var_100 = Me.FGrid1.TextMatrix)
  loc_166BBE3:                     var_108 = Proc_6_38_E68A98(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100) & ",", CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_166BBE7:                     var_1A4 = CVar(CVar(CLng(Me.FGrid1.Col)) & var_108) 'String
  loc_166BBEF:                     Set var_1AC = Me.FGrid1
  loc_166BBF5:                     LateIdCallSt
  loc_166BC20:                   End If
  loc_166BC20:                 End If
  loc_166BC26:                 var_A4.MoveNext
  loc_166BC42:                 If (var_A4.AbsolutePosition < 0) Then
  loc_166BC54:                   Me.Recordset15.Filter = 0
  loc_166BC59:                 End If
  loc_166BC59:                 GoTo loc_166B96F
  loc_166BC5C:               End If
  loc_166BC5C:             End If
  loc_166BC5C:           End If
  loc_166BC75:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_166BC84:           Me.FGrid1.Col = 0
  loc_166BC93:         End If
  loc_166BC9D:         If (var_94 = (var_8C - 2)) Then
  loc_166BCE9:           var_140 = CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("KotYN")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), var_1AC)) 'String
  loc_166BCF1:           Set var_184 = Me.FGrid1
  loc_166BCF7:           LateIdCallSt
  loc_166BD2A:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_166BD39:           Me.FGrid1.Col = "KotYN"
  loc_166BD48:         End If
  loc_166BD52:         If (var_94 = (var_8C - 1)) Then
  loc_166BD6E:           var_C8 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_166BD7D:           Me.FGrid1.Col = "KotYN"
  loc_166BD8C:         End If
  loc_166BD8F:       Next var_17C 'Integer
  loc_166BD9A:       var_90 = (var_90 + 1)
  loc_166BDA7:       If (var_90 > (var_8A - 1)) Then
  loc_166BDC3:         var_C8 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_166BDD2:         Me.FGrid1.Col = "KotYN"
  loc_166BDE1:       End If
  loc_166BDE7:       var_88.MoveNext
  loc_166BE00:       If (var_88.EOF = &HFF) Then
  loc_166BE03:         GoTo loc_166BE0C
  loc_166BE06:       End If
  loc_166BE06:       GoTo loc_166AF16
  loc_166BE09:     End If
  loc_166BE09:     GoTo loc_166AEFC
  loc_166BE0C:     ' Referenced from:   166BE03
  loc_166BE0C:   End If
  loc_166BE0C: End If
  loc_166BE1A: Me.FGrid1.Redraw = True
  loc_166BE27: Set var_88 = Nothing
  loc_166BE2F: Set var_A4 = Nothing
  loc_166BE37: Set var_A0 = Nothing
  loc_166BE3F: Set var_AC = Nothing
  loc_166BE42: Exit Sub
End Sub

Public Sub Proc_239_21_111E69C(arg_C, arg_10) '111E69C
  'Data Table: 435A54
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_FC As String
  Dim arg_10 As Integer
  loc_111E343: Me.FGrid1.Row = 0
  loc_111E35E: var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111E363: var_CC = 0
  loc_111E370: Set var_E0 = Me.FGrid1
  loc_111E376: LateIdCallSt
  loc_111E388: ' Referenced from: 111E5DF
  loc_111E38E: If (arg_10 < 5) Then
  loc_111E391:   GoTo loc_111E5E2
  loc_111E394: End If
  loc_111E398: Set var_E4 = Me.FGrid1
  loc_111E3A9: For var_E8 = arg_10 To (arg_10 - 3) Step &HFF: var_86 = var_E8 'Integer
  loc_111E3B3:   var_98 = CVar(CLng(var_86)) 'Long
  loc_111E3B8:   var_CC = 0
  loc_111E3C5:   Set var_AC = Me.FGrid1
  loc_111E3CB:   LateIdCallSt
  loc_111E3D9: Next var_E8 'Integer
  loc_111E3ED: For var_EC = (arg_10 - 5) To (arg_10 - 4): var_86 = var_EC 'Integer
  loc_111E3FD:   If (var_86 = (arg_10 - 5)) Then
  loc_111E404:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111E409:     var_CC = 0
  loc_111E416:     Set var_AC = Me.FGrid1
  loc_111E41C:     LateIdCallSt
  loc_111E42B:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111E430:     var_CC = 1
  loc_111E43A:     Set var_AC = Me.FGrid1
  loc_111E440:     LateIdCallSt
  loc_111E45E:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111E467:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111E46C:     var_FC = "Table No"
  loc_111E476:     Set var_E0 = Me.FGrid1
  loc_111E47C:     LateIdCallSt
  loc_111E48E:   End If
  loc_111E498:   If (var_86 = (arg_10 - 4)) Then
  loc_111E49F:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111E4A4:     var_CC = &H4B0
  loc_111E4B1:     Set var_AC = Me.FGrid1
  loc_111E4B7:     LateIdCallSt
  loc_111E4C6:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111E4CB:     var_CC = 1
  loc_111E4D5:     Set var_AC = Me.FGrid1
  loc_111E4DB:     LateIdCallSt
  loc_111E4F9:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111E502:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111E507:     var_FC = "Status"
  loc_111E511:     Set var_E0 = Me.FGrid1
  loc_111E517:     LateIdCallSt
  loc_111E529:   End If
  loc_111E533:   If (var_86 = (arg_10 - 3)) Then
  loc_111E53A:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111E53F:     var_CC = &H12C
  loc_111E54C:     Set var_AC = Me.FGrid1
  loc_111E552:     LateIdCallSt
  loc_111E561:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111E56C:     var_CC = CVar(CInt(4)) 'Integer
  loc_111E574:     Set var_AC = Me.FGrid1
  loc_111E57A:     LateIdCallSt
  loc_111E598:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111E5A1:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111E5A6:     var_FC = vbNullString
  loc_111E5B0:     Set var_E0 = Me.FGrid1
  loc_111E5B6:     LateIdCallSt
  loc_111E5C8:   End If
  loc_111E5CB: Next var_EC 'Integer
  loc_111E5D2: Set var_E4 = Nothing 
  loc_111E5DC: arg_10 = (arg_10 - 6)
  loc_111E5DF: GoTo loc_111E388
  loc_111E5E2: ' Referenced from: 111E391
  loc_111E609: For var_110 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_110 'Integer
  loc_111E622:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_111E632:   For var_114 = 1 To arg_C: var_88 = var_114 'Integer
  loc_111E64B:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_111E666:     Me.FGrid1.CellBackColor = &HE69839
  loc_111E681:     Me.FGrid1.CellForeColor = &HFFFF
  loc_111E68C:   Next var_114 'Integer
  loc_111E694: Next var_110 'Integer
  loc_111E699: Exit Sub
End Sub

Public Sub Proc_239_22_10C449C
  'Data Table: 435A54
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_C0 As Variant
  loc_10C41A8: var_86 = arg_10 'Byte
  loc_10C41B5: If (var_86 = CByte(0)) Then
  loc_10C41D1:   var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C41DA:   Set var_C0 = Me.FGrid1
  loc_10C41E0:   var_C0.Col = var_AC
  loc_10C41FB:   Set var_8C = Me.Label2
  loc_10C4201:   Call 0.Method_Proc_239_22_10C449C0 (6, var_C0)
  loc_10C4220:   Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C4247:   var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C4250:   Set var_C0 = Me.FGrid1
  loc_10C4256:   var_C0.Col = CVar(var_C0.BackColor)
  loc_10C4271:   Set var_8C = Me.Label2
  loc_10C4277:   Call 0.Method_Proc_239_22_10C449C0 (6, var_C0)
  loc_10C4296:   Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C42A7: Else
  loc_10C42B0:   If (var_86 = CByte(1)) Then
  loc_10C42CC:     var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C42D5:     Set var_C0 = Me.FGrid1
  loc_10C42DB:     var_C0.Col = CVar(var_C0.BackColor)
  loc_10C42F6:     Set var_8C = Me.Label2
  loc_10C42FC:     Call 0.Method_Proc_239_22_10C449C0 (7, var_C0)
  loc_10C431B:     Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C4342:     var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C434B:     Set var_C0 = Me.FGrid1
  loc_10C4351:     var_C0.Col = CVar(var_C0.BackColor)
  loc_10C436C:     Set var_8C = Me.Label2
  loc_10C4372:     Call 0.Method_Proc_239_22_10C449C0 (7, var_C0)
  loc_10C4391:     Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C43A2:   Else
  loc_10C43AB:     If (var_86 = CByte(2)) Then
  loc_10C43C7:       var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C43D0:       Set var_C0 = Me.FGrid1
  loc_10C43D6:       var_C0.Col = CVar(var_C0.BackColor)
  loc_10C43F1:       Set var_8C = Me.Label2
  loc_10C43F7:       Call 0.Method_Proc_239_22_10C449C0 (5, var_C0)
  loc_10C4416:       Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C443D:       var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C4446:       Set var_C0 = Me.FGrid1
  loc_10C444C:       var_C0.Col = CVar(var_C0.BackColor)
  loc_10C4467:       Set var_8C = Me.Label2
  loc_10C446D:       Call 0.Method_Proc_239_22_10C449C0 (5, var_C0)
  loc_10C448C:       Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C449A:     End If
  loc_10C449A:   End If
  loc_10C449A: End If
  loc_10C449A: Exit Sub
End Sub
