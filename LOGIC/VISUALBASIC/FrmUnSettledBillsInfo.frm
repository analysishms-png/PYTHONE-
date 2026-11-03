VERSION 5.00
Begin VB.Form FrmUnSettledBillsInfo
  Caption = "Unsettled Bill Details"
  BackColor = &HC0E0FF&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 7410
  ClientHeight = 5865
  StartUpPosition = 2 'CenterScreen
  Begin MSHFlexGrid FGrid1
    Left = 120
    Top = 135
    Width = 7170
    Height = 5055
    TabIndex = 0
  End
  Begin BtnEnh Command1
    Left = 6030
    Top = 5280
    Width = 1320
    Height = 570
    TabIndex = 1
  End
End

Attribute VB_Name = "FrmUnSettledBillsInfo"


Private Sub Command1_UnknownEvent_9 'E1AD30
  'Data Table: 41E9DC
  loc_E1AD25: Me.Global.Unload Me
  loc_E1AD2D: Exit Sub
End Sub

Private Sub Form_Load() '124CA30
  'Data Table: 41E9DC
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_B0 As String
  Dim var_B8 As String
  Dim var_C0 As String
  Dim var_A8 As String
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim unk_41E9F1 As Connection15
  loc_124C507: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_124C519: Set var_AC = Me.FGrid1
  loc_124C51F: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_124C532: If (ShowDetail = "UnsettleBills") Then
  loc_124C549:   var_B0 = "SELECT Sale1.DocId,Max(Sale1.RestCode) As RestCode, MAX(Sale1.VNo) AS [Bill No.],CASE WHEN MAX(Sale1.RoomType)='RO' THEN MAX(Sale1.RoomNo) ELSE MAX(T.Code) END AS [Table/Room],max(Waiter.Name) as Steward, max(Depart.Name) as Outlet, Convert(Varchar(11),Max(Sale1.Vdate),103) As BillDt, Max(Sale1.VTime) As BillTm, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_124C557:   var_B8 = var_B0 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN RoomMast AS T ON (Sale1.RoomType = T.Type) "
  loc_124C565:   var_C0 = var_B8 & "AND (Sale1.RoomNo = T.Code) AND (Sale1.RestCode = T.RestCode)) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code Left Join Depart On Sale1.RestCode=Depart.Code "
  loc_124C57A:   Proc_6_7_F25D88(var_D0, MemVar_1F920EC, CVar(var_C0 & "WHERE Depart.RestType<>'Production' And Sale1.Vdate="))
  loc_124C59E:   var_140 = var_184 & var_D0 & " And Sale1.LogSite_Code='" & CVar(MemVar_1F92078) & "' And PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " 
  loc_124C5B5:   unk_41E9F1.Execute CStr(var_140 & "GROUP BY SALE1.DOCID Having Sum(Sale1.NetAmt)<>0 ORDER BY RestCode,[Bill No.]"), -1, var_AC
  loc_124C5C0:   Set var_88 = var_AC
  loc_124C5EE:   CVarUnk
  loc_124C5F3:   VerifyVarObj
  loc_124C5F9:   Set var_AC = Me.FGrid1
  loc_124C5FF:   LateIdStAd
  loc_124C60D:   var_98 = 0
  loc_124C616:   var_110 = 0
  loc_124C623:   Set var_AC = Me.FGrid1
  loc_124C629:   LateIdCallSt
  loc_124C634:   var_98 = 1
  loc_124C63D:   var_110 = 0
  loc_124C64A:   Set var_AC = Me.FGrid1
  loc_124C650:   LateIdCallSt
  loc_124C65B:   var_98 = 2
  loc_124C664:   var_110 = 0
  loc_124C671:   Set var_AC = Me.FGrid1
  loc_124C677:   LateIdCallSt
  loc_124C682:   var_98 = 3
  loc_124C68B:   var_110 = &H384
  loc_124C698:   Set var_AC = Me.FGrid1
  loc_124C69E:   LateIdCallSt
  loc_124C6A9:   var_98 = 4
  loc_124C6B2:   var_110 = &H514
  loc_124C6BF:   Set var_AC = Me.FGrid1
  loc_124C6C5:   LateIdCallSt
  loc_124C6D0:   var_98 = 5
  loc_124C6D9:   var_110 = &H960
  loc_124C6E6:   Set var_AC = Me.FGrid1
  loc_124C6EC:   LateIdCallSt
  loc_124C6F7:   var_98 = 6
  loc_124C700:   var_110 = &H5DC
  loc_124C70D:   Set var_AC = Me.FGrid1
  loc_124C713:   LateIdCallSt
  loc_124C71E:   var_98 = 7
  loc_124C727:   var_110 = 0
  loc_124C734:   Set var_AC = Me.FGrid1
  loc_124C73A:   LateIdCallSt
  loc_124C745:   var_98 = 8
  loc_124C74E:   var_110 = 0
  loc_124C75B:   Set var_AC = Me.FGrid1
  loc_124C761:   LateIdCallSt
  loc_124C775:   var_110 = &H384
  loc_124C782:   Set var_AC = Me.FGrid1
  loc_124C788:   LateIdCallSt
  loc_124C799:   Call 0.Method_arg_54 ("Unsettled Bills Detail", var_AC, var_110, 9, var_AC, var_110, 9, var_AC)
  loc_124C7A1: Else
  loc_124C7AC:   If (ShowDetail = "PendingKOTs") Then
  loc_124C7BC:     var_A8 = "SELECT Distinct K.VNo [KOT No.],K.RoomNo AS [Table/Room],W.NAME AS Steward,D.NAME AS Outlet,Case When K.Pending='Y' Then 'Pending' Else '' End Status,K.RoomType,K.Vdate,K.Vtime,K.RESTCODE,K.DocId FROM (((KOT AS K INNER JOIN wAITER AS W ON K.Waiter = W.Code)  INNER JOIN DEPART AS D ON K.RestCode = D.Code) INNER JOIN VOUCHER_TYPE AS V ON (K.Vtype = V.V_Type AND K.SITE_CODE=V.SITE_CODE)) WHERE K.NCKOT<>'Y' And K.VOIDYN<>'Y' AND K.VDate="
  loc_124C7C4:     var_98 = MemVar_1F920EC
  loc_124C7CC:     Proc_6_7_F25D88(var_D0, var_98, var_A8, var_140, -1, var_AC, var_110)
  loc_124C7D8:     var_110 = " And V.NCAT in('RSKOT') And K.Pending in('Y') And K.DELFLAG NOT IN('Y') And K.LOGSITE_CODE='"
  loc_124C7FE:     unk_41E9F1.Execute CStr(var_98 & var_D0 & var_110 & CVar(MemVar_1F92078) & "' And D.KOTAtNightAudit<>'No' Order By K.RESTCODE,K.DocId"), var_AC, var_110
  loc_124C809:     Set var_88 = var_AC
  loc_124C827:     CVarUnk
  loc_124C82C:     VerifyVarObj
  loc_124C832:     Set var_AC = Me.FGrid1
  loc_124C838:     LateIdStAd
  loc_124C846:     var_98 = 0
  loc_124C84F:     var_110 = 0
  loc_124C85C:     Set var_AC = Me.FGrid1
  loc_124C862:     LateIdCallSt
  loc_124C86D:     var_98 = 1
  loc_124C876:     var_110 = &H384
  loc_124C883:     Set var_AC = Me.FGrid1
  loc_124C889:     LateIdCallSt
  loc_124C894:     var_98 = 2
  loc_124C89D:     var_110 = &H44C
  loc_124C8AA:     Set var_AC = Me.FGrid1
  loc_124C8B0:     LateIdCallSt
  loc_124C8BB:     var_98 = 3
  loc_124C8C4:     var_110 = &H8FC
  loc_124C8D1:     Set var_AC = Me.FGrid1
  loc_124C8D7:     LateIdCallSt
  loc_124C8E2:     var_98 = 4
  loc_124C8EB:     var_110 = &H5DC
  loc_124C8F8:     Set var_AC = Me.FGrid1
  loc_124C8FE:     LateIdCallSt
  loc_124C909:     var_98 = 5
  loc_124C912:     var_110 = &H384
  loc_124C91F:     Set var_AC = Me.FGrid1
  loc_124C925:     LateIdCallSt
  loc_124C930:     var_98 = 6
  loc_124C939:     var_110 = 0
  loc_124C946:     Set var_AC = Me.FGrid1
  loc_124C94C:     LateIdCallSt
  loc_124C957:     var_98 = 7
  loc_124C960:     var_110 = 0
  loc_124C96D:     Set var_AC = Me.FGrid1
  loc_124C973:     LateIdCallSt
  loc_124C97E:     var_98 = 8
  loc_124C987:     var_110 = 0
  loc_124C994:     Set var_AC = Me.FGrid1
  loc_124C99A:     LateIdCallSt
  loc_124C9A5:     var_98 = 9
  loc_124C9AE:     var_110 = 0
  loc_124C9BB:     Set var_AC = Me.FGrid1
  loc_124C9C1:     LateIdCallSt
  loc_124C9CC:     var_98 = &HA
  loc_124C9D5:     var_110 = 0
  loc_124C9E2:     Set var_AC = Me.FGrid1
  loc_124C9E8:     LateIdCallSt
  loc_124C9F3:     var_98 = &HFFC0C0
  loc_124CA00:     Set var_AC = Me.FGrid1
  loc_124CA06:     var_AC.BackColorBkg = var_98
  loc_124CA16:     Call 0.Method_arg_64 (&HFFC0C0, var_AC, var_110, var_98, var_AC, var_110, var_98)
  loc_124CA21:     Call 0.Method_arg_54 ("Pending KOTs Detail", var_AC, var_110, var_98)
  loc_124CA26:   End If
  loc_124CA26: End If
  loc_124CA2B: Set var_88 = Nothing
  loc_124CA2E: Exit Sub
End Sub

Public Function ShowDetailGet() '41EC90
  ShowDetailGet = ShowDetail
End Function

Public Sub ShowDetailPut(Value) '41EC9F
  ShowDetail = Value
End Sub
