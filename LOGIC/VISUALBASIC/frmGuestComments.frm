VERSION 5.00
Begin VB.Form frmGuestComments
  Caption = "Guest Comments"
  BackColor = &HCAEBF2&
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
  ClientWidth = 7140
  ClientHeight = 5130
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7140
    Height = 450
    TabIndex = 38
  End
  Begin TextBox txt
    Index = 9
    Left = 14055
    Top = 8535
    Width = 1500
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGCity
    Left = 15660
    Top = 4875
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 35
  End
End

Attribute VB_Name = "frmGuestComments"

Private global_52 As Integer

Private Sub DGFuncType_UnknownEvent_9 'F4E9C4
  'Data Table: 4BA254
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4E8BB: (False).Visible = 
  loc_F4E8DA: If (Me.RecordCount > 0) Then
  loc_F4E919:   Set var_B4 = Me.txt
  loc_F4E91F:   Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F4E927:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4E95A:   var_B0 = Me.Fields.Item("Code")
  loc_F4E979:   Set var_B4 = Me.txt
  loc_F4E97F:   Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F4E987:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4E99D: End If
  loc_F4E9A8: Set var_A8 = Me.txt
  loc_F4E9AE: Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(&HB))
  loc_F4E9B6: var_B0.SetFocus
  loc_F4E9C2: Exit Sub
End Sub

Private Sub DGFuncType_UnknownEvent_1F 'EA160C
  'Data Table: 4BA254
  Dim var_A8 As Variant
  loc_EA158C: Set var_88 = ()
  loc_EA15B6: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA15BE: Set var_BC = txt.DispID_1D(var_A8)
  loc_EA15DE: Set var_BC = ()
  loc_EA15FA: Proc_6_138_106D6F8((txt.DispID_1B), global_76)
  loc_EA1608: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F4EF44
  'Data Table: 4BA254
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4EE3B: (False).Visible = 
  loc_F4EE5A: If (Me.RecordCount > 0) Then
  loc_F4EE99:   Set var_B4 = Me.txt
  loc_F4EE9F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_F4EEA7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4EEDA:   var_B0 = Me.Fields.Item("Code")
  loc_F4EEF9:   Set var_B4 = Me.txt
  loc_F4EEFF:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_F4EF07:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4EF1D: End If
  loc_F4EF28: Set var_A8 = Me.txt
  loc_F4EF2E: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HA))
  loc_F4EF36: var_B0.SetFocus
  loc_F4EF42: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'EA3260
  'Data Table: 4BA254
  Dim var_A8 As Variant
  loc_EA31E0: Set var_88 = ()
  loc_EA320A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3212: Set var_BC = txt.DispID_1D(var_A8)
  loc_EA3232: Set var_BC = ()
  loc_EA324E: Proc_6_138_106D6F8((txt.DispID_1B), global_80)
  loc_EA325C: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EAF41C
  'Data Table: 4BA254
  loc_EAF3A4: If (CBool(().Visible) = &HFF) Then
  loc_EAF3A7:   Call DGMarketSeg_UnknownEvent_9()
  loc_EAF3AC: End If
  loc_EAF3C8: If (CBool(().Visible) = &HFF) Then
  loc_EAF3CB:   Call DGFuncType_UnknownEvent_9()
  loc_EAF3D0: End If
  loc_EAF3EC: If (CBool(().Visible) = &HFF) Then
  loc_EAF3EF:   Call DGSource_UnknownEvent_9()
  loc_EAF3F4: End If
  loc_EAF410: If (CBool(().Visible) = &HFF) Then
  loc_EAF413:   Call DGParty_UnknownEvent_9()
  loc_EAF418: End If
  loc_EAF418: Exit Sub
End Sub

Private Sub DGMarketSeg_UnknownEvent_9 'F4E024
  'Data Table: 4BA254
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4DF1B: (False).Visible = 
  loc_F4DF3A: If (Me.RecordCount > 0) Then
  loc_F4DF79:   Set var_B4 = Me.txt
  loc_F4DF7F:   Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F4DF87:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4DFBA:   var_B0 = Me.Fields.Item("Code")
  loc_F4DFD9:   Set var_B4 = Me.txt
  loc_F4DFDF:   Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F4DFE7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4DFFD: End If
  loc_F4E008: Set var_A8 = Me.txt
  loc_F4E00E: Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HC))
  loc_F4E016: var_B0.SetFocus
  loc_F4E022: Exit Sub
End Sub

