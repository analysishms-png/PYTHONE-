VERSION 5.00
Begin VB.Form FrmTaxStruMast
  Caption = "Tax Structure Master"
  BackColor = &HFFC0C0&
  ForeColor = &HC00000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HC00000&
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 13365
  ClientHeight = 8910
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13365
    Height = 450
    TabIndex = 14
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 11190
    Top = 6600
    Width = 645
    Height = 255
    Visible = 0   'False
    Text = "No"
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
    Left = 8295
    Top = 3360
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 1140
    Top = 3120
    Width = 960
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 600
    Top = 1980
    Width = 11595
    Height = 4335
    TabIndex = 2
  End
  Begin DataGrid DGTaxMast
    Left = 10155
    Top = 2985
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3375
    Top = 1455
    Width = 4215
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin Frame FrmList
    Left = 12315
    Top = 780
    Width = 1965
    Height = 1875
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 7
    End
  End
  Begin MSFlexGrid FGPoint
    Left = 9285
    Top = 1335
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 10
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 690
    Top = 6690
    Width = 2880
    Height = 255
    TabIndex = 13
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4095
    Top = 6675
    Width = 2790
    Height = 285
    TabIndex = 12
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 11
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "System"
      Size = 19.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Tax Before Discount"
    Index = 1
    ForeColor = &H0&
    Left = 9285
    Top = 6615
    Width = 1710
    Height = 240
    Visible = 0   'False
    TabIndex = 9
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
  Begin Label LblName
    Caption = "Tax Structure Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1350
    Top = 1470
    Width = 1905
    Height = 240
    TabIndex = 3
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

Attribute VB_Name = "FrmTaxStruMast"

Private MasterFormExit As Integer
Private global_64 As Integer
Private global_66 As Integer

