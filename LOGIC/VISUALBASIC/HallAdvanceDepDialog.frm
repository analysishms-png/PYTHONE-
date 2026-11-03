VERSION 5.00
Begin VB.Form HallAdvanceDepDialog
  Caption = "Advance Recived"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 13890
  ClientHeight = 9195
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
  StartUpPosition = 2 'CenterScreen
  Begin Frame FrTxnNo
    Left = 255
    Top = 7200
    Width = 5025
    Height = 285
    Visible = 0   'False
    TabIndex = 65
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 19
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1140
      Top = 0
      Width = 3825
      Height = 285
      TabIndex = 19
      BorderStyle = 0 'None
      MaxLength = 20
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
    Begin Label LblName
      Caption = "Txn. No."
      Index = 1
      ForeColor = &HFF0000&
      Left = 0
      Top = 30
      Width = 795
      Height = 240
      TabIndex = 66
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
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 6930
    Top = 1410
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 63
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 135
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 64
    End
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 1035
    Top = 1140
    Width = 1110
    Height = 285
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 12
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
End

Attribute VB_Name = "HallAdvanceDepDialog"

Private global_116 As Long
Private global_176 As Variant
Private global_112 As Long
Private global_140 As Double
Private global_108 As Integer
Private global_168 As Integer

Private Sub ListView_UnknownEvent_13 'F1954C
  'Data Table: 5502B8
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F19468: On Error Goto loc_F19546
  loc_F1946F: Set var_A4 = Me.ListView
  loc_F194B9: Set var_BC = Me.Txt
  loc_F194BF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F194C7: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F194F3: Me.FrmList.Visible = False
  loc_F19515: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F19523: Set var_9C = Me.Txt
  loc_F19529: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F19531: var_A4.SetFocus
  loc_F19545: Exit Sub
  loc_F19546: ' Referenced from: F19468
  loc_F19546: Proc_6_60_E62BC4(var_C8)
  loc_F1954B: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F557A8
  'Data Table: 5502B8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F55688: On Error Goto loc_F557A2
  loc_F5569A: (False).Visible = 
  loc_F556B9: If (Me.RecordCount > 0) Then
  loc_F556F8:   Set var_B4 = Me.Txt
  loc_F556FE:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(6), var_B8)
  loc_F55706:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F55739:   var_B0 = Me.Fields.Item("Code")
  loc_F55758:   Set var_B4 = Me.Txt
  loc_F5575E:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(6), var_B8)
  loc_F55766:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5577C: End If
  loc_F55787: Set var_A8 = Me.Txt
  loc_F5578D: Call 0.Method_DGTable_UnknownEvent_90 (CInt(6))
  loc_F55795: var_B0.SetFocus
  loc_F557A1: Exit Sub
  loc_F557A2: ' Referenced from: F55688
  loc_F557A2: Proc_6_60_E62BC4(var_B0)
  loc_F557A7: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA2930
  'Data Table: 5502B8
  Dim var_A8 As Variant
  loc_EA28B0: Set var_88 = ()
  loc_EA28DA: var_A8 = CVar(CInt(Fix(((Y - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA28E2: Set var_BC = Txt.DispID_1D(var_A8)
  loc_EA2902: Set var_BC = ()
  loc_EA291E: Proc_6_138_106D6F8((Txt.DispID_1B), global_72)
  loc_EA292C: Exit Sub
End Sub

Private Sub Form_Load() '132F868
  'Data Table: 5502B8
  Dim var_94 As Variant
  Dim var_B8 As Long
  Dim var_CC As Variant
  Dim var_BC As String
  Dim var_D0 As String
  Dim unk_5502D0 As Connection15
  Dim var_90 As Recordset15
  Dim var_DC As String
  Dim var_E8 As String
  Dim var_F0 As Long
  loc_132F0DC: On Error Goto loc_132F821
  loc_132F0E6: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_132F0F9: (CLng(MemVar_1F921B0)).BackColor = 
  loc_132F10F: (CLng(MemVar_1F921B0)).BackColor = 
  loc_132F125: Me.FrTxnNo.BackColor = CLng(MemVar_1F921B0)
  loc_132F13B: (CLng(MemVar_1F921B0)).BackColor = 
  loc_132F151: (CLng(MemVar_1F921B0)).BackColor = 
  loc_132F167: (CLng(MemVar_1F921B0)).BackColor = 
  loc_132F17D: (CLng(MemVar_1F921B0)).BackColor = 
  loc_132F193: (CLng(MemVar_1F921B0)).BackColor = 
  loc_132F1A8: Set var_94 = (CVar(CLng(MemVar_1F921B4)))
  loc_132F1BE: Call 0.Method_MeC (CDbl(9200))
  loc_132F1CB: Call 0.Method_Me4 (CDbl(7600))
  loc_132F1D8: global_116 = 6
  loc_132F1E1: var_B8 = global_116
  loc_132F1ED: If (var_B8 = 6) Then
  loc_132F1F0: End If
  loc_132F200: var_B8("AEDP").Tag = global_116
  loc_132F20E: Call 0.Method_arg_50 (var_BC)
  loc_132F216: var_CC = CVar(var_BC) 'String
  loc_132F240: global_124 = HallAdvanceDepDialog.AdvType
  loc_132F26B: unk_5502D0.Execute "Select * from Enviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_CC, -1
  loc_132F295: var_94 = FrTxnNo.DispID_12(var_CC).Fields
  loc_132F2A5: var_CC = CVar(var_94.Item("CreditCardInfoMandatory")) 'Address
  loc_132F2BF: If (Proc_6_38_E68A98(var_CC, var_94) = "Y") Then
  loc_132F2C8:   global_172 = "Y"
  loc_132F2CC: End If
  loc_132F2E0: var_BC = "SELECT DP.PayCode as code, RevMast.name as Name, revMast.PayType as PayType FROM DepartPay as DP LEFT OUTER JOIN RevMast ON DP.PayCode = RevMast.code where (DP.LOGSITE_CODE='" & MemVar_1F92078
  loc_132F2F0: unk_5502D0.Execute var_BC & "') AND DP.restcode='BANQ' ORDER BY NAME ", var_CC, -1
  loc_132F31F: CVarUnk
  loc_132F324: VerifyVarObj
  loc_132F330: LateIdStAd
  loc_132F362: unk_5502D0.Execute "SELECT Code,Name FROM Employee Where (LogSite_Code='" & MemVar_1F92078 & "' or LogSite_Code='HO') ORDER BY Name", var_CC, -1
  loc_132F391: CVarUnk
  loc_132F396: VerifyVarObj
  loc_132F3A2: LateIdStAd
  loc_132F3C4: var_BC = "Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.FolioNO From RoomMast T inner join RoomOcc on RoomOcc.RoomNo=T.Code where (T.LogSite_Code='" & MemVar_1F92078
  loc_132F3D9: var_DC = "SELECT Code,Name FROM Employee Where (LogSite_Code='" & MemVar_1F92078 & "' and RoomOcc.LogSite_Code='" & MemVar_1F92078 & "')  and T.Type in ('HL') and RoomOcc.ChkoutDate is NULL Order By T.Code"
  loc_132F3E2: unk_5502D0.Execute var_DC, var_CC, -1
  loc_132F415: CVarUnk
  loc_132F41A: VerifyVarObj
  loc_132F426: LateIdStAd
  loc_132F44F: var_D0 = "Select SubCode as Code,Name From SubGroup where LogSite_Code in ('HO','" & MemVar_1F92078 & "') and CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_132F458: unk_5502D0.Execute var_D0, var_CC, -1
  loc_132F487: CVarUnk
  loc_132F48C: VerifyVarObj
  loc_132F498: LateIdStAd
  loc_132F4BA: var_BC = "SELECT HallBook.DocId AS Code, HallBook.VNo AS Name,HallBook.PartyName,LogSite_Code,Site_Code FROM HallBook WHERE Docid Not In (Select Distinct BookDocId From HallSale1 Where LogSite_Code='" & MemVar_1F92078
  loc_132F4EA: var_E8 = var_BC & "' And RestCode='" & global_52 & "') And LogSite_Code='" & MemVar_1F92078 & "' and HallBook.RestCode='" & global_52
  loc_132F4FA: unk_5502D0.Execute var_E8 & "'", var_CC, -1
  loc_132F535: CVarUnk
  loc_132F53A: VerifyVarObj
  loc_132F546: LateIdStAd
  loc_132F578: unk_5502D0.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_CC, -1
  loc_132F5A7: CVarUnk
  loc_132F5AC: VerifyVarObj
  loc_132F5B2: Set var_94 = var_94(var_94(var_94(var_94(var_94(var_94(var_94))))))
  loc_132F5B8: LateIdStAd
  loc_132F5D2: Call 0.Method_arg_38 (MemVar_1F923AC, var_94, var_94, var_94)
  loc_132F5E3: Call 0.Method_arg_3C (MemVar_1F920EC, var_94, var_94)
  loc_132F5F4: Call 0.Method_arg_54 (MemVar_1F9206C, var_94)
  loc_132F605: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_132F616: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_132F627: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_132F638: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_132F649: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_132F65A: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_132F66B: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_132F685: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_132F693: Set var_94 = MemVar_1F92044
  loc_132F6A2: Call 0.Method_Form_Load8 (var_94)
  loc_132F6B8: Me.Recordset20.Clone
  loc_132F6D2: Call 0.Method_arg_50 (var_94, -1)
  loc_132F6E4: var_F0 = global_112
  loc_132F6F0: If (var_F0 = 1) Then
  loc_132F711:   var_D0 = "SELECT Distinct Docid as SearchCode,PostDocId,LogSite_Code,Site_Code FROM PayChargeH Where RestCode='" & global_52 & "'  And LogSite_Code='"
  loc_132F741:   Me.Connection15.Execute var_D0 & MemVar_1F92078 & "' And ContraDocId='" & HallAdvanceDepDialog.pDocId & "' AND Vtype In ('AD','AR')", var_CC, -1
  loc_132F752:   Set global_56 = var_94
  loc_132F774: Else
  loc_132F792:   var_D0 = "SELECT Distinct Docid as SearchCode,PostDocId,LogSite_Code,Site_Code FROM PayChargeH Where RestCode='" & global_52 & "'  And LogSite_Code='"
  loc_132F7A9:   unk_5502D0.Execute var_D0 & MemVar_1F92078 & "' AND Vtype In ('AD','AR')", var_CC, -1
  loc_132F7BA:   Set global_56 = var_94
  loc_132F7D3: End If
  loc_132F7DF: Set var_94 = Me
  loc_132F7E8: var_BC = "INI"
  loc_132F7F6: Call Proc_125_67_F66744(Proc_5_1_100CB50(var_BC, var_94, global_56, var_94), var_94, var_F0)
  loc_132F801: Call Proc_125_69_11E2B04(var_94)
  loc_132F806: Call Proc_125_75_11D581C(FrTxnNo.DispID_68030007)
  loc_132F80B: Call Proc_125_70_156B0D0()
  loc_132F815: Set var_8C = Nothing
  loc_132F81D: Set var_90 = Nothing
  loc_132F820: Exit Sub
  loc_132F821: ' Referenced from: 132F0DC
  loc_132F829: Set var_94 = Err()
  loc_132F82F: Call 0.Method_arg_2C (var_BC)
  loc_132F850: MsgBox(CVar(var_BC), &H40, "Information", var_114, var_134)
  loc_132F863: Exit Sub
  loc_132F864: Exit Sub
End Sub

Private Sub Form_Resize() 'ED3C58
  'Data Table: 5502B8
  Dim var_B0 As Variant
  Dim var_B4 As Label
  loc_ED3BB6: Call 0.Method_arg_50 (var_88)
  loc_ED3BC8: (var_88).Caption = 
  loc_ED3BE1: (CDbl(0)).Left = 
  loc_ED3BF3: var_B0 = ().Height
  loc_ED3C1A: Set var_B4 = ((CDbl((var_B0).Top) + CDbl(var_B0)))
  loc_ED3C20: var_B4.Top = 
  loc_ED3C3B: Call 0.Method_arg_100 (var_B8)
  loc_ED3C4D: (var_B8).Width = 
  loc_ED3C55: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E921C4
  'Data Table: 5502B8
  loc_E9214F: Set global_72 = Nothing
  loc_E92161: Set global_56 = Nothing
  loc_E92173: Set global_60 = Nothing
  loc_E92185: Set global_68 = Nothing
  loc_E92197: Set global_84 = Nothing
  loc_E921A9: Set global_88 = Nothing
  loc_E921BB: Set global_64 = Nothing
  loc_E921C2: Exit Sub
End Sub

Private Sub Form_Activate() '12B4504
  'Data Table: 5502B8
  Dim var_90 As Long
  Dim var_94 As Long
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_C0 As TextBox
  Dim var_CC As TextBox
  Dim var_88 As Variant
  Dim var_D8 As Long
  Dim var_DC As Long
  Dim var_E0 As String
  Dim var_E8 As String
  Dim unk_5502D0 As Connection15
  Dim Me As Recordset15
  Dim var_C8 As TextBox
  Dim var_100 As Variant
  Dim var_E4 As String
  loc_12B3EE4: Set var_88 = MemVar_1F92244.Picture3
  loc_12B3EF5: Call 0.Method_arg_74 (MDIForm1.Picture3.Left)
  loc_12B3F05: Call 0.Method_arg_7C (CDbl(1450))
  loc_12B3F15: var_90 = OpenMode
  loc_12B3F21: If (var_90 = 1) Then
  loc_12B3F3B:   If (OpenType = 6) Then
  loc_12B3F4C:     Set var_88 = Me.Txt
  loc_12B3F52:     Call 0.Method_Form_Activate0 (CInt(7), var_98, var_9A)
  loc_12B3F5A:     var_94 = var_98.Enabled
  loc_12B3F6C:     If (var_9A = &HFF) Then
  loc_12B3F7A:       Set var_88 = Me.Txt
  loc_12B3F80:       Call 0.Method_Form_Activate0 (CInt(7), var_98)
  loc_12B3F88:       var_98.SetFocus
  loc_12B3F94:     End If
  loc_12B3FA2:     Set var_88 = Me.Txt
  loc_12B3FA8:     Call 0.Method_Form_Activate0 (CInt(7), var_98)
  loc_12B3FB0:     var_8C = var_98.Left
  loc_12B3FC1:     Set var_C0 = var_90(CVar(var_8C))
  loc_12B3FC7:     var_C0.Left = 
  loc_12B3FE3:     Set var_98 = Me.Txt
  loc_12B3FE9:     Call 0.Method_Form_Activate0 (CInt(7), var_C0)
  loc_12B4004:     Set var_C8 = Me.Txt
  loc_12B400A:     Call 0.Method_Form_Activate0 (CInt(7), var_CC)
  loc_12B401E:     Set var_88 = (var_8C)
  loc_12B4024:      = var_88.Top
  loc_12B4038:     var_AC = CVar((((var_8C + var_C0.Top) + var_CC.Height) + CDbl(&HF))) 'Single
  loc_12B4047:     (CVar(var_8C)).Top = 
  loc_12B405B:   End If
  loc_12B405E: Else
  loc_12B4067:   If (var_90 = 2) Then
  loc_12B4075:     var_D8 = OpenType
  loc_12B4081:     If (var_D8 = 6) Then
  loc_12B4084:     End If
  loc_12B4084:   End If
  loc_12B4084: End If
  loc_12B408A: var_DC = global_112
  loc_12B4096: If (var_DC = 1) Then
  loc_12B409F:   Call 0.Method_arg_1C0 (var_E0, var_DC)
  loc_12B40B4:   If (CDbl(Val(var_E0)) > CDbl(0)) Then
  loc_12B40D5:     var_E8 = "SELECT Distinct Docid as SearchCode,PostDocId,ContraDocId FROM PayChargeH Where RestCode='" & global_52 & "' And Vtype In ('AD','AR') AND ContraDocID='"
  loc_12B40F7:     unk_5502D0.Execute var_E8 & HallAdvanceDepDialog.pDocId & "'", var_100, -1
  loc_12B413A:     If (Me.RecordCount <= 0) Then
  loc_12B4160:       Call Proc_125_67_F66744(Proc_5_1_100CB50("ADD", Me, Me), Me)
  loc_12B416B:       Call Proc_125_68_F6775C(var_D8)
  loc_12B417D:       Set var_88 = Me.Txt
  loc_12B4183:       Call 0.Method_Form_Activate0 (CInt(7), var_98)
  loc_12B418B:       var_98.Enabled = True
  loc_12B41A2:       Set var_88 = var_98(1)
  loc_12B41A8:       Call 0.Method_Form_Activate0 (0)
  loc_12B41B0:       var_98.Visible = 
  loc_12B41CF:       Call 0.Method_Form_Activate0 (CInt(5), var_98)
  loc_12B41D7:       var_98.Visible = False
  loc_12B41FA:       var_E0 = "SELECT HallBook.DocId AS Code, HallBook.VNo AS Name,HallBook.PartyName FROM HallBook WHERE HallBook.RestCode='" & global_52
  loc_12B4223:       unk_5502D0.Execute var_E0 & "' AND HallbOOK.Docid='" & HallAdvanceDepDialog.pDocId & "'", var_100, -1
  loc_12B4234:       Set global_88 = Me.Txt
  loc_12B4266:       If (Me.RecordCount <> 0) Then
  loc_12B426F:         Call Proc_125_74_11598CC(MemVar_1F92044, var_E0)
  loc_12B42B3:         Set var_C0 = Me.Txt
  loc_12B42B9:         Call 0.Method_Form_Activate0 (CInt(0), var_C8)
  loc_12B42C1:         var_C8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_12B4313:         Set var_C0 = Me.Txt
  loc_12B4319:         Call 0.Method_Form_Activate0 (CInt(4), var_C8)
  loc_12B4321:         var_C8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12B4373:         Set var_C0 = Me.Txt
  loc_12B4379:         Call 0.Method_Form_Activate0 (CInt(4), var_C8)
  loc_12B4381:         var_C8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_12B43B1:         var_98 = Me.Fields.Item("PartyName")
  loc_12B43B9:         var_100 = CVar(var_98) 'Address
  loc_12B43D0:         Set var_C0 = Me.Txt
  loc_12B43D6:         Call 0.Method_Form_Activate0 (CInt(6), var_C8)
  loc_12B43DE:         var_C8.Text = Proc_6_38_E68A98(var_100)
  loc_12B43FD:         Set var_88 = Me.Txt
  loc_12B4403:         Call 0.Method_Form_Activate0 (CInt(7), var_98)
  loc_12B440B:         var_98.SetFocus
  loc_12B4417:       End If
  loc_12B441A:     Else
  loc_12B441A:       Call Proc_125_70_156B0D0(var_88)
  loc_12B441F:     End If
  loc_12B4429:     Call 0.Method_arg_1C4 (CStr(0))
  loc_12B4434:   Else
  loc_12B4452:     var_E8 = "SELECT Distinct Docid as SearchCode,PostDocId FROM PayChargeH Where RestCode='" & global_52 & "'  And Vtype In ('AD','AR') AND ContraDocID='"
  loc_12B4474:     unk_5502D0.Execute var_E8 & HallAdvanceDepDialog.pDocId & "'", var_100, -1
  loc_12B4485:     Set global_56 = var_88
  loc_12B44A0:   End If
  loc_12B44A3: Else
  loc_12B44C1:   var_E4 = "SELECT Distinct Docid as SearchCode,PostDocId FROM PayChargeH Where RestCode='" & global_52 & "'  And LogSite_Code='"
  loc_12B44D8:   unk_5502D0.Execute var_E4 & MemVar_1F92078 & "' AND Vtype In ('AD','AR')", var_100, -1
  loc_12B44E9:   Set global_56 = var_88
  loc_12B4502: End If
  loc_12B4502: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F03248
  'Data Table: 5502B8
  Dim var_B4 As TextBox
  loc_F0318C: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_F031C0:   Set var_B4 = (( And (CBool(((CBool(().Visible) = 0)).Visible) = 0)))
  loc_F031E5:   If ( And (CBool(var_B4.Visible) = 0)) Then
  loc_F031F5:     Me.var_B4.Unload Me
  loc_F031FD:     Exit Sub
  loc_F031FE:   End If
  loc_F031FE: End If
  loc_F0321C: If (((CLng(KeyCode) = &H53) And (Shift = 2)) And (global_112 = 1)) Then
  loc_F0321F:   Call Proc_125_78_14C981C()
  loc_F03224:   Call TopCtrl1_UnknownEvent_16()
  loc_F03229:   Exit Sub
  loc_F0322A: End If
  loc_F0323E: Proc_6_88_FE81B4(Me, KeyCode)
  loc_F03246: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF81B4
  'Data Table: 5502B8
  loc_EF80F4: If (CBool(().Visible) = &HFF) Then
  loc_EF80F7:   Call DGTable_UnknownEvent_9()
  loc_EF80FC: End If
  loc_EF8118: If (CBool(().Visible) = &HFF) Then
  loc_EF811B:   Call DGEmp_UnknownEvent_9()
  loc_EF8120: End If
  loc_EF813C: If (CBool(().Visible) = &HFF) Then
  loc_EF813F:   Call DGPayType_UnknownEvent_9()
  loc_EF8144: End If
  loc_EF8160: If (CBool(().Visible) = &HFF) Then
  loc_EF8163:   Call DGRoom_UnknownEvent_9()
  loc_EF8168: End If
  loc_EF8184: If (CBool(().Visible) = &HFF) Then
  loc_EF8187:   Call DGCompany_UnknownEvent_9()
  loc_EF818C: End If
  loc_EF81A8: If (CBool(().Visible) = &HFF) Then
  loc_EF81AB:   Call DGTaxStru_UnknownEvent_9()
  loc_EF81B0: End If
  loc_EF81B0: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0AD88
  'Data Table: 5502B8
  loc_E0AD74: Call Proc_125_80_13D1B5C()
  loc_E0AD7F: Call Proc_125_77_111AC00(global_156)
  loc_E0AD84: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'DFB680
  'Data Table: 5502B8
  loc_DFB67C: Exit Sub
  loc_DFB67D:  = arg_D08
End Sub

Private Sub FGrid_UnknownEvent_E 'E44760
  'Data Table: 5502B8
  loc_E44736: If (KeyCode = 2) Then
  loc_E44751:   Call 0.Method_arg_2BC (var_A8(var_98), var_B8)
  loc_E44759:   Call FGrid_UnknownEvent_9()
  loc_E4475E: End If
  loc_E4475E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '109DF0C
  'Data Table: 5502B8
  Dim var_88 As String
  Dim var_D4 As Variant
  Dim var_D8 As Long
  Dim unk_5502D0 As Connection15
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F4 As TextBox
  Dim var_C0 As Variant
  loc_109DC5C: On Error Goto loc_109DF04
  loc_109DC82: Call Proc_125_67_F66744(Proc_5_1_100CB50("ADD", Me))
  loc_109DC8D: Call Proc_125_68_F6775C(global_56)
  loc_109DCA1: var_C0 = "dd/MMM/yyyy"
  loc_109DCBA: var_88 = CStr(Format(MemVar_1F920EC, var_C0))
  loc_109DCCF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4, var_88)
  loc_109DCD7: var_D4.Text = 1
  loc_109DCF3: Call Proc_125_74_11598CC(MemVar_1F92044, var_88)
  loc_109DD01: var_D8 = global_112
  loc_109DD0D: If (var_D8 = 1) Then
  loc_109DD10:   Call Fgrid1_UnknownEvent_9()
  loc_109DD2C:   var_88 = "SELECT HallBook.DocId AS Code, HallBook.VNo AS Name,HallBook.PartyName FROM HallBook WHERE HallBook.RestCode='" & global_52
  loc_109DD55:   unk_5502D0.Execute var_88 & "' AND HallbOOK.Docid='" & HallAdvanceDepDialog.pDocId & "'", var_C0, -1
  loc_109DD66:   Set global_88 = Me.Txt
  loc_109DD98:   If (Me.RecordCount <> 0) Then
  loc_109DDB0:     var_8C = Me.Fields
  loc_109DDD7:     Set var_F0 = Me.Txt
  loc_109DDDD:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_F4, CStr(var_8C.Item("Name").Value))
  loc_109DDE5:     var_F4.Text = var_8C
  loc_109DE37:     Set var_F0 = Me.Txt
  loc_109DE3D:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_F4, CStr(Me.Fields.Item("Code").Value))
  loc_109DE45:     var_F4.Tag = var_D8
  loc_109DE75:     var_D4 = Me.Fields.Item("PartyName")
  loc_109DE94:     Set var_F0 = Me.Txt
  loc_109DE9A:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_F4)
  loc_109DEA2:     var_F4.Text = Proc_6_38_E68A98(CVar(var_D4))
  loc_109DEB6:   End If
  loc_109DEC1:   Set var_8C = Me.Txt
  loc_109DEC7:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_D4)
  loc_109DECF:   var_D4.SetFocus
  loc_109DEDE: Else
  loc_109DEE9:   Set var_8C = Me.Txt
  loc_109DEEF:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_D4)
  loc_109DEF7:   var_D4.SetFocus
  loc_109DF03: End If
  loc_109DF03: Exit Sub
  loc_109DF04: ' Referenced from: 109DC5C
  loc_109DF04: Proc_6_60_E62BC4(1)
  loc_109DF09: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC39AC
  'Data Table: 5502B8
  loc_EC3914: On Error Goto loc_EC39A4
  loc_EC394E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC395D:   Set var_110 = Me
  loc_EC3974:   Call Proc_125_67_F66744(Proc_5_1_100CB50("INI", var_110))
  loc_EC397F:   Call Proc_125_72_FDEA24(global_56)
  loc_EC3984:   Call Proc_125_70_156B0D0()
  loc_EC398C: Else
  loc_EC3992:   Call 0.Method_arg_1E8 (var_110)
  loc_EC399A:   Call var_110.SetFocus
  loc_EC39A3: End If
  loc_EC39A3: Exit Sub
  loc_EC39A4: ' Referenced from: EC3914
  loc_EC39A4: Proc_6_60_E62BC4()
  loc_EC39A9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1308944
  'Data Table: 5502B8
  Dim var_9C As Variant
  Dim unk_5502D0 As Connection15
  Dim var_D4 As Recordset15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  Dim var_A0 As String
  Dim var_D0 As Variant
  Dim var_14C As Variant
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_1B0 As Integer
  Dim var_15C As Variant
  Dim var_4701 As Variant
  loc_1308264: On Error Goto loc_13088F3
  loc_1308294: Set var_98 = Me.Txt
  loc_130829A: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_9C, var_A0, "SELECT Count(*) FROM HallSale1 WHERE BookDocId='", var_D0, -1)
  loc_13082CC: unk_5502D0.Execute var_D8 & var_A0 & "' And RestCode='" & global_52 & "'", 0, var_EC
  loc_13082DC:  = var_D8.Item()
  loc_13082E4:  = var_EC.Value
  loc_1308315: If (var_9C.Tag.Fields > 0) Then
  loc_130833F:   MsgBox(CVar("Can not delete advance." & vbCrLf & "Bill Generated!"), &H10, "Advance...", var_11C, var_12C)
  loc_1308352:   Exit Sub
  loc_1308353: End If
  loc_1308359: var_14C = 0
  loc_13083AA: var_11C = "SELECT count(*) FROM Ledger WHERE DocId='" & Me.Fields.Item("PostDocId").Value & "' AND V_Type='BREC'" 
  loc_13083B8: unk_5502D0.Execute CStr(var_11C), var_12C, -1
  loc_13083C0: var_D4 = var_D4.Fields
  loc_13083C8: var_14C = var_D8.Item(var_D8)
  loc_13083D0: var_EC = var_EC.Value
  loc_13083FD: If (var_15C > 0) Then
  loc_1308427:   MsgBox(CVar("Recrod can not delete." & vbCrLf & "Related entry exist!"), &H10, "Delete...", var_11C, var_12C)
  loc_130843A:   Exit Sub
  loc_130843B: End If
  loc_1308472: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_11C, var_12C) = 6) Then
  loc_130847E:   unk_5502D0.BeginTrans var_180
  loc_130848C:   var_D0 = Me.Bookmark
  loc_1308494:   var_94 = var_D0 'Variant
  loc_13084B5:   Proc_6_7_F25D88(var_D0, MemVar_1F920EC, "UPDATE HallBook SET Advance=0,U_EntDt=", var_210)
  loc_13084BD:   var_FC = -1 & var_D0 
  loc_13084D0:   var_1B0 = 0
  loc_1308510:   var_12C = Me.Fields.Item("SearchCode").Value
  loc_130852F:   unk_5502D0.Execute CStr("SELECT ContraDocId FROM PayChargeH Where VType='AD' AND Docid='" & var_12C & "'"), var_1A0, -1
  loc_1308537:   var_D4 = var_D4.Fields
  loc_130853F:   var_1B0 = var_D8.Item(var_D8)
  loc_1308547:   var_EC = var_EC.Value
  loc_1308566:   unk_5502D0.Execute CStr(var_1C0 & var_1C0 & "'"), "Confirmation" & " WHERE Docid='", var_214
  loc_13085F0:   unk_5502D0.Execute CStr("Delete From PayChargeH Where VType='AD' AND Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_12C, -1
  loc_130863B:   var_23C = 0
  loc_130864E:   var_234 = 0
  loc_1308659:   var_230 = 0
  loc_130866C:   var_228 = 0
  loc_1308677:   var_224 = 0
  loc_130868A:   var_21C = 0
  loc_13086D3:   Proc_154_5_10E33A4(MemVar_1F92044, "PayChargeH", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1308743:   var_11C = "Delete From lEDGER Where Docid='" & Me.Fields.Item("PostDocId").Value & "'" 
  loc_1308751:   unk_5502D0.Execute CStr(var_11C), var_12C, -1
  loc_130879C:   var_23C = 0
  loc_13087AF:   var_234 = 0
  loc_13087BA:   var_230 = 0
  loc_13087CD:   var_228 = 0
  loc_13087D8:   var_224 = 0
  loc_13087EB:   var_21C = 0
  loc_130882B:   var_A0 = "Ledger"
  loc_1308834:   Proc_154_5_10E33A4(MemVar_1F92044, var_A0, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1308862:   unk_5502D0.CommitTrans
  loc_1308872:   Me.Requery -1
  loc_1308892:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_130889F:     Me.Bookmark = var_94
  loc_13088A7:   Else
  loc_13088BB:     If (Me.EOF = 0) Then
  loc_13088C4:       Me.MoveLast
  loc_13088C9:     End If
  loc_13088C9:   End If
  loc_13088C9:   Call Proc_125_70_156B0D0(var_21C, 0, var_224, var_228)
  loc_13088EA:   Proc_5_0_110649C(&HFF, Me, global_56, 0)
  loc_13088F2: End If
  loc_13088F2: Exit Sub
  loc_13088F3: ' Referenced from: 1308264
  loc_13088F9: unk_5502D0.RollbackTrans
  loc_1308906: Set var_98 = Err()
  loc_130890C: Call 0.Method_arg_2C (var_A0, 0, var_230)
  loc_130892D: MsgBox(CVar(var_A0), &H30, " Deletion Error ", var_11C, var_12C)
  loc_1308940: Exit Sub
  loc_1308941: var_4701 = CVar(var_234) 'Integer
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FCB9C8
  'Data Table: 5502B8
  Dim var_8C As TextBox
  Dim unk_5502D0 As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  Dim var_90 As String
  Dim var_C0 As Variant
  loc_FCB830: On Error Goto loc_FCB9C1
  loc_FCB860: Set var_88 = Me.Txt
  loc_FCB866: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_8C, var_90, "SELECT Count(*) FROM HallSale1 WHERE BookDocId='", var_C0, -1)
  loc_FCB898: unk_5502D0.Execute var_C8 & var_90 & "' And RestCode='" & global_52 & "'", 0, var_DC
  loc_FCB8A8:  = var_C8.Item()
  loc_FCB8B0:  = var_DC.Value
  loc_FCB8E1: If (var_8C.Tag.Fields > 0) Then
  loc_FCB90B:   MsgBox(CVar("Can not modify advance." & vbCrLf & "Bill Generated!"), &H10, "Advance...", var_10C, var_11C)
  loc_FCB91E:   Exit Sub
  loc_FCB91F: End If
  loc_FCB942: Call Proc_125_67_F66744(Proc_5_1_100CB50("EDIT", Me))
  loc_FCB95A: Set var_88 = Me.Txt
  loc_FCB960: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_8C)
  loc_FCB968: var_8C.Enabled = False
  loc_FCB981: Set var_88 = Me.Txt
  loc_FCB987: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_8C)
  loc_FCB98F: var_8C.Enabled = False
  loc_FCB9A6: Set var_88 = Me.Txt
  loc_FCB9AC: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(8), var_8C)
  loc_FCB9B4: var_8C.SetFocus
  loc_FCB9C0: Exit Sub
  loc_FCB9C1: ' Referenced from: FCB830
  loc_FCB9C1: Proc_6_60_E62BC4(global_56)
  loc_FCB9C6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16ED8
  'Data Table: 5502B8
  loc_E16ECD: Me.Global.Unload Me
  loc_E16ED5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F90F98
  'Data Table: 5502B8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As Long
  Dim var_110 As String
  Dim MemVar_1F920E4 As String
  loc_F90E44: On Error Goto loc_F90F30
  loc_F90E50: var_88 = Me.RecordCount
  loc_F90E5E: If (var_88 <= 0) Then
  loc_F90E67:   var_B8 = "Information"
  loc_F90E82:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F90E92:   Exit Sub
  loc_F90E93: End If
  loc_F90E99: var_10C = global_112
  loc_F90EA5: If (var_10C = 1) Then
  loc_F90EB2:   var_110 = "SELECT Distinct Docid as Code,VNo As Rect_No,Convert(Varchar(11),Vdate,106) As V_Date,Comments,PayType,Case When AmtCr<>0 Then AmtCr Else AmtDr End As Amount FROM PayChargeH Where IsNull(ContraDocId,'')<>'' And RestCode='" & global_52
  loc_F90ED2:   MemVar_1F920E4 = var_110 & "'  And Vtype In ('AD','AR') AND ContraDocID='" & HallAdvanceDepDialog.pDocId & "'"
  loc_F90EE4: Else
  loc_F90EEE:   var_110 = "SELECT Distinct Docid as Code,VNo As Rect_No,Convert(Varchar(11),Vdate,106) As V_Date,Comments,PayType,Case When AmtCr<>0 Then AmtCr Else AmtDr End As Amount FROM PayChargeH Where IsNull(ContraDocId,'')<>'' And RestCode='" & global_52
  loc_F90EF5:   MemVar_1F920E4 = var_110 & "'  And Vtype In ('AD','AR')"
  loc_F90EFC: End If
  loc_F90F02: MemVar_1F92120 = Me
  loc_F90F09: var_110 = "800,1000,4000,1000,1000"
  loc_F90F0F: Proc_6_126_F1BCC0(var_110, MemVar_1F920E4)
  loc_F90F2A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F90F2F: Exit Sub
  loc_F90F30: ' Referenced from: F90E44
  loc_F90F38: Set var_120 = Err()
  loc_F90F3E: Call 0.Method_arg_1C (var_88, MemVar_1F920E4)
  loc_F90F4F: If (var_88 <> 0) Then
  loc_F90F5A:   Set var_120 = Err()
  loc_F90F60:   Call 0.Method_arg_2C (var_110)
  loc_F90F81:   MsgBox(CVar(var_110), &H40, "Validation", var_E8, var_108)
  loc_F90F94: End If
  loc_F90F94: Exit Sub
  loc_F90F95: Set var_88 = var_10C
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E315D8
  'Data Table: 5502B8
  loc_E315C8: Proc_5_0_110649C(&HFF, Me)
  loc_E315D0: Call Proc_125_70_156B0D0(global_56)
  loc_E315D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E39138
  'Data Table: 5502B8
  loc_E39128: Proc_5_0_110649C(&HFF, Me)
  loc_E39130: Call Proc_125_70_156B0D0(global_56)
  loc_E39135: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E390D8
  'Data Table: 5502B8
  loc_E390C8: Proc_5_0_110649C(&HFF, Me)
  loc_E390D0: Call Proc_125_70_156B0D0(global_56)
  loc_E390D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E31578
  'Data Table: 5502B8
  loc_E31568: Proc_5_0_110649C(&HFF, Me)
  loc_E31570: Call Proc_125_70_156B0D0(global_56)
  loc_E31575: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E7F3D0
  'Data Table: 5502B8
  Dim var_8C As TextBox
  loc_E7F386: Set var_88 = Me.Txt
  loc_E7F38C: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_8C)
  loc_E7F3B8: Call Proc_125_71_143A804(var_8C.Text, "W")
  loc_E7F3CD: Exit Sub
  loc_E7F3CE: Set TopCtrl1_UnknownEvent_14058 = "Hall Booking"
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E82228
  'Data Table: 5502B8
  Dim Me As Recordset15
  loc_E821BF: Me.Requery -1
  loc_E821CF: Me.Requery -1
  loc_E821DF: Me.Requery -1
  loc_E821EF: Me.Requery -1
  loc_E821FF: Me.Requery -1
  loc_E8220F: Me.Requery -1
  loc_E8221F: Me.Requery -1
  loc_E82224: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '19A0F54
  'Data Table: 5502B8
  Dim var_DC As Variant
  Dim var_124 As String
  Dim unk_5502D0 As Connection15
  Dim var_15C As Variant
  Dim var_160 As String
  Dim var_170 As String
  Dim var_168 As TextBox
  Dim var_144 As Variant
  Dim var_120 As Variant
  Dim var_154 As Variant
  Dim var_180 As String
  Dim var_1A0 As Double
  Dim var_CC As Double
  Dim var_1A4 As Long
  Dim var_16C As String
  Dim var_1F8 As String
  Dim var_134 As Variant
  Dim var_22C As Variant
  Dim var_C6C As Double
  Dim var_65C As Variant
  Dim var_C74 As Double
  Dim var_BB4 As TextBox
  Dim var_200 As String
  Dim var_20C As String
  Dim var_210 As String
  Dim var_214 As String
  Dim var_218 As String
  Dim var_21C As String
  Dim var_190 As Variant
  Dim var_24C As Variant
  Dim var_25C As Variant
  Dim var_2AC As Variant
  Dim var_2EC As Variant
  Dim var_30C As Variant
  Dim var_36C As Variant
  Dim var_37C As Variant
  Dim var_39C As Variant
  Dim var_3BC As Variant
  Dim var_44C As Variant
  Dim var_46C As Variant
  Dim var_4FC As Variant
  Dim var_604 As Variant
  Dim var_67C As Variant
  Dim var_8FC As Variant
  Dim var_B8C As Variant
  Dim var_17C As TextBox
  Dim var_23C As Variant
  Dim var_C98 As Double
  Dim var_164 As Variant
  Dim var_98 As Recordset15
  Dim var_110 As Variant
  Dim var_2CC As Variant
  Dim var_35C As Variant
  Dim var_4BC As Variant
  Dim var_54C As Variant
  Dim var_66C As Variant
  Dim var_C4 As Double
  Dim var_26C As Variant
  Dim Me As Recordset15
  loc_199E198: On Error Goto loc_19A0EA2
  loc_199E1B1: Set var_110 = 1(1)
  loc_199E1C2: var_124 = CStr(Txt.DispID_41)
  loc_199E1D3: If (var_124 = vbNullString) Then
  loc_199E1E1:   var_134 = "Save Data"
  loc_199E1F7:   MsgBox("Please Fill Payment Details Before Saving..", &H40, var_134, var_144, var_154)
  loc_199E207:   Exit Sub
  loc_199E208: End If
  loc_199E20C: var_86 = CByte(0) 'Byte
  loc_199E219: unk_5502D0.BeginTrans var_158
  loc_199E222: var_86 = CByte(1) 'Byte
  loc_199E244: Set var_110 = Me.Txt
  loc_199E24A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, "Delete From PayChargeH Where Docid='")
  loc_199E252: var_190 = var_15C.Text
  loc_199E25B: var_160 = -1 & var_124
  loc_199E262: var_170 = var_160 & "' AND VNo="
  loc_199E273: Set var_164 = Me.Txt
  loc_199E279: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168, var_16C)
  loc_199E281: var_170 = var_168.Text
  loc_199E29F: Set var_178 = Me.Txt
  loc_199E2A5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_17C)
  loc_199E2B4: Proc_6_7_F25D88(var_134, CVar(var_17C))
  loc_199E2CA: unk_5502D0.Execute CStr(CVar(var_194 & var_16C & " AND VDate=") & var_134), , 
  loc_199E303: Set var_110 = 1(var_AA)
  loc_199E31F: For var_198 =  To CInt((CLng(Txt.DispID_4) - 1)):  = var_198 'Integer
  loc_199E33B:   Set var_110 = CVar(CLng(var_AA))(2)
  loc_199E35D:   If (CStr(Txt.DispID_41) <> vbNullString) Then
  loc_199E376:     Set var_110 = CVar(CLng(var_AA))(8)
  loc_199E38F:     var_1A0 = Val(CStr(Txt.DispID_41))
  loc_199E399:     var_CC = (var_CC + var_1A0)
  loc_199E3AB:     var_1A4 = global_116
  loc_199E3B7:     If (var_1A4 = 6) Then
  loc_199E3D0:       Set var_110 = CVar(CLng(var_AA))(2)
  loc_199E3F2:       If (CStr(Txt.DispID_41) = "Cheque") Then
  loc_199E441:         Set var_110 = CVar(CLng(var_AA))(CVar(CLng(&HD)))
  loc_199E475:         Set var_15C = CVar(CLng(var_AA))(CVar(CLng(&HE)))
  loc_199E48A:         var_94 = "Adv.Recd.Agnst.BillNo." & CStr(Val(CStr(Right(global_100, 8)))) & " Chq." & CStr(Txt.DispID_41) & " Dt." & CStr(Txt.DispID_41)
  loc_199E4B3:       Else
  loc_199E4C8:         Set var_110 = CVar(CLng(var_AA))(CVar(CLng(&HF)))
  loc_199E4E1:         var_94 = Proc_6_38_E68A98(CVar(CStr(Txt.DispID_41)), var_1A4)
  loc_199E4EE:       End If
  loc_199E504:       If (HallAdvanceDepDialog.AdvType = "AD") Then
  loc_199E50B:         Set var_110 = var_1A0(var_CC)
  loc_199E519:         var_124 = CStr(Txt.DispID_68030005)
  loc_199E52A:         If (var_124 = "Add") Then
  loc_199E533:           Call Proc_125_74_11598CC(MemVar_1F92044)
  loc_199E53E:           global_100 = var_124
  loc_199E545:         End If
  loc_199E558:         var_120 = Right(global_100, 8)
  loc_199E569:         var_1A0 = Val(CStr(var_120))
  loc_199E57A:         var_134 = Trim(global_104)
  loc_199E58A:         Set var_110 = Me.Txt
  loc_199E590:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_15C)
  loc_199E59F:         Proc_6_7_F25D88(var_23C, CVar(var_15C))
  loc_199E5BB:         var_27C = "HH:mm"
  loc_199E5E1:         Set var_164 = CVar(CLng(var_AA))(CVar(CLng(&H11)))
  loc_199E609:         Set var_168 = CVar(CLng(var_AA))(&H16)
  loc_199E631:         Set var_178 = CVar(CLng(var_AA))(1)
  loc_199E659:         Set var_17C = CVar(CLng(var_AA))(2)
  loc_199E681:         Set var_194 = CVar(CLng(var_AA))(8)
  loc_199E69A:         var_C6C = Val(CStr(Txt.DispID_41))
  loc_199E6B3:         Set var_5D4 = CVar(CLng(var_AA))(&H12)
  loc_199E6D0:         Set var_648 = Me.Txt
  loc_199E6D6:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_64C, Txt.DispID_41, var_C6C, Txt.DispID_41, Txt.DispID_41)
  loc_199E6E5:         Proc_6_39_E7C810(var_66C, CVar(var_64C), Txt.DispID_41, Txt.DispID_41)
  loc_199E6FF:         Set var_6E0 = CVar(CLng(var_AA))(CVar(CLng(9)))
  loc_199E726:         Set var_774 = CVar(CLng(var_AA))(CVar(CLng(&HA)))
  loc_199E74D:         Set var_808 = CVar(CLng(var_AA))(CVar(CLng(&HD)))
  loc_199E774:         Set var_89C = CVar(CLng(var_AA))(CVar(CLng(&HE)))
  loc_199E78B:         Proc_6_7_F25D88(var_8CC, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_199E7A6:         Set var_940 = CVar(CLng(var_AA))(&H19)
  loc_199E7BD:         Proc_6_17_EAA2B0(var_970, CVar(CStr(Txt.DispID_41)), 1)
  loc_199E7D7:         Set var_9E4 = CVar(CLng(var_AA))(CVar(CLng(&HB)))
  loc_199E7EE:         Proc_6_7_F25D88(var_A14, CVar(CStr(Txt.DispID_41)), 1)
  loc_199E808:         Set var_A88 = CVar(CLng(var_AA))(CVar(CLng(&HC)))
  loc_199E821:         var_C74 = Val(CStr(Txt.DispID_41))
  loc_199E82F:         Proc_183_7_EB0C44(var_B3C, MemVar_1F920EC, var_C74)
  loc_199E842:         Set var_BB0 = Me.Txt
  loc_199E848:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_BB4, var_BB8)
  loc_199E869:         var_124 = "Insert Into PayChargeH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,AmtCr,TaxStru,"
  loc_199E877:         var_16C = var_124 & "FPNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,BatchNo,U_Name,U_EntDt,U_AE,RestCode,ContraDociD,BillAmount,LogSite_Code) Values ("
  loc_199E8CD:         var_21C = var_16C & "'" & global_100 & "'," & CStr(var_AA) & ",'" & global_124 & "'," & CStr(var_BB4.Tag) & ",'" & MemVar_1F92070
  loc_199E8F3:         var_25C = CVar(var_21C & "','") & var_134 & "'," & var_23C & ",'" 
  loc_199E906:         var_2AC = var_25C & CVar(Format$(Time, var_27C)) & "','','" 
  loc_199E911:         var_2EC = var_2AC & CVar(CStr(var_2CC)) 
  loc_199E91A:         var_30C = var_2EC & "','" 
  loc_199E938:         var_3BC = var_30C & CVar(CStr(var_35C)) & "','" & CVar(var_94) 
  loc_199E988:         var_604 = var_3BC & "','" & CVar(CStr(var_42C)) & "','" & CVar(CStr(var_4BC)) & "'," & CVar(var_C6C) & ",'" & CVar(CStr(var_5E4)) 
  loc_199E9A1:         var_67C = var_604 & "'," & vbNullString & var_66C 
  loc_199E9F6:         var_8FC = var_67C & ",'" & CVar(CStr(var_6F0)) & "','" & CVar(CStr(var_784)) & "','" & CVar(CStr(var_818)) & "'," & var_8CC & "," 
  loc_199EA5A:         var_B8C = var_8FC & var_970 & "," & var_A14 & "," & CVar(var_C74) & ",'" & CVar(MemVar_1F920C8) & "'," & var_B3C & ",'A','" & CVar(global_52) 
  loc_199EA97:         unk_5502D0.Execute CStr(var_B8C & "','" & CVar(var_BB8) & "',0,'" & CVar(MemVar_1F92078) & "')"), var_C5C, -1
  loc_199EBAD:         Set var_110 = Me.Txt
  loc_199EBB3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_16C)
  loc_199EBBB:         var_C60 = var_15C.Text
  loc_199EBF7:         unk_5502D0.Execute "UPDATE HallSale1 SET Advance=" & CStr(var_CC) & " WHERE BookDocId='" & var_16C & "'", var_120, -1
  loc_199EC25:         Set var_110 = Me.Txt
  loc_199EC2B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_15C, var_16C)
  loc_199EC33:         var_164 = var_15C.Text
  loc_199EC43:         Set var_164 = Me.Txt
  loc_199EC49:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_168)
  loc_199EC51:         var_120 = CVar(var_168) 'Address
  loc_199EC58:         Proc_6_7_F25D88(var_134, var_120)
  loc_199EC6B:         Set var_178 = Me.Txt
  loc_199EC71:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_17C)
  loc_199ECBB:         var_190 = CVar("UPDATE HallBook SET Advance=" & CStr(var_CC) & ",RectNo=" & var_16C & ",rectDate=") & var_134 & " WHERE DocId='" 
  loc_199ECD2:         var_1F8 = CStr(var_190 & CVar(var_17C.Text) & "'")
  loc_199ECDC:         unk_5502D0.Execute var_1F8, var_25C, -1
  loc_199ED2A:         Set var_110 = CVar(CLng(var_AA))(1)
  loc_199ED60:         var_C98 = Val(CStr(Right(global_100, 8)))
  loc_199ED84:         Set var_15C = Me.Txt
  loc_199ED8A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_164, var_1F8, var_C98)
  loc_199ED92:         Txt.DispID_41 = var_164.Text
  loc_199ED9A:         var_154 = Time
  loc_199EDC2:         var_23C = Trim(CVar(Format$(var_154, "HH:mm")))
  loc_199EDDC:         Set var_168 = CVar(CLng(var_AA))(CVar(CLng(&H11)))
  loc_199EDF3:         var_26C = Trim(CVar(CStr(Txt.DispID_41)))
  loc_199EE0E:         Set var_178 = CVar(CLng(var_AA))(1)
  loc_199EE36:         Set var_17C = CVar(CLng(var_AA))(8)
  loc_199EE5D:         Set var_194 = Me.Txt
  loc_199EE63:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_5D4, Val(CStr(Txt.DispID_41)), Txt.DispID_41)
  loc_199EE72:         Proc_6_39_E7C810(var_2AC, CVar(var_5D4), 1)
  loc_199EE8C:         Set var_648 = CVar(CLng(var_AA))(CVar(CLng(9)))
  loc_199EEB3:         Set var_64C = CVar(CLng(var_AA))(CVar(CLng(&HA)))
  loc_199EEDA:         Set var_6E0 = CVar(CLng(var_AA))(CVar(CLng(&HD)))
  loc_199EF01:         Set var_774 = CVar(CLng(var_AA))(CVar(CLng(&HE)))
  loc_199EF30:         Set var_808 = CVar(CLng(var_AA))(CVar(CLng(&HE)))
  loc_199EF41:         var_37C = CVar(CStr(Txt.DispID_41)) 'String
  loc_199EF5A:         var_39C = IIf((CStr(var_30C) = vbNullString), Date, var_37C)
  loc_199EF74:         Set var_89C = CVar(CLng(var_AA))(CVar(CLng(&HB)))
  loc_199EFA3:         Set var_940 = CVar(CLng(var_AA))(CVar(CLng(&HB)))
  loc_199EFCD:         var_44C = IIf((CStr(var_3BC) = vbNullString), Date, CVar(CStr(Txt.DispID_41)))
  loc_199EFD5:         var_46C = Date
  loc_199EFF0:         Set var_9E4 = CVar(CLng(var_AA))(&H12)
  loc_199F005:         var_C64 = "Dr"
  loc_199F01C:         var_BB8 = "A"
  loc_199F063:         var_218 = vbNullString
  loc_199F06C:         var_214 = vbNullString
  loc_199F075:         var_210 = vbNullString
  loc_199F08C:         var_20C = vbNullString
  loc_199F0A8:         var_200 = vbNullString
  loc_199F0E8:         Proc_96_9_18E418C(CStr(var_120), global_100, var_AA, global_124, CLng(var_C98), MemVar_1F92070, CStr(Trim(global_104)), CDate(var_1F8))
  loc_199F1B4:         If (CStr(Txt.DispID_41) = "Room") Then
  loc_199F1E2:           unk_5502D0.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F92078 & "TOUT" & "'", var_120, -1
  loc_199F1ED:           Set var_98 = CVar(CLng(var_AA))(2)
  loc_199F213:           If (var_98.RecordCount > 0) Then
  loc_199F242:             var_15C = var_98.Fields.Item("TaxStru")
  loc_199F252:             var_134 = "Select * from taxstru where Code='" & var_15C.Value 
  loc_199F25B:             var_144 = var_134 & "' Order by Sno" 
  loc_199F25F:             var_124 = CStr(var_144)
  loc_199F269:             unk_5502D0.Execute var_124, var_154, -1
  loc_199F274:             Set var_A0 = var_164
  loc_199F291:           Else
  loc_199F2AA:             MsgBox("System Defined Revenue is not defined", 0, var_134, var_144, var_154)
  loc_199F2C0:             unk_5502D0.RollbackTrans
  loc_199F2C5:             Exit Sub
  loc_199F2C6:           End If
  loc_199F2DA:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, var_164, Me.Txt, CStr(var_23C))
  loc_199F2E2:           var_200 = var_15C.Text
  loc_199F2F5:           Set var_164 = Me.Txt
  loc_199F2FB:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168, var_200, CStr(var_26C))
  loc_199F303:           var_94 = var_168.Text
  loc_199F30C:           var_120 = CVar(var_20C(CStr(var_27C))) 'Address
  loc_199F323:           Set var_178 = Me.Txt
  loc_199F329:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_199F338:           Proc_6_7_F25D88(var_23C, CVar(var_17C))
  loc_199F37B:           Set var_194 = CVar(CLng(var_AA))(1)
  loc_199F3A3:           Set var_5D4 = CVar(CLng(var_AA))(2)
  loc_199F3CB:           Set var_648 = CVar(CLng(var_AA))(8)
  loc_199F3E4:           var_1A0 = Val(CStr(Txt.DispID_41))
  loc_199F3FD:           Set var_64C = CVar(CLng(var_AA))(&H18)
  loc_199F41A:           Proc_183_7_EB0C44(var_5E4, MemVar_1F920EC, Txt.DispID_41, var_1A0, Txt.DispID_41)
  loc_199F433:           var_160 = "Insert Into PayChargeH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,FPNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,LOGSITE_CODE)Values " & "('"
  loc_199F481:           var_144 = CVar(var_160 & var_124 & "'," & CStr(var_AC) & ",'" & global_124 & "'," & var_200 & ",'" & MemVar_1F92070 & "','") 'String
  loc_199F4BD:           var_2CC = var_144 & Trim(var_120) & "'," & var_23C & ",'" & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(var_94) 
  loc_199F4D1:           var_35C = var_2CC & "','" & CVar(CStr(var_2EC)) 
  loc_199F50A:           var_4BC = CVar(CStr(var_46C)) 'String
  loc_199F528:           var_54C = var_35C & "','" & CVar(CStr(var_37C)) & "',0," & CVar(var_1A0) & "," & var_4BC & ",'','',0,''," & vbNullString & "'" 
  loc_199F574:           var_66C = var_54C & CVar(MemVar_1F920C8) & "'," & var_5E4 & ",'A','" & CVar(global_52) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_199F582:           unk_5502D0.Execute CStr(var_66C), var_67C, -1
  loc_199F630:           Set var_110 = CVar(CLng(var_AA))(&H14)
  loc_199F641:           var_B4 = CStr(Txt.DispID_41)
  loc_199F660:           Set var_110 = CVar(CLng(var_AA))(&H14)
  loc_199F695:           var_B8 = CStr(LTrim(Left(CVar(CStr(var_120)), 2)))
  loc_199F6BC:           Set var_110 = CVar(CLng(var_AA))(&H18)
  loc_199F6D7:           var_BC = CStr(Val(CStr(Txt.DispID_41)))
  loc_199F6F9:           Set var_110 = CVar(CLng(var_AA))(&H14)
  loc_199F728:           var_B0 = CStr(Mid(CVar(CStr(var_120)), 3, 5))
  loc_199F74F:           Set var_110 = CVar(CLng(var_AA))(8)
  loc_199F768:           var_1A0 = Val(CStr(Txt.DispID_41))
  loc_199F772:           var_C4 = (var_C4 + var_1A0)
  loc_199F77E:         End If
  loc_199F781:       Else
  loc_199F797:         If (HallAdvanceDepDialog.AdvType = "AR") Then
  loc_199F79E:           Set var_110 = var_1A0(var_C4)
  loc_199F7AC:           var_124 = CStr(Txt.DispID_68030005)
  loc_199F7BD:           If (var_124 = "Add") Then
  loc_199F7C6:             Call Proc_125_74_11598CC(MemVar_1F92044, var_124, Txt.DispID_41, Txt.DispID_41, var_6E0)
  loc_199F7D1:             global_100 = var_124
  loc_199F7D8:           End If
  loc_199F7EB:           var_120 = Right(global_100, 8)
  loc_199F7FC:           var_1A0 = Val(CStr(var_120))
  loc_199F80D:           var_134 = Trim(global_104)
  loc_199F81D:           Set var_110 = Me.Txt
  loc_199F823:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_15C, var_1A0, Txt.DispID_41)
  loc_199F832:           Proc_6_7_F25D88(var_23C, CVar(var_15C), 1)
  loc_199F84E:           var_27C = "HH:mm"
  loc_199F874:           Set var_164 = CVar(CLng(var_AA))(CVar(CLng(&H11)))
  loc_199F89C:           Set var_168 = CVar(CLng(var_AA))(&H16)
  loc_199F8C4:           Set var_178 = CVar(CLng(var_AA))(1)
  loc_199F8EC:           Set var_17C = CVar(CLng(var_AA))(2)
  loc_199F914:           Set var_194 = CVar(CLng(var_AA))(8)
  loc_199F92D:           var_C6C = Val(CStr(Txt.DispID_41))
  loc_199F946:           Set var_5D4 = CVar(CLng(var_AA))(&H12)
  loc_199F963:           Set var_648 = Me.Txt
  loc_199F969:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_64C, Txt.DispID_41, var_C6C, Txt.DispID_41, Txt.DispID_41)
  loc_199F978:           Proc_6_39_E7C810(var_66C, CVar(var_64C), Txt.DispID_41, Txt.DispID_41)
  loc_199F992:           Set var_6E0 = CVar(CLng(var_AA))(CVar(CLng(9)))
  loc_199F9B9:           Set var_774 = CVar(CLng(var_AA))(CVar(CLng(&HA)))
  loc_199F9E0:           Set var_808 = CVar(CLng(var_AA))(CVar(CLng(&HD)))
  loc_199FA07:           Set var_89C = CVar(CLng(var_AA))(CVar(CLng(&HE)))
  loc_199FA1E:           Proc_6_7_F25D88(var_8CC, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_199FA39:           Set var_940 = CVar(CLng(var_AA))(&H19)
  loc_199FA50:           Proc_6_17_EAA2B0(var_970, CVar(CStr(Txt.DispID_41)), 1)
  loc_199FA6A:           Set var_9E4 = CVar(CLng(var_AA))(CVar(CLng(&HB)))
  loc_199FA81:           Proc_6_7_F25D88(var_A14, CVar(CStr(Txt.DispID_41)), 1)
  loc_199FA9B:           Set var_A88 = CVar(CLng(var_AA))(CVar(CLng(&HC)))
  loc_199FAB4:           var_C74 = Val(CStr(Txt.DispID_41))
  loc_199FAC2:           Proc_183_7_EB0C44(var_B3C, MemVar_1F920EC, var_C74)
  loc_199FAD5:           Set var_BB0 = Me.Txt
  loc_199FADB:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_BB4, var_BB8)
  loc_199FAE3:           1 = var_BB4.Tag
  loc_199FAFC:           var_124 = "Insert Into PayChargeH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,AmtDr,TaxStru,"
  loc_199FB0A:           var_16C = var_124 & "FPNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,BatchNo,U_Name,U_EntDt,U_AE,RestCode,ContraDociD,BillAmount,LogSite_Code) Values ("
  loc_199FB60:           var_21C = var_16C & "'" & global_100 & "'," & CStr(var_AA) & ",'" & global_124 & "'," & CStr(var_1A0) & ",'" & MemVar_1F92070
  loc_199FB86:           var_25C = CVar(var_21C & "','") & var_134 & "'," & var_23C & ",'" 
  loc_199FB99:           var_2AC = var_25C & CVar(Format$(Time, var_27C)) & "','','" 
  loc_199FBA4:           var_2EC = var_2AC & CVar(CStr(var_2CC)) 
  loc_199FBAD:           var_30C = var_2EC & "','" 
  loc_199FBCB:           var_3BC = var_30C & CVar(CStr(var_35C)) & "','" & CVar(var_94) 
  loc_199FC1B:           var_604 = var_3BC & "','" & CVar(CStr(var_42C)) & "','" & CVar(CStr(var_4BC)) & "'," & CVar(var_C6C) & ",'" & CVar(CStr(var_5E4)) 
  loc_199FC34:           var_67C = var_604 & "'," & vbNullString & var_66C 
  loc_199FC89:           var_8FC = var_67C & ",'" & CVar(CStr(var_6F0)) & "','" & CVar(CStr(var_784)) & "','" & CVar(CStr(var_818)) & "'," & var_8CC & "," 
  loc_199FCED:           var_B8C = var_8FC & var_970 & "," & var_A14 & "," & CVar(var_C74) & ",'" & CVar(MemVar_1F920C8) & "'," & var_B3C & ",'A','" & CVar(global_52) 
  loc_199FD2A:           unk_5502D0.Execute CStr(var_B8C & "','" & CVar(var_BB8) & "',0,'" & CVar(MemVar_1F92078) & "')"), var_C5C, -1
  loc_199FE40:           Set var_110 = Me.Txt
  loc_199FE46:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_16C)
  loc_199FE4E:           var_C60 = var_15C.Text
  loc_199FE8A:           unk_5502D0.Execute "UPDATE HallSale1 SET Advance=" & CStr(var_CC) & " WHERE BookDocId='" & var_16C & "'", var_120, -1
  loc_199FEB8:           Set var_110 = Me.Txt
  loc_199FEBE:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_15C, var_16C)
  loc_199FEC6:           var_164 = var_15C.Text
  loc_199FED6:           Set var_164 = Me.Txt
  loc_199FEDC:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_168)
  loc_199FEE4:           var_120 = CVar(var_168) 'Address
  loc_199FEEB:           Proc_6_7_F25D88(var_134, var_120)
  loc_199FEFE:           Set var_178 = Me.Txt
  loc_199FF04:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_17C)
  loc_199FF4E:           var_190 = CVar("UPDATE HallBook SET Advance=" & CStr(var_CC) & ",RectNo=" & var_16C & ",rectDate=") & var_134 & " WHERE DocId='" 
  loc_199FF65:           var_1F8 = CStr(var_190 & CVar(var_17C.Text) & "'")
  loc_199FF6F:           unk_5502D0.Execute var_1F8, var_25C, -1
  loc_199FFBD:           Set var_110 = CVar(CLng(var_AA))(1)
  loc_199FFF3:           var_C98 = Val(CStr(Right(global_100, 8)))
  loc_19A0017:           Set var_15C = Me.Txt
  loc_19A001D:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_164, var_1F8, var_C98)
  loc_19A0025:           Txt.DispID_41 = var_164.Text
  loc_19A002D:           var_154 = Time
  loc_19A0055:           var_23C = Trim(CVar(Format$(var_154, "HH:mm")))
  loc_19A006F:           Set var_168 = CVar(CLng(var_AA))(CVar(CLng(&H11)))
  loc_19A0086:           var_26C = Trim(CVar(CStr(Txt.DispID_41)))
  loc_19A00A1:           Set var_178 = CVar(CLng(var_AA))(1)
  loc_19A00C9:           Set var_17C = CVar(CLng(var_AA))(8)
  loc_19A00F0:           Set var_194 = Me.Txt
  loc_19A00F6:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_5D4, Val(CStr(Txt.DispID_41)), Txt.DispID_41)
  loc_19A0105:           Proc_6_39_E7C810(var_2AC, CVar(var_5D4), 1)
  loc_19A011F:           Set var_648 = CVar(CLng(var_AA))(CVar(CLng(9)))
  loc_19A0146:           Set var_64C = CVar(CLng(var_AA))(CVar(CLng(&HA)))
  loc_19A016D:           Set var_6E0 = CVar(CLng(var_AA))(CVar(CLng(&HD)))
  loc_19A0194:           Set var_774 = CVar(CLng(var_AA))(CVar(CLng(&HE)))
  loc_19A01C3:           Set var_808 = CVar(CLng(var_AA))(CVar(CLng(&HE)))
  loc_19A01D4:           var_37C = CVar(CStr(Txt.DispID_41)) 'String
  loc_19A01ED:           var_39C = IIf((CStr(var_30C) = vbNullString), Date, var_37C)
  loc_19A0207:           Set var_89C = CVar(CLng(var_AA))(CVar(CLng(&HB)))
  loc_19A0236:           Set var_940 = CVar(CLng(var_AA))(CVar(CLng(&HB)))
  loc_19A0260:           var_44C = IIf((CStr(var_3BC) = vbNullString), Date, CVar(CStr(Txt.DispID_41)))
  loc_19A0268:           var_46C = Date
  loc_19A0283:           Set var_9E4 = CVar(CLng(var_AA))(&H12)
  loc_19A0298:           var_C64 = "Cr"
  loc_19A02AF:           var_BB8 = "A"
  loc_19A02F6:           var_218 = vbNullString
  loc_19A02FF:           var_214 = vbNullString
  loc_19A0308:           var_210 = vbNullString
  loc_19A031F:           var_20C = vbNullString
  loc_19A033B:           var_200 = vbNullString
  loc_19A037B:           Proc_96_9_18E418C(CStr(var_120), global_100, var_AA, global_124, CLng(var_C98), MemVar_1F92070, CStr(Trim(global_104)), CDate(var_1F8))
  loc_19A0447:           If (CStr(Txt.DispID_41) = "Room") Then
  loc_19A0475:             unk_5502D0.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F92078 & "TOUT" & "'", var_120, -1
  loc_19A0480:             Set var_98 = CVar(CLng(var_AA))(2)
  loc_19A04A6:             If (var_98.RecordCount > 0) Then
  loc_19A04D5:               var_15C = var_98.Fields.Item("TaxStru")
  loc_19A04E5:               var_134 = "Select * from taxstru where Code='" & var_15C.Value 
  loc_19A04EE:               var_144 = var_134 & "' Order by Sno" 
  loc_19A04F2:               var_124 = CStr(var_144)
  loc_19A04FC:               unk_5502D0.Execute var_124, var_154, -1
  loc_19A0507:               Set var_A0 = var_164
  loc_19A0524:             Else
  loc_19A053D:               MsgBox("System Defined Revenue is not defined", 0, var_134, var_144, var_154)
  loc_19A0553:               unk_5502D0.RollbackTrans
  loc_19A0558:               Exit Sub
  loc_19A0559:             End If
  loc_19A056D:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, var_164, Me.Txt, CStr(var_23C))
  loc_19A0575:             var_200 = var_15C.Text
  loc_19A0588:             Set var_164 = Me.Txt
  loc_19A058E:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168, var_200, CStr(var_26C))
  loc_19A059F:             var_120 = CVar(var_20C(CStr(var_27C))) 'Address
  loc_19A05B6:             Set var_178 = Me.Txt
  loc_19A05BC:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_19A05CB:             Proc_6_7_F25D88(var_23C, CVar(var_17C))
  loc_19A05E7:             var_27C = "HH:mm"
  loc_19A060E:             Set var_194 = CVar(CLng(var_AA))(1)
  loc_19A0636:             Set var_5D4 = CVar(CLng(var_AA))(2)
  loc_19A065E:             Set var_648 = CVar(CLng(var_AA))(8)
  loc_19A0677:             var_1A0 = Val(CStr(Txt.DispID_41))
  loc_19A0690:             Set var_64C = CVar(CLng(var_AA))(&H18)
  loc_19A06AD:             Proc_183_7_EB0C44(var_5E4, MemVar_1F920EC, Txt.DispID_41, var_1A0, Txt.DispID_41)
  loc_19A06C6:             var_160 = "Insert Into PayChargeH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,FPNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,LOGSITE_CODE)Values " & "('"
  loc_19A06E0:             var_180 = var_160 & var_124 & "'," & CStr(var_AC)
  loc_19A072A:             var_24C = CVar(var_180 & ",'" & global_124 & "'," & var_200 & ",'" & MemVar_1F92070 & "','") & Trim(var_120) & "'," & var_23C 
  loc_19A076D:             var_36C = var_24C & ",'" & CVar(Format$(Time, var_27C)) & "','','" & CVar(var_168.Text) & "','" & CVar(CStr(var_2EC)) & "','" 
  loc_19A07B2:             var_4FC = var_36C & CVar(CStr(var_37C)) & "'," & CVar(var_1A0) & ",0," & CVar(CStr(var_46C)) & ",'','',0,''," & vbNullString 
  loc_19A07FE:             var_65C = var_4FC & "'" & CVar(MemVar_1F920C8) & "'," & var_5E4 & ",'A','" & CVar(global_52) & "','" & CVar(MemVar_1F92078) 
  loc_19A0815:             unk_5502D0.Execute CStr(var_65C & "')"), var_67C, -1
  loc_19A08C3:             Set var_110 = CVar(CLng(var_AA))(&H14)
  loc_19A08D4:             var_B4 = CStr(Txt.DispID_41)
  loc_19A08F3:             Set var_110 = CVar(CLng(var_AA))(&H14)
  loc_19A0928:             var_B8 = CStr(LTrim(Left(CVar(CStr(var_120)), 2)))
  loc_19A094F:             Set var_110 = CVar(CLng(var_AA))(&H18)
  loc_19A096A:             var_BC = CStr(Val(CStr(Txt.DispID_41)))
  loc_19A098C:             Set var_110 = CVar(CLng(var_AA))(&H14)
  loc_19A09AC:             var_134 = CVar(CStr(var_120)) 'String
  loc_19A09BB:             var_B0 = CStr(Mid(var_134, 3, 5))
  loc_19A09E2:             Set var_110 = CVar(CLng(var_AA))(8)
  loc_19A0A05:             var_C4 = (var_C4 + Val(CStr(Txt.DispID_41)))
  loc_19A0A11:           End If
  loc_19A0A11:         End If
  loc_19A0A11:       End If
  loc_19A0A11:     End If
  loc_19A0A11:   End If
  loc_19A0A14: Next var_198 'Integer
  loc_19A0A2F: If (HallAdvanceDepDialog.AdvType = "AD") Then
  loc_19A0A40:   Set var_110 = Me.Txt
  loc_19A0A46:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_15C)
  loc_19A0A5E:   Set var_164 = Me.Txt
  loc_19A0A64:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_19A0A73:   Proc_6_7_F25D88(var_134, CVar(var_168))
  loc_19A0A86:   Set var_178 = Me.Txt
  loc_19A0A8C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_17C)
  loc_19A0AD7:   var_23C = CVar("Update hallbook set rectno=" & var_15C.Text & ",RectDate=") & var_134 & ",advance=" & CVar(var_CC) & " where Docid='" 
  loc_19A0ADE:   var_24C = CVar(var_17C.Tag) 'String
  loc_19A0AF8:   unk_5502D0.Execute CStr(var_23C & var_24C & "'"), var_27C, -1
  loc_19A0B2E: End If
  loc_19A0B32: Set var_110 = var_168(var_194)
  loc_19A0B51: If (CStr(Txt.DispID_68030005) = "Add") Then
  loc_19A0B68:   var_124 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_19A0B8E:   var_144 = CVar(var_124 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_124 & "' And VP.Date_From<=") 'String
  loc_19A0B9F:   Set var_110 = Me.Txt
  loc_19A0BA5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_15C, var_180, var_144)
  loc_19A0BAD:   var_22C = var_15C.Text
  loc_19A0BBB:   Proc_6_7_F25D88(var_134, CVar(var_180))
  loc_19A0BC3:   var_154 = -1 & var_134 
  loc_19A0BDA:   unk_5502D0.Execute CStr(CVar("Update hallbook set rectno=" & var_15C.Text & ",RectDate=") & var_134 & " Order By VP.Date_From DESC"), var_164, 
  loc_19A0BE5:   Set var_90 = var_164
  loc_19A0C26:   If (Me.Recordset15.RecordCount > 0) Then
  loc_19A0C3D:     var_124 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where (SITE_CODE='" & MemVar_1F92070
  loc_19A0C5B:     var_DC = "V_Type"
  loc_19A0C72:     var_15C = Me.Recordset15.Fields.Item(var_DC)
  loc_19A0C82:     var_144 = CVar(var_124 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='") & var_15C.Value 
  loc_19A0C8B:     var_154 = var_144 & "' and Date_From=" 
  loc_19A0CB8:     Proc_6_7_F25D88(var_22C, CVar(Me.Recordset15.Fields.Item("Date_From")), var_154)
  loc_19A0CCE:     unk_5502D0.Execute CStr(var_24C & var_22C), -1, var_178
  loc_19A0CFC:   End If
  loc_19A0CFC: End If
  loc_19A0D02: unk_5502D0.CommitTrans
  loc_19A0D0A: Call Proc_125_82_1BC6A78(var_CA2)
  loc_19A0D15: If (var_CA2 = &HFF) Then
  loc_19A0D1C:   var_86 = CByte(1) 'Byte
  loc_19A0D23: Else
  loc_19A0D28:   Set var_98 = Nothing
  loc_19A0D30:   Set var_9C = Nothing
  loc_19A0D38:   Set var_A0 = Nothing
  loc_19A0D40:   Set var_A4 = Nothing
  loc_19A0D47:   var_86 = CByte(0) 'Byte
  loc_19A0D5C:   If (OpenMode = 1) Then
  loc_19A0D6C:     Me.Global.Unload Me
  loc_19A0D74:     Exit Sub
  loc_19A0D75:   End If
  loc_19A0D80:   Me.Requery -1
  loc_19A0D90:   Me.Requery -1
  loc_19A0DA0:   Me.Requery -1
  loc_19A0DC4:   Set var_110 = Me.Txt
  loc_19A0DCA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, "SearchCode='")
  loc_19A0DD2:   0 = var_15C.Text
  loc_19A0DEB:   Me.Find 1 & var_124 & "'", var_DC, 
  loc_19A0E15:   var_124 = "INI"
  loc_19A0E23:   Call Proc_125_67_F66744(Proc_5_1_100CB50(var_124, Me))
  loc_19A0E2E:   Call Proc_125_72_FDEA24(global_56)
  loc_19A0E33:   Call Proc_125_70_156B0D0()
  loc_19A0E49:   If (OpenMode = 1) Then
  loc_19A0E57:     var_134 = "Payment Entry..."
  loc_19A0E83:     If (MsgBox("Print Recpt.", &H24, var_134, var_144, var_154) = 6) Then
  loc_19A0E86:       Call TopCtrl1_UnknownEvent_14()
  loc_19A0E8B:     End If
  loc_19A0E98:     Me.Global.Unload Me
  loc_19A0EA0:     Exit Sub
  loc_19A0EA1:   End If
  loc_19A0EA1:   Exit Sub
  loc_19A0EA2:   ' Referenced from:   199E198
  loc_19A0EAB:   If (CInt(var_86) = 1) Then
  loc_19A0EB4:     unk_5502D0.RollbackTrans
  loc_19A0EB9:   End If
  loc_19A0EC1:   Set var_110 = Err()
  loc_19A0EC7:   Call 0.Method_arg_2C (var_124)
  loc_19A0EE0:   MsgBox(CVar(var_124), &H10, var_134, var_144, var_154)
  loc_19A0EF3:   Exit Sub
  loc_19A0EF4: End If
  loc_19A0EFD: If (CInt(var_86) = 1) Then
  loc_19A0F06:   unk_5502D0.RollbackTrans
  loc_19A0F0B: End If
  loc_19A0F2C: MsgBox("Please Check Party Account.", &H10, "Payment Entry...", var_144, var_154)
  loc_19A0F49: Me.Global.Unload Me
  loc_19A0F51: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F4B004
  'Data Table: 5502B8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4AEFB: (False).Visible = 
  loc_F4AF1A: If (Me.RecordCount > 0) Then
  loc_F4AF59:   Set var_B4 = Me.Txt
  loc_F4AF5F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F4AF67:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4AF9A:   var_B0 = Me.Fields.Item("Code")
  loc_F4AFB9:   Set var_B4 = Me.Txt
  loc_F4AFBF:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F4AFC7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4AFDD: End If
  loc_F4AFE8: Set var_A8 = Me.Txt
  loc_F4AFEE: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H11))
  loc_F4AFF6: var_B0.SetFocus
  loc_F4B002: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_1F 'EA19E0
  'Data Table: 5502B8
  Dim var_A8 As Variant
  loc_EA1960: Set var_88 = ()
  loc_EA198A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA1992: Set var_BC = Txt.DispID_1D(var_A8)
  loc_EA19B2: Set var_BC = ()
  loc_EA19CE: Proc_6_138_106D6F8((Txt.DispID_1B), global_68)
  loc_EA19DC: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'DFB784
  'Data Table: 5502B8
  loc_DFB780: Exit Sub
  loc_DFB781:  = arg_D08
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F49CC4
  'Data Table: 5502B8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F49BBB: (False).Visible = 
  loc_F49BDA: If (Me.RecordCount > 0) Then
  loc_F49C19:   Set var_B4 = Me.Txt
  loc_F49C1F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(9), var_B8)
  loc_F49C27:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F49C5A:   var_B0 = Me.Fields.Item("Name")
  loc_F49C79:   Set var_B4 = Me.Txt
  loc_F49C7F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(9), var_B8)
  loc_F49C87:   var_B8.Text = CStr(var_B0.Value)
  loc_F49C9D: End If
  loc_F49CA8: Set var_A8 = Me.Txt
  loc_F49CAE: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(9))
  loc_F49CB6: var_B0.SetFocus
  loc_F49CC2: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'EA2F50
  'Data Table: 5502B8
  Dim var_A8 As Variant
  loc_EA2ED0: Set var_88 = ()
  loc_EA2EFA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA2F02: Set var_BC = Txt.DispID_1D(var_A8)
  loc_EA2F22: Set var_BC = ()
  loc_EA2F3E: Proc_6_138_106D6F8((Txt.DispID_1B), global_64)
  loc_EA2F4C: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F46B44
  'Data Table: 5502B8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F46A3B: (False).Visible = 
  loc_F46A5A: If (Me.RecordCount > 0) Then
  loc_F46A99:   Set var_B4 = Me.Txt
  loc_F46A9F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F46AA7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F46ADA:   var_B0 = Me.Fields.Item("Code")
  loc_F46AF9:   Set var_B4 = Me.Txt
  loc_F46AFF:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F46B07:   var_B8.Tag = CStr(var_B0.Value)
  loc_F46B1D: End If
  loc_F46B28: Set var_A8 = Me.Txt
  loc_F46B2E: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H10))
  loc_F46B36: var_B0.SetFocus
  loc_F46B42: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'EA2DC8
  'Data Table: 5502B8
  Dim var_A8 As Variant
  loc_EA2D48: Set var_88 = ()
  loc_EA2D72: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA2D7A: Set var_BC = Txt.DispID_1D(var_A8)
  loc_EA2D9A: Set var_BC = ()
  loc_EA2DB6: Proc_6_138_106D6F8((Txt.DispID_1B), global_80)
  loc_EA2DC4: Exit Sub