Private Sub DGMarketSeg_UnknownEvent_1F 'EA33E8
  'Data Table: 4BA254
  Dim var_A8 As Variant
  loc_EA3368: Set var_88 = ()
  loc_EA3392: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA339A: Set var_BC = txt.DispID_1D(var_A8)
  loc_EA33D6: Proc_6_138_106D6F8((txt.DispID_1B), global_64)
  loc_EA33E4: Exit Sub
  loc_EA33E5: CInt(&HC) = ()
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F81824
  'Data Table: 4BA254
  Dim var_8C As Variant
  Dim var_144 As TextBox
  loc_F816E4: On Error Goto loc_F8181B
  loc_F8170A: Call Proc_148_42_E7BE94(Proc_5_1_100CB50("ADD", Me))
  loc_F81715: Call Proc_148_41_EB680C(global_60)
  loc_F81727: (vbNullString).Caption = 
  loc_F8173C: (vbNullString).Caption = 
  loc_F81750: (&HFF).Enabled = 
  loc_F817C7: Set var_8C = Me.txt
  loc_F817CD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_144, CStr(1 & Format(Time, "hh:mm AMPM")), 1)
  loc_F817D5: var_144.Text = Format(MemVar_1F920EC, "dd/MMM/yyyy") & " "
  loc_F81800: Set var_8C = Me.txt
  loc_F81806: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_144)
  loc_F8180E: var_144.SetFocus
  loc_F8181A: Exit Sub
  loc_F8181B: ' Referenced from: F816E4
  loc_F8181B: Proc_6_60_E62BC4(1)
  loc_F81820: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EB4C80
  'Data Table: 4BA254
  loc_EB4BF4: On Error Goto loc_EB4C79
  loc_EB4C2E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EB4C54:   Call Proc_148_42_E7BE94(Proc_5_1_100CB50("INI", Me))
  loc_EB4C6B:   global_60(0).Enabled = 
  loc_EB4C73:   Call Proc_148_40_13E9584()
  loc_EB4C78: End If
  loc_EB4C78: Exit Sub
  loc_EB4C79: ' Referenced from: EB4BF4
  loc_EB4C79: Proc_6_60_E62BC4()
  loc_EB4C7E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1156908
  'Data Table: 4BA254
  Dim unk_4BA26B As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  Dim var_B4 As Variant
  loc_1156588: On Error Goto loc_11568B9
  loc_11565C2: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_11565CE:   unk_4BA26B.BeginTrans var_118
  loc_11565E4:   var_94 = Me.Bookmark 'Variant
  loc_1156630:   var_F4 = "Delete From GuestComments Where Code='" & Me.Fields.Item("SCode").Value & "'" 
  loc_115663E:   unk_4BA26B.Execute CStr(var_F4), var_114, -1
  loc_115667F:   var_B4 = Me.Fields.Item("SCode").Value
  loc_1156689:   var_160 = 0
  loc_115669C:   var_158 = 0
  loc_11566A7:   var_154 = 0
  loc_11566BA:   var_14C = 0
  loc_11566C5:   var_148 = 0
  loc_11566D8:   var_140 = 0
  loc_1156721:   Proc_154_5_10E33A4(MemVar_1F92044, "GuestComments", "Code", &HC8, CStr(var_B4), 0, 0, 0)
  loc_115674F:   unk_4BA26B.CommitTrans
  loc_115675F:   Me.Requery -1
  loc_115677F:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_115678C:     Me.Bookmark = var_94
  loc_1156794:   Else
  loc_11567A8:     If (Me.EOF = 0) Then
  loc_11567B1:       Me.MoveLast
  loc_11567B6:     End If
  loc_11567B6:   End If
  loc_11567B6:   Call Proc_148_40_13E9584(var_140, 0, var_148, var_14C)
  loc_11567CC:   Set var_11C = Me
  loc_11567D7:   Proc_5_0_110649C(&HFF, var_11C, global_60, 0)
  loc_11567DF: End If
  loc_11567F4: If (global_56 = MemVar_1F92078 & "BANQ") Then
  loc_11567FD:   global_92 = "IBOOK"
  loc_1156817:   unk_4BA26B.Execute "Select Distinct Party as Name From HallSale1 WHERE VType='IDC'", var_B4, -1
  loc_1156828:   Set global_68 = var_11C
  loc_1156839: Else
  loc_1156846:   var_124 = MemVar_1F92078 & "ODC"
  loc_115684E:   If (global_56 = var_124) Then
  loc_1156857:     global_92 = "OBOOK"
  loc_1156871:     unk_4BA26B.Execute "Select Distinct Party as Name From HallSale1 WHERE VType='ODC'", var_B4, -1
  loc_1156882:     Set global_68 = var_11C
  loc_1156890:   End If
  loc_1156890: End If
  loc_1156899: CVarUnk
  loc_115689E: VerifyVarObj
  loc_11568A4: Set var_11C = var_11C(global_68)
  loc_11568AA: LateIdStAd
  loc_11568B8: Exit Sub
  loc_11568B9: ' Referenced from: 1156588
  loc_11568BF: unk_4BA26B.RollbackTrans
  loc_11568D2: Call 0.Method_arg_2C (var_124, Err(), Err(), 0)
  loc_11568F3: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_1156906: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EE45C8
  'Data Table: 4BA254
  Dim var_8C As Variant
  Dim var_94 As TextBox
  loc_EE4504: On Error Goto loc_EE45C0
  loc_EE452A: Call Proc_148_42_E7BE94(Proc_5_1_100CB50("EDIT", Me))
  loc_EE4541: global_60(&HFF).Enabled = 
  loc_EE4556: Set var_8C = Me.txt
  loc_EE455C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EE4564: var_94.Enabled = False
  loc_EE457B: Set var_8C = Me.txt
  loc_EE4581: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1))
  loc_EE4589: var_94.SetFocus
  loc_EE45A2: var_94(vbNullString).Caption = 
  loc_EE45B7: (vbNullString).Caption = 
  loc_EE45BF: Exit Sub
  loc_EE45C0: ' Referenced from: EE4504
  loc_EE45C0: Proc_6_60_E62BC4()
  loc_EE45C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16260
  'Data Table: 4BA254
  loc_E16255: Me.Global.Unload Me
  loc_E1625D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB3130
  'Data Table: 4BA254
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim arg_32FF As Double
  loc_EB30B7: If (Me.RecordCount <= 0) Then
  loc_EB30C0:   var_B8 = "Information"
  loc_EB30DB:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB30EB:   Exit Sub
  loc_EB30EC: End If
  loc_EB310A: MemVar_1F92120 = Me
  loc_EB3121: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EB3126: Exit Sub
  loc_EB3127: Proc_6_60_E62BC4("SELECT Code as SCode,Name, DatenTime FROM GuestComments WHERE VType='" & global_92 & "'")
  loc_EB312C: Exit Sub
  loc_EB312D: arg_32FF = 
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E397F8
  'Data Table: 4BA254
  loc_E397E8: Proc_5_0_110649C(&HFF, Me)
  loc_E397F0: Call Proc_148_40_13E9584(global_60)
  loc_E397F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E39858
  'Data Table: 4BA254
  loc_E39848: Proc_5_0_110649C(&HFF, Me)
  loc_E39850: Call Proc_148_40_13E9584(global_60)
  loc_E39855: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E32BF8
  'Data Table: 4BA254
  loc_E32BE8: Proc_5_0_110649C(&HFF, Me)
  loc_E32BF0: Call Proc_148_40_13E9584(global_60)
  loc_E32BF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E32D18
  'Data Table: 4BA254
  Dim var_2301 As Double
  loc_E32D08: Proc_5_0_110649C(&HFF, Me)
  loc_E32D10: Call Proc_148_40_13E9584(global_60)
  loc_E32D15: Exit Sub
  loc_E32D16: var_2301 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '102FF64
  'Data Table: 4BA254
  Dim unk_4BA26B As Connection15
  Dim var_88 As Recordset15
  Dim var_9C As Variant
  Dim var_B8 As String
  Dim var_10E As Integer
  Dim var_AC As Variant
  loc_102FD34: On Error Goto loc_102FF5E
  loc_102FD4D: unk_4BA26B.Execute "SELECT GC.*, MarketSeg.Name AS SegmentName, BussSource.Name AS BussSourceName, FunctionType.Name AS EventName, SubGroup.Name as CompanyName FROM (((GuestComments GC LEFT JOIN MarketSeg ON GC.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON GC.BussSource = BussSource.Code) LEFT JOIN FunctionType ON GC.FuncType = FunctionType.Code) LEFT JOIN SubGroup ON GC.Company = SubGroup.SubCode", var_AC, -1
  loc_102FD58: Set var_88 = var_B0
  loc_102FD67: var_B4 = var_88.RecordCount
  loc_102FD75: If (var_B4 <= 0) Then
  loc_102FD7E:   Call 0.Method_arg_50 (var_B8)
  loc_102FD94:   var_9C = "** No Records Found to Print **"
  loc_102FD9F:   MsgBox(var_9C, &H40, CVar(var_B8), var_E8, var_108)
  loc_102FDAF:   Exit Sub
  loc_102FDB0: End If
  loc_102FDC6: Set var_B0 = var_88 
  loc_102FDD2: var_10E = CreateFieldDefFile(var_B0, MemVar_1F920B4 & "\GuestComments.ttx")
  loc_102FDDC: Set var_88 = var_B0
  loc_102FDFD: var_B8 = MemVar_1F920B4 & "\GuestComments.RPT"
  loc_102FE06: Call 0.Method_arg_1C (var_B8, var_9C, var_B0, var_10E)
  loc_102FE11: MemVar_1F921E4 = var_B0
  loc_102FE2C: Call 0.Method_arg_90 (var_B0, var_B4, var_8C, 1)
  loc_102FE34: Call 0.Method_arg_24 (var_10E, &HFF)
  loc_102FE40: For var_112 =  To CInt(var_B4): var_B0 = var_112 'Integer
  loc_102FE59:   Call 0.Method_arg_90 (var_B0, CLng(var_8C))
  loc_102FE61:   Call 0.Method_arg_20 (var_118)
  loc_102FE69:   Call 0.Method_arg_30 (var_B8)
  loc_102FE98:   If (Ucase(CVar(var_B8)) = "TITLE") Then
  loc_102FEAE:     Call 0.Method_arg_90 (var_B0, CLng(var_8C))
  loc_102FEB6:     Call 0.Method_arg_20 (var_118)
  loc_102FEBE:     Call 0.Method_arg_38 ("'Guest Comments'")
  loc_102FECA:   End If
  loc_102FECD: Next var_112 'Integer
  loc_102FEEB: Call 0.Method_arg_64 (var_B0, CVar(var_88))
  loc_102FEF3: Call 0.Method_arg_2C (var_D8)
  loc_102FF01: Call 0.Method_arg_150 (var_F8)
  loc_102FF0C: Call 0.Method_arg_50 (var_B8)
  loc_102FF16: Set var_118 = Nothing
  loc_102FF30: Set var_B0 = MemVar_1F921E4 
  loc_102FF3C: Proc_6_99_1483714(var_B0, 0, var_B8)
  loc_102FF47: MemVar_1F921E4 = var_B0
  loc_102FF5A: Set var_88 = Nothing
  loc_102FF5D: Exit Sub
  loc_102FF5E: ' Referenced from: 102FD34
  loc_102FF5E: Proc_6_60_E62BC4(&HFF)
  loc_102FF63: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E63F68
  'Data Table: 4BA254
  Dim Me As Recordset15
  loc_E63F1F: Me.Requery -1
  loc_E63F2F: Me.Requery -1
  loc_E63F3F: Me.Requery -1
  loc_E63F4F: Me.Requery -1
  loc_E63F5F: Me.Requery -1
  loc_E63F64: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1473A88
  'Data Table: 4BA254
  Dim var_98 As String
  Dim var_D0 As Variant
  Dim unk_4BA26B As Connection15
  Dim var_94 As Variant
  Dim var_9C As Variant
  Dim var_A0 As Field20
  Dim var_F4 As Variant
  Dim var_C0 As Variant
  Dim var_104 As Variant
  Dim Me As Recordset15
  Dim var_8E As Integer
  Dim var_10C As String
  Dim var_B0 As Variant
  Dim var_120 As TextBox
  Dim var_154 As Variant
  Dim var_15C As TextBox
  Dim var_1A8 As TextBox
  Dim var_1BC As Variant
  Dim var_1F4 As TextBox
  Dim var_240 As TextBox
  Dim var_284 As Variant
  Dim var_28C As TextBox
  Dim var_2B0 As Variant
  Dim var_2D8 As TextBox
  Dim var_2EC As Variant
  Dim var_324 As TextBox
  Dim var_36C As TextBox
  Dim var_3B8 As TextBox
  Dim var_414 As TextBox
  Dim var_470 As TextBox
  Dim var_4C4 As Variant
  Dim var_4CC As TextBox
  Dim var_5C0 As Variant
  Dim var_634 As String
  Dim var_160 As String
  Dim var_370 As String
  Dim var_320 As TextBox
  loc_1473028: On Error Goto loc_1473A6D
  loc_147302F: Set var_9C = ()
  loc_1473035: var_98 = "Comments"
  loc_1473056: If (Proc_6_27_EA565C(var_9C) = 0) Then
  loc_1473059:   Exit Sub
  loc_147305A: End If
  loc_1473065: Set var_94 = Me.txt
  loc_147306B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C)
  loc_1473073: var_98 = "Party name"
  loc_1473094: If (Proc_6_27_EA565C(var_9C, var_98) = 0) Then
  loc_1473097:   Exit Sub
  loc_1473098: End If
  loc_1473098: Call Proc_148_43_F22CF0(var_98)
  loc_14730A1: Set var_94 = Me.TopCtrl1
  loc_14730A7: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_14730C0: If (CStr() = "Add") Then
  loc_14730C9:   var_D0 = 0
  loc_14730E8:   unk_4BA26B.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From GuestComments", var_B0, -1
  loc_14730F0:   var_94 = var_94.Fields
  loc_14730F8:   var_D0 = var_9C.Item(var_9C)
  loc_1473100:   var_A0 = var_A0.Value
  loc_1473129:   var_F4 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1473154:   var_104 = (1 + Format(CStr(var_E0), "0000"))
  loc_1473159:   var_88 = CStr(var_104)
  loc_147316A: Else
  loc_1473187:   var_9C = Me.Fields.Item("SCode")
  loc_1473198:   var_88 = CStr(var_9C.Value)
  loc_14731A5: End If
  loc_14731AE: unk_4BA26B.BeginTrans var_108
  loc_14731BC: Set var_94 = Me.TopCtrl1
  loc_14731C2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(&HFF)
  loc_14731DB: If (CStr(1) = "Add") Then
  loc_14731F2:   var_98 = "Insert INTO GuestComments(Code,Name,                               Add1,               Add2,               City,               PinCode,               PhoneR,               PhoneO,               MobileNo,               DatenTime,              Comments,                   Company,                         FuncType,                         BussSource,                         MarketSeg,                 VType,            U_Name,                Site_Code,                 U_EntDt,   U_AE) " & "VALUES('"
  loc_1473200:   var_F4 = CVar(var_98 & var_88 & "','") 'String
  loc_147320E:   Set var_94 = Me.txt
  loc_1473214:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C, var_F4, var_654)
  loc_1473223:   var_E0 = Trim(CVar(var_9C))
  loc_147322B:   var_104 = -1 & var_E0 
  loc_1473246:   Set var_A0 = Me.txt
  loc_147324C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_124, var_104 & "','")
  loc_1473254:   var_658 = var_120.Text
  loc_1473268:   var_154 = var_F4 & CVar(var_124) & "','" 
  loc_147327A:   Set var_158 = Me.txt
  loc_1473280:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_15C, var_160)
  loc_1473288:   var_154 = var_15C.Text
  loc_14732AE:   Set var_1A4 = Me.txt
  loc_14732B4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1A8)
  loc_14732E2:   Set var_1F0 = Me.txt
  loc_14732E8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1F4)
  loc_1473316:   Set var_23C = Me.txt
  loc_147331C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_240)
  loc_147334A:   Set var_288 = Me.txt
  loc_1473350:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_28C)
  loc_1473363:   var_2B0 = var_E0 & CVar(var_160) & "','" & CVar(var_1A8.Text) & "','" & CVar(var_1F4.Text) & "','" & CVar(var_240.Text) & "','" & CVar(var_28C.Text) 
  loc_147337E:   Set var_2D4 = Me.txt
  loc_1473384:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_2D8)
  loc_14733B2:   Set var_320 = Me.txt
  loc_14733B8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_324)
  loc_14733DF:   Set var_36C = var_2B0 & "','" & CVar(var_2D8.Text) & "','" & CVar(var_324.Text) & "','"(var_370)
  loc_14733E5:    = var_36C.Text
  loc_147340B:   Set var_3B4 = Me.txt
  loc_1473411:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_3B8)
  loc_147344A:   Set var_410 = Me.txt
  loc_1473450:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_414)
  loc_1473489:   Set var_46C = Me.txt
  loc_147348F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_470)
  loc_14734B6:   var_4C4 = CVar(var_370) & "','" & Trim(CVar(var_3B8.Tag)) & "','" & Trim(CVar(var_414.Tag)) & "','" & Trim(CVar(var_470.Tag)) & "','" 
  loc_14734C8:   Set var_4C8 = Me.txt
  loc_14734CE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_4CC)
  loc_1473528:   var_5C0 = var_4C4 & Trim(CVar(var_4CC.Tag)) & "','" & CVar(global_92) & "','" & CVar(MemVar_1F920C8) & "','" & CVar(MemVar_1F92078) 
  loc_1473543:   Proc_6_7_F25D88(var_600, Date)
  loc_1473562:   unk_4BA26B.Execute CStr(var_5C0 & "'," & var_600 & ",'A')"), , 
  loc_1473625: Else
  loc_1473643:   Set var_94 = Me.txt
  loc_1473649:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C, var_98, "UPDATE GuestComments SET Name='")
  loc_1473651:   var_2EC = var_9C.Text
  loc_147365A:   var_10C = -1 & var_98
  loc_1473661:   var_160 = var_98 & var_88 & "',Add1 = '"
  loc_1473672:   Set var_A0 = Me.txt
  loc_1473678:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_124)
  loc_1473680:   var_160 = var_120.Text
  loc_14736A1:   Set var_158 = Me.txt
  loc_14736A7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_15C)
  loc_14736D0:   Set var_1A4 = Me.txt
  loc_14736D6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1A8)
  loc_14736FF:   Set var_1F0 = Me.txt
  loc_1473705:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1F4)
  loc_147371D:   var_634 = var_4C8 & var_124 & "',Add2 = '" & var_15C.Text & "',City = '" & var_1A8.Text & "',PinCode='" & var_1F4.Text & "',PhoneR='"
  loc_147372E:   Set var_23C = Me.txt
  loc_1473734:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_240)
  loc_147375D:   Set var_288 = Me.txt
  loc_1473763:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_28C)
  loc_147378C:   Set var_2D4 = Me.txt
  loc_1473792:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_2D8)
  loc_14737BA:    = var_634 & var_240.Text & "',PhoneO='" & var_28C.Text & "',MobileNo='" & var_2D8.Text & "',Comments='"(var_678).Text
  loc_14737DB:   Set var_324 = Me.txt
  loc_14737E1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_36C)
  loc_1473803:   var_C0 = "',FuncType='"
  loc_147381A:   Set var_3B4 = Me.txt
  loc_1473820:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_3B8)
  loc_1473859:   Set var_410 = Me.txt
  loc_147385F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_414)
  loc_147387D:   var_1BC = CVar(var_678 & "',Company='") & Trim(CVar(var_36C.Tag)) & var_C0 & Trim(CVar(var_3B8.Tag)) & "',BussSource='" & Trim(CVar(var_414.Tag)) 
  loc_1473898:   Set var_46C = Me.txt
  loc_147389E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_470)
  loc_14738E2:   var_284 = var_1BC & "',MarketSeg='" & Trim(CVar(var_470.Tag)) & "',SITE_CODE='" & CVar(MemVar_1F92078) & "',U_name='" & CVar(MemVar_1F920C8) 
  loc_147390C:   unk_4BA26B.Execute CStr(var_284 & "' WHERE Code='" & CVar(var_88) & "'"), , 
  loc_14739B4: End If
  loc_14739BA: unk_4BA26B.CommitTrans
  loc_14739C1: var_8E = 0
  loc_14739CF: Me.Requery -1
  loc_14739F9: Me.Find "SCode ='" & var_88 & "'", 0, 1
  loc_1473A09: Set var_94 = Me.TopCtrl1
  loc_1473A0F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_C0)
  loc_1473A28: If (CStr(var_8E) = "Add") Then
  loc_1473A2B:   Call TopCtrl1_UnknownEvent_A()
  loc_1473A30:   Exit Sub
  loc_1473A31: End If
  loc_1473A54: Call Proc_148_42_E7BE94(Proc_5_1_100CB50("INI", Me))
  loc_1473A5F: Call Proc_148_40_13E9584(global_60)
  loc_1473A69: Set var_8C = Nothing
  loc_1473A6C: Exit Sub
  loc_1473A6D: ' Referenced from: 1473028
  loc_1473A73: If (var_8E = &HFF) Then
  loc_1473A7C:   unk_4BA26B.RollbackTrans
  loc_1473A81: End If
  loc_1473A81: Proc_6_60_E62BC4()
  loc_1473A86: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '141B3D4
  'Data Table: 4BA254
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_141A946: Set var_88 = Me.txt
  loc_141A94C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_141A95A: Proc_6_74_E226B0(var_8C)
  loc_141A966: Call Proc_148_43_F22CF0(var_8C)
  loc_141A96E: var_92 = Index
  loc_141A979: If (var_92 = CInt(4)) Then
  loc_141A993:   If (Me.RecordCount > 0) Then
  loc_141A9A1:     Set var_8C = (var_92)
  loc_141A9B9:     Proc_6_137_1193554(Me.DGCity, global_108)
  loc_141A9C7:   End If
  loc_141AA15:   Set var_88 = Me.txt
  loc_141AA1B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_141AA23:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_141AA3B:   If (Index Or (var_A0 = vbNullString)) Then
  loc_141AA3E:     Exit Sub
  loc_141AA3F:   End If
  loc_141AA4C:   Set var_88 = Me.txt
  loc_141AA52:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141AA5A:   var_A0 = var_8C.Text
  loc_141AA6C:   var_B0 = "Name"
  loc_141AAA7:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_141AAB0:     Me.MoveFirst
  loc_141AAD3:     Set var_88 = Me.txt
  loc_141AAD9:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_141AAE1:     0 = var_8C.Text
  loc_141AAFA:     Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_141AB0F:   End If
  loc_141AB12: Else
  loc_141AB1A:   If (var_92 = CInt(1)) Then
  loc_141AB34:     If (Me.RecordCount > 0) Then
  loc_141AB42:       Set var_8C = ()
  loc_141AB5A:       Proc_6_137_1193554((), global_68)
  loc_141AB68:     End If
  loc_141ABB6:     Set var_88 = Me.txt
  loc_141ABBC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_141ABC4:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_141ABDC:     If (Index Or (var_A0 = vbNullString)) Then
  loc_141ABDF:       Exit Sub
  loc_141ABE0:     End If
  loc_141ABED:     Set var_88 = Me.txt
  loc_141ABF3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141ABFB:     var_A0 = var_8C.Text
  loc_141AC0D:     var_B0 = "Name"
  loc_141AC48:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_141AC51:       Me.MoveFirst
  loc_141AC74:       Set var_88 = Me.txt
  loc_141AC7A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_141AC82:       0 = var_8C.Text
  loc_141AC9B:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_141ACB0:     End If
  loc_141ACB3:   Else
  loc_141ACBB:     If (var_92 = CInt(&HC)) Then
  loc_141ACD5:       If (Me.RecordCount > 0) Then
  loc_141ACE3:         Set var_8C = ()
  loc_141ACFB:         Proc_6_137_1193554((), global_64)
  loc_141AD09:       End If
  loc_141AD57:       Set var_88 = Me.txt
  loc_141AD5D:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_141AD65:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_141AD7D:       If (Index Or (var_A0 = vbNullString)) Then
  loc_141AD8D:         Set var_88 = Me.txt
  loc_141AD93:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141AD9B:         var_8C.Tag = vbNullString
  loc_141ADA7:         Exit Sub
  loc_141ADA8:       End If
  loc_141ADB5:       Set var_88 = Me.txt
  loc_141ADBB:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141ADC3:       var_A0 = var_8C.Text
  loc_141ADD5:       var_B0 = "Name"
  loc_141AE10:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_141AE19:         Me.MoveFirst
  loc_141AE3C:         Set var_88 = Me.txt
  loc_141AE42:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_141AE4A:         0 = var_8C.Text
  loc_141AE63:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_141AE78:       End If
  loc_141AE7B:     Else
  loc_141AE83:       If (var_92 = CInt(&HA)) Then
  loc_141AE9D:         If (Me.RecordCount > 0) Then
  loc_141AEAB:           Set var_8C = ()
  loc_141AEC3:           Proc_6_137_1193554((), global_80)
  loc_141AED1:         End If
  loc_141AF1F:         Set var_88 = Me.txt
  loc_141AF25:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_141AF2D:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_141AF45:         If (Index Or (var_A0 = vbNullString)) Then
  loc_141AF55:           Set var_88 = Me.txt
  loc_141AF5B:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141AF63:           var_8C.Tag = vbNullString
  loc_141AF6F:           Exit Sub
  loc_141AF70:         End If
  loc_141AF7D:         Set var_88 = Me.txt
  loc_141AF83:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141AF8B:         var_A0 = var_8C.Text
  loc_141AF9D:         var_B0 = "Name"
  loc_141AFD8:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_141AFE1:           Me.MoveFirst
  loc_141B004:           Set var_88 = Me.txt
  loc_141B00A:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_141B012:           0 = var_8C.Text
  loc_141B02B:           Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_141B040:         End If
  loc_141B043:       Else
  loc_141B04B:         If (var_92 = CInt(&HD)) Then
  loc_141B065:           If (Me.RecordCount > 0) Then
  loc_141B073:             Set var_8C = ()
  loc_141B08B:             Proc_6_137_1193554((), global_72)
  loc_141B099:           End If
  loc_141B0E7:           Set var_88 = Me.txt
  loc_141B0ED:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_141B0F5:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_141B10D:           If (Index Or (var_A0 = vbNullString)) Then
  loc_141B11D:             Set var_88 = Me.txt
  loc_141B123:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141B12B:             var_8C.Tag = vbNullString
  loc_141B137:             Exit Sub
  loc_141B138:           End If
  loc_141B145:           Set var_88 = Me.txt
  loc_141B14B:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141B153:           var_A0 = var_8C.Text
  loc_141B165:           var_B0 = "Name"
  loc_141B1A0:           If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_141B1A9:             Me.MoveFirst
  loc_141B1CC:             Set var_88 = Me.txt
  loc_141B1D2:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_141B1DA:             0 = var_8C.Text
  loc_141B1F3:             Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_141B208:           End If
  loc_141B20B:         Else
  loc_141B213:           If (var_92 = CInt(&HB)) Then
  loc_141B22D:             If (Me.RecordCount > 0) Then
  loc_141B23B:               Set var_8C = ()
  loc_141B253:               Proc_6_137_1193554((), global_76)
  loc_141B261:             End If
  loc_141B2AF:             Set var_88 = Me.txt
  loc_141B2B5:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_141B2BD:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_141B2D5:             If (Index Or (var_A0 = vbNullString)) Then
  loc_141B2E5:               Set var_88 = Me.txt
  loc_141B2EB:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141B2F3:               var_8C.Tag = vbNullString
  loc_141B2FF:               Exit Sub
  loc_141B300:             End If
  loc_141B30D:             Set var_88 = Me.txt
  loc_141B313:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_141B31B:             var_A0 = var_8C.Text
  loc_141B32D:             var_B0 = "Name"
  loc_141B368:             If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_141B371:               Me.MoveFirst
  loc_141B394:               Set var_88 = Me.txt
  loc_141B39A:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_141B3A2:               0 = var_8C.Text
  loc_141B3BB:               Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_141B3D0:             End If
  loc_141B3D0:           End If
  loc_141B3D0:         End If
  loc_141B3D0:       End If
  loc_141B3D0:     End If
  loc_141B3D0:   End If
  loc_141B3D0: End If
  loc_141B3D0: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1344614
  'Data Table: 4BA254
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As DataGrid
  Dim var_9C As DataGrid
  Dim var_F4 As Variant
  loc_1343E46: If (CLng(Shift) = &H1B) Then
  loc_1343E49:   Call Proc_148_43_F22CF0()
  loc_1343E4E:   Exit Sub
  loc_1343E4F: End If
  loc_1343E52: var_86 = KeyCode
  loc_1343E5D: If (var_86 = CInt(4)) Then
  loc_1343E7D:   Set var_9C = (var_86)
  loc_1343EAF:   Proc_6_79_11ACE04(Me.DGCity, Me.txt, CInt(4), global_108, Shift)
  loc_1343F1C:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1343F23:     Set var_9C = Me.DGCity
  loc_1343F2A:     Set var_90 = 1(&HFF)
  loc_1343F42:     Proc_6_138_106D6F8(var_9C, global_108, KeyCode)
  loc_1343F50:   End If
  loc_1343F53: Else
  loc_1343F5B:   If (var_86 = CInt(1)) Then
  loc_1343F80:     If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_1343FA0:       Set var_9C = (0)
  loc_1343FD2:       Proc_6_79_11ACE04(var_9C(Me.txt), Me.txt, CInt(1), global_68, Shift)
  loc_1343FE6:     End If
  loc_134403F:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1344046:       Set var_9C = 0(&HFF)
  loc_134404D:       Set var_90 = 0(var_9C)
  loc_1344065:       Proc_6_138_106D6F8(var_9C, global_68)
  loc_1344073:     End If
  loc_1344076:   Else
  loc_134407E:     If (var_86 = CInt(&HC)) Then
  loc_13440A9:       Set var_9C = Nothing
  loc_13440D7:       Proc_6_69_134A198(Me.txt(KeyCode), Me.txt, KeyCode, global_64, Shift)
  loc_1344146:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_134414D:         Set var_9C = 1(0)
  loc_1344154:         Set var_90 = ()(var_9C)
  loc_134416C:         Proc_6_138_106D6F8(var_9C, global_64, KeyCode)
  loc_134417A:       End If
  loc_134417D:     Else
  loc_1344185:       If (var_86 = CInt(&HA)) Then
  loc_13441B0:         Set var_9C = Nothing
  loc_13441DE:         Proc_6_69_134A198(0(Me.txt), Me.txt, KeyCode, global_80, Shift)
  loc_134424D:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1344254:           Set var_9C = 1(0)
  loc_134425B:           Set var_90 = ()(var_9C)
  loc_1344273:           Proc_6_138_106D6F8(var_9C, global_80, KeyCode)
  loc_1344281:         End If
  loc_1344284:       Else
  loc_134428C:         If (var_86 = CInt(&HB)) Then
  loc_13442B7:           Set var_9C = Nothing
  loc_13442E5:           Proc_6_69_134A198(0(Me.txt), Me.txt, KeyCode, global_76, Shift)
  loc_1344354:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_134435B:             Set var_9C = 1(0)
  loc_1344362:             Set var_90 = ()(var_9C)
  loc_134437A:             Proc_6_138_106D6F8(var_9C, global_76, KeyCode)
  loc_1344388:           End If
  loc_134438B:         Else
  loc_1344393:           If (var_86 = CInt(&HD)) Then
  loc_13443BE:             Set var_9C = Nothing
  loc_13443EC:             Proc_6_69_134A198(0(Me.txt), Me.txt, KeyCode, global_72, Shift)
  loc_134445B:             If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1344462:               Set var_9C = 1(0)
  loc_1344469:               Set var_90 = ()(var_9C)
  loc_1344481:               Proc_6_138_106D6F8(var_9C, global_72, KeyCode)
  loc_134448F:             End If
  loc_134448F:           End If
  loc_134448F:         End If
  loc_134448F:       End If
  loc_134448F:     End If
  loc_134448F:   End If
  loc_134448F: End If
  loc_13444DD: var_F4 = (( And (CBool(((0 And (CBool(var_90((CBool(Me.DGCity.Visible) = 0))((CBool(Me.DGCity.Visible) = 0)).Visible) = 0))).Visible) = 0))).Visible
  loc_1344536: If ( And (CBool((( And (CBool((( And (CBool(var_F4) = 0))).Visible) = 0))).Visible) = 0)) Then
  loc_134454E:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1344557:     Proc_6_75_E527CC(Shift)
  loc_134455C:   End If
  loc_1344560:   Set var_8C = Me.TopCtrl1
  loc_1344566:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_14)
  loc_134457F:   If (CStr() = "Add") Then
  loc_1344597:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_13445A0:       Proc_6_76_E52838(Shift)
  loc_13445A5:     End If
  loc_13445A8:   Else
  loc_13445AC:     Set var_8C = Me.TopCtrl1
  loc_13445B2:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_14)
  loc_13445CB:     If (CStr() = "Edit") Then
  loc_13445E3:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_13445EC:         Proc_6_76_E52838(Shift)
  loc_13445F1:       End If
  loc_13445F1:     End If
  loc_13445F1:   End If
  loc_1344606:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_134460C:     Call Proc_148_44_E83174(KeyCode)
  loc_1344611:   End If
  loc_1344611: End If
  loc_1344611: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1054C54
  'Data Table: 4BA254
  Dim var_86 As Integer
  loc_10549E0: On Error Goto loc_1054C4B
  loc_10549E6: Proc_6_58_E054C0(arg_10)
  loc_10549EE: var_86 = KeyAscii
  loc_10549F9: If (var_86 = CInt(&HC)) Then
  loc_1054A18:   If (CBool((var_86).Visible) = &HFF) Then
  loc_1054A45:     Proc_6_89_146F1AC(Me.txt, KeyAscii, global_64)
  loc_1054A5F:     Set var_A8 = (0)
  loc_1054A77:     Proc_6_138_106D6F8("Name"(arg_10), global_64)
  loc_1054A85:   End If
  loc_1054A88: Else
  loc_1054A90:   If (var_86 = CInt(&HD)) Then
  loc_1054AAF:     If (CBool(var_A8(KeyAscii).Visible) = &HFF) Then
  loc_1054ADC:       Proc_6_89_146F1AC(Me.txt, KeyAscii, global_72)
  loc_1054AF6:       Set var_A8 = (0)
  loc_1054B0E:       Proc_6_138_106D6F8("Name"(arg_10), global_72)
  loc_1054B1C:     End If
  loc_1054B1F:   Else
  loc_1054B27:     If (var_86 = CInt(&HA)) Then
  loc_1054B46:       If (CBool(var_A8(KeyAscii).Visible) = &HFF) Then
  loc_1054B73:         Proc_6_89_146F1AC(Me.txt, KeyAscii, global_80)
  loc_1054B8D:         Set var_A8 = (0)
  loc_1054BA5:         Proc_6_138_106D6F8("Name"(arg_10), global_80)
  loc_1054BB3:       End If
  loc_1054BB6:     Else
  loc_1054BBE:       If (var_86 = CInt(&HB)) Then
  loc_1054BDD:         If (CBool(var_A8(KeyAscii).Visible) = &HFF) Then
  loc_1054C0A:           Proc_6_89_146F1AC(Me.txt, KeyAscii, global_76)
  loc_1054C24:           Set var_A8 = (0)
  loc_1054C3C:           Proc_6_138_106D6F8("Name"(arg_10), global_76)
  loc_1054C4A:         End If
  loc_1054C4A:       End If
  loc_1054C4A:     End If
  loc_1054C4A:   End If
  loc_1054C4A: End If
  loc_1054C4A: Exit Sub
  loc_1054C4B: ' Referenced from: 10549E0
  loc_1054C4B: Proc_6_60_E62BC4(KeyAscii)
  loc_1054C50: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F65D0C
  'Data Table: 4BA254
  Dim var_86 As Integer
  loc_F65BDF: var_86 = KeyCode
  loc_F65BEA: If (var_86 = CInt(4)) Then
  loc_F65C09:   If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_F65C35:     Proc_6_80_FF0AC0(Me.txt, CInt(4), global_108)
  loc_F65C4F:     Set var_A8 = "Name"(Shift)
  loc_F65C67:     Proc_6_138_106D6F8(Me.DGCity, global_108, KeyCode)
  loc_F65C75:   End If
  loc_F65C78: Else
  loc_F65C80:   If (var_86 = CInt(1)) Then
  loc_F65C9F:     If (CBool(var_86(var_A8).Visible) = &HFF) Then
  loc_F65CCB:       Proc_6_80_FF0AC0(Me.txt, CInt(1), global_68)
  loc_F65CE5:       Set var_A8 = ()
  loc_F65CFD:       Proc_6_138_106D6F8("Name"(Shift), global_68)
  loc_F65D0B:     End If
  loc_F65D0B:   End If
  loc_F65D0B: End If
  loc_F65D0B: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C52C
  'Data Table: 4BA254
  loc_E4C50A: Set var_88 = Me.txt
  loc_E4C510: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C51E: Proc_6_73_E22704(var_8C)
  loc_E4C52A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13B6960
  'Data Table: 4BA254
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_8C As Fields15
  Dim var_94 As String
  Dim var_B8 As TextBox
  Dim arg_10 As Integer
  loc_13B5FF8: On Error Goto loc_13B695A
  loc_13B5FFE: var_86 = Cancel
  loc_13B6009: If (var_86 = CInt(4)) Then
  loc_13B6019:   Set var_8C = Me.txt
  loc_13B601F:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B6027:   var_94 = var_90.Text
  loc_13B603E:   If (var_94 = vbNullString) Then
  loc_13B604E:     Set var_8C = Me.txt
  loc_13B6054:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B605C:     var_90.Tag = vbNullString
  loc_13B6068:     Exit Sub
  loc_13B6069:   End If
  loc_13B6080:   If (Me.RecordCount <= 0) Then
  loc_13B6083:     Exit Sub
  loc_13B6084:   End If
  loc_13B608A:   Me.MoveFirst
  loc_13B60AD:   Set var_8C = Me.txt
  loc_13B60B3:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94, "Name like '")
  loc_13B60BB:   0 = var_90.Text
  loc_13B60D4:   Me.Find 1 & var_94 & "*'", var_B0, var_86
  loc_13B6100:   If (Me.AbsolutePosition > 0) Then
  loc_13B613E:     Set var_B4 = Me.txt
  loc_13B6144:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B614C:     var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13B617F:     var_90 = Me.Fields.Item("Code")
  loc_13B619D:     Set var_B4 = Me.txt
  loc_13B61A3:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B61AB:     var_B8.Tag = CStr(var_90.Value)
  loc_13B61C1:   End If
  loc_13B61C4: Else
  loc_13B61CC:   If (var_86 = CInt(&HC)) Then
  loc_13B621D:     Set var_8C = Me.txt
  loc_13B6223:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B6243:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_13B6253:       Set var_8C = Me.txt
  loc_13B6259:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B6261:       var_90.Tag = vbNullString
  loc_13B626D:       Exit Sub
  loc_13B626E:     End If
  loc_13B62A9:     Set var_B4 = Me.txt
  loc_13B62AF:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B62B7:     var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13B62EA:     var_90 = Me.Fields.Item("Code")
  loc_13B6308:     Set var_B4 = Me.txt
  loc_13B630E:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B6316:     var_B8.Tag = CStr(var_90.Value)
  loc_13B632F:   Else
  loc_13B6337:     If (var_86 = CInt(&HD)) Then
  loc_13B6388:       Set var_8C = Me.txt
  loc_13B638E:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B63AE:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_13B63BE:         Set var_8C = Me.txt
  loc_13B63C4:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B63CC:         var_90.Tag = vbNullString
  loc_13B63D8:         Exit Sub
  loc_13B63D9:       End If
  loc_13B6414:       Set var_B4 = Me.txt
  loc_13B641A:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B6422:       var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13B6455:       var_90 = Me.Fields.Item("Code")
  loc_13B6473:       Set var_B4 = Me.txt
  loc_13B6479:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B6481:       var_B8.Tag = CStr(var_90.Value)
  loc_13B649A:     Else
  loc_13B64A2:       If (var_86 = CInt(&HA)) Then
  loc_13B64F3:         Set var_8C = Me.txt
  loc_13B64F9:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B6519:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_13B6529:           Set var_8C = Me.txt
  loc_13B652F:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B6537:           var_90.Tag = vbNullString
  loc_13B6543:           Exit Sub
  loc_13B6544:         End If
  loc_13B657F:         Set var_B4 = Me.txt
  loc_13B6585:         Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B658D:         var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13B65C0:         var_90 = Me.Fields.Item("Code")
  loc_13B65DE:         Set var_B4 = Me.txt
  loc_13B65E4:         Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B65EC:         var_B8.Tag = CStr(var_90.Value)
  loc_13B6605:       Else
  loc_13B660D:         If (var_86 = CInt(&HB)) Then
  loc_13B665E:           Set var_8C = Me.txt
  loc_13B6664:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B6684:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_13B6694:             Set var_8C = Me.txt
  loc_13B669A:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B66A2:             var_90.Tag = vbNullString
  loc_13B66AE:             Exit Sub
  loc_13B66AF:           End If
  loc_13B66EA:           Set var_B4 = Me.txt
  loc_13B66F0:           Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B66F8:           var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13B6714:           var_B0 = "Code"
  loc_13B672B:           var_90 = Me.Fields.Item(var_B0)
  loc_13B6749:           Set var_B4 = Me.txt
  loc_13B674F:           Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B6757:           var_B8.Tag = CStr(var_90.Value)
  loc_13B6770:         Else
  loc_13B6778:           If (var_86 = CInt(1)) Then
  loc_13B6788:             Set var_8C = Me.txt
  loc_13B678E:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B6796:             var_94 = var_90.Text
  loc_13B67AD:             If (var_94 = vbNullString) Then
  loc_13B67BD:               Set var_8C = Me.txt
  loc_13B67C3:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13B67CB:               var_90.Tag = vbNullString
  loc_13B67D9:               arg_10 = &HFF
  loc_13B67DC:               Exit Sub
  loc_13B67DD:             End If
  loc_13B67F4:             If (Me.RecordCount <= 0) Then
  loc_13B67F7:               GoTo loc_13B6959
  loc_13B67FA:             End If
  loc_13B6800:             Me.MoveFirst
  loc_13B6823:             Set var_8C = Me.txt
  loc_13B6829:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94, "Name like '")
  loc_13B6831:             0 = var_90.Text
  loc_13B684A:             Me.Find 1 & var_94 & "*'", var_B0, arg_10
  loc_13B6876:             If (Me.AbsolutePosition > 0) Then
  loc_13B6890:               If (Me.RecordCount > 0) Then
  loc_13B68CE:                 Set var_B4 = Me.txt
  loc_13B68D4:                 Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B68DC:                 var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13B692D:                 Set var_B4 = Me.txt
  loc_13B6933:                 Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13B693B:                 var_B8.Tag = CStr(Me.Fields.Item("DocID").Value)
  loc_13B6951:                 Call Proc_148_45_12A9564()
  loc_13B6956:                 GoTo loc_13B6959
  loc_13B6959:                 ' Referenced from:           13B6956
  loc_13B6959:                 ' Referenced from:           13B67F7
  loc_13B6959:               End If
  loc_13B6959:             End If
  loc_13B6959:           End If
  loc_13B6959:         End If
  loc_13B6959:       End If
  loc_13B6959:     End If
  loc_13B6959:   End If
  loc_13B6959: End If
  loc_13B6959: Exit Sub
  loc_13B695A: ' Referenced from: 13B5FF8
  loc_13B695A: Proc_6_60_E62BC4()
  loc_13B695F: Exit Sub