Private Sub Form_Load() '10A0FF4
  'Data Table: 4B5478
  Dim var_88 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  loc_10A0D20: On Error Goto loc_10A0FEB
  loc_10A0D32: Me.LblUser.Left = CDbl(13500)
  loc_10A0D49: Me.LblUser.Top = CDbl(7800)
  loc_10A0D60: Me.LblLDt.Top = CDbl(8160)
  loc_10A0D77: Me.LblLDt.Left = CDbl(13500)
  loc_10A0D86: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10A0D9E: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_10A0DB0: Set var_88 = Me.TopCtrl1
  loc_10A0DB6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_10A0DC4: Call 0.Method_arg_50 (var_AC)
  loc_10A0DD4: Set var_88 = Me.TopCtrl1
  loc_10A0DDA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_10A0E01: Me.TopCtrl1.CursorLocation = 3
  loc_10A0E2B: var_BC = CVar("Select distinct Code As Code,Name From TaxStru  WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10A0E35: Me.Open var_BC, CVar(MemVar_1F92044), 2
  loc_10A0E49: CVarUnk
  loc_10A0E4E: VerifyVarObj
  loc_10A0E54: Set var_88 = Me.DGHelp
  loc_10A0E5A: LateIdStAd
  loc_10A0E84: Me.DGHelp.CursorLocation = 3
  loc_10A0EAE: var_BC = CVar("Select Code,Name From RevMast WHERE FIELDTYPE='T' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10A0ECC: CVarUnk
  loc_10A0ED1: VerifyVarObj
  loc_10A0ED7: Set var_88 = Me.DGTaxMast
  loc_10A0EDD: LateIdStAd
  loc_10A0F07: Me.DGTaxMast.CursorLocation = 3
  loc_10A0F31: var_BC = CVar("Select distinct Code as SearchCode,Name,LOGSITE_CODE,SITE_CODE From TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10A0F3B: r_BC, CVar(MemVar_1F92044), 2 var_BC, CVar(MemVar_1F92044), 2
  loc_10A0F69: Call Proc_19_56_E7AB94(Proc_5_1_100CB50("INI", Me, New, 3, -1, Me, New), 3, -1, Me)
  loc_10A0F74: Call Proc_19_50_11D82EC(New, 3)
  loc_10A0F79: Call Proc_19_55_137A188(-1)
  loc_10A0F91: Me.FGrid.Left = CVar(CDbl(600))
  loc_10A0FAC: Me.FGrid.Width = CVar(CDbl(11250))
  loc_10A0FC7: Me.FGrid.Top = CVar(CDbl(1950))
  loc_10A0FE2: Me.FGrid.Height = CVar(CDbl(3000))
  loc_10A0FEA: Exit Sub
  loc_10A0FEB: ' Referenced from: 10A0D20
  loc_10A0FEB: Proc_6_60_E62BC4()
  loc_10A0FF0: Exit Sub
  loc_10A0FF1: StAryRecMove
End Sub

Private Sub Form_Resize() 'ED3208
  'Data Table: 4B5478
  Dim var_8C As Label
  loc_ED3166: Call 0.Method_arg_50 (var_88)
  loc_ED3178: Me.LblFormCaption.Caption = var_88
  loc_ED3191: Me.LblFormCaption.Left = CDbl(0)
  loc_ED319D: Set var_A0 = Me.TopCtrl1
  loc_ED31A3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED31B0: Set var_8C = Me.TopCtrl1
  loc_ED31B6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED31D0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED31EB: Call 0.Method_arg_100 (var_B8)
  loc_ED31FD: Me.LblFormCaption.Width = var_B8
  loc_ED3205: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E57E28
  'Data Table: 4B5478
  loc_E57DF3: Set global_72 = Nothing
  loc_E57E05: Set global_68 = Nothing
  loc_E57E17: Set global_76 = Nothing
  loc_E57E23: MasterFormExit = 0
  loc_E57E26: Exit Sub
End Sub

Private Sub Form_Activate() 'E4D6A8
  'Data Table: 4B5478
  loc_E4D678: On Error Goto loc_E4D6A2
  loc_E4D67F: Set var_88 = Me.TopCtrl1
  loc_E4D685: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4D69A: If (CLng(CInt()) = &H2D) Then
  loc_E4D69D:   Call TopCtrl1_UnknownEvent_15()
  loc_E4D6A2:   ' Referenced from: E4D678
  loc_E4D6A2: End If
  loc_E4D6A2: Proc_6_60_E62BC4()
  loc_E4D6A7: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24BA4
  'Data Table: 4B5478
  loc_E24B89: If (MasterFormExit = &HFF) Then
  loc_E24B99:   Me.Global.Unload Me
  loc_E24BA1: End If
  loc_E24BA1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A6F0
  'Data Table: 4B5478
  loc_E2A6C8: On Error Goto loc_E2A6E8
  loc_E2A6DF: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2A6E7: Exit Sub
  loc_E2A6E8: ' Referenced from: E2A6C8
  loc_E2A6E8: Proc_6_60_E62BC4(Shift)
  loc_E2A6ED: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F4F8E4
  'Data Table: 4B5478
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4F7DB: Me.DGHelp.Visible = False
  loc_F4F7FA: If (Me.RecordCount > 0) Then
  loc_F4F839:   Set var_B4 = Me.Txt
  loc_F4F83F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4F847:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4F87A:   var_B0 = Me.Fields.Item("Name")
  loc_F4F899:   Set var_B4 = Me.Txt
  loc_F4F89F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4F8A7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4F8BD: End If
  loc_F4F8C8: Set var_A8 = Me.Txt
  loc_F4F8CE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F4F8D6: var_B0.SetFocus
  loc_F4F8E2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6F8F0
  'Data Table: 4B5478
  loc_E6F8AE: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E6F8C5: Set var_8C = Me.FGPoint
  loc_E6F8DF: Proc_6_138_106D6F8(Me.DGHelp, global_72, 0)
  loc_E6F8ED: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E60634
  'Data Table: 4B5478
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E605FF: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60612: Set var_A8 = Me.TxtGrid
  loc_E60618: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60620: var_AC.Visible = False
  loc_E6062C: Call Proc_19_57_EF23B8()
  loc_E60631: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6A420
  'Data Table: 4B5478
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6A3DC: Set var_88 = Me.TxtGrid
  loc_E6A3E2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6A3FC: If (var_8C.Visible = 0) Then
  loc_E6A415:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E6A41D: End If
  loc_E6A41D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1E230
  'Data Table: 4B5478
  loc_E1E227: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E22F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE0D4
  'Data Table: 4B5478
  loc_DFE0CC: Call Proc_19_52_E405B8()
  loc_DFE0D1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10636DC
  'Data Table: 4B5478
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1063460: Set var_88 = Me.TopCtrl1
  loc_1063466: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_106347F: If (CStr() = "Browse") Then
  loc_1063482:   Exit Sub
  loc_1063483: End If
  loc_10634F7: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_106350D:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_106351D:   var_9C = "+{Tab}"
  loc_1063523:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_106352D:   KeyCode = 0
  loc_1063533: Else
  loc_106353D:   var_B0 = Me.FGrid.Rows
  loc_106358A:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_10635A0:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10635AD:     Call Proc_19_58_EE1BDC(0, var_B0, KeyCode)
  loc_10635B4:     KeyCode = 0
  loc_10635B7:   End If
  loc_10635B7: End If
  loc_10635BD: global_64 = KeyCode
  loc_10635E3: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1063607: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_106361D:   var_EC = CLng(Me.FGrid.Col)
  loc_106362D:   If Not (var_EC = CLng(2)) Then
  loc_1063637:     If Not (var_EC = CLng(3)) Then
  loc_1063641:       If Not (var_EC = CLng(5)) Then
  loc_106364B:         If Not (var_EC = CLng(7)) Then
  loc_1063655:           If Not (var_EC = CLng(4)) Then
  loc_106365F:             If Not (var_EC = CLng(8)) Then
  loc_1063669:               If (var_EC = CLng(6)) Then
  loc_106366C:               End If
  loc_106366C:             End If
  loc_106366C:           End If
  loc_106366C:         End If
  loc_106366C:       End If
  loc_106366C:     End If
  loc_106367F:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1063697:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_106369C:     var_11C = vbNullString
  loc_10636A6:     Set var_B4 = Me.FGrid
  loc_10636AC:     LateIdCallSt
  loc_10636C4:   End If
  loc_10636C4: End If
  loc_10636CA: If (KeyCode = &HD) Then
  loc_10636D2:   global_66 = 0
  loc_10636D5: End If
  loc_10636D7: KeyCode = 0
  loc_10636DA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0BD20
  'Data Table: 4B5478
  loc_E0BD11: Call FGrid_UnknownEvent_C()
  loc_E0BD1B: global_66 = 0
  loc_E0BD1E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '111052C
  'Data Table: 4B5478
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_11101E8: Set var_88 = Me.TopCtrl1
  loc_11101EE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1110207: If (CStr() = "Browse") Then
  loc_111020A:   Exit Sub
  loc_111020B: End If
  loc_111021E: var_A0 = CLng(Me.FGrid.Col)
  loc_111022E: If Not (var_A0 = CLng(2)) Then
  loc_1110238:   If Not (var_A0 = CLng(4)) Then
  loc_1110242:     If Not (var_A0 = CLng(8)) Then
  loc_111024C:       If (var_A0 = CLng(6)) Then
  loc_111024F:       End If
  loc_111024F:     End If
  loc_111024F:   End If
  loc_1110253:   Set var_C4 = Me.FGrid
  loc_1110277:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_11102A4:   Set var_B4 = var_C4
  loc_11102B6:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_11102DE:   Set var_88 = Me.TxtGrid
  loc_11102E4:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_11102EC:   0 = var_B4.Text
  loc_1110305:   If (Len(var_9C) <= 1) Then
  loc_1110314:     Set var_88 = Me.TxtGrid
  loc_111031A:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1110322:     var_CA = var_B4.Text
  loc_1110333:     Set var_B8 = Me.TxtGrid
  loc_1110339:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1110341:     var_C4.Text = var_9C
  loc_1110354:   End If
  loc_1110360:   Set var_88 = Me.TxtGrid
  loc_1110366:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1110380:   Set var_B8 = Me.TxtGrid
  loc_1110386:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_111038E:   var_C4.SelStart = Len(var_B4.Text)
  loc_11103A4: Else
  loc_11103AB:   If Not (var_A0 = CLng(3)) Then
  loc_11103B5:     If Not (var_A0 = CLng(5)) Then
  loc_11103BF:       If (var_A0 = CLng(7)) Then
  loc_11103C2:       End If
  loc_11103C2:     End If
  loc_11103C6:     Set var_C4 = Me.FGrid
  loc_11103EA:     var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_1110417:     Set var_B4 = var_C4
  loc_1110429:     Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_1110451:     Set var_88 = Me.TxtGrid
  loc_1110457:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_111045F:     0 = var_B4.Text
  loc_1110478:     If (Len(var_9C) <= 1) Then
  loc_1110487:       Set var_88 = Me.TxtGrid
  loc_111048D:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1110495:       var_CA = var_B4.Text
  loc_11104A6:       Set var_B8 = Me.TxtGrid
  loc_11104AC:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_11104B4:       var_C4.Text = var_9C
  loc_11104C7:     End If
  loc_11104D3:     Set var_88 = Me.TxtGrid
  loc_11104D9:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_11104F3:     Set var_B8 = Me.TxtGrid
  loc_11104F9:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1110501:     var_C4.SelStart = Len(var_B4.Text)
  loc_1110514:   End If
  loc_1110514: End If
  loc_111051E: If (CLng(KeyCode) <> &HD) Then
  loc_1110526:   global_66 = &HFF
  loc_1110529: End If
  loc_1110529: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '102F7D4
  'Data Table: 4B5478
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  loc_102F5A0: Set var_90 = Me.TopCtrl1
  loc_102F5A6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_102F5BF: If (CStr() = "Browse") Then
  loc_102F5C2:   Exit Sub
  loc_102F5C3: End If
  loc_102F5E0: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_102F5E3:   Exit Sub
  loc_102F5E4: End If
  loc_102F5F5: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_102F617:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_102F651:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_102F673:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_102F689:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102F692:         Set var_118 = Me.FGrid
  loc_102F6AD:       Else
  loc_102F6C0:         Me.FGrid.Rows = 1
  loc_102F6DD:         var_D4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_102F6E5:         Set var_118 = Me.FGrid
  loc_102F714:         Me.FGrid.FixedRows = 1
  loc_102F71C:       End If
  loc_102F741:       For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_11C 'Integer
  loc_102F74B:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_102F753:         var_E4 = CVar(CLng(0)) 'Long
  loc_102F75D:         var_A0 = CVar(CStr(var_86)) 'String
  loc_102F765:         Set var_90 = Me.FGrid
  loc_102F76B:         LateIdCallSt
  loc_102F77C:       Next var_11C 'Integer
  loc_102F781:     End If
  loc_102F784:   Else
  loc_102F7A5:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_102F7B5:   End If
  loc_102F7B9:   Set var_90 = Me.FGrid
  loc_102F7CA: End If
  loc_102F7CF: Set var_8C = Nothing
  loc_102F7D2: Exit Sub
  loc_102F7D3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1CD40
  'Data Table: 4B5478
  loc_E1CD37: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1CD3F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1CD90
  'Data Table: 4B5478
  loc_E1CD87: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1CD8F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3E870
  'Data Table: 4B5478
  Dim var_8C As TextBox
  loc_E3E844: Call Proc_19_57_EF23B8()
  loc_E3E854: Set var_88 = Me.TxtGrid
  loc_E3E85A: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3E862: var_8C.Visible = False
  loc_E3E86E: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5AA94
  'Data Table: 4B5478
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5A9B6: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5A9BD:   Set var_A8 = Me.ListView
  loc_F5AA07:   Set var_C0 = Me.TxtGrid
  loc_F5AA0D:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5AA15:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5AA35: End If
  loc_F5AA41: Me.FrmList.Visible = False
  loc_F5AA71: Set var_9C = Me.TxtGrid
  loc_F5AA77: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5AA7F: var_A8.SetFocus
  loc_F5AA93: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12E508C
  'Data Table: 4B5478
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Variant
  Dim var_104 As TextBox
  Dim var_130 As String
  loc_12E49D8: Call Proc_19_57_EF23B8()
  loc_12E49F0: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12E4A0B: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E4A14: Set var_BC = Me.FGrid
  loc_12E4A4A: Set var_104 = Me.TxtGrid
  loc_12E4A50: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_12E4A58: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_12E4A89: var_110 = CLng(Me.FGrid.Col)
  loc_12E4A99: If (var_110 = CLng(2)) Then
  loc_12E4AAB:   Set var_A8 = Me.TxtGrid
  loc_12E4AB1:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H19)
  loc_12E4AB9:   var_BC.MaxLength = var_110
  loc_12E4ADC:   If (Me.RecordCount > 0) Then
  loc_12E4AEA:     Set var_BC = Me.FGPoint
  loc_12E4B02:     Proc_6_137_1193554(Me.DGTaxMast, global_76, Index)
  loc_12E4B10:   End If
  loc_12E4B51:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12E4B54:     Exit Sub
  loc_12E4B55:   End If
  loc_12E4B68:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E4B70:   var_DC = CVar(CLng(2)) 'Long
  loc_12E4BA3:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_12E4BAC:     Me.MoveFirst
  loc_12E4BC4:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E4BCC:     var_DC = CVar(CLng(1)) 'Long
  loc_12E4BD5:     Set var_BC = Me.FGrid
  loc_12E4BDB:     var_CC = var_BC.TextMatrix)
  loc_12E4BFC:     var_10C = CStr(var_CC)
  loc_12E4C10:     Me.Find "Code ='" & var_10C & "'", 0, 1
  loc_12E4C40:     If (Me.EOF = &HFF) Then
  loc_12E4C49:       Me.MoveFirst
  loc_12E4C4E:     End If
  loc_12E4C4E:   End If
  loc_12E4C51: Else
  loc_12E4C58:   If (var_110 = CLng(3)) Then
  loc_12E4C6A:     Set var_A8 = Me.TxtGrid
  loc_12E4C70:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 8, var_130, var_CC, var_DC)
  loc_12E4C78:     var_BC.MaxLength = var_94
  loc_12E4C87:   Else
  loc_12E4C8E:     If Not (var_110 = CLng(5)) Then
  loc_12E4C98:       If (var_110 = CLng(7)) Then
  loc_12E4C9B:       End If
  loc_12E4CAA:       Set var_A8 = Me.TxtGrid
  loc_12E4CB0:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HA, var_DC)
  loc_12E4CB8:       var_BC.MaxLength = var_94
  loc_12E4CC7:     Else
  loc_12E4CCE:       If (var_110 = CLng(4)) Then
  loc_12E4CE0:         Set var_A8 = Me.TxtGrid
  loc_12E4CE6:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H19)
  loc_12E4CEE:         var_BC.MaxLength = var_BC
  loc_12E4D07:         ReDim var_134(0 To 2)
  loc_12E4D1E:         var_134(0) = "On Base Amt"
  loc_12E4D2D:         var_134(1) = "On Running Total"
  loc_12E4D3C:         var_134(2) = "On Prev. Tax Amt"
  loc_12E4D53:         global_84 = Array(var_134)
  loc_12E4D5E:         Set var_104 = Me.ListView
  loc_12E4D79:         Set var_BC = Me.TxtGrid
  loc_12E4D93:         Set global_100 = Proc_6_66_EFF8FC(var_104, var_BC, Index, global_84)
  loc_12E4DB1:         Set var_A8 = Me.TxtGrid
  loc_12E4DB7:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, var_10C)
  loc_12E4DBF:         3 = var_BC.Text
  loc_12E4DD1:         Set var_F0 = Me.TxtGrid
  loc_12E4DD7:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, var_10C)
  loc_12E4DDF:         var_104.Tag = global_84
  loc_12E4DF5:       Else
  loc_12E4DFC:         If (var_110 = CLng(6)) Then
  loc_12E4E0E:           Set var_A8 = Me.TxtGrid
  loc_12E4E14:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_12E4E1C:           var_BC.MaxLength = 7
  loc_12E4E35:           ReDim var_134(0 To 5)
  loc_12E4E4C:           var_134(0) = "<"
  loc_12E4E5B:           var_134(1) = "<="
  loc_12E4E6A:           var_134(2) = ">"
  loc_12E4E79:           var_134(3) = ">="
  loc_12E4E88:           var_134(4) = "="
  loc_12E4E97:           var_134(5) = "Between"
  loc_12E4EAE:           global_84 = Array(var_134)
  loc_12E4EB9:           Set var_104 = Me.ListView
  loc_12E4ED4:           Set var_BC = Me.TxtGrid
  loc_12E4EEE:           Set global_100 = Proc_6_66_EFF8FC(var_104, var_BC, Index, global_84)
  loc_12E4F0C:           Set var_A8 = Me.TxtGrid
  loc_12E4F12:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, var_10C)
  loc_12E4F1A:           6 = var_BC.Text
  loc_12E4F2C:           Set var_F0 = Me.TxtGrid
  loc_12E4F32:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, var_10C)
  loc_12E4F3A:           var_104.Tag = global_84
  loc_12E4F50:         Else
  loc_12E4F57:           If (var_110 = CLng(8)) Then
  loc_12E4F69:             Set var_A8 = Me.TxtGrid
  loc_12E4F6F:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_12E4F77:             var_BC.MaxLength = &H19
  loc_12E4F90:             ReDim var_134(0 To 3)
  loc_12E4FA7:             var_134(0) = "Room Rate"
  loc_12E4FB6:             var_134(1) = "Rack Rate"
  loc_12E4FC5:             var_134(2) = "Room Tariff"
  loc_12E4FD4:             var_134(3) = "Declared Tariff"
  loc_12E4FEB:             global_84 = Array(var_134)
  loc_12E4FF6:             Set var_104 = Me.ListView
  loc_12E5011:             Set var_BC = Me.TxtGrid
  loc_12E502B:             Set global_100 = Proc_6_66_EFF8FC(var_104, var_BC, Index, global_84)
  loc_12E5049:             Set var_A8 = Me.TxtGrid
  loc_12E504F:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, var_10C)
  loc_12E5057:             4 = var_BC.Text
  loc_12E5069:             Set var_F0 = Me.TxtGrid
  loc_12E506F:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, var_10C)
  loc_12E5077:             var_104.Tag = global_84
  loc_12E508A:           End If
  loc_12E508A:         End If
  loc_12E508A:       End If
  loc_12E508A:     End If
  loc_12E508A:   End If
  loc_12E508A: End If
  loc_12E508A: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13F90C4
  'Data Table: 4B5478
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C0 As Variant
  Dim var_94 As DataGrid
  Dim var_D8 As DataGrid
  Dim var_E4 As TextBox
  Dim var_F4 As TextBox
  Dim var_90 As String
  loc_13F86B0: On Error Goto loc_13F90BE
  loc_13F86BD: If (CLng(Shift) = &H1B) Then
  loc_13F86CD:   Set var_88 = Me.TxtGrid
  loc_13F86D3:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13F86DB:   var_90 = var_8C.Tag
  loc_13F86ED:   Set var_94 = Me.TxtGrid
  loc_13F86F3:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_13F86FB:   var_98.Text = var_90
  loc_13F8717:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13F871C:   Call Proc_19_57_EF23B8(arg_14)
  loc_13F8725:   Set var_88 = Me.FGrid
  loc_13F8742:   Set var_88 = Me.TxtGrid
  loc_13F8748:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13F8750:   var_8C.Visible = False
  loc_13F875C:   Exit Sub
  loc_13F875D: End If
  loc_13F8780: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_13F878F:   Set var_88 = Me.TxtGrid
  loc_13F8795:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B0)
  loc_13F879D:   var_AC = var_8C.Left
  loc_13F87B4:   Me.DGTaxMast.Left = CVar(var_B0)
  loc_13F87CE:   Set var_94 = Me.TxtGrid
  loc_13F87D4:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_13F87DC:   var_D4 = var_98.Height
  loc_13F87ED:   Set var_88 = Me.TxtGrid
  loc_13F87F3:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_13F87FB:   var_B0 = var_8C.Top
  loc_13F8807:   var_C0 = CVar((var_B0 + var_D4)) 'Single
  loc_13F8816:   Me.DGTaxMast.Top = CVar(var_B0)
  loc_13F8833:   Set var_E4 = Me.TxtGrid
  loc_13F8845:   Set var_98 = Me.FGPoint
  loc_13F887E:   Proc_6_69_134A198(Me.DGTaxMast, var_E4, KeyCode, global_76, Shift, &HFF)
  loc_13F889E:   If (CLng(Shift) = &HD) Then
  loc_13F88A7:     Call Proc_19_53_131216C(KeyCode, var_DA, 1, Nothing)
  loc_13F88B2:     If (var_DA = &HFF) Then
  loc_13F88C0:       Set var_98 = Me.TxtGrid
  loc_13F88EB:       Set var_8C = var_98
  loc_13F88FA:       Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_66, CByte(9))
  loc_13F890A:     End If
  loc_13F890A:   End If
  loc_13F890D: Else
  loc_13F8914:   If (var_AC = CLng(3)) Then
  loc_13F8926:     Set var_88 = Me.TxtGrid
  loc_13F892C:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 8, 0, 0)
  loc_13F8934:     var_8C.MaxLength = 0
  loc_13F894A:     If (CLng(Shift) = &HD) Then
  loc_13F8953:       Call Proc_19_53_131216C(KeyCode, var_DA, var_98)
  loc_13F895E:       If (var_DA = &HFF) Then
  loc_13F8997:         Set var_8C = Me.TxtGrid
  loc_13F89A6:         Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_66, CByte(9))
  loc_13F89B6:       End If
  loc_13F89B6:     End If
  loc_13F89B9:   Else
  loc_13F89C0:     If (var_AC = CLng(5)) Then
  loc_13F89D2:       Set var_88 = Me.TxtGrid
  loc_13F89D8:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, &HA, 0)
  loc_13F89E0:       var_8C.MaxLength = 0
  loc_13F89F6:       If (CLng(Shift) = &HD) Then
  loc_13F89FF:         Call Proc_19_53_131216C(KeyCode, var_DA, 0)
  loc_13F8A0A:         If (var_DA = &HFF) Then
  loc_13F8A43:           Set var_8C = Me.TxtGrid
  loc_13F8A52:           Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_66, CByte(6))
  loc_13F8A62:         End If
  loc_13F8A62:       End If
  loc_13F8A65:     Else
  loc_13F8A6C:       If (var_AC = CLng(7)) Then
  loc_13F8A7E:         Set var_88 = Me.TxtGrid
  loc_13F8A84:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, &HA, 0)
  loc_13F8A8C:         var_8C.MaxLength = 0
  loc_13F8AA2:         If (CLng(Shift) = &HD) Then
  loc_13F8AAB:           Call Proc_19_53_131216C(KeyCode, var_DA, 0)
  loc_13F8AB6:           If (var_DA = &HFF) Then
  loc_13F8AC4:             Set var_98 = Me.TxtGrid
  loc_13F8AEF:             Set var_8C = var_98
  loc_13F8AFE:             Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_66, CByte(9))
  loc_13F8B0E:           End If
  loc_13F8B0E:         End If
  loc_13F8B11:       Else
  loc_13F8B18:         If (var_AC = CLng(4)) Then
  loc_13F8B2A:           Set var_88 = Me.TxtGrid
  loc_13F8B30:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, &H19, 0)
  loc_13F8B38:           var_8C.MaxLength = 0
  loc_13F8B66:           Set var_88 = Me.TxtGrid
  loc_13F8B6C:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, var_B0)
  loc_13F8B74:           0 = var_8C.Left
  loc_13F8B86:           Set var_94 = Me.TxtGrid
  loc_13F8B8C:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98, var_D4)
  loc_13F8B94:           0 = var_98.Top
  loc_13F8BA6:           Set var_D8 = Me.TxtGrid
  loc_13F8BAC:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E4)
  loc_13F8BC6:           Set var_E8 = Me.TxtGrid
  loc_13F8BCC:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F4)
  loc_13F8BD4:           var_F8 = var_F4.Width
  loc_13F8C1C:           Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_13F8C4A:           If (CLng(Shift) = &HD) Then
  loc_13F8C53:             Call Proc_19_53_131216C(KeyCode, var_DA, CInt(var_B0), CInt((var_D4 + var_E4.Height)))
  loc_13F8C5E:             If (var_DA = &HFF) Then
  loc_13F8C6C:               Set var_98 = Me.TxtGrid
  loc_13F8C97:               Set var_8C = var_98
  loc_13F8CA6:               Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_66, CByte(9))
  loc_13F8CB6:             End If
  loc_13F8CB6:           End If
  loc_13F8CB9:         Else
  loc_13F8CC0:           If (var_AC = CLng(6)) Then
  loc_13F8CD2:             Set var_88 = Me.TxtGrid
  loc_13F8CD8:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 7, 0, 0)
  loc_13F8CE0:             var_8C.MaxLength = 0
  loc_13F8D0E:             Set var_88 = Me.TxtGrid
  loc_13F8D14:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, var_B0)
  loc_13F8D1C:             CInt(var_F8) = var_8C.Left
  loc_13F8D2E:             Set var_94 = Me.TxtGrid
  loc_13F8D34:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98, var_D4)
  loc_13F8D3C:             780 = var_98.Top
  loc_13F8D4E:             Set var_D8 = Me.TxtGrid
  loc_13F8D54:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E4)
  loc_13F8D6E:             Set var_E8 = Me.TxtGrid
  loc_13F8D74:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F4)
  loc_13F8D7C:             var_F8 = var_F4.Width
  loc_13F8DC4:             Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_13F8DF2:             If (CLng(Shift) = &HD) Then
  loc_13F8DFB:               Call Proc_19_53_131216C(KeyCode, var_DA, CInt(var_B0), CInt((var_D4 + var_E4.Height)))
  loc_13F8E06:               If (var_DA = &HFF) Then
  loc_13F8E14:                 Set var_98 = Me.TxtGrid
  loc_13F8E3F:                 Set var_8C = var_98
  loc_13F8E4E:                 Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_66, CByte(9))
  loc_13F8E5E:               End If
  loc_13F8E5E:             End If
  loc_13F8E61:           Else
  loc_13F8E68:             If (var_AC = CLng(8)) Then
  loc_13F8E7A:               Set var_88 = Me.TxtGrid
  loc_13F8E80:               Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, &H19, 0, 0)
  loc_13F8E88:               var_8C.MaxLength = 0
  loc_13F8EA1:               Set var_88 = Me.TxtGrid
  loc_13F8EA7:               Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, var_90)
  loc_13F8EAF:               CInt(var_F8) = var_8C.Text
  loc_13F8EC6:               If (var_90 <> vbNullString) Then
  loc_13F8EEB:                 Set var_88 = Me.TxtGrid
  loc_13F8EF1:                 Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, var_B0)
  loc_13F8EF9:                 1560 = var_8C.Left
  loc_13F8F0B:                 Set var_94 = Me.TxtGrid
  loc_13F8F11:                 Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_13F8F19:                 var_D4 = var_98.Top
  loc_13F8F2B:                 Set var_D8 = Me.TxtGrid
  loc_13F8F31:                 Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E4)
  loc_13F8F39:                 var_F0 = var_E4.Height
  loc_13F8F4B:                 Set var_E8 = Me.TxtGrid
  loc_13F8F51:                 Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F4)
  loc_13F8F59:                 var_F8 = var_F4.Width
  loc_13F8FA1:                 Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_13F8FC5:               End If
  loc_13F8FCF:               If (CLng(Shift) = &HD) Then
  loc_13F8FD8:                 Call Proc_19_53_131216C(KeyCode, var_DA, CInt(var_B0), CInt((var_D4 + var_F0)))
  loc_13F8FE3:                 If (var_DA = &HFF) Then
  loc_13F900A:                   Set var_8C = Me.FGrid
  loc_13F9034:                   If (CStr(var_8C.TextMatrix)) = vbNullString) Then
  loc_13F9042:                     Set var_88 = Me.TxtGrid
  loc_13F9048:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, 0, CVar(CLng(2)))
  loc_13F9050:                     var_8C.Visible = CVar(CLng(Me.FGrid.Row))
  loc_13F9061:                     Call Proc_19_58_EE1BDC(0, CInt(var_F8))
  loc_13F9069:                   Else
  loc_13F90AE:                     Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(9))
  loc_13F90BE:                   End If
  loc_13F90BE:                 End If
  loc_13F90BE:               End If
  loc_13F90BE:             End If
  loc_13F90BE:           End If
  loc_13F90BE:         End If
  loc_13F90BE:       End If
  loc_13F90BE:       ' Referenced from: 13F86B0
  loc_13F90BE:     End If
  loc_13F90BE:   End If
  loc_13F90BE: End If
  loc_13F90BE: Proc_6_60_E62BC4(0, 0, 0)
  loc_13F90C3: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F89914
  'Data Table: 4B5478
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F897BB: Proc_6_58_E054C0(arg_10)
  loc_F897CC: If (KeyAscii = 0) Then
  loc_F897E2:   var_A0 = CLng(Me.FGrid.Col)
  loc_F897F2:   If (var_A0 = CLng(2)) Then
  loc_F89811:     If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_F89823:       var_A4 = "Name"
  loc_F8983E:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_76, arg_10)
  loc_F89858:       Set var_AC = Me.FGPoint
  loc_F89870:       Proc_6_138_106D6F8(Me.DGTaxMast, global_76, KeyAscii, var_AC)
  loc_F8987E:     End If
  loc_F89881:   Else
  loc_F89888:     If (var_A0 = CLng(3)) Then
  loc_F89895:       Set var_8C = Me.TxtGrid
  loc_F8989B:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F898B6:       Proc_6_42_129A86C(var_AC, arg_10, 3, 4)
  loc_F898C5:     Else
  loc_F898CC:       If Not (var_A0 = CLng(5)) Then
  loc_F898D6:         If (var_A0 = CLng(7)) Then
  loc_F898D9:         End If
  loc_F898E3:         Set var_8C = Me.TxtGrid
  loc_F898E9:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F89904:         Proc_6_42_129A86C(var_AC, arg_10, 7)
  loc_F89910:       End If
  loc_F89910:     End If
  loc_F89910:   End If
  loc_F89910: End If
  loc_F89910: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F7C630
  'Data Table: 4B5478
  Dim var_9C As Long
  loc_F7C4E8: On Error Goto loc_F7C62A
  loc_F7C4FE: var_9C = CLng(Me.FGrid.Col)
  loc_F7C50E: If (var_9C = CLng(2)) Then
  loc_F7C534:   If ((Shift <> &HD) And (CBool(Me.DGTaxMast.Visible) = 0)) Then
  loc_F7C542:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_F7C556:     var_A4 = "Name"
  loc_F7C571:     Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_76, Shift)
  loc_F7C580:   End If
  loc_F7C583: Else
  loc_F7C58A:   If Not (var_9C = CLng(4)) Then
  loc_F7C594:     If (var_9C = CLng(8)) Then
  loc_F7C597:     End If
  loc_F7C5B9:     If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F7C5CA:       Call TxtGrid_KeyDown(KeyCode, global_64)
  loc_F7C5CF:     End If
  loc_F7C5EA:     If (Me.FrmList.Visible = &HFF) Then
  loc_F7C619:       Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, KeyCode, Shift, global_100)
  loc_F7C629:     End If
  loc_F7C629:   End If
  loc_F7C629: End If
  loc_F7C629: Exit Sub
  loc_F7C62A: ' Referenced from: F7C4E8
  loc_F7C62A: Proc_6_60_E62BC4(0, var_A4, &HFF)
  loc_F7C62F: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E222C0
  'Data Table: 4B5478
  Dim arg_10 As Integer
  loc_E222A8: If (Cancel = 0) Then
  loc_E222B1:   Call Proc_19_53_131216C(Cancel, var_88)
  loc_E222BA:   arg_10 = Not(var_88)
  loc_E222BD: End If
  loc_E222BD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAB89C
  'Data Table: 4B5478
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EAB810: On Error Goto loc_EAB896
  loc_EAB820: Me.LblUser.Caption = vbNullString
  loc_EAB835: Me.LblLDt.Caption = vbNullString
  loc_EAB860: Call Proc_19_56_E7AB94(Proc_5_1_100CB50("ADD", Me))
  loc_EAB86B: Call Proc_19_54_F20090(global_68)
  loc_EAB87B: Set var_88 = Me.Txt
  loc_EAB881: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EAB889: var_94.SetFocus
  loc_EAB895: Exit Sub
  loc_EAB896: ' Referenced from: EAB810
  loc_EAB896: Proc_6_60_E62BC4(var_94)
  loc_EAB89B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9F708
  'Data Table: 4B5478
  loc_E9F690: On Error Goto loc_E9F701
  loc_E9F6CA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9F6F0:   Call Proc_19_56_E7AB94(Proc_5_1_100CB50("INI", Me))
  loc_E9F6FB:   Call Proc_19_55_137A188(global_68)
  loc_E9F700: End If
  loc_E9F700: Exit Sub
  loc_E9F701: ' Referenced from: E9F690
  loc_E9F701: Proc_6_60_E62BC4()
  loc_E9F706: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11E6E78
  'Data Table: 4B5478
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_4B5497 As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_11E6A1C: On Error Goto loc_11E6E1F
  loc_11E6A2D: If (Proc_183_56_FE8818(global_68) = &HFF) Then
  loc_11E6A30:   Exit Sub
  loc_11E6A31: End If
  loc_11E6A63: var_D4 = "Tax Structure"
  loc_11E6AAB: If (Proc_6_108_1010FEC(MemVar_1F92044, "RevMast", "TaxStru", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_11E6AAE:   Exit Sub
  loc_11E6AAF: End If
  loc_11E6AE1: var_D4 = "Tax Structure"
  loc_11E6B29: If (Proc_6_108_1010FEC(MemVar_1F92044, "ItemCatMast", "TaxStru", CStr(Me.Fields.Item("SearchCode").Value), 0) = 0) Then
  loc_11E6B2C:   Exit Sub
  loc_11E6B2D: End If
  loc_11E6BA7: If (Proc_6_108_1010FEC(MemVar_1F92044, "TelCallType", "TaxStru", CStr(Me.Fields.Item("SearchCode").Value), 0, "Tax Structure") = 0) Then
  loc_11E6BAA:   Exit Sub
  loc_11E6BAB: End If
  loc_11E6BE2: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_11E6BE7:   var_96 = 0
  loc_11E6BF3:   unk_4B5497.BeginTrans var_D0
  loc_11E6BFA:   var_96 = &HFF
  loc_11E6C0E:   var_94 = Me.Bookmark 'Variant
  loc_11E6C5A:   var_118 = "Delete From TaxStru Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_11E6C68:   unk_4B5497.Execute CStr(var_118), var_138, -1
  loc_11E6CB3:   var_168 = 0
  loc_11E6CC6:   var_160 = 0
  loc_11E6CD1:   var_15C = 0
  loc_11E6CE4:   var_154 = 0
  loc_11E6CEF:   var_150 = 0
  loc_11E6D02:   var_148 = 0
  loc_11E6D42:   var_B4 = "TaxStru"
  loc_11E6D4B:   Proc_154_5_10E33A4(MemVar_1F92044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11E6D79:   unk_4B5497.CommitTrans
  loc_11E6D80:   var_96 = 0
  loc_11E6D8E:   Me.Requery -1
  loc_11E6D9E:   Me.Requery -1
  loc_11E6DBE:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11E6DCB:     Me.Bookmark = var_94
  loc_11E6DD3:   Else
  loc_11E6DE7:     If (Me.EOF = 0) Then
  loc_11E6DF0:       Me.MoveLast
  loc_11E6DF5:     End If
  loc_11E6DF5:   End If
  loc_11E6DF5:   Call Proc_19_55_137A188(var_96, var_148, 0, var_150, var_154)
  loc_11E6E16:   Proc_5_0_110649C(&HFF, Me, global_68, 0)
  loc_11E6E1E: End If
  loc_11E6E1E: Exit Sub
  loc_11E6E1F: ' Referenced from: 11E6A1C
  loc_11E6E25: If (var_96 = &HFF) Then
  loc_11E6E2E:   unk_4B5497.RollbackTrans
  loc_11E6E33: End If
  loc_11E6E3B: Set var_9C = Err()
  loc_11E6E41: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_11E6E62: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_11E6E75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F8FA18
  'Data Table: 4B5478
  Dim var_88 As Label
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F8F8BC: On Error Goto loc_F8F9D2
  loc_F8F8CC: Me.LblUser.Caption = vbNullString
  loc_F8F8E1: Me.LblLDt.Caption = vbNullString
  loc_F8F8F7: If (Proc_183_55_FE7900(global_68) = &HFF) Then
  loc_F8F8FA:   Exit Sub
  loc_F8F8FB: End If
  loc_F8F912: If (Me.RecordCount > 0) Then
  loc_F8F938:   Call Proc_19_56_E7AB94(Proc_5_1_100CB50("EDIT", Me))
  loc_F8F951:   Set var_88 = Me.Txt
  loc_F8F957:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F8F95F:   var_90 = var_98.Text
  loc_F8F96A:   global_80 = var_90
  loc_F8F983:   Set var_88 = Me.Txt
  loc_F8F989:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F8F991:   var_98.SetFocus
  loc_F8F9A0: Else
  loc_F8F9C1:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F8F9D1: End If
  loc_F8F9D1: Exit Sub
  loc_F8F9D2: ' Referenced from: F8F8BC
  loc_F8F9DA: Set var_88 = Err()
  loc_F8F9E0: Call 0.Method_arg_2C (var_90)
  loc_F8FA01: MsgBox(CVar(var_90), &H30, " Editing Error ", var_F8, var_118)
  loc_F8FA14: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17514
  'Data Table: 4B5478
  loc_E17509: Me.Global.Unload Me
  loc_E17511: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC8654
  'Data Table: 4B5478
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F920E4 As String
  loc_EC85B4: On Error Goto loc_EC864C
  loc_EC85CE: If (Me.RecordCount <= 0) Then
  loc_EC85D7:   var_B8 = "Information"
  loc_EC85F2:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC8602:   Exit Sub
  loc_EC8603: End If
  loc_EC8611: MemVar_1F920E4 = "Select distinct Code As SearchCode,Name FROM TaxStru where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_EC861E: MemVar_1F92120 = Me
  loc_EC862B: Proc_6_126_F1BCC0("3500")
  loc_EC8646: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC864B: Exit Sub
  loc_EC864C: ' Referenced from: EC85B4
  loc_EC864C: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC8651: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E33198
  'Data Table: 4B5478
  Dim arg_FF As Double
  loc_E33188: Proc_5_0_110649C(&HFF, Me)
  loc_E33190: Call Proc_19_55_137A188(global_68)
  loc_E33195: Exit Sub
  loc_E33196: arg_FF = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E33138
  'Data Table: 4B5478
  loc_E33128: Proc_5_0_110649C(&HFF, Me)
  loc_E33130: Call Proc_19_55_137A188(global_68)
  loc_E33135: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E330D8
  'Data Table: 4B5478
  Dim arg_FF As Double
  loc_E330C8: Proc_5_0_110649C(&HFF, Me)
  loc_E330D0: Call Proc_19_55_137A188(global_68)
  loc_E330D5: Exit Sub
  loc_E330D6: arg_FF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E33078
  'Data Table: 4B5478
  loc_E33068: Proc_5_0_110649C(&HFF, Me)
  loc_E33070: Call Proc_19_55_137A188(global_68)
  loc_E33075: Exit Sub
  loc_E33076: Set arg_0 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1088168
  'Data Table: 4B5478
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4B5497 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1087ED0: On Error Goto loc_108811C
  loc_1087EE7: var_A0 = "Select TaxStru.*,RevMast.Code as TaxCode, RevMast.Name as TaxName From TaxStru Left Join RevMast on RevMast.Code=TaxStru.TaxCode  where (RevMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_1087EF7: unk_4B5497.Execute var_A0 & "' or RevMast.LOGSITE_CODE='HO') and RevMast.FieldType='T' Order by Sno", var_C4, -1
  loc_1087F02: Set var_88 = var_C8
  loc_1087F18: var_CC = var_88.RecordCount
  loc_1087F26: If (var_CC = 0) Then
  loc_1087F42:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1087F52:   Exit Sub
  loc_1087F53: End If
  loc_1087F62: var_A4 = MemVar_1F920B4 & "\TaxStructureMast.ttx"
  loc_1087F69: Set var_C8 = var_88 
  loc_1087F75: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1087F7F: Set var_88 = var_C8
  loc_1087F85: var_B4 = CVar(var_12E) 'Integer
  loc_1087F88: var_98 = var_B4 'Variant
  loc_1087FA4: var_A0 = MemVar_1F920B4 & "\TaxStructureMast.RPT"
  loc_1087FAD: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1087FB8: MemVar_1F921E4 = var_C8
  loc_1087FD3: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1087FDB: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1087FE7: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1088000:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1088008:   Call 0.Method_arg_20 (var_138)
  loc_1088010:   Call 0.Method_arg_30 (var_A0)
  loc_1088056:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108806C:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1088074:     Call 0.Method_arg_20 (var_138)
  loc_108807C:     Call 0.Method_arg_38 ("'Tax Structure Master'")
  loc_1088088:   End If
  loc_108808B: Next var_132 'Integer
  loc_10880A9: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_10880B1: Call 0.Method_arg_2C (var_DC)
  loc_10880BF: Call 0.Method_arg_150 (var_FC)
  loc_10880CA: Call 0.Method_arg_50 (var_A0)
  loc_10880D4: Set var_138 = Nothing
  loc_10880EE: Set var_C8 = MemVar_1F921E4 
  loc_10880FA: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_1088105: MemVar_1F921E4 = var_C8
  loc_1088118: Set var_88 = Nothing
  loc_108811B: Exit Sub
  loc_108811C: ' Referenced from: 1087ED0
  loc_1088124: Set var_C8 = Err()
  loc_108812A: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1088135: Call 0.Method_arg_50 (var_A4)
  loc_1088151: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1088164: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E22074
  'Data Table: 4B5478
  Dim Me As Recordset15
  loc_E2205B: Me.Requery -1
  loc_E2206B: Me.Requery -1
  loc_E22070: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '145CB58
  'Data Table: 4B5478
  Dim var_F4 As Variant
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_A8 As Variant
  Dim var_9E As Integer
  Dim var_B0 As String
  Dim var_20C As String
  Dim unk_4B5497 As Connection15
  Dim var_AC As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  Dim var_848 As Double
  Dim var_850 As Double
  Dim var_1D8 As Variant
  Dim var_44C As Variant
  Dim var_5F8 As Variant
  Dim var_628 As Variant
  Dim var_6AC As Variant
  Dim var_790 As Variant
  Dim Me As Recordset15
  loc_145C0F4: On Error Goto loc_145CB04
  loc_145C0FB: var_86 = CByte(0) 'Byte
  loc_145C10A: Set var_A4 = Me.Txt
  loc_145C110: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_145C139: If (Proc_183_19_E8DAFC(var_A8, "Name") = 0) Then
  loc_145C143:   Call Txt_GotFocus()
  loc_145C148:   Exit Sub
  loc_145C149: End If
  loc_145C14C: Call Proc_19_51_1095728(var_B2, CInt(0))
  loc_145C157: If (var_B2 = &HFF) Then
  loc_145C15A:   Exit Sub
  loc_145C15B: End If
  loc_145C17C: var_E4 = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_145C186: For var_114 = 1 To var_E4: var_9C = var_114 'Variant
  loc_145C1B1:   For var_118 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9E = var_118 'Integer
  loc_145C1BC:     var_D4 = CVar(CLng(var_9C)) 'Long
  loc_145C1C5:     var_F4 = CVar(CLng(var_9E)) 'Long
  loc_145C1DF:     var_138 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_145C1E5:     var_148 = Trim(var_138)
  loc_145C1ED:     var_158 = vbNullString
  loc_145C1FC:     var_178 = CVar(CLng(var_9C)) 'Long
  loc_145C20E:     Set var_A8 = Me.FGrid
  loc_145C253:     If CBool(CVar(CLng(var_9E)) Or (Trim(CVar(CStr(var_A8.TextMatrix)))) = "0.00")) Then
  loc_145C25D:       If (var_9E = var_9E) Then
  loc_145C260:         GoTo loc_145C34B
  loc_145C263:       End If
  loc_145C274:       If ((var_9E = CInt(1)) Or (var_9E = CInt(2))) Then
  loc_145C290:         MsgBox("Tax Name is required", 0, var_138, var_148, var_168)
  loc_145C2A4:         var_9E = CInt(2)
  loc_145C2A7:       End If
  loc_145C2AF:       If (var_9E = CInt(3)) Then
  loc_145C2C5:         var_C4 = "Rate is required"
  loc_145C2CB:         MsgBox(var_C4, 0, var_138, var_148, var_168)
  loc_145C2DB:       End If
  loc_145C2EF:       Me.FGrid.Row = CVar(CLng(var_9C))
  loc_145C30A:       Me.FGrid.Col = CVar(CLng(var_9E))
  loc_145C316:       Set var_A4 = Me.FGrid
  loc_145C33A:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_145C342:       Exit Sub
  loc_145C343:     End If
  loc_145C346:   Next var_118 'Integer
  loc_145C34B:   ' Referenced from: 145C260
  loc_145C34E: Next var_114 'Variant
  loc_145C358: Set var_A4 = Me.TopCtrl1
  loc_145C35E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_145C377: If (CStr() = "Add") Then
  loc_145C380:   var_E4 = 0
  loc_145C39D:   var_B0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS NUMERIC)),1)+1 AS MyCode From TaxStru WHERE ISNumeric(substring(Code,3,4))=1 AND SITE_CODE='" & MemVar_1F92070
  loc_145C3AD:   unk_4B5497.Execute CStr() & "'", var_C4, -1
  loc_145C3B5:   var_A4 = var_A4.Fields
  loc_145C3BD:   var_E4 = var_A8.Item(var_A8)
  loc_145C3C5:   var_AC = var_AC.Value
  loc_145C3FE:   var_148 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_145C410:   var_C4 = "0000"
  loc_145C42C:   var_168 = (1 + Format(CStr(var_138), var_C4))
  loc_145C431:   var_B0 = CStr(var_168)
  loc_145C437:   global_60 = var_B0
  loc_145C44C: Else
  loc_145C45A:   Set var_A4 = Me.Txt
  loc_145C460:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0)
  loc_145C468:   1 = var_A8.Tag
  loc_145C473:   global_60 = var_B0
  loc_145C481: End If
  loc_145C48A: unk_4B5497.BeginTrans var_214
  loc_145C493: var_86 = CByte(1) 'Byte
  loc_145C4BE: unk_4B5497.Execute "Delete From TaxStru Where Code='" & global_60 & "'", var_C4, -1
  loc_145C4F1: var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_145C4FB: For var_234 = 1 To "0000": var_9C = var_234 'Variant
  loc_145C506:   var_D4 = CVar(CLng(var_9C)) 'Long
  loc_145C50E:   var_F4 = CVar(CLng(2)) 'Long
  loc_145C546:   Set var_A8 = Me.FGrid
  loc_145C557:   var_20C = CStr(var_A8.TextMatrix))
  loc_145C5AB:   If (CVar(CLng(4)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_145C5BC:     Set var_A4 = Me.Txt
  loc_145C5C2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_20C, CVar(CLng(var_9C)), (CVar(CLng(3)) And (var_20C <> vbNullString)), CVar(CLng(var_9C)), (CStr(Me.FGrid.TextMatrix)) <> vbNullString))
  loc_145C5CA:     var_F4 = var_A8.Text
  loc_145C5E3:     var_D4 = CVar(CLng(var_9C)) 'Long
  loc_145C5EB:     var_F4 = CVar(CLng(1)) 'Long
  loc_145C60B:     var_158 = CVar(CLng(var_9C)) 'Long
  loc_145C613:     var_188 = CVar(CLng(3)) 'Long
  loc_145C622:     var_138 = Me.FGrid.TextMatrix)
  loc_145C647:     var_168 = "0.0000"
  loc_145C650:     var_148 = CVar(Val(CStr(var_138))) 'Double
  loc_145C68B:     var_848 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_145C6E1:     var_850 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_145C716:     Proc_183_7_EB0C44(var_4AC, Date, 1, 1, var_850, CVar(CLng(7)), CVar(CLng(var_9C)), 1)
  loc_145C71F:     Set var_4E0 = Me.TopCtrl1
  loc_145C725:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_145C7FD:     Set var_7B4 = Me.Txt
  loc_145C803:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_7B8, 1)
  loc_145C82E:     var_B0 = "Insert Into TaxStru(Code,Name,Sno,TaxCode,Rate,Limit,Limit1,Site_Code,U_Name,U_EntDt,U_AE,Nature,CondApp,LogSite_Code,CompOperator,TaxBeforeDisc) Values ('" & global_60
  loc_145C86E:     var_1D8 = CVar(var_B0 & "','" & var_20C & "'," & CStr(Val(CStr(var_9C))) & ",'" & CStr(Me.FGrid.TextMatrix)) & "',") & Format(var_148, var_168) 
  loc_145C8AA:     var_44C = var_1D8 & "," & Format(CVar(var_848), "0.00") & "," & Format(CVar(var_850), "0.00") & ",'" & CVar(MemVar_1F92078) & "','" 
  loc_145C8E4:     var_5F8 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_9C)), var_848, CVar(CLng(5)))) 'String
  loc_145C8F0:     var_628 = var_44C & CVar(MemVar_1F920C8) & "'," & var_4AC & ",'" & IIf((CStr(var_4F0) = "Add"), "A", "E") & "','" & var_5F8 & "','" 
  loc_145C8FA:     var_6AC = var_628 & CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(8)), CVar(CLng(var_9C)), CVar(CLng(var_9C)))) 
  loc_145C920:     var_790 = var_6AC & "','" & CVar(MemVar_1F92078) & "','" & CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(var_9C)))) 
  loc_145C94A:     unk_4B5497.Execute CStr(var_790 & "','" & CVar(Proc_6_38_E68A98(CVar(var_7B8), 1)) & "')"), var_82C, -1
  loc_145CA0A:   End If
  loc_145CA0D: Next var_234 'Variant
  loc_145CA19: unk_4B5497.CommitTrans
  loc_145CA22: var_86 = CByte(0) 'Byte
  loc_145CA31: Me.Requery -1
  loc_145CA41: Me.Requery -1
  loc_145CA4A: Set var_A4 = Me.DGHelp
  loc_145CA5F: Set var_A4 = Me.DGTaxMast
  loc_145CA98: Me.Find "SearchCode='" & global_60 & "'", 0, 1
  loc_145CAA8: Set var_A4 = Me.TopCtrl1
  loc_145CAAE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D4)
  loc_145CAC7: If (CStr(DGTaxMast.DispID_FFFF) = "Add") Then
  loc_145CACA:   Call TopCtrl1_UnknownEvent_A()
  loc_145CACF:   Exit Sub
  loc_145CAD0: End If
  loc_145CAE5: var_B0 = "INI"
  loc_145CAF3: Call Proc_19_56_E7AB94(Proc_5_1_100CB50(var_B0, Me), global_68)
  loc_145CAFE: Call Proc_19_55_137A188(DGHelp.DispID_FFFF)
  loc_145CB03: Exit Sub
  loc_145CB04: ' Referenced from: 145C0F4
  loc_145CB0D: If (CInt(var_86) = 1) Then
  loc_145CB16:   unk_4B5497.RollbackTrans
  loc_145CB1B: End If
  loc_145CB23: Set var_A4 = Err()
  loc_145CB29: Call 0.Method_arg_2C (var_B0)
  loc_145CB42: MsgBox(CVar(var_B0), &H10, var_138, var_148, var_168)
  loc_145CB55: Exit Sub