End Sub

Private Sub Del_Click() 'F91B54
  'Data Table: 5502B8
  Dim Del_Click3 As Variant
  loc_F919F8: Set var_88 = ()
  loc_F91A13: If (CLng(Txt.DispID_A) >= 1) Then
  loc_F91A4D:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_F91A54:     Set var_88 = ()
  loc_F91A6F:     If (CLng(Txt.DispID_4) > 2) Then
  loc_F91A76:       Set var_88 = ()
  loc_F91A94:       Del_Click3 = (CVar(CLng(Txt.DispID_A))).Name
  loc_F91AA9:     Else
  loc_F91AB6:       Set var_88 = Del_Click3(1)
  loc_F91B0F:       Set var_88 = 0(CVar(CStr(Proc_6_127_F24F80((Txt.DispID_4))))).Name(1)
  loc_F91B1D:     End If
  loc_F91B1D:   End If
  loc_F91B20: Else
  loc_F91B41:   MsgBox("No Entries To Delete", &H10, "Delete Module", var_E8, var_108)
  loc_F91B51: End If
  loc_F91B51: Exit Sub
End Sub

Private Sub DGFPNo_UnknownEvent_9 'F46F64
  'Data Table: 5502B8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F46E5B: (False).Visible = 
  loc_F46E7A: If (Me.RecordCount > 0) Then
  loc_F46EB9:   Set var_B4 = Me.Txt
  loc_F46EBF:   Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(4), var_B8)
  loc_F46EC7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F46EFA:   var_B0 = Me.Fields.Item("Code")
  loc_F46F19:   Set var_B4 = Me.Txt
  loc_F46F1F:   Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(4), var_B8)
  loc_F46F27:   var_B8.Tag = CStr(var_B0.Value)
  loc_F46F3D: End If
  loc_F46F48: Set var_A8 = Me.Txt
  loc_F46F4E: Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(4))
  loc_F46F56: var_B0.SetFocus
  loc_F46F62: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '15B1CD4
  'Data Table: 5502B8
  Dim var_92 As Integer
  Dim var_A8 As Variant
  Dim var_B8 As String
  Dim var_8C As TextBox
  Dim var_D0 As Variant
  Dim var_90 As Variant
  Dim var_D4 As Variant
  Dim Me As Recordset15
  Dim var_FC As Variant
  Dim var_88 As Frame
  loc_15B0A76: Set var_88 = Me.Txt
  loc_15B0A7C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_15B0A8A: Proc_6_74_E226B0(var_8C)
  loc_15B0A96: Call Proc_125_72_FDEA24(var_8C)
  loc_15B0A9E: var_92 = Index
  loc_15B0AA9: If (var_92 = CInt(1)) Then
  loc_15B0AB9:   ReDim var_98(0 To 1)
  loc_15B0AD0:   var_98(0) = "Advance"
  loc_15B0AD2:   var_B8 = "Refund"
  loc_15B0ADF:   var_98(1) = var_B8
  loc_15B0AF6:   global_176 = Array(var_98)
  loc_15B0B01:   Set var_D0 = Me.ListView
  loc_15B0B08:   Set var_D4 = Me.Txt
  loc_15B0B1C:   Set var_8C = var_D4
  loc_15B0B36:   Set global_192 = Proc_6_66_EFF8FC(var_D0, var_8C, Index, global_176)
  loc_15B0B54:   Set var_88 = Me.Txt
  loc_15B0B5A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_15B0B62:   2 = var_8C.Text
  loc_15B0B74:   Set var_90 = Me.Txt
  loc_15B0B7A:   Call 0.Method_Txt_GotFocus0 (Index, var_D0, var_D8)
  loc_15B0B82:   var_D0.Tag = global_176
  loc_15B0B98: Else
  loc_15B0BA0:   If (var_92 = CInt(7)) Then
  loc_15B0BB0:      = var_92(var_E0).Top
  loc_15B0BC3:     Set var_D0 = Me.Txt
  loc_15B0BC9:     Call 0.Method_Txt_GotFocus0 (CInt(7), var_D4)
  loc_15B0BE4:     Set var_88 = Me.Txt
  loc_15B0BEA:     Call 0.Method_Txt_GotFocus0 (CInt(7), var_8C)
  loc_15B0C02:     var_A8 = CVar(((var_8C.Top + var_E0) + var_D4.Height)) 'Single
  loc_15B0C11:     ("Advance").Top = 
  loc_15B0C32:      = (var_E0).Left
  loc_15B0C45:     Set var_88 = Me.Txt
  loc_15B0C4B:     Call 0.Method_Txt_GotFocus0 (CInt(7), var_8C)
  loc_15B0C5F:     var_A8 = CVar((var_8C.Left + var_E0)) 'Single
  loc_15B0C6E:     ("Advance").Left = 
  loc_15B0C95:     If (Me.RecordCount > 0) Then
  loc_15B0CA3:       Set var_8C = ()
  loc_15B0CBB:       Proc_6_137_1193554((), global_60)
  loc_15B0CC9:     End If
  loc_15B0D17:     Set var_88 = Me.Txt
  loc_15B0D1D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_15B0D25:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B0D3D:     If (Index Or (var_D8 = vbNullString)) Then
  loc_15B0D40:       Exit Sub
  loc_15B0D41:     End If
  loc_15B0D4E:     Set var_88 = Me.Txt
  loc_15B0D54:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B0D5C:     var_D8 = var_8C.Text
  loc_15B0D6E:     var_A8 = "Name"
  loc_15B0DA9:     If CBool(CVar(var_D8) <> Me.Fields.Item(var_A8).Value) Then
  loc_15B0DB2:       Me.MoveFirst
  loc_15B0DD5:       Set var_88 = Me.Txt
  loc_15B0DDB:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, "Name ='")
  loc_15B0DE3:       0 = var_8C.Text
  loc_15B0DFC:       Me.Find 1 & var_D8 & "'", var_A8, var_8C
  loc_15B0E11:     End If
  loc_15B0E14:   Else
  loc_15B0E1C:     If (var_92 = CInt(&H11)) Then
  loc_15B0E36:       If (Me.RecordCount > 0) Then
  loc_15B0E44:         Set var_8C = ()
  loc_15B0E5C:         Proc_6_137_1193554((), global_68)
  loc_15B0E6A:       End If
  loc_15B0EB8:       Set var_88 = Me.Txt
  loc_15B0EBE:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_15B0EC6:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B0EDE:       If (Index Or (var_D8 = vbNullString)) Then
  loc_15B0EE1:         Exit Sub
  loc_15B0EE2:       End If
  loc_15B0EEF:       Set var_88 = Me.Txt
  loc_15B0EF5:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B0EFD:       var_D8 = var_8C.Text
  loc_15B0F0F:       var_A8 = "Name"
  loc_15B0F4A:       If CBool(CVar(var_D8) <> Me.Fields.Item(var_A8).Value) Then
  loc_15B0F53:         Me.MoveFirst
  loc_15B0F76:         Set var_88 = Me.Txt
  loc_15B0F7C:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, "Name ='")
  loc_15B0F84:         0 = var_8C.Text
  loc_15B0F9D:         Me.Find 1 & var_D8 & "'", var_A8, var_8C
  loc_15B0FB2:       End If
  loc_15B0FB5:     Else
  loc_15B0FBD:       If (var_92 = CInt(6)) Then
  loc_15B0FCD:          = (var_E0).Top
  loc_15B0FE0:         Set var_D0 = Me.Txt
  loc_15B0FE6:         Call 0.Method_Txt_GotFocus0 (CInt(6), var_D4)
  loc_15B1001:         Set var_88 = Me.Txt
  loc_15B1007:         Call 0.Method_Txt_GotFocus0 (CInt(6), var_8C)
  loc_15B101F:         var_A8 = CVar(((var_8C.Top + var_E0) + var_D4.Height)) 'Single
  loc_15B102E:         (var_A8).Top = 
  loc_15B104F:          = (var_E0).Left
  loc_15B1062:         Set var_88 = Me.Txt
  loc_15B1068:         Call 0.Method_Txt_GotFocus0 (CInt(6), var_8C)
  loc_15B107C:         var_A8 = CVar((var_8C.Left + var_E0)) 'Single
  loc_15B108B:         (var_A8).Left = 
  loc_15B10B2:         If (Me.RecordCount > 0) Then
  loc_15B10C0:           Set var_8C = ()
  loc_15B10D8:           Proc_6_137_1193554((), global_72)
  loc_15B10E6:         End If
  loc_15B1134:         Set var_88 = Me.Txt
  loc_15B113A:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_15B1142:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B115A:         If (Index Or (var_D8 = vbNullString)) Then
  loc_15B115D:           Exit Sub
  loc_15B115E:         End If
  loc_15B116B:         Set var_88 = Me.Txt
  loc_15B1171:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B1179:         var_D8 = var_8C.Text
  loc_15B1181:         var_FC = CVar(var_D8) 'String
  loc_15B11C6:         If CBool(var_FC <> Me.Fields.Item("Name").Value) Then
  loc_15B11CF:           Me.MoveFirst
  loc_15B11F4:           Set var_88 = Me.Txt
  loc_15B11FA:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, "Name =")
  loc_15B1202:           0 = var_8C.Text
  loc_15B1210:           Proc_6_17_EAA2B0(var_FC, CVar(var_D8), 1)
  loc_15B1226:           Me.Find CStr(var_B8 & var_FC), var_8C, 
  loc_15B123E:         End If
  loc_15B1241:       Else
  loc_15B1249:         If (var_92 = CInt(&H12)) Then
  loc_15B1259:            = (var_E0).Top
  loc_15B126C:           Set var_D0 = Me.Txt
  loc_15B1272:           Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_D4)
  loc_15B127A:           var_E4 = var_D4.Height
  loc_15B128D:           Set var_88 = Me.Txt
  loc_15B1293:           Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_8C)
  loc_15B12AB:           var_A8 = CVar(((var_8C.Top + var_E0) + var_E4)) 'Single
  loc_15B12BA:           ("Name =").Top = 
  loc_15B12DB:            = (var_E0).Left
  loc_15B12EE:           Set var_88 = Me.Txt
  loc_15B12F4:           Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_8C)
  loc_15B1308:           var_A8 = CVar((var_8C.Left + var_E0)) 'Single
  loc_15B1317:           ("Name =").Left = 
  loc_15B133E:           If (Me.RecordCount > 0) Then
  loc_15B134C:             Set var_8C = ()
  loc_15B1364:             Proc_6_137_1193554((), global_76)
  loc_15B1372:           End If
  loc_15B137B:           var_DC = Me.RecordCount
  loc_15B13C0:           Set var_88 = Me.Txt
  loc_15B13C6:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_15B13CE:           ((var_DC = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B13E6:           If (Index Or (var_D8 = vbNullString)) Then
  loc_15B13E9:             Exit Sub
  loc_15B13EA:           End If
  loc_15B13F7:           Set var_88 = Me.Txt
  loc_15B13FD:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B1405:           var_D8 = var_8C.Text
  loc_15B140D:           var_FC = CVar(var_D8) 'String
  loc_15B1426:           var_90 = Me.Fields
  loc_15B1452:           If CBool(var_FC <> var_90.Item("Name").Value) Then
  loc_15B145B:             Me.MoveFirst
  loc_15B1480:             Set var_88 = Me.Txt
  loc_15B1486:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, "Name =")
  loc_15B148E:             0 = var_8C.Text
  loc_15B149C:             Proc_6_17_EAA2B0(var_FC, CVar(var_D8), 1)
  loc_15B14B2:             Me.Find CStr(var_B8 & var_FC), var_8C, 
  loc_15B14CA:           End If
  loc_15B14CD:         Else
  loc_15B14D5:           If (var_92 = CInt(&H10)) Then
  loc_15B14E6:             Set var_8C = Me.Txt
  loc_15B14EC:             Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_90)
  loc_15B14F4:             var_E0 = var_90.Height
  loc_15B1506:              = (var_DC).Top
  loc_15B1512:             var_A8 = CVar((var_DC + var_E0)) 'Single
  loc_15B1521:             ("Name =").Top = 
  loc_15B153E:              = (var_E0).Left
  loc_15B1550:              = (var_E4).Left
  loc_15B1563:             Set var_88 = Me.Txt
  loc_15B1569:             Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_15B1581:             var_A8 = CVar(((var_8C.Left + var_E0) + var_E4)) 'Single
  loc_15B158A:             Set var_D4 = ("Name =")
  loc_15B1590:             var_D4.Left = 
  loc_15B15B9:             If (Me.RecordCount > 0) Then
  loc_15B15C7:               Set var_8C = ()
  loc_15B15DF:               Proc_6_137_1193554((), global_80)
  loc_15B15ED:             End If
  loc_15B163B:             Set var_88 = Me.Txt
  loc_15B1641:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_15B1649:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B1661:             If (Index Or (var_D8 = vbNullString)) Then
  loc_15B1664:               Exit Sub
  loc_15B1665:             End If
  loc_15B1672:             Set var_88 = Me.Txt
  loc_15B1678:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B1680:             var_D8 = var_8C.Text
  loc_15B1688:             var_FC = CVar(var_D8) 'String
  loc_15B16A9:             var_D0 = Me.Fields.Item("Name")
  loc_15B16CD:             If CBool(var_FC <> var_D0.Value) Then
  loc_15B16D6:               Me.MoveFirst
  loc_15B16FB:               Set var_88 = Me.Txt
  loc_15B1701:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, "Name =")
  loc_15B1709:               0 = var_8C.Text
  loc_15B1717:               Proc_6_17_EAA2B0(var_FC, CVar(var_D8), 1)
  loc_15B172D:               Me.Find CStr(var_B8 & var_FC), var_8C, 
  loc_15B1745:             End If
  loc_15B1748:           Else
  loc_15B1750:             If (var_92 = CInt(8)) Then
  loc_15B1762:               Set var_88 = Me.Txt
  loc_15B1768:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B1770:               var_8C.SelStart = 0
  loc_15B1789:               Set var_88 = Me.Txt
  loc_15B178F:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B1797:               var_D8 = var_8C.Text
  loc_15B17AA:               Set var_90 = Me.Txt
  loc_15B17B0:               Call 0.Method_Txt_GotFocus0 (Index, var_D0)
  loc_15B17B8:               var_D0.SelLength = Len(var_D8)
  loc_15B17CE:             Else
  loc_15B17D6:               If (var_92 = CInt(9)) Then
  loc_15B17E6:                  = (var_E0).Top
  loc_15B17F9:                 Set var_D0 = Me.Txt
  loc_15B17FF:                 Call 0.Method_Txt_GotFocus0 (CInt(9), var_D4)
  loc_15B1807:                 var_E4 = var_D4.Height
  loc_15B181A:                 Set var_88 = Me.Txt
  loc_15B1820:                 Call 0.Method_Txt_GotFocus0 (CInt(9), var_8C)
  loc_15B1838:                 var_A8 = CVar(((var_8C.Top + var_E0) + var_E4)) 'Single
  loc_15B1847:                 ("Name =").Top = 
  loc_15B1868:                  = (var_E0).Left
  loc_15B187B:                 Set var_88 = Me.Txt
  loc_15B1881:                 Call 0.Method_Txt_GotFocus0 (CInt(9), var_8C)
  loc_15B1895:                 var_A8 = CVar((var_8C.Left + var_E0)) 'Single
  loc_15B18A4:                 ("Name =").Left = 
  loc_15B18CB:                 If (Me.RecordCount > 0) Then
  loc_15B18D9:                   Set var_8C = ()
  loc_15B18F1:                   Proc_6_137_1193554((), global_64)
  loc_15B18FF:                 End If
  loc_15B194D:                 Set var_88 = Me.Txt
  loc_15B1953:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_15B195B:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B1973:                 If (Index Or (var_D8 = vbNullString)) Then
  loc_15B1976:                   Exit Sub
  loc_15B1977:                 End If
  loc_15B1984:                 Set var_88 = Me.Txt
  loc_15B198A:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B1992:                 var_D8 = var_8C.Text
  loc_15B19A4:                 var_A8 = "Name"
  loc_15B19BB:                 var_D0 = Me.Fields.Item(var_A8)
  loc_15B19DF:                 If CBool(CVar(var_D8) <> var_D0.Value) Then
  loc_15B19E8:                   Me.MoveFirst
  loc_15B1A0B:                   Set var_88 = Me.Txt
  loc_15B1A11:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, "Name ='")
  loc_15B1A19:                   0 = var_8C.Text
  loc_15B1A32:                   Me.Find 1 & var_D8 & "'", var_A8, var_8C
  loc_15B1A47:                 End If
  loc_15B1A4A:               Else
  loc_15B1A52:                 If (var_92 = CInt(4)) Then
  loc_15B1A63:                   Set var_90 = Me.Txt
  loc_15B1A69:                   Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_D0)
  loc_15B1A71:                   var_E0 = var_D0.Height
  loc_15B1A83:                    = (var_E4).Top
  loc_15B1A96:                   Set var_88 = Me.Txt
  loc_15B1A9C:                   Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_15B1AB4:                   var_A8 = CVar(((var_8C.Top + var_E0) + var_E4)) 'Single
  loc_15B1AC3:                   (var_A8).Top = 
  loc_15B1AE4:                    = (var_E0).Left
  loc_15B1AF7:                   Set var_88 = Me.Txt
  loc_15B1AFD:                   Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_15B1B11:                   var_A8 = CVar((var_8C.Left + var_E0)) 'Single
  loc_15B1B20:                   (var_A8).Left = 
  loc_15B1B47:                   If (Me.RecordCount > 0) Then
  loc_15B1B55:                     Set var_8C = ()
  loc_15B1B6D:                     Proc_6_137_1193554((), global_88)
  loc_15B1B7B:                   End If
  loc_15B1BC9:                   Set var_88 = Me.Txt
  loc_15B1BCF:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_15B1BD7:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B1BEF:                   If (Index Or (var_D8 = vbNullString)) Then
  loc_15B1BF2:                     Exit Sub
  loc_15B1BF3:                   End If
  loc_15B1C00:                   Set var_88 = Me.Txt
  loc_15B1C06:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B1C0E:                   var_D8 = var_8C.Text
  loc_15B1C16:                   var_FC = CVar(var_D8) 'String
  loc_15B1C5B:                   If CBool(var_FC <> Me.Fields.Item("Name").Value) Then
  loc_15B1C64:                     Me.MoveFirst
  loc_15B1C89:                     Set var_88 = Me.Txt
  loc_15B1C8F:                     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8, "Name =")
  loc_15B1C97:                     0 = var_8C.Text
  loc_15B1CA5:                     Proc_6_17_EAA2B0(var_FC, CVar(var_D8), 1)
  loc_15B1CBB:                     Me.Find CStr(var_B8 & var_FC), var_8C, 
  loc_15B1CD3:                   End If
  loc_15B1CD3:                 End If
  loc_15B1CD3:               End If
  loc_15B1CD3:             End If
  loc_15B1CD3:           End If
  loc_15B1CD3:         End If
  loc_15B1CD3:       End If
  loc_15B1CD3:     End If
  loc_15B1CD3:   End If
  loc_15B1CD3: End If
  loc_15B1CD3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '146A75C
  'Data Table: 5502B8
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim var_A0 As Variant
  Dim var_AC As Variant
  Dim var_B8 As Variant
  Dim Me As Recordset15
  Dim var_90 As Frame
  Dim var_9C As Frame
  Dim var_110 As Variant
  Dim var_A8 As Frame
  Dim var_120 As Variant
  Dim var_B4 As Frame
  Dim Shift As Integer
  loc_1469B9B: var_88 = Shift
  loc_1469BA8: If (CLng(Shift) = &H1B) Then
  loc_1469BAB:   Call Proc_125_72_FDEA24(var_88)
  loc_1469BB0:   Exit Sub
  loc_1469BB1: End If
  loc_1469BB4: var_8A = KeyCode
  loc_1469BBF: If (var_8A = CInt(1)) Then
  loc_1469BE4:   Set var_90 = Me.Txt
  loc_1469BEA:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_1469BF2:   var_98 = var_94.Left
  loc_1469C04:   Set var_9C = Me.Txt
  loc_1469C0A:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0)
  loc_1469C12:   var_A4 = var_A0.Top
  loc_1469C24:   Set var_A8 = Me.Txt
  loc_1469C2A:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_1469C32:   var_B0 = var_AC.Height
  loc_1469C44:   Set var_B4 = Me.Txt
  loc_1469C4A:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_B8)
  loc_1469C52:   var_BC = var_B8.Width
  loc_1469C9A:   Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1469CC1: Else
  loc_1469CC9:   If (var_8A = CInt(7)) Then
  loc_1469CD0:     Set var_A8 = CInt((var_A4 + var_B0))(CInt(var_98))
  loc_1469CF4:     Set var_9C = Nothing
  loc_1469D26:     Proc_6_69_134A198(var_A8, Me.Txt, CInt(7), global_60, Shift, 0)
  loc_1469D95:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1469DA3:       Set var_94 = 0(570(CInt(var_BC)))
  loc_1469DBB:       Proc_6_138_106D6F8(var_9C(1)(1), global_60, KeyCode)
  loc_1469DC9:     End If
  loc_1469DCC:   Else
  loc_1469DD4:     If (var_8A = CInt(4)) Then
  loc_1469DFF:       Set var_9C = Nothing
  loc_1469E31:       Proc_6_69_134A198(var_8A(Me.Txt), Me.Txt, CInt(4), global_88, Shift)
  loc_1469EA0:       If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1469EA7:         Set var_9C = 1(0)
  loc_1469EAE:         Set var_94 = ()(var_9C)
  loc_1469EC6:         Proc_6_138_106D6F8(var_9C, global_88, KeyCode)
  loc_1469ED4:       End If
  loc_1469ED7:     Else
  loc_1469EDF:       If (var_8A = CInt(&H11)) Then
  loc_1469F0A:         Set var_9C = Nothing
  loc_1469F3C:         Proc_6_69_134A198(0(Me.Txt), Me.Txt, CInt(&H11), global_68, Shift)
  loc_1469FAB:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1469FB2:           Set var_9C = 1(0)
  loc_1469FB9:           Set var_94 = ()(var_9C)
  loc_1469FD1:           Proc_6_138_106D6F8(var_9C, global_68, KeyCode)
  loc_1469FDF:         End If
  loc_1469FE2:       Else
  loc_1469FEA:         If (var_8A = CInt(6)) Then
  loc_146A015:           Set var_9C = Nothing
  loc_146A047:           Proc_6_69_134A198(0(Me.Txt), Me.Txt, CInt(6), global_72, Shift)
  loc_146A0B6:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_146A0BD:             Set var_9C = 1(0)
  loc_146A0C4:             Set var_94 = ()(var_9C)
  loc_146A0DC:             Proc_6_138_106D6F8(var_9C, global_72, KeyCode)
  loc_146A0EA:           End If
  loc_146A0ED:         Else
  loc_146A0F5:           If (var_8A = CInt(&H12)) Then
  loc_146A120:             Set var_9C = Nothing
  loc_146A152:             Proc_6_69_134A198(0(Me.Txt), Me.Txt, CInt(&H12), global_76, Shift)
  loc_146A1C1:             If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_146A1C8:               Set var_9C = 1(0)
  loc_146A1CF:               Set var_94 = ()(var_9C)
  loc_146A1E7:               Proc_6_138_106D6F8(var_9C, global_76, KeyCode)
  loc_146A1F5:             End If
  loc_146A1F8:           Else
  loc_146A200:             If (var_8A = CInt(&H10)) Then
  loc_146A22B:               Set var_9C = Nothing
  loc_146A25D:               Proc_6_69_134A198(0(Me.Txt), Me.Txt, CInt(&H10), global_80, Shift)
  loc_146A2CC:               If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_146A2D3:                 Set var_9C = 1(0)
  loc_146A2DA:                 Set var_94 = ()(var_9C)
  loc_146A2F2:                 Proc_6_138_106D6F8(var_9C, global_80, KeyCode)
  loc_146A300:               End If
  loc_146A303:             Else
  loc_146A30B:               If (var_8A = CInt(9)) Then
  loc_146A32B:                 Set var_A0 = ()
  loc_146A336:                 Set var_9C = Nothing
  loc_146A368:                 Proc_6_69_134A198(0(Me.Txt), Me.Txt, CInt(9), global_64, Shift)
  loc_146A3D7:                 If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_146A3DE:                   Set var_9C = 1(0)
  loc_146A3E5:                   Set var_94 = var_A0(var_9C)
  loc_146A3FD:                   Proc_6_138_106D6F8(var_9C, global_64, KeyCode)
  loc_146A40B:                 End If
  loc_146A40E:               Else
  loc_146A416:                 If (var_8A = CInt(&H14)) Then
  loc_146A423:                   If (CLng(Shift) = &H2D) Then
  loc_146A429:                     Call Proc_125_81_EE44B8(var_E0, var_94)
  loc_146A43B:                     Set var_90 = Me.Txt
  loc_146A441:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_146A465:                     Set var_90 = Me.Txt
  loc_146A46B:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_146A486:                     Set var_9C = Me.Txt
  loc_146A48C:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0)
  loc_146A494:                     var_A0.SelStart = Len(var_E0)
  loc_146A4A7:                     Exit Sub
  loc_146A4A8:                   End If
  loc_146A4A8:                 End If
  loc_146A4A8:               End If
  loc_146A4A8:             End If
  loc_146A4A8:           End If
  loc_146A4A8:         End If
  loc_146A4A8:       End If
  loc_146A4A8:     End If
  loc_146A4A8:   End If
  loc_146A4A8: End If
  loc_146A4F8: var_110 = (( And (CBool((( And (CBool(0((Me.FrmList.Visible = 0)).Visible) = 0))).Visible) = 0))).Visible
  loc_146A50F: var_120 = (( And (CBool(var_110) = 0))).Visible
  loc_146A585: If ( And (CBool((( And (CBool((( And (CBool((( And (CBool(var_120) = 0))).Visible) = 0))).Visible) = 0))).Visible) = 0)) Then
  loc_146A5A8:   If (((CLng(Shift) = &H26) And (global_116 = 6)) And (KeyCode = CInt(7))) Then
  loc_146A5AB:     Exit Sub
  loc_146A5AC:   End If
  loc_146A5CA:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HD))) Then
  loc_146A5D7:     If (CLng(Shift) = &H28) Then
  loc_146A5DA:       Exit Sub
  loc_146A5DB:     End If
  loc_146A612:     If (MsgBox("OK?", 4, "Save Detail", var_110, var_120) = 6) Then
  loc_146A615:       Call Proc_125_78_14C981C()
  loc_146A61C:       Shift = 0
  loc_146A61F:     End If
  loc_146A61F:     Exit Sub
  loc_146A623:   Else
  loc_146A641:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H14))) Then
  loc_146A64E:       If (CLng(Shift) = &H28) Then
  loc_146A651:         Exit Sub
  loc_146A652:       End If
  loc_146A689:       If (MsgBox("OK?", 4, "Save Detail", var_110, var_120) = 6) Then
  loc_146A68C:         Call Proc_125_78_14C981C(Shift)
  loc_146A693:         Shift = 0
  loc_146A696:       End If
  loc_146A696:       Exit Sub
  loc_146A69A:     Else
  loc_146A6B8:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H12))) Then
  loc_146A6C5:         If (CLng(Shift) = &H28) Then
  loc_146A6C8:           Exit Sub
  loc_146A6C9:         End If
  loc_146A6D5:         Call Txt_Validate(CInt(&H12))
  loc_146A711:         If (MsgBox("OK?", 4, "Save Detail", var_110, var_120) = 6) Then
  loc_146A714:           Call Proc_125_78_14C981C(0)
  loc_146A71B:           Shift = 0
  loc_146A71E:         End If
  loc_146A71E:         Exit Sub
  loc_146A71F:       End If
  loc_146A71F:     End If
  loc_146A71F:   End If
  loc_146A734:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_146A73D:     Proc_6_75_E527CC(Shift, arg_14)
  loc_146A742:   End If
  loc_146A74C:   If (CLng(Shift) = &H26) Then
  loc_146A755:     Proc_6_76_E52838(Shift, arg_14)
  loc_146A75A:   End If
  loc_146A75A: End If
  loc_146A75A: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F7E3FC
  'Data Table: 5502B8
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As TextBox
  Dim var_94 As Variant
  loc_F7E2B2: If (arg_10 = &HD) Then
  loc_F7E2B7:   arg_10 = 0
  loc_F7E2BA: End If
  loc_F7E2BD: Proc_6_58_E054C0(arg_10)
  loc_F7E2C8: Proc_6_133_E7EF78(var_94, arg_10)
  loc_F7E2D1: arg_10 = CInt(var_94)
  loc_F7E2DA: var_96 = KeyAscii
  loc_F7E2E5: If (var_96 = CInt(8)) Then
  loc_F7E2F2:   Set var_9C = Me.Txt
  loc_F7E2F8:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_F7E313:   Proc_6_42_129A86C(var_A0, arg_10, 8)
  loc_F7E322: Else
  loc_F7E32A:   If (var_96 = CInt(&HD)) Then
  loc_F7E337:     Set var_9C = Me.Txt
  loc_F7E33D:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 2)
  loc_F7E358:     Proc_6_42_129A86C(var_A0, arg_10, 4)
  loc_F7E367:   Else
  loc_F7E36F:     If (var_96 = CInt(9)) Then
  loc_F7E38E:       If (CBool(arg_10(0).Visible) = &HFF) Then
  loc_F7E3BB:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10)
  loc_F7E3D5:         Set var_A0 = (arg_10)
  loc_F7E3ED:         Proc_6_138_106D6F8(0("Name"), global_64)
  loc_F7E3FB:       End If
  loc_F7E3FB:     End If
  loc_F7E3FB:   End If
  loc_F7E3FB: End If
  loc_F7E3FB: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1182AE0
  'Data Table: 5502B8
  Dim var_86 As Integer
  loc_11826FB: var_86 = KeyCode
  loc_1182706: If (var_86 = CInt(7)) Then
  loc_1182725:   If (CBool((var_86).Visible) = &HFF) Then
  loc_118275D:     Proc_6_68_129FB34((), Me.Txt, KeyCode)
  loc_118277B:     Set var_A0 = ("Name")
  loc_1182793:     Proc_6_138_106D6F8(Shift(global_60), global_60)
  loc_11827A1:   End If
  loc_11827A4: Else
  loc_11827AC:   If (var_86 = CInt(4)) Then
  loc_11827CB:     If (CBool(var_A0(KeyCode).Visible) = &HFF) Then
  loc_1182803:       Proc_6_68_129FB34((), Me.Txt, KeyCode)
  loc_1182821:       Set var_A0 = ("Name")
  loc_1182839:       Proc_6_138_106D6F8(Shift(global_88), global_88)
  loc_1182847:     End If
  loc_118284A:   Else
  loc_1182852:     If (var_86 = CInt(&H11)) Then
  loc_1182871:       If (CBool(var_A0(KeyCode).Visible) = &HFF) Then
  loc_11828A9:         Proc_6_68_129FB34((), Me.Txt, KeyCode)
  loc_11828C7:         Set var_A0 = ("Name")
  loc_11828DF:         Proc_6_138_106D6F8(Shift(global_68), global_68)
  loc_11828ED:       End If
  loc_11828F0:     Else
  loc_11828F8:       If (var_86 = CInt(6)) Then
  loc_1182917:         If (CBool(var_A0(KeyCode).Visible) = &HFF) Then
  loc_118294F:           Proc_6_68_129FB34((), Me.Txt, KeyCode)
  loc_118296D:           Set var_A0 = ("Name")
  loc_1182985:           Proc_6_138_106D6F8(Shift(global_72), global_72)
  loc_1182993:         End If
  loc_1182996:       Else
  loc_118299E:         If (var_86 = CInt(&H12)) Then
  loc_11829BD:           If (CBool(var_A0(KeyCode).Visible) = &HFF) Then
  loc_11829F5:             Proc_6_68_129FB34((), Me.Txt, KeyCode)
  loc_1182A13:             Set var_A0 = ("Name")
  loc_1182A2B:             Proc_6_138_106D6F8(Shift(global_76), global_76)
  loc_1182A39:           End If
  loc_1182A3C:         Else
  loc_1182A44:           If (var_86 = CInt(&H10)) Then
  loc_1182A63:             If (CBool(var_A0(KeyCode).Visible) = &HFF) Then
  loc_1182A9B:               Proc_6_68_129FB34((), Me.Txt, KeyCode)
  loc_1182AB9:               Set var_A0 = ("Name")
  loc_1182AD1:               Proc_6_138_106D6F8(Shift(global_80), global_80)
  loc_1182ADF:             End If
  loc_1182ADF:           End If
  loc_1182ADF:         End If
  loc_1182ADF:       End If
  loc_1182ADF:     End If
  loc_1182ADF:   End If
  loc_1182ADF: End If
  loc_1182ADF: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49814
  'Data Table: 5502B8
  loc_E497F2: Set var_88 = Me.Txt
  loc_E497F8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49806: Proc_6_73_E22704(var_8C)
  loc_E49812: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1469B34
  'Data Table: 5502B8
  Dim var_8E As Integer
  Dim arg_10 As Integer
  Dim var_98 As Variant
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_DC As String
  Dim var_EC As TextBox
  Dim var_F8 As TextBox
  Dim var_120 As Double
  loc_1468F4F: var_8E = Cancel
  loc_1468F5A: If (var_8E = CInt(1)) Then
  loc_1468F68:   Set var_94 = Me.Txt
  loc_1468F6E:   Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1468F97:   If (Trim(CVar(var_98)) = vbNullString) Then
  loc_1468F9C:     arg_10 = &HFF
  loc_1468F9F:     Exit Sub
  loc_1468FA0:   End If
  loc_1468FAE:   Set var_94 = Me.Txt
  loc_1468FB4:   Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_DC)
  loc_1468FBC:   arg_10 = var_98.Text
  loc_1468FD3:   If (var_DC = "Advance") Then
  loc_1468FDC:     global_124 = "AD"
  loc_1468FE6:     Call Proc_125_74_11598CC(MemVar_1F92044, var_DC)
  loc_1468FF1:   Else
  loc_1468FF7:     global_124 = "AR"
  loc_1469001:     Call Proc_125_74_11598CC(MemVar_1F92044, var_DC)
  loc_1469009:   End If
  loc_146900C: Else
  loc_1469014:   If (var_8E = CInt(2)) Then
  loc_1469025:     Set var_94 = Me.Txt
  loc_146902B:     Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_1469033:     var_DC = var_98.Text
  loc_146904A:     If (var_DC <> vbNullString) Then
  loc_1469053:       Call Proc_125_74_11598CC(MemVar_1F92044, var_DC)
  loc_146905E:     Else
  loc_1469060:       arg_10 = &HFF
  loc_1469063:       Exit Sub
  loc_1469064:     End If
  loc_1469067:   Else
  loc_146906F:     If (var_8E = CInt(&H12)) Then
  loc_14690C0:       Set var_94 = Me.Txt
  loc_14690C6:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC)
  loc_14690CE:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_14690E6:       If (arg_10 Or (var_DC = vbNullString)) Then
  loc_14690F6:         Set var_94 = Me.Txt
  loc_14690FC:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1469104:         var_98.Text = vbNullString
  loc_146911D:         Set var_94 = Me.Txt
  loc_1469123:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146912B:         var_98.Tag = vbNullString
  loc_146913A:       Else
  loc_1469175:         Set var_E8 = Me.Txt
  loc_146917B:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1469183:         var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14691B6:         var_98 = Me.Fields.Item("Code")
  loc_14691C7:         var_DC = CStr(var_98.Value)
  loc_14691D4:         Set var_E8 = Me.Txt
  loc_14691DA:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_14691E2:         var_EC.Tag = var_DC
  loc_14691F8:       End If
  loc_14691FB:     Else
  loc_1469203:       If (var_8E = CInt(4)) Then
  loc_1469254:         Set var_94 = Me.Txt
  loc_146925A:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC)
  loc_1469262:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_146927A:         If (var_8E Or (var_DC = vbNullString)) Then
  loc_146928A:           Set var_94 = Me.Txt
  loc_1469290:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1469298:           var_98.Text = vbNullString
  loc_14692B1:           Set var_94 = Me.Txt
  loc_14692B7:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14692BF:           var_98.Tag = vbNullString
  loc_14692D9:           Set var_94 = Me.Txt
  loc_14692DF:           Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_14692E7:           var_98.Text = vbNullString
  loc_1469301:           Set var_94 = Me.Txt
  loc_1469307:           Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_146930F:           var_98.Tag = vbNullString
  loc_146931E:         Else
  loc_1469359:           Set var_E8 = Me.Txt
  loc_146935F:           Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1469367:           var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14693B8:           Set var_E8 = Me.Txt
  loc_14693BE:           Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_14693C6:           var_EC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14693F6:           var_98 = Me.Fields.Item("PartyName")
  loc_1469415:           Set var_E8 = Me.Txt
  loc_146941B:           Call 0.Method_Txt_Validate0 (CInt(6), var_EC)
  loc_1469423:           var_EC.Text = Proc_6_38_E68A98(CVar(var_98))
  loc_1469437:         End If
  loc_146943A:       Else
  loc_1469442:         If (var_8E = CInt(3)) Then
  loc_1469453:           Set var_94 = Me.Txt
  loc_1469459:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_1469480:           Set var_E8 = Me.Txt
  loc_1469486:           Call 0.Method_Txt_Validate0 (CInt(3), var_EC)
  loc_146948E:           var_EC.Text = Proc_6_34_14ECF20(var_98.Text)
  loc_14694AB:           Call Proc_125_74_11598CC(MemVar_1F92044)
  loc_14694C1:           Set var_94 = Me.Txt
  loc_14694C7:           Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_14694E6:           If (var_98.Text = vbNullString) Then
  loc_14694EB:             arg_10 = &HFF
  loc_14694EE:           End If
  loc_14694F1:         Else
  loc_14694F9:           If Not (var_8E = CInt(&HF)) Then
  loc_1469504:             If (var_8E = CInt(&HC)) Then
  loc_1469507:             End If
  loc_1469511:             Set var_94 = Me.Txt
  loc_1469517:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1469537:             Set var_EC = Me.Txt
  loc_146953D:             Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_1469545:             var_F8.Text = Proc_6_33_1512840(var_98, arg_10)
  loc_146955B:           Else
  loc_1469563:             If (var_8E = CInt(7)) Then
  loc_1469573:               Set var_94 = Me.Txt
  loc_1469579:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1469598:               If (var_98.Text <> vbNullString) Then
  loc_14695D6:                 Set var_E8 = Me.Txt
  loc_14695DC:                 Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_14695E4:                 var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1469635:                 Set var_E8 = Me.Txt
  loc_146963B:                 Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1469643:                 var_EC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1469673:                 var_98 = Me.Fields.Item("PayType")
  loc_1469684:                 var_DC = Proc_6_38_E68A98(CVar(var_98))
  loc_14696A8:                 Set var_94 = Me.Txt
  loc_14696AE:                 Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_14696B6:                 var_98.Text = var_DC
  loc_14696CE:                 var_DC(0).Visible = 
  loc_14696E2:                 (0).Visible = 
  loc_14696F6:                 Me.FrTxnNo.Visible = False
  loc_146970A:                 (0).Visible = 
  loc_146972C:                 var_98 = Me.Fields.Item("PayType")
  loc_1469741:                 Call Proc_125_77_111AC00(Proc_6_38_E68A98(CVar(var_98)))
  loc_1469752:               Else
  loc_146975F:                 Set var_94 = Me.Txt
  loc_1469765:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146976D:                 var_98.Text = vbNullString
  loc_1469786:                 Set var_94 = Me.Txt
  loc_146978C:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1469794:                 var_98.Tag = vbNullString
  loc_14697A0:               End If
  loc_14697A3:             Else
  loc_14697AB:               If (var_8E = CInt(8)) Then
  loc_14697B8:                 Set var_94 = Me.Txt
  loc_14697BE:                 Call 0.Method_Txt_Validate0 (Cancel)
  loc_14697CA:                 Proc_6_40_EA50F0(CVar(var_98))
  loc_14697CF:                 var_120 = var_98
  loc_14697F9:                 var_DC = CStr(Format(CVar(var_120), "0.00"))
  loc_1469807:                 Set var_E8 = Me.Txt
  loc_146980D:                 Call 0.Method_Txt_Validate0 (Cancel, var_EC, var_DC)
  loc_1469815:                 var_EC.Text = 1
  loc_1469834:               Else
  loc_146983C:                 If (var_8E = CInt(9)) Then
  loc_146988D:                   Set var_94 = Me.Txt
  loc_1469893:                   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC)
  loc_146989B:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_14698B3:                   If (1 Or (var_DC = vbNullString)) Then
  loc_14698C3:                     Set var_94 = Me.Txt
  loc_14698C9:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14698D1:                     var_98.Tag = vbNullString
  loc_14698DD:                     Exit Sub
  loc_14698DE:                   End If
  loc_1469919:                   Set var_E8 = Me.Txt
  loc_146991F:                   Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1469927:                   var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_146995A:                   var_98 = Me.Fields.Item("Code")
  loc_146996B:                   var_DC = CStr(var_98.Value)
  loc_1469978:                   Set var_E8 = Me.Txt
  loc_146997E:                   Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1469986:                   var_EC.Tag = var_DC
  loc_146999F:                 Else
  loc_14699A7:                   If (var_8E = CInt(&H10)) Then
  loc_14699F8:                     Set var_94 = Me.Txt
  loc_14699FE:                     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_DC)
  loc_1469A06:                     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1469A1E:                     If (var_120 Or (var_DC = vbNullString)) Then
  loc_1469A2E:                       Set var_94 = Me.Txt
  loc_1469A34:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1469A3C:                       var_98.Text = vbNullString
  loc_1469A55:                       Set var_94 = Me.Txt
  loc_1469A5B:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1469A63:                       var_98.Tag = vbNullString
  loc_1469A72:                     Else
  loc_1469AAD:                       Set var_E8 = Me.Txt
  loc_1469AB3:                       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1469ABB:                       var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1469B0C:                       Set var_E8 = Me.Txt
  loc_1469B12:                       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1469B1A:                       var_EC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1469B30:                     End If
  loc_1469B30:                   End If
  loc_1469B30:                 End If
  loc_1469B30:               End If
  loc_1469B30:             End If
  loc_1469B30:           End If
  loc_1469B30:         End If
  loc_1469B30:       End If
  loc_1469B30:     End If
  loc_1469B30:   End If
  loc_1469B30: End If
  loc_1469B30: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'FA9BA0
  'Data Table: 5502B8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_FA9A23: (False).Visible = 
  loc_FA9A3D: If (global_116 = 6) Then
  loc_FA9A57:   If (Me.RecordCount > 0) Then
  loc_FA9A96:     Set var_B8 = Me.Txt
  loc_FA9A9C:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(7), var_BC)
  loc_FA9AA4:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA9AF6:     Set var_B8 = Me.Txt
  loc_FA9AFC:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&H14), var_BC)
  loc_FA9B04:     var_BC.Text = CStr(Me.Fields.Item("PayType").Value)
  loc_FA9B37:     var_B4 = Me.Fields.Item("Code")
  loc_FA9B56:     Set var_B8 = Me.Txt
  loc_FA9B5C:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(7), var_BC)
  loc_FA9B64:     var_BC.Tag = CStr(var_B4.Value)
  loc_FA9B7A:   End If
  loc_FA9B85:   Set var_A8 = Me.Txt
  loc_FA9B8B:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(7), var_B4)
  loc_FA9B93:   var_B4.SetFocus
  loc_FA9B9F: End If
  loc_FA9B9F: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'EA0E64
  'Data Table: 5502B8
  Dim var_A8 As Variant
  loc_EA0DE4: Set var_88 = ()
  loc_EA0E0E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA0E16: Set var_BC = Txt.DispID_1D(var_A8)
  loc_EA0E36: Set var_BC = ()
  loc_EA0E52: Proc_6_138_106D6F8((Txt.DispID_1B), global_60)
  loc_EA0E60: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F49484
  'Data Table: 5502B8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4937B: (False).Visible = 
  loc_F4939A: If (Me.RecordCount > 0) Then
  loc_F493D9:   Set var_B4 = Me.Txt
  loc_F493DF:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(6), var_B8)
  loc_F493E7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4941A:   var_B0 = Me.Fields.Item("Code")
  loc_F49439:   Set var_B4 = Me.Txt
  loc_F4943F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(6), var_B8)
  loc_F49447:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4945D: End If
  loc_F49468: Set var_A8 = Me.Txt
  loc_F4946E: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(6))
  loc_F49476: var_B0.SetFocus
  loc_F49482: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'EA13C0
  'Data Table: 5502B8
  Dim var_A8 As Variant
  loc_EA1340: Set var_88 = ()
  loc_EA136A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA1372: Set var_BC = Txt.DispID_1D(var_A8)
  loc_EA1392: Set var_BC = ()
  loc_EA13AE: Proc_6_138_106D6F8((Txt.DispID_1B), global_76)
  loc_EA13BC: Exit Sub