End Sub

Private Sub Form_Load() '13D1154
  'Data Table: 4BA254
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As TextBox
  Dim var_C4 As String
  Dim unk_4BA26B As Connection15
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_88 As Variant
  loc_13D07B4: On Error Goto loc_13D114B
  loc_13D07C5: Set var_88 = Me.txt
  loc_13D07CB: Call 0.Method_Form_Load0 (CInt(&HA), var_8C)
  loc_13D07EA: (CVar(var_8C.Left)).Left = 
  loc_13D0806: Set var_B4 = Me.txt
  loc_13D080C: Call 0.Method_Form_Load0 (CInt(&HA), var_B8)
  loc_13D0827: Set var_88 = Me.txt
  loc_13D082D: Call 0.Method_Form_Load0 (CInt(&HA), var_8C)
  loc_13D0845: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13D0854: (CVar(var_8C.Left)).Top = 
  loc_13D0874: Set var_88 = Me.txt
  loc_13D087A: Call 0.Method_Form_Load0 (CInt(&HC), var_8C)
  loc_13D0899: (CVar(var_8C.Left)).Left = 
  loc_13D08B5: Set var_B4 = Me.txt
  loc_13D08BB: Call 0.Method_Form_Load0 (CInt(&HC), var_B8)
  loc_13D08D6: Set var_88 = Me.txt
  loc_13D08DC: Call 0.Method_Form_Load0 (CInt(&HC), var_8C)
  loc_13D08F4: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13D0903: (CVar(var_8C.Left)).Top = 
  loc_13D0923: Set var_88 = Me.txt
  loc_13D0929: Call 0.Method_Form_Load0 (CInt(&HD), var_8C)
  loc_13D0948: (CVar(var_8C.Left)).Left = 
  loc_13D0964: Set var_B4 = Me.txt
  loc_13D096A: Call 0.Method_Form_Load0 (CInt(&HD), var_B8)
  loc_13D0985: Set var_88 = Me.txt
  loc_13D098B: Call 0.Method_Form_Load0 (CInt(&HD), var_8C)
  loc_13D09A3: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13D09B2: (CVar(var_8C.Left)).Top = 
  loc_13D09D2: Set var_88 = Me.txt
  loc_13D09D8: Call 0.Method_Form_Load0 (CInt(&HB), var_8C)
  loc_13D09F7: (CVar(var_8C.Left)).Left = 
  loc_13D0A13: Set var_B4 = Me.txt
  loc_13D0A19: Call 0.Method_Form_Load0 (CInt(&HB), var_B8)
  loc_13D0A34: Set var_88 = Me.txt
  loc_13D0A3A: Call 0.Method_Form_Load0 (CInt(&HB), var_8C)
  loc_13D0A52: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13D0A61: (CVar(var_8C.Left)).Top = 
  loc_13D0A81: Set var_88 = Me.txt
  loc_13D0A87: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_13D0AA6: (CVar(var_8C.Left)).Left = 
  loc_13D0AC2: Set var_B4 = Me.txt
  loc_13D0AC8: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_13D0AD0: var_BC = var_B8.Height
  loc_13D0AE3: Set var_88 = Me.txt
  loc_13D0AE9: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_13D0AF1: var_90 = var_8C.Top
  loc_13D0B01: var_A0 = CVar(((var_90 + var_BC) + CDbl(&H1E))) 'Single
  loc_13D0B10: (CVar(var_8C.Left)).Top = 
  loc_13D0B37: If (global_56 = MemVar_1F92078 & "BANQ") Then
  loc_13D0B40:   global_92 = "IBOOK"
  loc_13D0B5A:   unk_4BA26B.Execute "Select Distinct Party as Name,BookDocId AS DocId From HallSale1 WHERE VType='IDC'", var_D4, -1
  loc_13D0B6B:   Set global_68 = var_88
  loc_13D0B7C: Else
  loc_13D0B91:   If (global_56 = MemVar_1F92078 & "ODC") Then
  loc_13D0B9A:     global_92 = "OBOOK"
  loc_13D0BB4:     unk_4BA26B.Execute "Select Distinct Party as Name,BookDocId AS DocId From HallSale1 WHERE VType='ODC'", var_D4, -1
  loc_13D0BC5:     Set global_68 = var_88
  loc_13D0BD3:   End If
  loc_13D0BD3: End If
  loc_13D0BDC: CVarUnk
  loc_13D0BE1: VerifyVarObj
  loc_13D0BED: LateIdStAd
  loc_13D0C11: unk_4BA26B.Execute "Select Code,Name From MarketSeg Order by Name", var_D4, -1
  loc_13D0C39: CVarUnk
  loc_13D0C3E: VerifyVarObj
  loc_13D0C44: Set var_88 = var_88(var_88(global_68))
  loc_13D0C4A: LateIdStAd
  loc_13D0C74: Me.Recordset15.CursorLocation = 3
  loc_13D0CAA: CVarUnk
  loc_13D0CAF: VerifyVarObj
  loc_13D0CB5: Set var_88 = Me.DGCity
  loc_13D0CBB: LateIdStAd
  loc_13D0CDD: Call 0.Method_Form_Load0 (CInt(4), var_8C, var_90, Me.txt, New)
  loc_13D0CE5: 3 = var_8C.Left
  loc_13D0CFC: Me.DGCity.Left = CVar(var_90)
  loc_13D0D18: Set var_B4 = Me.txt
  loc_13D0D1E: Call 0.Method_Form_Load0 (CInt(4), var_B8, var_BC, -1)
  loc_13D0D26: var_88 = var_B8.Height
  loc_13D0D39: Set var_88 = Me.txt
  loc_13D0D3F: Call 0.Method_Form_Load0 (CInt(4), var_8C, var_90)
  loc_13D0D53: var_A0 = CVar((var_90 + var_BC)) 'Single
  loc_13D0D62: Me.DGCity.Top = CVar(var_90)
  loc_13D0D8A: unk_4BA26B.Execute "Select Code,Name From BussSource Order by Name", var_D4, -1
  loc_13D0DB2: CVarUnk
  loc_13D0DB7: VerifyVarObj
  loc_13D0DC3: LateIdStAd
  loc_13D0DE7: unk_4BA26B.Execute "Select Code,Name From FunctionType Order by Name", var_D4, -1
  loc_13D0E0F: CVarUnk
  loc_13D0E14: VerifyVarObj
  loc_13D0E20: LateIdStAd
  loc_13D0E44: unk_4BA26B.Execute "Select SubCode As Code,Name From SubGroup Where Nature='Customer' order by Name", var_D4, -1
  loc_13D0E6C: CVarUnk
  loc_13D0E71: VerifyVarObj
  loc_13D0E77: Set var_88 = var_88(var_88(var_88(var_8C.Top)))
  loc_13D0E7D: LateIdStAd
  loc_13D0E95: Set global_60 = New 
  loc_13D0EA7: Me.Recordset15.CursorLocation = 3
  loc_13D0ECD: var_C4 = "Select code as SCode,Code,Name,Add1,Add2,City,PinCode,PhoneR,PhoneO,MobileNo,FaxNo,DatenTime,Comments From GuestComments S WHERE  VType='" & global_92
  loc_13D0ED4: var_D4 = CVar(var_C4 & "' Order by Code") 'String
  loc_13D0EDE: elect CITYCODE AS Code,CITYNAME AS Name From CITY Order by CITYName", CVar(MemVar_1F92044), 2 var_D4, CVar(MemVar_1F92044), 3
  loc_13D0EE9: Call Proc_148_46_10C5E5C(1, -1, var_88)
  loc_13D0F13: Call 0.Method_arg_50 (var_C4, "SELECT COUNT(*) FROM LASTVOU WHERE ENAME='", var_D4, -1, var_88, var_8C)
  loc_13D0F3A: unk_4BA26B.Execute 0 & var_C4 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_B4, var_F4
  loc_13D0F42: var_88 = var_88.Fields
  loc_13D0F4A: var_88 = var_8C.Item(var_88)
  loc_13D0F52:  = var_B4.Value
  loc_13D0F7F: If (var_F4 > 0) Then
  loc_13D0FBA:   Call 0.Method_arg_50 (var_C4, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_D4, -1, var_88, var_8C, 0)
  loc_13D0FE1:   unk_4BA26B.Execute var_B4 & var_C4 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_F4, "SearchCode='"
  loc_13D0FE9:   0 = var_88.Fields
  loc_13D0FF1:   var_148 = var_8C.Item(1)
  loc_13D0FF9:    = var_B4.Value
  loc_13D1018:   Me.Find CStr(var_F4 & "'"), , 
  loc_13D1040: End If
  loc_13D1057: If (Me.RecordCount > 0) Then
  loc_13D106E:   If (Me.EOF = &HFF) Then
  loc_13D1077:     Me.MoveLast
  loc_13D107C:   End If
  loc_13D107C: End If
  loc_13D1088: (0).Enabled = 
  loc_13D1097: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_13D10AB: (CDbl(13500)).Left = 
  loc_13D10C2: (CDbl(7800)).Top = 
  loc_13D10D9: (CDbl(8160)).Top = 
  loc_13D10EA: Set var_88 = (CDbl(13500))
  loc_13D10F0: var_88.Left = 
  loc_13D1101: Call 0.Method_arg_160 (var_88)
  loc_13D110F: Call 0.Method_arg_164 (var_88)
  loc_13D1117: Call Proc_148_40_13E9584()
  loc_13D113F: Call Proc_148_42_E7BE94(Proc_5_1_100CB50("INI", Me))
  loc_13D114A: Exit Sub
  loc_13D114B: ' Referenced from: 13D07B4
  loc_13D114B: Proc_6_60_E62BC4(global_60)
  loc_13D1150: Exit Sub