End Sub

Private Sub DGTaxMast_UnknownEvent_9 'FC06C8
  'Data Table: 4B5478
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FC0533: Me.DGTaxMast.Visible = False
  loc_FC0552: If (Me.RecordCount > 0) Then
  loc_FC058F:   Set var_B4 = Me.TxtGrid
  loc_FC0595:   Call 0.Method_DGTaxMast_UnknownEvent_90 (0, var_B8)
  loc_FC059D:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FC05C6:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC05CE:   var_EC = CVar(CLng(2)) 'Long
  loc_FC0601:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FC0609:   Set var_B8 = Me.FGrid
  loc_FC060F:   LateIdCallSt
  loc_FC063E:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC0646:   var_EC = CVar(CLng(1)) 'Long
  loc_FC0668:   var_B0 = Me.Fields.Item("Code")
  loc_FC0679:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FC0681:   Set var_B8 = Me.FGrid
  loc_FC0687:   LateIdCallSt
  loc_FC06A3: End If
  loc_FC06AC: Set var_A8 = Me.TxtGrid
  loc_FC06B2: Call 0.Method_DGTaxMast_UnknownEvent_90 (0, var_B0, var_B8, var_11C, var_EC)
  loc_FC06BA: var_B0.SetFocus
  loc_FC06C6: Exit Sub