End Sub

Public Function global_52Get() '552060
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '55206F
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EEA088
  'Data Table: 5502B8
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EE9FDA: On Error Goto loc_EEA043
  loc_EE9FE3: Me.MoveFirst
  loc_EE9FFD: var_8C = "Searchcode='" & MyValue
  loc_EEA00D: Me.Find var_8C & "'", 0, 1
  loc_EEA035: Proc_5_0_110649C(&HFF, Me, global_56)
  loc_EEA03D: Call Proc_125_70_156B0D0(0)
  loc_EEA042: Exit Sub
  loc_EEA043: ' Referenced from: EE9FDA
  loc_EEA04B: Set var_A8 = Err()
  loc_EEA051: Call 0.Method_arg_2C (var_8C)
  loc_EEA072: MsgBox(CVar(var_8C), &H40, "Information", var_EC, var_10C)
  loc_EEA085: Exit Sub
  loc_EEA086: Exit Sub
End Sub

Public Property Get OpenMode() 'E08FC0
  'Data Table: 5502B8
  loc_E08FB9: OpenMode = global_112
End Sub

Public Property Let OpenMode(vNewValue) 'E01220
  'Data Table: 5502B8
  loc_E0121A: global_112 = vNewValue
  loc_E0121D: Exit Sub
End Sub