End Sub

Private Sub Form_Resize() 'ED4798
  'Data Table: 4BA254
  Dim var_8C As Label
  Dim var_B4 As Label
  loc_ED46F6: Call 0.Method_arg_50 (var_88)
  loc_ED4708: (var_88).Caption = 
  loc_ED4721: (CDbl(0)).Left = 
  loc_ED472D: Set var_A0 = Me.TopCtrl1
  loc_ED4733: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED4740: Set var_8C = Me.TopCtrl1
  loc_ED4746: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED475A: Set var_B4 = ((CDbl() + CDbl(var_B0)))
  loc_ED4760: var_B4.Top = 
  loc_ED477B: Call 0.Method_arg_100 (var_B8)
  loc_ED478D: (var_B8).Width = 
  loc_ED4795: Exit Sub
  loc_ED4796: Set var_2400 = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1ED70
  'Data Table: 4BA254
  loc_E1ED59: global_52 = 0
  loc_E1ED67: Set global_108 = Nothing
  loc_E1ED6E: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26304
  'Data Table: 4BA254
  loc_E262E9: If (global_52 = &HFF) Then
  loc_E262F9:   Me.Global.Unload Me
  loc_E26301: End If
  loc_E26301: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E39798
  'Data Table: 4BA254
  loc_E3976C: On Error Goto loc_E39790
  loc_E39787: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3978F: Exit Sub
  loc_E39790: ' Referenced from: E3976C
  loc_E39790: Proc_6_60_E62BC4(Shift)
  loc_E39795: Exit Sub
  loc_E39796: CExtInstUnk