End Sub

Private Sub DGTaxMast_UnknownEvent_1F 'E6E420
  'Data Table: 4B5478
  loc_E6E3DE: Proc_6_153_E91194(Me.DGTaxMast, arg_14)
  loc_E6E3F5: Set var_8C = Me.FGPoint
  loc_E6E40F: Proc_6_138_106D6F8(Me.DGTaxMast, global_76, 0)
  loc_E6E41D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FEAF10
  'Data Table: 4B5478
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_FEAD46: Set var_88 = Me.Txt
  loc_FEAD4C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FEAD5A: Proc_6_74_E226B0(var_8C)
  loc_FEAD66: Call Proc_19_57_EF23B8(var_8C)
  loc_FEAD6E: var_92 = Index
  loc_FEAD79: If (var_92 = CInt(0)) Then
  loc_FEAD93:   If (Me.RecordCount > 0) Then
  loc_FEADA1:     Set var_8C = Me.FGPoint
  loc_FEADB9:     Proc_6_137_1193554(Me.DGHelp, global_72, Index)
  loc_FEADC7:   End If
  loc_FEAE15:   Set var_88 = Me.Txt
  loc_FEAE1B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FEAE23:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FEAE3B:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FEAE3E:     Exit Sub
  loc_FEAE3F:   End If
  loc_FEAE4C:   Set var_88 = Me.Txt
  loc_FEAE52:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FEAE5A:   var_A0 = var_8C.Text
  loc_FEAE6C:   var_B0 = "Name"
  loc_FEAEA7:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FEAEB0:     Me.MoveFirst
  loc_FEAED3:     Set var_88 = Me.Txt
  loc_FEAED9:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FEAEE1:     0 = var_8C.Text
  loc_FEAEFA:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_FEAF0F:   End If
  loc_FEAF0F: End If
  loc_FEAF0F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '109C6C0
  'Data Table: 4B5478
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim Shift As Integer
  Dim var_8C As Frame
  Dim var_9C As DataGrid
  loc_109C412: If (CLng(Shift) = &H1B) Then
  loc_109C415:   Call Proc_19_57_EF23B8()
  loc_109C41A:   Exit Sub
  loc_109C41B: End If
  loc_109C41E: var_86 = KeyCode
  loc_109C429: If (var_86 = CInt(0)) Then
  loc_109C444:   Set var_9C = Nothing
  loc_109C476:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_72, Shift)
  loc_109C4E1:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_109C4E8:     Set var_9C = Me.DGHelp
  loc_109C4EF:     Set var_90 = Me.FGPoint
  loc_109C507:     Proc_6_138_106D6F8(var_9C, global_72, KeyCode, var_90, 0)
  loc_109C515:   End If
  loc_109C518: Else
  loc_109C520:   If (var_86 = CInt(1)) Then
  loc_109C54C:     If (Ucase(Chr(CLng(Shift))) = "Y") Then
  loc_109C55C:       Set var_8C = Me.Txt
  loc_109C562:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, "Yes", 1)
  loc_109C56A:       var_90.Text = var_9C
  loc_109C579:     Else
  loc_109C5A2:       If (Ucase(Chr(CLng(Shift))) = "N") Then
  loc_109C5B2:         Set var_8C = Me.Txt
  loc_109C5B8:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, "No")
  loc_109C5C0:         var_90.Text = 0
  loc_109C5CC:       End If
  loc_109C5CC:     End If
  loc_109C5CE:     Shift = 0
  loc_109C5D1:   End If
  loc_109C5D1: End If
  loc_109C5DE: var_92 = Me.FrmList.Visible
  loc_109C5ED: Set var_90 = Me.DGHelp
  loc_109C627: If (((var_92 = 0) And (CBool(var_90.Visible) = 0)) And (CBool(Me.DGTaxMast.Visible) = 0)) Then
  loc_109C63F:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_109C645:     Call Proc_19_51_1095728(var_92, Shift)
  loc_109C650:     If (var_92 = &HFF) Then
  loc_109C660:       Set var_8C = Me.Txt
  loc_109C666:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_109C66E:       var_90.Text = vbNullString
  loc_109C67A:       Exit Sub
  loc_109C67B:     End If
  loc_109C67B:   End If
  loc_109C690:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_109C699:     Proc_6_75_E527CC(Shift, arg_14)
  loc_109C69E:   End If
  loc_109C6B1:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_109C6BA:     Proc_6_76_E52838(Shift, arg_14)
  loc_109C6BF:   End If
  loc_109C6BF: End If
  loc_109C6BF: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E24A44
  'Data Table: 4B5478
  Dim var_96 As Integer
  loc_E24A26: Proc_6_133_E7EF78(var_94)
  loc_E24A38: Proc_6_58_E054C0(CInt(var_94), CInt(var_94))
  loc_E24A40: var_96 = KeyAscii
  loc_E24A43: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EBEA10
  'Data Table: 4B5478
  loc_EBE982: If (KeyCode = CInt(0)) Then
  loc_EBE9A1:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBE9AE:     var_A4 = "Name"
  loc_EBE9CD:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_72)
  loc_EBE9FF:     Proc_6_138_106D6F8(Me.DGHelp, global_72, KeyCode, Me.FGPoint)
  loc_EBEA0D:   End If
  loc_EBEA0D: End If
  loc_EBEA0D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4CD4C
  'Data Table: 4B5478
  loc_E4CD2A: Set var_88 = Me.Txt
  loc_E4CD30: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4CD3E: Proc_6_73_E22704(var_8C)
  loc_E4CD4A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F908FC
  'Data Table: 4B5478
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_8C As MSHFlexGrid
  loc_F907A7: var_86 = Cancel
  loc_F907B2: If (var_86 = CInt(0)) Then
  loc_F907C0:   Set var_8C = Me.Txt
  loc_F907C6:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_F907EF:   If (Proc_6_27_EA565C(var_90, "Name") = 0) Then
  loc_F907FC:     Set var_8C = Me.Txt
  loc_F90802:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F9080A:     var_90.SetFocus
  loc_F90818:     arg_10 = &HFF
  loc_F9081B:     Exit Sub
  loc_F9081C:   End If
  loc_F9081F:   Call Proc_19_51_1095728(var_9A, arg_10)
  loc_F9082A:   If (var_9A = &HFF) Then
  loc_F9082F:     arg_10 = &HFF
  loc_F90832:     Exit Sub
  loc_F90833:   End If
  loc_F90846:   Me.FGrid.Col = 2
  loc_F90851: Else
  loc_F90859:   If (var_86 = CInt(1)) Then
  loc_F90866:     Set var_8C = Me.Txt
  loc_F9086C:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F908A7:     If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_F908B7:       Set var_8C = Me.Txt
  loc_F908BD:       Call 0.Method_Txt_Validate0 (Cancel, var_90, "Yes")
  loc_F908C5:       var_90.Text = arg_10
  loc_F908D4:     Else
  loc_F908E1:       Set var_8C = Me.Txt
  loc_F908E7:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F908EF:       var_90.Text = "No"
  loc_F908FB:     End If
  loc_F908FB:   End If
  loc_F908FB: End If
  loc_F908FB: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E64380
  'Data Table: 4B5478
  loc_E64350: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E64353:   Call DGHelp_UnknownEvent_9()
  loc_E64358: End If
  loc_E64374: If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_E64377:   Call DGTaxMast_UnknownEvent_9()
  loc_E6437C: End If
  loc_E6437C: Exit Sub
  loc_E6437D: StAryRecCopy