Public Property Get OpenType() 'E08280
  'Data Table: 5502B8
  loc_E08279: OpenType = global_116
End Sub

Public Property Let OpenType(vNewValue) 'E00D34
  'Data Table: 5502B8
  loc_E00D2E: global_116 = vNewValue
  loc_E00D31: Exit Sub
End Sub

Public Property Get AdvType() 'E0F70C
  'Data Table: 5502B8
  loc_E0F700: var_88 = global_124
  loc_E0F703: AdvType = 
End Sub

Public Property Let AdvType(vNewValue) 'E0CE44
  'Data Table: 5502B8
  loc_E0CE3C: global_124 = vNewValue
  loc_E0CE40: Exit Sub
End Sub

Public Property Get IdNo() 'E0CDFC
  'Data Table: 5502B8
  loc_E0CDF0: var_88 = global_120
  loc_E0CDF3: IdNo = 
End Sub

Public Property Let IdNo(vNewValue) 'E0CD6C
  'Data Table: 5502B8
  loc_E0CD64: global_120 = vNewValue
  loc_E0CD68: Exit Sub
End Sub

Public Property Get PersonCode() 'E0CD24
  'Data Table: 5502B8
  loc_E0CD18: var_88 = global_132
  loc_E0CD1B: PersonCode = 
End Sub

Public Property Let PersonCode(vNewValue) 'E0F244
  'Data Table: 5502B8
  loc_E0F23C: global_132 = vNewValue
  loc_E0F240: Exit Sub
End Sub

Public Property Get pDocId() 'E0EE0C
  'Data Table: 5502B8
  loc_E0EE00: var_88 = global_128
  loc_E0EE03: pDocId = 
End Sub

Public Property Let pDocId(vNewValue) 'E0EE54
  'Data Table: 5502B8
  loc_E0EE4C: global_128 = vNewValue
  loc_E0EE50: Exit Sub
End Sub

Public Property Get PTableOrRoomNo() 'E0CB2C
  'Data Table: 5502B8
  loc_E0CB20: var_88 = global_136
  loc_E0CB23: PTableOrRoomNo = 
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E0CA9C
  'Data Table: 5502B8
  loc_E0CA94: global_136 = vNewValue
  loc_E0CA98: Exit Sub
End Sub

Public Property Get PRoomCat() 'E0CA0C
  'Data Table: 5502B8
  loc_E0CA00: var_88 = global_160
  loc_E0CA03: PRoomCat = 
End Sub

Public Property Let PRoomCat(vNewValue) 'E0C9C4
  'Data Table: 5502B8
  loc_E0C9BC: global_160 = vNewValue
  loc_E0C9C0: Exit Sub
End Sub

Public Property Get PRoomtype() 'E0C97C
  'Data Table: 5502B8
  loc_E0C970: var_88 = global_164
  loc_E0C973: PRoomtype = 
End Sub

Public Property Let PRoomtype(vNewValue) 'E0C7CC
  'Data Table: 5502B8
  loc_E0C7C4: global_164 = vNewValue
  loc_E0C7C8: Exit Sub
End Sub

Public Property Get PBillAmt() 'E0C784
  'Data Table: 5502B8
  loc_E0C77A: var_88 = CStr(global_140)
  loc_E0C77D: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E0C73C
  'Data Table: 5502B8
  loc_E0C736: global_140 = CDbl(vNewValue)
  loc_E0C739: Exit Sub
End Sub

Public Sub Proc_125_67_F66744(arg_C) 'F66744
  'Data Table: 5502B8
  Dim var_98 As TextBox
  loc_F66616: Set var_8C = Me.Txt
  loc_F6661C: Call 0.Method_Proc_125_67_F667448 (var_8E, var_86)
  loc_F66629: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_F6663F:   Set var_8C = Me.Txt
  loc_F66645:   Call 0.Method_Proc_125_67_F667440 (CInt(var_86), var_98)
  loc_F6664D:   var_98.Enabled = arg_C
  loc_F6665C: Next var_92 'Byte
  loc_F6666F: Set var_8C = Me.Txt
  loc_F66675: Call 0.Method_Proc_125_67_F667440 (CInt(2), var_98)
  loc_F6667D: var_98.Enabled = False
  loc_F66696: Set var_8C = Me.Txt
  loc_F6669C: Call 0.Method_Proc_125_67_F667440 (CInt(3), var_98)
  loc_F666A4: var_98.Enabled = False
  loc_F666BD: Set var_8C = Me.Txt
  loc_F666C3: Call 0.Method_Proc_125_67_F667440 (CInt(0), var_98)
  loc_F666CB: var_98.Enabled = False
  loc_F666E4: Set var_8C = Me.Txt
  loc_F666EA: Call 0.Method_Proc_125_67_F667440 (CInt(6), var_98)
  loc_F666F2: var_98.Enabled = False
  loc_F66715: If (OpenMode = 1) Then
  loc_F66725:   Set var_8C = Me.Txt
  loc_F6672B:   Call 0.Method_Proc_125_67_F667440 (CInt(4), var_98)
  loc_F66733:   var_98.Enabled = False
  loc_F6673F:   GoTo loc_F66742
  loc_F66742:   ' Referenced from: F6673F
  loc_F66742: End If
  loc_F66742: Exit Sub
End Sub

Public Sub Proc_125_68_F6775C
  'Data Table: 5502B8
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  loc_F67636: Set var_8C = Me.Txt
  loc_F6763C: Call 0.Method_Proc_125_68_F6775C8 (var_8E, var_86)
  loc_F67649: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_F6765F:   Set var_8C = Me.Txt
  loc_F67665:   Call 0.Method_Proc_125_68_F6775C0 (CInt(var_86), var_98)
  loc_F6766D:   var_98.Text = vbNullString
  loc_F67689:   Set var_8C = Me.Txt
  loc_F6768F:   Call 0.Method_Proc_125_68_F6775C0 (CInt(var_86), var_98)
  loc_F67697:   var_98.Tag = vbNullString
  loc_F676A6: Next var_92 'Byte
  loc_F676E3: Set var_8C = Me.Txt
  loc_F676E9: Call 0.Method_Proc_125_68_F6775C0 (CInt(3), var_98, CStr(Format(MemVar_1F920EC, "dd/MMM/yyyy")))
  loc_F676F1: var_98.Text = 1
  loc_F67714: Set var_8C = 1(1)
  loc_F6774A: Set var_8C = Txt.DispID_4("1").Name(1)
  loc_F67758: Exit Sub
End Sub