End Sub

Private Sub DGSource_UnknownEvent_9 'F4C344
  'Data Table: 4BA254
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4C23B: (False).Visible = 
  loc_F4C25A: If (Me.RecordCount > 0) Then
  loc_F4C299:   Set var_B4 = Me.txt
  loc_F4C29F:   Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F4C2A7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4C2DA:   var_B0 = Me.Fields.Item("Code")
  loc_F4C2F9:   Set var_B4 = Me.txt
  loc_F4C2FF:   Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F4C307:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4C31D: End If
  loc_F4C328: Set var_A8 = Me.txt
  loc_F4C32E: Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HD))
  loc_F4C336: var_B0.SetFocus
  loc_F4C342: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F4DAA4
  'Data Table: 4BA254
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4D99B: (False).Visible = 
  loc_F4D9BA: If (Me.RecordCount > 0) Then
  loc_F4D9F9:   Set var_B4 = Me.txt
  loc_F4D9FF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4DA07:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4DA3A:   var_B0 = Me.Fields.Item("DocID")
  loc_F4DA59:   Set var_B4 = Me.txt
  loc_F4DA5F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4DA67:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4DA7D: End If
  loc_F4DA88: Set var_A8 = Me.txt
  loc_F4DA8E: Call 0.Method_DGParty_UnknownEvent_90 (CInt(1))
  loc_F4DA96: var_B0.SetFocus
  loc_F4DAA2: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_1F 'EA3D18
  'Data Table: 4BA254
  Dim var_A8 As Variant
  loc_EA3C98: Set var_88 = ()
  loc_EA3CC2: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3CCA: Set var_BC = DGCity.DispID_1D(var_A8)
  loc_EA3CEA: Set var_BC = ()
  loc_EA3D06: Proc_6_138_106D6F8((DGCity.DispID_1B), global_68)
  loc_EA3D14: Exit Sub