End Sub

Public Function MasterFormExitGet() '4B62B0
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4B62BF
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E93360
  'Data Table: 4B5478
  Dim Me As Recordset15
  loc_E932EE: On Error Goto loc_E93357
  loc_E932F7: Me.MoveFirst
  loc_E93321: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93349: Proc_5_0_110649C(&HFF, Me, global_68)
  loc_E93351: Call Proc_19_55_137A188(0)
  loc_E93356: Exit Sub
  loc_E93357: ' Referenced from: E932EE
  loc_E93357: Proc_6_60_E62BC4(var_A0)
  loc_E9335C: Exit Sub
End Sub

Public Sub Proc_19_50_11D82EC
  'Data Table: 4B5478
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_11D7E78: On Error Goto loc_11D82E3
  loc_11D7E89: Set var_88 = Me.Txt
  loc_11D7E8F: Call 0.Method_Proc_19_50_11D82EC0 (CInt(0), var_8C)
  loc_11D7EAE: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_11D7ECA: Set var_B4 = Me.Txt
  loc_11D7ED0: Call 0.Method_Proc_19_50_11D82EC0 (CInt(0), var_B8)
  loc_11D7EEB: Set var_88 = Me.Txt
  loc_11D7EF1: Call 0.Method_Proc_19_50_11D82EC0 (CInt(0), var_8C)
  loc_11D7F09: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_11D7F18: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_11D7F36: Set var_88 = Me.TxtGrid
  loc_11D7F3C: Call 0.Method_Proc_19_50_11D82EC0 (0, var_8C)
  loc_11D7F5B: Me.DGTaxMast.Left = CVar(var_8C.Left)
  loc_11D7F75: Set var_B4 = Me.TxtGrid
  loc_11D7F7B: Call 0.Method_Proc_19_50_11D82EC0 (0, var_B8)
  loc_11D7F94: Set var_88 = Me.TxtGrid
  loc_11D7F9A: Call 0.Method_Proc_19_50_11D82EC0 (0, var_8C)
  loc_11D7FAE: var_A0 = CVar((var_8C.Top + var_B8.Height)) 'Single
  loc_11D7FBD: Me.DGTaxMast.Top = CVar(var_8C.Left)
  loc_11D7FD3: Set var_C4 = Me.FGrid
  loc_11D7FE2: var_C4.Cols = 9
  loc_11D7FFB: global_56 = CStr(CLng(var_C4.BackColor))
  loc_11D8008: var_A0 = CVar(CLng(0)) 'Long
  loc_11D800D: var_E8 = &H226
  loc_11D8019: LateIdCallSt
  loc_11D8021: var_A0 = 0
  loc_11D802D: var_E8 = CVar(CLng(0)) 'Long
  loc_11D8032: var_108 = "S.No"
  loc_11D803B: LateIdCallSt
  loc_11D8046: var_A0 = CVar(CLng(1)) 'Long
  loc_11D804B: var_E8 = 0
  loc_11D8057: LateIdCallSt
  loc_11D8062: var_A0 = CVar(CLng(2)) 'Long
  loc_11D8067: var_E8 = &HAF0
  loc_11D8073: LateIdCallSt
  loc_11D807B: var_A0 = 0
  loc_11D8087: var_E8 = CVar(CLng(2)) 'Long
  loc_11D808C: var_108 = "Tax Name"
  loc_11D8095: LateIdCallSt
  loc_11D80A0: var_A0 = CVar(CLng(2)) 'Long
  loc_11D80AB: var_E8 = CVar(CInt(1)) 'Integer
  loc_11D80B2: LateIdCallSt
  loc_11D80BD: var_A0 = CVar(CLng(4)) 'Long
  loc_11D80C2: var_E8 = &H6A4
  loc_11D80CE: LateIdCallSt
  loc_11D80D6: var_A0 = 0
  loc_11D80E2: var_E8 = CVar(CLng(4)) 'Long
  loc_11D80E7: var_108 = "Apply On"
  loc_11D80F0: LateIdCallSt
  loc_11D80FB: var_A0 = CVar(CLng(4)) 'Long
  loc_11D8106: var_E8 = CVar(CInt(1)) 'Integer
  loc_11D810D: LateIdCallSt
  loc_11D8118: var_A0 = CVar(CLng(3)) 'Long
  loc_11D811D: var_E8 = &H320
  loc_11D8129: LateIdCallSt
  loc_11D8134: var_A0 = CVar(CLng(3)) 'Long
  loc_11D813F: var_E8 = CVar(CInt(7)) 'Integer
  loc_11D8146: LateIdCallSt
  loc_11D814E: var_A0 = 0
  loc_11D815A: var_E8 = CVar(CLng(3)) 'Long
  loc_11D815F: var_108 = "Rate"
  loc_11D8168: LateIdCallSt
  loc_11D8173: var_A0 = CVar(CLng(5)) 'Long
  loc_11D8178: var_E8 = &H320
  loc_11D8184: LateIdCallSt
  loc_11D818F: var_A0 = CVar(CLng(5)) 'Long
  loc_11D819A: var_E8 = CVar(CInt(7)) 'Integer
  loc_11D81A1: LateIdCallSt
  loc_11D81A9: var_A0 = 0
  loc_11D81B5: var_E8 = CVar(CLng(5)) 'Long
  loc_11D81BA: var_108 = "L. Limit"
  loc_11D81C3: LateIdCallSt
  loc_11D81CE: var_A0 = CVar(CLng(6)) 'Long
  loc_11D81D3: var_E8 = &H4C4
  loc_11D81DF: LateIdCallSt
  loc_11D81EA: var_A0 = CVar(CLng(6)) 'Long
  loc_11D81F5: var_E8 = CVar(CInt(1)) 'Integer
  loc_11D81FC: LateIdCallSt
  loc_11D8204: var_A0 = 0
  loc_11D8210: var_E8 = CVar(CLng(6)) 'Long
  loc_11D8215: var_108 = "Comparison Operator"
  loc_11D821E: LateIdCallSt
  loc_11D8229: var_A0 = CVar(CLng(7)) 'Long
  loc_11D822E: var_E8 = &H352
  loc_11D823A: LateIdCallSt
  loc_11D8245: var_A0 = CVar(CLng(7)) 'Long
  loc_11D8250: var_E8 = CVar(CInt(7)) 'Integer
  loc_11D8257: LateIdCallSt
  loc_11D825F: var_A0 = 0
  loc_11D826B: var_E8 = CVar(CLng(7)) 'Long
  loc_11D8270: var_108 = "U. Limit"
  loc_11D8279: LateIdCallSt
  loc_11D8284: var_A0 = CVar(CLng(8)) 'Long
  loc_11D8289: var_E8 = &H9C4
  loc_11D8295: LateIdCallSt
  loc_11D82A0: var_A0 = CVar(CLng(8)) 'Long
  loc_11D82AB: var_E8 = CVar(CInt(1)) 'Integer
  loc_11D82B2: LateIdCallSt
  loc_11D82BA: var_A0 = 0
  loc_11D82C6: var_E8 = CVar(CLng(8)) 'Long
  loc_11D82CB: var_108 = "Condition"
  loc_11D82D4: LateIdCallSt
  loc_11D82DE: Set var_C4 = Nothing 
  loc_11D82E2: Exit Sub
  loc_11D82E3: ' Referenced from: 11D7E78
  loc_11D82E3: Proc_6_60_E62BC4(var_C4, var_108, var_E8, var_A0, var_C4, var_E8, var_A0, var_C4)
  loc_11D82E8: Exit Sub