Public Sub Proc_125_69_11E2B04
  'Data Table: 5502B8
  Dim var_90 As Long
  Dim var_A0 As Variant
  Dim var_B4 As Frame
  Dim var_BC As Frame
  Dim var_CC As Variant
  loc_11E267F: (CDbl(1455)).Top = 
  loc_11E2695: (CDbl(0)).Left = 
  loc_11E26A0: var_8C = OpenType
  loc_11E26A8: var_90 = var_8C
  loc_11E26B4: If (var_90 = 6) Then
  loc_11E26CA:   var_90(CVar(CDbl(4000))).Top = 
  loc_11E26D2: End If
  loc_11E26E5: (CVar(CDbl(500))).Left = 
  loc_11E26FA:  = (var_B8).Height
  loc_11E270C:  = (var_8C).Top
  loc_11E2721: Set var_BC = (((var_8C + var_B8) + CDbl(&H14)))
  loc_11E2727: var_BC.Top = 
  loc_11E2744: (CDbl(240)).Left = 
  loc_11E2759:  = (var_B8).Height
  loc_11E276B:  = (var_8C).Top
  loc_11E2786: Me.FrTxnNo.Top = ((var_8C + var_B8) + CDbl(&H14))
  loc_11E27A3: Me.FrTxnNo.Left = CDbl(240)
  loc_11E27B8:  = (var_B8).Height
  loc_11E27CA:  = (var_8C).Top
  loc_11E27DF: Set var_BC = (((var_8C + var_B8) + CDbl(&H14)))
  loc_11E27E5: Me.FrTxnNo.Top = 
  loc_11E2802: (CDbl(240)).Left = 
  loc_11E282C: (CVar(CDbl(().Top))).Top = 
  loc_11E285D: (CVar(CDbl(().Height))).Height = 
  loc_11E2876: var_CC = ().Top
  loc_11E288C:  = var_CC(var_8C).Top
  loc_11E289A: var_A0 = CVar((var_8C + CDbl(var_CC))) 'Single
  loc_11E28A9: (CVar(CDbl(().Height))).Top = 
  loc_11E28DC: (CVar(CDbl(().Height))).Height = 
  loc_11E28F8:  = (var_B8).Height
  loc_11E290A:  = (var_8C).Top
  loc_11E291F: Set var_BC = (((var_8C + var_B8) + CDbl(&H14)))
  loc_11E2925: (CVar(CDbl(().Height))).Top = 
  loc_11E2942: (CDbl(240)).Left = 
  loc_11E2957:  = (var_B8).Height
  loc_11E2969:  = (var_8C).Top
  loc_11E297E: Set var_BC = (((var_8C + var_B8) + CDbl(&H14)))
  loc_11E2984: (CVar(CDbl(().Height))).Top = 
  loc_11E29A1: (CDbl(240)).Left = 
  loc_11E29B6:  = (var_B8).Height
  loc_11E29C8:  = (var_8C).Top
  loc_11E29DD: Set var_BC = (((var_8C + var_B8) + CDbl(&H14)))
  loc_11E29E3: (CVar(CDbl(().Height))).Top = 
  loc_11E2A00: (CDbl(240)).Left = 
  loc_11E2A1B: (CVar(CDbl(405))).Top = 
  loc_11E2A36: (CVar(CDbl(5415))).Left = 
  loc_11E2A51: (CVar(CDbl(405))).Top = 
  loc_11E2A6C: (CVar(CDbl(5550))).Left = 
  loc_11E2A87: (CVar(CDbl(405))).Top = 
  loc_11E2AA2: (CVar(CDbl(5550))).Left = 
  loc_11E2AB6: If (global_116 = 6) Then
  loc_11E2AB9: End If
  loc_11E2AC6:  = (var_8C).Top
  loc_11E2AD8: Set var_B4 = ((var_8C + CDbl(960)))
  loc_11E2ADE: (var_B8).Top = 
  loc_11E2AF9: (CDbl(240)).Left = 
  loc_11E2B01: Exit Sub
End Sub

Public Sub Proc_125_70_156B0D0
  'Data Table: 5502B8
  Dim Me As Recordset15
  Dim var_98 As Long
  Dim var_9C As String
  Dim var_A0 As String
  Dim var_A8 As String
  Dim var_B4 As String
  Dim var_F0 As Variant
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim unk_5502D0 As Connection15
  Dim var_148 As Variant
  Dim var_16C As Variant
  Dim var_15C As Variant
  Dim var_134 As Variant
  Dim var_1B0 As Fields15
  Dim var_14C As Variant
  Dim var_8E As Integer
  Dim var_144 As Variant
  Dim var_19C As Variant
  loc_156A044: On Error Goto loc_156B08D
  loc_156A04D: Proc_183_45_E5C118(global_56)
  loc_156A069: If (Me.RecordCount <= 0) Then
  loc_156A06C:   Call Proc_125_68_F6775C()
  loc_156A074: Else
  loc_156A07A:   var_98 = global_116
  loc_156A086:   If (var_98 = 6) Then
  loc_156A09D:     var_9C = "SELECT ST.DOCID,ST.VTYPE,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName," & " ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,ST.PayType,Case When ST.AmtCr<>0 Then ST.AmtCr Else ST.AmtDr End As Amount,ST.TaxStru,"
  loc_156A0A4:     var_A0 = var_9C & " T.Name As TaxStruName,ST.U_AE,ST.U_Name,ST.U_EntDt, ST.FPNo, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.TxnNo, ST.ExpDate,ST.BatchNo,ST.ContraDOCId,"
  loc_156A0B2:     var_A8 = var_A0 & " CC.Name as CompName,CompCode" & " FROM (((((PayChargeH AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code)"
  loc_156A0C7:     var_B4 = var_A8 & " LEFT JOIN Employee AS E ON ST.EmpCode = E.Code)" & " Inner JOIN RevMast AS P ON ST.PayCode = P.Code)" & " LEFT JOIN (Select Distinct Code,Name From TaxStru) AS T ON ST.TaxStru = T.Code)"
  loc_156A105:     var_100 = CVar(var_B4 & ")" & " Left join SubGroup CC on CC.SubCode=ST.CompCode Where ST.Docid='") & Me.Fields.Item("SearchCode").Value 
  loc_156A11C:     unk_5502D0.Execute CStr(var_100 & "' And ContraDocId<>''"), var_144, -1
  loc_156A127:     Set var_88 = var_148
  loc_156A155:   End If
  loc_156A189:   global_96 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_156A1B1:   If (Me.Recordset15.RecordCount > 0) Then
  loc_156A25D:     var_1AC = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE")), Me.Recordset15.Fields) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_156A2A5:     (CStr(var_98 & CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_Name")), var_1AC)))).Caption = 
  loc_156A325:     var_14C = Me.Recordset15.Fields.Item("U_AE")
  loc_156A33E:     var_120 = "entdt :   "
  loc_156A386:     var_1AC = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_14C)) = "E"), "Last Update :   ", var_120))
  loc_156A3A0:     var_1B0 = Me.Recordset15.Fields
  loc_156A3CE:     (CStr(var_1AC & CVar(Proc_6_38_E68A98(CVar(var_1B0.Item("U_EntDt")))))).Caption = 
  loc_156A442:     Set var_148 = Me.Txt
  loc_156A448:     Call 0.Method_Proc_125_70_156B0D00 (CInt(0), var_14C)
  loc_156A450:     var_14C.Text = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_156A49A:     global_100 = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_156A4C8:     var_D0 = Me.Recordset15.Fields.Item("vType")
  loc_156A52F:     Set var_BC = Me.Txt
  loc_156A535:     Call 0.Method_Proc_125_70_156B0D00 (CInt(1), var_D0)
  loc_156A53D:     var_D0.Text = CStr(IIf((CStr(var_D0.Value) = "AD"), "Advance", "Refund"))
  loc_156A593:     Set var_148 = Me.Txt
  loc_156A599:     Call 0.Method_Proc_125_70_156B0D00 (CInt(2), var_14C)
  loc_156A5A1:     var_14C.Text = CStr(Me.Recordset15.Fields.Item("VNo").Value)
  loc_156A5F3:     Set var_148 = Me.Txt
  loc_156A5F9:     Call 0.Method_Proc_125_70_156B0D00 (CInt(3), var_14C)
  loc_156A601:     var_14C.Text = CStr(Me.Recordset15.Fields.Item("VDate").Value)
  loc_156A66C:     (CStr(Me.Recordset15.Fields.Item("vPrefix").Value)).Caption = 
  loc_156A6AD:     Set var_148 = Me.Txt
  loc_156A6B3:     Call 0.Method_Proc_125_70_156B0D00 (CInt(&HA), var_14C)
  loc_156A6BB:     var_14C.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CardNo")))
  loc_156A708:     Set var_148 = Me.Txt
  loc_156A70E:     Call 0.Method_Proc_125_70_156B0D00 (CInt(4), var_14C)
  loc_156A716:     var_14C.Tag = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ContraDocId")))
  loc_156A72A:   End If
  loc_156A733:   Set var_BC = (False)
  loc_156A74E:   Set var_BC = Txt.DispID_19(1)
  loc_156A75E:   var_8E = 1
  loc_156A778:   If (Me.Recordset15.RecordCount > 0) Then
  loc_156A77B:     ' Referenced from:   156AF95
  loc_156A78D:     If Not(Me.Recordset15.EOF) Then
  loc_156A7AF:       Set var_200 = Txt.DispID_4(var_8E(vbNullString).Name)
  loc_156A7B6:       var_110 = CVar(CLng(var_8E)) 'Long
  loc_156A7BB:       var_15C = 0
  loc_156A7F2:       var_F0 = CVar(CStr(Me.Recordset15.Fields.Item("SNo").Value)) 'String
  loc_156A7F9:       LateIdCallSt
  loc_156A84C:       var_F0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_8E)), var_200)) 'String
  loc_156A853:       LateIdCallSt
  loc_156A869:       var_110 = CVar(CLng(var_8E)) 'Long
  loc_156A86E:       var_15C = 1
  loc_156A8A5:       var_F0 = CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)) 'String
  loc_156A8AC:       LateIdCallSt
  loc_156A8FF:       var_F0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_8E)), var_200, var_F0, 3)) 'String
  loc_156A906:       LateIdCallSt
  loc_156A953:       Proc_6_39_E7C810(var_F0, CVar(Me.Recordset15.Fields.Item("FPNo")), &H18, CVar(CLng(var_8E)), var_200, var_F0)
  loc_156A95C:       var_100 = CVar(CStr(var_F0)) 'String
  loc_156A963:       LateIdCallSt
  loc_156A9B5:       var_16C = 0
  loc_156A9E0:       var_9C = CStr("SELECT PartyName FROM HallBook WHERE DocId='" & Me.Recordset15.Fields.Item("ContraDocId").Value & "'")
  loc_156A9EA:       unk_5502D0.Execute var_9C, var_120, -1
  loc_156A9F2:       var_148 = var_148.Fields
  loc_156A9FA:       var_16C = var_14C.Item(var_14C)
  loc_156AA0B:       var_19C = CVar(Proc_6_38_E68A98(CVar(var_1B0), var_1B0, CVar(CLng(7)), CVar(CLng(var_8E)), var_200)) 'String
  loc_156AA12:       LateIdCallSt
  loc_156AA5A:       var_134 = CVar(CLng(var_8E)) 'Long
  loc_156AA5F:       var_16C = 8
  loc_156AA87:       var_100 = Format(CVar(Me.Recordset15.Fields.Item("Amount")), "0.00")
  loc_156AA90:       var_120 = CVar(CStr(var_100)) 'String
  loc_156AA97:       LateIdCallSt
  loc_156AAB1:       var_110 = CVar(CLng(var_8E)) 'Long
  loc_156AAB9:       var_15C = CVar(CLng(9)) 'Long
  loc_156AAEC:       var_F0 = CVar(CStr(Me.Recordset15.Fields.Item("CardNo").Value)) 'String
  loc_156AAF3:       LateIdCallSt
  loc_156AB0D:       var_110 = CVar(CLng(var_8E)) 'Long
  loc_156AB15:       var_15C = CVar(CLng(&HA)) 'Long
  loc_156AB48:       var_F0 = CVar(CStr(Me.Recordset15.Fields.Item("CardHolder").Value)) 'String
  loc_156AB4F:       LateIdCallSt
  loc_156ABA1:       var_F0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_200, var_F0, CVar(CLng(&HB)), CVar(CLng(var_8E)))) 'String
  loc_156ABA8:       LateIdCallSt
  loc_156ABF6:       var_F0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BatchNo")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_200, var_F0, var_200)) 'String
  loc_156ABFD:       LateIdCallSt
  loc_156AC4C:       var_F0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TxnNo")), &H19, CVar(CLng(var_8E)), var_200, var_F0)) 'String
  loc_156AC53:       LateIdCallSt
  loc_156AC69:       var_110 = CVar(CLng(var_8E)) 'Long
  loc_156AC71:       var_15C = CVar(CLng(&HD)) 'Long
  loc_156ACA4:       var_F0 = CVar(CStr(Me.Recordset15.Fields.Item("ChqNo").Value)) 'String
  loc_156ACAB:       LateIdCallSt
  loc_156ACFD:       var_F0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HE)), CVar(CLng(var_8E)), var_200, var_F0, CVar(CLng(&HE)), CVar(CLng(var_8E)))) 'String
  loc_156AD04:       LateIdCallSt
  loc_156AD1A:       var_110 = CVar(CLng(var_8E)) 'Long
  loc_156AD22:       var_15C = CVar(CLng(&HF)) 'Long
  loc_156AD55:       var_F0 = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_156AD5C:       LateIdCallSt
  loc_156ADAE:       var_F0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&H10)), CVar(CLng(var_8E)), var_200, var_F0, CVar(CLng(&H10)), CVar(CLng(var_8E)))) 'String
  loc_156ADB5:       LateIdCallSt
  loc_156ADCB:       var_110 = CVar(CLng(var_8E)) 'Long
  loc_156ADD3:       var_15C = CVar(CLng(&H11)) 'Long
  loc_156AE06:       var_F0 = CVar(CStr(Me.Recordset15.Fields.Item("EmpCode").Value)) 'String
  loc_156AE0D:       LateIdCallSt
  loc_156AE60:       var_F0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompCode")), &H16, CVar(CLng(var_8E)), var_200, var_F0, &H16, CVar(CLng(var_8E)))) 'String
  loc_156AE67:       LateIdCallSt
  loc_156AEB6:       var_F0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompName")), &H17, CVar(CLng(var_8E)), var_200, var_F0, var_200)) 'String
  loc_156AEBD:       LateIdCallSt
  loc_156AF0C:       var_F0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TaxStru")), &H12, CVar(CLng(var_8E)), var_200, var_F0)) 'String
  loc_156AF13:       LateIdCallSt
  loc_156AF62:       var_F0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TaxStruName")), &H13, CVar(CLng(var_8E)), var_200, var_F0)) 'String
  loc_156AF69:       LateIdCallSt
  loc_156AF7D:       Set var_200 = Nothing 
  loc_156AF87:       var_8E = (var_8E + 1)
  loc_156AF90:       Me.Recordset15.MoveNext
  loc_156AF95:       GoTo loc_156A77B
  loc_156AF98:     End If
  loc_156AFA5:     Set var_BC = var_8E(1)
  loc_156AFB3:   End If
  loc_156AFBB:   Set var_BC = Txt.DispID_6(True)
  loc_156AFCF:   If (var_8E = 1) Then
  loc_156AFDF:     Set var_BC = Txt.DispID_19(1)
  loc_156B038:     Set var_BC = var_200(CVar(CStr(Proc_6_127_F24F80(var_200(Txt.DispID_4), 0, var_F0, var_F0)))).Name(1)
  loc_156B046:   End If
  loc_156B05C:   Set var_BC = 1(2)
  loc_156B071:   Call Proc_125_77_111AC00(CStr(Txt.DispID_41), Txt.DispID_6, var_F0)
  loc_156B07F:   Call Proc_125_80_13D1B5C(var_200)
  loc_156B084: End If
  loc_156B089: Set var_88 = Nothing
  loc_156B08C: Exit Sub
  loc_156B08D: ' Referenced from: 156A044
  loc_156B095: Set var_BC = Err()
  loc_156B09B: Call 0.Method_arg_2C (var_9C)
  loc_156B0BC: MsgBox(CVar(var_9C), &H40, "Information", var_100, var_120)
  loc_156B0CF: Exit Sub
End Sub

Public Sub Proc_125_71_143A804(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) '143A804
  'Data Table: 5502B8
  Dim var_BC As String
  Dim var_C0 As String
  Dim unk_5502D0 As Connection15
  Dim var_88 As Integer
  Dim var_AC As Recordset15
  Dim var_D8 As Variant
  Dim var_100 As Variant
  Dim var_86 As Integer
  Dim var_EC As Fields15
  Dim var_118 As Field20
  Dim var_13C As Fields15
  Dim var_150 As Variant
  Dim var_170 As String
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1E0 As Variant
  Dim var_218 As Variant
  Dim var_228 As Variant
  Dim var_E8 As Variant
  Dim var_110 As Variant
  Dim var_160 As Variant
  Dim var_1B0 As Variant
  Dim var_266 As Integer
  Dim var_9C As Recordset15
  loc_1439D60: On Error Goto loc_143A7FD
  loc_1439D77: var_BC = "SELECT P.VNO AS RECTNO,P.VDATE AS RECTDATE,P.PAYTYPE AS RECTMODE,P.U_Name As UserName,P.CardNo AS CCardNo,P.Cardholder As CCardholder,P.ChqNo As ChqNo,P.ChqDate AS ChqDate,P.ExpDate AS CCExpDate,P.BatchNo As BatchNo,(P.AMTCR-P.AmtDr) AS RECTAMT,HB.VType+'/'+Cast(HB.VNO As Char)AS BOOKNO,HB.PartyName As CustName,P.Comments FROM (PAYCHARGEH P left join HallBook HB On P.ContraDocid=HB.DocId) WHERE IsNull(P.ContraDocId,'')<>'' And P.DOCID IN ('" & arg_C
  loc_1439D95: unk_5502D0.Execute var_BC & "') AND P.VTYPE='" & arg_18 & "'", var_E8, -1
  loc_1439DA0: Set var_AC = var_EC
  loc_1439DC8: var_BC = "Select R.Name As TaxName,P.TaxPer,Abs(P.AmtCr-P.AmtDr) as TaxAmt,P.OnAmt as TaxableAmt From PayChargeH P Left Join RevMast R On P.PayCode=R.Code where P.Docid='" & arg_C
  loc_1439DD8: unk_5502D0.Execute var_BC & "' And P.TaxPer<>0 Order by P.TaxPer Desc,P.PayCode", var_E8, -1
  loc_1439DE3: Set var_9C = var_EC
  loc_1439DF5: Close 1
  loc_1439DFE: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1439E04: var_88 = 1
  loc_1439E0A: MemVar_1F923C0 = "N"
  loc_1439E11: MemVar_1F923C4 = "N"
  loc_1439E18: MemVar_1F923C8 = "M"
  loc_1439E22: var_F0 = var_AC.RecordCount
  loc_1439E30: If (var_F0 > 0) Then
  loc_1439E51:   If CBool(Trim(arg_10) <> "W") Then
  loc_1439E54:     ' Referenced from: 143A291
  loc_1439E63:     If Not(var_AC.EOF) Then
  loc_1439E72:       If (var_86 = 0) Then
  loc_1439E8D:         Print 1, vbNullString
  loc_1439E98:         Print 1, vbNullString
  loc_1439EBA:         var_C0 = Proc_6_128_10272A8(" ADVANCE RECEIPT ", "B", &H50, Proc_6_129_12B6C1C(var_88, Proc_6_129_12B6C1C(var_88, var_86, &H50), &H50))
  loc_1439EBF:         Print 1, var_C0
  loc_1439ED3:         Print 1, vbNullString
  loc_1439EDE:         Print 1, vbNullString
  loc_1439EF6:         var_EC = var_AC.Fields
  loc_1439F3E:         Proc_6_39_E7C810(var_160, CVar(var_AC.Fields.Item("GRCNo")), var_88)
  loc_1439FAB:         var_138 = (CVar("Receipt No.  :" & CStr(var_EC.Item("RectNo").Value)) + Space(8))
  loc_1439FB2:         var_190 = CVar(Proc_6_45_EAD428(CStr("GRC No. :" & var_160), &HE)) 'String
  loc_1439FB5:         var_1A0 = (var_138 + var_190)
  loc_1439FBC:         var_1C0 = (var_1A0 + Space(8))
  loc_1439FC5:         var_1E0 = (var_1C0 + "Date :")
  loc_1439FCF:         var_228 = (var_1E0 + CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("RectDate")), var_EC)))
  loc_1439FD5:         Print 1, var_228
  loc_143A017:         Print 1, vbNullString
  loc_143A022:         Print 1, vbNullString
  loc_143A050:         var_110 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("GuestName")))) 'String
  loc_143A063:         var_138 = ("Recieved with thanks from Mr. " + Ucase(var_110))
  loc_143A069:         Print 1, var_138
  loc_143A082:         Print 1, vbNullString
  loc_143A09F:         var_118 = var_AC.Fields.Item("RectAmt")
  loc_143A0AE:         Proc_6_39_E7C810(var_110, CVar(var_118))
  loc_143A0BD:         var_100 = "0.00"
  loc_143A0C2:         var_128 = var_100
  loc_143A0E2:         var_13C = var_AC.Fields
  loc_143A0EA:         var_140 = var_13C.Item("RectAmt")
  loc_143A0F9:         Proc_6_39_E7C810(var_190, CVar(var_140), 1)
  loc_143A14B:         var_170 = "A Sum of Rs. "
  loc_143A153:         var_150 = (var_170 + Format(var_110, var_128))
  loc_143A15C:         var_160 = (CVar(var_AC.Fields.Item("GRCNo")) + " (")
  loc_143A166:         var_1B0 = (var_160 + CVar(Proc_6_43_10041F4(CSng(var_190), "Rs", vbNullString)))
  loc_143A16F:         var_1C0 = (Space(8) + ") by ")
  loc_143A179:         var_218 = (var_1C0 + CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("RectMode")), 1)))
  loc_143A17F:         Print 1, CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("RectDate")), var_AC.Fields))
  loc_143A1BD:         Print 1, vbNullString
  loc_143A1CF:         Print 1, "towards (Room Charge/Others)" & "______________________________________________"
  loc_143A1DD:         Print 1, vbNullString
  loc_143A1E8:         Print 1, vbNullString
  loc_143A1F3:         Print 1, vbNullString
  loc_143A1FE:         Print 1, vbNullString
  loc_143A209:         Print 1, vbNullString
  loc_143A22D:         Print 1, Proc_6_52_EAD4F4("Autho. Signature", &H46)
  loc_143A241:         Print 1, vbNullString
  loc_143A24C:         Print 1, "---------------------------------------------------------------------------------------"
  loc_143A252:       End If
  loc_143A258:       var_86 = (var_86 + &H18)
  loc_143A25B:       ' Referenced from: 143A278
  loc_143A261:       If (Proc_6_129_12B6C1C(var_88, var_86, &H50) < &H22) Then
  loc_143A269:         Print 1, vbNullString
  loc_143A275:         var_86 = (var_86 + 1)
  loc_143A278:         GoTo loc_143A25B
  loc_143A27B:       End If
  loc_143A27D:       var_86 = 0
  loc_143A286:       var_88 = (var_88 + 1)
  loc_143A28C:       var_AC.MoveNext
  loc_143A291:       GoTo loc_1439E54
  loc_143A294:     End If
  loc_143A297:   Else
  loc_143A29E:     var_B0 = arg_14 & " Advance Receipt"
  loc_143A2A4:     var_D8 = arg_14
  loc_143A2B5:     var_B4 = CStr(Ucase(var_D8))
  loc_143A2DF:     Set var_EC = var_AC 
  loc_143A2E6:     CreateFieldDefFile(var_EC, MemVar_1F920B4 & "\" & var_B0 & ".ttx", &HFF, var_88)
  loc_143A311:     var_BC = MemVar_1F920B4 & "\"
  loc_143A328:     Call 0.Method_arg_1C (var_BC & var_B0 & ".RPT", var_D8, var_EC, var_86)
  loc_143A333:     MemVar_1F921E4 = var_EC
  loc_143A35C:     Call 0.Method_arg_64 (var_EC, CVar(var_EC), var_100, var_170)
  loc_143A364:     Call 0.Method_arg_2C (var_86, var_86)
  loc_143A372:     Call 0.Method_arg_150 (var_EC)
  loc_143A388:     Call 0.Method_arg_90 (var_EC, var_F0)
  loc_143A390:     Call 0.Method_arg_24 (var_B6)
  loc_143A39C:     For var_254 =  To CInt(var_F0):   1 = var_254 'Integer
  loc_143A3B5:       Call 0.Method_arg_90 (var_EC, CLng(var_B6))
  loc_143A3BD:       Call 0.Method_arg_20 (var_118)
  loc_143A3C5:       Call 0.Method_arg_30 (var_BC)
  loc_143A3F4:       If (Ucase(CVar(var_BC)) = "TITLE") Then
  loc_143A3FE:         var_BC = "'" & arg_14
  loc_143A418:         Call 0.Method_arg_90 (var_EC, CLng(var_B6))
  loc_143A420:         Call 0.Method_arg_20 (var_118)
  loc_143A428:         Call 0.Method_arg_38 (var_BC & "'")
  loc_143A43B:       End If
  loc_143A43E:     Next var_254 'Integer
  loc_143A445:     var_266 = 1
  loc_143A448:     ' Referenced from:   143A736
  loc_143A457:     If Not(var_9C.EOF) Then
  loc_143A46B:       Call 0.Method_arg_90 (var_EC, var_F0, var_B6)
  loc_143A473:       Call 0.Method_arg_24 (1)
  loc_143A47F:       For var_26A =  To CInt(var_F0):   var_266 = var_26A 'Integer
  loc_143A498:         Call 0.Method_arg_90 (var_EC, CLng(var_B6))
  loc_143A4A0:         Call 0.Method_arg_20 (var_118)
  loc_143A4A8:         Call 0.Method_arg_30 (var_BC)
  loc_143A4BE:         var_27C = Ucase(CVar(var_BC)) 'Variant
  loc_143A4E7:         If (var_27C = CVar("STNAME" & CStr(var_266))) Then
  loc_143A518:           Proc_6_17_EAA2B0(var_128)
  loc_143A534:           Call 0.Method_arg_90 (var_13C, CLng(var_B6), var_140)
  loc_143A53C:           Call 0.Method_arg_20 (CStr(var_128))
  loc_143A544:           Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("TaxName")))))
  loc_143A561:         Else
  loc_143A57C:           If (var_27C = CVar("STPER" & CStr(var_266))) Then
  loc_143A5AD:             Proc_6_17_EAA2B0(var_128)
  loc_143A5C9:             Call 0.Method_arg_90 (var_13C, CLng(var_B6), var_140)
  loc_143A5D1:             Call 0.Method_arg_20 (CStr(var_128))
  loc_143A5D9:             Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("TaxPer")))))
  loc_143A5F6:           Else
  loc_143A611:             If (var_27C = CVar("STAMT" & CStr(var_266))) Then
  loc_143A642:               Proc_6_17_EAA2B0(var_128)
  loc_143A65E:               Call 0.Method_arg_90 (var_13C, CLng(var_B6), var_140)
  loc_143A666:               Call 0.Method_arg_20 (CStr(var_128))
  loc_143A66E:               Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("TaxAmt")))))
  loc_143A68B:             Else
  loc_143A6A6:               If (var_27C = CVar("STABLEAMT" & CStr(var_266))) Then
  loc_143A6D7:                 Proc_6_17_EAA2B0(var_128)
  loc_143A6F3:                 Call 0.Method_arg_90 (var_13C, CLng(var_B6), var_140)
  loc_143A6FB:                 Call 0.Method_arg_20 (CStr(var_128))
  loc_143A703:                 Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("TaxableAmt")))))
  loc_143A71D:               End If
  loc_143A71D:             End If
  loc_143A71D:           End If
  loc_143A71D:         End If
  loc_143A720:       Next var_26A 'Integer
  loc_143A72B:       var_266 = (var_266 + 1)
  loc_143A731:       var_9C.MoveNext
  loc_143A736:       GoTo loc_143A448
  loc_143A739:     End If
  loc_143A73E:     Set var_118 = Nothing
  loc_143A754:     Set var_EC = MemVar_1F921E4 
  loc_143A760:     Proc_6_99_1483714(var_EC, 0, var_B4)
  loc_143A76B:     MemVar_1F921E4 = var_EC
  loc_143A776:   End If
  loc_143A776: End If
  loc_143A778: Close 1
  loc_143A781: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_143A791: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_143A79C: Close 1
  loc_143A7A6: If (MemVar_1F923B8 = "Y") Then
  loc_143A7C2:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_143A7CC: Else
  loc_143A7E5:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_143A7EC: End If
  loc_143A7F1: Set var_AC = Nothing
  loc_143A7F9: Set var_9C = Nothing
  loc_143A7FC: Exit Sub
  loc_143A7FD: ' Referenced from: 1439D60
  loc_143A7FD: Proc_6_60_E62BC4(&HFF, var_118)
  loc_143A802: Exit Sub
End Sub

Public Sub Proc_125_72_FDEA24
  'Data Table: 5502B8
  loc_FDE858: If (CBool(().Visible) = &HFF) Then
  loc_FDE86A:   (False).Visible = 
  loc_FDE872: End If
  loc_FDE88E: If (CBool(().Visible) = &HFF) Then
  loc_FDE8A0:   (False).Visible = 
  loc_FDE8A8: End If
  loc_FDE8C4: If (CBool(().Visible) = &HFF) Then
  loc_FDE8D6:   (False).Visible = 
  loc_FDE8DE: End If
  loc_FDE8FA: If (CBool(().Visible) = &HFF) Then
  loc_FDE90C:   (False).Visible = 
  loc_FDE914: End If
  loc_FDE930: If (CBool(().Visible) = &HFF) Then
  loc_FDE942:   (False).Visible = 
  loc_FDE94A: End If
  loc_FDE966: If (CBool(().Visible) = &HFF) Then
  loc_FDE978:   (False).Visible = 
  loc_FDE980: End If
  loc_FDE99C: If (CBool(().Visible) = &HFF) Then
  loc_FDE9AE:   (False).Visible = 
  loc_FDE9B6: End If
  loc_FDE9D2: If (CBool(().Visible) = &HFF) Then
  loc_FDE9E4:   (False).Visible = 
  loc_FDE9EC: End If
  loc_FDEA08: If (CBool(().Visible) = &HFF) Then
  loc_FDEA1A:   (False).Visible = 
  loc_FDEA22: End If
  loc_FDEA22: Exit Sub
End Sub

Public Sub Proc_125_73_E92480(arg_C) 'E92480
  'Data Table: 5502B8
  Dim var_10C As TextBox
  loc_E92414: Call Proc_125_72_FDEA24()
  loc_E92450: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E92453:   Call TopCtrl1_UnknownEvent_16()
  loc_E9245B: Else
  loc_E92465:   Set var_108 = Me.Txt
  loc_E9246B:   Call 0.Method_Proc_125_73_E924800 (arg_C)
  loc_E92473:   var_10C.SetFocus
  loc_E9247F: End If
  loc_E9247F: Exit Sub
End Sub

Public Sub Proc_125_74_11598CC
  'Data Table: 5502B8
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
  loc_1159560: var_90 = global_124
  loc_1159577: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_11595A8: Set var_A8 = Me.Txt
  loc_11595AE: Call 0.Method_Proc_125_74_11598CC0 (CInt(3), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_11595BD: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_11595C5: var_EC = -1 & var_CC 
  loc_11595D9: Me.Txt.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_11595E4: Set var_8C = var_134
  loc_1159620: If (var_8C.RecordCount > 0) Then
  loc_115965F:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1159662:     GoTo loc_11596EF
  loc_1159665:   End If
  loc_1159696:   global_104 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11596C1:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_11596D6:   var_CC = (var_AC.Value + 1)
  loc_11596DE:   global_108 = CInt(var_CC)
  loc_11596EF:   ' Referenced from: 1159662
  loc_115971A:   var_BC = Space((5 - Len(var_90)))
  loc_1159722:   var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_1159736:   var_EC = Space((5 - Len(global_104)))
  loc_115973E:   var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_115974B:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_104))
  loc_1159764:   var_14C = Space((8 - Len(CStr(global_108))))
  loc_115976C:   var_15C = (var_130 + var_14C)
  loc_115977B:   var_17C = (var_15C + CVar(CStr(global_108)))
  loc_1159786:   global_100 = CStr(var_17C)
  loc_11597BC:   global_108(global_104).Caption = 
  loc_11597D5:   Set var_A8 = Me.Txt
  loc_11597DB:   Call 0.Method_Proc_125_74_11598CC0 (CInt(0), var_AC)
  loc_11597E3:   var_AC.Text = global_100
  loc_1159805:   Set var_A8 = Me.Txt
  loc_115980B:   Call 0.Method_Proc_125_74_11598CC0 (CInt(2), var_AC)
  loc_1159813:   var_AC.Text = CStr(global_108)
  loc_1159828:   var_88 = global_100
  loc_115982E: Else
  loc_1159834:   global_100 = vbNullString
  loc_115985A:   0(vbNullString).Caption = 
  loc_1159873:   Set var_A8 = Me.Txt
  loc_1159879:   Call 0.Method_Proc_125_74_11598CC0 (CInt(0), var_AC)
  loc_1159881:   var_AC.Text = global_100
  loc_115989B:   Set var_A8 = Me.Txt
  loc_11598A1:   Call 0.Method_Proc_125_74_11598CC0 (CInt(2), var_AC)
  loc_11598A9:   var_AC.Text = vbNullString
  loc_11598BB:   var_88 = global_100
  loc_11598BE: End If
  loc_11598C3: Set var_8C = Nothing
  loc_11598C6: Proc_125_74_11598CC = 