End Sub

Public Function global_52Get() '4BB1E4
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4BB1F3
  global_52 = Value
End Sub

Public Function global_56Get() '4BB202
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4BB211
  global_56 = Value
End Sub

Public Sub FindMove(mDocId) 'E75EB4
  'Data Table: 4BA254
  Dim Me As Recordset15
  loc_E75E5E: Me.MoveFirst
  loc_E75E88: Me.Find "SCode='" & mDocId & "'", 0, 1
  loc_E75EA8: If (Me.EOF = 0) Then
  loc_E75EAB:   Call Proc_148_40_13E9584(var_9C)
  loc_E75EB0: End If
  loc_E75EB0: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E944A0
  'Data Table: 4BA254
  Dim Me As Recordset15
  loc_E9442E: On Error Goto loc_E94497
  loc_E94437: Me.MoveFirst
  loc_E94461: Me.Find "SCode='" & MyValue & "'", 0, 1
  loc_E94489: Proc_5_0_110649C(&HFF, Me, global_60)
  loc_E94491: Call Proc_148_40_13E9584(0)
  loc_E94496: Exit Sub
  loc_E94497: ' Referenced from: E9442E
  loc_E94497: Proc_6_60_E62BC4(var_A0)
  loc_E9449C: Exit Sub
  loc_E9449D: CExtInstUnk
