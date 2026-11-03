VERSION 5.00
Begin VB.Form memCatRevMast
  Caption = "Member Category Wise Revenue"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11130
  ClientHeight = 5145
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11130
    Height = 450
    TabIndex = 11
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 2775
    Top = 3510
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 13665
    Top = 6930
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 180
      Top = -75
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 8
    End
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 3345
    Top = 1845
    Width = 1410
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 0
    ForeColor = &HFF0000&
    Left = 3345
    Top = 1530
    Width = 3930
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin DataGrid DGCat
    Left = 12855
    Top = 1605
    Width = 4230
    Height = 2685
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin MSFlexGrid FGPoint
    Left = 12225
    Top = 4935
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGRev
    Left = 13110
    Top = 750
    Width = 3930
    Height = 2565
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin MSHFlexGrid FGrid
    Left = 1995
    Top = 2490
    Width = 7500
    Height = 4275
    TabIndex = 10
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 525
    Top = 8085
    Width = 2430
    Height = 285
    TabIndex = 13
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 540
    Top = 7755
    Width = 2520
    Height = 255
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    Caption = "Applicable Date"
    ForeColor = &HFF0000&
    Left = 1410
    Top = 1875
    Width = 1875
    Height = 270
    TabIndex = 6
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
    Caption = "Member Category"
    ForeColor = &HFF0000&
    Left = 1410
    Top = 1545
    Width = 1890
    Height = 270
    TabIndex = 5
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

Attribute VB_Name = "memCatRevMast"

Private global_52 As Integer
Private global_72 As Integer

Private Sub Form_Load() '1093660
  'Data Table: 49FB5C
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim var_C0 As String
  Dim unk_49FB72 As Connection15
  loc_10933B4: On Error Goto loc_109361B
  loc_10933BE: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10933D6: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_10933ED: Me.LblUser.Left = CDbl(13500)
  loc_1093404: Me.LblUser.Top = CDbl(7800)
  loc_109341B: Me.LblLDt.Top = CDbl(8160)
  loc_1093432: Me.LblLDt.Left = CDbl(13500)
  loc_1093444: Set var_A8 = Me.TopCtrl1
  loc_109344A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_1093458: Call 0.Method_arg_50 (var_AC)
  loc_1093460: var_BC = CVar(var_AC) 'String
  loc_109346E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(var_BC)
  loc_1093494: var_C0 = "SELECT MemCatMast.Code, MemCatMast.Name FROM MemCatMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY MemCatMast.Name"
  loc_109349D: unk_49FB72.Execute var_C0, var_BC, -1
  loc_10934CC: CVarUnk
  loc_10934D1: VerifyVarObj
  loc_10934DD: LateIdStAd
  loc_10934FF: var_AC = "SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_109350F: unk_49FB72.Execute var_AC & "' or LOGSITE_CODE='HO') ORDER BY MembershipRevMast.Description", var_BC, -1
  loc_109353E: CVarUnk
  loc_1093543: VerifyVarObj
  loc_1093549: Set var_A8 = Me.DGRev
  loc_109354F: LateIdStAd
  loc_109357B: var_AC = "Select DISTINCT (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From MemCatRevWise MR Where (MR.LOGSITE_CODE='" & MemVar_1F92078
  loc_1093582: var_BC = CVar(var_AC & "' or MR.LOGSITE_CODE='HO') Order By (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103))") 'String
  loc_109358F: Me.DGRev.Open var_BC, CVar(MemVar_1F92044), 3
  loc_10935B3: var_AC = "INI"
  loc_10935C1: Call Proc_268_42_E7AF24(Proc_5_1_100CB50(var_AC, Me, global_60, 1, -1, Me), Me.DGCat, Me)
  loc_10935D4: Set var_A8 = Me.TopCtrl1
  loc_10935DA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030019(True)
  loc_10935EB: Set var_A8 = Me.TopCtrl1
  loc_10935F1: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030016(False)
  loc_1093602: Set var_A8 = Me.TopCtrl1
  loc_1093608: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030017(False)
  loc_1093610: Call Proc_268_39_11171AC(var_A8, Me.TopCtrl1)
  loc_1093615: Call Proc_268_41_1325140(var_A8)
  loc_109361A: Exit Sub
  loc_109361B: ' Referenced from: 10933B4
  loc_1093623: Set var_A8 = Err()
  loc_1093629: Call 0.Method_arg_2C (var_AC)
  loc_109364A: MsgBox(CVar(var_AC), &H40, "Information", var_E8, var_108)
  loc_109365D: Exit Sub
  loc_109365E: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E55EE4
  'Data Table: 49FB5C
  loc_E55EAF: Set global_64 = Nothing
  loc_E55EC1: Set global_60 = Nothing
  loc_E55ED3: Set global_68 = Nothing
  loc_E55EDF: global_52 = 0
  loc_E55EE2: Exit Sub
End Sub