End Sub

Public Sub Proc_125_75_11D581C
  'Data Table: 5502B8
  Dim var_88 As Long
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_11D539A: var_88 = global_116
  loc_11D53A6: If (var_88 = 6) Then
  loc_11D53B5:   var_88(&HFF).Visible = 
  loc_11D53BD: End If
  loc_11D53C1: Set var_90 = ()
  loc_11D53C4: var_A0 = &H19
  loc_11D53D8: var_A0 = CVar(CLng(9)) 'Long
  loc_11D53DD: var_C0 = 0
  loc_11D53E9: LateIdCallSt
  loc_11D53F4: var_A0 = CVar(CLng(&HA)) 'Long
  loc_11D53F9: var_C0 = 0
  loc_11D5405: LateIdCallSt
  loc_11D5410: var_A0 = CVar(CLng(&HB)) 'Long
  loc_11D5415: var_C0 = 0
  loc_11D5421: LateIdCallSt
  loc_11D542C: var_A0 = CVar(CLng(&HC)) 'Long
  loc_11D5431: var_C0 = 0
  loc_11D543D: LateIdCallSt
  loc_11D5445: var_A0 = &H19
  loc_11D544E: var_C0 = 0
  loc_11D545A: LateIdCallSt
  loc_11D5465: var_A0 = CVar(CLng(&HD)) 'Long
  loc_11D546A: var_C0 = 0
  loc_11D5476: LateIdCallSt
  loc_11D5481: var_A0 = CVar(CLng(&HE)) 'Long
  loc_11D5486: var_C0 = 0
  loc_11D5492: LateIdCallSt
  loc_11D549D: var_A0 = CVar(CLng(&HF)) 'Long
  loc_11D54A2: var_C0 = 0
  loc_11D54AE: LateIdCallSt
  loc_11D54B9: var_A0 = CVar(CLng(&H10)) 'Long
  loc_11D54BE: var_C0 = 0
  loc_11D54CA: LateIdCallSt
  loc_11D54D5: var_A0 = CVar(CLng(&H11)) 'Long
  loc_11D54DA: var_C0 = 0
  loc_11D54E6: LateIdCallSt
  loc_11D54EE: var_A0 = &H12
  loc_11D54F7: var_C0 = 0
  loc_11D5503: LateIdCallSt
  loc_11D550B: var_A0 = 1
  loc_11D5514: var_C0 = 0
  loc_11D5520: LateIdCallSt
  loc_11D5528: var_A0 = 4
  loc_11D5531: var_C0 = 0
  loc_11D553D: LateIdCallSt
  loc_11D5545: var_A0 = 5
  loc_11D554E: var_C0 = 0
  loc_11D555A: LateIdCallSt
  loc_11D5565: var_A0 = CVar(CLng(6)) 'Long
  loc_11D556A: var_C0 = 0
  loc_11D5576: LateIdCallSt
  loc_11D5581: var_A0 = CVar(CLng(7)) 'Long
  loc_11D5586: var_C0 = 0
  loc_11D5592: LateIdCallSt
  loc_11D559A: var_A0 = 2
  loc_11D55A3: var_C0 = 0
  loc_11D55AF: LateIdCallSt
  loc_11D55B7: var_A0 = 0
  loc_11D55C0: var_C0 = &HFA
  loc_11D55CC: LateIdCallSt
  loc_11D55D4: var_A0 = 0
  loc_11D55DD: var_C0 = 0
  loc_11D55E6: var_E0 = "SNo"
  loc_11D55EF: LateIdCallSt
  loc_11D55F7: var_A0 = 0
  loc_11D5600: var_C0 = &H1F4
  loc_11D560C: LateIdCallSt
  loc_11D5614: var_A0 = 0
  loc_11D561D: var_C0 = 3
  loc_11D5626: var_E0 = "Payment Type"
  loc_11D562F: LateIdCallSt
  loc_11D5637: var_A0 = 3
  loc_11D5646: var_C0 = CVar(CInt(1)) 'Integer
  loc_11D564D: LateIdCallSt
  loc_11D5655: var_A0 = 3
  loc_11D565E: var_C0 = &HBB8
  loc_11D566A: LateIdCallSt
  loc_11D5672: var_A0 = 0
  loc_11D567B: var_C0 = 8
  loc_11D5684: var_E0 = "Amount"
  loc_11D568D: LateIdCallSt
  loc_11D5695: var_A0 = 8
  loc_11D56A4: var_C0 = CVar(CInt(7)) 'Integer
  loc_11D56AB: LateIdCallSt
  loc_11D56B3: var_A0 = 8
  loc_11D56C2: var_C0 = CVar(CInt(7)) 'Integer
  loc_11D56C9: LateIdCallSt
  loc_11D56D1: var_A0 = 8
  loc_11D56DA: var_C0 = &H578
  loc_11D56E6: LateIdCallSt
  loc_11D56EE: var_A0 = 0
  loc_11D56F7: var_C0 = &H13
  loc_11D5700: var_E0 = "Tax Structure"
  loc_11D5709: LateIdCallSt
  loc_11D5711: var_A0 = &H13
  loc_11D5720: var_C0 = CVar(CInt(1)) 'Integer
  loc_11D5727: LateIdCallSt
  loc_11D572F: var_A0 = &H13
  loc_11D5738: var_C0 = &H9C4
  loc_11D5744: LateIdCallSt
  loc_11D574C: var_A0 = &H14
  loc_11D5755: var_C0 = 0
  loc_11D5761: LateIdCallSt
  loc_11D5769: var_A0 = &H15
  loc_11D5772: var_C0 = 0
  loc_11D577E: LateIdCallSt
  loc_11D5786: var_A0 = &H16
  loc_11D578F: var_C0 = 0
  loc_11D579B: LateIdCallSt
  loc_11D57A3: var_A0 = &H17
  loc_11D57AC: var_C0 = 0
  loc_11D57B8: LateIdCallSt
  loc_11D57C0: var_A0 = &H18
  loc_11D57C9: var_C0 = 0
  loc_11D57D5: LateIdCallSt
  loc_11D57E3: var_A0 = 1
  loc_11D57EC: var_C0 = 0
  loc_11D5807: LateIdCallSt
  loc_11D5815: Call Proc_125_76_F93978(var_C0(CVar(CStr(1))), var_A0, Nothing, var_C0, var_A0, Nothing, var_C0)
  loc_11D581A: Exit Sub
  loc_11D581B: End Sub
End Sub

Public Sub Proc_125_76_F93978
  'Data Table: 5502B8
  Dim var_94 As Long
  Dim var_98 As Variant
  Dim var_BC As Column
  Dim Me As Recordset15
  loc_F9382C: Me.Recordset15.CursorLocation = 3
  loc_F93848: If (OpenType = 6) Then
  loc_F93857:   Set var_8C = Me.LblName
  loc_F9385D:   Call 0.Method_Proc_125_76_F939780 (&HC, var_98)
  loc_F93865:   var_98.Caption = "Party"
  loc_F93881:   Set var_8C = var_BC(1)
  loc_F93892:   Set var_98 = LblName.DispID_69
  loc_F93898:   var_94 = var_98.Item("Hall #")
  loc_F938A0:   var_BC.Caption = 
  loc_F938E3:   Me.Open CVar("Select T.Code,T.nAME As Name From VenueMast T where Departcode='" & global_52 & "' Order By T.Code"), CVar(MemVar_1F92044), 3
  loc_F938F4:   global_148 = "HALL"
  loc_F938FE:   global_152 = "HL"
  loc_F9390D:   Set var_8C = var_98(1)
  loc_F93913:   Call 0.Method_Proc_125_76_F939780 (0, 1)
  loc_F9391B:   var_98.Visible = True
  loc_F93934:   Set var_8C = Me.Txt
  loc_F9393A:   Call 0.Method_Proc_125_76_F939780 (CInt(5), var_98)
  loc_F93942:   var_98.Visible = False
  loc_F93957:   CVarUnk
  loc_F9395C:   VerifyVarObj
  loc_F93962:   Set var_8C = (New)
  loc_F93968:   LateIdStAd
  loc_F93976: End If
  loc_F93976: Exit Sub
End Sub

Public Sub Proc_125_77_111AC00(arg_C) '111AC00
  'Data Table: 5502B8
  Dim var_8C As Long
  Dim var_A0 As Frame
  loc_111A8A4: (0).Visible = 
  loc_111A8B8: (0).Visible = 
  loc_111A8CC: (0).Visible = 
  loc_111A8E0: (0).Visible = 
  loc_111A8F4: (0).Visible = 
  loc_111A908: Me.FrTxnNo.Visible = False
  loc_111A91C: (0).Visible = 
  loc_111A92A: var_8C = global_116
  loc_111A936: If (var_8C = 6) Then
  loc_111A93C:   var_90 = arg_C
  loc_111A947:   If (var_90 = "Cheque") Then
  loc_111A956:     var_8C(&HFF).Visible = 
  loc_111A96A:     (&HFF).Visible = 
  loc_111A97F:      = (var_9C).Height
  loc_111A991:      = (var_94).Top
  loc_111A9A6:     Set var_A0 = (((var_94 + var_9C) + CDbl(&H14)))
  loc_111A9AC:     var_A0.Top = 
  loc_111A9BD:   Else
  loc_111A9C5:     If (var_90 = "Credit Card") Then
  loc_111A9D4:       (&HFF).Visible = 
  loc_111A9E8:       (0).Visible = 
  loc_111A9F3:     Else
  loc_111A9FB:       If (var_90 = "Staff") Then
  loc_111AA0A:         (&HFF).Visible = 
  loc_111AA1E:         (&HFF).Visible = 
  loc_111AA33:          = (var_9C).Height
  loc_111AA45:          = (var_94).Top
  loc_111AA5A:         Set var_A0 = (((var_94 + var_9C) + CDbl(&H14)))
  loc_111AA60:         var_A0.Top = 
  loc_111AA71:       Else
  loc_111AA79:         If (var_90 = "Company") Then
  loc_111AA88:           (&HFF).Visible = 
  loc_111AA9C:           (&HFF).Visible = 
  loc_111AAB1:            = (var_9C).Height
  loc_111AAC3:            = (var_94).Top
  loc_111AAD8:           Set var_A0 = (((var_94 + var_9C) + CDbl(&H14)))
  loc_111AADE:           var_A0.Top = 
  loc_111AAEF:         Else
  loc_111AAF7:           If (var_90 = "Room") Then
  loc_111AB06:             (&HFF).Visible = 
  loc_111AB1A:             (0).Visible = 
  loc_111AB25:           Else
  loc_111AB2D:             If (var_90 = "UPI") Then
  loc_111AB3C:               Me.FrTxnNo.Visible = True
  loc_111AB50:               (&HFF).Visible = 
  loc_111AB65:               var_9C = Me.FrTxnNo.Height
  loc_111AB77:               var_94 = Me.FrTxnNo.Top
  loc_111AB8C:               Set var_A0 = (((var_94 + var_9C) + CDbl(&H14)))
  loc_111AB92:               var_A0.Top = 
  loc_111ABA3:             Else
  loc_111ABAF:               (&HFF).Visible = 
  loc_111ABC4:                = (var_9C).Height
  loc_111ABD6:                = (var_94).Top
  loc_111ABEB:               Set var_A0 = (((var_94 + var_9C) + CDbl(&H14)))
  loc_111ABF1:               var_A0.Top = 
  loc_111ABFF:             End If
  loc_111ABFF:           End If
  loc_111ABFF:         End If
  loc_111ABFF:       End If
  loc_111ABFF:     End If
  loc_111ABFF:   End If
  loc_111ABFF: End If
  loc_111ABFF: Exit Sub
End Sub

Public Sub Proc_125_78_14C981C
  'Data Table: 5502B8
  Dim var_90 As Variant
  Dim var_86 As Integer
  Dim var_B4 As Long
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_AC As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Long
  Dim Me As Variant
  Dim var_8C As Fields15
  Dim var_118 As Variant
  loc_14C8A9C: On Error Goto loc_14C97DF
  loc_14C8AAD: Set var_8C = Me.Txt
  loc_14C8AB3: Call 0.Method_Proc_125_78_14C981C0 (CInt(8), var_90)
  loc_14C8AD7: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_14C8AE8:   Set var_8C = Me.Txt
  loc_14C8AEE:   Call 0.Method_Proc_125_78_14C981C0 (CInt(8), var_90)
  loc_14C8AF6:   var_90.Text = vbNullString
  loc_14C8B02: End If
  loc_14C8B10: Set var_8C = Me.Txt
  loc_14C8B16: Call 0.Method_Proc_125_78_14C981C0 (CInt(8), var_90)
  loc_14C8B30: If (var_90.Visible = &HFF) Then
  loc_14C8B3E:   Set var_8C = Me.Txt
  loc_14C8B44:   Call 0.Method_Proc_125_78_14C981C0 (CInt(8))
  loc_14C8B4C:   var_94 = "Amount"
  loc_14C8B6D:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14C8B70:     Exit Sub
  loc_14C8B71:   End If
  loc_14C8B71: End If
  loc_14C8B8A: Set var_8C = Me.Txt
  loc_14C8B90: Call 0.Method_Proc_125_78_14C981C0 (CInt(&H11), var_90, var_94)
  loc_14C8B98: (global_156 = "Staff") = var_90.Text
  loc_14C8BB0: If (var_90 And (var_94 = vbNullString)) Then
  loc_14C8BBE:   Set var_8C = Me.Txt
  loc_14C8BC4:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&H11))
  loc_14C8BCC:   var_94 = "Staff Name"
  loc_14C8BED:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14C8BF0:     Exit Sub
  loc_14C8BF1:   End If
  loc_14C8BF1: End If
  loc_14C8C0A: Set var_8C = Me.Txt
  loc_14C8C10: Call 0.Method_Proc_125_78_14C981C0 (CInt(&H12), var_90, var_94)
  loc_14C8C18: (global_156 = "Room") = var_90.Text
  loc_14C8C30: If (var_90 And (var_94 = vbNullString)) Then
  loc_14C8C3E:   Set var_8C = Me.Txt
  loc_14C8C44:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&H12))
  loc_14C8C4C:   var_94 = "Room Name"
  loc_14C8C6D:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14C8C70:     Exit Sub
  loc_14C8C71:   End If
  loc_14C8C71: End If
  loc_14C8C8A: Set var_8C = Me.Txt
  loc_14C8C90: Call 0.Method_Proc_125_78_14C981C0 (CInt(&H10), var_90, var_94)
  loc_14C8C98: (global_156 = "Company") = var_90.Text
  loc_14C8CB0: If (var_90 And (var_94 = vbNullString)) Then
  loc_14C8CBE:   Set var_8C = Me.Txt
  loc_14C8CC4:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&H10))
  loc_14C8CCC:   var_94 = "Company Name"
  loc_14C8CED:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14C8CF0:     Exit Sub
  loc_14C8CF1:   End If
  loc_14C8CF1: End If
  loc_14C8CFC: If (global_172 = "Y") Then
  loc_14C8D18:   Set var_8C = Me.Txt
  loc_14C8D1E:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&HA), var_90, var_94)
  loc_14C8D26:   (global_156 = "Credit Card") = var_90.Text
  loc_14C8D3E:   If (var_90 And (var_94 = vbNullString)) Then
  loc_14C8D4C:     Set var_8C = Me.Txt
  loc_14C8D52:     Call 0.Method_Proc_125_78_14C981C0 (CInt(&HA))
  loc_14C8D5A:     var_94 = "Credit Card No."
  loc_14C8D7B:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14C8D7E:       Exit Sub
  loc_14C8D7F:     End If
  loc_14C8D7F:   End If
  loc_14C8D98:   Set var_8C = Me.Txt
  loc_14C8D9E:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&HB), var_90, var_94)
  loc_14C8DA6:   (global_156 = "Credit Card") = var_90.Text
  loc_14C8DBE:   If (var_90 And (var_94 = vbNullString)) Then
  loc_14C8DCC:     Set var_8C = Me.Txt
  loc_14C8DD2:     Call 0.Method_Proc_125_78_14C981C0 (CInt(&HB))
  loc_14C8DDA:     var_94 = "Holder's Name"
  loc_14C8DFB:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14C8DFE:       Exit Sub
  loc_14C8DFF:     End If
  loc_14C8DFF:   End If
  loc_14C8DFF: End If
  loc_14C8E18: Set var_8C = Me.Txt
  loc_14C8E1E: Call 0.Method_Proc_125_78_14C981C0 (CInt(&H13), var_90, var_94)
  loc_14C8E26: (global_156 = "UPI") = var_90.Text
  loc_14C8E3E: If (var_90 And (var_94 = vbNullString)) Then
  loc_14C8E4C:   Set var_8C = Me.Txt
  loc_14C8E52:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&H13))
  loc_14C8E5A:   var_94 = "Txn. No."
  loc_14C8E7B:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14C8E7E:     Exit Sub
  loc_14C8E7F:   End If
  loc_14C8E7F: End If
  loc_14C8E98: Set var_8C = Me.Txt
  loc_14C8E9E: Call 0.Method_Proc_125_78_14C981C0 (CInt(&HE), var_90, var_94)
  loc_14C8EA6: (global_156 = "Cheque") = var_90.Text
  loc_14C8EBE: If (var_90 And (var_94 = vbNullString)) Then
  loc_14C8ECC:   Set var_8C = Me.Txt
  loc_14C8ED2:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&HE))
  loc_14C8EDA:   var_94 = "Cheque No."
  loc_14C8EFB:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14C8EFE:     Exit Sub
  loc_14C8EFF:   End If
  loc_14C8EFF: End If
  loc_14C8F18: Set var_8C = Me.Txt
  loc_14C8F1E: Call 0.Method_Proc_125_78_14C981C0 (CInt(&HF), var_90, var_94)
  loc_14C8F26: (global_156 = "Cheque") = var_90.Text
  loc_14C8F3E: If (var_90 And (var_94 = vbNullString)) Then
  loc_14C8F4C:   Set var_8C = Me.Txt
  loc_14C8F52:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&HF))
  loc_14C8F5A:   var_94 = "Cheque Dt."
  loc_14C8F7B:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14C8F7E:     Exit Sub
  loc_14C8F7F:   End If
  loc_14C8F7F: End If
  loc_14C8F83: Set var_8C = (var_90)
  loc_14C8F93: var_86 = CInt(CLng(Txt.DispID_A))
  loc_14C8FA7: var_B4 = OpenType
  loc_14C8FB3: If (var_B4 = 6) Then
  loc_14C8FBA:   Set var_B8 = var_86(var_B4)
  loc_14C8FC1:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_14C8FC6:   var_E8 = 1
  loc_14C8FDD:   Set var_8C = Me.Txt
  loc_14C8FE3:   Call 0.Method_Proc_125_78_14C981C0 (CInt(7), var_90, var_94)
  loc_14C8FEB:   var_E8 = var_90.Tag
  loc_14C8FF3:   var_AC = CVar(var_94) 'String
  loc_14C8FFA:   LateIdCallSt
  loc_14C9010:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_14C9015:   var_E8 = 2
  loc_14C902B:   LateIdCallSt
  loc_14C9053:   Set var_8C = Me.Txt
  loc_14C9059:   Call 0.Method_Proc_125_78_14C981C0 (CInt(7), var_90, var_94, 3, CVar(CLng(var_86)), var_B8)
  loc_14C9069:   var_AC = CVar(var_94) 'String
  loc_14C9070:   LateIdCallSt
  loc_14C9086:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_14C908B:   var_E8 = 4
  loc_14C90A1:   LateIdCallSt
  loc_14C90AD:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_14C90B2:   var_E8 = 5
  loc_14C90C8:   LateIdCallSt
  loc_14C90EF:   Set var_8C = Me.Txt
  loc_14C90F5:   Call 0.Method_Proc_125_78_14C981C0 (CInt(6), var_90, var_94, CVar(CLng(6)), CVar(CLng(var_86)), var_B8, global_152)
  loc_14C90FD:   var_E8 = var_90.Tag
  loc_14C910C:   LateIdCallSt
  loc_14C913D:   Set var_8C = Me.Txt
  loc_14C9143:   Call 0.Method_Proc_125_78_14C981C0 (CInt(6), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_B8, CVar(var_94))
  loc_14C914B:   var_C8 = var_90.Text
  loc_14C9153:   var_AC = CVar(var_94) 'String
  loc_14C915A:   LateIdCallSt
  loc_14C918C:   Set var_8C = Me.Txt
  loc_14C9192:   Call 0.Method_Proc_125_78_14C981C0 (CInt(8), var_90, var_94, 8, CVar(CLng(var_86)), var_B8)
  loc_14C919A:   var_AC = var_90.Text
  loc_14C91A2:   var_AC = CVar(var_94) 'String
  loc_14C91A9:   LateIdCallSt
  loc_14C91DA:   Set var_8C = Me.Txt
  loc_14C91E0:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&HA), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_B8)
  loc_14C91E8:   var_AC = var_90.Text
  loc_14C91F0:   var_AC = CVar(var_94) 'String
  loc_14C91F7:   LateIdCallSt
  loc_14C9228:   Set var_8C = Me.Txt
  loc_14C922E:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&HB), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_B8)
  loc_14C9236:   var_AC = var_90.Text
  loc_14C923E:   var_AC = CVar(var_94) 'String
  loc_14C9245:   LateIdCallSt
  loc_14C9276:   Set var_8C = Me.Txt
  loc_14C927C:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&HC), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_B8)
  loc_14C9284:   var_AC = var_90.Text
  loc_14C928C:   var_AC = CVar(var_94) 'String
  loc_14C9293:   LateIdCallSt
  loc_14C92C4:   Set var_8C = Me.Txt
  loc_14C92CA:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&HD), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_B8)
  loc_14C92D2:   var_AC = var_90.Text
  loc_14C92DA:   var_AC = CVar(var_94) 'String
  loc_14C92E1:   LateIdCallSt
  loc_14C9313:   Set var_8C = Me.Txt
  loc_14C9319:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&H13), var_90, var_94, &H19, CVar(CLng(var_86)), var_B8)
  loc_14C9321:   var_AC = var_90.Text
  loc_14C9329:   var_AC = CVar(var_94) 'String
  loc_14C9330:   LateIdCallSt
  loc_14C9361:   Set var_8C = Me.Txt
  loc_14C9367:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&HE), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_B8)
  loc_14C936F:   var_AC = var_90.Text
  loc_14C9377:   var_AC = CVar(var_94) 'String
  loc_14C937E:   LateIdCallSt
  loc_14C93AF:   Set var_8C = Me.Txt
  loc_14C93B5:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&HF), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_B8)
  loc_14C93BD:   var_AC = var_90.Text
  loc_14C93C5:   var_AC = CVar(var_94) 'String
  loc_14C93CC:   LateIdCallSt
  loc_14C93FD:   Set var_8C = Me.Txt
  loc_14C9403:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&H14), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_B8)
  loc_14C940B:   var_AC = var_90.Text
  loc_14C9413:   var_AC = CVar(var_94) 'String
  loc_14C941A:   LateIdCallSt
  loc_14C944B:   Set var_8C = Me.Txt
  loc_14C9451:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&H11), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_B8)
  loc_14C9459:   var_AC = var_90.Text
  loc_14C9461:   var_AC = CVar(var_94) 'String
  loc_14C9468:   LateIdCallSt
  loc_14C9499:   Set var_8C = Me.Txt
  loc_14C949F:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&H11), var_90, var_94, CVar(CLng(&H11)), CVar(CLng(var_86)), var_B8)
  loc_14C94A7:   var_AC = var_90.Tag
  loc_14C94AF:   var_AC = CVar(var_94) 'String
  loc_14C94B6:   LateIdCallSt
  loc_14C94E8:   Set var_8C = Me.Txt
  loc_14C94EE:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&H12), var_90, var_94, &H14, CVar(CLng(var_86)), var_B8)
  loc_14C94F6:   var_AC = var_90.Tag
  loc_14C94FE:   var_AC = CVar(var_94) 'String
  loc_14C9505:   LateIdCallSt
  loc_14C9537:   Set var_8C = Me.Txt
  loc_14C953D:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&H12), var_90, var_94, &H15, CVar(CLng(var_86)), var_B8)
  loc_14C9545:   var_AC = var_90.Text
  loc_14C954D:   var_AC = CVar(var_94) 'String
  loc_14C9554:   LateIdCallSt
  loc_14C9586:   Set var_8C = Me.Txt
  loc_14C958C:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&H10), var_90, var_94, &H16, CVar(CLng(var_86)), var_B8)
  loc_14C9594:   var_AC = var_90.Tag
  loc_14C959C:   var_AC = CVar(var_94) 'String
  loc_14C95A3:   LateIdCallSt
  loc_14C95D5:   Set var_8C = Me.Txt
  loc_14C95DB:   Call 0.Method_Proc_125_78_14C981C0 (CInt(&H10), var_90, var_94, &H17, CVar(CLng(var_86)), var_B8)
  loc_14C95E3:   var_AC = var_90.Text
  loc_14C95EB:   var_AC = CVar(var_94) 'String
  loc_14C95F2:   LateIdCallSt
  loc_14C9624:   Set var_8C = Me.Txt
  loc_14C962A:   Call 0.Method_Proc_125_78_14C981C0 (CInt(6), var_90, var_94, &H14, CVar(CLng(var_86)), var_B8)
  loc_14C9632:   var_AC = var_90.Tag
  loc_14C963A:   var_AC = CVar(var_94) 'String
  loc_14C9641:   LateIdCallSt
  loc_14C9673:   Set var_8C = Me.Txt
  loc_14C9679:   Call 0.Method_Proc_125_78_14C981C0 (CInt(9), var_90, var_94, &H12, CVar(CLng(var_86)), var_B8)
  loc_14C9681:   var_AC = var_90.Tag
  loc_14C9689:   var_AC = CVar(var_94) 'String
  loc_14C9690:   LateIdCallSt
  loc_14C96C2:   Set var_8C = Me.Txt
  loc_14C96C8:   Call 0.Method_Proc_125_78_14C981C0 (CInt(9), var_90, var_94, &H13, CVar(CLng(var_86)), var_B8)
  loc_14C96D0:   var_AC = var_90.Text
  loc_14C96D8:   var_AC = CVar(var_94) 'String
  loc_14C96DF:   LateIdCallSt
  loc_14C96FA:   var_E8 = &H18
  loc_14C9711:   Set var_8C = Me.Txt
  loc_14C9717:   Call 0.Method_Proc_125_78_14C981C0 (CInt(4), var_90, var_94, var_E8, CVar(CLng(var_86)), var_B8)
  loc_14C971F:   var_AC = var_90.Text
  loc_14C9727:   var_AC = CVar(var_94) 'String
  loc_14C972E:   LateIdCallSt
  loc_14C974B:   If (var_90.Text = "Room") Then
  loc_14C9752:     var_D8 = CVar(CLng(var_86)) 'Long
  loc_14C9757:     var_F8 = &H18
  loc_14C977D:     var_90 = Me.Fields.Item("FolioNo")
  loc_14C978E:     var_118 = CVar(CStr(var_90.Value)) 'String
  loc_14C9795:     LateIdCallSt
  loc_14C97AB:   End If
  loc_14C97AD:   Set var_B8 = Nothing 
  loc_14C97B1: End If
  loc_14C97BC: Set var_8C = Me.Txt
  loc_14C97C2: Call 0.Method_Proc_125_78_14C981C0 (CInt(7), var_90, var_B8, var_118, var_F8, var_D8, var_B8)
  loc_14C97CA: var_90.SetFocus
  loc_14C97DB: global_168 = 0
  loc_14C97DE: Exit Sub
  loc_14C97DF: ' Referenced from: 14C8A9C
  loc_14C97F5: Set var_8C = Err()
  loc_14C97FB: Call 0.Method_arg_2C (var_94, 0, var_118, var_138, var_148, global_168)
  loc_14C9806: MsgBox(CVar(var_94), CVar(var_94), var_B8, global_148, var_E8)
  loc_14C9819: Exit Sub
End Sub

Public Sub Proc_125_79_FDCC64
  'Data Table: 5502B8
  Dim var_8C As TextBox
  loc_FDCA8E: Set var_88 = Me.Txt
  loc_FDCA94: Call 0.Method_Proc_125_79_FDCC640 (CInt(7), var_8C)
  loc_FDCA9C: var_8C.Text = vbNullString
  loc_FDCAB6: Set var_88 = Me.Txt
  loc_FDCABC: Call 0.Method_Proc_125_79_FDCC640 (CInt(8), var_8C)
  loc_FDCAC4: var_8C.Text = vbNullString
  loc_FDCADE: Set var_88 = Me.Txt
  loc_FDCAE4: Call 0.Method_Proc_125_79_FDCC640 (CInt(9), var_8C)
  loc_FDCAEC: var_8C.Text = vbNullString
  loc_FDCB06: Set var_88 = Me.Txt
  loc_FDCB0C: Call 0.Method_Proc_125_79_FDCC640 (CInt(&H11), var_8C)
  loc_FDCB14: var_8C.Text = vbNullString
  loc_FDCB2E: Set var_88 = Me.Txt
  loc_FDCB34: Call 0.Method_Proc_125_79_FDCC640 (CInt(&H14), var_8C)
  loc_FDCB3C: var_8C.Text = vbNullString
  loc_FDCB56: Set var_88 = Me.Txt
  loc_FDCB5C: Call 0.Method_Proc_125_79_FDCC640 (CInt(&HA), var_8C)
  loc_FDCB64: var_8C.Text = vbNullString
  loc_FDCB7E: Set var_88 = Me.Txt
  loc_FDCB84: Call 0.Method_Proc_125_79_FDCC640 (CInt(&HB), var_8C)
  loc_FDCB8C: var_8C.Text = vbNullString
  loc_FDCBA6: Set var_88 = Me.Txt
  loc_FDCBAC: Call 0.Method_Proc_125_79_FDCC640 (CInt(&HC), var_8C)
  loc_FDCBB4: var_8C.Text = vbNullString
  loc_FDCBCE: Set var_88 = Me.Txt
  loc_FDCBD4: Call 0.Method_Proc_125_79_FDCC640 (CInt(&HD), var_8C)
  loc_FDCBDC: var_8C.Text = vbNullString
  loc_FDCBF6: Set var_88 = Me.Txt
  loc_FDCBFC: Call 0.Method_Proc_125_79_FDCC640 (CInt(&H13), var_8C)
  loc_FDCC04: var_8C.Text = vbNullString
  loc_FDCC1E: Set var_88 = Me.Txt
  loc_FDCC24: Call 0.Method_Proc_125_79_FDCC640 (CInt(&HE), var_8C)
  loc_FDCC2C: var_8C.Text = vbNullString
  loc_FDCC46: Set var_88 = Me.Txt
  loc_FDCC4C: Call 0.Method_Proc_125_79_FDCC640 (CInt(&HF), var_8C)
  loc_FDCC54: var_8C.Text = vbNullString
  loc_FDCC60: Exit Sub
End Sub