End Sub

Public Sub Proc_19_51_1095728
  'Data Table: 4B5478
  Dim Me As Recordset15
  Dim var_B8 As TextBox
  Dim unk_4B5497 As Connection15
  Dim var_E0 As Fields15
  Dim var_F4 As Field20
  loc_10954BC: If (Me.RecordCount = 0) Then
  loc_10954BF:   Proc_19_51_1095728 = 0
  loc_10954C5: End If
  loc_10954C9: Set var_A0 = Me.TopCtrl1
  loc_10954CF: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10954E8: If (CStr() = "Add") Then
  loc_1095526:   Set var_A0 = Me.Txt
  loc_109552C:   Call 0.Method_Proc_19_51_10957280 (CInt(0), var_B8, var_BC, "Select Count(*) From TaxStru Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1)
  loc_109554D:   unk_4B5497.Execute var_E0 & var_BC & "'", 0, var_F4
  loc_109555D:    = var_E0.Item()
  loc_1095565:    = var_F4.Value
  loc_1095596:   If (var_B8.Text.Fields > 0) Then
  loc_10955B4:     var_B0 = "Duplicate Name"
  loc_10955BA:     MsgBox(var_B0, &H40, "Information", var_124, var_144)
  loc_10955D5:     Set var_A0 = Me.Txt
  loc_10955DB:     Call 0.Method_Proc_19_51_10957280 (CInt(0))
  loc_10955E3:     var_B8.SetFocus
  loc_10955F4:     Proc_19_51_1095728 = &HFF
  loc_10955FA:   End If
  loc_10955FD: Else
  loc_1095638:   Set var_A0 = Me.Txt
  loc_109563E:   Call 0.Method_Proc_19_51_10957280 (CInt(0), var_B8, var_BC, "Select Count(*) From TaxStru Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1)
  loc_1095670:   unk_4B5497.Execute var_E0 & var_BC & "' And Name <>'" & global_80 & "'", 0, var_F4
  loc_1095680:    = var_E0.Item(var_B8)
  loc_1095688:    = var_F4.Value
  loc_10956BD:   If (var_B8.Text.Fields > 0) Then
  loc_10956E1:     MsgBox("Duplicate Name", &H40, "Information", var_124, var_144)
  loc_10956FC:     Set var_A0 = Me.Txt
  loc_1095702:     Call 0.Method_Proc_19_51_10957280 (CInt(0))
  loc_109570A:     var_B8.SetFocus
  loc_109571B:     Proc_19_51_1095728 = &HFF
  loc_1095721:   End If
  loc_1095721: End If
  loc_1095721: Proc_19_51_1095728 = var_B8
End Sub

Public Sub Proc_19_52_E405B8
  'Data Table: 4B5478
  loc_E40594: Set var_88 = Me.TopCtrl1
  loc_E4059A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E405B3: If (CStr() = "Browse") Then
  loc_E405B6:   Exit Sub
  loc_E405B7: End If
  loc_E405B7: Exit Sub
End Sub

Public Sub Proc_19_53_131216C(arg_C) '131216C
  'Data Table: 4B5478
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_114 As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_170 As Double
  Dim var_158 As Variant
  Dim var_138 As Variant
  Dim var_180 As Variant
  Dim var_124 As Variant
  Dim var_B0 As String
  loc_1311A37: var_A0 = CLng(Me.FGrid.Col)
  loc_1311A47: If (var_A0 = CLng(2)) Then
  loc_1311A98:   Set var_8C = Me.TxtGrid
  loc_1311A9E:   Call 0.Method_Proc_19_53_131216C0 (arg_C, var_AC, var_B0)
  loc_1311AA6:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_1311ABE:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_1311AD4:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1311ADC:     var_E0 = CVar(CLng(2)) 'Long
  loc_1311AE1:     var_100 = vbNullString
  loc_1311AEB:     Set var_AC = Me.FGrid
  loc_1311AF1:     LateIdCallSt
  loc_1311B16:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1311B1E:     var_E0 = CVar(CLng(1)) 'Long
  loc_1311B23:     var_100 = vbNullString
  loc_1311B2D:     Set var_AC = Me.FGrid
  loc_1311B33:     LateIdCallSt
  loc_1311B48:   Else
  loc_1311B5B:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1311B63:     var_F0 = CVar(CLng(2)) 'Long
  loc_1311B96:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1311B9E:     Set var_138 = Me.FGrid
  loc_1311BA4:     LateIdCallSt
  loc_1311BD3:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1311BDB:     var_F0 = CVar(CLng(1)) 'Long
  loc_1311BFD:     var_AC = Me.Fields.Item("Code")
  loc_1311C0E:     var_134 = CVar(CStr(var_AC.Value)) 'String
  loc_1311C16:     Set var_138 = Me.FGrid
  loc_1311C1C:     LateIdCallSt
  loc_1311C38:   End If
  loc_1311C3B: Else
  loc_1311C42:   If (var_A0 = CLng(3)) Then
  loc_1311C51:     Set var_8C = Me.TxtGrid
  loc_1311C57:     Call 0.Method_Proc_19_53_131216C0 (0, var_AC, var_B0, var_138, var_134, var_F0, var_D0)
  loc_1311C5F:     var_138 = var_AC.Text
  loc_1311C82:     var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1311C8A:     var_100 = CVar(CLng(3)) 'Long
  loc_1311CB7:     var_158 = CVar(CStr(Format(CVar(Val(var_B0)), "0.0000"))) 'String
  loc_1311CBF:     Set var_138 = Me.FGrid
  loc_1311CC5:     LateIdCallSt
  loc_1311CEB:   Else
  loc_1311CF2:     If Not (var_A0 = CLng(5)) Then
  loc_1311CFC:       If (var_A0 = CLng(7)) Then
  loc_1311CFF:       End If
  loc_1311D0B:       Set var_8C = Me.TxtGrid
  loc_1311D11:       Call 0.Method_Proc_19_53_131216C0 (0, var_AC, var_B0, var_138, var_158, 1, 1)
  loc_1311D19:       var_100 = var_AC.Text
  loc_1311D26:       var_170 = Val(var_B0)
  loc_1311D3C:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1311D45:       Set var_138 = Me.FGrid
  loc_1311D54:       var_100 = CVar(CLng(var_138.Col)) 'Long
  loc_1311D78:       var_134 = Format(CVar(var_170), "0.00")
  loc_1311D81:       var_180 = CVar(CStr(var_134)) 'String
  loc_1311D89:       Set var_184 = Me.FGrid
  loc_1311D8F:       LateIdCallSt
  loc_1311DB9:     Else
  loc_1311DC0:       If (var_A0 = CLng(4)) Then
  loc_1311DD0:         Set var_8C = Me.TxtGrid
  loc_1311DD6:         Call 0.Method_Proc_19_53_131216C0 (arg_C, var_AC, var_B0, var_184, var_180, 1, 1)
  loc_1311DDE:         var_100 = var_AC.Text
  loc_1311DF5:         If (var_B0 <> vbNullString) Then
  loc_1311E10:           Set var_AC = Me.ListView.SelectedItem
  loc_1311E16:           var_B0 = var_AC.Text
  loc_1311E28:           Set var_114 = Me.TxtGrid
  loc_1311E2E:           Call 0.Method_Proc_19_53_131216C0 (arg_C, var_138, var_B0, var_E0, var_170)
  loc_1311E36:           var_138.Text = var_E0
  loc_1311E4C:         End If
  loc_1311E5F:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1311E79:         Set var_8C = Me.TxtGrid
  loc_1311E7F:         Call 0.Method_Proc_19_53_131216C0 (arg_C, var_AC, var_B0, CVar(CLng(4)))
  loc_1311E87:         var_C0 = var_AC.Text
  loc_1311E8F:         var_124 = CVar(var_B0) 'String
  loc_1311E97:         Set var_138 = Me.FGrid
  loc_1311E9D:         LateIdCallSt
  loc_1311EBA:       Else
  loc_1311EC1:         If (var_A0 = CLng(6)) Then
  loc_1311ED1:           Set var_8C = Me.TxtGrid
  loc_1311ED7:           Call 0.Method_Proc_19_53_131216C0 (arg_C, var_AC, var_B0, var_138)
  loc_1311EDF:           var_124 = var_AC.Text
  loc_1311EF6:           If (var_B0 <> vbNullString) Then
  loc_1311F11:             Set var_AC = Me.ListView.SelectedItem
  loc_1311F17:             var_B0 = var_AC.Text
  loc_1311F29:             Set var_114 = Me.TxtGrid
  loc_1311F2F:             Call 0.Method_Proc_19_53_131216C0 (arg_C, var_138, var_B0)
  loc_1311F37:             var_138.Text = var_170
  loc_1311F4D:           End If
  loc_1311F60:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1311F7A:           Set var_8C = Me.TxtGrid
  loc_1311F80:           Call 0.Method_Proc_19_53_131216C0 (arg_C, var_AC, var_B0, CVar(CLng(6)))
  loc_1311F88:           var_C0 = var_AC.Text
  loc_1311F90:           var_124 = CVar(var_B0) 'String
  loc_1311F98:           Set var_138 = Me.FGrid
  loc_1311F9E:           LateIdCallSt
  loc_1311FBB:         Else
  loc_1311FC2:           If (var_A0 = CLng(8)) Then
  loc_1311FD2:             Set var_8C = Me.TxtGrid
  loc_1311FD8:             Call 0.Method_Proc_19_53_131216C0 (arg_C, var_AC, var_B0, var_138)
  loc_1311FE0:             var_124 = var_AC.Text
  loc_131200C:             If CBool(Trim(CVar(var_B0)) <> vbNullString) Then
  loc_1312027:               Set var_AC = Me.ListView.SelectedItem
  loc_131202D:               var_B0 = var_AC.Text
  loc_131203F:               Set var_114 = Me.TxtGrid
  loc_1312045:               Call 0.Method_Proc_19_53_131216C0 (arg_C, var_138, var_B0)
  loc_131204D:               var_138.Text = var_134
  loc_1312063:             End If
  loc_1312076:             var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_131207E:             var_E0 = CVar(CLng(8)) 'Long
  loc_1312090:             Set var_8C = Me.TxtGrid
  loc_1312096:             Call 0.Method_Proc_19_53_131216C0 (arg_C, var_AC, var_B0)
  loc_131209E:             var_E0 = var_AC.Text
  loc_13120A6:             var_124 = CVar(var_B0) 'String
  loc_13120AE:             Set var_138 = Me.FGrid
  loc_13120B4:             LateIdCallSt
  loc_13120E7:             var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_13120EC:             var_E0 = 1
  loc_1312123:             If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_131213B:               var_124 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1312143:               Set var_AC = Me.FGrid
  loc_131215F:             End If
  loc_131215F:           End If
  loc_131215F:         End If
  loc_131215F:       End If
  loc_131215F:     End If
  loc_131215F:   End If
  loc_131215F: End If
  loc_1312164: Proc_19_53_131216C = &HFF
End Sub

Public Sub Proc_19_54_F20090
  'Data Table: 4B5478
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F1FF92: global_80 = vbNullString
  loc_F1FFA4: Set var_8C = Me.Txt
  loc_F1FFAA: Call 0.Method_Proc_19_54_F20090C (var_8E, var_86)
  loc_F1FFBA: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1FFD0:   Set var_8C = Me.Txt
  loc_F1FFD6:   Call 0.Method_Proc_19_54_F200900 (CInt(var_86), var_98)
  loc_F1FFDE:   var_98.Text = vbNullString
  loc_F1FFFA:   Set var_8C = Me.Txt
  loc_F20000:   Call 0.Method_Proc_19_54_F200900 (CInt(var_86), var_98)
  loc_F20008:   var_98.Tag = vbNullString
  loc_F20017: Next var_92 'Byte
  loc_F20030: Me.FGrid.Rows = 1
  loc_F2004D: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F20055: Set var_98 = Me.FGrid
  loc_F20084: Me.FGrid.FixedRows = 1
  loc_F2008C: Exit Sub
End Sub

Public Sub Proc_19_55_137A188
  'Data Table: 4B5478
  Dim var_90 As Integer
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim unk_4B5497 As Connection15
  Dim var_8C As Recordset15
  Dim var_88 As Recordset15
  Dim var_130 As Fields15
  Dim var_148 As Variant
  Dim var_11C As Variant
  Dim var_134 As TextBox
  Dim var_12C As Variant
  loc_137993C: On Error Goto loc_137A182
  loc_1379941: var_90 = 1
  loc_137995B: If (Me.RecordCount > 0) Then
  loc_137996B:   var_D8 = "Select TaxStru.*,RevMast.Code as TaxCode, RevMast.Name as TaxName From TaxStru Left Join RevMast on RevMast.Code=TaxStru.TaxCode  where RevMast.FieldType='T' and TaxStru.Code='"
  loc_13799B4:   unk_4B5497.Execute CStr(var_D8 & Me.Fields.Item("SearchCode").Value & "' Order by Sno"), var_12C, -1
  loc_13799BF:   Set var_8C = var_130
  loc_1379A2C:   unk_4B5497.Execute CStr("Select U_Name,U_AE,U_EntDt From Taxstru where Code='" & var_8C.Fields.Item("Code").Value & "'  "), var_12C, -1
  loc_1379A37:   Set var_88 = var_130
  loc_1379A8B:   var_130 = var_88.Fields
  loc_1379AF4:   var_198 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), var_130) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_130.Item("U_AE")), var_130) = "E"), "Modified By : ", "User : "))
  loc_1379B39:   Me.LblUser.Caption = CStr(var_90 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_198)))
  loc_1379BB3:   var_134 = var_88.Fields.Item("U_AE")
  loc_1379C14:   var_198 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_134)) = "E"), "Last Update : ", "entdt : "))
  loc_1379C59:   Me.LblLDt.Caption = CStr(var_198 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1379CA5:   If (var_8C.RecordCount > 0) Then
  loc_1379CA8:     Call Proc_19_54_F20090()
  loc_1379CAD:     ' Referenced from: 137A149
  loc_1379CBC:     If Not(var_8C.EOF) Then
  loc_1379CF8:       Set var_130 = Me.Txt
  loc_1379CFE:       Call 0.Method_Proc_19_55_137A1880 (CInt(0), var_134)
  loc_1379D06:       var_134.Tag = CStr(var_8C.Fields.Item("Code").Value)
  loc_1379D55:       Set var_130 = Me.Txt
  loc_1379D5B:       Call 0.Method_Proc_19_55_137A1880 (CInt(0), var_134)
  loc_1379D63:       var_134.Text = CStr(var_8C.Fields.Item("Name").Value)
  loc_1379DAF:       Set var_130 = Me.Txt
  loc_1379DB5:       Call 0.Method_Proc_19_55_137A1880 (CInt(1), var_134)
  loc_1379DBD:       var_134.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("TaxBeforeDisc")))
  loc_1379DD5:       Set var_1F8 = Me.FGrid
  loc_1379DD8:       var_B4 = vbNullString
  loc_1379DED:       var_D8 = CVar(CLng(var_90)) 'Long
  loc_1379DF5:       var_11C = CVar(CLng(0)) 'Long
  loc_1379E25:       var_E8 = CVar(CStr(var_8C.Fields.Item("SNo").Value)) 'String
  loc_1379E2C:       LateIdCallSt
  loc_1379E7B:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("TaxCode")), CVar(CLng(1)), CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_1379E82:       LateIdCallSt
  loc_1379ECD:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("TaxName")), CVar(CLng(2)), CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_1379ED4:       LateIdCallSt
  loc_1379F1F:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CondApp")), CVar(CLng(8)), CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_1379F26:       LateIdCallSt
  loc_1379F58:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_1379F60:       var_148 = CVar(CLng(3)) 'Long
  loc_1379F8D:       var_12C = CVar(CStr(Format(CVar(var_8C.Fields.Item("Rate")), "0.0000"))) 'String
  loc_1379F94:       LateIdCallSt
  loc_1379FCA:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_1379FD2:       var_148 = CVar(CLng(5)) 'Long
  loc_137A006:       LateIdCallSt
  loc_137A055:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CompOperator")), CVar(CLng(6)), CVar(CLng(var_90)), var_1F8, CVar(CStr(Format(CVar(var_8C.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_137A05C:       LateIdCallSt
  loc_137A08E:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_137A096:       var_148 = CVar(CLng(7)) 'Long
  loc_137A0CA:       LateIdCallSt
  loc_137A119:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Nature")), CVar(CLng(4)), CVar(CLng(var_90)), var_1F8, CVar(CStr(Format(CVar(var_8C.Fields.Item("Limit1")), "0.00"))), 1, 1)) 'String
  loc_137A120:       LateIdCallSt
  loc_137A134:       Set var_1F8 = Nothing 
  loc_137A13E:       var_90 = (var_90 + 1)
  loc_137A144:       var_8C.MoveNext
  loc_137A149:       GoTo loc_1379CAD
  loc_137A14C:     End If
  loc_137A14E:     var_90 = 0
  loc_137A164:     Me.FGrid.FixedRows = 1
  loc_137A16C:   End If
  loc_137A16F: Else
  loc_137A16F:   Call Proc_19_54_F20090(var_90, var_90, var_1F8, var_E8, var_148)
  loc_137A174: End If
  loc_137A174: Call Proc_19_57_EF23B8(var_F8, var_1F8, var_E8)
  loc_137A17E: Set var_8C = Nothing
  loc_137A181: Exit Sub
  loc_137A182: ' Referenced from: 137993C
  loc_137A182: Proc_6_60_E62BC4(var_148)
  loc_137A187: Exit Sub