Private Sub Form_Activate() 'E4CE20
  'Data Table: 49FB5C
  loc_E4CDF0: On Error Goto loc_E4CE1A
  loc_E4CDF7: Set var_88 = Me.TopCtrl1
  loc_E4CDFD: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030000()
  loc_E4CE12: If (CLng(CInt()) = &H2D) Then
  loc_E4CE15:   Call TopCtrl1_UnknownEvent_15()
  loc_E4CE1A:   ' Referenced from: E4CDF0
  loc_E4CE1A: End If
  loc_E4CE1A: Proc_6_60_E62BC4()
  loc_E4CE1F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E261FC
  'Data Table: 49FB5C
  loc_E261E1: If (global_52 = &HFF) Then
  loc_E261F1:   Me.Global.Unload Me
  loc_E261F9: End If
  loc_E261F9: Exit Sub
  loc_E261FA: Loop Until  'do at: E24602
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E89D4C
  'Data Table: 49FB5C
  loc_E89CE8: On Error Goto loc_E89D08
  loc_E89CFF: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E89D07: Exit Sub
  loc_E89D08: ' Referenced from: E89CE8
  loc_E89D10: Set var_88 = Err()
  loc_E89D16: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E89D37: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E89D4A: Exit Sub
  loc_E89D4B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E627B4
  'Data Table: 49FB5C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6277F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E62792: Set var_A8 = Me.TxtGrid
  loc_E62798: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E627A0: var_AC.Visible = False
  loc_E627AC: Call Proc_268_43_E85F60()
  loc_E627B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E65D78
  'Data Table: 49FB5C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E65D34: Set var_88 = Me.TxtGrid
  loc_E65D3A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E65D54: If (var_8C.Visible = 0) Then
  loc_E65D6D:   Me.FGrid.BackColorSel = CVar(CLng(global_96))
  loc_E65D75: End If
  loc_E65D75: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E4C93C
  'Data Table: 49FB5C
  loc_E4C914: Set var_88 = Me.TopCtrl1
  loc_E4C91A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E4C933: If (CStr() <> "Browse") Then
  loc_E4C936:   Call Proc_268_45_E45E00()
  loc_E4C93B: End If
  loc_E4C93B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10F7624
  'Data Table: 49FB5C
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim KeyCode As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10F72FC: Set var_88 = Me.TopCtrl1
  loc_10F7302: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10F7347: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_10F7350:   Call Form_KeyDown(KeyCode, Shift)
  loc_10F7355: End If
  loc_10F7359: Set var_88 = Me.TopCtrl1
  loc_10F735F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10F7378: If (CStr() = "Browse") Then
  loc_10F737B:   Exit Sub
  loc_10F737C: End If
  loc_10F73F0: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10F73FB:   var_9C = "+{Tab}"
  loc_10F7401:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_10F740B:   KeyCode = 0
  loc_10F7411: Else
  loc_10F7468:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10F746D:     KeyCode = 0
  loc_10F7470:   End If
  loc_10F7470: End If
  loc_10F749C: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10F74B3: Set var_88 = Me.TopCtrl1
  loc_10F74B9: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(KeyCode)
  loc_10F74D2: If (CStr(KeyCode) = "Edit") Then
  loc_10F74D5:   Exit Sub
  loc_10F74D6: End If
  loc_10F74E7: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_10F74FD:   var_DC = CLng(Me.FGrid.Col)
  loc_10F750D:   If (var_DC = CLng(1)) Then
  loc_10F7523:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F752B:     var_FC = CVar(CLng(1)) 'Long
  loc_10F7530:     var_11C = vbNullString
  loc_10F753A:     Set var_A0 = Me.FGrid
  loc_10F7540:     LateIdCallSt
  loc_10F7565:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F756D:     var_FC = CVar(CLng(5)) 'Long
  loc_10F7572:     var_11C = vbNullString
  loc_10F757C:     Set var_A0 = Me.FGrid
  loc_10F7582:     LateIdCallSt
  loc_10F7597:   Else
  loc_10F759E:     If Not (var_DC = CLng(2)) Then
  loc_10F75A8:       If Not (var_DC = CLng(3)) Then
  loc_10F75B2:         If (var_DC = CLng(4)) Then
  loc_10F75B5:         End If
  loc_10F75B5:       End If
  loc_10F75C8:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F75E0:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10F75E5:       var_11C = vbNullString
  loc_10F75EF:       Set var_B4 = Me.FGrid
  loc_10F75F5:       LateIdCallSt
  loc_10F760D:     End If
  loc_10F760D:   End If
  loc_10F760D: End If
  loc_10F7613: If (KeyCode = &HD) Then
  loc_10F761B:   global_72 = 0
  loc_10F761E: End If
  loc_10F7620: KeyCode = 0
  loc_10F7623: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E56DD0
  'Data Table: 49FB5C
  loc_E56D9C: Set var_88 = Me.TopCtrl1
  loc_E56DA2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E56DBB: If (CStr() = "Browse") Then
  loc_E56DBE:   Exit Sub
  loc_E56DBF: End If
  loc_E56DC8: Call FGrid_UnknownEvent_C()
  loc_E56DCD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '10243B0
  'Data Table: 49FB5C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_102418C: Set var_88 = Me.TopCtrl1
  loc_1024192: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10241AB: If (CStr() = "Browse") Then
  loc_10241AE:   Exit Sub
  loc_10241AF: End If
  loc_10241C2: var_A0 = CLng(Me.FGrid.Col)
  loc_10241D2: If Not (var_A0 = CLng(1)) Then
  loc_10241DC:   If Not (var_A0 = CLng(3)) Then
  loc_10241E6:     If (var_A0 = CLng(4)) Then
  loc_10241E9:     End If
  loc_10241E9:   End If
  loc_10241ED:   Set var_C4 = Me.FGrid
  loc_1024211:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_102423E:   Set var_B4 = var_C4
  loc_1024250:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1024278:   Set var_88 = Me.TxtGrid
  loc_102427E:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1024286:   0 = var_B4.Text
  loc_102429F:   If (Len(var_9C) <= 1) Then
  loc_10242AE:     Set var_88 = Me.TxtGrid
  loc_10242B4:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_10242BC:     var_CA = var_B4.Text
  loc_10242CD:     Set var_B8 = Me.TxtGrid
  loc_10242D3:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_10242DB:     var_C4.Text = var_9C
  loc_10242EE:   End If
  loc_10242FA:   Set var_88 = Me.TxtGrid
  loc_1024300:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_102431A:   Set var_B8 = Me.TxtGrid
  loc_1024320:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1024328:   var_C4.SelStart = Len(var_B4.Text)
  loc_102433E: Else
  loc_1024345:   If (var_A0 = CLng(2)) Then
  loc_1024386:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1024398:   End If
  loc_1024398: End If
  loc_10243A2: If (CLng(KeyCode) <> &HD) Then
  loc_10243AA:   global_72 = &HFF
  loc_10243AD: End If
  loc_10243AD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1001D34
  'Data Table: 49FB5C
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_1001B3C: Set var_88 = Me.TopCtrl1
  loc_1001B42: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1001B5B: If (CStr() = "Browse") Then
  loc_1001B5E:   Exit Sub
  loc_1001B5F: End If
  loc_1001B63: Set var_88 = Me.TopCtrl1
  loc_1001B69: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1001B82: If (CStr() = "Edit") Then
  loc_1001B85:   Exit Sub
  loc_1001B86: End If
  loc_1001BA3: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1001BA6:   Exit Sub
  loc_1001BA7: End If
  loc_1001BB8: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_1001BDA:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1001C14:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_1001C36:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1001C4C:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1001C55:         Set var_110 = Me.FGrid
  loc_1001C70:       Else
  loc_1001C83:         Me.FGrid.Rows = 1
  loc_1001CA9:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_1001CB1:         Set var_110 = Me.FGrid
  loc_1001CDE:         Me.FGrid.FixedRows = 1
  loc_1001CE6:       End If
  loc_1001CE6:     End If
  loc_1001CE9:   Else
  loc_1001D0A:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_1001D1A:   End If
  loc_1001D1E:   Set var_88 = Me.FGrid
  loc_1001D2F: End If
  loc_1001D2F: Exit Sub
  loc_1001D30: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E45508
  'Data Table: 49FB5C
  Dim var_8C As TextBox
  loc_E454DC: Call Proc_268_43_E85F60()
  loc_E454EC: Set var_88 = Me.TxtGrid
  loc_E454F2: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E454FA: var_8C.Visible = False
  loc_E45506: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12B2AD4
  'Data Table: 49FB5C
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Variant
  Dim var_108 As TextBox
  Dim var_15C As String
  loc_12B24BE: Set var_88 = Me.TxtGrid
  loc_12B24C4: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_12B24D2: Proc_6_74_E226B0(var_8C)
  loc_12B24DE: Call Proc_268_43_E85F60(var_8C)
  loc_12B24F1: Set var_88 = Me.TxtGrid
  loc_12B24F7: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12B24FF: var_8C.MaxLength = 0
  loc_12B2517: If (Index = 0) Then
  loc_12B2530:   Me.FGrid.CellBackColor = CVar(CLng(global_96))
  loc_12B254B:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B258A:   Set var_108 = Me.TxtGrid
  loc_12B2590:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_12B2598:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_12B25C9:   var_114 = CLng(Me.FGrid.Col)
  loc_12B25D9:   If (var_114 = CLng(1)) Then
  loc_12B261D:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12B2620:       Exit Sub
  loc_12B2621:     End If
  loc_12B262C:     Set var_8C = Me.FGPoint
  loc_12B2644:     Proc_6_137_1193554(Me.DGRev, global_68, Index, var_8C)
  loc_12B2660:     Set var_88 = Me.TxtGrid
  loc_12B2666:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, &H32)
  loc_12B266E:     var_8C.MaxLength = var_114
  loc_12B268D:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B2695:     var_E4 = CVar(CLng(1)) 'Long
  loc_12B26C8:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_12B26D1:       Me.MoveFirst
  loc_12B26F1:       var_E4 = CVar(CLng(5)) 'Long
  loc_12B26FA:       Set var_8C = Me.FGrid
  loc_12B2711:       Proc_6_17_EAA2B0(var_12C, CVar(CStr(var_8C.TextMatrix))), var_E4, CVar(CLng(Me.FGrid.Row)))
  loc_12B2730:       var_110 = CStr("Code=" & var_12C)
  loc_12B273A:       Me.Find var_110, 0, 1
  loc_12B276A:       If (Me.EOF = &HFF) Then
  loc_12B2773:         Me.MoveFirst
  loc_12B2778:       End If
  loc_12B2778:     End If
  loc_12B277B:   Else
  loc_12B2782:     If (var_114 = CLng(3)) Then
  loc_12B2794:       Set var_88 = Me.TxtGrid
  loc_12B279A:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &HF, var_15C)
  loc_12B27A2:       var_8C.MaxLength = var_E4
  loc_12B27BB:       ReDim var_160(0 To 4)
  loc_12B27D2:       var_160(0) = "Monthly"
  loc_12B27E1:       var_160(1) = "Bi Monthly"
  loc_12B27F0:       var_160(2) = "Quarterly"
  loc_12B27FF:       var_160(3) = "Half Yearly"
  loc_12B280E:       var_160(4) = "Annual"
  loc_12B2825:       global_76 = Array(var_160)
  loc_12B2830:       Set var_108 = Me.ListView
  loc_12B284B:       Set var_8C = Me.TxtGrid
  loc_12B2865:       Set global_92 = Proc_6_66_EFF8FC(var_108, var_8C, Index, global_76, 5)
  loc_12B2883:       Set var_88 = Me.TxtGrid
  loc_12B2889:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, global_76)
  loc_12B28A3:       Set var_90 = Me.TxtGrid
  loc_12B28A9:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_12B28B1:       var_108.Tag = var_8C.Text
  loc_12B28C7:     Else
  loc_12B28CE:       If (var_114 = CLng(4)) Then
  loc_12B28DF:         Set var_88 = Me.TxtGrid
  loc_12B28E5:         Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12B28ED:         var_8C.MaxLength = 3
  loc_12B2906:         ReDim var_160(0 To &HB)
  loc_12B291D:         var_160(0) = "Jan"
  loc_12B292C:         var_160(1) = "Feb"
  loc_12B293B:         var_160(2) = "Mar"
  loc_12B294A:         var_160(3) = "Apr"
  loc_12B2959:         var_160(4) = "May"
  loc_12B2968:         var_160(5) = "Jun"
  loc_12B2977:         var_160(6) = "Jul"
  loc_12B2986:         var_160(7) = "Aug"
  loc_12B2995:         var_160(8) = "Sep"
  loc_12B29A4:         var_160(9) = "Oct"
  loc_12B29B3:         var_160(&HA) = "Nov"
  loc_12B29C2:         var_160(&HB) = "Dec"
  loc_12B29D9:         global_76 = Array(var_160)
  loc_12B29E4:         Set var_108 = Me.ListView
  loc_12B29FF:         Set var_8C = Me.TxtGrid
  loc_12B2A19:         Set global_92 = Proc_6_66_EFF8FC(var_108, var_8C, Index, global_76)
  loc_12B2A37:         Set var_88 = Me.TxtGrid
  loc_12B2A3D:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110)
  loc_12B2A45:         &HC = var_8C.Text
  loc_12B2A57:         Set var_90 = Me.TxtGrid
  loc_12B2A5D:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_12B2A65:         var_108.Tag = global_76
  loc_12B2A7B:       Else
  loc_12B2A82:         If (var_114 = CLng(2)) Then
  loc_12B2A94:           Set var_88 = Me.TxtGrid
  loc_12B2A9A:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_12B2AA2:           var_8C.MaxLength = 8
  loc_12B2AB7:           If (global_72 = 0) Then
  loc_12B2AC2:             var_110 = "{Home}+{End}"
  loc_12B2AC8:             Proc_303_0_FB9B68(var_110, 0)
  loc_12B2AD0:           End If
  loc_12B2AD0:         End If
  loc_12B2AD0:       End If
  loc_12B2AD0:     End If
  loc_12B2AD0:   End If
  loc_12B2AD0: End If
  loc_12B2AD0: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12F0A9C
  'Data Table: 49FB5C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C4 As Variant
  Dim var_98 As DataGrid
  Dim var_DC As DataGrid
  Dim Me As Recordset15
  Dim var_E8 As TextBox
  Dim var_F8 As TextBox
  loc_12F03E0: If (KeyCode = 0) Then
  loc_12F03ED:   If (CLng(Shift) = &H1B) Then
  loc_12F03FD:     Set var_8C = Me.TxtGrid
  loc_12F0403:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_12F041D:     Set var_98 = Me.TxtGrid
  loc_12F0423:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12F042B:     var_9C.Text = var_90.Tag
  loc_12F0442:     Set var_8C = Me.FGrid
  loc_12F045F:     Set var_8C = Me.TxtGrid
  loc_12F0465:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12F046D:     var_90.Visible = FGrid.DispID_8001
  loc_12F0487:     Set var_8C = Me.TxtGrid
  loc_12F048D:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12F0495:     var_90.MaxLength = 0
  loc_12F04A1:     Exit Sub
  loc_12F04A2:   End If
  loc_12F04C5:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_12F04D4:     Set var_8C = Me.TxtGrid
  loc_12F04DA:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B4)
  loc_12F04E2:     var_B0 = var_90.Left
  loc_12F04F9:     Me.DGRev.Left = CVar(var_B4)
  loc_12F0513:     Set var_98 = Me.TxtGrid
  loc_12F0519:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12F0521:     var_D8 = var_9C.Height
  loc_12F0532:     Set var_8C = Me.TxtGrid
  loc_12F0538:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12F054C:     var_C4 = CVar((var_90.Top + var_D8)) 'Single
  loc_12F055B:     Me.DGRev.Top = CVar(var_90.Top)
  loc_12F0578:     Set var_E8 = Me.TxtGrid
  loc_12F058A:     Set var_9C = Me.FGPoint
  loc_12F0595:     Set var_98 = Nothing
  loc_12F05C3:     Proc_6_69_134A198(Me.DGRev, var_E8, KeyCode, global_68, Shift, &HFF)
  loc_12F05E2:     var_B4 = Me.RecordCount
  loc_12F05F0:     If (var_B4 > 0) Then
  loc_12F05F7:       Set var_98 = Me.DGRev
  loc_12F0616:       Proc_6_138_106D6F8(var_98, global_68, KeyCode, Me.FGPoint, 1)
  loc_12F0624:     End If
  loc_12F062E:     If (CLng(Shift) = &HD) Then
  loc_12F0637:       Call Proc_268_46_125583C(KeyCode, var_DE, var_98)
  loc_12F0642:       If (var_DE = &HFF) Then
  loc_12F0688:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, 5)
  loc_12F0698:       End If
  loc_12F0698:     End If
  loc_12F069B:   Else
  loc_12F06A2:     If (var_B0 = CLng(2)) Then
  loc_12F06E5:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_12F06EE:         Call Proc_268_46_125583C(KeyCode, var_DE, 0, 2)
  loc_12F06F9:         If (var_DE = &HFF) Then
  loc_12F0730:           Set var_90 = Me.TxtGrid
  loc_12F073F:           Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_72, 5, 0)
  loc_12F074F:         End If
  loc_12F074F:       End If
  loc_12F0752:     Else
  loc_12F0759:       If (var_B0 = CLng(3)) Then
  loc_12F076B:         Set var_8C = Me.TxtGrid
  loc_12F0771:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, &HF, 3, 0)
  loc_12F0779:         var_90.MaxLength = 0
  loc_12F07A7:         Set var_8C = Me.TxtGrid
  loc_12F07AD:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_12F07B5:         var_9C = var_90.Left
  loc_12F07C7:         Set var_98 = Me.TxtGrid
  loc_12F07CD:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D8)
  loc_12F07D5:         0 = var_9C.Top
  loc_12F07E7:         Set var_DC = Me.TxtGrid
  loc_12F07ED:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E8)
  loc_12F0807:         Set var_EC = Me.TxtGrid
  loc_12F080D:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F8)
  loc_12F0815:         var_FC = var_F8.Width
  loc_12F085D:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12F088B:         If (CLng(Shift) = &HD) Then
  loc_12F0894:           Call Proc_268_46_125583C(KeyCode, var_DE, CInt(var_B4), CInt((var_D8 + var_E8.Height)))
  loc_12F089F:           If (var_DE = &HFF) Then
  loc_12F08AD:             Set var_9C = Me.TxtGrid
  loc_12F08D6:             Set var_90 = var_9C
  loc_12F08E5:             Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_72, 5)
  loc_12F08F5:           End If
  loc_12F08F5:         End If
  loc_12F08F8:       Else
  loc_12F08FF:         If (var_B0 = CLng(4)) Then
  loc_12F0911:           Set var_8C = Me.TxtGrid
  loc_12F0917:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 3, 0, 4)
  loc_12F091F:           var_90.MaxLength = 0
  loc_12F094D:           Set var_8C = Me.TxtGrid
  loc_12F0953:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_12F095B:           CInt(var_FC) = var_90.Left
  loc_12F096D:           Set var_98 = Me.TxtGrid
  loc_12F0973:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D8)
  loc_12F097B:           1300 = var_9C.Top
  loc_12F098D:           Set var_DC = Me.TxtGrid
  loc_12F0993:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E8)
  loc_12F09AD:           Set var_EC = Me.TxtGrid
  loc_12F09B3:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F8)
  loc_12F09BB:           var_FC = var_F8.Width
  loc_12F0A03:           Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12F0A31:           If (CLng(Shift) = &HD) Then
  loc_12F0A3A:             Call Proc_268_46_125583C(KeyCode, var_DE, CInt(var_B4), CInt((var_D8 + var_E8.Height)))
  loc_12F0A45:             If (var_DE = &HFF) Then
  loc_12F0A8B:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, 5)
  loc_12F0A9B:             End If
  loc_12F0A9B:           End If
  loc_12F0A9B:         End If
  loc_12F0A9B:       End If
  loc_12F0A9B:     End If
  loc_12F0A9B:   End If
  loc_12F0A9B: End If
  loc_12F0A9B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F2DC88
  'Data Table: 49FB5C
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F2DB7F: Proc_6_58_E054C0(arg_10)
  loc_F2DB90: If (KeyAscii = 0) Then
  loc_F2DBA6:   var_A0 = CLng(Me.FGrid.Col)
  loc_F2DBB6:   If (var_A0 = CLng(1)) Then
  loc_F2DBD5:     If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_F2DBE7:       var_A4 = "Name"
  loc_F2DC02:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_68, arg_10)
  loc_F2DC1C:       Set var_AC = Me.FGPoint
  loc_F2DC34:       Proc_6_138_106D6F8(Me.DGRev, global_68, KeyAscii, var_AC)
  loc_F2DC42:     End If
  loc_F2DC45:   Else
  loc_F2DC4C:     If (var_A0 = CLng(2)) Then
  loc_F2DC59:       Set var_8C = Me.TxtGrid
  loc_F2DC5F:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F2DC7A:       Proc_6_42_129A86C(var_AC, arg_10, 5, 2)
  loc_F2DC86:     End If
  loc_F2DC86:   End If
  loc_F2DC86: End If
  loc_F2DC86: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F8C6E0
  'Data Table: 49FB5C
  Dim var_A0 As Long
  loc_F8C584: On Error Goto loc_F8C6D8
  loc_F8C593: If (KeyCode = 0) Then
  loc_F8C5A9:   var_A0 = CLng(Me.FGrid.Col)
  loc_F8C5B9:   If (var_A0 = CLng(1)) Then
  loc_F8C5DF:     If ((Shift <> &HD) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_F8C5F0:       Call TxtGrid_KeyDown(KeyCode, global_74)
  loc_F8C61F:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_68, Shift, "Name")
  loc_F8C62E:     End If
  loc_F8C631:   Else
  loc_F8C638:     If Not (var_A0 = CLng(3)) Then
  loc_F8C642:       If (var_A0 = CLng(4)) Then
  loc_F8C645:       End If
  loc_F8C667:       If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F8C678:         Call TxtGrid_KeyDown(KeyCode, global_74)
  loc_F8C67D:       End If
  loc_F8C698:       If (Me.FrmList.Visible = &HFF) Then
  loc_F8C6C7:         Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, KeyCode, Shift, global_92)
  loc_F8C6D7:       End If
  loc_F8C6D7:     End If
  loc_F8C6D7:   End If
  loc_F8C6D7: End If
  loc_F8C6D7: Exit Sub
  loc_F8C6D8: ' Referenced from: F8C584
  loc_F8C6D8: Proc_6_60_E62BC4(0, &HFF, 0)
  loc_F8C6DD: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20A78
  'Data Table: 49FB5C
  Dim arg_10 As Integer
  loc_E20A60: If (Cancel = 0) Then
  loc_E20A69:   Call Proc_268_46_125583C(Cancel, var_88)
  loc_E20A72:   arg_10 = Not(var_88)
  loc_E20A75: End If
  loc_E20A75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAEDB8
  'Data Table: 49FB5C
  Dim var_8C As Label
  Dim var_94 As TextBox
  loc_EAED28: On Error Goto loc_EAEDB2
  loc_EAED52: Call Proc_268_42_E7AF24(Proc_5_1_100CB50("ADD", Me))
  loc_EAED5D: Call Proc_268_40_F17F70(global_60)
  loc_EAED6F: Me.LblUser.Caption = vbNullString
  loc_EAED84: Me.LblLDt.Caption = vbNullString
  loc_EAED97: Set var_8C = Me.Txt
  loc_EAED9D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EAEDA5: var_94.SetFocus
  loc_EAEDB1: Exit Sub
  loc_EAEDB2: ' Referenced from: EAED28
  loc_EAEDB2: Proc_6_60_E62BC4(var_94)
  loc_EAEDB7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EEBE70
  'Data Table: 49FB5C
  loc_EEBDB0: On Error Goto loc_EEBE69
  loc_EEBDEA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EEBE14:   Call Proc_268_42_E7AF24(Proc_5_1_100CB50("INI", Me))
  loc_EEBE27:   Set var_10C = Me.TopCtrl1
  loc_EEBE2D:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030019(True)
  loc_EEBE3E:   Set var_10C = Me.TopCtrl1
  loc_EEBE44:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030016(False)
  loc_EEBE55:   Set var_10C = Me.TopCtrl1
  loc_EEBE5B:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030017(False)
  loc_EEBE63:   Call Proc_268_41_1325140(global_60)
  loc_EEBE68: End If
  loc_EEBE68: Exit Sub
  loc_EEBE69: ' Referenced from: EEBDB0
  loc_EEBE69: Proc_6_60_E62BC4()
  loc_EEBE6E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E181D8
  'Data Table: 49FB5C
  loc_E181CD: Me.Global.Unload Me
  loc_E181D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC9F7C
  'Data Table: 49FB5C
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EC9ED8: On Error Goto loc_EC9F73
  loc_EC9EF5: If (Me.Recordset15.RecordCount <= 0) Then
  loc_EC9EFE:   var_B8 = "Information"
  loc_EC9F19:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC9F29:   Exit Sub
  loc_EC9F2A: End If
  loc_EC9F31: var_10C = "Select DISTINCT (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103)) AS Code,MC.Name as Category,Convert(Varchar(11),MR.AppDate,106) As AppDate FROM (MemCatRevWise MR Left Join MemCatMast MC On MR.MemCat=MC.Code) Where (MR.LOGSITE_CODE='" & MemVar_1F92078
  loc_EC9F38: MemVar_1F920E4 = var_10C & "' or MR.LOGSITE_CODE='HO') Order By (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103))"
  loc_EC9F45: MemVar_1F92120 = Me
  loc_EC9F52: Proc_6_126_F1BCC0("3000,1000")
  loc_EC9F6D: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC9F72: Exit Sub
  loc_EC9F73: ' Referenced from: EC9ED8
  loc_EC9F73: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC9F78: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E44E68
  'Data Table: 49FB5C
  loc_E44E58: Proc_5_0_110649C(&HFF, Me)
  loc_E44E60: Call Proc_268_41_1325140(global_60)
  loc_E44E65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E446FC
  'Data Table: 49FB5C
  loc_E446EC: Proc_5_0_110649C(&HFF, Me)
  loc_E446F4: Call Proc_268_41_1325140(global_60)
  loc_E446F9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E44A1C
  'Data Table: 49FB5C
  loc_E44A0C: Proc_5_0_110649C(&HFF, Me)
  loc_E44A14: Call Proc_268_41_1325140(global_60)
  loc_E44A19: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E452B4
  'Data Table: 49FB5C
  loc_E452A4: Proc_5_0_110649C(&HFF, Me)
  loc_E452AC: Call Proc_268_41_1325140(global_60)
  loc_E452B1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E2154C
  'Data Table: 49FB5C
  Dim Me As Recordset15
  loc_E21533: Me.Requery -1
  loc_E21543: Me.Requery -1
  loc_E21548: Exit Sub
  loc_E21549: () = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13AE120
  'Data Table: 49FB5C
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_130 As Variant
  Dim unk_49FB72 As Connection15
  Dim var_90 As TextBox
  Dim var_D0 As Variant
  Dim var_1AC As MSHFlexGrid
  Dim var_170 As Variant
  Dim var_1F0 As MSHFlexGrid
  Dim var_554 As Double
  Dim var_298 As Variant
  Dim var_32C As Variant
  Dim var_3BC As Variant
  Dim var_98 As String
  Dim var_110 As Variant
  Dim var_190 As Variant
  Dim var_1BC As Variant
  Dim var_2B8 As Variant
  Dim var_484 As Variant
  Dim var_1A8 As TextBox
  Dim var_19C As String
  loc_13AD888: On Error Goto loc_13AE0CC
  loc_13AD88F: var_86 = CByte(0) 'Byte
  loc_13AD89E: Set var_8C = Me.Txt
  loc_13AD8A4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_13AD8CD: If (Proc_6_27_EA565C(var_90, "Category") = 0) Then
  loc_13AD8D7:   Call Txt_GotFocus()
  loc_13AD8DC:   Exit Sub
  loc_13AD8DD: End If
  loc_13AD8E8: Set var_8C = Me.Txt
  loc_13AD8EE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_90)
  loc_13AD917: If (Proc_6_27_EA565C(var_90, "App. Date") = 0) Then
  loc_13AD921:   Call Txt_GotFocus()
  loc_13AD926:   Exit Sub
  loc_13AD927: End If
  loc_13AD92A: Call Proc_268_44_FC9FD8(var_9A, CInt(1))
  loc_13AD935: If (var_9A = &HFF) Then
  loc_13AD938:   Exit Sub
  loc_13AD939: End If
  loc_13AD95E: For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B0 'Integer
  loc_13AD98F:   If ((var_88 > 1) And (CLng(var_88) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_13AD996:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_13AD99E:     var_E0 = CVar(CLng(5)) 'Long
  loc_13AD9B8:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13AD9BE:     var_110 = Trim(var_100)
  loc_13AD9DA:     If (var_110 = vbNullString) Then
  loc_13AD9F6:       MsgBox("Define revenue ", &H40, var_100, var_110, var_130)
  loc_13ADA06:       Exit Sub
  loc_13ADA07:     End If
  loc_13ADA07:   End If
  loc_13ADA0B:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_13ADA13:   var_E0 = CVar(CLng(5)) 'Long
  loc_13ADA4F:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_13ADA56:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_13ADA5E:     var_E0 = CVar(CLng(3)) 'Long
  loc_13ADA9A:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_13ADAA1:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_13ADAA9:       var_E0 = CVar(CLng(1)) 'Long
  loc_13ADAF0:       MsgBox("Fill Nature For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_13ADB0D:       Set var_8C = Me.FGrid
  loc_13ADB1E:       Exit Sub
  loc_13ADB1F:     End If
  loc_13ADB23:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_13ADB2B:     var_E0 = CVar(CLng(4)) 'Long
  loc_13ADB67:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_13ADB6E:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_13ADB76:       var_E0 = CVar(CLng(1)) 'Long
  loc_13ADBBD:       MsgBox("Fill Month For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_13ADBDA:       Set var_8C = Me.FGrid
  loc_13ADBEB:       Exit Sub
  loc_13ADBEC:     End If
  loc_13ADBEC:   End If
  loc_13ADBEF: Next var_B0 'Integer
  loc_13ADBFD: unk_49FB72.BeginTrans var_194
  loc_13ADC06: var_86 = CByte(1) 'Byte
  loc_13ADC2F: For var_198 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_198 'Integer
  loc_13ADC39:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_13ADC41:   var_E0 = CVar(CLng(5)) 'Long
  loc_13ADC5B:   var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13ADC7D:   If CBool(Trim(var_100) <> vbNullString) Then
  loc_13ADC8E:     Set var_8C = Me.Txt
  loc_13ADC94:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_90, var_19C)
  loc_13ADC9C:     var_E0 = var_90.Tag
  loc_13ADCAC:     Set var_94 = Me.Txt
  loc_13ADCB2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1A8)
  loc_13ADCC1:     Proc_6_7_F25D88(var_100, CVar(var_1A8))
  loc_13ADCCA:     var_D0 = CVar(CLng(var_88)) 'Long
  loc_13ADCE1:     var_170 = Me.FGrid.TextMatrix)
  loc_13ADD02:     Set var_1F0 = Me.FGrid
  loc_13ADD1B:     var_554 = Val(CStr(var_1F0.TextMatrix)))
  loc_13ADD39:     var_298 = Me.FGrid.TextMatrix)
  loc_13ADD60:     var_32C = Me.FGrid.TextMatrix)
  loc_13ADD71:     var_3BC = CVar(Proc_6_15_EF2C1C(var_32C, CVar(CLng(4)), CVar(CLng(var_88)), var_298, CVar(CLng(3)), CVar(CLng(var_88)), var_554)) 'String
  loc_13ADD77:     Proc_6_7_F25D88(var_3CC, var_3BC, CVar(CLng(2)), CVar(CLng(var_88)), var_170)
  loc_13ADD80:     Set var_400 = Me.TopCtrl1
  loc_13ADD86:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CVar(CLng(5)))
  loc_13ADDD1:     var_98 = "Insert Into MemCatRevWise (MemCat,AppDate,RevCode,Amount,Nature," & "AppMonth,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) "
  loc_13ADE28:     var_2B8 = CVar(var_98 & " Values ('" & var_19C & "',") & var_100 & ",'" & CVar(CStr(var_170)) & "'," & CVar(var_554) & ",'" & CVar(CStr(var_298)) 
  loc_13ADE6F:     var_484 = var_2B8 & "','" & CVar(CStr(var_32C)) & "','" & CVar(MemVar_1F920C8) & "'," & var_3CC & ",'" & IIf((CStr(var_410) = "Add"), "A", "E") 
  loc_13ADEAC:     unk_49FB72.Execute CStr(var_484 & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_548, -1
  loc_13ADF26:   End If
  loc_13ADF29: Next var_198 'Integer
  loc_13ADF34: unk_49FB72.CommitTrans
  loc_13ADF3D: var_86 = CByte(0) 'Byte
  loc_13ADF4C: Set var_1AC = Me.Txt
  loc_13ADF52: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_13ADF65: Set var_8C = Me.Txt
  loc_13ADF6B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_90)
  loc_13ADF7B: var_100 = CVar(var_90.Tag) 'String
  loc_13ADF91: Set var_94 = Me.Txt
  loc_13ADF97: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_19C)
  loc_13ADF9F: 6 = var_1A8.Tag
  loc_13ADFAC: var_AC = Space((var_100 - Len(var_19C)))
  loc_13ADFB4: var_110 = (var_1F0 + CVar(var_1A8))
  loc_13ADFB8: var_C0 = "**"
  loc_13ADFBD: var_130 = (CVar(var_90.Tag & " Values ('" & var_19C & "',") + var_C0)
  loc_13ADFE8: var_1BC = (1 + Format(CVar(var_1F0), "dd/mm/yyyy"))
  loc_13AE02C: Me.Recordset15.Requery -1
  loc_13AE05C: Me.Recordset15.Find "SearchCode ='" & CStr(CVar(var_90.Tag & " Values ('" & var_19C & "',") & var_100 & ",'" & CVar(CStr("dd/mm/yyyy"))) & "'", 0, 1
  loc_13AE06C: Set var_8C = Me.TopCtrl1
  loc_13AE072: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_C0)
  loc_13AE08B: If (CStr(1) = "Add") Then
  loc_13AE08E:   Call TopCtrl1_UnknownEvent_A()
  loc_13AE093:   Exit Sub
  loc_13AE094: End If
  loc_13AE0AD: var_98 = "INI"
  loc_13AE0BB: Call Proc_268_42_E7AF24(Proc_5_1_100CB50(var_98, Me), global_60)
  loc_13AE0C6: Call Proc_268_41_1325140(CVar(var_98 & " Values ('" & "SearchCode ='" & CStr(CVar(var_90.Tag & " Values ('" & var_19C & "',") & var_100 & ",'" & CVar(CStr("dd/mm/yyyy"))) & "'" & "',") & var_100)
  loc_13AE0CB: Exit Sub
  loc_13AE0CC: ' Referenced from: 13AD888
  loc_13AE0D5: If (CInt(var_86) = 1) Then
  loc_13AE0DE:   unk_49FB72.RollbackTrans
  loc_13AE0E3: End If
  loc_13AE0EB: Set var_8C = Err()
  loc_13AE0F1: Call 0.Method_arg_2C (var_98)
  loc_13AE10A: MsgBox(CVar(var_98), &H10, var_100, CVar(var_98 & " Values ('" & "SearchCode ='" & CStr(CVar(var_90.Tag & " Values ('" & var_19C & "',") & var_100 & ",'" & CVar(CStr("dd/mm/yyyy"))) & "'" & "',"), CVar(var_98 & " Values ('" & "SearchCode ='" & CStr(CVar(var_90.Tag & " Values ('" & var_19C & "',") & var_100 & ",'" & CVar(CStr("dd/mm/yyyy"))) & "'" & "',") & var_100)
  loc_13AE11D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FF51A0
  'Data Table: 49FB5C
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FF4FC6: Set var_88 = Me.Txt
  loc_FF4FCC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FF4FDA: Proc_6_74_E226B0(var_8C)
  loc_FF4FE6: Call Proc_268_43_E85F60(var_8C)
  loc_FF4FEE: var_92 = Index
  loc_FF4FF9: If (var_92 = CInt(0)) Then
  loc_FF5013:   If (Me.RecordCount > 0) Then
  loc_FF5021:     Set var_8C = Me.FGPoint
  loc_FF5039:     Proc_6_137_1193554(Me.DGCat, global_64, Index)
  loc_FF5047:   End If
  loc_FF5095:   Set var_88 = Me.Txt
  loc_FF509B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FF50A3:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FF50BB:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FF50BE:     Exit Sub
  loc_FF50BF:   End If
  loc_FF50CC:   Set var_88 = Me.Txt
  loc_FF50D2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FF50DA:   var_A0 = var_8C.Text
  loc_FF50E2:   var_D4 = CVar(var_A0) 'String
  loc_FF5127:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FF5130:     Me.MoveFirst
  loc_FF5155:     Set var_88 = Me.Txt
  loc_FF515B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_FF5163:     0 = var_8C.Text
  loc_FF5171:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_FF5187:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_FF519F:   End If
  loc_FF519F: End If
  loc_FF519F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F3E9FC
  'Data Table: 49FB5C
  loc_F3E8F6: If (CLng(Shift) = &H1B) Then
  loc_F3E8F9:   Call Proc_268_43_E85F60()
  loc_F3E8FE:   Exit Sub
  loc_F3E8FF: End If
  loc_F3E90D: If (KeyCode = CInt(0)) Then
  loc_F3E928:   Set var_9C = Nothing
  loc_F3E933:   Set var_98 = Nothing
  loc_F3E961:   Proc_6_69_134A198(Me.DGCat, Me.Txt, KeyCode, global_64, Shift, 0)
  loc_F3E975: End If
  loc_F3E9B0: If ((CBool(Me.DGCat.Visible) = 0) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_F3E9C8:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F3E9D1:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_F3E9D6:   End If
  loc_F3E9EB:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F3E9F4:     Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_F3E9F9:   End If
  loc_F3E9F9: End If
  loc_F3E9F9: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E06F40
  'Data Table: 49FB5C
  Dim var_86 As Integer
  loc_E06F33: Proc_6_58_E054C0(arg_10)
  loc_E06F3B: var_86 = KeyAscii
  loc_E06F3E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA5344
  'Data Table: 49FB5C
  loc_EA52D6: If (KeyCode = CInt(0)) Then
  loc_EA52F5:   If (CBool(Me.DGCat.Visible) = &HFF) Then
  loc_EA5309:     var_A4 = "Name"
  loc_EA532D:     Proc_6_68_129FB34(Me.DGCat, Me.Txt, KeyCode, global_64)
  loc_EA5340:   End If
  loc_EA5340: End If
  loc_EA5340: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F37C
  'Data Table: 49FB5C
  loc_E4F35A: Set var_88 = Me.Txt
  loc_E4F360: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F36E: Proc_6_73_E22704(var_8C)
  loc_E4F37A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10CFE60
  'Data Table: 49FB5C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_C8 As TextBox
  loc_10CFB63: var_86 = Cancel
  loc_10CFB6E: If (var_86 = CInt(0)) Then
  loc_10CFB7C:   Set var_8C = Me.Txt
  loc_10CFB82:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_10CFB8A:   var_98 = "Category"
  loc_10CFBAB:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_10CFBB9:     Set var_8C = Me.Txt
  loc_10CFBBF:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_10CFBC7:     var_90.SetFocus
  loc_10CFBD5:     arg_10 = &HFF
  loc_10CFBD8:     Exit Sub
  loc_10CFBD9:   End If
  loc_10CFC27:   Set var_8C = Me.Txt
  loc_10CFC2D:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_10CFC35:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_10CFC4D:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_10CFC5D:     Set var_8C = Me.Txt
  loc_10CFC63:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10CFC6B:     var_90.Text = vbNullString
  loc_10CFC84:     Set var_8C = Me.Txt
  loc_10CFC8A:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10CFC92:     var_90.Tag = vbNullString
  loc_10CFCA1:   Else
  loc_10CFCDC:     Set var_94 = Me.Txt
  loc_10CFCE2:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10CFCEA:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10CFD1D:     var_90 = Me.Fields.Item("Code")
  loc_10CFD3B:     Set var_94 = Me.Txt
  loc_10CFD41:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10CFD49:     var_B4.Tag = CStr(var_90.Value)
  loc_10CFD5F:   End If
  loc_10CFD62: Else
  loc_10CFD6A:   If (var_86 = CInt(1)) Then
  loc_10CFD78:     Set var_8C = Me.Txt
  loc_10CFD7E:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_10CFDA7:     If (Proc_6_27_EA565C(var_90, "App. Date") = 0) Then
  loc_10CFDB5:       Set var_8C = Me.Txt
  loc_10CFDBB:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_10CFDC3:       var_90.SetFocus
  loc_10CFDD1:       arg_10 = &HFF
  loc_10CFDD4:       Exit Sub
  loc_10CFDD5:     End If
  loc_10CFDDF:     Set var_8C = Me.Txt
  loc_10CFDE5:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10CFE05:     Set var_B4 = Me.Txt
  loc_10CFE0B:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_10CFE13:     var_C8.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_10CFE39:     Me.FGrid.Row = 1
  loc_10CFE54:     Me.FGrid.Col = 1
  loc_10CFE5C:   End If
  loc_10CFE5C: End If
  loc_10CFE5C: Exit Sub
End Sub

Public Function global_52Get() '4A08AC
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4A08BB
  global_52 = Value
End Sub

Public Function global_56Get() '4A08CA
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4A08D9
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E9BF90
  'Data Table: 49FB5C
  loc_E9BF16: On Error Goto loc_E9BF89
  loc_E9BF22: Me.Recordset15.MoveFirst
  loc_E9BF4F: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E9BF7B: Proc_5_0_110649C(&HFF, Me, global_60)
  loc_E9BF83: Call Proc_268_41_1325140(0)
  loc_E9BF88: Exit Sub
  loc_E9BF89: ' Referenced from: E9BF16
  loc_E9BF89: Proc_6_60_E62BC4(var_A0)
  loc_E9BF8E: Exit Sub
End Sub

Public Sub Proc_268_39_11171AC
  'Data Table: 49FB5C
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_104 As TextBox
  Dim var_10C As DataGrid
  Dim var_110 As TextBox
  loc_1116E60: Set var_88 = Me.FGrid
  loc_1116E6F: var_88.Height = CVar(CDbl(4250))
  loc_1116E80: var_88.Width = CVar(CDbl(8500))
  loc_1116E91: var_88.Cols = 6
  loc_1116EA2: var_88.Rows = 2
  loc_1116EBB: global_96 = CStr(CLng(var_88.BackColor))
  loc_1116EC8: var_98 = CVar(CLng(5)) 'Long
  loc_1116ECD: var_CC = &H64
  loc_1116ED9: LateIdCallSt
  loc_1116EE4: var_98 = CVar(CLng(5)) 'Long
  loc_1116EEF: var_CC = CVar(CInt(4)) 'Integer
  loc_1116EF6: LateIdCallSt
  loc_1116EFE: var_98 = 1
  loc_1116F0A: var_CC = CVar(CLng(5)) 'Long
  loc_1116F0F: var_EC = "1"
  loc_1116F18: LateIdCallSt
  loc_1116F20: var_98 = 0
  loc_1116F2C: var_CC = CVar(CLng(1)) 'Long
  loc_1116F31: var_EC = "Revenue"
  loc_1116F3A: LateIdCallSt
  loc_1116F45: var_98 = CVar(CLng(1)) 'Long
  loc_1116F4A: var_CC = &HBB8
  loc_1116F56: LateIdCallSt
  loc_1116F61: var_98 = CVar(CLng(1)) 'Long
  loc_1116F6C: var_CC = CVar(CInt(1)) 'Integer
  loc_1116F73: LateIdCallSt
  loc_1116F7B: var_98 = 0
  loc_1116F87: var_CC = CVar(CLng(2)) 'Long
  loc_1116F8C: var_EC = "Amount"
  loc_1116F95: LateIdCallSt
  loc_1116FA0: var_98 = CVar(CLng(2)) 'Long
  loc_1116FA5: var_CC = &H4B0
  loc_1116FB1: LateIdCallSt
  loc_1116FBC: var_98 = CVar(CLng(2)) 'Long
  loc_1116FC7: var_CC = CVar(CInt(7)) 'Integer
  loc_1116FCE: LateIdCallSt
  loc_1116FD6: var_98 = 0
  loc_1116FE2: var_CC = CVar(CLng(3)) 'Long
  loc_1116FE7: var_EC = "Nature"
  loc_1116FF0: LateIdCallSt
  loc_1116FFB: var_98 = CVar(CLng(3)) 'Long
  loc_1117000: var_CC = &H708
  loc_111700C: LateIdCallSt
  loc_1117017: var_98 = CVar(CLng(3)) 'Long
  loc_1117022: var_CC = CVar(CInt(1)) 'Integer
  loc_1117029: LateIdCallSt
  loc_1117031: var_98 = 0
  loc_111703D: var_CC = CVar(CLng(4)) 'Long
  loc_1117042: var_EC = "Month"
  loc_111704B: LateIdCallSt
  loc_1117056: var_98 = CVar(CLng(4)) 'Long
  loc_111705B: var_CC = &H320
  loc_1117067: LateIdCallSt
  loc_1117072: var_98 = CVar(CLng(4)) 'Long
  loc_111707D: var_CC = CVar(CInt(1)) 'Integer
  loc_1117084: LateIdCallSt
  loc_111708C: var_98 = 0
  loc_1117098: var_CC = CVar(CLng(0)) 'Long
  loc_111709D: var_EC = "O"
  loc_11170A6: LateIdCallSt
  loc_11170B1: var_98 = CVar(CLng(0)) 'Long
  loc_11170B6: var_CC = &H64
  loc_11170C2: LateIdCallSt
  loc_11170CD: var_98 = CVar(CLng(0)) 'Long
  loc_11170DF: LateIdCallSt
  loc_11170E7: var_98 = True
  loc_11170EE: var_88.Enabled = var_98
  loc_1117101: Set var_100 = Me.Txt
  loc_1117107: Call 0.Method_Proc_268_39_11171AC0 (CInt(0), var_104, var_108, var_88, CVar(CInt(4)), var_98, var_88)
  loc_111710F: var_CC = var_104.Left
  loc_1117117: var_98 = CVar(var_108) 'Single
  loc_1117126: Me.DGCat.Left = var_98
  loc_1117142: Set var_10C = Me.Txt
  loc_1117148: Call 0.Method_Proc_268_39_11171AC0 (CInt(0), var_110, var_114, var_98, var_88)
  loc_1117150: var_EC = var_110.Height
  loc_1117163: Set var_100 = Me.Txt
  loc_1117169: Call 0.Method_Proc_268_39_11171AC0 (CInt(0), var_104, var_108)
  loc_1117171: var_CC = var_104.Top
  loc_1117181: var_98 = CVar(((var_108 + var_114) + CDbl(&H19))) 'Single
  loc_1117190: Me.DGCat.Top = var_98
  loc_11171A4: Set var_88 = Nothing 
  loc_11171A8: Exit Sub
End Sub

Public Sub Proc_268_40_F17F70
  'Data Table: 49FB5C
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F17E86: Set var_8C = Me.Txt
  loc_F17E8C: Call 0.Method_Proc_268_40_F17F70C (var_8E, var_86)
  loc_F17E9C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F17EB2:   Set var_8C = Me.Txt
  loc_F17EB8:   Call 0.Method_Proc_268_40_F17F700 (CInt(var_86), var_98)
  loc_F17EC0:   var_98.Text = vbNullString
  loc_F17EDC:   Set var_8C = Me.Txt
  loc_F17EE2:   Call 0.Method_Proc_268_40_F17F700 (CInt(var_86), var_98)
  loc_F17EEA:   var_98.Tag = vbNullString
  loc_F17EF9: Next var_92 'Byte
  loc_F17F12: Me.FGrid.Rows = 1
  loc_F17F2F: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F17F37: Set var_98 = Me.FGrid
  loc_F17F66: Me.FGrid.FixedRows = 1
  loc_F17F6E: Exit Sub
End Sub

Public Sub Proc_268_41_1325140
  'Data Table: 49FB5C
  Dim unk_49FB72 As Connection15
  Dim var_90 As Recordset15
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_C4 As Fields15
  Dim var_E8 As Variant
  Dim var_10C As Variant
  Dim var_FC As Variant
  Dim var_C0 As String
  Dim var_1D4 As Variant
  Dim var_88 As Recordset15
  Dim var_D8 As TextBox
  Dim var_8A As Integer
  Dim var_14C As Variant
  loc_13249EC: On Error Goto loc_1325137
  loc_1324A09: If (Me.Recordset15.RecordCount > 0) Then
  loc_1324A0C:   Call Proc_268_40_F17F70()
  loc_1324A27:   unk_49FB72.Execute "Select * from MemCatRevWise", var_B4, -1
  loc_1324A32:   Set var_90 = var_B8
  loc_1324A4F:   If (var_90.RecordCount > 0) Then
  loc_1324A61:     var_B8 = var_90.Fields
  loc_1324AF5:     var_18C = IIf((Proc_6_38_E68A98(CVar(var_B8.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1324B3A:     Me.LblUser.Caption = CStr(var_B8 & CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_Name")), var_18C)))
  loc_1324BAC:     var_C4 = var_90.Fields
  loc_1324BB4:     var_D8 = var_C4.Item("U_AE")
  loc_1324BF0:     var_14C = IIf((Proc_6_38_E68A98(CVar(var_D8)) = "E"), "Last Update : ", "entdt : ")
  loc_1324C48:     var_1D4 = IIf((Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_AE"))) = "A"), "Created By : ", var_14C) & CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_EntDt")))) 
  loc_1324C5A:     Me.LblLDt.Caption = CStr(var_1D4)
  loc_1324C92:   End If
  loc_1324CA6:   var_C0 = "Select MemCatMast.Code AS CatCode,MemCatMast.Name AS CatName,MembershipRevMast.Code As RevCode,MembershipRevMast.Description, MR.AppDate , MR.Amount , MR.Nature, MR.AppMonth From ((MemCatRevWise MR Left Join MemCatMast On MR.MemCat = MemCatMast.Code) LEFT JOIN MembershipRevMast ON MR.RevCode = MembershipRevMast.Code) Where MR.Site_Code='" & MemVar_1F92070
  loc_1324CBB:   var_E8 = CVar(var_C0 & "' and (MR.LOGSITE_CODE='" & MemVar_1F92078 & "' or MR.LOGSITE_CODE='HO') and (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103))='") 'String
  loc_1324D05:   unk_49FB72.Execute CStr(CVar(var_D8) & Me.Recordset15.Fields.Item("SearchCode").Value & "'"), var_14C, -1
  loc_1324D10:   Set var_88 = var_C4
  loc_1324D48:   If (var_88.RecordCount > 0) Then
  loc_1324D81:     Set var_C4 = Me.Txt
  loc_1324D87:     Call 0.Method_Proc_268_41_13251400 (CInt(0), var_D8)
  loc_1324D8F:     var_D8.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CatName")))
  loc_1324DD9:     Set var_C4 = Me.Txt
  loc_1324DDF:     Call 0.Method_Proc_268_41_13251400 (CInt(0), var_D8)
  loc_1324DE7:     var_D8.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CatCode")))
  loc_1324E4D:     Set var_C4 = Me.Txt
  loc_1324E53:     Call 0.Method_Proc_268_41_13251400 (CInt(1), var_D8, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/mmm/yyyy")))
  loc_1324E5B:     var_D8.Text = 1
  loc_1324E77:     var_8A = 1
  loc_1324E8D:     Me.FGrid.Rows = 1
  loc_1324E95:     ' Referenced from: 13250AE
  loc_1324EA4:     If Not(var_88.EOF) Then
  loc_1324EA7:       var_A4 = vbNullString
  loc_1324EB1:       Set var_B8 = Me.FGrid
  loc_1324EC6:       Set var_1EC = Me.FGrid
  loc_1324ECD:       var_D4 = CVar(CLng(var_8A)) 'Long
  loc_1324ED5:       var_10C = CVar(CLng(5)) 'Long
  loc_1324F05:       var_E8 = CVar(CStr(var_88.Fields.Item("RevCode").Value)) 'String
  loc_1324F0C:       LateIdCallSt
  loc_1324F26:       var_D4 = CVar(CLng(var_8A)) 'Long
  loc_1324F5B:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Description")), CVar(CLng(1)), var_D4, var_1EC, var_E8, CVar(CLng(1)))) 'String
  loc_1324F62:       LateIdCallSt
  loc_1324F9A:       Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("Amount")), var_1EC, var_E8, var_D4)
  loc_1324FA3:       var_FC = CVar(CLng(var_8A)) 'Long
  loc_1324FDB:       LateIdCallSt
  loc_132502C:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nature")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1EC, CVar(CStr(Format(var_E8, "0.00"))), 1, 1)) 'String
  loc_1325033:       LateIdCallSt
  loc_132507E:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("AppMonth")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1EC, var_E8, CVar(CLng(2)))) 'String
  loc_1325085:       LateIdCallSt
  loc_1325099:       Set var_1EC = Nothing 
  loc_13250A3:       var_8A = (var_8A + 1)
  loc_13250A9:       var_88.MoveNext
  loc_13250AE:       GoTo loc_1324E95
  loc_13250B1:     End If
  loc_13250B1:   End If
  loc_13250B1:   var_A4 = 0
  loc_13250BB:   Set var_B8 = Me.FGrid
  loc_13250E8:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_13250EB:     var_A4 = vbNullString
  loc_13250F5:     Set var_B8 = Me.FGrid
  loc_1325106:   End If
  loc_1325106:   var_A4 = 1
  loc_1325119:   Me.FGrid.FixedRows = var_A4
  loc_1325124: Else
  loc_1325124:   Call Proc_268_40_F17F70(FGrid.DispID_10000, var_A4, FGrid.DispID_2E, var_A4, var_8A, var_1EC)
  loc_1325129: End If
  loc_1325129: Call Proc_268_43_E85F60(var_E8, var_FC, FGrid.DispID_10000)
  loc_1325133: Set var_88 = Nothing
  loc_1325136: Exit Sub
  loc_1325137: ' Referenced from: 13249EC
  loc_1325137: Proc_6_60_E62BC4(var_A4, var_8A)
  loc_132513C: Exit Sub
End Sub

Public Sub Proc_268_42_E7AF24(arg_C) 'E7AF24
  'Data Table: 49FB5C
  Dim var_98 As TextBox
  loc_E7AED2: Set var_8C = Me.Txt
  loc_E7AED8: Call 0.Method_Proc_268_42_E7AF24C (var_8E, var_86)
  loc_E7AEE8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7AEFE:   Set var_8C = Me.Txt
  loc_E7AF04:   Call 0.Method_Proc_268_42_E7AF240 (CInt(var_86), var_98)
  loc_E7AF0C:   var_98.Enabled = arg_C
  loc_E7AF1B: Next var_92 'Byte
  loc_E7AF21: Exit Sub
End Sub

Public Sub Proc_268_43_E85F60
  'Data Table: 49FB5C
  loc_E85F0C: If (CBool(Me.DGCat.Visible) = &HFF) Then
  loc_E85F1E:   Me.DGCat.Visible = False
  loc_E85F26: End If
  loc_E85F42: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_E85F54:   Me.DGRev.Visible = False
  loc_E85F5C: End If
  loc_E85F5C: Exit Sub
End Sub

Public Sub Proc_268_44_FC9FD8
  'Data Table: 49FB5C
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_49FB72 As Connection15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  loc_FC9E73: If (Me.RecordCount = 0) Then
  loc_FC9E76:   Proc_268_44_FC9FD8 = 
  loc_FC9E7C: End If
  loc_FC9EB7: Set var_94 = Me.Txt
  loc_FC9EBD: Call 0.Method_Proc_268_44_FC9FD80 (CInt(0), var_98, var_9C, "Select Count(*) From MemCatRevWise Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (MemCat='", var_130, -1)
  loc_FC9ED5: var_DC = CVar(var_138 & var_9C & "' And AppDate=") 'String
  loc_FC9EE3: Set var_A8 = Me.Txt
  loc_FC9EE9: Call 0.Method_Proc_268_44_FC9FD80 (CInt(1), var_AC, var_DC)
  loc_FC9EF8: Proc_6_7_F25D88(var_CC, CVar(var_AC), 0)
  loc_FC9F00: var_EC = var_14C & var_CC 
  loc_FC9F17: unk_49FB72.Execute CStr(var_EC & ")"), var_15C, 
  loc_FC9F1F:  = var_98.Tag.Fields
  loc_FC9F27:  = var_138.Item()
  loc_FC9F2F:  = var_14C.Value
  loc_FC9F6C: If (var_15C > 0) Then
  loc_FC9F90:   MsgBox("Duplicate Entry", &H40, "Information", var_DC, var_EC)
  loc_FC9FAB:   Set var_94 = Me.Txt
  loc_FC9FB1:   Call 0.Method_Proc_268_44_FC9FD80 (CInt(0))
  loc_FC9FB9:   var_98.SetFocus
  loc_FC9FCA:   Proc_268_44_FC9FD8 = &HFF
  loc_FC9FD0: End If
  loc_FC9FD0: Proc_268_44_FC9FD8 = var_98
End Sub

Public Sub Proc_268_45_E45E00
  'Data Table: 49FB5C
  loc_E45DDC: Set var_88 = Me.TopCtrl1
  loc_E45DE2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E45DFB: If (CStr() = "Browse") Then
  loc_E45DFE:   Exit Sub
  loc_E45DFF: End If
  loc_E45DFF: Exit Sub
End Sub

Public Sub Proc_268_46_125583C(arg_C) '125583C
  'Data Table: 49FB5C
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_B8 As String
  Dim var_140 As Variant
  Dim var_170 As Variant
  loc_12552F4: If (arg_C = 0) Then
  loc_125530A:   var_A8 = CLng(Me.FGrid.Col)
  loc_125531A:   If (var_A8 = CLng(1)) Then
  loc_125533D:     var_AE = Me.EOF
  loc_125536B:     Set var_94 = Me.TxtGrid
  loc_1255371:     Call 0.Method_Proc_268_46_125583C0 (arg_C, var_B4, var_B8)
  loc_1255379:     ((Me.RecordCount = 0) Or ((var_AE = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_1255391:     If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_12553A7:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12553AF:       var_E8 = CVar(CLng(1)) 'Long
  loc_12553B4:       var_108 = vbNullString
  loc_12553BE:       Set var_B4 = Me.FGrid
  loc_12553C4:       LateIdCallSt
  loc_12553E9:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12553F1:       var_E8 = CVar(CLng(5)) 'Long
  loc_12553F6:       var_108 = vbNullString
  loc_1255400:       Set var_B4 = Me.FGrid
  loc_1255406:       LateIdCallSt
  loc_125541B:     Else
  loc_125541E:       Call Proc_268_47_FC1088(var_AE, var_B4, var_108, var_E8, var_C8)
  loc_1255429:       If (var_AE = 0) Then
  loc_1255431:         Proc_268_46_125583C = 0
  loc_1255437:       End If
  loc_125544A:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1255452:       var_F8 = CVar(CLng(1)) 'Long
  loc_1255485:       var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_125548D:       Set var_140 = Me.FGrid
  loc_1255493:       LateIdCallSt
  loc_12554C2:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12554CA:       var_F8 = CVar(CLng(5)) 'Long
  loc_12554FD:       var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1255505:       Set var_140 = Me.FGrid
  loc_125550B:       LateIdCallSt
  loc_1255527:     End If
  loc_1255540:     var_C8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1255548:     var_E8 = CVar(CLng(5)) 'Long
  loc_1255551:     Set var_B4 = Me.FGrid
  loc_1255562:     var_B8 = CStr(var_B4.TextMatrix))
  loc_125557B:     If (var_B8 <> vbNullString) Then
  loc_125557E:       var_C8 = vbNullString
  loc_1255588:       Set var_94 = Me.FGrid
  loc_1255599:     End If
  loc_125559C:   Else
  loc_12555A3:     If (var_A8 = CLng(2)) Then
  loc_12555B0:       Set var_94 = Me.TxtGrid
  loc_12555B6:       Call 0.Method_Proc_268_46_125583C0 (arg_C, var_B4, FGrid.DispID_10000, var_C8, var_E8, var_C8, var_140)
  loc_12555D5:       Set var_11C = Me.TxtGrid
  loc_12555DB:       Call 0.Method_Proc_268_46_125583C0 (arg_C, var_140, var_B8, Not(IsNumeric(CVar(var_B4))), var_13C, var_F8)
  loc_12555E3:       var_D8 = var_140.Text
  loc_1255605:       If (var_140 Or (CDbl(Val(var_B8)) <= CDbl(0))) Then
  loc_125560C:         var_B8 = CStr(0)
  loc_1255619:         Set var_94 = Me.TxtGrid
  loc_125561F:         Call 0.Method_Proc_268_46_125583C0 (arg_C, var_B4, var_B8)
  loc_1255627:         var_B4.Text = var_13C
  loc_125563B:         Proc_268_46_125583C = 0
  loc_1255641:       End If
  loc_125564E:       Set var_94 = Me.TxtGrid
  loc_1255654:       Call 0.Method_Proc_268_46_125583C0 (arg_C, var_B4, var_B8)
  loc_125565C:       var_F8 = var_B4.Text
  loc_1255674:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125567D:       Set var_140 = Me.FGrid
  loc_125568C:       var_F8 = CVar(CLng(var_140.Col)) 'Long
  loc_12556B8:       var_170 = CVar(CStr(Format(CVar(var_B8), "0.00"))) 'String
  loc_12556C0:       Set var_174 = Me.FGrid
  loc_12556C6:       LateIdCallSt
  loc_12556ED:     Else
  loc_12556F4:       If Not (var_A8 = CLng(3)) Then
  loc_12556FE:         If (var_A8 = CLng(4)) Then
  loc_1255701:         End If
  loc_125570E:         Set var_94 = Me.TxtGrid
  loc_1255714:         Call 0.Method_Proc_268_46_125583C0 (arg_C, var_B4, var_B8, var_174, var_170)
  loc_125571C:         1 = var_B4.Text
  loc_1255733:         If (var_B8 <> vbNullString) Then
  loc_125574E:           Set var_B4 = Me.ListView.SelectedItem
  loc_1255754:           var_B8 = var_B4.Text
  loc_1255766:           Set var_11C = Me.TxtGrid
  loc_125576C:           Call 0.Method_Proc_268_46_125583C0 (arg_C, var_140, var_B8, 1)
  loc_1255774:           var_140.Text = var_F8
  loc_125578A:         End If
  loc_125579D:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12557C7:         Set var_94 = Me.TxtGrid
  loc_12557CD:         Call 0.Method_Proc_268_46_125583C0 (arg_C, var_B4, var_B8, CVar(CLng(Me.FGrid.Col)))
  loc_12557D5:         var_C8 = var_B4.Text
  loc_12557DD:         var_13C = CVar(var_B8) 'String
  loc_12557E5:         Set var_174 = Me.FGrid
  loc_12557EB:         LateIdCallSt
  loc_1255809:       End If
  loc_1255809:     End If
  loc_1255809:   End If
  loc_1255809: End If
  loc_125581C: Set var_94 = Me.TxtGrid
  loc_1255822: Call 0.Method_Proc_268_46_125583C0 (0, var_B4, 0, &HFF)
  loc_125582A: var_B4.MaxLength = var_174
  loc_1255836: Proc_268_46_125583C = var_13C
End Sub

Public Sub Proc_268_47_FC1088
  'Data Table: 49FB5C
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC0F0B: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FC0F10:   var_92 = 1 'Byte
  loc_FC0F14: End If
  loc_FC0F1D: Set var_98 = Me.TxtGrid
  loc_FC0F23: Call 0.Method_Proc_268_47_FC10880 (0, var_B0)
  loc_FC0F46: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC0F7A: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC0F9E:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC0FA1:     GoTo loc_FC1073
  loc_FC0FA4:   End If
  loc_FC0FA8:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC0FD2:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC0FDC:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC1011:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC1035:     MsgBox("Duplicate Revenue Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC104E:     Set var_98 = Me.TxtGrid
  loc_FC1054:     Call 0.Method_Proc_268_47_FC10880 (0, var_B0, CVar(CLng(var_92)))
  loc_FC105C:     var_B0.SetFocus
  loc_FC106D:     Proc_268_47_FC1088 = 0
  loc_FC1073:     ' Referenced from: FC0FA1
  loc_FC1073:   End If
  loc_FC1076: Next var_D4 'Integer
  loc_FC1080: Proc_268_47_FC1088 = &HFF
End Sub