Public Sub Proc_125_80_13D1B5C
  'Data Table: 5502B8
  Dim var_A8 As Variant
  Dim var_F8 As TextBox
  Dim var_200 As TextBox
  loc_13D11C4: Set var_88 = ()
  loc_13D11E5: Set var_DC = CVar(CLng(Txt.DispID_A))(1)
  loc_13D120F: If (CStr(Txt.DispID_41) <> vbNullString) Then
  loc_13D1216:   Set var_F4 = ()
  loc_13D121D:   Set var_88 = ()
  loc_13D1256:   Set var_DC = Me.Txt
  loc_13D125C:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(7), var_F8, CStr(Txt.DispID_41))
  loc_13D1264:   var_F8.Tag = 1
  loc_13D1280:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D12B1:   global_156 = CStr(Txt.DispID_41)
  loc_13D12C6:   Set var_88 = CVar(CLng(Txt.DispID_A))(2)
  loc_13D12FF:   Set var_DC = Me.Txt
  loc_13D1305:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(7), var_F8, CStr(Txt.DispID_41))
  loc_13D130D:   var_F8.Text = 3
  loc_13D1329:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D135A:   global_148 = CStr(Txt.DispID_41)
  loc_13D136F:   Set var_88 = CVar(CLng(Txt.DispID_A))(4)
  loc_13D13A0:   global_152 = CStr(Txt.DispID_41)
  loc_13D13B5:   Set var_88 = CVar(CLng(Txt.DispID_A))(5)
  loc_13D13ED:   Set var_DC = Me.Txt
  loc_13D13F3:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(6), var_F8, CStr(Txt.DispID_41))
  loc_13D13FB:   var_F8.Tag = CVar(CLng(6))
  loc_13D1417:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D1446:   Set var_DC = CVar(CLng(7))(Txt.DispID_41)
  loc_13D1475:   Set var_F8 = CVar(CLng(6))(Txt.DispID_41)
  loc_13D14D3:   Set var_1FC = Me.Txt
  loc_13D14D9:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(6), var_200, CStr(IIf((CStr(var_EC) = vbNullString), CVar(CStr(var_158)), CVar(CStr(Txt.DispID_41)))), CVar(CLng(7)))
  loc_13D14E1:   var_200.Text = CVar(CLng(Txt.DispID_A))
  loc_13D1515:   Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(Txt.DispID_A)))
  loc_13D1546:   Proc_6_39_E7C810(var_158, CVar(CStr(Txt.DispID_41)))
  loc_13D155D:   Set var_DC = Me.Txt
  loc_13D1563:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(4), var_F8, CStr(var_158))
  loc_13D156B:   var_F8.Text = &H18
  loc_13D158B:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D15C4:   Set var_DC = Me.Txt
  loc_13D15CA:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(8), var_F8, CStr(Txt.DispID_41))
  loc_13D15D2:   var_F8.Text = 8
  loc_13D15EE:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D1626:   Set var_DC = Me.Txt
  loc_13D162C:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(&HA), var_F8, CStr(Txt.DispID_41))
  loc_13D1634:   var_F8.Text = CVar(CLng(9))
  loc_13D1650:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D1688:   Set var_DC = Me.Txt
  loc_13D168E:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(&HB), var_F8, CStr(Txt.DispID_41))
  loc_13D1696:   var_F8.Text = CVar(CLng(&HA))
  loc_13D16B2:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D16EA:   Set var_DC = Me.Txt
  loc_13D16F0:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(&HC), var_F8, CStr(Txt.DispID_41))
  loc_13D16F8:   var_F8.Text = CVar(CLng(&HB))
  loc_13D1714:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D174C:   Set var_DC = Me.Txt
  loc_13D1752:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(&HD), var_F8, CStr(Txt.DispID_41))
  loc_13D175A:   var_F8.Text = CVar(CLng(&HC))
  loc_13D1776:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D17AF:   Set var_DC = Me.Txt
  loc_13D17B5:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(&H13), var_F8, CStr(Txt.DispID_41))
  loc_13D17BD:   var_F8.Text = &H19
  loc_13D17D9:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D1811:   Set var_DC = Me.Txt
  loc_13D1817:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(&HE), var_F8, CStr(Txt.DispID_41))
  loc_13D181F:   var_F8.Text = CVar(CLng(&HD))
  loc_13D183B:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D1873:   Set var_DC = Me.Txt
  loc_13D1879:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(&HF), var_F8, CStr(Txt.DispID_41))
  loc_13D1881:   var_F8.Text = CVar(CLng(&HE))
  loc_13D189D:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D18D5:   Set var_DC = Me.Txt
  loc_13D18DB:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(&H14), var_F8, CStr(Txt.DispID_41))
  loc_13D18E3:   var_F8.Text = CVar(CLng(&HF))
  loc_13D18FF:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D1937:   Set var_DC = Me.Txt
  loc_13D193D:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(&H11), var_F8, CStr(Txt.DispID_41))
  loc_13D1945:   var_F8.Text = CVar(CLng(&H10))
  loc_13D1961:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D1999:   Set var_DC = Me.Txt
  loc_13D199F:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(&H11), var_F8, CStr(Txt.DispID_41))
  loc_13D19A7:   var_F8.Tag = CVar(CLng(&H11))
  loc_13D19C3:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D19FC:   Set var_DC = Me.Txt
  loc_13D1A02:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(&H10), var_F8, CStr(Txt.DispID_41))
  loc_13D1A0A:   var_F8.Tag = &H16
  loc_13D1A26:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D1A5F:   Set var_DC = Me.Txt
  loc_13D1A65:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(&H10), var_F8, CStr(Txt.DispID_41))
  loc_13D1A6D:   var_F8.Text = &H17
  loc_13D1A89:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D1AC2:   Set var_DC = Me.Txt
  loc_13D1AC8:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(9), var_F8, CStr(Txt.DispID_41))
  loc_13D1AD0:   var_F8.Text = &H13
  loc_13D1AEC:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_13D1AFB:   var_A8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_13D1B25:   Set var_DC = Me.Txt
  loc_13D1B2B:   Call 0.Method_Proc_125_80_13D1B5C0 (CInt(9), var_F8, CStr(Txt.DispID_41))
  loc_13D1B33:   var_F8.Tag = &H12
  loc_13D1B50:   global_168 = &HFF
  loc_13D1B55:   Set var_F4 = Nothing 
  loc_13D1B59: End If
  loc_13D1B59: Exit Sub
End Sub

Public Sub Proc_125_81_EE44B8
  'Data Table: 5502B8
  loc_EE4406: On Error Goto loc_EE444C
  loc_EE441E: Call 0.Method_arg_18C (var_8C)
  loc_EE4426: Call var_8C.Show
  loc_EE443B: Call 0.Method_arg_188 (var_B0)
  loc_EE4443: var_88 = var_B0
  loc_EE4446: Proc_125_81_EE44B8 = 1
  loc_EE444C: ' Referenced from: EE4406
  loc_EE4454: Set var_8C = Err()
  loc_EE445A: Call 0.Method_arg_1C (var_B4)
  loc_EE446B: If (var_B4 <> 0) Then
  loc_EE4476:   Set var_8C = Err()
  loc_EE447C:   Call 0.Method_arg_2C (var_B0)
  loc_EE449D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE44B0: End If
  loc_EE44B0: Proc_125_81_EE44B8 = 
End Sub