End Sub

Public Sub Proc_19_56_E7AB94(arg_C) 'E7AB94
  'Data Table: 4B5478
  Dim var_98 As TextBox
  loc_E7AB42: Set var_8C = Me.Txt
  loc_E7AB48: Call 0.Method_Proc_19_56_E7AB94C (var_8E, var_86)
  loc_E7AB58: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7AB6E:   Set var_8C = Me.Txt
  loc_E7AB74:   Call 0.Method_Proc_19_56_E7AB940 (CInt(var_86), var_98)
  loc_E7AB7C:   var_98.Enabled = arg_C
  loc_E7AB8B: Next var_92 'Byte
  loc_E7AB91: Exit Sub
End Sub

Public Sub Proc_19_57_EF23B8
  'Data Table: 4B5478
  loc_EF22FC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF230E:   Me.DGHelp.Visible = False
  loc_EF2316: End If
  loc_EF2332: If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_EF2344:   Me.DGTaxMast.Visible = False
  loc_EF234C: End If
  loc_EF2367: If (Me.FrmList.Visible = &HFF) Then
  loc_EF2376:   Me.FrmList.Visible = False
  loc_EF237E: End If
  loc_EF239A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF23AC:   Me.FGPoint.Visible = False
  loc_EF23B4: End If
  loc_EF23B4: Exit Sub