End Sub

Public Sub Proc_148_40_13E9584
  'Data Table: 4BA254
  Dim Me As Recordset15
  Dim var_D0 As String
  Dim unk_4BA26B As Connection15
  Dim var_8C As Recordset15
  Dim var_128 As Variant
  Dim var_1EC As Recordset15
  Dim var_12C As TextBox
  loc_13E8BBC: On Error Goto loc_13E957C
  loc_13E8BCB: (0).Enabled = 
  loc_13E8BEA: If (Me.RecordCount > 0) Then
  loc_13E8BFA:   var_D0 = "SELECT GC.*, MarketSeg.Name AS SegmentName, BussSource.Name AS BussSourceName, FunctionType.Name AS EventName, SubGroup.Name as CompanyName FROM (((GuestComments GC LEFT JOIN MarketSeg ON GC.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON GC.BussSource = BussSource.Code) LEFT JOIN FunctionType ON GC.FuncType = FunctionType.Code) LEFT JOIN SubGroup ON GC.Company = SubGroup.SubCode Where GC.Code='"
  loc_13E8C43:   unk_4BA26B.Execute CStr(var_D0 & Me.Fields.Item("SCode").Value & "'"), var_124, -1
  loc_13E8C4E:   Set var_8C = var_128
  loc_13E8CA2:   var_128 = var_8C.Fields
  loc_13E8D0B:   var_190 = IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_128.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_13E8D50:   (CStr(var_128 & CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_Name")), var_190)))).Caption = 
  loc_13E8DCA:   var_12C = var_8C.Fields.Item("U_AE")
  loc_13E8E2B:   var_190 = IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_12C)) = "E"), "Last Update : ", "entdt : "))
  loc_13E8E70:   (CStr(var_190 & CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_EntDt")))))).Caption = 
  loc_13E8EAB:   Set var_1EC = var_8C 
  loc_13E8EE8:   Set var_128 = Me.txt
  loc_13E8EEE:   Call 0.Method_Proc_148_40_13E95840 (CInt(0), var_12C)
  loc_13E8EF6:   var_12C.Text = CStr(var_1EC.Fields.Item("DatenTime").Value)
  loc_13E8F45:   Set var_128 = Me.txt
  loc_13E8F4B:   Call 0.Method_Proc_148_40_13E95840 (CInt(1), var_12C)
  loc_13E8F53:   var_12C.Text = CStr(var_1EC.Fields.Item("Name").Value)
  loc_13E8FA2:   Set var_128 = Me.txt
  loc_13E8FA8:   Call 0.Method_Proc_148_40_13E95840 (CInt(2), var_12C)
  loc_13E8FB0:   var_12C.Text = CStr(var_1EC.Fields.Item("Add1").Value)
  loc_13E8FFF:   Set var_128 = Me.txt
  loc_13E9005:   Call 0.Method_Proc_148_40_13E95840 (CInt(3), var_12C)
  loc_13E900D:   var_12C.Text = CStr(var_1EC.Fields.Item("Add2").Value)
  loc_13E905C:   Set var_128 = Me.txt
  loc_13E9062:   Call 0.Method_Proc_148_40_13E95840 (CInt(4), var_12C)
  loc_13E906A:   var_12C.Text = CStr(var_1EC.Fields.Item("City").Value)
  loc_13E90B9:   Set var_128 = Me.txt
  loc_13E90BF:   Call 0.Method_Proc_148_40_13E95840 (CInt(5), var_12C)
  loc_13E90C7:   var_12C.Text = CStr(var_1EC.Fields.Item("PinCode").Value)
  loc_13E9116:   Set var_128 = Me.txt
  loc_13E911C:   Call 0.Method_Proc_148_40_13E95840 (CInt(6), var_12C)
  loc_13E9124:   var_12C.Text = CStr(var_1EC.Fields.Item("PhoneR").Value)
  loc_13E9173:   Set var_128 = Me.txt
  loc_13E9179:   Call 0.Method_Proc_148_40_13E95840 (CInt(7), var_12C)
  loc_13E9181:   var_12C.Text = CStr(var_1EC.Fields.Item("PhoneO").Value)
  loc_13E91D0:   Set var_128 = Me.txt
  loc_13E91D6:   Call 0.Method_Proc_148_40_13E95840 (CInt(8), var_12C)
  loc_13E91DE:   var_12C.Text = CStr(var_1EC.Fields.Item("MobileNo").Value)
  loc_13E922D:   Set var_128 = Me.txt
  loc_13E9233:   Call 0.Method_Proc_148_40_13E95840 (CInt(9), var_12C)
  loc_13E923B:   var_12C.Text = CStr(var_1EC.Fields.Item("FaxNo").Value)
  loc_13E9287:   Set var_128 = Me.txt
  loc_13E928D:   Call 0.Method_Proc_148_40_13E95840 (CInt(&HB), var_12C)
  loc_13E9295:   var_12C.Tag = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("FuncType")))
  loc_13E92DF:   Set var_128 = Me.txt
  loc_13E92E5:   Call 0.Method_Proc_148_40_13E95840 (CInt(&HB), var_12C)
  loc_13E92ED:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("EventName")))
  loc_13E9337:   Set var_128 = Me.txt
  loc_13E933D:   Call 0.Method_Proc_148_40_13E95840 (CInt(&HC), var_12C)
  loc_13E9345:   var_12C.Tag = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("MarketSeg")))
  loc_13E938F:   Set var_128 = Me.txt
  loc_13E9395:   Call 0.Method_Proc_148_40_13E95840 (CInt(&HC), var_12C)
  loc_13E939D:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("SegmentName")))
  loc_13E93E7:   Set var_128 = Me.txt
  loc_13E93ED:   Call 0.Method_Proc_148_40_13E95840 (CInt(&HD), var_12C)
  loc_13E93F5:   var_12C.Tag = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("BussSource")))
  loc_13E943F:   Set var_128 = Me.txt
  loc_13E9445:   Call 0.Method_Proc_148_40_13E95840 (CInt(&HD), var_12C)
  loc_13E944D:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("BussSourcename")))
  loc_13E9497:   Set var_128 = Me.txt
  loc_13E949D:   Call 0.Method_Proc_148_40_13E95840 (CInt(&HA), var_12C)
  loc_13E94A5:   var_12C.Tag = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Company")))
  loc_13E94EF:   Set var_128 = Me.txt
  loc_13E94F5:   Call 0.Method_Proc_148_40_13E95840 (CInt(&HA), var_12C)
  loc_13E94FD:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("CompanyName")))
  loc_13E9546:   (Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Comments")))).Text = 
  loc_13E955A:   Set var_1EC = Nothing 
  loc_13E955E: End If
  loc_13E955E: Call Proc_148_43_F22CF0()
  loc_13E9568: Set var_8C = Nothing
  loc_13E9570: Set var_90 = Nothing
  loc_13E9578: Set var_94 = Nothing
  loc_13E957B: Exit Sub
  loc_13E957C: ' Referenced from: 13E8BBC
  loc_13E957C: Proc_6_60_E62BC4()
  loc_13E9581: Exit Sub
End Sub

Public Sub Proc_148_41_EB680C
  'Data Table: 4BA254
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  loc_EB677A: Set var_8C = Me.txt
  loc_EB6780: Call 0.Method_Proc_148_41_EB680CC (var_8E, var_86)
  loc_EB6790: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB67A6:   Set var_8C = Me.txt
  loc_EB67AC:   Call 0.Method_Proc_148_41_EB680C0 (CInt(var_86), var_98)
  loc_EB67B4:   var_98.Text = vbNullString
  loc_EB67D0:   Set var_8C = Me.txt
  loc_EB67D6:   Call 0.Method_Proc_148_41_EB680C0 (CInt(var_86), var_98)
  loc_EB67DE:   var_98.Tag = vbNullString
  loc_EB67ED: Next var_92 'Byte
  loc_EB6800: (vbNullString).Text = 
  loc_EB6808: Exit Sub
End Sub

Public Sub Proc_148_42_E7BE94(arg_C) 'E7BE94
  'Data Table: 4BA254
  Dim var_98 As TextBox
  loc_E7BE42: Set var_8C = Me.txt
  loc_E7BE48: Call 0.Method_Proc_148_42_E7BE94C (var_8E, var_86)
  loc_E7BE58: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7BE6E:   Set var_8C = Me.txt
  loc_E7BE74:   Call 0.Method_Proc_148_42_E7BE940 (CInt(var_86), var_98)
  loc_E7BE7C:   var_98.Enabled = arg_C
  loc_E7BE8B: Next var_92 'Byte
  loc_E7BE91: Exit Sub
  loc_E7BE92: Set var_2388 = 
End Sub

Public Sub Proc_148_43_F22CF0
  'Data Table: 4BA254
  loc_F22BFC: If (CBool(().Visible) = &HFF) Then
  loc_F22C0E:   (False).Visible = 
  loc_F22C16: End If
  loc_F22C32: If (CBool(().Visible) = &HFF) Then
  loc_F22C44:   (False).Visible = 
  loc_F22C4C: End If
  loc_F22C68: If (CBool(().Visible) = &HFF) Then
  loc_F22C7A:   (False).Visible = 
  loc_F22C82: End If
  loc_F22C9E: If (CBool(().Visible) = &HFF) Then
  loc_F22CB0:   (False).Visible = 
  loc_F22CB8: End If
  loc_F22CD4: If (CBool(().Visible) = &HFF) Then
  loc_F22CE6:   (False).Visible = 
  loc_F22CEE: End If
  loc_F22CEE: Exit Sub
End Sub

Public Sub Proc_148_44_E83174
  'Data Table: 4BA254
  loc_E83114: Call Proc_148_43_F22CF0()
  loc_E83150: If (MsgBox("Save Record ?", &H24, "Save", var_E4, var_104) = 6) Then
  loc_E83153:   Call TopCtrl1_UnknownEvent_16()
  loc_E8315B: Else
  loc_E83161:   Call 0.Method_arg_1E8 (var_108)
  loc_E83169:   Call var_108.SetFocus
  loc_E83172: End If
  loc_E83172: Exit Sub
End Sub

Public Sub Proc_148_45_12A9564
  'Data Table: 4BA254
  Dim var_94 As Variant
  Dim var_9C As String
  Dim unk_4BA26B As Connection15
  Dim var_88 As Recordset15
  Dim var_CC As Recordset15
  Dim var_90 As Fields15
  Dim var_98 As String
  Dim var_D0 As TextBox
  Dim var_C0 As Variant
  loc_12A8F66: Set var_90 = Me.txt
  loc_12A8F6C: Call 0.Method_Proc_148_45_12A95640 (CInt(1), var_94, var_98, "SELECT S.*, MarketSeg.Name AS SegmentName, BussSource.Name AS BussSourceName, FunctionType.Name AS FuncType, SubGroup.Name as Company FROM (((HallBook AS S LEFT JOIN MarketSeg ON S.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON S.BussSource = BussSource.Code) LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) LEFT JOIN SubGroup ON S.CompanyCode = SubGroup.SubCode Where S.Docid='")
  loc_12A8F74: var_C0 = var_94.Tag
  loc_12A8F7D: var_9C = -1 & var_98
  loc_12A8F8D: unk_4BA26B.Execute var_9C & "'", var_C4, 
  loc_12A8F98: Set var_88 = var_C4
  loc_12A8FC4: If (var_88.RecordCount > 0) Then
  loc_12A8FCA:   Set var_CC = var_88 
  loc_12A9007:   Set var_C4 = Me.txt
  loc_12A900D:   Call 0.Method_Proc_148_45_12A95640 (CInt(1), var_D0)
  loc_12A9015:   var_D0.Text = CStr(var_CC.Fields.Item("PartyName").Value)
  loc_12A9061:   Set var_C4 = Me.txt
  loc_12A9067:   Call 0.Method_Proc_148_45_12A95640 (CInt(2), var_D0)
  loc_12A906F:   var_D0.Text = Proc_6_38_E68A98(CVar(var_CC.Fields.Item("Add1")))
  loc_12A90B9:   Set var_C4 = Me.txt
  loc_12A90BF:   Call 0.Method_Proc_148_45_12A95640 (CInt(3), var_D0)
  loc_12A90C7:   var_D0.Text = Proc_6_38_E68A98(CVar(var_CC.Fields.Item("Add2")))
  loc_12A9111:   Set var_C4 = Me.txt
  loc_12A9117:   Call 0.Method_Proc_148_45_12A95640 (CInt(4), var_D0)
  loc_12A911F:   var_D0.Text = Proc_6_38_E68A98(CVar(var_CC.Fields.Item("City")))
  loc_12A9169:   Set var_C4 = Me.txt
  loc_12A916F:   Call 0.Method_Proc_148_45_12A95640 (CInt(5), var_D0)
  loc_12A9177:   var_D0.Text = Proc_6_38_E68A98(CVar(var_CC.Fields.Item("PinCode")))
  loc_12A91C1:   Set var_C4 = Me.txt
  loc_12A91C7:   Call 0.Method_Proc_148_45_12A95640 (CInt(7), var_D0)
  loc_12A91CF:   var_D0.Text = Proc_6_38_E68A98(CVar(var_CC.Fields.Item("ContactNo_Res")))
  loc_12A9219:   Set var_C4 = Me.txt
  loc_12A921F:   Call 0.Method_Proc_148_45_12A95640 (CInt(6), var_D0)
  loc_12A9227:   var_D0.Text = Proc_6_38_E68A98(CVar(var_CC.Fields.Item("ContactNo_Off")))
  loc_12A9271:   Set var_C4 = Me.txt
  loc_12A9277:   Call 0.Method_Proc_148_45_12A95640 (CInt(8), var_D0)
  loc_12A927F:   var_D0.Text = Proc_6_38_E68A98(CVar(var_CC.Fields.Item("MobileNo")))
  loc_12A92C9:   Set var_C4 = Me.txt
  loc_12A92CF:   Call 0.Method_Proc_148_45_12A95640 (CInt(&HB), var_D0)
  loc_12A92D7:   var_D0.Tag = Proc_6_38_E68A98(CVar(var_CC.Fields.Item("Func_Name")))
  loc_12A9321:   Set var_C4 = Me.txt
  loc_12A9327:   Call 0.Method_Proc_148_45_12A95640 (CInt(&HB), var_D0)
  loc_12A932F:   var_D0.Text = Proc_6_38_E68A98(CVar(var_CC.Fields.Item("FuncType")))
  loc_12A9379:   Set var_C4 = Me.txt
  loc_12A937F:   Call 0.Method_Proc_148_45_12A95640 (CInt(&HA), var_D0)
  loc_12A9387:   var_D0.Tag = Proc_6_38_E68A98(CVar(var_CC.Fields.Item("companyCode")))
  loc_12A93D1:   Set var_C4 = Me.txt
  loc_12A93D7:   Call 0.Method_Proc_148_45_12A95640 (CInt(&HA), var_D0)
  loc_12A93DF:   var_D0.Text = Proc_6_38_E68A98(CVar(var_CC.Fields.Item("Company")))
  loc_12A9429:   Set var_C4 = Me.txt
  loc_12A942F:   Call 0.Method_Proc_148_45_12A95640 (CInt(&HD), var_D0)
  loc_12A9437:   var_D0.Tag = Proc_6_38_E68A98(CVar(var_CC.Fields.Item("BussSource")))
  loc_12A9481:   Set var_C4 = Me.txt
  loc_12A9487:   Call 0.Method_Proc_148_45_12A95640 (CInt(&HD), var_D0)
  loc_12A948F:   var_D0.Text = Proc_6_38_E68A98(CVar(var_CC.Fields.Item("BussSourcename")))
  loc_12A94D9:   Set var_C4 = Me.txt
  loc_12A94DF:   Call 0.Method_Proc_148_45_12A95640 (CInt(&HC), var_D0)
  loc_12A94E7:   var_D0.Tag = Proc_6_38_E68A98(CVar(var_CC.Fields.Item("MarketSeg")))
  loc_12A9531:   Set var_C4 = Me.txt
  loc_12A9537:   Call 0.Method_Proc_148_45_12A95640 (CInt(&HC), var_D0)
  loc_12A953F:   var_D0.Text = Proc_6_38_E68A98(CVar(var_CC.Fields.Item("SegmentName")))
  loc_12A9555:   Set var_CC = Nothing 
  loc_12A9559: End If
  loc_12A955E: Set var_88 = Nothing
  loc_12A9561: Exit Sub
  loc_12A9562: () = 
End Sub

Public Sub Proc_148_46_10C5E5C
  'Data Table: 4BA254
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim var_A4 As TextBox
  loc_10C5B9C: Set var_A4 = Me.txt
  loc_10C5BA2: Call 0.Method_Proc_148_46_10C5E5C0 (CInt(1), var_A8)
  loc_10C5BAA: var_A8.MaxLength = Me.Fields.Item("Name").DefinedSize
  loc_10C5BF2: Set var_A4 = Me.txt
  loc_10C5BF8: Call 0.Method_Proc_148_46_10C5E5C0 (CInt(2), var_A8)
  loc_10C5C00: var_A8.MaxLength = Me.Fields.Item("Add1").DefinedSize
  loc_10C5C48: Set var_A4 = Me.txt
  loc_10C5C4E: Call 0.Method_Proc_148_46_10C5E5C0 (CInt(3), var_A8)
  loc_10C5C56: var_A8.MaxLength = Me.Fields.Item("Add2").DefinedSize
  loc_10C5C9E: Set var_A4 = Me.txt
  loc_10C5CA4: Call 0.Method_Proc_148_46_10C5E5C0 (CInt(4), var_A8)
  loc_10C5CAC: var_A8.MaxLength = Me.Fields.Item("City").DefinedSize
  loc_10C5CF4: Set var_A4 = Me.txt
  loc_10C5CFA: Call 0.Method_Proc_148_46_10C5E5C0 (CInt(5), var_A8)
  loc_10C5D02: var_A8.MaxLength = Me.Fields.Item("PinCode").DefinedSize
  loc_10C5D4A: Set var_A4 = Me.txt
  loc_10C5D50: Call 0.Method_Proc_148_46_10C5E5C0 (CInt(7), var_A8)
  loc_10C5D58: var_A8.MaxLength = Me.Fields.Item("PhoneR").DefinedSize
  loc_10C5DA0: Set var_A4 = Me.txt
  loc_10C5DA6: Call 0.Method_Proc_148_46_10C5E5C0 (CInt(6), var_A8)
  loc_10C5DAE: var_A8.MaxLength = Me.Fields.Item("PhoneO").DefinedSize
  loc_10C5DF6: Set var_A4 = Me.txt
  loc_10C5DFC: Call 0.Method_Proc_148_46_10C5E5C0 (CInt(8), var_A8)
  loc_10C5E04: var_A8.MaxLength = Me.Fields.Item("MobileNo").DefinedSize
  loc_10C5E4B: (Me.Fields.Item("Comments").DefinedSize).MaxLength = 
  loc_10C5E59: Exit Sub
End Sub