Public Sub Proc_125_82_1BC6A78
  'Data Table: 5502B8
  Dim var_10C As Variant
  Dim var_B8 As String
  Dim var_11C As Variant
  Dim var_130 As String
  Dim var_C8 As Long
  Dim var_12C As Variant
  Dim var_104 As String
  Dim unk_5502D0 As Connection15
  Dim var_108 As Fields15
  Dim var_140 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_29C As String
  Dim var_2A0 As String
  Dim var_2A8 As String
  Dim var_2AC As String
  Dim var_2B0 As String
  Dim var_2A4 As String
  Dim var_298 As String
  Dim var_160 As Variant
  Dim var_CE As Integer
  Dim var_2B4 As Fields15
  Dim var_2B8 As Field20
  Dim var_2BC As Fields15
  Dim var_150 As Variant
  Dim var_DC As Recordset15
  Dim var_E0 As Recordset15
  Dim var_2CC As Double
  Dim var_2D4 As Double
  Dim var_2E8 As Fields15
  Dim var_254 As Variant
  Dim var_F0 As Double
  Dim var_100 As Double
  Dim var_F8 As Double
  Dim var_E4 As Recordset15
  Dim var_8C As Recordset15
  Dim var_274 As Variant
  loc_1BC145A: If (HallAdvanceDepDialog.AdvType = "AD") Then
  loc_1BC1463:   var_C2 = "AD"
  loc_1BC1474:   Set var_108 = Me.Txt
  loc_1BC147A:   Call 0.Method_Proc_125_82_1BC6A780 (CInt(0), var_10C)
  loc_1BC1482:   var_104 = var_10C.Text
  loc_1BC14CA:   var_C8 = CLng(Val(CStr(Right(var_104, 8))))
  loc_1BC14FE:   var_B8 = var_104
  loc_1BC1516:   global_104 = CStr(Trim(Mid(var_104, 9, 5)))
  loc_1BC152D: Else
  loc_1BC1533:   var_104 = HallAdvanceDepDialog.AdvType
  loc_1BC1543:   If (var_104 = "AR") Then
  loc_1BC154C:     var_C2 = "AR"
  loc_1BC155D:     Set var_108 = Me.Txt
  loc_1BC1563:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(0), var_10C, var_104)
  loc_1BC156B:     var_C8 = var_10C.Text
  loc_1BC15B3:     var_C8 = CLng(Val(CStr(Right(var_104, 8))))
  loc_1BC15C0:     var_12C = 5
  loc_1BC15E7:     var_B8 = var_104
  loc_1BC15FF:     global_104 = CStr(Trim(Mid(var_104, 9, var_12C)))
  loc_1BC1613:   End If
  loc_1BC1613: End If
  loc_1BC1637: unk_5502D0.Execute "Select * from Enviro where LogSite_code='" & MemVar_1F92078 & "'", var_12C, -1
  loc_1BC1642: Set var_CC = var_108
  loc_1BC165B: var_164 = Me.Recordset15.RecordCount
  loc_1BC1669: If (var_164 > 0) Then
  loc_1BC1681:   If (global_52 = MemVar_1F92070 & "BANQ") Then
  loc_1BC1696:     var_108 = Me.Recordset15.Fields
  loc_1BC16AF:     var_E8 = Proc_6_38_E68A98(CVar(var_108.Item("IndoorPartyAC")), var_108, var_C8)
  loc_1BC16BB:   Else
  loc_1BC16D5:     var_10C = Me.Recordset15.Fields.Item("OutDoorPartyAC")
  loc_1BC16E6:     var_E8 = Proc_6_38_E68A98(CVar(var_10C), var_B8)
  loc_1BC16EF:   End If
  loc_1BC16EF: End If
  loc_1BC170D: If (Trim(var_E8) = vbNullString) Then
  loc_1BC1715:   var_150 = "Outdoor"
  loc_1BC175A:   var_194 = ("Please Fill " + IIf((global_52 = MemVar_1F92070 & "BANQ"), "Indoor", var_150))
  loc_1BC1763:   var_1B4 = (var_194 + " Party A/C in Parameter Setting")
  loc_1BC178B:   MsgBox(var_1B4 & vbCrLf & "Or" & vbCrLf & "Contact to Your Administrator", &H40, var_254, var_274, var_294)
  loc_1BC17B5:   Proc_125_82_1BC6A78 = &HFF
  loc_1BC17BB: End If
  loc_1BC17C4: unk_5502D0.BeginTrans var_164
  loc_1BC17CD: var_88 = CByte(1) 'Byte
  loc_1BC1803: Set var_108 = Me.Txt
  loc_1BC1809: Call 0.Method_Proc_125_82_1BC6A780 (CInt(0), var_10C, var_298, "UPDATE PaychargeH SET PostDocId='" & var_B8 & "' WHERE DocID='")
  loc_1BC181A: var_2A0 = -1 & var_298
  loc_1BC1843: unk_5502D0.Execute var_2A0 & "' AND VType='" & HallAdvanceDepDialog.AdvType & "'", var_2B4, var_B8
  loc_1BC187F: var_104 = var_B8
  loc_1BC18AC: unk_5502D0.Execute "Delete from Ledger where Docid='" & var_104 & "' AND V_Type='" & HallAdvanceDepDialog.AdvType & "'", var_10C.Text, -1
  loc_1BC18EA: Call 0.Method_Proc_125_82_1BC6A780 (CInt(0), var_10C, var_104, "select (AmtCr - AmtDr) as CreditAmt,PayCode,Accode,revmast.name as RevenueName,PaychargeH.Comments from PaychargeH Left Join RevMast on Revmast.Code=PaychargeH.PayCode where PayChargeH.Docid='")
  loc_1BC18F2: var_214 = var_10C.Text
  loc_1BC18FB: var_130 = -1 & var_104
  loc_1BC1910: var_160 = CVar("Delete from Ledger where Docid='" & var_104 & "' And PaychargeH.SITE_CODE='" & MemVar_1F92070 & "' AND Vdate = ") 'String
  loc_1BC191E: Set var_2B4 = Me.Txt
  loc_1BC1924: Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_2B8, var_160)
  loc_1BC1933: Proc_6_7_F25D88(var_150, CVar(var_2B8))
  loc_1BC195A: var_1F4 = var_2BC & var_150 & " and PaychargeH.PayType='Cash' AND RestCode='" & CVar(global_52) & "' And IsNull(revmast.PayableAc,'')=''" 
  loc_1BC1968: unk_5502D0.Execute CStr(var_1F4), Me.Txt, 
  loc_1BC1973: Set var_8C = var_2BC
  loc_1BC19A1: ' Referenced from: 1BC1F72
  loc_1BC19B3: If Not(Me.Recordset15.EOF) Then
  loc_1BC19E1:   var_D4 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Comments")))
  loc_1BC1A07:   var_10C = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC1A29:   If (var_10C.Value > 0) Then
  loc_1BC1A32:     var_CE = (var_CE + 1)
  loc_1BC1A43:     Set var_108 = Me.Txt
  loc_1BC1A49:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C)
  loc_1BC1A51:     var_298 = var_10C.Text
  loc_1BC1AA5:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC1AAD:     var_160 = Now
  loc_1BC1AB7:     var_2AC = 0
  loc_1BC1AC2:     var_2A8 = 0
  loc_1BC1ACD:     var_2A4 = 0
  loc_1BC1AD6:     var_2A0 = "A"
  loc_1BC1B38:     Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC1B80:     var_CE = (var_CE + 1)
  loc_1BC1B91:     Set var_108 = Me.Txt
  loc_1BC1B97:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_CE, var_E8, CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC1B9F:     CDbl(0) = var_10C.Text
  loc_1BC1BC9:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC1BFB:     var_160 = Now
  loc_1BC1C05:     var_2AC = 0
  loc_1BC1C10:     var_2A8 = 0
  loc_1BC1C1B:     var_2A4 = 0
  loc_1BC1C24:     var_2A0 = "A"
  loc_1BC1C3F:     var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC1C86:     Proc_6_141_12E1E18(MemVar_1F92044, var_104, var_CE, "Delete from Ledger where Docid='" & var_104, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC1C91:     var_B8 = var_104
  loc_1BC1C9A:     var_C2 = "Delete from Ledger where Docid='" & var_104
  loc_1BC1CCB:   Else
  loc_1BC1CD1:     var_CE = (var_CE + 1)
  loc_1BC1CE2:     Set var_108 = Me.Txt
  loc_1BC1CE8:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_CE, CStr(var_194), CDbl(0))
  loc_1BC1CF0:     CSng(var_150) = var_10C.Text
  loc_1BC1D4C:     var_160 = Now
  loc_1BC1D56:     var_2AC = 0
  loc_1BC1D61:     var_2A8 = 0
  loc_1BC1D6C:     var_2A4 = 0
  loc_1BC1D75:     var_2A0 = "A"
  loc_1BC1DD7:     Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC1E1F:     var_CE = (var_CE + 1)
  loc_1BC1E30:     Set var_108 = Me.Txt
  loc_1BC1E36:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC1E3E:     CDbl(0) = var_10C.Text
  loc_1BC1E60:     var_2B8 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC1E82:     var_2BC = Me.Recordset15.Fields
  loc_1BC1E92:     var_194 = var_2BC.Item("AcCode").Value
  loc_1BC1E9A:     var_160 = Now
  loc_1BC1EA4:     var_2AC = 0
  loc_1BC1EAF:     var_2A8 = 0
  loc_1BC1EBA:     var_2A4 = 0
  loc_1BC1EC3:     var_2A0 = "A"
  loc_1BC1EE3:     var_150 = Abs(var_2B8.Value)
  loc_1BC1F25:     Proc_6_141_12E1E18(MemVar_1F92044, var_104, var_CE, "Delete from Ledger where Docid='" & var_104, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC1F30:     var_B8 = var_104
  loc_1BC1F39:     var_C2 = "Delete from Ledger where Docid='" & var_104
  loc_1BC1F67:   End If
  loc_1BC1F6D:   Me.Recordset15.MoveNext
  loc_1BC1F72:   GoTo loc_1BC19A1
  loc_1BC1F75: End If
  loc_1BC1F93: Set var_108 = Me.Txt
  loc_1BC1F99: Call 0.Method_Proc_125_82_1BC6A780 (CInt(0), var_10C, var_104, "select sum(AmtDr-AmtCr) as CreditAmt,RestCode,PayCode,max(Accode) as ACCode,max(revmast.name) as RevenueNAme from PaychargeH Left Join RevMast on Revmast.Code=PaychargeH.PayCode where PayChargeH.Docid='", var_214, -1, var_2BC)
  loc_1BC1FA1: var_E8 = var_10C.Text
  loc_1BC1FBF: var_160 = CVar(CDbl(0) & var_104 & "' And PaychargeH.SITE_CODE='" & MemVar_1F92070 & "' AND Vdate = ") 'String
  loc_1BC1FCD: Set var_2B4 = Me.Txt
  loc_1BC1FD3: Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_2B8, var_160, CSng(var_150))
  loc_1BC1FE2: Proc_6_7_F25D88(var_150, CVar(var_2B8), CStr(var_194))
  loc_1BC1FEA: var_194 = var_D4 & var_150 
  loc_1BC2009: var_1F4 = var_194 & " and PaychargeH.PayType='Room' and roomtype='RO' AND RestCode='" & CVar(global_52) & "' Group By PayCode,RestCode" 
  loc_1BC2017: unk_5502D0.Execute CStr(var_1F4), MemVar_1F920C8, CDate(var_160)
  loc_1BC2022: Set var_8C = var_2BC
  loc_1BC2050: ' Referenced from: 1BC2D16
  loc_1BC2062: If Not(Me.Recordset15.EOF) Then
  loc_1BC20BB:   unk_5502D0.Execute CStr("Select * from Depart Where Code='" & Me.Recordset15.Fields.Item("RestCode").Value & "'"), var_194, -1
  loc_1BC20C6:   Set var_DC = var_2B4
  loc_1BC20F4:   If (var_DC.RecordCount > 0) Then
  loc_1BC211F:     var_104 = Proc_6_38_E68A98(CVar(var_DC.Fields.Item("ShortName")))
  loc_1BC2126:     var_130 = var_104 & " "
  loc_1BC213B:     var_2B4 = Me.Recordset15.Fields
  loc_1BC2158:     var_D4 = var_2B4 & Proc_6_38_E68A98(CVar(var_2B4.Item("RevenueName")), var_130)
  loc_1BC2175:   Else
  loc_1BC21A3:     var_D4 = CStr(Me.Recordset15.Fields.Item("RevenueName").Value)
  loc_1BC21B0:   End If
  loc_1BC21E2:   If Not(IsNull(CVar(Me.Recordset15.Fields.Item("AcCode")))) Then
  loc_1BC2202:     var_10C = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC2224:     If (var_10C.Value > 0) Then
  loc_1BC222D:       var_CE = (var_CE + 1)
  loc_1BC223E:       Set var_108 = Me.Txt
  loc_1BC2244:       Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C)
  loc_1BC224C:       var_298 = var_10C.Text
  loc_1BC22A8:       var_160 = Now
  loc_1BC22B2:       var_2AC = 0
  loc_1BC22BD:       var_2A8 = 0
  loc_1BC22C8:       var_2A4 = 0
  loc_1BC22D1:       var_2A0 = "A"
  loc_1BC2333:       Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC237B:       var_CE = (var_CE + 1)
  loc_1BC238C:       Set var_108 = Me.Txt
  loc_1BC2392:       Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC239A:       CDbl(0) = var_10C.Text
  loc_1BC23EE:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC23F6:       var_160 = Now
  loc_1BC2400:       var_2AC = 0
  loc_1BC240B:       var_2A8 = 0
  loc_1BC2416:       var_2A4 = 0
  loc_1BC241F:       var_2A0 = "A"
  loc_1BC243F:       var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC2481:       Proc_6_141_12E1E18(MemVar_1F92044, var_104, var_CE, var_130, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC248C:       var_B8 = var_104
  loc_1BC2495:       var_C2 = var_130
  loc_1BC24C6:     Else
  loc_1BC24CC:       var_CE = (var_CE + 1)
  loc_1BC24DD:       Set var_108 = Me.Txt
  loc_1BC24E3:       Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_CE, var_E8, CDbl(0))
  loc_1BC24EB:       CSng(var_150) = var_10C.Text
  loc_1BC253F:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC2547:       var_160 = Now
  loc_1BC2551:       var_2AC = 0
  loc_1BC255C:       var_2A8 = 0
  loc_1BC2567:       var_2A4 = 0
  loc_1BC2570:       var_2A0 = "A"
  loc_1BC2597:       var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC25D2:       Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC25DD:       var_B8 = var_104
  loc_1BC25E6:       var_C2 = var_130
  loc_1BC2614:     End If
  loc_1BC261A:     var_CE = (var_CE + 1)
  loc_1BC262B:     Set var_108 = Me.Txt
  loc_1BC2631:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_CE, var_E8, CSng(var_150))
  loc_1BC2639:     CDbl(0) = var_10C.Text
  loc_1BC2663:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC2695:     var_160 = Now
  loc_1BC269F:     var_2AC = 0
  loc_1BC26AA:     var_2A8 = 0
  loc_1BC26B5:     var_2A4 = 0
  loc_1BC26BE:     var_2A0 = "A"
  loc_1BC26D9:     var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC2720:     Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC272B:     var_B8 = var_104
  loc_1BC2734:     var_C2 = var_130
  loc_1BC2765:   Else
  loc_1BC2782:     var_10C = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC27A4:     If (var_10C.Value > 0) Then
  loc_1BC27C0:       MsgBox(vbNullString, &H10, var_150, var_160, var_194)
  loc_1BC27D6:       var_CE = (var_CE + 1)
  loc_1BC27E7:       Set var_108 = Me.Txt
  loc_1BC27ED:       Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_CE, CStr(var_194), CDbl(0))
  loc_1BC27F5:       CSng(var_150) = var_10C.Text
  loc_1BC2849:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC2851:       var_160 = Now
  loc_1BC285B:       var_2AC = 0
  loc_1BC2866:       var_2A8 = 0
  loc_1BC2871:       var_2A4 = 0
  loc_1BC287A:       var_2A0 = "A"
  loc_1BC28DC:       Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC2924:       var_CE = (var_CE + 1)
  loc_1BC2935:       Set var_108 = Me.Txt
  loc_1BC293B:       Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_CE, var_E8, CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC2943:       CDbl(0) = var_10C.Text
  loc_1BC296D:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC299F:       var_160 = Now
  loc_1BC29A9:       var_2AC = 0
  loc_1BC29B4:       var_2A8 = 0
  loc_1BC29BF:       var_2A4 = 0
  loc_1BC29C8:       var_2A0 = "A"
  loc_1BC29E3:       var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC2A2A:       Proc_6_141_12E1E18(MemVar_1F92044, var_104, var_CE, var_130, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC2A35:       var_B8 = var_104
  loc_1BC2A3E:       var_C2 = var_130
  loc_1BC2A6F:     Else
  loc_1BC2A75:       var_CE = (var_CE + 1)
  loc_1BC2A86:       Set var_108 = Me.Txt
  loc_1BC2A8C:       Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_CE, CStr(var_194), CDbl(0))
  loc_1BC2A94:       CSng(var_150) = var_10C.Text
  loc_1BC2AF0:       var_160 = Now
  loc_1BC2AFA:       var_2AC = 0
  loc_1BC2B05:       var_2A8 = 0
  loc_1BC2B10:       var_2A4 = 0
  loc_1BC2B19:       var_2A0 = "A"
  loc_1BC2B7B:       Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC2BC3:       var_CE = (var_CE + 1)
  loc_1BC2BD4:       Set var_108 = Me.Txt
  loc_1BC2BDA:       Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC2BE2:       CDbl(0) = var_10C.Text
  loc_1BC2C04:       var_2B8 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC2C26:       var_2BC = Me.Recordset15.Fields
  loc_1BC2C36:       var_194 = var_2BC.Item("AcCode").Value
  loc_1BC2C3E:       var_160 = Now
  loc_1BC2C48:       var_2AC = 0
  loc_1BC2C53:       var_2A8 = 0
  loc_1BC2C5E:       var_2A4 = 0
  loc_1BC2C67:       var_2A0 = "A"
  loc_1BC2C87:       var_150 = Abs(var_2B8.Value)
  loc_1BC2CC9:       Proc_6_141_12E1E18(MemVar_1F92044, var_104, var_CE, var_130, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC2CD4:       var_B8 = var_104
  loc_1BC2CDD:       var_C2 = var_130
  loc_1BC2D0B:     End If
  loc_1BC2D0B:   End If
  loc_1BC2D11:   Me.Recordset15.MoveNext
  loc_1BC2D16:   GoTo loc_1BC2050
  loc_1BC2D19: End If
  loc_1BC2D37: Set var_108 = Me.Txt
  loc_1BC2D3D: Call 0.Method_Proc_125_82_1BC6A780 (CInt(0), var_10C, var_104, "select Sum(AmtCr - AmtDr) as CreditAmt,PayCode,max(Comments) as Comments,max(Accode) as ACCode,max(CardNo) as CardNo,max(RestCode) as RestCode,max(PaychargeH.PayType) as Paytype,max(revmast.name) as RevenueName,BatchNo from PaychargeH Left Join RevMast on Revmast.Code=PaychargeH.PayCode  where PayChargeH.Docid='", var_214, -1, var_2BC)
  loc_1BC2D45: var_E8 = var_10C.Text
  loc_1BC2D4E: var_130 = CDbl(0) & var_104
  loc_1BC2D5C: var_29C = var_130 & "' And PaychargeH.SITE_CODE='" & MemVar_1F92070
  loc_1BC2D63: var_160 = CVar(var_29C & "' AND Vdate = ") 'String
  loc_1BC2D71: Set var_2B4 = Me.Txt
  loc_1BC2D77: Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_2B8, var_160, CSng(var_150))
  loc_1BC2D86: Proc_6_7_F25D88(var_150, CVar(var_2B8), CStr(var_194))
  loc_1BC2D97: var_1B4 = var_D4 & var_150 & " and RestCode='" 
  loc_1BC2DAD: var_1F4 = var_1B4 & CVar(global_52) & "' And IsNull(revmast.PayableAc,'')='' and PaychargeH.PayType in ('Credit Card') Group by Paycode,BatchNo" 
  loc_1BC2DBB: unk_5502D0.Execute CStr(var_1F4), MemVar_1F920C8, CDate(var_160)
  loc_1BC2DC6: Set var_8C = var_2BC
  loc_1BC2DF4: ' Referenced from: 1BC48F6
  loc_1BC2E06: If Not(Me.Recordset15.EOF) Then
  loc_1BC2E37:   Proc_6_39_E7C810(var_150, CVar(Me.Recordset15.Fields.Item("BatchNo")))
  loc_1BC2E44:   var_D4 = CStr("Batch No. " & var_150)
  loc_1BC2E70:   var_10C = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC2E92:   If (var_10C.Value > 0) Then
  loc_1BC2E9B:     var_CE = (var_CE + 1)
  loc_1BC2EAC:     Set var_108 = Me.Txt
  loc_1BC2EB2:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C)
  loc_1BC2EBA:     var_298 = var_10C.Text
  loc_1BC2F0E:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC2F16:     var_160 = Now
  loc_1BC2F20:     var_2AC = 0
  loc_1BC2F2B:     var_2A8 = 0
  loc_1BC2F36:     var_2A4 = 0
  loc_1BC2F3F:     var_2A0 = "A"
  loc_1BC2FA1:     Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC2FE9:     var_CE = (var_CE + 1)
  loc_1BC2FFA:     Set var_108 = Me.Txt
  loc_1BC3000:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_CE, var_E8, CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC3008:     CDbl(0) = var_10C.Text
  loc_1BC3032:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC3064:     var_160 = Now
  loc_1BC306E:     var_2AC = 0
  loc_1BC3079:     var_2A8 = 0
  loc_1BC3084:     var_2A4 = 0
  loc_1BC308D:     var_2A0 = "A"
  loc_1BC30A8:     var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC30EF:     Proc_6_141_12E1E18(MemVar_1F92044, var_104, var_CE, var_130, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC30FA:     var_B8 = var_104
  loc_1BC3103:     var_C2 = var_130
  loc_1BC3134:   Else
  loc_1BC313A:     var_CE = (var_CE + 1)
  loc_1BC314B:     Set var_108 = Me.Txt
  loc_1BC3151:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_CE, CStr(var_194), CDbl(0))
  loc_1BC3159:     CSng(var_150) = var_10C.Text
  loc_1BC31B5:     var_160 = Now
  loc_1BC31BF:     var_2AC = 0
  loc_1BC31CA:     var_2A8 = 0
  loc_1BC31D5:     var_2A4 = 0
  loc_1BC31DE:     var_2A0 = "A"
  loc_1BC3240:     Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC3288:     var_CE = (var_CE + 1)
  loc_1BC3299:     Set var_108 = Me.Txt
  loc_1BC329F:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC32A7:     CDbl(0) = var_10C.Text
  loc_1BC32C9:     var_2B8 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC32EB:     var_2BC = Me.Recordset15.Fields
  loc_1BC32FB:     var_194 = var_2BC.Item("AcCode").Value
  loc_1BC3303:     var_160 = Now
  loc_1BC330D:     var_2AC = 0
  loc_1BC3318:     var_2A8 = 0
  loc_1BC3323:     var_2A4 = 0
  loc_1BC332C:     var_2A0 = "A"
  loc_1BC334C:     var_150 = Abs(var_2B8.Value)
  loc_1BC338E:     Proc_6_141_12E1E18(MemVar_1F92044, var_104, var_CE, var_130, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC3399:     var_B8 = var_104
  loc_1BC33A2:     var_C2 = var_130
  loc_1BC33D0:   End If
  loc_1BC340F:   If (Me.Recordset15.Fields.Item("PayType").Value = "Credit Card") Then
  loc_1BC3451:     var_150 = "Select Top 1 CommAc as BankCommAc,CommPer as BankCommPer,Taxstru from CreditCardHistory Where Revcode='" & Me.Recordset15.Fields.Item("PayCode").Value 
  loc_1BC3469:     Set var_2B4 = Me.Txt
  loc_1BC346F:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_2B8, var_150 & "' and AppDate<=", var_214, -1, var_2BC, var_E8)
  loc_1BC3477:     var_194 = CVar(var_2B8) 'Address
  loc_1BC347E:     Proc_6_7_F25D88(var_1B4, var_194, CDbl(0), CSng(var_150))
  loc_1BC349D:     unk_5502D0.Execute CStr(CStr(var_194) & var_1B4 & " Order by AppDate Desc"), var_D4, MemVar_1F920C8
  loc_1BC34A8:     Set var_E0 = var_2BC
  loc_1BC34E0:     If (var_E0.RecordCount > 0) Then
  loc_1BC3511:       Proc_6_39_E7C810(var_150, CVar(Me.Recordset15.Fields.Item("BatchNo")))
  loc_1BC351E:       var_D4 = CStr("Batch No. " & var_150)
  loc_1BC354A:       var_10C = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC362A:       var_254 = (Round(CVar(((Val(CStr(var_10C.Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))), 2) > 0) And Not(IsNull(CVar(var_E0.Fields.Item("BankCommAc")))) And (var_E0.Fields.Item("BankCommAc").Value <> vbNullString)
  loc_1BC3659:       If CBool(var_254) Then
  loc_1BC3662:         var_CE = (var_CE + 1)
  loc_1BC3673:         Set var_108 = Me.Txt
  loc_1BC3679:         Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_2A0, var_CE)
  loc_1BC3681:         var_2D4 = var_10C.Text
  loc_1BC372F:         var_160 = CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))) 'Double
  loc_1BC375D:         var_1F4 = var_E0.Fields.Item("BankCommAc").Value
  loc_1BC3765:         var_1B4 = Now
  loc_1BC376F:         var_2FC = 0
  loc_1BC377A:         var_2F8 = 0
  loc_1BC3785:         var_2B0 = 0
  loc_1BC378E:         var_2AC = "A"
  loc_1BC37F1:         Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_2A0))
  loc_1BC384F:         var_CE = (var_CE + 1)
  loc_1BC3860:         Set var_108 = Me.Txt
  loc_1BC3866:         Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_2A0, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(var_160, 2)))
  loc_1BC386E:         CDbl(0) = var_10C.Text
  loc_1BC3895:         var_1D4 = var_E0.Fields.Item("BankCommAc").Value
  loc_1BC3919:         var_160 = CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))) 'Double
  loc_1BC3920:         var_194 = Round(var_160, 2)
  loc_1BC394A:         var_1F4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC3952:         var_1B4 = Now
  loc_1BC395C:         var_2FC = 0
  loc_1BC3967:         var_2F8 = 0
  loc_1BC3972:         var_2B0 = 0
  loc_1BC397B:         var_2AC = "A"
  loc_1BC39DE:         Proc_6_141_12E1E18(MemVar_1F92044, var_298, var_CE, var_29C, var_C8, global_104, MemVar_1F92070, CDate(var_2A0))
  loc_1BC3A81:         var_2B4 = var_E0.Fields
  loc_1BC3A9A:         var_130 = CStr(var_2B4.Item("BankCommPer").Value)
  loc_1BC3ABC:         var_194 = Round(CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(var_130)) / CDbl(&H64))), 3)
  loc_1BC3AC5:         var_F0 = CSng(var_194)
  loc_1BC3AE8:         var_100 = CDbl(0)
  loc_1BC3AFE:         var_140 = "Select AcCode,Rate,TaxStru.Nature from TaxStru INNER JOIN revmast on RevMast.Code=TaxStru.TaxCode Where TaxStru.Code='"
  loc_1BC3B44:         unk_5502D0.Execute CStr(var_140 & var_E0.Fields.Item("TaxStru").Value & "'"), var_194, -1
  loc_1BC3B4F:         Set var_E4 = var_2B4
  loc_1BC3B83:         var_10C = var_E4.Fields.Item("Nature")
  loc_1BC3BA5:         If (var_10C.Value = "On Base Amt") Then
  loc_1BC3BAE:           var_CE = (var_CE + 1)
  loc_1BC3BBF:           Set var_108 = Me.Txt
  loc_1BC3BC5:           Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_29C, var_CE, var_2B4, CDbl(0))
  loc_1BC3C70:           var_1D4 = var_E4.Fields.Item("AcCode").Value
  loc_1BC3C78:           var_194 = Now
  loc_1BC3C82:           var_2F8 = 0
  loc_1BC3C8D:           var_2B0 = 0
  loc_1BC3C98:           var_2AC = 0
  loc_1BC3CA1:           var_2A8 = "A"
  loc_1BC3D04:           Proc_6_141_12E1E18(MemVar_1F92044, var_298, var_CE, var_29C, var_C8, global_104, MemVar_1F92070, CDate(var_29C))
  loc_1BC3D5A:           var_CE = (var_CE + 1)
  loc_1BC3D6B:           Set var_108 = Me.Txt
  loc_1BC3D71:           Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_29C, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F0) / CDbl(&H64))), 2)))
  loc_1BC3D79:           CDbl(0) = var_10C.Text
  loc_1BC3DA0:           var_1B4 = var_E4.Fields.Item("AcCode").Value
  loc_1BC3DF2:           var_160 = Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F0) / CDbl(&H64))), 2)
  loc_1BC3E1C:           var_1D4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC3E24:           var_194 = Now
  loc_1BC3E2E:           var_2F8 = 0
  loc_1BC3E39:           var_2B0 = 0
  loc_1BC3E44:           var_2AC = 0
  loc_1BC3E4D:           var_2A8 = "A"
  loc_1BC3EB0:           Proc_6_141_12E1E18(MemVar_1F92044, var_130, var_CE, var_298, var_C8, global_104, MemVar_1F92070, CDate(var_29C))
  loc_1BC3EBB:           var_B8 = var_130
  loc_1BC3EC4:           var_C2 = var_298
  loc_1BC3F56:           var_F8 = CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F0) / CDbl(&H64))), 3))
  loc_1BC3F9F:           var_2CC = Val(CStr(var_E4.Fields.Item("Rate").Value))
  loc_1BC3FC8:           var_194 = (CVar(var_E4.Fields.Item("Rate").Text) + Round(CVar(((var_2CC * var_F0) / CDbl(&H64))), 3))
  loc_1BC3FCD:           var_100 = CSng(var_194)
  loc_1BC3FE8:         Else
  loc_1BC4002:           var_10C = var_E4.Fields.Item("Nature")
  loc_1BC4024:           If (var_10C.Value = "On Prev. Tax Amt") Then
  loc_1BC402D:             var_CE = (var_CE + 1)
  loc_1BC403E:             Set var_108 = Me.Txt
  loc_1BC4044:             Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_29C, var_CE, var_100, var_2CC, var_F8)
  loc_1BC404C:             var_2CC = var_10C.Text
  loc_1BC40EF:             var_1D4 = var_E4.Fields.Item("AcCode").Value
  loc_1BC40F7:             var_194 = Now
  loc_1BC4101:             var_2F8 = 0
  loc_1BC410C:             var_2B0 = 0
  loc_1BC4117:             var_2AC = 0
  loc_1BC4120:             var_2A8 = "A"
  loc_1BC4183:             Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_29C))
  loc_1BC41D9:             var_CE = (var_CE + 1)
  loc_1BC41EA:             Set var_108 = Me.Txt
  loc_1BC41F0:             Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_29C, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F8) / CDbl(&H64))), 2)))
  loc_1BC41F8:             CDbl(0) = var_10C.Text
  loc_1BC421F:             var_1B4 = var_E4.Fields.Item("AcCode").Value
  loc_1BC4271:             var_160 = Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F8) / CDbl(&H64))), 2)
  loc_1BC429B:             var_1D4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC42A3:             var_194 = Now
  loc_1BC42AD:             var_2F8 = 0
  loc_1BC42B8:             var_2B0 = 0
  loc_1BC42C3:             var_2AC = 0
  loc_1BC42CC:             var_2A8 = "A"
  loc_1BC432F:             Proc_6_141_12E1E18(MemVar_1F92044, var_130, var_CE, var_298, var_C8, global_104, MemVar_1F92070, CDate(var_29C))
  loc_1BC433A:             var_B8 = var_130
  loc_1BC4343:             var_C2 = var_298
  loc_1BC43D5:             var_F8 = CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F8) / CDbl(&H64))), 3))
  loc_1BC441E:             var_2CC = Val(CStr(var_E4.Fields.Item("Rate").Value))
  loc_1BC4447:             var_194 = (CVar(var_100) + Round(CVar(((var_2CC * var_F8) / CDbl(&H64))), 3))
  loc_1BC444C:             var_100 = CSng(var_194)
  loc_1BC4467:           Else
  loc_1BC4481:             var_10C = var_E4.Fields.Item("Nature")
  loc_1BC44A3:             If (var_10C.Value = "On Running Total") Then
  loc_1BC44AC:               var_CE = (var_CE + 1)
  loc_1BC44BD:               Set var_108 = Me.Txt
  loc_1BC44C3:               Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_29C, var_CE, var_100, var_2CC, var_F8)
  loc_1BC44CB:               var_2CC = var_10C.Text
  loc_1BC456E:               var_1D4 = var_E4.Fields.Item("AcCode").Value
  loc_1BC4576:               var_194 = Now
  loc_1BC4580:               var_2F8 = 0
  loc_1BC458B:               var_2B0 = 0
  loc_1BC4596:               var_2AC = 0
  loc_1BC459F:               var_2A8 = "A"
  loc_1BC4602:               Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_29C))
  loc_1BC4658:               var_CE = (var_CE + 1)
  loc_1BC4669:               Set var_108 = Me.Txt
  loc_1BC466F:               Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_29C, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_100) / CDbl(&H64))), 2)))
  loc_1BC4677:               CDbl(0) = var_10C.Text
  loc_1BC4696:               var_2B8 = var_E4.Fields.Item("AcCode")
  loc_1BC469E:               var_1B4 = var_2B8.Value
  loc_1BC46B5:               var_2BC = var_E4.Fields
  loc_1BC46F0:               var_160 = Round(CVar(((Val(CStr(var_2BC.Item("Rate").Value)) * var_100) / CDbl(&H64))), 2)
  loc_1BC471A:               var_1D4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC4722:               var_194 = Now
  loc_1BC472C:               var_2F8 = 0
  loc_1BC4737:               var_2B0 = 0
  loc_1BC4742:               var_2AC = 0
  loc_1BC474B:               var_2A8 = "A"
  loc_1BC47AE:               Proc_6_141_12E1E18(MemVar_1F92044, var_130, var_CE, var_298, var_C8, global_104, MemVar_1F92070, CDate(var_29C))
  loc_1BC47B9:               var_B8 = var_130
  loc_1BC47C2:               var_C2 = var_298
  loc_1BC4854:               var_F8 = CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_100) / CDbl(&H64))), 3))
  loc_1BC4884:               var_10C = var_E4.Fields.Item("Rate")
  loc_1BC4895:               var_104 = CStr(var_10C.Value)
  loc_1BC489D:               var_2CC = Val(var_104)
  loc_1BC48B7:               var_150 = CVar(((var_2CC * var_100) / CDbl(&H64))) 'Double
  loc_1BC48C6:               var_194 = (CVar(var_100) + Round(var_150, 3))
  loc_1BC48CB:               var_100 = CSng(var_194)
  loc_1BC48E3:             End If
  loc_1BC48E3:           End If
  loc_1BC48E3:         End If
  loc_1BC48E3:       End If
  loc_1BC48E3:     End If
  loc_1BC48E8:     Set var_E0 = Nothing
  loc_1BC48EB:   End If
  loc_1BC48F1:   var_8C.MoveNext
  loc_1BC48F6:   GoTo loc_1BC2DF4
  loc_1BC48F9: End If
  loc_1BC4917: Set var_108 = Me.Txt
  loc_1BC491D: Call 0.Method_Proc_125_82_1BC6A780 (CInt(0), var_10C, var_104, "select (AmtCr - AmtDr) as CreditAmt,PayCode,Comments,Accode,CardNo,RestCode,PaychargeH.PayType,revmast.name as RevenueName,PaychargeH.ChqNo as ChqNo,PaychargeH.ChqDate as ChqDate from PaychargeH Left Join RevMast on Revmast.Code=PayChargeH.PayCode  where PayChargeH.Docid='", var_214, -1, var_2BC)
  loc_1BC4925: var_100 = var_10C.Text
  loc_1BC492E: var_130 = var_2CC & var_104
  loc_1BC4935: var_298 = var_130 & "' And PaychargeH.SITE_CODE='"
  loc_1BC4943: var_160 = CVar(var_298 & MemVar_1F92070 & "' AND Vdate = ") 'String
  loc_1BC4951: Set var_2B4 = Me.Txt
  loc_1BC4957: Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_2B8, var_160, var_F8)
  loc_1BC4966: Proc_6_7_F25D88(var_150, CVar(var_2B8), var_2CC)
  loc_1BC496E: var_194 = CStr(var_1B4) & var_150 
  loc_1BC4972: var_11C = " and PaychargeH.docid not in (Select ContraDocId from PaychargeH where ContraDocId is not null) and (PaychargeH.DbtChkIn<>'Yes' or PaychargeH.DbtChkIn is NULL ) AND RestCode='"
  loc_1BC498D: var_1F4 = var_194 & var_11C & CVar(global_52) & "' And IsNull(revmast.PayableAc,'')='' and PaychargeH.PayType not in ('Cash','Staff','Company','Credit Card')" 
  loc_1BC499B: unk_5502D0.Execute CStr(var_1F4), CDbl(0), CSng(var_160)
  loc_1BC49A6: Set var_8C = var_2BC
  loc_1BC49D4: ' Referenced from: 1BC538D
  loc_1BC49E6: If Not(Me.Recordset15.EOF) Then
  loc_1BC4A25:   If (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Comments"))) = vbNullString) Then
  loc_1BC4A7E:     unk_5502D0.Execute CStr("Select * from Depart Where Code='" & Me.Recordset15.Fields.Item("RestCode").Value & "'"), var_194, -1
  loc_1BC4A89:     Set var_DC = var_2B4
  loc_1BC4AB7:     If (var_DC.RecordCount > 0) Then
  loc_1BC4AF9:       If (Me.Recordset15.Fields.Item("PayType").Value = "Credit Card") Then
  loc_1BC4B5B:         var_194 = (CVar(Proc_6_38_E68A98(CVar(var_DC.Fields.Item("ShortName"))) & " C.C.No.") + Me.Recordset15.Fields.Item("CardNo").Value)
  loc_1BC4B60:         var_D4 = CStr(var_194)
  loc_1BC4B7D:       Else
  loc_1BC4BA5:         var_104 = Proc_6_38_E68A98(CVar(var_DC.Fields.Item("ShortName")))
  loc_1BC4BDC:         var_194 = (CVar(var_104 & " ") + Me.Recordset15.Fields.Item("RevenueName").Value)
  loc_1BC4BE1:         var_D4 = CStr(var_194)
  loc_1BC4BFB:       End If
  loc_1BC4BFE:     Else
  loc_1BC4C2C:       var_D4 = CStr(Me.Recordset15.Fields.Item("RevenueName").Value)
  loc_1BC4C39:     End If
  loc_1BC4C3C:   Else
  loc_1BC4C76:     var_D4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Comments"))))))
  loc_1BC4C85:   End If
  loc_1BC4CA2:   var_10C = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC4CC4:   If (var_10C.Value > 0) Then
  loc_1BC4CCD:     var_CE = (var_CE + 1)
  loc_1BC4CDE:     Set var_108 = Me.Txt
  loc_1BC4CE4:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298)
  loc_1BC4D40:     var_1D4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC4D48:     var_160 = Now
  loc_1BC4D78:     var_2B0 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqNo")))
  loc_1BC4DA6:     var_2F8 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")))
  loc_1BC4DAE:     var_2AC = 0
  loc_1BC4DC5:     var_2A0 = "A"
  loc_1BC4E27:     Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_10C.Text, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC4E7B:     var_CE = (var_CE + 1)
  loc_1BC4E8C:     Set var_108 = Me.Txt
  loc_1BC4E92:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_10C.Text, var_E8, CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC4E9A:     CDbl(0) = var_10C.Text
  loc_1BC4EC4:     var_1D4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC4EF6:     var_160 = Now
  loc_1BC4F26:     var_2B0 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqNo")), CStr(var_1D4), var_D4)
  loc_1BC4F54:     var_2F8 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")), MemVar_1F920C8)
  loc_1BC4F5C:     var_2AC = 0
  loc_1BC4F73:     var_2A0 = "A"
  loc_1BC4F8E:     var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC4FD5:     Proc_6_141_12E1E18(MemVar_1F92044, var_104, var_10C.Text, var_130, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC4FE0:     var_B8 = var_104
  loc_1BC4FE9:     var_C2 = var_130
  loc_1BC5026:   Else
  loc_1BC502C:     var_CE = (var_CE + 1)
  loc_1BC503D:     Set var_108 = Me.Txt
  loc_1BC5043:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_10C.Text, CStr(var_1D4), CDbl(0))
  loc_1BC504B:     CSng(var_150) = var_10C.Text
  loc_1BC50A7:     var_160 = Now
  loc_1BC50D7:     var_2B0 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqNo")), var_E8, var_D4)
  loc_1BC5105:     var_2F8 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")), MemVar_1F920C8)
  loc_1BC510D:     var_2AC = 0
  loc_1BC5124:     var_2A0 = "A"
  loc_1BC5186:     Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_10C.Text, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC51DA:     var_CE = (var_CE + 1)
  loc_1BC51EB:     Set var_108 = Me.Txt
  loc_1BC51F1:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_10C.Text, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC51F9:     CDbl(0) = var_10C.Text
  loc_1BC521B:     var_2B8 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC523D:     var_2BC = Me.Recordset15.Fields
  loc_1BC524D:     var_1D4 = var_2BC.Item("AcCode").Value
  loc_1BC5255:     var_160 = Now
  loc_1BC526C:     var_2E8 = Me.Recordset15.Fields
  loc_1BC5285:     var_2B0 = Proc_6_38_E68A98(CVar(var_2E8.Item("ChqNo")), var_E8, var_D4)
  loc_1BC52B3:     var_2F8 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")), MemVar_1F920C8)
  loc_1BC52BB:     var_2AC = 0
  loc_1BC52D2:     var_2A0 = "A"
  loc_1BC52F2:     var_150 = Abs(var_2B8.Value)
  loc_1BC5334:     Proc_6_141_12E1E18(MemVar_1F92044, var_104, var_10C.Text, var_130, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC533F:     var_B8 = var_104
  loc_1BC5348:     var_C2 = var_130
  loc_1BC5382:   End If
  loc_1BC5388:   Me.Recordset15.MoveNext
  loc_1BC538D:   GoTo loc_1BC49D4
  loc_1BC5390: End If
  loc_1BC53AE: Set var_108 = Me.Txt
  loc_1BC53B4: Call 0.Method_Proc_125_82_1BC6A780 (CInt(0), var_10C, var_104, "SELECT (AmtCr - AmtDr) AS CreditAmt,Comments, PaychargeH.PayCode, RestCode,Employee.AC_Code as ACCode,Employee.Name as EName,revmast.name as RevenueName FROM (PaychargeH LEFT JOIN RevMast ON PaychargeH.PayCode = RevMast.Code) LEFT JOIN Employee ON PaychargeH.EmpCode = Employee.Code where  PayChargeH.Docid='", var_1D4, -1, var_2BC)
  loc_1BC53BC: var_E8 = var_10C.Text
  loc_1BC53DD: var_2A0 = CDbl(0) & var_104 & "' And PaychargeH.RestCode='" & global_52 & "' And IsNull(revmast.PayableAc,'')='' and PaychargeH.SITE_CODE='"
  loc_1BC53EB: var_160 = CVar(var_2A0 & MemVar_1F92070 & "' AND Vdate = ") 'String
  loc_1BC53F9: Set var_2B4 = Me.Txt
  loc_1BC53FF: Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_2B8, var_160, CSng(var_150))
  loc_1BC540E: Proc_6_7_F25D88(var_150, CVar(var_2B8), CStr(var_1D4))
  loc_1BC5416: var_194 = var_D4 & var_150 
  loc_1BC541A: var_11C = " and PaychargeH.docid not in (Select distinct ContraDocId from PaychargeH where Contradocid is not NUll and ContraDocid<>'')  and PaychargeH.COntradocid not in (Select DocId from PaychargeH )and PaychargeH.PayType in ('Staff')"
  loc_1BC542D: unk_5502D0.Execute CStr(var_194 & var_11C), MemVar_1F920C8, CDate(var_160)
  loc_1BC5438: Set var_8C = var_2BC
  loc_1BC5466: ' Referenced from: 1BC58DC
  loc_1BC5478: If Not(Me.Recordset15.EOF) Then
  loc_1BC54D1:   unk_5502D0.Execute CStr("Select * from Depart Where Code='" & Me.Recordset15.Fields.Item("RestCode").Value & "'"), var_194, -1
  loc_1BC54DC:   Set var_DC = var_2B4
  loc_1BC5532:   If (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Comments"))) = vbNullString) Then
  loc_1BC5549:     If (var_DC.RecordCount > 0) Then
  loc_1BC5574:       var_104 = Proc_6_38_E68A98(CVar(var_DC.Fields.Item("ShortName")))
  loc_1BC557B:       var_130 = var_104 & " "
  loc_1BC5590:       var_2B4 = Me.Recordset15.Fields
  loc_1BC55AD:       var_D4 = var_2B4 & Proc_6_38_E68A98(CVar(var_2B4.Item("EName")), var_130)
  loc_1BC55CA:     Else
  loc_1BC55F5:       var_D4 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("EName")))
  loc_1BC55FE:     End If
  loc_1BC5601:   Else
  loc_1BC561B:     var_10C = Me.Recordset15.Fields.Item("Comments")
  loc_1BC562C:     var_D4 = Proc_6_38_E68A98(CVar(var_10C))
  loc_1BC5635:   End If
  loc_1BC563B:   var_CE = (var_CE + 1)
  loc_1BC564C:   Set var_108 = Me.Txt
  loc_1BC5652:   Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C)
  loc_1BC565A:   var_298 = var_10C.Text
  loc_1BC56AE:   var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC56B6:   var_160 = Now
  loc_1BC56C0:   var_2AC = 0
  loc_1BC56CB:   var_2A8 = 0
  loc_1BC56D6:   var_2A4 = 0
  loc_1BC56DF:   var_2A0 = "A"
  loc_1BC5741:   Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_10C.Text, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC5789:   var_CE = (var_CE + 1)
  loc_1BC579A:   Set var_108 = Me.Txt
  loc_1BC57A0:   Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_10C.Text, var_E8, CDbl(0))
  loc_1BC57A8:   CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)) = var_10C.Text
  loc_1BC57CA:   var_2B8 = Me.Recordset15.Fields.Item("AcCode")
  loc_1BC57D2:   var_194 = var_2B8.Value
  loc_1BC57EC:   var_2BC = Me.Recordset15.Fields
  loc_1BC5804:   var_160 = Now
  loc_1BC580E:   var_2AC = 0
  loc_1BC5819:   var_2A8 = 0
  loc_1BC5824:   var_2A4 = 0
  loc_1BC582D:   var_2A0 = "A"
  loc_1BC5848:   var_150 = Abs(var_2BC.Item("CreditAmt").Value)
  loc_1BC588F:   Proc_6_141_12E1E18(MemVar_1F92044, var_104, var_10C.Text, var_130, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC589A:   var_B8 = var_104
  loc_1BC58A3:   var_C2 = var_130
  loc_1BC58D7:   Me.Recordset15.MoveNext
  loc_1BC58DC:   GoTo loc_1BC5466
  loc_1BC58DF: End If
  loc_1BC58FD: Set var_108 = Me.Txt
  loc_1BC5903: Call 0.Method_Proc_125_82_1BC6A780 (CInt(0), var_10C, var_104, "SELECT DocId,Vtype,Comments,DbtChkin,Sno,revmast.name as RevenueName FROM (PaychargeH LEFT JOIN SubGroup ON PaychargeH.CompCode = SubGroup.SubCode) LEFT JOIN RevMast ON PaychargeH.PayCode = RevMast.Code where PayChargeH.Docid='", var_1D4, -1, var_2BC)
  loc_1BC590B: CStr(var_194) = var_10C.Text
  loc_1BC592C: var_2A0 = CDbl(0) & var_104 & "' And PaychargeH.RestCode='" & global_52 & "' And IsNull(revmast.PayableAc,'')='' and PaychargeH.SITE_CODE='"
  loc_1BC593A: var_160 = CVar(var_2A0 & MemVar_1F92070 & "' AND  Vdate = ") 'String
  loc_1BC5948: Set var_2B4 = Me.Txt
  loc_1BC594E: Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_2B8, var_160, CSng(var_150))
  loc_1BC595D: Proc_6_7_F25D88(var_150, CVar(var_2B8), var_E8)
  loc_1BC597C: unk_5502D0.Execute CStr(var_D4 & var_150 & " and AmtCr<>0  and PaychargeH.PayType in ('Company')"), MemVar_1F920C8, CDate(var_160)
  loc_1BC5987: Set var_E0 = var_2BC
  loc_1BC59B5: ' Referenced from: 1BC612A
  loc_1BC59C4: If Not(var_E0.EOF) Then
  loc_1BC59DB:   var_104 = "SELECT (AmtCr - AmtDr) AS CreditAmt,Comments ,PaychargeH.PayCode, SubGroup.SubCode as AcCode,revmast.name as RevenueNAme FROM (PaychargeH LEFT JOIN SubGroup ON PaychargeH.CompCode = SubGroup.SubCode) LEFT JOIN RevMast ON PaychargeH.PayCode = RevMast.Code where PaychargeH.SITE_CODE='" & MemVar_1F92070
  loc_1BC59F0:   Set var_108 = Me.Txt
  loc_1BC59F6:   Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, CVar(var_104 & "' AND Vdate = "))
  loc_1BC5A05:   Proc_6_7_F25D88(var_150, CVar(var_10C), var_294)
  loc_1BC5A0D:   var_194 = -1 & var_150 
  loc_1BC5A4D:   var_214 = var_D4 & var_150 & " and PaychargeH.DocId='" & var_E0.Fields.Item("DocID").Value & "' And IsNull(revmast.PayableAc,'')='' and Sno=" 
  loc_1BC5A88:   var_130 = CStr(var_214 & var_E0.Fields.Item("SNo").Value & " and PaychargeH.PayType in ('Company')")
  loc_1BC5A92:   unk_5502D0.Execute var_130, var_2E8, 
  loc_1BC5A9D:   Set var_8C = var_2E8
  loc_1BC5AD1:   ' Referenced from: 1BC611F
  loc_1BC5AE3:   If Not(Me.Recordset15.EOF) Then
  loc_1BC5B11:     var_104 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Comments")))
  loc_1BC5B22:     If (var_104 = vbNullString) Then
  loc_1BC5B53:       var_D4 = CStr(Me.Recordset15.Fields.Item("RevenueName").Value)
  loc_1BC5B63:     Else
  loc_1BC5B8E:       var_D4 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Comments")))
  loc_1BC5B97:     End If
  loc_1BC5BB4:     var_10C = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC5BD6:     If (var_10C.Value > 0) Then
  loc_1BC5BDF:       var_CE = (var_CE + 1)
  loc_1BC5BF0:       Set var_108 = Me.Txt
  loc_1BC5BF6:       Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C)
  loc_1BC5BFE:       var_298 = var_10C.Text
  loc_1BC5C52:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC5C5A:       var_160 = Now
  loc_1BC5C64:       var_2AC = 0
  loc_1BC5C6F:       var_2A8 = 0
  loc_1BC5C7A:       var_2A4 = 0
  loc_1BC5C83:       var_2A0 = "A"
  loc_1BC5CE5:       Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_10C.Text, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC5D2D:       var_CE = (var_CE + 1)
  loc_1BC5D3E:       Set var_108 = Me.Txt
  loc_1BC5D44:       Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_10C.Text, var_E8, CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC5D4C:       CDbl(0) = var_10C.Text
  loc_1BC5D76:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC5DA8:       var_160 = Now
  loc_1BC5DB2:       var_2AC = 0
  loc_1BC5DBD:       var_2A8 = 0
  loc_1BC5DC8:       var_2A4 = 0
  loc_1BC5DD1:       var_2A0 = "A"
  loc_1BC5DEC:       var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC5E33:       Proc_6_141_12E1E18(MemVar_1F92044, var_104, var_10C.Text, var_130, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC5E3E:       var_B8 = var_104
  loc_1BC5E47:       var_C2 = var_130
  loc_1BC5E78:     Else
  loc_1BC5E7E:       var_CE = (var_CE + 1)
  loc_1BC5E8F:       Set var_108 = Me.Txt
  loc_1BC5E95:       Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_10C.Text, CStr(var_194), CDbl(0))
  loc_1BC5E9D:       CSng(var_150) = var_10C.Text
  loc_1BC5EF9:       var_160 = Now
  loc_1BC5F03:       var_2AC = 0
  loc_1BC5F0E:       var_2A8 = 0
  loc_1BC5F19:       var_2A4 = 0
  loc_1BC5F22:       var_2A0 = "A"
  loc_1BC5F84:       Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_10C.Text, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC5FCC:       var_CE = (var_CE + 1)
  loc_1BC5FDD:       Set var_108 = Me.Txt
  loc_1BC5FE3:       Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_10C.Text, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC5FEB:       CDbl(0) = var_10C.Text
  loc_1BC600D:       var_2B8 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC602F:       var_2BC = Me.Recordset15.Fields
  loc_1BC603F:       var_194 = var_2BC.Item("AcCode").Value
  loc_1BC6047:       var_160 = Now
  loc_1BC6051:       var_2AC = 0
  loc_1BC605C:       var_2A8 = 0
  loc_1BC6067:       var_2A4 = 0
  loc_1BC6070:       var_2A0 = "A"
  loc_1BC6090:       var_150 = Abs(var_2B8.Value)
  loc_1BC60D2:       Proc_6_141_12E1E18(MemVar_1F92044, var_104, var_10C.Text, var_130, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC60DD:       var_B8 = var_104
  loc_1BC60E6:       var_C2 = var_130
  loc_1BC6114:     End If
  loc_1BC611A:     Me.Recordset15.MoveNext
  loc_1BC611F:     GoTo loc_1BC5AD1
  loc_1BC6122:   End If
  loc_1BC6125:   var_E0.MoveNext
  loc_1BC612A:   GoTo loc_1BC59B5
  loc_1BC612D: End If
  loc_1BC614B: Set var_108 = Me.Txt
  loc_1BC6151: Call 0.Method_Proc_125_82_1BC6A780 (CInt(0), var_10C, var_104, "select (AmtCr-AmtDr) as CreditAmt,PayCode,Comments,Accode,CardNo,RestCode,PaychargeH.PayType,revmast.name as RevenueName,revmast.PayableAc,PaychargeH.ChqNo as ChqNo,PaychargeH.ChqDate as ChqDate from PaychargeH Left Join RevMast on Revmast.Code=PayChargeH.PayCode where PayChargeH.Docid='", var_214, -1, var_2BC)
  loc_1BC6159: var_E8 = var_10C.Text
  loc_1BC6162: var_130 = CDbl(0) & var_104
  loc_1BC6177: var_160 = CVar(var_130 & "' And PaychargeH.SITE_CODE='" & MemVar_1F92070 & "' AND Vdate = ") 'String
  loc_1BC6185: Set var_2B4 = Me.Txt
  loc_1BC618B: Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_2B8, var_160, CSng(var_150))
  loc_1BC619A: Proc_6_7_F25D88(var_150, CVar(var_2B8), CStr(var_194))
  loc_1BC61A6: var_11C = " and PaychargeH.docid not in (Select ContraDocId from PaychargeH where ContraDocId is not null) And (PaychargeH.DbtChkIn<>'Yes' or PaychargeH.DbtChkIn is NULL ) AND RestCode='"
  loc_1BC61CF: unk_5502D0.Execute CStr(var_D4 & var_150 & var_11C & CVar(global_52) & "' And IsNull(revmast.PayableAc,'')<>''"), MemVar_1F920C8, CDate(var_160)
  loc_1BC61DA: Set var_8C = var_2BC
  loc_1BC6208: ' Referenced from: 1BC6A3C
  loc_1BC621A: If Not(Me.Recordset15.EOF) Then
  loc_1BC624B:   var_D4 = CStr(Me.Recordset15.Fields.Item("Comments").Value)
  loc_1BC6275:   var_10C = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1BC6297:   If (var_10C.Value < 0) Then
  loc_1BC62A0:     var_CE = (var_CE + 1)
  loc_1BC62B1:     Set var_108 = Me.Txt
  loc_1BC62B7:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C)
  loc_1BC62BF:     var_298 = var_10C.Text
  loc_1BC633D:     var_1F4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC6345:     var_160 = Now
  loc_1BC6375:     var_2F8 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqNo")))
  loc_1BC63A3:     var_2FC = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")))
  loc_1BC63AB:     var_2B0 = 0
  loc_1BC63C2:     var_2A4 = "A"
  loc_1BC6429:     Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_10C.Text, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC6485:     var_CE = (var_CE + 1)
  loc_1BC6496:     Set var_108 = Me.Txt
  loc_1BC649C:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_10C.Text, CStr(Me.Recordset15.Fields.Item("PayableAc").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC64A4:     CDbl(0) = var_10C.Text
  loc_1BC64CE:     var_1D4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1BC652A:     var_160 = Now
  loc_1BC655A:     var_2F8 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqNo")), CStr(Me.Recordset15.Fields.Item("PayableAc").Value), var_D4)
  loc_1BC6588:     var_2FC = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")), MemVar_1F920C8)
  loc_1BC6590:     var_2B0 = 0
  loc_1BC65A7:     var_2A4 = "A"
  loc_1BC65C7:     var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC660E:     Proc_6_141_12E1E18(MemVar_1F92044, var_104, var_10C.Text, var_130, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC6619:     var_B8 = var_104
  loc_1BC6622:     var_C2 = var_130
  loc_1BC6667:   Else
  loc_1BC666D:     var_CE = (var_CE + 1)
  loc_1BC667E:     Set var_108 = Me.Txt
  loc_1BC6684:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_10C.Text, CStr(var_1D4), CDbl(0))
  loc_1BC668C:     CSng(var_150) = var_10C.Text
  loc_1BC6712:     var_160 = Now
  loc_1BC6742:     var_2F8 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqNo")), CStr(Me.Recordset15.Fields.Item("PayableAc").Value), var_D4)
  loc_1BC6770:     var_2FC = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")), MemVar_1F920C8)
  loc_1BC6778:     var_2B0 = 0
  loc_1BC678F:     var_2A4 = "A"
  loc_1BC67F6:     Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_10C.Text, var_C2, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC6852:     var_CE = (var_CE + 1)
  loc_1BC6863:     Set var_108 = Me.Txt
  loc_1BC6869:     Call 0.Method_Proc_125_82_1BC6A780 (CInt(3), var_10C, var_298, var_10C.Text, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1BC6871:     CDbl(0) = var_10C.Text
  loc_1BC689B:     var_1D4 = Me.Recordset15.Fields.Item("PayableAc").Value
  loc_1BC68F7:     var_160 = Now
  loc_1BC6927:     var_2F8 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqNo")), CStr(Me.Recordset15.Fields.Item("AcCode").Value), var_D4)
  loc_1BC6955:     var_2FC = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")), MemVar_1F920C8)
  loc_1BC695D:     var_2B0 = 0
  loc_1BC6974:     var_2A4 = "A"
  loc_1BC6994:     var_150 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1BC69DB:     Proc_6_141_12E1E18(MemVar_1F92044, var_104, var_10C.Text, var_130, var_C8, global_104, MemVar_1F92070, CDate(var_298))
  loc_1BC69E6:     var_B8 = var_104
  loc_1BC69EF:     var_C2 = var_130
  loc_1BC6A31:   End If
  loc_1BC6A37:   Me.Recordset15.MoveNext
  loc_1BC6A3C:   GoTo loc_1BC6208
  loc_1BC6A3F: End If
  loc_1BC6A45: unk_5502D0.CommitTrans
  loc_1BC6A4E: var_88 = CByte(0) 'Byte
  loc_1BC6A57: Set var_8C = Nothing
  loc_1BC6A5F: Set var_CC = Nothing
  loc_1BC6A67: Set var_E0 = Nothing
  loc_1BC6A6F: Set var_DC = Nothing
  loc_1BC6A72: Proc_125_82_1BC6A78 = CStr(var_1D4)
End Sub