End Sub

Public Sub Proc_19_58_EE1BDC(arg_C) 'EE1BDC
  'Data Table: 4B5478
  Dim var_8C As TextBox
  loc_EE1B30: Call Proc_19_57_EF23B8()
  loc_EE1B40: Set var_88 = Me.Txt
  loc_EE1B46: Call 0.Method_Proc_19_58_EE1BDC0 (CInt(0))
  loc_EE1B6F: If (Proc_6_27_EA565C(var_8C, "Name") = 0) Then
  loc_EE1B72:   Exit Sub
  loc_EE1B73: End If
  loc_EE1BAA: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE1BAD:   Call TopCtrl1_UnknownEvent_16()
  loc_EE1BB5: Else
  loc_EE1BBF:   Set var_88 = Me.Txt
  loc_EE1BC5:   Call 0.Method_Proc_19_58_EE1BDC0 (arg_C, var_8C)
  loc_EE1BCD:   var_8C.SetFocus
  loc_EE1BD9: End If
  loc_EE1BD9: Exit Sub
End Sub

Public Sub Proc_19_59_FBF724
  'Data Table: 4B5478
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBF5A7: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FBF5AC:   var_92 = 2 'Byte
  loc_FBF5B0: End If
  loc_FBF5B9: Set var_98 = Me.TxtGrid
  loc_FBF5BF: Call 0.Method_Proc_19_59_FBF7240 (0, var_B0)
  loc_FBF5E2: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBF616: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBF63A:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBF63D:     GoTo loc_FBF70F
  loc_FBF640:   End If
  loc_FBF644:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBF66E:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBF678:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBF6AD:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBF6D1:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBF6EA:     Set var_98 = Me.TxtGrid
  loc_FBF6F0:     Call 0.Method_Proc_19_59_FBF7240 (0, var_B0, CVar(CLng(var_92)))
  loc_FBF6F8:     var_B0.SetFocus
  loc_FBF709:     Proc_19_59_FBF724 = 0
  loc_FBF70F:     ' Referenced from: FBF63D
  loc_FBF70F:   End If
  loc_FBF712: Next var_D4 'Integer
  loc_FBF71C: Proc_19_59_FBF724 = &HFF
loc_FBF722: End Sub
End Sub
